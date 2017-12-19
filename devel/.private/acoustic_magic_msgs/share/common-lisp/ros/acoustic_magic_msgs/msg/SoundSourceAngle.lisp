; Auto-generated. Do not edit!


(cl:in-package acoustic_magic_msgs-msg)


;//! \htmlinclude SoundSourceAngle.msg.html

(cl:defclass <SoundSourceAngle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SoundSourceAngle (<SoundSourceAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundSourceAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundSourceAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acoustic_magic_msgs-msg:<SoundSourceAngle> is deprecated: use acoustic_magic_msgs-msg:SoundSourceAngle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SoundSourceAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acoustic_magic_msgs-msg:header-val is deprecated.  Use acoustic_magic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <SoundSourceAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acoustic_magic_msgs-msg:is_valid-val is deprecated.  Use acoustic_magic_msgs-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SoundSourceAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acoustic_magic_msgs-msg:angle-val is deprecated.  Use acoustic_magic_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundSourceAngle>) ostream)
  "Serializes a message object of type '<SoundSourceAngle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundSourceAngle>) istream)
  "Deserializes a message object of type '<SoundSourceAngle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundSourceAngle>)))
  "Returns string type for a message object of type '<SoundSourceAngle>"
  "acoustic_magic_msgs/SoundSourceAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundSourceAngle)))
  "Returns string type for a message object of type 'SoundSourceAngle"
  "acoustic_magic_msgs/SoundSourceAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundSourceAngle>)))
  "Returns md5sum for a message object of type '<SoundSourceAngle>"
  "73d22af5de75b14e00863995e84490c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundSourceAngle)))
  "Returns md5sum for a message object of type 'SoundSourceAngle"
  "73d22af5de75b14e00863995e84490c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundSourceAngle>)))
  "Returns full string definition for message of type '<SoundSourceAngle>"
  (cl:format cl:nil "Header header~%bool is_valid~%float64 angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundSourceAngle)))
  "Returns full string definition for message of type 'SoundSourceAngle"
  (cl:format cl:nil "Header header~%bool is_valid~%float64 angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundSourceAngle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundSourceAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundSourceAngle
    (cl:cons ':header (header msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':angle (angle msg))
))
