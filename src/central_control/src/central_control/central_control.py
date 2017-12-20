#! /usr/bin/env python
import rospy
import numpy as np
from move_arm_to_source.arm_control import ArmControl
from grip_source.gripper_control import GripperControl
from turn_to_sound_source.move_control import MoveControl
from acoustic_track.head_control import HeadControl
import arm_poses
from triangulation import Navigator

GetArmPose = arm_poses.GetArmPose

class CentralControl(object):

	def __init__(self):
		self.ac = ArmControl()
		self.gc = GripperControl()
		self.mc = MoveControl() # MoveControl listen to the sound and control the robot to turn to it
		self.hc = HeadControl()
		self.nav = Navigator()

	def StartTracking(self):
		self.mc.EnableTracking()

	def SuspendTracking(self):
		self.mc.DisableTracking()

	def IsStable(self):
		return self.mc.IsStable()

	def GoTo(self, x, y, theta):
		self.mc.GoTo(x, y, theta)

	def ClearHistory(self):
		self.mc.ResetHistory()

	def ArmReset(self):
		reset_pose = GetArmPose('reset_pose')
		self.ac.SetPoseWithRetry(reset_pose)

	def ArmEngage(self):
		ready_pose = GetArmPose('ready_pose')
		engage_pose_0 = GetArmPose('engage_state_0_pose')
		engage_pose_1 = GetArmPose('engage_state_1_pose')
		engage_pose_2 = GetArmPose('engage_state_2_pose')
		engage_pose_3 = GetArmPose('engage_state_3_pose')

		self.ac.SetPoseWithRetry(ready_pose)
		self.ac.SetPoseWithRetry(engage_pose_0)
		self.ac.SetPoseWithRetry(engage_pose_1)
		self.ac.SetPoseWithRetry(engage_pose_2)
		self.ac.SetPoseWithRetry(engage_pose_3)

	def ArmDisengage(self):
		ready_pose = GetArmPose('ready_pose')
		engage_pose_0 = GetArmPose('engage_state_0_pose')
		engage_pose_1 = GetArmPose('engage_state_1_pose')
		engage_pose_2 = GetArmPose('engage_state_2_pose')
		engage_pose_3 = GetArmPose('engage_state_3_pose')

		self.ac.SetPoseWithRetry(engage_pose_3)
		self.ac.SetPoseWithRetry(engage_pose_2)
		self.ac.SetPoseWithRetry(engage_pose_1)
		self.ac.SetPoseWithRetry(engage_pose_0)
		self.ac.SetPoseWithRetry(ready_pose)

	def WaitForTransforms(self):
		self.hc.WaitForTransform()
		self.nav.WaitForTransform()

	def GripOpen(self):
		self.gc.open()

	def GripClose(self):
		self.gc.close()

	def HeadFront(self):
		self.hc.HeadFront()

	def GetPosition(self):
		self.nav.CurrentPosition()

	def GetDirection(self):
		self.nav.CurrentDirection()

	def ShutDownProcedure(self):
		self.HeadFront()
		self.ArmReset()
		self.GripOpen()

def OnExit():
	pass

def main():
	rospy.init_node('central_contral')
	cc = CentralControl()
	'''
	initialization:
	reset pose of head, arm and grip
	'''
	# turn head of the robot to front
	cc.SuspendTracking()
	cc.HeadFront()
	cc.ArmReset()
	cc.GripOpen()
	cc.WaitForTransforms()
	rospy.sleep(1)
	# sleep 1 second to let the initialization to finish

	# move to initial position
	cc.GoTo(12.0, 2.0, np.pi)
	rospy.sleep(1)
	# do acoustic track
	cc.StartTracking()
	while not cc.IsStable():
		pass
	cc.SuspendTracking()
	# clear history for the next acoustic track
	cc.ClearHistory()
	# get position and direction
	cc.GetPosition()
	cc.GetDirection()
	
	# move to the next way point
	cc.GoTo(12.0, -1.0, np.pi)
	rospy.sleep(1)
	cc.StartTracking()
	# do another acoustic track
	while not cc.IsStable():
		pass

	cc.SuspendTracking()
	#get another pair of position and direction
	cc.GetPosition()
	cc.GetDirection()
	
	# do triangulation based on the two <position, direction> pairs


	# move the robot close to the estimated sound source

	# do the grab sequence

	# while not rospy.is_shutdown():
	# 	if(cc.IsStable()):
	# 		cc.SuspendTracking()
	# 		cc.ArmEngage()
	# 		cc.GripClose()
	# 		cc.ArmDisengage()
	# 		break

	# 	rospy.sleep(1)

	# cc.ArmReset()

	#cc.GripOpen()

	rospy.on_shutdown(OnExit)

if __name__ == '__main__':
	main()
