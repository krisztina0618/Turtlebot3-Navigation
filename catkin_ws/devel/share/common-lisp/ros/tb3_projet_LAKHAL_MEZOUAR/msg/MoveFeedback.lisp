; Auto-generated. Do not edit!


(cl:in-package tb3_projet_LAKHAL_MEZOUAR-msg)


;//! \htmlinclude MoveFeedback.msg.html

(cl:defclass <MoveFeedback> (roslisp-msg-protocol:ros-message)
  ((pos_x_intermediaire
    :reader pos_x_intermediaire
    :initarg :pos_x_intermediaire
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveFeedback (<MoveFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tb3_projet_LAKHAL_MEZOUAR-msg:<MoveFeedback> is deprecated: use tb3_projet_LAKHAL_MEZOUAR-msg:MoveFeedback instead.")))

(cl:ensure-generic-function 'pos_x_intermediaire-val :lambda-list '(m))
(cl:defmethod pos_x_intermediaire-val ((m <MoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:pos_x_intermediaire-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:pos_x_intermediaire instead.")
  (pos_x_intermediaire m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveFeedback>) ostream)
  "Serializes a message object of type '<MoveFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_x_intermediaire))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveFeedback>) istream)
  "Deserializes a message object of type '<MoveFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x_intermediaire) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveFeedback>)))
  "Returns string type for a message object of type '<MoveFeedback>"
  "tb3_projet_LAKHAL_MEZOUAR/MoveFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveFeedback)))
  "Returns string type for a message object of type 'MoveFeedback"
  "tb3_projet_LAKHAL_MEZOUAR/MoveFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveFeedback>)))
  "Returns md5sum for a message object of type '<MoveFeedback>"
  "4df6b75bb50c2e670d1fa96f3c788276")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveFeedback)))
  "Returns md5sum for a message object of type 'MoveFeedback"
  "4df6b75bb50c2e670d1fa96f3c788276")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveFeedback>)))
  "Returns full string definition for message of type '<MoveFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 pos_x_intermediaire                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveFeedback)))
  "Returns full string definition for message of type 'MoveFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 pos_x_intermediaire                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveFeedback
    (cl:cons ':pos_x_intermediaire (pos_x_intermediaire msg))
))
