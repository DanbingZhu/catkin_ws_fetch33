# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gcloud_speech_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Igcloud_speech_msgs:/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg;-Igcloud_speech_msgs:/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gcloud_speech_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg" "gcloud_speech_msgs/RecognitionHypothesis:actionlib_msgs/GoalStatus:gcloud_speech_msgs/SpeechToTextFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg" ""
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg" "gcloud_speech_msgs/SpeechToTextGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:gcloud_speech_msgs/SpeechToTextFeedback:gcloud_speech_msgs/SpeechToTextResult:gcloud_speech_msgs/SpeechToTextActionResult:std_msgs/Header:gcloud_speech_msgs/SpeechToTextActionFeedback:gcloud_speech_msgs/RecognitionHypothesis:gcloud_speech_msgs/SpeechToTextActionGoal"
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg" ""
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg" "gcloud_speech_msgs/SpeechToTextGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg" ""
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:gcloud_speech_msgs/SpeechToTextResult"
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg" ""
)

get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg" NAME_WE)
add_custom_target(_gcloud_speech_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gcloud_speech_msgs" "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg" "gcloud_speech_msgs/RecognitionHypothesis"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg;/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_cpp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(gcloud_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gcloud_speech_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gcloud_speech_msgs_generate_messages gcloud_speech_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_cpp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gcloud_speech_msgs_gencpp)
add_dependencies(gcloud_speech_msgs_gencpp gcloud_speech_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gcloud_speech_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg;/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_lisp(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(gcloud_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gcloud_speech_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gcloud_speech_msgs_generate_messages gcloud_speech_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_lisp _gcloud_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gcloud_speech_msgs_genlisp)
add_dependencies(gcloud_speech_msgs_genlisp gcloud_speech_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gcloud_speech_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg;/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)
_generate_msg_py(gcloud_speech_msgs
  "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(gcloud_speech_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gcloud_speech_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gcloud_speech_msgs_generate_messages gcloud_speech_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionFeedback.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/LinearPcm16Le16000Audio.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextAction.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextGoal.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionGoal.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/src/gcloud_speech_msgs/msg/RecognitionHypothesis.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextActionResult.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextResult.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/users/danbing/catkin_workspace/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg/SpeechToTextFeedback.msg" NAME_WE)
add_dependencies(gcloud_speech_msgs_generate_messages_py _gcloud_speech_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gcloud_speech_msgs_genpy)
add_dependencies(gcloud_speech_msgs_genpy gcloud_speech_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gcloud_speech_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gcloud_speech_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(gcloud_speech_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gcloud_speech_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gcloud_speech_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(gcloud_speech_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gcloud_speech_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gcloud_speech_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(gcloud_speech_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gcloud_speech_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
