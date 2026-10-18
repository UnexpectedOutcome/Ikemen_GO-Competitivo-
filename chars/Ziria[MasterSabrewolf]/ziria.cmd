
;| Super Motions |--------------------------------------------------------
[Command]
name = "mbt"
command = ~D, B, F, a
[Command]
name = "mbt2"
command = ~D, B, F, a

[Command]
name = "mpf"
command = ~D, B, F, b

[Command]
name = "mtf"
command = ~D, B, F, c
;-| Special Motions |------------------------------------------------------
[Command]
name = "shuriken"
command = ~D, DF, F, a
[Command]
name = "shuriken2"
command = ~D, DF, F, b
[Command]
name = "shuriken3"
command = ~D, DF, F, c

[Command]
name = "bomb"
command = ~D, DF, F, x
[Command]
name = "bomb2"
command = ~D, DF, F, y
[Command]
name = "bomb3"
command = ~D, DF, F, z

[Command]
name = "bombp"
command = ~D, DB, B, x
[Command]
name = "bombp2"
command = ~D, DB, B, y
[Command]
name = "bombp3"
command = ~D, DB, B, z

;-----------------
[Command]
name = "spulo"
command = ~D, U

[Command]
name = "spulofwd"
command = D, UF

[Command]
name = "spulobck"
command = D, UB

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "UU"
command = U, U
time = 15

[Command]
name = "DD"
command = D, D
time = 15

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;=========================================================================
[State -1]
type = changestate
value = 4000
triggerall = command = "mbt" 
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 4001
triggerall = command = "mbt2" 
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = changestate
value = 4010
triggerall = command = "mpf" 
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = changestate
value = 4020
triggerall = command = "mtf"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
;-----------------------------------------------------------------------
[State -1]
type = changestate
value = 1000
triggerall = command = "shuriken"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 2000
triggerall = command = "shuriken"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1001
triggerall = command = "shuriken2"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 2001
triggerall = command = "shuriken2"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1002
triggerall = command = "shuriken3"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 2002
triggerall = command = "shuriken3"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1]
type = changestate
value = 1050
triggerall = command = "bomb"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1060
triggerall = command = "bomb"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1050
triggerall = command = "bomb2"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1060
triggerall = command = "bomb2"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1050
triggerall = command = "bomb3"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1060
triggerall = command = "bomb3"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1]
type = changestate
value = 1070
triggerall = command = "bombp"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1070
triggerall = command = "bombp2"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 1070
triggerall = command = "bombp3"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;feng
[State -1]
type = ChangeState
value = 2020
triggerall = command = "holda"
triggerall = command = "holdb"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2020
triggerall = command = "holda"
triggerall = command = "holdc"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2020
triggerall = command = "holdb"
triggerall = command = "holdc"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2023
triggerall = command = "holdx"
triggerall = command = "holdy"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2023
triggerall = command = "holdz"
triggerall = command = "holdx"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2023
triggerall = command = "holdy"
triggerall = command = "holdz"
trigger1 = statetype = S
trigger1 = ctrl = 1
:--------------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command  = "s"
triggerall = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Pulo
[State -1]
type = ChangeState
value = 70
triggerall = statetype != A 
trigger1 = command = "spulo"
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Pulo Frente
[State -1]
type = ChangeState
value = 70
triggerall = statetype != A 
trigger1 = command = "spulofwd"
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Pulo Tras
[State -1]
type = ChangeState
value = 70
triggerall = statetype != A 
trigger1 = command = "spulobck"
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;===========================================================================
;-----------------------------------------------------------
; Stand golpes
;-----------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown" && P2BodyDist X < 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown" && P2BodyDist X > 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 201
triggerall = command = "b"
triggerall = command != "holddown" && P2BodyDist X < 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 202
triggerall = command = "b"
triggerall = command != "holddown" && P2BodyDist X > 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 203
triggerall = command = "c"
triggerall = command != "holddown" && P2BodyDist X < 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 204
triggerall = command = "c"
triggerall = command != "holddown" && P2BodyDist X > 5
trigger1 = statetype = S
trigger1 = ctrl = 1
;----
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown" && P2BodyDist X < 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 211
triggerall = command = "x"
triggerall = command != "holddown" && P2BodyDist X > 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown" && P2BodyDist X < 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = command != "holddown" && P2BodyDist X > 5
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 213
triggerall = command = "z"
triggerall = command != "holddown" 
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------------------------
; Crouch golpes
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 401
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 402
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 412
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;-----------------------------------------------------------
; Air golpes
;-----------------------------------------------------------
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 601
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 602
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 611
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 612
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-----------------------------------------------------------------







