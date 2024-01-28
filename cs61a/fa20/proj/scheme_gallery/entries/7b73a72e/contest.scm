;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Hailstone Flower of 27 (Up to 80)>
;;;
;;; Description:
;;;   <Up and down it goes
;;;    Each peta the magnitude
;;;    How high will it go? (FYI 9232)>


(define (hailstone_at value n)
	(cond
		((= value 1) 1)
		((= n 0) value)
		((odd? value) (hailstone_at (+ (* value 3) 1) (- n 1)))
		((even? value) (hailstone_at (quotient value 2) (- n 1)))
	)
)


(define (draw_triangle len)
	(penup)
	(right 120)
	(forward len)
	(right 120)
	(pendown)
	(forward len)
	(right 120)
	(penup)
	(forward len)
	(right 120))

(define (draw_hailstone h_num times scale switch)
	(if (eq? switch #t) (color "blue") (color "yellow"))

	(let ((h_value (* scale (hailstone_at h_num times))))
		(if (= times 0)
		(draw_triangle h_value)
		(begin
			(draw_triangle h_value)
			(right 120)
			(draw_triangle h_value)
			(right 120)
			(draw_triangle h_value)
			(right 120)
			(draw_hailstone h_num (- times 1) scale (not switch))))))

(define (test hailstone n thickness scale)
	(if (= n 0)
		0
		(begin
			(draw_flower hailstone scale)
			(right (/ 360 thickness))
			(displayln (/ 360 thickness) n)
			(test hailstone (- n 1) thickness scale)
			)))

(define (draw_flower hailstone scale)
	(draw_hailstone hailstone 80 scale #f)
	(right 60)
	(draw_hailstone hailstone 80 scale #f)
	(right 60))


(define (draw)
  ; YOUR CODE HERE
  (speed 10)
  (bgcolor "black")
  (test 27 5 5 0.0525)




  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
