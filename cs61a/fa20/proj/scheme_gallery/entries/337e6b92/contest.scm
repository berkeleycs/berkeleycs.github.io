;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Fractal Tree
;;;
;;; Description:
;;;   Fill in the blanks
;;;   .....................
;;;   .....................
(define (tree i)
    (if (> i 10)
    (begin
    (fd i)
    (color "orange")
    (circle 4)
    (color "brown")
    (left 30)
    (tree (* 3 (/ i 4)))
    (right 60)
    (tree (* 3 (/ i 4)))
    (left 30)
    (bk i)
    )
    )
)

(define (tree_body x y)
  (setposition x y)
  (tree 200)
)

(define (draw)
  (pd)
  (ht)
  (bgcolor "black")
  (tree_body 0 -320)
  (tree_body 1 -320)
  (tree_body -1 -320)
  (tree_body 2 -320)
  (tree_body -2 -320)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
