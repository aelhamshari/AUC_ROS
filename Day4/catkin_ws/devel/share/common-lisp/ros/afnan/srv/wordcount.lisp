; Auto-generated. Do not edit!


(cl:in-package afnan-srv)


;//! \htmlinclude wordcount-request.msg.html

(cl:defclass <wordcount-request> (roslisp-msg-protocol:ros-message)
  ((mystring
    :reader mystring
    :initarg :mystring
    :type cl:string
    :initform ""))
)

(cl:defclass wordcount-request (<wordcount-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wordcount-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wordcount-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name afnan-srv:<wordcount-request> is deprecated: use afnan-srv:wordcount-request instead.")))

(cl:ensure-generic-function 'mystring-val :lambda-list '(m))
(cl:defmethod mystring-val ((m <wordcount-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader afnan-srv:mystring-val is deprecated.  Use afnan-srv:mystring instead.")
  (mystring m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wordcount-request>) ostream)
  "Serializes a message object of type '<wordcount-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mystring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mystring))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wordcount-request>) istream)
  "Deserializes a message object of type '<wordcount-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mystring) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mystring) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wordcount-request>)))
  "Returns string type for a service object of type '<wordcount-request>"
  "afnan/wordcountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wordcount-request)))
  "Returns string type for a service object of type 'wordcount-request"
  "afnan/wordcountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wordcount-request>)))
  "Returns md5sum for a message object of type '<wordcount-request>"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wordcount-request)))
  "Returns md5sum for a message object of type 'wordcount-request"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wordcount-request>)))
  "Returns full string definition for message of type '<wordcount-request>"
  (cl:format cl:nil "string mystring~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wordcount-request)))
  "Returns full string definition for message of type 'wordcount-request"
  (cl:format cl:nil "string mystring~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wordcount-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mystring))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wordcount-request>))
  "Converts a ROS message object to a list"
  (cl:list 'wordcount-request
    (cl:cons ':mystring (mystring msg))
))
;//! \htmlinclude wordcount-response.msg.html

(cl:defclass <wordcount-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass wordcount-response (<wordcount-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wordcount-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wordcount-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name afnan-srv:<wordcount-response> is deprecated: use afnan-srv:wordcount-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <wordcount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader afnan-srv:count-val is deprecated.  Use afnan-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wordcount-response>) ostream)
  "Serializes a message object of type '<wordcount-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wordcount-response>) istream)
  "Deserializes a message object of type '<wordcount-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wordcount-response>)))
  "Returns string type for a service object of type '<wordcount-response>"
  "afnan/wordcountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wordcount-response)))
  "Returns string type for a service object of type 'wordcount-response"
  "afnan/wordcountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wordcount-response>)))
  "Returns md5sum for a message object of type '<wordcount-response>"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wordcount-response)))
  "Returns md5sum for a message object of type 'wordcount-response"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wordcount-response>)))
  "Returns full string definition for message of type '<wordcount-response>"
  (cl:format cl:nil "~%int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wordcount-response)))
  "Returns full string definition for message of type 'wordcount-response"
  (cl:format cl:nil "~%int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wordcount-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wordcount-response>))
  "Converts a ROS message object to a list"
  (cl:list 'wordcount-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'wordcount)))
  'wordcount-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'wordcount)))
  'wordcount-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wordcount)))
  "Returns string type for a service object of type '<wordcount>"
  "afnan/wordcount")