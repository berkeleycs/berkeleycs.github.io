;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Creeper>
;;;
;;; Description:
;;;   <Awww Man...>

(define (draw)
  (bgcolor "#1cb43c")

  (define (draw-rect c x y width height)
    (color c)
    (penup)
    (goto x y)
    (begin_fill)
    (pendown)
    (goto (+ x width) y)
    (goto (+ x width) (+ y height))
    (goto x (+ y height))
    (goto x y)
    (end_fill)
  )

  (define (draw-mirrored-rect c x y width height)
    (draw-rect c x y width height)
    (draw-rect c (- (+ x width)) y width height)
  )

  (draw-mirrored-rect "#073e21" -300 100 200 200)
  (draw-mirrored-rect "#073e21" -200 -60 100 60)
  (draw-rect "#073e21" -100 50 200 50)

  (draw-mirrored-rect "#000000" -250 100 150 150)
  (draw-mirrored-rect "#000000" -200 -350 100 300)
  (draw-rect "#000000" -100 -200 200 250)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
