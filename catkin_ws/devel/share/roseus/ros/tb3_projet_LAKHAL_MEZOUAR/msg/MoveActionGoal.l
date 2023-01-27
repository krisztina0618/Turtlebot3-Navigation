;; Auto-generated. Do not edit!


(when (boundp 'tb3_projet_LAKHAL_MEZOUAR::MoveActionGoal)
  (if (not (find-package "TB3_PROJET_LAKHAL_MEZOUAR"))
    (make-package "TB3_PROJET_LAKHAL_MEZOUAR"))
  (shadow 'MoveActionGoal (find-package "TB3_PROJET_LAKHAL_MEZOUAR")))
(unless (find-package "TB3_PROJET_LAKHAL_MEZOUAR::MOVEACTIONGOAL")
  (make-package "TB3_PROJET_LAKHAL_MEZOUAR::MOVEACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude MoveActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tb3_projet_LAKHAL_MEZOUAR::MoveActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod tb3_projet_LAKHAL_MEZOUAR::MoveActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance tb3_projet_LAKHAL_MEZOUAR::MoveGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; tb3_projet_LAKHAL_MEZOUAR/MoveGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; tb3_projet_LAKHAL_MEZOUAR/MoveGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; tb3_projet_LAKHAL_MEZOUAR/MoveGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get tb3_projet_LAKHAL_MEZOUAR::MoveActionGoal :md5sum-) "f9893d0e311725ed27ff0f49013ee804")
(setf (get tb3_projet_LAKHAL_MEZOUAR::MoveActionGoal :datatype-) "tb3_projet_LAKHAL_MEZOUAR/MoveActionGoal")
(setf (get tb3_projet_LAKHAL_MEZOUAR::MoveActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
MoveGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: tb3_projet_LAKHAL_MEZOUAR/MoveGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
float32 pos_x  # position cible

")



(provide :tb3_projet_LAKHAL_MEZOUAR/MoveActionGoal "f9893d0e311725ed27ff0f49013ee804")

