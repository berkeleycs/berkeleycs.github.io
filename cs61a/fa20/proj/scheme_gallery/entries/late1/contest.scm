;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <self-portrait>
;;;
;;; Description:
;;;   <Finals await us
;;;   Yet I make this sub-par clown
;;;   Like the clown I am>

;;; python3 scheme.py contest.scm --pillow-turtle --turtle-save-path output

(define centre_x (/ 2 (screen_width)))
(define centre_y (- (/ 2 (screen_height)) 50))

(define (circ_fill x y size c ex)
(seth 0)
(color c)
(goto x y)
(pd)
(begin_fill)
(circle size ex)
(end_fill)
(pu)
)

(define (eye x)
(circ_fill x (+ centre_y 140) 60 "black" 360)
(circ_fill (- x 10) (+ centre_y 138) 50 "white" 360)
(circ_fill (- x 20) (+ centre_y 135) 40 "brown" 360)
(circ_fill (- x 42) (+ centre_y 133) 17 "black" 360)
(circ_fill (- x 15) (+ centre_y 155) 15 "white" 360)
)

(define (draw)
; YOUR CODE HERE
(pu)
; nose
(circ_fill (+ centre_x 90) centre_y 90 "red" 360)
(circ_fill (+ centre_x 70) (+ centre_y 20) 30 "white" 360)

; cheeks
(circ_fill (+ centre_x 280) centre_y 40 "#FFC0CB" 360)
(circ_fill (- centre_x 200) centre_y 40 "#FFC0CB" 360)

; mouth
(circ_fill (+ centre_x 260) (- centre_y 150) 40 "black" 360)
(circ_fill (- centre_x 180) (- centre_y 150) 40 "black" 360)
(circ_fill (+ centre_x 220) (- centre_y 150) 220 "black" -180)
(circ_fill (+ centre_x (- 260 10)) (- centre_y 150) 30 "red" 360)
(circ_fill (- centre_x (+ 180 10)) (- centre_y 150) 30 "red" 360)
(circ_fill (+ centre_x 200) (- centre_y 160) 200 "red" -180)
(circ_fill (+ centre_x 100) (- centre_y 180) 100 "white" -180)

; eyes
(circ_fill (+ centre_x 220) (+ centre_y 150) 80 "blue" 180)
(eye (+ centre_x 200))
(circ_fill (- centre_x 80) (+ centre_y 150) 80 "#FFE338" 180)
(eye (+ centre_x -100))

; head
(goto (+ centre_x 400) centre_y)
(pd)
(color "black")
(circle 400)
(pu)

; hair
(circ_fill (- centre_x 250) (+ centre_y 270) 105 "#FFEE00" 360)
(circ_fill (- centre_x 110) (+ centre_y 370) 105 "#FF7F00" 360)
(circ_fill (+ centre_x 440) (+ centre_y 230) 95 "#4815AA" 360)
(circ_fill (+ centre_x 340) (+ centre_y 340) 100 "#00FF00" 360)
(circ_fill (+ centre_x 190) (+ centre_y 390) 100 "#FFEE00" 360)
(circ_fill (+ centre_x 50) (+ centre_y 400) 110 "red" 360)
(ht)
(exitonclick))
; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)