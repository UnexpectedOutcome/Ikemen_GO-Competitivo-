;--------------------------------------------------------------------
;====================================================================
; ‰Ô•—‰@ Š[—…ƒRƒ}ƒ“ƒh•\
;====================================================================
;-| ’´•KE‹Z |--------------------------------------------------------
[Command]
name = "Nioh"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command] 
name = "Kenbu"
command = ~D, DB, B, D, DB, B, y
time = 30

;-| •KE‹Z |----------------------------------------------------------

;‰~SE
[Command]
name = "enshinsatsu"
command = ~F, D, B, F, y
time = 30

;‚©‚¿‚ ‚°
[Command]
name = "kachiage"
command = ~F, D, DF, x
time = 20

;’nkŠÛ
[Command]
name = "jishinmaru"
command = ~F, D, DF, a
time = 20

;‚Â‚©‚Ş‚¼`‘g‚İ“Vˆä
[Command]
name = "tukamuzo-X"
command = ~B, D, DB, x
time = 20

;‚Â‚©‚Ş‚¼`Î“ª
[Command]
name = "tukamuzo-A"
command = ~B, D, DB, a
time = 20

;‚Â‚©‚Ş‚¼`K‚ß‚­‚è
[Command]
name = "tukamuzo-Y"
command = ~B, D, DB, y
time = 20

;Š…II
[Command]
name = "katsu"
command = ~D, DF, F, x
time = 10

;‚İ‚¾‚ê‚¤‚¿
[Command]
name = "midareuchi"
command = ~D, DF, F, y
time = 10

;-| ‚Q‰ñ‰Ÿ‚µ‹Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ‚QE‚RŒÂ‚Ì“¯‰Ÿ‚µ‹Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| •ûŒü‚Æƒ{ƒ^ƒ“‚Åo‚·‹Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ƒ{ƒ^ƒ“İ’èi‚¢‚¶‚ç‚È‚¢j|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| ‰Ÿ‚µ‚Á‚Ï‚È‚µİ’èi‚¢‚¶‚ç‚È‚¢j-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdDF"
command = /$DF
time = 1

; ‰º‚Ì‹Lq«‚Íâ‘Î‚ÉÁ‚³‚È‚¢‚Å‚­‚¾‚³‚¢B
[Statedef -1]

;---------------------------------------------------------------------------
;===========================================================================
; ’´•KE‹Z
;===========================================================================
;---------------------------------------------------------------------------
; m‰¤”škE
[State -1, NiohBakusinsatsu]
type = ChangeState
value = 3000
triggerall = command = "Nioh"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
; Œ•‘
[State -1, Kenbu]
type = ChangeState
value = 3100
triggerall = command = "Kenbu"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;===========================================================================
; •KE‹Z
;===========================================================================
;---------------------------------------------------------------------------
; ‰~SE
[State -1, enshinsatsu]
type = ChangeState
value = 1700
triggerall = command = "enshinsatsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; ‚©‚¿‚ ‚°
[State -1, kachiage]
type = ChangeState
value = 1300
triggerall = command = "kachiage"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; ’nkŠÛ
[State -1, Jishinmaru]
type = ChangeState
value = 1100
triggerall = command = "jishinmaru"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ‚Â‚©‚Ş‚¼`‘g‚İ“Vˆä
[State -1, tukamuzo-X]
type = ChangeState
value = 1400
triggerall = command = "tukamuzo-X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; ‚Â‚©‚Ş‚¼`Î“ª
[State -1, tukamuzo-A]
type = ChangeState
value = 1500
triggerall = command = "tukamuzo-A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; ‚Â‚©‚Ş‚¼`K‚ß‚­‚è
[State -1, tukamuzo-Y]
type = ChangeState
value = 1600
triggerall = command = "tukamuzo-Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; Š…II
[State -1, katsu]
type = ChangeState
value = 1000
triggerall = command = "katsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; ‚İ‚¾‚ê‚¤‚¿
[State -1, midareuchi]
type = ChangeState
value = 1200
triggerall = command = "midareuchi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;===========================================================================
; “ÁêUŒ‚
;===========================================================================
;---------------------------------------------------------------------------
;—§‚¿‰º’iUŒ‚iƒŒƒo[‘O“ü‚êj
[State -1, Standing Strong Kick]
type = ChangeState
value = 231
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;‘«•¥‚¢
[State -1, Standing Strong Kick]
type = ChangeState
value = 431
triggerall = command = "b"
triggerall = command = "holdDF"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;•sˆÓ‘Å‚¿
[State -1, Standing Strong Kick]
type = ChangeState
value = 700
triggerall = command = "x"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚Ô‚¿‚Ì‚ß‚µ
[State -1, Standing Strong Kick]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;•SŠÑ—‚Æ‚µ
[State -1, Standing Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;“¥‚İ‚İ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;‘Ş‚«‚İ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; “Ë‚«”ò‚Î‚µ
[State -1, Grab Fwd]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = P2BodyDist X <= 20
trigger1 = ctrl

;---------------------------------------------------------------------------
; ˆø‚Á’£‚è
[State -1, Grab Fwd]
type = ChangeState
value = 810
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = statetype != A
triggerall = P2BodyDist X <= 20
trigger1 = ctrl

;---------------------------------------------------------------------------
; ‰ñ‚è‚İ
[State -1, Taunt]
type = ChangeState
value = 720
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = P2BodyDist X <= 60
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ”ğ‚¯
[State -1, Taunt]
type = ChangeState
value = 710
triggerall = command = "z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
; —§‚¿’ÊíUŒ‚
;===========================================================================
;---------------------------------------------------------------------------
;—§‚¿ãUŒ‚i‰“‹——£j
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿ãUŒ‚i‹ß‹——£j
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿’†UŒ‚i‰“‹——£j
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿’†UŒ‚i‹ß‹——£j
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿‹­UŒ‚i‰“‹——£j
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿‹­UŒ‚i‰“‹——£j
[State -1, Stand Light Kick]
type = ChangeState
value = 221
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿R‚èUŒ‚iƒjƒ…[ƒgƒ‰ƒ‹j
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
; ‚µ‚á‚ª‚İ’ÊíUŒ‚
;===========================================================================
;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãUŒ‚i‰“‹——£j
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2bodydist X >= 20
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãUŒ‚i‹ß‹——£j
[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = p2bodydist X <= 20
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ’†UŒ‚i‰“‹——£j
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = p2bodydist X >= 20
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ’†UŒ‚i‹ß‹——£j
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = p2bodydist X <= 20
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­UŒ‚i‰“‹——£j
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = p2bodydist X >= 20
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­UŒ‚i‹ß‹——£j
[State -1, Crouching Strong Punch]
type = ChangeState
value = 421
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = p2bodydist X <= 20
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İR‚è
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
; ‹ó’†’ÊíUŒ‚
;===========================================================================
;---------------------------------------------------------------------------
;‹ó’†ãUŒ‚iÎ‚ßj
[State -1, Jump Light Kick]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†ãUŒ‚i‚’¼j
[State -1, Jump Light Kick]
type = ChangeState
value = 601
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;‹ó’†’†UŒ‚iÎ‚ßj
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†’†UŒ‚i‚’¼j
[State -1, Jump Light Kick]
type = ChangeState
value = 611
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;‹ó’†‹­UŒ‚iÎ‚ßj
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‹­UŒ‚i‚’¼j
[State -1, Jump Light Kick]
type = ChangeState
value = 621
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;‹ó’†R‚èUŒ‚
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
