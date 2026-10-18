[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1

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


;-| Hold Button |--------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1


;-| CPU |----------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Party Up"
command = ~D, F, x+y+a
time = 15

[Command]
name = "Double Power Buster"
command = ~D, F, y+b
time = 15

[Command]
name = "Double Rising Tornado"
command = ~D, F, x+a
time = 15

[Command]
name = "Groovy Special"
command = ~D, F, D, F, x
time = 25

[Command]
name = "Groovy Special"
command = ~D, F, D, F, y
time = 25

[Command]
name = "Groovy Special_z"
command = ~D, F, D, F, z
time = 25

[Command]
name = "Air Buster"
command = ~D, B, D, B, x
time = 25

[Command]
name = "Air Buster"
command = ~D, B, D, B, y
time = 25

[Command]
name = "Wonderful Kick"
command = ~D, F, D, F, a
time = 25

[Command]
name = "Wonderful Kick"
command = ~D, F, D, F, b
time = 25

[Command]
name = "Wonderful Kick_c"
command = ~D, F, D, F, c
time = 25

[Command]
name = "Groovy Screw"
command = ~D, B, D, B, a
time = 25

[Command]
name = "Groovy Screw"
command = ~D, B, D, B, b
time = 25

[Command]
name = "Groovy Screw_c"
command = ~D, B, D, B, c
time = 25


;-| Special Motions |------------------------------------------------------
[Command]
name = "Beautiful Spin"
command = ~F, D, DF, a
time = 15

[Command]
name = "Beautiful Spin"
command = ~F, D, DF, b
time = 15

[Command]
name = "Beautiful Spin_c"
command = ~F, D, DF, c
time = 15

[Command]
name = "Groovy Punch"
command = ~D, B, x
time = 15

[Command]
name = "Groovy Punch"
command = ~D, B, y
time = 15

[Command]
name = "Groovy Punch_z"
command = ~D, B, z
time = 15

[Command]
name = "Groovy Knuckle"
command = ~D, F, x
time = 15

[Command]
name = "Groovy Knuckle"
command = ~D, F, y
time = 15

[Command]
name = "Groovy Knuckle_z"
command = ~D, F, z
time = 15

[Command]
name = "Exciting Kick"
command = ~D, B, a
time = 10

[Command]
name = "Exciting Kick"
command = ~D, B, b
time = 10

[Command]
name = "Exciting Kick_c"
command = ~D, B, c
time = 10

[Command]
name = "Groovy Wheel"
command = ~D, F, a
time = 15

[Command]
name = "Groovy Wheel"
command = ~D, F, b
time = 15

[Command]
name = "Groovy Wheel_c"
command = ~D, F, c
time = 15

[Command]
name = "longjump"
command = ~$D, $U
time = 2

[command]
name = "Just Defend"
command = B
time = 1

[command]
name = "Parry"
command = F
time = 1

[command]
name = "Crouch Parry"
command = D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
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
command = x+a
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------------------------------------------------------------------
[Statedef -1]

; AI Helper Check
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

; AI Helper Check 2
[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;===========================================================================
; Ai Section
;===========================================================================]
; Jump
[State -1, AI Jump]
type = ChangeState
triggerAll = var(0)
triggerAll = random < 200
triggerAll = statetype != A
triggerAll = ctrl
triggerAll = p2bodydist x >= 70
trigger1 = EnemyNear, AnimTime < -30
trigger1 = p2MoveType = A
trigger1 = p2statetype != A
trigger1 = p2stateNo = [1000,2999]
value = 40

; Jump 2
[State -1, AI Jump 2]
type = ChangeState
triggerAll = var(0)
triggerAll = random < 500
triggerAll = statetype != A
trigger1 = random < 600 && movehit && stateno = 720 && (animelemtime(7) <= 2)
trigger2 = random < 600 && movehit && stateno = 730 && (animelemtime(7) <= 2)
value = 40

;Stand Guard
[State -1, AI Standing Guard]
type = changestate
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = StateType != A
triggerall = P2StateType != C
triggerall = StateType = S
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = Ctrl && P2BodyDist X <= 90
trigger1 = random <= 800
value = 130

; Stand to Crouch Guard
[State -1, AI Stand to Crouch Guard]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = StateType != A
triggerall = P2StateType = C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = StateNo = 150
trigger1 = 1
value = 152

;Crouch Guard
[State -1, AI Crouch Guard]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = StateType != A
triggerall = P2StateType = C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = Ctrl
trigger1 = random <= 800
value = 131

;Crouch to Stand Guard
[State -1, AI Crouch to Stand Guard]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = StateType != A
triggerall = P2StateType != C
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = StateNo = 152
trigger1 = 1
value = 150

;Jump Guard
[State -1, AI Jump Guard]
type = changestate
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = StateType = A
triggerall = (P2Movetype = A) || (Enemy, NumProj >= 1)
trigger1 = ctrl
trigger1 = random <= 800
value = 132

;Throw
[State -1, AI Throw]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A
triggerall = P2statetype != A && P2statetype != L
triggerall = P2movetype = I && P2movetype != H
triggerall = P2bodyDist X <= 10
triggerall = P2stateno != 5120
trigger1 = Random < 180
value = 800

; Roll Forwards
[State -1, AI Roll]
type = ChangeState
triggerall = var(55) = 4
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A
triggerall = enemynear, hitdefattr = SCA,NA,SA,HA,NP,SP,HP
triggerall = p2bodydist x <= 80
triggerall = P2statetype != A
triggerall = P2MoveType = A
trigger1 = random < 150
value = ifelse(random < 500, 900, 905)

;Dodge
[State -1, AI Dodge]
type = ChangeState
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A
triggerall = enemynear, hitdefattr = SCA,NA,SA,HA,NP,SP,HP
triggerall = p2bodydist x <= 70
triggerall = P2statetype != A
triggerall = P2MoveType = A
trigger1 = Random < 100
value = 910

; Dodge Attack
[State -1, AI Dodge Attack]
type = ChangeState
triggerall = roundstate = 2 && var(0)
triggerall = var(55) = 4
triggerall = stateno = 910 && animelemtime(5) >= 3
trigger1 = Random < 500
value = ifelse(random < 500, 220, 705)

;Guard Cancel
[State -1, AI Guard Cancel]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) = 4
triggerall = Power >= 1000 && StateType != A
triggerall = P2BodyDist x <= 40
trigger1 = (stateno = 150 || stateno = 152)
trigger1 = random < 50
value = ifelse(random <= 600, 930, ifelse(random <= 500, 915,920))

;Basic Tardy Counter
[State -1, AI Basic Tardy Counter RS/RS2]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) < 3
triggerall = StateType != A
triggerall = P2BodyDist x <= 60
triggerall = (stateno = 150 || stateno = 152)
trigger1 = random < 50
value = ifelse(random <= 100, 700, ifelse(random <= 100, 705, ifelse(random <= 100, 708, ifelse(random <= 50, 710, ifelse(random <= 300, 720, 730)))))

;Basic Tardy Counter
[State -1, AI Basic Tardy Counter PJ]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) = 3
triggerall = StateType != A
triggerall = P2BodyDist x <= 60
triggerall = (stateno = 150 || stateno = 152)
trigger1 = random < 50
value = ifelse(random <= 100, 700, ifelse(random <= 100, 705, ifelse(random <= 100, 708, ifelse(random <= 100, 715, ifelse(random <= 300, 720, 730)))))

;Special Tardy Counter
[State -1, AI Special Tardy Counter]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) < 4
triggerall = StateType != A
triggerall = P2BodyDist x <= 60
triggerall = (stateno = 150 || stateno = 152)
trigger1 = random < 50
value = ifelse(var(55) = 3 && random <= 100, 1300, ifelse(random <= 100, 1200, ifelse(random <= 100, 1100, 1000)))

