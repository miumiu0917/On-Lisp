(defparameter *loop-count* 1000)

(defun fizzbuzz (x)
  (if (= 0 (mod x 15))
    (print "FizzBuzz")
    (if (= 0 (mod x 5))
      (print "Buzz")
      (if (= 0 (mod x 3))
        (print "Fizz")
        (print x)))))

(loop for i from 1 to *loop-count*
 do (fizzbuzz i))
