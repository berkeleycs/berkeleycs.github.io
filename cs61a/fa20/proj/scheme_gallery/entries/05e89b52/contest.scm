;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Beachy
;;;
;;; Description:
;;;   <It is very cold.
;;;	   I wish I was at the beach --
;;;    not studying, oof.>

(define (drawCurve start end frw r)
	(forward (+ frw start))
    (right r)

	(if (not (equal? start end))  (drawCurve (+ 1 start) end frw r))

	)

(define (drawCircle start end frw r)
	(forward frw)
    (right r)

	(if (not (equal? start end))  (drawCircle (+ 1 start) end frw r))

	)

(define (drawCircleLeft start end frw r)
	(forward frw)
    (left r)

	(if (not (equal? start end))  (drawCircleLeft (+ 1 start) end frw r))

	)

(define (drawSand)
	(color "#ffffbd")
	(pendown)

	(begin_fill)
		(right 60)
		(drawCurve 0 18 50 3)
	(end_fill)

	(penup)
	)

(define (waver start end)
	(begin_fill)
		(setheading 0)
		(right (- 45 (quotient start 2)))
		(drawCurve 0 18 5 4)
	(end_fill)
	(if (not (equal? start end))  (waver (+ 1 start) end))
	)

(define (waves wcolor)
	(color wcolor)
	(pendown)
	(waver 0 5)
	(penup)

	)

(define (drawAllWaves)
	  (goto -600 -300)
  (waves "#3febdc")
  (goto -500 -300)
  (waves "#3fe8eb")
  (goto -600 -320)
  (waves "#3fe0eb")
  (goto -500 -320)
  (waves "#3fd4eb")
  (goto -600 -340)
  (waves "#3fceeb")
  (goto -500 -340)
  (waves "#3fc6eb")
  (goto -600 -360)
  (waves "#3fc0eb")
  (goto -500 -360)
  (waves "#3fbaeb")
  (goto -600 -380)
  (waves "#3fb2eb")
  (goto -500 -380)
  (waves "#3fa6eb")
  (goto -600 -400)
  (waves "#3f9eeb")
  (goto -500 -400)
  (waves "#3f95eb")
  (goto -600 -420)
  (waves "#3f8ceb")
  (goto -500 -420)
  (waves "#3f87eb")
  (goto -600 -440)
  (waves "#3f7beb")
  (goto -500 -440)
  (waves "#3f73eb")
  (goto -600 -460)
  (waves "#3f6aeb")
  (goto -500 -460)
  (waves "#3f61eb")
  (goto -600 -480)
  (waves "#3f59eb")
  (goto -500 -480)
  (waves "#3f53eb")
  (goto -600 -500)
  (waves "#3f45eb")
  (goto -500 -500)
  (waves "#423feb")
  (goto -600 -520)
  (waves "#3835e8")
  (goto -500 -520)
  (waves "#322ee8")
	)

(define (drawSunBeams)

	(color "#f57220")
	(goto 300 390)
	(setheading 90)
	(pendown)
	(begin_fill)
	(drawCircle 0 180 8 2)
	(end_fill)
	(penup)

	(color "#f58320")
	(goto 300 360)
	(setheading 90)
	(pendown)
	(begin_fill)
	(drawCircle 0 180 7 2)
	(end_fill)
	(penup)

	(color "#f5b920")
	(goto 300 330)
	(setheading 90)
	(pendown)
	(begin_fill)
	(drawCircle 0 180 6 2)
	(end_fill)
	(penup)

	)

(define (drawSun)

	(drawSunBeams)

	(color "#f5e020")
	(goto 300 300)
	(setheading 90)

	(pendown)
	(begin_fill)
	(drawCircle 0 180 5 2)
	(end_fill)
	(penup)


	)

(define (drawAllSands)
  (goto -500 -300)
  (drawSand)
  (goto -600 -300)
  (setheading 0)
  (drawSand)
  (goto -800 -200)
  (setheading 0)
  (drawSand)
  (goto -100 -250)
  (setheading 0)
  (drawSand)
  (goto -400 -250)
  (setheading 0)
  (drawSand)
  (goto -800 -310)
  (setheading 0)
  (drawSand)
	)

(define (drawBird)

	(color "#000000")
	(goto -270 270)
	(setheading 100)

	(pendown)
	(begin_fill)
	(drawCircle 0 20 4 2)
	(left 90)
	(drawCircle 0 20 4 2)
	(left 200)
	(drawCircleLeft 0 20 5 2)
	(right 125)
	(drawCircleLeft 0 20 5 2)
	(end_fill)

	(penup)

	(color "#4a4533")

	(goto 100 100)
	(setheading 100)

	(pendown)
	(begin_fill)
	(drawCircle 0 20 4 2)
	(left 90)
	(drawCircle 0 20 4 2)
	(left 200)
	(drawCircleLeft 0 20 5 2)
	(right 125)
	(drawCircleLeft 0 20 5 2)
	(end_fill)

	(penup)


	)


(define (draw)
  ; YOUR CODE HERE
  (speed 100)

  (bgcolor "#f55920")
  ;(bgcolor "#d7ebf1")
  (pixelsize 5)

  ;adjustment
  (penup)
  (drawAllSands)
  (drawAllWaves)
  (drawSun)


  (drawBird)


  (pendown)
  (penup)



  ;(showturtle)
  (hideturtle)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
