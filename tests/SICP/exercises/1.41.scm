(define (double f)
  (lambda (x) (f (f x))))

(define (inc x)
  (+ x 1))

((double inc) 2)

(((double (double double)) inc) 5)

(((lambda (x)
    ((lambda (x)
       (double (double x)))
     ((lambda (x)
        (double (double x)))
      x)))
  inc)
 5)

((double (double
          (lambda (x)
            ((lambda (x)
               (inc (inc x)))
             ((lambda (x)
                (inc (inc x)))
              x)))))
 5)

((double (lambda (x)
           ((lambda (x)
              ((lambda (x)
                 (inc (inc x)))
               ((lambda (x)
                  (inc (inc x)))
                x)))
            ((lambda (x)
               ((lambda (x)
                  (inc (inc x)))
                ((lambda (x)
                   (inc (inc x)))
                 x)))
             x))))
 5)

((lambda (x)
   ((lambda (x)
      ((lambda (x)
         ((lambda (x)
            (inc (inc x)))
          ((lambda (x)
             (inc (inc x)))
           x)))
       ((lambda (x)
          ((lambda (x)
             (inc (inc x)))
           ((lambda (x)
              (inc (inc x)))
            x)))
        x)))
    ((lambda (x)
       ((lambda (x)
          ((lambda (x)
             (inc (inc x)))
           ((lambda (x)
              (inc (inc x)))
            x)))
        ((lambda (x)
           ((lambda (x)
              (inc (inc x)))
            ((lambda (x)
               (inc (inc x)))
             x)))
         x)))
     x)))
 5)

((lambda (x)
   ((lambda (x)
      ((lambda (x)
         (inc (inc x)))
       ((lambda (x)
          (inc (inc x)))
        x)))
    ((lambda (x)
       ((lambda (x)
          (inc (inc x)))
        ((lambda (x)
           (inc (inc x)))
         x)))
     x)))
 ((lambda (x)
    ((lambda (x)
       ((lambda (x)
          (inc (inc x)))
        ((lambda (x)
           (inc (inc x)))
         x)))
     ((lambda (x)
        ((lambda (x)
           (inc (inc x)))
         ((lambda (x)
            (inc (inc x)))
          x)))
      x)))
  5))

((lambda (x)
   ((lambda (x)
      ((lambda (x)
         (inc (inc x)))
       ((lambda (x)
          (inc (inc x)))
        x)))
    ((lambda (x)
       ((lambda (x)
          (inc (inc x)))
        ((lambda (x)
           (inc (inc x)))
         x)))
     x)))
 13)

((lambda (x)
   ((lambda (x)
      (inc (inc x)))
    ((lambda (x)
       (inc (inc x)))
     x)))
 ((lambda (x)
    ((lambda (x)
       (inc (inc x)))
     ((lambda (x)
        (inc (inc x)))
      x)))
  13))

((lambda (x)
   ((lambda (x)
      (inc (inc x)))
    ((lambda (x)
       (inc (inc x)))
     x)))
 17)

((lambda (x)
   (inc (inc x)))
 ((lambda (x)
    (inc (inc x)))
  17))

((lambda (x)
   (inc (inc x)))
 (inc (inc 17)))

((lambda (x)
   (inc (inc x)))
 19)

(inc (inc 19))

(inc 20)

21