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
		# a 2-by-2 array, used to store (x,y) coordinates of the two triangulation points
		self.coords = np.zeros((2,2))
		# a 1-by-2 array, used to store theta angle cooresponding to the two points 
		self.orients = np.zeros(2)
		# count, indicate how many (points, orientations) we have obtained, need 2 pairs in order to perform the simpliest triangulation
		self.count = 0

	'''
	Method: GetPoint()
	Once the Fetch robot reaches a stable point, call this to get the coordinate of the robot in world coordinate frame
	'''
	def TransformPoint(self, point):
		now = rospy.Time.now()
		self.tf.waitForTransform('base_link', 'map', now, rospy.Duration(4.0))
		global_coordinate = self.tf.transformPoint('map', point)
		rospy.loginfo(global_coordinate)
		if self.count == 0:
			self.coords[0][0] = global_coordinate.point.x
			self.coords[0][1] = global_coordinate.point.y
			rospy.loginfo(self.coords)
		elif self.count == 1:
			self.coords[1][0] = global_coordinate.point.x
			self.coords[1][1] = global_coordinate.point.y
			rospy.loginfo(self.coords)
		else:
			pass

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
		if self.count == 0:
			self.orients[0] = transformations.euler_from_quaternion(quaternion)[2]
			rospy.loginfo(self.orients)
		elif self.count == 1:
			self.orients[1] = transformations.euler_from_quaternion(quaternion)[2]
			rospy.loginfo(self.orients)
		else:
			pass

	def IncreaseCounter():
		self.count = self.count + 1

	def Triangulation(self):
		#TODO
		theta1 = self.orients[0]
		theta2 = self.orients[1]
		x1 = self.coords[0][0]
		y1 = self.coords[0][1]
		x2 = self.coords[1][0]
		y2 = self.coords[1][1]
		estimatedX = (np.tan(-theta1)*x1 - np.tan(-theta2)*x2 + (y2 - y1)) / (np.tan(-theta1) - np.tan(-theta2))
		estimatedY = ((x1 - x2)*np.tan(-theta1)*np.tan(-theta2) + y2*np.tan(-theta1) - y1*np.tan(-theta2)) / (np.tan(-theta1) - np.tan(-theta2))
		
		rospy.loginfo(estimatedX)
		rospy.loginfo(estimatedY)
		
		return (estimatedX, estimatedY)


def main():
	rospy.init_node('trianulation')
	nav = Navigator()

	nav.WaitForTransform()
	while not rospy.is_shutdown():
		nav.CurrentPosition()
		nav.CurrentDirection()
		nav.IncreaseCounter()
		rospy.sleep(1)
	
if __name__ == '__main__':
	main()