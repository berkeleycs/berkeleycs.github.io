; Scheme Recursive Art Contest Entry
;
; Please do not include your name or personal info in this file.
;
; Title: DeNero's Devilish Scheme
;
; Description:
;   `(The Scheme is unveiled)
;   `(it's all linked, like a Linked List)
;   (+ grade_bins 20)

(define (draw)

  ; Helper
  (define sqrt3 1.732050)
  (define sqrt2 1.414213)
  (define 2sqrt2 2.8284271)

  ; So that we hae 69 in our token count lol
  (define x '(1 2 3 4 5 6 7 8 9 10 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19))


  ; Config
  (bgcolor "#030306")
  (define scheme-red "#ED3833")

  ; Location Helper
  (define (lh x y)
    (seth 0) (penup) (setposition x y) (pendown))

  ; Stars
  (lh 0 0) (color "#ffffff")
  (define (stars-h n x y)
    (lh (- x 500) (- y 500))
    (circle 2 360)
    (if (equal? n 0) nil
      (stars-h (- n 1) (modulo (+ x 420) 1000) (modulo (+ 177 y) 1000))))

  (stars-h 100 400 -200)

  ; Letters
  (define (let-a x y s) (lh x y) (lt 150) (fd (/ s (/ sqrt3 2))) (lt 180) (fd (/ s sqrt3)) (rt 60) (fd (* s 0.5)) (rt 60) (fd (/ s sqrt3)) (bk (/ s (/ sqrt3 2))))
  (define (let-l x y s) (lh x y) (bk s) (rt 90) (fd (/ s 2)))
  (define (let-w x y s) (lh x y) (rt 165) (fd (/ s (/ sqrt3 2))) (lt 150) (fd (/ s (/ sqrt3 2))) (rt 150) (fd (/ s (/ sqrt3 2))) (lt 150) (fd (/ s (/ sqrt3 2))))
  (define (let-y x y s) (lh x y) (rt 150) (fd (/ s sqrt3)) (rt 30) (fd (/ s 2)) (bk (/ s 2)) (lt 150) (fd (/ s sqrt3)))
  (define (let-s x y s) (let-c x y (/ s 2)) (lh x (- y s)) (seth 90) (circle (/ s 4) 180)) ; do later maybe
  (define (let-h x y s) (lh x y) (bk s) (fd (/ s 2)) (rt 90) (fd (/ s 2)) (lt 90) (fd (/ s 2)) (bk s))
  (define (let-b x y s) (lh x y) (bk s) (rt 45) (fd (/ s 2sqrt2)) (lt 90) (fd (/ s 2sqrt2)) (rt 90) (fd (/ s 2sqrt2)) (lt 90) (fd (/ s 2sqrt2)))
  (define (let-e x y s) (lh x y) (rt 90) (fd s) (lh x y) (bk s) (rt 90) (fd s) (lh x y) (bk (* s 2)) (rt 90) (fd s) )
  (define (let-n x y s) (lh x y) (fd s) (rt 135) (fd (* s 1.5)) (lt 135) (fd s))
  (define (let-i x y s) (lh x y) (rt 90) (fd (/ s 2)) (bk (/ s 4)) (lt 90) (bk s) (rt 90) (fd (/ s 4)) (bk (/ s 2)))
  (define (let-t x y s) (lh x y) (rt 90) (fd s) (bk (/ s 2)) (rt 90) (fd s))
  (define (let-c x y s) (lh x y) (seth -90) (circle (/ s 2) 180))
  (define (let-m x y s) (lh x y) (rt 15) (fd (/ s (/ sqrt3 2))) (rt 150) (fd (/ s (/ sqrt3 2))) (lt 150) (fd (/ s (/ sqrt3 2))) (rt 150) (fd (/ s (/ sqrt3 2))))
  (define (let-6 x y s) (lh x y) (bk s) (rt 90) (fd (/ s 2)) (lt 90) (fd (/ s 2)) (lt 90) (fd (/ s 2)))
  (define (let-1 x y s) (lh x y) (rt 45) (bk (/ s 6)) (lh x y) (bk s))
  (define (let-k x y s) (lh x y) (bk s) (fd (/ s 2)) (rt 45) (fd (/ s sqrt2)) (lh x y) (bk (/ s 2)) (lt 45) (bk (/ s sqrt2)))
  (define (let-? x y s) (lh x y) (lh x (- y (/ s 2))) (seth 90) (circle (/ s 4) 180) (lh x y) (pu) (bk s) (pd) (fd (/ s 25)) (lh x y) (pu) (bk (/ s 1.2)) (pd) (fd (/ s 2.5)) (pu))
  (define (let-d x y s) (lh x y) (seth 90) (circle (/ s 2) 180) (lh x y) (fd s))

  ; Scheme Circle
  (lh -275 275)
  (color "#2F62F6")
  (seth -90)
  (define (circle-b n) (circle n 180) (if (equal? n 0) nil (circle-b (- n 1))))
  (circle-b 175)

  ; Scheme Logo
  (lh -275 175)
  (color scheme-red)
  (define percentlen .90)
  (define twistspd -10)

  (define (draw-curve len bearing velocity)
    (cond
      ((< len 10)
        (begin (fd len) (end_fill)))
        (else (begin (setheading bearing) (fd len) (end_fill) (begin_fill) (bk (* .8 len)))
          (draw-curve (* percentlen len) (+ bearing twistspd) velocity))))

	(define (draw-rect width len)
		(begin_fill) (bk width) (rt 90) (fd len) (lt 90) (fd width) (lt 90) (fd len) (rt 90) (end_fill))

	(define (draw-lambda x y scale c)
		(lh x y) (color c)
		(draw-curve (* 50 scale) 90 10)
		(lh x y) (color c)
		(pu)
		(fd (* 5 scale))
		(seth 90) (fd (* 75 scale))
		(seth 150)
		(pd)
		(draw-rect (* 40 scale) (* 10 scale))
		(seth 90)
		(draw-rect (* 12 scale) (* 5 scale)))

	(draw-lambda -400 20 3 "#4CA954")

  ; Astronaut Helmet
  (lh 75 -145) (color "#C7CAC7") (circle 60 360) (lh 65 -145) (begin_fill) (color "#A3F9F8") (circle 50 360) (end_fill)

  ; Astronaut Body
  (color "#C7CAC7") (begin_fill) (lh 90 -300) (circle 75 180) (lt 90) (fd 150) (end_fill) (lh -60 -300) (draw-rect 200 150)

  ; Astronaut Arm
  (color "#adb1ad") (lh 15 -320) (draw-rect 150 60)

  ; Astronaut 61a
  (color "#ED3833") (let-6 0 -140 20) (let-1 15 -140 20) (let-a 30 -140 20)

  ; Denero
  (define (righttriangle horizontal vertical) (begin_fill) (forward vertical) (right 90) (forward horizontal) (end_fill) (backward horizontal) (left 90) (backward vertical))

(define (deneros-face)
  (seth 0)

  ; Face Shape
  (color "#ffceb4") (begin_fill) (circle 100 180) (forward 80) (circle 100 180)  (forward 80)  (end_fill)
  (backward 32) (left 90) (forward 200)
  (glasses)
  (backward 24) (seth -90) (forward 40)

  ; Left Eye
  (color "#3D3331")
   (begin_fill)
  (circle 10)
  (end_fill)
  (lt 90)
  (forward 10)
  (color "#000000")
  (begin_fill)
  (circle 4)
  (end_fill)
  (backward 10)
  (rt 90)
  (forward 92)

  ; Right Eye
  (color "#3D3331")
  (begin_fill)
  (circle 10)
  (end_fill)
  (color "#000000")
  (lt 90)
  (forward 10)
  (begin_fill)
  (circle 4)
  (end_fill)

  (backward 10)
  (rt 90)
  (backward 46)
  (seth 180)
  (forward 40)
  (pendown)

  ; Nose
  (seth -90)	 (circle (* 5 sqrt3) 180)	  (seth 90)
  (penup) (right 90) (forward 30) (seth 90) (pendown)

  ; Mouth
  (circle 40 45) (right 180) (circle -40 90)
  (penup) (right 180) (circle -40 45) (seth 0) (forward 140) (seth -90)

  ; Left Brow
  (color "#3D3331")
  (begin_fill)
  (pendown) (forward 50) (left 45) (forward 20) (left 135) (forward 50) (left 45) (forward 20)
  (end_fill)
  (penup) (seth -90) (backward 30) (seth 90) (pendown)

  ; Right Brow
  (begin_fill)
  (forward 50) (right 45) (forward 20) (right 135) (forward 50) (right 45) (forward 20)
  (end_fill)
  (penup) (seth 90) (forward 50) (right 45) (forward 20) (seth 180) (forward 20) (right 90) (forward 184) (seth 0)

  ; Hair
    (righttriangle 50 100)  (forward 100)  (begin_fill)  (right 30)  (forward 70)  (seth 90)  (forward 140)
  (seth 180) (left 30)  (forward 70)  (end_fill)  (seth 180)  (forward 100)  (seth 0)  (righttriangle -50 100)
  (seth -90)  (forward 180)  (left 90)  (forward 170)
)

(define (glasses)
  (seth 180) (left 37) (pendown) (color "black") (forward 24) (define (frame) (seth 0) (backward 20) (rectangle 80 40) (penup) (forward 20) (right 90) (forward 80)) (frame) (pendown) (forward 12) (frame) (pendown) (seth 0) (right 37) (pendown) (forward 24) (penup))

(define (rectangle horizontal vertical)
  (seth 0) (pendown)
  (define (twosides)
    (forward vertical) (right 90) (forward horizontal) (right 90))
  (twosides) (twosides))

; DeNero's Body
; DeNero's Back Arm
(color "#adb1ad")
  (lh 200 -200) (seth -60) (draw-rect 200 60) (color "#C7CAC7") (begin_fill) (lh 500 -150) (circle 100 180) (lt 90) (fd 200) (end_fill) (lh 300 -150) (draw-rect 400 200) (color "#adb1ad") (lh 360 -120) (draw-rect 200 100) (lh 350 -460) (seth -150) (draw-rect 200 75)

  ; DeNero's Arm
  (color "#545954") (lh 220 -160) (draw-rect 60 20) (lh 200 -170) (draw-rect 20 5) (lh 200 -185) (draw-rect 5 20)

  (color "#C7CAC7") (lh 220 -160) (seth 90) (draw-rect 80 20)

  (color "#adb1ad")
  (rt 90)
  (fd 5)
  (lt 90)
  (draw-rect 80 5)

  ; DeNero's Face
  (lh 480 70)
  (deneros-face)

  ; DeNero's Helmet
  (lh 520 30)
  (color "#C7CAC7")
  (circle 150 360)

  ; "SCHEME"
  (color "#5beb34")
  (let-s -331 216 25)
  (let-c -311 216 25)
  (let-h -305 216 25)
  (let-e -285 216 12)
  (let-m -270 191 25)
  (let-e -235 216 12)

  ; "ALWAYS HAS BEEN"
  (color scheme-red)
  (let-a -120  350 60)
  (let-l -80   350 60)
  (let-w -55   353 60)
  (let-a  40   350 60)
  (let-y  65   350 60)
  (let-s  115  350 60)

  (let-h 155 350 60)
  (let-a 223 350 60)
  (let-s 259 350 60)

  (let-b 309 350 60)
  (let-e 329 350 30)
  (let-e 369 350 30)
  (let-n 420 290 55)


  ; "WAIT, IT'S ALL LINKED LISTS?""
  (let-w -260 -55 25)
  (let-a -217 -55 25)
  (let-i -200 -55 25)
  (let-t -185  -55 25)

  (let-i -135  -55 25)
  (let-t -120  -55 25)
  (let-s  -87  -55 25)

  (let-a  -50  -55 25)
  (let-l  -33  -55 25)
  (let-l  -16  -55 25)

  (let-l 15  -55 25)
  (let-i 30  -55 25)
  (let-n 45  -80 23)
  (let-k 75  -55 25)
  (let-e 95  -55 12)
  (let-d 110  -80 25)
  (let-l 135  -55 25)
  (let-i 150  -55 25)
  (let-s 174  -55 25)
  (let-t 178  -55 25)
  (let-s 208  -55 25)
  (let-? 218  -55 25)

  ; "EECS"
  (color "#083362")
  (lh 382 -170)
  (begin_fill)
  (rectangle 50 50)
  (end_fill)
  (color "#46B4E5")
  (let-e 395  -125 10)
  (let-e 410  -125 10)
  (color "#F6B142")
  (let-c 405  -155 15)
  (let-s 415  -155 15)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)

