;                                                                         ;
;                             KAZUKI KAZAMA                               ;
;                                                                         ;
;                                                                         ;
;-| Desperation Moves |---------------------------------------------------;
[Command]
name = "QCFQCF_x"
command = ~D, F, D, F, x
time = 30

[Command]
name = "QCFQCF_y"
command = ~D, F, D, F, y
time = 30

[Command]
name = "QCFQCF_a"
command = ~D, F, D, F, a
time = 30

[Command]
name = "QCFQCF_b"
command = ~D, F, D, F, b
time = 30

;-| Special Moves |--------------------------------------------------------;
[Command]
name = "QCBF_b"
command = ~D, B, F, b
time = 15

[Command]
name = "throw_x"
command = ~F D, DF, x
time = 15

[Command]
name = "throw_y"
command = ~F D, DF, y
time = 15

[Command]
name = "throw_a"
command = ~F D, DF, a
time = 15

[Command]
name = "throw_b"
command = ~F, D, DF, b
time = 15

[Command]
name = "dragonp_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "dragonp_cont"
command = /$F,b 
time = 10

[Command]
name = "dragonp_cont"
command = /$B,b
time = 10

[Command]
name = "QCF_x"
command = ~D, F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, F, y
time = 15

[Command]
name = "QCF_a"
command = ~D, F, a
time = 15

[Command]
name = "QCF_b"
command = ~D, F, b
time = 15

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "DP_x"
command = ~B, D, DB, x
time = 15

[Command]
name = "DP_y"
command = ~B, D, DB, y
time = 15

[Command]
name = "DP_a"
command = ~B, D, DB, a
time = 15

[Command]
name = "DP_b"
command = ~B, D, DB, b
time = 15

[Command]
name = "QCFB_start"
command = ~D, DF, F, B, start
time = 15

[Command]
name = "pounce"
command = U, x
time = 10

[Command]
name = "pounce"
command = U, y
time = 10

[Command]
name = "pounce"
command = U, a
time = 10

[Command]
name = "pounce"
command = ~F,F, x
time = 10

[Command]
name = "pounce"
command = ~F,F, y
time = 10

[Command]
name = "pounce"
command = ~F,F, a
time = 10

;-| AI |------------------------------------------------------------------;
[Command] 
name = "CPU1"
command = U, D, F, B, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU2"
command = U, D, F, B, U, F, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU3"
command = U, D, D, B, U, F, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU4"
command = D, U, D, U, F, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU5"
command = D, U, B, U, U, F, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU6"
command = U, D, D, F, F, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU7"
command = D, D, U, U, D, D, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU8"
command = F, U, D, D, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU9"
command = B, F, U, U, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU10"
command = B, F, U, U, F, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU11"
command = B, F, U, D, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU12"
command = B, D, U, B, B, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1




;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "combo";Required (do not remove)
command = a+b

[Command]
name = "xa"
command = x+a

[Command]
name = "ya"
command = y+a

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xyz"
command = x+y+z

