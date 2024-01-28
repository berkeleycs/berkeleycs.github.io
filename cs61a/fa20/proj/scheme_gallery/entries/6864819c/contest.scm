;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Lightning boi>
;;;
;;; Description:
;;;   <A whole speedy boi
;;;    When will the movie come out
;;;    I want to watch it>


; Useful functions

; Moves pen without drawing anything
(define (teleport x y)
  (penup)
  (goto x y)
  (pendown))



; Background stuff

(define background-colors '("#FFCC4F" "#FFCC4F" "#FFCC4F" "#FFCC4F" "#FFCC4F"
                            "#FFCC4F" "#FFCC4F" "#FFCC4F" "#FFCC4F" "#FFCC4F"
                            "#FFCC4F" "#FFCC4F" "#FFCC4F" "#FFCC4F" "#FFCC4F"
                            "#FFC44A" "#FFBD45" "#FFB541" "#FFAD3C" "#FFA537"
                            "#FF9E32" "#FF962D" "#FF8E28" "#FF8624" "#FF7F1F"
                            "#FF771A" "#FF771A" "#FF771A" "#FF771A" "#FF771A"
                            "#FF771A" "#FF771A" "#FF771A" "#FF771A" "#FF771A"
                            "#FF771A" "#FF771A" "#FF771A" "#FF771A" "#FF771A"))

; Draws a rectangle whose top-left corner is at (X, Y) with width W, height H (in pixels), and color C.
(define (rect w h x y c)
  (teleport x y)
  (color c)
  (setheading 90)
  (begin_fill)
  (fd (- w 1))
  (rt 90)
  (fd (- h 1))
  (rt 90)
  (fd (- w 1))
  (rt 90)
  (fd (- h 1))
  (end_fill))

; Draws a sequence of rectangles for each element in COLORS all of width W and height H (going up to down) to make a
; gradient whose top-left corner is at (X, Y). COLORS is a Scheme list of hexadecimal colors, each rectangle has its
; respective color.
(define (gradient w h x y colors)
  (if (not (null? colors))
    (begin
      (rect w h x y (car colors))
      (gradient w h x (- y h) (cdr colors)))))



; Triangle stuff

; Defining specific properties of the triangles to eventually draw (used in double-triangle-fn)
(define tri_length1 120)
(define tri_length2 108)
(define tri_color1 "#351A00")
(define tri_color2 "#fffdf9")

; Draws an equilateral triangle whose bottom-left corner is at (X, Y) with side length LENGTH and color C.
(define (triangle length x y c)
  (teleport x y)
  (color c)
  (setheading 30)
  (begin_fill)
  (fd (- length 1))
  (rt 120)
  (fd (- length 1))
  (rt 120)
  (fd (- length 1))
  (end_fill))

; Draws a double triangle whose bottom-left corner is at (X, Y), comprising of an outer triangle of length LENGTH1
; and color C1, and an inner triangle of length LENGTH2 and color C2.
; The variable y_offset_factor is a scaling factor for y_offset to make the double triangle look more balanced
; given the mathematical expression
(define (double-triangle length1 length2 x y c1 c2)
  (triangle length1 x y c1)
  (define x_offset (quotient (- length1 length2) 2))
  (define y_offset_factor 1.6)
  (define y_offset (quotient
                     (quotient (- (quotient (* length1 (sqrt 3)) 2) (quotient (* length2 (sqrt 3)) 2)) 2)
                     y_offset_factor))
  (triangle length2 (+ x x_offset) (+ y y_offset) c2))


; Draws a row of K triangles using a TRI_FN taking in two arguments (coordinates) with distance SPACING between the
; bottom-left corners of each triangle in the row, whose first triangle's bottom-left corner is at (X, Y).
(define (triangle-row k tri-fn spacing x y)
  (if (> k 0)
    (begin
      (tri-fn x y)
      (triangle-row (- k 1) tri-fn spacing (+ x spacing) y))))

; Uses variables defined at the top of the triangle section
(define (double-triangle-fn x y)
  (double-triangle tri_length1 tri_length2 x y tri_color1 tri_color2))



; Electricity stuff

(define (elec-1 x y heading)
  (teleport x y)
  (color "#80F9FF")
  (setheading heading)
  (begin_fill)
  (lt 25) (fd 50)
  (lt 35) (fd 60)
  (rt 55) (fd 75)
  (rt 40) (fd 40)
  (lt 30) (fd 55)
  (lt 35) (fd 30)
  (lt 155) (fd 30)
  (rt 15) (fd 40)
  (rt 30) (fd 20)
  (rt 85) (fd 40)
  (rt 25) (fd 20)
  (rt 20) (fd 10)
  (lt 130) (fd 10)
  (lt 60) (fd 30)
  (lt 30) (fd 40)
  (rt 40) (fd 10)
  (rt 5) (fd 95)
  (lt 60) (fd 60)
  (rt 50) (fd 45)
  (goto x y)
  (end_fill))

(define (elec-2 x y heading)
  (teleport x y)
  (color "#80F9FF")
  (setheading heading)
  (begin_fill)
  (lt 25) (fd 50)
  (lt 35) (fd 60)
  (rt 55) (fd 95)
  (lt 60) (fd 40)
  (rt 25) (fd 20)
  (rt 20) (fd 10)
  (lt 130) (fd 10)
  (lt 60) (fd 30)
  (lt 30) (fd 40)
  (rt 55) (fd 10)
  (rt 5) (fd 80)
  (lt 60) (fd 65)
  (rt 50) (fd 45)
  (goto x y)
  (end_fill))



(define (draw)
  (gradient 1000 25 -500 500 background-colors)
  (triangle-row 4 double-triangle-fn 250 -435 340)
  (triangle-row 5 double-triangle-fn 250 -560 140)
  (triangle-row 4 double-triangle-fn 250 -435 -60)
  (triangle-row 5 double-triangle-fn 250 -560 -260)
  (triangle-row 4 double-triangle-fn 250 -435 -460)
  (elec-1 -500 -400 90)
  (elec-2 500 -300 270)
  (hideturtle)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