;Hyper Tardy Counter
[State -1, AI Hyper Tardy Counter]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) < 4
triggerall = StateType != A
triggerall = P2BodyDist x <= 60
triggerall = power >= 1000
triggerall = (stateno = 150 || stateno = 152)
trigger1 = random < 50
value = ifelse(var(55) = 1 && random <= 100, 3100, ifelse((var(55) = [2,3]) && random <= 120, 3000, ifelse(var(55) = 3 && random <= 50, 3250, 3200)))

;Air Basic Tardy Counter
[State -1, AI Air Basic Tardy Counter]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) < 4
triggerall = StateType = A
triggerall = P2BodyDist x <= 60
triggerall = stateno = 154
trigger1 = random < 50
value = ifelse(random <= 600, 770, 780)

;Air Special Tardy Counter
[State -1, AI Air Special Tardy Counter]
type = ChangeState
triggerall = NumEnemy
triggerall = RoundState = 2 && var(0)
triggerall = var(55) < 4
triggerall = StateType = A
triggerall = P2BodyDist x <= 60
triggerall = stateno = 154
trigger1 = random < 50
value = 1405

;Beautiful Spin
[State -1, AI Beautiful Spin]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A && p2movetype != H
triggerall = FrontEdgeDist >= 40
trigger1 = P2statetype = A && enemynear, vel x > 0 && enemynear, vel Y < 0 && (P2bodydist X = [70,120]) && (EnemyNear, Pos Y = [-100,-60]) && random < 300
trigger2 = P2statetype = A && enemynear, vel x = 0 && enemynear, vel Y < 0 && (P2bodydist X = [50,85]) && (EnemyNear, Pos Y = [-100,-60]) && random < 300
value = 1100

; Groovy Knuckle & Groovy Punch
[State -1, AI Groovy Knuckle & Groovy Punch]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A
triggerall = P2statetype != A && p2movetype != H
triggerall = p2movetype != A
trigger1 = prevstateno != 5120 || prevstateno != 1200
trigger1 = (P2bodydist X = [15,100]) && p2stateno != 5120 && random < 100
value = ifelse(random <= 500, 1200, 1000)

; Groovy Wheel & Exciting Kick
[State -1, AI Groovy Wheel & Exciting Kick]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A
triggerall = P2statetype != A && p2movetype != H
triggerall = p2movetype != A
triggerall = random >= 150
trigger1 = prevstateno != 5120 || prevstateno != 1200
trigger1 = (P2bodydist X = [60,150]) && p2stateno != 5120 && random < 100
value = ifelse(var(55) = 3 && random <= 500, 1300, 1400)

;Kuuchuu Exciting Kick
[State -1, AI Kuuchuu Exciting Kick]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType = A
triggerall = FrontEdgeDist >= 40
trigger1 = (p2bodydist x = [30,120]) && (p2bodydist y = [73,100]) && random < 200
value = 1405

; Double Rising Tornado (Roy Team Up)
[State -1, AI Double Rising Tornado]
type = ChangeState
triggerall = var(0)
triggerall = roundstate = 2
triggerall = teammode = single
triggerall = var(55) = 2  || var(55) = 3
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
triggerall = p2statetype != A && P2statetype != L && p2movetype != H
triggerall = P2bodyDist X <= 40
triggerall = P2stateno != 5120
trigger1 = Random < 50
value = 3300

; Double Power Buster (Boman Team Up)
[State -1, AI Double Power Buster]
type = ChangeState
triggerall = var(0)
triggerall = roundstate = 2
triggerall = teammode = single
triggerall = var(55) = 1  || var(55) = 3
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
triggerall = p2statetype != A && P2statetype != L && p2movetype != H
triggerall = P2bodyDist X <= 38
triggerall = P2stateno != 5120
trigger1 = Random < 50
value = 3400

;Overhead
[State -1, AI Overhead]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = ctrl && StateType != A
triggerall =  P2statetype = C
trigger1 = p2movetype = I
trigger1 = P2bodydist X = [10,65]
trigger1 = random < 65
value = ifelse(var(55) < 3, 710, 715)

; Jump Attacks
[State -1, AI Jump Attacks]
type = ChangeState
triggerAll = var(0)
triggerAll = statetype = A
triggerAll = ctrl
triggerAll = p2bodydist x <= 50
triggerall = random < 600
trigger1 = vel y > 0 && pos y = [-46,-35]
trigger1 = p2statetype != A
value = ifelse(random < 300, 620, ifelse(random < 300, 650, ifelse(random < 300 && var(55) = 4, 610, ifelse(random < 300 && var(55) = 4, 640, ifelse(random < 500, 600, 630)))))

; Combo Starter 1 (Light Attacks)
[State -1, AI Combo Starter - Light]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
Triggerall = (ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || (stateno = 104)) && statetype != A
triggerall = p2statetype != L && p2statetype != A
trigger1 = p2bodydist X <= 35
trigger1 = random < 400
value = ifelse((random < 300),200,ifelse(random < 200,230,ifelse(random < 300,400,430)))

; Combo Starter  (Medium Attacks)
[State -1, AI Combo Starter - Medium]
type = changestate
triggerall = var(55) = 4
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
Triggerall = (ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || (stateno = 104)) && statetype != A
triggerall = p2statetype != L && p2statetype != A
trigger1 = p2bodydist X <= 35
trigger1 = random < 300
value = ifelse((random < 300 && p2bodydist x <= 15),210,ifelse(random < 200,215,ifelse(random < 300,240,ifelse(random < 300,410,440))))

; Combo Starter  (Strong Attacks)
[State -1, AI Combo Starter - Strong]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
Triggerall = (ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || (stateno = 104)) && statetype != A
triggerall = p2statetype != L && p2statetype != A
trigger1 = p2bodydist X <= 35
trigger1 = var(55) = 4 && random < 400 || var(55) < 4 && random < 300
value = ifelse((var(55) = 4 && random < 300 && p2bodydist x <= 15),220,ifelse(random < 200,225,ifelse((var(55) = 4 && random < 300 && p2bodydist x <= 15),250,ifelse(random < 300,420,ifelse(var(55) < 4 && random < 300,450,255)))))

;Combo Starter  (Jumping after Mini Launcher)
[State -1, AI Jumping after Mini Launcher]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
triggerall = StateType != A
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = random <= 500
trigger1 = stateno = 720 && movehit && animelem = 8, >= 0
value = 40

;Combo Starter  (Jumping after Launcher)
[State -1, AI Jumping after Launcher]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = random <= 500
trigger1 = stateno = 730 && movehit && animelem = 10, >= 0
value = 40

; Combo A
[State -1, AI Combo A]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 32
trigger1 = random < 300 && var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 200 && movecontact
trigger2 = random < 300 && var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && movecontact
trigger3 = random < 300 && var(55) = 4 && stateno = 200 && movecontact
trigger4 = random < 300 && var(55) = 4 && stateno = 230 && movecontact
trigger5 = random < 300 && var(55) = 4 && stateno = 400 && movecontact
trigger6 = random < 300 && var(55) = 4 && stateno = 430 && movecontact
value = 200

; Combo B
[State -1, AI Combo B]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) < 4
trigger1 = random < 150 && prevstateno = 200 && stateno = 200 && movecontact
value = 790

; Combo C
[State -1, AI Combo C]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) < 4
triggerall = p2bodydist X <= 42
trigger1 = random < 300 && stateno = 200 && movecontact
trigger2 = random < 200 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && movecontact
value = 225

