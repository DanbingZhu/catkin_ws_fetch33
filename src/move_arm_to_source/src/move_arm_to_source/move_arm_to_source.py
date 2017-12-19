#!/usr/bin/env python

# simple_disco.py: Move the fetch arm through a simple disco motion
import rospy
from moveit_msgs.msg import MoveItErrorCodes
from moveit_python import MoveGroupInterface, PlanningSceneInterface

import numpy as np

from std_msgs.msg import Empty, String
from acoustic_magic_msgs.msg import SoundSourceAngle

AUDIO_TOPIC = "/cogrob/microphone_direction"

FILTER_LENGTH = 20

def TemporalMedian(new_value, history):
	"""A temporal median filter"""
	history = np.roll(history, 1)
	history[0] = new_value
	m = np.median(history)
	return (m, history)

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

		self.angle = np.zeros(FILTER_LENGTH)
		self.last_trigger_time = rospy.Time.now()
		rospy.Subscriber(AUDIO_TOPIC, SoundSourceAngle, self.SetPoseWithRetry)
		rospy.spin()

	def SetPoseWithRetry(self, msg, max_time=3):
		if msg.is_valid:
			direction = 0

			(direction, self.angle) = TemporalMedian(
				msg.angle, self.angle)

			soulder_pan = round((direction / 180.0) * np.pi, 2)

			target_pose = {
				'torso_lift_joint':     0.05287206172943115,
				'shoulder_pan_joint':   soulder_pan,
				'shoulder_lift_joint':  0.0,
				'upperarm_roll_joint':  -np.pi,
				'elbow_flex_joint':     0.0,
				'forearm_roll_joint':   np.pi,
				'wrist_flex_joint':    	-1.5,
				'wrist_roll_joint':     0.0,
			}

			if rospy.Time.now() - self.last_trigger_time > rospy.Duration(2):
				rospy.loginfo("Shoulder pan")
				rospy.loginfo(soulder_pan)
				for _ in range(max_time):
					if self.SetPose(target_pose):
						return True
				return False

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
		self.last_trigger_time = rospy.Time.now()
		return return_result



def Slam(con):
	full_extension = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     -1.5,
		'wrist_roll_joint':     0.0,
	}

	left_position = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   1.5,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     -1.5,
		'wrist_roll_joint':     0.0,
	}

	right_position = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   -1.5,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     -1.5,
		'wrist_roll_joint':     0.0,
	}

	con.SetPoseWithRetry(full_extension)
	con.SetPoseWithRetry(left_position)
	con.SetPoseWithRetry(full_extension)
	con.SetPoseWithRetry(right_position)
	con.SetPoseWithRetry(full_extension)

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

def Curl(con):
	curl_up = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     -1.5,
		'wrist_roll_joint':     0.0,
	}

	lower_down = {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     0.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     0.0,
		'wrist_roll_joint':     0.0,
	}

	con.SetPoseWithRetry(curl_up)
	con.SetPoseWithRetry(lower_down)
	con.SetPoseWithRetry(curl_up)

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


# Note: fetch_moveit_config move_group.launch must be running
# Safety!: Do NOT run this script near people or objects.
# Safety!: There is NO perception.
#          The ONLY objects the collision detection software is aware
#          of are itself & the floor.
if __name__ == '__main__':
	rospy.init_node('move_arm_to_source')
	rospy.loginfo("Program started")
	try:
		con = PoseController()
	except rospy.ROSInterruptException:
		pass