[Command]
name = "xya"
command = x+y+a

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_xy"
command = /$F,x+y
time = 1
[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,b
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
name = "up_x"
command = /$U,x
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
name = "bck_a"
command = /$B,a
time = 1

[Command]
name = "df_b"
command = /DF,b
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

[Command]
name = "holddf";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /$z
time = 1

[Command]
name = "FWD"
command = F
time = 1

[Command]
name = "BACK"
command = B
time = 1

[Command]
name = "UP"
command = U
time = 1

;-| States |--------------------------------------------------------------
[Statedef -1]
; AI STATES
; AI Activate Command version
[State -1] 
type = VarSet
triggerall = roundstate = 2
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
trigger11 = command = "CPU11" 
trigger12 = command = "CPU12"
var(35) = 1

; AI Standing Guard
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = P2statetype != C 
triggerall = Statetype = S 
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = stateno != 810
triggerall = prevstateno != 810
triggerall = stateno != 805
triggerall = prevstateno != 805
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = ctrl = 1
trigger1 = random <= 700 
value = 130 

; AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 700
value = 131

; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 700
value = 132

;Master Arts Slash
[State -1]
type = ChangeState
value = 8000 
triggerall = var(35) = 1
triggerall = Statetype != A
triggerall = P2Statetype != L
triggerall = stateno != 8000
triggerall = life > 0
trigger1 = ((statetype = S) && (random <= 300) && (ctrl = 1) && (P2Movetype != H) && (P2BodyDist X = [0,20]))
trigger2 = ((stateno = 52) && (prevstateno = 1300) && (random <= 800) && (P2Movetype != H) && (P2BodyDist X = [0,30]))
trigger3 = ((stateno = 805) && (random <= 400) && (P2Movetype = A) && (P2BodyDist X = [0,20]))
trigger4 = ((prevstateno = 810) && (random <= 800) && (P2BodyDist X = [0,20]))
trigger5 = ((stateno = 100) && (p2bodydist X = [0,30])&& (P2BodyDist X = [0,20]))
trigger6 = ((prevstateno = 900) && (random <= 800) && (p2bodydist X = [0,30]) && (FrontEdgeBodyDist < 10))
trigger7 = ((prevstateno = 910) && (random <= 800) && (p2bodydist X = [0,30]) && (FrontEdgeBodyDist < 10))

;Weak Slash Master Arts
[State -1]
type = ChangeState
value = 201
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 8000 && MoveHit ;MoveContact

;Weak Slash Extended Master Arts
[State -1]
type = ChangeState
value = 206
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 201

;Crouch Trip Kick Master Arts
[State -1]
type = ChangeState
value = 441
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 431 && MoveContact   

;Crouch Slash Master Arts 1
[State -1]
type = ChangeState
value = 421
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 441 && MoveContact

;Medium Slash Close Master Arts
[State -1]
type = ChangeState
value = 281
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 206 && MoveContact

;Standing Kick Master Arts
[State -1]
type = ChangeState
value = 231
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 500
trigger1 = stateno = 281 && MoveContact

;Strong Slash Far
[State -1]
type = ChangeState
value = 221
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 100
trigger1 = stateno = 281 && MoveContact

;Rise Kick Master Arts 1
[State -1]
type = ChangeState
value = 960
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 400
trigger1 = stateno = 281 && MoveContact

;Command Light Kick Master Arts
[State -1]
type = ChangeState
value = 271
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 800
trigger1 = stateno = 231 && MoveContact

;Crouch Kick Master Arts
[State -1]
type = ChangeState
value = 431
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 271 && MoveContact

;Crouch Slash Master Arts 2
[State -1]
type = ChangeState
value = 422
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 421 && MoveContact

;Fist Master Arts
[State -1]
type = ChangeState
value = 930
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 422 && MoveContact

;Stomp Kick Master Arts 1
[State -1]
type = ChangeState
value = 950
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = stateno = 930 && MoveContact

;Fireball Master Arts
[State -1]
type = ChangeState
value = 970
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 700
trigger1 = stateno = 951 && MoveHit

;Stomp Kick  Master Arts 2
[State -1]
type = ChangeState
value = 990
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 200
trigger1 = stateno = 231 && MoveContact

;Lie-Down Kick
[State -1]
type = ChangeState
value = 270
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = statetype = S && ctrl = 1 && p2statetype = L && p2bodydist X = [0,10]

;Jump
[State -1]
type = ChangeState
value = 40
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype != A && ctrl && p2movetype != H
trigger1 = (p2bodydist x = [0,85]) && p2statetype = C && p2movetype != A && random <= 100
trigger2 = (p2bodydist x = [40,60]) && p2statetype = S && random <= 100

;Run
[State -1]
type = ChangeState
value = 100
triggerall = var(35) = 1
triggerall = life > 0
triggerall = stateno != 750
trigger1 = p2bodydist x > 30 && p2movetype != A && random < 400
trigger1 = stateno != 100 && statetype = S && ctrl
trigger2 = prevstateno = 900 && statetype = S && ctrl && p2bodydist x > 30 && movetype != A
trigger3 = prevstateno = 910 && statetype = S && ctrl && p2bodydist x > 30&& movetype != A
trigger4 = stateno = 951 && MoveGuarded && statetype = S && p2bodydist x >= 15

;Dodge
[State -1]
type = ChangeState
value = 805
triggerall = var(35) = 1
triggerall = statetype != A 
triggerall = stateno != 805
triggerall = ctrl
triggerall = life > 0
trigger1 = p2movetype = A && (P2BodyDist X = [0,30]) && random <= 500 

;Command Roll Forward
[State -1]
type = ChangeState
value = 111
triggerall = var(35) = 1
triggerall = statetype != A
triggerall = stateno != 110
triggerall = stateno != 115
triggerall = ctrl
triggerall = life > 0
trigger1 = p2movetype = A && P2bodydist X >= 100 && random <= 400 && (p2stateno != [120,152])
trigger2 = p2movetype = A && (p2bodydist x = [40,70]) && random <= 400 

;Command Roll Backwards
[State -1]
type = ChangeState
value = 116
triggerall = var(35) = 1
triggerall = statetype != A
triggerall = stateno != 110
triggerall = stateno != 115
triggerall = ctrl
triggerall = life > 0
trigger1 = p2bodydist x <= 40 && p2statetype = L && backedgebodydist > 60 && random <= 300

;Switch Sides
[State -1]
type = ChangeState
value= 810
triggerall = var(35) = 1
triggerall = statetype != A && ctrl
triggerall = stateno != 810
triggerall = life > 0
trigger1 = p2movetype = A && (P2bodydist X = [0,30]) && random <= 500 && (p2stateno != [120,152])
trigger2 = (p2stateno = [120,152]) && random <= 800

;Throw Push Forward 
[State -1]
type = ChangeState
value = 900
ctrl = 0
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = (p2bodydist x = [0,15]) && p2statetype != L && ctrl && random <= 400
trigger2 = stateno = 951 && MoveGuarded && statetype = S && p2bodydist x < 15 && random <= 400
trigger3 = stateno = 1200 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400
trigger4 = stateno = 1201 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400
trigger5 = stateno = 1202 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400
trigger6 = stateno = 1400 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400

;Throw Push Backward
[State -1]
type = ChangeState
value = 910
ctrl = 0
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = ctrl
trigger1   = (p2bodydist x = [0,15]) && p2statetype != L && ctrl && random <= 400
trigger2 = stateno = 951 && MoveGuarded && statetype = S && p2bodydist x < 15 && random <= 400
trigger3 = stateno = 1200 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400
trigger4 = stateno = 1201 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400
trigger5 = stateno = 1202 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400
trigger6 = stateno = 1400 && MoveGuarded && statetype = S && p2bodydist x < 30 && random <= 400


;Wall Jump
[State -1]
type = ChangeState
value = 47
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype = A && BackEdgeDist < 1 && Vel X <= 0 && stateno !=105 
trigger1 = stateno != 47 && ctrl = 1

;Walljump
[State -1]
type = ChangeState
value = 48
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype = A && FrontEdgeDist < 3  && stateno !=105 
trigger1 =  stateno != 47 && ctrl = 1
               
;Flame Soul Charge
[State -1]
type = ChangeState
value = 1115             
triggerall = var(35) = 1
triggerall = var(32) < 3
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = life > 0
trigger1 = P2BodyDist X > 160 && P2statetype = L
trigger2 = prevstateno = 970 && MoveHit

;Flame Retaliate
[State -1]
type = ChangeState
value = 1550
triggerall = var(35) = 1
triggerall = var(32) > 0 && life > 0 && pos y = 0 & p2stateno < 3000
triggerall = random <= 200     
triggerall = numhelper = 0
triggerall = stateno != 1550
triggerall = alive = 1
trigger1 = stateno = 5000 
trigger2 = stateno = 5001
trigger3 = stateno = 5002
trigger4 = stateno = 5010 
trigger5 = stateno = 5011
trigger6 = stateno = 5012
trigger7 = stateno = 5020
trigger8 = stateno = 5021
trigger9 = stateno = 5022

;Lie Down Pounce
[State -1]
type = ChangeState
value = 750
triggerall = var(35) = 1
triggerall = life > 0
triggerall = stateno != 750
triggerall = statetype != A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
trigger1   = p2statetype = L && random <= 100

;Feet of Flames
[State -1]
type = ChangeState
value = 1500             
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = ((P2statetype = A) && (statetype = S) && (ctrl = 1) && (P2BodyDist X = [10,40]) && (P2movetype != H)) 
trigger2 = ((stateno = 951) && (MoveHit) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 300))
trigger3 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (MoveHit) &&  (random <= 500))