; Combo D
[State -1, AI Combo D]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 35
trigger1 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && movecontact
trigger2 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && movecontact
trigger3 = random < 100 && var(55) = 4 && stateno = 200 && movecontact
trigger4 = random < 100 && var(55) = 4 && stateno = 230 && movecontact
trigger5 = random < 100 && var(55) = 4 && stateno = 400 && movecontact
trigger6 = random < 100 && var(55) = 4 && stateno = 430 && movecontact
value = 230

; Combo E
[State -1, AI Combo E]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 55
trigger1 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && movecontact
trigger2 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && movecontact
value = 255

; Combo F
[State -1, AI Combo F]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 25
trigger1 = random < 100 && var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 200 && movecontact
trigger2 = random < 100 && var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && movecontact
trigger3 = random < 100 && var(55) = 4 && stateno = 200 && movecontact
trigger4 = random < 100 && var(55) = 4 && stateno = 230 && movecontact
trigger5 = random < 100 && var(55) = 4 && stateno = 400 && movecontact
trigger6 = random < 100 && var(55) = 4 && stateno = 430 && movecontact
value = 400

; Combo G
[State -1, AI Combo G]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 30
trigger1 = random < 100 && var(55) < 4 && stateno = 200 && movecontact
trigger2 = random < 100 && var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && movecontact
value = 420

; Combo H
[State -1, AI Combo H]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 52
trigger1 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && movecontact
trigger2 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && movecontact
trigger3 = random < 100 && var(55) = 4 && stateno = 200 && movecontact
trigger4 = random < 100 && var(55) = 4 && stateno = 230 && movecontact
trigger5 = random < 100 && var(55) = 4 && stateno = 400 && movecontact
trigger6 = random < 100 && var(55) = 4 && stateno = 430 && movecontact
value = 430

; Combo I
[State -1, AI Combo I]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 60
trigger1 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && movecontact
trigger2 = random < 100 && var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && movecontact
value = 450

; Combo J
[State -1, AI Combo J]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
trigger1 = random < 100 && numhelper(4050) && stateno = 600 && (prevstateno != 600 && prevstateno != 630) && movecontact
trigger2 = random < 100 && numhelper(4050) && stateno = 630 && (prevstateno != 600 && prevstateno != 630) && movecontact
value = 600

; Combo K
[State -1, AI Combo K]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
triggerall = var(55) = 4
trigger1 = random < 100 && numhelper(4050) && stateno = 600 && movecontact
trigger2 = random < 100 && numhelper(4050) && stateno = 630 && movecontact
trigger3 = random < 100 && numhelper(4050) && stateno = 640 && prevstateno != 610 && movecontact
value = 610

; Combo L
[State -1, AI Combo L]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
triggerall = var(55) < 4
trigger1 = random < 100 && numhelper(4050) && stateno = 600 && movecontact
trigger2 = random < 100 && numhelper(4050) && stateno = 630 && movecontact
trigger3 = random < 100 && var(55) < 4 && numhelper(4050) && stateno = 610 && movecontact
trigger4 = random < 100 && var(55) < 4 && numhelper(4050) && stateno = 640 && movecontact
trigger5 = random < 100 && var(55) < 4 && numhelper(4050) && stateno = 650 && prevstateno != 620 && movecontact
value = 620

; Combo M
[State -1, AI Combo M]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
trigger1 = random < 100 && numhelper(4050) && stateno = 600 && (prevstateno != 600 && prevstateno != 630) && movecontact
trigger2 = random < 100 && numhelper(4050) && stateno = 630 && (prevstateno != 600 && prevstateno != 630) && movecontact
value = 630

; Combo N
[State -1, AI Combo N]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
triggerall = var(55) = 4
trigger1 = random < 100 && numhelper(4050) && stateno = 600 && movecontact
trigger2 = random < 100 && numhelper(4050) && stateno = 630 && movecontact
trigger3 = random < 100 && numhelper(4050) && stateno = 610 && prevstateno != 640 && movecontact
value = 640

; Combo O
[State -1, AI Combo O]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
triggerall = var(55) < 4
trigger1 = random < 100 && numhelper(4050) && stateno = 600 && movecontact
trigger2 = random < 100 && numhelper(4050) && stateno = 630 && movecontact
trigger3 = random < 100 && var(55) < 4 && numhelper(4050) && stateno = 610 && movecontact
trigger4 = random < 100 && var(55) < 4 && numhelper(4050) && stateno = 640 && movecontact
trigger5 = random < 100 && var(55) < 4 && numhelper(4050) && stateno = 620 && prevstateno != 650 && movecontact
value = 650

; Combo P
[State -1, AI Combo P]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
trigger1 = var(55) < 4 && random < 100 && numhelper(4050) && stateno = 620 && movecontact
trigger2 = var(55) < 4 && random < 100 && numhelper(4050) && stateno = 650 && movecontact
trigger3 = var(55) = 4 && random < 100 && numhelper(4050) && stateno = 610 && movecontact
trigger4 = var(55) = 4 && random < 100 && numhelper(4050) && stateno = 640 && movecontact
value = 770

; Combo Q
[State -1, AI Combo Q]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype = A && vel x > 0
triggerall = p2statetype = A
triggerall = p2bodydist X <= 40
trigger1 = var(55) < 4 && random < 100 && numhelper(4050) && stateno = 620 && movecontact
trigger2 = var(55) < 4 && random < 100 && numhelper(4050) && stateno = 650 && movecontact
trigger3 = var(55) = 4 && random < 100 && numhelper(4050) && stateno = 610 && movecontact
trigger4 = var(55) = 4 && random < 100 && numhelper(4050) && stateno = 640 && movecontact
value = 780

; Combo R
[State -1, AI Combo R]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 70
trigger1 = random < 100 && var(55) < 4 && stateno = 200 && movecontact
trigger2 = random < 100 && var(55) < 4 && stateno = 225 && movecontact
trigger3 = random < 100 && var(55) < 4 && stateno = 255 && movecontact
trigger4 = random < 100 && var(55) < 4 && stateno = 400 && movecontact
trigger5 = random < 100 && var(55) < 4 && stateno = 420 && movecontact
trigger6 = random < 100 && var(55) < 4 && stateno = 450 && movecontact
value = ifelse(random < 600, 700, 708)

; Combo S
[State -1, AI Combo S]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 60
trigger1 = random < 100 && var(55) < 4 && stateno = 230 && movecontact
trigger2 = random < 100 && var(55) < 4 && stateno = 225 && movecontact
trigger3 = random < 100 && var(55) < 4 && stateno = 255 && movecontact
trigger4 = random < 100 && var(55) < 4 && stateno = 430 && movecontact
trigger5 = random < 100 && var(55) < 4 && stateno = 420 && movecontact
trigger6 = random < 100 && var(55) < 4 && stateno = 450 && movecontact
value = 705

; Combo T
[State -1, AI Combo T]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X <= 53
trigger1 = random < 100 && var(55) < 4 && stateno = 200 && movehit
trigger2 = random < 100 && var(55) < 4 && stateno = 225 && movehit
trigger3 = random < 100 && var(55) < 4 && stateno = 255 && movehit
trigger4 = random < 100 && var(55) < 4 && stateno = 400 && movehit
trigger5 = random < 100 && var(55) < 4 && stateno = 420 && movehit
trigger6 = random < 100 && var(55) < 4 && stateno = 450 && movehit
value = 720

