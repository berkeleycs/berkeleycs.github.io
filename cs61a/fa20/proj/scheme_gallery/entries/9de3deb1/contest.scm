;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Nebula>
;;;
;;; Description:
;;;   <Computer Science
;;;    Where some stars thrive but most die
;;;    DADDY DENERO>

(define (draw)
  ; YOUR CODE HERE
  (bgcolor "black")
  (color "white")
  (spiral1 1 90 1 .05)
  (penup)
  (setposition 0 0)
  (pendown)
  (left 30)
  (spiral2 1 90 1 .05)
  (penup)
  (setposition 0 0)
  (pendown)
  (left 30)
  (spiral3 1 90 1 .05)
  (penup)
  (pixelsize 4)
  (pixel -100 100 "white")
  (pixelsize 3)
  (pixel 80 140 "white")
  (pixel 90 130 "white")
  (pixel -100 -100 "white")
  (pixel -90 145 "white")
  (pixel -80 -125 "white")
  (pixelsize 2)
  (pixel 165 -150 "white")
  (pixel 200 70 "white")
  (pixel -210 18 "white")
  (pixel 180 10 "white")
  (pixel -150 150 "white")
  (pixelsize 1)
  (pixel 325 -150 "white")
  (pixel 180 -300 "white")
  (pixel 10 410 "white")
  (pixel -10 -400 "white")
  (pixel 300 -400 "white")
  (pixel -400 250 "white")
  (pixel -415 -125 "white")
  (exitonclick))


(define (square var)
  (forward var)
  (right 90)
)

(define (spiral1 angle number length var)
  (cond
    ((= number 0)(forward 30))
    (else
      (color (rgb var .5 .3))
      (left angle)
      (square length)
      (spiral1 angle (- number 1) (+ length 5) (+ .01 var))
    )
  )
)

(define (spiral2 angle number length var)
  (cond
    ((= number 0) (forward 30))
    (else
      (color (rgb var .5 .4))
      (left angle)
      (square length)
      (spiral2 angle (- number 1) (+ length 5) (+ .01 var))
    )
  )
)

(define (spiral3 angle number length var)
  (cond
    ((= number 0)
     (forward 30))
    (else
      (color (rgb var var .5))
      (left angle)
      (square length)
      (spiral3 angle (- number 1) (+ length 5) (+ .01 var))
    )
  )
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
