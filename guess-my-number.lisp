(defun start-over () 
  (defparameter *small* 1)
  (defparameter *big* 100))
(start-over)

(defun guess-my-number () 
  (ash (+ *small* *big*) -1))

(defun bigger () 
  (setf *small* ( 1+ ( guess-my-number )))
  (guess-my-number))

(defun smaller () 
  (setf *big* ( 1- ( guess-my-number )))
  (guess-my-number))