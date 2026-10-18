;-| Defaults |-------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;----------------------------------------------------------------------------
[command]
name = "CPU1"
command = D,D,D
time = 0

[Command]
name = "CPU2"
command = U,U,D
time = 0

[Command]
name = "CPU3"
command = U,U,D
time = 0

[Command]
name = "CPU4"
command = U,U,D
time = 0

[Command]
name = "CPU5"
command = U,U,D
time = 0

[Command]
name = "CPU6"
command = U,U,D,D
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU26"
command = U,U,D,D
time = 0

[Command]
name = "CPU27"
command = U,U,D,D
time = 0

[Command]
name = "CPU28"
command = U,U,D,D
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU31"
command = U,U,D,D
time = 0

[Command]
name = "CPU32"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU33"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU34"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU35"
command = a,U,D,D,B
time = 0

[Command]
name = "CPU36"
command = U,c,D,D,B
time = 0

[Command]
name = "CPU37"
command = U,F,D,D,B
time = 0

[Command]
name = "CPU38"
command = U,U,D,D
time = 0

[Command]
name = "CPU39"
command = U,U,B,D
time = 0

[Command]
name = "CPU40"
command = U,D,D
time = 0

[Command]
name = "CPU41"
command = U,U,D,B
time = 0

[Command]
name = "CPU42"
command = U,U,D,D
time = 0
;-| Supers |---------------------------------------------------------------------
[Command]
name = "madness"
command = ~D, DF, F, a+b
time = 30
[Command]
name = "madness"
command = ~D, DF, F, a+c
time = 30
[Command]
name = "madness"
command = ~D, DF, F, b+c
time = 30


[Command]
name = "free"
command = ~D, DB, B, x+y
time = 40
[Command]
name = "free"
command = ~D, DB, B, x+z
time = 40
[Command]
name = "free"
command = ~D, DB, B, y+z
time = 40


[Command]
name = "max_drill"
command = ~D, DB, B, a+b
time = 40
[Command]
name = "max_drill"
command = ~D, DB, B, a+c
time = 40
[Command]
name = "max_drill"
command = ~D, DB, B, b+c
time = 40

;[Command]
;name = "drill"
;command = ~F, D, B, F, D, B, x
;time = 40

;[Command]
;name = "drill"
;command = ~F, D, B, F, D, B, y
;time = 40

[Command]
name = "max_guillotine"
command = ~D, DF, F, y+z
time = 30
[Command]
name = "max_guillotine"
command = ~D, DF, F, x+y
time = 30
[Command]
name = "max_guillotine"
command = ~D, DF, F, x+z
time = 30

;[Command]
;name = "guillotine"
;command = ~D, DF, F, D, DF, F, x
;time = 30

;[Command]
;name = "guillotine"
;command = ~D, DF, F, D, DF, F, y
;time = 30

;-| Specials |-------------------------------------------------------------------
[Command]
name = "sand_kick_a"
command = ~D, DF, F, a

[Command]
name = "sand_kick_a"
command = ~D, DF, F, b

[Command]
name = "sand_kick_b"
command = ~D, DF, F, c
;-------------------------------------------
[Command]
name = "sado_mazo_a"
command = ~D, DB, B, a

[Command]
name = "sado_mazo_b"
command = ~D, DB, B, b

[Command]
name = "sado_mazo_b"
command = ~D, DB, B, c
;----------------------------------------
[Command]
name = "bakudan_pachiki"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "bakudan_pachiki"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "bakudan_pachiki"
command = ~F, DF, D, DB, B, z
time = 30
;------------------------------------------
[Command]
name = "sabaki_no_aikuchi_x"
command = ~F, D, DF, x

[Command]
name = "sabaki_no_aikuchi_y"
command = ~F, D, DF, y

[Command]
name = "sabaki_no_aikuchi_z"
command = ~F, D, DF, z
;-------------------------------------------------
[Command]
name = "snake_hand_x"
command = ~B, D, DB, x