;Feet of Flames followup
[State -1]
type = ChangeState
value = 1515             
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = ((stateno = 1510)  && (MoveHit) && (Time > 6)) 
trigger2 = ((stateno = 1515) && (MoveHit) && (Time > 5)) 

;Demon Rage
[State -1]
type = ChangeState
value = 1300
triggerall = var(35) = 1
triggerall = life > 0
triggerall = P2movetype != H
triggerall = p2statetype != L
trigger1 = ((statetype = A) && (ctrl = 1) && (P2BodyDist X = [0,70]) && (Pos Y < -80) && (P2statetype != A) && (random <= 600))

;Silent Inferno
[State -1]
type = ChangeState
value = 1700
triggerall = var(35) = 1
triggerall = random <= 400
triggerall = life > 0
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [30,60]) && (P2movetype = A) && (P2statetype != A))

;Exploding Death X
[State -1]
type = ChangeState
value = 1200
triggerall = var(35) = 1
triggerall = var(32) = 0
triggerall = life > 0
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [0,30]) && (P2movetype != H) && (random <= 100) && (P2Stateno != [120,152]))
trigger2 = ((stateno = 1400) && (MoveHit) && (random <= 400))
trigger3 = ((stateno = 951) && (MoveHit) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 300))
trigger4 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 200))
trigger5 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (random <= 500) && (MoveHit))

;Exploding Death Y
[State -1]
type = ChangeState
value = 1201
triggerall = var(35) = 1
triggerall = var(32) > 0
triggerall = life > 0
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [0,30]) && (P2movetype != H) && (random <= 200) && (P2Stateno != [120,152]))
trigger2 = ((stateno = 1400) && (MoveHit) && (random <= 400))
trigger3 = ((stateno = 951) && (MoveHit) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 300))
trigger4 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 200))
trigger5 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (random <= 500) && (MoveHit))

;Exploding Death A
[State -1]
type = ChangeState
value = 1202
triggerall = var(35) = 1
triggerall = var(32) > 1
triggerall = life > 0
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [0,30]) && (P2movetype != H) && (random <= 300) && (P2Stateno != [120,152]))
trigger2 = ((stateno = 1400) && (MoveHit) && (random <= 400))
trigger3 = ((stateno = 951) && (MoveHit) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 300))
trigger4 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 200))
trigger5 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (random <= 500) && (MoveHit))

;Exploding Death B
[State -1]
type = ChangeState
value = 1203
triggerall = var(35) = 1
triggerall = var(32) > 2
triggerall = life > 0
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [0,30]) && (P2movetype != H) && (random <= 300) && (P2Stateno != [120,152]))
trigger2 = ((stateno = 1400) && (MoveHit) && (random <= 400))
trigger3 = ((stateno = 951) && (MoveHit) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 300))
trigger4 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 200))
trigger5 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (random <= 500) && (MoveHit))

;Soul Burner Y
[State -1]
type = ChangeState
value = 1001
triggerall = var(35) = 1
triggerall = var(32) > 0
triggerall = random <= 100
triggerall = life > 0
triggerall = numproj = 0 
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X > 150 && P2movetype != H && (P2Stateno != [120,152])

