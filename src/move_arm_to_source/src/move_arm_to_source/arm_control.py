#!/usr/bin/env python

# simple_disco.py: Move the fetch arm through a simple disco motion
import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface

class ArmControl(object):
	def __init__(self):
		# Create move group interface for a fetch robot
		self.move_group_ = MoveGroupInterface("arm_with_torso", "base_link")

		# Define ground plane
		# This creates objects in the planning scene that mimic the ground
		# If these were not in place gripper could hit the ground
		self.planning_scene_ = PlanningSceneInterface("base_link")
		self.planning_scene_.removeCollisionObject("my_front_ground")
		self.planning_scene_.removeCollisionObject("my_back_ground")
		self.planning_scene_.removeCollisionObject("my_right_ground")
		self.planning_scene_.removeCollisionObject("my_left_ground")
		self.planning_scene_.addCube("my_front_ground", 2, 1.1, 0.0, -1.0)
		self.planning_scene_.addCube("my_back_ground", 2, -1.2, 0.0, -1.0)
		self.planning_scene_.addCube("my_left_ground", 2, 0.0, 1.2, -1.0)
		self.planning_scene_.addCube("my_right_ground", 2, 0.0, -1.2, -1.0)

	def SetPose(self, target_pose):
		# Plans the joints in joint_names to angles in pose
		self.move_group_.moveToJointPosition(
				target_pose.keys(), target_pose.values(), wait=False)

		# Since we passed in wait=False above we need to wait here
		self.move_group_.get_move_action().wait_for_result()
		result = self.move_group_.get_move_action().get_result()

		return_result = False

		if result:
			# Checking the MoveItErrorCode
			if result.error_code.val == MoveItErrorCodes.SUCCESS:
				rospy.loginfo("Done!")
				return_result = True
			else:
				# If you get to this point please search for:
				# moveit_msgs/MoveItErrorCodes.msg
				rospy.logerr("Arm goal in state: %s",
							 self.move_group_.get_move_action().get_state())
		else:
			rospy.logerr("MoveIt! failure no result returned.")

		# This stops all arm movement goals
		# It should be called when a program is exiting so movement stops
		self.move_group_.get_move_action().cancel_all_goals()

		return return_result


	def SetPoseWithRetry(self, target_pose, max_time=3):
		for _ in range(max_time):
			if self.SetPose(target_pose):
				return True
		return False

