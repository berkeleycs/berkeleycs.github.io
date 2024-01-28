;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Sunset>
;;;
;;; Description:
;;;   <The most beautiful sunsets
      are the ones
      that pass all the tests >

(define (draw)

  (define (sky)
    (define (helper x y r g b)
      (if (> r 1) nil
        (begin
          (color (rgb r g b))
          (setposition x y)
          (pd)
          (begin_fill)
          (setposition x (- y 7))
          (setposition (+ 1000 x) (- y 7))
          (setposition (+ 1000 x) y)
          (setposition x y)
          (end_fill)
          (helper x (- y 7 ) (+ r 0.008) (+ .004 g) (- b .007)))))
        (helper (- 500) 500 .25 .1 .9))
  (define (drawcircle)
    (pu)
    (color (rgb 1 .95 .3))
    (begin_fill)
    (setposition (- 80) (- 158))
    (pd)
    (circle 200 180)
    (setposition (- 80) (- 158))
    (end_fill)
    (pu)
    (setposition 1000 1000))
  (define (reflection)
    (define (refhelper x z y subtractiply count r g b thickness thic)
      (if (< count 0) nil
        (begin
          (pu)
          (setposition x y)
          (color (rgb r g b))
          (pd)
          (begin_fill)
          (setposition z y)
          (setposition z (- y thic))
          (setposition x (- y thic))
          (setposition x y)
          (end_fill)
          (pu)
          (setposition 1000 1000)
          (refhelper (- x subtractiply) (+ z subtractiply) (- y thickness) (* 1.07(* 1.03 subtractiply)) (- count 1) r g b thickness thic))))
        (begin
        (refhelper 600 (- 1000) (- 159) 1 100 1 .5 .5 15 .25)
        (refhelper (- 40) (- 520) (- 159) 1 100 1 .6 0 15 3)
        (refhelper (- 80) (- 480) (- 159) 2 100 1 .9 0 15 3)
          ))

    (define (boat)


      (color (rgb 0 0 0))
      (pu)
      (setposition 250 (- 165))
      (begin_fill)
      (pd)
      (circle 60 90)
      (fd 140)
      (circle 50 90)
      (fd 20)
      (left 90)
      (fd 260)
      (setposition 250 (- 165))
      (end_fill)
      (makerectangle 350 (- 165) 345 (- 300))
      (pu)
      (setposition 340 (- 40))
      (begin_fill)
      (circle 50 70)
      (fd 80)
      (left 110)
      (fd 70)
      (setposition 340 (- 40))
      (end_fill)
      (pd)
      (setposition 344 (- 30))
      (pu)
      (setposition 327 (- 148))
      (pd)
      (fd 20)
      (pu)
      (setposition 268 (- 146))
      (pd)
      (left 197)
      (fd 29)
      (pu)
      (setposition 350 (- 30))
      (pd)
      (right 250)
      (fd 20)
      (begin_fill)
      (left 10)
      (fd 150)
      (right 137)
      (fd 130)
      (pu)
      (right 180)
      (fd 15)
      (left 90)
      (pd)
      (fd 110)
      (end_fill)
      (pu)
      (setposition 469 (- 148))
      (pd)
      (setposition 520 (- 154))








)

        (define (makerectangle x y z v)
          (pu)
          (color (rgb 0 0 0))
          (setposition x y)
          (pd)
          (begin_fill)
          (setposition (+ x (- z x)) y)
          (setposition (+ x (- z x)) (+ y (- y v)))
          (setposition x (+ y (- y v)))
          (setposition x y)
          (end_fill)
          (pu)
          (setposition 1000 1000))

        (define (sixtyone x y)
          (makerectangle x y (+ x 15) (+ y 3))
          (makerectangle x (- y 1) (+ 4 x)  (+ 27 y))
          (makerectangle x (- y 16) (+ x 15) (- y 19))
          (makerectangle x (- y 29) (+ x 15) (- y 32))
          (makerectangle (+ 12 x) (- y 14) (+ x 15) y)
          (makerectangle (+ 20 x) y (+ 24 x) (+ 29 y)))

        (define (cases x y)
          (makerectangle (+ 12 x) y (+ x 28) (+ y 3))
          (makerectangle (+ 12 x) y (+ x 16) (+ y 29))
          (makerectangle (+ 12 x) (- y 26 ) (+ x 28) (- y 23))

          (makerectangle (+ 33 x) y (+ x 48) (+ y 3))
          (makerectangle (+ 33 x) y (+ x 37) (+ y 29))
          (makerectangle (+ 45 x) y (+ x 49) (+ y 29))
          (makerectangle (+ 37 x) (- y 16) (+ x 45) (- y 19))

          (makerectangle (+ 54 x) y (+ x 69) (+ y 3))
          (makerectangle (+ 54 x) y (+ x 58) (+ y 15))
          (makerectangle (+ 54 x) (- y 16) (+ x 69) (- y 19))
          (makerectangle (+ 66 x) (- y 15) (+ x 69) (- y 2))
          (makerectangle (+ 54 x) (- y 26) (+ x 69) (- y 23))

          (makerectangle (+ 74 x) y (+ x 90) (+ y 3))
          (makerectangle (+ 74 x) y (+ x 78) (+ y 29))
          (makerectangle (+ 74 x) (- y 26 ) (+ x 90) (- y 23))
          (makerectangle (+ 74 x) (- y 16) (+ x 90) (- y 19))

          (makerectangle (+ 95 x) y (+ x 110) (+ y 3))
          (makerectangle (+ 95 x) y (+ x 99) (+ y 15))
          (makerectangle (+ 95 x) (- y 16) (+ x 110) (- y 19))
          (makerectangle (+ 107 x) (- y 15) (+ x 110) (- y 2))
          (makerectangle (+ 95 x) (- y 26) (+ x 110) (- y 23)))

        (define (passed x y)
          (makerectangle x y (+ x 15) (+ y 3))
          (makerectangle x y (+ x 4) (+ y 29))
          (makerectangle (+ 12 x) y (+ x 16) (+ y 16))
          (makerectangle (+ 4 x) (- y 16) (+ x 12) (- y 19))

          (makerectangle (+ 21 x) y (+ x 36) (+ y 3))
          (makerectangle (+ 21 x) y (+ x 25) (+ y 29))
          (makerectangle (+ 33 x) y (+ x 37) (+ y 29))
          (makerectangle (+ 25 x) (- y 16) (+ x 33) (- y 19))

          (makerectangle (+ 42 x) y (+ x 57) (+ y 3))
          (makerectangle (+ 42 x) y (+ x 46) (+ y 15))
          (makerectangle (+ 42 x) (- y 16) (+ x 57) (- y 19))
          (makerectangle (+ 54 x) (- y 15) (+ x 57) (- y 2))
          (makerectangle (+ 42 x) (- y 26) (+ x 57) (- y 23))

          (makerectangle (+ 62 x) y (+ x 77) (+ y 3))
          (makerectangle (+ 62 x) y (+ x 66) (+ y 15))
          (makerectangle (+ 62 x) (- y 16) (+ x 77) (- y 19))
          (makerectangle (+ 74 x) (- y 15) (+ x 77) (- y 2))
          (makerectangle (+ 62 x) (- y 26) (+ x 77) (- y 23))

          (makerectangle (+ 82 x) y (+ x 98) (+ y 3))
          (makerectangle (+ 82 x) y (+ x 86) (+ y 29))
          (makerectangle (+ 82 x) (- y 26 ) (+ x 98) (- y 23))
          (makerectangle (+ 82 x) (- y 16) (+ x 98) (- y 19))

          (makerectangle (+ 103 x) y (+ x 115) (+ y 3))
          (makerectangle (+ 103 x) y (+ x 107) (+ y 29))
          (makerectangle (+ 103 x) (- y 26 ) (+ x 115) (- y 23))
          (makerectangle (+ 116 x) (- y 4) (+ x 119) (+ y 17))

          (makerectangle (+ 132 x) y (+ x 136) (+ y 21))
          (makerectangle (+ 132 x) (- y 30) (+ x 136) (- y 34)))

        (define (no x y)
          (makerectangle x (- y 1) (+ 4 x)  (+ 28 y))
          (makerectangle (+ x 13) (- y 1) (+ 17 x) (+ 28 y))
          (makerectangle (+ x 5) (- y 1) (+ 6 x) (+ 5 y))
          (makerectangle (+ x 7) (- y 8) (+ 8 x)  (- y 1))
          (makerectangle (+ x 9) (- y 16) (+ 10 x) (- y 9))
          (makerectangle (+ x 11) (- y 23) (+ 12 x) (- y 16))

          (makerectangle (+ 22 x) (- y 1) (+ x 38) (+ y 2))
          (makerectangle (+ 22 x) (- y 1) (+ x 26) (+ y 28))
          (makerectangle (+ 22 x) (- y 27 ) (+ x 38) (- y 24))
          (makerectangle (+ 34 x) (- y 1) (+ x 38) (+ y 28)))

        (define (failed x y)
          (makerectangle x y (+ x 15) (+ y 3))
          (makerectangle x y (+ x 4) (+ y 29))
          (makerectangle (+ 4 x) (- y 16) (+ x 13) (- y 19))

          (makerectangle (+ 21 x) y (+ x 36) (+ y 3))
          (makerectangle (+ 21 x) y (+ x 25) (+ y 29))
          (makerectangle (+ 33 x) y (+ x 37) (+ y 29))
          (makerectangle (+ 25 x) (- y 16) (+ x 33) (- y 19))

          (makerectangle (+ 47 x) y (+ x 51) (+ y 29))

          (makerectangle (+ 62 x) y (+ x 66) (+ y 29))
          (makerectangle (+ 62 x) (- y 26) (+ x 77) (- y 23))

          (makerectangle (+ 82 x) y (+ x 98) (+ y 3))
          (makerectangle (+ 82 x) y (+ x 86) (+ y 29))
          (makerectangle (+ 82 x) (- y 26 ) (+ x 98) (- y 23))
          (makerectangle (+ 82 x) (- y 16) (+ x 98) (- y 19))

          (makerectangle (+ 103 x) y (+ x 115) (+ y 3))
          (makerectangle (+ 103 x) y (+ x 107) (+ y 29))
          (makerectangle (+ 103 x) (- y 26 ) (+ x 115) (- y 23))
          (makerectangle (+ 116 x) (- y 4) (+ x 119) (+ y 17))

          (makerectangle (+ 132 x) (- y 30) (+ x 136) (- y 34)))


        (define (makewrectangle x y z v)
          (pu)
          (color (rgb 1 1 0))
          (setposition x y)
          (pd)
          (begin_fill)
          (setposition (+ x (- z x)) y)
          (setposition (+ x (- z x)) (+ y (- y v)))
          (setposition x (+ y (- y v)))
          (setposition x y)
          (end_fill)
          (pu)
          (setposition 1000 1000))


        (define (sixtyonea x y)
          (makewrectangle x y (+ x 15) (+ y 3))
          (makewrectangle x (- y 1) (+ 4 x)  (+ 27 y))
          (makewrectangle x (- y 16) (+ x 15) (- y 19))
          (makewrectangle x (- y 29) (+ x 15) (- y 32))
          (makewrectangle (+ 12 x) (- y 14) (+ x 15) y)
          (makewrectangle (+ 20 x) y (+ 24 x) (+ 29 y))

          (makewrectangle (+ 81 x) y (+ x 96) (+ y 3))
          (makewrectangle (+ 81 x) y (+ x 85) (+ y 29))
          (makewrectangle (+ 93 x) y (+ x 97) (+ y 29))
          (makewrectangle (+ 85 x) (- y 16) (+ x 93) (- y 19)))


          (define (clouds x y)
            (color (rgb .7 .5 .8))
            (pu)
            (setposition x y)
            (pd)
            (begin_fill)
            (circle 100 180)
            (left 90)
            (fd 200)
            (end_fill)
            (pu)
            (setposition (+ x 60) (+ y 20))
            (pd)
            (left 90)
            (begin_fill)
            (circle 60 120)
            (fd 100)
            (end_fill)
            (pu)
            (setposition (+ x 140) y)
            (pd)
            (begin_fill)
            (left 270)
            (circle 80 120)
            (setposition x y)
            (end_fill)
            (begin_fill)
            (right 140)
            (fd 30)
            (right 90)
            (fd 60)
            (right 100)
            (fd 40)
            (right 90)
            (fd 60)
            (end_fill)
            (begin_fill)
            (fd 150)
            (right 90)
            (circle 60 180)
            (left 90)
            (fd 60)
            (end_fill)
            (pu)
            (setposition 700 700))







        (bgcolor (rgb .2 0 .5))
        (sky)
        (drawcircle)
        (reflection)
        (sixtyone (- 425) (- 70))
        (cases (- 396) (- 70))
        (passed (- 269) (- 70))
        (no (- 433) (- 116))
        (cases (- 390) (- 116))
        (failed (- 263) (- 116))
        (boat)
        (sixtyonea 300 (- 100))
        (clouds 50 (- 50))
        (right 270)
        (clouds (- 300) 70)
        (right 270)
        (clouds 400 200)





  (exitonclick))



; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
