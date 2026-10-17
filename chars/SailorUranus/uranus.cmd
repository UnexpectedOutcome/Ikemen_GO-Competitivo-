

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
name = "SuperSword"
command = ~D,DF,F,D,DF,F,b
time = 30
buffer.time = 3

[Command]
name = "worldshaking"
command = ~D, DF, F, x+y

[Command]
name = "worldshaking"
command = ~D, DF, F, x+z

[Command]
name = "worldshaking"
command = ~D, DF, F, z+y

[Command]
name = "spaces"
command = ~D, DB, B, z+y

[Command]
name = "spaces"
command = ~D, DB, B, x+y

[Command]
name = "spaces"
command = ~D, DB, B, z+x

[Command]
name = "World"
command = ~D, DF, F, a+b

[Command]
name = "World"
command = ~D, DF, F, b+c

[Command]
name = "World"
command = ~D, DF, F, c+a

[Command]
name = "Gaia"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "Gaia"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "Gaia"
command = ~D, DB, B, a+c
time = 30

[Command]
name = "TripleKFPalm"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "TripleKFPalm"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DB, B, a+c
time = 30
buffer.time=12


[Command]
name = "ShakingLight"
command = ~D, DF, F, x

[Command]
name = "ShakingMedium"
command = ~D, DF, F, y

[Command]
name = "ShakingHard"
command = ~D, DF, F, z

[Command]
name = "blasterl"
command = ~D, DB, B, x

[Command]
name = "blasterm"
command = ~D, DB, B, y

[Command]
name = "blasterh"
command = ~D, DB, B, z

[Command]
name = "KickAttackLight"
command = D, DB, B, a

[Command]
name = "KickAttackMedium"
command = D, DB, B, b

[Command]
name = "KickAttackHard"
command = D, DB, B, c

[Command]
name = "bombthrow"
command = ~D, DF, F, a

[Command]
name = "bombthrow"
command = ~D, DF, F, b

[Command]
name = "bombthrow"
command = ~D, DF, F, c

[Command]
name = "airbomb"
command = ~D, DF, F, c

[Command]
name = "airbomb2"
command = ~D, DF, F, b

[Command]
name = "airbomb3"
command = ~D, DF, F, a

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

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

[Command]
name = "upper_x"
command = ~$F, $D, $B,$U, a
time=15
buffer.time=3
[Command]
name = "upper_x"
command = ~$D, $B, $U,$F, a
time=15
buffer.time=3
[Command]
name = "upper_x"
command = ~$B, $U, $F,$D, a
time=15
buffer.time=3
[Command]
name = "upper_x"
command = ~$U, $F, $D,$B, a
time=15
buffer.time=3

[Command]
name = "upper_x"
command = ~$F, $U, $B,$D, a
time=15
buffer.time=3
[Command]
name = "upper_x"
command = ~$U, $B, $D,$F, a
time=15
buffer.time=3
[Command]
name = "upper_x"
command = ~$B, $U, $F,$D, a
time=15
buffer.time=3
[Command]
name = "upper_x"
command = ~$D, $B, $U,$F, a
time=15
buffer.time=3

[Command]
name = "upper_y"
command = ~$F, $D, $B,$U, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$D, $B, $U,$F, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$B, $U, $F,$D, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$U, $F, $D,$B, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$F, $U, $B,$D, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$U, $B, $D,$F, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$B, $D, $F,$U, b
time=15
buffer.time=3
[Command]
name = "upper_y"
command = ~$D, $F, $U,$B, b
time=15
buffer.time=3


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

;Combo Starters-----------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 630

;Launch Comboing-------------------------
[State -1]
type = ChangeState
value = 2999
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 420

;Comboing-------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 230

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
trigger2 = stateno = 640

[State -1]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 630

[State -1]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 640

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
value = 1000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 240

[State -1]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 240

[State -1]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 230
trigger2 = stateno = 200

[State -1]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 240
trigger2 = stateno = 210

[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 400
trigger2 = stateno = 430

[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 410
trigger2 = stateno = 440

[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 410
trigger2 = stateno = 440

[State -1]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 430
trigger2 = stateno = 400

[State -1]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 440
trigger2 = stateno = 410

;Air Bomb-------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 10) && (statetype != A)
value = 1409

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 20) && (statetype != A)
value = 1408

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 25) && (statetype != A)
value = 1407

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 7) && (statetype != A)
value = 850

;------------------------------------------------------------------------
[State -1, AIgh]
type = ChangeState
value = 1050
triggerall = AILevel >0
triggerall = random <= 50*AILevel
triggerall = statetype != A
triggerall= ((p2statetype != A)&&statetype!=A)
triggerall = (ctrl||stateno=[10,20]) || stateno=40 || stateno=52
triggerall = stateno !=[800,899]
Triggerall = (RoundState = 2)
triggerall = enemy,anim!=5120
triggerall = (p2MoveType != H)
trigger1 = p2bodydist X < 48&& (p2bodydist y = 0)
trigger2 = (p2stateno =[120,150]) &&(p2bodydist X < 48 && (p2bodydist y = 0))

