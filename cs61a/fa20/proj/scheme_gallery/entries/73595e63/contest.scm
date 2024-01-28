;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: this is the only time I want to be voted
;;;
;;; Description:
;;;    Why are we in space?
;;;    I want to be at the ship!
;;;    I miss my mommy 🥺

;;============DRAWING CREWMATE PARTS============
;;------------colored body------------
(define (crew dark light)
  (color dark)
  (begin_fill)
  (circle 50)
  (end_fill)
  (body)
  (color light)
  (lightbody)
  (back 20)
  (right 50)
  (helmet)
  )
(define (body)
  (begin_fill)
  (right 110)
  (draw-curve 3 25 10)
  (forward 50)
  (draw-curve 3 25 10)
  (left 80)
  (draw-curve 2 7 10)
  (leg)
  (left 80)
  (forward 20)
  (left 80)
  (forward 10)
  (leg)
  (draw-curve 3 6 33)
  (end_fill))

(define (leg)
  (draw-curve 7 20 7)
  (right 20)
  (forward 20))

(define (lightbody)
  (right 170)
  (begin_fill)
  (forward 80)
  (left 70)
  (draw-curve 5 -13 16)
  (left 10)
  (draw-curve 4 -19 28)
  (draw-curve 11 -15 12.5)
  (end_fill))

;;------------blue helmet------------
(define (helmet)
  (color "#73989e")
  (darkhelmet)
  (color "#CAE8ED")
  (lighthelmet)
  (color "#FFFFFF")
  (highlight)
  )

(define (darkhelmet)
  (begin_fill)
  (circle 43)
  (end_fill))

(define (lighthelmet)
  (begin_fill)
  (circle 30)
  (end_fill))

(define (highlight)
  (begin_fill)
  (circle 10)
  (end_fill))

;;============DRAWING FUNCTIONS============

(define (draw-curve num angle len) ;Draws a curve
  (if (<= num 0)
    nil
    (begin
      (forward len)
      (right angle)
      (draw-curve (- num 1) angle len))))

(define (lh x y) ;Location Helper
  (penup) (setposition x y) (pendown))

(define (draw-crew cdark clight x y)
  (lh x y)
  (crew cdark clight)
  )

(define (draw)
  ; YOUR CODE HERE
  (bgcolor "#142732")
  (color "#243742")
  (begin_fill)
  (lh 400 0)
  (circle 400)
  (end_fill)
  (draw-crew "#28a5bc" "#2effda" -350 -200) ;cyan
  (draw-crew "#8294bc" "#d6ddef" 200 300) ;white
  (draw-crew "#0fa641" "#54ec39" 0 200) ;lime
  (draw-crew "#b23b12" "#f07c0a" 300 -300) ;orange
  (draw-crew "#3a177b" "#6c2fb9" -300 300) ;purple
  (draw-crew "#07158f" "#142dcf" 30 -100) ;dark blue
  (draw-crew "#aa2cac" "#ed52ba" -320 0) ;pink
  (draw-crew "#8a071d" "#d9041a" 300 0) ;red
  (draw-crew "#1e1e26" "#3e4651" -200 -350) ;black
  (hideturtle)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
