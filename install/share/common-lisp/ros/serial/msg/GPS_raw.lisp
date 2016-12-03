; Auto-generated. Do not edit!


(cl:in-package serial-msg)


;//! \htmlinclude GPS_raw.msg.html

(cl:defclass <GPS_raw> (roslisp-msg-protocol:ros-message)
  ((gps1
    :reader gps1
    :initarg :gps1
    :type cl:string
    :initform "")
   (gps2
    :reader gps2
    :initarg :gps2
    :type cl:string
    :initform "")
   (gps3
    :reader gps3
    :initarg :gps3
    :type cl:string
    :initform "")
   (gps4
    :reader gps4
    :initarg :gps4
    :type cl:string
    :initform ""))
)

(cl:defclass GPS_raw (<GPS_raw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPS_raw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPS_raw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial-msg:<GPS_raw> is deprecated: use serial-msg:GPS_raw instead.")))

(cl:ensure-generic-function 'gps1-val :lambda-list '(m))
(cl:defmethod gps1-val ((m <GPS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial-msg:gps1-val is deprecated.  Use serial-msg:gps1 instead.")
  (gps1 m))

(cl:ensure-generic-function 'gps2-val :lambda-list '(m))
(cl:defmethod gps2-val ((m <GPS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial-msg:gps2-val is deprecated.  Use serial-msg:gps2 instead.")
  (gps2 m))

(cl:ensure-generic-function 'gps3-val :lambda-list '(m))
(cl:defmethod gps3-val ((m <GPS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial-msg:gps3-val is deprecated.  Use serial-msg:gps3 instead.")
  (gps3 m))

(cl:ensure-generic-function 'gps4-val :lambda-list '(m))
(cl:defmethod gps4-val ((m <GPS_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial-msg:gps4-val is deprecated.  Use serial-msg:gps4 instead.")
  (gps4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPS_raw>) ostream)
  "Serializes a message object of type '<GPS_raw>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps2))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps3))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps4))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPS_raw>) istream)
  "Deserializes a message object of type '<GPS_raw>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps3) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps3) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps4) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps4) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPS_raw>)))
  "Returns string type for a message object of type '<GPS_raw>"
  "serial/GPS_raw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPS_raw)))
  "Returns string type for a message object of type 'GPS_raw"
  "serial/GPS_raw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPS_raw>)))
  "Returns md5sum for a message object of type '<GPS_raw>"
  "c1a03139f538dcea96e4b207ccd55dd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPS_raw)))
  "Returns md5sum for a message object of type 'GPS_raw"
  "c1a03139f538dcea96e4b207ccd55dd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPS_raw>)))
  "Returns full string definition for message of type '<GPS_raw>"
  (cl:format cl:nil "string gps1~%string gps2~%string gps3~%string gps4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPS_raw)))
  "Returns full string definition for message of type 'GPS_raw"
  (cl:format cl:nil "string gps1~%string gps2~%string gps3~%string gps4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPS_raw>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gps1))
     4 (cl:length (cl:slot-value msg 'gps2))
     4 (cl:length (cl:slot-value msg 'gps3))
     4 (cl:length (cl:slot-value msg 'gps4))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPS_raw>))
  "Converts a ROS message object to a list"
  (cl:list 'GPS_raw
    (cl:cons ':gps1 (gps1 msg))
    (cl:cons ':gps2 (gps2 msg))
    (cl:cons ':gps3 (gps3 msg))
    (cl:cons ':gps4 (gps4 msg))
))
