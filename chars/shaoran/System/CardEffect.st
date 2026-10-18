;
;
;
; ******* Card Effets Start Here *******
;
;
;

; Firey 1 - Flare
[Statedef 12000]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12007
slot = 6
time = 1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12001
ID = 4111
Name = "Firey"
Pos = 0,-50
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 240]
Type = ChangeState
Trigger1 = Time>0
Value = 12007

[Statedef 12007]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = NumHelper(12002)=1
attr = SCA, AA, AP, AT
stateno = 12007
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=ChangeState
Trigger1=NumHelper(12002)=0
Value=0
ctrl=1

[State 12007]
Type=VarAdd
Trigger1=Helper(12002),time>240
Trigger1=var(16)<996
v=16
value=4

[Statedef 12001]   
Type     = A
MoveType = A
Physics  = N
Anim     = 7001
sprpriority = 3
Facep2=1
velset = 0,0

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12002
ID = 12002
Name = "Flare"
Pos = 25,-90
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
PauseMoveTime=9999999

[State 4031]
Type=DestroySelf
Trigger1= Helper(12002),var(1)>0
Trigger2= Numhelper(12002)=0

[State 12001]
Type=NotHitBy
Trigger1=1
Value=SAC

[Statedef 12006]   
Type     = A
MoveType = I
Physics  = N
Anim     = 10040
sprpriority = 99
Facep2=1

[State 12006]
Type=varadd
Trigger1=1
fv=0
value=(random-500)*0.00005

[State 12006]
Type=varset
trigger1=fvar(0)<time*0.0015
fv=0
value=time*0.0015

[State 12006]
Type=varset
trigger1=fvar(0)>time*0.003
fv=0
value=time*0.003

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 12006]
Type=Trans
Trigger1=1
trans=add

[State 12006]
Type=Destroyself
Trigger1=Numhelper(12002)=0
Trigger2=parent,var(1)>0

[State 261]
Type = AngleDraw
Trigger1 = 1
Scale = fvar(0),fvar(0)

[Statedef 12002]    
Type     = A
MoveType = A
Physics  = N
Anim     = 10040
sprpriority = 99
Facep2=1

[State 240]
Type = Helper
Trigger1 = time=17
StateNo = 12006
ID = 12006
Name = "FlareEffect"
Pos = 0,0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = NumHelper(12008)<6
Trigger1 = Time>32
Trigger1 = random<400
StateNo = 12008
ID = 12008
Name = "FlareEffect"
Pos = 0,0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

[State 12002]
Type=VarSet
Trigger1=time=0
v=9
value=floor((1000-root,var(16))*0.25)

[State 261]
Type = VelSet
Trigger1 = Time = 0 || Time = 17
X = IfElse(Time=0,.75,0)

[State 261]
Type = VarAdd
Trigger1 = time >212+var(9)
Trigger2 = Roundstate>2
var(1) = 6

[State 261]
Type = VarAdd
Trigger1 = Time < 10 || Time = [17,42]
fvar(0) = IfElse(Time<10,.02,.25)

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 261]
Type = Trans
Trigger1 = 1
Trans = Add

[State 261]
Type = DestroySelf
Trigger1 = var(1)>224

[State 261]
Type = PalFX
Trigger1 = 1
Mul = 224-var(1),224-var(1),224-var(1)
Time = 1

[State 261]
Type = AngleDraw
Trigger1 = 1
Scale = fvar(0),fvar(0)

[State 240]
Type = PlaySnd
Trigger1 = Time= 17
Value = 10040,0

[State 260]
Type = Projectile
Trigger1 = time>=32
Trigger1 = var(1)<112
Attr              = A, HT
Damage            = floor(root,fvar(39)*(8+3*(time>=210))),1*(random %2)
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 12002
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAFP
GuardFlag         = MA
SparkNo           = -1
Guard.Sparkno = -1
SparkXY           = 0,999
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -3,-6.5
Guard.Velocity    = -6
Air.Velocity      = -3,-6.5
AirGuard.Velocity = -6,-2.5
Fall = 1
Fall.Recover = 0
ID = 12000
P2StateNo=43816
persistent=6
Guard.Kill=0
hitonce = 0
pausemovetime=99999

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12000
Trigger1 = NumHelper(6007)<5
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Time %3=1
Trigger1 = var(1)<112
StateNo = 6007
ID = 6007
Name = "HitSpark"
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))+random %40-20
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy = 2
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12000
Trigger1 = NumHelper(6007)<5
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Time %3=1
Trigger1 = var(1)<112
StateNo = 6007
ID = 6007
Name = "HitSpark"
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))+random %40-20
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = .5
Size.YScale = .5

[Statedef 12009]
Type=A
MoveType=I
Physics=N
anim=10021
sprpriority=3

[State 12008]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 12009]
Type=Destroyself
Trigger1=animtime=0

[Statedef 12008]
Type=A
MoveType=I
Physics=N
anim=20002+!IsHelper(12008)*2
sprpriority=3

[State 12008]
Type=AngleSet
Trigger1=time=0
value=random %360

[State 12008]
Type=VarSet
Trigger1=time=0
v=9
value=20+random %120

[State 12008]
Type=VarSet
Trigger1=time=0
v=11
value=(1+random %6)*(1-2*(random %2))

[State 12009]
Type=Destroyself
Trigger1=time>var(9)
Trigger2=parent,var(1)>0
Trigger2=!Ishelper(12228)
Trigger3=Ishelper(12228)
Trigger3=NumHelper(12221)=0
Trigger4=IsHelper(12008)
Trigger4=NumHelper(12002)=0
Trigger5=Roundstate!=2

[State 12008]
Type=VarSet
Trigger1=time<var(9)/2
fv=10
value=(0.1+(time*1.8)/var(9))*(1-0.6*!IsHelper(12008))

[State 12008]
Type=VarSet
Trigger1=time>=var(9)/2
fv=10
value=(1.8-((time-var(9)/2)*1.8)/var(9))*(1-0.6*IsHelper(12218))

[State 12008]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 12008]
Type=AngleDraw
Trigger1=1
scale=2,fvar(10)

[State 12008]
Type=AngleAdd
Trigger1=1
value=var(11)

[State 12008]
Type=Trans
Trigger1=1
trans=add


; Firey 2 : Eruption
[Statedef 12010]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = Helper
Trigger1 = Time=11
StateNo = 12017
ID = 12017
Name = "Eruption"
Pos = 10, -floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1

[State 240]
Type = ChangeState
Trigger1 = Time>30
Value = 0
Ctrl = 1

[Statedef 12017]
Type     = C
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim=9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 12017]
Type=Explod
Trigger1=time<160
bindtime=1
removetime=-2
sprpriority=8
anim=21004+(random %2)*100
Pos=random %61-20,random %30
PosType=P1
;ownpal=1
scale=0.5,0.5
ID=12017

[State 12017]
Type=Explod
Trigger1=time<160
bindtime=1
removetime=-2
sprpriority=8
anim=21004+(random %2)*100
Pos=random %61-20,random %30
PosType=P1
;ownpal=1
scale=0.5,0.5
ID=12017

[State 12017]
Type=Explod
Trigger1=time<160
bindtime=1
removetime=-2
sprpriority=8
anim=21004+(random %2)*100
Pos=random %61-20,random %30
PosType=P1
;ownpal=1
scale=0.5,0.5
ID=12017

[State 12017]
Type=Explod
Trigger1=time<160
bindtime=1
removetime=-2
sprpriority=8
anim=21004+(random %2)*100
Pos=random %61-20,random %30
PosType=P1
;ownpal=1
scale=0.5,0.5
ID=12017

[State 240]
Type = Helper
Trigger1=time<=163
Trigger1 = Time%20=3
StateNo = 12011
ID = 12011
Name = "FlamePillar"
Pos = 10, 0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1

[State 240]
Type = Helper
Trigger1=time<=163
Trigger1 = Time%7=1
StateNo = 12012
ID = 12012
Name = "Lava"
Pos = 0,0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 0.6
Size.YScale = 0.6

[State 240]
Type= NotHitBy
Trigger1 = 1
Value=SAC

[State 200, 1]
type = EnvShake
trigger1 = Time>7
trigger1 = Time %20 =3
time = 17
ampl = 6
freq = 100

[State 12017]
Type=DestroySelf
Trigger1=time>183
Trigger1=NumHelper(12012)=0

[Statedef 12011]   
Type     = C
MoveType = A
Physics  = N
Anim     = 10050
sprpriority = 5
Facep2=1

[State 271]
Type = Trans
Trigger1 = 1
Trans = Add

[State 271]
Type = Projectile
Trigger1 = time %10=1
offset = 0,0
Projanim=10051
ProjID=12011
ProjRemovetime=1
Attr              = C, SP
Damage            = 1,1
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = LA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S10021
Guard.sparkno = S4040
SparkXY           = 0,-50
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 8
Ground.HitTime    = 8
Air.HitTime       = 8
Ground.Velocity   = 0,-7
Air.Velocity      = 0,-7
AirGuard.Velocity = -3,-3
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 12000
P2StateNo=43816
Palfx.time=40
palfx.add=100,30,30
palfx.sinadd=50,30,30,10

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 271]
Type = DestroySelf
Trigger1 = AnimTime=0

[Statedef 12012]
Type = A
MoveType = A
Physics  = N
Anim     = 10020
sprpriority = 4
Facep2=1

[State 12013]
Type=Gravity
Trigger1=1

[State 12012]
Type=Destroyself
Trigger1=Pos Y>0

[State 4122]
Type=PlaySnd
Trigger1=time=0
value = 10050,0

[State 4122]
Type= VelSet
Trigger1= time=0
Y=-15
X=-6+12*random/1000


[State 221]
Type = hitdef
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = time>0
Attr              = A, SP
Damage            = floor(root,fvar(39)*30),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo          = S10021
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,-12
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 12000

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.92

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 2003]
Type = AngleSet
Trigger1 = (Vel X != 0)
Value = ATan(Vel Y/Vel X)*(-180.0/Pi)+((Vel X<0)*180)

[State 2003]
Type = AngleSet
Trigger1 = (Vel X = 0)
Value = IfElse(Vel Y<0,90,-90)

[State 271]
Type = Trans
Trigger1 = 1
Trans = Add

[State 2003]
Type = AngleDraw
Trigger1 = 1
Scale = 1,1

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 2003]
Type=DestroySelf
trigger1=var(9)=1

;
; ***** Card : Windy *****

; Windy 1- Hurricane 
[Statedef 12050] 
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = PlaySnd
Trigger1 = time=0
Value = 12050,0

[State 12007]
Type=VarSet
Trigger1=1
v=9
value=0

[State 12050]
Type=ChangeState
Trigger1=1
Value=12057

[Statedef 12057]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(9)<=100
attr = SCA, AA, AP, AT
stateno = 12057
slot = 6
time = 1
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12007]
Type=ChangeState
Trigger1=var(9)>110
Value=0
ctrl=1

[State 240]
Type = Helper
Trigger1 = var(9)= 1
StateNo = 12055
ID = 12055
Name = "HurricaneMain"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .5
Size.YScale = .5
PauseMoveTime=9999999

[Statedef 12055]
MoveType=I
Physics=N
anim=9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 240]
Type = Helper
Trigger1 = parent,var(9) %10=3
StateNo = 12051
ID = 241
Name = "Tornado"
Pos = Floor((BackEdgeDist)*-1)-80,-Random%110
PosType = P1
Ownpal = 0
IgnoreHitPause = 1
Size.XScale = .5
Size.YScale = .5
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = parent,var(9) %10=3
StateNo = 12051
ID = 241+IfElse(Random<300,1,0)
Name = "Tornado"
Pos = Floor((BackEdgeDist)*-1)-80,-Random%110
PosType = P1
Ownpal = 0
IgnoreHitPause = 1
Size.XScale = .5
Size.YScale = .5
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = parent,var(9) %30=3
StateNo = 12051
ID = 242
Name = "Tornado"
Pos = Floor((BackEdgeDist)*-1)-80,-Random%110
PosType = P1
Ownpal = 0
IgnoreHitPause = 1
Size.XScale = .5
Size.YScale = .5
PauseMoveTime=9999999

[State 241]
Type = PalFX
Trigger1 = 1
Mul = 384,384,128
Time = 999

[State 12055]
Type=ChangeState
Trigger1=parent,stateno!= [12050,12059]
value=12056

[Statedef 12056]

[State 12056]
Type=Destroyself
Trigger1=NumHelper(241)+NumHelper(242)=0

[Statedef 12051]
Type = A
MoveType = A
Physics  = N
Anim     = 10010	
SprPriority = 4

[State 241]
Type=ChangeAnim
Trigger1 = AnimElem>=17
Value= 10010

[State 241]
Type = VarAdd
Trigger1 = Time = 0
var(0) = 64

[State 241]
Type = VarAdd
Trigger1 = MoveContact || MoveReversed
Trigger1 = var(0) > 0
var(0) = -8

[State 241]
Type = DestroySelf
Trigger1 = (FrontEdgeBodyDist < -80) || ((Time > 1) && (var(0) = 0))
Trigger1 = NumExplod(12052)=0

[State 241]
Type = VarSet
Trigger1 = Time = 0
fvar(0) = IfElse(IsHelper(241),10+Random/124.875,10)

[State 241]
Type = VarSet
Trigger1 = IsHelper(241)
Trigger1 = Time = [1,51]
Trigger1 = fvar(0) > .5
fvar(0) = (fvar(0))*.9

[State 241]
Type = VarAdd
TriggerAll = fvar(0) < 10
Trigger1 = Time > 51
Trigger2 = !IsHelper(241)
fvar(0) = .325

[State 241]
Type = VelSet
Trigger1 = 1
X = fvar(0)

[State 241]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 120,256

[State 241]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1

[State 221]
Type = HitDef
Trigger1 = time>=1
Trigger1 = !MoveContact
Trigger1 = !MoveReversed
Attr              = A, SP
Damage            = floor(root,fvar(39)*(14+random %2)),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFP
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,5
SparkNo           = S6001
Guard.sparkno = S4040
SparkXY           = 30,-50
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 32
Ground.HitTime    = 32
Air.HitTime       = 32
Ground.Velocity   = -6
Air.Velocity      = -6,-4
AirGuard.Velocity = -6,-4
Air.Fall = 1
Fall.Recover = 0
Guard.Kill = 0
ID = 12051

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.93

[State 1001]
Type = TargetState
Triggerall = NumTarget(12051)>0
Triggerall = (Target(12051),StateType != A)
Triggerall = (MoveHit = 1)
Triggerall=target,stateno!=[120,160]
trigger1 = target,authorname="Seravy"
Trigger1 = target,selfanimexist(5800)
Trigger2 = target,authorname="GU"
Trigger2 = target,selfanimexist(5800)
Trigger3 = target,authorname="Kurogane"
Trigger3 = target,selfanimexist(5300)
Value = Cond(root,var(39)=43816,899,root,var(39))

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=Cond(numtarget(12051),target(12051),stateno!=899,1)
Trigger1=MoveHit=1
value=43816

[State 7703]
Type=Explod
Trigger1 = !((FrontEdgeBodyDist < -80) || ((Time > 1) && (var(0) = 0)))
anim=21003+(random %2)*100
ID = 12052
Postype=P1
pos= -10,-random %30
bindtime=1
removetime=-2
vel=0,0
sprpriority=3
scale= 0.5,0.5
Ignorehitpause=1


; Windy 2 - Tornado
[Statedef 12060]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = Helper
Trigger1 = Time=20
StateNo = 12061
ID = 4030
Name = "Windy"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10

[State 240]
Type = PlaySnd
Trigger1 = Time=25
Value = 12060,0

[State 240]
Type = ChangeState
Trigger1 = Time>30
Value = 0
Ctrl = 1

[Statedef 12061]   
Type     = A
MoveType = A
Physics  = N
Anim     = 7002
sprpriority = 3
Facep2=1

[State 4031]
Type= VelSet
Trigger1=1
Y=0
X=5

[State 601]
Type = Turn
Trigger1 = FrontEdgeBodyDist < -80

[State 4032]
Type=Trans
Trigger1=1
Trans = AddAlpha
Alpha = 120,256

[State 4031]
Type=DestroySelf
Trigger1= Time>600

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12062
ID = 4032
Name = "Tornado"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10

[Statedef 12062]
Type     = A
MoveType = A
Physics  = N
Anim     = 12060
sprpriority = 4

[State 4031]
Type=ChangeAnim
Trigger1= Time>500
Trigger1= Animelem=27
Value = 12061

[State 4031]
Type=DestroySelf
Trigger1= Anim=12061
Trigger1= AnimTime=0

[State 4032]
Type=Trans
Trigger1=1
Trans = AddAlpha
Alpha = 180,256

[State 4032]
Type=BindToParent
Trigger1=time=0
time=700

[State 221]
Type = Projectile
Triggerall = Time% 3=1
Trigger1 = anim=12060
Trigger2 = anim=12061
Trigger2 = animtime<-20
offset = 0,0
Projanim=12067
ProjID=12062
Projremovetime=3
Projremanim=9919
Attr              = A, HT
Damage            = ceil(root,fvar(39)*2),1
GetPower          = 0
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
HitSound          = S0,12060
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 4
Ground.HitTime    = 4
Air.HitTime       = 4
Ground.Velocity   = random %5-2,-3
Air.Velocity      = -5+random %5-2,-3
AirGuard.Velocity = -5,0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 12062
P2StateNo=43816
hitonce = 0

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12062
Trigger1 = root,ProjHitTime(12062)=[0,2]
Trigger1 = time %3=1
StateNo = 6010
ID = 6013
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12062
Trigger1 = root,ProjHitTime(12062)=[0,2]
Trigger1 = time %3=1
StateNo = 6010
ID = 6013
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

;  Watery 1 - Watergun
[Statedef 12100]
type = U
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0

[State 4080]
Type = PlaySnd
Trigger1 = Time = [7,25]
value = 12100,0

[State 4080]
Type = Helper
Trigger1 = Time = [7,25]
StateNo = 12101
ID = 4081
Name = "WaterShot"
Pos = 30,-50
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 2
Size.XScale = .25
Size.YScale = .25

[State 1000, state]
type = ChangeState
trigger1 = Time>32
value = 50
ctrl = 1

[Statedef 12101]
Type = A
MoveType = A
Physics  = N
Anim     = 10130
SprPriority = 4

[State 2003]
Type = VarSet
Trigger1 = Time = 0
fvar(0) = (12.5-Random/39.96)*(Pi/180.0)

[State 2003]
Type = VarAdd
Trigger1 =  (Time < 10)
fvar(1) = .25

[State 2003]
Type = VelSet
Trigger1 = 1
X = 15*Cos(fvar(0))
Y = -15*Sin(fvar(0))

[State 2003]
Type = Trans
Trigger1 = 1
Trans = Add

[State 2003]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1

[State 2003]
Type = AngleSet
Trigger1 = (Vel X != 0)
Value = ATan(Vel Y/Vel X)*(-180.0/Pi)+((Vel X<0)*180)

[State 2003]
Type = AngleSet
Trigger1 = (Vel X = 0)
Value = IfElse(Vel Y<0,90,-90)

[State 2003]
Type = AngleDraw
Trigger1 = 1
Scale = fvar(1),fvar(1)

[State 221]
Type = Hitdef
Trigger1 = time>=1
Trigger1 = !Movecontact
Trigger1 = !Movereversed
Attr              = A, SP
Damage            = floor(root,fvar(39)*31)
GetPower          = 0,0
AnimType          = Medium
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S20003
Guard.sparkno = S4040
SparkXY           = 15,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = -3.5,0
Air.Velocity      = -3,-3
AirGuard.Velocity = -3,-3
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
Air.Fall = 1
Fall.Recover = 1
ID = 2003

[State 501]
Type=Parentvarset
Trigger1=movehit=1
fvar(39)=parent,fvar(39)*0.9

[State -2]
Type = TargetState
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 2003]
Type = DestroySelf
Trigger1 = movecontact || movereversed
Trigger2 = (FrontEdgeDist < -100)
Trigger3 = (Pos Y >= 0)
IgnoreHitPause = 1

; Watery 2 - Deep Ocean
[Statedef 12110]
facep2=1

[State 1260]
Type=VarSet
Trigger1=1
v=32
value=-1

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 12111
ID = 12111
Name = "Ocean"
Pos = -100, 250
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 2
Size.XScale = 1
Size.YScale = 1
pausemovetime=999999

[State 240]
Type = ChangeState
Trigger1 = Time=0
Value = 12117

[Statedef 12117]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
Velset	 =0,0

[State 592]
type = HitOverride
trigger1 = var(32)<=635
attr = SCA, AA, AP, AT
stateno = 12117
slot = 6
time = 1

[State 12111]
Type=PosSet
Trigger1=1
Y= (50-var(32))*(var(32)<=230)+(var(32)-520)*(var(32)>=340)-180*(var(32)=[231,339])

[State 12117]
Type=ChangeAnim
Trigger1=Pos Y<0
Trigger1=anim!=14000
value=14000

[State 12111]
Type=PosSet
Trigger1=Pos Y>0
Y= 0

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 1277]
Type=VarAdd
Trigger1=1
v=32
value=1

[State 4190]
Type=ParentVarAdd
Trigger1= IsHelper(14250)
v=37
value=1

[State 4080]
Type = PlaySnd
Trigger1 = var(32) = 0
Trigger2 = var(32) = 340
value = 12110,0

[State 1000, state]
type = ChangeState
trigger1 = var(32)>490
Trigger1 = (Pos Y=0) || (var(32)>575)
value = 50
ctrl = 1

[Statedef 12111]
type = S
movetype = A
physics = N
anim = 12111
poweradd = 0
velset = 0,0
ctrl = 0

[State 240]
Type = Helper
Trigger1 = Time%4=0
StateNo = 12112
ID = 12112
Name = "Wave"
Pos = -80, floor(ScreenPos Y+(time<=230))
PosType = Left
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = Time%20=0
StateNo = 12113
ID = 12113
Name = "Bubble"
Pos = random % 300,250
PosType = Left
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
Size.XScale = 0.2+(random %10)/100
Size.YScale = 0.2+(random %10)/100
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = Time%4=0
StateNo = 12112
ID = 12110
Name = "Wave"
Pos = 380,floor(ScreenPos Y+(time<=230))
PosType = Left
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 12111]
Type=PosSet
Trigger1=1
Y=(50-time)*(time<=230)+(time-520)*(time>=340)-180*(time=[231,339])

[State 221]
Type = Projectile
Trigger1 = time=[120,420]
Trigger1 = time%2=1
offset = 0,0
Projanim=12112
ProjID=12112
Projremovetime=1
Projremanim=9919
Projedgebound=9999
Projstagebound=9999
Attr              = S, HT
Damage            = ceil(root,fvar(39)*2),1
GetPower          = 0
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,10
SparkNo           = -1
Guard.SparkNo     = -1
HitSound          = S10030,0
GuardSound        = S10030,0
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=43816
Guard.Kill = 0
ID = 12112
hitonce = 0

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12112
Trigger1 = root,ProjContactTime(12112)=[0,2]
Trigger1 = time %2=1
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Bindtime=1
Removetime=-2
anim=10032
vel=-6+random*0.012,-5-random*0.01
sprpriority=5
ownpal=1

[State 1311]
Type=AssertSpecial
Trigger1=1
flag=NoShadow

[State 241]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 192,256

[State 12111]
Type=DestroySelf
Trigger1= time>590

[Statedef 12112]
MoveType = A
Physics  = N
Anim     = 20006;10150
SprPriority = 4
facep2=1

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 241]
Type = VelSet
Trigger1 = Time = 0
X= IfElse(P2Dist X<0,-10,10)
Y= 0

[State 12111]
Type=PosSet
Trigger1=1
Y= (51-parent,time)*(parent,time<=230)+(parent,time-520)*(parent,time>=340)-180*(parent,time=[231,339])

[State 241]
Type = DestroySelf
Trigger1 = (FrontEdgeBodyDist < -80) || (Time > 50)

[State 4091]
Type=VarSet
Trigger1=time=0
fv=0
value=0.4+((0.6*random)/1000)

[State 241]
Type= AngleDraw
trigger1=1
scale = 1.4, fvar(0)*0.4

[State 241]
Type = Null;PalFX
Trigger1 = 1
Add = 128,128,0
Mul = 256,256,128
Time = 1

[State 241]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 192,256

[State 241]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1


[Statedef 12113]
MoveType = A
Physics  = N
Anim     = 10030
SprPriority = 3

[State 1311]
Type=AssertSpecial
Trigger1=1
flag=NoShadow

[State 12113]
Type=VelSet
Trigger1=time %10=0
X= (random %16-8)
Y= -3

[State 12113]
Type=DestroySelf
Trigger1= NumHelper(12111)
Trigger1= Pos Y<(50-helper(12111),time)*(helper(12111),time<=230)+(helper(12111),time-520)*(helper(12111),time>=340)-180*(helper(12111),time=[231,339])
Trigger2= Ishelper(12114)
Trigger2= Time>30
Trigger3= NumHelper(12111)=0

[State 241]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 192,256


; ----- Earthquake -----
[Statedef 12150] 
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12151
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=9
value=-1

[State 240]
Type = ChangeState
Trigger1 = time>0
Value = 12151

[Statedef 12151]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(9)<=300
attr = SCA, AA, AP, AT
stateno = 12151
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12161]
Type=ChangeState
Trigger1=var(9)>300
value=0
ctrl=1

[State 200, 1]
type = EnvShake
trigger1 = var(9) %15 =0
time = 15
ampl = 2+random % 10
freq = 100

[State 4000]
Type=VarSet
Trigger1=Time=0
v=56
value=50

[State 1000, sound]
type = Playsnd
trigger1 = var(9) %120=0
value = 12150,0

[State 260]
Type = Projectile
Trigger1 = var(9) % 15=1
Attr              = C, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9994
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = M
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -3,random %12-6
Fall = 1
Fall.Recover = 0
Fall.Damage = 75
P2StateNo=43816
hitonce = 0

; ----- Spiky Ground -----
[Statedef 12160] 
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 200, 1]
type = EnvShake
trigger1 = Time =0
time = 300
ampl = 3
freq = 100

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12161
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=9
value=0

[State 240]
Type = ChangeState
Trigger1 = time>0
Value = 12161

[Statedef 12161]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(9)<300
attr = SCA, AA, AP, AT
stateno = 12161
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12161]
Type=ChangeState
Trigger1=var(9)>300
value=0
ctrl=1

[State 1000, sound]
type = Playsnd
trigger1 = var(9) %120=1
value = 12150,0

[State 12161]
Type=Helper
Trigger1=var(9) % 10=1
stateno=12162
ID=12162
name="EarthSpike"
postype=P1
pos=var(9)*3-150,-floor(Pos Y)
ownpal=1
Size.xscale=0.6
Size.yscale=0.6

[Statedef 12162]
Type=C
Movetype=A
Physics=N
anim=10560

[State 260]
Type = Hitdef
Trigger1 = Movecontact<=0
Trigger2 = movecontact>=25
Attr              = C, HA
Damage            = floor(root,fvar(39)*30),6
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAFD
GuardFlag         = A
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,-65
HitSound          = S0,206
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,-8
Air.Velocity   = 0,-8
Airguard.velocity = 0,-6
Fall = 1
fall.recover=0

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.9

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 12162]
Type=Destroyself
Trigger1=time>=250

; ----- Epicenter -----
[Statedef 12170]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12171
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=9
value=-1

[State 240]
Type = ChangeState
Trigger1 = time>0
Value = 12171

[Statedef 12171]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(9)<300
attr = SCA, AA, AP, AT
stateno = 12171
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12161]
Type=ChangeState
Trigger1=var(9)>300
value=0
ctrl=1

[State 200, 1]
type = EnvShake
trigger1 = var(9) %15 =0
time = 15
ampl = 2+random % 10
freq = 100

[State 1000, sound]
type = Playsnd
trigger1 = var(9) %120=0
value = 12150,0

[State 260]
Type = Projectile
Triggerall = var(9)>=12
Trigger1 = var(9) % 7=1
Attr              = C, HT
Damage            = floor(cond(ishelper,root,fvar(39),fvar(39))*26),0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,20
Guard.PauseTime   = 0,20
Offset            = 0,0
PosType		  = back
Velocity          = 0,0
ProjID            = 12171
ProjAnim          = 9992
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 30
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 52
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = A
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 35
Ground.HitTime    = 35
Air.HitTime       = 4
airguard.velocity = 0,-5
Ground.Velocity   = 0,0
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
fall=1
fall.recover=0
P2StateNo=43816
hitonce = 0
ID = 12171

[State 260]
Type = Explod
Triggerall = var(9)>=12
Trigger1 = var(9) % 7=1
anim=20012
pos            = random % 350,215
PosType		  = back
Velocity          = 0,0
ID = 12171

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12171
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = var(9) %7 =2
StateNo = 6007
ID = 6007
Name = "HitSpark"
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))+random %40-20
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State -2]
Type = explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12171
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = var(9) %7 =2
anim = 4040
sprpriority=6
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))+random %40-20
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

; ----- Ray of Light -----
[Statedef 12200]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7005
ID = 4150
sprpriority = 0
postype = p1
pos = -10,0
bindtime = -1
removeongethit = 0
removetime=175

[State 470]
Type = PlaySnd
Trigger1 = Time=0
Value = 12200,0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12207
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=9
value=-1

[State 240]
Type = ChangeState
Trigger1 = time>0
Value = 12207

[Statedef 12207]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 4000]
Type=Helper
trigger1 = var(9)=10
;trigger1 = NumHelper(4151)=0
ownpal=1
name="Laser"
stateno = 12201
ID = 4151
postype = p1
pos = 0,-140

[State 592]
type = HitOverride
trigger1 = var(9)<155
attr = SCA, AA, AP, AT
stateno = 12207
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12161]
Type=ChangeState
Trigger1=var(9)>155
value=0
ctrl=1

[State 470]
Type = Null;PlaySnd
Trigger1 = (var(9)=[30,150]) && (var(9) %20=0)
Value = 12200,1

[Statedef 12201]
Type = A
MoveType = A
Physics  = N
Anim     = 20011;10101
SprPriority = 4

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 471]
Type = Trans
Trigger1 = 1
Trans = Add

[State 471]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 471]
Type = EnvShake
Trigger1 = Time = [0,120]
Time  = 6
Ampl  = -3
Freq  = 90
Phase = 90
Persistent = 6

[State 471]
Type = BindtoParent
Trigger1 = 1
Time = 1
Pos = 0,-140
IgnoreHitPause = 1

[State 471]
Type = Projectile
Trigger1 = Time = [1,120]
Attr              = A, HP
Damage            = floor(root,fvar(39)*21),5*(P2statetype=A)
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,4
Guard.PauseTime   = 0,4
Offset            = 0,0
Velocity          = 0,0;(Root,Vel Y)
ProjID            = 12201
ProjAnim          = 10103
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = .5,.5
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = S12200,1
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -6.5,-IfElse(Time=180,1,0)
Guard.Velocity    = -4
Air.Velocity      = -6.5,-1.0
AirGuard.Velocity = -6,-.25
Fall = IfElse(Time=120,1,0)
Air.Fall = 1
Fall.Recover = 0
Persistent = 6
ID = 12201
P2StateNo=43816

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12201
Trigger1 = time=[0,124]
Trigger1 = time %6=2
StateNo = 6010
ID = 6011
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y)/2)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12201
Trigger1 = time=[0,124]
Trigger1 = time %6=2
StateNo = 6010
ID = 6011
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y)/2)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12201
Trigger1 = time=[0,124]
Trigger1 = time %6=2
anim = 4040
ID = 6011
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing-15,Ceil((Enemy(0),Pos Y - Pos Y)*4/5)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State 6005]
Type = Explod
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo = [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12201
Trigger1 = time=[0,124]
Trigger1 = time %6=2
anim= 4040
ID = 6011
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing-15,Ceil((Enemy(1),Pos Y - Pos Y)*4/5)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100


[State 471]
Type = DestroySelf
Trigger1 = Parent,StateNo!=[12200,12209]


; ----- Shining Light -----
[Statedef 12210]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0
sprpriority=-4

[State 4200]
Type=NotHitBy
Trigger1= 1
Value=SAC

[State 12110]
Type=Trans
Trigger1=roundstate=2
trans=addalpha
alpha=160,96

[State 4190]
Type=ParentVarAdd
Trigger1= IsHelper(14250)
v=37
value=1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12211
ID = 4161
Name = "Light"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
PauseMoveTime=9999999

[State 12207]
Type=Lifeadd
Trigger1=time %2=1
value=1

[State 240]
Type = PlaySnd
Trigger1 = time=0
Value = 12210,0
Volume = 128

[State 240]
Type = ChangeState
Trigger1 = Time>510
Trigger2= RoundState!=2
Value = 0
Ctrl = 1

[Statedef 12211]
MoveType = I
Physics  = N
Anim     = 7005
SprPriority = 12

[State 541]
Type = trans
Trigger1 = 1
trans = none

[State 541]
Trigger1= Time=1
Type=Helper
StateNo = 12212
ID = 12212
Name = "ShiningLight"
Pos = 0,-100
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 2
Size.YScale = 2
PauseMoveTime=9999999

[State 541]
Type = DestroySelf
Trigger1 = time>=500
Trigger2= RoundState!=2

[Statedef  12212]
Type     = A
MoveType = A
Physics  = N
Anim     = 10120
Ctrl     = 0
Facep2   = 1
PowerAdd = 0
sprpriority = 10

[State 12284]
Type=Offset
Trigger1=1
Y=(110-ScreenPos Y)

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 240]
Type = Helper
Trigger1 = NumHelper(12218)<6
Trigger1 = Time>30
Trigger1 = random<400
StateNo = 12008
ID = 12218
Name = "FlareEffect"
Pos = 0,0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = NumHelper(12216)<3
Trigger1 = Time % 60=1
StateNo = 12216
ID = 12216
Name = "LightEmission"
Pos = 0,0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

[State 221]
Type = Projectile
offset = 0,0
Projanim=10127
ProjID=12212
Projremovetime=1
Projremanim=9919
Trigger1 = Time %9 =1
Attr              = A, HT
Damage            = floor(root,fvar(39)*19)
GetPower          = 0,0
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,8
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = S0,208
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Fall=1
P2StateNo=43816
hitonce = 0
Palfx.time=10
Palfx.add=255,255,255
ID=12212

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12212
Trigger1 = time %9=2
StateNo = 6010
ID = 6011
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y))+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12212
Trigger1 = time %9=2
StateNo = 6010
ID = 6011
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y))+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12212
Trigger1 = time %9=2
anim = 4040
ID = 6011
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing-15,Ceil((Enemy(0),Pos Y - Pos Y))+(Enemy(0),Const(Size.Mid.Pos.Y))-20
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State 6005]
Type = Explod
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo = [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12212
Trigger1 = time %9=2
anim= 4040
ID = 6011
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing-15,Ceil((Enemy(1),Pos Y - Pos Y))+(Enemy(1),Const(Size.Mid.Pos.Y))-20
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State 542]
Type=Trans
Trigger1= 1
Trans=addalpha
alpha=140,256

[State 12212]
Type=VarSet
Trigger1=time=400
v=1
value=1

[State 542]
Type=DestroySelf
Trigger1= time=500
Trigger2= RoundState!=2

[Statedef 12219]
Type=A
MoveType=I
Physics=N
anim=20004
sprpriority=3

[State 12008]
Type=AngleSet
Trigger1=time=0
value=random %360

[State 12008]
Type=VarSet
Trigger1=time=0
v=9
value=20+random %120

[State 12008]
Type=VarSet
Trigger1=time=0
v=11
value=1+random %6

[State 12009]
Type=Destroyself
Trigger1=time>var(9)
Trigger2=parent,var(1)>0

[State 12008]
Type=VarSet
Trigger1=time<var(9)/2
fv=10
value=0.1+(time*1.8)/var(9)

[State 12008]
Type=VarSet
Trigger1=time>=var(9)/2
fv=10
value=1.8-((time-var(9)/2)*1.8)/var(9)

[State 12008]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 12008]
Type=AngleDraw
Trigger1=1
scale=2,fvar(10)

[State 12008]
Type=AngleAdd
Trigger1=1
value=var(11)

[State 12008]
Type=Trans
Trigger1=1
trans=add

[Statedef 12216]
Type=A
MoveType=I
Physics=N
velset=0,0
anim=20010

[State 12216]
Type=Varset
Trigger1=time=0
fv=1
value=0.1

[State 12216]
Type=Varset
Trigger1=time>0
fv=1
value=fvar(1)*1.01161944

[State 12228]
Type=Angledraw
Trigger1=1
scale=fvar(1),fvar(1)

[State 12228]
Type=Trans
Trigger1=1
trans=addalpha
alpha=32,256

[State 12228]
Type=Destroyself
Trigger1=time>=179
Trigger2=roundstate!=2
Trigger3=Numhelper(12212)=0

[State 12228]
Type=Assertspecial
Trigger1=1
flag=Noshadow


; ----- Heavenly Light -----
[Statedef 12220]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 705, 2]
type = Explod
trigger1 = time=20
anim = 7005
ID = 7005
sprpriority = 0
postype = left
pos = 30,180
bindtime = -1
removeongethit = 0
removetime=250

[State 4200]
Type=NotHitBy
Trigger1= time=[0,50]
Value=SAC

[State 240]
Type = Helper
Trigger1 = Time=20
StateNo = 12221
ID = 12221
Name = "Light"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
PauseMoveTime=9999999

[State 240]
Type = Null;PlaySnd
Trigger1 = time=0
Value = 12210,0
Volume = 128

[State 240]
Type = ChangeState
Trigger1 = Time>300
Trigger2 = RoundState!=2
Value = 0
Ctrl = 1

[Statedef 12221]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim =9998

[State 12221]
Type=PlaySnd
Trigger1= time %9=0
value=S12220,0

[State 12221]
Type=Explod
Trigger1=time %9=0
anim=10380
ID = 7700+var(59)
Postype=left
pos= random % 260+60,200
bindtime=1
removetime=45
vel=0,0
sprpriority=99
;ownpal=1
scale= 0.4+(random %20)*0.1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 12221]
Type=Null;BgPalFx
Trigger1=1
add=(time<50)*time*2+(time>=50)*100,(time<50)*time*2+(time>=50)*100,(time<50)*time*2+(time>=50)*100
time=1

[State 221]
Type = Projectile
offset = 0,0
Projanim=9998
ProjID=12221
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = time >50
Trigger1 = (P2Life!=0) ;|| (enemy,authorname="Seravy")
Attr              = A, HT
Damage            = -10,-5
GetPower          = 0,0
GivePower	  = 0,0
AnimType          = Light
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,1
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo = 12222
hitonce = 0
Palfx.time=30
Palfx.add=225,225,225
Palfx.Sinadd=30,30,30,10
ID=12221

[State 221]
Type = HitDef
Trigger1 = time >50
Attr              = A, HT
Damage            = -15,-5
GetPower          = 0,0
GivePower	  = 0,0
AnimType          = Light
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,1
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Affectteam=F
hitonce = 0
Palfx.time=30
Palfx.add=225,225,225
Palfx.Sinadd=30,30,30,10
ID=12221

[State 12221]
Type=ParentVarAdd
Trigger1=time>50
v=20
value=-15

[State 12221]
Type=Destroyself
Trigger1=time>250
Trigger2=RoundState>2

[Statedef 12222]
Type     = U
MoveType = H
Physics  = U
Ctrl     = 0
Velset	 =0,0
anim =0

[State 12222]
Type=LifeAdd
Trigger1=time=0
value=5
ignorehitpause=1

[State 12222]
Type=SelfState
Trigger1=time>0
ctrl=1
value=50

[Statedef 12228]
Type=A
MoveType=I
Physics=N
velset=random %5-3,random %5-3
anim=20010

[State 12228]
Type=Angledraw
Trigger1=1
scale=0.2,0.2

[State 12228]
Type=Trans
Trigger1=1
trans=add

[State 12228]
Type=Destroyself
Trigger1=time>20

[State 12228]
Type=Assertspecial
Trigger1=1
flag=Noshadow

;
; ***** Card : Dark *****

; ----- Sudden Darkness -----
[Statedef 12250]
type = S
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7006
ID = 4170
sprpriority = 4
postype = p1
pos = -40,20
bindtime = -1
removeongethit = 0
removetime=175

[State 4000]
Type=Helper
trigger1 = time=0
;trigger1 = NumHelper(4171)=0
name="Laser"
ownpal=1
stateno = 12251
ID = 4171
postype = p1
pos = -30,-120
PauseMoveTime=9999999

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12257
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=21
value=-1

[State 240]
Type = ChangeState
Trigger1 = 1
Value = 12257

[Statedef 12257]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(21)<=165
attr = SCA, AA, AP, AT
stateno = 12257
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=21
value=1

[State 470]
Type = Null;PlaySnd
Trigger1 = (var(21)>30) && (var(21) %15=0)
Value = 12250,0

[State 12161]
Type=ChangeState
Trigger1=var(21)>165
value=0
ctrl=1

[Statedef 12251]
Type = A
MoveType = A
Physics  = N
Anim     = 20009;10101
SprPriority = 5

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 471]
Type = VarAdd
Trigger1 = ((Time = 0) || (Time > 178))
fvar(0) = IfElse(Time=0,1.25,-.25)

[State 471]
Type = VarSet
Trigger1 = (Time = [0,178])
fvar(0) = IfElse(Time=0,1,IfElse(Time=213,1,.5+Random/666.0))

[State 471]
Type = VarSet
Trigger1 = Time = [0,140]
fvar(1) = 0
Persistent = 10

[State 471]
Type = VarAdd
Trigger1 = 1
fvar(1) = .25

[State 471]
Type = Trans
Trigger1 = 1
Trans = sub

[State 471]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 471]
Type = EnvShake
Trigger1 = Time = [0,130]
Time  = 6
Ampl  = -3
Freq  = 90
Phase = 90
Persistent = 6

[State 471]
Type = BindtoParent
Trigger1 = 1
Time = 1
Pos = -30,-120
IgnoreHitPause = 1

[State 471]
Type = Null;AngleDraw
Trigger1 = 1
Scale = fvar(0),fvar(0)

[State 4171]
Type=Null;ChangeAnim
Trigger1 = Time=185
Value = 10102

[State 471]
Type = Projectile
Trigger1 = GameTime %6 =1
Trigger1 = Time = [21,140]
Attr              = A, HP
Damage            = floor(root,fvar(39)*18)
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,3
Guard.PauseTime   = 0,3
Offset            = 0,0
Velocity          = 0,0;(Root,Vel Y)
ProjID            = 12251
ProjAnim          = 10103
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = .5,.5
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAF
GuardFlag         = M
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = S12250,0
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 14
Ground.HitTime    = 14
Air.HitTime       = 14
Ground.Velocity   = -6.5,-IfElse(Time=180,1,0)
Guard.Velocity    = -4
Air.Velocity      = -6.5,-1.0
AirGuard.Velocity = -6,-.25
Fall = IfElse(Time=180,1,0)
Air.Fall = 1
Fall.Recover = 0
ID = 12259
P2StateNo=43816
;P1StateNo=12259

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12259
Trigger1 = time=[21,144]
Trigger1 = gametime %6=2
StateNo = 6010
ID = 6014
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y)/2)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12259
Trigger1 = time=[21,144]
Trigger1 = gametime %6=2
StateNo = 6010
ID = 6014
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y)/2)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12259
Trigger1 = time=[21,144]
Trigger1 = gametime %6=2
anim = 4040
ID = 6011
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing-15,Ceil((Enemy(0),Pos Y - Pos Y)*4/5)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
sprpriority=14

[State 6005]
Type = Explod
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo = [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12259
Trigger1 = time=[21,144]
Trigger1 = gametime %6=2
anim= 4040
ID = 6011
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing-15,Ceil((Enemy(1),Pos Y - Pos Y)*4/5)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
sprpriority=14

[State 4171]
Type=DestroySelf
Trigger1 = Parent,StateNo!=[12250,12259]


; ----- Engulfing Darkness -----
[Statedef 12260]     
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 4200]
Type=NotHitBy
Trigger1= 1
Value=SAC

[State 12110]
Type=Trans
Trigger1=1
trans=addalpha
alpha=160,96

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12261
ID = 4181
Name = "Dark"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
PauseMoveTime=9999999

[State 240]
Type = ChangeState
Trigger1 = Time>510
Trigger2= RoundState!=2
Value = 0
Ctrl = 1

[Statedef 12261]
MoveType = I
Physics  = N
Anim     = 7006
SprPriority = 101

[State 541]
Type = trans
Trigger1 = 1
trans = none

[State 541]
Trigger1= Time=5
Type=Helper
StateNo = 12262
ID = 4182
Name = "EngulfingDarkness"
Pos = 0,-100
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 2
Size.YScale = 2
PauseMoveTime=9999999
SuperMoveTime=9999999

[State 3009, pause]
type = SuperPause
trigger1 = time=5
time = 2
anim = -1
darken = 0
p2defmul = 1
movetime = 2

[State 541, PlaySnd]
type = PlaySnd
trigger1 = time %15=0
value = 12250,1

[State 541]
Type = DestroySelf
Trigger1 = time>=500
Trigger2= RoundState!=2

[Statedef 12262]
Type     = A
MoveType = A
Physics  = N
Anim     = 10121
Ctrl     = 0
Facep2   = 1
PowerAdd = 0
Sprpriority = 99

[State 12284]
Type=Offset
Trigger1=1
Y=(110-ScreenPos Y)

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 4082]
Type=VarSet
trigger1=time=0
v= 21
value=enemy, power

[State 221]
Type = Projectile
offset = 0,0
Projanim=9998
ProjID=12262
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = time>15
Attr              = A, HT
Damage            = 0,0
GetPower          = 0,0
Pausetime         = 0,3
Guard.Pausetime   = 0,3
Givepower         = 0,0
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = Low
P2StateNo	=12263
hitonce = 0
ID = 12262

[State 221]
Type = Projectile
offset = 0,0
Projanim=9998
ProjID=12262
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = time>=15
Trigger1 = Time %30 =1
Attr              = A, HT
Damage            = 0,0
GetPower          = 0,0
Givepower         = -250,0
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,31
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = S0,209
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
P2StateNo	=12263
hitonce = 0
ID = 12262

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12262
Trigger1 = time %30=2
StateNo = 6010
ID = 6014
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y))+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12262
Trigger1 = time %30=2
StateNo = 6010
ID = 6014
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y))+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12262
Trigger1 = time %30=2
anim = 4040
ID = 6011
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing-15,Ceil((Enemy(0),Pos Y - Pos Y))+(Enemy(0),Const(Size.Mid.Pos.Y))-20
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State 6005]
Type = Explod
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo = [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12262
Trigger1 = time %30=2
anim= 4040
ID = 6011
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing-15,Ceil((Enemy(1),Pos Y - Pos Y))+(Enemy(1),Const(Size.Mid.Pos.Y))-20
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State 4182]
Type=PalFx
Trigger1=1
mul=190,190,190
time=1

[State 4082]
Type=PowerAdd
Trigger1=time %30=[1,2]
value=(var(21)-enemy, power)*(1+Cond(Numhelper(4141)>0,(Helper(4141),stateno!=5150),0))
; Add double power if Mirror is active

[State 4082]
Type=VarSet
trigger1=1
v= 21
value=enemy, power

[State 542]
Type=Trans
Trigger1= 1
Trans=sub

[State 542]
Type=DestroySelf
Trigger1= time=500

[Statedef 12263]
ctrl=0
velset=0,0
anim=5030

[State 4183]
Type=SelfState
Trigger1=time>=31
Value=50
ctrl=1


; ----- Cloud of Despair -----
[Statedef 12270]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7006
ID = 4000
sprpriority = 0
postype = p1
pos = -30,0
bindtime = -1
removeongethit = 1
removetime=30

[State 450]
Type = Helper
Trigger1 = Time=0
StateNo = 12271
ID = 12271
Name = "Darkness"
Pos = 0,100
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1.2
Size.YScale = 1.2
Pausemovetime=999999
;supermovetime=999999

[State 240]
Type = ChangeState
Trigger1 = time>=5
Value = 0
Ctrl = 1

[Statedef 12271]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 10401

[State 12281]
Type=sprpriority
Trigger1=1
value=100

[State 12271]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 12271]
Type=PalFX
Trigger1=1
mul=200,200,200
time=1

[State 13451,Trans]
Type=Trans
Trigger1=1
Trans=sub

[State 13451]
Type=PosAdd
Trigger1=time %10=1
X=random %3-1
Y=random %3-1

[State 13451]
Type=PosSet
Trigger1=Pos X>10
X=9

[State 13451]
Type=PosSet
Trigger1=Pos Y>120
Y=119

[State 13451]
Type=PosSet
Trigger1=Pos X<-10
X=-9

[State 13451]
Type=PosSet
Trigger1=Pos Y<90
Y=91

[State 13451]
Type=RemoveExplod
Trigger1=(time % 600)=1
ID=12271

[State 450]
Type = Helper
Trigger1 = NumHelper(12284)=0
StateNo = 12284
ID = 12284
Name = "Darkness"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 2.4
Size.YScale = 1.2
Pausemovetime=999999
;supermovetime=999999

[State 13451]
Type=StateTypeSet
Trigger1= time% 300=0
movetype=A

[State 13451]
Type=StateTypeSet
Trigger1= time% 300>1
movetype=I

[State 221]
Type = Projectile
Triggerall = RoundState=2
offset = 0,0
Projanim=9998
ProjID=12271
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = time % 300 =0
Attr              = A, HT
Damage            = 0,0
GivePower          = -750
AnimType          = Light
HitFlag           = MAF
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = S0,209
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=43816
ID=12271

[State 13451]
Type=HitDef
Triggerall = RoundState=2
Trigger1 = NumHelper(13161)=0
Trigger1 = time % 300 =1
Attr              = A, HT
Damage            = 0,0
GivePower          = -750
AnimType          = Light
HitFlag           = MAF
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = S0,209
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
affectteam = F
ID=12271

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12271
Trigger1 = time %300=2
StateNo = 6026
ID = 6026
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y))+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12271
Trigger1 = time %300=2
StateNo = 6026
ID = 6026
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y))+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = (root,Movetype = H)
Trigger1 = (root,StateNo != [5100,5150])
Trigger1 = (root,StateNo != [120,160])
Trigger1 = root,GetHitvar(chainID) = 12271
Trigger1 = time %300=2
StateNo = 6026
ID = 6026
Name = "HitSpark"
Pos = Ceil(root,Pos X - Pos X)*Facing,Ceil((root,Pos Y - Pos Y))+(root,Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 13451]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12200,12229]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=parent,stateno=[12200,12229]
Trigger3=root,stateno=[12200,12229]
Trigger4=Numhelper(4141)
Trigger4=Helper(4141),stateno=[12200,12229]
Trigger5=Numhelper(14250)
Trigger5=Helper(14250),stateno=[12200,12229]
value=12905


; ----- Eternal Sleep -----
[Statedef 12280]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7006
ID = 4000
sprpriority = 0
postype = p1
pos = -30,0
bindtime = -1
removeongethit = 1
removetime=30
ownpal=1

[State 450]
Type = Helper
Trigger1 = Time=0
StateNo = 12281
ID = 12281
Name = "Darkness"
Pos = 0,100
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1.2
Size.YScale = 1.2
Pausemovetime=999999
;supermovetime=999999

[State 240]
Type = ChangeState
Trigger1 = time>=5
Value = 0
Ctrl = 1

[Statedef 12281]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 10401

[State 12281]
Type=sprpriority
Trigger1=1
value=100

[State 12281]
Type=Turn
Trigger1=Facing=-1

[State 12281]
Type=VarAdd
Trigger1=1
var(1)=1

[State 12271]
Type=PalFX
Trigger1=1
mul=200,200,200
time=1

[State 12271]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 13451,Trans]
Type=Trans
Trigger1=1
Trans=sub

[State 13451]
Type=PosAdd
Trigger1=var(1) %10=2
X=random %3-1
Y=random %3-1

[State 13451]
Type=PosSet
Trigger1=Pos X>10
X=9

[State 13451]
Type=PosSet
Trigger1=Pos Y>120
Y=119

[State 13451]
Type=PosSet
Trigger1=Pos X<-10
X=-9

[State 13451]
Type=PosSet
Trigger1=Pos Y<90
Y=91

[State 13451]
Type=RemoveExplod
Trigger1=(var(1) % 600)=1
ID=12281

[State 450]
Type = Helper
Trigger1 = NumHelper(12284)=0
StateNo = 12284
ID = 12284
Name = "Darkness"
Pos = 0,0
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 2.4
Size.YScale = 1.2
Pausemovetime=999999
;supermovetime=999999

[State 12281]
Type=varset
Trigger1=1
var(9)=0

[State 13451]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12200,12229]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=parent,stateno=[12200,12229]
Trigger3=root,stateno=[12200,12229]
Trigger4=NumHelper(4141)
Trigger4=Helper(4141),stateno=[12200,12229]
Trigger5=NumHelper(14250)
Trigger5=Helper(14250),stateno=[12200,12229]
value=12905

[State -2]
Type=displaytoclipboard
Trigger1=1
text="%d %d"
params=var(1),time

[State -2]
Type = Helper
Trigger1 = var(1)>420
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),StateNo = 12952)
Trigger1 = NumHelper(6014)<3
StateNo = 6010
ID = 6014
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = var(1)>420
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),StateNo = 12952)
Trigger1 = NumHelper(6014)<3
StateNo = 6010
ID = 6014
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5


[State 12281]
Type=ChangeState
Trigger1=var(1)>420
Trigger1=time>0
value=12282

[Statedef 12284]
anim=10400-100*IsHelper(13454)
movetype=I
type=A
Physics=N

[State 12281]
Type=sprpriority
Trigger1=1
value=100

[State 12284]
Type=AssertSpecial
Trigger1=1
flag=NoShadow

[State 12284]
Type=PosSet
Trigger1=1
X=(time %600)-200
Y=10

[State 12284]
Type=PosAdd
Trigger1=1
Y=(210-ScreenPos Y)

[State 12284]
Type=Trans
Trigger1=IsHelper(12284)
trans=sub

[State 12271]
Type=PalFX
Trigger1=!IsHelper(13454)
mul=200,200,200
time=1

[State 12284]
Type=Trans
Trigger1=IsHelper(13454)
trans=add

[State 12284]
Type=Destroyself
Trigger1=(NumHelper(12281)+NumHelper(12271))=0
Trigger1=IsHelper(12284)
Trigger2=IsHelper(13454)
Trigger2=NumHelper(13451)=0

[Statedef 12282]

[State 12281]
Type=VarAdd
Trigger1=var(27)>0
var(27)=-1

[State 12281]
Type= VarSet
Trigger1=RoundState=2
Trigger1=var(27)=0
Trigger1=enemy(var(9)),power<2000
Trigger1=enemy(var(9)),power<(enemy(var(9)),powermax/2)
Trigger1=(!(enemy(var(9)),authorname="Seravy")) || (enemy(var(9)),numhelper(13161)=0)
Trigger1=Root,StateNo!=19998
Trigger1=Root,StateNo!=[13860,13861]
Trigger1=P2StateNo!=12952
var(27)=40

[State 12281]
Type= Projectile
Trigger1=RoundState=2
Trigger1=var(27)!=[1,30]
Trigger1=enemy(var(9)),power<2000
Trigger1=enemy(var(9)),power<(enemy(var(9)),powermax/2)
Trigger1=(!(enemy(var(9)),authorname="Seravy")) || (enemy(var(9)),numhelper(13161)=0)
Trigger1=Root,StateNo!=19998
Trigger1=Root,StateNo!=[13860,13861]
Trigger1=P2StateNo!=12952
Attr              = A, HT
Damage            = 0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = enemy(var(9)),ScreenPos X,(enemy(var(9)),Pos Y-45)
PosType		  = Left
Velocity          = 0,15
ProjID            = 12282
ProjAnim          = 9996
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 4
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = 
SparkNo           = -1
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
ground.hittime =5
air.hittime=5
P2StateNo=IfELse(Root,var(39)=43816,12952,43816)
Guard.Dist=30
ID = 12282

[State 12282]
Type=VarAdd
Trigger1=1
var(9)=1

[State 12282]
Type=ChangeState
Trigger1=1
value=12281+(var(9)<NumEnemy)

;
; ***** Card : Hope *****

; Final Ray of Hope
[Statedef 12300]   
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = Helper
;Trigger1= !(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Trigger1 = Time=0
StateNo = 12301
ID = 4201
Name = "Hope"
Pos = 30,-50
PosType = Back
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

;[State 240]
;Type = Helper
;Trigger1= (enemy,name="Seravy") && (enemy,authorname="Seravy")
;Trigger1 = Time=0
;StateNo = 12301
;ID = 12309
;Name = "Hope"
;Pos = -30,-50
;PosType = P2
;Ownpal = 1
;IgnoreHitPause = 1
;PauseMoveTime=9999999

[State 4200]
Type=NotHitBy
Trigger1= 1 ;!(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Value=SAC

[State 12110]
Type=Trans
Trigger1= 1; !(enemy,name="Seravy") || !(enemy,authorname="Seravy")
trans=addalpha
alpha=160,96

[State 240]
Type = ChangeState
Trigger1 = Time>510
Value = 0
Ctrl = 1

[Statedef 12301]
Type     = S
MoveType = A
Physics  = S
Anim     = 12301
Ctrl     = 0
Facep2   = 1
PowerAdd = 0
Sprpriority = 99

[State 542]
Type = HitDef
Triggerall = Ishelper(12309)
Triggerall = time>20
Trigger1 = Time %10 =1
Attr              = A, HT
animtype         = diagup
Damage            = 333,1
GetPower          = 0,0
Givepower = 1,0
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 7,Hit
PauseTime         = 0,3
sparkno = -1
guard.sparkno=-1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = S0,201
Ground.Type       = high
Air.Type          = high
fall=1
hitonce = 0
ID=12302
affectteam=F

[State 4182]
Type=Helper
Trigger1 = time % 3=1
Triggerall = time=[11,460]
StateNo = 12302
ID = 4202
Name = "RayofHope"
Pos = 30,-70
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

[State 4182]
Type=PlaySnd
trigger1 = time>10
Trigger1=time %20=0
value=12300,0

[State 4182]
Type=PlaySnd
trigger1 = time>10
Trigger1=time %180=0
value=12300,1
volume=255

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12302
Trigger1 = time>10
Trigger1 = Time %10 =3
StateNo = 6010
ID = 6012
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.2
Size.YScale = 0.2

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12302
Trigger1 = time>10
Trigger1 = Time %10 =3
StateNo = 6010
ID = 6012
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.2
Size.YScale = 0.2

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12302
Trigger1 = time>10
Trigger1 = Time %10 =3
anim = 4040
ID = 6011
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing-15,Ceil((Enemy(0),Pos Y - Pos Y)*4/5)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Sprpriority=12

[State 6005]
Type = Explod
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo = [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12302
Trigger1 = time>10
Trigger1 = Time %10 =3
anim= 4040
ID = 6011
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing-15,Ceil((Enemy(1),Pos Y - Pos Y)*4/5)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Sprpriority=12

[State -2]
Type = PlaySnd
Triggerall = time=[11,460]
Triggerall = Time %10 =3
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12302
Trigger2 = NumEnemy > 1
Trigger2 = (Enemy(1),Movetype = H)
Trigger2 = (Enemy(1),StateNo != [5100,5150])
Trigger2 = (Enemy(1),StateNo != [120,160])
Trigger2 = Enemy(1),GetHitvar(chainID) = 12302
value=S0,210

[State 4182]
Type=DestroySelf
Trigger1=time>500

[Statedef 12302]
Type     = A
MoveType = A
Physics  = N
Anim     = 10160
Ctrl     = 0
Sprpriority = 10

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 12302]
Type=AngleSet
Trigger1=1
Value=30- random %80

[State 12302]
Type=Angledraw
Trigger1=1

[State 4202]
Type= VarSet
Trigger1=time=0
v=0
value=random % (random %256+1)

[State 4202]
Type= VarSet
Trigger1=time=0
v=1
value=random % (random %256+1)

[State 4202]
Type= VarSet
Trigger1=time=0
v=2
value=random % (random %256+1)

[State 4202]
Type=PalFX
Trigger1=1
;invertall=1
mul=var(0),var(1),var(2)
time=1

[State 4202]
Type=Trans
trigger1=1
Trans = AddAlpha
Alpha = 256,256

[State 542]
Type = Projectile
Triggerall = !(parent,Ishelper(12309))
offset = 0,0
Projanim=10167
ProjID=10167
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = Time %10 =1
Attr              = A, HT
animtype         = diagup
Damage            = 333,1
GetPower          = 0,0
Givepower = 1,0
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 7,Hit
PauseTime         = 0,3
sparkno = -1
guard.sparkno=-1
SparkXY           = 0,0
HitSound          = -1,0
GuardSound        = S0,201
Ground.Type       = high
Air.Type          = high
fall=1
P2StateNo=43816
hitonce = 0
ID=12302

[State 4182]
Type=DestroySelf
Trigger1=animtime=0

[Statedef 12309]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 12309]
Type=ChangeState
Trigger1=time>400
value=0
ctrl=1


; ----- Healing Zone -----
[Statedef 12310]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = ChangeState
Trigger1 = Roundstate>2
Value = 0
Ctrl = 1

[State 12310]
Type=ChangeAnim
Trigger1=anim!=380
value=0

[State 240]
Type = Explod
Trigger1 = Time=0
Trigger1= Name!="Void"
anim = 7007
ID = 4202
Pos = 0,-80
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
removetime=400
sprpriority=5

[State 4190]
Type=LifeAdd
Trigger1= time>1
Trigger1= time %2=1
value=3

[State 4190]
Type=ParentVarAdd
Trigger1= IsHelper(14250)
Trigger1= time>1
Trigger1= time %2=1
v=20
value=-3

[State 4190]
Type=ParentVarAdd
Trigger1= IsHelper(14250)
v=37
value=1

[State 4190]
Type=PlaySnd
Trigger1= time=0
Value = 12310,0

[State 4190]
Type=PlaySnd
Trigger1= time=30
Value = 13550,0

[State 4200]
Type=NotHitBy
Trigger1= time>=0
Value=SAC

[State 240]
Type = Helper
Trigger1 = Time % 5=0
Trigger1 = time>30
StateNo = 12311
ID = 12311
Name = "Pyramid"
Pos = 0,-120
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.001*random+0.1
Size.yscale=1.3
PauseMoveTime=9999999

[State 5555]
Type=PlayerPush
Trigger1=1
value=time>400

[State 240]
Type = ChangeState
Trigger1 = Time>400
Value = 0
Ctrl = 1

[Statedef 12311]
MoveType=I
Physics=N
anim=12311
sprpriority=3

[State 6000]
Type = VarAdd
Trigger1 = Time > 20
var(0) = 25

[State 4202]
Type= VarSet
Trigger1=time=0
v=0
value=-random %100

[State 4202]
Type= VarSet
Trigger1=time=0
v=1
value=random %100

[State 4202]
Type= VarSet
Trigger1=time=0
v=2
value=-random %100

[State 4202]
Type=PalFX
Trigger1=1
add=var(0),var(1),var(2)
time=1

[State 6000]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 256-var(0),256

[State 12311]
Type=Destroyself
Trigger1=time>30

; ----- Void Blaster -----
[Statedef 12320]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12321
ID = 12321
Name = "Hope"
Pos = 160,-80
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 10
PauseMoveTime=9999999

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12327
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=9
value=-1

[State 240]
Type = ChangeState
Trigger1 = time>0
Value = 12327

[Statedef 12327]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(9)<=410
attr = SCA, AA, AP, AT
stateno = 12327
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12161]
Type=ChangeState
Trigger1=var(9)>410
value=0
ctrl=1

[Statedef 12321]
Type = A
MoveType = I
Physics  = N
anim=7007

[State 1000, sound]
type = Playsnd
trigger1 = time =0
value = 12320,0

[State 1100, dm spark]
type = Explod
trigger1 = time=0
anim = f100
ID = 1000
postype = left
pos = 160,90
bindtime = -1
sprpriority = 2
supermovetime = 90
ownpal = 1
removeongethit = 1

[State 3009, pause]
type = SuperPause
trigger1 = time=30
darken = 0
time = 60
movetime=60
anim = -1
p2defmul = 1

[State 12321]
Type=PosSet
Trigger1=1
X=0

[State 14501]
Type=Helper
Triggerall=time>=90
Trigger1=time %5=0
stateno = 12322
ID = 12322
name="Void"
sprpriority = 10
ownpal=0
pausemovetime=9999999
Postype=left
pos= random %320,-(20+random %150)

[State 12321]
Type=Trans
Trigger1=time<30
trans=addalpha
alpha=floor(time*8.5333),(256-floor(time*8.5333))

[State 12321]
Type=Trans
Trigger1=time>440
trans=addalpha
alpha=(256-floor((time-440)*8.5333)),floor((time-440)*8.5333)

[State -2]
Type = Null;Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12322
Trigger1 = root,ProjHitTime(12322)=[0,1]
anim = 6018
ID = 6018
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing-15,Ceil((Enemy(0),Pos Y - Pos Y)*4/5)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
vel = enemy(0),vel x,enemy(0),vel y
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
sprpriority=17

[State 6005]
Type = Null;Explod
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12322
Trigger1 = root,ProjHitTime(12322)=[0,1]
anim= 6018
ID = 6018
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing-15,Ceil((Enemy(1),Pos Y - Pos Y)*4/5)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
vel = enemy(0),vel x,enemy(0),vel y
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
sprpriority=17

[State 14501]
Type=DestroySelf
Trigger1=time>470

[Statedef 12322]
Type = A
MoveType = I
Physics  = N
anim=10181

[State 12322]
Type=VarAdd
Trigger1=1
var(21)=1

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12322
time = -1

[State 1000, sound]
type = Playsnd
trigger1 = var(21)=1
value = 12320,0

[State 12322]
Type=AngleSet
Trigger1=1
Value=var(21)*4

[State 12322]
Type=VarSet
Trigger1=1
fvar(29)=0.2*(0.1+((var(21)+0.1)/10)*(var(21)<21)+(var(21)>=21)*(((41-var(21))+0.1)/10))

[State 14502]
Type=angledraw
Trigger1=1
scale=0.7*fvar(29),0.7*fvar(29)

[State 0, Helper]
type = Helper
trigger1 = time=[0,2]
trigger1 = root,numhelper+enemy,numhelper<=45
name = "Lightning"
ID = 13224
stateno = 13224
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 14502]
Type=Trans
Trigger1=1
trans=sub

[State 14502]
Type=DestroySelf
Trigger1=var(21)>=42

[State 221]
Type = Projectile
offset = 0,0
Projanim=10187
ProjID=12322
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = var(21) =21
Attr              = A, HT
Damage            = 200,200
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1;S6018
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = S0,209
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 40
Ground.HitTime    = 40
Air.HitTime       = 40
Ground.Velocity   = random %20-10,-4
;Guard.Velocity   = 0,-3
Air.Velocity      = random %20-10,-4
AirGuard.Velocity = random %3-3,-4
;Air.Fall = 1
Fall.Recover = 1
;Guard.Kill = 0
ID = 12322
P2StateNo=43816
hitonce = 0
guard.dist=0

[State 12322]
Type=Assertspecial
Trigger1=1
flag=NoShadow

[Statedef 13224]
anim=20080
Type=A
Movetype=I
Physics=N
velset=0,0
sprpriority=11

[State 2202]
Type=BindToParent
Trigger1=1

[State 2204]
Type=VarSet
Trigger1=time=0
var(0)= random %61-30

[State 2204]
Type=AngleSet
Trigger1=time=0
value= random %360

[State 2204]
Type=AngleAdd
Trigger1=1
value=var(0)

[State 2202]
Type=AngleDraw
Trigger1=1
scale=2*parent,fvar(29),2*parent,fvar(29)

[State 2203]
Type=Trans
Trigger1=1
trans=sub

[State 2204]
Type=Destroyself
Trigger1=parent,var(21)>=41

[State 2202]
Type=Assertspecial
Trigger1=1
flag=noshadow


;
; ***** Card : Arrow *****

; ----- 1000 Arrows -----
[Statedef 12350]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12357
slot = 6
time = 1

[State 12160]
Type=VarSet
Trigger1=1
v=9
value=-1

[State 240]
Type = ChangeState
Trigger1 = time>0
Value = 12357

[Statedef 12357]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=var(9)<=300
attr = SCA, AA, AP, AT
stateno = 12357
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12161]
Type=ChangeState
Trigger1=var(9)>300
Trigger2=roundstate>2
value=0
ctrl=1

[State 13060]
Type=Helper
Trigger1=time %5=0
stateno = 12351
ID = 12351
Pos = 0,-60
PosType = P2
pausemovetime=99999
;supermovetime=99999
Size.xscale=1
Size.yscale=1

[Statedef 12351]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
anim = 10650
sprpriority=2

[State 3999]
Type=AssertSpecial
Trigger1=1
Flag=NoShadow

[State 12352]
Type=PlaySnd
Trigger1=time=0
Value=12350+random %6,0

[State 13061]
Type=VarSet
Trigger1=time=0
fvar(9)=(random %200-100)*0.1 ; Vel X

[State 13061]
Type=VarSet
Trigger1=time=0
var(6)=random

[State 13061]
Type=VarSet
Trigger1=time=0
fvar(10)=10-abs(fvar(9)) ; Vel Y

[State 13061]
Type=PosAdd
Trigger1=time=0
X=floor(-40*fvar(9))
Y=floor(-40*fvar(10))

[State 13061]
Type=VelSet
Trigger1=time=0
X=fvar(9)
Y=fvar(10)

[State 539]
Type=varset
Trigger1= time=0
v=0
value=floor(P2Dist X+Pos X)

[State 539]
Type=varset
Trigger1= time=0
v=1
value=floor(P2Dist Y+Pos Y-60)

[State 539]
Type= AngleSet
Trigger1=time=0
Trigger1 = (var(0)-Pos X)!=0
value=-(180/(pi)*atan((var(1)- Pos Y)/(var(0)-Pos X)))

[State 539]
Type= AngleAdd
Trigger1=(var(0)- Pos X)<0
Trigger1=time=0
value=180

[State 539]
Type = AngleSet
Trigger1 = (var(0)-Pos X)=0
Trigger1 = time=0
Value = IfElse(fvar(1)-Pos Y<0,90,-90)

[State 539]
Type= AngleDraw
Trigger1=1

[State 221]
Type = Hitdef
Trigger1 = time>0
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = var(6)=[333,777]
Attr              = A, NP
Damage            = 1,0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,211
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 7
Ground.HitTime    = 21
Air.HitTime       = 21

[State 221]
Type = Hitdef
Trigger1 = time>0
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = var(6)=[778,900]
Attr              = A, NP
Damage            = floor(root,fvar(39)*(5+(var(6)-500)*0.015)),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,211
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 7
Ground.HitTime    = 21
Air.HitTime       = 21

[State 221]
Type = Hitdef
Trigger1 = time>0
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = var(6)=[901,980]
Attr              = A, NP
Damage            = floor(root,fvar(39)*25),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,211
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 7
Ground.HitTime    = 21
Air.HitTime       = 21

[State 221]
Type = Hitdef
Trigger1 = time>0
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = var(6)=[981,994]
Attr              = A, SP
Damage            = floor(root,fvar(39)*60),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,211
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 7
Ground.HitTime    = 21
Air.HitTime       = 21

[State 221]
Type = Hitdef
Trigger1 = time>0
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = var(6)>=995
Attr              = A, SP
Damage            = floor(root,fvar(39)*300),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,203
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 7
Ground.HitTime    = 21
Air.HitTime       = 21
Ground.Velocity   = -5,-5
;Guard.Velocity   = -5,-5
Air.Velocity      = -5,-5
AirGuard.Velocity = -5,-5
Air.Fall = 1
Fall=1
ID=12359

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*(0.99-0.05*(var(6)>900)-0.1*(var(6)>980)-0.5*(var(6)>995))

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12359
Trigger1 = movehit=1
StateNo = 6006
ID = 6006
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 1
Size.YScale = 1

[State 13061]
Type=VelSet
Trigger1=Movecontact || Movereversed
Trigger1=Var(3)=0
X=- Vel X*0.3
Y=0

[State 13061]
Type=VarSet
Trigger1=Movecontact || Movereversed
v=3
value=(5+random %20)*(1-(random %2)*2)

[State 13061]
Type=Angleadd
Trigger1=1
value=var(3)

[State 13061]
Type=VelAdd
Trigger1=Movecontact || Movereversed
Y=0.1

[State 13051]
Type=DestroySelf
Trigger1=time>80
Trigger2=Pos Y>10

;
; ***** Card : Wave *****

; ----- Flood -----
[Statedef 12400]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = PlaySnd
Trigger1 = Time=0
Value = 12400,0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12403
ID = 4091
Name = "WaveGenerator"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 240]
Type = ChangeState
Trigger1 = Time>10
Value = 0
Ctrl = 1

[Statedef 12401]
Type = S
MoveType = A
Physics  = N
Anim     = 20006
SprPriority = 4
facep2=1

[State 241]
Type = VelSet
Trigger1 = Time = 0
X= IfElse(P2Dist X<0,-10,10)
Y= 0

[State 4091]
Type=VarSet
Trigger1=time=0
fv=0
value=0.6+((0.8*random)/1000)

[State 241]
Type= AngleDraw
trigger1=1
scale = 1, fvar(0)

[State 241]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 192,256

[State 241]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1

[State 221]
Type = Hitdef
Trigger1 = movecontact<=0
Trigger2 = movecontact>=22
Attr              = S, ST
Damage            = ceil((2+7*IsHelper(12411))*root,fvar(39))
GetPower          = 0
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,10
SparkNo           = -1
Guard.sparkno = S4040
SparkXY           = 25,-40
HitSound          = -1
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = -12
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 4091

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.99

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 241]
Type = DestroySelf
Trigger1 = (FrontEdgeBodyDist < -80) || (Time > 50)

[Statedef 12402]
Type = A
MoveType = A
Physics  = N
Anim     = 10030
SprPriority = 5
facep2=1

[State 411]
Type = VarAdd
Trigger1 = Movecontact || movereversed || (Time > 210)
Trigger2 = var(0) > 0
var(0) = 20

[State 411]
Type = VarAdd
Trigger1 = Time = [0,9]
fvar(0) = .2

[State 411]
Type = VarAdd
Trigger1 = Time > 9
Trigger1 = Movecontact || movereversed || (Time > 210)
fvar(0) = .3

[State 411]
Type = VelSet
Trigger1 = !Movecontact && !movereversed
X = 10
Y = -2.0*Sin((48+Time*3)*(Pi/180.0))

[State 411]
Type = VelSet
Trigger1 = Movecontact || movereversed
X = 0
Y = 0

[State 411]
Type = StateTypeSet
Trigger1 = var(0) > 0
MoveType = I

[State 411]
Type = Trans
Trigger1 = var(0) = 0
Trans = Add

[State 411]
Type = Trans
Trigger1 = var(0) > 0
Trans = AddAlpha
Alpha = 256-var(0),256

[State 411]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1

[State 411]
Type = AngleDraw
Trigger1 = 1
Scale = .2+fvar(0),.2+fvar(0)

[State 221]
Type = hitdef
Trigger1 = Time >= 12
Trigger1 = !movecontact
Trigger1 = !Movereversed
Attr              = A, NP
Damage            = ceil(4*root,fvar(39))
AnimType          = Hard
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6001
Guard.sparkno = S4040
SparkXY           = 25,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 18
Ground.HitTime    = 18
Air.HitTime       = 18
Ground.Velocity   = -2,0
Air.Velocity      = -2,0
AirGuard.Velocity = 0,0
Fall.Recover = 1
ID = 411

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.97

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 411]
Type = DestroySelf
Trigger1 = var(0) > 249

[Statedef 12403]
MoveType = A
Physics  = N
velset=0,0
anim=9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 12403]
Type=assertspecial
trigger1=1
flag=invisible

[State 240]
Type = Helper
Trigger1 = time%5=0
StateNo = 12401
ID = 4091
Name = "Wave"
Pos = Floor((BackEdgeDist)*-1)-80,30
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 0.6
Size.YScale = 0.6
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = Time%5=3
Trigger1 = random<(power-3000)/6
Trigger1 = power>3000
StateNo = 12402
ID = 4092
Name = "Water"
Pos = Floor((BackEdgeDist)*-1)-80,-random % 170
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .2
Size.YScale = .2
PauseMoveTime=9999999

[State 12403]
Type=DestroySelf
Trigger1=time>180


; ----- Tsunami -----
[Statedef 12410]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = PlaySnd
Trigger1 = Time=0
Value = 12400,1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12413
ID = 12413
Name = "WaveGenerator"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 240]
Type = ChangeState
Trigger1 = Time=0
Value = 12414
Ctrl = 0

[Statedef 12414]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=Numhelper(12413)>0
attr = SCA, AA, AP, AT
stateno = 12414
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12414]
Type=ChangeState
Trigger1=Numhelper(12413)=0
value=0
ctrl=1

[Statedef 12413]
MoveType = A
Physics  = N
velset=0,0
anim=9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 12403]
Type=assertspecial
trigger1=1
flag=invisible

[State 240]
Type = Helper
Trigger1 = time%8=0
Trigger2 = random<100
StateNo = 12401
ID = 12411
Name = "Wave"
Pos = Floor((BackEdgeDist)*-1)-80,30
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 240]
Type = Helper
Trigger1 = Time%5=3
Trigger1 = random<(power-3000)/6
Trigger1 = power>3000
StateNo = 12402
ID = 4092
Name = "Water"
Pos = Floor((BackEdgeDist)*-1)-80,-random % 170
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .5
Size.YScale = .5
PauseMoveTime=9999999

[State 12403]
Type=DestroySelf
Trigger1=time>180


;
; ***** Card : Voice *****

; ----- Eternal Command -----
[Statedef 12450]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = VarSet
Trigger1=1
v=24
value=900

[State 4140]
Type = VarSet
Trigger1=1
v=47
value=power

[State 1000, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
; ***** Card : Twin *****

; ----- Double Trouble -----
[Statedef 12500]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
Trigger1 = time=0
Trigger1 = NumHelper(12501)=0
helpertype = normal
StateNo = 0
ID = 12501
Name = "Twin"
Pos = -40,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
Size.xscale=1
Size.yscale=1
keyctrl=1

[State 1000, state]
type = ChangeState
trigger1 = time>=3
value = 0
ctrl = 1

; The Twin copy animation state
[Statedef 12501]
Type=A
Movetype=I
Physics=N

[State 12501]
Type=Changeanim
Trigger1=anim!=root,anim
value=root,anim
ignorehitpause=1

;
; ***** Card : Time *****
;
; ------ Chronodash -----

[Statedef 12550]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7012
ID = 4000
sprpriority = 0
postype = p1
pos = -30,0
bindtime = -1
removeongethit = 1
removetime=30

[State 1530]
Type=VarSet
Triggerall=!IsHelper
Trigger1=time=0
v=34
value=Cond(var(33)=0,1080,(var(33)+1080.0)*var(34)/var(33))

[State 1530]
Type=VarAdd
Triggerall=!IsHelper
Trigger1=time=0
v=33
value=1080

[State 1530]
Type=ParentVarSet
Triggerall=IsHelper
Trigger1=time=0
v=34
value=Cond(parent,var(33)=0,1080,(parent,var(33)+1080.0)*parent,var(34)/parent,var(33))

[State 1530]
Type=ParentVarAdd
Triggerall=IsHelper
Trigger1=time=0
v=33
value=1080

[State 4000]
Type=Helper
trigger1 = time=0
trigger1 = NumHelper(29000)=0
stateno = 12552
ID = 29000
Pos = 160,-100
PosType = left

[State 1000, state]
type = ChangeState
trigger1 = time>15
value = 0
ctrl = 1

;
; ----- ChronoWalk -----
;

[Statedef 12560]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7012
ID = 4000
sprpriority = 0
postype = p1
pos = -30,0
bindtime = -1
removeongethit = 1
removetime=30

[State 1530]
Type=VarSet
Triggerall=!IsHelper
Trigger1=time=0
v=34
value=Cond(var(33)=0,1200,(var(33)+1200.0)*var(34)/var(33))

[State 1530]
Type=VarAdd
Triggerall=!IsHelper
Trigger1=time=0
v=33
value=1200

[State 1530]
Type=ParentVarSet
Triggerall=IsHelper
Trigger1=time=0
v=34
value=Cond(parent,var(33)=0,1200,(parent,var(33)+1200.0)*parent,var(34)/parent,var(33))

[State 1530]
Type=ParentVarAdd
Triggerall=IsHelper
Trigger1=time=0
v=33
value=1200

[State 4000]
Type=Helper
trigger1 = time=0
trigger1 = NumHelper(29000)=0
trigger1 = NumHelper(29001)=0
stateno = 12552
ID = 29001
Pos = 160,-100
PosType = left
Pausemovetime=999999
supermovetime=999999

[State 1000, state]
type = ChangeState
trigger1 = time>15
value = 0
ctrl = 1

[Statedef 12552]
type = S
movetype = I
physics = N
anim = 10581
sprpriority=-15

[State 12552]
Type=PosSet
Trigger1=1
X=0

[State 1532]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 461]
Type = Explod
Trigger1 = NumExplod(10580)=0
Anim = 10580
ID = 10580
Pos = 0,0
Ownpal = 1
SprPriority = -15
IgnoreHitPause = 1
scale = 0.5,0.5
bindtime=-1
removetime=-1
Pausemovetime=999999
supermovetime=999999

[State 1531]
Type=AngleSet
Trigger1=1
value=(360.0*parent,var(33))/parent,var(34)+90

[State 1531]
Type=Angledraw
Trigger1=1
scale=0.25,0.25

[State 1531]
Type=Trans
Trigger1=1
Trans=Add

[State 450]
Type = Helper
Trigger1 = NumHelper(12553)=0
Trigger1 = time<900
StateNo = 12553
ID = 12553
Name = "Time Slow Big Hand"
Pos = 160,-100
PosType = left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Pausemovetime=999999
Supermovetime=999999

[State 1532]
Type=Removeexplod
Trigger1=root,var(33)=0
Trigger2=enemy,name="Yue"
ID=10580

[State 1532]
Type=DestroySelf
Trigger1=root,var(33)=0
Trigger2=enemy,name="Yue"

[Statedef 12553]
Type     = S
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim=10581
sprpriority=-15

[State 12552]
Type=PosSet
Trigger1=1
X=0

[State 1532]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 1531]
Type=AngleSet
Trigger1=1
value=(12*360.0*root,var(33))/root,var(34)+90

[State 1531]
Type=Angledraw
Trigger1=1
scale=0.5,0.5

[State 1531]
Type=Trans
Trigger1=1
Trans=Add

[State 1532]
Type=DestroySelf
Trigger1=root,var(33)=0
Trigger2=enemy,name="Yue"

;
; ------ ChronoFreeze -----
;

[Statedef 12570]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 705, 2]
type = Explod
trigger1 = time=0
anim = 7012
ID = 4000
sprpriority = 0
postype = p1
pos = -30,0
bindtime = -1
removeongethit = 1
removetime=1

[State -2,Time Effect Time Freeze]
Type = Pause
Trigger1 = time=0
Trigger1 = !enemy,name="Yue"
time = 240
movetime =240
ignorehitpause = 1

[State 4000]
Type=VarSet
Trigger1=Time=0
v=44
value=240

[State -2]
Type=BgPalFX
Trigger1=time=0
add=-50,-90,-130
time=240

[State 1000, state]
type = ChangeState
trigger1 = time>20
Trigger2 = enemy,name="Yue"
Trigger2 = time>0
value = 0
ctrl = 1

;
; ***** Card : Thunder *****
;
; ----- Thunderburst -----
;

[Statedef 12600]
Type = A
MoveType = A
Physics  = N
Anim     = 12600
SprPriority = -1
velset = 0,0
facep2=1

[State 12600]
Type=ParentVarSet
Trigger1=time=0
var(2)=13

[State 12600]
Type=ParentVarSet
Trigger1=time=0
var(1)=-1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "ClowCircle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.7
Size.yscale=0.7
PauseMoveTime=9999999
Supermovetime=9999999

[State 221]
Type = Hitdef
Trigger1 = time=0
attr = A, HT                     ;Attribute: Standing, Normal Attack
damage = floor(root,fvar(39)*20)
animtype = DiagUp                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag =                     ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 7, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 2, 4                 ;Time attacker pauses, time opponent shakes
sparkno = S6015                      ;Spark anim no (Def: set above)
Guard.sparkno = S4040
sparkxy = 40, -70              ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = S12600, 1                  ;Sound to play on hit
;guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 15             ;Time that the opponent slides back
ground.hittime  = 15             ;Time opponent is in hit state
ground.velocity = -8,-8             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8,-8           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
fall = 1
fall.recover = 0
hitonce=0

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.85

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=IFElse(root,var(39)=43816,12609,43816)

[State 210, 1]
type = PlaySnd
trigger1 = Time = 8
value = 12600, 0

[State 4051]
Type=DestroySelf
Trigger1=Time>40

[Statedef 12609]
Movetype=H
Type=U
Physics=N
ctrl=0
velset=0,0

[State 529]
Type=PalFx
Trigger1=time=0
add=0,0,0
mul=256,256,256
sinadd=0,0,0,30
time=30

[State 519]
Type=ChangeState
Trigger1=time=0
Trigger1=!Selfanimexist(7696)
value=43816

[State 519]
Type=ChangeAnim
Trigger1=time=0
value=7696

[State 6660]
Type=VelSet
Trigger1=time>=15
X=-8
Y=-8

[State 6660]
Type=SelfState
Trigger1=time>=15
value=5030

[Statedef 12619]
Movetype=H
Type=U
Physics=N
ctrl=0
velset=0,0

[State 529]
Type=PalFx
Trigger1=time=0
add=0,0,0
mul=256,256,256
sinadd=0,0,0,30
time=30

[State 519]
Type=ChangeState
Trigger1=time=0
Trigger1=!Selfanimexist(7696)
value=43816

[State 519]
Type=ChangeAnim
Trigger1=time=0
value=7696

[State 6660]
Type=VelSet
Trigger1=time>=4
X=-3
Y=4

[State 6660]
Type=SelfState
Trigger1=time>=4
value=5030


; ----- Thunderstorm -----
[Statedef 12610]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time=0
trigger1 = NumHelper(12611)=0
stateno = 12611
ID = 12611
postype = left
pos = 0,-220
pausemovetime=99999
;supermovetime=99999

[State 1000, state]
type = ChangeState
trigger1 = time>320
value = 0
ctrl = 1

[Statedef 12611]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 12611]
Type=DestroySelf
Trigger1=parent,StateNo!=12610
Trigger1=NumHelper(12612)=0
Trigger2= time>320

[State 4000]
Type=Helper
trigger1 = time%10=0
Trigger1=parent,StateNo=12610
stateno = 12612
ID = 12612
postype = P1
pos = -random %640+320,0

[State 12611]
Type=BgPalFx
Trigger1=1
add=-80,-80,-80
time=1

[Statedef 12612]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0
anim=10590+random %7
sprpriority=2

[State 12612]
Type=NotHitby
Trigger1=1
value=SAC

[State 12611]
Type=PlaySnd
Trigger1=time=0
value=12600,0

[State 221]
Type = Projectile
offset = 0,0
Projanim=anim-6000
ProjID=12612
Projremovetime=6
Projremanim=9919
Trigger1=time %6=0
Projedgebound=9999
Projstagebound=9999
Attr              = A, HT
Damage            = floor(root,fvar(39)*9),0
GetPower          = 0
AnimType          = Heavy
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = S12600,1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = -3,4
;Guard.Velocity   = -3,4
Air.Velocity      = -3,4
AirGuard.Velocity = -3,4
Air.Fall = 1
Fall=1
Fall.recover=0
P2StateNo=IFElse(root,var(39)=43816,12619,43816)
hitonce = 0
Palfx.time=6
Palfx.add=100,100,100
ID=12612

[State 12611]
Type=Trans
Trigger1=time<=12
trans=addalpha
alpha=time*20,256

[State 12611]
Type=Trans
Trigger1=time>12
trans=addalpha
alpha=(24-time)*20,256

[State 12611]
Type=DestroySelf
Trigger1=time>=24

; Thunder 3

; Electrostatic Discharge
[Statedef 12620]
Type=S
MoveType=H
physics=S
ctrl=0
velset=0,0
facep2=1

[State 0, Helper]
type = Helper
trigger1 = time=0
name = "Thunder"
ID = 12622
stateno = 12622
pos = 28, -80
postype = p1
ownpal = 1

[State x]
Type=Varset
Trigger1=1
var(9)=var(21):=0

[State 2000]
Type=ChangeState
Trigger1=Power<1000
value=0
ctrl=1

[State 2000]
Type=ChangeState
Trigger1=1
value=12621

[Statedef 12621]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1027]
Type=PlayerPush
Trigger1=1
value=0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State x]
Type=Varset
Trigger1=command="z"
Trigger1=var(59)=0
var(21)=1

[State 592]
type = HitOverride
Trigger1 = power>0
Trigger1 = var(21)>0
Trigger2 = var(9)<60
attr = SCA, AA, AP, AT
stateno = 12621
slot=1
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=Varadd
Trigger1=1
var(9)=1

[State 2201]
Type=PlayerPush
Trigger1=1
value=0

[State 2101]
Type=ChangeState
Trigger1=power<=0
Trigger2=var(21)>0
Trigger2=var(9)>60
Trigger2=var(59)=0
Trigger3=roundstate>2
Trigger4=var(59)>0
Trigger4=var(9)>60
Trigger4=(P2movetype!=H) || (fvar(39)<0.2)
value=12629

[Statedef 12629]
Type=S
Movetype=I
Physics=n

[State 12629]
Type=Changestate
Trigger1=time>=62
value=0
ctrl=1

[Statedef 12622]
Type=A
MoveType=A
Physics=N
anim=9991
velset=0,0

[State 12622]
Type=poweradd
Trigger1=time=60
value=-1000

[State 12622]
Type=poweradd
Trigger1=time>60
value=-17

[State 12017]
Type=Explod
Trigger1=time=0
bindtime=1
removetime=-2
sprpriority=8
anim=12601
Pos=-50,80
PosType=P1
;ownpal=1
scale=1,1

[State 2202]
Type=PlaySnd
Trigger1=time %35=0
value=S12622,0

[State 2202]
Type=AttackDist
Trigger1=1
value=80

[State 2202]
Type=BindToParent
Trigger1=1
pos=27,-78

[State 0, Helper]
type = Helper
triggerall = parent,stateno=12621
trigger1 = (time %10=7)
name = "LightOrb"
ID = 12623
stateno = 12623
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale=.5
size.yscale=.5

[State 0, Helper]
type = Helper
triggerall = parent,stateno=12621
trigger1 = 1
name = "Lightning"
ID = 12624
stateno = 12624
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent=10
size.xscale=.5
size.yscale=.5

[State 0, HitDef]
type = HitDef
trigger1 = time>7
attr = A,HP
hitflag = MAFP
guardflag = MA 
animtype = hard
damage = floor(root,fvar(39)*9),1
getpower = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S2100,0
guardsound = S0,201
ground.type = High      ;Low,Trip,None
ground.hittime=44
air.hittime = 44
guard.kill=0
id = 2202
persistent=4

[State 200]
Type=ParentVarSet
Trigger1=movehit=1
fvar(39)=parent,fvar(39)*0.99

[State 0, Helper]
type = Helper
trigger1 = Numtarget(2202)>0
trigger1 = Movehit=1
name = "Hitspark"
ID = 6200
stateno = 6200
Pos = Ceil(target(2202),Pos X - Pos X)*Facing+random %31-15,Ceil(target(2202),Pos Y - Pos Y)+(target(2202),Const(Size.Mid.Pos.Y))+random %41-20
postype = p1
ownpal = 1
supermovetime=99999
pausemovetime=99999

[State 0, Helper]
type = Explod
trigger1 = Numtarget(2202)>0
trigger1 = Moveguarded=1
ID=6200
anim = 4040
Pos = Ceil(target(2202),Pos X - Pos X)*Facing+random %31-15,Ceil(target(2202),Pos Y - Pos Y)+(target(2202),Const(Size.Mid.Pos.Y))+random %41-20
sprpriority=6
postype = p1
ownpal = 1
supermovetime=99999
pausemovetime=99999

[State 2202]
Type=Removeexplod
trigger1 = parent,stateno=12629
Trigger1 = parent,time>=38
Trigger2 = parent,stateno!=[12620,12629]

[State 2202]
Type=Destroyself
trigger1 = parent,stateno=12629
Trigger1 = parent,time>=38
Trigger2 = parent,stateno!=[12620,12629]

[Statedef 12623]
anim=20010
Type=A
Movetype=I
Physics=N
velset=0,0
sprpriority=13

[State 2202]
Type=BindToParent
Trigger1=NumHelper(12622)

[State 2202]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 2202]
Type=AngleDraw
Trigger1=1
scale=0.004*time,0.004*time

[State 2203]
Type=Trans
Trigger1=IsHelper(12623)
trans=add

[State 2202]
Type=destroyself
trigger1=time>=60

[Statedef 12624]
anim=20080
Type=A
Movetype=I
Physics=N
velset=0,0
sprpriority=11

[State 2202]
Type=BindToParent
Trigger1=NumHelper(12622)

[State 2204]
Type=VarSet
Trigger1=time=0
var(0)= random %61-30

[State 2204]
Type=AngleSet
Trigger1=time=0
value= random %360

[State 2204]
Type=AngleAdd
Trigger1=1
value=var(0)

[State 2202]
Type=ANgleDraw
Trigger1=1

[State 2203]
Type=Trans
Trigger1=1
trans=add

[State 2204]
Type=Destroyself
Trigger1=animtime=0

[State 2202]
Type=Assertspecial
Trigger1=1
flag=noshadow

; Hitspark
[Statedef 6200]
anim=6200
Physics=N
Type=A
Movetype=I
velset=0,0
sprpriority=7

[State 6200]
Type=AngleDraw
Trigger1=1
scale=(time+2)*0.02,(time+2)*0.02

[State 6200]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 6200]
Type=Trans
Trigger1=1
trans=addalpha
alpha=256-64*(time-4)*(time>4),256

[State 6200]
Type=DestroySelf
Trigger1=animtime=0


;
; ***** Card : Through *****
;

; ----- Dimension Walk -----
[Statedef 12650]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14300]
Type=VarSet
Trigger1=1
v=19
value=1

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

;
; ***** Card : Sword *****
;

; ----- Dimension Cut -----
[Statedef 12700]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 12700]
Type=PlaySnd
Trigger1=1
Value=S12700,0

[State 12700]
Type=ChangeState
Triggerall=time=0
Trigger1=command ="holdup"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=enemy,Pos Y<-60
value=12701

[State 260]
Type = Projectile
Trigger1 = time=0
Attr              = A, HP
Damage            = floor(Cond(Ishelper,root,fvar(39),fvar(39))*150)
GetPower          = 0
AnimType          = DiagUp
PauseTime         = 0,15
Guard.PauseTime   = 0,15
Offset            = 0,-40
Velocity          = 0,0
ProjID            = 12700
ProjAnim          = 10340
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 15
ProjHeightBound   = -400,50
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = S12700,1
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -3,-6.5
Guard.Velocity    = -6
Air.Velocity      = -3,-6.5
AirGuard.Velocity = -6,-2.5
Fall = 1
Fall.Recover = 0
ID = 4112
P2StateNo=43816

[State 12700]
Type=ChangeState
Trigger1=time>20
ctrl=1
Value=0

[Statedef 12701]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 260]
Type = Projectile
Trigger1 = time=0
Attr              = A, HP
Damage            = floor(Cond(Ishelper,root,fvar(39),fvar(39))*150)
GetPower          = 0
AnimType          = DiagUp
PauseTime         = 0,15
Guard.PauseTime   = 0,15
Offset            = 0,-120
Velocity          = 0,0
ProjID            = 12700
ProjAnim          = 10340
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 15
ProjHeightBound   = -400,50
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = S12700,1
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -3,-6.5
Guard.Velocity    = -6
Air.Velocity      = -3,-6.5
AirGuard.Velocity = -6,-2.5
Fall = 1
Fall.Recover = 0
P2StateNo=43816

[State 12700]
Type=ChangeState
Trigger1=time>20
ctrl=1
Value=0

;

; ----- Slasher -----
[Statedef 12710]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 12007]
Type=VarSet
Trigger1=1
v=9
value=0

[State 12050]
Type=ChangeState
Trigger1=1
Value=12717

[Statedef 12717]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = var(9)<=180
attr = SCA, AA, AP, AT
stateno = 12717
slot = 6
time = 1
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 0, Helper]
type = Helper
trigger1 = var(9)=[8,7+16*7]
trigger1 = var(9) %16=8
name = "Cut"
ID = 3000+(var(9)-8)/16
stateno = 12711
pos = 0,enemynear,const(size.mid.pos.y)
postype = P2
ownpal=1
size.xscale=2
size.yscale=1

[State 12007]
Type=ChangeState
Trigger1=var(9)>180
Value=0
ctrl=1

[Statedef 12711]
anim=10340
sprpriority=4

[State 12711]
Type=Playsnd
Trigger1=time=0
value=S12700,0

[State 3000]
Type=Varset
Trigger1=1
var(4)=IsHelper(3001)+2*IsHelper(3002)+3*IsHelper(3003)+4*IsHelper(3004)+5*IsHelper(3005)+6*IsHelper(3006)

[State 3000]
Type=Varset
Trigger1=1
var(5)= random %360 ; Angle

[State 3000]
Type=Varset
Trigger1=1
var(6)= random %251-125 ; position displacement

[State 3000]
Type=Varset
Trigger1=1
fvar(10)=sin(var(5)*pi/180) ;  Velocity X component

[State 3000]
Type=Varset
Trigger1=1
fvar(11)=cos(var(5)*pi/180) ; Velocity Y component

[State 3000]
Type=Varset
Trigger1=1
fvar(0)=-400*sin(var(5)*pi/180) ;X position (starting) 

[State 3000]
Type=Varset
Trigger1=1
fvar(1)=-400*cos(var(5)*pi/180) ; Y position (starting)

[State 3000]
Type=PosAdd
Trigger1=1
X=-var(6)*cos(var(5)*pi/180)
Y=var(6)*sin(var(5)*pi/180)

[State 3000]
Type=Varset
Trigger1=1
var(0)= 0

[State 3000]
Type=Varset
Trigger1=1
var(1)= 0

[State 3000]
Type=Changestate
Trigger1=1
value=12712

[Statedef 12712]

[State 539]
Type = Projectile
Trigger1 = var(1)=10
Attr              = A, HP
Damage            = floor(105*root,fvar(39)),0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,34
Guard.PauseTime   = 0,0
Offset            = floor(fvar(0)+800/(40.0+var(3)*4)*var(0)*fvar(10)),floor(fvar(1)+800/(40.0+var(3)*4)*var(0)*fvar(11))
Velocity          = 0,0
ProjID            = 12711
ProjAnim          = 9993
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 1
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
hitsound = S12700,1
HitFlag           = MAFDP
GuardFlag         = 
SparkNo           = -1
guard.sparkno= -1
fall = 1
fall.recover = 0
ground.velocity=-4,-10

[State 1012]
Type=varadd
Trigger1=1
var(0)=1

[State 1015]
Type=ChangeState
Trigger1=1
value=12712+(var(0)>40+var(3)*4)

[Statedef 12713]

[State 2808]
Type=Trans
Trigger1=1
trans=add

[State 2808]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 3012]
Type=VarAdd
Trigger1=time>0
var(1)=1

[State 3012]
Type=VarSet
Trigger1=1
var(3)=10-abs(10-var(1))

[State 3012]
Type=Angledraw
Trigger1=1
value=var(5)+270
;scale=2,1

[State 1012]
Type=varset
Trigger1=1
var(0)=0

[State 3012]
Type=Destroyself
Trigger1=Animtime=0

[State 3012]
Type=Changestate
Trigger1=time>0
value=12712

;
; ***** Card : Sweet *****
;

; ----- Happiness -----
[Statedef 12750]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = ChangeState
Trigger1 = Roundstate>2
Value = 0
Ctrl = 1

[State 12750]
Type=LifeAdd
Trigger1=RoundState=2
value=2
absolute=1

[State 12017]
Type=Explod
Trigger1=1
bindtime=1
removetime=-2
sprpriority=8
anim=21001+(random %2)*100
Pos=random %61-30,-(random % const(size.head.pos.y))
PosType=P1
ownpal=1
scale=0.5,0.5
ID=12750
ignorehitpause=1
supermovetime=99999
pausemovetime=99999

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12751
ID = 12751
Name = "SweetMaster"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.5
Size.yscale=0.5
PauseMoveTime=9999999
Supermovetime=9999999

[State 3009, pause]
type = SuperPause
trigger1 = time=0
darken = 0
time = 150
anim = -1
movetime = 150
p2defmul = 1
sound = S10040,1

[State 3009, pause]
type = ChangeState
Trigger1=time>=150
ctrl=1
value=0

[Statedef 12751]
anim=9999
movetype=I

[State 196]
Type=Helper
Trigger1=time<120
Trigger1=time %10=0
StateNo = 12752
ID = 12752
Name = "Sweet"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
supermovetime=9999999
Size.xscale=1
Size.yscale=1

[State 192]
Type=Destroyself
Trigger1=parent,Stateno!=12750
Trigger2=roundState>2

[Statedef 12752]
anim=10510
movetype=I

[State 523]
Type=VarSet
Trigger1=1
var(17)=(time*4)-30

[State 523]
type = VarSet
trigger1 = 1
fv=0
value = 2*pi*(var(17)/120.0)

[State 523]
Type = BindToParent
Trigger1 = 1
Pos= 60*Cos(fvar(0)),14*Sin(Fvar(0))+const(Size.head.pos.y)+10

[State 523]
Type=Sprpriority
Trigger1=1
value=3-6*(((var(17)+120) %120)>=60)

[State 523]
Type=AngleAdd
Trigger1=1
value=time

[State 523]
Type=AngleDraw
Trigger1=1
scale=0.8-((var(17) %120)<=60)*abs((var(17) %120)-30)*0.01-((var(17) %120)>60)*(0.6-abs((var(17) %120)-90)*0.01),0.8-((var(17) %120)<=60)*abs((var(17) %120)-30)*0.01-((var(17) %120)>60)*(0.6-abs((var(17) %120)-90)*0.01)

[State 197]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 193]
Type=destroyself
trigger1=root,stateno!=12750
Trigger2=roundState>2


;

; ----- Rain of Desserts -----
[Statedef 12760]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12761
ID = 12761
Name = "SweetFall"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
PauseMoveTime=9999999

[State 3009, pause]
type = ChangeState
Trigger1=time>=3
ctrl=1
value=0

[Statedef 12761]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim=9999

[State 12761]
Type = Helper
Trigger1 = Time %60 = 0
StateNo = 12762
ID = 12762
Name = "SweetFall"
Pos = random %320,-250
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
PauseMoveTime=9999999

[State 3009, pause]
type = Destroyself
Trigger1=time>600

[Statedef 12762]
anim=10510

[State 521]
Type=VarSet
Trigger1=1
v=21
value=4000+random

[State 521]
Type=ChangeState
Trigger1=Root,NumProjID(var(21))!=0
value=12762

[State 511]
Type=VarSet
Trigger1=1
v=9
value=0

[State 521]
Type=ChangeState
Trigger1=1
value=12763

[Statedef 12763]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim=10510

[State 12761]
Type=VelAdd
Trigger1=1
Y=0.12

[State 12761]
Type=VelSet
Trigger1=Pos Y>=-7
Y=-Vel Y*0.4

[State 12762]
Type=VelSet
Trigger1=Pos Y>=-7
Trigger1=abs(Vel Y)<1
Y=0

[State 12762]
Type=AssertSPecial
Trigger1=1
flag=noshadow

[State 501]
Type=VarSet
Trigger1=root,ProjContactTime(var(21))=[0,30]
Trigger2=root,ProjHitTime(var(21))=[0,30]
Trigger3=root,ProjCancelTime(var(21))=[0,30]
Trigger4=root,ProjGuardedTime(var(21))=[0,30]
Trigger5=movecontact || movereversed
v=9
value=1

[State 501]
Type=VarAdd
Trigger1=var(9)>0
v=9
value=1

[State 221]
Type = Projectile
Trigger1 = var(9)=0
offset = 0,0
Projanim=10517
ProjID=var(21)
Projremovetime=1
Projremanim=9919
Attr              = A, HT
Damage            = -81,-81
GetPower          = 0
AnimType          = Light
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Guard.Kill = 0
Guard.Dist = 1
affectteam = E
ID = 271
P2StateNo=43816
hitonce = 0

[State 221]
Type = HitDef
Trigger1 = time=0
Attr              = A, HT
Damage            = -80,-80
GetPower          = 0
AnimType          = Light
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Guard.Kill = 0
Guard.Dist = 1
affectteam = F
ID = 271
hitonce = 0

[State 12761]
Type=DestroySelf
Trigger1=time>900
Trigger2=var(9)>0
Trigger3=Movecontact || movereversed

;
; ***** Card : Storm *****
;

; ----- Cyclonic Conducion -----
[Statedef 12800]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 =0,-5
anim=14000

[State 1290]
Type=PlayerPush
Trigger1=1
value=time>340

[State 12800]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 12800]
Type=VelSet
Trigger1=Pos Y<=-100
Y=0

[State 12800]
Type=Posadd
Trigger1=var(59)=0
Trigger1=command="holdfwd"
Trigger2=var(59)>0
Trigger2=p2dist X>0
X=3

[State 12800]
Type=Posadd
Trigger1=var(59)=0
Trigger1=command="holdback"
Trigger2=var(59)>0
Trigger2=p2dist X<0
X=-3

[State 12800]
Type=PlaySnd
Trigger1=time=0
value=12060,0

[State 12800]
Type=Helper
Trigger1=time=0
stateno=12802
ID=12802
postype = p1
pos = 0,0

[State 12800]
Type=Projectile
Trigger1 = time> 10
Attr              = A, HT
Damage            = ceil(cond(ishelper,root,fvar(39),fvar(39))*40),4
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,1
Guard.PauseTime   = 0,0
Offset            = 0,100
Velocity          = 0,0
ProjID            = 12802
ProjAnim          = 10481
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 1
ProjHeightBound   = -400,50
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 30
Ground.HitTime    = 30
Air.HitTime       = 30
Ground.Velocity   = 0.5,-3
Guard.Velocity    = -6
Air.Velocity      = 0,-3
AirGuard.Velocity = -6,-5
P2StateNo=43816
hitonce = 0
ID=12801
persistent=10
guard.kill=0

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = Enemy(0),StateNo=[12805,12806]
Trigger1 = time %3=1
StateNo = 6010
ID = 6013
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(0),StateNo=[12805,12806]
Trigger1 = time %3=1
StateNo = 6010
ID = 6013
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 12800]
Type=VarSet
Trigger1=time %20=19
v=9
value=random %200-100

[State 12800]
Type=VarSet
Trigger1=time %20=19
v=9
value=-(random %150-50)

[State 12800]
Type=VarSet
Trigger1=time %20=19
v=21
value=(50+random %100)*(1-2*(random %2))

[State 12800]
Type=Explod
Trigger1=time %20=19
anim = 10360
ID = 12801
Pos = var(21),100
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
scale=abs(var(21)+random %20-10)*0.00909,abs(var(9)-100)*0.01818
sprpriority=10
facing=1-2*(var(21)<0)
PauseMoveTime=9999999

[State 12800]
Type=PlaySnd
Trigger1=time>20
Trigger1=time %20=4
value=12600,1

[State 12800]
Type=Projectile
Trigger1=time>20
Trigger1=time %20=4
Attr              = S, HT
Damage            = floor(cond(ishelper,root,fvar(39),fvar(39))*40)
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,1
Guard.PauseTime   = 0,1
Offset            = var(21),100
Velocity          = 0,0
ProjID            = 12800
ProjAnim          = 10482
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 1
ProjRemoveTime    = 5
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 15
Ground.HitTime    = 15
Air.HitTime       = 15
Ground.Velocity   = 0.5,-8
Guard.Velocity    = 0
Air.Velocity      = 0.5,-8
AirGuard.Velocity = 0,-8
P2StateNo=43816
hitonce = 0
ID=12612

[State 12800]
Type=ChangeState
Trigger1=time>340
ctrl=1
Value=50

[Statedef 12802]
Type=A
Movetype=I
Physics=N
anim=12060
sprpriority=2

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 12006]
Type=Trans
Trigger1=1
trans=add

[State 12802]
Type=Changeanim
Trigger1=anim=12060
Trigger1=time>340
value=12061

[State 12802]
Type=Posset
Trigger1=1
X=parent,pos X
Y=0

[State 12802]
Type=destroyself
Trigger1=anim=12061
Trigger1=animtime=0

[Statedef 12801]
Type=A
MoveType=A
Physics=N
anim=10360
ctrl=0

[State 12801]
Type=DestroySelf
Trigger1=animtime=0

[Statedef 12805]
Type=A
MoveType=H
Physics=N
anim=5030
ctrl=0
velset= 0,0

[State 12805]
Type=PosAdd
Trigger1=1
X=-5
Y=-1

[State 12805]
Type=SelfState
Trigger1=time>3
ctrl=1
value=50

[Statedef 12806]
Type=A
MoveType=H
Physics=N
anim=5030
velset= 0,0
ctrl=0

[State 12806]
Type=PosAdd
Trigger1=1
X=5
Y=-1

[State 12805]
Type=SelfState
Trigger1=time>3
ctrl=1
value=50

;

; ----- Greater Tornado -----
[Statedef 12810]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 12817
slot = 6
time = 1

[State 13551]
Type=Helper
Trigger1=NumHelper(13851)=0
ID = 13851
stateno= 13851
Postype=left
pos= 0,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 13551]
Type=Helper
Trigger1=NumHelper(13852)=0
ID = 13852
stateno= 13851
Postype=left
pos= 320,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 12007]
Type=Varset
Trigger1=1
v=9
value=-1

[State 240]
Type = ChangeState
Trigger1 = Time>0
Value = 12817

[Statedef 12817]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0
Sprpriority=9

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=var(9)<=860
attr = SCA, AA, AP, AT
stateno = 12817
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12817]
Type = Helper
Trigger1 = var(9) %60 = 31
Trigger1 = var(9) <710
StateNo = 12811
ID = 12811
Name = "Tornado"
Pos = 160,0
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1

[State 12817]
Type = Helper
Trigger1 = var(9) %60 = 1
Trigger1 = var(9) <710
StateNo = 12812
ID = 12812
Name = "Tornado"
Pos = 160,0
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1

[State 12800]
Type=Projectile
Trigger1 = var(9) % 5 = 0
Trigger1 = var(9) <710
offset = 0, 50-(random %220)
Postype=back
Projanim=10240
ProjID=10240
ProjRemove=0
Projsprpriority = 2
Projmisstime =999
ProjRemovetime=999
ProjScale=0.2,0.2
velocity = 9,-1-0.004*random
accel = -0.18,0
Attr              = A, HP
Damage            = 2,0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = L
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 7
Ground.HitTime    = 7
Air.HitTime       = 7
Ground.Velocity   = -4,-3
Air.Velocity      = -4,-3
AirGuard.Velocity = -4,-3
Guard.Kill = 0
ID = 12810
P2StateNo=43816

[State 12800]
Type=Projectile
Trigger1 = var(9) % 5 = 0
Trigger1 = var(9) <710
offset = 0,50- (random %220)
Postype=front
Projanim=10240
ProjID=10240
ProjRemove=0
Projsprpriority = 2
Projmisstime =999
ProjRemovetime=999
ProjScale=0.2,0.2
velocity = -9,-1-0.004*random
accel = 0.18,0
Attr              = A, HP
Damage            = 2,0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = L
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 2
Ground.HitTime    = 2
Air.HitTime       = 2
Ground.Velocity   = -4,-3
Air.Velocity      = -4,-3
AirGuard.Velocity = -4,-3
Air.Fall = 1
Guard.Kill = 0
P2StateNo=43816

[State 4000]
Type=Helper
Trigger1 = var(9)=[120,710]
trigger1 = random % 80 = 1
stateno = 12612
ID = 12612
postype = P1
pos = -random %640+320,0

[State 260]
Type = Projectile
Trigger1 = var(9) % 21=1
Attr              = C, HT
Damage            = 4,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 140+random % 40,0
PosType		  = back
Velocity          = 0,0
ProjID            = 20012
ProjAnim          = 20012
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 3
ProjMissTime      = 30
ProjScale         = 0.5,0.5
Projsprpriority = 2
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 52
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = A
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 35
Ground.HitTime    = 35
Air.HitTime       = 4
Ground.Velocity   = -1,random %12-6
airguard.velocity = -1,-3     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1,-3           ;X-velocity at which opponent is pushed,
Air.Fall = 1
Fall.Recover = 1
Fall.Damage = 50
P2StateNo=43816
hitonce = 0

[State 12800]
Type=Projectile
Trigger1 = var(9) % 10 = 0
Trigger1 = var(9) =[270,820]
offset = random % 320, -320
Postype=back
Projanim=10230
ProjID=10230
ProjRemove=0
Projsprpriority = 5
Projmisstime =999
ProjRemovetime=999
ProjScale=0.2,0.2
velocity = 0.004*(random-500),5
accel = 0.12,0.08
Attr              = A, HP
Damage            = 5,0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = M
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 5
Ground.HitTime    = 5
Air.HitTime       = 5
Ground.Velocity   = 4,2
Air.Velocity      = 4,2
AirGuard.Velocity = 4,2
Air.Fall = 1
Guard.Kill = 0
ID = 12810
P2StateNo=43816

[State 260]
Type = Projectile
Trigger1 = var(9) % 3 = 0
Attr              = A, HT
Damage            = 1,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 160,0
PosType		  = back
Velocity          = 0,0
ProjID            = 12817
ProjAnim          = 12817
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 10
ProjScale         = 0.5,0.5
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 5
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 35
Ground.HitTime    = 35
Air.HitTime       = 4
Ground.Velocity   = 0,-0.5
airguard.velocity = 0,-0.5    ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = 0,-0.5           ;X-velocity at which opponent is pushed,
Air.Fall = 1
Fall.Recover = 1
Fall.Damage = 50
P2StateNo=43816
hitonce = 0

[State 260]
Type = Projectile
Trigger1 = var(9) %30 =1
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 80,0
PosType		  = back
Velocity          = 0,0
ProjID            = 12817
ProjAnim          = 12817
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 3
ProjMissTime      = 30
ProjScale         = 0.5,0.5
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 52
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = MAFD
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 30
Ground.HitTime    = 30
Air.HitTime       = 30
Ground.Velocity   = -3,0
airguard.velocity = -3,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3,0           ;X-velocity at which opponent is pushed,
P2StateNo=43816
hitonce = 0

[State 260]
Type = Projectile
Trigger1 = var(9) %30 =1
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 240,0
PosType		  = back
Velocity          = 0,0
ProjID            = 12817
ProjAnim          = 12817
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 3
ProjMissTime      = 30
ProjScale         = 0.5,0.5
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 52
ProjHeightBound   = -400,50
HitFlag           = MAFD
GuardFlag         = MAFD
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 30
Ground.HitTime    = 30
Air.HitTime       = 30
Ground.Velocity   = 3,0
airguard.velocity = 3,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = 3,0           ;X-velocity at which opponent is pushed,
P2StateNo=43816
hitonce = 0

[State 240]
Type = PlaySnd
Trigger1 = var(9) % 30=1
Trigger1 = var(9) < 300
Value = 12060,0
channel = random %8

[State 12007]
Type=ChangeState
Trigger1=var(9)>860
Value=0
ctrl=1

[Statedef 12811]
Type=A
MoveType=A
Physics=N
anim=12060
Sprpriority=4

[State 12811]
Type=Trans
Trigger1=1
trans=addalpha
alpha=192-(time>60)*(time-60)*2,256

[State 12811]
Type=VarSet
Trigger1=time=0
fvar(1)=0.3

[State 12811]
Type=VarSet
Trigger1=1
fvar(1)=fvar(1)*1.023

[State 12811]
Type=Angledraw
Trigger1=1
scale=fvar(1),fvar(1)

[State 12811]
Type=Destroyself
Trigger1=time>=124

[Statedef 12812]
Type=A
MoveType=A
Physics=N
anim=12060
Sprpriority=4

[State 12811]
Type=Trans
Trigger1=1
trans=addalpha
alpha=64,256

[State 12811]
Type=VarSet
Trigger1=time=0
fvar(1)=15

[State 12811]
Type=VarSet
Trigger1=1
fvar(1)=fvar(1)/1.023

[State 12811]
Type=Angledraw
Trigger1=1
scale=fvar(1),2

[State 12811]
Type=Destroyself
Trigger1=fvar(1)<0.2


;
; ***** Card : Song *****
;

; ----- Healing Song -----
[Statedef 12850]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 12850]
Type = Helper
Trigger1 = Time=0
StateNo = 12851
ID = 12851
Name = "Song"
Pos = 30,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
pausemovetime=99999
supermovetime=99999

[State 12850]
Type=Changestate
Trigger1=1
value=0
ctrl=1

[Statedef 12851]
Type=A
movetype=I
Physics=N
anim=10670
sprpriority=4

[State 12850]
Type=AssertSpecial
Trigger1=1
flag=Nomusic

[State 12850]
Type=Explod
Trigger1=time=0
anim=10540
ID = 10670
Postype=P1
pos= 0,0
bindtime=1
removetime=-1
vel=0,0
sprpriority=8
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 12850]
Type=Explod
Trigger1=time=0
anim=8990
ID = 10670
Postype=P1
pos= -15,-50
bindtime=1
vel=0,0
sprpriority=2
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 1000, dm sound]
type = Playsnd
trigger1 = time=0
value = 12850,0
channel=5

[State 1000, dm sound]
type = Stopsnd
Trigger1=NumHelper(13001)>0
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,numhelper(13001)>0
Trigger2=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
channel=5

[State 12851]
Type=removeexplod
Trigger1=time>=1800
Trigger2=NumHelper(13001)>0
Trigger3=enemy,authorname="Seravy"
Trigger3=enemy,numhelper(13001)>0
Trigger3=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"

[State 12851]
Type=destroyself
Trigger1=time>=1800
Trigger2=NumHelper(13001)>0
Trigger3=enemy,authorname="Seravy"
Trigger3=enemy,numhelper(13001)>0
Trigger3=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"



; ----- Levvan Polka -----
[Statedef 12860]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 12860]
Type=NotHitBY
Trigger1=1
value=SAC

[State 12850]
Type=Explod
Trigger1=time=0
anim=10670
ID = 10680
Postype=P1
pos= 30,-Pos Y
bindtime=1
removetime=-1
vel=0,0
sprpriority=4
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 12850]
Type=Explod
Trigger1=time=0
anim=10540
ID = 10680
Postype=P1
pos= 30,-Pos Y
bindtime=1
removetime=-1
vel=0,0
sprpriority=8
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 12850]
Type=Explod
Trigger1=time=0
anim=8990
ID = 10680
Postype=P1
pos= 15,-50-Pos Y
bindtime=1
vel=0,0
sprpriority=2
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State -2]
Type=RemoveExplod
trigger1= time>1500
Trigger2=roundstate>2
Trigger3=NumHelper(13001)>0
Trigger4=enemy,NumHelper(13001)>0
Trigger4=enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
ID=10680

[State -2]
Type=StopSnd
trigger1= time>1500
Trigger2=roundstate>2
Trigger3=NumHelper(13001)>0
Trigger4=enemy,NumHelper(13001)>0
Trigger4=enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
channel=0+IsHelper(14250)*5

[State 1000, state]
type = ChangeState
trigger1 = time>1500
Trigger2=roundstate>2
Trigger3=NumHelper(13001)>0
Trigger4=enemy,NumHelper(13001)>0
Trigger4=enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
value = 0
ctrl = 1

[State 1000, dm sound]
type = Playsnd
trigger1 = time=0
value = 12850,1
channel=0+IsHelper(14250)*5

[State 260]
Type = Projectile
Trigger1 =time=420
Trigger1 =!IsHelper(14250)
Trigger2 =time=360
Trigger2 =IsHelper(14250)
Attr              = A, HA
Damage            = 30,15
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,30
Guard.PauseTime   = 0,30
Offset            = P2Dist X-100,P2Dist Y
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 10680
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 9999
ProjMissTime      = 22
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 1
ProjRemoveTime    = 1100
ProjHeightBound   = -400,50
HitFlag           = MA
GuardFlag         = MA
SparkNo           = S6003
Guard.sparkno = S4040
Projedgebound=9999
Projstagebound=9999
SparkXY           = 80,-80
HitSound          = S12860,0
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
guard.kill=0
P2StateNo=43816

[State 12850]
Type=AssertSpecial
Trigger1=1
flag=Nomusic
flag2=timerfreeze


; ----- Trumpet of Victory -----
[Statedef 12870]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 12871
ID = 12871
Name = "SongOfVictory"
Pos = 160,0
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
PauseMoveTime=9999999
SuperMoveTime=9999999

[State 1000, state]
type = ChangeState
trigger1 = 1
value = 0
ctrl=1

[Statedef 12871]
Type=A
MoveType=I
Physics=N
ctrl=0
anim=9999

[State 12871]
Type=Turn
Trigger1=Facing=-1

[State 12850]
Type=Explod
Trigger1=time=0
anim=10670
ID = 10670
Postype=P1
pos= 30,0
bindtime=1
removetime=-1
vel=0,0
sprpriority=4
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 12850]
Type=Explod
Trigger1=time=0
anim=10540
ID = 10670
Postype=P1
pos= 30,0
bindtime=1
removetime=-1
vel=0,0
sprpriority=8
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 12850]
Type=Explod
Trigger1=time=0
anim=8990
ID = 10670
Postype=P1
pos= 15,-50
bindtime=1
vel=0,0
sprpriority=2
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 12871]
Type=AssertSpecial
Trigger1=1
flag=NoMusic

[State 1000, dm sound]
type = Playsnd
trigger1 = time=0
value = 12870,0
channel=5
loop = 1

[State 12850]
Type=Explod
Trigger1=time % 40=1
anim=8986+random %4
ID = 12871
Postype=P1
pos= 30,-95
bindtime=1
vel=0,-1
accel=0,-0.01
sprpriority=5
ownpal=1
scale= 0.5,0.5
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 12871]
Type=RemoveExplod
Trigger1=time>=5890
Trigger2=NumHelper(13001)>0
Trigger3=enemy,authorname="Seravy"
Trigger3=enemy,numhelper(13001)>0
Trigger3=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
ID=10670

[State 12871]
Type=StopSnd
Trigger1=time>=5900
Trigger2=NumHelper(13001)>0
Trigger3=enemy,authorname="Seravy"
Trigger3=enemy,numhelper(13001)>0
Trigger3=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
channel=5

[State 12871]
Type=VarSet
Trigger1=1
var(9)=((time %300)=60)*(random %126)

; Eternal Command
[State 4140]
Type = ParentVarSet
Trigger1=var(9)=[1,9]
v=24
value=900

[State 4140]
Type = ParentVarSet
Trigger1=var(9)=[1,9]
v=47
value=power

;Dimension Walk
[State 14300]
Type=ParentVarSet
Trigger1=var(9)=[10,12]
v=19
value=1

; Super Strength
[State 240]
Type=ParentVarAdd
trigger1 = var(9)=[13,30]
v=25
value=900

; Quick Jump
[State 450]
Type = ParentVarSet
Trigger1 = var(9)=[31,35]
v=17
value=2

; Invisibility
[State 4140]
Type = ParentVarSet
Trigger1= var(9)=[36,38]
v=13
value=900

; Evasive Action
[State 450]
Type = ParentVarSet
Trigger1 = var(9)=[39,50]
v=17
value=1

; Levitation
[State 14000]
Type = ParentVarSet
Trigger1=var(9)=[51,60]
Trigger1=!(Parent,Ishelper)
V=22
value=1500

; LightSpeed
[State 14000]
Type = ParentVarSet
Trigger1=var(9)=[61,80]
V=23
value=10720

; Breakthrough

[State 14000]
Type = ParentVarSet
Trigger1=var(9)=[81,99]
V=23
value=720

; Dash - Speed up

[State 14300]
Type=ParentVarSet
Trigger1=var(9)=[100,110]
v=18
value=1800

[State 591]
Trigger1=var(9)=[111,125]
trigger1 = NumHelper(13111)=0
Type=Helper
StateNo = 13111
ID = 13111
Name = "Shield"
Pos = 20,-70
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.1
Size.YScale = 0.1

[State 12871]
Type=Destroyself
Trigger1=time>=5900
Trigger2=NumHelper(13001)>0
Trigger3=enemy,authorname="Seravy"
Trigger3=enemy,numhelper(13001)>0
Trigger3=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"

;
; ***** Card : Snow *****
;

; ----- Ice Age -----
[Statedef 12900]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time=0
trigger1 = NumHelper(12901)=0
stateno = 12901
ID = 12901
Pos = 150,-110
PosType = Back
pausemovetime=99999
;supermovetime=99999
OwnPal=1

[State 12900]
Type=VarSet
Trigger1=time=0
v=27
value=0

[State 12900]
Type=VarSet
Trigger1=time=0
v=28
value=0

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[Statedef 12901]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 4000]
Type=Helper
trigger1 = time=0
stateno = 12902
ID = 12902
Pos = 0,0
PosType = P1
pausemovetime=99999
;supermovetime=99999

[State 4000]
Type=Helper
trigger1 = time=0
stateno = 12903
ID = 12903
Pos = 0,0
PosType = P1
pausemovetime=99999
;supermovetime=99999

[State 4000]
Type=Helper
trigger1 = time=0
stateno = 12904
ID = 12904
Pos = 0,0
PosType = P1
pausemovetime=99999
;supermovetime=99999

[State 12901]
Type=PlaySnd
Trigger1=time %800=480
Trigger2=Ishelper(12911)
Trigger2=time %800=80
value=12901,0

[State 12901]
Type=Helper
Triggerall=P2Name!="Cirno"
Trigger1=RoundState=2
trigger1=root,var(27)>180
trigger1=root,StateNo!=13861
trigger1=Cond(NumHelper(4141),helper(4141),Stateno!=13861,1)
trigger1=P2StateNo!=13951
Trigger1=P2StateNo!=[13551,13559]
trigger1=numhelper(12906)=0
name="Freezer"
stateno=12906
ID=12906
postype=P2
pos=0,-30

[State 12901]
Type=Helper
Trigger1=RoundState=2
trigger1=root,var(28)>180
trigger1=root,StateNo!=13861
trigger1=Cond(NumHelper(4141),helper(4141),Stateno!=13861,1)
trigger1=P2StateNo!=13951
Trigger1=P2StateNo!=[13551,13559]
trigger1=numhelper(12907)=0
name="Freezer"
stateno=12907
ID=12907
postype=P1
pos=facing*(root,pos X-pos X),(root,pos Y-pos Y)-30

[State 12901]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12000,12009]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,stateno=1270
Trigger2=enemy,name="Seravy"
Trigger3=parent,stateno=[12000,12009]
Trigger4=root,stateno=[12000,12009]
Trigger5=NumHelper(14250)
Trigger5=helper(14250),stateno=[12000,12009]
Trigger5=helper(14250),time>50
Trigger6=NumHelper(4141)
Trigger6=helper(4141),stateno=[12000,12009]
Trigger6=helper(4141),time>50
value=12905

[Statedef 12906]
anim=9997
movetype=A
Type=A
Physics=N

[State 539, Snow]
Type = HitDef
Trigger1=root,var(27)>=150
Trigger1=gametime %300 !=[250,260]
Attr              = A, SA
Damage            = 0,0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
P2StateNo=13951
ignorehitpause=1
ID=12906

[State 12906]
Type=ChangeState
Trigger1=Numtarget(12906)>0
Trigger1=target(12906),stateno=13951
value=6868

[State 12906]
Type=Destroyself
Trigger1=root,var(27)<150

[Statedef 12907]
anim=9997
movetype=A
Type=A
Physics=N

[State 539, Snow]
Type = HitDef
Trigger1=root,var(28)>=150
Trigger1=gametime %300 !=[250,260]
Attr              = A, SA
Damage            = 0,0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
affectteam=F
P2StateNo=13951
ignorehitpause=1
ID=12907

[State 12906]
Type=ChangeState
Trigger1=Movehit
Trigger1=target(12907),stateno=13951
Trigger1=Numtarget(12907)>0
value=6868

[State 12906]
Type=Destroyself
Trigger1=root,var(28)<150


[Statedef 12902]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 7703]
Type=Explod
Trigger1=1
anim=10600
ID = 12901
Postype=P1
pos= floor(time %21*32-Pos X-320),floor(random %20-40-Pos Y-200)
bindtime=240
removetime=240
;ontop=1
vel=0,0
sprpriority=99
ownpal=0
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
;Supermovetime=9999
Trans=add

[State 12901]
Type=VelSet
Trigger1=parent,time %800<480
X=(1-2*((time/60)%2))*0.1*(random %20)
Y=1

[State 12901]
Type=VelSet
Trigger1=parent,time %800>=480
Trigger2=parent,Ishelper(12911)
X=3-6*((time/60)%2)
Y=1

[State 12901]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12000,12009]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,stateno=1270
Trigger2=enemy,name="Seravy"
Trigger3=parent,stateno=[12000,12009]
Trigger4=root,stateno=[12000,12009]
Trigger5=NumHelper(14250)
Trigger5=helper(14250),stateno=[12000,12009]
Trigger5=helper(14250),time>50
Trigger6=NumHelper(4141)
Trigger6=helper(4141),stateno=[12000,12009]
Trigger6=helper(4141),time>50
value=12905

[Statedef 12903]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 7703]
Type=Explod
Trigger1=1
anim=10600
ID = 12902
Postype=P1
pos= floor(time %21*32-Pos X-320),floor(random %20-40-Pos Y-200)
bindtime=240
removetime=240
;ontop=1
vel=0,0
sprpriority=99
ownpal=0
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
;Supermovetime=9999
Trans=add

[State 12901]
Type=VelSet
Trigger1=parent,time %800<480
X=(1-2*(((time-20)/60)%2))*0.1*(random %20)
Y=1

[State 12901]
Type=VelSet
Trigger1=parent,time %800>=480
Trigger2=parent,Ishelper(12911)
X=3-6*(((time)/60)%2)
Y=1

[State 12901]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12000,12009]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,stateno=1270
Trigger2=enemy,name="Seravy"
Trigger3=parent,stateno=[12000,12009]
Trigger4=root,stateno=[12000,12009]
Trigger5=NumHelper(14250)
Trigger5=helper(14250),stateno=[12000,12009]
Trigger5=helper(14250),time>50
Trigger6=NumHelper(4141)
Trigger6=helper(4141),stateno=[12000,12009]
Trigger6=helper(4141),time>50
value=12905

[Statedef 12904]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 7703]
Type=Explod
Trigger1=1
anim=10600
ID = 12903
Postype=P1
pos= floor(time %21*32-Pos X-320),floor(random %20-40-Pos Y-200)
bindtime=240
removetime=240
;ontop=1
vel=0,0
sprpriority=99
ownpal=0
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
;Supermovetime=9999
Trans=add

[State 12901]
Type=VelSet
Trigger1=parent,time %800<480
X=(1-2*(((time-40)/60)%2))*0.1*(random %20)
Y=1

[State 12901]
Type=VelSet
Trigger1=parent,time %800>=480
Trigger2=parent,Ishelper(12911)
X=3-6*(((time)/60)%2)
Y=1

[State 12901]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12000,12009]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,stateno=1270
Trigger2=enemy,name="Seravy"
Trigger3=parent,stateno=[12000,12009]
Trigger4=root,stateno=[12000,12009]
Trigger5=NumHelper(14250)
Trigger5=helper(14250),stateno=[12000,12009]
Trigger5=helper(14250),time>50
Trigger6=NumHelper(4141)
Trigger6=helper(4141),stateno=[12000,12009]
Trigger6=helper(4141),time>50
value=12905

[Statedef 12905]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 12901]
Type=RemoveExplod
Trigger1=1
ID=12903

[State 12901]
Type=RemoveExplod
Trigger1=1
ID=12902

[State 12901]
Type=RemoveExplod
Trigger1=1
ID=12901

[State 12901]
Type=RemoveExplod
Trigger1=1
ID=12271

[State 12901]
Type=RemoveExplod
Trigger1=1
ID=12281

[State 12906]
Type=ParentVarSet
Trigger1=time>10
Trigger1=IsHelper(13451)
var(58)=var(58)-2

[State 12902]
Type=DestroySelf
Trigger1=time>10

;

; ----- Snowstorm -----
[Statedef 12910]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time=0
trigger1 = NumHelper(12911)=0
stateno = 12911
ID = 12911
Pos = 150,-110
PosType = Back
pausemovetime=99999
;supermovetime=99999
OwnPal=1

[State 12900]
Type=VarSet
Trigger1=time=0
v=42
value=0

[State 12900]
Type=VarSet
Trigger1=time=0
v=43
value=0

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[Statedef 12911]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 12901]
Type=PlaySnd
Trigger1=time %400=80
value=12901,0

[State 7703]
Type=Explod
Trigger1=1
anim=10600
ID = 12901
Postype=left
pos= -20,random %280-100
bindtime=1
removetime=240
;ontop=1
vel=5+random %8,1
sprpriority=99
ownpal=0
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
;Supermovetime=9999
Trans=add

[State 7703]
Type=Explod
Trigger1=1
anim=10600
ID = 12901
Postype=left
pos= -20,random %280-100
bindtime=1
removetime=240
;ontop=1
vel=5+random %8,1
sprpriority=99
ownpal=0
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
;Supermovetime=9999
Trans=add

[State 7703]
Type=Explod
Trigger1=1
anim=10600
ID = 12901
Postype=left
pos= -20,random %280-100
bindtime=1
removetime=240
;ontop=1
vel=5+random %8,1
sprpriority=99
ownpal=0
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
;Supermovetime=9999
Trans=add

[State 12901]
Type=Helper
Triggerall=P2Name!="Cirno"
Trigger1=RoundState=2
trigger1=root,var(42)>60
trigger1=root,StateNo!=13861
trigger1=Cond(numhelper(4141),helper(4141),Stateno!=13861,1)
trigger1=P2StateNo!=13951
Trigger1=P2StateNo!=[13551,13559]
trigger1=numhelper(12916)=0
name="Freezer"
stateno=12916
ID=12916
postype=P2
pos=0,-30

[State 12901]
Type=Helper
Trigger1=RoundState=2
trigger1=root,var(43)>60
trigger1=root,StateNo!=13861
trigger1=Cond(numhelper(4141),helper(4141),Stateno!=13861,1)
trigger1=P2StateNo!=13951
Trigger1=P2StateNo!=[13551,13559]
trigger1=numhelper(12917)=0
name="Freezer"
stateno=12917
ID=12917
postype=P1
pos=facing*floor(root,pos X-pos X),floor(root,pos Y-pos Y)-30

[State 12901]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12000,12009]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,stateno=1270
Trigger2=enemy,name="Seravy"
Trigger3=parent,stateno=[12000,12009]
Trigger4=root,stateno=[12000,12009]
Trigger5=NumHelper(14250)
Trigger5=helper(14250),stateno=[12000,12009]
Trigger5=helper(14250),time>50
Trigger6=NumHelper(4141)
Trigger6=helper(4141),stateno=[12000,12009]
Trigger6=helper(4141),time>50
value=12905

[Statedef 12916]
anim=9997
movetype=A
Type=A
Physics=N

[State 539, Snow]
Type = HitDef
Trigger1=root,var(42)>=30
Trigger1=gametime %300 !=[250,260]
Attr              = A, SA
Damage            = 0,0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
P2StateNo=13951
ignorehitpause=1
ID=12916

[State 12906]
Type=ChangeState
Trigger1=Numtarget(12916)>0
Trigger1=target(12916),stateno=13951
value=6868

[State 12906]
Type=Destroyself
Trigger1=root,var(42)<30

[Statedef 12917]
anim=9997
movetype=A
Type=A
Physics=N

[State 539, Snow]
Type = HitDef
Trigger1=root,var(43)>=30
Trigger1=gametime %300 !=[250,260]
Attr              = A, SA
Damage            = 0,0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
affectteam=F
P2StateNo=13951
ignorehitpause=1
ID=12917

[State 12906]
Type=ChangeState
Trigger1=Movehit
Trigger1=target(12917),stateno=13951
Trigger1=Numtarget(12917)>0
value=6868

[State 12906]
Type=Destroyself
Trigger1=root,var(43)<30

;
; ***** Card : Sleep *****
;

; ----- Lullaby -----
[Statedef 12950]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time=10
trigger1 = NumHelper(12951)=0
stateno = 12951
ID = 12951
Pos = 0,-100
PosType = P1
pausemovetime=99999
Size.xscale=0.25
Size.yscale=0.25
ownpal=1

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[Statedef 12951]
type = A
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim = 10660
sprpriority=-1

[State 12017]
Type=Explod
Trigger1=time<1150
bindtime=1
removetime=-2
sprpriority=-1
anim=21002+(random %2)*100
Pos=random %7-3,random %7-3
Vel=-vel X,-vel Y
PosType=P1
ownpal=1
scale=0.5,0.5
ID=12951
ignorehitpause=1

[State 12951]
Type=Playerpush
Trigger1=1
value=0

[State 13051]
Type=VelSet
Trigger1=1
X=4-0.4*(random%20)
Y=2-0.2*(random%20)
persistent=80

[state 1652, HitSide]
type = VelSet
trigger1 = (Vel X > 0) && (FrontEdgeDist <= 18)
trigger2 = (Vel X < 0) && (BackEdgeDist <= 18)
X=-vel X

[State 13051]
Type=VelSet
Trigger1=Vel Y>0
Trigger1=Pos Y>-30
Trigger2=Vel Y<0
Trigger2=Pos Y<-140
Y=-Vel Y

[State 13051]
Type=Null;VelSet
Trigger1=Vel X>0
Trigger1=Pos X>150
Trigger2=Vel X<0
Trigger2=Pos X<-150
X=-Vel X

[State 13051]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 13051]
Type=Veladd
Trigger1=1
X=-Vel X*0.01
Y=-Vel Y*0.01

[State 13051]
Type=DestroySelf
Trigger1=time>1200

[State 13951]
Type=PalFX
Trigger1=1
add=-50,-50,255
time=-1

[State 500]
Type=Helper
Trigger1=root,ProjHitTime(12951)=[0,30]
Triggerall=NumHelper(12953)=0
StateNo = 12953
ID = 12953
Name = "StarHitspark"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
Supermovetime=999999
Pausemovetime=999999

[State 539]
Type = Projectile
Trigger1 = 1
Attr              = A, NA
Damage            = 0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 0,0
Velocity          = 0,0
ProjID            = 12951
ProjAnim          = 9996
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -400,50
HitFlag           = MA
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
P2StateNo=IfELse(Root,var(39)=43816,12952,43816)
Guard.Dist=30

[Statedef 12952]
Type=C
movetype = H
physics = N
poweradd = 0
ctrl = 0
sprpriority=11
velset=0,3

[State 12952]
Type=Changeanim2
Triggerall=time=0
triggerall=anim!=[12952,12954]
Trigger1=name="Silver"
Trigger1=authorname="Seravy"
value=12952

[State 12952]
Type=Changeanim2
Triggerall=time=0
triggerall=anim!=[12952,12954]
Trigger1=name="Ecoco"
Trigger1=authorname="Noah"
value=12953

[State 12952]
Type=Changeanim2
Triggerall=time=0
triggerall=anim!=[12952,12954]
Trigger1=name="Sakura Kinomoto"
Trigger1=authorname="Noah"
value=12954

[State 12952]
Type=Changeanim
Triggerall=time=0
trigger1=anim!=[12952,12954]
value=5110

[State 12952]
Type=StateTypeSet
Trigger1=Pos Y<0
StateType=A

[State 12952]
Type=StateTypeSet
Trigger1=Pos Y>=0
StateType=C

[State 12952]
Type=PowerAdd
Triggerall=enemy,numhelper(12281)>0
Triggerall=enemy,numhelper(12951)=0
Trigger1=(PowerMax<4000)
Trigger1=Power>=Powermax/2
Trigger2=Powermax>=4000
Trigger2=Power>=2000
value=IfElse(Powermax<=3000,Powermax/6,500)

[State 12952]
type=poweradd
trigger1=gametime %2=0
value=7-2*(PowerMax<=3999)-(enemy,numhelper(12281)>0)

[State 12952]
Type=Playerpush
Trigger1=1
value=0

[State 12952]
Type=VelAdd
Trigger1=Pos Y<0
y=0.5

[State 12952]
TYpe=VelAdd
Trigger1=1
X=-(Vel X*0.3)

[State 12952]
Type=VelSet
Trigger1=Pos Y>=0
y=0

[State 12952]
Type=SelfState
Trigger1=RoundState>2
Trigger1=life=0
value=5150

[State 12952]
Type=SelfState
Triggerall=enemy,numhelper(12281)>0  ; Dark but no sleep 
Triggerall=enemy,numhelper(12951)=0  ; Wake up if enough power
Trigger1=(PowerMax<4000)
Trigger1=Power>=Powermax/2
Trigger2=Powermax>=4000
Trigger2=Power>=2000
value=5120

[State 12952]
Type=SelfState
Trigger1=enemy,numhelper(12281)=0   ; No Dark
Trigger1=time>300+100*(NumHelper(13001)+Numhelper(12271)+Numhelper(12281)>0)  ;Wake up after time expires
Trigger2=enemy,numhelper(12951)>0  ; Dark and sleep both in effect
Trigger2=enemy,numhelper(12281)>0  ; Wake up if time expires and enough power
Trigger2=time>300+100*(NumHelper(13001)+Numhelper(12271)+Numhelper(12281)>0)  ;Wake up after time expires
Trigger2=(PowerMax<4000)
Trigger2=Power>=Powermax/2
Trigger3=enemy,numhelper(12951)>0
Trigger3=enemy,numhelper(12281)>0
Trigger2=time>300+100*(NumHelper(13001)+Numhelper(12271)+Numhelper(12281)>0)  ;Wake up after time expires
Trigger3=Powermax>=4000
Trigger3=Power>=2000
value=5120

[Statedef 12953]
Type=A
MoveType=I
Physics=N
Anim=20001
Sprpriority=3
velset=0,0

[State 513]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 4202]
Type=PalFX
Trigger1=1
mul=100,180,256
time=1

[State 513]
Type=Destroyself
Trigger1=animtime=0

;
; ***** Card : Silence *****
;

; ----- Alarm System -----
[Statedef 13000]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type=Helper
trigger1 = time=0
stateno = 13001
ID = 13001
postype = p1
supermovetime=999999
pausemovetime=999999

[State 12871]
Type=StopSnd
Trigger1=time=0
channel=-1

[State 240]
Type = ChangeState
Trigger1 = Time>20
Value = 0
Ctrl = 1

[Statedef 13001]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 9998

[State 12871]
Type=AssertSpecial
Trigger1=1
flag=NoMusic

[State 13001]
Type=VarSet
Trigger1=1
var(9)=-1

[State 13001]
Type=ChangeState
Trigger1=time>0
value=13003

[State 13001]
Type=Null;Destroyself
Trigger1=var(10)>=900

[Statedef 13003]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 9998

[State 13003]
Type=VarAdd
Trigger1=time=0
v=9
value=1

[State 13003]
Type=VarAdd
Trigger1=1
v=10
value=1

[State 12871]
Type=AssertSpecial
Trigger1=1
flag=NoMusic

[State 13003]
Type=VarSet
Trigger1=1
var(10)=random

[State 13001]
Type=HitDef
Triggerall=(var(10)<25) || ((var(10)<75) && (NumHelper(12271)+NumHelper(12281)>0))
Triggerall=enemy(var(9)),movetype!=H
Trigger1=abs(enemy(var(9)),vel X)>=6.7
Trigger2=abs(enemy(var(9)),vel Y)>=6.7
Trigger3=enemy(var(9)),StateNo=100
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Light
HitFlag           = MA
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
P2StateNo=13002
hitonce = 0

[State 13003]
Type=ChangeState
Trigger1=abs(enemy(var(9)),vel X)<6.7
Trigger1=abs(enemy(var(9)),vel Y)<6.7
Trigger1=enemy(var(9)),StateNo!=100
Trigger2=movetype=H
Trigger3=var(10)>=25  && ((var(10)>75) || (NumHelper(12271)+NumHelper(12281)=0))
value=13001+2*(var(9)<numenemy-1)

[Statedef 13002]
Type= S
Physics =N
MoveType= I
velset=0,0
ctrl=0

[State 3009, pause]
type = Null;SuperPause
trigger1 = time =0
darken = 0
time = 20
anim = -1
movetime = 20
p2defmul = 1

[State 396]
Type=Null;NotHitBy
Trigger1=time<=20
Value=SAC

[State 396]
Type=Trans
Trigger1=1
trans=AddAlpha
alpha=(256-12*time)*(time<=20)+(16+(time-20)*12)*(time>20),256-((256-12*time)*(time<=20)+(16+(time-20)*12)*(time>20))

[State 396]
Type=PlaySnd
Trigger1=time=0
Value=S396,0

[State 396]
Type=PosSet
Trigger1=time=20
X=0
Y=0

[State 396]
Type=PosSet
Trigger1=time=20
X=IfElse(enemy,Pos X>0,-250,250)
Y=0

[State 396]
Type=ChangeAnim
Trigger1=time=20
value=5030

[State 396]
Type=SelfState
Trigger1=time>60
Value=0
ctrl=1

;
; ***** Card : Shot *****
;

; ----- Sniping -----
[Statedef 13050]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 13051
ID = 13051
Name = "Shot"
pos =160,0
postype=Back

[State 240]
Type = ChangeState
Trigger1 = 1
Value = 13057

[Statedef 13057]
Type     = S
MoveType = H
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 592]
type = HitOverride
trigger1 = NumHelper(13051)=1
attr = SCA, AA, AP, AT
stateno = 13057
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=ChangeState
Trigger1=NumHelper(13051)=0
Value=0
ctrl=1


; Shot Targeting helper
[Statedef 13051]

[State 6000, Helper]
type = Helper
trigger1 = 1
pos =0,0
postype=P1
stateno = 13059
name = "PDLC99MWTriangle"
id = 24020+var(9)
ownpal = 0

[State 14010]
Type=VarAdd
Trigger1=1
var(9)=1

[State 14010]
Type=Changestate
Trigger1=1
value=13051+(var(9)>=24)

[Statedef 13052]
Type=A
MoveType=I
Physics=N
anim=9999

[State 14011]
Type=Playsnd
Trigger1=time %10=0
value=S13050,0

[State 2611]
Type=VelSet
Trigger1=P2Dist X>3
X=1.6

[State 2611]
Type=VelSet
Trigger1=P2Dist X>30
X=2.8

[State 2611]
Type=VelSet
Trigger1=P2Dist X>90
X=3.9

[State 2611]
Type=VelSet
Trigger1=P2Dist X=[3,-3]
X=0

[State 2611]
Type=VelSet
Trigger1=P2Dist X<-3
X=-1.6

[State 2611]
Type=VelSet
Trigger1=P2Dist X<-30
X=-2.8

[State 2611]
Type=VelSet
Trigger1=P2Dist X<-90
X=-3.9

[State 2611]
Type=VelSet
Trigger1=P2Dist Y>48
Y=2.4

[State 2611]
Type=VelSet
Trigger1=P2Dist Y=[42,48]
Y=0

[State 2611]
Type=VelSet
Trigger1=P2Dist Y<42
Y=-2.4

[State 2611]
Type=VarAdd
triggerall=var(0)<80
Trigger1=abs(p2Dist X)<10
Trigger1=abs(p2Dist Y-45)<10
var(0)=1

[State 14011]
Type=Playsnd
Trigger1=var(0)>=40
value=S13050,1
persistent=0

[State 14011]
Type=Playsnd
Trigger1=var(0)>=65
value=S13050,1
persistent=0

[State 14011]
Type=Playsnd
Trigger1=var(0)>=80
value=S13050,1
persistent=0

[State 2600]
Type=Helper
Trigger1 = var(0)>=80
StateNo = 13053
ID = 13053
Name = "Explosion"
Pos = 0, -45
PosType = P2
Ownpal = 1
Size.xscale=1.5
Size.yscale=1.5
IgnoreHitPause = 1
persistent=0

[State 2600]
Type=Destroyself
Trigger1=time>=400
Trigger2=var(0)>=80

[Statedef 13053]
Type=A
MoveType=A
Physics=N
anim=10710

[State 14012]
Type=Playsnd
Trigger1=time=0
value=S13060,6
volumescale=300

[State 2402]
type = HitDef
trigger1 = Time = 1
attr = A, HT
hitflag=MAFD
guardflag=
animtype  = Heavy
damage    = 300
getpower = 0 , 0
givepower = 250
pausetime = 0 , 20
sparkno = -1
sparkxy = -10,-10
hitsound = s500,24
ground.type = Low
ground.slidetime = 30
ground.hittime  = 60
ground.velocity = random %31-15, -8
air.velocity = random %31-15,-8
hitonce=0
fall = 1
fall.recover = 0 
fall.damage = 0 
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
ID=13050

[State 2612]
Type=StateTypeSet
Trigger1=movehit>=5
movetype=I

[State -2]
Type = Explod
Trigger1=MoveHit=[1,5]
anim = 2500
ID = 2500
Pos = random %41-20,random %61-30
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Sprpriority=5

[State 1001]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 2612]
Type=Destroyself
Trigger1=animtime=0


[Statedef 13059]
Type=A
Movetype=I
Physics=N
anim=13059
sprpriority=10

[State 14020]
Type=Trans
Trigger1=1
trans=add

[State 1001]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 14020]
Type=VarSet
Trigger1=time=0
var(1)=60 ; Base distance

[State 14020]
Type=VarAdd
Triggerall=time=0
Trigger1=IsHelper(24028)
Trigger2=IsHelper(24029)
Trigger3=IsHelper(24030)
Trigger4=IsHelper(24031)
Trigger5=IsHelper(24032)
Trigger6=IsHelper(24033)
Trigger7=IsHelper(24034)
Trigger8=IsHelper(24035)
var(1)=30

[State 24020]
Type=VarAdd
Triggerall=time=0
Trigger1=IsHelper(24036)
Trigger2=IsHelper(24037)
Trigger3=IsHelper(24038)
Trigger4=IsHelper(24039)
Trigger5=IsHelper(24040)
Trigger6=IsHelper(24041)
Trigger7=IsHelper(24042)
Trigger8=IsHelper(24043)
var(1)=60

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24021)
Trigger2=IsHelper(24029)
Trigger3=IsHelper(24037)
var(2)=45 ; Angle

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24022)
Trigger2=IsHelper(24030)
Trigger3=IsHelper(24038)
var(2)=90 ; Angle

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24023)
Trigger2=IsHelper(24031)
Trigger3=IsHelper(24039)
var(2)=135 ; Angle

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24024)
Trigger2=IsHelper(24032)
Trigger3=IsHelper(24040)
var(2)=180 ; Angle

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24025)
Trigger2=IsHelper(24033)
Trigger3=IsHelper(24041)
var(2)=225 ; Angle

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24026)
Trigger2=IsHelper(24034)
Trigger3=IsHelper(24042)
var(2)=270 ; Angle

[State 24020]
Type=Varset
Triggerall=time=0
Trigger1=IsHelper(24027)
Trigger2=IsHelper(24035)
Trigger3=IsHelper(24043)
var(2)=315 ; Angle

[State 24020]
Type=Angledraw
Trigger1=1
value=var(2)
scale=0.25,0.25

[State 24020]
Type=Bindtoparent
Trigger1=1
pos=floor(var(1)*sin(var(2)*pi/180)),floor(var(1)*cos(var(2)*pi/180))

[State 24020]
Type=Varadd
Trigger1=var(1)=60
Trigger1=NumHelper(13051)>0
Trigger2=var(1)=90
Trigger2=parent,var(0)<65
Trigger3=var(1)=120
Trigger3=parent,var(0)<40
Trigger4=!(var(2) %45=0)
var(2)=5

[State 14020]
Type=Destroyself
Trigger1=root,stateno!=[13050,13059]




; Shot - Omnipowerful Burst Cannonade
[Statedef 13060]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 12850]
Type=VarSet
Trigger1=1
v=9
value=0

[State 1000, state]
type = ChangeState
trigger1 = 1
value = 13061

[Statedef 13061]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=var(9)<=330
attr = SCA, AA, AP, AT
stateno = 13061
slot = 6
time = 1
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12007]
Type=ChangeState
Trigger1=var(9)>330
Trigger2=roundstate>2
Value=0
ctrl=1

[State 13060]
Type=Helper
Trigger1=time %3=0
stateno = 13062
ID = 13062
Pos = 0,-60
PosType = P2
pausemovetime=99999
Size.xscale=1
Size.yscale=1

[Statedef 13062]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
anim = 20016+(random %5)

[State 13061]
Type=VarSet
Trigger1=time=0
fvar(9)=(random %200-100)*0.1 ; Vel X

[State 13061]
Type=VarSet
Trigger1=time=0
fvar(10)=10-abs(fvar(9)) ; Vel Y

[State 13061]
Type=PosAdd
Trigger1=time=0
X=floor(-40*fvar(9))
Y=floor(-40*fvar(10))

[State 13061]
Type=VelSet
Trigger1=time=0
X=fvar(9)
Y=fvar(10)

[State 13061]
Type=VarSet
Trigger1=time=0
var(32)=random % 8

[State 13061]
Type=PlaySnd
Trigger1=time=0
Value=13060, var(32)
channel = var(32)

[State 539]
Type=varset
Trigger1= time=0
v=0
value=floor(P2Dist X+Pos X)

[State 539]
Type=varset
Trigger1= time=0
v=1
value=floor(P2Dist Y+Pos Y-60)

[State 539]
Type= AngleSet
Trigger1=time=0
Trigger1 = (var(0)-Pos X)!=0
value=-(180/(pi)*atan((var(1)- Pos Y)/(var(0)-Pos X)))

[State 539]
Type= AngleAdd
Trigger1=(var(0)- Pos X)<0
Trigger1=time=0
value=180

[State 539]
Type = AngleSet
Trigger1 = (var(0)-Pos X)=0
Trigger1 = time=0
Value = IfElse(fvar(1)-Pos Y<0,90,-90)

[State 539]
Type= AngleDraw
Trigger1=1

[State 221]
Type = hitdef
Trigger1 = time>0
Trigger1 = !Movecontact
Trigger1= !movereversed
Trigger1 = anim= 20016
Attr              = A, SP
Damage            = ceil(root,fvar(39)*7),2
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,10
SparkNo           = S10710
Guard.SparkNo     = S10021
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 18
Ground.HitTime    = 18
Air.HitTime       = 18
Ground.Velocity   = random %7-3,-3
;Guard.Velocity   = -5,-5
Air.Velocity      = random %7-3,-3
AirGuard.Velocity = random %7-3,-3
Air.Fall = 1

[State 221]
Type = hitdef
Trigger1 = time>0
Trigger1 = !Movecontact
Trigger1= !movereversed
Trigger1 = anim= 20017
Attr              = A, SP
Damage            = ceil(root,fvar(39)*9)
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,5
SparkNo           = S10710
Guard.SparkNo     = S10710
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = random %7-3,-3
;Guard.Velocity   = -5,-5
Air.Velocity      = random %7-3,-3
AirGuard.Velocity = random %7-3,-3
Air.Fall = 1

[State 221]
Type = hitdef
Trigger1 = time>0
Trigger1 = !Movecontact
Trigger1= !movereversed
Trigger1 = anim= 20019
Attr              = A, NP
Damage            = ceil(root,fvar(39)*4),3
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,5
SparkNo           = S10021
Guard.SparkNo     = S10021
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = random %7-3,-3
;Guard.Velocity   = -5,-5
Air.Velocity      = random %7-3,-3
AirGuard.Velocity = random %7-3,-3
Air.Fall = 1

[State 221]
Type = hitdef
Trigger1 = time>0
Trigger1 = !Movecontact
Trigger1= !movereversed
Trigger1 = anim= 20020
Attr              = A, NP
Damage            = ceil(root,fvar(39)*2)
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,5
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = random %5-2,-3
;Guard.Velocity   = -3,-3
Air.Velocity      = random %5-2,-3
AirGuard.Velocity = random %5-2,-3

[State 221]
Type = hitdef
Trigger1 = time>0
Trigger1 = !Movecontact
Trigger1= !movereversed
Trigger1 = anim= 10625
Attr              = A, NP
Damage            = ceil(root,fvar(39)*3),1
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,5
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = S13061,0
GuardSound        = S13061,0
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = random %7-3,-3
;Guard.Velocity   = -3,-3
Air.Velocity      = random %7-3,-3
AirGuard.Velocity = random %7-3,-3

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.99

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 13061]
Type=changeAnim
Trigger1=movecontact || movereversed
value=9999

[State 13051]
Type=DestroySelf
Trigger1=time>80
Trigger2=Pos Y>10

;
; ***** Card : Shield *****
;

; ----- Grand Shield -----
[Statedef 13100]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 591]
trigger1 = time=0
trigger1 = NumHelper(4041)=0
Type=Helper
StateNo = 13101
ID = 4041
Name = "Shield"
Pos = 0,0-50*(name="Yue")
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.8
Size.YScale = 0.8
pausemovetime=9999999
supermovetime=9999999

[State 1000, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 13101]
Type = A
MoveType = I
Physics  = N
Anim     = 13101
facep2=1
SprPriority = 4

[State 13101]
Type=StatetypeSet
Trigger1=root,StateType=A
StateType=A

[State 13101]
Type=StatetypeSet
Trigger1=root,StateType=C
StateType=C

[State 13101]
Type=StatetypeSet
Trigger1=root,StateType=S
StateType=S

[State 13101]
Type=Turn
Trigger1=facing!=parent,facing

[State 13101]
Type=AssertSpecial
Trigger1=root,stateno=13551
Trigger1=root,StateNo!=13861
flag=invisible

[State 13101]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 592]
Type=BindToroot
Trigger1=1
Pos=0,-30*(name="Yue")+25*(name="Sakura")*(root,stateno=[360,369])+20*(root,statetype=C)

[State 13101]
Type=Angledraw
trigger1=root,stateno=[14550,14559]
scale=2,2

[State 592]
Type= Trans
Trigger1=1
Trans=addalpha
alpha=96,256

[State 13102]
Type=VarSet
Trigger1=time=0
var(2)=0

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 13102
slot = 6
time = 1

[Statedef 13102]
MoveType = H
Physics  = N
Anim     = 13101
SprPriority = 4
velset = 0,0

[State 13101]
Type=StatetypeSet
Trigger1=root,StateType=A
StateType=A

[State 13101]
Type=StatetypeSet
Trigger1=root,StateType=C
StateType=C

[State 13101]
Type=StatetypeSet
Trigger1=root,StateType=S
StateType=S

[State 13101]
Type=Turn
Trigger1=P2Dist X<-20

[State 592]
Type=BindToroot
Trigger1=1
Pos=0,-30*(name="Yue")

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 13102
slot = 6
time = 1

[State 13102]
Type=VarAdd
Trigger1=time=0
var(2)=1

[State 13102]
Type=VarAdd
Trigger1=time=0
v=1
value=Gethitvar(damage)

[State 13101]
Type=Angledraw
trigger1=stateno=[14550,14559]
scale=2,2

[State 593]
Type= Trans
Trigger1=1
Trans=addalpha
alpha=130,256

[State 593]
Type=ChangeState
Trigger1= var(1)<300
Trigger1= time>20
Value=13101

[State 4042]
Type=Playsnd
Trigger1=time=0
value = 13101,0

[State 593]
Type= DestroySelf
Trigger1 = time=20
Trigger1 = var(1)>=300
Trigger2 = var(2)>=720


; ----- Life Protector -----
[Statedef 13110]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 591]
trigger1 = time=0
trigger1 = NumHelper(13111)=0
Type=Helper
StateNo = 13111
ID = 13111
Name = "Shield"
Pos = 20,-70
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.1
Size.YScale = 0.1

[State 1000, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 13111]
MoveType = I
Physics  = N
Anim     = 13101
facep2=1
SprPriority = 4

[State 13111]
Type=AssertSpecial
Trigger1=1
flag=invisible

[State 592]
Type=BindToroot
Trigger1=1
Pos=20,-80-Ifelse((time/4) %7<4,(time/4) %7,7-(time/4) %7)

[State 13101]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State -2]
Type=NotHitBy
Trigger1= 1
Value= SAC
ignorehitpause=1

[State 13111]
Type=Destroyself
Trigger1=roundstate>4

;
; ***** Card : Shadow *****
;

; ----- Twilight Stalker -----
[Statedef 13150]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 4000]
Type=Helper
helpertype=normal
trigger1 = time =0
trigger1 = NumHelper(13151)=0
stateno = 13152
name= "Shadow"
ID = 13151
sprpriority = 10
ownpal=1
keyctrl=1
pausemovetime=9999999

[State 591]
triggerall = time=0
triggerall = NumHelper(13161)=0
trigger1 = NumHelper(12271)>0
trigger2 = enemy,authorname="Seravy"
Trigger2=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
trigger2 = enemy,NumHelper(12271)>0
trigger3 = NumHelper(12281)>0
trigger4 = enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
trigger4 = enemy,NumHelper(12281)>0
Type=Helper
StateNo = 13161
ID = 13161
Name = "Shield"
Pos = 0,const(size.mid.pos.y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.8
Size.YScale = 0.8
;pausemovetime=9999999
;supermovetime=9999999

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1

[Statedef 13151]
Type=S
MoveType=A
Physics=S
ctrl=0
velset=0,0
anim=0

[State 13151]
Type=Changeanim
Trigger1=anim !=parent,anim
Trigger1=root,var(45)=gametime
value=parent,anim

[State 13151]
Type=ChangeState
Trigger1=time >10
value=300+10*floor(random/334)

[State -2]
Type=RemoveExplod
Trigger1=var(29)>720
Trigger2=Roundstate>2
ID=13155

[State 13151]
Type=DestroySelf
Trigger1=var(29)>720
Trigger2=Roundstate>2

[Statedef 13152]
Type=S
MoveType=I
Physics=S
ctrl=0
velset=0,0
anim=0

[State 13152]
Type=VarSet
Trigger1=1
var(9)=0

[State 13151]
Type=ChangeState
Trigger1=1
value=13151


; ----- Twilight Grab -----
[Statedef 13160]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 260]
Type = Helper
Trigger1 = time=0
stateno=13162
ID=13162
Postype=P2
pos = 0,0
ownpal=1

[State 591]
triggerall = time=0
triggerall = NumHelper(13161)=0
trigger1 = NumHelper(12271)>0
trigger2 = enemy,authorname="Seravy"
Trigger2=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
trigger2 = enemy,NumHelper(12271)>0
trigger3 = NumHelper(12281)>0
trigger4 = enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
trigger4 = enemy,NumHelper(12281)>0
Type=Helper
StateNo = 13161
ID = 13161
Name = "Shield"
Pos = 0,const(size.mid.pos.y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.8
Size.YScale = 0.8
;pausemovetime=9999999
;supermovetime=9999999

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1


[Statedef 13162]
Type=C
Movetype=A
Physics=N
anim=13162

[State x]
Type=posset
Trigger1=1
Y=15

[State 260]
Type = Projectile
Trigger1 = time<=10
Attr              = C, SA
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,100
Guard.PauseTime   = 0,100
Offset            = -150+(time*30),-Enemy,Pos Y-15
PosType           = P2
Velocity          = 0,0
ProjID            = 13160
ProjAnim          = 20014
ProjHitAnim       = 19014
ProjRemanim       = 9999
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 0.4+0.02*time,0.4+0.02*time
ProjPriority      = 9999
ProjRemove        = 1
ProjRemoveTime    = 20
ProjHeightBound   = -400,50
HitFlag           = M
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 1
Ground.HitTime    = 1
Air.HitTime       = 1
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=43816
Guard.Kill=0
hitonce = 0

[State 260]
Type = Hitdef
Trigger1 = time=1
Attr              = C, SA
Damage            = floor(parent,fvar(39)*70),0
GetPower          = 0
givepower = -1000,0
AnimType          = Hard
PauseTime         = 0,100
Guard.PauseTime   = 0,100
HitFlag           = M
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 1
Ground.HitTime    = 1
Air.HitTime       = 1
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Guard.Kill=0
hitonce = 0

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.75

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 13162]
Type=destroyself
Trigger1=time=11



[Statedef 13161]
Type=A
MoveType=A
Physics=N
velset=0,0
anim=20015

[State 13161]
Type=Attackdist
Trigger1=1
value=0

[State 13161]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 13616]
Type=Bindtoroot
Trigger1=1
Pos=0,const(size.mid.pos.y)

[State 13451]
Type=Destroyself
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12200,12229]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=parent,stateno=[12200,12229]
Trigger3=root,stateno=[12200,12229]
Trigger4=NumHelper(4141)
Trigger4=Helper(4141),stateno=[12200,12229]
Trigger5=root,ProjHitTime(13161)=[2,30]

[State 12800]
Type=Projectile
Trigger1 = !(root,ProjHitTime(13161)=[0,30])
Trigger1 = NumHelper(13166)=0
Attr              = S, HA
Damage            = floor(root,fvar(39)*90)
GetPower          = 0
AnimType          = DiagUp
PauseTime         = 0,1
Guard.PauseTime   = 0,1
Offset            = 0,0
Velocity          = 0,0
ProjID            = 13161
ProjAnim          = 13161
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 1
ProjHeightBound   = -400,50
HitFlag           = MA
GuardFlag         = 
SparkNo           = S20005
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = S0,203
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 5
Ground.HitTime    = 5
Air.HitTime       = 5
Ground.Velocity   = -3,-5
Guard.Velocity    = -3
Air.Velocity      = -3,-5
AirGuard.Velocity = -3,-5
fall=1
P2StateNo=43816
hitonce = 0
Guard.Dist=1
ID=13161

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 13161
Trigger1 = root,ProjHitTime(13161)=[0,1]
StateNo = 6006
ID = 13166
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 1
Size.YScale = 1

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 13161
Trigger1 = root,ProjHitTime(13161)=[0,1]
StateNo = 6006
ID = 13166
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 1
Size.YScale = 1

;
; ***** Card : Sand *****
;

; ----- Quicksand -----
[Statedef 13200]
type = U
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 13201
ID = 13201
Name = "SandOcean"
Pos = 160, 0
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 2
Size.XScale = 1.5
Size.YScale = 1

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

[Statedef 13201]
type = S
movetype = I
physics = N
anim = 10570
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority=5

[State 13201]
Type=Posset
Trigger1=1
X=floor(20*sin((time*10*pi)/360))
Y=0

[State 13201]
Type=AngleDraw
Trigger1=1
scale=0.5,0.5

[State 240]
Type = Helper
Trigger1 = Time%12=0
;Trigger1 = Time<1200
Trigger1 = RoundState=2
StateNo = 13202
ID = 13202
Name = "Wave"
Pos = random %320-160, 0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 12901]
Type=Helper
Trigger1=RoundState=2
trigger1=root,var(27)>75
trigger1=root,StateNo!=13861
trigger1=Cond(NumHelper(4141),helper(4141),Stateno!=13861,1)
trigger1=P2StateNo!=13205
Trigger1=P2StateNo!=[13551,13559]
trigger1=numhelper(13206)=0
name="Sander"
stateno=13206
ID=13206
postype=P2
pos=0,-30

[State 12901]
Type=Helper
Trigger1=RoundState=2
trigger1=root,var(28)>75
trigger1=root,StateNo!=13861
trigger1=Cond(NumHelper(4141),helper(4141),Stateno!=13861,1)
trigger1=P2StateNo!=13205
Trigger1=P2StateNo!=[13551,13559]
trigger1=numhelper(13207)=0
name="Sander"
stateno=13207
ID=13207
postype=P1
pos=facing*floor(root,pos X-pos X),floor(root,pos Y-pos Y)-30

[State 1311]
Type=AssertSpecial
Trigger1=1
flag=NoShadow

[State 12111]
Type=DestroySelf
Trigger1= parent,stateno=[12150,12170]
Trigger2= NumHelper(4141)
Trigger2= Helper(4141),stateno=[12150,12199]
Trigger3= NumHelper(14250)
Trigger3= Helper(14250),stateno=[12150,12199]
Trigger4= enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger4= enemy,stateno=[12150,12199]
Trigger5= RoundState !=2
Trigger5= NumHelper(13202)=0

[Statedef 13206]
anim=9997
movetype=A
Type=A
Physics=N

[State 539, Snow]
Type = HitDef
Trigger1=root,var(27)>=45
Trigger1=gametime %300 !=[250,260]
Attr              = C, HT
Damage            = 0,0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
P2StateNo=13205
ignorehitpause=1
ID=13206

[State 12906]
Type=Destroyself
Trigger1=Movehit
Trigger1=target(13206),stateno=13205
Trigger1=Numtarget(13206)>0

[State 12906]
Type=Destroyself
Trigger1=root,var(27)<45

[Statedef 13207]
anim=9997
movetype=A
Type=A
Physics=N

[State 539, Snow]
Type = HitDef
Trigger1=root,var(28)>=45
Trigger1=gametime %300 !=[250,260]
Attr              = C, HT
Damage            = 0,0
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
affectteam = F
P2StateNo=13205
ignorehitpause=1
ID=13207

[State 12906]
Type=Destroyself
Trigger1=Movehit
Trigger1=target(13207),stateno=13205
Trigger1=Numtarget(13207)>0

[State 12906]
Type=Destroyself
Trigger1=root,var(28)<45

[Statedef 13202]
type = S
movetype = I
physics = N
anim = 10571+random %3
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority = 3

[State 1311]
Type=AssertSpecial
Trigger1=1
flag=NoShadow

[State 13202]
Type=VarSet
Trigger1=time=0
v=1
value=random % 50+50

[State 13202]
Type=VarSet
Trigger1=time=0
v=2
value=random % 60+50

[State 13202]
Type=VarSet
trigger1=time<40
fv=3
value=0.02*var(1)*time*0.025

[State 13202]
Type=VarSet
trigger1=time<40
fv=4
value=0.02*var(2)*time*0.025

[State 13202]
Type=VarSet
trigger1=time>=40
fv=3
value=0.02*var(1)*(80-time)*0.025

[State 13202]
Type=VarSet
trigger1=time>=40
fv=4
value=0.02*var(2)*(80-time)*0.025

[State 13202]
Type=VarSet
trigger1=1
fv=4
value=fvar(4)*0.2

[State 13202]
Type=VarSet
trigger1=1
fv=3
value=fvar(3)*0.2

[State 13202]
Type=Angledraw
Trigger1=1
scale=fvar(3),fvar(4)

[State 13202]
Type=DestroySelf
Trigger1=time>=80
Trigger2=NumHelper(13201)=0

[Statedef 13205]
Type=C
MoveType=H
Physics=N
anim=0
ctrl=0
sprpriority=0

[State 13205]
Type=PosAdd
Trigger1=1
Y=0.8*(Pos Y<120)

[State 13205]
Type=PosAdd
Trigger1=time=0
Trigger1=Pos Y<60
Y=10

[State 13205]
Type=PosAdd
Trigger1=command="holdfwd"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="holdup"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="holddown"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="holdback"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="a"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="b"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="x"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=command="y"
Y=-1.1

[State 13205]
Type=PosAdd
Trigger1=Authorname="Seravy"
Trigger1=var(59)>0
Y=-0.4-time*0.01-(random%100)*0.03

[State 13205]
Type=ChangeAnim
Trigger1=1
value=0

[State 13205]
Type=ChangeAnim
Trigger1=command="holdfwd"
Trigger2=command="holdup"
Trigger3=command="holddown"
Trigger4=command="holdback"
Trigger5=command="a"
Trigger6=command="b"
Trigger7=command="x"
Trigger8=command="y"
Trigger9=Authorname="Seravy"
Trigger9=var(59)>0
value=5000+(random %3)*10

[State 13205]
Type=LifeAdd
Trigger1=Pos Y>60
Trigger1=time %3=1
Value=-1

[State 13205]
Type=PosSet
Trigger1=Pos Y<-2
Trigger2=RoundState>2
Trigger3=enemy,NumHelper(13201)=0
Trigger3=NumHelper(13201)=0
Y=-5

[State 4065,SS]
Type=SelfState
trigger1=RoundState>2
Trigger1=life=0
value=5050

[State 13205]
Type=SelfState
Trigger1=Pos Y<-2
Trigger2=RoundState>2
Trigger3=enemy,NumHelper(13201)=0
Trigger3=NumHelper(13201)=0
value=50
ctrl=1

[State 13205]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 13205]
Type=NotHitBy
Trigger1=Pos Y>90
Value=,AA,AP,NT,ST

; ----- Sandstone Skin ------
[Statedef 13210]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 14400]
Type = Helper
Trigger1 = time=0
Trigger1 = NumHelper(14400)=0
StateNo = 13211
ID = 13211
Name = "Sandstone Skin"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
SuperMoveTime=9999999
Size.xscale=1
Size.yscale=1

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

[Statedef 13211]
ctrl=0

[State -2,008]
Type=NotHitBy				; float card
Trigger1=parent,var(22)=[1,9000]
Value=C
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=NumHelper(13651)>0                ; Safety Wall in effect
Trigger1=abs(Pos X-Helper(13651),Pos X)<25
Trigger1=Pos Y>-100
Trigger2=parent,var(37)>0			   ; Dream is using Overrule spell.
Trigger3=parent,Life<1
Trigger4=NumHelper(4041)>0
Trigger4=!parent,ishelper
Trigger5=parent,Stateno=396
Trigger6=parent,StateNo=12110			   ; Deep Ocean
Trigger7=parent,StateNo=12210			   ; Shining Light
Trigger8=parent,StateNo=12260			   ; Engulfing Darkness
Trigger9=parent,StateNo=12300			   ; Final Ray of Light
;Trigger9=!(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Trigger10=parent,StateNo=12310			   ; Healing Rainbow
Trigger11=parent,StateNo=12800			   ; Cyclonic Conductor
Trigger12=parent,StateNo=13250			   ; Grand Returner
Value=SAC
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=NumHelper(13161)			; Twilight Shield
Value2=,NA
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=parent,var(23)>10000			; fight card
Value2=,NA,NT
ignorehitpause=1

[State 14001]				   ;Cloud
Type=NotHitBy
Trigger1=parent,var(41)>0
Value2= ,NP,NT
ignorehitpause=1

[State 14001]				   ;Cloud
Type=NotHitBy
Trigger1=var(41)>0
Trigger1=var(23)>10000			; fight and cloud card
Value2= ,NA,NP,NT
ignorehitpause=1

[State 315]				; Counter
Type=NotHitBy
Trigger1=parent,StateNo=315
Trigger1=AnimTime<-3
Value2=,NA,SA,NT,ST
ignorehitpause=1

[State 395, hit]			; Dodge
type = NotHitBy
trigger1 = parent,Stateno = 395
value2 = ,NA, SA, NP
ignorehitpause=1

[State 100]				; Graze
Type=NotHitBy
Trigger1= parent,Stateno = [100,115]
value2=,NP,SP
ignorehitpause=1

[State 100]				; Graze+Cloud
Type=NotHitBy
Trigger1= parent,Stateno = [100,115]
Trigger1= parent,var(41)>0
value2=,NP,SP,NT
ignorehitpause=1

[State 100]				; Graze+Fight
Type=NotHitBy
Trigger1= parent,Stateno = [100,115]
Trigger1= parent,var(23)>10000
value2=,NP,SP,NA,NT
ignorehitpause=1

[State 40]
Type=NotHitBy				; jump card
Triggerall=parent,var(17)=2
Triggerall=abs(vel y)>=2
Trigger1=parent,StateNo=40
Trigger2=parent,StateNo=45
Trigger3=parent,StateNo=50
Trigger4=StateNo=52
Trigger5=StateNo=105
Trigger6=StateNo=109
Value2=,NP,SP,NA,SA,NT,ST
ignorehitpause=1

[State 14402]
Type=VarSet
Trigger1=1
v=29
value=Parent,ID

[State 14402,1]
Type=Statetypeset
Trigger1=1
Physics=N
MoveType=I

[State 14402,2]
Type=StateTypeSet
Trigger1=Parent,StateType=A
StateType=A

[State 14402,3]
Type=StateTypeSet
Trigger1=Parent,StateType=C
StateType=C

[State 14402,4]
Type=StateTypeSet
Trigger1=Parent,StateType=S
StateType=S

[State 14402,5]
Type=StateTypeSet
Trigger1=Parent,StateType=L
StateType=L

[State 14402,6]
Type=Changeanim
Trigger1=anim!=parent,anim
value=parent,anim

[State -1]
Type=AssertSpecial
Trigger1=1
flag=invisible
flag2=noshadow
ignorehitpause=1

[State -1]
Type=BindtoRoot
Trigger1=1
ignorehitpause=1
time=1

[State -1]
Type=HitOverRide
Trigger1=1
attr=SAC,AA,AP,AT
time=1
stateno=13212
slot=2
ignorehitpause=1

[State -1]
Type=VarAdd
Trigger1= 1
v=20
value=1
ignorehitpause=1

[State -1]
Type=Null;ParentVarAdd
Trigger1=GameTime % 30=1
v=20
value=floor(parent,life*0.01)
ignorehitpause=1

[State -1]
Type = DestroySelf
Triggerall = GameTime % 3=2
Trigger1 = var(20)>601
ignorehitpause=1

[State -1]
Type=LifeSet
Trigger1=1
Value=LifeMax
ignorehitpause=1

[Statedef 13212]
Type     = U
MoveType = I
Physics  = U
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State -1]
Type=AssertSpecial
Trigger1=1
flag=invisible
flag2=noshadow
ignorehitpause=1

[State -2,008]
Type=NotHitBy				; float card
Trigger1=parent,var(22)=[1,9000]
Value=C
ignorehitpause=1

[State -2]				   ;Fly
Type=NotHitby
Trigger1=parent,StateNo=14001
Value=SC
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=NumHelper(13651)>0                ; Safety Wall in effect
Trigger1=abs(Pos X-Helper(13651),Pos X)<25
Trigger1=Pos Y>-100
Trigger2=parent,var(37)>0			   ; Dream is using Overrule spell.
Trigger3=parent,Life<1
Trigger4=NumHelper(4041)>0
Trigger4=!parent,ishelper
Trigger5=parent,Stateno=396
Trigger6=parent,StateNo=12110			   ; Deep Ocean
Trigger7=parent,StateNo=12210			   ; Shining Light
Trigger8=parent,StateNo=12260			   ; Engulfing Darkness
Trigger9=parent,StateNo=12300			   ; Final Ray of Light
Trigger10=parent,StateNo=12310			   ; Healing Rainbow
Trigger11=parent,StateNo=12800			   ; Cyclonic Conductor
Trigger12=parent,StateNo=13250			   ; Grand Returner
Value=SAC
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=NumHelper(13161)			; Twilight Shield
Value2=,NA
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=parent,var(23)>10000			; fight card
Value2=,NA,NT
ignorehitpause=1

[State 14001]				   ;Fly
Type=Null;NotHitBy
Triggerall=parent,StateNo=14001
Trigger1=abs(parent,Vel X)>0.3
Trigger2=abs(parent,Vel Y)>0.3
Value2= ,NP,SP
ignorehitpause=1

[State 14001]				   ;Cloud
Type=NotHitBy
Trigger1=parent,var(41)>0
Value2= ,NP,NT
ignorehitpause=1

[State 14001]				   ;Cloud
Type=NotHitBy
Trigger1=var(41)>0
Trigger1=var(23)>10000			; fight and cloud card
Value2= ,NA,NP,NT
ignorehitpause=1

[State 40]
Type=NotHitBy				; jump card
Triggerall=parent,var(17)=2
Triggerall=abs(vel y)>=2
Trigger1=parent,StateNo=40
Trigger2=parent,StateNo=45
Trigger3=parent,StateNo=50
Trigger4=StateNo=52
Trigger5=StateNo=105
Value2=,NP,SP,NA,SA,NT,ST
ignorehitpause=1

[State 315]				; Counter
Type=NotHitBy
Trigger1=parent,StateNo=316
Trigger1=AnimTime<-3
Value2=,NA,SA,NT,ST
ignorehitpause=1

[State 395, hit]			; Dodge
type = NotHitBy
trigger1 = parent,Stateno = 395
value2 = ,NA, SA, NP
ignorehitpause=1

[State 100]				; Graze
Type=NotHitBy
Trigger1= parent,Stateno = [100,105]
value2=,NP,SP
ignorehitpause=1

[State -1]
Type=HitOverRide
Trigger1=1
attr=SAC,AA,AP,AT
time=1
stateno=13212
slot=2
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State -1]
Type=VarAdd
;Triggerall=Life<LifeMax
;Trigger1=!parent,ctrl
;Trigger2=!(parent,command="holdback") && !(parent,var(59)>0)
Trigger1=Life<lifemax
fv=20
value=(LifeMax-Life)*1.2
ignorehitpause=1

[State -1]
Type=Null;VarAdd
Triggerall=Life<LifeMax
Trigger1=parent,ctrl
Trigger1=(parent,command="holdback") || (parent,var(59)>0)
fv=20
value=0
ignorehitpause=1

[State -1]
Type=ParentVarAdd
Trigger1=fvar(20)>1
v=20
value=floor(fvar(20))
ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=fvar(20)>1
fv=20
value=fvar(20)-floor(fvar(20))
ignorehitpause=1

[State -1]
Type=VarAdd
Trigger1= 1
v=20
value=1
ignorehitpause=1

[State -1]
Type = DestroySelf
Triggerall = GameTime % 3=2
Trigger1 = var(20)>601
ignorehitpause=1

[State -1]
Type=LifeSet
Trigger1=1
Value=LifeMax
ignorehitpause=1

[State 12007]
Type=ChangeState
Trigger1=time>0
Value=13211


;
; ***** Card : Return *****
;

; ----- Grand Returner -----
[Statedef 13250]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 13250]
Type=NotHitBy
Trigger1=time>=20
Value=SAC

[State 13250]
Type=PlaySnd
Trigger1=time=20
value=S13250,0
volume=255

[State 4140]
Type = BgPalFx
Trigger1=1
add=time/2,0,0
time=1

[State 13250]
Type = Projectile
Trigger1 = time > 120
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 13250
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -3,-6.5
Guard.Velocity    = -6
Air.Velocity      = -3,-6.5
AirGuard.Velocity = -6,-2.5
Fall = 1
Fall.Recover = 0
ID = 13250
Persistent = 3
P2StateNo=13257;43816
hitonce = 0
Palfx.time=50
Palfx.add=200,0,0
Palfx.sinadd=random %50,random %50, random %50,10
ID=13250

[State 13250]
Type=Null;TargetPowerAdd
Trigger1=1
Value=var(15)-enemy,power

[State 13250]
Type=targetdrop
Trigger1=1
ExcludeID=13250

[State 13250]
Type=TargetLifeAdd
Trigger1=Numtarget(13250)=1
Value=var(14)-target(13250),life

[State 13250]
Type=TargetLifeAdd
Trigger1=Numtarget(13250)>1
Value=var(14)-P2Life

[State 450]
Type = Helper
Trigger1 = NumHelper(13251)=0
Trigger1 = time=20
StateNo = 13251
ID = 13251
Name = "Return Big Hand"
Pos = 160,-100
PosType = left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Pausemovetime=999999
Supermovetime=999999

[State -2]
Type = PlaySnd
Triggerall = NumExplod(13255)=0
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 13250
Trigger2 = NumEnemy >1
Trigger2 = (Enemy(1),Movetype = H)
Trigger2 = (Enemy(1),StateNo != [5100,5150])
Trigger2 = Enemy(1),GetHitvar(chainID) = 13250
value=S13250,1
volume=255

[State -2]
Type = Explod
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 13250
Trigger1 = NumExplod(13255)=0
ID=13255
anim=3310
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Bindtime=1
Removetime=-2
sprpriority=5
ownpal=1

[State -2]
Type = Explod
Trigger1 = NumEnemy >1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = Enemy(1),GetHitvar(chainID) = 13250
Trigger1 = NumExplod(13255)=0
ID=13255
anim=3310
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Head.Pos.Y))+random %40-20
Bindtime=1
Removetime=-2
sprpriority=5
ownpal=1

[State 1000, state]
type = ChangeState
trigger1 = NumHelper(13251)=0
Trigger1 = Time>220
value = 0
ctrl = 1

[Statedef 13257]
MoveType=H

[State 13257]
Type=Destroyself
Trigger1=IsHelper

[State 13257]
Type=ChangeState
Trigger1=1
value=43816

[Statedef 13255]
type = S
movetype = I
physics = N
Anim = 10580
SprPriority = -15

[State 13255]
Type=PalFx
Trigger1=1
Add=0,120,120

[State 13255]
Type=Varadd
Trigger1=1
fv=1
value=0.05

[State 13255]
Type=AngleAdd
Trigger1=1
value=fvar(1)

[State 1531]
Type=Angledraw
Trigger1=1
scale=0.75*(1-parent,var(33)/parent,fvar(34)),0.75*(1-(parent,var(33)/parent,fvar(34)))

[State 13255]
Type=Trans
Trigger1=1
trans=add

[State 13255]
Type=Destroyself
trigger1 = NumHelper(13251)=0

[State 1532]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[Statedef 13251]
type = S
movetype = I
physics = N
anim = 10581

[State 13255]
Type=PalFx
Trigger1=1
Add=0,120,120

[State 1532]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 1531]
Type=VarSet
Trigger1=time=0
var(33)=0

[State 1531]
Type=VarSet
Trigger1=time=0
fvar(34)=300

[State 461]
Type = Helper
Trigger1 = NumHelper(10580)=0
ID = 10580
StateNo=13255
Pos = 0,0
Ownpal = 1
IgnoreHitPause = 1
Pausemovetime=999999
supermovetime=999999

[State 1531]
Type=VarAdd
Trigger1=1
v=33
value=1

[State 1531]
Type=AngleSet
Trigger1=1
value=((360.0*var(33))/fvar(34))+90

[State 1531]
Type=Angledraw
Trigger1=1
scale=0.375*(1-var(33)/fvar(34)),0.375*(1-(var(33)/fvar(34)))

[State 1531]
Type=Trans
Trigger1=1
Trans=Add

[State 450]
Type = Helper
Trigger1 = NumHelper(13252)=0
StateNo = 13252
ID = 13252
Name = "Return Big Hand"
Pos = 160,-100
PosType = left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Pausemovetime=999999
Supermovetime=999999

[State 13251]
Type=DestroySelf
Trigger1=var(33)>=fvar(34)

[Statedef 13252]
Type     = S
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim=10581

[State 13255]
Type=PalFx
Trigger1=1
Add=0,120,120

[State 1532]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 1531]
Type=AngleSet
Trigger1=1
value=((12*360.0*parent,var(33))/parent,fvar(34))+90

[State 1531]
Type=Angledraw
Trigger1=1
scale=0.75*(1-parent,var(33)/parent,fvar(34)),0.75*(1-(parent,var(33)/parent,fvar(34)))

[State 1531]
Type=Trans
Trigger1=1
Trans=Add

[State 1532]
Type=DestroySelf
Trigger1=time>=300


;
; ***** Card : Rain *****
;

; ----- Weather Forecast -----
[Statedef 13300]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time =0
trigger1 = NumHelper(13301)=0
stateno = 13301
ID = 13301
postype = back
pos = 180,-150
sprpriority = 10
ownpal=1

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1

[Statedef 13301]
Type = A
MoveType = I
Physics  = N
Anim     = 7027
SprPriority = 3

[State 705, 2]
type = Explod
trigger1 = time = [0,24]
anim = 13301
ID = 13300
sprpriority = 8
postype = p1
pos = (time-12)*15,0

[State 221]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1

[State 13301]
Type=Playsnd
Trigger1=time %80=0
value=S13300,1

[State 541]
Type = Projectile
Trigger1 = time %4=0
Attr              = A, NP
Damage            = floor(root,fvar(39)*8),0
GetPower          = 1,1
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 150-(Gametime %120)*3,15
Velocity          = 0,5
ProjID            = 13301
ProjAnim          = 10131
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 0.2,0.2
ProjPriority      = 1
Projheightbound   = -240,1
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = S20003
Guard.SparkNo      = S20003
SparkXY           = 0,5
HitSound          = S13300,0
GuardSound        = S13300,0
Ground.Type       = High
Air.Type          = High
Guard.Dist = 20
Fall.Recover = 0
ID = 4112
P2StateNo=43816

[State 705, 2]
type = RemoveExplod
trigger1 = time >1800
ID=13300


[State 541]
Type = DestroySelf
Trigger1 = time>1800


; ----- Shower Warning -----
[Statedef 13310]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=VarSet
Trigger1=Time=0
v=56
value=200

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "Circle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.5
Size.yscale=0.5
PauseMoveTime=9999999

[State 4000]
Type=Helper
trigger1 = time =0
trigger1 = NumHelper(13311)=0
stateno = 13311
ID = 13311
postype = P2
pos = 0,enemy,const(size.head.pos.Y)-50
sprpriority = 10
ownpal=1

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1

[Statedef 13311]
Type=A
MoveType=I
Physics=N
anim=7027
velset=0,0

[State 13311]
Type=PosSet
Trigger1=1
Y=enemy,Pos Y+enemy,const(size.head.pos.Y)-50
X=enemy,Pos X

[State 13311]
type=playsnd
trigger1=(time % 600)=0
value=13111,0

[State 13311]
type=playsnd
trigger1=(time % 600)=180
value=13111,1

[State 13311]
Type=Palfx
Trigger1=(time % 600)=0
add=10,10,10
sinadd=40,40,40,20
time=180

[State 13311]
Type=Statetypeset
Trigger1= time %600 = [120,240]
movetype=A

[State 13311]
Type=Statetypeset
Trigger1= time %600 >240
movetype=I

[State 541]
Type = Projectile
Trigger1 = time % 600 = [181,240]
Attr              = A, NP
Damage            = ceil(root,fvar(39)*2),0
GetPower          = 1,1
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = random %30-15,15
Velocity          = 0,5
ProjID            = 13311
ProjAnim          = 10131
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 0.2,0.2
ProjPriority      = 1
Projheightbound   = -240,1
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = S20003
Guard.SparkNo      = S20003
SparkXY           = 0,5
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Fall.Recover = 0
ID = 4112
P2StateNo=43816

;
; ***** Card : Power *****
;

; ----- Super Strength -----
[Statedef 13350]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 240]
Type=VarSet
trigger1 = 1
v=25
value=900

[State 240]
Type = ChangeState
Trigger1 = Animtime=0
Value = 0
Ctrl = 1

; ----- Focused Strike -----
[Statedef 13360]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0
anim=0

[State 13360]
Type=VarSet
Trigger1=time=0
var(2)=28

[State 12600]
Type=VarSet
Trigger1=time=0
var(1)=-1

[State 13360]
Type=PlaySnd
Trigger1=time=0
value=13350,0
volume = 128

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "ClowCircle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.7
Size.yscale=0.7
PauseMoveTime=9999999
Supermovetime=9999999

[State 3009, pause]
type = SuperPause
trigger1 = time =0
darken = 1
time = 31
anim = -1
movetime = 31
p2defmul = 1

[State 13360]
Type=BgPalFX
Trigger1=1
mul=0,0,0
time=30

[State 13360]
Type=PalFX
Trigger1=1
add= 4*time,0,0
time=30

[State 13360]
Type=NotHItBy
Trigger1=1
value=SAC

[State 3009, pause]
type = ChangeState
Trigger1=time>=30
value=13361

[Statedef 13361]
Type= S
Physics =S
MoveType= A
velset=0,0
juggle  = 1
ctrl=0
anim=320
facep2=1

[State 221]
Type=Attackdist
triggerall = var(23)=[1,9000]
Trigger1 = time=0
value=0

[State 13360]
Type=PlaySnd
Trigger1=var(9)=2
value=13360,0
volume = 128

[State 3009, pause]
type = SuperPause
trigger1 = time =0
darken = 1
time = 30
anim = -1
movetime = 0
p2defmul = 1

[State 13360]
Type=NotHitBy
Trigger1=1
value=SAC

[State 300,Void]
Type=Explod
Trigger1=Name="Void"
Trigger1=time=0
ID=320
anim=321
vfacing=1-2*IsHelper(13151)
bindtime=-1
removetime=25
postype=p1
pos=45,-48*(1-1.6*IsHelper(13151))
pausemovetime=9999999
scale=0.4,0.4*(1-0.6*IsHelper(13151))
sprpriority=4
ownpal=1
ignorehitpause=1
trans=sub
removeongethit=1

[State 320,1]
Type=PlaySnd
Trigger1=time=3
value=320,0

[State 221]
Type=HitDef
Trigger1 = (name="Eriol Hiiragizawa") && (time=5)
Trigger2 = (name="Eriol Hiiragizawa") && (time=17)
Trigger3 = (name="Eriol Hiiragizawa") && (time=29)
Trigger4 = (name="Sakura Kinomoto") && (time=8)
Trigger5 = (name="Sakura Kinomoto") && (time=12)
Trigger6 = (name="Sakura Kinomoto") && (time=16)
Trigger7 = (name="Shaoran Lee") && (time=8)
Trigger8 = (name="Shaoran Lee") && (time=12)
Trigger9 = (name="Shaoran Lee") && (time=16)
Trigger10 = (name="Void") && (time=1)
Trigger11 = (name="Void") && (time=11)
Trigger12 = (name="Void") && (time=21)
Trigger13 = (name="Yue") && (time=6)
Trigger14 = (name="Yue") && (time=10)
Trigger15 = (name="Yue") && (time=14)
triggerall = var(23)!=[1,9000]
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = floor(Cond(IsHelper,root,fvar(39),fvar(39))*(90*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))),floor(9*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))
getpower = 0,0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                    ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 9                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
hitsound = S320,1                  ;Sound to play on hit
guardsound = S320,2
ground.slidetime = 8             ;Time that the opponent slides back
ground.hittime  = 14             ;Time opponent is in hit state
ground.velocity = -1,0
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1,0
air.hittime = 14                 ;Time before opponent regains control in air
ground.cornerpush.veloff = -3
guard.cornerpush.veloff = -4
guard.kill=0
ID=320

[State 221]
Type=HitDef
Trigger1 = (name="Eriol Hiiragizawa") && (time=5)
Trigger2 = (name="Eriol Hiiragizawa") && (time=17)
Trigger3 = (name="Eriol Hiiragizawa") && (time=29)
Trigger4 = (name="Sakura Kinomoto") && (time=8)
Trigger5 = (name="Sakura Kinomoto") && (time=12)
Trigger6 = (name="Sakura Kinomoto") && (time=16)
Trigger7 = (name="Shaoran Lee") && (time=8)
Trigger8 = (name="Shaoran Lee") && (time=12)
Trigger9 = (name="Shaoran Lee") && (time=16)
Trigger10 = (name="Void") && (time=1)
Trigger11 = (name="Void") && (time=11)
Trigger12 = (name="Void") && (time=21)
Trigger13 = (name="Yue") && (time=6)
Trigger14 = (name="Yue") && (time=10)
Trigger15 = (name="Yue") && (time=14)
triggerall = var(23)=[1,9000]
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = floor(Cond(IsHelper,root,fvar(39),fvar(39))*(90*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))),floor(9*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))
getpower = 0,0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag =                     ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 6, 9                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
hitsound = S320,1                  ;Sound to play on hit
guardsound = S320,2
ground.slidetime = 8             ;Time that the opponent slides back
ground.hittime  = 14             ;Time opponent is in hit state
ground.velocity = -1,0             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1,0           ;X-velocity at which opponent is pushed,
air.hittime = 14                 ;Time before opponent regains control in air
ground.cornerpush.veloff = -3
guard.cornerpush.veloff = -4
ID=320

[State 300]
Type=Varset
Trigger1=movehit=1
fvar(39)=fvar(39)*0.75

[State 301]
Type=TargetState
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State -2]
Type = Explod
Triggerall=Name!="Void"
Trigger1 = movehit=1
Trigger1 = hitpausetime=6
ignorehitpause=1
anim= 20005
ID = 9300
Pos = 60+random %10+50*Name="Eriol Hiiragizawa",-60+random %10-20*Name="Yue"
Sprpriority=2
PosType = P1
Ownpal = 1
SuperMoveTime = 999999
PauseMoveTime = 999999
scale = 0.3,0.3

[State -2]
Type = Explod
Trigger1 = NumTarget(320)>0
Trigger1 = moveguarded=1
Trigger1 = hitpausetime=6
ignorehitpause=1
anim = 4040
ID = 6011
Pos = 60+random %10+50*Name="Eriol Hiiragizawa",-60+random %10
Sprpriority=2
PosType = P1
Ownpal = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State 320,3]
Type=changeState
Trigger1=Animtime=0
ctrl=1
Value=0


; ***** Card : Move *****

; ------ Telekinesis -----
[Statedef 13400]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

[State 13400]
Type = Projectile
Trigger1 = time=7
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 30
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Fall.damage=150
Fall.recover=0
P2StateNo=13401
hitonce = 0
guard.dist=9999

[State 12017]
Type=Explod
Trigger1=P2StateNo=13401
bindtime=1
removetime=-2
sprpriority=8
anim=21006+(random %2)*100
Pos=random %31-15,const(size.mid.pos.y)+random %31-15
PosType=P2
ownpal=1
scale=0.5,0.5
ID=13401
ignorehitpause=1

[State 240]
Type = ChangeState
Triggerall=P2StateNo!=13401
Trigger1 = animtime=0
Trigger1 = time>30
Value = 0
Ctrl = 1

[Statedef 13401]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim=5030

[State 13401]
Type=PosSet
Trigger1=1
X=Pos X+(Pos X<0)*2-2*(Pos X>0)
Y=Pos Y-2

[State 13401]
Type=SelfState
Trigger1=Pos Y<-180
value=5070


; ------ Centrifugal Training -----
[Statedef 13410]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 13417
slot = 6
time = 1

[State 13551]
Type=VarSet
Trigger1=1
v=9
value=0

[State 240]
Type = ChangeState
Trigger1 = Time>0
Value = 13417

[Statedef 13417]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=gethitvar(damage)>0
MoveType=H
ignorehitpause=1

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

[State 592]
type = HitOverride
Trigger1=var(9)<25
attr = SCA, AA, AP, AT
stateno = 13417
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 13417]
Type=VarAdd
Trigger1=1
var(9)=1

[State 260]
Type = Projectile
Trigger1 = var(9)=10
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 15
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MA
GuardFlag         = M
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Fall.Damage=50
P2StateNo=13419
ID = 13410
hitonce = 0
guard.dist=9999

[State 13417]
Type=ChangeState
Trigger1=enemy,StateNo=13419
Trigger2=NumEnemy>1
Trigger2=enemy(1),StateNo=13419
value=13411

[State 13860]
Type = Explod
Trigger1=var(9)=20
anim=10750
ID = 13860
Pos = Enemy, ScreenPos X-5,160
PosType = Left
bindtime=1
vel=0,-3
removetime=30
sprpriority=99
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 12007]
Type=ChangeState
Trigger1=var(9)>=25
Value=0
ctrl=1

[Statedef 13411]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 13411]
Type=ScreenBound
Trigger1=1
value=0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=enemy(0),stateno=[13418,13419]
Trigger2=Numenemy>=2
Trigger2=(enemy(1),stateno=[13418,13419])
Trigger3=Numenemy>=3
Trigger3=(enemy(2),stateno=[13418,13419])
Trigger4=Numenemy>=4
Trigger4=(enemy(3),stateno=[13418,13419])
attr = SCA, AA, AP, AT
stateno = 13411
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 13417]
Type=VarAdd
Trigger1=1
var(9)=1

[State 12017]
Type=Explod
Trigger1=P2StateNo=[13418,13419]
bindtime=1
removetime=-2
sprpriority=8
anim=21006+(random %2)*100
Pos=random %31-15,const(size.mid.pos.y)+random %31-15
PosType=P2
ownpal=1
scale=0.5,0.5
ID=13401
ignorehitpause=1

[State 12007]
Type=ChangeState
Trigger1=enemy(0),stateno!=[13418,13419]
Trigger1=Cond(NumEnemy<2,1,(enemy(1),stateno!=[13418,13419]))
Trigger1=Cond(NumEnemy<3,1,(enemy(2),stateno!=[13418,13419]))
Trigger1=Cond(NumEnemy<4,1,(enemy(3),stateno!=[13418,13419]))
Value=0
ctrl=1

[Statedef 13419]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
sprpriority=2
anim=5030

[State 13411]
Type=ScreenBound
Trigger1=1
value=time<15

[State 13419]
Type=PlayerPush
Trigger1=1
value=0

[State 13419]
Type=VelSet
Trigger1=time=0
Y=-0.5
X=floor(Pos Y*0.05)

[State 13419]
Type=VelAdd
Trigger1=1
X=-0.6

[State 13419]
Type=Turn
Trigger1=time>=15
Trigger1=abs(Pos X)>120

[State 13419]
Type=LifeAdd
Trigger1=time>=15
Trigger1=abs(Pos X)>120
value=-12

[State 13419]
Type=ChangeState
Trigger1=time>=15
Trigger1=abs(Pos X)>120
value=13419

[State 13419]
Type=ChangeState
Trigger1=abs(Pos X)<25
Trigger1=Pos Y<-120
value=13418

[Statedef 13418]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
Velset	 =0,0
sprpriority=5

[State 13418]
Type=ChangeAnim2
Trigger1=time=0
value=13418

[State 13419]
Type=Angleadd
Trigger1=1
value=floor(time*0.3)

[State 13419]
Type=LifeAdd
Trigger1=time %10=1
value=-floor(Time*.05)

[State 13419]
Type=LifeAdd
Trigger1=time=180
value=-50

[State 13419]
Type=AngleDraw
Trigger1=1

[State 13419]
Type=VelSet
Trigger1=time>=180
X=0
Y=-15

[State 13419]
Type=HitFallSet
Trigger1=time>=180
value=1
Xvel=0
Yvel=-15

[State 13419]
Type=AngleSet
Trigger1=time>=180
value=0

[State 13419]
Type=SelfState
Trigger1=time>=180
value=5050

;
; ***** Card : Mist *****
;

; ----- Fog of Acid -----
[Statedef 13450]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 450]
Type = Helper
Trigger1 = Time=0
StateNo = 13451
ID = 13451
Name = "Mist"
Pos = 0,100
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1.2
Size.YScale = 1.2
;Pausemovetime=999999
;supermovetime=999999

[State 240]
Type = ChangeState
Trigger1 = Animtime=0
Value = 0
Ctrl = 1

[Statedef 13451]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 10301

[State 12281]
Type=sprpriority
Trigger1=1
value=100

[State 13451,Trans]
Type=Trans
Trigger1=1
Trans=add

[State 13451]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 13451]
Type=PosAdd
Trigger1=time %10=1
X=random %3-1
Y=random %3-1

[State 13451]
Type=PosSet
Trigger1=Pos X>10
X=9

[State 13451]
Type=PosSet
Trigger1=Pos Y>120
Y=119

[State 13451]
Type=PosSet
Trigger1=Pos X<-10
X=-9

[State 13451]
Type=PosSet
Trigger1=Pos Y<90
Y=91

[State 13451]
Type=RemoveExplod
Trigger1=(time % 600)=1
ID=13451

[State 450]
Type = Helper
Trigger1 = NumHelper(13454)=0
StateNo = 12284
ID = 13454
Name = "Fog"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 2.4
Size.YScale = 1.2
;Pausemovetime=999999
;supermovetime=999999

[State 13451]
Type=StateTypeSet
Trigger1= time% 300=0
movetype=A

[State 13451]
Type=StateTypeSet
Trigger1= time% 300>1
movetype=I

[State 221]
Type = Projectile
Triggerall = RoundState=2
offset = 0,0
Projanim=9998
ProjID=13451
Projremovetime=1
Projremanim=9919
ProjEdgeBound     = 9999
ProjStageBound    = 9999
Trigger1 = time % 300 =0
Attr              = A, SA
Damage            = 50,50
GivePower         = 0,0
AnimType          = Light
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=43816
ID=13451

[State 13451]
Type=HitDef
Triggerall = RoundState=2
Trigger1 = time % 300 =1
Attr              = A, SA
Damage            = 50,50
GivePower         = 0,0
AnimType          = Light
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
affectteam = F
ID=13451

[State 13451]
Type=ChangeState
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12050,12099]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger2=parent,stateno=[12050,12099]
Trigger3=root,stateno=[12050,12099]
Trigger4=Numhelper(4141)
Trigger4=Helper(4141),stateno=[12050,12099]
value=12905

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 13451
Trigger1 = time %300=2
StateNo = 6027
ID = 6027
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil((Enemy(0),Pos Y - Pos Y))+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 13451
Trigger1 = time %300=2
StateNo = 6027
ID = 6027
Name = "HitSpark"
Pos = Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil((Enemy(1),Pos Y - Pos Y))+(Enemy(1),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 6005]
Type = Helper
Trigger1 = (root,Movetype = H)
Trigger1 = (root,StateNo != [5100,5150])
Trigger1 = (root,StateNo != [120,160])
Trigger1 = root,GetHitvar(chainID) = 13451
Trigger1 = time %300=2
StateNo = 6027
ID = 6027
Name = "HitSpark"
Pos = Ceil(root,Pos X - Pos X)*Facing,Ceil((root,Pos Y - Pos Y))+(root,Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

;
; ***** Card : Mirror *****
;

; ----- Mirror Image -----
[Statedef 13500]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
Trigger1 = time=0
Trigger1 = NumHelper(4141)=0
helpertype = normal
StateNo = 13501
ID = 4141
Name = "Mirror"
Pos = -40,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
keyctrl=1

[State 1000, state]
type = ChangeState
trigger1 = Time>30
value = 0
ctrl = 1

[Statedef 13501]  
Type     = U
MoveType = I
Physics  = N
Anim     = 7031
velset = 2,0
ctrl = 0
sprpriority = 4
Facep2=1

[State 13501]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 4141]
Type=LifeSet
trigger1=1
Value=350

[State 4141]
Type=VarSet
Trigger1=1
v=8
value=350

[State 4141]
Type=VarSet
Trigger1=1
v=36
value=350

[State 4141]
Type=ChangeState
Trigger1=time>60
ctrl=1
Value=0

; ----- Focused Reflection -----
[Statedef 13510]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
Trigger1 = time=0
Trigger1 = NumHelper(13511)=0
StateNo = 13511
ID = 13511
Name = "Mirror Reflector"
Pos = 8,-89
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
;SuperMoveTime=9999999
Size.xscale=1
Size.yscale=1

[State 1000, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 13511]
type = S
movetype = I
physics = N
poweradd = 0
ctrl = 0
anim=10420

[State 13511]
Type=VelSet
Trigger1=1
X=0.3

[State 14201]
Type=HitOverride
trigger1 = 1
attr = SCA, SP,NP
stateno = 13513
time = -1

[State 13511]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 539]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 13511]
Type=DestroySelf
Trigger1=var(9)>360
Trigger1=NumHelper(13514)=0

[State 13511]
Type=NotHitBy
Trigger1=1
value=,HP,AA,AT

[Statedef 13512]

[State 1353]
Type=Destroyself
Trigger1=IsHelper

[State 1353]
Type=SelfState
Trigger1=!IsHelper
value=50
ctrl=1

[Statedef 13513]
type = S
movetype = A
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 13513]
type = SuperPause
trigger1 = time =0
time = 9
anim = -1
movetime = 9
p2defmul = 1
darken=0

[State 13513]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 14051]
Type = VarSet
Trigger1 = (Time = 0)
fvar(0) = 1

[State 14051]
Type = VarSet
Trigger1 = Time = 0
fvar(1) = 1

[State 14051]
Type = VarAdd
Trigger1 = Time > 1
fvar(2) = .1

[State 14051]
Type = VarSet
Trigger1 = Time > 0
fvar(2) = 0
Persistent = 10

[State 14051] 
Type = Explod
Trigger1 = Time = 0
Anim = 10430
ID = 2055
Pos = 0,0
;Facing = Facing
BindTime = -1
Scale = 1,1
SprPriority = -13
RemoveTime = -1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime=39

[State 14051]
Type = Explod
Trigger1 = Time = 0
Anim = 10420
ID = 2055
Pos = 0,0
;Facing = Facing
BindTime = -1
Scale = 1,1
SprPriority = -12
RemoveTime = -1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime=39

[State 14051]
Type = Explod
Trigger1 = var(0) = 0
Trigger1 = Time >0
Anim = 10421
ID = 2056
Pos = 0,0
;Facing = Facing
BindTime = -1
Scale = 1,1
Ownpal = 1
SprPriority = -11
IgnoreHitPause = 1
Persistent = 40
SuperMoveTime=39

[State 14051]
Type = ModifyExplod
Trigger1 = 1
ID = 2055
Scale = fvar(0),fvar(1)
IgnoreHitPause = 1

[State 14051]
Type = ModifyExplod
Trigger1 = 1
ID = 2056
Scale = 1+fvar(2),1+fvar(2)
IgnoreHitPause = 1

[State 532]
Type=Helper
Trigger1 = time=0
StateNo = 13514
ID = 13514
Name = "Laser"
Pos = 0,0
PosType = P1
Ownpal = 1
SuperMoveTime=9

[State 532]
Type=VarAdd
Trigger1 = var(18)<20
Trigger1 = time=0
var(18)=1

[State 14051]
Type = RemoveExplod
Trigger1 = time>=9
ID = 2055
IgnoreHitPause = 1

[State 14051]
Type = RemoveExplod
Trigger1 = time>=9
ID = 2056
IgnoreHitPause = 1

[State 14051]
Type = ChangeState
Trigger1 = time>=9
Value=13511

[Statedef 13514]
Type =A
MoveType = A
Physics  = N
Anim     = 10410
SprPriority = 3

[State 539]
Type=varset
Trigger1= time=0
v=0
value=floor(P2Dist X+Pos X)

[State 539]
Type=varset
Trigger1= time=0
v=1
value=floor(P2Dist Y+Pos Y+const(size.mid.pos.y))

[State 539]
Type = BindToParent
Trigger1 = 1

[State 539]
Type= AngleSet
Trigger1=1
value=-(180/(pi)*atan((var(1)- Pos Y)/(var(0)-Pos X)))

[State 539]
Type= AngleAdd
Trigger1=(var(0)- Pos X)<0
value=180

[State 539]
Type = AngleSet
Trigger1 = (var(0)-Pos X)=0
Value = IfElse(fvar(1)-Pos Y<0,90,-90)

[State 539]
Type= AngleDraw
Trigger1=1

[State 539]
Type=Trans
Trigger1 = time>=5
trans=none

[State 539]
Type=Trans
Trigger1 = time<5
trans=add

[State 539]
Type = Projectile
Trigger1 = time=5
Attr              = A, HT
Damage            = 25-parent,var(18),25-parent,var(18)
GetPower          = 0,0
AnimType          = Hard
PauseTime         = 0,15
Guard.PauseTime   = 0,0
Offset            = var(0)- Pos x,var(1)- Pos Y
Velocity          = 0,0
ProjID            = 9997
ProjAnim          = 9997
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -400,50
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = S10021
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,208
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
P2StateNo=43816
hitonce = 0
ID=13514

[State 539]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 539]
Type=DestroySelf
Trigger1 = Time>20

;
; ***** Card : Maze *****


; ----- Road of Hell -----
[Statedef 13550]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

[State 13550]
Type=PlaySnd
Trigger1=time=0
value=13550,0

[State 260]
Type = Projectile
Trigger1 = time= 30
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 15
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=13559
P1StateNo=13577
ID = 13550
hitonce = 0

[State 13551]
Type=VarSet
Trigger1=1
v=9
value=0

[State 13550]
Type=BgPalFX
Trigger1=time<30
Add=8*time,8*time,8*time
time=1

[State 13860]
Type = Explod
Trigger1=time=55
anim=10750
ID = 13860
Pos = floor(Enemy, ScreenPos X-5),160
PosType = Left
bindtime=1
vel=0,-3
removetime=30
sprpriority=99
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 13550]
Type=ChangeState
Trigger1=time>60
value=0
ctrl=1

[State 13550]
Type=ChangeState
Trigger1=P2StateNo=[13551,13559]
value=13551

[Statedef 13577]

[State 13572]
Type=PosSet
Trigger1=1
X=0
Y=0

[State 13572]
Type=ChangeState
Trigger1=1
value=13551

[Statedef 13559] ; Opponent in maze
movetype=I
type = S
physics = N
sprpriority = 0
anim = 0
ctrl=0

[State 13559]
Type=PosSet
Trigger1=1
y=0

[State 0]
Type= DestroySelf
Trigger1= IsHelper
ignorehitpause =1

[State 0, 1]
type = ChangeAnim
triggerall = vel x=0
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 1
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[State 20]
Type= turn
Triggerall = (var(59)=0) || !(Authorname="Seravy")
Trigger1= command="holdback"

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
Trigger2 = var(59)>0
trigger2 = Authorname="Seravy"
x = const(velocity.walk.fwd.x)

[State 20, 1]
type = VelAdd
Trigger1=1
x=-vel x*0.05

[State 20, 2]
type = Null;VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 13556]
Type=ChangeState
Trigger1=RoundState>2
Value=13554

[State 13559]
Type=ChangeState
Trigger1=Pos X !=[-90,90]
Value=13553

[Statedef 13558] ; Opponent Get Hit
MoveType = H
Type= S
Physics  = S
Anim     = 5000
SprPriority = 4
velset = 0,0

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 13558]
Type=ChangeState
Trigger1=time>=10
value=13559

[Statedef 13851]
anim=9999

[State 13851]
Type=ScreenBound
Trigger1=1
value=1
movecamera=1,1

[State 13851]
Type=Destroyself
Trigger1=parent,stateno!=13551
Trigger1=parent,stateno!=13810
Trigger1=parent,stateno!=13817
Trigger1=root,var(12)=0
Trigger1=root,var(57)=0

[Statedef 13583]
anim=9999

[state 13853]
Type=AssertSpecial
Trigger1=1
flag=invisible

[State 13853]
Type=PlayerPush
Trigger1=1
value=0

[State 13853]
Type=ChangeState
Trigger1=root,stateno!=13551
value=0

[Statedef 13551] ; Player
Type     = S
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 10310
sprpriority=-100

[State 13551]
Type=Helper
Trigger1=NumHelper(13851)=0
ID = 13851
stateno= 13851
Postype=left
pos= 0,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 13551]
Type=Helper
Trigger1=NumHelper(13852)=0
ID = 13852
stateno= 13851
Postype=left
pos= 320,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 260]
Type = Projectile
Trigger1 = P2StateNo!=[13552,13559]
Trigger1 = P2StateNo!=43816
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=13559
P1StateNo=13551
ID = 13550
hitonce = 0

[State 13551]
Type=VarSet
Trigger1=P2StateNo!=43816
v=39
value=13558

[State -2]
Type=VarSet
Trigger1=P2StateNo=13552
var(39)=13552

[State -2]
Type=VarSet
Trigger1=P2StateNo=13556
var(39)=13556

[State -2]
Type=VarSet
Trigger1=P2StateNo=13557
var(39)=13557

[State 13551]
Type=PosSet
Trigger1=1
X=0
Y=0

[State 13551]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 13551]
Type=Assertspecial
Trigger1=1
flag=Nobg
flag2=Nofg

[State 13551]
Type=ChangeAnim
Trigger1=anim=10313
Trigger1=P2StateNo=13559
value=10310+2*(random %2)

[State 13551]
Type=Changeanim
Trigger1=P2StateNo=[13556,13557]
Trigger2=P2StateNo=13552
value=10313

[State 13551]
Type=VarAdd
Triggerall=var(12)=0
Trigger1=P2StateNo=13557
v=9
value=1

[State 13551]
Type=Varset
Trigger1=P2StateNo=13556
v=9
value=0

[State 13551]
Type=RemoveExplod
Trigger1=P2StateNo=13554
Trigger2=RoundState>2
ID=13551

[State 13551]
Type=PosSet
Trigger1=P2StateNo=13554
Trigger2=RoundState>2
X=160

[State 13551]
Type=ChangeState
Trigger1=P2StateNo=13554
Trigger2=RoundState>2
ctrl=1
value=0

[State 13551]
Type=RemoveExplod
Trigger1=P2StateNo=13556
Trigger2=P2StateNo=13557
Trigger3=P2StateNo=13552
ID=13551

[State 13551]
Type=Explod
Trigger1=!IsHelper
Trigger1=NumExplod(13551)=0
Trigger1=P2StateNo!=13552
Trigger1=P2StateNo!=13556
Trigger1=P2StateNo!=13557
Trigger1=P2StateNo!=43816
ID=13551
anim=10311
bindtime=-1
removetime=-1
vel=0,0
postype=P1
pos=0,20
supermovetime=9999999
pausemovetime=9999999
scale=1,1
sprpriority=50
ownpal=1
ignorehitpause=1

[State 13551]
Type=Explod
Trigger1=!IsHelper
Trigger1=P2StateNo=13556
Trigger1=Enemy,Pos X=[-30,30]
ID=13556
anim=10021
bindtime=1
removetime=30
vel=0,0
postype=P2
pos=random %20-10,-random %80
supermovetime=9999999
pausemovetime=9999999
scale=1,1
sprpriority=20
ownpal=1
ignorehitpause=1
trans=add

[State 240]
Type = Null;Helper
Trigger1 = P2StateNo=13557
Trigger1 = enemy,Pos X=[-60,60]
StateNo = 13571
ID = 13571
Name = "Ice Cube"
Pos = floor(enemy,pos X)+30,-220
PosType = P2
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.8
Size.yscale=0.8
persistent=15

[Statedef 13552]
type = S
movetype = H
physics = N
anim = 5000
ctrl = 0
velset=0,0

[State 13951]
Type=ChangeAnim
Trigger1=1
value=5000
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0
ignorehitpause=1

[State 4065,SS]
Type=ChangeState
trigger1=time=60
value=13557

[State 4065,SS]
Type=ChangeState
trigger1=roundstate>2
value=13554

[State 13951]
Type=PalFX
Trigger1=1
Add=50,50,255
Mul=220,220,256
time=10
ignorehitpause=1

[Statedef 13553]

[State 13556]
Type=PosSet
Trigger1=time=0
;Trigger2= Pos X<-100
X=-100

[State 13556]
Type=Turn
Trigger1= Facing=-1

[State 13553]
Type=ChangeState 
Trigger1=1
value=13556+(random %2)

[Statedef 13557]
movetype=H
type = S
physics = N
sprpriority = 0
anim = 20
ctrl=0

[State 13556]
Type=VelSet
Trigger1=1
X=3

[State 13556]
Type=Turn
Trigger1= Facing=-1

[State 13556]
Type=ChangeState
Trigger1=Pos X>100
Trigger2=Time>100
Value=13555

[State 13556]
Type=ChangeState
Trigger1=RoundState>2
Value=13554

[Statedef 13556]
movetype=H
type = S
physics = N
sprpriority = 0
anim = 20
ctrl=0
;facep2=1

[State 13556]
Type=Turn
Trigger1= Facing=-1

[State 13556]
Type=VelSet
Trigger1=1
X=3

[State 13556]
Type=LifeAdd
Trigger1=Pos X=[-30,30]
Value=-3

[State 13556]
Type=ChangeState
Trigger1=Pos X>100
Trigger2=Time>100
Value=13555

[State 13556]
Type=ChangeState
Trigger1=RoundState>2
Value=13554

[Statedef 13555]
movetype=I
type = S
physics = N
sprpriority = 0
anim = 20
ctrl=0
facep2=1

[State 13555]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 13556]
Type=PosSet
Trigger1=1
X=0

[State 13557]
Type=ChangeState
Trigger1=enemy,var(9)>200
value=13554

[State 13556]
Type=ChangeState
Trigger1=1
Value=13559

[Statedef 13554]
movetype=I
type = S
physics = S
sprpriority = 0
anim = 20
ctrl=0
facep2=1

[State 13554]
Type=NotHitBy
Trigger1=1
value=SAC

[State 13557]
Type=PosSet
Trigger1=enemy,stateno!=13551
X=-160

[State 13557]
Type=SelfState
Trigger1=enemy,stateno!=13551
value=0
ctrl=1

;------------------Ice Cube not used---------------------
[Statedef 13571]

[State 521]
Type=VarSet
Trigger1=1
v=21
value=3000+random

[State 521]
Type=ChangeState
Trigger1=Root,NumProjID(var(21))!=0
value=13571

[State 511]
Type=VarSet
Trigger1=1
v=9
value=0

[State 521]
Type=ChangeState
Trigger1=1
value=13572

[Statedef 13572] 
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 = 0,10
anim = 10230
Sprpriority = 3

[State 13961]
Type=ChangeAnim
Triggerall=anim=10230
Trigger1=var(9)>0
Trigger2= Pos Y>-30
Value=10231

[State 13961]
Type=veladd
Trigger1=1
y= 0.4

[State 1000, sound]
type = Playsnd
trigger1 = Pos Y>-30
trigger1 = abs(vel Y)>2
value = 13950,1

[State 13961]
Type=velSet
Trigger1=Pos Y>-30
Y= -Vel Y*0.8

[State 13961]
Type=AngleSet
Trigger1=1
value=time*4

[State 13961]
Type=AngleDraw
Trigger1=1

[State 13961]
Type=Trans
Trigger1=1
Trans=addalpha
alpha=256,128

[State 13961]
Type=DestroySelf
Trigger1= Anim=10231
Trigger1= Animtime=0

[State 501]
Type=VarSet
Trigger1=root,ProjContactTime(var(21))=[0,30]
Trigger2=root,ProjHitTime(var(21))=[0,30]
Trigger3=root,ProjCancelTime(var(21))=[0,30]
Trigger4=root,ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarAdd
Trigger1=var(9)>0
v=9
value=1

[State 221]
Type = Projectile
offset = 0,0
Projanim=10237
ProjID=var(21)
Projremovetime=1
Projremanim=9919
Trigger1= var(9)=0
Attr              = A, HA
Damage            = 15+10*(Numhelper(12901)+Numhelper(12911)),0
GetPower          = 0
AnimType          = Hard
HitFlag           = MA
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = S13950,1
GuardSound        = S13950,1
Ground.Type       = High
Ground.SlideTime  = 1
Ground.HitTime    = 1
Air.HitTime       = 1
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Guard.Kill = 0
ID = 13961
P2StateNo=13552

;
; ***** Card : Loop *****
;

; ----- Eternal Road -----
[Statedef 13600]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = VarSet
Trigger1=!Ishelper
v=12
value=1

[State 4140]
Type = ParentVarSet
Trigger1=Ishelper
v=12
value=1

[State 13551]
Type=Helper
Trigger1=NumHelper(13851)=0
ID = 13851
stateno= 13851
Postype=left
pos= 0,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 13551]
Type=Helper
Trigger1=NumHelper(13852)=0
ID = 13852
stateno= 13851
Postype=left
pos= 320,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1


;
; ***** Card : Lock *****
;

; ----- Safety Wall -----
[Statedef 13650]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 13750]
Type=VarSet
Trigger1=time=0
var(2)=34

[State 12600]
Type=VarSet
Trigger1=time=0
var(1)=-1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "Circle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.3
Size.yscale=0.3
PauseMoveTime=9999999

[State 12860]
Type=NotHitBY
Trigger1=1
value=SAC

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 13651
ID = 13651
Name = "SafetyWall"
Pos = 0,10
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
;PauseMoveTime=9999999

[State 1000, state]
type = ChangeState
trigger1 = time>3
value = 0
ctrl = 1

[Statedef 13651]
MoveType = I
Physics  = N
Anim     = 10690
velset=0,0
facep2=1
SprPriority = 4

[State 13651]
Type=Assertspecial
Trigger1=root,Stateno=13551
flag=Invisible

[State 593]
Type= DestroySelf
Trigger1 = time>=300

[State 912]
Type=PalFx
Trigger1=1
add=-255,-255,128
time=-1

[State 592]
Type= Trans
Trigger1=1
Trans=addalpha
alpha=200,256

[State 592]
Type=NotHitBy
Trigger1=1
Value=SAC


; ***** Card : Little *****
[Statedef 13700]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

[State 4000]
type = Projectile
trigger1 = time=7
projanim = 7035
projhitanim = 9999
projedgebound = 70
projID = 4060
projremove = 0
projremovetime = 35
projpriority = 1
projsprpriority = 2
postype = p2
offset = -30,0
velocity = 2,0
attr = A, HT
damage = 0,0
animtype = hard
hitflag = MAFD
guardflag =M
sparkno = S6015
Guard.sparkno = S4040
sparkxy = 0,0
hitsound = S14550,2
guardsound = S0,201
pausetime = 0,9
ground.hittime = 17
ground.type = high
ground.slidetime = 17
ground.velocity = -5,-6
air.velocity = -5,-6
fall = 1
fall.recover = 0
air.juggle = 5
yaccel = .5
getpower = 0
P2StateNo=13705
P1StateNo=13701
hitonce = 0
guard.dist = 9999

[State 1000, state]
type = ChangeState
trigger1 = Time>7
value = 0
ctrl = 1

[Statedef 13701]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=VarSet
trigger1 = time=0
v=4
Value=1

[State 13701]
Type=varset
trigger1=time=0
v=39
value=13744

[State 1000, state]
type = ChangeState
trigger1 = Time>0
value = 0
ctrl = 1

[Statedef 13705]
type = S
movetype = I
physics = S
anim = 0
ctrl = 0
velset=0,0

[State 13705]
Type=PlayerPush
Trigger1=1
value=0

[State -2]
type = AfterImage
Trigger1=enemy,var(4)<3
time = 30
FrameGap = 1
length = 12
PalContrast = 30,255,90
PalBright = 30,255,90
TimeGap = 2
PalColor = 0
Trans = add
persistent = 0

[State 4065,SS]
Type=SelfState
triggerall=RoundState>2
Triggerall=life=0
trigger1=enemy,var(4)>300
trigger2=enemy,var(4)=0
trigger2=time>10
value=5050

[State 4065,SS]
Type=SelfState
trigger1=enemy,var(4)>300
trigger2=enemy,var(4)=0
trigger2=time>10
value=50
ctrl=1

[State x]
Type=Changestate
Trigger1=pos Y<0
value=13707

[State 20]
Type= turn
Triggerall = (var(59)=0) || !(Authorname="Seravy")
Trigger1= command="holdback"

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 0, 1]
type = ChangeAnim
triggerall = vel x=0
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 13705]
Type=AngleSet
Trigger1=1
value=0

[State 4065,AD1]
Type=Angledraw
trigger1=enemy,var(4)<30
scale=1-((0.6*enemy,var(4))/30),1-((0.6*enemy,var(4))/30)

[State 4065,AD2]
Type=Angledraw
trigger1=enemy,var(4)=[30,270]
scale=0.4,0.4

[State 4065,AD3]
Type=Angledraw
trigger1=enemy,var(4)=[271,300]
scale=0.4+(0.6*(enemy,var(4)-270)/30),0.4+(0.6*(enemy,var(4)-270)/30)

[State 4065,AD3]
Type=Angledraw
trigger1=enemy,var(4)>300
scale=1,1

[Statedef 13707]
Type=A
Movetype=H
Physics=N

[State 4065]
Type=Gravity
Trigger1= 1

[State 4065]
Type=ChangeAnim
Trigger1= time=0
value=46*(Selfanimexist(46))+43*(!Selfanimexist(46))

[State 4065]
Type=VelSet
Trigger1= Pos Y>=0
Y=0

[State 4065]
Type=PosSet
Trigger1= Pos Y>0
Y=0

[State x]
Type=Changestate
Trigger1=pos Y>=0
value=13705

[State 13705]
Type=AngleSet
Trigger1=1
value=0

[State 4065,AD1]
Type=Angledraw
trigger1=enemy,var(4)<30
scale=1-((0.6*enemy,var(4))/30),1-((0.6*enemy,var(4))/30)

[State 4065,AD2]
Type=Angledraw
trigger1=enemy,var(4)=[30,270]
scale=0.4,0.4

[State 4065,AD3]
Type=Angledraw
trigger1=enemy,var(4)=[271,300]
scale=0.4+(0.6*(enemy,var(4)-270)/30),0.4+(0.6*(enemy,var(4)-270)/30)

[State 4065,AD3]
Type=Angledraw
trigger1=enemy,var(4)>300
scale=1,1



[Statedef 13744]
type = U
movetype = H
physics = N
anim = 5030
facep2=1
ctrl = 0

[State 12007]
Type=VelSet
Trigger1=time=0
X=gethitvar(xvel)*facing
Y=gethitvar(yvel)

[State 12007]
Type=Lifeadd
Trigger1=time=0
value=-floor(0.33*gethitvar(damage))

[State 13744]
Type=Statetypeset
Trigger1=pos Y>=0
statetype=S
Physics=S

[State 13744]
Type=Statetypeset
Trigger1=pos Y<0
statetype=A
Physics=N

[State 13744]
Type=Gravity
Trigger1=pos Y<0

[State 4065]
Type=VelSet
Trigger1= Pos Y>=0
Y=0

[State 4065]
Type=PosSet
Trigger1= Pos Y>0
Y=0

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0
ignorehitpause=1

[State 4065,SS]
Type=SelfState
trigger1=enemy,var(4)>300
trigger1=RoundState>2
Trigger1=life=0
value=5050
ignorehitpause=1

[State 4065,SS]
Type=SelfState
trigger1=enemy,var(4)>300
value=50
ctrl=1
ignorehitpause=1

[State 13705]
Type=AngleSet
Trigger1=1
value=0
ignorehitpause=1

[State 4065,AD1]
Type=Angledraw
trigger1=enemy,var(4)<30
scale=1-((0.6*enemy,var(4))/30),1-((0.6*enemy,var(4))/30)
ignorehitpause=1

[State 4065,AD2]
Type=Angledraw
trigger1=enemy,var(4)=[30,270]
scale=0.4,0.4
ignorehitpause=1

[State 4065,AD3]
Type=Angledraw
trigger1=enemy,var(4)=[271,300]
scale=0.4+(0.6*(enemy,var(4)-270)/30),0.4+(0.6*(enemy,var(4)-270)/30)
ignorehitpause=1

[State 4065,AD3]
Type=Angledraw
trigger1=enemy,var(4)>300
scale=1,1
ignorehitpause=1

[State 13706]
Type=ChangeState
Trigger1=hitover
Trigger2=time>=60
Value=13705
ignorehitpause=1

;
; ***** Card : Libra *****
;

; ----- Righteous Justice -----
[Statedef 13750] 
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 10500
Sprpriority = -3

[State 13750]
Type=BindtoParent
Trigger1=1
time=1

[State 13750]
Type=Assertspecial
Trigger1=1
flag=NoKo
flag2=Noshadow

[State 13750]
Type=ParentVarSet
Trigger1=time=0
var(2)=36

[State 12600]
Type=ParentVarSet
Trigger1=time=0
var(1)=-1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "ClowCircle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.7
Size.yscale=0.7
PauseMoveTime=9999999
Supermovetime=9999999

[State 381,1]
Type=Helper
Trigger1=NumHelper(13754)=0
ID = 13754
stateno= 13754
Postype=P1
pos= 0,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 13750]
Type=Trans
Trigger1=1
trans=addalpha
alpha=56,256
;alpha=IfElse(56+0.4*var(9)<=256,56+0.4*var(9),256),256

[State 13750]
Type=VarAdd
Trigger1=time>0
v=9
value=var(10)-parent,life

[State 13750]
Type=VarSet
trigger1=1
v=10
value=parent,life

[State 13750]
Type=PlaySnd
Trigger1=time=0
value=10500,0

[State 13751]
Type=ChangeState
Triggerall=var(9)<10
Triggerall=time>=180
Trigger1=parent,Stateno!=[5000,5090]
Trigger1=parent,time>=10
trigger1=parent,Stateno!=[150,156]
value=13759

[State 13750]
Type=ChangeState
Triggerall=time>=180
Trigger1=parent,Stateno!=[5000,5090]
Trigger1=parent,time>=10
trigger1=parent,Stateno!=[150,156]
value=13751

[Statedef 13754]
Type= A
Movetype = I
Physics=N
anim=9999

[State 13754]
Type=Turn
Trigger1=facing=-1

[State 13750]
Type=BindtoParent
Trigger1=1
time=1

[State 13754]
Type=VarSet
Trigger1=time>0
var(28)=var(27)

[State 13754]
Type=VarSet
Trigger1=time>0
var(29)=parent,var(9)

[State 13754]
Type=VarSet
Trigger1=time>0
var(27)=parent,var(9)

[State 13754]
Type=Destroyself
Trigger1=time>0
Trigger1=parent,stateno!=13750

[State 13754]
Type=VarSet
Trigger1=time>0
var(7)=13754

[State 13754]
Type=VarSet
Trigger1=1
var(12)=13754

[State 13754]
Type=VarSet
Trigger1=1
var(13)=0

[State 13754]
Type=VarSet
Trigger1=time>0
var(5)=20

[State 13754]
Type=VarSet
Trigger1=time>0
var(6)=-100

[State 13754]
Type=VarSet
Trigger1=time>0
var(8)=180

[State 13754]
Type=RemoveExplod
Trigger1=time>0
Trigger1=var(29)!=var(28)
Trigger2=Parent,StateNo!=13750
ID=13754

[State 13754]
Type=ChangeState
Trigger1=time>0
Trigger1=var(29)>=10
Trigger1=var(29)!=var(28)
value=799

[Statedef 13751] 
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 9999
Sprpriority = -3

[State 999]
Type=Explod
Trigger1=1
anim=700+random %10
ID = 700
Postype=P1
pos= 0,-100
bindtime=1
removetime=60
vel=(random %100-50)*0.2,(random %100-50)*0.2
sprpriority=999
ownpal=1
scale= 0.4,0.4
Pausemovetime=9999
Supermovetime=9999
facing=1-2*(Facing=-1)

[State 1461]
Type=BgPalFX
Trigger1=1
Add=0,100-5*abs(time-20),0
Time=1

[State 13751]
Type=Assertspecial
Trigger1=1
flag=NoKo
flag2=Noshadow

[State 13751]
Type=PosSet
Trigger1=1
X=0 ;enemy,Pos X
Y=-60 ;enemy,Pos Y-50

[State 13751]
Type=PosAdd
Trigger1=1
Y=(180-ScreenPos Y)

[State 13751]
Type=VarSet
Trigger1=time=37
v=11
value=enemy(0),life

[State 13751]
Type=Null;Trans
Trigger1=1
trans=addalpha
alpha=IfElse(56+0.4*var(9)<=256,56+0.4*var(9),256),256

[State 13513]
type = Null;SuperPause
trigger1 = time =0
time = 39
anim = -1
movetime = 39
p2defmul = 1
darken=0

[State 13513]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 14051]
Type = VarSet
Trigger1 = (Time = 0)
fvar(0) = 1

[State 14051]
Type = VarSet
Trigger1 = Time = 0
fvar(1) = 1

[State 14051]
Type = VarAdd
Trigger1 = Time > 1
fvar(2) = .025

[State 14051]
Type = VarSet
Trigger1 = Time > 0
fvar(2) = 0
Persistent = 40

[State 14051] 
Type = Explod
Trigger1 = Time = 0
Anim = 10502
ID = 2055
Pos = 0,0
BindTime = -1
Scale = 1,1
SprPriority = -13
RemoveTime = -1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime=39

[State 14051]
Type = Explod
Trigger1 = Time = 0
Anim = 10500
ID = 2055
Pos = 0,0
BindTime = -1
Scale = 1,1
SprPriority = -12
RemoveTime = -1
IgnoreHitPause = 1
Persistent = 1
;SuperMoveTime=39

[State 14051]
Type = Explod
Trigger1 = var(0) = 0
Trigger1 = Time >0
Anim = 10501
ID = 2056
Pos = 0,0
BindTime = -1
Scale = 1,1
Ownpal = 1
SprPriority = -11
IgnoreHitPause = 1
Persistent = 40
;SuperMoveTime=39

[State 14051]
Type = ModifyExplod
Trigger1 = 1
ID = 2055
Scale = fvar(0),fvar(1)
IgnoreHitPause = 1

[State 14051]
Type = ModifyExplod
Trigger1 = 1
ID = 2056
Scale = 1+fvar(2),1+fvar(2)
IgnoreHitPause = 1

[State 14051]
Type = RemoveExplod
Trigger1 = time>=39
ID = 2055
IgnoreHitPause = 1

[State 14051]
Type = RemoveExplod
Trigger1 = time>=39
ID = 2056
IgnoreHitPause = 1

[State 14051]
Type = Projectile
Triggerall = var(42)<16
Trigger1 = time=38
Trigger1 = root,NumProjID(13751)=0
Attr              = A, HT
Damage            = var(9),var(9)
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 0,0
Velocity          = 0,0
ProjID            = 13751
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAFD
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
;Fall = 1
;Fall.Recover = 0
P2StateNo=43816
hitonce = 0

[State 14051]
Type = Projectile
Triggerall = var(42)>=16
Trigger1 = time=38
Trigger1 = root,NumProjID(13751)=0
Attr              = A, HP
Damage            = var(9),var(9)
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = 0,0
Velocity          = 0,0
ProjID            = 13751
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAFD
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
;Fall = 1
;Fall.Recover = 0
P2StateNo=43816
hitonce = 0

[State 13751]
Type = ChangeState
Trigger1 = time>=39
Value=13752

[Statedef 13752] 
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 10500
Sprpriority = -3

[State 13752]
Type=VarAdd
Trigger1=time=3
v=42
value=1

[State 13752]
Type=Assertspecial
Trigger1=1
flag=NoKo
flag2=Noshadow

[State 13751]
Type=VarAdd
Trigger1=time=3
Trigger1=var(11)>=enemy(0),life
v=9
value=enemy(0),life-var(11)

[State 13751]
Type=PosSet
Trigger1=1
X=0 ;enemy,Pos X
Y=-60 ;enemy,Pos Y-50

[State 13751]
Type=PosAdd
Trigger1=1
Y=(180-ScreenPos Y)

[State 13752]
Type=ChangeState
Trigger1=var(9)<10
Trigger2=P2Life=0
Trigger3=var(42)>=20
Value=13759

[State 13750]
Type=Trans
Trigger1=1
trans=none;addalpha
;alpha=IfElse(56+0.4*var(9)<=256,56+0.4*var(9),256),256

[State 13750]
Type=PlaySnd
Trigger1=time=180
Trigger2=time >=5
Trigger2=var(42) %4!=3
value=10500,0

[State 13752]
Type=ChangeState
Trigger1=time>180
Trigger2=time >=5
Trigger2=var(42) %4!=3
Value=13751

[Statedef 13758] 
Type     = L
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 5110
Sprpriority = 0

[State 13758]
Type=PosAdd
Trigger1=Pos Y<0
Y=1

[State 13758]
Type=Assertspecial
Trigger1=1
flag=NoKo
ignorehitpause=1

[State 13758]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 13758]
Type=LifeSet
Trigger1=1
value=1

[State 13758]
Type=LifeSet
Trigger1=NumHelper(13750)<1
value=0

[State 13758]
Type=ChangeState
Trigger1=Pos Y>=0
Trigger1=NumHelper(13750)<1
Value=5150

[Statedef 13759] 
Type     = S
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim = 9999
Sprpriority = 0

[State 13759]
Type=DestroySelf
Trigger1=time>10

;
; ***** Card : Jump *****
;

; ----- Quick Jump -----
[Statedef 13800]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 450]
Type = VarSet
Trigger1 = Time=0
v=17
value=2

[State 240]
Type = ChangeState
Trigger1 = Animtime=0
Value = 0
Ctrl = 1

;
; ***** Card : Illusion *****
;

; ----- Invisibility ------
[Statedef 13850]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = VarSet
Trigger1=1
v=13
value=900

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

; ----- Annihilation Forecast -----
[Statedef 13860]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14553]
Type=Attackdist
Trigger1=1
value=9999

[State 13860]
Type=StateTypeSet
Trigger1=time=58
MoveType=A

[State 13860]
Type=AllPalFX
Trigger1=time<60
add=-time*2,-time*2,-time*2
time=1

[State 1600]
Type=AssertSpecial
Trigger1=time>60
flag=NoBG
flag2=NoFG
flag3=Invisible

[State 1601]
Type=NotHitBy
Trigger1=1
Value=,NA,SA,NT,ST,NP,SP

[State 260]
Type = Projectile
Trigger1 = time= [60,90]
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,0
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAF
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
P2StateNo=13867
P1StateNo=13861
ID = 13860
hitonce = 0

[State 13860]
Type = Explod
Trigger1=time=95
anim=10750
ID = 13860
Pos = floor(Enemy, ScreenPos X-5),160
PosType = Left
bindtime=1
vel=0,-3
removetime=30
sprpriority=99
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 1601]
Type=ChangeState
Trigger1=time>100
value=0
ctrl=1

[Statedef 13861]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 3009, pause]
type = SuperPause
trigger1 = 1
darken = 0
time = 2
anim = -1
movetime = 2
p2defmul = 1

[State 13861]
Type=Assertspecial
Trigger1=1
flag=Timerfreeze

[State 4140]
Type = Helper
Trigger1 = time%10=0
Trigger1 = time<500
StateNo = 13865
ID = 13865
Name = "Judgement"
Pos = random %70-35,-250
PosType = P2
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
Supermovetime=9999999
Size.xscale=1
Size.yscale=1

[State 7703]
Type=Explod
Trigger1=time=10
anim=20090
ID = 13865
Postype=Left
pos= 0,0
bindtime=1
removetime=530
vel= -0.6,-0.2
sprpriority=-5
ownpal=1
trans=sub
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 1600]
Type=AssertSpecial
Trigger1=1
flag=NoBG
flag2=NoFG
flag3=Invisible

[State 1601]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 13860]
Type=VarSet
Trigger1=time=0
v=9
value=IfElse(enemy,power>7000,random<100,random<(800-enemy,power/10))

[State 260]
Type = Projectile
Trigger1 = time=550
Attr              = A, HT
Damage            = floor(var(9)*(enemy,life/2)*enemy,const(data.defence)/const(data.attack)),floor(var(9)*(enemy,life/2)*enemy,const(data.defence)/const(data.attack))
GetPower          = 0
Givepower         = -floor(var(9)*enemy,power/2),-floor(var(9)*enemy,power/2)
AnimType          = Diagup
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 1
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAFD
GuardFlag         = 
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Supermovetime=99999
pausemovetime=99999
hitonce=0

[State 13860]
Type = Explod
Trigger1 = time=550
Trigger1 = var(9)=0
anim=10750
ID = 13860
Pos = floor(Enemy, ScreenPos X-5),160
PosType = Left
bindtime=1
vel=0,-3
removetime=30
sprpriority=99
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 1601]
Type=ChangeState
Trigger1=time>580
Trigger2=P2StateNo!=13867
value=0
ctrl=1

[Statedef 13865]
MoveType = I
Type = A
Physics  = N
Anim     = 10740
velset	 =0,5
sprpriority=-10

[State 4202]
Type= VarSet
Trigger1=time=0
v=0
value=random % (random %256+1)

[State 4202]
Type= VarSet
Trigger1=time=0
v=1
value=random % (random %256+1)

[State 4202]
Type= VarSet
Trigger1=time=0
v=2
value=random % (random %256+1)

[State 13902]
Type=PalFX
Trigger1=1
mul=var(0),var(1),var(2)
time=3

[State 13902]
Type=Trans
Trigger1=1
Trans=AddAlpha
Alpha=256,256

[State 13902]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 13902]
Type=ChangeAnim
Trigger1=Pos Y>=-40
Trigger1=anim!=10730
value=10730

[State 13902]
Type=DestroySelf
Trigger1=anim=10730
Trigger1=animtime=0

[State 1605]
Type=VelSet
Trigger1=anim=10730
X=0
Y=0

[State 1605]
Type=PosSet
Trigger1=anim=10730
Y=0

[State 1605]
Type=PlaySnd
Trigger1=time=0
Value=S13860,random %4

[Statedef 13867]
Type=S
MoveType=H
Physics=S
anim=0
velset=0,0

[State 13876]
Type=PosSet
Trigger1=1
Y=0

; ----- Mirage Attack ------
[Statedef 13870]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 13871
ID = 13871
Name = "Mirage"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

[Statedef 13871]
Type=A
MoveType=I
Physics=N
velset=0,0
anim=9999

[State 13871]
Type=PosSet
Trigger1=1
Y=enemy,Pos Y+enemy,const(size.head.pos.Y)
X=enemy,Pos X

[State 4202]
Type=varset
trigger1=1
v=7
value=random %7

[State 4202]
Type= VarSet
Trigger1=1
v=4
value=64+128*((var(7)=0)+(var(7)=[3,4])+(var(7)=6))

[State 4202]
Type= VarSet
Trigger1=1
v=5
value=64+128*((var(7)=1)+(var(7)=3)+(var(7)=[5,6]))

[State 4202]
Type= VarSet
Trigger1=1
v=6
value=64+128*((var(7)=2)+(var(7)=[4,6]))

[State 13871]
Type = Projectile
Trigger1 = time %15=0
Attr              = A, NA
Damage            = 0,0
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,0
Guard.PauseTime   = 0,0
Offset            = random %30-15,random %30-15
PosType		  = P1
Velocity          = 0.1*(random %3-1),0.1*(random %3-1)
Guard.Dist        = 0
ProjID            = 13871
ProjAnim          = 20013
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 0.2,0.2
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 120
ProjHeightBound   = -999,999
HitFlag           = 
GuardFlag         = 
ID = 13871
projsprpriority= 4
afterimage.time = -1
afterimage.FrameGap = 1
afterimage.length = 2
afterimage.PalContrast = var(4),var(5),var(6)
afterimage.PalBright = var(4),var(5),var(6)
afterimage.Trans = add
afterimage.TimeGap = 1
afterimage.PalColor = 256
afterimage.PalAdd = 0,0,0
afterimage.PalMul = 0,0,0
projshadow=0,0,0
;pausemovetime=99999
;supermovetime=99999

[State 13871]
Type=StateTypeSet
Trigger1=time % 120>90-enemy,power/120
MoveType=I

[State 13871]
Type=StateTypeSet
Trigger1=time % 120<=90-enemy,power/120
MoveType=A

[State 13871]
Type=destroyself
Trigger1=time>1500



; ***** Card : Illusion ***** --- Haunt ---
[Statedef 13880]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
;Trigger1 = time=0
Trigger1 = NumHelper(13881)=0
StateNo = 13881
ID = 13881
Name = "HauntMain"
Pos = -40,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[Statedef 13881]
MoveType = I
Physics  = N
Anim     = 9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 4140]
Type = Helper
Trigger1=time=0
StateNo = 13888
ID = 13888
Name = "HauntEffect"
Pos = 0,0
PosType = Back
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
supermovetime=99999
pausemovetime=99999

[State 1000, dm sound]
type = Playsnd
trigger1 = time %100=0
Trigger1 = time<=3300
value = 13901,0

[State 4140]
Type = Helper
Trigger1 = time%100=0
Trigger1 = time<=3300
StateNo = 13882
ID = 13882
Name = "Haunt"
Pos = random %320,-300
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1

[State 13902]
Type=Null;BgPalFX
Trigger1=1
add=var(0),var(1),var(2)
time=3

[State 541]
Type = DestroySelf
Trigger1 = Time>3600

[Statedef 13882]
MoveType = A
Type = A
Physics  = N
Anim     = 10190
velset	 =0,1
sprpriority=-10

[State 14553]
Type=Attackdist
Trigger1=1
value=20

[State 4140]
Type = Helper
Trigger1 = time=0
StateNo = 13884
ID = 13884
Name = "Haunt"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1

[State 4202]
Type=varset
trigger1=time=0
v=7
value=random %7

[State 4202]
Type= VarSet
Trigger1=time=0
v=0
value=64+128*((var(7)=0)+(var(7)=[3,4])+(var(7)=6))

[State 4202]
Type= VarSet
Trigger1=time=0
v=1
value=64+128*((var(7)=1)+(var(7)=3)+(var(7)=[5,6]))

[State 4202]
Type= VarSet
Trigger1=time=0
v=2
value=64+128*((var(7)=2)+(var(7)=[4,6]))

[State 13902]
Type=ParentVarAdd
Triggerall=numhelper(13881)
Trigger1=Pos Y>=-240
Trigger1=time %10=1
v=0
value=2*(var(0)/20)*(1-2*(Pos Y>-120))

[State 13902]
Type=ParentVarAdd
Triggerall=numhelper(13881)
Trigger1=Pos Y>=-240
Trigger1=time %10=1
v=1
value=2*(var(1)/20)*(1-2*(Pos Y>-120))

[State 13902]
Type=ParentVarAdd
Triggerall=numhelper(13881)
Trigger1=Pos Y>=-240
Trigger1=time %10=1
v=2
value=2*(var(2)/20)*(1-2*(Pos Y>-120))

[State 13902]
Type=PalFX
Trigger1=1
add=30,30,30
mul=var(0),var(1),var(2)
time=3

[State 13902]
Type=Trans
Trigger1=1
Trans=AddAlpha
alpha=256,256

[State 13902]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 13902]
Type=AngleSet
Trigger1=1
Value=-90

[State 13902]
Type=AngleDraw
Trigger1=1

[State 500]
Type=Helper
Trigger1=movecontact=1
StateNo = 13885
ID = 13885
Name = "StarHitspark"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
Supermovetime=999999
Pausemovetime=999999

[State 221]
Type = hitdef
Trigger1 = movecontact=0
Attr              = A, SP
Damage            = 0,0
GetPower          = 50
GivePower         = -400,0
AnimType          = Hard
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,45
Guard.Pausetime   = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = -25,-25
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
Guard.Dist = 30
ID = 13882

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 13902]
Type=DestroySelf
Trigger1=Pos Y>=0
Trigger2=Movecontact
Trigger3=Movereversed

[Statedef 13884]
MoveType = I
Type = A
Physics  = N
Anim     = 20010
sprpriority=-10

[State 513]
Type=Destroyself
Trigger1=pos Y>=0
Trigger2=parent,Movecontact
Trigger3=parent,Movereversed

[State 13904]
Type=Bindtoparent
Trigger1=1

[State 13904]
Type=Angledraw
Trigger1=1
scale=0.2+0.0001*random,0.2+0.0001*random

[State 13904]
Type=Trans
Trigger1=1
trans=addalpha
alpha=160,256

[State 513]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 4202]
Type=PalFX
Trigger1=1
mul=parent,var(0),parent,var(1),parent,var(2)
time=1

[Statedef 13885]
Type=A
MoveType=I
Physics=N
Anim=20001
Sprpriority=3
velset=0,0
sprpriority=-10

[State 513]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 4202]
Type=PalFX
Trigger1=1
mul=parent,var(0),parent,var(1),parent,var(2)
time=1

[State 513]
Type=Destroyself
Trigger1=animtime=0

[Statedef 13888]
Type=A
Movetype=I
anim=20090
sprpriority=-5

[State 13888]
Type=varset
Trigger1=time=0
fvar(0)=fvar(1):=100

[State 13888]
Type=varset
Trigger1=time=0
fvar(2)=fvar(3):=0

[State 13888]
Type=varset
Trigger1=time %180=0
fvar(4)=0.002*(random -500)

[State 13888]
Type=varset
Trigger1=time %180=0
fvar(5)=0.002*(random -500)

[State 13888]
Type=Varset
Trigger1=1
fvar(2)=fvar(2)+(fvar(4)-fvar(2))*0.03

[State 13888]
Type=Varset
Trigger1=1
fvar(3)=fvar(3)+(fvar(5)-fvar(3))*0.03

[State 13888]
Type=PosAdd
Trigger1=1
X=-floor(backedgedist+fvar(0))
Y=-floor((ScreenPos Y+5)+fvar(1))

[State 13888]
Type=varadd
Trigger1=(fvar(0)+fvar(2))=[60,300]
fvar(0)=fvar(2)

[State 13888]
Type=varadd
Trigger1=(fvar(1)+fvar(3))=[0,200]
fvar(1)=fvar(3)

[State x]
Type=trans
Trigger1=1
trans=sub

[State 13955]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 1600]
Type=AssertSpecial
Trigger1=1
flag=NoBG
flag2=NoFG

[State 13888]
Type=destroyself
Trigger1=Numhelper(13881)=0

; Glow
[Statedef 13900]
Type=S
movetype=A
Physics=S

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 13901
ID = 13901
Name = "GlowDamage"
Pos = 160,-90
PosType = Back
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 13900]
Type=Changestate
Trigger1=time>30
value=0
ctrl=1

; Gloweffect
[Statedef 13902]
Type=A
movetype=I
anim=13900
sprpriority=gametime

[State 4202]
Type= VarSet
Trigger1=time=0
v=7
value=random % (random %224+1)+32

[State 4202]
Type= VarSet
Trigger1=time=0
v=8
value=random % (random %224+1)+32

[State 4202]
Type= VarSet
Trigger1=time=0
v=9
value=random % (random %224+1)+32

[State 13902]
Type=PalFX
Trigger1=time=0
mul=var(7),var(8),var(9)
time=-1

[State 13900]
Type=Angledraw
Trigger1=1
scale=0.5+0.3*time,0.5+0.3*time
value=random %360

[State 13900]
Type=Trans
Trigger1=1
trans=addalpha
alpha=256-16*time,256

[State 13902]
Type=Destroyself
Trigger1=time=16

[Statedef 13901]
Type=A
Movetype=A
Physics=N
anim=9998

[State 240]
Type = Helper
Trigger1 = time<20
StateNo = 13902
ID = 13902
Name = "GlowEffect"
Pos = 160,-90
PosType = Back
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1
PauseMoveTime=9999999

[State 221]
Type = hitdef
Trigger1 = time>10
Attr              = A, HT
Damage            = 0,0
GetPower          = 0
AnimType          = Light
HitFlag           = MAF
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,150
SparkNo          = -1
Guard.sparkno = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 1
Ground.HitTime    = 1
Air.HitTime       = 1
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,-12
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Guard.Kill = 0
ID = 13901
hitonce=0

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.5
persistent=0

[State 13902]
Type=Destroyself
Trigger1=time=26



;
; ***** Card : Freeze *****
;

; ----- Spikes of Cold -----
[Statedef 13950] 
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 705, 2]
type = Explod
trigger1 = time=6
anim = 7040
ID = 7040
sprpriority = 0
postype = p1
pos = 0,-100
vel = 0,-2
bindtime = 1
removeongethit = 0
removetime=60
scale = 0.6,0.6

[State 1000, sound]
type = Playsnd
trigger1 = time %10=6
value = 13950,0

[State 13950]
Type=Helper
Trigger1 = time %10=6
ID=13955
StateNo=13955
pos=0,-80-time*2
postype=P1
ownpal=1

[State 240]
Type = ChangeState
Trigger1 = time>60
Value = 0
Ctrl = 1

[Statedef 13955]
anim=10204
Velset = 16,4
Type=A
MoveType=A
Physics=N

[State 13955]
Type=ChangeAnim
Triggerall=anim!=10205
Trigger1=Pos Y>=20
Trigger2=MoveContact
Trigger3=MoveReversed
value=10205

[State 13955]
Type=VelSet
Trigger1=anim=10205
X=0
Y=0

[State 13955]
Type=Destroyself
Trigger1=anim=10205
Trigger1=animtime=0

[State 13955]
Type=StateTypeSet
Trigger1=anim=10205
MoveType=I

[State 260]
Type = HitDef
Trigger1 = time=1
Attr              = A, HP
Damage            = floor(root,fvar(39)*(25+20*(Numhelper(12901)+Numhelper(12911)))),5+5*(Numhelper(12901)+Numhelper(12911))
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
HitFlag           = MAF
GuardFlag         = MA
SparkNo           = -1
Guard.sparkno = -1
SparkXY           = 150,50
HitSound          = S0,205
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 0
Ground.HitTime    = 0
Air.HitTime       = 0
Ground.Velocity   = 0,0
Guard.Velocity    = 0
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Guard.Kill=0
ID = 13955

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.9

[State 0, Helper]
type = Null;Explod
trigger1 = Numtarget(13955)>0
trigger1 = target(13955),stateno!=[120,160]
ID = 13955
anim = 10205
pos = 0,0
postype = p1
bindtime=1
removetime=-2
ownpal = 1
supermovetime=99999
pausemovetime=99999

[State 13955]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 1031]
Type=TargetState
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1 = movehit
value=IfElse((target,name!="Cirno"),IFElse(root,var(39)=13744,13744,13951),43816)

[State 1031]
Type=ChangeState
Trigger1=NumTarget(13955)>0
trigger1=target,stateno=[13951,13952]
value=6868

[State 1031]
Type=TargetDrop
Trigger1=NumTarget(13955)>0

[Statedef 13951]
type = U
movetype = H
physics = N
anim = 5000
ctrl = 0
velset=0,0

[State x]
Type=Statetypeset
Trigger1=pos Y>=0
statetype=S

[State 13951]
Type=ChangeAnim
Trigger1=1
value=5000
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0
ignorehitpause=1

[State 13951]
Type=VelAdd
Trigger1=Pos Y<0
y=0.5
ignorehitpause=1

[State 13952]
Type=LifeAdd
Trigger1=Pos Y>=0
Trigger1=Vel Y>9
value=-75
ignorehitpause=1

[State 13952]
Type=VelSet
Trigger1=Pos Y>=0
Trigger1=Vel Y<=9
X=0
Y=0
ignorehitpause=1

[State 13952]
Type=VelSet
Trigger1=Pos Y>=0
Trigger1=Vel Y>9
X=-2
Y=-4

[State 13952]
Type=SelfState
Trigger1=Pos Y>=0
Trigger1=Vel Y=-4
value=5050

[State 13952]
Type=PosSet
Trigger1=Pos Y>=0
Y=0
ignorehitpause=1

[State 4065,SS]
Type=SelfState
trigger1=RoundState>2
Trigger1=life=0
value=5050

[State 4065,SS]
Type=SelfState
trigger1=random<400
trigger1=time %100=90
trigger1=vel Y=0
trigger2=roundstate>2
value=50
ctrl=1

[State 13951]
Type=AssertSpecial
Trigger1=1
flag=invisible

[State 13951]
Type=Null;PalFX
Trigger1=1
Add=50,50,255
Mul=220,220,256
time=10
ignorehitpause=1

[Statedef 13952]
type = U
movetype = H
physics = N
anim = 5000
ctrl = 0
velset=0,0

[State 13951]
Type=AssertSpecial
Trigger1=1
flag=invisible

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 4065,SS]
Type=SelfState
triggerall=time>0
trigger1=RoundState>2
Trigger1=life=0
value=5050

[State 4065,SS]
Type=SelfState
triggerall=time>0
trigger1=random<350
trigger2=enemy(0),var(39)!=[13951,13952]
trigger2=enemy(1),var(39)!=[13951,13952]
value=50
ctrl=1

[State 13706]
Type=ChangeState
trigger1=time>0
Value=13951

[State 1031]
Type=TargetState
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=movehit=1
Trigger1=NumTarget(13961)>0
Trigger1=target(13961),name!="Cirno"
value=IfElse(root,var(39)=13744,13744,13951)


; ----- Freeze 2 -----
[Statedef 13960]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 12850]
Type=VarSet
Trigger1=1
v=9
value=0

[State 240]
Type = Helper
Trigger1 = time=0
StateNo = 13961
ID = 13961
Name = "FreezeCenter"
Pos = 120,-60
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State 1000, state]
type = ChangeState
trigger1 = 1
value = 13967

[Statedef 13967]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=var(9)<=50
attr = SCA, AA, AP, AT
stateno = 13967
slot = 6
time = 1
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12007]
Type=ChangeState
Trigger1=var(9)>50
Value=0
ctrl=1

; Freeze 2 main helper
[Statedef 13961]
Type=A
Movetype=A
Physics=N
anim=13961

[State 240]
Type = Helper
Trigger1 = time=[0,10]
StateNo = 13962
ID = 13962
Name = "FreezeIcicle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State 240]
Type = Helper
Trigger1 = time=[0,10]
StateNo = 13962
ID = 13962
Name = "FreezeIcicle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State 240]
Type = Helper
Trigger1 = time=[0,10]
StateNo = 13962
ID = 13962
Name = "FreezeIcicle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1

[State 221]
Type = hitdef
Trigger1 = time=6
Attr              = A, HP
Damage            = floor(root,fvar(39)*(280+20*(Numhelper(12901)+Numhelper(12911)))),60+30*(Numhelper(12901)+Numhelper(12911))
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo          = S6001
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,-12
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
ground.cornerpush.veloff=0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 13961

[State 260]
Type = Projectile
Trigger1 = time=5
Attr              = A, HP
Damage            = floor(root,fvar(39)*(100+25*(Numhelper(12901)+Numhelper(12911)))),10+5*(Numhelper(12901)+Numhelper(12911))
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,9
Guard.PauseTime   = 0,9
Offset            = 0,0
Velocity          = 0,0
ProjID            = 13962
ProjAnim          = 13962
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 1
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAFP
GuardFlag         = MA
SparkNo           = S6001
Guard.Sparkno = S4040
SparkXY           = floor(P2dist X),0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -3,-6.5
Guard.Velocity    = -6
Air.Velocity      = -3,-6.5
AirGuard.Velocity = -6,-2.5
Fall = 1
Fall.Recover = 0
ID = 13962
P2StateNo=43816

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.5

[State 1031]
Type=TargetState
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=NumTarget(13961)>0
Trigger1=movehit=1
Trigger1=target,name!="Cirno"
value=IFElse(root,var(39)=13744,13744,13951)

[State 1031]
Type=ChangeState
Trigger1=NumTarget(13961)>0
trigger1=target,stateno=[13951,13952]
value=6868

[State 13962]
Type=destroyself
Trigger1=time>=14


[Statedef 13962]
Type=A
Movetype=I
Physics=N
anim=13960
sprpriority=5

[State 13962]
Type=Angleset
Trigger1=time=0
value=random %360

[State 13962]
Type=Angledraw
Trigger1=1
scale=.6,.6

[State 13962]
Type=Trans
Trigger1=1
trans=add

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 13962]
Type=destroyself
Trigger1=animtime=0


; ----- Freeze 3 (Yue) -----
[Statedef 13970]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 12850]
Type=VarSet
Trigger1=1
v=9
value=0

[State 240]
Type = Helper
Trigger1 = time=0
StateNo = 13971
ID = 13971
Name = "FreezeCenter"
Pos = 0,0
PosType = P2
Ownpal = 1
IgnoreHitPause = 1

[State 1000, state]
type = ChangeState
trigger1 = 1
value = 13977

[Statedef 13977]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=var(9)<=64
attr = SCA, AA, AP, AT
stateno = 13977
slot = 6
time = 1
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12007]
Type=ChangeState
Trigger1=var(9)>64
Value=0
ctrl=1

[Statedef 13971]
Type=A
Movetype=A
Physics=N
anim=13971

[State x]
Type=Attackdist
Trigger1=1
value=0

[State x]
Type=Helper
Trigger1=time<40
stateno=13975
ID=13975
postype=P1
Pos=0,0
size.xscale=0.25
size.yscale=0.25
persistent=2

[State 13971]
Type=AllPalFX
Trigger1=time<60
add=0,0,time*2
time=1

[State 13971]
Type=AllPalFX
Trigger1=time>60
add=(time-60)*64,(time-60)*64,(time-60)*64
time=1

[State 1397]
Type=Hitdef
Trigger1=time=64
Attr              = A, HT
Damage            = floor(root,fvar(39)*(300+70*(Numhelper(12901)+Numhelper(12911))))
GetPower          = 0
AnimType          = Medium
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo          = -1
Guard.sparkno = -1
SparkXY           = 0,0
HitSound          = S0,202
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,0
;Guard.Velocity   = 0,-12
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 13971

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.3

[State 1031]
Type=TargetState
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=NumTarget(13971)>0
Trigger1=movehit=1
Trigger1=target,name!="Cirno"
value=IFElse(root,var(39)=13744,13744,13951)

[State 1031]
Type=ChangeState
Trigger1=NumTarget(13971)>0
trigger1=target,stateno=[13951,13952]
value=6868

[State x]
Type=Destroyself
Trigger1=time=65

[Statedef 13975]
Type=A
Movetype=I
Physics=N
anim=20013

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 261]
Type = AssertSpecial
Trigger1 = time=0
Flag = invisible

[State 12006]
Type=Trans
Trigger1=1
trans=add

[State 13971]
Type=varset
Trigger1=time=0
var(0)=random %360

[State 13971]
Type=varset
Trigger1=time=0
var(1)=(20+random %30)*(1-2*(random %2))

[State 13971]
Type=varset
Trigger1=time=0
var(2)=-random %60

[State 13971]
Type=Bindtoparent
Trigger1=1
pos=floor(var(1)*cos(time/7.0)),floor(var(2)-var(1)*sin(time/7.0)*0.2)-25

[State x]
Type=Sprpriority
Trigger1=1
value=5-10*((var(1)*sin(time*7)*0.2)<0)

[State 13975]
Type=destroyself
Trigger1=NumHelper(13971)=0



;
; ***** Card : Fly *****
;

; ----- Evasive Action -----
[Statedef 14000] 
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14000]
Type = VarSet
Trigger1=1
V=17
value=1

[State 7703]
Type=Explod
Trigger1=time=0
anim=10760
ID = 10760
Postype=P1
pos= 0,-40
bindtime=-1
vel=0,0
sprpriority=-1
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 240]
Type = ChangeState
Trigger1 = animtime=0
Value = 0
Ctrl = 1


[Statedef 14001] 
Type = A
MoveType = I
Physics  = N
Ctrl     = 0
anim	 = 14000
velset = 0,0
facep2 =1

[State 14001]
Type=PosSet
Trigger1=time=0
Trigger1=var(59)>0
Trigger1=Pos Y>-10
Y=-10

[State 14001]
Type=ChangeState
Trigger1=command="holdback"
Trigger1=Inguarddist
Trigger1=var(59)=0
value=120
ctrl=1

[State 14001]
Type=VarSet
Trigger1=time=0
var(9)=0

[State 7703]
Type=Explod
Trigger1=time=0
;Trigger1=NumExplod(10760)=0
anim=10760
ID = 10760
Postype=P1
pos= (name="Sakura Kinomoto")*-40,const(size.mid.pos.y)-(name!="Sakura Kinomoto")*20
bindtime=-1
vel=0,0
sprpriority=-1
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999

[State 14001]
Type=VelAdd
Trigger1=var(59)=0
X= -(command="holdback")*0.4+command="holdfwd"*0.4
Y= -(command="holdup")*0.4+command="holddown"*0.4

[State 14001]
Type=VarSet
Triggerall= var(59)>0
Trigger1=P2Dist X<=0
var(9)=30

[State 14001]
Type=VarAdd
Trigger1=var(9)>0
var(9)=-1

[State 14001]
Type=Turn
Triggerall=abs(Pos X)<=90
Trigger1=P2Dist X<0
Trigger2=P2Dist X=0
Trigger2=var(59)>0

[State 14001]
Type=Turn
Trigger1=var(59)>0
Trigger1=facing=1
Trigger1=Pos X<-120
Trigger1=abs(P2Dist X)<60

[State 14001]
Type=Turn
Trigger1=var(59)>0
Trigger1=facing=-1
Trigger1=Pos X>120
Trigger1=abs(P2Dist X)<60

[State 14001]
Type=VelAdd
Trigger1=var(59)>0
X=-0.4
Y=(-1+2*(((abs(P2Dist X)>=250)*!(inguarddist)+(P2StateNo=13205)+(P2StateNo=12952)+(P2Stateno=13744))>0))*0.4

[State 14001]
Type=VelSet
Trigger1=Pos Y<-170
Trigger1=Vel Y<0
Y=0

[State 1]
Type=posadd
Trigger1=pos Y<=-176
Y=6

[State 14001]
Type=VelAdd
Trigger1=Vel X !=0
Trigger2=Vel Y !=0
X=-Vel X/25
Y=-Vel Y/25

[State 14001]
Type=ChangeState
Trigger1=Pos Y>-5
Trigger2=RoundState>2
value=50
ctrl=1

[State 14001]
Type=ChangeState
Trigger1=Helper(7600),var(19)>=720
value=14002

; Forced Landing

[Statedef 14002]
Type=A
MoveType=I
Physics=A

[State 14002]
Type=Null
Trigger1=0

;
; ***** Card : Flower *****
;
; ----- Tree of Life -----
;
; Removed

;------------------------
; Flower Ritual
;------------------------
[Statedef 14060]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
Trigger1 = time=0
Trigger1 = NumHelper(14061)=0
helpertype = normal
StateNo = 14061
ID = 14061
Name = "Flower"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=.5
Size.yscale=.3
pausemovetime=99999

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1

; Flower Effect
[Statedef 14061]
Type=C
Movetype=I
Physics=N
anim=10642

[State 4140]
Type = Helper
Trigger1 = time %6=1
Trigger1 = time<1720
StateNo = 14062
ID = 14062
Name = "Petal"
Pos = 0,0
PosType = P1
Ownpal = 1
Size.xscale=.25
Size.yscale=.25
pausemovetime=99999

[State 14061]
Type=Posset
Trigger1=1
X=root,pos X
Y=0

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 12006]
Type=Trans
Trigger1=1
trans=add

[State 14061]
Type=Poweradd
Trigger1=time %3=2
value=5+5*Cond(Numhelper(4141)>0,(Helper(4141),stateno!=5150),0)
; Add double power if Mirror is active because it halves all power gained.

[State 14061]
Type=Destroyself
Trigger1=time=1800

; Flower petal
[Statedef 14062]
Type=A
Movetype=I
Physics=N
anim=10644

[State 14062]
Type=varset
Trigger1=time=0
var(1)=random %360

[State 14062]
Type=varset
Trigger1=time=0
fvar(2)=0.5+random*0.002

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 14062]
Type=BindtoParent
Trigger1=1
pos = sin((var(1)+time*5)*pi/180)*40,-floor(time*fvar(2)+cos((var(1)+time*5)*pi/180)*10)

[State 14062]
Type=Sprpriority
Trigger1=1
value=5-10*((cos((var(1)+time)*pi/180))>0)

[State 14062]
Type=Destroyself
Trigger1=animtime=0


;------------------------
; Flower of Life
;------------------------
[Statedef 14070]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
Trigger1 = time=0
Trigger1 = NumHelper(14071)=0
helpertype = normal
StateNo = 14071
ID = 14071
Name = "Flower"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=.5
Size.yscale=.3
pausemovetime=99999

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1


; Flower Effect (Resurrect)
[Statedef 14071]
Type=C
Movetype=I
Physics=N
anim=10642

[State 4140]
Type = Helper
Trigger1 = gametime %4=1
StateNo = 14072
ID = 14072
Name = "Petal"
Pos = 0,0
PosType = P1
Ownpal = 1
Size.xscale=.35
Size.yscale=.35
pausemovetime=99999

[State 14061]
Type=Posset
Trigger1=1
X=root,pos X
Y=0

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 12006]
Type=Trans
Trigger1=1
trans=add

[State 14061]
Type=Destroyself
Trigger1=root,stateno=[14075,14076]

; Flower petal
[Statedef 14072]
Type=A
Movetype=I
Physics=N
anim=10645

[State 14062]
Type=varset
Trigger1=time=0
var(1)=180*((Gametime %8)=1)+(gametime %360)*2

[State 14062]
Type=varset
Trigger1=time=0
fvar(2)=2.2

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 14062]
Type=BindtoParent
Trigger1=1
pos = -sin((var(1)+time*5)*pi/180)*40,-floor(time*fvar(2)+cos((var(1)+time*5)*pi/180)*10)-5

[State 14062]
Type=Sprpriority
Trigger1=1
value=5-10*((cos((var(1)+time)*pi/180))>0)

[State 14062]
Type=Destroyself
Trigger1=animtime=0

; Flower Resurrection state
[Statedef 14075] 
Type     = L
MoveType = I
Physics  = N
Ctrl     = 0
anim = 5110
Sprpriority = 0

[State 13758]
Type=Gravity
Trigger1=Pos Y<0

[State 13758]
Type=Assertspecial
Trigger1=1
flag=NoKo
ignorehitpause=1

[State 13758]
Type=NotHitBy
Trigger1=1
Value=SAC

[State 13758]
Type=LifeSet
Trigger1=1
value=1

[State 13758]
Type=Velset
Trigger1=Pos Y>=0
Y=0

[State 13758]
Type=ChangeState
Trigger1=Pos Y>=0
Trigger1=time>=30
Value=14076

[Statedef 14076]
type    = L
movetype= I
physics = N
velset=0,0
anim=5120

[State 14076]
Type=Lifeadd
Trigger1=time<10
value=30-(time=10)

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 0

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;
; ***** Card : Float *****
;

; ----- Levitation -----
[Statedef 14100] 
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14000]
Type = VarSet
Trigger1=!Ishelper
V=22
value=1500

[State 14000]
Type = ParentVarSet
Trigger1=Ishelper
V=22
value=1500

[State 240]
Type = ChangeState
Trigger1 = animtime=0
Value = 0
Ctrl = 1

; Fight - Lightspeed
[Statedef 14150] 
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14000]
Type = VarSet
Trigger1=1
V=23
value=10720

[State 240]
Type = ChangeState
Trigger1 = AnimTime=0
Value = 0
Ctrl = 1

; Fight - Breakthrough
[Statedef 14160] 
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14000]
Type = VarSet
Trigger1=1
V=23
value=720

[State 240]
Type = ChangeState
Trigger1 = AnimTime=0
Value = 0
Ctrl = 1

;
; ***** Card : Erase *****
;

; ----- Vanisher -----
[Statedef 14200]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time=0
;trigger1 = NumHelper(14201)=0
stateno = 14201
ID = 14201
postype = Left
pos = 160,0
pausemovetime=99999
supermovetime=99999
ownpal=1

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[Statedef 14201]
type = S
movetype = I
physics = N
poweradd = 0
velset = 0,3
ctrl = 0
anim = 20021
sprpriority=50

[State 14201]
Type=PosSet
Trigger1=1
X=0

[State 14201]
Type=Offset
Trigger1=1
X=sin((4*Time*2*pi)/360)*120

[State 14201]
Type=PosAdd
Trigger1=Pos Y>400
Y=-391

[State 13511]
Type=Reversaldef
Trigger1=1
reversal.attr= SAC,AP
P1StateNo=14202
P2StateNo=14203

[State 14201]
Type=HitOverride
trigger1 = 1
attr = SCA, AP
stateno = 14202
time = -1

[State 539]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 13511]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 13511]
Type=DestroySelf
Trigger1=var(9)>900
Trigger2=NumHelper(14201)>1
trigger2=var(9)>0

[State 13511]
Type=NotHitBy
Trigger1=1
value=,AT,AA

[Statedef 14202]
type = S
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
;anim = 9998

[State 14201]
Type=HitOverride
trigger1 = 1
attr = SCA, AP
stateno = 14202
time = -1

[State 13511]
Type=NotHitBy
Trigger1=1
value=,AT,AA

[State 13511]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 13511]
Type=DestroySelf
Trigger1=var(9)>900
Trigger2=NumHelper(14201)>1
trigger2=var(9)>0

[State 14202]
Type=Changestate
Trigger1=time>3
value=14201

[State 539]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[Statedef 14203]
type = S
movetype = I
physics = N
velset=0,0

[State 14203]
Type=DestroySelf
Trigger1=IsHelper

[State 14203]
Type=SelfState
Trigger1=!IsHelper
value=50
ctrl=1

; Erase - End of the World
[Statedef 14210]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4000]
Type=Helper
trigger1 = time=0
trigger1 = NumHelper(14211)=0
stateno = 14211
ID = 14211
Pos = 150,-110
PosType = Back
pausemovetime=99999
supermovetime=99999

[State 14210]
Type=Trans
Trigger1=1
trans=add

[State 14210]
Type=playerpush
Trigger1=1
value=0

[State 14210]
Type=HitBy
Trigger1=NumHelper(4041)=0
Trigger1=Cond(NumHelper(13651)=0,1,(abs(Pos X-Helper(13651),Pos X)>25) || (Pos Y<=-100))
Value=SCA,HT,HA,HP

[State 1000, state]
type = ChangeState
trigger1 = time>500
value = 0
ctrl = 1

[Statedef 14211]
Type=A
MoveType = A
Physics  = N
Anim     = 14210
SprPriority = -3

[State 14211]
Type=Attackdist
Trigger1=1
value=0

[State 261]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow

[State 221]
Type = Projectile
Trigger1 = Time=480
offset = 0,0
Projanim=9998
ProjID=14211
Projremovetime=1
Projremanim=9919
Attr              = A, HT
Damage            = 9999,9999
Getpower          = 0,0
GivePower         = 0,0
HitFlag           = MAFD
GuardFlag         =
Priority          = 7,hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = Low
hitonce=0
Fall=1
Ignorehitpause=1

[State 1601]
Type = HitDef
Trigger1 = Time=480
Attr              = A, HT
Damage            = 9999,9999
Getpower          = 0,0
GivePower         = 0,0
HitFlag           = MAFD
GuardFlag         =
Priority          = 7,hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
hitonce=0
affectteam = F
Fall=1
Ignorehitpause=1

[State 541]
Type=ParentVarSet
Trigger1= Time=479
v=57
value=2

[State 1601]
Type=AngleSet
Trigger1=1
value=-Time*2

[State 1601]
Type=AngleDraw
Trigger1=1

[State 1601]
Type=Trans
Trigger1=1
Trans=Sub

[State 1601]
Type=BgPalFX
Trigger1=1
mul = 250-(Time)/2,250-(Time)/2,250-(Time)/2
time=1

[State 541]
Type = DestroySelf
Trigger1 = RoundState>2
Trigger2 = time>485
Trigger3 = parent,stateno!=14210

[state 1602]
type= Null;assertspecial
trigger1 = 1
flag = nomusic
Ignorehitpause=1

;
; ***** Card : Dash *****
;

; ----- Speed Up -----
[Statedef 14300]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14300]
Type=VarSet
Trigger1=1
v=18
value=1800

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

; ----- Reflexes -----
[Statedef 14310]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14300]
Type=VarSet
Trigger1=1
v=18
value=11200

[State 1000, state]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

;
; ***** Card : Create *****
;

; ----- Meteor Shower -----
[Statedef  14350]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 12850]
Type=VarSet
Trigger1=1
v=9
value=0

[State 1000, state]
type = ChangeState
trigger1 = 1
value = 14357

[Statedef 14357]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
Trigger1=var(9)<=150
attr = SCA, AA, AP, AT
stateno = 14357
slot = 6
time = 1
ignorehitpause=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12007]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 12007]
Type=ChangeState
Trigger1=var(9)>150
Trigger2=roundstate>2
Value=0
ctrl=1

[State 450]
Type = Helper
;Triggerall = !(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Trigger1 = var(9)>=10 && ((var(9)%4)=0)
StateNo = 14351
ID = 14351
Name = "Meteor"
Pos = random %300,-220
PosType = back
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.1
Size.YScale = 0.1

;[State 450]
;Type = Helper
;Triggerall = (enemy,name="Seravy") && (enemy,authorname="Seravy")
;Trigger1 = var(9)>=10 && ((var(9)%4)=0)
;StateNo = 14351
;ID = 14351
;Name = "Meteor"
;Pos = -random %300,-220
;PosType = front
;Ownpal = 1
;IgnoreHitPause = 1
;Persistent = 1
;Size.XScale = 0.1
;Size.YScale = 0.1
;facing=-1

[Statedef 14351]
Type = A
MoveType = A
Physics  = N
Anim     = 10260;10240
SprPriority = 4

[State 541]
Type=Assertspecial
trigger1=1
flag=noshadow

[State 14352]
Type=AttackDist
Trigger1=1
value=999

[State 441]
Type=velset
Trigger1=1
X=2
Y=10

[State 441]
Type=AngleSet
Trigger1=1
Value=18

[State 441]
Type = AngleDraw
Trigger1 = 1

[State 441]
Type = Playsnd
Trigger1 = Pos Y>=0
value = 14351,0

[State 441]
Type = Null;Explod
Trigger1 = Pos Y>=0
ID = 14352
anim=10021
Name = "Fire"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
removetime=30
trans=add

[State 240]
Type = Helper
Trigger1 = Pos Y=[-50,-41]
StateNo = 14352
ID = 14352
Name = "FlamePillar"
Pos = 11, 55
PosType = P1
;Ownpal = 1
IgnoreHitPause = 1
Size.XScale = 1
Size.YScale = 1

[State 441]
Type = HitDef
Triggerall = !MoveContact
Triggerall = !MoveReversed
;Triggerall = !(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Trigger1 = time %2=1
Attr              = A, HA
Damage            = floor(root,fvar(39)*25),9
GetPower = 0
GivePower = 0,50
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,3
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = -15,0
HitSound          = S0,202
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 18
Ground.HitTime    = 18
Air.HitTime       = 18
Ground.Velocity   = 0,-3
Air.Velocity      = 0,-3
AirGuard.Velocity = 0,-3
Air.Fall = 1
Fall.Recover = 1
ID = 14351

[State 441]
Type = HitDef
Triggerall = !MoveContact
Triggerall = !MoveReversed
;Triggerall = !(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Trigger1 = time %2 = 0
Trigger1 = time>0
Attr              = A, HP
Damage            = floor(root,fvar(39)*38),9
GetPower = 0
GivePower = 0,50
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,3
SparkNo           = S6003
Guard.sparkno = S4040
SparkXY           = -15,0
HitSound          = S0,202
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 18
Ground.HitTime    = 18
Air.HitTime       = 18
Ground.Velocity   = 0,-3
Air.Velocity      = 0,-3
AirGuard.Velocity = 0,-3
Air.Fall = 1
Fall.Recover = 1
ID = 14351

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.92

[State 14351]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
Trigger1=Numtarget(14351)>0
value=43816

[State 441]
Type = DestroySelf
Trigger1 = Pos Y>=0

[Statedef 14352]   
Type     = C
MoveType = A
Physics  = N
Anim     = 10050
sprpriority = 5
;Facep2=1

[State 541]
Type=Assertspecial
trigger1=1
flag=noshadow

[State 271, PosSet]
type = ChangeAnim
trigger1 = time = 0
value = 10050
elem = 2

[State 14352]
type=Null;turn
trigger1=time=0

[State 14352]
Type=angleset
Trigger1=1
value=18

[State 14352]
Type=AngleDraw
Trigger1=1
scale=0.8,0.8

[State 271]
Type = Trans
Trigger1 = 1
Trans = Add

[State 441]
Type = Projectile
offset = 0,0
Projanim=10051
ProjID=14352
ProjRemovetime=73
Projedgebound=9999
Projstagebound=9999
Trigger1 = time=1
Attr              = C, SP
Damage            = floor(root,fvar(39)*34),7
GetPower          = 0
GivePower = 0,50
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = LA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S10021
Guard.sparkno = S4040
SparkXY           = 0,-50
HitSound          = S0,202
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,-6
;Guard.Velocity   = 0,-6
Air.Velocity      = 0,-2
AirGuard.Velocity = -2,-2
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 271
P2StateNo=43816

[State 271]
Type = DestroySelf
Trigger1 = AnimTime=0

; ----- Grand Meteor -----
[Statedef  14360]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 450]
Type = Helper
Trigger1 = Time=40
StateNo = 14361
ID = 14361
Name = "GrandMeteor"
Pos = 160,-300
PosType = left
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.5
Size.YScale = 0.5

[State 240]
Type = ChangeState
Trigger1 = time>120
Value = 0
Ctrl = 1

[Statedef  14361]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim	= 10260
sprpriority = 99

[State 14361]
Type=Destroyself
Trigger1=RoundState!=2

[State 14361]
Type=PosSet
Trigger1=1
X=0

[State 14361]
Type=AssertSpecial
Trigger1=time<840
flag=invisible

[State 14361]
Type=AssertSpecial
Trigger1=1
flag=noshadow

[State 14361]
Type=VelSet
Trigger1=Time>=840
Y=6

[State 14361]
Type=StateTypeSet
Trigger1=Time>=840
Movetype=A

[State 14361]
Type=BgPalFX
Trigger1=1
add=time/9,time/9,-time/18
time=3

[State 14361]
Type=PlaySnd
Trigger1=time=750
value=S14360,0

[State 14361]
Type=PlaySnd
Trigger1=time=810
value=S14360,1

[State 14361]
Type=ChangeState
Trigger1=Time>=900
Value=14362

[Statedef  14362]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim	= 9998
sprpriority= 999

[State 14553]
Type=Attackdist
Trigger1=1
value=999

[State 16023, Explod]
type = Explod
trigger1 = Time = 0
anim = 16023
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 15
scale=3,3

[State 16023, Explod]
type = Explod
trigger1 = Time = 0
anim = 16024
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 15
scale=3,3

[State 16120, EnvShake]
type = EnvShake
Trigger1=time=0
time = 30
ampl = -12

[State 14361]
Type=BgPalFX
Trigger1=1
add=240,120,-240
time=3

[State 14363]
Type=ParentVarSet
Trigger1=time>=5
Trigger1=Parent,var(57)=0
v=57
value=1

[State 14362]
Type=Assertspecial
Trigger1=0
Flag=NoFG
Flag2=NoBarDisplay

[State 14362]
Type=PosSet
Trigger1=0
X=-160
Y=-220

[State 14362]
Type = Projectile
Trigger1 = time=0
Attr              = A, HT
Damage            = floor(root,fvar(39)*700),250
GetPower          = 0
AnimType          = Diagup
PauseTime         = 0,30
Guard.PauseTime   = 0,30
Offset            = 0,0
Velocity          = 0,0
ProjID            = 2000
ProjAnim          = 9998
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = 1,1
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 3
ProjHeightBound   = -9999,9999
Projedgebound = 9999
Projstagebound = 9999
HitFlag           = MAFD
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = -1,0
GuardSound        = -1,0
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -6,-12
Guard.Velocity    = -6
Air.Velocity      = -6,-12
AirGuard.Velocity = -6,-12
Fall = 1
Fall.Recover = 0
ID = 4112
P2StateNo=43816
hitonce = 0

[State 14362]
Type = ChangeState
Trigger1 = time>=30
value= 14363

[Statedef  14363]
Type     = A
MoveType = I
Physics  = N
Ctrl     = 0
Velset	 =0,0
anim	= 9999
sprpriority= 999

[State 14363]
Type=BgPalFX
Trigger1=1
add=250-time*2,250-time*2,-120+time
time=1

[State 14363]
Type=DestroySelf
Trigger1=time>=125

; Meteor Crater Background
[Statedef 14364]
Type= A
MoveType=I
Physics = N
anim= 9999
velset=0,0
ctrl=0
sprpriority = -16000

[State 14363]
Type=AssertSpecial
Trigger1=1
Flag=NoBG
Flag2=NoFg

[State 14363]
Type=Explod
Trigger1=NumExplod(14363)=0
ID=14363
anim=10270
bindtime=-1
removetime=-1
postype=p1
pos=0,0
supermovetime=9999999
pausemovetime=9999999
scale=0.5,0.5
sprpriority=-14000
ownpal=1
ignorehitpause=1

[State 14363]
Type=Explod
Trigger1=NumExplod(14365)=0
ID=14365
anim=10280
bindtime=-1
removetime=-1
postype=left
pos=160,100
supermovetime=9999999
pausemovetime=9999999
scale=0.5,0.5
sprpriority=-16000
ownpal=1
ignorehitpause=1

[State 14363]
Type=Explod
Trigger1=NumExplod(14364)=0
ID=14364
anim=10290
bindtime=-1
removetime=-1
postype=p1
pos=0,200
supermovetime=9999999
pausemovetime=9999999
scale=0.5,0.5
sprpriority=-15000
ownpal=1
ignorehitpause=1

[State 14363]
Type=PosSet
Trigger1=1
X=0
Y=-110

[State 13551]
Type=Helper
Trigger1=NumHelper(13851)=0
ID = 13851
stateno= 13851
Postype=left
pos= 0,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State 13551]
Type=Helper
Trigger1=NumHelper(13852)=0
ID = 13852
stateno= 13851
Postype=left
pos= 320,0
sprpriority=-99
ownpal=1
scale= 1,1
Ignorehitpause=1

[State x]
Type=Removeexplod
Trigger1=Numhelper(13888)>0
Trigger2=root,stateno=13860
Trigger2=root,time>60
Trigger3=root,stateno=13861
Trigger4=root,stateno=13551

; Cloud - Hiding Mist
[Statedef 14400]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 14400]
Type=Varadd
Trigger1=time=0
v=41
value=1500

[State 240]
Type = Helper
Trigger1 = Time=0
Trigger1 = Numhelper(14401)=0
StateNo = 14401
ID = 14401
Name = "Cloud"
Pos = 0,0
PosType = P1
Ownpal = 1
Size.XScale = 1
Size.YScale = 1

[State 1000, state]
type = ChangeState
trigger1 = time>30
value = 0
ctrl = 1

[Statedef 14401]
Type=A
Movetype=I
anim=9999

[State -2]
Type=Bindtoparent
Trigger1=1
pos=0,0

[State -2]				; Cloud effect
Type=Explod
Trigger1= parent,var(41)>0
Trigger1= parent,stateno!=13551
Trigger1= parent,var(44)=0
ID=14400
anim=14400+random %2
bindtime=1
removetime=20
vel= random %3-1,random %3-1
postype=p1
pos= random %50-50, -random % 95-20-20*(Root,Name="Yue")
scale=1,1
sprpriority=4
ownpal=1
ignorehitpause=1

[State -2]
Type=Destroyself
Trigger1=parent,var(41)<=0
Trigger1=Numexplod=0


;
; ***** Card : Change *****
;

; ----- Reverse Fate -----
[Statedef 14450]
Type     = S
MoveType = A
Physics  = S
Ctrl     = 0
Velset	 =0,0
anim=0

[State 13360]
Type=PlaySnd
Trigger1=time=0
value=14450,0
volume = 128

[State 13360]
Type=VarSet
Trigger1=time=0
v=2
value=50

[State 13360]
Type=VarSet
Trigger1=time=0
var(1)=-1

[State 3009, pause]
type = SuperPause
trigger1 = time =0
darken = 1
time = 31
anim = -1
movetime = 31
p2defmul = 1

[State 13360]
Type=PalFX
Trigger1=1
add= 5*time,3*time,3*time
time=30

[State 13360]
Type=NotHitBy
Trigger1=1
value=SAC

[State 3009, pause]
type = ChangeState
Trigger1=time>=30
value=14451

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "Circle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.4
Size.yscale=0.4
PauseMoveTime=9999999

[Statedef 14451]
anim=300

[State 300]
Type=VarSet
Trigger1=1
v=9
value=0

[State 521]
Type=VarSet
Trigger1=1
v=21
value=4000+random

[State 521]
Type=ChangeState
Trigger1=Cond(IsHelper,(Root,NumProjID(var(21))!=0),0)
Trigger2=!(Ishelper) && (NumProjID(var(21))!=0)
value=14451

[State 521]
Type=ChangeState
Trigger1=1
value=14457

[Statedef 14457]
Type= S
Physics =S
MoveType= A
velset=0,0
juggle  = 3
ctrl=0
anim=300
facep2=1

[State 221]
Type=Attackdist
triggerall = var(23)=[1,9000]
Trigger1 = time=0
value=0

[State 3009, pause]
type = SuperPause
trigger1 = time =0
darken = 1
time = 30
anim = -1
movetime = 0
p2defmul = 1

[State 13360]
Type=NotHitBy
Trigger1=1
value=SAC

[State 300,Void]
Type=Explod
Trigger1=Name="Void"
Trigger1=time=0
ID=300
anim=301
bindtime=-1
vfacing=1-2*IsHelper(13151)
removetime=12
postype=p1
pos=50,-58*(1-1.6*IsHelper(13151))
pausemovetime=9999999
scale=0.3,0.3*(1-0.6*IsHelper(13151))
sprpriority=4
ownpal=1
ignorehitpause=1
trans=sub

[State 300,1]
Type=PlaySnd
Trigger1=time=3
value=300,0

[State 501]
Type=VarSet
Triggerall=IsHelper
Trigger1=root,ProjContactTime(var(21))=[0,30]
Trigger2=root,ProjHitTime(var(21))=[0,30]
Trigger3=root,ProjCancelTime(var(21))=[0,30]
Trigger4=root,ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Triggerall=!IsHelper
Trigger1=ProjContactTime(var(21))=[0,30]
Trigger2=ProjHitTime(var(21))=[0,30]
Trigger3=ProjCancelTime(var(21))=[0,30]
Trigger4=ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 221]
Type = Projectile
Triggerall = var(9)=0
Trigger1 = (name="Eriol Hiiragizawa") && (time=[12,29])
Trigger2 = (name="Sakura Kinomoto") && (time=[4,8])
Trigger3 = (name="Shaoran Lee") && (time=[6,9])
Trigger4 = (name="Void") && (time>0)
Trigger5 = (name="Yue") && (time=[4,8])
offset = 0,0
Projanim=307
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)!=[1,9000]
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MAF                    ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 5                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
Guard.sparkno = S4040
;Y-offset for the spark rel. to p1
hitsound = S320,1                  ;Sound to play on hit
guardsound = S320,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -1,-3             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
P2StateNo=14453

[State 221]
Type = Projectile
Triggerall = var(9)=0
Trigger1 = (name="Eriol Hiiragizawa") && (time=[12,29])
Trigger2 = (name="Sakura Kinomoto") && (time=[4,8])
Trigger3 = (name="Shaoran Lee") && (time=[6,9])
Trigger4 = (name="Void") && (time>0)
Trigger5 = (name="Yue") && (time=[4,8])
offset = 0,0
Projanim=307
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)=[1,9000]
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag =                     ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 5                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
Guard.sparkno = S4040
;Y-offset for the spark rel. to p1
hitsound = S320,1                  ;Sound to play on hit
guardsound = S320,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -1,-3             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
P2StateNo=14453

[State 13360]
Type=ChangeState
Trigger1=P2StateNo=14453
value=14452

[State 320,3]
Type=changeState
Trigger1=Animtime=0
ctrl=1
Value=0

[Statedef 14452]
Type= S
Physics =S
MoveType= H
velset=0,0
ctrl=0
anim=5030
facep2=1

[State 14553]
Type=NothitBy
Trigger1=1
Value=SAC

[State 14452]
Type=PlaySnd
Trigger1=time=0
value=14450,1

[State 14552]
Type=VarSet
Trigger1=1
v=9
value=Life

[State 14552]
Type=VarSet
Trigger1=1
v=21
value=power

[State 13360]
Type=PalFX
Trigger1=1
add= 150-time,100-time,100-time
time=30

[State 14455]
Type=ChangeState
Trigger1=enemy,stateNo!=14453
Trigger2=IsHelper
value=50
ctrl=1

[State 14452]
Type=ChangeState
Trigger1=time>60
value=14454

[Statedef 14454]
Type= S
Physics =S
MoveType= H
velset=0,0
ctrl=0
anim=0
facep2=1

[State 14553]
Type=NothitBy
Trigger1=1
Value=SAC

[State 14454]
Type=VarSet
Trigger1=time=0
var(29)=ScreenPos X-160

[State 14454]
Type=VarSet
Trigger1=time=0
var(30)=Pos Y

[State 14454]
Type=VarSet
Trigger1=time=0
var(31)=enemy,ScreenPos X-160

[State 14454]
Type=VarSet
Trigger1=time=0
var(32)=enemy,Pos Y

[State 14454]
Type=Turn
Trigger1=time!=0

[State 14454]
Type=PosSet
Trigger1=1
X=var(29+2*(time%2))
Y=var(30+2*(time%2))

[State 14454]
Type=BgPalFX
Trigger1=1
add=30,-40,-20
time=30

[State 14454]
Type=ChangeState
Trigger1=time>60
Value=14455

[Statedef 14455]
Type= S
Physics =S
MoveType= H
velset=0,0
ctrl=0
anim=0
facep2=1

[State 14553]
Type=NothitBy
Trigger1=1
Value=SAC

[State 14455]
Type=Lifeset
Trigger1=1
value=P2Life

[State 14455]
Type=PowerSet
Trigger1=1
value=enemy,power

[State 14455]
Type=ChangeState
Trigger1=time>10
value=14456
ctrl=1

[Statedef 14456]
Type= S
Physics =S
MoveType= H
velset=0,0
ctrl=0
anim=0
facep2=1

[State 14553]
Type=NothitBy
Trigger1=1
Value=SAC

[State 14455]
Type=ChangeState
Trigger1=time>10
value=50
ctrl=1

[Statedef 14453]
Type= S
Physics =S
MoveType= H
velset=0,0
ctrl=0
anim=5030
facep2=1

[State 14553]
Type=NothitBy
Trigger1=1
Value=SAC

[State 14452]
Type=DestroySelf
Trigger1=IsHelper

[State 13360]
Type=PalFX
Trigger1=P2StateNo=14452
add= 150-time,100-time,100-time
time=30

[State 14453]
Type=ChangeAnim
Trigger1=P2StateNo=14454
Trigger1=anim!=0
Value=0

[State 14453]
Type=PosSet
Trigger1=P2StateNo=14454
X=enemy,var(29+2*((enemy,time)%2))
Y=enemy,var(30+2*((enemy,time)%2))

[State 14453]
Type=Turn
Trigger1=P2StateNo=14454

[State 14453]
Type=Turn
Trigger1=P2StateNo=14454
persistent=0

[State 14453]
Type=LifeSet
Trigger1=P2StateNo=14456
value=enemy,var(9)

[State 14453]
Type=PowerSet
Trigger1=P2StateNo=14456
value=enemy,var(21)

[State 14455]
Type=SelfState
Trigger1=P2StateNo!=[14450,14459]
Trigger2=time>600
Trigger3=IsHelper
value=50
ctrl=1

;
; ***** Card : Bubble *****
;

; ----- Bubble Blaster -----
[Statedef 14500]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0

[State 13750]
Type=VarSet
Trigger1=time=0
var(2)=51

[State 13750]
Type=VarSet
Trigger1=time=0
var(1)=-1

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 3999
ID = 3999
Name = "Circle"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.5
Size.yscale=0.5
PauseMoveTime=9999999

[State 4000]
Type=Helper
trigger1 = time =0
;trigger1 = NumHelper(14501)=0
stateno = 14501
name= "BubbleMain"
ID = 14501
sprpriority = 0
ownpal=1
pausemovetime=9999999

[State 1000, state]
type = ChangeState
trigger1 = Time>10
value = 0
ctrl = 1

[Statedef 14501]
MoveType = I
Physics  = N
anim=9999

[State 14501]
Type=Helper
Trigger1=time %9=0
stateno = 14502
ID = 14502
name="Bubble"
sprpriority = 10
ownpal=1
pausemovetime=9999999
Postype=left
pos= 20+random %280,-(20+random %150)

[State 14501]
Type=DestroySelf
Trigger1=time>180

[Statedef 14502]
Type = A
MoveType = A
Physics  = N
anim=10030

[State 14502]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 1000, sound]
type = Playsnd
trigger1 = time =0
value = 14502,0

[State 14502]
Type=angledraw
Trigger1=1
scale=0.1+(time+0.1)/10,0.1+(time+0.1)/10

[State 14502]
Type=Trans
Trigger1=1
trans=add;alpha
;alpha=256-time*10,140+time*5

[State 14502]
Type=DestroySelf
Trigger1=Time>=21

[State 221]
Type = Projectile
Trigger1 = time=0
offset = 0,0
Projanim=10031
ProjID=14502
Projremovetime=21
Projremanim=9919
Attr              = A, NP
Damage            = floor(root,fvar(39)*22),8
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6001
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 32
Ground.HitTime    = 32
Air.HitTime       = 32
Ground.Velocity   = random %20-10,-7
Air.Velocity      = random %20-10,-7
AirGuard.Velocity = random %3-3,-7
Fall = 1
Fall.Recover = 1
ID = 14502
P2StateNo=43816

;
; ----- Bubble Bomber -----
;

[Statedef 14510]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 4140]
Type = Helper
;Trigger1 = time=0
Trigger1 = NumHelper(14511)=0
StateNo = 14511
ID = 14511
Name = "BubbleMain"
Pos = -40,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
Size.xscale=1
Size.yscale=1

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[Statedef 14511]
MoveType = I
Physics  = N
Anim     = 9999

;**** Burden Relocator
[State 1081]
Type=Parentvarset
Trigger1=time>0
fvar(39)=parent,fvar(39)*fvar(39)

[State 1081]
Type=VarSet
Trigger1=1
fvar(39)=1

[State 4140]
Type = Helper
Trigger1 = time%180=0
StateNo = 14512
ID = 14512
Name = "bubble"
Pos = random %320,-300
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
Size.xscale=0.7
Size.yscale=0.7

[Statedef 14512]
MoveType = A
Type = A
Physics  = N
Anim     = 10030
velset	 =0,1
sprpriority=3

[State 14513]
Type=Assertspecial
Trigger1=1
flag=noshadow

[State 7703]
Type=Explod
Trigger1=time=0
anim=10030
ID = 14513
Postype=P1
pos= 0,0
bindtime=999
removetime=999
vel=0,0
sprpriority=2
ownpal=1
scale= 0.4,0.4
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 14513]
Type=Trans
Trigger1=1
trans=add

[State 14513]
Type=Velset
Trigger1=1
X=4*sin((time*10*pi)/360)
Y=1

[State 221]
Type = Hitdef
Trigger1 = !movecontact
Trigger1 = !movereversed
Attr              = A, NP
Damage            = floor(root,fvar(39)*25),10
GetPower          = 50
AnimType          = DiagUp
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,3
SparkNo           = S6001
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = S13300,0
GuardSound        = S13300,0
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = -12*(1-2*(Vel X<0)),-12
;Guard.Velocity   = 0,0
Air.Velocity      = -12*(1-2*(Vel X<0)),-12
AirGuard.Velocity = -12*(1-2*(Vel X<0)),-12
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 13902

[State Burden]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.9

[State 501]
Type=Targetstate
Triggerall=Numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=MoveHit=1
value=43816

[State 14513]
Type=ChangeState
Trigger1=Movecontact || Movereversed
Trigger2=Pos Y>-100
Trigger2=random<20
Trigger3=Pos Y>-20
value=14514

[Statedef 14514]
velset=0,0

[State 14514]
Type=Removeexplod
Trigger1=1
ID=14513

[State 1000, sound]
type = Playsnd
trigger1 = time =0
value = 14502,0

[State 14514]
Type=AngleDraw
Trigger1=1
scale=1+0.05*time,1+0.05*time

[State 14515]
Type=Trans
Trigger1=1
trans=addalpha
alpha=256-time*10,256

[State 14514]
Type=Destroyself
Trigger1=time>=30

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14510
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14511
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14512
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14513
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14514
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14515
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14516
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[State 4080]
Type = Helper
Trigger1 = Time = 0
StateNo = 14515
ID = 14517
Name = "WaterShot"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .25
Size.YScale = .25

[Statedef 14515]
Type = A
MoveType = A
Physics  = N
Anim     = 10130
SprPriority = 4

[State 2003]
Type = VarSet
Trigger1 = Time = 0
fvar(0) = IsHelper(14511)*45+IsHelper(14512)*90+IsHelper(14513)*135+IsHelper(14514)*180+IsHelper(14515)*225+IsHelper(14516)*270+IsHelper(14517)*315

[State 2003]
Type = VarAdd
Trigger1 =  (Time < 5)
fvar(1) = .25

[State 2003]
Type = VelSet
Trigger1 = Time=0
X = 6*Cos(fvar(0))
Y = -6*Sin(fvar(0))

[State 2003]
Type=VelAdd
Trigger1=time>0
Y=0.35

[State 2003]
Type = Trans
Trigger1 = 1
Trans = Add

[State 2003]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
IgnoreHitPause = 1

[State 2003]
Type = AngleSet
Trigger1 = (Vel X != 0)
Value = ATan(Vel Y/Vel X)*(-180.0/Pi)+((Vel X<0)*180)

[State 2003]
Type = AngleSet
Trigger1 = (Vel X = 0)
Value = IfElse(Vel Y<0,90,-90)

[State 2003]
Type = AngleDraw
Trigger1 = 1
Scale = fvar(1),fvar(1)

[State 221]
Type = hitdef
Trigger1 = time>0
Trigger1 = !movecontact
Trigger1 = !movereversed
Attr              = A, NP
Damage            = floor(root,fvar(39)*3)
GetPower          = 20,0
AnimType          = Medium
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S20003
Guard.SparkNo     = -1
SparkXY           = 15,0
HitSound          = S13300,0
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = -3.5*(1-2*(Vel X<0)),0
Air.Velocity      = -3*(1-2*(Vel X<0)),-3
AirGuard.Velocity = -3*(1-2*(Vel X<0)),-3
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
Air.Fall = 1
Fall.Recover = 1
ID = 2003
P2StateNo=43816

[State 2003]
Type = DestroySelf
Trigger1 = (FrontEdgeDist < -100)
Trigger2 = (Pos Y >= 0)
Trigger3 = Movecontact || Movereversed


;
; ***** Card : Big *****
;
; ----- Giant Growth -----
;

[Statedef 14550]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0
anim=0

[State 13360]
Type=PlaySnd
Trigger1=time=0
value=14550,1
volume = 128

[State 3009, pause]
type = SuperPause
trigger1 = time =0
darken = 1
time = 61
anim = -1
movetime = 61
p2defmul = 1

[State 13360]
Type=AngleSet
Trigger1=1
value=0

[State 13360]
Type=AngleDraw
Trigger1=1
scale=1+time*0.0166,1+time*0.0166

[State 13360]
Type=NotHitBy
Trigger1=1
value=SAC

[State 13360]
Type=NotHitBy
Trigger1=1
value2=SAC

[State 3009, pause]
type = ChangeState
Trigger1=time>=60
value=14551

[State 705, 2]
type = Explod
trigger1 = ((Time + 12) % 12) = 0
anim = f130
ID = 311
sprpriority = 3
postype = p1
pos = 0,0
bindtime = -1
removeongethit = 1

[State 14550]
Type=VarSet
Trigger1=1
v=29
value=0

[Statedef 14551]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0
anim=14550

[State 14552]
Type=Null;NotHitBy
Trigger1=1
Value=,NA,NP,NT

[State 1267]
Type=StateTypeSet
Trigger1=1
MoveType=H
ignorehitpause=1

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 14551
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 13559]
Type=PosSet
Trigger1=1
y=0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 1
trigger2 = Time = 4
x = 0

[State 20]
Type= turn
Trigger1= command="holdback"
Trigger1= var(59)=0
Trigger2= var(59)>0
Trigger2= P2Dist X<0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = var(59)=0
Trigger2= var(59)>0
x = const(velocity.walk.fwd.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 14551 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 14551

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 14552 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 14552

[State 14551]
Type=ChangeAnim
Trigger1=Vel X=0
value=14550

[State 14551]
Type=PlaySnd
Trigger1=anim=[14551,14552]
value=14550,0
persistent=36

[State 14550]
Type=VarAdd
Trigger1=1
v=29
value=1

[State 20, 3]
type = ChangeState
trigger1=var(29)>540
trigger2=enemy,authorname="Seravy"
Trigger2=enemy,Stateno=13700
Trigger2=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger3=RoundState>2
value=14552

[State 20, 3]
type = ChangeState
trigger1 = command="a"
trigger1 = var(59)=0
Trigger2 = var(59)>0
Trigger2 = abs(P2Dist X)<100
Trigger2 = random<300
trigger2 = P2StateType=A
Value=14559

[State 20, 3]
type = ChangeState
trigger1 = command="b"
trigger1 = command="holdfwd" || command="holdback" || fvar(22)!=1
trigger1 = var(59)=0
Trigger2 = var(59)>0
Trigger2 = abs(P2Dist X)<100
Trigger2 = random<300
trigger2 = P2StateType=A
Value=14558

[State 20, 3]
type = ChangeState
trigger1 = command="b"
trigger1 = fvar(22)=1
trigger1 = var(59)=0
Trigger2 = var(59)>0
Trigger2 = abs(P2Dist X)<100
trigger3 = command="x"
trigger3 = fvar(22)!=1
trigger3 = var(59)=0
Value=14557

[Statedef 14552]
Type     = S
MoveType = I
Physics  = S
Ctrl     = 0
Velset	 =0,0
anim=0

[State 13360]
Type=PlaySnd
Trigger1=time=0
value=14550,2
volume = 128

[State 3009, pause]
type = SuperPause
trigger1 = time =0
darken = 1
time = 61
anim = -1
movetime = 61
p2defmul = 1

[State 13360]
Type=AngleDraw
Trigger1=1
scale=1+(60-time)*0.0166,1+(60-time)*0.0166

[State 13360]
Type=NotHitBy
Trigger1=1
value=SAC

[State 3009, pause]
type = ChangeState
Trigger1=time>=60
value=0
ctrl=1

[Statedef 14559]
anim=300

[State 300]
Type=VarSet
Trigger1=1
v=9
value=0

[State 300]
Type=VarSet
Trigger1=1
v=32
value=-1

[State 521]
Type=VarSet
Trigger1=1
v=21
value=4000+random

[State 521]
Type=ChangeState
Trigger1=Cond(IsHelper,(Root,NumProjID(var(21))!=0),0)
Trigger2=!(Ishelper) && (NumProjID(var(21))!=0)
value=14559

[State 521]
Type=ChangeState
Trigger1=1
value=14553

[Statedef 14553]
Type= S
Physics =S
MoveType= A
velset=0,0
juggle  = 1
ctrl=0
facep2=1

[State 221]
Type=Attackdist
triggerall = var(23)=[1,9000]
Trigger1 = time=0
value=0

[State 14553]
Type=VarAdd
Trigger1=1
var(32)=1

[State 14553]
Type=Attackdist
Trigger1=1
value=300

[State 14553]
Type=ChangeAnim
Trigger1=anim!=14553
value=14553

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 14553
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 14555]
Type=LifeAdd
Trigger1=time=0
Value=-Gethitvar(damage)
absolute=1

[State 14550]
Type=VarAdd
Trigger1=1
v=29
value=1

[State 300,Void]
Type=Explod
Trigger1=Name="Void"
Trigger1=animelem=1
ID=300
anim=301
bindtime=-1
vfacing=1-2*IsHelper(13151)
removetime=12
postype=p1
pos=100,-116*(1-1.6*IsHelper(13151))
pausemovetime=9999999
scale=0.6,0.6*(1-0.6*IsHelper(13151))
sprpriority=4
ownpal=1
ignorehitpause=1
trans=sub

[State 300,1]
Type=PlaySnd
Trigger1=time=3
value=300,0

[State 501]
Type=VarSet
Triggerall=IsHelper
Trigger1=root,ProjContactTime(var(21))=[0,30]
Trigger2=root,ProjHitTime(var(21))=[0,30]
Trigger3=root,ProjCancelTime(var(21))=[0,30]
Trigger4=root,ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Triggerall=!IsHelper
Trigger1=ProjContactTime(var(21))=[0,30]
Trigger2=ProjHitTime(var(21))=[0,30]
Trigger3=ProjCancelTime(var(21))=[0,30]
Trigger4=ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Trigger1=ProjHitTime(var(21))=0
fvar(39)=fvar(39)*0.9

[State 221]
Type = Projectile
Triggerall = var(9)=0
Trigger1 = (name="Eriol Hiiragizawa") && (var(32)=[12,29])
Trigger2 = (name="Sakura Kinomoto") && (var(32)=[4,8])
Trigger3 = (name="Shaoran Lee") && (var(32)=[6,9])
Trigger4 = (name="Void") && (var(32)>0)
Trigger5 = (name="Yue") && (var(32)=[4,8])
offset = 0,0
Projanim=14559
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)!=[1,9000]
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = floor(fvar(39)*(50*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))),0
getpower=0,0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                    ;Flags on how move is to be guarded against
hitflag = HA                    ;Flags of conditions that move can hit
priority = 4, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 2                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
;Y-offset for the spark rel. to p1
hitsound = S300,1                  ;Sound to play on hit
guardsound = S300,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -2,0             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,0           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
persistent=0
getpower=50,50
guard.dist=300
P2StateNo=43816
ID=14550

[State 221]
Type = Projectile
triggerall = var(23)=[1,9000]
Triggerall = var(9)=0
Trigger1 = (name="Eriol Hiiragizawa") && (var(32)=[12,29])
Trigger2 = (name="Sakura Kinomoto") && (var(32)=[4,8])
Trigger3 = (name="Shaoran Lee") && (var(32)=[6,9])
Trigger4 = (name="Void") && (var(32)>0)
Trigger5 = (name="Yue") && (var(32)=[4,8])
offset = 0,0
Projanim=14559
ProjID=var(21)
getpower=0,0
Projremovetime=1
Projremanim=9919
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = floor(fvar(39)*50*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0))),0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag =                    ;Flags on how move is to be guarded against
hitflag = HA                    ;Flags of conditions that move can hit
priority = 4, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 2                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
;Y-offset for the spark rel. to p1
hitsound = S300,1                  ;Sound to play on hit
guardsound = S300,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -2,0             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2,0           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
persistent=0
guard.dist=300
getpower=50,50
P2StateNo=43816
ID=14550

[State 300,3]
Type=changeState
Trigger1=Animtime=0
Value=14551

[Statedef 14558]
anim=310

[State 300]
Type=VarSet
Trigger1=1
v=9
value=0

[State 300]
Type=VarSet
Trigger1=1
v=32
value=-1

[State 521]
Type=VarSet
Trigger1=1
v=21
value=4000+random

[State 521]
Type=ChangeState
Trigger1=Cond(IsHelper,(Root,NumProjID(var(21))!=0),0)
Trigger2=!(Ishelper) && (NumProjID(var(21))!=0)
value=14558

[State 521]
Type=ChangeState
Trigger1=1
value=14554

[Statedef 14554]
Type= S
Physics =S
MoveType= A
velset=0,0
juggle  = 2
ctrl=0
facep2=1

[State 221]
Type=Attackdist
triggerall = var(23)=[1,9000]
Trigger1 = time=0
value=0

[State 14553]
Type=Attackdist
Trigger1=1
value=300

[State 14553]
Type=ChangeAnim
Trigger1=anim!=14554
value=14554

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 14554
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 14555]
Type=LifeAdd
Trigger1=time=0
Value=-Gethitvar(damage)
absolute=1

[State 14550]
Type=VarAdd
Trigger1=1
v=29
value=1

[State 300]
Type=VarAdd
Trigger1=1
v=32
value=1

[State 300,Void]
Type=Explod
Trigger1=Name="Void"
Trigger1=animelem=1
ID=300
anim=311
bindtime=-1
removetime=55
vfacing=1-2*IsHelper(13151)
postype=p1
pos=0,-20
pausemovetime=9999999
scale=0.8,0.8*(1-0.6*IsHelper(13151))
sprpriority=4
ownpal=1
ignorehitpause=1
trans=sub

[State 310,1]
Type=PlaySnd
Trigger1=time=3
value=310,0

[State 501]
Type=VarSet
Triggerall=IsHelper
Trigger1=root,ProjContactTime(var(21))=[0,30]
Trigger2=root,ProjHitTime(var(21))=[0,30]
Trigger3=root,ProjCancelTime(var(21))=[0,30]
Trigger4=root,ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Triggerall=!IsHelper
Trigger1=ProjContactTime(var(21))=[0,30]
Trigger2=ProjHitTime(var(21))=[0,30]
Trigger3=ProjCancelTime(var(21))=[0,30]
Trigger4=ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Trigger1=ProjHitTime(var(21))=0
fvar(39)=fvar(39)*0.8

[State 221]
Type = Projectile
Triggerall = var(9)=0
Trigger1 = (name="Eriol Hiiragizawa") && (var(32)=[12,29])
Trigger2 = (name="Sakura Kinomoto") && (var(32)=[6,7])
Trigger3 = (name="Shaoran Lee") && (var(32)=[20,27])
Trigger4 = (name="Void") && (var(32)>=16)
Trigger5 = (name="Yue") && (var(32)=[8,11])
offset = 0,0
Projanim=14558
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)!=[1,9000]
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = floor(fvar(39)*90*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0))),floor(4*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))
getpower=0,0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                    ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 7, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 2+30*(Name="Void")     ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
;Y-offset for the spark rel. to p1
hitsound = S310,1                  ;Sound to play on hit
guardsound = S310,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -4,-2             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -6,-2           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
persistent=0
getpower=70,70
guard.dist=300
P2StateNo=43816
ID=14550
guard.dist=300
guard.kill=0

[State 221]
Type = Projectile
Triggerall = var(9)=0
Trigger1 = (name="Eriol Hiiragizawa") && (var(32)=[12,29])
Trigger2 = (name="Sakura Kinomoto") && (var(32)=[6,7])
Trigger3 = (name="Shaoran Lee") && (var(32)=[20,27])
Trigger4 = (name="Void") && (var(32)>=16)
Trigger5 = (name="Yue") && (var(32)=[8,11])
offset = 0,0
getpower=0,0
Projanim=14558
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)=[1,9000]
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = floor(fvar(39)*90*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0))),floor(4*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag =                     ;Flags on how move is to be guarded against
hitflag = MA                    ;Flags of conditions that move can hit
priority = 7, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 2                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
;Y-offset for the spark rel. to p1
hitsound = S310,1                  ;Sound to play on hit
guardsound = S310,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -4,-2             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -6,-2           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
persistent=0
guard.dist=300
getpower=70,70
P2StateNo=43816
ID=14550

[State 310,3]
Type=changeState
Trigger1=Animtime=0
Value=14551

[Statedef 14557]
anim=300

[State 300]
Type=VarSet
Trigger1=1
v=9
value=0

[State 521]
Type=VarSet
Trigger1=1
v=21
value=4000+random

[State 300]
Type=VarSet
Trigger1=1
v=32
value=-1

[State 521]
Type=ChangeState
Trigger1=Cond(IsHelper,(Root,NumProjID(var(21))!=0),0)
Trigger2=!(Ishelper) && (NumProjID(var(21))!=0)
value=14557

[State 521]
Type=ChangeState
Trigger1=1
value=14555

[Statedef 14555]
Type= S
Physics =S
MoveType= A
velset=0,0
juggle  = 3
ctrl=0
facep2=1

[State 14553]
Type=Attackdist
Trigger1=1
value=300

[State 14553]
Type=ChangeAnim
Trigger1=anim!=14555
value=14555

[State 592]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 14555
slot = 6
time = 1

[State 300]
Type=VarAdd
Trigger1=1
v=32
value=1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 14555]
Type=LifeAdd
Trigger1=time=0
Value=-Gethitvar(damage)
absolute=1

[State 14550]
Type=VarAdd
Trigger1=1
v=29
value=2

[State 300,Void]
Type=Explod
Trigger1=Name="Void"
Trigger1=animelem=1
ID=320
anim=321
vfacing=1-2*IsHelper(13151)
bindtime=-1
removetime=25
postype=p1
pos=90,floor(-96*(1-1.6*IsHelper(13151)))
pausemovetime=9999999
scale=0.8,0.8*(1-0.6*IsHelper(13151))
sprpriority=4
ownpal=1
ignorehitpause=1
trans=sub

[State 320,1]
Type=PlaySnd
Trigger1=time=3
value=320,0

[State 501]
Type=VarSet
Triggerall=IsHelper
Triggerall=var(9)=0
Trigger1=root,ProjContactTime(var(21))=[0,30]
Trigger2=root,ProjHitTime(var(21))=[0,30]
Trigger3=root,ProjCancelTime(var(21))=[0,30]
Trigger4=root,ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Triggerall=!IsHelper
Triggerall=var(9)=0
Trigger1=ProjContactTime(var(21))=[0,30]
Trigger2=ProjHitTime(var(21))=[0,30]
Trigger3=ProjCancelTime(var(21))=[0,30]
Trigger4=ProjGuardedTime(var(21))=[0,30]
v=9
value=1

[State 501]
Type=VarSet
Trigger1=ProjHitTime(var(21))=0
fvar(39)=fvar(39)*0.9

[State 501]
Type=VarAdd
Trigger1=var(9)>0
v=9
value=1

[State 221]
Type = Projectile
Trigger1 = (name="Eriol Hiiragizawa") && (time=[5,38]) && (var(9)=0)
Trigger2 = (name="Eriol Hiiragizawa") && (time=[5,38]) && (var(9)=12)
Trigger3 = (name="Eriol Hiiragizawa") && (time=[5,38]) && (var(9)=24)
Trigger4 = (name="Sakura Kinomoto") && (time=[8,19]) && (var(9)=0)
Trigger5 = (name="Sakura Kinomoto") && (time=[8,19]) && (var(9)=4)
Trigger6 = (name="Sakura Kinomoto") && (time=[8,19]) && (var(9)=8)
Trigger7 = (name="Shaoran Lee") && (time=[8,19]) && (var(9)=0)
Trigger8 = (name="Shaoran Lee") && (time=[8,19]) && (var(9)=4)
Trigger9 = (name="Shaoran Lee") && (time=[8,19]) && (var(9)=8)
Trigger10 = (name="Void") && (time>0) && (var(9)=0)
Trigger11 = (name="Void") && (time>0) && (var(9)=10)
Trigger12 = (name="Void") && (time>0) && (var(9)=20)
Trigger13 = (name="Yue") && (time=[6,15]) && (var(9)=0)
Trigger14 = (name="Yue") && (time=[6,15]) && (var(9)=4)
Trigger15 = (name="Yue") && (time=[6,15]) && (var(9)=8)
offset = 0,0
getpower=0,0
Projanim=14557
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)!=[1,9000]
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = floor(fvar(39)*47*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0))),floor(7*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                    ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 5                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
;Y-offset for the spark rel. to p1
hitsound = S320,1                  ;Sound to play on hit
guardsound = S320,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -1,-3             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
getpower=100,100
P2StateNo=43816
ID=14551
guard.dist=300

[State 221]
Type = Projectile
Trigger1 = (name="Eriol Hiiragizawa") && (time=[5,38]) && (var(9)=0)
Trigger2 = (name="Eriol Hiiragizawa") && (time=[5,38]) && (var(9)=12)
Trigger3 = (name="Eriol Hiiragizawa") && (time=[5,38]) && (var(9)=24)
Trigger4 = (name="Sakura Kinomoto") && (time=[8,19]) && (var(9)=0)
Trigger5 = (name="Sakura Kinomoto") && (time=[8,19]) && (var(9)=4)
Trigger6 = (name="Sakura Kinomoto") && (time=[8,19]) && (var(9)=8)
Trigger7 = (name="Shaoran Lee") && (time=[8,19]) && (var(9)=0)
Trigger8 = (name="Shaoran Lee") && (time=[8,19]) && (var(9)=4)
Trigger9 = (name="Shaoran Lee") && (time=[8,19]) && (var(9)=8)
Trigger10 = (name="Void") && (time>0) && (var(9)=0)
Trigger11 = (name="Void") && (time>0) && (var(9)=10)
Trigger12 = (name="Void") && (time>0) && (var(9)=20)
Trigger13 = (name="Yue") && (time=[6,15]) && (var(9)=0)
Trigger14 = (name="Yue") && (time=[6,15]) && (var(9)=4)
Trigger15 = (name="Yue") && (time=[6,15]) && (var(9)=8)
offset = 0,0
getpower=0,0
Projanim=14557
ProjID=var(21)
Projremovetime=1
Projremanim=9919
triggerall = var(23)=[1,9000]
attr = S, SA                     ;Attribute: Standing, Normal Attack
damage = floor(fvar(39)*47*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0))),floor(7*(1+(var(25)>0)*0.7-0.4*(NumHelper(4041)+NumHelper(13211)>0)))
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag =                     ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 0, 5                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno=-1
;Y-offset for the spark rel. to p1
hitsound = S320,1                  ;Sound to play on hit
guardsound = S320,2                ;Sound to play on guard
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 5             ;Time opponent is in hit state
ground.velocity = -1,-3             ;Velocity at which opponent is pushed
airguard.velocity = 0,0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 5                 ;Time before opponent regains control in air
getpower=100,100
P2StateNo=43816
ID=14551
guard.dist=300

[State 320,3]
Type=changeState
Trigger1=Animtime=0
Value=14551

;
; ***** Card : Wood *****
;
; ----- Forest of Magic -----
;

[Statedef 14600]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 1000, state]
type = ChangeState
trigger1 = time>10
value = 0
ctrl = 1

[State 13060]
Type=Helper
Trigger1=time=0
Trigger1=numhelper(14601)=0
stateno = 14601
ownpal=1
ID = 14601
Pos = 0,-60
PosType = P2
;pausemovetime=99999
Size.xscale=1
Size.yscale=1

[Statedef 14601]
type = C
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=9999

[State 13060]
Type=Helper
Trigger1=time %480=0
Trigger1=roundstate=2
Trigger1=Numhelper(13301)=0
Trigger1=Numhelper(13311)=0
Trigger2=time %360=0
Trigger2=roundstate=2
Trigger2=(NumHelper(13301)>0) || (Numhelper(13311)>0) || ((enemy,authorname="Seravy") && ((enemy,numhelper(13301)+enemy,numhelper(13311))>0))
stateno = 14602
ID = 14602
Pos = 0,-floor(enemy,Pos Y)
PosType = P2
Size.xscale=0.5
Size.yscale=0.5
ownpal=1

[State 14601]
Type=DestroySelf
Trigger1=time>2500
Trigger1=NumHelper(13301)=0
Trigger1=NumHelper(13311)=0
Trigger1=(!(enemy,authorname="Seravy")) || (enemy,Numhelper(13301)=0)
Trigger1=(!(enemy,authorname="Seravy")) || (enemy,Numhelper(13311)=0)

[Statedef 14602]
type = C
movetype = I
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
anim=10641
sprpriority=5

[State 14602]
Type=AttackDist
Trigger1=1
value=50

[State 14602]
Type=PosSet
Trigger1=Pos Y!=0
Y=0

[State 14601]
Type=StateTypeSet
Trigger1=Time=48
movetype=A

[State 14602]
Type=StateTypeSet
Trigger1=Time>=72
movetype=I

[State 14602]
Type=Sprpriority
Trigger1=Time>=72
value=-5

[State 7703]
Type=Explod
Trigger1=time=0
anim=10640
ID = 10640
Postype=P1
pos= 0,0
bindtime=1
removetime=-1
vel=0,0
sprpriority=-6
ownpal=1
scale= 0.5,0.5
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999
trans=add

[State 271]
Type = Projectile
Trigger1 = time =50
offset = 0,0
Projanim=10647
ProjID=14602
ProjRemoveTime=20
Attr              = C, SA
Damage            = floor(root,fvar(39)*50),0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MA
GuardFlag         = HA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = S6001
Guard.sparkno = S4040
SparkXY           = 0,-60
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = 0,-12
;Guard.Velocity   = 0,-12
Air.Velocity      = 0,-4
AirGuard.Velocity = -3,-3
Guard.Kill = 0
P2StateNo=43816

[State 14602]
Type=VarSet
Trigger1=enemy,authorname="Seravy"
Trigger1=enemy,stateno=[12000,12009]
Trigger1=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger1=enemy,time>50
Trigger2=enemy,authorname="Seravy"
Trigger2=enemy,name="Seravy"
Trigger2=enemy,stateno=1270
Trigger2=enemy,time>50
Trigger3=parent,stateno=[12000,12009]
Trigger3=parent,time>50
Trigger4=root,stateno=[12000,12009]
Trigger4=root,time>50
Trigger5=NumHelper(14250)
Trigger5=helper(14250),stateno=[12000,12009]
Trigger5=helper(14250),time>50
Trigger6=NumHelper(4141)
Trigger6=helper(4141),stateno=[12000,12009]
Trigger6=helper(4141),time>50
var(9)=1

[State 14602]
Type=Helper
Triggerall=time %10=0
Trigger1=var(9)=1
Trigger1=animtime<-50
stateno = 14603
ID = 14603
Pos = 0,0
PosType = P1
Size.xscale=1
Size.yscale=1

[State 14602]
Type=RemoveExplod
Trigger1=Animtime=-1
ID=10640

[State 14602]
Type=ChangeAnim
Trigger1=root,Stateno=13551
Trigger1=animelem=6
value=10641
elem=7

[State 14602]
Type=DestroySelf
Trigger1=Animtime=0

[Statedef 14603]
type = A
movetype = A
physics = N
poweradd = 0
velset = 0,0
ctrl = 0
sprpriority=15

[State 14602]
Type=AttackDist
Trigger1=1
value=50

[State 14603]
Type=ChangeAnim
Trigger1=time=0
value=10050
elem=2

[State 3999]
Type=AssertSpecial
Trigger1=1
Flag=NoShadow

[State 271]
Type = Projectile
Trigger1 = time %3=1
offset = 0,0
Projanim=10051
ProjID=14603
ProjRemovetime=1
Attr              = A, SP
Damage            = 1,0
GetPower          = 0
AnimType          = DiagUp
HitFlag           = MA
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
Guard.SparkNo     = -1
HitSound          = -1,0
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 16
Ground.HitTime    = 16
Air.HitTime       = 16
Ground.Velocity   = -1,-2
;Guard.Velocity   = -1,-2
Air.Velocity      = -1,-2
AirGuard.Velocity = -1,-2
Guard.Kill = 0
P2StateNo=43816
hitonce=0
ID=12000

[State 14603]
Type=DestroySelf
Trigger1=animtime=0
Trigger2=NumHelper(13301)>0
Trigger2=random=1
Trigger3=NumHelper(12111)>0
Trigger4=enemy,authorname="Seravy"
Trigger4=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger4=enemy,NumHelper(13301)>0
Trigger4=random=1
Trigger5=enemy,authorname="Seravy"
Trigger5=enemy,name="Sakura Kinomoto" || enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger5=enemy,NumHelper(12111)>0


;
; ***** Card : Dream *****
;
; ----- Magical Dreams -----
;

[Statedef 14250]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0
anim=5110

[State 14250]
Type=VarSet
Trigger1=time=0
v=9
value=0

[State 14251]
Type=ChangeState
Trigger1=1
value=14251

[Statedef 14252]
type = C
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0
anim=5110

[State 14250]
Type=PlayerPush
Trigger1=1
value=0

[State 1267]
Type=Lifeadd
Trigger1=1
value=-gethitvar(damage)/2

[State 592]
type = HitOverride
triggerall = alive
triggerall = roundstate=2
trigger1 = var(9)<=750
trigger2 = numhelper(14250)>0
attr = SCA, AA, AP, AT
stateno = 14252
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 14250]
Type=VarAdd
Trigger1=time %2=1
Trigger1=var(9)<750
Trigger1=NumHelper(12951)=0
v=9
value=-1

[State 1000, state]
type = ChangeState
trigger1 = var(9)>750
trigger1 = numhelper(14250)=0
trigger2 = !alive
trigger3 = roundstate>2
value = 0
ctrl = 1

[State 12850]
Type=Explod
Trigger1=NUmExplod(10700)=0
anim=10700
ID = 10700
Postype=P1
pos= -20,-40
bindtime=-1
removetime=-1
vel=0,0
sprpriority=-18
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 14252]
Type=VarAdd
Trigger1=1
v=32
value=1

[State 14251]
Type=ChangeState
Trigger1=var(32)>=240
Trigger1=var(9)<=750
value=14251

[Statedef 14251]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0
anim=5110

[State 14250]
Type=VarSet
Trigger1=1
v=29
value=(random%500)

; Var (9) - Cost counter
; Var (29) - random number for attack select
; Var (30) - attack card no
; var (31) - attack no

[State 14250]
Type=VarSet
Trigger1=1
v=30
value=0

[State 14250]
Type=VarSet
Trigger1=1
v=31
value=0

; Omegaflare

[State 14250]
Type=VarSet
Trigger1=var(29)=[1,7]
v=30
value=1

[State 14250]
Type=VarSet
Trigger1=var(29)=[1,7]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[1,7]
v=9
value=300

; Volcanic Eruption

[State 14250]
Type=VarSet
Trigger1=var(29)=[8,20]
v=30
value=1

[State 14250]
Type=VarSet
Trigger1=var(29)=[8,20]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[8,20]
v=9
value=200

; Hurricane

[State 14250]
Type=VarSet
Trigger1=var(29)=[21,40]
v=30
value=2

[State 14250]
Type=VarSet
Trigger1=var(29)=[21,40]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[21,40]
v=9
value=180

; Tornado

[State 14250]
Type=VarSet
Trigger1=var(29)=[41,45]
v=30
value=2

[State 14250]
Type=VarSet
Trigger1=var(29)=[41,45]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[41,45]
v=9
value=500

; Deep Ocean

[State 14250]
Type=VarSet
Trigger1=var(29)=[46,52]
v=30
value=3

[State 14250]
Type=VarSet
Trigger1=var(29)=[46,52]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[46,52]
v=9
value=350

; Quake

[State 14250]
Type=VarSet
Trigger1=var(29)=[53,62]
v=30
value=4

[State 14250]
Type=VarSet
Trigger1=var(29)=[53,62]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[53,62]
v=9
value=250

; Earth Spikes

[State 14250]
Type=VarSet
Trigger1=var(29)=[63,72]
v=30
value=4

[State 14250]
Type=VarSet
Trigger1=var(29)=[63,72]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[63,72]
v=9
value=220

; Ray of Light

[State 14250]
Type=VarSet
Trigger1=var(29)=[73,80]
v=30
value=5

[State 14250]
Type=VarSet
Trigger1=var(29)=[73,80]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[73,80]
v=9
value=150

; Shining Light

[State 14250]
Type=VarSet
Trigger1=var(29)=[81,84]
v=30
value=5

[State 14250]
Type=VarSet
Trigger1=var(29)=[81,84]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[81,84]
v=9
value=550

; Healing Light

[State 14250]
Type=VarSet
Trigger1=var(29)=[85,114]
v=30
value=5

[State 14250]
Type=VarSet
Trigger1=var(29)=[85,114]
v=31
value=3

[State 14250]
Type=VarAdd
Trigger1=var(29)=[85,114]
v=9
value=300

; Sudden Darkness

[State 14250]
Type=VarSet
Trigger1=var(29)=[115,119]
v=30
value=6

[State 14250]
Type=VarSet
Trigger1=var(29)=[115,119]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[115,119]
v=9
value=250

; Final Ray of Hope

[State 14250]
Type=VarSet
Trigger1=var(29)=120
v=30
value=7

[State 14250]
Type=VarSet
Trigger1=var(29)=120
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=120
v=9
value=1500

; Healing Rainbow

[State 14250]
Type=VarSet
Trigger1=var(29)=[121,124]
v=30
value=7

[State 14250]
Type=VarSet
Trigger1=var(29)=[121,124]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[121,124]
v=9
value=500

; Void Blaster

[State 14250]
Type=VarSet
Trigger1=var(29)=125
v=30
value=7

[State 14250]
Type=VarSet
Trigger1=var(29)=125
v=31
value=3

[State 14250]
Type=VarAdd
Trigger1=var(29)=125
v=9
value=1500

; 1000 Arrows

[State 14250]
Type=VarSet
Trigger1=var(29)=[126,145]
v=30
value=8

[State 14250]
Type=VarSet
Trigger1=var(29)=[126,145]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[126,145]
v=9
value=220

; Flood

[State 14250]
Type=VarSet
Trigger1=var(29)=[146,155]
v=30
value=9

[State 14250]
Type=VarSet
Trigger1=var(29)=[146,155]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[146,155]
v=9
value=200

; Thunderstorm

[State 14250]
Type=VarSet
Trigger1=var(29)=[156,165]
v=30
value=13

[State 14250]
Type=VarSet
Trigger1=var(29)=[156,165]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[156,165]
v=9
value=320

; Rain of Blades

[State 14250]
Type=VarSet
Trigger1=var(29)=[146,150]
v=30
value=15

[State 14250]
Type=VarSet
Trigger1=var(29)=[146,150]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[146,150]
v=9
value=370

; Rain of Desserts

[State 14250]
Type=VarSet
Trigger1=var(29)=[151,180]
v=30
value=16

[State 14250]
Type=VarSet
Trigger1=var(29)=[151,180]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[151,180]
v=9
value=200

; Cyclone

[State 14250]
Type=VarSet
Trigger1=var(29)=[181,185]
v=30
value=17

[State 14250]
Type=VarSet
Trigger1=var(29)=[181,185]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[181,185]
v=9
value=420

; Amplify Volume

[State 14250]
Type=VarSet
Trigger1=var(29)=[186,190]
v=30
value=18

[State 14250]
Type=VarSet
Trigger1=var(29)=[186,190]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[186,190]
v=9
value=500

; Polka

[State 14250]
Type=VarSet
Trigger1=var(29)=[190,209]
v=30
value=18

[State 14250]
Type=VarSet
Trigger1=var(29)=[190,209]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[190,209]
v=9
value=1500

; Cannonade

[State 14250]
Type=VarSet
Trigger1=var(29)=[210,212]
v=30
value=22

[State 14250]
Type=VarSet
Trigger1=var(29)=[210,212]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[210,212]
v=9
value=580

; Shield

[State 14250]
Type=VarSet
Trigger1=var(29)=[213,250]
v=30
value=23

[State 14250]
Type=VarSet
Trigger1=var(29)=[213,250]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[213,250]
v=9
value=200

; Erase - World Destroyer

[State 14250]
Type=VarSet
Trigger1=var(29)=[251,260]
v=30
value=45

[State 14250]
Type=VarSet
Trigger1=var(29)=[251,260]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[251,260]
v=9
value=1500

; Telekinesis

[State 14250]
Type=VarSet
Trigger1=var(29)=[261,300]
v=30
value=29

[State 14250]
Type=VarSet
Trigger1=var(29)=[261,300]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[261,300]
v=9
value=200

; Safety Wall

[State 14250]
Type=VarSet
Trigger1=var(29)=[301,310]
v=30
value=34

[State 14250]
Type=VarSet
Trigger1=var(29)=[301,310]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[301,310]
v=9
value=120

; Freeze 1

[State 14250]
Type=VarSet
Trigger1=var(29)=[311,330]
v=30
value=40

[State 14250]
Type=VarSet
Trigger1=var(29)=[311,330]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[311,330]
v=9
value=250

; Freeze 2

[State 14250]
Type=VarSet
Trigger1=var(29)=[331,340]
v=30
value=40

[State 14250]
Type=VarSet
Trigger1=var(29)=[331,340]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[331,340]
v=9
value=350

; World Destroyer

[State 14250]
Type=VarSet
Trigger1=var(29)=[341,345]
v=30
value=45

[State 14250]
Type=VarSet
Trigger1=var(29)=[341,345]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[341,345]
v=9
value=1500

; Meteor Shower

[State 14250]
Type=VarSet
Trigger1=var(29)=[346,350]
v=30
value=48

[State 14250]
Type=VarSet
Trigger1=var(29)=[346,350]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[346,350]
v=9
value=450

; Grand Meteor

[State 14250]
Type=VarSet
Trigger1=var(29)=351
v=30
value=48

[State 14250]
Type=VarSet
Trigger1=var(29)=351
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=351
v=9
value=1500

; Bubble Blaster

[State 14250]
Type=VarSet
Trigger1=var(29)=[352,371]
v=30
value=51

[State 14250]
Type=VarSet
Trigger1=var(29)=[352,371]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[352,371]
v=9
value=170

; Wood

[State 14250]
Type=VarSet
Trigger1=var(29)=[372,400]
v=30
value=53

[State 14250]
Type=VarSet
Trigger1=var(29)=[372,400]
v=31
value=1

[State 14250]
Type=VarAdd
Trigger1=var(29)=[372,400]
v=9
value=250

; Epicenter

[State 14250]
Type=VarSet
Trigger1=var(29)=[401,405]
v=30
value=4

[State 14250]
Type=VarSet
Trigger1=var(29)=[401,405]
v=31
value=3

[State 14250]
Type=VarAdd
Trigger1=var(29)=[401,405]
v=9
value=450

; Tsunami

[State 14250]
Type=VarSet
Trigger1=var(29)=[406,410]
v=30
value=9

[State 14250]
Type=VarSet
Trigger1=var(29)=[406,410]
v=31
value=2

[State 14250]
Type=VarAdd
Trigger1=var(29)=[406,410]
v=9
value=320

;
; The Mirror
;

[State 4140]
Type = Helper
Trigger1 = var(29)=[410,415]
Trigger1 = NumHelper(4141)=0
helpertype = normal
StateNo = 13501
ID = 4141
Name = "Mirror"
Pos = -40,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
keyctrl=1

[State 12850]
Type=Explod
Trigger1 = var(29)=[410,415]
anim=7700+31
ID = 10701
Postype=P1
pos= 26,-140
bindtime=-1
removetime=120
vel=0,0
sprpriority=-15
ownpal=1
scale= 0.1,0.1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 14250]
Type=VarAdd
Trigger1 = var(29)=[410,415]
v=9
value=390

[State 12850]
Type=Explod
Trigger1=var(29)!=0
Trigger1=var(30)!=0
Trigger1=var(31)!=0
anim=7700+var(30)
ID = 10701
Postype=P1
pos= 26,-140
bindtime=-1
removetime=120
vel=0,0
sprpriority=-15
ownpal=1
scale= 0.1,0.1
Ignorehitpause=1
Pausemovetime=9999
Supermovetime=9999

[State 4140]
Type = Helper
Trigger1 = var(29)!=0
Trigger1 =var(30)!=0
Trigger1 =var(31)!=0
StateNo = 12000+var(30)*50+var(31)*10-60
ID = 14250
Name = "Yume"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
supermovetime=9999999
Size.xscale=1
Size.yscale=1
keyctrl=1

[State 14252]
Type=VarSet
Trigger1=1
v=32
value=0

[State 14251]
Type=ChangeState
Trigger1=1
value=14252

; Wood 2
[Statedef 14610]
type = S
movetype = I
physics = S
poweradd = 0
velset = 0,0
ctrl = 0

[State 240]
Type = Helper
Trigger1 = Time=0
StateNo = 14611
ID = 14611
Name = "Wood"
Pos = 30,-50
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.XScale = .5
Size.YScale = .5
PauseMoveTime=9999999

[State 1000, state]
type = ChangeState
trigger1 = time>30
value = 0
ctrl = 1

[Statedef 14611]
Type=S
Movetype=A
Physics=N
anim=10646
sprpriority=4

[State 14611]
Type=Attackdist
Trigger1=1
value=280

[State 14611]
Type=Explod
Trigger1=time=0
anim=10643
bindtime=-1
removetime=-1
pos=0,0
postype=P1
ID=14611
scale=.5,.5
sprpriority=5

[State 14611]
Type=Angledraw
Trigger1=1
value=-90

[State 221]
Type = hitdef
Trigger1 = !movecontact
Trigger1 = !movereversed
Trigger1 = time>0
Attr              = S, HA
Damage            = floor(root,fvar(39)*190),0
GetPower          = 0
AnimType          = medium
HitFlag           = MAFD
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo          = S6001
Guard.sparkno = S4040
SparkXY           = 0,0
HitSound          = S0,200
GuardSound        = S0,201
Ground.Type       = High
Air.Type          = Low
Ground.SlideTime  = 28
Ground.HitTime    = 28
Air.HitTime       = 28
Ground.Velocity   = -18,0
Guard.Velocity   = -12
Air.Velocity      = 0,0
AirGuard.Velocity = 0,0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
Air.Fall = 1
Fall.Recover = 1
Guard.Kill = 0
ID = 14611

[State 14611]
Type=removeexplod
Trigger1=animtime=0

[State 14611]
Type=destroyself
Trigger1=animtime=0
