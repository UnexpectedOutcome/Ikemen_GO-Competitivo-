
[Remap] 
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
[Defaults] 
command.time = 15
command.buffer.time = 3

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+y

[Command]
name = "QCF_PP"
command = ~D, DF, F, y+z

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+z

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+b

[Command]
name = "QCF_KK"
command = ~D, DF, F, b+c

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+c

[Command]
name = "Z-mo_KK"
command = ~F, DF, F, a+b

[Command]
name = "Z-mo_KK"
command = ~F, DF, F, b+c

[Command]
name = "Z-mo_KK"
command = ~F, DF, F, a+c

[Command] ;Tap b rapidly
name = "5a"
command = a,a,a,a
time = 20

[Command] ;Tap b rapidly
name = "5b"
command = b, b, b, b
time = 19

[Command] ;Tap b rapidly
name = "5c"
command = c, c, c, c
time = 17

[Command] ;Tap b rapidly
name = "TAP"
command = a,a,a,a,a,a
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = b, b,b,b,b,b
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = c,c,c,c,c,c
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = a,c,a,b,a,c
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = b,a,b,a,b,a
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = c,b,c,b,c,c
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = x,x,x,x,x,x
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = y,y,y,y,y,y
time = 30

[Command] ;Tap b rapidly
name = "TAP"
command = z,z,z,z,z,z
time = 30

[Command]
name = "QCF_x"
command = ~B, $D, F, x

[Command]
name = "QCF_y"
command = ~B, $D, F, y

[Command]
name = "QCF_z"
command = ~B, $D, F, z


[Command]
name = "QCF_x"
command = ~B, $D, F, ~x
time = 10
buffer.time = 10

[Command]
name = "QCF_y"
command = ~B, $D, F, ~y
time = 10
buffer.time = 10

[Command]
name = "QCF_z"
command = ~B, $D, F, ~z
time = 10
buffer.time = 10

[Command]
name = "QCB_a"
command = ~F, $D, B, a

[Command]
name = "QCB_b"
command = ~F, $D, B, b

[Command]
name = "QCB_c"
command = ~F, $D, B, c


[Command]
name = "QCB_a"
command = ~F, $D, B, ~a
time = 10
buffer.time = 10

[Command]
name = "QCB_b"
command = ~F, $D, B, ~b
time = 10
buffer.time = 10

[Command]
name = "QCB_c"
command = ~F, $D, B, ~c
time = 10
buffer.time = 10

[Command]
name = "Z-mo_a"
command = ~F, DF, F, a

[Command]
name = "Z-mo_b"
command = ~F, DF, F, b

[Command]
name = "Z-mo_c"
command = ~F, DF, F, c


[Command]
name = "Z-mo_a"
command = ~F, DF, F, ~a
time = 10
buffer.time = 10

[Command]
name = "Z-mo_b"
command = ~F, DF, F, ~b
time = 10
buffer.time = 10

[Command]
name = "Z-mo_c"
command = ~F, DF, F, ~c
time = 10
buffer.time = 10

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z
;Required (do not remove) 
	 
[Command] 
name = "highjump"
command = $D, $U

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "Kaku Kyaku Raku"
command = /$DB,c
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1
  
[Statedef -1] 


[State -1]
type = ChangeState
value = 3040
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "Z-mo_KK"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 299])
trigger3 = (stateno = [400, 499])
trigger4 = (stateno = [1000,1020]) && Animelem = 8,>0
trigger5 = (stateno = [1050,1070])


[State -1]
type = ChangeState
value = 3050
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 299])
trigger3 = (stateno = [400, 499])
trigger4 = (stateno = [1000,1020]) && Animelem = 8,>0
trigger5 = (stateno = [1050,1070])





[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 299])
trigger3 = (stateno = [400, 499])
trigger4 = (stateno = [1000,1020]) && Animelem = 8,>0
trigger5 = (stateno = [1050,1070])



[State -1]
type = changestate
value = 1320
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Z-mo_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]
;------------------------------------------------------
[State -1]
type = changestate
value = 1310
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Z-mo_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]
;------------------------------------------------------
[State -1]
type = changestate
value = 1300
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Z-mo_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]


