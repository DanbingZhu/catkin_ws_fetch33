; Auto-generated. Do not edit!


(cl:in-package gcloud_speech_msgs-msg)


;//! \htmlinclude SpeechToTextGoal.msg.html

(cl:defclass <SpeechToTextGoal> (roslisp-msg-protocol:ros-message)
  ((hints
    :reader hints
    :initarg :hints
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (max_alternatives
    :reader max_alternatives
    :initarg :max_alternatives
    :type cl:integer
    :initform 0)
   (listen_duration_sec
    :reader listen_duration_sec
    :initarg :listen_duration_sec
    :type cl:integer
    :initform 0)
   (max_recognition_duration_sec
    :reader max_recognition_duration_sec
    :initarg :max_recognition_duration_sec
    :type cl:integer
    :initform 0)
   (suppress_interim_results
    :reader suppress_interim_results
    :initarg :suppress_interim_results
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpeechToTextGoal (<SpeechToTextGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechToTextGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechToTextGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gcloud_speech_msgs-msg:<SpeechToTextGoal> is deprecated: use gcloud_speech_msgs-msg:SpeechToTextGoal instead.")))

(cl:ensure-generic-function 'hints-val :lambda-list '(m))
(cl:defmethod hints-val ((m <SpeechToTextGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:hints-val is deprecated.  Use gcloud_speech_msgs-msg:hints instead.")
  (hints m))

(cl:ensure-generic-function 'max_alternatives-val :lambda-list '(m))
(cl:defmethod max_alternatives-val ((m <SpeechToTextGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:max_alternatives-val is deprecated.  Use gcloud_speech_msgs-msg:max_alternatives instead.")
  (max_alternatives m))

(cl:ensure-generic-function 'listen_duration_sec-val :lambda-list '(m))
(cl:defmethod listen_duration_sec-val ((m <SpeechToTextGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:listen_duration_sec-val is deprecated.  Use gcloud_speech_msgs-msg:listen_duration_sec instead.")
  (listen_duration_sec m))

(cl:ensure-generic-function 'max_recognition_duration_sec-val :lambda-list '(m))
(cl:defmethod max_recognition_duration_sec-val ((m <SpeechToTextGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:max_recognition_duration_sec-val is deprecated.  Use gcloud_speech_msgs-msg:max_recognition_duration_sec instead.")
  (max_recognition_duration_sec m))

(cl:ensure-generic-function 'suppress_interim_results-val :lambda-list '(m))
(cl:defmethod suppress_interim_results-val ((m <SpeechToTextGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:suppress_interim_results-val is deprecated.  Use gcloud_speech_msgs-msg:suppress_interim_results instead.")
  (suppress_interim_results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechToTextGoal>) ostream)
  "Serializes a message object of type '<SpeechToTextGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'hints))
  (cl:let* ((signed (cl:slot-value msg 'max_alternatives)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'listen_duration_sec)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_recognition_duration_sec)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'suppress_interim_results) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechToTextGoal>) istream)
  "Deserializes a message object of type '<SpeechToTextGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_alternatives) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'listen_duration_sec) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_recognition_duration_sec) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'suppress_interim_results) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechToTextGoal>)))
  "Returns string type for a message object of type '<SpeechToTextGoal>"
  "gcloud_speech_msgs/SpeechToTextGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechToTextGoal)))
  "Returns string type for a message object of type 'SpeechToTextGoal"
  "gcloud_speech_msgs/SpeechToTextGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechToTextGoal>)))
  "Returns md5sum for a message object of type '<SpeechToTextGoal>"
  "62642f8234450646d11f3cec1403c25a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechToTextGoal)))
  "Returns md5sum for a message object of type 'SpeechToTextGoal"
  "62642f8234450646d11f3cec1403c25a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechToTextGoal>)))
  "Returns full string definition for message of type '<SpeechToTextGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal definition~%# Equivalent to google.cloud.speech.v1.StreamingRecognitionConfig. See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#streamingrecognitionconfig~%~%# A list of strings containing words and phrases \"hints\" so that the speech~%# recognition is more likely to recognize them. This can be used to improve the~%# accuracy for specific words and phrases, for example, if specific commands are~%# typically spoken by the user. This can also be used to add additional words to~%# the vocabulary of the recognizer.~%string[] hints~%~%# Maximum number of recognition hypotheses to be returned. Specifically, the~%# maximum number of RecognitionHypothesis messages within each~%# SpeechToTextFeedback. The server may return fewer than max_alternatives. Valid~%# values are 0-30. A value of 0 or 1 will return a maximum of one. If omitted,~%# will return a maximum of one.~%int32 max_alternatives~%~%# Maximum listening duration. The recognizer will start listening immediately,~%# and will stop listening after \"listen_duration_sec\" seconds. If 0 or omitted,~%# will use an internal default value (14 seconds).~%int32 listen_duration_sec~%~%# Maximum recognition duration. The recognizer will start counting down~%# immediately, and after max_recognition_duration_sec seconds it will return no~%# matter whether there is a recognition result. If 0 or omitted, will use~%# a default value: listen_duration_sec + 2.~%int32 max_recognition_duration_sec~%~%~%# If false or omitted, interim results (tentative hypotheses) may be returned as~%# they become available (these interim results are indicated with the~%# is_portion_final=false flag). If true, only is_portion_final=true result(s)~%# are returned.~%bool suppress_interim_results~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechToTextGoal)))
  "Returns full string definition for message of type 'SpeechToTextGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal definition~%# Equivalent to google.cloud.speech.v1.StreamingRecognitionConfig. See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#streamingrecognitionconfig~%~%# A list of strings containing words and phrases \"hints\" so that the speech~%# recognition is more likely to recognize them. This can be used to improve the~%# accuracy for specific words and phrases, for example, if specific commands are~%# typically spoken by the user. This can also be used to add additional words to~%# the vocabulary of the recognizer.~%string[] hints~%~%# Maximum number of recognition hypotheses to be returned. Specifically, the~%# maximum number of RecognitionHypothesis messages within each~%# SpeechToTextFeedback. The server may return fewer than max_alternatives. Valid~%# values are 0-30. A value of 0 or 1 will return a maximum of one. If omitted,~%# will return a maximum of one.~%int32 max_alternatives~%~%# Maximum listening duration. The recognizer will start listening immediately,~%# and will stop listening after \"listen_duration_sec\" seconds. If 0 or omitted,~%# will use an internal default value (14 seconds).~%int32 listen_duration_sec~%~%# Maximum recognition duration. The recognizer will start counting down~%# immediately, and after max_recognition_duration_sec seconds it will return no~%# matter whether there is a recognition result. If 0 or omitted, will use~%# a default value: listen_duration_sec + 2.~%int32 max_recognition_duration_sec~%~%~%# If false or omitted, interim results (tentative hypotheses) may be returned as~%# they become available (these interim results are indicated with the~%# is_portion_final=false flag). If true, only is_portion_final=true result(s)~%# are returned.~%bool suppress_interim_results~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechToTextGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechToTextGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechToTextGoal
    (cl:cons ':hints (hints msg))
    (cl:cons ':max_alternatives (max_alternatives msg))
    (cl:cons ':listen_duration_sec (listen_duration_sec msg))
    (cl:cons ':max_recognition_duration_sec (max_recognition_duration_sec msg))
    (cl:cons ':suppress_interim_results (suppress_interim_results msg))
))
