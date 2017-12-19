; Auto-generated. Do not edit!


(cl:in-package gcloud_speech_msgs-msg)


;//! \htmlinclude LinearPcm16Le16000Audio.msg.html

(cl:defclass <LinearPcm16Le16000Audio> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass LinearPcm16Le16000Audio (<LinearPcm16Le16000Audio>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinearPcm16Le16000Audio>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinearPcm16Le16000Audio)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gcloud_speech_msgs-msg:<LinearPcm16Le16000Audio> is deprecated: use gcloud_speech_msgs-msg:LinearPcm16Le16000Audio instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LinearPcm16Le16000Audio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:data-val is deprecated.  Use gcloud_speech_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinearPcm16Le16000Audio>) ostream)
  "Serializes a message object of type '<LinearPcm16Le16000Audio>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinearPcm16Le16000Audio>) istream)
  "Deserializes a message object of type '<LinearPcm16Le16000Audio>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinearPcm16Le16000Audio>)))
  "Returns string type for a message object of type '<LinearPcm16Le16000Audio>"
  "gcloud_speech_msgs/LinearPcm16Le16000Audio")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinearPcm16Le16000Audio)))
  "Returns string type for a message object of type 'LinearPcm16Le16000Audio"
  "gcloud_speech_msgs/LinearPcm16Le16000Audio")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinearPcm16Le16000Audio>)))
  "Returns md5sum for a message object of type '<LinearPcm16Le16000Audio>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinearPcm16Le16000Audio)))
  "Returns md5sum for a message object of type 'LinearPcm16Le16000Audio"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinearPcm16Le16000Audio>)))
  "Returns full string definition for message of type '<LinearPcm16Le16000Audio>"
  (cl:format cl:nil "# Audio samples: Linear PCM, 16 bits, little endian, 16,000 Hz.~%# The length of data must be even numbers (each sample is two bytes).~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinearPcm16Le16000Audio)))
  "Returns full string definition for message of type 'LinearPcm16Le16000Audio"
  (cl:format cl:nil "# Audio samples: Linear PCM, 16 bits, little endian, 16,000 Hz.~%# The length of data must be even numbers (each sample is two bytes).~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinearPcm16Le16000Audio>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinearPcm16Le16000Audio>))
  "Converts a ROS message object to a list"
  (cl:list 'LinearPcm16Le16000Audio
    (cl:cons ':data (data msg))
))
