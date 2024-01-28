;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Starry 'nile>
;;;
;;; Description:
;;;   <you and i gazing
;;;    at stars beyond our windows
;;;    alone, together>

(define (move-color x y h c)
  (end_fill)
  (pu)
  (setposition x y)
  (setheading h)
  (pd)
  (color c)
  (begin_fill))

(define (center-circle x y r c)
  (move-color (+ x r) y 0 c)
  (circle r))

(define (star x y r1 r2 r3)
  (center-circle x y r1 "#70b8ec")
  (center-circle x y r2 "#b3d6ef")
  (center-circle x y r3 "#f5e987"))

(define (draw)
  (bgcolor "#062065")

  ; swopshies
  (move-color -40 196 255 "#70b8ec")
  (circle 155 220) (circle -55 240)
  (left 170)
  (circle 100 240) (circle -65 240)


  (move-color -40 196 250 "#b3d6ef")
  (circle 150 210) (circle -50 210) (circle -25 160)
  (left 140)
  (circle 35 160) (circle 100 250) (circle -65 240)

  (move-color -500 400 160 "#70b8ec")
  (circle 240 110) (circle -175 160) (circle -70 140) (circle 90 130) (circle -250 92)

  (move-color -500 400 90 "#b3d6ef")
  (circle -40 80) (circle 180 125) (circle -180 160) (circle -60 170)
  (right 180)
  (circle 20 180) (circle 100 155) (circle -300 40) (circle -250 52)

  ; stars
  (star -350 420 70 50 20)
  (star -420 -20 45 35 10)
  (star -80 -160 80 65 15)
  (star 120 400 60 40 25)
  (star 380 320 160 130 110)

  (move-color 380 400 -90 "#ffc725")
  (circle 80 260)
  (left 150)
  (circle -60 210)

  ; campanile + bg
  (move-color 500 -120 270 "#f5e987")
  (circle 700 35) (circle -650 90)
  (setposition -500 -500)
  (setposition 500 -500)

  (move-color -260 380 0 "#555555")
  (setposition -330 150)
  (setposition -240 150)

  (move-color -260 380 0 "#888888")
  (setposition -240 150)
  (setposition -200 150)

  (move-color -335 150 0 "#444444")
  (setposition -355 230)
  (setposition -355 -500)
  (setposition -240 -500)
  (setposition -240 150)
  (setposition -240 230)
  (setposition -255 150)

  (move-color -240 230 0 "#777777")
  (setposition -240 -500)
  (setposition -180 -500)
  (setposition -180 230)
  (setposition -195 150)
  (setposition -230 150)

  (move-color 500 -220 290 "#061734")
  (circle 450 65) (circle -400 90)
  (setposition -500 -500)
  (setposition 500 -500)

  (end_fill)

  (hideturtle)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)