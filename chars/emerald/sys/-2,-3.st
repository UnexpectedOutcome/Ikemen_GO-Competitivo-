[Statedef -2]

[state ]
type=displaytoclipboard
trigger1=!ishelper&&numenemy
text="\ne-state:%d, e-life:%d, e-anim:%d, e-time:%d, e-helper:%d"
params=(enemynear,stateno),(enemynear,life),(enemy,anim),(enemy,time),(enemy,numhelper)
ignorehitpause=1

[State -2]
type = AssertSpecial
trigger1 = !ishelper
flag = nojugglecheck
flag2 = nokoslow
ignorehitpause = 1

[State -2, attributevar]
type = varset
trigger1 = numenemy
fvar(20) = ifelse((enemynear,const(data.attack)<=100),100,(enemynear,const(data.attack)))/100.0
ignorehitpause = 1

[State -2, dampener]
type = attackmulset
trigger1 = alive
value = fvar(20)
ignorehitpause = 1

[State -2, PowerAdd]
type = PowerAdd
triggerall = !ishelper
triggerall = roundstate = 2
trigger1 = movetype != A
value = 1
ignorehitpause = 1

[State -2, Remove]
type = RemoveExplod
triggerall = !ishelper
triggerall = numexplod(4100)
trigger1 = stateno != 640
trigger1 = statetype != A
id = 4100

;---------------------------------------------------------------------------
[Statedef -3]

;AI
;----------------------------------------- Miscs
[state -3, Jump]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = (stateno != (40,52)) && (anim != (40,52))
triggerall = ctrl && statetype != A && pos y = 0
triggerall = enemynear,statetype != A && enemynear,movetype != H
triggerall = frontedgebodydist >= 40
trigger1 = enemynear,stateno = 5120
trigger1 = P2bodydist X >= 60
trigger1 = random <= 150
trigger2 = enemynear,statetype = L
trigger2 = P2bodydist X >= 50
trigger2 = random <= 50
value = 40

[State -3]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = ctrl && statetype != A && pos y = 0
triggerall = enemynear,statetype != A
trigger1 = p2bodydist x >= 120
trigger2 = Backedgebodydist <= 30
value = 1600

[state -3]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = ctrl && statetype != A && pos y = 0
trigger1 = enemynear,statetype = A && P2bodydist X = [20,100]
trigger2 = enemynear,stateno = 5120 && (FrontEdgeDist > 119)
trigger2 = P2bodydist X = [0,30]
value = 1601

;----------------------------------------- Guards
[State -3, defens]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = (statetype = S) && inguarddist
triggerall = (enemy,statetype != A) && (enemy,movetype = A)
triggerall = (ctrl) || stateno = 100
triggerall = facing = -enemynear,facing
trigger1 = P2BodyDist X = [40,140]
trigger2 = P2BodyDist X = [-15,39]
trigger3 = enemy,teammode = simul
trigger3 = P2BodyDist X = [-50,-20]
trigger4 = P2BodyDist X = [-40,90]
trigger4 = enemy,hitdefattr = SC, AA,AP
trigger5 = enemy,numproj > 0 || enemy,numhelper > 0
value = 130

[State -3, defens]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = (statetype = S) && inguarddist
triggerall = (enemy,statetype = A) && (enemy,movetype = A)
triggerall = (ctrl) || stateno = 100
triggerall = facing = -enemynear,facing
trigger1 = P2BodyDist X = [40,140]
trigger2 = P2BodyDist X = [-40,39]
trigger3 = P2BodyDist X = [-40,105]
trigger3 = enemy,hitdefattr = A, AA,AP
value = 130

