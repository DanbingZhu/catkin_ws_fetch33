cmake_minimum_required(VERSION 2.8.3)
project(access_local_microphone)

if(CMAKE_VERSION VERSION_LESS "3.1")
  if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "--std=gnu++11 ${CMAKE_CXX_FLAGS}")
  else()
    message(SEND_ERROR "Error: Can not enable C++ 11.")
  endif()
else()
  set(CMAKE_CXX_STANDARD 11)
endif()

find_package(catkin REQUIRED COMPONENTS roscpp acoustic_magic_msgs)

catkin_package()

include_directories(src src/workspace ${catkin_INCLUDE_DIRS})

add_executable(
  acoustic_magic_uart_node
  src/acoustic_magic_uart_node.cc
  src/cogrob/hardware/acoustic_magic/uart_reader.cc
  src/util/status.cc
  src/util/statusor.cc
)

target_link_libraries(acoustic_magic_uart_node
  pthread
  glog
  gflags
  ${catkin_LIBRARIES}
)
