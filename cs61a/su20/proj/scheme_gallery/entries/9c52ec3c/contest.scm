;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Noice Julia Set
;;;
;;; Description:
;;;    Universe expands
;;;    But these galaxy bros meet
;;;    Thiccness synthesized

(define (draw)
    (hideturtle)
    (pixelsize 5)
    (define w (screen_width))
    (define h (screen_height))
    (define (n-incs-exit n-incs-done x y)
        (define x-2 (* x x))
        (define y-2 (* y y))
        (define r-2 (+ x-2 y-2))
        (if (< n-incs-done 81)
            (if (< r-2 4)
                (n-incs-exit (+ n-incs-done 1) (- (- x-2 y-2) 0.75) (+ (* 2 x y) 0.1))
                (+ (- n-incs-done (log (* 0.5 (log2 r-2)))) 1)
            )
            81
        )
    )
    (define (draw-pixels-after x y)
        (define six-h (* (n-incs-exit 0 x y) 0.07407407407))
        (define times-abs (- 1 (abs (- (modulo six-h 2) 1))))
        (cond
            ((< six-h 1) (define c (rgb 1 times-abs 0)))
            ((< six-h 2) (define c (rgb times-abs 1 0)))
            ((< six-h 3) (define c (rgb 0 1 times-abs)))
            ((< six-h 4) (define c (rgb 0 times-abs 1)))
            ((< six-h 5) (define c (rgb times-abs 0 1)))
            ((< six-h 5.99) (define c (rgb 1 0 times-abs)))
            (else (define c (rgb 0 0 0)))
        )
        (pixel (* w x 0.25) (* h y 0.25) c)
        (if (< x 2)
            (draw-pixels-after (+ x (/ 4 w)) y)
            (if (< y 2)
                (draw-pixels-after -2 (+ y (/ 4 h)))
            )
        )
    )
    (draw-pixels-after -2 -2)
    (exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)