;; Auto-generated. Do not edit!


(when (boundp 'afnan::wordcount)
  (if (not (find-package "AFNAN"))
    (make-package "AFNAN"))
  (shadow 'wordcount (find-package "AFNAN")))
(unless (find-package "AFNAN::WORDCOUNT")
  (make-package "AFNAN::WORDCOUNT"))
(unless (find-package "AFNAN::WORDCOUNTREQUEST")
  (make-package "AFNAN::WORDCOUNTREQUEST"))
(unless (find-package "AFNAN::WORDCOUNTRESPONSE")
  (make-package "AFNAN::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass afnan::wordcountRequest
  :super ros::object
  :slots (_mystring ))

(defmethod afnan::wordcountRequest
  (:init
   (&key
    ((:mystring __mystring) "")
    )
   (send-super :init)
   (setq _mystring (string __mystring))
   self)
  (:mystring
   (&optional __mystring)
   (if __mystring (setq _mystring __mystring)) _mystring)
  (:serialization-length
   ()
   (+
    ;; string _mystring
    4 (length _mystring)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mystring
       (write-long (length _mystring) s) (princ _mystring s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mystring
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mystring (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass afnan::wordcountResponse
  :super ros::object
  :slots (_count ))

(defmethod afnan::wordcountResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass afnan::wordcount
  :super ros::object
  :slots ())

(setf (get afnan::wordcount :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get afnan::wordcount :datatype-) "afnan/wordcount")
(setf (get afnan::wordcount :request) afnan::wordcountRequest)
(setf (get afnan::wordcount :response) afnan::wordcountResponse)

(defmethod afnan::wordcountRequest
  (:response () (instance afnan::wordcountResponse :init)))

(setf (get afnan::wordcountRequest :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get afnan::wordcountRequest :datatype-) "afnan/wordcountRequest")
(setf (get afnan::wordcountRequest :definition-)
      "string mystring

---

int32 count
")

(setf (get afnan::wordcountResponse :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get afnan::wordcountResponse :datatype-) "afnan/wordcountResponse")
(setf (get afnan::wordcountResponse :definition-)
      "string mystring

---

int32 count
")



(provide :afnan/wordcount "b4834320f090e9235da913886638fb4e")


