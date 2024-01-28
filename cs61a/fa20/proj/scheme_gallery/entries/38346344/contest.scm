;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Buttabrot Probability Distribution
;;;
;;; Description:
;;;    The points that escape
;;;    From the Mandelbrot fractal
;;;    give us Buddabrot

;; State of each block is stored as a psudoarray in continuous memory to allow for constant access.
;; A psudoarray is one large interger where each $(bits) bits represents an element of the psudoarray.
;; Because python allows for arbitrarily large number this technique allows for an constant time random access of memory of any size.

;; This program takes a long time to run (many hours for small resolutions and large iterations)
;; I did a few other caluclations:

;; res=2 iterations=20: a couple minutes
;; https://ibb.co/XSC3H6k

;; res=2 iterations=100: 30 minutes
;; https://ibb.co/bdjVVBf

;; res=2 iterations=1000: 8 hours
;; https://ibb.co/hLrzbtK

;; res=2 iterations=2000: 21 hours
;; {Submited for contest}

;; res=1 iterations=1000: 24 hours
;; https://ibb.co/3hzvG18

;; res=2 iterations=1000 anti: 12 hours
;; https://ibb.co/6BpCpRT

;; NOTE: Online images were made in old verisions so they are flipped horizontally.

; Define constants
(define res 2) ; Chnage this to change the how wide(pixels) each square is. This will change the runtime superquadratically.
(define iterations 2000) ; Change this to change the number of iterations. This will change the runtime subliniarly.
(define bits 16) ; How many bits each pixel is stored in. 16 should be good, unless res is very low and iterations is very high.

(define block (expt 2 bits))
(define size (ceil (/ 1000 res)))
(define area (* size size))
(define rad  (/ size 2))

; Translates index n to y location
; n: Index of block on screen
; return: x location of block relative to center of screen
(define (index-to-x n)
	(-
		(modulo n size)
	rad)
)

; Translates index n to x location
; n: Index of block on screen
; return: y location of block relative to center of screen
(define (index-to-y n)
	(-
		(floor (/ n size))
	rad)
)

; Caluclates the affect of one point on the distribution
; r1: real component of previous iteration
; i1: imaginary component of previous iteration
; r2: real component of previous intial input
; i2: imaginary component of previous intial input
; r3(let): Real component of current mandelbrot iteration
; i3(let): Imaginary component of current mandelbrot iteration
; r: psudoarray to be built (0 by default)
; n: remaining size of array (size of array for first call)
; return: psudoarray of affect of distribution as psudoarray
(define (mandel r1 i1 r2 i2 r n)
	(if (zero? n)
		0 ; Change to r to generate anti-buddabrot
		(let
			(
				(r3
					(+ r2
						(-
							(* r1 r1)
							(* i1 i1)
						)
					)
				)
				(i3
					(+ i2
						(* r1 i1 2)
					)
				)
			)
			(if
				(> (+ (* r3 r3) (* i3 i3)) 2)
				r ; Change to 0 to generate anti-buddabrot
				(mandel
					r3
					i3
					r2
					i2
					(+ r
						(expt
							block
							(floor
								(+
									(* (/ rad 2)
										(+
											r3
											2
										)
									)
									(* size
										(floor
											(* (/ rad 2)
												(+
													i3
													2
												)
											)
										)
									)
								)
							)
						)
					)
					(- n 1)
				)
			)
		)
	)
)

; Sums the affect of all points on the distribution
; r: psudoarray to be built (0 by default)
; n: remaining size of array (size of array for first call)
; return: complete distrobution of points of buddabrot set
(define (mandel-all r n)
	(display n) (newline)
 	(if (zero? n)
 		r
 		(mandel-all
 			(+
				(mandel 0 0
					(/ (index-to-x n) (/ rad 4))
					(/ (index-to-y n) (/ rad 4))
					0
					iterations
				)
				r
			)
			(- n 1)
 		)
 	)
)

; Finds the largest number in psudoarray
; r: psudoarray to be searched
; l: current largest value in psudoarray (zero by default)
; n: remaining size of array (size of array for first call)
; return: largest value in an psudoarray
(define (get-largest r l n)
	(if (zero? n)
		l
		(if (> (modulo r block) l)
			(get-largest
				(quotient r block)
				(modulo r block)
				(- n 1)
			)
			(get-largest
				(quotient r block)
				l
				(- n 1)
			)
		)
	)
)

; Draws every point from psudoarray onto screen
; r: psudoarray to be draw
; l: largest value in psudoarray
; n: index on screen (0 for first call)
; return none
(define (draw-budda r l n)
 	(pixel
 		(index-to-y n)
 		(- -1 (index-to-x n))
 		(rgb (/ (modulo r block) l) (/ (modulo r block) l) (/ (modulo r block) l))
 	)
 	(if (= n area)
 		nil
 		(draw-budda (quotient r block) l (+ n 1))
 	)
)

; Entry point
(define (draw)
	(hideturtle)
	(pixelsize res)
	(let ((arr (mandel-all 0 area)))
		(draw-budda arr (get-largest arr 0 area) 0)
	)
	(exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
