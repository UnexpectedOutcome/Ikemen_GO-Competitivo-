; Death Dive Break
[Statedef 2000]
type=S
movetype=A
Physics=N
velset=0,0
anim=0
facep2=1
ctrl=0

[State x]
Type=Attackdist
Trigger1=1
value=0

[State 1400, Super A]
type = SuperPause
trigger1 = time=0
time = 30
sound = S105,3
pos = 48,-99
anim= S8000
poweradd=-1000
p2defmul=1

[State x]
Type=Changeanim
Trigger1=time=1
value=100

[State x]
Type=Velset
Trigger1=time=1
X=8

[State 2000]
Type=Nothitby
Trigger1=1
value=,NP,SP

[State x]
Type=Changestate
Triggerall=time!=0
Trigger1=P2bodydist X<30
Trigger2=frontedgedist<30
value=2001

[Statedef 2001]
Type=S
Movetype=A
Physics=S
anim=2000

[State 500, Hitdef]
type = Hitdef
trigger1 = AnimElem = 2
trigger1 = P2stateno!=40
attr = S,HT
hitflag = M
guardflag = 
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = low
air.type = low
priority = 1, Miss
damage = 0,0
getpower = 70,0
givepower = 50,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = S205
guard.sparkno = -1
sparkxy = 0,-63
hitsound = S0,104
guardsound = -1
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0
yaccel = 0.4
p1facing = 1
p2facing = 1
p1stateno = 2010
p2stateno = 2090
p1sprpriority = 1
p2sprpriority = 0
guard.dist = 0

[State 1100,3]
Type=changeState
Trigger1=Animtime=0
Value=0
ctrl=1

[Statedef 2010]
Type=A
Movetype=A
Physics=N
velset=0,0
sprpriority=1
anim=2010

[State 2010]
Type=targetbind
Trigger1=time<22
pos=85,-63
time=1

[State 2010]
Type=Playsnd
Trigger1=numtarget
Trigger1=time=22
value=S0,202

[State 2700,Spark]
Type=Helper
Trigger1=numtarget
Trigger1=time=22
Stateno=6130
ID=6130
Name="Hitspark"
Pos = 85,-63
PosType=P1
ownpal=1
ignorehitpause=1
persistent=0

[State x]
Type=Width
Trigger1=animtime!=0
value=100,0
edge=100,0

[State x]
Type=Posadd
Trigger1=animtime=0
X=55

[State x]
Type=Playerpush
Trigger1=1
value=0

[State 2010]
Type=Changestate
Trigger1=animtime=0
value=52
ctrl=1

[Statedef 2090]
Type=S
Movetype=H
Physics=N
velset=0,0
facep2=1
sprpriority=3

[State x]
Type=Changeanim2
Trigger1=time=0
value=2090

[State x]
Type=Velset
Trigger1=time=22
X=-8
Y=-4

[State x]
Type=Posset
Trigger1=time=22
Y=0

[State x]
Type=Sprpriority
Trigger1=time=21
value=0

[State x]
Type=Lifeadd
Trigger1=time=22
value=-180

[State x]
Type=Selfstate
Trigger1=time>=3
Trigger1=P2stateno!=2010
Trigger2=time=22
value=5050

; Border of Life (healing)
[Statedef 2100]
type=S
movetype=A
Physics=N
velset=0,0
anim=2200
facep2=1
ctrl=0

[State 2100]
Type=Varset
Trigger1=1
var(9)=0

[State 13100]
Type=ChangeState
Trigger1=1
value=2107

[Statedef 2107]
Type=U
movetype=H

[State ]
type = HitOverride
Triggerall=power>=0
Triggerall=var(9)<=49
Triggerall=life<lifemax
Trigger1=command="holdy"
Trigger2=var(59)!=0
attr = SCA, AA, AP, AT
stateno = 2107
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12501]
Type=VarAdd
Trigger1=1
var(9)=1

[State x]
Type=Lifeadd
Trigger1=time
value=5
persistent=2

[State x]
Type=Poweradd
Trigger1=time
value=-40
persistent=2

[State x]
Type=NotHitBy
Trigger1=1
value=,NA,SA,NP,SP

