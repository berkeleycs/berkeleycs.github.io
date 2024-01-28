;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>
(define pie 3.141592653589793238462643383279502884197169)
(define tangent (tan (* 30 (/ pi 180))))
(define (radius size) (* (/ size 2) (tan (* 30 (/ pie 180)))))
(define (semi_circle size) (circle (radius size) -180))
(define (top_heart size) (semi_circle size) (left 120) (semi_circle size))
(define (heart size)
	(begin (pendown)  (begin_fill) (left 30) (forward size) (right 180) (top_heart size)
		(backward size) (end_fill) (left 30) (penup)
 	)
)
(bgcolor "black")
(define modul (- (expt 2 31) 1))
(define multi 19998)
(define incre 1)
(define random (lambda (seed) (modulo (+ (* multi seed) incre) modul)))
(define X0 (random 123567589))

(define (random_drawing start counter)
	(define seed_red (random start))
	(define red (+ (* (/ seed_red modul) .6) .4))
	(define seed_blue (random seed_red))
	(define blue (+ (* (/ seed_blue modul) 1)  0))
	;(define seed_green (random seed_blue))
	;(define green (+ (* (/ seed_green modul) .0) .0))
	(define seed_degrees (random seed_blue))
	(define degrees (* (/ seed_degrees modul) 360))
	(define seed_distance (random seed_degrees))
	(define distance (* (/ seed_distance modul) 450))
	(define seed_radius (random seed_distance))
	(define radius (+ (* (/ seed_radius modul) 175) 75))
	()
	(begin (color (rgb red 0 blue)) (right degrees) (penup) (forward distance)
						 (pendown) (heart radius) (penup) (backward distance)
	)

	(if (= counter 0)
			nil
			(random_drawing seed_radius (- counter 1))
	)
)
; 	(cond ((> y (- (/ screen_height 2) 1)) ())
; 				((>= x (- (/ screen_width 2) 1)) (begin (pixel x y (red green blue))
; 																			(radcolor -500 (+ y 1) green)))
; 				(else	 (begin (pixel x y (red green blue))
; 							 (radcolor (+ x 1) y green))
; 				)
; 	)
; )"""

(define (draw)
  ; YOUR CODE HERE
  ; (bgcolor "black")
  ; (hideturtle)
  ; (random_drawing X0 20)
  (random_drawing X0 45)

)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
