
(cl:in-package :asdf)

(defsystem "servo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "servo_order" :depends-on ("_package_servo_order"))
    (:file "_package_servo_order" :depends-on ("_package"))
  ))