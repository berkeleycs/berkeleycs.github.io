;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Two Pretty Best Friends
;;;
;;; Description:
;;;    I ain't never seen
;;;    two pretty best friends until
;;;    Denero-Farid.

; sets turtle w/color c at coords (x, y)
(define (color-goto x y c)
  (pu)
  (color c)
  (goto x y)
  (pd)
  (begin_fill)
)

; does consecutive seth and fd command pairs
(define (seth-fd lst)
  (if (null? lst)
    (end_fill)
    (begin
      (seth (car (car lst)))
      (fd (car (cdr (car lst))))
      (seth-fd (cdr lst))))
)

; draw and fill circle at (x, y)
(define (draw-circle x y r c)
  (color-goto x y c)
  (circle r)
  (end_fill)
)

; draw and fill rectangle w/top left corner at (x, y)
(define (draw-rect x y width height angle c)
  (color-goto x y c)
  (seth angle)
  (fd width)
  (rt 90)
  (fd height)
  (rt 90)
  (fd width)
  (rt 90)
  (fd height)
  (end_fill)
)

(define (draw-chat-bubble x y side width height c)
  (draw-rect x y width height 90 c)
  (if (= side 0) ; chat from left side
    (begin
      (color-goto (+ x (/ width 8)) (- y height) c)
      (seth 180)
      (fd (/ width 4))
      (lt 135)
      (fd height))
    (begin
      (color-goto (- (+ x width) (/ width 8)) (- y height) c)
      (seth 180)
      (fd (/ width 4))
      (rt 135)
      (fd height)))
  (end_fill)
)

