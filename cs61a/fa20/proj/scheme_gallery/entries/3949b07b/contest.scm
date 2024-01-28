;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Blank Minded Stare>
;;;
;;; Description:
;;;   <I don't know
;;;    I don't know
;;;    I don't know>

(define (draw)
  (hideturtle)
  (bgcolor "black")
  (color "#ffffff")
  (penup)
  (right 90)
  (forward 180)

  (pendown)    ; draw right eye
  (circle 70)

  (penup)
  (right 90)
  (left 180)
  (forward 50)
  (left 90)
  (forward 300)
  (right 90)
  (forward 10)
  (pendown)   ; draw left eye
  (circle 70)

  (penup)
  (right 90)
  (forward 120)
  (right 90)
  (forward 130)
  (right 90)

  (pendown)  ; draw line
  (forward 100)
  (right 180)
  (forward 200)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
