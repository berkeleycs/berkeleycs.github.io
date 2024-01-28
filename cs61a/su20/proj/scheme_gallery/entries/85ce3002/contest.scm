;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Even Sasuke Has Everyday Problems>
;;;
;;; Description:
;;;   <Enduring eyelashes in my eye was my greatest Pain,
;;;    until CS61A distressed my brain.
;;;    ( ͡°( ͡° ͜ʖ( ͡ʘʖ̯ ͡ʘ)ʖ ͡°) ͡°)>

(define (draw)
  ; YOUR CODE HERE
  (speed 0)
  (out_eye)
  (inner_eye)
  (middle_ring 112)
  (testline 90)
  (exitonclick))
(define (inner_eye)
  (color "#ff0000")
  (goto 190 0)
  (begin_fill)
  (circle 190)
  (end_fill)
  )
(define (out_eye)
  (color "#000000")
  (goto 200 0)
  (penup)
  (begin_fill)
  (circle 200)
  (end_fill)
)
(define (middle_ring num)
  (color "#000000")
  (penup)
  (goto num 0)
  (pendown)
  (circle num)
  (if (> num 30)
    (middle_ring (- num .25))
    (penup))
)
(define (testline x)
  (color "#000000")
  (goto (* 110 (cos (angle_rad x))) (* (- 110) (sin (angle_rad x))))
  (rt x)
  (pendown)
  (circle 170 100)
  (penup)
  (if (< x 451)(testline (+ x 1))(penup))
  )
(define (angle_rad x)
  (* (/ 3.14159265358979 180) x)
)
; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
