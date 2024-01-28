;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: The Fractal Tree
;;;
;;; Description:
;;;   <A fractal's answer
;;;    is between the finite's lie
;;;    and infinite truth>

(define (listrgb list) (rgb (car list) (car (cdr list)) (car (cdr (cdr list)))))
(define blue '(0.2 0.8 0.7))
(define angleone (degrees (acos (/ 4 5))))
(define angletwo (degrees (asin (/ 3 5))))
(define (change-color color) (map (lambda (x) (+ 0.5 (* 0.5 (cos (* x 5))))) color))

(define (repeat k fn)
    (if (> k 0)
        (begin (fn) (repeat (- k 1) fn))
        nil))

(define (square x) (repeat 4 (lambda () (right 90) (forward x))))


(define (expand-tree num newcolor)
  (if (< num 1)
    nil
    (let ((nnum (* num (/ 3 5))) (lnum (* num (/ 4 5)))) (begin (color (listrgb newcolor))
    (begin_fill) (left 180) (right angletwo) (square nnum) (end_fill)
    (penup) (right 90)(forward nnum) (pendown) (expand-tree nnum (change-color newcolor))
    (penup) (right 90) (forward nnum) (right 90) (forward nnum) (left 180) (pendown)
    (begin_fill) (color (listrgb newcolor)) (square lnum) (end_fill) (penup) (right 90) (forward lnum) (pendown)
    (expand-tree lnum (change-color newcolor)) (penup) (backward (+ nnum lnum)) (left angleone) (pendown)
    ))
  )
)


(define (draw)
  (begin_fill)
  (color (listrgb blue))
  (setposition -150 -100)

  (square 150)
  (end_fill)
  (expand-tree 150 blue)
  (exitonclick)
  )

; Please leave this last line alone.  You may add additional procedures above
; this line.
;
(draw)
