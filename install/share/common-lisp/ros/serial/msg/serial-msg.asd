
(cl:in-package :asdf)

(defsystem "serial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GPS_raw" :depends-on ("_package_GPS_raw"))
    (:file "_package_GPS_raw" :depends-on ("_package"))
  ))