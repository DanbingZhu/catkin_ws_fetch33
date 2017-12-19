
(cl:in-package :asdf)

(defsystem "gcloud_speech_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RecognitionHypothesis" :depends-on ("_package_RecognitionHypothesis"))
    (:file "_package_RecognitionHypothesis" :depends-on ("_package"))
    (:file "LinearPcm16Le16000Audio" :depends-on ("_package_LinearPcm16Le16000Audio"))
    (:file "_package_LinearPcm16Le16000Audio" :depends-on ("_package"))
    (:file "SpeechToTextResult" :depends-on ("_package_SpeechToTextResult"))
    (:file "_package_SpeechToTextResult" :depends-on ("_package"))
    (:file "SpeechToTextGoal" :depends-on ("_package_SpeechToTextGoal"))
    (:file "_package_SpeechToTextGoal" :depends-on ("_package"))
    (:file "SpeechToTextFeedback" :depends-on ("_package_SpeechToTextFeedback"))
    (:file "_package_SpeechToTextFeedback" :depends-on ("_package"))
    (:file "SpeechToTextActionResult" :depends-on ("_package_SpeechToTextActionResult"))
    (:file "_package_SpeechToTextActionResult" :depends-on ("_package"))
    (:file "SpeechToTextActionGoal" :depends-on ("_package_SpeechToTextActionGoal"))
    (:file "_package_SpeechToTextActionGoal" :depends-on ("_package"))
    (:file "SpeechToTextAction" :depends-on ("_package_SpeechToTextAction"))
    (:file "_package_SpeechToTextAction" :depends-on ("_package"))
    (:file "SpeechToTextActionFeedback" :depends-on ("_package_SpeechToTextActionFeedback"))
    (:file "_package_SpeechToTextActionFeedback" :depends-on ("_package"))
  ))