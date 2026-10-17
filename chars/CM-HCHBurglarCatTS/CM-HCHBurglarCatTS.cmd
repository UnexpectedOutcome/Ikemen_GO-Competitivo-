; The CMD file.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Supers |--------------------------------------------------------

[Command]
name = "LV1"
command = ~x
time = 30

[Command]
name = "LV2"
command = ~y
time = 30

[Command]
name = "LV3"
command = ~z
time = 30


;-| Specials |------------------------------------------------------
[Command]
name = "D_DF_F_a"
command = ~D ,DF ,F, a
time = 150

[Command]
name = "D_DF_F_b"
command = ~D ,DF ,F, b
time = 150

[Command]
name = "F_D_DF_a"
command = ~D ,DB ,B, a
time = 150

[Command]
name = "F_D_DF_b"
command = ~c
time = 150


[Command]
name = "D_DB_B_a"
command = ~D ,DB ,B, a
time = 150

[Command]
name = "D_DB_B_b"
command = ~D ,DB ,B, b
time = 150

[Command]
name = "D_DB_B_c"
command = ~D ,DB ,B, c
time = 150


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 50

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 50

[Command]
name = "bb" 
command = b, b
time = 50

[Command]
name = "cc"   
command = c, c
time = 50





;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "Mirage Tempo";Required (do not remove)
command = s
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

[Command]
name = "release_b"
command = ~b
;time =1



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
name = "hold_b";Required (do not remove)
command = /b
time = 1



;---------------------------------------------------------------------------
; State entry
[Statedef -1]

;---------------------------------------------------------------------------
;===========================================================================
; AI Section
;===========================================================================
;---------------------------------------------------------------------------

;AI Variable Set
[State -1, op at front]
type = VarSet
trigger1 = p2dist x >= 0
fvar(1) = 1

[State -1, op at front reset]
type = VarSet
trigger1 = p2dist x < 0
fvar(1) = 0


[State -1, force corner]
type = VarSet
trigger1 = BackEdgeBodyDist <= 5 && p2bodydist x < 40
fvar(2) = 1

[State -1, force corner reset]
type = VarSet
trigger1 = !(BackEdgeBodyDist <= 5 && p2bodydist x < 40)
fvar(2) = 0


[State -1, op super]
type = VarSet
trigger1 = enemynear,hitdefattr=SCA,SA,HA,SP,HP
fvar(3) = 1

[State -1, op super reset]
type = VarSet
trigger1 = !enemynear,hitdefattr=SCA,SA,HA,SP,HP
fvar(3) = 0


[State -1, helpers attack]
type = VarSet
triggerall = inguarddist
trigger1 = (enemy,numhelper - var(6)) >= 3
trigger2 = enemy,numproj >= 3
fvar(4) = 1

[State -1, helpers attack reset]
type = VarSet
triggerall = !inguarddist
trigger1 = (enemy,numhelper - var(6)) < 3
trigger1 = enemy,numproj < 3
fvar(4) = 0


[State -1, op from air]
type = VarSet
trigger1 = enemynear,statetype = A && enemynear,vel x > 0 && enemynear,vel y > 0
fvar(5) = 1

[State -1, op from air reset]
type = VarSet
trigger1 = !(enemynear,statetype = A && enemynear,vel x > 0 && enemynear,vel y > 0)
fvar(5) = 0


[State -1, at op back]
type = VarSet
trigger1 = enemynear,p2dist x < 0
fvar(6) = 1

[State -1, at op back reset]
type = VarSet
trigger1 = enemynear,p2dist x > 0
fvar(6) = 0


[State -1, op FD jump]
type = VarSet
trigger1 = enemy,prevstateno = 40 && enemy,vel x >0 && enemy,vel y < 0
fvar(7) = 1

[State -1, op FD jump reset]
type = VarSet
trigger1 = enemy,prevstateno != 40 || enemy,vel x <= 0 || enemy,vel y >= 0
fvar(7) = 0


;AI CODE ===================================================================