[Command]
name = "snake_hand_y"
command = ~B, D, DB, y

[Command]
name = "snake_hand_z"
command = ~B, D, DB, z

;----------------------------------------
[Command]
name = "hebi_tsukai_x"
command = ~D, DB, B, x

[Command]
name = "hebi_tsukai_y"
command = ~D, DB, B, y

[Command]
name = "hebi_tsukai_z"
command = ~D, DB, B, z
;-------------------------------------
[Command]
name = "bai_gaeshi_x"
command = ~D, DF, F, x

[Command]
name = "bai_gaeshi_y"
command = ~D, DF, F, y

[Command]
name = "bai_gaeshi_z"
command = ~D, DF, F, z

;-| Basic: Double Tap - Long Jump |----------------------------------------------
[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "guardbreak"
command = b+y
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = b+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "DU"
command = D, U
time = 18

[Command]
name = "DU"
command = DB, UF
time = 18

[Command]
name = "DU"
command = DF, UB
time = 18

[Command]
name = "DU"
command = $D, UF
time = 18

[Command]
name = "DU"
command = $D, UB
time = 18

;-| Basic: Single Button |---------------------------------------------------------
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

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "up"
command = U
time = 1

;-| Basic: Button Hold |-------------------------------------------------------
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

;-| Basic: Button Combo |---------------------------------------------------
[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

;---------------------------------------------------------------------------

[Command]

name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]

name = "CPU2"
command = D, D, U, U, D, U, D, D, U, D
time = 1

;[Command]

;name = "CPU3"
;command = D, D, U, U, D, U, U, U, D
;time = 1
[Statedef -1]

[State -1, tag]
type = ChangeState
value = 4712
triggerall = command = "c" && command = "z"
triggerall = (Var(10) = 2) && (partner, life > 0) && (partner, stateno = 4714)
trigger1 = (StateType != A) && (Ctrl = 1)

[State -1, assist]
type = ChangeState
value = 4716
triggerall = command = "a" && command = "x"
triggerall = (Var(10) = 2) && (partner, life > 0) && (partner, stateno = 4714)
trigger1 = (StateType != A) && (Ctrl = 1)

[State -1, dualhypers]
type = ChangeState
value = 4718
triggerall = command = "holddown" && command = "b" && command = "y"
triggerall = (Var(10) = 2) && (partner, life > 0) && (power >= 2000)
trigger1 = (StateType != A) && (Ctrl = 1)

;TaggingAI By Sludge
[State -1, Activate AI]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
;trigger3 = command = "CPU3"
v = 11 ;Tag AI Activation Variable
value = 1 

[State -1, TagINCheck1] ;energy depleted by a third, tag in partner? (Only if partner has more life) (20%) chance
type = ChangeState
value = 4712
triggerall = (partner, stateno = 4714) && (var(11) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 =  (life < 700) && (partner, life > 750) && (ctrl = 1) && (random <= 700) ;Taking some damage
trigger2 =  (life < 400) && (partner, life > 450)  && (ctrl = 1) && (random <= 500) ;In the middle
trigger3 =  (life < 150) && (partner, life > 400)  && (ctrl = 1) && (random <= 300) ;Life is really low
persistent = 0

[State -1, PerformAssist] ;call in partner for an assist? (10%) chance
type = ChangeState
value = 4716
triggerall = (var(11) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0) && (partner, life > 0) && (partner, stateno = 4714)
trigger1 =  (ctrl = 1) && (partner, life > 100) && (random >= 990)
persistent = 0

[State -1, PerformDualHyper] ;call in partner for a dual hyper? (10%) chance
type = ChangeState
value = 4718
triggerall = (var(11) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0) && (partner, life > 0) && (power >= 2000) && (partner, stateno = 4714)
trigger1 =  (ctrl = 1) && (random >= 990)
persistent = 0


[State -1]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU32"
trigger2 = command = "CPU33"
trigger3 = command = "CPU34"
trigger4 = command = "CPU35"
trigger5 = command = "CPU36"
trigger6 = command = "CPU37"
trigger7 = command = "CPU38"
trigger8 = command = "CPU39"
trigger9 = command = "CPU40"
trigger10 = command = "CPU41"
trigger11 = command = "CPU42"
v = 59
value = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 3600
triggerall = power >= 1000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = (stateno != [800,899])
triggerall = (stateno != [3000,3999])
Triggerall = Random < 249
triggerall = p2statetype !=L
triggerall = movetype!=H
triggerall = p2bodydist y=[-75,0]
Triggerall = P2BodyDist X = [0,80]
triggerall =p2stateno!=1415
triggerall= p2stateno!=[120,160]
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || stateno = 300 || (stateno = [400, 430]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 1000
trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 1000
;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 3700
triggerall = power >= 1000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = (stateno != [800,899])
triggerall = (stateno != [3000,3999])
Triggerall = Random < 249
triggerall = p2statetype !=L
triggerall = movetype!=H
triggerall = p2bodydist y=[-75,0]
Triggerall = P2BodyDist X = [0,150]
triggerall =p2stateno!=1415
triggerall= p2stateno!=[120,160]
trigger1 = ctrl
trigger2 = ((stateno = [200, 250]) || stateno = 231 || stateno = 300 || (stateno = [400, 450]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 1000
trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 1000

;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 3150
triggerall = Var(59) = 1
triggerall = random <= 249
triggerall = power >= 1000
triggerall = movetype!=H
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = ctrl
triggerall = (stateno != [800,899])
triggerall = (stateno != [3000,3999])
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
triggerall =  p2bodydist X < 20 && p2dist y <= 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 1000

;---------------------------------------------------------------------------
;[State -1, AI]
;type = ChangeState
;value = 3100
;triggerall = Var(59) = 1
;triggerall = random <= 249
;triggerall = power >= 1000
;triggerall = movetype!=H
;triggerall = statetype != A
;triggerall = p2statetype != A
;trigger1 = ctrl
;triggerall = (stateno != [800,899])
;triggerall = (stateno != [3000,3999])
;Triggerall = (RoundState = 2)
;triggerall = (p2MoveType != H)
;triggerall =  p2bodydist X < 20 && p2dist y <= 0
;trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000
;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 3050
triggerall = power >= 1000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = (stateno != [800,899])
triggerall = (stateno != [300,3999])
Triggerall = Random < 249
triggerall = movetype!=H
triggerall = p2statetype !=L
triggerall = p2bodydist y=[-180,0]
Triggerall = P2BodyDist X = [0,110]
triggerall= p2stateno!=[120,160]
triggerall =p2stateno!=1415
trigger1 = ctrl
trigger2 = ((stateno = [200, 250]) || stateno = 231 || (stateno = [400, 450]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 3000
trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 1000
trigger5= p2statetype=A && ctrl
;---------------------------------------------------------------------------
;[State -1, AI]
;type = ChangeState
;value = 3000
;triggerall = power >= 1000
;Triggerall = (RoundState = 2) && (var(59) =1)
;Triggerall = (StateType != A)
;triggerall = (stateno != [800,899])
;triggerall = (stateno != [300,3999])
;Triggerall = Random < 149
;triggerall = movetype!=H
;triggerall = p2statetype !=L
;triggerall = p2bodydist y=[-180,0]
;Triggerall = P2BodyDist X = [0,110]
;triggerall= p2stateno!=[120,160]
;triggerall =p2stateno!=1415
;trigger1 = ctrl
;trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000
;trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 2000
;trigger5 = stateno = 3550 && animelemtime(7) >= 0
;trigger6 = stateno = 1610
;trigger7= p2statetype=A && ctrl
;---------------------------------------------------------------------------

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 250
triggerall = (RoundState = 2) && (var(59) =1) && p2statetype != L
trigger1 = stateno = 210 || stateno = 240 || stateno = 410 || stateno = 420 || stateno = 400 || stateno = 430
trigger1 = p2bodydist x <= 55
trigger1 = movehit
trigger1 = random < 700
trigger2 = p2bodydist x <=55
trigger2 = p2bodydist y = [-70,5]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random < 30

[State -1,AI Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = (RoundState = 2) && (var(59) =1)
triggerall = p2statetype != A
trigger1 = p2bodydist x <= 40
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 100
trigger2 = moveguarded && stateno = 230
trigger2 = random < 500

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (RoundState = 2) && (var(59) =1);
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 200
trigger1 = pos y = 0

[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = (RoundState = 2) && (var(59) =1)
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = S
trigger1 = random < 300


[State -1,AI Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (RoundState = 2) && (var(59) =1) && p2statetype != A
trigger1 = stateno = 430 || stateno = 400
trigger1 = movehit
trigger1 = random < 700
trigger2 = stateno = 200
trigger2 = movehit && random <=400 && p2statetype != A
trigger3 = P2statetype = S
trigger3 = p2bodydist x <= 40
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype != A
trigger3 = ctrl
trigger4 = stateno = 230 || stateno = 200
trigger4 = movehit
trigger4 = random < 500
trigger4 = p2bodydist y = [-2,2]

[State -1,AI Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = (RoundState = 2) && (var(59) =1)
triggerall = p2bodydist x = [-2,80]
triggerall = P2MoveType != A
trigger1 = stateno = 440 || stateno = 410
trigger1 = movehit
trigger1 = random < 70
trigger2 = stateno = 405
trigger2 = movehit
trigger2 = random < 300


[State -1,AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (RoundState = 2) && (var(59) =1)
triggerall = p2bodydist x <= 50
triggerall = p2statetype != A && p2statetype != L
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = random < 500

[State -1,AI Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = (RoundState = 2) && (var(59) =1) && p2statetype != A
trigger1 = p2bodydist x <= 60
trigger1 = stateno = 440
trigger1 = movehit
trigger1 = random < 100
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = random < 100
trigger3 = stateno = 210 || stateno = 240 || stateno = 211 || stateno = 241
trigger3 = movehit
trigger3 = random < 100

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = (RoundState = 2) && (var(59) =1)
triggerall = p2statetype = A
trigger1 = p2bodydist x <=55
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random < 500

[State -1,AI Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (RoundState = 2) && (var(59) =1) && p2statetype != C && p2statetype != L
trigger1 = stateno = 200 || stateno = 400
trigger1 = movehit

[State -1,AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = (RoundState = 2) && (var(59) =1) && p2statetype != C && p2statetype != L
trigger1 = stateno = 210 || stateno = 240 || stateno = 211 || stateno = 241
trigger1 = movehit
trigger1 = random < 500
trigger1 = p2bodydist x <= 40


[State -1,AI Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (RoundState = 2) && (var(59) =1)&& p2statetype != C && p2statetype != L
trigger1 = stateno = 230 || stateno = 200
trigger1 = movehit
trigger1 = random < 500
trigger2 = stateno = 400 || stateno = 430
trigger2 = movehit
trigger2 = random < 500

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = (RoundState = 2) && (var(59) =1)
trigger1 = p2bodydist x <= 40
trigger1 = P2BodyDist Y = [-70, 30]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI Jump light kick]
type = ChangeState
value = 630
triggerall = (RoundState = 2) && (var(59) =1)
trigger1 = (StateNo = 600) && (Movecontact)

[State -1, AI Jump Medium Punch]
type = ChangeState
value = 610
triggerall = (RoundState = 2) && (var(59) =1)
trigger1 = stateno = 630
trigger1 = movecontact

[State -1, AI Jump Medium kick]
type = ChangeState
value = 640
triggerall = (RoundState = 2) && (var(59) =1)
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = random < 500


;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1200
triggerall = var(59) >= 1 && StateType != A
triggerall = roundstate = 2
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
Triggerall = Random <=499
triggerall = ctrl || ((stateno=[120,150])&& p2bodydist x >30 && ctrl)
trigger1= (enemynear,hitdefattr=SCA,AP) && enemy,numhelper>0
trigger2= enemy,numproj >0


;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1400
triggerall = Var(59) = 1
triggerall = random <= 150
triggerall = statetype != A
triggerall = p2statetype = S|| p2statetype = C
trigger1 = ctrl
triggerall = stateno != [800,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
triggerall =  p2bodydist X < 20 && p2dist y <= 0
trigger3 = (p2stateno =[120,150])
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1500
triggerall = var(59) >= 1 && StateType != A
triggerall = (p2bodydist x=[0,100])&&(p2bodydist y=[-110,0])
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
triggerall = roundstate = 2
Triggerall = Random <=249
triggerall = var(59)=1
triggerall = ctrl
trigger1= p2movetype=A
triggerall = p2stateno !=[120,150]

;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && StateType != A
triggerall = (p2bodydist x=[0,100])&&(p2bodydist y=[-70,0])
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
Triggerall = Random <=79
triggerall = roundstate = 2
triggerall = var(59)=1
triggerall = p2stateno !=[120,150]
triggerall = !enemynear,ishelper
trigger1 = ctrl
trigger2= ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movehit
trigger3= p2movetype=A && ctrl
;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1110
triggerall = var(59) >= 1 && StateType != A
triggerall = (p2bodydist x=[46,150])&&(p2bodydist y=[-70,0])
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
triggerall = roundstate = 2
Triggerall = Random <=119
triggerall = var(59)=1
triggerall = !enemynear,ishelper
trigger1 = ctrl
trigger2= ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movehit
trigger3= p2movetype=A && ctrl
triggerall = p2stateno !=[120,150]

;---------------------------------------------------------------------------
[State -1,AI]
type = ChangeState
value=1300
triggerall = var(59) >= 1 && StateType != A
triggerall = (p2bodydist x=[75,150])&&(p2bodydist y=[-70,0])
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = p2movetype!=A
Triggerall = Random <=79
triggerall = var(59)=1
triggerall = p2stateno !=[120,150]
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Fierce Sand Kick]
type = ChangeState
value = 1610
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = Random < 119
triggerall = p2statetype !=L
triggerall = p2bodydist y=[-140,0]
Triggerall = P2BodyDist X = [45,85]
triggerall = p2movetype!=A
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movehit
trigger3 = p2statetype=C && ctrl

;---------------------------------------------------------------------------
[State -1, Light Sand Kick]
type = ChangeState
value = 1600
triggerall = var(59) >= 1 && StateType != A
triggerall = (p2bodydist x=[0,45])&&(p2bodydist y=[-70,0])
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
triggerall = roundstate = 2
Triggerall = Random <=79
triggerall = var(59)=1
triggerall = p2stateno !=[120,150]
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movehit
trigger3= p2movetype=A && ctrl

;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1200
triggerall = var(59) >= 1 && StateType != A
triggerall = roundstate = 2
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = movetype != H
Triggerall = Random <=119
triggerall = p2bodydist x =[0,50]
trigger1 = ctrl
trigger2= ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movehit
;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1000
Triggerall = (RoundState = 2) && (var(59) =1)
Triggerall = (StateType != A)
triggerall = (stateno != [800,3999])
Triggerall = Random < 119
triggerall = p2statetype !=L
triggerall = p2bodydist y=[-140,0]
Triggerall = P2BodyDist X = [30,140]
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || stateno = 300 || (stateno = [400, 430]))&& movehit
trigger3 = p2statetype=A && ctrl
;------------------------------------------------------------------------
[State -1, AI Throw]
type = ChangeState
value = 900
triggerall = Var(59) = 1
triggerall = random <= 150
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = ctrl
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
trigger1 = p2bodydist X < 25 && p2dist y <= 0
trigger2 = (p2stateno =[120,150]) &&(p2bodydist X < 20 && p2dist y <= 0)
[State -1, AI]
type=changestate
value=810
triggerall = var(59) >= 1 && StateType != A
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = stateno !=810
triggerall = stateno !=[3000,9999]
triggerall = ((p2bodydist x = [30,755])) && random < 22
trigger2 =(EnemyNear, HitDefAttr = SCA,AA,AP)
triggerall=ctrl
trigger1 = ctrl ||  backedgedist <= 40
trigger3 = enemy,numproj >= 1
trigger4 = (stateno = 150 || stateno = 152) && power>=500

[State -1, AI]
type=changestate
value=820
triggerall = var(59) >= 1 && StateType != A
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = stateno !=820
triggerall = stateno !=[3000,9999]
triggerall = ((p2bodydist x = [0,29])) && random < 22
trigger2 =(EnemyNear, HitDefAttr = SCA,AA,AP)
triggerall=ctrl
trigger1 = ctrl ||  backedgedist <= 40
trigger3 = enemy,numproj >= 1
trigger4 = (stateno = 150 || stateno = 152) && power>=500
;-------------------------------------------------------
[State -1, AI dodge]
type = changestate
value = 800
triggerall = roundstate = 2
triggerall = var(59) >= 1 && StateType != A
trigger1 = (p2bodydist x = [0,50]) && random < 149
triggerall = p2movetype = A
triggerall=ctrl

[State -1, AI]
type=changestate
triggerall =  (AnimElemTime(3) >= 0 && AnimElemTime(5) < 0) && var(59) = 1 && stateno = 800
trigger1= p2bodydist x = [0,50]
value=805

[State -1, AI]
type = ChangeState
value = 805
triggerall = var(59) >= 1 && StateType != A && Power >= 500
triggerall = statetype = S
triggerall = var(3) = 0
triggerall = roundstate = 2
triggerall = stateno !=[2500,3999]
trigger1 = stateno = 150 || stateno = 152
;----------------------------------------------------------

[state -1, AI jump]
type = changestate
triggerall = var(59) = 1
triggerall = p2statetype !=L
triggerall = statetype != A
triggerall = roundstate=2
triggerall = var(32)
trigger1 = ctrl && p2bodydist x = [50,90]
trigger2 =p2statetype = C && (p2bodydist x = [50,90]) && ctrl
trigger3= enemy,hitdefattr=S,AT
value = 40

[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=var(59) >= 1 && statetype=S && ctrl && random < 199
triggerall = p2bodydist y =[-240,0]
trigger1= (stateno!=[100,105]) && p2movetype!=A && ((p2bodydist x=[400,788])|| numhelper(1001) >0)

[State -1, AI run]
type=changestate
value=20
triggerall = roundstate = 2
triggerall=var(59) >= 1 && statetype=S && ctrl && random < 249
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[20,399])

[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = stateno !=105
triggerall = statetype != A
triggerall = random < 149
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = (p2statetype =L || p2movetype = A) && (p2bodydist x=[-99,15])


[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = statetype!=A
triggerall = stateno!=[120,155]
triggerall=var(59) >= 1
trigger1 =(StateNo !=[800,998])&&(StateNo != 105)
triggerall = Random < 900
triggerall =(EnemyNear, movetype=A)
triggerall=ctrl ||stateno=20
trigger2 = enemynear,hitdefattr = SCA,SP,HP
persistent = 0

;---------------------------------------------------------------------------
;-| State Definitions: Supers |---------------------------------------------
;---------------------------------------------------------------------------
[State -1, Madness]
type = ChangeState
value = 3600
triggerall = roundstate = 2
triggerall = command = "madness"
triggerall = !statetype = A
triggerall = power >= 1000
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || stateno = 300 || (stateno = [400, 430]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000
trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 1000

;---------------------------------------------------------------------------
[State -1, Max Drill]
type = ChangeState
value = 3150
triggerall = roundstate = 2
triggerall = command = "max_drill"
triggerall = !statetype = A
triggerall = power >= 1000
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000

;---------------------------------------------------------------------------
;[State -1, Drill]
;type = ChangeState
;value = 3100
;triggerall = roundstate = 2
;triggerall = command = "drill"
;triggerall = !statetype = A
;triggerall = power >= 1000
;triggerall=var(59) = 0
;trigger1 = ctrl
;trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000

;---------------------------------------------------------------------------
[State -1, Max Guillotine]
type = ChangeState
value = 3050
triggerall = roundstate = 2
triggerall = command = "max_guillotine"
triggerall = !statetype = A
triggerall = power >= 1000
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000
trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 1000
;---------------------------------------------------------------------------
[State -1, Max Guillotine]
type = ChangeState
value = 3700
triggerall = roundstate = 2
triggerall = command = "free"
triggerall = !statetype = A
triggerall = power >= 1000
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000
trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 1000

;---------------------------------------------------------------------------
;[State -1, Guillotine]
;type = ChangeState
;value = 3000
;triggerall = roundstate = 2
;triggerall = command = "guillotine"
;triggerall = !statetype = A
;triggerall = power >= 1000
;triggerall=var(59) = 0
;trigger1 = ctrl
;trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;trigger3 = ((stateno = [1010, 1030]) || (stateno = [1100, 1110]) || stateno = 1200 || stateno = 1600)&& movecontact && power >= 2000
;trigger4 = stateno = 1410 && animelemtime(8) >= 0 && power >= 2000
;trigger5 = stateno = 3550 && animelemtime(7) >= 0
;trigger6 = stateno = 1610

;---------------------------------------------------------------------------
;-| State Definitions: Specials |-------------------------------------------
;---------------------------------------------------------------------------
[State -1, Fierce Sand Kick]
type = ChangeState
value = 1610
triggerall = roundstate = 2
triggerall = command = "sand_kick_b"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
[State -1, Light Sand Kick]
type = ChangeState
value = 1600
triggerall = roundstate = 2
triggerall = command = "sand_kick_a"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
[State -1, Sado Mazo]
type = ChangeState
value = 1500
triggerall = roundstate = 2
triggerall = command = "sado_mazo_a" || command = "sado_mazo_b"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
[State -1, Bakudan Pachiki]
type = ChangeState
value = 1400
triggerall = roundstate = 2
triggerall = command = "bakudan_pachiki"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
[State -1, Snake Hand]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = command = "snake_hand_x" || command = "snake_hand_y"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Snake Hand]
type = ChangeState
value = 1340
triggerall = roundstate = 2
triggerall = command = "snake_hand_z"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Fierce Sabaki no Aikuchi]
type = ChangeState
value = 1110
triggerall = roundstate = 2
triggerall = command = "sabaki_no_aikuchi_y"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Fierce Sabaki no Aikuchi]
type = ChangeState
value = 1120
triggerall = roundstate = 2
triggerall = command = "sabaki_no_aikuchi_z"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Light Sabaki no Aikuchi]
type = ChangeState
value = 1100
triggerall = roundstate = 2
triggerall = command = "sabaki_no_aikuchi_x"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
[State -1, Bai Gaeshi]
type = ChangeState
value = 1200
triggerall = roundstate = 2
triggerall = command = "bai_gaeshi_x" || command = "bai_gaeshi_y"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Bai Gaeshi]
type = ChangeState
value = 1220
triggerall = roundstate = 2
triggerall = command = "bai_gaeshi_z"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || (stateno = [400, 430]))&& movecontact
;---------------------------------------------------------------------------
[State -1, Hebi Tsukai]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = command = "hebi_tsukai_z" || command = "hebi_tsukai_x" || command = "hebi_tsukai_y"
triggerall = !statetype = A
triggerall=var(59) = 0
trigger1 = ctrl
trigger2 = ((stateno = [200, 211]) || stateno = 231 || stateno = 300 || (stateno = [400, 430]))&& movecontact

;---------------------------------------------------------------------------
;-| State Definitions: Throws |---------------------------------------------
;---------------------------------------------------------------------------
[State -1, Throw 1]
type = ChangeState
value = 900
triggerall = command = "z" && (command = "holdfwd" || command = "holdback")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2dist x <=60
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall=var(59) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;-| State Definitions: Dodge |----------------------------------------------
;---------------------------------------------------------------------------
[State -1, Neutral Dodge]
type = ChangeState
value = 800
triggerall=var(59) = 0
trigger1 = command = "dodge" && !(command = "holdfwd" || command = "holdback")
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Neutral Attack]
type = ChangeState
value = 805
triggerall=var(59) = 0
trigger1 = stateno = 800 && (AnimElemTime(3) >= 0 && AnimElemTime(5) < 0)
trigger1 = command = "a" || command = "b" || command = "x" || command = "y" 

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 810
triggerall=var(59) = 0
trigger1 = command = "dodge" && command = "holdfwd" 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Backward Dodge]
type = ChangeState
value = 820
triggerall=var(59) = 0
trigger1 = command = "dodge" && command = "holdback" 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Guard Cancel Attack]
type = ChangeState
value = 805
triggerall=var(59) = 0
trigger1 = Power >= 0
trigger1 = Command = "guardbreak"
trigger1 = statetype != A 
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
[State -1, Guard Cancel Forward Dodge]
type = ChangeState
value = 810
triggerall=var(59) = 0
trigger1 = Power >= 0
trigger1 = Command = "dodge" && Command = "holdfwd"
trigger1 = statetype != A 
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
[State -1, Guard Cancel Backward Dodge]
type = ChangeState
value = 820
triggerall=var(59) = 0
trigger1 = Power >= 0
trigger1 = Command = "dodge" && Command = "holdback"
trigger1 = statetype != A 
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
;-| State Definitions: Basics |---------------------------------------------
;---------------------------------------------------------------------------
; Standing Low Punch
[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = var(58) < 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(58) < 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 100
;---------------------------------------------------------------------------
;Standing High Punch
[State -1, Standing High Punch]
type = ChangeState
value = 220
triggerall = var(58) < 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = stateno = 100
;---------------------------------------------------------------------------
;Standing Low Kick
[State -1, Standing Low Kick]
type = ChangeState
value = 230
triggerall = var(58) < 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 100
;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(58) < 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 100
;---------------------------------------------------------------------------
;Standing High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = var(58) < 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 100
;---------------------------------------------------------------------------
;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = var(58) < 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(58) < 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = var(58) < 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = var(58) < 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(58) < 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------
;Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = var(58) < 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = var(58) < 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(58) < 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = var(58) < 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = var(58) < 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(58) < 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = var(58) < 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 100000

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall=var(59) = 0
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, super jump ]
type = ChangeState
value = 123
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these
trigger2 = (stateno = 400) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher


[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 123 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 123
trigger1 = stateno = 50
x = -.2
;----------------------------------------------------------------------------
[State -1] ;Forward Dash
type = ChangeState
value = 100000
triggerall = (StateType = A && command = "FF")
trigger1 = StateNo != [100,109]
trigger1 = ctrl

[State -1] ;Back Dash
type = ChangeState
value = 100001
triggerall = (StateType = A && command = "BB")
trigger1 = StateNo != [100,109]
trigger1 = ctrl
;---------------------------
[State -1, Charge]
type = ChangeState
value = 88887
triggerall = power < 3000
trigger1 = command = "holdb" && command = "holdy"
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------------------------------------
