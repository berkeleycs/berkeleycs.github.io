;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: pastel dreams and summer memories
;;;
;;; Description:
;;;   lillypad on lotus
;;;    in a pastel sea
;;;     the feeling of summer

(define txtblu "#94D4FF")
(define orchid "#FFACE4")
(define blue "#B4E1FF")
(define mint "#C1FF9B")
(define cream "#F5FFC6")

(define (repeat func n) (if (= n 1) (func) (begin (func) (repeat func (- n 1)))))

(define (draw-petal)
  (circle 400 45)
  (left 135)
  (circle 400 45))

(define (small-petal)
  (circle 380 45)
  (left 135)
  (circle 380 45))

(define (filled-circle x)
  (begin_fill)
  (circle x)
  (end_fill))

(define (draw-ring start end)
  (begin_fill)
  (draw-circle start circle)
  (draw-circle end circle)
  (end_fill))

(define (draw-circle x type)
  (right 90)
  (forward x)
  (left 90)
  (type x)
  (left 90)
  (forward x)
  (right 90))

(define (squig)
  (pendown)
  (circle 50 30)
  (right 180)
  (circle 50 -60)
  (right 180)
  (circle 50 30)
  (penup))

(define (squiggle)
  (right 90)
  (begin_fill)
  (repeat squig 20)
  (right 90)
  (forward 10)
  (right 90)
  (backward 50)
  (repeat squig 20)
  (left 90)
  (forward 80)
  (end_fill)
  (left 180))

(define (draw)
  (bgcolor blue)
  (penup)

  ; Kinda convoluted but this is all positioning.
  ; Can be compressed to save scheme tokens, but eh.
  (color txtblu)
  (left 45)
  (forward 714)
  (left 45)
  (forward 600)
  (right 45)
  (right 45)
  (repeat squiggle 12)
  (forward 560)
  (right 90)
  (forward 500)
  (left 90)

  (color mint)
  (draw-circle 320 filled-circle)

  (color "#FF99C8")
  (begin_fill)
  (repeat draw-petal 8)
  (end_fill)

  (color orchid)
  (begin_fill)
  (repeat small-petal 8)
  (end_fill)

  (color "#DBFFB1")
  (draw-ring 320 330)

  (color cream)
  (draw-circle 18 filled-circle)
  (draw-ring 330 340)

  (penup)
  (forward 1000)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)