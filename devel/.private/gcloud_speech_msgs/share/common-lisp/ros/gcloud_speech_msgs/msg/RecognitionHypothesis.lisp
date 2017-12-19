; Auto-generated. Do not edit!


(cl:in-package gcloud_speech_msgs-msg)


;//! \htmlinclude RecognitionHypothesis.msg.html

(cl:defclass <RecognitionHypothesis> (roslisp-msg-protocol:ros-message)
  ((transcript
    :reader transcript
    :initarg :transcript
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass RecognitionHypothesis (<RecognitionHypothesis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognitionHypothesis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognitionHypothesis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gcloud_speech_msgs-msg:<RecognitionHypothesis> is deprecated: use gcloud_speech_msgs-msg:RecognitionHypothesis instead.")))

(cl:ensure-generic-function 'transcript-val :lambda-list '(m))
(cl:defmethod transcript-val ((m <RecognitionHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:transcript-val is deprecated.  Use gcloud_speech_msgs-msg:transcript instead.")
  (transcript m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RecognitionHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gcloud_speech_msgs-msg:confidence-val is deprecated.  Use gcloud_speech_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognitionHypothesis>) ostream)
  "Serializes a message object of type '<RecognitionHypothesis>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transcript))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transcript))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognitionHypothesis>) istream)
  "Deserializes a message object of type '<RecognitionHypothesis>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transcript) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transcript) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognitionHypothesis>)))
  "Returns string type for a message object of type '<RecognitionHypothesis>"
  "gcloud_speech_msgs/RecognitionHypothesis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognitionHypothesis)))
  "Returns string type for a message object of type 'RecognitionHypothesis"
  "gcloud_speech_msgs/RecognitionHypothesis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognitionHypothesis>)))
  "Returns md5sum for a message object of type '<RecognitionHypothesis>"
  "67d30fae26a67ab503aad1ca2f76d58e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognitionHypothesis)))
  "Returns md5sum for a message object of type 'RecognitionHypothesis"
  "67d30fae26a67ab503aad1ca2f76d58e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognitionHypothesis>)))
  "Returns full string definition for message of type '<RecognitionHypothesis>"
  (cl:format cl:nil "# Recognition hypothesis for a portion of speech. Equivalent to~%# google.cloud.speech.v1.SpeechRecognitionAlternative, See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionalternative~%~%# Transcript text representing the words that the user spoke.~%string transcript~%~%# The confidence estimate between 0.0 and 1.0. A higher number indicates an~%# estimated greater likelihood that the recognized words are correct. This field~%# is typically provided only for the top hypothesis, and only for~%# is_portion_final=true results. Clients should not rely on the confidence field~%# as it is not guaranteed to be accurate or consistent. The default of 0.0 is a~%# sentinel value indicating confidence was not set.~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognitionHypothesis)))
  "Returns full string definition for message of type 'RecognitionHypothesis"
  (cl:format cl:nil "# Recognition hypothesis for a portion of speech. Equivalent to~%# google.cloud.speech.v1.SpeechRecognitionAlternative, See also:~%# https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1#speechrecognitionalternative~%~%# Transcript text representing the words that the user spoke.~%string transcript~%~%# The confidence estimate between 0.0 and 1.0. A higher number indicates an~%# estimated greater likelihood that the recognized words are correct. This field~%# is typically provided only for the top hypothesis, and only for~%# is_portion_final=true results. Clients should not rely on the confidence field~%# as it is not guaranteed to be accurate or consistent. The default of 0.0 is a~%# sentinel value indicating confidence was not set.~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognitionHypothesis>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'transcript))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognitionHypothesis>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognitionHypothesis
    (cl:cons ':transcript (transcript msg))
    (cl:cons ':confidence (confidence msg))
))
