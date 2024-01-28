;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Time Enough
;;;
;;; Description:
;;;    Dare I sigh relief?
;;;    How gentle the implosion
;;;    Till the bubble pops
(bgcolor "#1e1621")
(color "#c9d3d8")

(define (cup x y a)
  (pu)
  (setposition x y)
  (setheading a)
  (pd))

(define (hand x y angle dist)
  (cup x y (- angle 90))
  (forward (* dist .6))
  (setposition x y)
  (setheading (/ angle 12))
  (forward dist)
  )

(define (loop x y radius depth)
  (clock (+ (* .4 radius) x) y (* radius .25) (- depth 1))
  (clock (+ (* -.4 radius) x) y (* radius .25) (- depth 1))
  (clock x (- y (* .35 radius)) (* radius .25) (- depth 1)))

(define (clock x y radius depth)
  (cup x (+ y radius) -90)
  (circle radius)
  (setposition x (+ y (* radius .95)))
  (circle (* radius .95))
  (setposition x (+ y (* radius .7)))
  (circle (* radius .7))
  (hand x y (+ (* radius depth x) y) radius)
  (if (> depth 0)(loop x y radius depth))
  )

(define (termina x y size)
  (setposition (+ x size) (- y (* size 8)))
  (setposition (- x size) (- y (* size 8)))
  (setposition (- x size) (+ y size))
  (setposition (+ x size) (+ y size)))

(define (tower x y size depth)
  (cup (+ x size) (+ y size) 0)
  (color "#1e1621")
  (begin_fill)
  (termina x y size)
  (end_fill)
  (color "#c9d3d8")
  (termina x y size)
  (if depth (tower x y (* size .95) #f))
  )

(define (belfry x y size depth)
  (tower x y size depth)
  (clock x y (* size .7) depth)
  (loop x (+ y (* size 1.2)) (* size -.7) depth)
  (if (>= depth 0)(belfry x (- y (* size 6.4)) (* size -.69) (- depth 1)))
  )

(define (draw)
  ; YOUR CODE HERE
  (belfry 380 340 170 8)
  (belfry -380 340 170 8)
  (belfry 0 -608 -145 0)
  (clock 0 141 -630 3)
  (belfry 0 320 100 7))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
