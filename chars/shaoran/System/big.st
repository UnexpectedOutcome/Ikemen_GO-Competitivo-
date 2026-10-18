;
; ***** Card : Big *****
;
; ----- Gigastomp -----
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
time = 136
anim = -1
movetime = 136
p2defmul = 1

[State 13360]
Type=AngleSet
Trigger1=1
value=0

[State 13360]
Type=AngleDraw
Trigger1=1
scale=1.02**(time+5*sin(time*20)),1.02**(time+5*sin(time*20))

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
Trigger1=time>=135
value=14551

[State 3999]
Type=AssertSpecial
Trigger1=1
Flag=NoShadow

[Statedef 14551]
anim=9998
Type=A
MoveType=A
Physics=N

[State 14551]
Type=Explod
Trigger1=time=0
Postype=left
pos=0,0
anim=6500
ID=6500
ontop=1
removetime=-2
bindtime=-1
supermovetime=9999
pausemovetime=9999

[State 14551]
Type=HitDef
Trigger1=time<=60
Attr              = A, HA
Damage            = 0,0
GetPower          = 0,0
GivePower = 0,0
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = 
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
guard.sparkno = -1
SparkXY           = 25,-40
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
P2StateNo=14559
numhits=0

[State 14551]
Type=HitDef
Trigger1=time=65
Attr              = A, HA
Damage            = 300,0
GetPower          = 0,0
GivePower = 0,0
AnimType          = Hard
HitFlag           = MAFD
GuardFlag         = MAF
Priority          = 4,Hit
PauseTime         = 0,0
SparkNo           = -1
guard.sparkno = -1
SparkXY           = 25,-40
HitSound          = -1
GuardSound        = -1
Ground.Type       = High
Air.Type          = Low
P2StateNo=14559

[State 14552]
Type=ChangeState
Trigger1=NumExplod(6500)=0
value=14553-(P2StateNo=14559)

[Statedef 14552]
Type=A
MoveType=A
Physics=N
anim=9999

[State 13360]
Type=PlaySnd
Trigger1=time=0
value=13360,0
volume = 256

[State 14551]
Type=Explod
Trigger1=time=0
Postype=left
pos=160,140
anim=20010
ID=14553
sprpriority=120
removetime=-1
bindtime=-1
supermovetime=9999
pausemovetime=9999
trans=none

[State 14551]
Type=Explod
Trigger1=time=0
Postype=left
pos=160,140
anim=6501
ID=14553
sprpriority=130
removetime=-1
bindtime=-1
supermovetime=9999
pausemovetime=9999
scale=0.5,0.5
facing=-1

[State 14551]
Type=Envshake
Trigger1=time=0
time=60
freq=120
ampl=12

[State 14552]
Type=RemoveExplod
Trigger1=time>=60
ID=14553

[State 14552]
Type=Targetstate
Trigger1=time>=60
value=14558

[State 14552]
Type=Changestate
Trigger1=time>=60
value=14553

[Statedef 14553]
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
trigger1 = time =1
darken = 1
time = 136
anim = -1
movetime = 136
p2defmul = 1

[State 13360]
Type=AngleSet
Trigger1=1
value=0

[State 13360]
Type=AngleDraw
Trigger1=1
scale=1.02**(135-time),1.02**(135-time)

[State 13360]
Type=NotHitBy
Trigger1=1
value=SAC

[State 3009, pause]
type = ChangeState
Trigger1=time>=135
value=0
ctrl=1

[State 3999]
Type=AssertSpecial
Trigger1=1
Flag=NoShadow

[Statedef 14559]
Type=S
MoveType=H
Physics=N
sprpriority=125
velset=0,0
ctrl=0

[State 14559]
Type=NotHitBy
Trigger1=1
value=,NA,SA,AT,AP

[State 14559]
Type=Changeanim
Trigger1=1
value=5110

[State 14559]
Type=PosAdd
Trigger1=1
Y=-Screenpos Y+140

[State 14559]
Type=PosSet
Trigger1=1
X=0

[State 14559]
Type=AngleDraw
Trigger1=1
scale=0.5,0.5

[State 14559]
Type=Changestate
Trigger1=time>=120
value=14558

[Statedef 14558]
velset=0,0

[State 14558]
Type=PosSet
Trigger1=1
Y=0

[State 14559]
Type=NotHitBy
Trigger1=1
value=SAC

[State 14558]
Type=SelfState
Trigger1=time>1
value=5120+30*(!Alive)
