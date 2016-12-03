;; Auto-generated. Do not edit!


(when (boundp 'servo::servo_order)
  (if (not (find-package "SERVO"))
    (make-package "SERVO"))
  (shadow 'servo_order (find-package "SERVO")))
(unless (find-package "SERVO::SERVO_ORDER")
  (make-package "SERVO::SERVO_ORDER"))

(in-package "ROS")
;;//! \htmlinclude servo_order.msg.html


(defclass servo::servo_order
  :super ros::object
  :slots (_numeroMoteur _position ))

(defmethod servo::servo_order
  (:init
   (&key
    ((:numeroMoteur __numeroMoteur) 0)
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _numeroMoteur (round __numeroMoteur))
   (setq _position (float __position))
   self)
  (:numeroMoteur
   (&optional __numeroMoteur)
   (if __numeroMoteur (setq _numeroMoteur __numeroMoteur)) _numeroMoteur)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _numeroMoteur
    4
    ;; float32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _numeroMoteur
       (write-long _numeroMoteur s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _numeroMoteur
     (setq _numeroMoteur (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get servo::servo_order :md5sum-) "e8d0c7e8a697e8acacd6bb6f954ac448")
(setf (get servo::servo_order :datatype-) "servo/servo_order")
(setf (get servo::servo_order :definition-)
      "int32 numeroMoteur
float32 position

")



(provide :servo/servo_order "e8d0c7e8a697e8acacd6bb6f954ac448")