[State 1010]
Type=PlaySnd
Trigger1=var(9) % 50=20
value=S1012,0

[State 1110]
Type=Explod
Trigger1=var(9) %25=6
anim=2042
postype=P1
pos=0,-floor(pos Y)
ownpal=1
bindtime=1
removetime=-2
scale=0.5,0.5
facing=-1

[State 1110]
Type=Explod
Trigger1=var(9) %10=6
anim=6105
postype=P1
pos=20,-floor(pos Y)
ownpal=1
bindtime=1
removetime=-2
vel=8,0
scale=0.5,0.5
facing=-1

[State 1110]
Type=Explod
Trigger1=var(9) %10=6
anim=6105
postype=P1
pos=-20,-floor(pos Y)
facing=1
ownpal=1
bindtime=1
removetime=-2
vel=-8,0
scale=0.5,0.5

[State 600]
Type = Helper
Trigger1 = var(9) %10=6
StateNo = 2111
ID = 2112
Name = "WindPush"
Pos = -20,-floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height=999
Facing = -1

[State 600]
Type = Helper
Trigger1 = var(9) %10 =6
StateNo = 2111
ID = 2111
Name = "WindPush"
Pos = 20,-floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height=999
Facing = 1

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 2011
ID = 2011
pos = -floor(sin(var(9)/6.0)*48),floor(cos(var(9)/6.0)*10)
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,-0.5
accel = 0,-0.5
removetime = -2
scale = 0.25,0.25
sprpriority = 2-4*(floor(cos(var(9)/6.0))<0)
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 2011
ID = 2011
pos = -floor(sin(var(9)/6.0+pi/2)*48),floor(cos(var(9)/6.0+pi/2)*10)
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,-0.5
accel = 0,-0.5
removetime = -2
scale = 0.25,0.25
sprpriority = 2-4*(floor(cos(var(9)/6.0+pi/2))<0)
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 2011
ID = 2011
pos = -floor(sin(var(9)/6.0+pi)*48),floor(cos(var(9)/6.0+pi)*10)
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,-0.5
accel = 0,-0.5
removetime = -2
scale = 0.25,0.25
sprpriority = 2-4*(floor(cos(var(9)/6.0+pi))<0)
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 2011
ID = 2011
pos = -floor(sin(var(9)/6.0+3*pi/2)*48),floor(cos(var(9)/6.0+3*pi/2)*10)
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,-0.5
accel = 0,-0.5
removetime = -2
scale = 0.25,0.25
sprpriority = 2-4*(floor(cos(var(9)/6.0+3*pi/2))<0)
ownpal = 1

[State x]
Type=Changestate
Triggerall=var(9)>=50
Trigger1=Life=Lifemax
Trigger2=Power<=0
Trigger3=var(59)=0
Trigger3=command!="holdy"
value=120*((!var(59) && command="holdback") || (var(59) && inguarddist))
ctrl=1


[Statedef 2111]
Type=A
MoveType = I
Physics  = N
Anim     = 2031
VelSet   = 8,0

[State 1111]
Type=NotHitBy
Trigger1=1
value=SAC

[State 1111]
Type=PlayerPush
Trigger1=1
value=1

[State 1111]
Type = DestroySelf
Trigger1 = Time > 40

; Death Reborn Revolution
[Statedef 2200]
type=S
movetype=A
Physics=N
velset=0,0
anim=2200
facep2=1
ctrl=0

[State x]
Type=Playerpush
Trigger1=1
value=0

[State x]
Type=Nothitby
Trigger1=1
value=,NA,SA,NP,SP

[State 1400, Super A]
type = SuperPause
trigger1 = time=0
time = 30
sound = S105,3
pos = 51,-113
anim= S8000
poweradd=-2000
p2defmul=1

[State 1400, Super A]
type = Playsnd
trigger1 = time=0
value=S1300,0

