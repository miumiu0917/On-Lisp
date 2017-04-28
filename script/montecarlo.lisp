(setf *random-state* (make-random-state t))
(defparameter *dot-count* 100000)

(defun random-num ()
  (/ (random 1000000) 1000000))

(defun distance-from-origin (x y)
  (+ (* x x) (* y y)))

(defun one-dot-distance ()
  (distance-from-origin (random-num) (random-num)))

(defun less-than-one (l)
  (if (> 1.0 l) 1.0 0.0))

(defun do-montecarlo ()
  (progn
    (setq count 0.0)
      (loop for i from 1 to *dot-count*
        do (setq count (+ count (less-than-one (one-dot-distance)))))
          (* 4 (/ count *dot-count*))))
    

(print  (do-montecarlo))