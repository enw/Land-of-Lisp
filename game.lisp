(defun init () 
  (defparameter *nodes* 
    '((living-room (you are in the living room.
		    a wizard is snoring loudly on the couch.))
      (garden (you are in a beautiful garden. 
	       there is a well in front of you.))
      (attic (you are in the attic.
	      there is a giant welding torch in the corner.))))
  (defparameter *edges*
    '((living-room (garden west door) (attic upstairs ladder))
      (garden (living-room east door))
      (attic (living-room downstairs ladder))))
  (defparameter *objects* '(whiskey bucket frog chain))
  (defparameter *object-locations 
    '((whiskey living-room)
      (bucket living room)
      (chain garden)))
  '(game initialized)
)

(defun describe-location ( location )
  (cadr (assoc location *nodes*)))

;; quasiquoting
(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

(defun describe-paths (location) 
  (apply #'append (mapcar #'describe-path (cdr (assoc location *edges*)))))

;; describes objects in a location
;; (defun descibe-objects (loc)
;;   (label ((describe-cibe-obj (obj) 
;; 		       `(you see a ,obj on the floor.)))
;; 	 (apply #'append (mapcar #'describe-obj objects-at loc objs obj-loc))))

;; (defun objects-at (loc objs obj-locs)
;;   (labels ((at-loc (obj)
;; 	     (eq (cadr (Assoc obj obj-locs)) loc))
;; 	   (remove-if-not #'at-the-loc objs))))
(init)




