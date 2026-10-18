[Statedef 1]
SprPriority = 99
anim = 6101

[State ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State ]
type = Helper
trigger1 = time = 4
stateno = 2
id = 2
pos = 0,-2
postype = P1
Keyctrl = 0
helpertype = normal
ownpal = 1
supermove = -1
supermovetime = 999999999999
pausemovetime = 999999999999

[State ]
type = varset
trigger1 = !time
v = 3
value = 340

[State ]
type = varadd
trigger1 = time <= 11
v = 3
value = -21

[State ]
type = varadd
trigger1 = time >= 10
v = 3
value = -1

[State ]
type = angledraw
trigger1 = Ishelper(1)
value = 0
scale = 0.006*var(3),0.006*var(3)

[State ]
type = Trans
trigger1 = 1
trans = add

[State ] 
type = VarSet
trigger1 = !Time
v = 4
value = 255

[State ]
type = varadd
trigger1 = var(4) >= -1
trigger1 = time > 12
v = 4
value = -20

[State ]
type = PalFX
trigger1 = var(4) >= -1
time = 1
add = 0,0,0
mul = var(4),var(4),var(4)

[State ]
type = Destroyself
trigger1 = time = 25

[Statedef 2]
SprPriority = 97
anim = 6100

[State ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State ]
type = AfterImage
trigger1 = !Time
time = -1
trans = Add
length = 4
timeGap = 2
frameGap = 2
palBright = 0,0 ,0
palContrast = 100,100,100
palAdd = 0,0,0
palMul = .80,.80,.80

[State ]
type = varset
trigger1 = !time
v = 3
value = 340

[State ]
type = varadd
trigger1 = time <= 11
v = 3
value = -21

[State ]
type = varadd
trigger1 = time >= 10
v = 3
value = -1

[State ]
type = Angledraw
trigger1 = Ishelper(2)
value = 0
scale = 0.007*var(3),0.007*var(3)

[State ]
type = Trans
trigger1 = 1
trans = add

[State ] 
type = VarSet
trigger1 = !Time
v = 5
value = 255

[State ]
type = varadd
trigger1 = var(5) >= -1
trigger1 = time > 8
v = 5
value = -20

[State ]
type = PalFX
trigger1 = var(5) >= -1
time = 1
add = 0,0,0
mul = var(5),var(5),var(5)

[State ]
type = Destroyself
trigger1 = time = 25

[Statedef 3]
SprPriority = 99
anim = 6201

[State ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State ]
type = Helper
trigger1 = time = 4
stateno = 4
id = 4
pos = 0,-2
postype = P1
Keyctrl = 0
helpertype = normal
ownpal = 1
supermove = -1
supermovetime = 999999999999
pausemovetime = 999999999999

[State ]
type = varset
trigger1 = !time
v = 3
value = 340

[State ]
type = varadd
trigger1 = time <= 11
v = 3
value = -21

[State ]
type = varadd
trigger1 = time >= 10
v = 3
value = -1

[State ]
type = angledraw
trigger1 = Ishelper(3)
value = 0
scale = 0.006*var(3),0.006*var(3)

[State ]
type = Trans
trigger1 = 1
trans = add

[State ] 
type = VarSet
trigger1 = !Time
v = 4
value = 255

[State ]
type = varadd
trigger1 = var(4) >= -1
trigger1 = time > 12
v = 4
value = -20

[State ]
type = PalFX
trigger1 = var(4) >= -1
time = 1
add = 0,0,0
mul = var(4),var(4),var(4)

[State ]
type = Destroyself
trigger1 = time = 25

[Statedef 4]
SprPriority = 97
anim = 6200

[State ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State ]
type = AfterImage
trigger1 = !Time
time = -1
trans = Add
length = 4
timeGap = 2
frameGap = 2
palBright = 0,0 ,0
palContrast = 100,100,100
palAdd = 0,0,0
palMul = .80,.80,.80

[State ]
type = varset
trigger1 = !time
v = 3
value = 340

[State ]
type = varadd
trigger1 = time <= 11
v = 3
value = -21

[State ]
type = varadd
trigger1 = time >= 10
v = 3
value = -1

[State ]
type = Angledraw
trigger1 = Ishelper(4)
value = 0
scale = 0.007*var(3),0.007*var(3)

[State ]
type = Trans
trigger1 = 1
trans = add

[State ] 
type = VarSet
trigger1 = !Time
v = 5
value = 255

[State ]
type = varadd
trigger1 = var(5) >= -1
trigger1 = time > 8
v = 5
value = -20

