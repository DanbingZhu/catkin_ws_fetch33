
(cl:in-package :asdf)

(defsystem "acoustic_magic_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SoundSourceAngle" :depends-on ("_package_SoundSourceAngle"))
    (:file "_package_SoundSourceAngle" :depends-on ("_package"))
  ))