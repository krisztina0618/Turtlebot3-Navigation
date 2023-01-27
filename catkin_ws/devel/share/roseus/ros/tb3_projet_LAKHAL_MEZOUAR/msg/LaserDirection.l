;; Auto-generated. Do not edit!


(when (boundp 'tb3_projet_LAKHAL_MEZOUAR::LaserDirection)
  (if (not (find-package "TB3_PROJET_LAKHAL_MEZOUAR"))
    (make-package "TB3_PROJET_LAKHAL_MEZOUAR"))
  (shadow 'LaserDirection (find-package "TB3_PROJET_LAKHAL_MEZOUAR")))
(unless (find-package "TB3_PROJET_LAKHAL_MEZOUAR::LASERDIRECTION")
  (make-package "TB3_PROJET_LAKHAL_MEZOUAR::LASERDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude LaserDirection.msg.html


(defclass tb3_projet_LAKHAL_MEZOUAR::LaserDirection
  :super ros::object
  :slots (_FACE_GAUCHE _FACE_DROITE _GAUCHE_HAUT _GAUCHE_BAS _ARRIERE_DROITE _ARRIERE_GAUCHE _DROITE_HAUT _DROITE_BAS ))

(defmethod tb3_projet_LAKHAL_MEZOUAR::LaserDirection
  (:init
   (&key
    ((:FACE_GAUCHE __FACE_GAUCHE) 0.0)
    ((:FACE_DROITE __FACE_DROITE) 0.0)
    ((:GAUCHE_HAUT __GAUCHE_HAUT) 0.0)
    ((:GAUCHE_BAS __GAUCHE_BAS) 0.0)
    ((:ARRIERE_DROITE __ARRIERE_DROITE) 0.0)
    ((:ARRIERE_GAUCHE __ARRIERE_GAUCHE) 0.0)
    ((:DROITE_HAUT __DROITE_HAUT) 0.0)
    ((:DROITE_BAS __DROITE_BAS) 0.0)
    )
   (send-super :init)
   (setq _FACE_GAUCHE (float __FACE_GAUCHE))
   (setq _FACE_DROITE (float __FACE_DROITE))
   (setq _GAUCHE_HAUT (float __GAUCHE_HAUT))
   (setq _GAUCHE_BAS (float __GAUCHE_BAS))
   (setq _ARRIERE_DROITE (float __ARRIERE_DROITE))
   (setq _ARRIERE_GAUCHE (float __ARRIERE_GAUCHE))
   (setq _DROITE_HAUT (float __DROITE_HAUT))
   (setq _DROITE_BAS (float __DROITE_BAS))
   self)
  (:FACE_GAUCHE
   (&optional __FACE_GAUCHE)
   (if __FACE_GAUCHE (setq _FACE_GAUCHE __FACE_GAUCHE)) _FACE_GAUCHE)
  (:FACE_DROITE
   (&optional __FACE_DROITE)
   (if __FACE_DROITE (setq _FACE_DROITE __FACE_DROITE)) _FACE_DROITE)
  (:GAUCHE_HAUT
   (&optional __GAUCHE_HAUT)
   (if __GAUCHE_HAUT (setq _GAUCHE_HAUT __GAUCHE_HAUT)) _GAUCHE_HAUT)
  (:GAUCHE_BAS
   (&optional __GAUCHE_BAS)
   (if __GAUCHE_BAS (setq _GAUCHE_BAS __GAUCHE_BAS)) _GAUCHE_BAS)
  (:ARRIERE_DROITE
   (&optional __ARRIERE_DROITE)
   (if __ARRIERE_DROITE (setq _ARRIERE_DROITE __ARRIERE_DROITE)) _ARRIERE_DROITE)
  (:ARRIERE_GAUCHE
   (&optional __ARRIERE_GAUCHE)
   (if __ARRIERE_GAUCHE (setq _ARRIERE_GAUCHE __ARRIERE_GAUCHE)) _ARRIERE_GAUCHE)
  (:DROITE_HAUT
   (&optional __DROITE_HAUT)
   (if __DROITE_HAUT (setq _DROITE_HAUT __DROITE_HAUT)) _DROITE_HAUT)
  (:DROITE_BAS
   (&optional __DROITE_BAS)
   (if __DROITE_BAS (setq _DROITE_BAS __DROITE_BAS)) _DROITE_BAS)
  (:serialization-length
   ()
   (+
    ;; float32 _FACE_GAUCHE
    4
    ;; float32 _FACE_DROITE
    4
    ;; float32 _GAUCHE_HAUT
    4
    ;; float32 _GAUCHE_BAS
    4
    ;; float32 _ARRIERE_DROITE
    4
    ;; float32 _ARRIERE_GAUCHE
    4
    ;; float32 _DROITE_HAUT
    4
    ;; float32 _DROITE_BAS
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _FACE_GAUCHE
       (sys::poke _FACE_GAUCHE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _FACE_DROITE
       (sys::poke _FACE_DROITE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GAUCHE_HAUT
       (sys::poke _GAUCHE_HAUT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _GAUCHE_BAS
       (sys::poke _GAUCHE_BAS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ARRIERE_DROITE
       (sys::poke _ARRIERE_DROITE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ARRIERE_GAUCHE
       (sys::poke _ARRIERE_GAUCHE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DROITE_HAUT
       (sys::poke _DROITE_HAUT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DROITE_BAS
       (sys::poke _DROITE_BAS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _FACE_GAUCHE
     (setq _FACE_GAUCHE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _FACE_DROITE
     (setq _FACE_DROITE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GAUCHE_HAUT
     (setq _GAUCHE_HAUT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _GAUCHE_BAS
     (setq _GAUCHE_BAS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ARRIERE_DROITE
     (setq _ARRIERE_DROITE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ARRIERE_GAUCHE
     (setq _ARRIERE_GAUCHE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DROITE_HAUT
     (setq _DROITE_HAUT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DROITE_BAS
     (setq _DROITE_BAS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tb3_projet_LAKHAL_MEZOUAR::LaserDirection :md5sum-) "c704f8041ea4ae81e9cc21cd890fee83")
(setf (get tb3_projet_LAKHAL_MEZOUAR::LaserDirection :datatype-) "tb3_projet_LAKHAL_MEZOUAR/LaserDirection")
(setf (get tb3_projet_LAKHAL_MEZOUAR::LaserDirection :definition-)
      "float32 FACE_GAUCHE
float32 FACE_DROITE
float32 GAUCHE_HAUT
float32 GAUCHE_BAS
float32 ARRIERE_DROITE
float32 ARRIERE_GAUCHE
float32 DROITE_HAUT
float32 DROITE_BAS
")



(provide :tb3_projet_LAKHAL_MEZOUAR/LaserDirection "c704f8041ea4ae81e9cc21cd890fee83")


