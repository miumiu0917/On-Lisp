(defparameter *dot-count* 1000)

(defun random-num ()
  (/ (random 1000000) 1000000))

(defun distance-from-origin (x y)
  (+ (* x x) (* y y)))

(defun one-dot-distance ()
  (distance-from-origin (random-num) (random-num)))


(defun less-than-one (l)
  (if (> 1.0 l)
    1.0
      0.0))

(defun do-montecarlo ())

