;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Death Star Explosion Chain
;;;
;;; Description:
;;;    Where are the rebels?
;;;    You may fire when ready
;;;    Alderaan is gone

(define (draw)
  (bgcolor "black")
  (penup)
  (setposition 470 150)
  (pendown)
  (speed 10)
  (define (draw-death-star r)
    (color "gray")
    (begin_fill)
    (circle r)
    (end_fill)
    (color "dimgray")
    (left 90)
    (forward (* r 2))
    (backward (* r 2))
    (penup)
    (right 25)
    (forward (* r 1.5))
    (pendown)
    (begin_fill)
    (circle (* r 0.3))
    (end_fill)
    (color "lawngreen")
    (left 30)
    (forward (* r 0.6))
    (right 60)
    (backward (* r 0.6))
    (forward (* r 0.6))
    (right 4.66)
    (backward (* r 0.3736))
    (forward (* r 0.3736))
    (left 69.32)
    (backward (* r 0.3736))
    (forward (* r 0.3736))
    (right 18.49)
    (backward (* r 0.7619))
    (forward (* r 0.7619))
    (right 32.34)
    (backward (* r 0.7619))
    (forward (* r 0.7619))
    (left 16.17)
    (backward (* r 0.8196152423))
    (if (> r 8)
      ((forward (* r 3))
      (penup)
      (right 90)
      (forward (- r 8))
      (left 90)
      (pendown)
      (draw-death-star (- r 8)))
      ((forward 60)
      (penup)
      (right 90)
      (forward 20)
      (left 90)
      (pendown)
      (color "navy")
      (begin_fill)
      (circle 20)
      (end_fill))))
  (draw-death-star 130)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)