[State 200,2]
type = HitDef
Trigger1 = time>=13
trigger1 = time %10=3
attr = S, HT                     ;Attribute: Standing, Normal Attack
GetPower = 0,0
damage = floor(fvar(39)*39),0
animtype = DiagUp                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                    ;Flags on how move is to be guarded against
hitflag = MAFDP                    ;Flags of conditions that move can hit
priority = 6, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0, 18                 ;Time attacker pauses, time opponent shakes
sparkno = -1                      ;Spark anim no (Def: set above)
guard.sparkno = -1
hitsound = S200,0
guardsound = S2000,2
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0,-5  
guard.velocity = 0
airguard.velocity = 0,0 
air.type = Low          
air.velocity = 0,-5     
air.hittime = 25
guard.kill=0
ID=2200
hitonce=0
P1Sprpriority=0
P2Sprpriority=-2
fall=1

[State 200]
Type=Varset
Trigger1=movehit=1
fvar(39)=fvar(39)*0.865

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 2200
Trigger1 = numtarget(2200)>0
Trigger1 = MoveHit=1
StateNo = 6005
ID = 6005
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 2
Size.YScale = 2

[State 1110]
Type=Explod
Trigger1=time %25=1
anim=2042
postype=P1
pos=0,-floor(pos Y)
ownpal=1
bindtime=1
removetime=-2
scale=0.5,0.5
facing=-1

[State 1110]
Type=Playsnd
Trigger1=time %25=1
value=S1,3

[State 0, Helper]
type = Helper
trigger1 = time=[1,320]
trigger1 = Numhelper(2201)<8
name = "Ribbon"
ID = 2201
stateno = 2201
pos = 0,0
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0]
Type=Changestate
Trigger1=time>=360
value=0
ctrl=1

[Statedef 2201]
type = A
movetype = A
physics = N
ctrl=0
anim=9999
sprpriority=2

[State x]
Type=varset
Trigger1=time=0
fvar(0)=15+(random %15)

[State x]
Type=varset
Trigger1=time % 30=0
fvar(10)=15+(random %15)

[State x]
Type=varset
Trigger1=time=0
fvar(1)=(random %61-30)*(pi/300)

[State x]
Type=varset
Trigger1=time % 30=0
fvar(11)=(random %61-30)*(pi/300)

[State x]
Type=varset
Trigger1=time
fvar(0)=(9*fvar(0)+fvar(10))*0.1

[State x]
Type=varset
Trigger1=time
fvar(1)=(9*fvar(1)+fvar(11))*0.1

[State x]
Type=VarAdd
trigger1=1
fvar(2)=fvar(1)

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 1000
ID = 1000
pos = 0,0
postype = p1 
bindtime = 1
vel = 0.2*fvar(0)*sin(fvar(2)),2*cos(fvar(2))
accel = 0,-0.2
removetime = 100
scale = 0.05,0.05
sprpriority = 2-4*(cos(fvar(2))<0)
ownpal = 1

[State RemoveHelper]
type = Destroyself
trigger1 = parent,time>=320
Trigger2 = parent,stateno!=2200


; Silence Buster
[Statedef 2300]
type=S
movetype=A
Physics=N
velset=0,0
anim=1040
facep2=1
ctrl=0

[State 1400, Super A]
type = Playsnd
trigger1 = Animelem=3
value=S1100,0

[State 1400, Super A]
type = SuperPause
trigger1 = Animelem=3
time = 30
sound = S105,3
pos = 37,-73
anim= S8000
poweradd=-1000
p2defmul=1

[State 220, 2]
type = Helper
trigger1 = time=15
id = 2310
name = "Silence Buster"
pos = 80,-70
postype = p1
stateno = 2310
keyctrl = 0
ownpal = 1
size.xscale=0.25
size.yscale=0.25

[State x]
Type=Changestate
Trigger1=animtime=0
value=0
ctrl=1

[Statedef 2310]
type = A
movetype = A
physics = N
ctrl=0
anim=1301
sprpriority=2
velset=8,0

[State x]
Type=Nothitby
Trigger1=1
value=SAC

[State x]
Type=Angledraw
Trigger1=1
value=90
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 11005
ID = 2310
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = .5,.75
sprpriority = 1
ownpal = 1

