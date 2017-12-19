ARM_POSES = {
	'reset_pose' : {
		'torso_lift_joint':     0.053,
		'shoulder_pan_joint':   1.3197248284439087,
		'shoulder_lift_joint':  1.3999865214523315,
		'upperarm_roll_joint':  -0.19936644117534638,
		'elbow_flex_joint':     1.719395410321045,
		'forearm_roll_joint':   -0.0010107747018098835,
		'wrist_flex_joint':     1.659553606298828,
		'wrist_roll_joint':     -0.00010822674834728291,
	},
	'ready_pose' : {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  1.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     2.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	},
	'engage_state_0_pose' : {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.2,
		'shoulder_lift_joint':  1.0,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     2.0,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	},
	'engage_state_1_pose' : {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.2,
		'shoulder_lift_joint':  -0.4,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     1.2,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	},
	'engage_state_2_pose' : {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  -0.4,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     1.2,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	},
	'engage_state_3_pose' : {
		'torso_lift_joint':     0.05287206172943115,
		'shoulder_pan_joint':   0.0,
		'shoulder_lift_joint':  0.3,
		'upperarm_roll_joint':  -3.14,
		'elbow_flex_joint':     1.2,
		'forearm_roll_joint':   3.14,
		'wrist_flex_joint':     1.0,
		'wrist_roll_joint':     0.0,
	},
}

def GetArmPose(name):
	if name in ARM_POSES:
		return ARM_POSES[name]
	else:
		return None