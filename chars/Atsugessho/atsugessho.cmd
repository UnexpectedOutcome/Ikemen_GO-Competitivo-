; The CMD file.

;-| AI Activation Commands |-----------------------------------------------

[command]
name = "AI0"
command = a, y, x, D, F, B, b, U, y, x, D, F, B, b, U,
time = 1

[command]
name = "AI1"
command = a, y, x, b, U, D, F, B
time = 1

[Command]
name = "AI2"
command = D, DF, F, D, DF, a, b, x, y
time = 1

[Command]
name = "AI3"
command = D, DF, F, D, DF, x, y, a, b,
time = 1

[Command]
name = "AI4"
command = F, B, U, a, b, x, y
time = 1

[Command]
name = "AI5"
command = U, F, U, B, x
time = 1

[Command]
name = "AI6"
command = U, D, B, x, F, D, DF, x, y
time = 1

[Command]
name = "AI7"
command = F, F, B, D, DF, F, y
time = 1

[Command]
name = "AI8"
command = U, D, U, z
time = 1

[Command]
name = "AI9"
command = F, B, B, a
time = 1

[Command]
name = "AI10"
command = F, F, B, B, D, DF, F, x
time = 1


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
command = x+a
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

[Command]
name = "Throws"
command = /$F, x
time = 1

[Command]
name = "Throws"
command = /$F, y
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
name = "start"
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

;-| Special Motions |------------------------------------------------------
[Command]
name = "Steam_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "Double_Steam_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "Rapid_x" 
command = ~60$B, F, x
time = 17

[Command]
name = "Rapid_y" 
command = ~60$B, F, y
time = 17

[Command]
name = "Shield_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "Shield_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "turning_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "turning_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "Leap_Body"
command = ~30$D, U, a
time = 20

[Command]
name = "Leap_Body"
command = ~40$D, U, b
time = 20

[Command]
name = "Reflection_x"
command = ~B, DB, D, x
time = 20

[Command]
name = "Reflection_y"
command = ~B, DB, D, y
time = 20

[Command]
name = "Poison_x"
command = ~D, DF, F, D, DF, x
time = 25

[Command]
name = "Body_y"
command = ~D, DB, B, D, DB, y
time = 25

[Command]
name = "Gravitational_a"
command = ~D, DF, F, D, DF, a
time = 25

[Command]
name = "Shield_b"
command = ~D, DB, B, D, DB, b
time = 25


;-| Super Motions |--------------------------------------------------------


[Statedef -1]
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b" || command = "y"
triggerall = statetype = S
triggerall = stateno != 0
trigger1 = command = "holdfwd"
trigger1 = ctrl 
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 3
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Poison Steam
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Poison_x" && NumProj = 0 && var(58) != 1
triggerall = power >= 1000
trigger1 = StateType != A && ctrl 
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Poison Steam Pump Body
[State -1]
type = ChangeState
value = 3010
triggerall = command = "Body_y" && NumProj = 0 && var(58) != 1
triggerall = power >= 1000
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; shield striker
[State -1]
type = ChangeState
value = 3020
triggerall = command = "Shield_b" && NumProj = 0 && var(58) != 1
triggerall = power >= 1000
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Turning Acrobatic Gravitational
[State -1]
type = ChangeState
value = 3030
triggerall = command = "Gravitational_a" && NumProj = 0 && var(58) != 1
triggerall = power >= 1000
trigger1 = StateType != A && ctrl 
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Steam
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Steam_x" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Double Steam
[State -1]
type = ChangeState
value = 1003
triggerall = command = "Double_Steam_y" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Steam In Air
[State -1]
type = ChangeState
value = 1005
triggerall = command = "Steam_x" && NumProj = 0 && var(58) != 1
trigger1 = StateType != S && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Double Steam In Air
[State -1]
type = ChangeState
value = 1007
triggerall = command = "Double_Steam_y" && NumProj = 0 && var(58) != 1
trigger1 = StateType != S && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Shield Attack X
[State -1, Shield Attack]
type = ChangeState
value = 1010
triggerall = (command = "Rapid_x")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; Shield Attack Y
[State -1, Shield Attack]
type = ChangeState
value = 1015
triggerall = (command = "Rapid_y")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; Turning acrobatic (Stop)
[State -1]
type = ChangeState
value = 1020
triggerall = command = "turning_a" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Turning acrobatic (Front)
[State -1]
type = ChangeState
value = 1025
triggerall = command = "turning_b" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Multiple attack with the shield weak
[State -1, Multiple attack with the shield weak]
type = ChangeState
value = 1030
triggerall = (command = "Shield_x")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
; Multiple attack with the shield strong
[State -1, Multiple attack with the shield strong]
type = ChangeState
value = 1035
triggerall = (command = "Shield_y")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------
; Leap body Falls A e B
[State -1]
type = ChangeState
value = 1040
triggerall = command = "Leap_Body"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40