[State -3,defens]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = (statetype = C) && inguarddist
triggerall = (enemy,movetype = A)
triggerall = (ctrl) || stateno = 100
triggerall = facing = -enemynear,facing
trigger1 = enemy,statetype = C
trigger1 = P2BodyDist X = [40,140]
trigger2 = enemy,statetype = C
trigger2 = P2BodyDist X = [-20,40]
trigger3 = enemy,statetype = S
trigger3 = P2BodyDist X = [-15,40]
trigger4 = P2BodyDist X = [-20,40]
trigger4 = enemy,hitdefattr = SC, AA,AP
trigger5 = enemy,numproj > 0 || enemy,numhelper > 0
value = 131

[State -3,defens]
type = selfstate
triggerall = !ishelper
triggerall = (roundstate = 2) && (var(59))
triggerall = (statetype = A) && inguarddist
triggerall = (enemy,movetype = A)
triggerall = (ctrl) || stateno = 100
triggerall = facing = -enemynear,facing
trigger1 = enemy,statetype = A
trigger1 = P2BodyDist X = [40,90]
trigger2 = enemy,statetype = A
trigger2 = P2BodyDist X = [-20,39]
trigger3 = P2BodyDist X = [-40,100]
trigger3 = enemy,HitDefAttr = A, AA,AP
trigger4 = enemy,numproj > 0 || enemy,numhelper > 0
value = 132

;----------------------------------------- Commons
[State -3, Light Punch]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != L
triggerall = (p2bodydist X < 20) && (p2bodydist Y = [-20,0]) && (random = [0,49])
trigger1 = ctrl || stateno = 52
value = 200

[State -3, Medium Punch]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != L
triggerall = (p2bodydist x = [-10,40]) && (P2BodyDist Y = [-20,0]) && (random = [50,100])
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && movehit
value = 210

[State -3, Hard Punch]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != L
triggerall = (p2bodydist x < 40) && (random = [0,49])
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && movehit
trigger3 = stateno = 210 && movehit
trigger4 = stateno = 230 && movehit
trigger5 = stateno = 240 && movehit
value = 220

[State -3, Light Kick]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != L
triggerall = (p2bodydist x = [-10,45]) && (P2BodyDist Y = [-20,0]) && (random = [50,100])
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && movehit
trigger3 = stateno = 210 && movehit
value = 230

[State -3, Medium Kick]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != L
triggerall = (p2bodydist x = [-10,55]) && (random = [0,49])
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && movehit
trigger3 = stateno = 210 && movehit
trigger4 = stateno = 230 && movehit
value = 240

[State -3, Hard Kick]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != L
triggerall = (p2bodydist x = [-10,50]) && (random = [50,100])
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && movehit
trigger3 = stateno = 210 && movehit
trigger4 = stateno = 230 && movehit
trigger5 = stateno = 240 && movehit
value = 250

[State -3, C Light Punch]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != A
triggerall = (p2bodydist X < 30) && (random = [0,49])
trigger1 = ctrl || stateno = 52
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger8 = ctrl && enemynear,statetype = C
value = 400

[State -3, C Hard Punch]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != A
triggerall = (p2bodydist x = [-10,40]) && (random = [50,100])
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 11
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 205 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 400 && movehit
value = 410

[State -3, C Hard Kick]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype != A
triggerall = (p2bodydist x = [-10,50]) && (random = [0,49])
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movehit
trigger7 = stateno = 410 && movehit
value = 440

[State -3, Air Light]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype = A && enemynear,statetype != L
triggerall = p2bodydist X=[-10,50]
trigger1 = ctrl || stateno = 50
trigger2 = stateno = 222
value = 620

[State -3, Air Flip Kick]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype = A && enemynear,statetype != L
trigger1 = stateno = 50 && Vel y > 0
trigger1 = p2bodydist X = [-10,55]
trigger2 = stateno = 620 && movehit
trigger3 = (stateno = [120,159]) && enemynear,movetype = H
trigger3 = p2bodydist X = [-10,55]
value = 640

[State -3, Stomp]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A && enemynear,statetype = L
triggerall = enemynear,alive && !inguarddist
triggerall = p2bodydist X = [-15,25]
trigger1 = ctrl
value = 700