;Soul Burner A
[State -1]
type = ChangeState
value = 1002
triggerall = var(35) = 1
triggerall = var(32) > 1
triggerall = random <= 200
triggerall = life > 0
triggerall = numproj = 0 
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X > 150 && P2movetype != H && (P2Stateno != [120,152]) 

;Soul Burner B
[State -1]
type = ChangeState
value = 1003
triggerall = var(35) = 1
triggerall = var(32) > 2
triggerall = random <= 200
triggerall = life > 0
triggerall = numproj = 0 
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X > 150 && P2movetype != H && (P2Stateno != [120,152]) 

;Hades Flame
[State -1]
type = ChangeState
value = 1400             
triggerall = var(35) = 1
triggerall = life > 0
triggerall = FrontEdgeBodyDist > 90
trigger1 = ((P2BodyDist X = [0,50]) && (stateno = 1700) && (P2movetype = I) && (random <= 700))
trigger2 = ((stateno = 951) && (MoveContact) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 500))
trigger3 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 500))

;Demon Path
[State -1]
type = ChangeState
value = 1410
triggerall = var(35) = 1
triggerall = life > 0
triggerall = stateno = 1400 && MoveHit
trigger1 = p2stateno = 5000
trigger2 = p2stateno = 5010
trigger3 = p2stateno = 5030
trigger4 = p2stateno = 5035
trigger5 = p2stateno = 5040

;Heaven's Glow
[State -1]
type = ChangeState
value = 1420
triggerall = var(35) = 1
triggerall = life > 0
triggerall = random <= 700
trigger1 = stateno = 1415 && (P2BodyDist X = [120,130])

;Slash Super
[State -1]
type = ChangeState
value = 6000
triggerall = power >= 1000  || var(30) = 1
triggerall = var(35) = 1
triggerall = random <= 600
triggerall = p2life > 0
triggerall = life > 0
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X > 200 && P2statetype != L && P2movetype != H
trigger2 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (MoveHit))

;Bust Super
[State -1]
type = ChangeState
value = 6100
triggerall = power >= 1000  || var(30) = 1
triggerall = var(35) = 1
triggerall = random <= 400
triggerall = p2life > 0
triggerall = life > 0
triggerall = p2statetype != L
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [0,30]) && (P2statetype != L) && (P2movetype != H))
trigger2 = stateno = 1415 && (P2BodyDist X = [100,130]) && random <= 700
trigger3 = ((stateno = 951) && (MoveHit) && (P2movetype != A) && (random <= 800))
trigger4 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 500))
trigger5 = ((stateno = 960) && (P2BodyDist X = [0,30]) && (MoveHit))
trigger6 = ((stateno = 805) && (P2BodyDist X = [0,30]) && (p2movetype = A))

;Fireball Super
[State -1]
type = ChangeState
value = 6200
triggerall = power >= 1000  || var(30) = 1
triggerall = var(35) = 1
triggerall = random <= 500
triggerall = p2life > 0
triggerall = life > 0
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X > 200 && P2movetype != H

;Suzaku Super
[State -1]
type = ChangeState
value = 6300
triggerall = power >= 1000  || var(30) = 1
triggerall = var(35) = 1
triggerall = p2life > 0
triggerall = life > 0
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X > 150 && random <= 350

;Rage
[State -1]
type = ChangeState
value = 7000
triggerall = var(30) = 0 && var(35) = 1 && p2life >= 0 && roundno > 1 && ctrl = 1
triggerall = life < 200 && random < 200
triggerall = life > 0
trigger1 = statetype = S || statetype = C

;Rage Attack
[State -1]
type = ChangeState
value = 7100
triggerall = var(30) = 1 && var(35) = 1 && p2life >= 0
triggerall = p2movetype != H && p2statetype != A && p2bodydist X < 200 && random < 700
triggerall = life > 0
trigger1 = statetype = S && ctrl = 1

;Honorable Death
[State -1]
type = ChangeState
value = 850
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl = 1 && roundsexisted < 3 && life < 20 && random <= 200
                                                                    
; ===========================
; M O V E S      M O V E S        M O V E S      M O V E S      M O V E S      M O V E S
;Slash Super
[State -1]
type = ChangeState
value = 6000
triggerall = command = "QCFQCF_x" && power >= 1000  || var(30) = 1 && command = "QCFQCF_x"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 280
trigger3 = stateno = 951

;Bust Super
[State -1]
type = ChangeState
value = 6100
triggerall = command = "QCFQCF_y" && power >= 1000 || var(30) = 1 && command = "QCFQCF_y"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 1415
trigger3 = stateno = 280
trigger4 = stateno = 951

;Fireball Super
[State -1]
type = ChangeState
value = 6200
triggerall = command = "QCFQCF_a" && power >= 1000 || var(30) = 1 && command = "QCFQCF_a"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1 
trigger2 = stateno = 1415
trigger3 = stateno = 280

;Suzaku Super
[State -1]
type = ChangeState
value = 6300
triggerall = command = "QCFQCF_b" && power >= 1000 || var(30) = 1 && command = "QCFQCF_b"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1

;Honorable Death
[State -1]
type = ChangeState
value = 850
triggerall = var(35) != 1
trigger1 = command = "QCFB_start" && statetype = S && ctrl = 1


