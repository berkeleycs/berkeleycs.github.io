;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: ~ An instructor has endorsed this entry ~
;;;
;;; Description:
;;;   sometimes we are slow
;;;   and epa does not go brrr
;;;   sometimes we are fast
;;;   and epa does go brrr

(define (draw)
  (bgcolor "#ebeae3") ;background color
  (color "#a49444") ;circle color
  (right 90)
  (penup)
  (forward 200)
  (pendown)
  (left 90)
  (begin_fill)
  (circle 200)
  (end_fill)
  (color "white")
  (define thickness 40)
  (left 90)
  (penup)
  (forward 320)
  (left 90)
  (forward 30)
  (pendown)
  (begin_fill)
  (left 45)
  (forward 135)
  (left 90)
  (forward 240)
  (left 90)
  (forward thickness)
  (left 90)
  (forward (- 240 thickness))
  (right 90)
  (forward (- 135 thickness))
  (left 90)
  (forward thickness)
  (end_fill)
  (hideturtle)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)