;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;    Stuck at home this fall;
;;;    I'm 8000 miles from Cal.
;;;    Sunset's quite nice though.

(define (draw)
  (begin (rect -380 120 "#4ca6a6") (rect -380 20 "#818181")(sunset -316 '("#e75805" "#e7580d" "#e75815" "#e7581d" "#e75825" "#e7582d" "#e75835" "#e7583d" "#e75845" "#e7584d" "#e75855" "#e7585d" "#e75865" "#e7586d"))
  (penup) (goto 100 -380) (setheading 0) (pendown) (color "goldenrod") (begin_fill) (circle 100 181) (end_fill)
  (penup) (goto 170 -380) (setheading 0) (pendown) (color "#444444") (begin_fill) (khalifa 300 1) (khalifa 150 1) (khalifa 75 1) (forward 120) (circle 20 180) (forward 120) (setheading 180) (khalifa 95 0) (khalifa 150 0) (khalifa 280 0) (goto 170 -380) (end_fill)
  (tower 300 500 "#e6b9ad" 70)
  (tower -300 400 "#8d939e" 50)
  (tower 225 550 "#a4a7a5" 30)
  (tower -200 480 "#193a50" 80)
  (tower -380 420 "#493731" 40)
  (tower 400 530 "#ba7a5a" 60)
  (penup) (goto -350 400) (pendown) (color "white") (begin_fill) (setheading -80) (circle 10 180) (forward 150) (left 60) (forward 40) (left 120) (forward 20) (left 60) (forward 15) (right 60) (forward 140) (end_fill)
  (hideturtle)
  (exitonclick))
)

(define (sunset y lst)
(if (null? lst) nil (begin (rect y 64 (car lst)) (sunset (+ y 64) (cdr lst)))
)
)

(define (khalifa h up)
(if (= up 1)
(begin (forward h) (left 30) (forward 20) (right 30))
(begin (right 30) (forward 20) (left 30) (forward h))
)
)

(define (tower x h c roof)
(begin
(penup) (goto x -380) (setheading 0) (pendown) (color c) (begin_fill) (forward h) (right roof) (forward 30) (right (- 180 (* roof 2))) (forward 30) (right roof) (forward h) (goto x -380) (end_fill)
)
)

(define (rect y h c)
(begin
(penup) (goto -500 y) (pendown) (color c) (begin_fill) (setheading 90) (forward 1000) (right 90) (forward h) (right 90) (forward 1000) (right 90) (forward h) (right 90) (end_fill)
)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)