[State -1]
type = ChangeState
value = 1410
triggerall = command = "QCF_y" && command != "throw_y"
triggerall = var(35) != 1
trigger1 = stateno = 1400 && p2stateno = 5000
trigger2 = stateno = 1400 && p2stateno = 5010
trigger3 = stateno = 1400 && p2stateno = 5030
trigger4 = stateno = 1400 && p2stateno = 5035
trigger5 = stateno = 1400 && p2stateno = 5040

[State -1]
type = ChangeState
value = 1420
triggerall = command = "QCF_a" && command != "throw_a"
triggerall = var(35) != 1
trigger1 = stateno = 1415 

;Air Kick
[State -1]
type = ChangeState
value = 1300
triggerall = command = "QCF_b"
triggerall = var(35) != 1
trigger1 = statetype = A && ctrl = 1

;Sitting Reversal
[State -1]
type = ChangeState
value = 1700
triggerall = command = "QCBF_b"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1

;Teleport
[State -1]
type = ChangeState
value = 1100             
triggerall = command = "DP_x"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 1415
trigger3 = stateno = 280
trigger4 = stateno = 1400
trigger5 = stateno = 1700

[State -1]
type = ChangeState
value = 1101             
triggerall = command = "DP_y"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 1415
trigger3 = stateno = 280
trigger4 = stateno = 1400
trigger5 = stateno = 1700

[State -1]
type = ChangeState
value = 1102             
triggerall = command = "DP_a"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 1415
trigger3 = stateno = 280
trigger4 = stateno = 1400
trigger5 = stateno = 1700

;Fake
[State -1]
type = ChangeState
value = 1115             
triggerall = command = "DP_b"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 1415
trigger3 = stateno = 280
trigger4 = stateno = 1400
trigger5 = stateno = 1700

;Throw X
[State -1]
type = ChangeState
value = 1200
triggerall = var(35) != 1
trigger1 = command = "throw_x" && statetype = S && ctrl = 1
trigger2 = command = "throw_y" && var(32) = 0 && statetype = S && ctrl = 1
trigger3 = command = "throw_a" && var(32) = 0 && statetype = S && ctrl = 1
trigger4 = command = "throw_x" && var(32) = 0 && stateno = 280 
trigger5 = command = "throw_y" && var(32) = 0 && stateno = 280 
trigger6 = command = "throw_a" && var(32) = 0 && stateno = 280 
trigger7 = command = "throw_x" && var(32) = 0 && stateno = 1400 
trigger8 = command = "throw_y" && var(32) = 0 && stateno = 1400
trigger9 = command = "throw_a" && var(32) = 0 && stateno = 1400 
trigger10= command = "throw_x" && var(32) = 0 && stateno = 951 
trigger11= command = "throw_y" && var(32) = 0 && stateno = 951
trigger12= command = "throw_a" && var(32) = 0 && stateno = 951
trigger13= command = "throw_b" && var(32) = 0 && statetype = S && ctrl = 1
trigger14= command = "throw_b" && var(32) = 0 && stateno = 280
trigger15= command = "throw_b" && var(32) = 0 && stateno = 1400
trigger16= command = "throw_b" && var(32) = 0 && stateno = 951

;Throw Y
[State -1]
type = ChangeState
value = 1201
triggerall = var(35) != 1
trigger1 = command = "throw_y"  && var(32) = 1 && statetype = S && ctrl = 1
trigger2 = command = "throw_a"  && var(32) = 1 && statetype = S && ctrl = 1
trigger3 = command = "throw_y"  && var(32) = 2 && statetype = S && ctrl = 1
trigger4 = command = "throw_y"  && var(32) = 3 && statetype = S && ctrl = 1
trigger5 = command = "throw_y"  && var(32) = 1 && stateno = 280 
trigger6 = command = "throw_a"  && var(32) = 1 && stateno = 280 
trigger7 = command = "throw_y"  && var(32) = 2 && stateno = 280 
trigger8 = command = "throw_y"  && var(32) = 3 && stateno = 280
trigger9 = command = "throw_y"  && var(32) = 1 && stateno = 1400
trigger10 = command = "throw_a"  && var(32) = 1 && stateno = 1400
trigger11 = command = "throw_y"  && var(32) = 2 && stateno = 1400
trigger12 = command = "throw_y"  && var(32) = 3 && stateno = 1400
trigger13 = command = "throw_y"  && var(32) = 1 && stateno = 951
trigger14 = command = "throw_a"  && var(32) = 1 && stateno = 951
trigger15 = command = "throw_y"  && var(32) = 2 && stateno = 951
trigger16 = command = "throw_y"  && var(32) = 3 && stateno = 951
trigger17 = command = "throw_b"  && var(32) = 1 && statetype = S && ctrl = 1
trigger18 = command = "throw_b"  && var(32) = 1 && stateno = 280
trigger19 = command = "throw_b"  && var(32) = 1 && stateno = 1400
trigger20 = command = "throw_b"  && var(32) = 1 && stateno = 951

