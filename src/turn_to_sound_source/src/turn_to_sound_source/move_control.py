#!/usr/bin/env python
'''
turn the based of Fetch to sound source
'''

import actionlib
import rospy
import numpy as np
from math import sin, cos
import move_base_msgs.msg as move_base_msgs
from acoustic_magic_msgs.msg import SoundSourceAngle

AUDIO_TOPIC = "/cogrob/microphone_direction"

# temporal median filter length
FILTER_LENGTH = 20
HISTORY_LENGHT = 5
THRESHOLD = 0.1

def TemporalMedian(new_value, history):
	"""A temporal median filter"""
	history = np.roll(history, 1)
	history[0] = new_value
	m = np.median(history)
	return (m, history)

def AddHistory(new_value, history, count):
	history = np.roll(history, 1)
	history[0] = np.absolute(new_value)
	count = count + 1
	return (history, count)

class MoveControl(object):

	def __init__(self):
		self.movebase_client_ = actionlib.SimpleActionClient("/move_base", move_base_msgs.MoveBaseAction)
		rospy.Subscriber(AUDIO_TOPIC, SoundSourceAngle, self.TurnTo)
		self.angle = np.zeros(FILTER_LENGTH)
		self.last_trigger_time = rospy.Time.now()
		self.enabled = True
		rospy.loginfo("Waiting for move_base actionlib server...")
		self.movebase_client_.wait_for_server()

		self.history_count = 0
		self.history = np.zeros(HISTORY_LENGHT)

	def EnableTracking(self):
		self.enabled = True

	def DisableTracking(self):
		self.enabled = False

	def TurnTo(self, msg, frame="base_link"):
		if msg.is_valid:
			(theta, self.angle) = TemporalMedian(
				msg.angle, self.angle)
			theta = round((theta / 180.0) * np.pi, 2)
			#rospy.loginfo("Turn to (%f)" % theta)
			move_goal = move_base_msgs.MoveBaseGoal()
			move_goal.target_pose.pose.orientation.z = sin(theta/2.0)
			move_goal.target_pose.pose.orientation.w = cos(theta/2.0)
			move_goal.target_pose.header.frame_id = frame
			move_goal.target_pose.header.stamp = rospy.Time(0)#rospy.Time.now()

			if rospy.Time.now() - self.last_trigger_time > rospy.Duration(3) and self.enabled:
				(self.history, self.history_count) = AddHistory(theta, self.history, self.history_count)
				self.movebase_client_.send_goal(move_goal)
				self.last_trigger_time = rospy.Time.now()
				#rospy.loginfo("Start moving")

	def GoTo(self, x, y, theta, frame="map"):
		rospy.loginfo("Moving to (%f, %f)" % (x, y))
		move_goal = move_base_msgs.MoveBaseGoal()
		move_goal.target_pose.pose.position.x = x
		move_goal.target_pose.pose.position.y = y
		move_goal.target_pose.pose.orientation.z = sin(theta/2.0)
		move_goal.target_pose.pose.orientation.w = cos(theta/2.0)
		move_goal.target_pose.header.frame_id = frame
		move_goal.target_pose.header.stamp = rospy.Time(0)#rospy.Time.now()

		self.movebase_client_.send_goal(move_goal)
		self.movebase_client_.wait_for_result()
		rospy.loginfo("Finished moving")

	def IsStable(self):
		if self.history_count < HISTORY_LENGHT:
			rospy.loginfo("Lower than %d counts" % HISTORY_LENGHT)
			return False
		else:
			rospy.loginfo(self.history)
			rospy.loginfo(np.amax(self.history))
			if np.std(self.history) < THRESHOLD:
				return True
			else:
				return False

	def ResetHistory(self):
		self.history_count = 0
		self.history = np.zeros(HISTORY_LENGHT)


def main():
	rospy.init_node('move_control_test')

	mc = MoveControl()

	mc.DisableTracking()
	mc.GoTo(12.0, 1.0, np.pi) # Elevator right
	rospy.sleep(5)
	mc.GoTo(12.0, -2.0, np.pi)

if __name__ == '__main__':
	main()