; Combo RS Hyper
[State -1, AI Combo RS Hyper]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 1
triggerall = p2bodydist x <= 60
triggerall = power >= 1000
triggerall = random < 200
trigger1 = random < 200 && stateno = 225 && movehit
trigger2 = random < 100 && stateno = 255 && movehit
trigger3 = random < 200 && stateno = 420 && movehit
trigger4 = random < 200 && stateno = 450 && movehit
trigger5 = random < 500 && stateno = 700 && movehit
value = ifelse(power >= 2000 && p2bodydist x < 26 && random < 800, 3400, ifelse(p2bodydist x < 30 && random < 200, 3200, 3100))

; Combo RS2 Hyper
[State -1, AI Combo RS2 Hyper]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 2
triggerall = p2bodydist x <= 55
triggerall = power >= 1000
triggerall = random < 200
trigger1 = random < 200 && stateno = 225 && movehit
trigger2 = random < 100 && stateno = 255 && movehit
trigger3 = random < 200 && stateno = 420 && movehit
trigger4 = random < 200 && stateno = 450 && movehit
trigger5 = random < 500 && stateno = 700 && movehit
value = ifelse(power >= 2000 && p2bodydist x < 26 && random < 800, 3300, ifelse(p2bodydist x < 30 && random < 200, 3200, 3000))

; Combo RS/RS2 Special
[State -1, AI Combo RS/RS2 Special]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) < 3
trigger1 = random < 100 && prevstateno != 200 && stateno = 200 && movecontact
trigger2 = random < 200 && stateno = 225 && movecontact
trigger3 = random < 100 && stateno = 230 && movecontact
trigger4 = random < 100 && stateno = 255 && movecontact
trigger5 = random < 100 && stateno = 400 && movecontact
trigger6 = random < 200 && stateno = 420 && movecontact
trigger7 = random < 100 && stateno = 430 && movecontact
trigger8 = random < 200 && stateno = 450 && movecontact
trigger9 = random < 500 && stateno = 700 && movecontact
value = ifelse(p2bodydist x < 30 && random < 200, 1000,ifelse(p2bodydist x < 30 && random <= 500, 1100,1200))

; Combo PJ Hyper 1
[State -1, AI Combo PJ Hyper 1]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 3
triggerall = p2bodydist x <= 75
triggerall = power >= 1000
trigger1 = random < 200 && stateno = 225 && movehit
trigger2 = random < 100 && stateno = 255 && movehit
trigger3 = random < 200 && stateno = 420 && movehit
trigger4 = random < 200 && stateno = 450 && movehit
trigger5 = random < 500 && stateno = 700 && movehit
value = ifelse(power>=3000 && random<800, 3500, ifelse(power>=2000 && p2bodydist x < 43 && random<500, 3400, 3300))

; Combo PJ Hyper 2
[State -1, AI Combo PJ Hyper 2]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 3
triggerall = p2bodydist x <= 75
triggerall = power >= 1000
trigger1 = random < 200 && stateno = 225 && movehit
trigger2 = random < 100 && stateno = 255 && movehit
trigger3 = random < 200 && stateno = 420 && movehit
trigger4 = random < 200 && stateno = 450 && movehit
trigger5 = random < 500 && stateno = 700 && movehit
value = ifelse(p2bodydist x < 35 && random < 200,3200,ifelse(p2bodydist x < 40 && random < 200,3000,3250))

; Combo PJ Special
[State -1, AI Combo PJ Special]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 3
trigger1 = random < 100 && prevstateno != 200 && stateno = 200 && movecontact
trigger2 = random < 200 && stateno = 225 && movecontact
trigger3 = random < 100 && stateno = 230 && movecontact
trigger4 = random < 100 && stateno = 255 && movecontact
trigger5 = random < 100 && stateno = 400 && movecontact
trigger6 = random < 200 && stateno = 420 && movecontact
trigger7 = random < 100 && stateno = 430 && movecontact
trigger8 = random < 200 && stateno = 450 && movecontact
trigger9 = random < 500 && stateno = 700 && movecontact
value = ifelse(p2bodydist x < 30 && random < 200, 1000,ifelse(p2bodydist x < 30 && random <= 500, 1100,ifelse(random <= 500, 1300,1200)))

; Combo CVS2 Hyper 1
[State -1, AI Combo CVS2 Hyper 1]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 4
triggerall = p2bodydist x <= 70
triggerall = power >= 1000
triggerall = random < 500
trigger1 = var(55) = 4 && stateno = 210 && movehit
trigger2 = var(55) = 4 && stateno = 215 && movehit
trigger3 = var(55) = 4 && stateno = 220 && movehit
trigger4 = var(55) = 4 && stateno = 240 && movehit
trigger4 = var(55) = 4 && stateno = 250 && movehit
trigger6 = var(55) = 4 && stateno = 410 && movehit
trigger7 = var(55) = 4 && stateno = 420 && movehit
trigger8 = var(55) = 4 && stateno = 440 && movehit
value = ifelse(power >= 3000 && p2bodydist x < 35 && random < 500, 3500, 3250)

; Combo CVS2 Hyper 2
[State -1, AI Combo CVS2 Hyper 2]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 4
triggerall = p2bodydist x <= 70
triggerall = power >= 1000
trigger1 = var(55) = 4 && stateno = 200 && movehit
trigger2 = var(55) = 4 && stateno = 210 && movehit
trigger3 = var(55) = 4 && stateno = 215 && movehit
trigger4 = var(55) = 4 && stateno = 220 && movehit
trigger5 = var(55) = 4 && stateno = 230 && movehit
trigger6 = var(55) = 4 && stateno = 240 && movehit
trigger7 = var(55) = 4 && stateno = 250 && movehit
trigger8 = var(55) = 4 && stateno = 400 && movehit
trigger9 = var(55) = 4 && stateno = 410 && movehit
trigger10 = var(55) = 4 && stateno = 420 && movehit
trigger11 = var(55) = 4 && stateno = 430 && movehit
trigger12 = var(55) = 4 && stateno = 440 && movehit
value = ifelse(p2bodydist x < 35 && random < 500, 3200, 3000)

; Combo CVS2 Hyper 3
[State -1, AI Combo CVS2 Hyper 3]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 4
triggerall = p2bodydist x <= 75
triggerall = power >= 1000
trigger1 = var(55) = 4 && stateno = 1000 && movehit
trigger2 = var(55) = 4 && stateno = 1100 && movehit
trigger3 = var(55) = 4 && stateno = 1205 && movehit
value = ifelse(p2bodydist x < 70 && (prevstateno = 1000 || prevstateno = 1205) && random < 200, 3250, ifelse(p2bodydist x < 35 && random < 100, 3200, 3000))

; Combo CVS2 Hyper 4
[State -1, AI Combo CVS2 Hyper 4]
type = ChangeState
triggerall = NumEnemy
triggerall = roundstate = 2 && var(0)
triggerall = var(55) = 4
triggerall = (ctrl || (stateno = [100, 101])) && statetype != A
triggerall = power >= 1000
triggerall = random <= 800
trigger1 = numtarget(1406) && p2bodydist x <= 15 && (P2bodydist y = [-100,-65])
value = 3200