[State Hitdef]
type = HitDef
triggerall = !movereversed
trigger1=time
trigger1=!moveguarded
trigger1=hitcount<=10
attr = A,  HP
damage = floor(root,fvar(39)*24)
getpower = 0,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 4,12
guard.pausetime = 0,0
sparkno = S6015
guard.sparkno= S4040
sparkxy = 0, random %21-10
hitsound = S1,2
guardsound = S2000,2
ground.type = High
air.type = High
ground.hittime= 24
guard.hittime=12
ground.velocity = 0,0
guard.velocity=0
air.velocity =0,0
airguard.velocity=0,0

[State Dampener]
Type=ParentVarset
Trigger1=movehit=1
fvar(39)=parent,fvar(39)*0.94

[State RemoveHelper]
type = RemoveExplod
trigger1 = frontedgedist <-60
trigger2 = hitcount>10

[State RemoveHelper]
type = Destroyself
trigger1 = frontedgedist <-60
trigger2 = hitcount>10




; Greater Silent Wall
[Statedef 2400]
Type= S
Physics =S
MoveType= I
velset=0,0
ctrl=0
anim=1010

[State 1100,1]
Type=PlaySnd
Trigger1=time=4
value=1100,2

[State 1400, Super A]
type = SuperPause
trigger1 = Animelem=2
time = 30
movetime=30
sound = S105,3
pos = -8,-111
anim= S8000
poweradd=-1000
p2defmul=1

[State 1100,2]
Trigger1= Time=4
Type=Helper
StateNo = 2401
ID = 2401
Name = "Wall"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = .5
Size.YScale = 2
supermovetime=30

[State 1100,3]
Type=changeState
Trigger1=Animtime=0
Value=0
ctrl=1

[Statedef 2401]
Type= A
MoveType= H
Physics =N
velset=0,0
ctrl=0
anim=2044
sprpriority=3

[State x]
Type=Angledraw
Trigger1=var(9)<20
scale=0.05*time,1

[State x]
Type=Velset
Trigger1=var(9)>=20
X=0.3

[State 1101]
Type=VarAdd
Trigger1=1
v=9
value=1

[State 1101]
type = HitOverride
trigger1 = 1
attr = SAC,AP
stateno = 2401
time = -1

[State 1101]
Type=Assertspecial
Trigger1=1
Flag=NoShadow

[State 1101]
Type= NotHitBy
Trigger1=1
value= ,AA,AT

[State 1011]
Type=Trans
Trigger1=var(9)>420
trans=addalpha
alpha=256-4*(var(9)-420),256

[State 1101]
Type=DestroySelf
Trigger1=var(9)>480

[State 13101]
Type = HitDef
Trigger1 = time>=1
Triggerall = MoveContact !=[1,15]
Triggerall = Movereversed!=[1,15]
Attr              = A, SP
Damage            = floor(parent,fvar(39)*15),0
GetPower          = 0,0
AnimType          = Hard
HitFlag           = MAF
GuardFlag         = MA
Priority          = 4,Hit
PauseTime         = 0,10
Guard.PauseTime   = 0,0
SparkNo           = S6111
Guard.SparkNo     = S4040
SparkXY           = 0,floor(P2dist Y)
HitSound          = S0,103
GuardSound        = S2000,2
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Guard.SlideTime   = 10
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = -5,0
Guard.Velocity    = -5
Air.Velocity      = -3,0
AirGuard.Velocity = -5,0
Ground.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
AirGuard.CornerPush.VelOff = 0
Fall = 0
Guard.Kill = 0
ID = 2401

[State 13101]
Type=ParentVarSet
Trigger1=MoveHit=1
fvar(39)=parent,fvar(39)*0.95


; Destruction Rain
[Statedef 2500]
type=S
movetype=A
Physics=N
velset=0,0
anim=2503
facep2=1
ctrl=0

[State 2100]
Type=Varset
Trigger1=1
var(9)=0

[State 1400, Super A]
type = SuperPause
trigger1 = time=0
time = 30
movetime=30
sound = S105,3
pos = 0,-57
anim= S8000
poweradd=-3000
p2defmul=1

[State 13100]
Type=ChangeState
Trigger1=time>=30
value=2507

[Statedef 2507]
Type=U
movetype=H

