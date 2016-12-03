;; Auto-generated. Do not edit!


(when (boundp 'serial::GPS_raw)
  (if (not (find-package "SERIAL"))
    (make-package "SERIAL"))
  (shadow 'GPS_raw (find-package "SERIAL")))
(unless (find-package "SERIAL::GPS_RAW")
  (make-package "SERIAL::GPS_RAW"))

(in-package "ROS")
;;//! \htmlinclude GPS_raw.msg.html


(defclass serial::GPS_raw
  :super ros::object
  :slots (_gps1 _gps2 _gps3 _gps4 ))

(defmethod serial::GPS_raw
  (:init
   (&key
    ((:gps1 __gps1) "")
    ((:gps2 __gps2) "")
    ((:gps3 __gps3) "")
    ((:gps4 __gps4) "")
    )
   (send-super :init)
   (setq _gps1 (string __gps1))
   (setq _gps2 (string __gps2))
   (setq _gps3 (string __gps3))
   (setq _gps4 (string __gps4))
   self)
  (:gps1
   (&optional __gps1)
   (if __gps1 (setq _gps1 __gps1)) _gps1)
  (:gps2
   (&optional __gps2)
   (if __gps2 (setq _gps2 __gps2)) _gps2)
  (:gps3
   (&optional __gps3)
   (if __gps3 (setq _gps3 __gps3)) _gps3)
  (:gps4
   (&optional __gps4)
   (if __gps4 (setq _gps4 __gps4)) _gps4)
  (:serialization-length
   ()
   (+
    ;; string _gps1
    4 (length _gps1)
    ;; string _gps2
    4 (length _gps2)
    ;; string _gps3
    4 (length _gps3)
    ;; string _gps4
    4 (length _gps4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gps1
       (write-long (length _gps1) s) (princ _gps1 s)
     ;; string _gps2
       (write-long (length _gps2) s) (princ _gps2 s)
     ;; string _gps3
       (write-long (length _gps3) s) (princ _gps3 s)
     ;; string _gps4
       (write-long (length _gps4) s) (princ _gps4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gps1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gps2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gps3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gps4
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps4 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get serial::GPS_raw :md5sum-) "c1a03139f538dcea96e4b207ccd55dd5")
(setf (get serial::GPS_raw :datatype-) "serial/GPS_raw")
(setf (get serial::GPS_raw :definition-)
      "string gps1
string gps2
string gps3
string gps4

")



(provide :serial/GPS_raw "c1a03139f538dcea96e4b207ccd55dd5")


