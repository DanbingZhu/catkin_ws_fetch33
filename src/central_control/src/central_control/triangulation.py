#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import numpy as np
import rospy

from control_msgs.msg import PointHeadAction, PointHeadGoal
from geometry_msgs.msg import PointStamped, Point
from std_msgs.msg import Empty, String
from tf import TransformListener
from tf import transformations

class Navigator(object):

	def __init__(self):
		self.tf = TransformListener()

	'''
	Method: GetPoint()
	Once the Fetch robot reaches a stable point, call this to get the coordinate of the robot in world coordinate frame
	'''
	def TransformPoint(self, point):
		now = rospy.Time.now()
		self.tf.waitForTransform('base_link', 'map', now, rospy.Duration(4.0))
		global_coordinate = self.tf.transformPoint('map', point)
		rospy.loginfo(global_coordinate)

	def CurrentPosition(self):
		base_link_origin = PointStamped()
		base_link_origin.header.stamp = rospy.Time(0) #rospy.Time.now()#rospy.Time(0)
		base_link_origin.header.frame_id = 'base_link'
		base_link_origin.point.x = 0.0
		base_link_origin.point.y = 0.0
		base_link_origin.point.z = 0.0

		self.TransformPoint(base_link_origin)

	def WaitForTransform(self):
		self.tf.waitForTransform('base_link', 'map', rospy.Time(), rospy.Duration(4.0))
	'''
	Method: GetDirection()
	Call together with GetPoint() method, 
	'''
	def CurrentDirection(self):
		t = self.tf.getLatestCommonTime('base_link', 'map')
		(position, quaternion) = self.tf.lookupTransform('base_link', 'map', t)
		rospy.loginfo(quaternion)
		rospy.loginfo(transformations.euler_from_quaternion(quaternion)[2]) # theta angle


	def Triangulation(self):
		pass


def main():
	rospy.init_node('trianulation')
	nav = Navigator()

	nav.WaitForTransform()
	while not rospy.is_shutdown():
		nav.CurrentPosition()
		nav.CurrentDirection()
		rospy.sleep(1)
	
if __name__ == '__main__':
	main()