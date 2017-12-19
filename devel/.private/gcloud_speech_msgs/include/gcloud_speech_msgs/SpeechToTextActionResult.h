// Generated by gencpp from file gcloud_speech_msgs/SpeechToTextActionResult.msg
// DO NOT EDIT!


#ifndef GCLOUD_SPEECH_MSGS_MESSAGE_SPEECHTOTEXTACTIONRESULT_H
#define GCLOUD_SPEECH_MSGS_MESSAGE_SPEECHTOTEXTACTIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalStatus.h>
#include <gcloud_speech_msgs/SpeechToTextResult.h>

namespace gcloud_speech_msgs
{
template <class ContainerAllocator>
struct SpeechToTextActionResult_
{
  typedef SpeechToTextActionResult_<ContainerAllocator> Type;

  SpeechToTextActionResult_()
    : header()
    , status()
    , result()  {
    }
  SpeechToTextActionResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::gcloud_speech_msgs::SpeechToTextResult_<ContainerAllocator>  _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct SpeechToTextActionResult_

typedef ::gcloud_speech_msgs::SpeechToTextActionResult_<std::allocator<void> > SpeechToTextActionResult;

typedef boost::shared_ptr< ::gcloud_speech_msgs::SpeechToTextActionResult > SpeechToTextActionResultPtr;
typedef boost::shared_ptr< ::gcloud_speech_msgs::SpeechToTextActionResult const> SpeechToTextActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gcloud_speech_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'gcloud_speech_msgs': ['/home/users/danbing/catkin_ws_fetch33/src/gcloud_speech_msgs/msg', '/home/users/danbing/catkin_ws_fetch33/devel/.private/gcloud_speech_msgs/share/gcloud_speech_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7ad3e0fc6589f1fe650d87c9ddce723";
  }

  static const char* value(const ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7ad3e0fc6589f1fULL;
  static const uint64_t static_value2 = 0xe650d87c9ddce723ULL;
};

template<class ContainerAllocator>
struct DataType< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gcloud_speech_msgs/SpeechToTextActionResult";
  }

  static const char* value(const ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
SpeechToTextResult result\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: gcloud_speech_msgs/SpeechToTextResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
\n\
# Result definition\n\
\n\
# If anything goes wrong, is_error will be set and error_info will contain error\n\
# messages.\n\
bool is_error\n\
string error_info\n\
\n\
# Most probable hypothesis for the all portion of utterances, concatenated.\n\
string transcript\n\
";
  }

  static const char* value(const ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeechToTextActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gcloud_speech_msgs::SpeechToTextActionResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::gcloud_speech_msgs::SpeechToTextResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GCLOUD_SPEECH_MSGS_MESSAGE_SPEECHTOTEXTACTIONRESULT_H