[State ]
type = HitOverride
Trigger1=Animtime!=0
attr=SAC,AA,AP,AT
stateno = 2507
slot = 6
time = 1

[State 12007]
Type=HitFallSet
Trigger1=1
Value=0

[State 12501]
Type=VarAdd
Trigger1=1
var(9)=1

[State 220, 2]
type = Helper
trigger1 = var(9)=[0,140]
id = 2510
name = "Destruction"
Pos = 0,-57
postype = p1
stateno = 2510
keyctrl = 0
ownpal = 1
size.xscale=1
size.yscale=1
persistent=2

[State 12601]
Type = EnvShake
trigger1 = var(9)=[10,150]
Time  = 6
Ampl  = -3
Freq  = 90
Phase = 90
Persistent = 8

[State 1100,3]
Type=changeState
Trigger1=Animtime=0
Value=0
ctrl=1

[Statedef 2510]
Type=A
Movetype=A
Physics=N
facep2=1
anim=2047
sprpriority=2

[State 12601]
Type = PlaySnd
Trigger1 = time=0
Value = s1,12
Channel = 1

[State x]
Type=Attackdist
Trigger1=1
value=9999

[State x]
Type=Angledraw
Trigger1=1
value=90
scale=0.5+0.2*time,0.2

[State x]
Type=Varset
Trigger1=time=0
var(0)=random %360

[State x]
Type=Varset
Trigger1=time=0
var(1)=random %50

[State x]
Type=Posadd
Trigger1=time=0
X=random %31-15

[State x]
Type=Posadd
Trigger1=time=10
X=Frontedgedist-(random %320)
Y=-pos Y

[State x]
Type=Changestate
Trigger1=time=10
value=2511

[Statedef 2511]
Type=A
Movetype=A
Physics=N
facep2=1

[State x]
Type=Angledraw
Trigger1=1
value=90
scale=1,0.2

[State x]
Type=Trans
Trigger1=1
trans=addalpha
alpha=Cond(time<10,256-time*25,0),256

[State 12603]
Type = VarAdd
Trigger1 = (Time = [1,6]) || (Time > 8)
fvar(0) = IfElse(Time<7,.05,-.05)

[State 12603]
Type = Explod
Trigger1 = Time = 0
Anim = 2049
ID = 2049
Pos = 0,0
Scale = .5,.5
SprPriority = 5
IgnoreHitPause = 1
Persistent = 1

[State 12603]
Type = Explod
Trigger1 = Time = 0
Anim = 2053
ID = 2051
Pos = 0,0
Scale = .5,.5
SprPriority = -5
IgnoreHitPause = 1
Persistent = 1

[State 12603]
Type = Explod
Trigger1 = Time = 0
Anim = 2054
ID = 2051
Pos = 0,0
Scale = .5,.5
Ownpal = 1
SprPriority = 5
IgnoreHitPause = 1
Persistent = 1

[State 12603]
Type = ModifyExplod
Trigger1 = NumExplod(2049) > 0
ID = 2049
Scale = .25+fvar(0),IfElse(Time<6,.5,1.25)

[State 12603]
Type = ModifyExplod
Trigger1 = NumExplod(2051) > 0
ID = 2051
Scale = .5+Time*.05,.125+Time*.0125

[State 12603]
Type = Projectile
Trigger1 = Time = 6
Attr              = A, HP
Damage            = floor(root,fvar(39)*(310)),4
GetPower          = 0
AnimType          = Hard
PauseTime         = 0,12
Guard.PauseTime   = 0,0
Offset            = 0,0
Velocity          = 0,0
ProjID            = 13901
ProjAnim          = 2050
ProjHitAnim       = -1
ProjRemanim       = -1
ProjHits          = 1
ProjMissTime      = 1
ProjScale         = .5,.5
ProjPriority      = 9999
ProjRemove        = 0
ProjRemoveTime    = 1
ProjHeightBound   = -1000,50
ProjEdgeBound     = 9999
ProjStageBound    = 9999
HitFlag           = MAFD
GuardFlag         = MA
SparkNo           = -1
Guard.SparkNo      = -1
SparkXY           = 0,999
HitSound          = S0,103
GuardSound        = S2000,2
Ground.Type       = High
Air.Type          = High
Ground.SlideTime  = 19
Ground.HitTime    = 19
Air.HitTime       = 19
Ground.Velocity   = 0,-3
Guard.Velocity    = -3
Air.Velocity      = 0,-3
AirGuard.Velocity = -6,-.25
Fall = 1
Fall.Recover = 0
ID = 13901