[State -1]
type = changestate
value = 1370
triggerall = roundstate = 2 && !var(59)
triggerall = command = "QCB_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]
;------------------------------------------------------
[State -1]
type = changestate
value = 1360
triggerall = roundstate = 2 && !var(59)
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]
;------------------------------------------------------
[State -1]
type = changestate
value = 1350
triggerall = roundstate = 2 && !var(59)
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]


[State -1]
type = changestate
value = 1050
triggerall = roundstate = 2 && !var(59)
triggerall = command = "5a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------

[State -1]
type = changestate
value = 1060
triggerall = roundstate = 2 && !var(59)
triggerall = command = "5b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
[State -1]
type = changestate
value = 1070
triggerall = roundstate = 2 && !var(59)
triggerall = command = "5c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]

[State -1]
type = changestate
value = 1160
triggerall = roundstate = 2 && !var(59)
triggerall = command = "5a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
;---------------------------------------------------------------------------

[State -1]
type = changestate
value = 1170
triggerall = roundstate = 2 && !var(59)
triggerall = command = "5b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
[State -1]
type = changestate
value = 1175
triggerall = roundstate = 2 && !var(59)
triggerall = command = "5c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

[State -1, Fireball X]
type = changestate
value = 1000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "QCF_x"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]

;------------------------------------------------------
[State -1, Fireball Y]
type = changestate
value = 1010
triggerall = roundstate = 2 && !var(59)
triggerall = command = "QCF_y"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]

;------------------------------------------------------
[State -1, Fireball Z]
type = changestate
value = 1020
triggerall = roundstate = 2 && !var(59)
triggerall = command = "QCF_z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]


;Stand Punch Throw 
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;Air Punch Throw
[State -1]
type = ChangeState
value = 910
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 110
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 110
triggerall = !var(55)
triggerall = statetype = A && Pos Y < -(const(movement.airjump.height))
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "recovery"

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

; ‹ó’†ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = var(2) && !var(3)

; ƒLƒƒƒ“ƒZƒ‹ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 250  && movehit && time>11 && target,statetype = A && time<22

; ‚µ‚á‚ª‚Ý
[State 106, ChangeState]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1
 
; ƒAƒhƒoƒ“ƒVƒ“ƒOƒK[ƒh 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = (command = "x" && command = "y") || (command = "x" && command = "z") || (command = "y" && command = "z")
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1
 
; ’§”­ 
[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && time > 3
 
;Wall Cling
[State -1, Wall]
type = ChangeState
trigger1 = statetype = A && ctrl
trigger1 = command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger1 = vel x < 0 && pos y <= -92
trigger2 = statetype = A && ctrl
trigger2 = command = "holdback"
trigger2 = FrontEdgeBodyDist <= 10
trigger2 = vel x > 0 && pos y <= -92
value = 115
ctrl = 0

; —§‚¿ŽãP 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && animelem = 5,> 0
trigger4 = stateno = 400 && animelem = 4,> 0

; —§‚¿’†P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; —§‚¿‹­P
[State -1]
type = ChangeState
value = 221
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; —§‚¿‹­P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; —§‚¿ŽãK
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

; —§‚¿’†K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

; —§‚¿‹­K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact

[State -1]
type = ChangeState
value = 250
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "c"
trigger1 = ctrl

; ‚µ‚á‚ª‚ÝŽãP 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && animelem = 5,> 0
trigger4 = stateno = 400 && animelem = 4,> 0

; ‚µ‚á‚ª‚Ý’†P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; ‚µ‚á‚ª‚Ý‹­P
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; ‚µ‚á‚ª‚ÝŽãK
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

; ‚µ‚á‚ª‚Ý’†K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact



[State -1]
type = changestate
value = 451
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Kaku Kyaku Raku"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,499]

; ‚µ‚á‚ª‚Ý‹­K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 102 || stateno = 106)  && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
 
; ƒWƒƒƒ“ƒvŽãP 
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ƒWƒƒƒ“ƒv’†P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

; ƒWƒƒƒ“ƒv‹­P
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

; ƒWƒƒƒ“ƒvŽãK
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact


; ƒWƒƒƒ“ƒv’†K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

; ƒWƒƒƒ“ƒv‹­K
[State -1]
type = ChangeState
value = 651
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holdfwd"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

; ƒWƒƒƒ“ƒv‹­K
[State -1]
type = ChangeState
value = 652
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact


; ƒWƒƒƒ“ƒv‹­K
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
