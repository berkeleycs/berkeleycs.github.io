;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Folks, I really bombed the midterm. Help.
;;;
;;; Description:
;;;   <forward ain't easy
;;;    but don't ever give up k?
;;;    makes total sense ngl.>

(define (draw)
;;;Never gonna give you up
;;;Never gonna let you down
;;;Never gonna run around and desert you
;;;Never gonna make you cry
;;;Never gonna say goodbye
;;;Never gonna tell a lie and hurt you

  (define (progress steps)
  (if (= steps 1) (forward 1) (begin (forward 1) (progress (- steps 1))))
  )
  (progress 42)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