; Combo CVS2 Special
[State -1, AI Combo CVS2 Special]
type = changestate
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(55) = 4
trigger1 = random < 100 && stateno = 200 && movecontact
trigger2 = random < 100 && stateno = 210 && movecontact
trigger3 = random < 100 && stateno = 215 && movecontact
trigger4 = random < 100 && stateno = 220 && movecontact
trigger5 = random < 100 && stateno = 230 && movecontact
trigger6 = random < 100 && stateno = 240 && movecontact
trigger7 = random < 100 && stateno = 250 && movecontact
trigger8 = random < 100 && stateno = 400 && movecontact
trigger9 = random < 100 && stateno = 410 && movecontact
trigger10 = random < 100 && stateno = 420 && movecontact
trigger11 = random < 100 && stateno = 430 && movecontact
trigger12 = random < 100 && stateno = 440 && movecontact
trigger13 = random < 100 && stateno = 450 && moveguarded
trigger14 = power >= 1000 && var(2) = 1 && stateno = 3000 && movehit && animelemtime(40) > 0 && random < 800
value = ifelse(p2bodydist x < 50 && random < 200, 1000,ifelse(p2bodydist x < 42 && random < 200, 1100, ifelse(p2bodydist x < 40 && random < 400, 1200,1300)))

;AI Combo RS/RS2/PJ Special 2
[State -1, AI Combo RS/RS2/PJ Special 2]
type = ChangeState
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = var(55) < 4
triggerall = StateType = A
triggerall = p2bodydist x <= 55
trigger1 = numhelper(4050) && stateno = 600 && movehit && animelemtime(5) < 0
trigger2 = numhelper(4050) && stateno = 610 && movehit && animelemtime(4) < 0
trigger3 = numhelper(4050) && stateno = 620 && movehit && animelemtime(5) < 0
trigger4 = numhelper(4050) && stateno = 630 && movehit && animelemtime(4) < 0
trigger5 = numhelper(4050) && stateno = 640 && movehit && animelemtime(10) < 0
trigger6 = numhelper(4050) && stateno = 650 && movehit && animelemtime(5) < 0
value = 1405

;---------------------------------------------------------------------------;
;AI Combo PJ/CVS Special 3
[State -1, AI Combo PJ/CVS Special 3]
type = ChangeState
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = var(55) >= 3
triggerall = StateType = A
triggerall = p2bodydist x <= 45
trigger1 = numhelper(4050) && stateno = 600 && movehit && animelemtime(5) < 0
trigger2 = numhelper(4050) && stateno = 610 && movehit && animelemtime(4) < 0
trigger3 = numhelper(4050) && stateno = 620 && movehit && animelemtime(5) < 0
trigger4 = numhelper(4050) && stateno = 630 && movehit && animelemtime(4) < 0
trigger5 = numhelper(4050) && stateno = 640 && movehit && animelemtime(10) < 0
trigger6 = numhelper(4050) && stateno = 650 && movehit && animelemtime(5) < 0
value = 1405

;---------------------------------------------------------------------------;
;AI Combo CVS Special 4
[State -1, AI Combo CVS Special 4]
type = ChangeState
triggerall = NumEnemy
Triggerall = roundstate = 2 && Var(0)
triggerall = var(55) = 4
triggerall = StateType = A
triggerall = random <= 150
trigger1 = var(2) = 1 && stateno = 3200 && movehit && anim = 3200 && (animelemtime(20) >= 0 && animelemtime(21) <= 0)
value = 1405


;===========================================================================
; Skill Section
;===========================================================================
;---------------------------------------------------------------------------;
; Party Up
[State -1, Party Up]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = teammode = single
triggerall = var(55) >= 3
triggerall = power >= 3000
triggerall = command = "Party Up"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger3 = var(55) < 4 && stateno = 225 && movecontact
trigger4 = var(55) < 4 && stateno = 230 && movecontact
trigger5 = var(55) < 4 && stateno = 255 && movecontact
trigger6 = var(55) < 4 && stateno = 400 && movecontact
trigger7 = var(55) < 4 && stateno = 420 && movecontact
trigger8 = var(55) < 4 && stateno = 430 && movecontact
trigger9 = var(55) < 4 && stateno = 450 && movecontact
trigger10 = var(55) < 4 && stateno = 700 && movecontact
trigger11 = var(55) = 4 && stateno = 200 && movecontact
trigger12 = var(55) = 4 && stateno = 210 && movecontact
trigger13 = var(55) = 4 && stateno = 215 && movecontact
trigger14 = var(55) = 4 && stateno = 220 && movecontact
trigger15 = var(55) = 4 && stateno = 230 && movecontact
trigger16 = var(55) = 4 && stateno = 240 && movecontact
trigger17 = var(55) = 4 && stateno = 250 && movecontact
trigger18 = var(55) = 4 && stateno = 400 && movecontact
trigger19 = var(55) = 4 && stateno = 410 && movecontact
trigger20 = var(55) = 4 && stateno = 420 && movecontact
trigger21 = var(55) = 4 && stateno = 430 && movecontact
trigger22 = var(55) = 4 && stateno = 440 && movecontact
trigger23 = var(55) = 4 && stateno = 450 && movecontact
trigger24 = var(55) = 4 && stateno = 1150 && numprojid(1100) > 0
trigger25 = var(55) = 4 && stateno = 1200 && animelem = 3, < 0
trigger26 = var(55) = 4 && stateno = 1500 && statetype != A
trigger27 = var(55) = 4 && stateno = 1600 && statetype != A
trigger28 = var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact && statetype != A
value = 3500

;---------------------------------------------------------------------------;
;---------------------------------------------------------------------------;
; Double Rising Tornado (Roy Team Up)
[State -1, Double Rising Tornado]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = teammode = single
triggerall = var(55) = 2  || var(55) = 3
triggerall = power >= 2000
triggerall = command = "Double Rising Tornado"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger3 = var(55) < 4 && stateno = 225 && movecontact
trigger4 = var(55) < 4 && stateno = 230 && movecontact
trigger5 = var(55) < 4 && stateno = 255 && movecontact
trigger6 = var(55) < 4 && stateno = 400 && movecontact
trigger7 = var(55) < 4 && stateno = 420 && movecontact
trigger8 = var(55) < 4 && stateno = 430 && movecontact
trigger9 = var(55) < 4 && stateno = 450 && movecontact
trigger10 = var(55) < 4 && stateno = 700 && movecontact
trigger11 = var(55) = 4 && stateno = 200 && movecontact
trigger12 = var(55) = 4 && stateno = 210 && movecontact
trigger13 = var(55) = 4 && stateno = 215 && movecontact
trigger14 = var(55) = 4 && stateno = 220 && movecontact
trigger15 = var(55) = 4 && stateno = 230 && movecontact
trigger16 = var(55) = 4 && stateno = 240 && movecontact
trigger17 = var(55) = 4 && stateno = 250 && movecontact
trigger18 = var(55) = 4 && stateno = 400 && movecontact
trigger19 = var(55) = 4 && stateno = 410 && movecontact
trigger20 = var(55) = 4 && stateno = 420 && movecontact
trigger21 = var(55) = 4 && stateno = 430 && movecontact
trigger22 = var(55) = 4 && stateno = 440 && movecontact
trigger23 = var(55) = 4 && stateno = 450 && movecontact
value = 3300

; Double Power Buster (Boman Team Up)
[State -1, Double Power Buster]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = teammode = single
triggerall = var(55) = 1  || var(55) = 3
triggerall = power >= 2000
triggerall = command = "Double Power Buster"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger3 = var(55) < 4 && stateno = 225 && movecontact
trigger4 = var(55) < 4 && stateno = 230 && movecontact
trigger5 = var(55) < 4 && stateno = 255 && movecontact
trigger6 = var(55) < 4 && stateno = 400 && movecontact
trigger7 = var(55) < 4 && stateno = 420 && movecontact
trigger8 = var(55) < 4 && stateno = 430 && movecontact
trigger9 = var(55) < 4 && stateno = 450 && movecontact
trigger10 = var(55) < 4 && stateno = 700 && movecontact
trigger11 = var(55) = 4 && stateno = 200 && movecontact
trigger12 = var(55) = 4 && stateno = 210 && movecontact
trigger13 = var(55) = 4 && stateno = 215 && movecontact
trigger14 = var(55) = 4 && stateno = 220 && movecontact
trigger15 = var(55) = 4 && stateno = 230 && movecontact
trigger16 = var(55) = 4 && stateno = 240 && movecontact
trigger17 = var(55) = 4 && stateno = 250 && movecontact
trigger18 = var(55) = 4 && stateno = 400 && movecontact
trigger19 = var(55) = 4 && stateno = 410 && movecontact
trigger20 = var(55) = 4 && stateno = 420 && movecontact
trigger21 = var(55) = 4 && stateno = 430 && movecontact
trigger22 = var(55) = 4 && stateno = 440 && movecontact
trigger23 = var(55) = 4 && stateno = 450 && movecontact
value = 3400

