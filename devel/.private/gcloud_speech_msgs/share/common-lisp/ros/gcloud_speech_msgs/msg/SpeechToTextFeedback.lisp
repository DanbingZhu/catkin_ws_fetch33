; Auto-generated. Do not edit!


(cl:in-package gcloud_speech_msgs-msg)


;//! \htmlinclude SpeechToTextFeedback.msg.html

(cl:defclass <SpeechToTextFeedback> (roslisp-msg-protocol:ros-message)
  ((hypotheses
    :reader hypotheses
    :initarg :hypotheses
    :type (cl:vector gcloud_speech_msgs-msg:RecognitionHypothesis)
   :initform (cl:make-array 0 :element-type 'gcloud_speech_msgs-msg:RecognitionHypothesis :initial-element (cl:make-instance 'gcloud_speech_msgs-msg:RecognitionHypothesis)))
   (is_portion_final
    :reader is_portion_final
    :initarg :is_portion_final
    :type cl:boolean
    :initform cl:nil)
   (stability
    :reader stability
    :initarg :stability
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpeechToTextFeedback (<SpeechToTextFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechToTextFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechToTextFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gcloud_speech_msgs-msg:<SpeechToTextFeedback> is deprecated: use gcloud_speech_msgs-msg:SpeechToTextFeedback instead.")))

(cl:ensure-generic-function 'hypotheses-val :lambda-list '(m))
(cl:defmethod hypotheses-val ((m <SpeechToTextFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:hypotheses-val is deprecated.  Use gcloud_speech_msgs-msg:hypotheses instead.")
  (hypotheses m))

(cl:ensure-generic-function 'is_portion_final-val :lambda-list '(m))
(cl:defmethod is_portion_final-val ((m <SpeechToTextFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:is_portion_final-val is deprecated.  Use gcloud_speech_msgs-msg:is_portion_final instead.")
  (is_portion_final m))

(cl:ensure-generic-function 'stability-val :lambda-list '(m))
(cl:defmethod stability-val ((m <SpeechToTextFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:stability-val is deprecated.  Use gcloud_speech_msgs-msg:stability instead.")
  (stability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechToTextFeedback>) ostream)
  "Serializes a message object of type '<SpeechToTextFeedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hypotheses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hypotheses))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_portion_final) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechToTextFeedback>) istream)
  "Deserializes a message object of type '<SpeechToTextFeedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hypotheses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hypotheses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gcloud_speech_msgs-msg:RecognitionHypothesis))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_portion_final) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stability) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechToTextFeedback>)))
  "Returns string type for a message object of type '<SpeechToTextFeedback>"
  "gcloud_speech_msgs/SpeechToTextFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechToTextFeedback)))
  "Returns string type for a message object of type 'SpeechToTextFeedback"
  "gcloud_speech_msgs/SpeechToTextFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechToTextFeedback>)))
  "Returns md5sum for a message object of type '<SpeechToTextFeedback>"
  "9d51422b863c8960964654dda15131a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechToTextFeedback)))
  "Returns md5sum for a message object of type 'SpeechToTextFeedback"
  "9d51422b863c8960964654dda15131a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechToTextFeedback>)))
  "Returns full string definition for message of type '<SpeechToTextFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%# Feedback definition: users should mostly rely on these feedbacks to get~%# recognition results.~%# Equivalent to google.cloud.speech.v1.StreamingRecognitionResult. See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionresult~%~%# Transcript text representing the words that the user spoke. The length of this~%# array is equal to the following \"confidence\" array.~%gcloud_speech_msgs/RecognitionHypothesis[] hypotheses~%~%# If false, this SpeechToTextFeedback represents an interim result that may~%# change. If true, the recognizer will not return any further hypotheses for~%# this portion of the transcript and corresponding audio as~%# SpeechToTextFeedback.~%bool is_portion_final~%~%# An estimate of the likelihood that the recognizer will not change its guess~%# about this interim result. Values range from 0.0 (completely unstable) to~%# 1.0 (completely stable). This field is only provided for interim results~%# (is_portion_final=false). The default of 0.0 is a sentinel value indicating~%# stability was not set.~%float64 stability~%~%~%================================================================================~%MSG: gcloud_speech_msgs/RecognitionHypothesis~%# Recognition hypothesis for a portion of speech. Equivalent to~%# google.cloud.speech.v1.SpeechRecognitionAlternative, See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionalternative~%~%# Transcript text representing the words that the user spoke.~%string transcript~%~%# The confidence estimate between 0.0 and 1.0. A higher number indicates an~%# estimated greater likelihood that the recognized words are correct. This field~%# is typically provided only for the top hypothesis, and only for~%# is_portion_final=true results. Clients should not rely on the confidence field~%# as it is not guaranteed to be accurate or consistent. The default of 0.0 is a~%# sentinel value indicating confidence was not set.~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechToTextFeedback)))
  "Returns full string definition for message of type 'SpeechToTextFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%# Feedback definition: users should mostly rely on these feedbacks to get~%# recognition results.~%# Equivalent to google.cloud.speech.v1.StreamingRecognitionResult. See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionresult~%~%# Transcript text representing the words that the user spoke. The length of this~%# array is equal to the following \"confidence\" array.~%gcloud_speech_msgs/RecognitionHypothesis[] hypotheses~%~%# If false, this SpeechToTextFeedback represents an interim result that may~%# change. If true, the recognizer will not return any further hypotheses for~%# this portion of the transcript and corresponding audio as~%# SpeechToTextFeedback.~%bool is_portion_final~%~%# An estimate of the likelihood that the recognizer will not change its guess~%# about this interim result. Values range from 0.0 (completely unstable) to~%# 1.0 (completely stable). This field is only provided for interim results~%# (is_portion_final=false). The default of 0.0 is a sentinel value indicating~%# stability was not set.~%float64 stability~%~%~%================================================================================~%MSG: gcloud_speech_msgs/RecognitionHypothesis~%# Recognition hypothesis for a portion of speech. Equivalent to~%# google.cloud.speech.v1.SpeechRecognitionAlternative, See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionalternative~%~%# Transcript text representing the words that the user spoke.~%string transcript~%~%# The confidence estimate between 0.0 and 1.0. A higher number indicates an~%# estimated greater likelihood that the recognized words are correct. This field~%# is typically provided only for the top hypothesis, and only for~%# is_portion_final=true results. Clients should not rely on the confidence field~%# as it is not guaranteed to be accurate or consistent. The default of 0.0 is a~%# sentinel value indicating confidence was not set.~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechToTextFeedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hypotheses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechToTextFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechToTextFeedback
    (cl:cons ':hypotheses (hypotheses msg))
    (cl:cons ':is_portion_final (is_portion_final msg))
    (cl:cons ':stability (stability msg))
))
