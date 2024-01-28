;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Breakout Rooms be like diSCusS
;;;
;;; Description:
;;;   Red: I saw Blue kill
;;;   Body in electrical
;;;   Everyone: red sus

; circle with radius r and line thickness t, centered at 0, 0
(define (circle-wt r t)
  (if (> t 0)
  (begin (move-color-line r 0 0 "#82ba4e")
  (circle r)
  (circle-wt (- r 1) (- t 1))))
)

(define (move-color x y h c)
  (end_fill)
  (penup)
  (setposition x y)
  (setheading h)
  (pendown)
  (color c)
  (begin_fill))

(define (move-color-line x y h c)
  (end_fill)
  (penup)
  (setposition x y)
  (setheading h)
  (pendown)
  (color c))

;
(define (character cw direction)
  (forward 300)
  (circle (* cw 150) 180)
  (direction -90)
  (circle (* cw 40) 90)
  (forward 70)
  (circle (* cw 40) 90)
  (direction -90)
  (forward 30)
  (direction 48)
  (forward 160)
)

(define (eyes n)
  (if (> n 0)
    (begin (forward 50)
    (circle 30 90)
    (eyes (- n 1))))
)

(define (repeat-letter letter n x h)
  (if (> n 0)
    (begin (move-color-line x 300 h "#fff") (letter) (repeat-letter letter (- n 1) (- x 1) h))
  )
)

(define (D)
  (I)
  (right 90)
  (circle 80 180))
(define (I)
  (backward 160))
(define (S)
  (circle 40 180)
  (circle -40 180))
(define (C)
  (circle 80 180))
(define (U)
  (forward 130)
  (circle 30 180)
  (forward 130))
(define (!)
  (backward 110)
  (penup)
  (backward 20)
  (pendown)
  (backward 20))

(define (draw)
  ; draw the backdrop
  (bgcolor "#b9d1e9")
  (move-color 440 0 0 "#aaed52")
  (circle 440)

  ; draw the 2 characters
  (move-color -50 -400 0 "#d96c00")
  (character 1 left)
  (move-color 50 -400 0 "#126301")
  (character -1 right)
  ; shading
  (move-color -50 -80 0 "#f77900")
  (circle 130)
  (move-color 310 -80 0 "#167801")
  (circle 130)
  (move-color -40 -115 0 "#8ec2cf")
  (eyes 4)
  (move-color 145 -115 0 "#8ec2cf")
  (eyes 4)

  ;draw the outline of the circle
  (circle-wt 450 10)

  ; draw the letters
  (repeat-letter D 20 -350 0)
  (repeat-letter I 20 -230 0)
  (repeat-letter S 20 -150 -90)
  (repeat-letter C 20 0    -90)
  (repeat-letter U 20 40  180)
  (repeat-letter S 20 200  -90)
  (repeat-letter S 20 300  -90)
  (repeat-letter ! 20 370 0)
  (hideturtle)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
