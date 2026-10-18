[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = D,B,D,B,b,c,x,y,z,x,y,a,b,x,z,c,c,x,y,y,y,z,z,a,a,b,c,x,b,a,b,x

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.


command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "DFA1"
command = D,F,a
time = 15

[command]
name = "DFB1"
command = D,F,b
time = 15

[command]
name = "DFC1"
command = D,F,c
time = 15

[command]
name = "DBA1"
command = D,B,a
time = 15

[command]
name = "DBB1"
command = D,B,b
time = 15

[command]
name = "DBC1"
command = D,B,c
time = 15

[Command]
name = "SPECIAL1"
command = D,F,D,F,a+b
time = 40

[Command]
name = "SPECIAL2"
command = D,F,D,F,b+c
time = 40

[Command]
name = "SPECIAL3"
command = D,B,D,B,a+b
time = 40

[Command]
name = "SPECIAL4"
command = D,B,D,B,b+c
time = 40
;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
;----AI-----------------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F, U, D, F
time = 0
[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 0
[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 0
[Command]
name = "CPU4"
command = U, F, U, B, U, D, F
time = 0
[Command]
name = "CPU5"
command = B, B, B, U, B, U, D, F
time = 0
[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 0
[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 0
[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 0
[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 0
[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 0

[Statedef -1]

[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
v = 59
value = 1

[State -1, SPECIAL1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = power >= 1000
trigger1 = command = "SPECIAL1"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SPECIAL2]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = power >= 1000
trigger1 = command = "SPECIAL2"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SPECIAL3]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = power >= 2000
trigger1 = command = "SPECIAL3"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, SPECIAL4]
type = ChangeState
value = 4000
triggerall = var(59) != 1
triggerall = power >= 3000
trigger1 = command = "SPECIAL4"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, DFA1]
type = ChangeState
value = 200
triggerall = var(59) != 1
trigger1 = command = "DFA1"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "DFA1"
trigger2 =  stateno = 230
trigger2 = (animelemtime(3) > 0)
trigger3 = command = "DFA1"
trigger3 =  stateno = 240
trigger3 = (animelemtime(3) > 0)
trigger4 = command = "DFA1"
trigger4 =  stateno = 250
trigger4 = (animelemtime(3) > 0)
trigger5 = command = "DFA1"
trigger5 =  stateno = 303
trigger5 = (animelemtime(3) > 0)
trigger6 = command = "DFA1"
trigger6 =  stateno = 430
trigger6 = (animelemtime(3) > 0)
trigger7 = command = "DFA1"
trigger7 = stateno = 400
trigger7 = (animelemtime(5) > 0)

[State -1, DFB1]
type = ChangeState
value = 300
triggerall = var(59) != 1
trigger1 = command = "DFB1"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "DFB1"
trigger2 =  stateno = 230
trigger2 = (animelemtime(3) > 0)
trigger3 = command = "DFB1"
trigger3 =  stateno = 240
trigger3 = (animelemtime(3) > 0)
trigger4 = command = "DFB1"
trigger4 =  stateno = 250
trigger4 = (animelemtime(3) > 0)
trigger5 = command = "DFB1"
trigger5 =  stateno = 430
trigger5 = (animelemtime(3) > 0)
trigger6 = command = "DFB1"
trigger6 = stateno = 400
trigger6 = (animelemtime(5) > 0)

[State -1, DFC1]
type = ChangeState
value = 400
triggerall = var(59) != 1
trigger1 = command = "DFC1"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "DFC1"
trigger2 =  stateno = 230
trigger2 = (animelemtime(3) > 0)
trigger3 = command = "DFC1"
trigger3 =  stateno = 240
trigger3 = (animelemtime(3) > 0)
trigger4 = command = "DFC1"
trigger4 =  stateno = 250
trigger4 = (animelemtime(3) > 0)
trigger5 = command = "DFC1"
trigger5 =  stateno = 303
trigger5 = (animelemtime(3) > 0)
trigger6 = command = "DFC1"
trigger6 =  stateno = 430
trigger6 = (animelemtime(3) > 0)

[State -1, DBA1]
type = ChangeState
value = 500
triggerall = var(59) != 1
trigger1 = command = "DBA1"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, DBA2]
type = ChangeState
value = 501
triggerall = var(59) != 1
trigger1 = command = "a"
trigger1 = stateno = 500
trigger1 = (animelemtime(3) > 0)

[State -1, DBA3]
type = ChangeState
value = 502
triggerall = var(59) != 1
trigger1 = command = "a"
trigger1 = stateno = 501
trigger1 = time > 50

[State -1, DBB1]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = var(0) = 0
triggerall = power >= 1000
triggerall = command = "DBB1"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, DBB2]
type = ChangeState
value = 605
triggerall = var(59) != 1
triggerall = var(0) = 1
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, DBC1]
type = ChangeState
value = 700
triggerall = var(59) != 1
trigger1 = command = "DBC1"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Dash
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;COMBO A1
[State -1, COMBO A1]
type = ChangeState
value = 230
triggerall = var(59) != 1
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = command = "holddown"
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = command = "a"
trigger3 = stateno = 240
trigger3 = (animelemtime(4) > 0)
trigger4 = command = "a"
trigger4 = stateno = 250
trigger4 = (animelemtime(4) > 0)

[State -1, COMBO A2]
type = ChangeState
value = 231
triggerall = var(59) != 1
trigger1 = command = "up_a"
trigger1 = stateno = 230
trigger1 = (animelemtime(4) > 0)

[State -1, COMBO A3]
type = ChangeState
value = 233
triggerall = var(59) != 1
triggerall = movehit
trigger1 = command = "a"
trigger1 = stateno = 231
trigger1 = time > 30
;---------------------------------------------------------------------------
;COMBO B1
[State -1, COMBO B1]
type = ChangeState
value = 240
triggerall = var(59) != 1
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = command = "holddown"
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = command = "b"
trigger3 = stateno = 230
trigger3 = (animelemtime(4) > 0)
trigger4 = command = "b"
trigger4 = stateno = 250
trigger4 = (animelemtime(4) > 0)
;---------------------------------------------------------------------------
;COMBO C1
[State -1, COMBO C1]
type = ChangeState
value = 250
triggerall = var(59) != 1
trigger1 = command = "c"
trigger1 = command!= "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = command = "holddown"
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = command = "c"
trigger3 = stateno = 230
trigger3 = (animelemtime(4) > 0)
trigger4 = command = "c"
trigger4 = stateno = 240
trigger4 = (animelemtime(4) > 0)
;---------------------------------------------------------------------------
[State -1, JATK A1]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "down_a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, JATK A2]
type = ChangeState
value = 631
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, JATK B1]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, JATK C1]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;===================ARTIFICIAL==INTELIGENCE=================================
[State -3, AI GUARD STAND]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 400
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 120
trigger1 = p2statetype = S
trigger2 = (enemy, NumProj >= 1)

[State -3,AI GUARD AIR]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = p2movetype = A || (enemy, NumProj >= 1) ;
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = roundstate = 2 && movetype != H
triggerall = statetype = A
triggerall = random <= 600
triggerall = ctrl
triggerall = stateno != 132
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

[State -3, A1]
type = ChangeState
triggerall = stateno != 100
triggerall = P2bodydist X <= 200
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = random = [200,300]
value = 100

[State -3, AI2]
type = ChangeState
trigger1 = stateno  = 100
trigger1 = var(59) = 1
trigger1 = time > 15
value = ifelse(random < 500, 300,101)

[State -3, AI3]
type = ChangeState
triggerall = stateno != 100
triggerall = P2bodydist X <= 100
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = random = [200,300]
value = 400

[State -3, AI3]
type = ChangeState
triggerall = stateno != 100
triggerall = P2bodydist X <= 50
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = random = [200,300]
value = 230

[State -3, AI4]
type = ChangeState
trigger1 = stateno  = 230
trigger1 = var(59) = 1
trigger1 = (animelemtime(4) > 0)
value = 240

[State -3,AI5]
type = ChangeState
trigger1 = stateno  = 240
trigger1 = var(59) = 1
trigger1 = (animelemtime(4) > 0)
value = 250

[State -3,AI6]
type = ChangeState
trigger1 = stateno  = 250
trigger1 = var(59) = 1
trigger1 = (animelemtime(4) > 0)
value = ifelse(random < 249, 200,40)

[State -3, AI7]
type = ChangeState
trigger1 = stateno  = 400
trigger1 = var(59) = 1
trigger1 = (animelemtime(10) > 0)
value = 250

[State -3, AI8]
type = ChangeState
trigger1 = stateno  = 400
trigger1 = var(59) = 1
trigger1 = (animelemtime(10) > 0)
value = ifelse(random < 249, 105,40)

[State -1, AI9]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = pos y < -60
triggerall = roundstate = 2 && movetype != H
triggerall = p2bodydist y >20
triggerall = random <100
triggerall = p2bodydist x<60
trigger1 = statetype = A
trigger1 = ctrl

[State -1,LVL1 SPECIAL AI]
type = ChangeState
value = ifelse(random < 500, 2000,1000)
triggerall = roundstate = 2 && movetype != H
triggerall = var(59) = 1
triggerall = ctrl
triggerall = statetype = S
trigger1 = power >= 1000

[State -1,SPECIAL3 AI]
type = ChangeState
value = 4000
triggerall = roundstate = 2 && movetype != H
triggerall = var(59) = 1
triggerall = ctrl
triggerall = statetype = S
trigger1 = power >= 3000
