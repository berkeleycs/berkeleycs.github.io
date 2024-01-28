;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Serenity
;;;
;;; Description:
;;;   Divine, Serene, Peace
;;;    What more do we need in these
;;;    times, plus finals soon

(define (draw)


  (define (circle-line length radius overlap)
    (cond
      ((= length 0)
        (circle radius)
      )
      (else
        (pendown)
        (circle radius)
        (penup)
        (forward overlap)
        (circle-line (- length 1) radius overlap)
      )
    )

  )

  (define (string length radius overlap angle)
    (color "#654321")
    ;(setheading 180)
    (circle-line length radius overlap)
    (penup)
    (backward (* overlap length))
    (right angle)
    (pendown)
    (circle-line length radius overlap)
    (penup)
    (backward (* overlap length))
    (left (* angle 2))
    (circle-line length radius overlap)
    (backward (* overlap length))
  )

  (define (star degrees repeat sides size)
    (cond
      ((= repeat 1)
        (forward size))
      (else
        (forward size)
        (right (- 180 (quotient degrees sides)))
        (star degrees (- repeat 1) sides size)
      )
    )
  )

  (define (polygon edges levels size)
    (cond
      ((= levels 1)
        (forward size)
      )
      (else
        (forward size)
        (define angle (* (- edges 2) (quotient 180 edges)))
        (right (- 180 angle))
        (polygon edges (- levels 1) size)
      )
    )
  )

  (define (r-pot height)
    (color "#DEB887")
    (circle height 240)
    (right 45)
    (forward (quotient height 3))
    (left 105)
    (forward (* 2 (- height 5)))
    (left 105)
    (forward (quotient height 3))
  )

  (define (m-pot height)
    (color "#DEB887")
    (begin_fill)
    (polygon 4 4 height)
    (end_fill)

    (color "#CECEE6")
    (backward height)
    (right 90)
    (forward (- height 5))
    (cut-corner 5)
    (left 90)
    (forward (- height 5))
    (left 90)
    (backward 5)
    (cut-corner 5)
    (left 90)
    (forward (- height 5))
    (left 90)
    (backward 5)
    (cut-corner 5)
    (right 90)
    (backward (- height 5))
    (right 90)
    (backward 5)
    (cut-corner 5)
  )

  (define (l-pot height)
    (color "#DEB887")
    (begin_fill)
    (forward height)
    (circle height 180)
    (forward height)
    (end_fill)
  )

  (define (a length)
    (color "#25523B")
    (begin_fill)
    (circle-line length 5 32) ; length radius overlap
    (end_fill))
  (define (b length)
    (color "#5AAB61")
    (begin_fill)
    (circle-line length 5 32)
    (end_fill))
  (define (c length)
    (color "#358856")
    (begin_fill)
    (circle-line length 5 32)
    (end_fill))
  (define (d length)
    (color "#0C3823")
    (begin_fill)
    (circle-line length 5 32)
    (end_fill))

  (define (l-plant0)
    ; 36 dots in row on top of the pot

      (fd 60)
      (a 4)
  )

  (define (l-plant1)

        (fd 10)

        (a 5)
        (b 3)
        (bk 247)
        (b 3)
        (c 5)
        (bk 247)
        (c 2)
        (d 6)
        (bk 247)
        (d 1)
        (a 3)
        (b 4)


        (bk 312)
        (left 90)
        (fd 9)
        (right 90)

        (l-plant0)
      )

  (define (l-plant2)

    (fd 10)

    (a 5)
    (b 3)
    (bk 247)
    (b 3)
    (c 5)
    (bk 247)
    (c 2)
    (d 6)
    (bk 247)
    (d 1)
    (a 3)
    (b 4)


    (bk 312)
    (left 90)
    (fd 9)
    (right 90)

    (l-plant1)

  )

  (define (l-plant3)

    (fd 10)

    (a 5)
    (b 3)
    (bk 247)
    (b 3)
    (c 5)
    (bk 247)
    (c 2)
    (d 6)
    (bk 247)
    (d 1)
    (a 3)
    (b 4)


    (bk 312)
    (left 90)
    (fd 9)
    (right 90)

    (l-plant2)

  )

  (define (l-plant4)

    (fd 7)

    (a 5)
    (b 3)
    (bk 247)
    (b 3)
    (c 5)
    (bk 247)
    (c 2)
    (d 6)
    (bk 247)
    (d 1)
    (a 3)
    (b 4)


    (bk 260)
    (left 90)
    (fd 9)
    (right 90)

    (l-plant3)

  )

  (define (l-plant5)

    (fd 12)

    (c 3)
    (a 6)
    (bk 280)
    (c 5)
    (d 4)
    (bk 280)
    (c 3)
    (d 6)
    (bk 280)
    (a 1)
    (b 8)

    (bk 312)
    (left 90)
    (fd 9)
    (right 90)

    (l-plant4)
  )

  (define (l-plant6)

    (bk 8)

    (c 8)
    (a 1)
    (bk 280)
    (d 4)
    (b 5)
    (bk 280)
    (b 6)
    (c 3)
    (bk 280)
    (b 2)
    (a 4)
    (c 1)
    (d 2)

    (bk 312)
    (left 90)
    (fd 9)
    (right 90)

    (l-plant5)
  )

  (define (l-plant7)

    (bk 11)

    (d 9)
    (b 0)
    (bk 280)
    (b 4)
    (a 5)
    (bk 280)
    (d 5)
    (b 4)
    (bk 280)
    (d 3)
    (a 2)
    (c 1)
    (b 3)

    (bk 312)
    (left 90)
    (fd 9)
    (right 90)

    (l-plant6)

    )

    (define (l-plant8)

      (a 5)
      (b 4)
      (bk 280)
      (b 3)
      (c 6)
      (bk 280)
      (c 2)
      (d 7)
      (bk 280)
      (d 1)
      (a 3)
      (b 4)
      (c 1)

      (bk 312)
      (left 90)
      (fd 9)
      (right 90)

      (l-plant7)
    )


  (define (cut-corner radius)
    (begin_fill)
    (circle radius 90)
    (rt 90)
    (fd radius)
    (rt 90)
    (fd (* radius 2))
    (rt 90)
    (fd (* radius 2))
    (rt 90)
    (fd radius)
    (end_fill)
  )

  (define (texture height width)
    (color 'white)
    (pendown)
    (forward (quotient width 3))
    (backward (quotient width 3))
    (penup)
    (cond
      ((eq? (modulo height 3) 0)
        (right 90)
        (forward 2)
        (left 90)
        (texture (- height 2) width)
      )
      ((eq? (modulo height 3) 1)
        (right 90)
        (forward 1)
        (left 90)
        (texture (- height 1) width)
      )
      ((eq? (modulo height 3) 2)
        (right 90)
        (forward 2)
        (left 90)
        (texture (- height 1) width)
      )
    )
  )

  (define (m_pot_lines size)
    (color "#654321")
    (seth 155)
    (circle-line 40 5 3)
    (circle-line 48 5 3)
    (seth 28)
    (circle-line 40 5 3)
    (circle-line 49 5 3)
    (bk 5)
    (seth 180)
    (circle-line 50 5 3)
    (circle-line 25 5 3)
    (seth 335)
    (circle-line 40 5 3)
    (circle-line 48 5 3)
    (seth 208)
    (circle-line 40 5 3)
    (circle-line 49 5 3)
    (bk 20)
    (seth 0)
    (bk 20)
    (circle-line 50 5 3)
    (circle-line 25 5 3)

  )

  (define (l_pot_texture size)
    (string (* size 2) 5 3 20)
  )

  (define (m_pot_leaf size r_color)
    (begin_fill)
    (color r_color)
    (circle size 70)
    (left 110)
    (circle size 70)
    (end_fill)
    (penup)
  )

  (define (m_pot_leaves size)
    (m_pot_leaf (* 1.5 size) "#25523B")
    (setpos 35 9)
    (setheading 10)
    (m_pot_leaf (* 1.75 size) "#358856")
    (setpos -50 30)
    (setheading 10)
    (m_pot_leaf (quotient (* 3 size) 2.5) "#5AAB61")
    (setpos -30 0)
    (setheading 50)
    (m_pot_leaf (* 1.67 size) "#62BD69")
    (setpos 30 57)
    (setheading 105)
    (m_pot_leaf (* 1.6 size) "#30694B")
    (setpos 50 30)
    (setheading 65)
    (m_pot_leaf (* 1.4 size) "#0C3823")
    (setpos 0 10)
    (setheading 90)
    (m_pot_leaf size "#358856")
    (setpos 20 0)
    (setheading 50)
    (m_pot_leaf (* 1.45 size) "#5AAB61")
    (setpos 10 10)
    (setheading 330)
    (m_pot_leaf size "#62BD69")
    (setpos -20 9)
    (setheading 20)
    (m_pot_leaf size "#30694B")
    (setpos -10 15)
    (setheading 50)
    (m_pot_leaf size "#25523B")
  )

  (define (r_pot_leaf size colors)
    (color colors)
    (polygon 3 3 size) ; edges levels size
  )

  (define (r_pot_leaves size colors)
    ;(setpos 240 -40)
    ;(setheading 50)
    (begin_fill)
    (r_pot_leaf (* .85 size) colors)
    (end_fill)
    (pu)

    (setpos 230 -30)
    (setheading 210)
    (begin_fill)
    (r_pot_leaf (* .90 size) colors)
    (end_fill)
    (pu)

    (setpos 200 -110)
    (setheading 280)
    (begin_fill)
    (r_pot_leaf (* 1.3 size) colors)
    (end_fill)
    (pu)

    (setpos 200 -180)
    (setheading 275)
    (begin_fill)
    (r_pot_leaf (* 1.2 size) colors)
    (end_fill)
    (pu)

    (setpos 190 -240)
    (setheading 280)
    (begin_fill)
    (r_pot_leaf (* 1.13 size) colors)
    (end_fill)
    (pu)

    (setpos 165 -300)
    (setheading 300)
    (begin_fill)
    (r_pot_leaf (* 1.22 size) colors)
    (end_fill)
    (pu)

    (setpos 120 -360)
    (setheading 310)
    (begin_fill)
    (r_pot_leaf (* .83 size) colors)
    (end_fill)
    (pu)

    (setpos 240 -140)
    (setheading 275)
    (begin_fill)
    (r_pot_leaf (* .75 size) colors)
    (end_fill)
    (pu)

    (setpos 260 -195)
    (setheading 275)
    (begin_fill)
    (r_pot_leaf (* .85 size) colors)
    (end_fill)
    (pu)

    (setpos 265 -260)
    (setheading 275)
    (begin_fill)
    (r_pot_leaf (* 1.05 size) colors)
    (end_fill)
    (pu)

    (setpos 330 -50)
    (setheading 20)
    (begin_fill)
    (r_pot_leaf (* 1.2 size) colors)
    (end_fill)
    (pu)

    (setpos 390 -10)
    (setheading 70)
    (begin_fill)
    (r_pot_leaf (* 1.1 size) colors)
    (end_fill)
    (pu)

    (setpos 440 -40)
    (setheading 120)
    (begin_fill)
    (r_pot_leaf (* .75 size) colors)
    (end_fill)
    (pu)

    (setpos 460 -110)
    (setheading 145)
    (begin_fill)
    (r_pot_leaf size colors)
    (end_fill)
    (pu)

    (setpos 460 -170)
    (setheading 160)
    (begin_fill)
    (r_pot_leaf size colors)
    (end_fill)
    (pu)

    (setpos 450 -230)
    (setheading 185)
    (begin_fill)
    (r_pot_leaf size colors)
    (end_fill)
    (pu)

    (setpos 410 -280)
    (setheading 200)
    (begin_fill)
    (r_pot_leaf size colors)
    (end_fill)
    (pu)

    (setpos 370 -310)
    (setheading 175)
    (begin_fill)
    (r_pot_leaf (* 0.33 size) colors)
    (end_fill)
    (pu)
  )

  (define (r_pot_outline size colors)
    ;(setpos 240 -40)
    ;(setheading 50)
    (r_pot_leaf (* .85 size) colors)
    (pu)

    (setpos 230 -30)
    (setheading 210)
    (pd)
    (r_pot_leaf (* .90 size) colors)
    (pu)

    (setpos 200 -110)
    (setheading 280)
    (pd)
    (r_pot_leaf (* 1.3 size) colors)
    (pu)

    (setpos 200 -180)
    (setheading 275)
    (pd)
    (r_pot_leaf (* 1.2 size) colors)
    (pu)

    (setpos 190 -240)
    (setheading 280)
    (pd)
    (r_pot_leaf (* 1.13 size) colors)
    (pu)

    (setpos 165 -300)
    (setheading 300)
    (pd)
    (r_pot_leaf (* 1.22 size) colors)
    (pu)

    (setpos 120 -360)
    (setheading 310)
    (pd)
    (r_pot_leaf (* .83 size) colors)
    (pu)

    (setpos 240 -140)
    (setheading 275)
    (pd)
    (r_pot_leaf (* .75 size) colors)
    (pu)

    (setpos 260 -195)
    (setheading 275)
    (pd)
    (r_pot_leaf (* .85 size) colors)
    (pu)

    (setpos 265 -260)
    (setheading 275)
    (pd)
    (r_pot_leaf (* 1.05 size) colors)
    (pu)

    (setpos 330 -50)
    (setheading 20)
    (pd)
    (r_pot_leaf (* 1.2 size) colors)
    (pu)

    (setpos 390 -10)
    (setheading 70)
    (pd)
    (r_pot_leaf (* 1.1 size) colors)
    (pu)

    (setpos 440 -40)
    (setheading 120)
    (pd)
    (r_pot_leaf (* .75 size) colors)
    (pu)

    (setpos 460 -110)
    (setheading 145)
    (pd)
    (r_pot_leaf size colors)
    (pu)

    (setpos 460 -170)
    (setheading 160)
    (pd)
    (r_pot_leaf size colors)
    (pu)

    (setpos 450 -230)
    (setheading 185)
    (pd)
    (r_pot_leaf size colors)
    (pu)

    (setpos 410 -280)
    (setheading 200)
    (pd)
    (r_pot_leaf size colors)
    (pu)

    (setpos 370 -310)
    (setheading 175)
    (pd)
    (r_pot_leaf (* 0.33 size) colors)
    (pu)
  )

  (define (r-vine)
    (color "#5AAB61")
    (setpos 300 -70)
    (pd)
    (seth -35)
    (circle-line 12 3 3)
    (seth -80)
    (fd 28)
    (circle-line 10 3 3)

    (setpos 195 -48)
    (seth -110)
    (circle-line 8 3 3)

    (setpos 166 -105)
    (seth 170)
    (fd 3)
    (circle-line 8 3 3)

    (setpos 172 -177)
    (seth 190)
    (circle-line 8 3 3)

    (setpos 164 -235)
    (seth 195)
    (fd 3)
    (circle-line 3 3 3)

    (setpos 138 -286)
    (seth 208)
    (circle-line 16 3 3)

    ;middle branch

    (setpos 180 -72)
    (seth 135)
    (circle-line 20 3 3)

    (setpos 222 -139)
    (seth 140)
    (fd 2)
    (circle-line 10 3 3)

    (setpos 241 -193)
    (seth 180)
    (circle-line 8 3 3)

    (setpos 313 -75)
    (seth 45)
    (circle-line 14 3 3)


    (setpos 368 -24)
    (seth 69)
    (circle-line 12 3 3)

    (setpos 433 -22)
    (seth 170)
    (circle-line 8 3 3)

    (setpos 455 -70)
    (seth 180)
    (circle-line 16 3 3)

    (setpos 464 -152)
    (seth 195)
    (circle-line 8 3 3)

    (setpos 450 -213)
    (seth 200)
    (circle-line 8 3 3)

    (setpos 420 -265)
    (seth -130)
    (circle-line 8 3 3)

    (setpos 377 -305)
    (seth -110)
    (circle-line 3 3 3)
  )


; if you pendown twice, you have to penup twice
; it automatically starts pendown

  (hideturtle)
  (clear)
  (penup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (bgcolor "#CECEE6")

  (setpos -10 -500)
  (pd)
  (begin_fill)
  (color "#9999CC")
  (star 180 60 60 1000)
  (end_fill)
  (pu)

  ;(setpos -500 -500)
  ;(pd)
  ;(color "black")
  ;(star 360 12 12 100)
  ;(pu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;draws right strings
  (setposition 300 110)
  (seth 180)
  (pendown)
  (string 75 5 3 30)
  (penup)

  ;draw right pot
  (setpos 200 -115)
  (pendown)
  (begin_fill)
  (setheading 210)
  (r-pot 120)
  (end_fill)
  (penup)

  ; draw right vines
  (setpos 240 -40)
  (setheading 0)
  (r-vine)
  (penup)

  ; draw right leaves
  (setpos 240 -50)
  (pendown)
  (setheading 50)
  (r_pot_leaves 50 "#5AAB61")
  (penup)

  ; draw right leaves outline
  (setpos 240 -50)
  (pendown)
  (setheading 50)
  (r_pot_outline 50 "#0C3823")
  (penup)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;draws middle strings
  (setposition 0 300)
  (seth 180)
  (pendown)
  (string 85 5 3 40)
  (penup)

  ; draws leaves for middle pot
  (setpos -250 130)
  ;(seth 30)
  (pendown)
  (m_pot_leaves 150)
  (penup)

  ;draw middle pot and cuts corners
  (setpos -120 -195)
  (pendown)
  (setheading 0)
  (m-pot 240)
  (penup)

  ; draws string in front of m_pot_leaves
  (setposition 0 300)
  (seth 180)
  (pendown)
  (color "#654321")
  (circle-line 85 5 3)
  (penup)

  ; draw decorative strings on middle pot
  (pendown)
  (setpos -120 45)
  (seth 180)
  (m_pot_lines 240)
  (penup)

  (setpos -9 -195)
  (seth 180)
  (circle-line 70 5 3)
  (pu)

  (setpos -9 -195)
  (seth 182)
  (circle-line 70 5 3)
  (pu)

  (setpos -9 -195)
  (seth 178)
  (circle-line 70 5 3)
  (pu)

  (setpos -11 -200)
  (seth 90)
  (circle-line 5 5 3)
  (pu)

  (setpos -11 -205)
  (seth 90)
  (circle-line 5 5 3)
  (pu)

  (setpos -13 -300)
  (seth 90)
  (circle-line 7 5 3)
  (pu)

  (setpos -13 -305)
  (seth 90)
  (circle-line 7 5 3)
  (pu)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;draws left strings
  (setposition -300 85)
  (seth 180)
  (pendown)
  (string 60 5 3 20)
  (penup)

  ;draw left pot
  (setpos -395 -150)
  (pendown)
  (setheading 180)
  (l-pot 100)
  (penup)

  ;draw decorative strings on left pot
  (setposition -290 -350)
  (setheading 0)
  (pendown)
  (string 70 5 3 20) ;length radius overlap angle
  (penup)

  ;draws left plant on top of planter
  (setpos -450 -150)
  (pendown)
  (setheading 90)
  (l-plant8)

  ;draws left plant left of planter
  (setpos -460 -110)
  (pendown)
  (setheading 180)
  (l-plant8)

  ;draws left plant right of planter
  (setpos -200 -110)
  (pendown)
  (setheading 180)
  (l-plant8)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)

; python3 scheme.py contest.scm --pillow-turtle --turtle-save-path output

; python3 scheme_tokens.py contest.scm
