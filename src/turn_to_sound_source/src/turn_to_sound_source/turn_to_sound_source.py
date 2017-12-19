#!/usr/bin/env python

import rospy
import move_control
import numpy as np

if __name__ == '__main__':
    rospy.init_node("patrol")
    mc = move_control.MoveControl()

    rospy.spin()