[State -2]
Type = Helper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 13901
Trigger1 = time=7
StateNo = 6010
ID = 6010
Name = "HitSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 6
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 0.5
Size.YScale = 0.5

[State 12603]
Type = DestroySelf
Trigger1 = Time > 25





; Silence Glaive Surprise
[Statedef 2600]
type    = S
movetype = I
physics = S
anim = 2603
sprpriority = 1
ctrl=0

[State x]
Type=Playerpush
Trigger1=1
value=0

[State 1400, Super A]
type = SuperPause
trigger1 = time=0
time = 30
movetime=30
sound = S105,3
pos = 51,-113
anim= S8000
poweradd=-3000
p2defmul=1

[State 1600]
type = PlaySnd
trigger1 = time=0
value = S190,3

[State x]
Type=Nothitby
Trigger1=1
value=,NA,SA,NP,SP

[State 1600]
Type=VarSet
Trigger1=1
var(9)=-1

[State 1500, Effect]
type = Explod
trigger1 = time = 0
anim = 2500
scale = 0.8, 0.8
ownpal = 1
pos = 350, 190
vel = -12.2 , 1.2
accel = 0.3 , -0.2
postype = back
sprpriority = 3500
ontop=0
supermovetime = 9999
pausemovetime = 9999
ownpal=1

[State x]
Type=Posadd
Trigger1=Pos X<-2
X=3*facing

[State x]
Type=Posadd
Trigger1=Pos X>2
X=-3*facing  

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

[State 1600]
Type=ChangeState
Trigger1=time>=31
value=2607

[Statedef 2607]
type    = S
movetype = H
physics = S

[State x]
Type=Nothitby
Trigger1=1
value=,NA,SA,HA,NP,SP

[State x]
Type=Playerpush
Trigger1=1
value=0

[State 1150]
Type=HitFallSet
Trigger1=1
value=0

[State 592]
type = HitOverride
trigger1 = var(9)<315
attr = SCA, AA, AP, AT
stateno = 2607
slot=1
time = 1

[State 1607]
Type=VarAdd
Trigger1=1
var(9)=1

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
Type=Posadd
Trigger1=Pos X<-2
X=3*facing

[State x]
Type=Posadd
Trigger1=Pos X>2
X=-3*facing

[State 541]
Trigger1= var(9) = 10
Type=Helper
StateNo = 2601
ID = 2601
Name = "EndOfTheWorld"
Pos = 150,-110
PosType = Back
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.5
Size.YScale = 0.5

[State 6006]
Type=ChangeAnim
Trigger1= var(9)=310
value=300
elem=4

[State 6006]
Type=ChangeState
Trigger1= var(9)>=315
Value=0
ctrl=1

[Statedef 2601]
Type=A
MoveType = I
Physics  = N
Anim     = 9998
SprPriority = -3

[State -1]
Type = Explod
Trigger1 = Time = 0
ID = 3005
PosType = Left
Pos = 160,120
Anim = 3005
Scale = 0.5,0.5
Ownpal = 0
SprPriority = 5
BindTime = -1
Removetime = 300
SuperMoveTime = 9999

[State -1]
Type = Null;Explod
Trigger1 = Time = 301
ID = 10009
PosType = Left
Pos = 160,120
Anim = 10009
;Scale = 0.5,0.5
Ownpal = 0
SprPriority = -1
BindTime = -1
Removetime = 20
SuperMoveTime = 9999

[State -1]
Type = Explod
Trigger1 = Time = 280
ID = 10009
PosType = Left
Pos = 160,120
Anim = 10009
;Scale = 0.5,0.5
Ownpal = 0
SprPriority = -1
BindTime = -1
Removetime = -2
SuperMoveTime = 9999

