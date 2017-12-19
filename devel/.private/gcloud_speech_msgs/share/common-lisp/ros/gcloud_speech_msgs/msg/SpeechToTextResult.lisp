; Auto-generated. Do not edit!


(cl:in-package gcloud_speech_msgs-msg)


;//! \htmlinclude SpeechToTextResult.msg.html

(cl:defclass <SpeechToTextResult> (roslisp-msg-protocol:ros-message)
  ((is_error
    :reader is_error
    :initarg :is_error
    :type cl:boolean
    :initform cl:nil)
   (error_info
    :reader error_info
    :initarg :error_info
    :type cl:string
    :initform "")
   (transcript
    :reader transcript
    :initarg :transcript
    :type cl:string
    :initform ""))
)

(cl:defclass SpeechToTextResult (<SpeechToTextResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechToTextResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechToTextResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gcloud_speech_msgs-msg:<SpeechToTextResult> is deprecated: use gcloud_speech_msgs-msg:SpeechToTextResult instead.")))

(cl:ensure-generic-function 'is_error-val :lambda-list '(m))
(cl:defmethod is_error-val ((m <SpeechToTextResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:is_error-val is deprecated.  Use gcloud_speech_msgs-msg:is_error instead.")
  (is_error m))

(cl:ensure-generic-function 'error_info-val :lambda-list '(m))
(cl:defmethod error_info-val ((m <SpeechToTextResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:error_info-val is deprecated.  Use gcloud_speech_msgs-msg:error_info instead.")
  (error_info m))

(cl:ensure-generic-function 'transcript-val :lambda-list '(m))
(cl:defmethod transcript-val ((m <SpeechToTextResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:transcript-val is deprecated.  Use gcloud_speech_msgs-msg:transcript instead.")
  (transcript m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechToTextResult>) ostream)
  "Serializes a message object of type '<SpeechToTextResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_error) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_info))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transcript))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transcript))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechToTextResult>) istream)
  "Deserializes a message object of type '<SpeechToTextResult>"
    (cl:setf (cl:slot-value msg 'is_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transcript) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transcript) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechToTextResult>)))
  "Returns string type for a message object of type '<SpeechToTextResult>"
  "gcloud_speech_msgs/SpeechToTextResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechToTextResult)))
  "Returns string type for a message object of type 'SpeechToTextResult"
  "gcloud_speech_msgs/SpeechToTextResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechToTextResult>)))
  "Returns md5sum for a message object of type '<SpeechToTextResult>"
  "273b439600f4098c4d1d44e384de6342")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechToTextResult)))
  "Returns md5sum for a message object of type 'SpeechToTextResult"
  "273b439600f4098c4d1d44e384de6342")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechToTextResult>)))
  "Returns full string definition for message of type '<SpeechToTextResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%# Result definition~%~%# If anything goes wrong, is_error will be set and error_info will contain error~%# messages.~%bool is_error~%string error_info~%~%# Most probable hypothesis for the all portion of utterances, concatenated.~%string transcript~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechToTextResult)))
  "Returns full string definition for message of type 'SpeechToTextResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%# Result definition~%~%# If anything goes wrong, is_error will be set and error_info will contain error~%# messages.~%bool is_error~%string error_info~%~%# Most probable hypothesis for the all portion of utterances, concatenated.~%string transcript~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechToTextResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_info))
     4 (cl:length (cl:slot-value msg 'transcript))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechToTextResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechToTextResult
    (cl:cons ':is_error (is_error msg))
    (cl:cons ':error_info (error_info msg))
    (cl:cons ':transcript (transcript msg))
))