;---------------------------------------------------------------------------;
; Groovy Special
[State -1, Groovy Special]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(55) > 1
triggerall = command = "Groovy Special" || var(55) = 4 && command = "Groovy Special_z"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = (var(55) = [2,3]) && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = var(55) = 4 && stateno = 1000 && anim = 1005 && movecontact && animelemtime(4) < 0
trigger26 = var(55) = 4 && stateno = 1100 && movecontact && animelemtime(5) < 0 && statetype != A
trigger27 = var(55) = 4 && stateno = 1205 && movecontact && animelemtime(7) <= 0
trigger28 = var(55) = 4 && stateno = 1300 && movecontact && animelemtime(8) < 0
trigger29 = var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact
value = 3000


;---------------------------------------------------------------------------;
; Air Buster
[State -1, Air Buster]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(55) = 1
triggerall = command = "Air Buster"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) = 1 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
value = 3100


;---------------------------------------------------------------------------;
; Wonderful Kick
[State -1, Wonderful Kick]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Wonderful Kick" || var(55) = 4 && command = "Wonderful Kick_c"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = var(55) = 4 && stateno = 1000 && anim = 1005 && movecontact && animelemtime(4) < 0
trigger26 = var(55) = 4 && stateno = 1100 && movecontact && animelemtime(5) < 0 && statetype != A
trigger27 = var(55) = 4 && stateno = 1205 && movecontact && animelemtime(7) <= 0
trigger28 = var(55) = 4 && stateno = 1300 && movecontact && animelemtime(8) < 0
trigger29 = var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact
value = 3200

;---------------------------------------------------------------------------;
; Groovy Screw
[State -1, Groovy Screw]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(55) > 2
triggerall = command = "Groovy Screw" || var(55) = 4 && command = "Groovy Screw_c"
triggerall = Statetype != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) = 3 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = var(55) = 4 && stateno = 1000 && anim = 1005 && movecontact && animelemtime(4) < 0
trigger26 = var(55) = 4 && stateno = 1100 && movecontact && animelemtime(5) < 0 && statetype != A
trigger27 = var(55) = 4 && stateno = 1205 && movecontact && animelemtime(7) <= 0
trigger28 = var(55) = 4 && stateno = 1300 && movecontact && animelemtime(8) < 0
trigger29 = var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact
value = 3250

;---------------------------------------------------------------------------;
; Groovy Knuckle
[State -1, Groovy Knuckle]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Groovy Knuckle"  || var(55) = 4 && command = "Groovy Knuckle_z"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact && statetype != A
value = 1000

;---------------------------------------------------------------------------;
; Beautiful Spin
[State -1, Beautiful Spin]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Beautiful Spin"  || var(55) = 4 && command = "Beautiful Spin_c"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact && statetype != A
value = 1100

;---------------------------------------------------------------------------;
; Groove Punch
[State -1, Groove Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Groovy Punch"  || var(55) = 4 && command = "Groovy Punch_z"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact && statetype != A
value = 1200

;---------------------------------------------------------------------------;
; Groovy Wheel
[State -1, Groovy Wheel]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) > 2
triggerall = command = "Groovy Wheel"  || var(55) = 4 && command = "Groovy Wheel_c"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) = 3 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact && statetype != A
value = 1300

