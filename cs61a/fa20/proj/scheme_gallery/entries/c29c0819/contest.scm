;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: 11:58 Submission
;;;
;;; Description:
;;;   Lazy Work
;;;   Repetitive Calls
;;;   Clock Ticking - Help me

(define (draw)
    (bgcolor "black")
    (define x 1)
    (speed 10)

    (define v 300)

    (define (create x)
        (if (= x v)
            nil
            (begin
                (color (finder x))
                (speed 10)
                (circle (/ x 2) 180)
                (rt 90.991)

                (create (+ x 1)))))
    ;A waste of tokens but meh.
    (define (finder x)
        (define first (/ n 6))
        (define second (* 2 (/ n 6)))
        (define third (* 3 (/ n 6)))
        (define fourth (* 4 (/ n 6)))
        (define fifth (* 5 (/ n 6)))
        (define sixth (* 6 (/ n 6)))
        (cond
            ((< x first)
                (rgb
                    1
                    (+ 0 (/ x first))
                    0))
            ((< x second)
                (rgb
                    (- 1 (/ (- x first) first))
                    1
                    0))
            ((< x third)
                (rgb
                    0
                    1
                    (+ 0 (/ (- x second) first))))
            ((< x fourth)
                (rgb
                    0
                    (- 1 (/ (- x third) first))
                    1))
            ((< x fifth)
                (rgb
                    (+ 0 (/ (- x fourth) first))
                    0
                    1))
            ((< x sixth)
                (rgb
                    1
                    0
                    (- 1 (/ (- x fifth) first))))

            )

        )

    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (create 150)
    (hideturtle)
)
  (exitonclick)
; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)

;Inspired by Spinny Insanity
