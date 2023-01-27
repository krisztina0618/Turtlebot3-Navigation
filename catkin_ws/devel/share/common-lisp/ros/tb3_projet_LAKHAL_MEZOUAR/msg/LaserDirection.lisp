; Auto-generated. Do not edit!


(cl:in-package tb3_projet_LAKHAL_MEZOUAR-msg)


;//! \htmlinclude LaserDirection.msg.html

(cl:defclass <LaserDirection> (roslisp-msg-protocol:ros-message)
  ((FACE_GAUCHE
    :reader FACE_GAUCHE
    :initarg :FACE_GAUCHE
    :type cl:float
    :initform 0.0)
   (FACE_DROITE
    :reader FACE_DROITE
    :initarg :FACE_DROITE
    :type cl:float
    :initform 0.0)
   (GAUCHE_HAUT
    :reader GAUCHE_HAUT
    :initarg :GAUCHE_HAUT
    :type cl:float
    :initform 0.0)
   (GAUCHE_BAS
    :reader GAUCHE_BAS
    :initarg :GAUCHE_BAS
    :type cl:float
    :initform 0.0)
   (ARRIERE_DROITE
    :reader ARRIERE_DROITE
    :initarg :ARRIERE_DROITE
    :type cl:float
    :initform 0.0)
   (ARRIERE_GAUCHE
    :reader ARRIERE_GAUCHE
    :initarg :ARRIERE_GAUCHE
    :type cl:float
    :initform 0.0)
   (DROITE_HAUT
    :reader DROITE_HAUT
    :initarg :DROITE_HAUT
    :type cl:float
    :initform 0.0)
   (DROITE_BAS
    :reader DROITE_BAS
    :initarg :DROITE_BAS
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaserDirection (<LaserDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tb3_projet_LAKHAL_MEZOUAR-msg:<LaserDirection> is deprecated: use tb3_projet_LAKHAL_MEZOUAR-msg:LaserDirection instead.")))

(cl:ensure-generic-function 'FACE_GAUCHE-val :lambda-list '(m))
(cl:defmethod FACE_GAUCHE-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:FACE_GAUCHE-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:FACE_GAUCHE instead.")
  (FACE_GAUCHE m))

(cl:ensure-generic-function 'FACE_DROITE-val :lambda-list '(m))
(cl:defmethod FACE_DROITE-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:FACE_DROITE-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:FACE_DROITE instead.")
  (FACE_DROITE m))

(cl:ensure-generic-function 'GAUCHE_HAUT-val :lambda-list '(m))
(cl:defmethod GAUCHE_HAUT-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:GAUCHE_HAUT-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:GAUCHE_HAUT instead.")
  (GAUCHE_HAUT m))

(cl:ensure-generic-function 'GAUCHE_BAS-val :lambda-list '(m))
(cl:defmethod GAUCHE_BAS-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:GAUCHE_BAS-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:GAUCHE_BAS instead.")
  (GAUCHE_BAS m))

(cl:ensure-generic-function 'ARRIERE_DROITE-val :lambda-list '(m))
(cl:defmethod ARRIERE_DROITE-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:ARRIERE_DROITE-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:ARRIERE_DROITE instead.")
  (ARRIERE_DROITE m))

(cl:ensure-generic-function 'ARRIERE_GAUCHE-val :lambda-list '(m))
(cl:defmethod ARRIERE_GAUCHE-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:ARRIERE_GAUCHE-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:ARRIERE_GAUCHE instead.")
  (ARRIERE_GAUCHE m))

(cl:ensure-generic-function 'DROITE_HAUT-val :lambda-list '(m))
(cl:defmethod DROITE_HAUT-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:DROITE_HAUT-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:DROITE_HAUT instead.")
  (DROITE_HAUT m))

(cl:ensure-generic-function 'DROITE_BAS-val :lambda-list '(m))
(cl:defmethod DROITE_BAS-val ((m <LaserDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tb3_projet_LAKHAL_MEZOUAR-msg:DROITE_BAS-val is deprecated.  Use tb3_projet_LAKHAL_MEZOUAR-msg:DROITE_BAS instead.")
  (DROITE_BAS m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserDirection>) ostream)
  "Serializes a message object of type '<LaserDirection>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'FACE_GAUCHE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'FACE_DROITE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GAUCHE_HAUT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GAUCHE_BAS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ARRIERE_DROITE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ARRIERE_GAUCHE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DROITE_HAUT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DROITE_BAS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserDirection>) istream)
  "Deserializes a message object of type '<LaserDirection>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'FACE_GAUCHE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'FACE_DROITE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GAUCHE_HAUT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GAUCHE_BAS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ARRIERE_DROITE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ARRIERE_GAUCHE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DROITE_HAUT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DROITE_BAS) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserDirection>)))
  "Returns string type for a message object of type '<LaserDirection>"
  "tb3_projet_LAKHAL_MEZOUAR/LaserDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserDirection)))
  "Returns string type for a message object of type 'LaserDirection"
  "tb3_projet_LAKHAL_MEZOUAR/LaserDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserDirection>)))
  "Returns md5sum for a message object of type '<LaserDirection>"
  "c704f8041ea4ae81e9cc21cd890fee83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserDirection)))
  "Returns md5sum for a message object of type 'LaserDirection"
  "c704f8041ea4ae81e9cc21cd890fee83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserDirection>)))
  "Returns full string definition for message of type '<LaserDirection>"
  (cl:format cl:nil "float32 FACE_GAUCHE~%float32 FACE_DROITE~%float32 GAUCHE_HAUT~%float32 GAUCHE_BAS~%float32 ARRIERE_DROITE~%float32 ARRIERE_GAUCHE~%float32 DROITE_HAUT~%float32 DROITE_BAS~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserDirection)))
  "Returns full string definition for message of type 'LaserDirection"
  (cl:format cl:nil "float32 FACE_GAUCHE~%float32 FACE_DROITE~%float32 GAUCHE_HAUT~%float32 GAUCHE_BAS~%float32 ARRIERE_DROITE~%float32 ARRIERE_GAUCHE~%float32 DROITE_HAUT~%float32 DROITE_BAS~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserDirection>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserDirection
    (cl:cons ':FACE_GAUCHE (FACE_GAUCHE msg))
    (cl:cons ':FACE_DROITE (FACE_DROITE msg))
    (cl:cons ':GAUCHE_HAUT (GAUCHE_HAUT msg))
    (cl:cons ':GAUCHE_BAS (GAUCHE_BAS msg))
    (cl:cons ':ARRIERE_DROITE (ARRIERE_DROITE msg))
    (cl:cons ':ARRIERE_GAUCHE (ARRIERE_GAUCHE msg))
    (cl:cons ':DROITE_HAUT (DROITE_HAUT msg))
    (cl:cons ':DROITE_BAS (DROITE_BAS msg))
))
