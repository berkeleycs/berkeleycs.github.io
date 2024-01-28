;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Coding 40 Hours A Day
;;;
;;; Description:
;;;   If you code it slow
;;;    you can code it fast
;;;    unless you can't

(define (draw)
  ; YOUR CODE HERE
  (exitonclick)
  (speed 0)
  (bgcolor (rgb 0 0 0))
  (color "white")
  (ht)

  ; circle
  (pu) (goto 300 0) (pd)
  (circle 300)
  ; vertical line
  (pu) (goto 75 -290.47) (pd)
  (fd (* 2 290.47))
  ; T
  (pu) (goto -20 -45) (pd)
  (fd 95) (lt 90) (bk 25) (fd 50)
  ; E
  (pu) (fd 7) (pd)
  (fd 45) (rt 90)
  (bk 47.5) (rt 90) (fd 40) (bk 40) (lt 90)
  (bk 47.5) (rt 90) (fd 45)
  ; S
  (pu) (goto -110 25) (pd) (seth 0)
  (fd 2) (circle 23 180) (fd 2)
  (circle 25 46) (goto -133 2.5)
  (pu) (goto -156 -20) (pd) (seth 180)
  (fd 2) (circle 23 180) (fd 2)
  (circle 25 46) (goto -133 2.5)
  ; 2
  (pu) (goto -230 20) (pd) (seth 0)
  (fd 7) (circle -23 (+ 180 40)) (goto -223 -25)
  (circle 32.07 38.05)
  (goto -230 -45) (seth 90) (fd 46)

  ; violin
  (pu) (goto 274.95 -120) (pd) (seth -30)
  (fd 30) (circle -30 75)
  (lt 90) (fd 10) (lt 90)
  (circle -30 92) (circle -100 40)
  (circle -150 20) (circle -35 65) (circle -25 55)
  (lt 90) (fd 10) (lt 75) (fd 25)
  (circle -45 55) (fd 19)
  )

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