[State ]
type = PalFX
trigger1 = var(5) >= -1
time = 1
add = 0,0,0
mul = var(5),var(5),var(5)

[State ]
type = Destroyself
trigger1 = time = 25

[Statedef 7]
SprPriority = -9999999
anim = 9999

[State ]
type = Playsnd
trigger1 = !Time
value = 10000,4
volume = 255

[State ]
type = Explod
trigger1 = !Time
anim = 7004
id = 2
sprpriority = -99999999
postype = back
pos = 0,0
bindtime = -1
supermove = 1
under = 0
ownpal = 1
trans = add

[State ]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = NoFG
flag3 = NOBG
ignorehitpause = 1

[State ]
type = Trans
trigger1 = 1
trans = add

[State ]
type = Destroyself
trigger1 = !numexplod(2)

;---------------------------------------------------------------------------
; ナイフ消滅ヘルパー
[Statedef 226]
Type = A
Physics = N
SprPriority = 2
Anim = 1035

[State -1]
Type = Turn
Trigger1 = Time = 0
Trigger1 = PrevStateNo = 1226
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VarSet
Trigger1 = Parent,Var(0)%10 = 1
V = 0
Value = 1
IgnoreHitPause = 1
Persistent = 1

[State -1]
Type = HitOverRide
Trigger1 = 1
Attr = SCA, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = -1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = VarAdd
Trigger1 = Time >= 1
V = 2
Value = 10
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VarRandom
Trigger1 = Time = 0
V = 3
Range = -10,10
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VarRandom
Trigger1 = Time = 0
V = 4
Range = -10,10
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-Var(2),256

[State -1]
Type = AngleDraw
Trigger1 = 1

[State -1]
Type = AngleAdd
Trigger1 = 1
Value = -50

[State -1]
Type = VelSet
Trigger1 = Time = 0
X = -1.50+(0.00+Var(3))/10
Y = -5.00+(0.00+Var(4))/10

[State -1]
Type = VelAdd
Trigger1 = Time >= 1
Y = .4

[State -1]
Type = DestroySelf
Trigger1 = Time = 25
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;---------------------------------------------------------------------------
; ナイフ設置ヘルパー
[Statedef 227]
Type = A
Physics = N
VelSet = 0,0
SprPriority = 3

[State -1]
Type = ChangeState
Trigger1 = Root,FVar(38) = 15
Trigger1 = Time = 0
Value = 226
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = ParentVarAdd
Trigger1 = Root,FVar(38) < 15
Trigger1 = IsHelper(1305)
Trigger1 = FVar(38) > 1
FV = 38
Value = FVar(38)
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = ParentVarAdd
Trigger1 = Root,FVar(38) < 15
Trigger1 = Time = 0
FV = 38
Value = 1
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999


[State -1]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 1120+Random%5
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = PlaySnd
Trigger1 = Time = 0
Value = s2006, 1
Channel = 3
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VarSet
Trigger1 = Parent,Var(0)%10 = 1
V = 0
Value = 1
IgnoreHitPause = 1
Persistent = 1

[State -1]
Type = HitOverRide
Trigger1 = 1
Attr = SCA, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = -1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State -1]
Type = DestroySelf
Trigger1 = Time = 1500
IgnoreHitPause = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

;---------------------------------------------------------------------------
; ナイフ反射ヘルパー
[Statedef 228]
Type = A
Physics = N
SprPriority = 2
Anim = 1035

[State -1]
Type = DestroySelf
Trigger1 = parent,Ishelper(625) = 1
Trigger1 = parent,movehit = 1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Turn
Trigger1 = Time = 0
Trigger1 = PrevStateNo = 1226
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VarSet
Trigger1 = Parent,Var(0)%10 = 1
V = 0
Value = 1
IgnoreHitPause = 1
Persistent = 1

[State -1]
Type = PlaySnd
Trigger1 = Time = 0
Value = s2006, 0
Channel = 3
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = HitOverRide
Trigger1 = 1
Attr = SCA, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = -1
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = VarRandom
Trigger1 = Time = 0
V = 3
Range = -10,10
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VarRandom
Trigger1 = Time = 0
V = 4
Range = -10,10
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = AngleDraw
Trigger1 = 1

[State -1]
Type = AngleAdd
Trigger1 = 1
Value = -30

[State -1]
Type = VelSet
Trigger1 = Time = 0
X = -2.00+(0.00+Var(3))/10
Y = -6.00+(0.00+Var(4))/10

[State -1]
Type = VelAdd
Trigger1 = Time >= 1
Y = .4

[State -1]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 227
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999