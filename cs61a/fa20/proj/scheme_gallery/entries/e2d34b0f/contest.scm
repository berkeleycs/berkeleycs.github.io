;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: You're Welcome :)
;;;
;;; Description:
;;;    The Konami Code
;;;    Try pressing the keys right now
;;;    Darkness awaits ye ...

(define (draw)
  (hideturtle)
  (bgcolor "black")
  (speed 10)


(define (arrow)
  (color "red")
  (begin_fill)
  (pendown)
  (forward 10)
  (left 90)
  (forward 10)
  (right 135)
  (forward 28.28427)
  (right 90)
  (forward 28.28427)
  (right 135)
  (forward 10)
  (left 90)
  (forward 10)
  (right 90)
  (forward 20)
  (end_fill)
  (color "black")
)

(define (b)
  (color "red")
  (pendown)
  (forward 30)
  (penup)
  (backward 30)
  (pendown)
  (right 90)
  (forward 10)
  (circle 8 180)
  (forward 10)
  (backward 10)
  (right 180)
  (circle 8 180)
  (forward 10)
  (color "black")
)

(define (a)
  (color "red")
  (pendown)
  (right 20)
  (forward 34.46279835)
  (right 140)
  (forward 34.46279835)
  (penup)
  (backward 15.23184917)
  (pendown)
  (right 110)
  (forward 10)
  (color "black")
)

(penup)
(setposition (- 250) 0)

(arrow)

(penup)
(right 180)
(forward 60)
(left 90)
(pendown)

(arrow)

(penup)
(right 180)
(forward 80)
(left 90)
(forward 30)
(right 180)
(pendown)

(arrow)

(penup)
(forward 60)
(right 90)

(arrow)

(penup)
(forward 60)
(right 90)
(forward 25)
(right 90)

(arrow)

(penup)
(right 180)
(forward 20)
(right 90)
(forward 20)

(arrow)

(penup)
(right 90)
(forward 80)
(right 90)
(forward 20)
(right 90)

(arrow)

(penup)
(right 180)
(forward 20)
(right 90)
(forward 20)

(arrow)

(penup)
(right 90)
(forward 50)
(right 90)
(forward 25)
(right 180)

(b)

(penup)
(right 180)
(forward 40)
(right 90)
(forward 32)
(right 180)

(a)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