[State -1, AI More Guarding]
type = ChangeState
value = 120
triggerall = roundstate = 2 && AIlevel && Numenemy && statetype != A
;triggerall = (stateno != [120,155])
triggerall = !(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
triggerall = ctrl || (stateno = [10,22]) || (stateno = [100,101])
triggerall = numhelper(8500)=0
trigger1 = fvar(3) && random <= AIlevel/8 * 800
trigger2 = (anim = [5000,5030]) && random <= AIlevel/8 * 900
trigger3 = (p2bodydist x > 184+22*const(size.xscale)) && random <= AIlevel/8 * 1000
trigger4 = random <= AIlevel/8 * 400


[State -1, AI More Air Guarding]
type = ChangeState
value = 132
triggerall = roundstate = 2 && AIlevel && Numenemy && statetype = A
;triggerall = (stateno != [120,155])
triggerall = !(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
triggerall = ctrl || (stateno = [10,22]) || (stateno = [100,101])
triggerall = numhelper(8500)=0
trigger1 = fvar(3) && random <= AIlevel/8 * 800
trigger2 = (anim = [5000,5030]) && random <= AIlevel/8 * 900
trigger3 = numhelper > var(6) && random <= AIlevel/8 * 1000
trigger4 = random <= AIlevel/8 * 400


[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = Ctrl && statetype != A
triggerall = !enemy,hitcount >=1
triggerall = (stateno != [120,155]) && !(anim = [5000,5030])
trigger1 = p2bodydist x < 50 && random <= 10
trigger2 = (enemy,hitdefattr=SCA,NP,SP,HP) && !inguarddist && random <= 300
trigger3 = p2bodydist x > 150 && enemy,hitdefattr=SCA,SA,SP && random <= 500
trigger4 = numhelper(7830)>0
trigger4 = enemynear,pos x > helper(7830),pos x+100


[State -1, AI Run Forward]
type = ChangeState
value = 100
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = Ctrl && statetype != A
triggerall = !(enemy,hitdefattr=SCA,SA,HA,NP,SP,HP,NT,ST,HT)
triggerall = (stateno != [120,155]) && !(anim = [5000,5030])
triggerall = !(enemy,numhelper-var(6) > 0) && numhelper(8500)=0
trigger1 = p2bodydist x > 185+22*const(size.xscale) && random <= 500
trigger2 = enemynear,vel y > 0 && p2bodydist x > 100+22*const(size.xscale) && enemynear,pos y < -125*const(size.xscale)
trigger2 = random <= 500
trigger3 = p2stateno = 7320 && p2bodydist x > 150*const(size.xscale)

[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = Ctrl && statetype != A
triggerall = backedgebodydist >= 90+22*const(size.xscale)
triggerall = !(enemynear,hitdefattr=SCA,NP,SP,HP)
triggerall = !(enemynear,hitdefattr=SCA,HA,HP,HT)
triggerall = numhelper(7830)=0
trigger1 = inguarddist && p2movetype = A && random <= 300
trigger2 = (enemynear,hitdefattr=SCA,SA) && enemynear, vel x = 0 && random <= (AIlevel/8)*800


[State -1, AI Normal Attack 1]
type = ChangeState
value = 200
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = Ctrl && statetype != A && fvar(1)
triggerall = (stateno != [120,155]) && !(anim = [5000,5030])
triggerall = !(enemynear,hitdefattr=SCA,SA,HA)
triggerall = !(enemynear,hitdefattr=SCA,NT,ST,HT)
triggerall = !(enemynear,hitdefattr=SCA,NP,SP,HP)
triggerall = !enemy,hitcount >=1
triggerall = p2statetype != A
trigger1 = (p2bodydist x = [0,116*const(size.xscale)]) && random <= 200


;---------------------------------------------------------------------------
[State -1, AI Normal Attack 2]
type = ChangeState
value = 210
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A && fvar(1)
triggerall = (stateno != [120,155]) && !(anim = [5000,5030])
triggerall = !(enemynear,hitdefattr=SCA,SA,HA)
triggerall = !(enemynear,hitdefattr=SCA,NT,ST,HT)
triggerall = !(enemynear,hitdefattr=SCA,NP,SP,HP)
triggerall = p2statetype != A
trigger1 = (stateno = 200) && animelemno(0)>= 4 && movecontact && random <= 200
trigger2 = (stateno = 200) && animelemno(0)>= 4 && movehit && random <= 800
;trigger3 = stateno = 100 &&


[State -1, AI Normal Attack 3]
type = ChangeState
value = 220
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A && fvar(1)
triggerall = p2bodydist x = [0,170*const(size.xscale)]
triggerall = !(enemynear,hitdefattr=SCA,SA,HA)
triggerall = !(enemynear,hitdefattr=SCA,NT,ST,HT)
triggerall = !(enemynear,hitdefattr=SCA,NP,SP,HP)
triggerall = p2statetype != A
trigger1 = stateno = 210 && animelemno(0)>=4 && movehit && random <= 800

[State -1, AI Upper Tact Attack 1]
type = ChangeState
value = 250
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A && p2statetype != A && !fvar(4)
triggerall = (p2bodydist x = [0,44*const(size.xscale)]) || (p2stateno = 7320 && (p2bodydist x = [0,34*const(size.xscale)]))
trigger1 = ctrl && random <= 300
trigger2 = stateno = 200 && movehit && random <= 800

[State -1, AI Upper Tact Attack 2]
type = ChangeState
value = 260
triggerall = (roundstate = 2) && AIlevel && Numenemy
trigger1 = movehit && stateno = 250 && animelemno(0)>=3  && random <= 800

[State -1, AI Upper Tact Attack 3]
type = ChangeState
value = 270
triggerall = (roundstate = 2) && AIlevel && Numenemy
trigger1 = stateno = 260 && movecontact && animelemno(0)>=8  && random <= 800

;---------------------------------------------------------------------------
[State -1, AI Cyclone = Tempo]
type = ChangeState
value = 1000
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A
triggerall =  fvar(1) && !fvar(4) && !fvar(7)
triggerall = !(enemynear,hitdefattr=SCA,NT,ST,HT)
triggerall = !(enemynear,hitdefattr=SCA,HP)
triggerall = numhelper(7000) = 0
trigger1 = (stateno = 200) && movecontact && random <= 40
trigger2 = (stateno = 210) && movecontact && random <= 40
trigger3 = ctrl && (p2bodydist x = [120+22*const(size.xscale),280-22*const(size.xscale)]) && random <= 40
trigger4 = ctrl && enemynear,vel x < 0 && enemynear,vel y > 0 && random <= 200

[State -1, AI AI Sorcery Clima-Tact Gust Sword]
type = ChangeState
value = 1100
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A
triggerall =  fvar(1) && !fvar(4) && !fvar(7)
triggerall = !(enemynear,hitdefattr=SCA,NT,ST,HT)
triggerall = !(enemynear,hitdefattr=SCA,HP)
triggerall = power >= 100
trigger1 = (stateno = 200) && movecontact && random <= 40
trigger2 = (stateno = 210) && movecontact && random <= 40
trigger3 = ctrl && (p2bodydist x = [120+22*const(size.xscale),280-22*const(size.xscale)]) && random <= 40
trigger4 = ctrl && enemynear,vel x < 0 && enemynear,vel y > 0 && random <= 200

[State -1, AI Running Attack 1]
type = ChangeState
value = 300
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = !(enemy,hitdefattr=SCA,HA,AP) && fvar(1) && !fvar(4)
triggerall = stateno = 100 && (p2bodydist x < 95 + 22*const(size.xscale))
trigger1 = random <= 300

[State -1, AI Running Attack 2]
type = ChangeState
value = 310
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = stateno = 300
trigger1 = animelemno(0) >=8 && animelemno(0) < 12 && movecontact && random <= 200
trigger2 = animelemno(0) >=8 && animelemno(0) < 12 && movehit && random <= 800

[State -1, AI Jump Tact Attack]
type = ChangeState
value = 600
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype = A && fvar(1)
triggerall = ((p2dist y = [1,const(size.height)]) && vel y > 0) || ((p2dist y = [-(const(size.height))*2,-const(size.height)]) && vel y < 0) ;upward
trigger1 = stateno = 600 && movehit && random <= 300
trigger2 = ctrl && p2bodydist x < 60*const(size.xscale)
trigger3 = ctrl && p2bodydist x < 120*const(size.xscale) && vel x > 0
trigger4 = ctrl && p2bodydist x < 30*const(size.xscale) && vel x < 0

[State -1, AI Up Tact Spin]
type = ChangeState
value = 1200
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A && !fvar(4)
triggerall = (p2bodydist x = [-164-22*const(size.xscale),160+22*const(size.xscale)])
triggerall = ctrl || stateno = 52
trigger1 = fvar(5) && (p2bodydist x = [0,70+22*const(size.xscale)]) && random <= 200
trigger2 = fvar(6) && (p2bodydist x = [40+22*const(size.xscale),70+22*const(size.xscale)]) && random <= 200


;---------------------------------------------------------------------------
[State -1, AI Knot of Wind Fall Attack]
type = ChangeState
value = 640
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = ctrl && Statetype = A
triggerall = p2bodydist y > enemynear,const(size.height)
triggerall = vel x + enemynear,vel x < 6
trigger1 = (P2Dist X = [const(size.xscale)*-20,const(size.xscale)*20]) && random <= 500
;trigger2 = (P2Dist X = [const(size.xscale)*-20,const(size.xscale)*20]) && random <= 500
;trigger3 = p2dist x = [-50,50]
;trigger3 = p2movetype = A && (enemynear,vel y < 0) && random <=200


[State -1, AI Throw Kick]
type = changestate
value = 800
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = ctrl && Statetype = S
triggerall = P2StateType = S || P2StateType = C
triggerall = p2bodydist x <= const(size.xscale)*30
trigger1 = (enemynear,stateno=[120,155]) && (random <= AIlevel/8 * 400)
trigger2 = enemynear,anim = 47 && random <= AIlevel/8 * 400
trigger3 = movehit && random <= AIlevel/8 * 400
trigger4 = (p2bodydist x = [0,10*const(size.xscale)]) && random <= AIlevel/8 * 800

[State -1, AI Shift]
type = changestate
value = 900
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = ctrl && Statetype != A
triggerall = enemynear,movetype != H
trigger1 = enemynear,hitdefattr=SCA,NP,SP,HP && inguarddist && random <= AIlevel/8 * 400
trigger2 = inguarddist && random <= AIlevel/8 * 20
trigger3 = fvar(2) && random <= AIlevel/8 * 50
trigger4 = fvar(2) && P2movetype = A && random <= AIlevel/8 * 400
trigger5 = fvar(2) && movetype = H && random <= AIlevel/8 * 400
trigger6 = enemynear,hitdefattr=SCA,AT && random <= AIlevel/8 * 400
trigger7 = enemynear,hitcount >=2 && random <= AIlevel/8 * 600
trigger8 = enemynear,vel x >= 6 && enemynear,hitdefattr=SCA,SA,HA && random <= AIlevel/8 * 600
trigger9 = gametime > 200 && fvar(2) && random <= AIlevel/8 * 900


[State -1, AI Weather Ball Thunder Attack]
type = ChangeState
value = 1400
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype != A
triggerall =  fvar(1) && !fvar(4)
triggerall = ctrl
triggerall = power >= 100
triggerall = p2movetype != H
trigger1 = (p2bodydist x = [120+22*const(size.xscale),165+22*const(size.xscale)])
trigger1 = fvar(7) && random <= 400
trigger2 = p2bodydist x = [120*const(size.xscale),170*const(size.xscale)]
trigger2 = enemy,vel x = 0 && p2statetype = A && random <= 400

[State -1, AI Air spin tact]
type = ChangeState
value = 1500
triggerall = (roundstate = 2) && AIlevel && Numenemy
triggerall = statetype = A
triggerall = pos y <= -80 ;limitation to AI
trigger1 = ctrl && p2statetype = A && enemynear,vel y < 0 && random <= 20
trigger2 = stateno = 600 && movecontact && random <= 300
trigger3 = ctrl && var(21) && p2movetype = A && random <= 300
trigger4 = ctrl && p2bodydist x <= 250*const(size.xscale)
trigger4 = p2movetype = A && (p2dist y = [-30,30]) && random <= 300


[State -1, AI Weather Ball]
type = ChangeState
value = 2000
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = ctrl && Statetype != A
triggerall = power >= 100
triggerall = numhelper(7200)=0 || numhelper(7201)=0 || numhelper(7202)=0 || numhelper(7203)=0 || numhelper(7204)=0 || numhelper(7205)=0 || numhelper(7206)=0 || numhelper(7207)=0 || numhelper(7208)=0 
triggerall = enemynear,movetype != A
triggerall = var(4) = 0 || var(5) = 1
trigger1 = p2dist x > 100 && random <= 20
trigger2 = enemynear,vel x < 0 && random <= 50

[State -1, AI Weather Ball]
type = ChangeState
value = 2040
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = power >= 100
triggerall = ctrl && Statetype = A
triggerall = prevstateno != 2045 && prevstateno != 2052 && prevstateno != 610
triggerall = numhelper(7200)=0 || numhelper(7201)=0 || numhelper(7202)=0 || numhelper(7203)=0 || numhelper(7204)=0 || numhelper(7205)=0 || numhelper(7206)=0 || numhelper(7207)=0 || numhelper(7208)=0
triggerall = var(4) = 0 || var(5) = 1
trigger1 = p2dist x > 100 && random <= 20
trigger2 = enemynear,vel x < 0 && random <= 50


[State -1, AI Thunder Ball]
type = ChangeState
value = 2050
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = stateno = 2010 && animelemno(0) >= 4 && animelemno(0) < 8
trigger1 = helper(7200+var(11)),pos x-30<enemynear,pos x
trigger1 = helper(7200+var(11)),pos x+30>enemynear,pos x
trigger2 = enemynear,facing = -1 && enemynear,vel x >= 1
trigger2 = helper(7200+var(11)),pos x+30<enemynear,pos x
trigger2 = helper(7200+var(11)),pos x+100>enemynear,pos x
trigger3 = enemynear,facing = 1 && enemynear,vel x >= 1
trigger3 = helper(7200+var(11)),pos x-30>enemynear,pos x
trigger3 = helper(7200+var(11)),pos x-100<enemynear,pos x


[State -1, AI Thunder Ball up]
type = ChangeState
value = 2051
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = stateno = 2030 && animelemno(0) >= 5 && animelemno(0) < 8
trigger1 = helper(7200+var(11)),pos x-30<enemynear,pos x
trigger1 = helper(7200+var(11)),pos x+30>enemynear,pos x
trigger2 = enemynear,facing = -1 && enemynear,vel x >= 1
trigger2 = helper(7200+var(11)),pos x+30<enemynear,pos x
trigger2 = helper(7200+var(11)),pos x+100>enemynear,pos x
trigger3 = enemynear,facing = 1 && enemynear,vel x >= 1
trigger3 = helper(7200+var(11)),pos x-30>enemynear,pos x
trigger3 = helper(7200+var(11)),pos x-100<enemynear,pos x

[State -1, AI Jump Thunder Ball]
type = ChangeState
value = 2052
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = stateno = 2045 && animelemno(0) >= 5 && animelemno(0) < 9
trigger1 = helper(7200+var(11)),pos x-30<enemynear,pos x
trigger1 = helper(7200+var(11)),pos x+30>enemynear,pos x
trigger2 = enemynear,facing = -1 && enemynear,vel x >= 1
trigger2 = helper(7200+var(11)),pos x+30<enemynear,pos x
trigger2 = helper(7200+var(11)),pos x+100>enemynear,pos x
trigger3 = enemynear,facing = 1 && enemynear,vel x >= 1
trigger3 = helper(7200+var(11)),pos x-30>enemynear,pos x
trigger3 = helper(7200+var(11)),pos x-100<enemynear,pos x


[State -1, AI Thunder Charge]
type = ChangeState
value = 2100
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = statetype != A && Ctrl
triggerall = p2movetype != H
triggerall = power >= 100
trigger1 = var(9)>=5
trigger1 = enemy,life < 150 && random <=100
trigger2 = var(9)>=7 && random <= 100
trigger3 = var(9)>=5 && fvar(4) && random <=500
trigger4 = var(9)=9 && random <= 200

[State -1, AI Jump Knot of Wind]
type = ChangeState
value = 610
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = statetype = A && Ctrl && fvar(1)
triggerall = prevstateno != 610
triggerall = p2movetype != H
trigger1 = var(9) > 4 && random <= 20
trigger2 = fvar(5)&& random <= 200
trigger3 = prevstateno = 2045 && p2dist x >= 180 && random <=500
trigger4 = numhelper(7830)>0 && facing = 1
trigger4 = enemynear,pos x > helper(7830),pos x+100 && pos y <= -60
trigger5 = numhelper(7830)>0 && facing = -1
trigger5 = enemynear,pos x < helper(7830),pos x-100 && pos y <= -60

[State -1, AI Knot of Wind]
type = ChangeState
value = 615
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = statetype != A && Ctrl && fvar(1)
triggerall = p2movetype != H
trigger1 = var(9) > 4 && random <= 10 
trigger2 = prevstateno = 2010 && p2dist x >= 180 && random <=500
trigger3 = numhelper(7830)>0 && facing = 1
trigger3 = enemynear,pos x < helper(7830),pos x-110
trigger4 = numhelper(7830)>0 && facing = -1
trigger4 = enemynear,pos x > helper(7830),pos x+110


[State -1, AI Mirage Tempo]
type = changestate
value = 930
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = statetype = S && Ctrl
triggerall = numhelper(8500)=0 && power >= 500
trigger1 = power >= 2500 && random <= 20
trigger2 = power >= 2000 && life <= 100 && random <= 150
trigger3 = power >= 500 && life <= 150 && enemy,life <= 150 && random <= 600

[State -1, AI Cancel Mirage Tempo]
type = changestate
value = 940
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = statetype = S && Ctrl
triggerall = numhelper(8500)=1
trigger1 = power <= 1000 && life >= 500 && random <=50


[State -1, AI Cat Burglar]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = power >= 1000 && statetype !=A
triggerall = fvar(1) && p2statetype = S
triggerall = enemynear,power >= 1000 && power < 2000
trigger1 = stateno = 200 && movehit && random <= AIlevel/8 * 1000
trigger2 = ctrl && p2movetype = H && p2dist x <= 80 && random <= 200

[State -1, AI Thunderbolt = Tempo]
type = ChangeState
value = 3100
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = power >= 2000 && statetype !=A 
triggerall = fvar(1)
triggerall = enemynear,life <= 275 || (power != 3000 && enemynear,life > 275)
trigger1 = ctrl && enemynear,anim = 5300 && (p2bodydist x = [50,102*const(size.xscale)])
trigger2 = stateno = 200 && movehit && (p2bodydist x = [50,100*const(size.xscale)])
trigger3 = ctrl && fvar(6) && (p2bodydist x = [50,180])

[State -1, AI Fata Morgana Thunder - Lance = Tempo]
type = ChangeState
value = 3200
triggerall = roundstate = 2 && AIlevel && Numenemy
triggerall = power = 3000 && statetype !=A && fvar(1)
trigger1 = ctrl && enemynear,anim = 5300 && enemynear,life > 275
trigger2 = movehit && (p2bodydist x = [0,100*const(size.xscale)])
trigger2 = stateno = 200 || stateno = 210
trigger3 = ctrl && enemynear,life < 40 && life <100
trigger4 = ctrl && fvar(6) && (p2bodydist x <= (160-22*const(size.xscale)))

;---------------------------------------------------------------------------
;===========================================================================
;  End of AI Section
;===========================================================================
;---------------------------------------------------------------------------

;Combo Variable
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
var(1) = 1



;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, Cat Burglar]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = power >= 1000
triggerall = command = "LV1" ;|| command = "x"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = movehit

[State -1, Thunderbolt = Tempo]
type = ChangeState
value = 3100
triggerall = !AIlevel
triggerall = power >= 1000
triggerall = command = "LV2" ; || command = "y"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = movehit

[State -1, Fata Morgana Thunder - Lance = Tempo]
type = ChangeState
value = 3200
triggerall = !AIlevel
triggerall = power >= 1000
triggerall = command = "LV3" ; || command = "z"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = movehit


;---------------------------------------------------------------------------


[State -1, Cyclone = Tempo]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = command = "D_DF_F_a"
triggerall = statetype !=A
triggerall = numhelper(7000) = 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact

[State -1, Sorcery Clima-Tact Gust Sword]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = command = "D_DF_F_b"
triggerall = statetype !=A
triggerall = power >= 100
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact

[State -1, Jump Spin Tact]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = command = "F_D_DF_a"
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 52

[State -1, Weather Ball Thunder Attack]
type = ChangeState
value = 1400
triggerall = !AIlevel
triggerall = command = "D_DB_B_b"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Air Round Tact]
type = ChangeState
value = 1500
triggerall = !AIlevel
triggerall = command = "D_DF_F_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

[State -1, Thunder Charge]
type = ChangeState
value = 2100
triggerall = !AIlevel
triggerall = statetype = C
triggerall = power >= 100
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl

[State -1, Mirage Tempo]
type = changestate
value = 930
triggerall = !AIlevel
triggerall = power >= 0
triggerall = numhelper(8500)=0
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "Mirage Tempo"

[State -1, Cancel Mirage Tempo]
type = changestate
value = 940
triggerall = !AIlevel
triggerall = numhelper(8500)=1
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "Mirage Tempo"


[State -1, Weather Ball]
type = ChangeState
value = 2000
triggerall = !AIlevel
triggerall = power >= 100
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype !=A
triggerall = var(4) = 0 || var(5) = 1
triggerall = ctrl
trigger1 = numhelper(7200)=0 || numhelper(7201)=0 || numhelper(7202)=0 || numhelper(7203)=0 || numhelper(7204)=0 
trigger2 = numhelper(7205)=0 || numhelper(7206)=0 || numhelper(7207)=0 || numhelper(7208)=0 


[State -1, Weather Ball]
type = ChangeState
value = 2040
triggerall = !AIlevel
triggerall = power >= 100
triggerall = command = "b"
;triggerall = command != "holddown"
triggerall = statetype =A
triggerall = var(4) = 0 || var(5) = 1
triggerall = prevstateno != 2045 && prevstateno != 2052 && prevstateno != 610
triggerall = ctrl
trigger1 = numhelper(7200)=0 || numhelper(7201)=0 || numhelper(7202)=0 || numhelper(7203)=0 || numhelper(7204)=0 
trigger2 = numhelper(7205)=0 || numhelper(7206)=0 || numhelper(7207)=0 || numhelper(7208)=0


[State -1, Thunder Ball]
type = ChangeState
value = 2050
triggerall = !AIlevel
triggerall = stateno = 2010 && animelemno(0) >= 4 && animelemno(0) < 8
trigger1 = command = "b"

[State -1, Thunder Ball up]
type = ChangeState
value = 2051
triggerall = !AIlevel
triggerall = stateno = 2030 && animelemno(0) >= 5 && animelemno(0) < 8
trigger1 = command = "b"

[State -1, Jump Thunder Ball]
type = ChangeState
value = 2052
triggerall = !AIlevel
triggerall = stateno = 2045 && animelemno(0) >= 5 && animelemno(0) < 9
trigger1 = command = "b"


;---------------------------------------------------------------------------
[State -1, Normal Attack 1]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Normal Attack 2]
type = ChangeState
value = 210
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (stateno = 200) && animelemno(0)>= 4
;trigger3 = stateno = 100

[State -1, Normal Attack 3]
type = ChangeState
value = 220
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype !=A
trigger1 = stateno = 210 && animelemno(0)>=4 && movehit

[State -1, Upper Tact Attack 1]
type = ChangeState
value = 250
triggerall = !AIlevel
triggerall = statetype != A
triggerall = ctrl || (stateno = 200 && movehit)
trigger1 = command = "a" && command = "holddown"
;trigger3 = stateno = 200 && movehit


[State -1, Upper Tact Attack 2]
type = ChangeState
value = 260
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = movecontact && stateno = 250 && animelemno(0)>=3

[State -1, Upper Tact Attack 3]
type = ChangeState
value = 270
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = stateno = 260 && movecontact && animelemno(0)>=8

;---------------------------------------------------------------------------
[State -1, Running Attack 1]
type = ChangeState
value = 300
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = stateno = 100

[State -1, Running Attack 2]
type = ChangeState
value = 310
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = stateno = 300
trigger1 = animelemno(0) >=8 && animelemno(0) < 12

[State -1, Jump Tact Attack]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Knot of Wind]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = prevstateno != 610
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Knot of Wind]
type = ChangeState
value = 615
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Knot of Wind Fall Attack]
type = ChangeState
value = 640
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Throw Kick]
type = changestate
value = 800
triggerall = !AIlevel
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Shift]
type = changestate
value = 900
triggerall = !AIlevel
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "holdfwd" ||  command = "holdback"
trigger1 = command = "c"