;Kick Attacks-----------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 9) && (statetype != A)
value = 1800

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 20) && (statetype != A)
value = 1810

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 35) && (statetype != A)
value = 1820

[State -1, kick attack counter far range]
type = changestate
value = 1820
triggerall = (roundstate != [0,1]) || (roundstate != [3,4])
triggerall = Var(30) = 59
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X > 200
trigger1 = p2movetype = A
trigger1 = random <= 50
trigger2 = prevstateno = 1000 && random <= 50
trigger3 = enemy, Numproj > 0 && random <= 10

;--------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall=AILevel>0
triggerall = statetype!=A
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
triggerall = Random < 113* AILevel
triggerall =InGuardDist|| enemynear,hitdefattr = SCA,AA
triggerall =((EnemyNear, movetype=A&& enemynear,hitdefattr!=SCA,AA)||( enemynear,hitdefattr = SCA,AA))|| enemy,numproj >0
trigger1 = ctrl ||stateno=20
;Run Forward------------------------
[State -1, dash]
type = ChangeState
triggerall = Var(59)>=1 && Ctrl && (stateno!=100) && statetype != A && (Random <= 600)&& (p2movetype!=A)
trigger1 = (P2bodydist X >= 110)
value = 100

[State -1, dash]
type = ChangeState
triggerall = Var(59)>=1 && ctrl && statetype = A && (stateno!=106)&&(stateno!=2999)&&(prevstateno!=2999)&&(Random <= 600)&&(p2movetype!=A)
trigger1 = (P2bodydist X >= 130)
value = 106

;---------------------------------------------------------------------------
;block push stand
[State -1, block push stand]
type = ChangeState
value = 6300
triggerall = stateno = 150
triggerall = var(59) != 0
triggerall = var(57) != 2 ; Difficulty level
triggerall = (var(57) = 4) || ((random < 250) && Time <= 1) ; Difficulty level
trigger1 = statetype = S
ignorehitpause = 1

;block push crouch
[State -1, block push crouch]
type = ChangeState
value = 6310
triggerall = stateno = 152
triggerall = var(59) != 0
triggerall = var(57) != 2 ; Difficulty level
triggerall = (var(57) = 4) || ((random < 250) && Time <= 1) ; Difficulty level
trigger1 = statetype = C
ignorehitpause = 1

;block push air
[State -1, block push air]
type = ChangeState
value = 6320
triggerall = stateno = 154
triggerall = var(59) != 0
triggerall = var(57) != 2 ; Difficulty level
triggerall = (var(57) = 4) || ((random < 250) && Time <= 1) ; Difficulty level
trigger1 = statetype = A
ignorehitpause = 1

;Shaking Hard-----------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 30) && (statetype != A)
value = 1002

;Shaking med
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 25) && (statetype != A)
value = 1001

;Shaking light
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 15) && (statetype != A)
value = 1000

;Push back guard-----------------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = S
trigger1 = random <= 150 && (stateno = [150,153])
value = 6300

[State -1,ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType = C
trigger1 = random <= 150 && (stateno = [150,153])
value = 6310

[State -1,ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType = A
trigger1 = random <= 150 && (stateno = [150,155])
value = 6320

;Kick Throw----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 8) && (statetype != A)
value = 799

[State -1, Kick Throw]
type = ChangeState
value = 799
triggerall = (roundstate != [0,1]) || (roundstate != [3,4])
triggerall = Var(30) = 59
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = Var(10) = 0
triggerall = p2statetype = S
triggerall = P2movetype != H
trigger1 = P2BodyDist X = [0,20]
trigger1 = P2BodyDist Y = [-10, 10]
trigger1 = random <= 700

;Punch Throw----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 8) && (statetype != A)
value = 801

;Bomb Throw----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 9) && (statetype != A)
value = 850

[State -1, Kick Throw]
type = ChangeState
value = 801
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = ctrl
triggerall = (abs(var(58)) != [800,899])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 100)
triggerall = (var(58) != [1000,3999]) || (Random < 150)
trigger1 = p2bodydist X = [0,5]
trigger1 = random < 750
trigger1 = p2statetype != A
trigger1 = p2movetype != H

[State -1, Punch Throw]
type = ChangeState
value = 801
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X = [0,5]
trigger1 = p2statetype = A
trigger1 = p2movetype != H

[State -1, Bomb Throw]
type = ChangeState
value = 1050
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = ctrl
triggerall = (abs(var(58)) != [800,899])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 100)
triggerall = (var(58) != [1000,3999]) || (Random < 150)
trigger1 = p2bodydist X = [0,5]
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;World Shaking---------------
[State -1, world shaking if fall straight down]
type = changestate
value = 1400
triggerall = (roundstate != [0,1]) || (roundstate != [3,4])
triggerall = Var(30) = 59
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X > 100
triggerall = P2BodyDist Y > -10
triggerall = roundstate = 2
triggerall = var(10) = 0
trigger1 = p2stateno = 5050
trigger2 = p2stateno = 5100
trigger3 = p2stateno = 5101
trigger4 = p2stateno = 5110

