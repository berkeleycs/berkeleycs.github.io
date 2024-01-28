;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title:
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>

(speed 10)
(define (draw)
	(penup)
	(left 90)
	(fd 250)
	(right 90)
	(pendown)
	(draw8)
	(exitonclick))

(define (draw8)
	(draw7)
	(fd 150)
	(left 90)
	(pendown)
	(draw1)
	(draw2)
	(draw3)
	(draw4)
	(draw5)
	)

(define (draw7)
	(draw6)
	(draw1)
	(draw2)
	(draw3)
	(draw4)
	(draw5)
	(penup)
	(right 30)
	(fd (/ 350 (sqrt 3)))
	(left 90)
	)

(define (draw6)
	(draw1)
	(draw2)
	(draw3)
	(draw4)
	(draw5)
	(penup)
	(left 60)
	(fd 150)
	(left 90)
	(fd (/ 550 (sqrt 3)))
	)

(define (draw1)
	(right 90)
	(color_hexagon 100 "#afafff" )
	(penup)
	(left 60)
	(fd 100)
	(pendown)
	)

(define (draw2)
	(color_hexagon 100 "#8f8fff")
	(penup)
	(left 60)
	(right 90)
	(fd (/ 200 (sqrt 3)))
	(left 90)
	(fd 100)
	(pendown)
	)

(define (draw3)
	(color_hexagon 100 "#6f6fff")
	(penup)
	(left 60)
	(right 90)
	(fd (/ 300 (sqrt 3)))
	(left 90)
	(pendown))

(define (draw4)
	(color_hexagon 100 "#4f4fff")
	(penup)
	(left 60)
	(right 90)
	(fd (/ 200 (sqrt 3)))
	(right 90)
	(fd 100)
	(right 180)
	(pendown))

(define (draw5)
	(color_hexagon 100 "#2f2fff")
	(penup)
	(right 120)
	(fd 100)
	(right 180)
	(pendown)
	(color_hexagon 100 "#0f0fff"))


(define (large_color_hexagon x y )
	(color_hexagon x y)
	(penup)
	(left 60)
	(fd x)
	(pendown)
	)



(define (color_hexagon x y)
	(color y)
	(begin_fill)
	(hexagon x)
	(end_fill)
	)


(define (hexagon x)
  (triangle x)
  (lt 90)
  (penup)
  (fd (* (/ x 3)(sqrt 3)))
  (pendown)
  (right 150)
  (triangle x)
  )

(define (repeat k fn)
	(fn)
	(if (> k 1) (repeat (- k 1) fn))
	)

(define (triangle x)
	(repeat 3 (lambda () (fd x) (lt 120))
		)

	)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