;Throw A
[State -1]
type = ChangeState
value = 1202
triggerall = var(35) != 1
trigger1 = command = "throw_a" && var(32) = 2  && statetype = S && ctrl = 1
trigger2 = command = "throw_a" && var(32) = 3  && statetype = S && ctrl = 1
trigger3 = command = "throw_a" && var(32) = 2  && stateno = 280 
trigger4 = command = "throw_a" && var(32) = 3  && stateno = 280
trigger5 = command = "throw_a" && var(32) = 2  && stateno = 1400 
trigger6 = command = "throw_a" && var(32) = 3  && stateno = 1400
trigger7 = command = "throw_a" && var(32) = 2  && stateno = 951
trigger8 = command = "throw_a" && var(32) = 3  && stateno = 951
trigger9 = command = "throw_b" && var(32) = 2  && statetype = S && ctrl = 1
trigger10= command = "throw_b" && var(32) = 2  && stateno = 280
trigger11= command = "throw_b" && var(32) = 2  && stateno = 1400
trigger12= command = "throw_b" && var(32) = 2  && stateno = 951

;Throw B
[State -1]
type = ChangeState
value = 1203
triggerall = var(35) != 1
trigger1 = command = "throw_b" && var(32) = 3  && statetype = S && ctrl = 1
trigger2 = command = "throw_b" && var(32) = 3  && stateno = 280
trigger3 = command = "throw_b" && var(32) = 3  && stateno = 1400
trigger4 = command = "throw_b" && var(32) = 3  && stateno = 951

;Rising Kicks
[State -1]
type = ChangeState
value = 1500             
triggerall = command = "dragonp_b"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1  
trigger2 = stateno = 1415
trigger3 = stateno = 280
trigger4 = stateno = 1400
trigger5 = stateno = 1700
trigger6 = stateno = 951


;Slide Kick
[State -1]
type = ChangeState
value = 1400             
triggerall = command = "QCF_x" && command != "throw_x"
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 280
trigger3 = stateno = 1700
trigger4 = stateno = 951



;Fireball x
[State -1]
type = ChangeState
value = 1000
triggerall = var(35) != 1
triggerall = statetype = S && ctrl = 1
trigger1 = command = "QCB_x" && numproj = 0 
trigger2 = command = "QCB_y" && numproj = 0 && var(32) = 0
trigger3 = command = "QCB_a" && numproj = 0 && var(32) = 0
trigger4 = command = "QCB_b" && numproj = 0 && var(32) = 0


;Fireball y
[State -1]
type = ChangeState
value = 1001
triggerall = var(35) != 1
triggerall = statetype = S && ctrl = 1
trigger1 = command = "QCB_y" && numproj = 0 && var(32) = 1
trigger2 = command = "QCB_a" && numproj = 0 && var(32) = 1
trigger3 = command = "QCB_b" && numproj = 0 && var(32) = 1
trigger4 = command = "QCB_y" && numproj = 0 && var(32) = 2
trigger5 = command = "QCB_y" && numproj = 0 && var(32) = 3

;Fireball a
[State -1]
type = ChangeState
value = 1002
triggerall = var(35) != 1
triggerall = statetype = S && ctrl = 1
trigger1 = command = "QCB_a" && numproj = 0 && var(32) = 2
trigger2 = command = "QCB_a" && numproj = 0 && var(32) = 3
trigger3 = command = "QCB_b" && numproj = 0 && var(32) = 2


;Fireball b
[State -1]
type = ChangeState
value = 1003
triggerall = var(35) != 1
triggerall = statetype = S && ctrl = 1
trigger1 = command = "QCB_b" && numproj = 0 && var(32) = 3


;Rage Explosion
[State -1]
type = ChangeState
value = 7000
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = var(30) = 0
triggerall = command = "xya" 
trigger1 = ctrl
trigger2 = stateno = 1415

;Rage Attack
[State -1]
type = ChangeState
value = 7100
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = var(30) = 1
triggerall = command = "xya" 
trigger1 = ctrl
trigger2 = stateno = 1415

;Lie Down Pounce
[State -1]
type = ChangeState
value = 750
triggerall = var(35) != 1
triggerall = statetype != A && ctrl = 1 && p2statetype = L                               
trigger1 = command = "pounce"                                

;Command Roll Backwards
[State -1]
type = ChangeState
value = 116
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = life > 0
triggerall = command = "xa" || command = "yb"
triggerall = command = "holdback"
trigger1 = ctrl

;Command Roll Forward
[State -1]
type = ChangeState
value = 111
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = life > 0
triggerall = command = "xa" || command = "yb"
triggerall = command = "holdfwd"
trigger1 = ctrl

;Flame Retaliate
[State -1]
type = ChangeState
value = 1550
triggerall = var(35) != 1
triggerall = command = "xa" && var(32) > 0 && life > 0 && pos y = 0 & p2stateno < 3000
trigger1 = stateno = 5000 
trigger2 = stateno = 5001
trigger3 = stateno = 5002
trigger4 = stateno = 5010 
trigger5 = stateno = 5011
trigger6 = stateno = 5012
trigger7 = stateno = 5020
trigger8 = stateno = 5021
trigger9 = stateno = 5022

;Hop Crush
[State -1]
type = ChangeState
value = 290
triggerall = var(35) != 1
trigger1 = command = "ya" && statetype = S && ctrl = 1


