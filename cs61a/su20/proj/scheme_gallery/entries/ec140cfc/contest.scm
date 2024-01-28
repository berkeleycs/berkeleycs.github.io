;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <me bum (peech ver)>
;;;
;;; Description:
;;;   <The final has come
;;;    Procrastinate with this peach
;;;    the end is in reach!>

(define (draw)

  (pendown)
  (color "#f5aeae")
  (begin_fill)
  (circle 200 180)
  (circle 400 180)
  (circle 200 180)
  (end_fill)
  (penup)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)