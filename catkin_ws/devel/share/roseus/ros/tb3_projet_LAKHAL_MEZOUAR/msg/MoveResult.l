;; Auto-generated. Do not edit!


(when (boundp 'tb3_projet_LAKHAL_MEZOUAR::MoveResult)
  (if (not (find-package "TB3_PROJET_LAKHAL_MEZOUAR"))
    (make-package "TB3_PROJET_LAKHAL_MEZOUAR"))
  (shadow 'MoveResult (find-package "TB3_PROJET_LAKHAL_MEZOUAR")))
(unless (find-package "TB3_PROJET_LAKHAL_MEZOUAR::MOVERESULT")
  (make-package "TB3_PROJET_LAKHAL_MEZOUAR::MOVERESULT"))

(in-package "ROS")
;;//! \htmlinclude MoveResult.msg.html


(defclass tb3_projet_LAKHAL_MEZOUAR::MoveResult
  :super ros::object
  :slots (_reached ))

(defmethod tb3_projet_LAKHAL_MEZOUAR::MoveResult
  (:init
   (&key
    ((:reached __reached) nil)
    )
   (send-super :init)
   (setq _reached __reached)
   self)
  (:reached
   (&optional __reached)
   (if __reached (setq _reached __reached)) _reached)
  (:serialization-length
   ()
   (+
    ;; bool _reached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reached
       (if _reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reached
     (setq _reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tb3_projet_LAKHAL_MEZOUAR::MoveResult :md5sum-) "80204a6ff2622a7071680d5597cbd3aa")
(setf (get tb3_projet_LAKHAL_MEZOUAR::MoveResult :datatype-) "tb3_projet_LAKHAL_MEZOUAR/MoveResult")
(setf (get tb3_projet_LAKHAL_MEZOUAR::MoveResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
bool reached

")



(provide :tb3_projet_LAKHAL_MEZOUAR/MoveResult "80204a6ff2622a7071680d5597cbd3aa")


