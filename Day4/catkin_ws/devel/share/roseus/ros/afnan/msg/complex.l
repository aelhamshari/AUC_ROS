;; Auto-generated. Do not edit!


(when (boundp 'afnan::complex)
  (if (not (find-package "AFNAN"))
    (make-package "AFNAN"))
  (shadow 'complex (find-package "AFNAN")))
(unless (find-package "AFNAN::COMPLEX")
  (make-package "AFNAN::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude complex.msg.html


(defclass afnan::complex
  :super ros::object
  :slots (_real _imaginary ))

(defmethod afnan::complex
  (:init
   (&key
    ((:real __real) 0)
    ((:imaginary __imaginary) 0)
    )
   (send-super :init)
   (setq _real (round __real))
   (setq _imaginary (round __imaginary))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginary
   (&optional __imaginary)
   (if __imaginary (setq _imaginary __imaginary)) _imaginary)
  (:serialization-length
   ()
   (+
    ;; int32 _real
    4
    ;; int32 _imaginary
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _real
       (write-long _real s)
     ;; int32 _imaginary
       (write-long _imaginary s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _real
     (setq _real (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _imaginary
     (setq _imaginary (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get afnan::complex :md5sum-) "29494601c99dbe58165af75a7e636359")
(setf (get afnan::complex :datatype-) "afnan/complex")
(setf (get afnan::complex :definition-)
      "int32 real
int32 imaginary
")



(provide :afnan/complex "29494601c99dbe58165af75a7e636359")


