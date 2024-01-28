;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Impostor Among a Swirl of Stars>
;;;
;;; Description:
;;;   <Here drifts impostor
;;;    among solitary stars;
;;;    all alone, once more.>

(define (draw)
  ; YOUR CODE HERE
  ;background
  (penup)
  (setposition 400 0)
  (pendown)
  (bgcolor "black")

  ;functions
  (define (stellar_arcs arc_count radius extent)
    (if (= arc_count 0)
      nil
      (and (pendown) (circle radius extent) (penup) (circle radius extent)
        (stellar_arcs (- arc_count 1) radius extent)
      )
    )
  )
  (define (stellar_spirals color_name arc_count radius setx)
    (color color_name)
    (stellar_arcs arc_count radius (/ 360 (* 2 arc_count)))
    (penup)
    (setposition setx 0)
    (left 180)
  )
  (define (impostor setx sety)
    (setposition setx sety)
    (pendown)

    ;torso
    (color "red")
    (begin_fill)
      (setheading 180)
      (forward 150)
      (setheading 90)
      (forward 70)
      (setheading 0)
      (forward 150)
    (end_fill)

    ;bag
    (penup)
    (setposition setx (- sety 25))
    (pendown)
    (begin_fill)
      (setheading 270)
      (forward 15)
      (setheading 180)
      (forward 70)
      (setheading 90)
      (forward 15)
    (end_fill)

    ;feet_space
    (penup)
    (setposition (+ setx 30) (- sety 150))
    (pendown)
    (color "black")
    (begin_fill)
      (forward 22.5)
      (setheading 0)
      (forward 15)
      (setheading 270)
      (forward 22.5)
    (end_fill)

    ;goggles
    (penup)
    (setposition (+ setx 40) (- sety 15))
    (pendown)
    (color "gray")
    (begin_fill)
      (setheading 180)
      (forward 30)
      (setheading 90)
      (forward 40)
      (setheading 0)
      (forward 30)
    (end_fill)
    (penup)
    (setheading 270)
    (forward 35)
    (pendown)
    (color "lightskyblue")
    (setheading 180)
    (begin_fill)
      (forward 25)
      (setheading 90)
      (forward 35)
      (setheading 0)
      (forward 25)
    (end_fill)
    (penup)
    (setheading 270)
    (forward 15)
    (pendown)
    (color "white")
    (setheading 180)
    (begin_fill)
      (forward 10)
      (setheading 90)
      (forward 15)
      (setheading 0)
      (forward 10)
    (end_fill)
  )

  ;testing
  (stellar_spirals "lightgoldenrodyellow" 15 400 -370)
  (stellar_spirals "white" 13 370 330)
  (stellar_spirals "yellow" 14 330 -300)
  (stellar_spirals "cyan" 12 300 280)
  (stellar_spirals "lightgoldenrodyellow" 13 280 -240)
  (stellar_spirals "white" 11 240 220)
  (stellar_spirals "yellow" 12 220 -190)
  (stellar_spirals "cyan" 10 190 180)
  (stellar_spirals "lightgoldenrodyellow" 11 180 -150)
  (stellar_spirals "white" 9 150 120)
  (stellar_spirals "yellow" 10 120 -100)
  (stellar_spirals "cyan" 8 100 60)
  (impostor -25 75)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
