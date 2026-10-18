

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 20

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "AI1"
command = U,D,B,F,U,D,B,F,b,b,a,a,s
time = 0

[Command]
name = "AI2"
command = U,D,U,D,U,D,U,D,U,D,U,D,a+b+c+x+y+z
time = 0

[Command]
name = "AI3"
command = U,F,B,D,B,F,U,x,x,x,y,y,y,z,z,z
time = 0

[Command]
name = "AI4"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI5"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI6"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI7"
command = x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z
time = 0

[Command]
name = "AI8"
command = a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c
time = 0

[Command]
name = "AI9"
command = y,a,B,B,a,D,a,B,B,a
time = 0

[Command]
name = "AI10"
command = c,U,B,B,y,B,U,D,D,y
time = 0

[Command]
name = "AI11"
command = x,x,x,x
time = 0

[Command]
name = "AI12"
command = y,y,y,y
time = 0

[Command]
name = "AI13"
command = z,z,z,z
time = 0

[Command]
name = "AI14"
command = a,a,a,a
time = 0

[Command]
name = "AI15"
command = b,b,b,b
time = 0

[Command]
name = "AI16"
command = c,c,c,c
time = 0

[Command]
name = "AI17"
command = U,x,U,x
time = 0

[Command]
name = "AI18"
command = D,x,D,x
time = 0

[Command]
name = "AI19"
command = B,x,B,x
time = 0

[Command]
name = "AI20"
command = F,x,F,x
time = 0

[Command]
name = "activation"
command = U,U,D,D,B,F,B,F,b,a,s
time = 0

;-| Special Motions |------------------------------------------------------

[Command]
name = "Im_all_on_fire_x"
command = ~D, DF, F, D, DF, x
time = 25

[Command]
name = "Burning_body_a"
command = ~D, DF, F, D, DF, a
time = 25

[Command]
name = "Fire_Balls_y"
command = ~D, DF, F, D, DF, y
time = 25

[Command]
name = "Twin_Attack_b"
command = ~B, DB, D, DF, F, b
time = 25

[Command]
name = "Tail_x"
command = ~D, DF, F, x

[Command]
name = "Tail_y"
command = ~D, DF, F, y

[Command]
name = "Flame_x"
command = ~D, DF, F, x

[Command]
name = "Flame_y"
command = ~D, DF, F, y

[Command]
name = "Fire_x"
command = ~30$B, F,x

[Command]
name = "Fire_y"
command = ~30$B, F,y

[Command]
name = "Iron_kick_a"
command = ~30$D,$U, a

[Command]
name = "Iron_kick_b"
command = ~30$D,$U, b

[Command]
name = "Flamme_x"
command = ~D, DB, B, x

[Command]
name = "Flamme_y"
command = ~D, DB, B, y

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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;---------------------------------------------------------------------------

