;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: The Old King of Christmas
;;;
;;; Description:
;;;    We tell our kids about Santa
;;;    But forget it is The Messiah
;;;    The Lion roaring in Judah

(define (draw)
  ; YOUR CODE HERE

  (bgcolor "#321f28")

  (define (make_cross length)
   (begin
    (pendown)
    (color "#e79e4f")
    (forward (* 0.6 length))
     (left 90)
     (forward (* 0.3 length))
     (right 90)
     (forward (* 0.1 length))
     (right 90)
     (forward (* 0.3 length))
     (left 90)
     (forward (* 0.2 length))
     (right 90)
     (forward (* 0.1 length))
     (right 90)
     (forward (* 0.2 length))
     (left 90)
     (forward (* 0.3 length))
     (right 90)
     (forward (* 0.1 length))
     (right 90)
     (forward (* 0.3 length))
     (left 90)
     (forward (* 0.6 length))
     (right 90)
     (forward (* 0.1 length))
     (right 90)
     (penup)
   ))
 (define (trace_crosses n x_init y_init cross_length axis)
  (begin
  (setposition x_init y_init)
  (define (helper n x_init y_init cross_length axis)
   (if (> n 0)
    (begin
     (make_cross cross_length)
     (if (= axis 1)
     (begin
      (setposition (+ x_init (* 0.7 cross_length)) y_init)
      (helper (- n 1) (+ x_init (* 0.7 cross_length)) y_init cross_length axis)
     )
     (begin
      (setposition x_init (+ y_init cross_length))
      (helper (- n 1) x_init (+ y_init cross_length) cross_length axis)
     )))))
  (helper n x_init y_init cross_length axis)
  ))

  (trace_crosses 15 0 -300 40 0)
  (trace_crosses 15 28 -300 40 0)
  (trace_crosses 15 -28 -300 40 0)
  (trace_crosses 5 -168 100 40 1)
  (trace_crosses 5 -168 140 40 1)
  (trace_crosses 5 56 100 40 1)
  (trace_crosses 5 56 140 40 1)

  (hideturtle)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
