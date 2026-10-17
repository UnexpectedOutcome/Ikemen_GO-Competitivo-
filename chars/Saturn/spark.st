[Statedef 6130]
MoveType=I
Anim=9999
Physics=N
velset = 0,0

[State 6130]
Type=VarSet
Trigger1=1
fvar(2)=(random %5+1)*0.1

[State 6155]
Type = Explod
Trigger1 = time<5
Anim = 6130+Random%9
ID = 6130
Pos = 0,0
Vel = random %10-5,-(random %6)
Accel = 0,.5
Scale = fvar(2),fvar(2)
SprPriority = 9
RemoveTime = 50
SuperMoveTime = 100
PauseMoveTime = 100

[State 6155]
Type = Explod
Trigger1 = time<5
Anim = 6130+Random%9
ID = 6130
Pos = 0,0
Vel = random %10-5,(random %3)
Accel = 0,.5
Scale = fvar(2),fvar(2)
SprPriority = 9
RemoveTime = 50
SuperMoveTime = 100
PauseMoveTime = 100

[State 6130]
Type=Destroyself
Trigger1=time>=30
Trigger2=NumExplod(6130)=0


; Hitspark
[Statedef 6005]
Physics  = N
Anim     = 4030
MoveType=I
sprpriority=7

[State 2808]
Type=AngleSet
Trigger1=time=0
value=random %360

[State 2808]
Type=Angledraw
Trigger1=1
scale=(20-time)*0.12,(20-time)*0.12

[State 2808]
Type=Trans
Trigger1=1
trans=add

[State 2808]
Type=Destroyself
Trigger1=time>=20

[State 2808]
Type=AssertSpecial
Trigger1=1
flag=noshadow

; Spark of laser
[Statedef 6010]
Physics  = N
Anim     = 6002
SprPriority = 8

[State 6000]
Type = VarAdd
Trigger1 = Time > 20
var(0) = 25

[State 6000]
Type = VarSet
Trigger1 = Time = 0
fvar(0) = (.1+Random/9999.0)

[State 6000]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 6000]
Type = AngleSet
Trigger1 = Time = 0
Trigger1 = IsHelper(6010)
Value = -70+Random%140

[State 6000]
Type = AngleDraw
Trigger1 = IsHelper(6010)
Scale = .1+Time*.035,.1+Time*fvar(0)

[State 6000]
Type = AngleDraw
Trigger1 = IsHelper(6011)
Scale = .1+Time*.01,.2+Time*0.05

[State 6000]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-var(0),256

[State 6010]
Type=Destroyself
Trigger1=time>30