[State -3, Throw]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = (statetype != A) && (p2bodydist x < 20)
triggerall = enemynear,statetype != A && enemynear,movetype != H
trigger1 = ctrl
trigger1 = enemy,stateno != 5120
value = 800

;----------------------------------------- Supers
[State -3, Dark Energy Ball]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype = S && (random = [100,199]) && (power = [100,999])
triggerall = (p2bodydist X >= 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = (1000+random%3)

[State -3, Youma]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype = S && (random = [200,299]) && (power = [100,999])
triggerall = (P2bodydist X >= 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = (1300+random%3)

[State -3, Dark Energy Ball Super]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype = S && (random = [300,399]) && (power = [100,999])
triggerall = (P2bodydist X >= 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = 1100

[State -3, Dark Energy Balls Super]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power >= 1000
triggerall = statetype = S && (random = [400,499]) && (power = [100,999])
triggerall = (P2bodydist X >= 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = 1200

[State -3, Super Youma]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power >= 300
triggerall = statetype = S && (random = [500,599]) && (power = [100,999])
triggerall = (P2bodydist X >= 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = ifelse(random%2=0,1350,1400)

[State -3, Super Kick]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype = S && (random = [100,199]) && (power = [100,999])
triggerall = (P2bodydist X < 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = (1500+random%3)

[State -3, Counter]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = statetype != A
triggerall = (random = [0,1000]) && power >= 1000
triggerall = P2bodydist X <= 50 && P2bodydist Y = [-70,0]
trigger1 = (stateno = [120,153]) && ctrl
value = 1700

[State -3, Counter]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59))
triggerall = p2bodydist X <= 50
triggerall = !time
trigger1 = (Var(30) >= 5) && (!Lose)
value = ifelse(statetype!=A,1700,1710)
ignorehitpause = 1

[State -3, Dark Power]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power >= 2000
triggerall = statetype = S && (random = [600,699]) && (power = [100,999])
triggerall = (P2bodydist X >= 50) && (prevstateno != 5120) && enemynear,statetype != L
trigger1 = ctrl
value = 2000

;---------------------------------------- hypers
[State -3, Wicked Rush]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power >= 2500
triggerall = statetype != A && (random = [0,199])
triggerall = (enemynear,statetype != L) && (enemynear,movetype != H)
triggerall = (enemynear,movetype != A)
triggerall = P2bodydist X = [30,120]
triggerall = ctrl
trigger1 = enemynear,statetype != A
trigger1 = !enemynear,ctrl
trigger2 = enemynear,vel Y > 0
trigger2 = EnemyNear,Pos y = [-70,-10]
value = 2500

[State -3, Emerald Dragon]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power >= 3000
triggerall = statetype != A && (random = [200,399])
triggerall = (enemynear,statetype != L) && (enemynear,movetype != H)
triggerall = P2bodydist X = [30,150]
trigger1 = ctrl
value = 2600

[State -3, Dark Ray]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power >= 4000
triggerall = statetype != A && (random = [400,599])
triggerall = (enemynear,statetype != L) && (enemynear,movetype != H)
triggerall = P2bodydist X = [30,200]
trigger1 = ctrl
value = 2800

[State -3, Time Warp]
type = selfstate
triggerall = !ishelper
triggerall = roundstate = 2 && (var(59)) && power = powermax
triggerall = statetype != A && (random = [600,999])
triggerall = (enemynear,statetype != L) && (enemynear,movetype != H)
triggerall = P2bodydist X < 50
trigger1 = ctrl
trigger2 = ctrl
trigger2 = EnemyNear,MoveType=A || EnemyNear,Ctrl
trigger3 = stateno = [120,153]
value = 3000

;------------------------------------------------ Combo Breakers
[State -3, Combo Counter Add]
type = VarAdd
triggerall = !ishelper
triggerall = !time
trigger1 = MoveType = H
var(30) = 1
ignorehitpause = 1

[State -3, Combo Counter Reset]
type = VarSet
triggerall = !ishelper
trigger1 = MoveType != H
var(30) = 0
ignorehitpause = 1

[State -3, notover]
type = assertspecial
triggerall = !ishelper
triggerall = roundstate>=3
trigger1 = alive
trigger1 = stateno!=[180,184]
trigger1 = stateno!=170
flag = roundnotover
ignorehitpause = 1

[State -3, special]
type = AssertSpecial
triggerall = !ishelper
triggerall = roundstate>=3
triggerall = win
trigger1 = var(10)
flag = noFG
flag2 = noBG
flag3 = nobardisplay
ignorehitpause = 1

;------------------------------------------------ Corner
[State -3, Corner]
type = Velset
triggerall = !ishelper
trigger1 = FrontEdgeDist<10&&Vel X>0.1
x = 0.1

[State -3, Corner]
type = Width
trigger1 = !ishelper
edge = 5,0

[State -3, Corner Push]
type= varset
triggerall = !ishelper
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = (target,hitover) || (target,gethitvar(hitshaketime)>0 && target,time<=0)
fvar(5) = 0

[State -3, Corner Push]
type= varset
triggerall = !ishelper
trigger1 = movecontact=1&&numtarget
fvar(5) = (target,gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]
type= posadd
triggerall = !ishelper
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && (target,gethitvar(hitshaketime)<=0)
triggerall = (target,statetype = S || target,statetype = C) && !(target,gethitvar(yvel)) && !(target,hitfall)
trigger1 = target,frontedgebodydist <= abs(target, vel x)
trigger1 = (target,gethitvar(xvel)*target,facing)>0
trigger2 = target,backedgebodydist<=abs(target,vel x)
trigger2 = (target,gethitvar(xvel)*target,facing)<0
x = ifelse(target,frontedgebodydist<=0,-1,1)*(target,facing)*fvar(5)

[State -3, Corner Push]
type= varset
triggerall = !ishelper
trigger1 = numtarget
trigger1 = target,gethitvar(hitshaketime)<=0
fvar(5) = fvar(5)*0.85

;------------------------------------------------ Prevent Undergound
[State -3, Prevent Undergound]
type= targetbind
triggerall = !ishelper
trigger1 = movehit=1
trigger1 = numtarget=1 && numenemy
trigger1 = (target,time<=1)&&(target,ID=enemynear,ID)
trigger1 = !(target,hitshakeover)&&(target,hitfall)&&(target,pos y>0)
pos = ceil(p2dist x),ceil(-pos y)
ignorehitpause = 1

;------------------------------------------------ Extras
[State -3, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !ishelper
triggerall = stateno = 0 && anim = 0
trigger1 = !numexplod(6050)
anim = 6050
ID = 6050
pos = 0,3
postype = p1
bindtime = 1
sprpriority = -1
removetime = -2
ownpal = 1
trans = add
ignorehitpause = 1

[State -3, Front]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !ishelper
triggerall = !numexplod(6010)
trigger1 = stateno = 0 && anim = 0
anim = 6010
ID = 6010
pos = 0,-65
postype = p1
scale = 0.5,1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = add
ignorehitpause = 1

[State -3, Back]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !ishelper
triggerall = !numexplod(6011)
trigger1 = stateno = 0 && anim = 0
anim = 6011
ID = 6011
pos = 0,-65
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
ignorehitpause = 1

[State -3, Effect]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = var(10)
trigger1 = (gametime%60)=1
anim = 8002
ID = 8002
pos = 320,0
postype = back
velocity = -3,0
bindtime = 1
removetime = 120
sprpriority = -3
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State -3, guard]
type = PlaySnd
triggerall = !ishelper && alive
triggerall = !time
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153
trigger5 = stateno = 154
value = S120,(random%2)
volumescale = 255