;Switch
[State -1]
type = ChangeState
value= 810
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = stateno != [805,810]
triggerall = command = "fwd_xy"
triggerall = P2BodyDist X <= 60
trigger1 = ctrl
trigger2 = stateno = 280

;Weak Slash Extended
[State -1]
type = ChangeState
value = 205
triggerall = var(35) != 1
trigger1   = statetype = S && ctrl = 1 && command = "fwd_x"

;Crounching Trip Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(35) != 1
trigger1 = command = "df_b" && command = "holddown" && statetype = C && ctrl = 1                               
trigger2 = stateno = 100 && command = "b"
trigger3 = stateno = 100 && command = "fwd_b"

;Throw Push Forward
[State -1]
type = ChangeState
value = 900
triggerall = var(35) != 1
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 20
trigger1 = command = "fwd_a" && stateno != 100 && p2statetype = S && p2movetype != H
trigger2 = command = "fwd_a" && stateno != 100 && p2statetype = C && p2movetype != H

;Throw Push Backward
[State -1]
type = ChangeState
value = 910
triggerall = var(35) != 1
triggerall = statetype = S && ctrl = 1 && p2bodydist X < 20
trigger1 = command = "bck_a" && stateno != 100 && p2statetype = S && p2movetype != H
trigger2 = command = "bck_a" && stateno != 100 && p2statetype = C && p2movetype != H

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(35) != 1
trigger1 = command = "FF" && statetype = S && ctrl = 1  && command != "holddown" 

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = var(35) != 1
trigger1 = command = "BB" && statetype = S && ctrl = 1

;Charge
[State -1]
type = ChangeState
value = 800
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = power < 3000 
triggerall = stateno != 800 
triggerall = command = "a" 
triggerall = command = "b"
triggerall = var(30) = 0
trigger1 = ctrl 

;Charge Full
[State -1]
type = ChangeState
value = 801
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = power >= 3000 || var(30) != 0
triggerall = command = "a" 
triggerall = command = "b"
trigger1 = ctrl

;Dodge
[State -1]
type = ChangeState
value = 805
triggerall = var(35) != 1
triggerall = statetype != A 
triggerall = stateno != 805 
triggerall = command = "x" 
triggerall = command = "y" 
triggerall = command != "holddown"
trigger1 = ctrl

;Wall Jump
[State -1]
type = ChangeState
value = 47
triggerall = var(35) != 1
triggerall = life > 0
triggerall = statetype = A  
triggerall = stateno != 47  && stateno !=105 && ctrl = 1
trigger1 = ((command = "holdfwd") && (Vel X <= 0) && (backedgebodydist < 1))

;Walljump
[State -1]
type = ChangeState
value = 48
triggerall = var(35) != 1
triggerall = statetype = A && FrontEdgeDist < 3  && stateno !=105 && command = "holdback"
trigger1 = !stateno = [600, 690]
trigger2 = stateno != 47 && ctrl = 1

;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = var(35) != 1
triggerall = command = "start" 
trigger1 = statetype != A && ctrl = 1                                  


;Weak Slash
[State -1]
type = ChangeState
value = 200
triggerall = var(35) != 1
triggerall = command = "x" && command != "holddown" && stateno != 100 
trigger1 = statetype = S && ctrl = 1
            
;Medium Slash Far
[State -1]
type = ChangeState
value = 210
triggerall = var(35) != 1
triggerall = command = "y" && command != "holddown" && P2BodyDist X >= 40  && stateno != 100 
trigger1 = statetype = S && ctrl = 1

;Medium Slash Close
[State -1]
type = ChangeState
value = 280
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1 && P2BodyDist X < 40 && command = "y" && command != "holddown"  && var(15) != 1
trigger2 = statetype = S && stateno = 100 && command = "fwd_y" && command != "holddown" && var(15) != 1


;Strong Slash Far
[State -1]
type = ChangeState
value = 220
triggerall = var(35) != 1
trigger1 = command = "a" && command != "holddown" && P2BodyDist X >= 50 && stateno != 100 && statetype = S && ctrl = 1
trigger2 = stateno = 900 && MoveHit && command = "a" && time >= 30
trigger3 = stateno = 920 && MoveHit && command = "a" && time >= 9


;Strong Slash Far
[State -1]
type = ChangeState
value = 221
triggerall = var(35) != 1
trigger1 = command = "a" && command != "holddown" && stateno = 100 
trigger2 = command = "fwd_a" && command != "holddown" && stateno = 100
trigger3 = stateno = 281 && MoveContact && command = "a" && var(15) = 1

;Strong Slash Close
[State -1]
type = ChangeState
value = 260
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1 && command = "a" && command != "holddown" && P2BodyDist X < 50  && stateno != 100 && var(15) != 1
trigger2 = stateno = 206 && MoveContact && command = "x" && var(15) = 1

;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1 && command = "b" && command != "holddown" && command != "fwd_b" && stateno != 100 

;Command Light Kick
[State -1]
type = ChangeState
value = 270
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl = 1 && command = "fwd_b" && command != "holddown"  && stateno != 100 

;Crouching Weak Slash
[State -1]
type = ChangeState
value = 400
triggerall = var(35) != 1
triggerall = command = "x" && command = "holddown" 
trigger1 = statetype = C && ctrl = 1                                  