[State -1]
Type = Explod
Trigger1 = Time = 300
ID = 10015
PosType = Left
Pos = 0,0
Anim = 10015
;Scale = 0.5,0.5
Ownpal = 0
SprPriority = -1
BindTime = -1
Removetime = -2
SuperMoveTime = 9999

[State 0, SuperPause]
type = SuperPause
trigger1 = time=300
time = 390
movetime= 0
anim = -1
sound = -1
pos = 0,0
darken = -1
p2defmul = 1
poweradd =0 

[State 1601]
Type=PosSet
Trigger1=1
X=0

[State 541, PlaySnd]
type = Null;PlaySnd
trigger1 = time=0
value = S1600,0
channel = 5
loop=1

[State 1601]
Type=StateTypeSet
Trigger1=Time=300
MoveType=A

[State x]
Type=BGPalFX
Trigger1=time=[280,300]
mul=256-(time-280)*12,256-(time-280)*12,256-(time-280)*12
time=-1

[State 1601]
Type = HitDef
Trigger1 = Time=301
Attr              = A, HT
Damage            = 500,500
GetPower          = 0,0
HitFlag           = MAFD
GuardFlag         =
Priority          = 0,hit
PauseTime         = 0,2
SparkNo           = -1
Guard.SparkNo     = -1
SparkXY           = 0,0
HitSound          = -1
GuardSound        = -1
animtype = DiagUp
ground.velocity = -7,-7
Ground.Type       = High
Air.Type          = Low
affectteam = B
hitonce=0
Fall=1
Ignorehitpause=1

[State 6008]
Type=parentvarset
trigger1=time>=302
v=49
value=1

[State 6008]
Type=parentvarset
trigger1=time>=302
v=48
value=1

[State 541]
Type = DestroySelf
Trigger1 = RoundState>2
Trigger2 = time>320

[state 1602]
type= assertspecial
trigger1 = 1
;flag = nomusic
flag = noshadow
Ignorehitpause=1

[Statedef 2602]
Type     = A
MoveType = A
Physics  = N
Ctrl     = 0
Facep2   = 1
PowerAdd = 0
sprpriority = -99

[State 1602, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S1600,0
channel = 5
loop = 1
ignorehitpause = 1

[State 1602]
Type=ChangeAnim
Trigger1=Anim!= 1600
value = 1600

[State 1602]
Type=StateTypeSet
Trigger1=GameTime %300>3
Trigger1=root,var(54)!=1
movetype= I

[State 1602, SprPriority]
type = SprPriority
trigger1 = 1
value = -99

[State 1602]
Type=StateTypeSet
Trigger1=GameTime %300<3
movetype= A

[State 1602]
Type = HitDef
Triggerall=roundstate=2
Trigger1=GameTime %300=1
Attr              = A, HT
Damage            = IfElse(P2Life>500,30,-30),IfElse(P2Life>500,30,-30)
animtype = Light
getpower = 0,0
givepower         = 1000
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
P1Sprpriority=-99
P2Sprpriority=0
affectteam=E

[State 1602]
Type = HitDef
Triggerall=roundstate=2
Trigger1=GameTime %300=2
Attr              = A, HT
animtype = Light
Damage            = IfElse(Root,Life>500,30,-30),IfElse(Root,Life>500,30,-30)
getpower = 0,0
givepower         = 1000
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
affectteam = F
hitonce=0
P1Sprpriority=-99
P2Sprpriority=0

[State 1602]
Type=PalFX
Trigger1=1
add=-70,-150,-20
time=-1

[state 1602]
type= assertspecial
trigger1 = 1
flag  = nobg
flag2 = nofg
flag3 = nomusic
Ignorehitpause=1

[State 1602]
Type=PosSet
Trigger1=1
X=0

[State 1602]
Type=PosAdd
Trigger1=1
Y=110-ScreenPos Y

[State 1602]
Type=ScreenBound
Trigger1=1
Value=1

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

[Statedef 13851]
anim=9999

[State 13851]
Type=ScreenBound
Trigger1=1
value=1
movecamera=1,1

[State 13851]
Type=DestroySelf
Trigger1=NumHelper(2601)=0
Trigger1=NumHelper(2602)=0
Trigger1=root,stateno!=[2600,2607]