(define (draw-shirt x y c )
  (color-goto x y c)
  (seth-fd '((40 40) (67 115) (90 80) (113 115) (140 40)))
)

(define (draw)
  ; zoom
  (bgcolor "#000000")
  (draw-rect (- 500) 500 1000 25 90 "#26282B") ; top bar
  (draw-circle (- 480) 488 6 "#FF605C") ; red close window button
  (draw-circle (- 460) 488 6 "#FFBD44") ; yellow minimize window button
  (draw-circle (- 440) 488 6 "#00CA4E") ; green maximize window button
  (draw-rect (- 500) (- 425) 1000 75 90 "#26282B") ; bottom bar
  (draw-chat-bubble (- 110) (- 448) 0 30 20 "#E5E5E5") ; chat button
  (draw-rect (- 5) (- 450) 15 20 90 "#E5E5E5") ; raise hand button
  (color-goto (- 5) (- 450) "#E5E5E5")
  (seth-fd '((60 9) (120 8)))
  (color-goto (- 5) (- 470) "#E5E5E5")
  (seth-fd '((120 9) (60 9)))
  (draw-rect 8 (- 467) 10 4 45 "#E5E5E5")
  (color-goto 16 (- 460) "#E5E5E5")
  (seth-fd '((80 2) (180 2)))
  (draw-chat-bubble 90 (- 462) 0 20 12 "#E5E5E5") ; q & a button
  (draw-chat-bubble 100 (- 448) 1 20 12 "#E5E5E5")
  (draw-rect 410 (- 448) 75 30 90 "#E52D2D") ; leave button
  (draw-rect (- 485) 225 480 400 90 "#F2F2F2") ; denero zoom background
  (color-goto (- 485) 225 "#E7E19E")
  (seth-fd '((90 60) (150 100) (180 313) (270 110)))
  (draw-rect (- 375) 140 370 315 90 "#F1EDC6")
  (draw-rect 5 225 480 400 90 "#8D7966") ; farid zoom background
  (draw-rect 45 225 40 400 90 "#AFA193")
  (draw-rect 125 225 40 400 90 "#706051")
  (draw-rect 205 225 40 400 90 "#AFA193")
  (draw-rect 285 225 40 400 90 "#706051")
  (draw-rect 365 225 40 400 90 "#AFA193")
  (draw-rect 445 225 40 400 90 "#706051")

  ; denero
  (draw-shirt (- 425) (- 175) "#0172C1") ; shirt
  (color-goto (- 277) (- 130) "#FFFFFF")
  (seth-fd '((130 10) (115 10) (90 20) (65 10) (50 10)
            (260 10) (270 35) (280 10)))
  (draw-rect (- 300) (- 30) 100 80 90 "#FED4B0") ; neck
  (color-goto (- 300) (- 105) "#FED4B0")
  (seth-fd '((235 10) (120 40) (90 45) (60 40) (290 10)))
  (color-goto (- 300) (- 105) "#FEC697")
  (seth-fd '((235 10) (120 40) (90 10) (330 30) (0 30)
            (140 15) (90 40) (45 41) (0 15) (270 100)))
  (color-goto (- 317) 50 "#FEC697") ; ears
  (seth-fd '((315 10) (235 10) (175 40) (130 17)))
  (color-goto (- 185) 50 "#FED4B0")
  (seth-fd '((45 10) (125 10) (185 40) (230 17)))
  (color-goto (- 315) 70 "#FED4B0") ; head
  (seth-fd '((181 90) (150 20) (135 45) (145 10)
            (90 40) (30 5) (45 40) (35 22) (1 90)))
  (draw-circle (- 185) 70 65 "#FED4B0")
  (color-goto (- 318) 35 "#4C2917") ; hair
  (seth-fd '((345 15) (355 65) (40 60) (100 45)
            (85 40) (145 40) (180 65) (185 20)
            (345 15) (335 55) (290 30) (255 55) (210 40)))
  (draw-circle (- 290) 50 6 "#4C2917") (draw-circle (- 224) 50 6 "#4C2917") ; eyes
  (draw-circle (- 287) 49 3 "#000000") (draw-circle (- 221) 49 3 "#000000")
  (draw-circle (- 284) 51 1 "#FFFFFF") (draw-circle (- 218) 51 1 "#FFFFFF")
  (color-goto (- 307) 60 "#4C2917") ; eyebrows
  (seth-fd '((60 17) (100 25) (150 7) (280 25) (260 20)))
  (color-goto (- 195) 60 "#4C2917")
  (seth-fd '((300 17) (260 25) (210 7) (80 25) (100 20)))
  (color-goto (- 255) 50 "#FEC697") ; nose
  (seth-fd '((185 25) (200 25) (105 15)
            (75 15) (300 5) (260 10) (280 5)))
  (pu) (color "#874929") (goto (- 311) 55) (pd) ; glasses
  (seth 75) (fd 7) (seth 85) (fd 15) (seth 95) (fd 25) (seth 105) (fd 7)
  (seth 185) (fd 15) (seth 200) (fd 10)
  (seth 265) (fd 25) (seth 275) (fd 15) (seth 285) (fd 5)
  (seth 350) (fd 25)
  (pu) (goto (- 257) 50) (pd)
  (seth 90) (fd 12)
  (pu) (goto (- 244) 54) (pd)
  (seth 75) (fd 7) (seth 85) (fd 25) (seth 95) (fd 15) (seth 105) (fd 7)
  (seth 190) (fd 25)
  (seth 255) (fd 5) (seth 265) (fd 15) (seth 275) (fd 25)
  (seth 340) (fd 10) (seth 355) (fd 15)
  (draw-rect (- 311) 50 7 2 275 "#874929")
  (draw-rect (- 192) 50 7 2 85 "#874929")
  (color-goto (- 277) (- 30) "#FFFFFF") ; mouth
  (seth-fd '((130 10) (115 10) (90 20) (65 10) (50 10)
            (260 10) (270 35) (280 10)))
  (color-goto (- 278) (- 30) "#000000")
  (seth-fd '((130 5) (0 2) (290 3)))
  (color-goto (- 224) (- 30) "#000000")
  (seth-fd '((230 4) (0 3) (70 3)))

  ; farid
  (draw-shirt 65 (- 175) "#B2B7EC") ; shirt
  (color-goto 175 (- 130) "#9EA4E7")
  (seth-fd '((50 15) (120 50)))
  (color-goto 245 (- 145) "#9EA4E7")
  (seth-fd '((60 50) (130 15)))
  (draw-rect 187 (- 30) 100 80 90 "#F2AB85") ; neck
  (color-goto 187 (- 110) "#F2AB85")
  (seth-fd '((120 50) (90 13) (60 50)))
  (color-goto 187 (- 110) "#F09B6E")
  (seth-fd '((120 50) (90 7) (315 45) (0 35) (130 30) (90 20)
            (50 17) (40 40) (0 10) (270 100)))
  (color-goto 172 50 "#F09B6E") ; ears
  (seth-fd '((315 10) (235 10) (175 40) (130 10) (50 5)))
  (color-goto 302 50 "#F2AB85")
  (seth-fd '((45 10) (125 10) (185 40) (230 10) (310 5)))
  (color-goto 170 60 "#F2AB85") ; head
  (seth-fd '((178 80) (140 60) (130 20) (90 20) (50 20) (40 60) (2 80)))
  (draw-circle 302 70 65 "#F2AB85")
  (color-goto 170 40 "#000000") ; hair
  (seth-fd '((345 15) (357 65) (60 60) (90 45) (120 60) (185 65) (200 20)
            (350 15) (355 55) (300 30) (270 55) (240 35)))
  (draw-circle 202 55 6 "#4C2917") (draw-circle 266 55 6 "#4C2917") ; eyes
  (draw-circle 204 53 3 "#000000") (draw-circle 268 53 3 "#000000")
  (draw-circle 208 53 1 "#FFFFFF") (draw-circle 272 53 1 "#FFFFFF")
  (color-goto 187 60 "#000000") ; eyebrows
  (seth-fd '((45 13) (100 25) (150 7) (280 25)))
  (color-goto 287 60 "#000000")
  (seth-fd '((315 13) (260 25) (210 7) (80 25)))
  (color-goto 232 50 "#F09B6E") ; nose
  (seth-fd '((185 25) (200 25) (80 7) (105 10)
            (75 10) (100 7) (300 7) (260 10) (280 5)))
  (color-goto 212 (- 25) "#FFFFFF") ; mouth
  (seth-fd '((130 10) (115 13) (90 15) (65 13) (50 10)
            (255 13) (270 25) (285 13)))
  (color-goto 212 (- 25) "#000000")
  (seth-fd '((130 4) (0 3)))
  (color-goto 266 (- 25) "#000000")
  (seth-fd '((230 5) (0 3)))

  (hideturtle)
  (exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
