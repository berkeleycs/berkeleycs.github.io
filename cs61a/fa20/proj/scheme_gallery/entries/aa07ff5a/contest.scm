;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <(define (spiral turtle recursion) (* special_sauce (spiral turtle recursion)))>
;;;
;;; Description:
;;;   <That's a nice spiral
;;;    you've there... Shame if something were
;;;    to happen to it...>

(define (draw)

  (bgcolor (rgb 0.08 0.06 0.05))

  (penup)

  (backward 80)

  (left 90)

  (fd 130)

  (right 90)

  (pendown)

    (define (full_spiral angle len turn_rem dir red)

      (define (spiral angle len turn_rem red)

        (if (> turn_rem 0)
            (begin
            (if (= (modulo turn_rem 4) 0)

                (full_spiral angle (quotient len 1.4) (quotient turn_rem 1.4) (if (equal? dir left) right left) red)
                (begin (penup) (pendown))

                )

        (color (rgb (modulo red 1) 0.3 0.2))(forward len) (dir angle) (spiral angle (- len 1) (- turn_rem 1) (- red 0.014)))
        (begin (penup) (pendown))

        )
      )

      (define (backspiral angle len turn_rem)
        (penup)

        (if (> turn_rem 0)
            (begin
                (dir (- 360 angle)) (backward len) (backspiral angle (+ len 1) (- turn_rem 1)))
                (begin (penup) (pendown))
            )
        )

    (spiral angle len turn_rem red)
    (backspiral angle 1 turn_rem)


    )

    (full_spiral 22.5 64 64 right 0.9)



  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
