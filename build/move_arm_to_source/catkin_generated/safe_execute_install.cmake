execute_process(COMMAND "/home/users/danbing/catkin_workspace/build/move_arm_to_source/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/users/danbing/catkin_workspace/build/move_arm_to_source/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
