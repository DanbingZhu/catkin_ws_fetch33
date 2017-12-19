#!/usr/bin/env python

# simple_disco.py: Move the fetch arm through a simple disco motion
import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface
from grip_source.gripper_control import GripperControl

class PoseController(object):
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

		self.gc = GripperControl()

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

	def GripOpen(self):
		self.gc.open()

	def GripClose(self):
		self.gc.close()


def Wave(con):

	reset_position = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   1.3197248284439087,
		'shoulder_lift_joint':  1.3999865214523315,
		'upperarm_roll_joint':  -0.19936644117534638,
		'elbow_flex_joint':     1.719395410321045,
		'forearm_roll_joint':   -0.0010107747018098835,
		'wrist_flex_joint':     1.659553606298828,
		'wrist_roll_joint':     -0.00010822674834728291,
	}

	ready_position = {
		'wrist_roll_joint':        -1.533322,
		'torso_lift_joint':        0.045922,
		'shoulder_pan_joint':      1.321642,
		'elbow_flex_joint':        1.738953,
		'forearm_roll_joint':      -0.002161,
		'upperarm_roll_joint':     -0.206653,
		'wrist_flex_joint':        1.617753,
		'shoulder_lift_joint':     1.407273,
	}

	left_position = {
		'wrist_roll_joint':        -1.534473,
		'torso_lift_joint':        0.045952,
		'shoulder_pan_joint':      1.320492,
		'elbow_flex_joint':        1.738953,
		'forearm_roll_joint':      -0.003312,
		'upperarm_roll_joint':     -0.205502,
		'wrist_flex_joint':        1.343170,
		'shoulder_lift_joint':     1.408040,
	}

	con.SetPoseWithRetry(reset_position)
	con.SetPoseWithRetry(ready_position)
	con.SetPoseWithRetry(left_position)
	con.SetPoseWithRetry(ready_position)
	con.SetPoseWithRetry(left_position)
	con.SetPoseWithRetry(ready_position)
	con.SetPoseWithRetry(reset_position)

def ExtendArmFront(con):
	full_extension = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     0.0,
		'wrist_roll_joint':     0.0,
	}

	con.SetPoseWithRetry(full_extension)

def PalmDown(con):
	full_extension = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.5,
		'wrist_roll_joint':     0.0,
	}

	con.SetPoseWithRetry(full_extension)

def Reset(con):
	reset_position = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   1.3197248284439087,
		'shoulder_lift_joint':  1.3999865214523315,
		'upperarm_roll_joint':  -0.19936644117534638,
		'elbow_flex_joint':     1.719395410321045,
		'forearm_roll_joint':   -0.0010107747018098835,
		'wrist_flex_joint':     1.659553606298828,
		'wrist_roll_joint':     -0.00010822674834728291,
	}

	con.SetPoseWithRetry(reset_position)

def Test(con):
	test_pose = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  1.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     2.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	}

	test_pose_1 = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.2,
		'shoulder_lift_joint':  1.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     2.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	}

	test_pose_2 = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.2,
		'shoulder_lift_joint':  -0.4,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     1.2,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	}

	test_pose_3 = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  -0.4,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     1.2,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	}

	test_pose_final = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.3,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     1.2,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	}

	con.GripOpen()
	con.SetPoseWithRetry(test_pose)
	con.SetPoseWithRetry(test_pose_1)
	con.SetPoseWithRetry(test_pose_2)
	con.SetPoseWithRetry(test_pose_3)
	con.SetPoseWithRetry(test_pose_final)
	con.GripClose()
	con.SetPoseWithRetry(test_pose_3)
	con.SetPoseWithRetry(test_pose_2)
	con.SetPoseWithRetry(test_pose_1)
	con.SetPoseWithRetry(test_pose)
	#con.GripOpen()

# Note: fetch_moveit_config move_group.launch must be running
# Safety!: Do NOT run this script near people or objects.
# Safety!: There is NO perception.
#          The ONLY objects the collision detection software is aware
#          of are itself & the floor.
def main():
	rospy.init_node("move_arm")

	selfie_position = {
		'torso_lift_joint':     0.3742319345474243,
		'shoulder_pan_joint':   0.07183137579956055,
		'shoulder_lift_joint':  -0.017028196603393556,
		'upperarm_roll_joint':  -3.0057844577282715,
		'elbow_flex_joint':     0.14246298005371094,
		'forearm_roll_joint':   2.8993635651916505,
		'wrist_flex_joint':     0.01589330681886673,
		'wrist_roll_joint':     -0.0016422081609964376,
	}

	reset_position = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   1.3197248284439087,
		'shoulder_lift_joint':  1.3999865214523315,
		'upperarm_roll_joint':  -0.19936644117534638,
		'elbow_flex_joint':     1.719395410321045,
		'forearm_roll_joint':   -0.0010107747018098835,
		'wrist_flex_joint':     1.659553606298828,
		'wrist_roll_joint':     -0.00010822674834728291,
	}

	lift_position = {
		'torso_lift_joint':     0.3742319345474243,
		'shoulder_pan_joint':   1.3197248284439087,
		'shoulder_lift_joint':  1.3999865214523315,
		'upperarm_roll_joint':  -0.19936644117534638,
		'elbow_flex_joint':     1.719395410321045,
		'forearm_roll_joint':   -0.0010107747018098835,
		'wrist_flex_joint':     1.659553606298828,
		'wrist_roll_joint':     -0.00010822674834728291,
	}

	con = PoseController()
	rospy.loginfo("Ready!")

	Test(con)
	# con.SetPoseWithRetry(lift_position)
	# con.SetPoseWithRetry(selfie_position)
	# con.SetPoseWithRetry(lift_position)
	# con.SetPoseWithRetry(reset_position)
	Reset(con)
	# Wave(con)

if __name__ == '__main__':
	main()