;World Shaking---------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 20) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [2,50])
value = 1400

;Super Space Sword---------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 15) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [2,50])
value = 1650

;Hyper----------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 10) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 5000) && (numproj = 0) && (random = [2,50])
value = 1401

;Destructive Carnival---------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 20) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [2,50])
value = 3000
;------------------------------------------------------------------------
[State -1, AIgh]
type = ChangeState
value = 3000
triggerall = AILevel >0 && roundstate = 2
triggerall = (p2stateno!=[120,155])
trigger1 =  (p2bodydist x=[0,120]) && ctrl
trigger2= (stateno=210||(stateno=240)||stateno=410||stateno=200||stateno=400)&&movehit
triggerall = ((p2bodydist y = [-90,0]))
triggerall = random<199
triggerall = life <= lifemax/3
triggerall = var(3)=0
triggerall = var(4)=0
triggerall = stateno != [800,3999]
triggerall = movetype!=H
triggerall = p2statetype!=L
triggerall = (Statetype!=A)

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 12) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (numproj = 0) && (random = [0,50])
value = 4000


[State -1]
type = ChangeState
value = 1014
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 230

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Sword Blaster #2
[State -1, Super Sword Blaster #2]
type = ChangeState
value =4000
triggerall = command = "SuperSword"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Hyper Attack
[State -1, Hyper Attack]
type = ChangeState
value = 1401
triggerall = command = "World"
triggerall = power >= 5000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Diving Gaia Crush
[State -1, Diving Gaia Crush]
type = ChangeState
value = 3000
triggerall = command = "Gaia"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = AILevel =0
triggerall = command = "TripleKFPalm"
triggerall = life <= lifemax/3
trigger1 = ctrl
trigger2= (stateno=[200,430])&&movecontact
trigger3= stateno=440 && (p2stateno=10612 && movecontact||moveguarded)
triggerall = statetype != A

;---------------------------------------------------------------------------
;World Shaking
[State -1, World Shaking]
type = ChangeState
value = 1400
triggerall = command = "worldshaking"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Super Space Sword
[State -1, Super Space Sword]
type = ChangeState
value = 1650
triggerall = command = "spaces"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Kick Attack Light
[State -1, Kick Attack Light]
type = ChangeState
value = 1800
triggerall = (command = "KickAttackLight")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kick Attack Medium
[State -1, Kick Attack Medium]
type = ChangeState
value = 1810
triggerall = (command = "KickAttackMedium")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kick Attack Hard
[State -1, Kick Attack Hard]
type = ChangeState
value = 1820
triggerall = (command = "KickAttackHard")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;guard push
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Shaking Light
[State -1, Shaking Light]
type = ChangeState
value = 1000
triggerall = (command = "ShakingLight")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Shaking Medium
[State -1, Shaking Medium]
type = ChangeState
value = 1001
triggerall = (command = "ShakingMedium")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Shaking Hard
[State -1, Shaking Hard]
type = ChangeState
value = 1002
triggerall = (command = "ShakingHard")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Blaster Light
[State -1, Blaster Light]
type = ChangeState
value = 1012
triggerall = command = "blasterl"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Blaster Medium
[State -1, Blaster Medium]
type = ChangeState
value = 1013
triggerall = command = "blasterm"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Blaster Hard
[State -1, Blaster Hard]
type = ChangeState
value = 1014
triggerall = command = "blasterh"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
;throw
[State -1]
type = ChangeState
value = 801
triggerall = (command = "x")||(command = "y")||(command = "z")
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger3 = movecontact
trigger3 = Var(39) != 2

;-------------------
;throw
[State -1]
type = ChangeState
value = 799
triggerall = (command = "a")||(command = "b")||(command = "c")
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger3 = movecontact
trigger3 = Var(39) != 2

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype != A
triggerall = AILevel =0
trigger1 = ctrl||((stateno=[200,430])&&movecontact)
trigger2= stateno=440 && (p2stateno=10612 && movecontact||moveguarded)
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype != A
triggerall = AILevel =0
trigger1 = ctrl||((stateno=[200,430])&&movecontact)
trigger2= stateno=440 && (p2stateno=10612 && movecontact||moveguarded)


;===========================================================================
;---------------------------------------------------------------------------
;Light Kung Fu Upper
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1050
triggerall = command = "upper_x" ||command = "upper_y"
triggerall = statetype!=A
triggerall = AILevel =0
trigger1 = ctrl ||stateno=40||stateno=52||stateno=106
trigger2= (stateno=[200,430])&&movecontact
trigger3= stateno=440 && (p2stateno=10612 && movecontact||moveguarded)
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
