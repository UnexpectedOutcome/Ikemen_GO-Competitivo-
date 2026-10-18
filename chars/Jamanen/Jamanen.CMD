

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

;-| Special Motions |------------------------------------------------------

[Command]
name = "JellySword_x"
command = ~D, DF, F, D, DF, x
time = 25

[Command]
name = "Jellyball_a"
command = ~D, DF, F, D, DF, a
time = 25

[Command]
name = "JellyTower_x"
command = ~D, DB, B, D, DB, x
time = 25

[Command]
name = "JellyWeb_a"
command = ~D, DB, B, D, DB, a
time = 25

[Command]
name = "Jelly_x"
command = ~D, DF, F, x
time = 25

[Command]
name = "Jelly_y"
command = ~D, DF, F, y
time = 25

[Command]
name = "Body_a"
command = ~D, DF, F, a
time = 25

[Command]
name = "Body_b"
command = ~D, DF, F, b
time = 25

[Command]
name = "whip_x"
command = ~D, DB, B, x
time = 25

[Command]
name = "whip_y"
command = ~D, DB, B, y
time = 25

[Command]
name = "swinging_a"
command = ~D, DB, B, a
time = 25

[Command]
name = "swinging_b"
command = ~D, DB, B, b
time = 25

[Command]
name = "Teleport_a"
command = ~D, D, D, a
time = 25

[Command]
name = "Teleport_b"
command = ~D, D, D, b
time = 25

[Command]
name = "Protection_x"
command = ~F, DF, D, x
time = 23

[Command]
name = "Protection_y"
command = ~F, DF, D, y
time = 23

[Command]
name = "Monster_a"
command = ~F, D, D, a
time = 25

[Command]
name = "Monster_b"
command = ~F, D, D, b
time = 25

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
; Jamanen Sword Cutter
[State -1]
type = ChangeState
value = 3000
triggerall = command = "JellySword_x" && NumProj = 0 && var(58) != 1
triggerall = power >= 1000
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Jamanen Jelly Ball
[State -1]
type = ChangeState
value = 3050
triggerall = command = "Jellyball_a" && NumProj = 0 && var(58) != 1
triggerall = power >= 1000
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Jamanen Jelly Tower
[State -1]
type = ChangeState
value = 3100
triggerall = command = "JellyTower_x" && NumProj = 0 && var(58) != 1
triggerall = power >= 2000
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Jamanen Jelly Web
[State -1]
type = ChangeState
value = 3150
triggerall = command = "JellyWeb_a" && NumProj = 0 && var(58) != 1
triggerall = power >= 3000
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger4 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Whip X
[State -1]
type = ChangeState
value = 1000
triggerall = command = "whip_x" && var(58) = 0
triggerall = var(5) = 0 || var(6) = 0
trigger1 = ctrl && StateType = S
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = StateNo = 230 && MoveContact
trigger5 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------------
; Whip Y
[State -1]
type = ChangeState
value = 1005
triggerall = command = "whip_y" && var(58) = 0
triggerall = var(5) = 0 || var(6) = 0
trigger1 = ctrl && StateType = S
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = StateNo = 230 && MoveContact
trigger5 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------------
; Jelly Ball
[State -1 Jelly Ball]
type = ChangeState
value = 1010
triggerall = command = "Jelly_x" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger3 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Jelly Ball
[State -1 Jelly Ball]
type = ChangeState
value = 1015
triggerall = command = "Jelly_y" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger3 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Protection With The Whip 1
[State -1]
type = ChangeState
value = 1020
triggerall = (command = "Protection_x")
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------------
; Protection With The Whip 3
[State -1]
type = ChangeState
value = 1025
triggerall = (command = "Protection_y")
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------------
; Jelly Teleport
[State -1 Jelly Teleport]
type = ChangeState
value = 1030
triggerall = command = "Teleport_a" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger3 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Jelly Teleport
[State -1 Jelly Teleport]
type = ChangeState
value = 1035
triggerall = command = "Teleport_b" && NumProj = 0 && var(58) != 1
trigger1 = StateType != A && ctrl
trigger2 = (StateNo = [200, 220]) && MoveContact && !(StateNo%5) && StateNo != 200
trigger3 = (StateNo = 400 || StateNo = 450) && MoveContact

;---------------------------------------------------------------------------
; Body Attack
[State -1]
type = ChangeState
value = 1040
triggerall = (command = "Body_a")
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------------
; Body Attack
[State -1]
type = ChangeState
value = 1040
triggerall = (command = "Body_b")
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------
; swinging with the whip
[State -1 swinging with the whip]
type = ChangeState
value = 1050
triggerall= Command = "swinging_a" && Pos Y <= -50
triggerall = StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1200,1299])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; swinging with the whip
[State -1 swinging with the whip]
type = ChangeState
value = 1050
triggerall= Command = "swinging_b" && Pos Y <= -50
triggerall = StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1200,1299])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------------
; Monster Jam
[State -1]
type = ChangeState
value = 1067
triggerall = command = "Monster_a" && var(58) = 0
triggerall = var(5) = 0 || var(6) = 0
trigger1 = ctrl && StateType = S
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = StateNo = 230 && MoveContact
trigger5 = hitdefattr = A,NA&&movecontact

;---------------------------------------------------------------------------
; Monster Jam
[State -1]
type = ChangeState
value = 1060
triggerall = command = "Monster_b" && var(58) = 0
triggerall = var(5) = 0 || var(6) = 0
trigger1 = ctrl && StateType = S
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 220 && MoveContact
trigger4 = StateNo = 230 && MoveContact
trigger5 = hitdefattr = A,NA&&movecontact

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
trigger2 = stateno = 600 || stateno = 630

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
trigger2 = stateno = 600 || stateno = 630

;---------------------------------------------------------------------------
; Combo
[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 630

[State -1]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 600

[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 630

[State -1]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 230

[State -1]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 1025

[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 230
trigger2 = stateno = 200

[State -1]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 230

[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 400
trigger2 = stateno = 420

[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 410
trigger2 = stateno = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 30) && (statetype != A)
value = 1010

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,20])
trigger1 = (p2bodydist x >= 70) && (statetype != A)
value = 1015

[state -2]
type = ChangeState
value = 1025
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

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 10) && (statetype != A)
value = 1060

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 1000
triggerall = Random <= 444
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 15)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist <= 35
value = 3000

[State -1]  
type = ChangeState
triggerall = RoundState = 2 && var(59)
triggerall = (StateType != A) && (StateType != L)
triggerall = P2StateType != A 
triggerall = power >= 1000
triggerall = Random <= 333
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
triggerall = power >= 3000
triggerall = Random <= 333
triggerall = MoveType != H
triggerall = P2life != 0
trigger1 = (P2BodyDist X >= 40)
trigger1 = Ctrl
trigger1 = FrontEdgeBodyDist >= 40
value = 3150
