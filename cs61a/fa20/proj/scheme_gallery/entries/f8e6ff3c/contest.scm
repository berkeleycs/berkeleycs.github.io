;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its "f8f572" meaning.>



(define (draw)
;;;Colors
(define body "#f19483" )
(define sign_body body)
(define inner "#f3e4b0")
(define sign_inner inner)
(bgcolor "#f3e4b0")

;;;Draw the head as a circle
  (color body)
  (penup)
  (setposition 167 -400)
  (pendown)
  (begin_fill)
  (right 30)
  (circle 170 240)
  (left 60)
  (forward 285)
  (end_fill)

;;;Change position
  (define (newpos pos1 pos2)
  (penup)
  (setposition pos1 pos2)
  (pendown))

  ;;;Draw eye
    (define (eye pos1 pos2)
     (newpos pos1 pos2)
     (color inner)
     (begin_fill)
     (circle 15)
     (end_fill)
    )

  ;;;Draw the right eye
     (eye 130 -235)
  ;;;Draw the left eye
     (eye -81 -235)

;;; Draw box
    (define (box init1 init2 height width mycolor)
     (newpos init1 init2)
     (color mycolor)
     (begin_fill)
     (left 90)
     (forward height)
     (left 90)
     (forward width)
     (left 90)
     (forward height)
     (left 90)
     (forward width)
     (end_fill)
     )

    ;;; Draw the nose as a box
    (box 100 -330 85 160 inner)
    ;;; Draw the first nose hole
    (box 50 -315 55 10 body)
    ;;; Draw the second nose hole
    (box 10 -315 55 10 body)

;;;Draw left ear
    (newpos -105 -200)
    (begin_fill)
    (left 180)
    (forward 12)
    (left 50)
    (forward 45)
    (left 130)
    (forward 30)
    (end_fill)


;;;Draw right ear
    (newpos 144 -200)
    (begin_fill)
    (forward 12)
    (right 50)
    (forward 45)
    (right 130)
    (forward 30)
    (end_fill)


;;;Draw sign
(right 180)
;;; pillar
(box 340 -400 300 25 sign_body)
;;; sign
(box 445 -100 240 240 sign_body)
;;; left'|' of P
(box 290 -60 160 25 sign_inner)
;;; upper'-' of P
(box 390 75 25 125 sign_inner)
;;; right '|' of P
(box 390 25 50 25 sign_inner)
;;; lower '-' of P
(box 390 25 25 125 sign_inner)
(hideturtle)
(exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
