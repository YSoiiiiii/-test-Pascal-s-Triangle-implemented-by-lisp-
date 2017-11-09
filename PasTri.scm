(define (PasTri x y)
  (cond ((= x 1) 1)
        ((= x y) 1)
        (else (+(PasTri x (- y 1)) (PasTri (- x 1) (- y 1))))))
        
