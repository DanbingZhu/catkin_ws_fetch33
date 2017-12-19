#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import actionlib
import numpy as np
import rospy

from control_msgs.msg import PointHeadAction, PointHeadGoal
from geometry_msgs.msg import PointStamped, Point
from std_msgs.msg import Empty, String
from tf import TransformListener

ACTION_CLIENT = "/head_controller/point_head"

class HeadControl(object):

	def __init__(self):
		self.tf = TransformListener()
		self.client = actionlib.SimpleActionClient(
			ACTION_CLIENT, PointHeadAction)
		rospy.loginfo("Waiting for point_head actionlib server...")
		self.client.wait_for_server()

	def WaitForTransform(self):
		rospy.loginfo(self.tf.waitForTransform('head_pan_link', 'base_link', rospy.Time(), rospy.Duration(4.0)))

	def SetPointHead(self, point):
		goal = PointHeadGoal()
		now = rospy.Time.now() # point.header.stamp
		rospy.loginfo(self.tf.waitForTransform('head_pan_link', 'base_link', now, rospy.Duration(4.0)))
		corrected_point = self.tf.transformPoint('head_pan_link', point)
		corrected_point.point.z = 0.0
		rospy.loginfo(corrected_point)
		goal.target = corrected_point
		goal.min_duration = rospy.Duration(.5)
		goal.max_velocity = 1

		self.client.send_goal_and_wait(goal)

	def HeadFront(self):
		front = PointStamped()
		front.header.stamp = rospy.Time.now()
		front.header.frame_id = 'base_link'
		front.point.x = 3.0
		front.point.y = 0.0
		front.point.z = 0.0

		self.SetPointHead(front)

	def HeadLeft(self):
		left = PointStamped()
		left.header.stamp = rospy.Time.now()
		left.header.frame_id = 'base_link'
		left.point.x = 0.0
		left.point.y = 3.0
		left.point.z = 0.0

		self.SetPointHead(left)

def main():
	rospy.init_node('head_control_test')
	hc = HeadControl()
	hc.WaitForTransform()

	while not rospy.is_shutdown():
		hc.HeadFront()
		rospy.sleep(1)
		hc.HeadLeft()
		rospy.sleep(1)
	
if __name__ == '__main__':
	main()