;---------------------------------------------------------------------------
; Reflection Light Shield (3 hits)
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "Reflection_x" && StateType != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger3 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger4 = (stateno = 1000) && (time = [2,5]) && movetype = A && movecontact
trigger5 = (stateno = 1030) && (time = [14,19]) && movetype = A && movecontact

;---------------------------------------------------------------------------
; Reflection Light Shield (5 hits)
[State -1]
type = ChangeState
value = 1055
triggerall = Command = "Reflection_y" && StateType != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger3 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger4 = (stateno = 1000) && (time = [2,5]) && movetype = A && movecontact
trigger5 = (stateno = 1030) && (time = [14,19]) && movetype = A && movecontact

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && var(58) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = StateNo = 220 && MoveContact
trigger3 = StateNo = 230 && MoveContact
trigger4= hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && var(58) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl 
trigger3 = StateNo = 220 && MoveContact
trigger4 = StateNo = 230 && MoveContact
trigger5 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a" && var(58) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 230
triggerall = command = "b" && var(58) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && var(58) != 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y" && var(58) != 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a" && var(58) != 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 430
triggerall = command = "b" && var(58) != 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = movecontact = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1

;--------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && var(58) != 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y" && var(58) != 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a" && var(58) != 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 630
triggerall = command = "b" && var(58) != 1
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------------------------
[State 9999, 2]
type = ParentVarSet
triggerall = time > 0
triggerall = parent, RoundState = 2
trigger1 = parent, command = "x"
trigger2 = parent, command = "y"
trigger3 = parent, command = "z"
trigger4 = parent, command = "a"
trigger5 = parent, command = "b"
trigger6 = parent, command = "c"
trigger7 = parent, command = "holdfwd"
trigger8 = parent, command = "holdback"
trigger9 = parent, command = "holdup"
trigger10 = parent, command = "holddown"
var(59) = 1

;---------------------------------------------------------------------------

;Inteligencia Artificial

[state -3]
type = VarSet
triggerall = ((Var(59) = 0) && (Roundstate != 3))
trigger1 = (command = "AI0") || (command = "AI1") || (command = "AI2")
trigger2 = (command = "AI3") || (command = "AI4") || (command = "AI5")
trigger3 = (command = "AI6") || (command = "AI7") || (command = "AI8")
trigger4 = (command = "AI9") || (command = "AI10")
var(59) = var(58)
IgnoreHitPause = 1

[state -3]
type = VarSet
triggerall = var(59)
trigger1 = Win = 1
trigger2 = Lose = 1
trigger3 = DrawGame = 1
trigger4 = Roundstate = 4
var(59) = -1
IgnoreHitPause = 1