[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 0
triggerall = !isHelper
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = command = "activation"
trigger3 = command = "AI1"
trigger4 = command = "AI2"
trigger5 = command = "AI3"
trigger6 = command = "AI4"
trigger7 = command = "AI5"
trigger8 = command = "AI6"
trigger9 = command = "AI7"
trigger10 = command = "AI8"
trigger11 = command = "AI9"
trigger12 = command = "AI10"
trigger13 = command = "AI11"
trigger14 = command = "AI12"
trigger15 = command = "AI13"
trigger16 = command = "AI14"
trigger17 = command = "AI15"
trigger18 = command = "AI16"
trigger19 = command = "AI17"
trigger20 = command = "AI18"
trigger21 = command = "AI19"
trigger22 = command = "AI20"
v = 59
value = 1

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
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
;Im All On Fire
[State -1]
type = ChangeState
value = 3000
triggerall = var(59) = 0 
triggerall = power >= 1000
triggerall = command = "Im_all_on_fire_x" && var(58) != 1
trigger1 = ctrl && StateType = S && statetype != A
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
;Burning Body
[State -1]
type = ChangeState
value = 3050
triggerall = var(59) = 0 
triggerall = power >= 1000
triggerall = command = "Burning_body_a" && var(58) != 1
trigger1 = ctrl && StateType = S && statetype != A
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
;Fire Balls
[State -1]
type = ChangeState
value = 3100
triggerall = var(59) = 0 
triggerall = power >= 1000
triggerall = command = "Fire_Balls_y" && var(58) != 1
trigger1 = ctrl && StateType = S && statetype != A
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
;Castor and Pollux Twin Attack
[State -1]
type = ChangeState
value = 3150
triggerall = var(59) = 0 
triggerall = power >= 1000
triggerall = command = "Twin_Attack_b" && var(58) != 1
trigger1 = ctrl && StateType = S && statetype != A
trigger2 = StateNo = 210 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Tail Spike X
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Tail_x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Tail Spike Y
[State -1]
type = ChangeState
value = 1005
triggerall = command = "Tail_y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Flame Attack X
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Flame_x" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Flame Attack Y
[State -1]
type = ChangeState
value = 1011
triggerall = command = "Flame_y" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Fire Soul X
[State -1]
type = ChangeState
value = 1020
triggerall = command = "Fire_x" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Fire Soul Y
[State -1]
type = ChangeState
value = 1025
triggerall = command = "Fire_y" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Iron Kick Normal
[State -1, Climb]
type = ChangeState
value = 1030
triggerall = command = "Iron_kick_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40

;---------------------------------------------------------------------------
; Iron Kick Fire
[State -1, Climb]
type = ChangeState
value = 1035
triggerall = command = "Iron_kick_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40

;---------------------------------------------------------------------------
; Flamme Thrower X
[State -1]
type = ChangeState
value = 1040
triggerall = command = "Flamme_x" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Flamme Thrower Y
[State -1]
type = ChangeState
value = 1045
triggerall = command = "Flamme_y" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;===========================================================================
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
trigger3 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y" && var(58) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = StateNo = 220 && MoveContact
trigger3 = StateNo = 230 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

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
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = hitdefattr = S,NA&&movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b" && var(58) != 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 220 && MoveContact
trigger3 = StateNo = 230 && MoveContact
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
trigger2 = stateno = 430
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && var(58) != 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = movecontact = 1
trigger2 = stateno = 430
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
trigger2 = stateno = 430
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b" && var(58) != 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
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

;--------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
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
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b" && var(58) != 1
trigger1 = statetype = A
trigger1 = ctrl


;-----------------------------------------------------------------------------
AI Force

;-----------------------------------------------------------------------------
[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 1000
triggerall = Random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 100)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 100
value = 3000

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 1000
triggerall = Random <= 111
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist Y >= 30)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 30
value = 3000

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 2000
triggerall = Random <= 444
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 150)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 150
value = 3050

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 2000
triggerall = Random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 200)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 200
value = 3100

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 3000
triggerall = Random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 300)
trigger1 = FrontEdgeBodyDist >= 300
trigger2 = (P2BodyDist X >= 100)
trigger2 = FrontEdgeBodyDist >= 100
trigger3 = Ctrl
value = 3150

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != S) && (StateType != L)
triggerall = P2StateType != S
triggerall = Random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 100)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 100
value = 1005

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L) 
triggerall = P2StateType != A  && random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 10)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 0
value = 1011


[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L) 
triggerall = P2StateType != A  && random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist Y >= 50)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 50
value = 1035

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L) 
triggerall = P2StateType != A  && random <= 444
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 70)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 70
value = 1040

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L) 
triggerall = P2StateType != A  && random <= 222
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 140)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 140
value = 1045

; Jumping 
[state -1]
type = ChangeState
value = 40
triggerall = var(55) = 1
triggerall = ctrl
triggerall = statetype = S
triggerall = stateno != 100 || (stateno = 100 && random < 3)
trigger1 = p2statetype != L
trigger1 = random <= 2
trigger1 = p2statetype = A
trigger2 = p2statetype != L
trigger2 = random <= 3
trigger2 = p2statetype = S
trigger2 = p2bodydist X >= 60
trigger3 = p2statetype != L
trigger3 = p2statetype != A
trigger3 = p2bodydist X >= 50
trigger3 = p2bodydist X <= 100
trigger3 = random <= 100
trigger4 = p2statetype != L
trigger4 = p2statetype != A
trigger4 = p2bodydist X >= 50
trigger4 = p2bodydist X <= 100
trigger4 = random <= 4
trigger5 = p2statetype != L
trigger5 = random <= 20
trigger5 = p2statetype != A
trigger5 = p2bodydist X <= 20
trigger6 = p2statetype != L
trigger6 = p2statetype != A
trigger6 = p2bodydist X > 100
trigger6 = p2bodydist X <= 200
trigger6 = var(16) > 20
trigger6 = random <= 100
trigger7 = p2statetype != L
trigger7 = p2statetype != A
trigger7 = p2bodydist X > 100
trigger7 = p2bodydist X <= 225
trigger7 = random <= 50
trigger8 = p2statetype != L
trigger8 = p2statetype != A
trigger8 = p2bodydist X > 225
trigger8 = random <= 140
trigger9 = p2stateno = 5120
trigger9 = p2bodydist X <= 25
trigger9 = p2movetype != H
trigger9 = random <= 200
trigger10 = p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30
trigger10 = random < 20

[state -1]
type = ChangeState
value = 1050
triggerall = numprojID(1051) = 0
triggerall = var(58) = 1
triggerall = p2movetype != A
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl 
trigger1 = p2bodydist X >= 200
trigger1 = random <= 200
trigger2 = numhelper(1051) != 0
trigger2 = random <= 220
trigger2 = p2stateno = [150,155]

[state -2]
type = ChangeState
value = 1030
triggerall = statetype != A
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = p2dist X > 0
triggerall = p2bodydist Y >= -80
triggerall = ctrl
trigger1 = p2movetype = A && p2bodydist X <= 250
trigger1 = p2statetype = A || gametime%30 >= 25
trigger2 = p2movetype != A
trigger2 = enemynear,numproj > 0