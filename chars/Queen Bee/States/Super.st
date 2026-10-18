; _________________________________________
;| Queen Bee by varo_hades                 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<QJ>=============================
[StateDef 3000]
type = U
movetype = I
physics = N
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(12) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Dust Helper]
type = Helper
trigger1 = animelem = 12
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 900, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 0
channel = 0

[State 900, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 1
channel = 0

[State 900, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 12
channel = -1

[State 900]
type = Helper
trigger1 = time = 0
name = "Bee"
ID = 3001
pos = -120,-240
postype = p1
stateno = 3001
ownpal = 1
facing = 1

[State 900]
type = Helper
trigger1 = time = 0
name = "Bee"
ID = 3001
pos = 110,-240
postype = p1
stateno = 3001
ownpal = 1
facing = -1

[State 900]
type = Helper
trigger1 = AnimElem = 6
name = "genkidama"
ID = 3000
pos = -10 , -130
postype = p1
stateno = 3002
ownpal = 1
size.xscale = 0.9
size.yscale = 0.9

[State 900]
type = ChangeState
triggerall = var(46) = 0
trigger1 = AnimTime = 0
value = ifelse(Statetype=A,50,0)
ctrl = ifelse(Statetype=A,0,1)

[State 900]
type = ChangeState
triggerall = var(46) = 1
trigger1 = AnimTime = 0
value = ifelse(Statetype=A,1210,0)
ctrl = 1

;========================<MAX QJ>=============================
[StateDef 3050]
type = U
movetype = I
physics = N
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(12) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = !time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Dust Helper]
type = Helper
trigger1 = animelem = 12
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 900, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 0
channel = 0

[State 900, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 1
channel = 0

[State 900, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 12
channel = -1

[State 900]
type = Helper
trigger1 = time = 0
name = "Bee"
ID = 3001
pos = -120,-240
postype = p1
stateno = 3001
ownpal = 1
facing = 1

[State 900]
type = Helper
trigger1 = time = 0
name = "Bee"
ID = 3001
pos = 110,-240
postype = p1
stateno = 3001
ownpal = 1
facing = -1

[State 900]
type = Helper
trigger1 = AnimElem = 6
name = "genkidama"
ID = 3000
pos = -10 , -130
postype = p1
stateno = 3002
ownpal = 1
size.xscale = 0.9
size.yscale = 0.9

[State 900]
type = ChangeState
triggerall = var(46) = 0
trigger1 = AnimTime = 0
value = ifelse(Statetype=A,50,0)
ctrl = ifelse(Statetype=A,0,1)

[State 900]
type = ChangeState
triggerall = var(46) = 1
trigger1 = AnimTime = 0
value = ifelse(Statetype=A,1210,0)
ctrl = 1

;========================<+B>=============================
[StateDef 3100]
type = U
movetype = I
physics = N
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 20
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-15 * const(size.xScale)), ceil(-70 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = !time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 950]
type = Helper
trigger1 = time = 0
name = "nest"
ID = 3100
pos = 0 , -500
postype = back
stateno = 3105
sprpriority = 1
ownpal = 1
size.xscale = 0.9
size.yscale = 1

[State 950]
type = VelSet
triggerall = Pos Y > -80
trigger1 = AnimElem = 3
y = -5.5

[State 950]
type = VelSet
trigger1 = Pos Y <= -80
y = 0

[State 950]
type = PosSet
trigger1 = Pos Y <= -80
y = -80

[State 950]
type = ChangeState
trigger1 = Pos Y <= -80
trigger1 = (Helper(3100),Pos Y <= -70) && (Helper(3100),Vel Y = 0) && (Helper(3100),time > 5)
value = 3101

;+B
[Statedef 3101]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3101
sprpriority = 2
hitcountpersist = 1

[State 951, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5000, 2
channel = 0

[State 951]
type = VelAdd
trigger1 = time >= 55
y = 0.35

[State 951]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 951]
type = ChangeState
trigger1 = Helper(3100),Var(1) = 1
value = 3102

;+B
[Statedef 3102]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3102
sprpriority = -3
hitcountpersist = 1

[State 832, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3100, 0
channel = 0

[State 952]
type = VelAdd
trigger1 = time >= 108
y = 0.35

[State 952]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;Bees
[Statedef 3105]
type    = A
movetype= I
physics = N
velset = 0,10
anim = 3105
sprpriority = -4

[State 955]
type = PosSet
trigger1 = time = 1
x = Root,Pos X
y = -250

[State 955]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -65
trigger2 = var(1) = 0
trigger2 = time >= 85
trigger3 = var(1) = 1
trigger3 = time >= 180
y = -8

[State 955]
type = VelSet
triggerall = time < 65
trigger1 = Vel Y < 0
trigger1 = Pos Y <= -70
y = 0

[State 955, ‰’e]
type = Helper
trigger1 = (Root,StateNo = 3101) && (Root,AnimElem = 3)
name = "Bee"
ID = 3110
pos = -27 , -27
postype = p1
stateno = 3110
sprpriority = 3
ownpal = 1

[State 955]
type = PosAdd
triggerall = Root,Anim = 3102
trigger1 = Root,AnimElem = 10
y = 5

[State 955]
type = PosAdd
triggerall = Root,Anim = 3102
trigger1 = Root,AnimElem = 16
y = -5

[State 955]
type = DestroySelf
trigger1 = var(1) = 0
trigger1 = time = 105
trigger2 = var(1) = 1
trigger2 = time = 200

;+B
[Statedef 3109]
type = S
movetype = H
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -3
anim = 5000

[State 959]
type = PosSet
trigger1 = 1
y = 0

[State 959]
type = ChangeAnim2
trigger1 = time = 0
value = 3103

[State 959, “ÁŽê‚â‚ç‚êƒAƒjƒ—L‚è]
type = ChangeAnim
triggerall = AnimExist(7695) = 1
trigger1 = time = 90
value = 7695

[State 959, ‹CâƒAƒjƒ—L‚è]
type = ChangeAnim
triggerall = AnimExist(7695) = 0
triggerall = AnimExist(5300) = 1
trigger1 = time = 90
value = 5300

[State 959, ‚Ç‚¿‚ç‚à–³‚µ]
type = ChangeAnim
triggerall = AnimExist(7695) = 0
triggerall = AnimExist(5300) = 0
trigger1 = time = 90
value = 5000

[State 959]
type = NotHitBy
trigger1 = 1
value = SCA

[State 959]
type = SelfState
trigger1 = time = 140
value = 5100

;+B
[Statedef 3110]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3065
sprpriority = 3

[State 960, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 12
freqmul = 1

[State 960]
type = VelSet
trigger1 = AnimElem = 4
x = 6.25
y = 4

[State 960]
type = VelAdd
trigger1 = time > 6
y = -0.3333

[State 960]
type = DestroySelf
trigger1 = FrontEdgeDist < -80

[State 960]
type = StateTypeSet
trigger1 = Root,movetype = H
movetype= I

[State 960]
type = Hitdef
triggerall = Root,Vel Y = 0
trigger1 = time = 8
attr = A, HA
damage = Ceil((1*6.67)+((1*6.67)*Root,fvar(11))), 0 ;(1,1)
animtype = Light
ground.type = High
air.type = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := 0
ground.slidetime = 50
guard.slidetime = 50
ground.hittime  = 50
guard.hittime  = 50
air.hittime = 50
getpower=0,0
givepower=20,20
ID = 3110
p1stateno = 3111
p2stateno = 3109
kill = 0

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 12)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8016)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist x), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

;+B
[Statedef 3111]
type = A
movetype= A
physics = N
velset = 0,0
anim = 3075
sprpriority = -2

[State 960, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 800
freqmul = 1
channel = 1

[State 960, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 11
freqmul = 1
channel = 2

[State 961]
type = ParentVarSet
trigger1 = time = 0
var(1) = 1

[State 955, ‰’eHit]
type = Helper
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
name = "Bee"
ID = 3120
pos = Ceil(ParentDist X - 27), Ceil(ParentDist Y - 27)
postype = p1
stateno = 3115
sprpriority = -3
ownpal = 1

[State 955, ƒTƒ{‚è]
type = Helper
trigger1 = time = 1
name = "Bee"
ID = 3120
pos = Ceil(ParentDist X - 27), Ceil(ParentDist Y - 27)
postype = p1
stateno = 3119
sprpriority = -1
ownpal = 1

[State 961]
type = Helper
trigger1 = time = 3
name = "Bee"
ID = 3111
pos = 0 , 0
postype = p1
stateno = 3112
sprpriority = -1
ownpal = 1

[State 961]
type = PosSet
trigger1 = time <= 3
x = target(3110),Pos X
y = target(3110),Const(size.mid.pos.y)

[State 961]
type = VelSet
trigger1 = AnimElem = 37
x = 3
y = -4

[State 961]
type = ChangeAnim
triggerall = anim = 3075
trigger1 = time = 30
value = 3076

[State 961]
type = DestroySelf
trigger1 = FrontEdgeDist < -80

[State 961, ƒqƒbƒg”]
type = HitAdd
triggerall = anim = 3076
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 30
trigger10= AnimElem = 33
trigger11= AnimElem = 36
value = 1

[State 961, ‰¹]
type = PlaySnd
triggerall = anim = 3076
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 30
trigger10= AnimElem = 33
trigger11= AnimElem = 36
value = 2, 12
channel = -1

[State 1006, HitSpark]
type = Helper
triggerall = anim = 3076
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 30
trigger10= AnimElem = 33
trigger11= AnimElem = 36
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8016)
ID = 8000
name = "Spark"
posType = P1
pos = 10, 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 961, ƒ_ƒ[ƒW]
type = TargetLifeAdd
triggerall = anim = 3076
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 30
trigger10= AnimElem = 33
trigger11= AnimElem = 36
value =-ceil(((1.5*6.67)+((1*6.67)*Root,fvar(11)))*Root,const(data.attack)*0.01) ;(1,1)
absolute = 0
kill = 0

[State 961, ƒ_ƒ[ƒW]
type = TargetLifeAdd
triggerall = anim = 3076
trigger1 = AnimElem = 52
value =-ceil(((4*6.67)+((7*6.67)*Root,fvar(11)))*Root,const(data.attack)*0.01) ;(4,7)
absolute = 0

;+B
[Statedef 3112]
type = A
movetype = I
physics = N
velset = 1,-1
anim = 3070
sprpriority = -1

[State 962]
type = VelAdd
trigger1 = time <= 12
y = -0.5

[State 962]
type = VelSet
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
x = 2
y = 0

[State 962]
type = VelSet
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
x = -2
y = 0

[State 962]
type = VelSet
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 19
trigger4 = AnimElem = 20
trigger5 = AnimElem = 21
trigger6 = AnimElem = 22
x = 6
y = 0

[State 962]
type = VelSet
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
x = -6
y = 0

[State 962]
type = ChangeState
trigger1 = parent,AnimElem = 37
value = 3113

;+B
[Statedef 3113]
type = A
movetype = I
physics = N
velset = 0,3
anim = 3071
sprpriority = -1

[State 963]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3114

;+B
[Statedef 3114]
type = A
movetype = I
physics = N
velset = 0,0
anim = 3072
sprpriority = -1

[State 964]
type = DestroySelf
trigger1 = time = 30

;+B
[Statedef 3115]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3065
sprpriority = -2

[State 965]
type = Explod
trigger1 = time = 3
anim = 3066
ID = 3115
pos = 10, 10
postype = p1
ownpal = 1
scale = 0.9, 1
sprpriority = -3
bindtime = 9999
removetime = -1

[State 965]
type = Explod
trigger1 = time = 3
anim = 3066
ID = 3115
pos = -10, -10
postype = p1
ownpal = 1
scale = 0.9, 1
sprpriority = -3
bindtime = 9999
removetime = -1

[State 965]
type = VelSet
trigger1 = time = 6
x = ParentDist X/25
y = ParentDist Y/20

[State 965]
type = RemoveExplod
trigger1 = ParentDist X = [0, 20]
ID = 3115

[State 965]
type = DestroySelf
trigger1 = ParentDist X = [0, 20]

;+B
[Statedef 3119]
type = A
movetype = I
physics = N
velset = 0,0
anim = 3067
sprpriority = -1

[State 969]
type = VelSet
trigger1 = time = 2
x = 5
y = 2

[State 969]
type = VelAdd
trigger1 = time > 2
trigger1 = time < 25
x = -0.22
y = -0.45

[State 969]
type = VelSet
trigger1 = time = 25
x = 0
y = 0

[State 969]
type = ChangeState
trigger1 = parent,AnimElem = 37
value = 3120

;+B
[Statedef 3120]
type = A
movetype = I
physics = N
velset = 3,-4
anim = 3068
sprpriority = -1

[State 970]
type = DestroySelf
trigger1 = FrontEdgeDist < -40

;========================<MAX +B>=============================
[StateDef 3150]
type = U
movetype = I
physics = N
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 20
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-15 * const(size.xScale)), ceil(-70 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = !time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 950]
type = Helper
trigger1 = time = 0
name = "nest"
ID = 3150
pos = 0 , -500
postype = back
stateno = 3155
sprpriority = 1
ownpal = 1
size.xscale = 0.9
size.yscale = 1

[State 950]
type = VelSet
triggerall = Pos Y > -80
trigger1 = AnimElem = 3
y = -5.5

[State 950]
type = VelSet
trigger1 = Pos Y <= -80
y = 0

[State 950]
type = PosSet
trigger1 = Pos Y <= -80
y = -80

[State 950]
type = ChangeState
trigger1 = Pos Y <= -80
trigger1 = (Helper(3150),Pos Y <= -70) && (Helper(3150),Vel Y = 0) && (Helper(3150),time > 5)
value = 3151

;+B
[Statedef 3151]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3101
sprpriority = 2
hitcountpersist = 1

[State 951, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5000, 2
channel = 0

[State 951]
type = VelAdd
trigger1 = time >= 55
y = 0.35

[State 951]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 951]
type = ChangeState
trigger1 = Helper(3150),Var(1) = 1
value = 3152

;+B
[Statedef 3152]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3152
sprpriority = -3
hitcountpersist = 1

[State 832, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3100, 0
channel = 0

[State 952]
type = VelAdd
trigger1 = time >= 162
y = 0.35

[State 952]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;Bees
[Statedef 3155]
type    = A
movetype= I
physics = N
velset = 0,10
anim = 3105
sprpriority = -4

[State 955]
type = PosSet
trigger1 = time = 1
x = Root,Pos X
y = -250

[State 955]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -65
trigger2 = var(1) = 0
trigger2 = time >= 145
trigger3 = var(1) = 1
trigger3 = time >= 240
y = -8

[State 955]
type = VelSet
triggerall = time < 125
trigger1 = Vel Y < 0
trigger1 = Pos Y <= -70
y = 0

[State 955, ‰’e]
type = Helper
trigger1 = (Root,StateNo = 3151) && (Root,AnimElem = 3)
name = "Bee"
ID = 3160
pos = -27 , -27
postype = p1
stateno = 3160
sprpriority = 3
ownpal = 1

[State 955]
type = PosAdd
triggerall = Root,Anim = 3152
trigger1 = Root,AnimElem = 10
y = 5

[State 955]
type = PosAdd
triggerall = Root,Anim = 3152
trigger1 = Root,AnimElem = 16
y = -5

[State 955]
type = DestroySelf
trigger1 = var(1) = 0
trigger1 = time = 165
trigger2 = var(1) = 1
trigger2 = time = 260

;+B
[Statedef 3159]
type = S
movetype = H
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -3
anim = 5000

[State 959]
type = PosSet
trigger1 = 1
y = 0

[State 959]
type = ChangeAnim2
trigger1 = time = 0
value = 3103

[State 959, “ÁŽê‚â‚ç‚êƒAƒjƒ—L‚è]
type = ChangeAnim
triggerall = AnimExist(7695) = 1
trigger1 = time = 90
value = 7695

[State 959, ‹CâƒAƒjƒ—L‚è]
type = ChangeAnim
triggerall = AnimExist(7695) = 0
triggerall = AnimExist(5300) = 1
trigger1 = time = 90
value = 5300

[State 959, ‚Ç‚¿‚ç‚à–³‚µ]
type = ChangeAnim
triggerall = AnimExist(7695) = 0
triggerall = AnimExist(5300) = 0
trigger1 = time = 90
value = 5000

[State 959]
type = NotHitBy
trigger1 = 1
value = SCA

[State 959]
type = SelfState
trigger1 = time = 200
value = 5100

;+B
[Statedef 3160]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3065
sprpriority = 3

[State 960, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 12
freqmul = 1

[State 960]
type = VelSet
trigger1 = AnimElem = 4
x = 6.25
y = 4

[State 960]
type = VelAdd
trigger1 = time > 6
y = -0.3333

[State 960]
type = DestroySelf
trigger1 = FrontEdgeDist < -80

[State 960]
type = StateTypeSet
trigger1 = Root,movetype = H
movetype= I

[State 960]
type = Hitdef
triggerall = Root,Vel Y = 0
trigger1 = time = 8
attr = A, HA
damage = Ceil((1*6.67)+((1*6.67)*Root,fvar(11))), 0 ;(1,1)
animtype = Light
ground.type = High
air.type = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := 0
ground.slidetime = 50
guard.slidetime = 50
ground.hittime  = 50
guard.hittime  = 50
air.hittime = 50
getpower=0,0
givepower=20,20
ID = 3160
p1stateno = 3161
p2stateno = 3159
kill = 0

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 12)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8016)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist x), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

;+B
[Statedef 3161]
type = A
movetype= A
physics = N
velset = 0,0
anim = 3075
sprpriority = -2

[State 960, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 800
freqmul = 1
channel = 1

[State 960, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 11
freqmul = 1
channel = 2

[State 961]
type = ParentVarSet
trigger1 = time = 0
var(1) = 1

[State 955, ‰’eHit]
type = Helper
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
name = "Bee"
ID = 3170
pos = Ceil(ParentDist X - 27), Ceil(ParentDist Y - 27)
postype = p1
stateno = 3165
sprpriority = -3
ownpal = 1

[State 955, ƒTƒ{‚è]
type = Helper
trigger1 = time = 1
name = "Bee"
ID = 3170
pos = Ceil(ParentDist X - 27), Ceil(ParentDist Y - 27)
postype = p1
stateno = 3169
sprpriority = -1
ownpal = 1

[State 961]
type = Helper
trigger1 = time = 3
name = "Bee"
ID = 3161
pos = 0 , 0
postype = p1
stateno = 3162
sprpriority = -1
ownpal = 1

[State 961]
type = PosSet
trigger1 = time <= 3
x = target(3160),Pos X
y = target(3160),Const(size.mid.pos.y)

[State 961]
type = VelSet
trigger1 = AnimElem = 73
x = 3
y = -4

[State 961]
type = ChangeAnim
triggerall = anim = 3075
trigger1 = time = 30
value = 3086

[State 961]
type = DestroySelf
trigger1 = FrontEdgeDist < -80

[State 961, ƒqƒbƒg”]
type = HitAdd
triggerall = anim = 3086
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
trigger11 = AnimElem = 33
trigger12 = AnimElem = 36
trigger13 = AnimElem = 39
trigger14 = AnimElem = 42
trigger15 = AnimElem = 45
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 60
trigger20 = AnimElem = 63
trigger21 = AnimElem = 66
trigger22 = AnimElem = 69
trigger23 = AnimElem = 72
value = 1

[State 961, ‰¹]
type = PlaySnd
triggerall = anim = 3086
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
trigger11 = AnimElem = 33
trigger12 = AnimElem = 36
trigger13 = AnimElem = 39
trigger14 = AnimElem = 42
trigger15 = AnimElem = 45
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 60
trigger20 = AnimElem = 63
trigger21 = AnimElem = 66
trigger22 = AnimElem = 69
trigger23 = AnimElem = 72
value = 2, 12
channel = -1

[State 1006, HitSpark]
type = Helper
triggerall = anim = 3086
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
trigger11 = AnimElem = 33
trigger12 = AnimElem = 36
trigger13 = AnimElem = 39
trigger14 = AnimElem = 42
trigger15 = AnimElem = 45
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 60
trigger20 = AnimElem = 63
trigger21 = AnimElem = 66
trigger22 = AnimElem = 69
trigger23 = AnimElem = 72
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8016)
ID = 8000
name = "Spark"
posType = P1
pos = 10, 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 961, ƒ_ƒ[ƒW]
type = TargetLifeAdd
triggerall = anim = 3086
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
trigger11 = AnimElem = 33
trigger12 = AnimElem = 36
trigger13 = AnimElem = 39
trigger14 = AnimElem = 42
trigger15 = AnimElem = 45
trigger16 = AnimElem = 48
trigger17 = AnimElem = 51
trigger18 = AnimElem = 54
trigger19 = AnimElem = 60
trigger20 = AnimElem = 63
trigger21 = AnimElem = 66
trigger22 = AnimElem = 69
trigger23 = AnimElem = 72
value =-ceil(((1.5*5.57)+((1*5.57)*Root,fvar(11)))*Root,const(data.attack)*0.01) ;(1,1)
absolute = 0
kill = 0

[State 961, ƒ_ƒ[ƒW]
type = TargetLifeAdd
triggerall = anim = 3086
trigger1 = AnimElem = 88
value =-ceil(((4*5.57)+((7*5.57)*Root,fvar(11)))*Root,const(data.attack)*0.01) ;(4,7)
absolute = 0

;+B
[Statedef 3162]
type = A
movetype = I
physics = N
velset = 1,-1
anim = 3070
sprpriority = -1

[State 962]
type = VelAdd
trigger1 = time <= 12
y = -0.5

[State 962]
type = VelSet
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
x = 2
y = 0

[State 962]
type = VelSet
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
x = -2
y = 0

[State 962]
type = VelSet
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 19
trigger4 = AnimElem = 20
trigger5 = AnimElem = 21
trigger6 = AnimElem = 22
x = 6
y = 0

[State 962]
type = VelSet
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
x = -6
y = 0

[State 962]
type = ChangeState
trigger1 = parent,AnimElem = 73
value = 3163

;+B
[Statedef 3163]
type = A
movetype = I
physics = N
velset = 0,3
anim = 3071
sprpriority = -1

[State 963]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3164

;+B
[Statedef 3164]
type = A
movetype = I
physics = N
velset = 0,0
anim = 3072
sprpriority = -1

[State 964]
type = DestroySelf
trigger1 = time = 30

;+B
[Statedef 3165]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3065
sprpriority = -2

[State 965]
type = Explod
trigger1 = time = 3
anim = 3066
ID = 3165
pos = 10, 10
postype = p1
ownpal = 1
scale = 0.9, 1
sprpriority = -3
bindtime = 9999
removetime = -1

[State 965]
type = Explod
trigger1 = time = 3
anim = 3066
ID = 3165
pos = -10, -10
postype = p1
ownpal = 1
scale = 0.9, 1
sprpriority = -3
bindtime = 9999
removetime = -1

[State 965]
type = VelSet
trigger1 = time = 6
x = ParentDist X/25
y = ParentDist Y/20

[State 965]
type = RemoveExplod
trigger1 = ParentDist X = [0, 20]
ID = 3165

[State 965]
type = DestroySelf
trigger1 = ParentDist X = [0, 20]

;+B
[Statedef 3169]
type = A
movetype = I
physics = N
velset = 0,0
anim = 3067
sprpriority = -1

[State 969]
type = VelSet
trigger1 = time = 2
x = 5
y = 2

[State 969]
type = VelAdd
trigger1 = time > 2
trigger1 = time < 25
x = -0.22
y = -0.45

[State 969]
type = VelSet
trigger1 = time = 25
x = 0
y = 0

[State 969]
type = ChangeState
trigger1 = parent,AnimElem = 73
value = 3170

;+B
[Statedef 3170]
type = A
movetype = I
physics = N
velset = 3,-4
anim = 3068
sprpriority = -1

[State 970]
type = DestroySelf
trigger1 = FrontEdgeDist < -40

;========================<REINCARNATION>=============================
[StateDef 3200]
type = U
movetype = A
physics = N
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(15 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 830, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800, 0
channel = 0

[State 830]
type = VelSet
trigger1 = AnimElem = 4
x = 6

[State 830]
type = VelSet
trigger1 = var(46) = 0
trigger1 = Statetype = A
trigger1 = AnimElem = 5
x = 2.375

[State 830]
type = VelSet
trigger1 = Statetype != A
trigger1 = AnimElem = 5
trigger2 = var(46) = 1
trigger2 = Statetype = A
trigger2 = AnimElem = 5
x = 0

[State 830]
type = StateTypeSet
triggerall = var(46) = 0
triggerall = Statetype = A
trigger1 = AnimElem = 5
physics = A

[State 830]
type = ChangeState
triggerall = Statetype != A
trigger1 = AnimElem = 8, = 3
value = 0
ctrl = 1

[State 830]
type = ChangeState
triggerall = var(46) = 1
triggerall = Statetype = A
trigger1 = AnimElem = 8, = 3
value = 1210
ctrl = 1

[State 830, Hitdef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
damage = Ceil((15*6.67)+((2*6.67)*fvar(11))), 0 ;(6,2)
animtype  = Hard
ground.type = Low
air.type = Low
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 10, 10
sparkNo=-1 + 0 * (var(33) :=0)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
ground.slidetime = 26
guard.slidetime = 25
ground.hittime  = 26
guard.hittime  = 25
air.hittime = 26
ground.velocity = -2.5,-4
air.velocity = -2.5,-4
getpower=0,0
givepower=20,20
fall = 1
ID = 3200
p1stateno = 3201
p2stateno = 3207
kill = 0

[State 830]
type = ChangeState
trigger1 = MoveGuarded = 3
value = 1209

;Grab
[Statedef 3201]
type = U
movetype = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3201
sprpriority = 1
facep2 = 1
hitcountpersist = 1

[State 831, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3200, 4
channel = 0

[State 831]
type = PosAdd
trigger1 = AnimElem = 1
x = (P2Dist X-60)

[State 831, ”½“]]
type = Turn
triggerall = BackEdgeDist < 60
trigger1 = AnimElem = 4

[State 831, Œã‚ë‚ª‹·‚¢Žž]
type = PosAdd
triggerall = frontEdgeDist < 60
trigger1 = AnimElem = 4
x = -60

[State 831]
type = TargetState
trigger1 = AnimElem = 4
value = 3207

[State 831, ’Í‚ñ‚¾‘ŠŽè‚ÌˆÊ’u]
type = TargetBind
trigger1 = AnimElem = 3
pos = 45, 0

[State 831, ’Í‚ñ‚¾‘ŠŽè‚ÌˆÊ’u]
type = TargetBind
trigger1 = AnimElem = 4
pos = 25, 0

[State 831, ’Í‚ñ‚¾‘ŠŽè‚ÌˆÊ’u]
type = TargetBind
trigger1 = AnimElem = 5
pos = 20, 0

[State 831, ’Í‚ñ‚¾‘ŠŽè‚ÌˆÊ’u]
type = TargetBind
trigger1 = time = 80
pos = 40, 0

[State 831,Q-Bee]
type = Helper
trigger1 = AnimElem = 27
name = "Q-Bee"
ID = 3200
pos = 0, 0
postype = p1
stateno = 3203
helpertype = normal
ownpal = ifelse(var(46)=1,0,1)
ontop = 1

[State 831,–š]
type = Helper
trigger1 = Time = 80
name = "Q-Bee"
ID = 3205
pos = 40, -50
postype = p1
stateno = 3205
helpertype = normal
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 831, ƒXƒe[ƒg•ÏX]
type = ChangeState
trigger1 = Time >= 135
trigger1 = Helper(3200), Pos Y >= 0
trigger1 = Helper(3205), Pos Y >= 0
value = 3202

;Attack
[Statedef 3202]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3204
sprpriority = 1
facep2 = 1
hitcountpersist = 1

[State 832, ‰¹º]
type = PlaySnd
trigger1 = AnimElem = 19
value = 3200, 0
channel = 0

[State 832]
type = TargetState
trigger1 = AnimElem = 1
value = 3208
ID = 3200

[State 832]
type = PosSet
trigger1 = AnimElem = 1
y = -50

[State 832]
type = PosAdd
trigger1 = AnimElem = 1
x = 40

[State 832]
type = turn
trigger1 = AnimElem = 1

[State 832]
type = PalFX
trigger1 = AnimElem = 2
time = 40
add = 100,100,100

[State 832]
type = VelSet
trigger1 = AnimElem = 19
x = 2.5
y = -7

[State 832]
type = VelAdd
trigger1 = time >= 91
y = 0.35

[State 832]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 832, ’Í‚ñ‚¾‘ŠŽè‚Ìƒ‰ƒCƒt‘Œ¸]
type = TargetLifeAdd
trigger1 = Pos Y >= 0
value =-ceil(((35*6.67)+((8*6.67)*fvar(11)))*const(data.attack)*0.01) ;(25,8);ƒ_ƒ[ƒW‚ª‚ ‚Ü‚è‚É‘å‚«‚¢‚Ì‚Å’²®
absolute = 0

[State 3300, Power]
type = lifeadd
trigger1 = Pos Y >= 0
value = 250

[State 832]
type = ChangeState
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

;Final
[Statedef 3203]
type = A
movetype = I
physics = N
ctrl = 0
velset = -2, -6
anim = 3202
sprpriority = 1

[State 833]
type = VelAdd
trigger1 = time >= 5
y = 0.35

[State 833]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 833]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3204

;Die
[Statedef 3204]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 3203
sprpriority = 1

[State 834]
type = PosSet
trigger1 = 1
y = 0

[State 834]
type = DestroySelf
trigger1 = time >= 90

;Cocoon
[Statedef 3205]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3205
sprpriority = 5

[State 835, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200, 3

[State 835]
type = Explod
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
trigger4 = time = 3
trigger5 = time = 4
trigger6 = time = 5
trigger7 = time = 6
trigger8 = time = 7
trigger9 = time = 8
anim = 3210
pos = 0, -20
random = 50, 65
postype = p1
ontop = 1

[State 835]
type = VelSet
trigger1 = AnimElem = 6
y = 3

[State 835]
type = VelAdd
triggerall = Pos Y < 0
trigger1 = time >= 6
y = 0.35

[State 835]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 835]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 835]
type = ChangeState
trigger1 = Helper(3200),Pos Y >= 0
trigger1 = Pos Y >= 0
value = 3206

;Cocoon
[Statedef 3206]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 3206
sprpriority = 5

[State 836, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200, 1

[State 836, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = AnimElem = 13
value = 3200, 2

[State 836]
type = Explod
trigger1 = AnimElem = 4
anim = 3207
pos = 0, 0
postype = p1
sprpriority = -1
shadow = 16, 16, 16

[State 836]
type = DestroySelf
trigger1 = time >= 181

;Player 2
[Statedef 3207]
type = U
movetype = H
physics = N
ctrl = 0
velset = 0,0
facep2 = 1

[State 837]
type = ChangeAnim2
trigger1 = time = 0
value = 3208

[State 837]
type = AssertSpecial
trigger1 = time > 65
flag = invisible
flag2 = noautoturn

[State 837]
type = NotHitBy
trigger1 = 1
value = SCA

[State 837]
type = PlayerPush
trigger1 = 1
value = 0

[State 837]
type = SelfState
trigger1 = time >= 400
value = 5100

;Player 2
[Statedef 3208]
type = U
movetype = H
physics = N
ctrl = 0
velset = 0,0
facep2 = 1

[State 838]
type = ChangeAnim2
trigger1 = time = 0
value = 3208

[State 838]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noautoturn

[State 838]
type = NotHitBy
trigger1 = 1
value = SCA

[State 838]
type = PlayerPush
trigger1 = 1
value = 0

[State 838]
type = PosAdd
trigger1 = time = 1
x = -20

[State 838]
type = ChangeState
trigger1 = time >= 148
value = 3209

;Player 2
[Statedef 3209]
type = A
movetype = H
physics = N
ctrl = 0
velset = -2,-6
facep2 = 1

[State 839]
type = PosSet
trigger1 = time = 0
y = 0

[State 839]
type = VelAdd
trigger1 = 1
y = 0.35

[State 839]
type = ChangeAnim2
trigger1 = time = 0
value = 3209

[State 839]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 5100