;---------------------------------------------------------------------------;
; Exciting Kick
[State -1, Exciting Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Exciting Kick"  || var(55) = 4 && command = "Exciting Kick_c"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && prevstateno != 200 && stateno = 200 && movecontact
trigger4 = var(55) < 4 && stateno = 225 && movecontact
trigger5 = var(55) < 4 && stateno = 230 && movecontact
trigger6 = var(55) < 4 && stateno = 255 && movecontact
trigger7 = var(55) < 4 && stateno = 400 && movecontact
trigger8 = var(55) < 4 && stateno = 420 && movecontact
trigger9 = var(55) < 4 && stateno = 430 && movecontact
trigger10 = var(55) < 4 && stateno = 450 && movecontact
trigger11 = var(55) < 4 && stateno = 700 && movecontact
trigger12 = var(55) = 4 && stateno = 200 && movecontact
trigger13 = var(55) = 4 && stateno = 210 && movecontact
trigger14 = var(55) = 4 && stateno = 215 && movecontact
trigger15 = var(55) = 4 && stateno = 220 && movecontact
trigger16 = var(55) = 4 && stateno = 230 && movecontact
trigger17 = var(55) = 4 && stateno = 240 && movecontact
trigger18 = var(55) = 4 && stateno = 250 && movecontact
trigger19 = var(55) = 4 && stateno = 400 && movecontact
trigger20 = var(55) = 4 && stateno = 410 && movecontact
trigger21 = var(55) = 4 && stateno = 420 && movecontact
trigger22 = var(55) = 4 && stateno = 430 && movecontact
trigger23 = var(55) = 4 && stateno = 440 && movecontact
trigger24 = var(55) = 4 && stateno = 450 && movecontact
trigger25 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3000 && movecontact && statetype != A
value = 1400

;---------------------------------------------------------------------------;
; Kuuchuu Exciting Kick
[State -1, Kuuchuu Exciting Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Exciting Kick"  || var(55) = 4 && command = "Exciting Kick_c"
trigger1 = StateType = A && ctrl
trigger2 = var(55) < 4 && stateno = 154
trigger3 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3200 && movecontact && statetype = A
trigger4 = !var(0) && var(55) = 4 && var(2) = 1 && stateno = 3210 && movecontact && statetype = A
trigger5 = numhelper(4050) && stateno = 600 && movecontact
trigger6 = numhelper(4050) && stateno = 610 && movecontact
trigger7 = numhelper(4050) && stateno = 620 && movecontact
trigger8 = numhelper(4050) && stateno = 630 && movecontact
trigger9 = numhelper(4050) && stateno = 640 && movecontact
trigger10 = numhelper(4050) && stateno = 650 && movecontact
value = 1405

;---------------------------------------------------------------------------;
; Shoulder/German Suplex Throw
[State -1, Shoulder/German Suplex Throw]
type = ChangeState
value = 800
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = var(55) < 4 && ((command = "x" && command = "y") || command = "z")
trigger2 = var(55) = 4 && (command = "z" || command = "c") && ((command = "holdfwd" && p2bodydist X < 8) || (command = "holdback" && p2bodydist X < 10))
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------;
; Roll Backwards
[State -1, Roll Backwards]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "holdback" && command = "recovery"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 905

;---------------------------------------------------------------------------;
; Roll Forwards
[State -1, Roll Forwards]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "holdfwd" && command = "recovery"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 900

;---------------------------------------------------------------------------;
; Dodge
[State -1, Dodge]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = !var(0)
triggerall = command = "recovery" || var(55) < 4 && command = "c"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 910

;---------------------------------------------------------------------------;
; Dodge Attack (Punch)
[State -1, Dodge Attack (Punch)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = stateno = 910 && animelemtime(5) >= 3
trigger1 = command = "x" || command = "y" || command = "z"
value = 220

;---------------------------------------------------------------------------;
; Dodge Attack (Kick)
[State -1, Dodge Attack (Kick)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = stateno = 910 && animelemtime(5) >= 3
trigger1 = command = "a" || command = "b" || command = "c"
value = 705

;---------------------------------------------------------------------------;
;Guard Cancel (Roll Backwards)
[State -1, Guard Cancel (Roll Backwards)]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "holdback" && command = "recovery"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)
value = 920

;---------------------------------------------------------------------------;
;Guard Cancel (Roll Forwards)
[State -1, Guard Cancel (Roll Forwards)]
type = ChangeState
triggerall = !var(0)
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "holdfwd" && command = "recovery"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)
value = 915

;---------------------------------------------------------------------------;
;Guard Cancel (Attack)
[State -1, Guard Cancel (Attack)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = Command = "y" && command = "b"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)
value = 930

;---------------------------------------------------------------------------;
; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = Command = "holdz" && Command = "holdc" && power!= 3000
trigger1 = statetype != A
trigger1 = Ctrl
value = 950

;---------------------------------------------------------------------------;
; Tackle
[State -1, Tackle]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
trigger1 = (stateno = 100 && time > 0) && command = "holdfwd" && (command = "x" || command = "y")
value = 740

;---------------------------------------------------------------------------;
; Sliding Kick
[State -1, Sliding Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
trigger1 = (stateno = 100 && time > 0) && command = "holdfwd" && command = "a"
value = 750

;---------------------------------------------------------------------------;
; Flying Kick
[State -1, Flying Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
trigger1 = (stateno = 100 && time > 0) && command = "holdfwd" && command = "b"
value = 760

;---------------------------------------------------------------------------;
; Vigor Starter
[State -1, Vigor Starter]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
triggerall = command = "holdfwd" && command = "y"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger4 = var(55) < 4 && stateno = 225 && (animelem = 6, >= 3 || movecontact)
trigger5 = var(55) < 4 && stateno = 255 && (animelem = 3, >= 4 || movecontact)
trigger6 = var(55) < 4 && stateno = 400 && (animelem = 2, >= 3 || movecontact)
trigger7 = var(55) < 4 && stateno = 420 && (animelem = 7, >= 2 || movecontact)
trigger8 = var(55) < 4 && stateno = 450 && (animelem = 5, >= 3 || movecontact)
value = 700

;---------------------------------------------------------------------------;
; Knockbacks 1
[State -1, Knockbacks 1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
triggerall = command = "holdfwd" && command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger4 = var(55) < 4 && stateno = 225 && (animelem = 6, >= 3 || movecontact)
trigger5 = var(55) < 4 && stateno = 255 && (animelem = 3, >= 4 || movecontact)
trigger6 = var(55) < 4 && stateno = 400 && (animelem = 2, >= 3 || movecontact)
trigger7 = var(55) < 4 && stateno = 420 && (animelem = 7, >= 2 || movecontact)
trigger8 = var(55) < 4 && stateno = 450 && (animelem = 5, >= 3 || movecontact)
value = 705

;---------------------------------------------------------------------------;
; Knockbacks 2
[State -1, Knockbacks 2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
triggerall = command = "holdback" && command = "y"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && stateno = 230 && (animelem = 3, >= 3 || movecontact)
trigger4 = var(55) < 4 && stateno = 225 && (animelem = 6, >= 3 || movecontact)
trigger5 = var(55) < 4 && stateno = 255 && (animelem = 3, >= 4 || movecontact)
trigger6 = var(55) < 4 && stateno = 430 && (animelem = 3, >= 3 || movecontact)
trigger7 = var(55) < 4 && stateno = 420 && (animelem = 7, >= 2 || movecontact)
trigger8 = var(55) < 4 && stateno = 450 && (animelem = 5, >= 3 || movecontact)
value = 708

;---------------------------------------------------------------------------;
; Overhead
[State -1, Overhead]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "holdback" && command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
value = ifelse(var(55) < 3, 710, 715)

;---------------------------------------------------------------------------;
; Mini Launcer
[State -1, Mini Launcer]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
triggerall = command = "holdfwd" && command = "holddown" && command = "b"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger4 = var(55) < 4 && stateno = 225 && (animelem = 6, >= 3 || movecontact)
trigger5 = var(55) < 4 && stateno = 255 && (animelem = 3, >= 4 || movecontact)
trigger6 = var(55) < 4 && stateno = 400 && (animelem = 2, >= 3 || movecontact)
trigger7 = var(55) < 4 && stateno = 420 && (animelem = 7, >= 2 || movecontact)
trigger8 = var(55) < 4 && stateno = 450 && (animelem = 5, >= 3 || movecontact)
value = 720

;---------------------------------------------------------------------------;
; Launcer
[State -1, Launcer]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "holdfwd" && command = "holddown" && command = "y"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (stateno = 150 || stateno = 152)
trigger3 = var(55) < 4 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger4 = var(55) < 4 && stateno = 225 && (animelem = 6, >= 3 || movecontact)
trigger5 = var(55) < 4 && stateno = 255 && (animelem = 3, >= 4 || movecontact)
trigger6 = var(55) < 4 && stateno = 400 && (animelem = 2, >= 3 || movecontact)
trigger7 = var(55) < 4 && stateno = 420 && (animelem = 7, >= 2 || movecontact)
trigger8 = var(55) < 4 && stateno = 450 && (animelem = 5, >= 3 || movecontact)
value = 730

;---------------------------------------------------------------------------;
; Air Combo Finisher (Punch)
[State -1, Air Combo Finisher (Punch)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4 && command = "holdfwd" && command = "y"
trigger1 = StaTetype = A && ctrl
trigger2 = stateno = 154
trigger3 = numhelper(4050) && stateno = 620 && movecontact
trigger4 = numhelper(4050) && stateno = 650 && movecontact
value = 770

;---------------------------------------------------------------------------;
; Air Combo Finisher (Punch)
[State -1, Air Combo Finisher (Punch)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4 && command = "z"
trigger1 = numhelper(4050) && stateno = 610 && movecontact
trigger2 = numhelper(4050) && stateno = 640 && movecontact
value = 770

;---------------------------------------------------------------------------;
; Air Combo Finisher (Kick)
[State -1, Air Combo Finisher (Kick)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4 && command = "holdfwd" && command = "b"
trigger1 = StaTetype = A && ctrl
trigger2 = stateno = 154
trigger3 = numhelper(4050) && stateno = 620 && movecontact
trigger4 = numhelper(4050) && stateno = 650 && movecontact
value = 780

;---------------------------------------------------------------------------;
; Air Combo Finisher (Kick)
[State -1, Air Combo Finisher (Kick)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4 && command = "c"
trigger1 = numhelper(4050) && stateno = 610 && movecontact
trigger2 = numhelper(4050) && stateno = 640 && movecontact
value = 780

;---------------------------------------------------------------------------;
; Head Stomp
[State -1, Head Stomp]
type = ChangeState
triggerall = roundstate = 2
triggerall = command != "holdfwd" || command != "holdback"
triggerall = (var(55) < 4 && command = "holddown" && command = "a")  || (var(55) = 4 && command = "holddown" && command = "b")
trigger1 = StaTetype = A && ctrl
trigger2 = stateno = 154
value = 795

;---------------------------------------------------------------------------;
; Run Forward
[State -1, Run Forward]
type = ChangeState
triggerall = roundstate = 2
triggerall =  var(55) < 4
triggerall = command = "FF"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 100

;---------------------------------------------------------------------------;
; Dash Forward
[State -1, Dash Forward]
type = ChangeState
triggerall = roundstate = 2
triggerall =  var(55) = 4
triggerall = command = "FF"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 102

;---------------------------------------------------------------------------;
; Back Dash
[State -1, Back Dash]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "BB"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 105

;---------------------------------------------------------------------------;
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------;
; Stand Ligh Punch
[State -1, Stand Ligh Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && (animelem = 2, >= 3 || movecontact)
trigger4 = var(55) = 4 && stateno = 200 && animelem = 2, >= 2
trigger5 = var(55) = 4 && stateno = 230 && animelem = 2, >= 3
trigger6 = var(55) = 4 && stateno = 400 && animelem = 2, >= 2
trigger7 = var(55) = 4 && stateno = 430 && animelem = 3, >= 3
value = 200

;---------------------------------------------------------------------------;
; Textbook Combo Finisher
[State -1, Text Book Combo Finisher]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4
triggerall = command = "x" && command != "holddown"
triggerall = StateType != A
trigger1 = prevstateno = 200 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
value = 790

;---------------------------------------------------------------------------;
; Stand Medium Punch (close)
[State -1, Stand Medium Punch (close)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = (command = "y") && (command != "holddown") && (P2bodydist X <= 15)
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 210

;---------------------------------------------------------------------------;
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 215

;---------------------------------------------------------------------------;
; Stand Strong Punch (close)
[State -1, Stand Strong Punch (close)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = (command = "z") && (command != "holddown") && (P2bodydist X <= 15)
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 220

;---------------------------------------------------------------------------;
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4 && command = "y" || var(55) = 4 && command = "z"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && (animelem = 2, >= 3 || movecontact)
value = 225

;---------------------------------------------------------------------------;
; Stand Ligh Kick
[State -1, Stand Ligh Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "a") && (command != "holddown")
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && (animelem = 3, >= 4 || movecontact)
trigger4 = var(55) = 4 && stateno = 200 && animelem = 2, >= 2
trigger5 = var(55) = 4 && stateno = 230 && animelem = 2, >= 3
trigger6 = var(55) = 4 && stateno = 400 && animelem = 2, >= 2
trigger7 = var(55) = 4 && stateno = 430 && animelem = 3, >= 3
value = 230

;---------------------------------------------------------------------------;
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = (command = "b") && (command != "holddown")
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 240

;---------------------------------------------------------------------------;
; Stand Strong Kick (close)
[State -1, Stand Strong Kick (close)]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = (command = "c") && (command != "holddown") && (P2bodydist X <= 15)
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 250

;---------------------------------------------------------------------------;
; Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4 && command = "b" || var(55) = 4 && command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && (animelem = 3, >= 4 || movecontact)
value = 255

;---------------------------------------------------------------------------;
; Crouch Ligh Punch
[State -1, Crouch Ligh Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "x") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && (animelem = 2, >= 3 || movecontact)
trigger4 = var(55) = 4 && stateno = 200 && animelem = 2, >= 2
trigger5 = var(55) = 4 && stateno = 230 && animelem = 2, >= 3
trigger6 = var(55) = 4 && stateno = 400 && animelem = 2, >= 2
trigger7 = var(55) = 4 && stateno = 430 && animelem = 3, >= 3
value = 400

;---------------------------------------------------------------------------;
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = (command = "y") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 410

;---------------------------------------------------------------------------;
; Crouch Strong Punch
[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(55) < 4 && (command = "y") && (command = "holddown")) || (var(55) = 4 && (command = "z") && (command = "holddown"))
triggerall = (StateType = C||StateType != A)
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && stateno = 200 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 200 && prevstateno != 400) && stateno = 400 && (animelem = 2, >= 3 || movecontact)
value = 420

;---------------------------------------------------------------------------;
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "a") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && (animelem = 3, >= 4 || movecontact)
trigger4 = var(55) = 4 && stateno = 200 && animelem = 2, >= 2
trigger5 = var(55) = 4 && stateno = 230 && animelem = 2, >= 3
trigger6 = var(55) = 4 && stateno = 400 && animelem = 2, >= 2
trigger7 = var(55) = 4 && stateno = 430 && animelem = 3, >= 3
value = 430

;---------------------------------------------------------------------------;
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = (command = "b") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
value = 440

;---------------------------------------------------------------------------;
; Crouch Strong Kick
[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(55) < 4 && (command = "b") && (command = "holddown")) || (var(55) = 4 && (command = "c") && (command = "holddown"))
triggerall = (StateType = C||StateType != A)
trigger1 = ctrl || (stateno = 52 && time > 0) || (stateno = 100 && time > 4) || stateno = 104
trigger2 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 230 && (animelem = 2, >= 4 || movecontact)
trigger3 = var(55) < 4 && (prevstateno != 230 && prevstateno != 430) && stateno = 430 && (animelem = 3, >= 4 || movecontact)
value = 450

;---------------------------------------------------------------------------;
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = StaTetype = A && ctrl
trigger2 = numhelper(4050) && stateno = 600 && (prevstateno != 600 && prevstateno != 630) && movecontact
trigger3 = numhelper(4050) && stateno = 630 && (prevstateno != 600 && prevstateno != 630) && movecontact
value = 600

;---------------------------------------------------------------------------;
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "y"
trigger1 = StaTetype = A && ctrl
trigger2 = numhelper(4050) && stateno = 600 && movecontact
trigger3 = numhelper(4050) && stateno = 630 && movecontact
trigger4 = numhelper(4050) && stateno = 640 && prevstateno != 610 && movecontact
value = 610

;---------------------------------------------------------------------------;
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall =  var(55) < 4 && command = "y" || var(55) = 4 && command = "z"
trigger1 = StaTetype = A && ctrl
trigger2 = numhelper(4050) && stateno = 600 && movecontact
trigger3 = numhelper(4050) && stateno = 630 && movecontact
trigger4 = var(55) < 4 && numhelper(4050) && stateno = 610 && movecontact
trigger5 = var(55) < 4 && numhelper(4050) && stateno = 640 && movecontact
trigger6 = var(55) < 4 && numhelper(4050) && stateno = 650 && prevstateno != 620 && movecontact
value = 620

;---------------------------------------------------------------------------;
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = StaTetype = A && ctrl
trigger2 = numhelper(4050) && stateno = 600 && (prevstateno != 600 && prevstateno != 630) && movecontact
trigger3 = numhelper(4050) && stateno = 630 && (prevstateno != 600 && prevstateno != 630) && movecontact
value = 630

;---------------------------------------------------------------------------;
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) = 4
triggerall = command = "b"
trigger1 = StaTetype = A && ctrl
trigger2 = numhelper(4050) && stateno = 600 && movecontact
trigger3 = numhelper(4050) && stateno = 630 && movecontact
trigger4 = numhelper(4050) && stateno = 610 && prevstateno != 640 && movecontact
value = 640

;---------------------------------------------------------------------------;
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(55) < 4 && command = "b" || var(55) = 4 && command = "c"
trigger1 = StaTetype = A && ctrl
trigger2 = numhelper(4050) && stateno = 600 && movecontact
trigger3 = numhelper(4050) && stateno = 630 && movecontact
trigger4 = var(55) < 4 && numhelper(4050) && stateno = 610 && movecontact
trigger5 = var(55) < 4 && numhelper(4050) && stateno = 640 && movecontact
trigger6 = var(55) < 4 && numhelper(4050) && stateno = 620 && prevstateno != 650 && movecontact
value = 650


