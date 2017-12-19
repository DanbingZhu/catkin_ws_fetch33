#! /usr/bin/env python
import rospy
import actionlib

from control_msgs.msg import GripperCommandAction, GripperCommandGoal

CLOSE_POS = 0.0
OPEN_POS = 0.10 # in meters
MIN_EFFORT = 5
MAX_EFFORT = 60 # force in Newtons
ACTION_CLIENT = '/gripper_controller/gripper_action'

class GripperControl(object):
	def __init__(self):
		self.client = actionlib.SimpleActionClient(ACTION_CLIENT, GripperCommandAction)
		self.goal = GripperCommandGoal()

		self.client.wait_for_server()

	def command(self, position, effort):
		self.goal.command.position = position
		self.goal.command.max_effort = effort
		self.client.send_goal_and_wait(self.goal)

	def stop(self):
		self.client.cancel_goal()

	def clear(self):
		self.goal = GripperCommandGoal()

	def close(self):
		self.goal.command.position = CLOSE_POS
		self.goal.command.max_effort = MAX_EFFORT
		self.client.send_goal_and_wait(self.goal)

	def open(self):
		self.goal.command.position = OPEN_POS
		self.goal.command.max_effort = MAX_EFFORT
		self.client.send_goal_and_wait(self.goal)

def main():
	rospy.init_node('grip_source')
	gc = GripperControl()

	gc.close()
	gc.open()

if __name__ == '__main__':
	main()