;Crouching Medium Slash
[State -1]
type = ChangeState
value = 410
triggerall = var(35) != 1
triggerall = command = "y" && command = "holddown" 
trigger1 = statetype = C && ctrl = 1                                  

;Crouching Strong Slash
[State -1]
type = ChangeState
value = 420
triggerall = var(35) != 1
trigger1 = statetype = C && ctrl = 1 && command = "a" && command = "holddown" 
trigger2 = stateno = 440 && MoveContact && var(15) = 1 && command = "y" 



;Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(35) != 1
trigger1 = statetype = C && ctrl = 1 && command = "b" && command = "holddown" 

;Jump Light Slash Stationary
[State -1]
type = ChangeState
value = 600
triggerall = var(35) != 1
triggerall = command = "x" 
trigger1 = statetype = A && ctrl = 1 && vel X = 0                                 

;Jump Light Slash Moving
[State -1]
type = ChangeState
value = 640
triggerall = var(35) != 1
triggerall = command = "x"
trigger1 = statetype = A && ctrl = 1 && vel X != 0 && stateno != 105 

;Jump Medium Slash Stationary
[State -1]
type = ChangeState
value = 610
triggerall = var(35) != 1
triggerall = command = "y" 
trigger1 = statetype = A && ctrl = 1 && vel X = 0                                  

;Jump Medium Slash Moving
[State -1]
type = ChangeState
value = 650
triggerall = var(35) != 1
triggerall = command = "y"
trigger1 =  statetype = A && ctrl = 1 && vel X != 0 && stateno != 105 

;Jump Strong Slash
[State -1]
type = ChangeState
value = 620
triggerall = var(35) != 1
triggerall = command = "a" 
trigger1 = statetype = A && ctrl = 1 && stateno != 105                                

;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = var(35) != 1
triggerall = command = "b" 
trigger1 = statetype = A && ctrl = 1 && stateno != 105                                  

;Master Arts Section
;Combo Starter
[State -1]
type = ChangeState
value = 8000
triggerall = var(35) != 1
triggerall = command != "holddown"
trigger1 = command = "z" && statetype = S && ctrl = 1 && stateno != 100
trigger2 = command = "z" && stateno = 100

;Weak Slash Master Arts
[State -1]
type = ChangeState
value = 201
triggerall = var(35) != 1
trigger1 = stateno = 8000 && MoveHit && command = "x" && var(15) = 1 ;MoveContact

;Weak Slash Extended Master Arts
[State -1]
type = ChangeState
value = 206
triggerall = var(35) != 1
trigger1 = stateno = 201 && command = "x" && var(15) = 1 

;Crouch Trip Kick Master Arts
[State -1]
type = ChangeState
value = 441
triggerall = var(35) != 1
trigger1 = stateno = 431 && MoveContact && command = "x" && var(15) = 1 

;Crouch Slash Master Arts 1
[State -1]
type = ChangeState
value = 421
triggerall = var(35) != 1
trigger1 = stateno = 441 && MoveContact && command = "y" && var(15) = 1 

;Medium Slash Close Master Arts
[State -1]
type = ChangeState
value = 281
triggerall = var(35) != 1
trigger1 = stateno = 206 && MoveContact && command = "y" && var(15) = 1 
trigger2 = stateno = 201 && command = "y" && var(15) = 1

;Standing Kick Master Arts
[State -1]
type = ChangeState
value = 231
triggerall = var(35) != 1
trigger1 = stateno = 281 && MoveContact && command = "y" && var(15) = 1  

;Command Light Kick Master Arts
[State -1]
type = ChangeState
value = 271
triggerall = var(35) != 1
trigger1 = stateno = 231 && MoveContact && command = "a" && var(15) = 1  

;Crouch Kick Master Arts
[State -1]
type = ChangeState
value = 431
triggerall = var(35) != 1
trigger1 = stateno = 271 && MoveContact && command = "a" && var(15) = 1 


;Crouch Slash Master Arts 2
[State -1]
type = ChangeState
value = 422
triggerall = var(35) != 1
trigger1 = stateno = 421 && MoveContact && command = "a" && var(15) = 1 && animelemtime(4) > 0 

;Fist Master Arts
[State -1]
type = ChangeState
value = 930
triggerall = var(35) != 1
trigger1 = stateno = 422 && MoveContact && command = "a" && var(15) = 1 && animelemtime(4) > 0 

;Stomp Kick Master Arts 1
[State -1]
type = ChangeState
value = 950
triggerall = var(35) != 1
trigger1 = stateno = 930 && MoveContact && command = "a" && var(15) = 1 

;Rise Kick Master Arts 1
[State -1]
type = ChangeState
value = 960
triggerall = var(35) != 1
trigger1 = stateno = 281 && MoveContact && command = "b" && var(15) = 1 

;Fireball Master Arts
[State -1]
type = ChangeState
value = 970
triggerall = var(35) != 1
trigger1 = stateno = 951 && MoveContact && command = "a" && var(15) = 1 

;Stomp Kick  Master Arts 2
[State -1]
type = ChangeState
value = 990
triggerall = var(35) != 1
trigger1 = stateno = 231 && MoveContact && command = "y" && var(15) = 1

[State -1]
type = ChangeState
triggerall = stateno = 6200
trigger1 = command != "hold_a" || Time >= 500
value = 6210
ctrl = 0

