; Auto-generated. Do not edit!


(cl:in-package servo-msg)


;//! \htmlinclude servo_order.msg.html

(cl:defclass <servo_order> (roslisp-msg-protocol:ros-message)
  ((numeroMoteur
    :reader numeroMoteur
    :initarg :numeroMoteur
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0))
)

(cl:defclass servo_order (<servo_order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servo_order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servo_order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo-msg:<servo_order> is deprecated: use servo-msg:servo_order instead.")))

(cl:ensure-generic-function 'numeroMoteur-val :lambda-list '(m))
(cl:defmethod numeroMoteur-val ((m <servo_order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo-msg:numeroMoteur-val is deprecated.  Use servo-msg:numeroMoteur instead.")
  (numeroMoteur m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <servo_order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo-msg:position-val is deprecated.  Use servo-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servo_order>) ostream)
  "Serializes a message object of type '<servo_order>"
  (cl:let* ((signed (cl:slot-value msg 'numeroMoteur)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servo_order>) istream)
  "Deserializes a message object of type '<servo_order>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numeroMoteur) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servo_order>)))
  "Returns string type for a message object of type '<servo_order>"
  "servo/servo_order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servo_order)))
  "Returns string type for a message object of type 'servo_order"
  "servo/servo_order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servo_order>)))
  "Returns md5sum for a message object of type '<servo_order>"
  "e8d0c7e8a697e8acacd6bb6f954ac448")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servo_order)))
  "Returns md5sum for a message object of type 'servo_order"
  "e8d0c7e8a697e8acacd6bb6f954ac448")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servo_order>)))
  "Returns full string definition for message of type '<servo_order>"
  (cl:format cl:nil "int32 numeroMoteur~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servo_order)))
  "Returns full string definition for message of type 'servo_order"
  (cl:format cl:nil "int32 numeroMoteur~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servo_order>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servo_order>))
  "Converts a ROS message object to a list"
  (cl:list 'servo_order
    (cl:cons ':numeroMoteur (numeroMoteur msg))
    (cl:cons ':position (position msg))
))