[state -3]
type = VarSet
trigger1 = Var(59) = -1
trigger1 = Roundstate = 1
var(59) = var(58)
IgnoreHitPause = 1

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 200
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L) && pos y >= 0
trigger1 = ctrl && p2movetype = A && p2Statetype = A && enemy, hitdefattr, A,NA
trigger1 = p2bodydist x < 50 && p2bodydist x > 20 && enemy, pos y < -90 && enemy, pos y > -59
trigger1 = random <= 60

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 230
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L) && pos y >= 0
trigger1 = ctrl && p2movetype != A && p2Statetype != A
trigger1 = p2bodydist x < 90 && p2bodydist x > 40
trigger1 = random <= 90

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 210
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L) && pos y >= 0
trigger1 = ctrl && p2movetype != A && p2Statetype != A
trigger1 = p2bodydist x < 46 && p2bodydist x > 10
trigger1 = random <= 90

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 220
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L) && pos y >= 0
trigger1 = ctrl && p2movetype = I && p2Statetype != A
trigger1 = p2bodydist x < 70
trigger1 = random <= 100
trigger2 = ctrl && p2movetype = H && p2Statetype != A
trigger2 = p2bodydist x < 50 && p2bodydist x > 20
trigger2 = random <= 700

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 410
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L) && pos y >= 0
trigger1 = ctrl && p2movetype != A && p2Statetype != A
trigger1 = p2bodydist x < 10 && p2bodydist x > -1
trigger1 = random <= 90

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 420
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L)  && pos y >= 0
trigger1 = ctrl && p2movetype != A
trigger1 = p2bodydist x < 90 && p2bodydist x > 40
trigger1 = random <= 90
trigger2 = ctrl && p2movetype = A && p2statetype = A && enemy, pos Y < -20 && enemy, pos y > - 100
trigger2 = p2bodydist x < 20
trigger2 = enemy, hitdefattr = A,NA,SA && random <= 30

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 430
triggerall = (var(50) = 1) && (statetype != A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L)  && pos y >= 0
trigger1 = ctrl && p2movetype = I && p2Statetype != A
trigger1 = p2bodydist x < 60
trigger1 = random <= 100
trigger2 = ctrl && p2movetype = H && p2Statetype != A
trigger2 = p2bodydist x < 60
trigger2 = random <= 900

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 610
triggerall = (var(50) = 1) && (statetype = A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L)
trigger1 = ctrl && p2movetype = I && p2Statetype != A
trigger1 = p2bodydist x < 75 && vel y >= 0
trigger1 = random <= 400
trigger2 = ctrl && p2movetype = A && p2Statetype != A
trigger2 = p2bodydist x < 75 && p2bodydist y < -70 && p2bodydist y > -150
trigger2 = random <= 300

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 620
triggerall = (var(50) = 1) && (statetype = A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L)
trigger1 = ctrl && p2movetype = I && p2Statetype != A
trigger1 = p2bodydist x < 75 && vel y >= 0
trigger1 = random <= 400
trigger2 = ctrl && p2movetype = A && p2Statetype != A
trigger2 = p2bodydist x < 75 && p2bodydist y < -70 && p2bodydist y > -150
trigger2 = random <= 300

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 630
triggerall = (var(50) = 1) && (statetype = A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L)
trigger1 = ctrl && p2movetype = I && p2Statetype != A
trigger1 = p2bodydist x < 75 && vel y >= 0
trigger1 = random <= 400
trigger2 = ctrl && p2movetype = A && p2Statetype != A
trigger2 = p2bodydist x < 75 && p2bodydist y < -70 && p2bodydist y > -150
trigger2 = random <= 600

;---------------------------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Ai]
type = ChangeState
value = 1005
triggerall = (var(50) = 1) && (statetype = A) && (movetype != H) && (statetype != L)
triggerall = (P2life != 0) && (p2statetype != L)
trigger1 = ctrl && p2movetype = I && p2Statetype != A
trigger1 = p2bodydist x < 75 && vel y >= 0
trigger1 = random <= 444
trigger2 = ctrl && p2movetype = A && p2Statetype != A
trigger2 = p2bodydist x < 75 && p2bodydist y < -70 && p2bodydist y > -100
trigger2 = random <= 666
