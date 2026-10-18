[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;====================< SINGLE BUTTON >====================

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


;====================< HOLD DIR >====================

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


;====================< HOLD BUTTON >====================

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
[Command]
name = "holdstart"
command = /s
time = 1


;====================< DIR >====================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1

;================================================

[Command]
Name = "DU"
Command = D,U
Time = 8

[Command]
Name = "holdx"
Command = /x

[Command]
Name = "longholdz"
Command = ~16z

[Command]
Name = "zz"
Command = z
buffer.time=15
Time = 1

[Command]
Name = "relz"
Command = ~z
Time = 1

[Command]
Name = "NO"
Command = D,$F
Time = 20
buffer.time=20

[Command]
Name = "NO"
Command = D,$D
Time = 20
buffer.time=20

[Command]
Name = "NO"
Command = D,$B
Time = 20
buffer.time=20

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
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
name = "dfx"
command = D,$F,x
time = 20

[Command]
name = "dfy"
command = D,$F,y
time = 20

[Command]
name = "ddy"
command = D,$D,y
time = 20

[Command]
name = "dby"
command = D,$B,y
time = 20

[Command]
name = "dbx"
command = D,$B,x
time = 20

[Command]
name = "fbx"
command = F,$B,x
time = 20

[Command]
name = "dbb"
command = D,$B,b
time = 20

[Command]
name = "dfb"
command = D,$F,b
time = 20

[Command]
name = "dfa"
command = D,$F,a
time = 20

[Command]
name = "dda"
command = D,D,a
time = 20

[Command]
name = "ddb"
command = D,D,b
time = 20

[Command]
name = "relc"
command = ~c
time = 1

[Statedef -1]

; Helper minus

[State -1] ; AI on-off for The Mirror
Type=VarSet
Trigger1=IsHelper(4141)
var(59)=(roundstate=2)*(Life>0)
ignorehitpause=1

[State -1] ; AI level for the Mirror
Type=VarSet
Trigger1=IsHelper(4141)
var(55)=25
ignorehitpause=1

[State -2] ; Twin face same direction as player
Type=Turn
Trigger1=IsHelper(12501)
Trigger1=Facing!=parent,Facing
ignorehitpause=1

[State -1] ; The Dream cannot be hit
Type=NotHitBy
Trigger1=IsHelper(13151)                   ; Is Shadow
Trigger2=IsHelper(12501)                   ; Is Twin
Trigger3=IsHelper(14250)                   ; Is Dream
Value=SAC
ignorehitpause=1

[State -1] ; The Dream remove helper after end of spell
Type=DestroySelf
Trigger1=IsHelper(14250)
Trigger1=(StateNo<12000) || (StateNo>15000)
ignorehitpause=1

[State 315]				; Counter
Type=NotHitBy
Triggerall=Cond(IsHelper,root,var(45)=gametime,var(45)=gametime)
Trigger1=StateNo=315
Trigger1=AnimTime<-3
Value2=,NA,SA,NT,ST
ignorehitpause=1

[State 395, hit]			; Dodge
type = NotHitBy
Triggerall=Cond(IsHelper,root,var(45)=gametime,var(45)=gametime)
trigger1 = Stateno = 395
value2 = ,NA, SA, NP
ignorehitpause=1

[State 100]				; Graze
Type=NotHitBy
Triggerall=Cond(IsHelper,root,var(45)=gametime,var(45)=gametime)
Trigger1= Stateno = [100,115]
value2=,NP,SP
ignorehitpause=1

[State 100]				; Graze+Cloud
Type=NotHitBy
Triggerall=Cond(IsHelper,root,var(45)=gametime,var(45)=gametime)
Triggerall=var(41)>0
Trigger1= Stateno = [100,115]
value2=,NP,SP,NT
ignorehitpause=1

[State 100]				; Graze+Fight
Type=NotHitBy
Triggerall=Cond(IsHelper,root,var(45)=gametime,var(45)=gametime)
Triggerall=var(23)>10000
Trigger1= Stateno = [100,115]
value2=,NP,SP,NA,NT
ignorehitpause=1

[State 40]
Type=NotHitBy				; jump card
Triggerall=!IsHelper
Triggerall=var(17)=2
Triggerall=abs(vel y)>=2
Trigger1=StateNo=40
Trigger2=StateNo=45
Trigger3=StateNo=50
Trigger4=StateNo=52
Trigger5=StateNo=105
Trigger6=Stateno=109
Value2=,NP,SP,NA,SA,NT,ST
ignorehitpause=1

[State -2]				;Mirror screenbound
Type=Screenbound
Trigger1=Ishelper(4141)
value=1
ignorehitpause=1

[State -2] ; Helper background changing spell
Type= ParentVarSet
Trigger1=IsHelper
Trigger1= var(57)>0
v=57
value=var(57)
ignorehitpause=1

[State -2]
Type = VarSet
Trigger1 = RoundState <2
Trigger1 = RoundNo=1
var(57) = 0
ignorehitpause=1

[State -2] ; Helper danmaku bar
Type=VarAdd
Triggerall=IsHelper
Trigger1=var(16)>0
Trigger1=StateNo!=12007
Trigger1=StateNo!=[500,599]
Trigger1=StateNo!=12750
v=16
value=-4
ignorehitpause=1

; Dampening reloactor
[State -2]
Type=Parentvarset
Trigger1=Ishelper
Trigger1=fvar(39)!=0
fvar(39)=parent,fvar(39)*fvar(39)
ignorehitpause=1

; Dampening reset
[State -2]
Type=VarSet
Trigger1=Ishelper
fvar(39)=1
ignorehitpause=1

[State -2]
Type=Parentvarset
Trigger1=var(4)>0
Trigger1=IsHelper
v=4
value=var(4)
ignorehitpause=1

[State -1]
Type=Assertspecial
Trigger1=IsHelper(4141)
flag=nowalk

[State -2]
Type=LifeSet
Trigger1=IsHelper(4141)
Trigger1=life>350
value=350
ignorehitpause=1

[State -1]
Type=ctrlset
Trigger1= IsHelper(12501)
Trigger2= IsHelper(14250)
Trigger3= IsHelper(13151)
value=0

[State 13151]
Type=PosSet
Trigger1=IsHelper(13151)
X=root,Pos X
Y=0
ignorehitpause=1

[State 13151]
Type=Bindtoparent
Trigger1=IsHelper(12501)
pos=-20,0
time=-1
ignorehitpause=1

[State 13151]
Type=Velset
Trigger1=IsHelper(12501)
X=0
Y=0
ignorehitpause=1

[State -1]
Type=PalFX
Trigger1= IsHelper(4141)
add=0,90,40
mul=256,256,256
time=999
IgnoreHitPause=1

[State -1]
Type=PalFX
Trigger1= IsHelper(12501)
add=-50,-50,90
mul=256,256,256
time=1
IgnoreHitPause=1

[State -1]
Type=VarSet
Trigger1= IsHelper(12501)
var(1)=root,var(1)

[State -1]
Type=Varadd
Trigger1= IsHelper(12501)
v=6
value=1

[State -1]
Type=Removeexplod
Triggerall= IsHelper(12501)
triggerall= StateNo!=14250
Trigger1= var(6)>900
Trigger2= Parent,Stateno=13551

[State -1]
Type=Destroyself
Triggerall= IsHelper(12501)
triggerall= StateNo!=14250
Trigger1= var(6)>900
Trigger2= Parent,Stateno=13551

[State -1]
Type=ChangeAnim
Trigger1= IsHelper(12501)
Trigger1= anim!=root,anim
value=root,anim
ignorehitpause=1

[State -2]
Type=Assertspecial
Trigger1=IsHelper(13151)
flag=invisible
Ignorehitpause=1

[State -2]
Type=RemoveExplod
Triggerall=IsHelper(13151)
Trigger1=var(0)!=anim
ID=13155

[State -2]
Type=PalFX
Trigger1=IsHelper(13151)
add=255,255,255
color=0
time=-1

[State -2]
Type=Explod
Triggerall=IsHelper(13151)
Trigger1=var(0)!=anim
ID=13155
anim=anim
vfacing=-1
bindtime=-1
removetime=-1
postype=p1
pos=0,0
pausemovetime=9999999
scale=1,0.4
sprpriority=8
ownpal=0
ignorehitpause=1
trans=sub

[State -1]
Type=LifeSet
Trigger1=IsHelper(12501)
Value=LifeMax
ignorehitpause=1

[State -1, SHadow]
Type=VarSet
Trigger1=IsHelper(13151)
v=0
value=anim

[State -2, Shadow]
Type=VarAdd
Trigger1=IsHelper(13151)
v=29
Value=1

[State -1]
Type=screenbound
Trigger1=ishelper
Trigger1=!Ishelper(4141)
Value=0
Movecamera=0,0

[State -1]
type=AssertSpecial
Trigger1=IsHelper(14250)
flag=invisible
ignorehitpause=1

[State -1]
Type=PlayerPush
Trigger1=NumHelper(13651)=0
Value=1

[State -1]
Type=PlayerPush
Trigger1=StateNo=[14550,14559]
Value=0

[State -1]
Type=PlayerPush
Trigger1=NumHelper(13651)>0
Value=1-(abs(Pos X-Helper(13651),Pos X)<25)*(Pos Y>-100)

[State -1]
Type=SelfState
Trigger1= IsHelper(12501)
Trigger1= StateNo!=root,Stateno
Trigger1= root,time<3
Trigger1= root,stateno!=[12000,15999]
Trigger1= root,stateno!=[380,389]
Trigger1= root,stateno!=[5000,5210]
value=root,stateno
ignorehitpause=1
ctrl=0

[State -1]
Type=SelfState
Trigger1= IsHelper(12501)
Trigger1= StateNo!=root,Stateno
value=12501
ignorehitpause=1
ctrl=0

[State -2]
Type=SelfState
Triggerall=IsHelper(13151)
Trigger1=StateNo!=[300,350]
Trigger1=StateNo!=13151
Value=13151
Ignorehitpause=1
ctrl=0

; Void AI, Negative Existence, do nothing state
[State -1]
Type=ChangeState
Trigger1=StateType=A
Trigger1=var(35)>0
Trigger1=StateNo!=531
Trigger1=ctrl
Trigger1=var(59)>0
Value=531

; Void AI, Negative Existence, do nothing state
[State -1]
Type=ChangeState
Trigger1=StateType!=A
Trigger1=var(35)>0
Trigger1=StateNo!=532
Trigger1=ctrl
Trigger1=var(59)>0
Value=532

[State -1, AI P Special - Thunderburst]
type = Helper
Triggerall = !IsHelper
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
Triggerall = NumHelper(4051)=0
Triggerall = StateNo!=[380,399]
Triggerall = StateNo!=[500,550]
Triggerall = (StateNo!=[12000,14999]) || (time>=3)
triggerall = var(1)=13
Triggerall = (Helper(7800),var(var(1))%100=1)
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Trigger1 = (P2MoveType=A) && (ctrl=0)
Trigger1 = Var(59)>0
Trigger1 = abs(P2BodyDist X)<60
Trigger1 = abs(P2Dist Y)<100
Trigger2 = command="zz"
Trigger2 = command="relz"
Trigger2 = command!="longholdz"
Trigger2 = command!="holdfwd"
Trigger2 = command!="holdback"
trigger2 = Var(59)=0
StateNo = 12600
ID = 4051
Name = "Thunder"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1

[State -1, AI P Special - Balance of Life]
type = Helper
Triggerall = !IsHelper
TriggerAll = (var(59)=0) || (random<var(55)*4)
Triggerall = StateNo!=[380,389]
Triggerall = (StateNo!=[12000,14999]) || (time>=3)
TriggerAll = RoundState=2
Triggerall = NumHelper(13750)=0
triggerall = var(1)=36
Triggerall = (Helper(7800),var(var(1))%100 =1)
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Trigger1 = (Life>200) || (Life>P2Life)
Trigger1 = var(35)=0
Trigger1 = Var(59)>0
Trigger1 = Cond((NumHelper(13651)=0),1,(abs(Pos X-Helper(13651),Pos X)>25) || (Pos Y<=-100))
Trigger1 = (var(8)>=life-70) || (P2StateNo=[1500,4500]) || (P2StateNo>=6000) || (random<100)
Trigger1 = InGuardDist
Trigger1 = NumHelper(4041)=0
Trigger2 = command="zz"
Trigger2 = command="relz"
Trigger2 = command!="longholdz"
Trigger2 = command!="holdfwd"
Trigger2 = command!="holdback"
trigger2 = Var(59)=0
StateNo = 13750
ID = 13750
Name = "Libra"
Pos = 0,-15
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1
pausemovetime=9999999
supermovetime=9999999

[State -1, AI Fly]
Type=SelfState
Triggerall = var(59)>0
Triggerall = random<var(55)*3+10
Triggerall = ctrl
Triggerall = StateType=S
Triggerall =var(17)=1
Trigger1= abs(P2Dist X)=[90,160]
Trigger1= var(16)<500
value=14001

[State -1, AI Jump]
Type=SelfState
TriggerAll = (var(59)=0) || (random<var(55)*3+10)
triggerall = Statetype!=A
Triggerall=(ctrl) || (StateNo=390)
Triggerall=var(59)>0
triggerall=NumHelper(4041)=0
Triggerall=Numhelper(12911)=0
Triggerall= (var(46) != [1,50]) || (var(55)<50)
Triggerall=!(Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0))
Trigger1=NumHelper(13201)>0
Trigger1=var(28)>40
Trigger1=var(22)=0
Trigger2=NumHelper(12901)>0
Trigger2=var(28)>60
Trigger2=var(22)=0
Trigger3=var(17)=2
Trigger3=(var(16)>400) || (InguardDist && (random<200))
Trigger3=Inguarddist || (P2MoveType=A)
value=IfELse((random<850) || (var(48)>0),40,105)

[State -1]
Type=DestroySelf
Trigger1=IsHelper
Trigger1=StateNo=13551
Trigger1=Root,StateNo=13551
ignorehitpause=1

[State -1]
Type=SelfState
Trigger1=IsHelper
Trigger1=root,StateNo=13551
Value=13583
ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=!Ishelper
Trigger1=NumHelper(4141)>0
Trigger1=Helper(4141),StateNo=13551
v=9
value=0

[State 13551]
Type=RemoveExplod
Trigger1=!Ishelper
Trigger1=NumHelper(4141)>0
Trigger1=Helper(4141),StateNo=13551
ID=13551

[State -1]
Type=SelfState
Trigger1=!Ishelper
Trigger1=NumHelper(4141)>0
Trigger1=Helper(4141),StateNo=13551
ignorehitpause=1
value=13551

[State -1, AI P - Eriol Power Conversion]
type = ChangeState
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
Triggerall= (ctrl) || (StateNo=14001)
Triggerall = (var(16)<=666)
Triggerall = NumHelper(7800)>0
Triggerall = Name="Eriol Hiiragizawa"
Triggerall = !IsHelper
Trigger1 = (var(16)<=333)
Trigger1 = Var(59)>0
Trigger1 = power<3000
Trigger1 = Life<500
Trigger1 = (NumHelper(12271)=0) || (NumHelper(13161)>0)
Trigger1 = Power<=7*(1000-var(16))
Trigger1 = var(24)<120
Trigger2 = Var(59)=0
Trigger2 = Command = "x"
Trigger2 = Command = "holddown"
value = 530

[State -1, Through]
type = SelfState
TriggerAll = (var(59)=0) || (random<var(55)*5)
triggerall = var(19)=1
triggerall = ctrl || (StateNo=14001) || (StateNo=[120,160])
Trigger1 = var(35)=0
Trigger1 = var(44)=0
trigger1 = var(59) > 0
Trigger1 = (StateNo=[5000,5099]) && (var(8)>life+90+floor(0.08*(1000-var(55))))
trigger1 = (NumHelper(13750)=0) || (life<200)
Trigger1 = Cond((NumHelper(13651)=0),1,(abs(Pos X-Helper(13651),Pos X)>25) || (Pos Y<=-100))
trigger2 = var(59) = 0
Trigger2 = fvar(22)!=1
trigger2 = (command = "holdfwd") || (command = "holdback")
Trigger2 = command = "y"
Trigger3 = var(18)>10000
Trigger3 = InGuardDist
Trigger3 = var(35)=0
Trigger3 = var(44)=0
trigger4 = var(59) > 0
Trigger4 = InGuardDist
Trigger4 = Random<var(55)
Trigger4 = var(35)=0
Trigger4 = var(44)=0
Trigger4 = ctrl
trigger4 = (NumHelper(13750)=0) || (life<200)
Trigger4 = Cond((NumHelper(13651)=0),1,(abs(Pos X-Helper(13651),Pos X)>25) || (Pos Y<=-100))
trigger5 = var(59) = 0
Trigger5 = fvar(22)=1
trigger5 = (command = "holdfwd") || (command = "holdback")
Trigger5 = command = "c"
value = 396

[State -1]
Type=varset
v=1
Trigger1=IsHelper(4141)
value=root,var(1)

[State -1]
Type=VarSet
Trigger1=0*(fvar(17):=0)
Trigger2=ctrl
Trigger3=(Stateno=[130,160]) && (var(59)=0)
Trigger4=name="Sakura Kinomoto"
Trigger4=Stateno=500
Trigger4=time>=5
Trigger5=name="Sakura Kinomoto"
Trigger5=Stateno=510
Trigger5=time>=13
Trigger6=name="Sakura Kinomoto"
Trigger6=Stateno=520
Trigger6=time>=17
Trigger7=name="Sakura Kinomoto"
Trigger7=Stateno=550
Trigger7=time>=11
Trigger8=name="Sakura Kinomoto"
Trigger8=Stateno=560
Trigger8=time>=40
Trigger9=name="Shaoran Lee"
Trigger9=Stateno=500
Trigger9=time>=13
Trigger10=name="Shaoran Lee"
Trigger10=Stateno=510
Trigger10=time>=7
Trigger11=name="Shaoran Lee"
Trigger11=Stateno=520
Trigger11=time>=20
Trigger12=name="Shaoran Lee"
Trigger12=Stateno=530
Trigger12=time>=30
Trigger13=name="Shaoran Lee"
Trigger13=Stateno=540
Trigger13=time>=20
Trigger14=name="Eriol Hiiragizawa"
Trigger14=Stateno=500
Trigger14=time>=17
Trigger15=name="Eriol Hiiragizawa"
Trigger15=Stateno=510
Trigger15=time>=21
Trigger16=name="Eriol Hiiragizawa"
Trigger16=Stateno=560
Trigger16=time>=21
Trigger17=name="Yue"
Trigger17=Stateno=510
Trigger17=AnimElem=2,>=2
Trigger18=name="Yue"
Trigger18=Stateno=550
Trigger18=time>=13
Trigger19=name="Yue"
Trigger19=Stateno=560
Trigger19=time>=15
fvar(17)=1

[State -1]
Type=Statetypeset
Trigger1=0
Trigger2=0
Trigger3=(Stateno=[130,160]) && (var(59)=0)
Trigger4=name="Sakura Kinomoto"
Trigger4=Stateno=500
Trigger4=time>=5
Trigger5=name="Sakura Kinomoto"
Trigger5=Stateno=510
Trigger5=time>=13
Trigger6=name="Sakura Kinomoto"
Trigger6=Stateno=520
Trigger6=time>=17
Trigger7=name="Sakura Kinomoto"
Trigger7=Stateno=550
Trigger7=time>=11
Trigger8=name="Sakura Kinomoto"
Trigger8=Stateno=560
Trigger8=time>=40
Trigger9=name="Shaoran Lee"
Trigger9=Stateno=500
Trigger9=time>=13
Trigger10=name="Shaoran Lee"
Trigger10=Stateno=510
Trigger10=time>=7
Trigger11=name="Shaoran Lee"
Trigger11=Stateno=520
Trigger11=time>=20
Trigger12=name="Shaoran Lee"
Trigger12=Stateno=530
Trigger12=time>=30
Trigger13=name="Shaoran Lee"
Trigger13=Stateno=540
Trigger13=time>=20
Trigger14=name="Eriol Hiiragizawa"
Trigger14=Stateno=500
Trigger14=time>=17
Trigger15=name="Eriol Hiiragizawa"
Trigger15=Stateno=510
Trigger15=time>=21
Trigger16=name="Eriol Hiiragizawa"
Trigger16=Stateno=560
Trigger16=time>=21
Trigger17=name="Yue"
Trigger17=Stateno=510
Trigger17=AnimElem=2,>=2
Trigger18=name="Yue"
Trigger18=Stateno=550
Trigger18=time>=13
Trigger19=name="Yue"
Trigger19=Stateno=560
Trigger19=time>=15
Movetype=I

[State -1, Void, damage absorbtion]
Type=SelfState
TriggerAll = (var(59)=0) || (random<var(55))
triggerall=roundstate=2
triggerall=!Ishelper
triggerall=StateNo!=[380,389]
triggerall=StateNo!=[12000,14999]
triggerall=StateNo!=[5100,5999]
triggerall=NumHelper(7800)!=0
Triggerall=power>=2000
Triggerall=Name="Void"
Triggerall=var(16)<=1000
Triggerall=Movetype!=A
Trigger1=command="x"
Trigger1=command="holddown"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=(var(16)>800) || (Life<300)
Trigger2=InGuardDist
Trigger2=Life<600
Trigger2=Numhelper(14400)=0
trigger2=(NumHelper(13750)=0) || (life<200)
Trigger2=var(55)>20
Value=530

[State -1, Power Clow Card Use]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55))
triggerall=!Ishelper
Triggerall=ctrl || ((Stateno=[300,370]) && (movecontact)) || (StateNo=[120,160]) || (fvar(17)=1)
Triggerall=StateType!=A
triggerall=NumHelper(7800)!=0
Triggerall=var(1)=28
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Triggerall=(Helper(7800),var(var(1))%100=2)
Trigger1 = command="zz"
Trigger1 = command!="longholdz"
Trigger1 = command="relz"
;Trigger1 = command!="holdfwd"
;Trigger1 = command!="holdback"
Trigger1=var(59)=0
Trigger2=abs(P2BodyDist X)<40+50*(name="Eriol Hiiragizawa")
Trigger2=abs(P2BodyDist Y)<40
Trigger2=var(59)>0
Trigger2=P2StateType!=L
Trigger2=P2stateno=!12952
Trigger2 =P2StateNo!=13205
Trigger2=helper(991),var(7)=0
Trigger2=helper(991),var(5)=0
Value=13360

[State -1, Change Clow Card Use]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55))
triggerall =!Ishelper
Triggerall =ctrl || (StateNo=[120,160]) || (fvar(17)=1) || ((Stateno=[300,370]) && (movecontact))
Triggerall =StateType!=A
triggerall =NumHelper(7800)!=0
Triggerall =var(1)=50
Triggerall =power>=(100*(Helper(7800),var(var(1))/100))
Triggerall =(Helper(7800),var(var(1))%100=1)
Trigger1 = command="zz"
Trigger1 = command!="longholdz"
Trigger1 = command="relz"
;Trigger1 = command!="holdfwd"
;Trigger1 = command!="holdback"
Trigger1 =var(59)=0
Trigger2 =var(59)>0
Trigger2 =(var(1)%100)=50
Trigger2 =(Helper(7800),var(var(1))%100)=1
Trigger2 =(P2Life*15+enemy,power>Life*15+power+2000) || ((Life<100) && (P2Life>350))
Trigger2 =abs(P2BodyDist X)<40
Trigger2 =abs(P2Dist Y)<40
Trigger2 =P2StateNo!=13205
Trigger2 =P2StateNo!=12952
Trigger2 =P2StateType!=L
Trigger2=helper(991),var(7)=0
Trigger2=helper(991),var(5)=0
Value=14450

[State -1, Bubble Clow Card Use]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55))
triggerall=!Ishelper
Triggerall=ctrl || (StateNo=[120,160])
Triggerall=StateType=S
triggerall=NumHelper(7800)!=0
Triggerall=var(1)=51
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Triggerall=(Helper(7800),var(var(1))%100=1)
Trigger1 = command="zz"
Trigger1 = command!="longholdz"
Trigger1 = command="relz"
;Trigger1 = command!="holdfwd"
;Trigger1 = command!="holdback"
Trigger1=var(59)=0
Trigger2=P2MoveType=A
Trigger2=InGuardDist
Trigger2=var(59)>0
Trigger2=helper(991),var(7)=0
Trigger2=helper(991),var(6)=0
Value=14500

[State -1, Lock Clow Card Use]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55))
triggerall=!Ishelper
Triggerall=ctrl || (StateNo=[120,160])
Triggerall=StateType=S
triggerall=NumHelper(7800)!=0
Triggerall=var(1)=34
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Triggerall=(Helper(7800),var(var(1))%100=1)
Triggerall=NumHelper(13651)=0
Trigger1 = command="zz"
Trigger1 = command!="longholdz"
Trigger1 = command="relz"
;Trigger1 = command!="holdfwd"
;Trigger1 = command!="holdback"
Trigger1=var(59)=0
Trigger2=(Power>=10*life) && (InGuardDist)
Trigger2=var(59)>0
Value=13650

[State -1, AI Clow Card Use]
Type=ChangeState
Value=380
triggerall=!Ishelper
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
Triggerall=ctrl || (StateNo=[120,160]) || ((Stateno=[300,370]) && (movecontact)) || (fvar(17)=1)
Triggerall=StateType!=A
triggerall=StateNo!=[120,160]
triggerall=NumHelper(7800)!=0
Triggerall=var(1)>0
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Triggerall=var(59)>0
; OmegaFlare
Trigger1=(var(1)%100)=1
Trigger1=(Helper(7800),var(var(1))%100)=1
Trigger1=P2StateNo!=[120,160]
Trigger1=abs(P2Dist X)>90
Trigger1=NumHelper(12901)=0
Trigger1=random-200>var(16)
Trigger1=!((enemy,authorname="Seravy") && (enemy,NumHelper(14601)>0))
Trigger1=fvar(39)>.5
Trigger1=helper(991),var(7)=0
; Vulcano
Trigger2=(var(1)%100)=1
Trigger2=(Helper(7800),var(var(1))%100)=2
Trigger2=abs(P2Dist X)<90
Trigger2=fvar(39)>.5
Trigger2=helper(991),var(7)=0
Trigger2=helper(991),var(6)=0
; Watergun
Trigger3=(var(1)%100)=3
Trigger3=(Helper(7800),var(var(1))%100)=1
Trigger3=P2StateNo!=[120,160]
Trigger3=abs(P2Dist X)>70
Trigger3=abs(P2Dist Y)<30
Trigger3=fvar(39)>.5
Trigger3=P2statetype!=L
Trigger3=!enemynear,hitfall
Trigger3=helper(991),var(7)=0
Trigger3=helper(991),var(6)=0
; Deep Ocean
Trigger4=(var(1)%100)=3
Trigger4=(Helper(7800),var(var(1))%100)=2
Trigger4=enemy,pos Y>-120
Trigger4=helper(991),var(7)=0
; Hurricane
Trigger5=(var(1)%100)=2
Trigger5=(Helper(7800),var(var(1))%100)=1
Trigger5=(abs(P2Dist X)>90) || (Life>P2Life)
Trigger5=enemynear,pos Y>-160
Trigger5=P2StateNo!=12952
Trigger5=helper(991),var(7)=0
Trigger5=helper(991),var(6)=0
; Tornado
Trigger6=(var(1)%100)=2
Trigger6=(Helper(7800),var(var(1))%100)=2
Trigger6=abs(P2Dist X)>120
Trigger6=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger6=Helper(991),var(2)=0
Trigger6=helper(991),var(7)=0
; Earthy, Any
Trigger7=(var(1)%100)=4
Trigger7=P2StateType!=A
Trigger7=abs(P2Dist X)>80
Trigger7=helper(991),var(7)=0
; Healing Song
Trigger8=(var(1)%100)=18
Trigger8=(Helper(7800),var(var(1))%100)=1
Trigger8=Life<700
Trigger8=NumHelper(13001)=0
; Little card, any
Trigger9=(var(1)%100)=35
Trigger9=P2MoveType!=A
Trigger9=P2StateType=A
Trigger9=P2StateNo!=[13705,13706]
Trigger9=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger9=var(16)<400
Trigger9=helper(991),var(7)=0
; Ray of Light
Trigger10=(var(1)%100)=5
Trigger10=(Helper(7800),var(var(1))%100)=1
Trigger10=((P2StateType=A) && (abs(P2Dist X)>160)) || ((abs(P2Dist X)>240) && (P2StateNo!=[120,160]))
Trigger10=fvar(39)>.5
Trigger10=helper(991),var(7)=0
Trigger10=helper(991),var(6)=0
; Shining Light
Trigger11=(var(1)%100)=5
Trigger11=(Helper(7800),var(var(1))%100)=2
Trigger11=(P2Life>250) || (Life<250)
Trigger11=helper(991),var(7)=0
; Light - Heavenly Light
Trigger12=(var(1)%100)=5
Trigger12=(Helper(7800),var(var(1))%100)=3
Trigger12=((1.0*Life)/lifemax<=(0.65*enemy,life)/enemy,lifemax) || (Life<180) || ((life<350) && ((Helper(7700),var(2)=26) || (Helper(7700),var(3)=26) || (Helper(7700),var(4)=26) || (Helper(7700),var(5)=26))) || ((life<550) && (helper(991),var(7)>0))
Trigger12=numhelper(4041)=0
; Sudden Darkness
Trigger13=(var(1)%100)=6
Trigger13=(Helper(7800),var(var(1))%100)=1
Trigger13=(Life<600) || (P2Life<150)
Trigger13=abs(P2Dist X)>160
Trigger13=P2Stateno!=12952
Trigger13=P2StateType!=L
Trigger13=P2StateType!=C
Trigger13=fvar(39)>.5
Trigger13=helper(991),var(7)=0
Trigger13=helper(991),var(6)=0
; Engulfing Shadows
Trigger14=(var(1)%100)=6
Trigger14=(Helper(7800),var(var(1))%100)=2
Trigger14=enemy,power>power
Trigger14=helper(991),var(7)=0
; Dark - Cloud of Despair
Trigger15=(var(1)%100)=6
Trigger15=(Helper(7800),var(var(1))%100)=3
; Ray of Hope
Trigger16=(var(1)%100)=7
Trigger16=(Helper(7800),var(var(1))%100)=1
Trigger16=(Life<300) || (P2Life>500)
Trigger16=P2StateNo!=[120,160]
Trigger16=helper(991),var(7)=0
Trigger16=helper(991),var(6)=0
; Healing Rainbow
Trigger17=(var(1)%100)=7
Trigger17=(Helper(7800),var(var(1))%100)=2
Trigger17=(Life<350)
; Void Blaster
Trigger18=(var(1)%100)=7
Trigger18=(Helper(7800),var(var(1))%100)=3
Trigger18=(P2Life > 500) || (Life < 300)
Trigger18=P2StateNo!=13205
Trigger18=helper(991),var(7)=0
; Arrow
Trigger19=(var(1)%100)=8
Trigger19=(Helper(7800),var(var(1))%100)=1
Trigger19=(P2Life<200) || (power>=5000) || (random<50)
Trigger19=(abs(p2dist X)>100) || (random<100)
Trigger19=helper(991),var(7)=0
Trigger19=helper(991),var(6)=0
; Flood
Trigger20=(var(1)%100)=9
Trigger20=(Helper(7800),var(var(1))%100)=1
Trigger20=helper(991),var(7)=0
Trigger20=helper(991),var(6)=0
Trigger20=P2StateType!=A
; Voice - Eternal Command
Trigger21=(var(1)%100)=10
Trigger21=(Helper(7800),var(var(1))%100)=1
Trigger21=var(16)>=900
Trigger21=abs(P2Dist X)>100
Trigger21=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger21=helper(991),var(7)=0
; Double Trouble
Trigger22=(var(1)%100)=11
Trigger22=(Helper(7800),var(var(1))%100)=1
Trigger22=(power>6000) || (random<50) || (Life>300)
Trigger22=NumHelper(12501)=0
Trigger22=abs(P2Dist X)>130
Trigger22=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger22=helper(991),var(7)=0
; Time card, any
Trigger23=(var(1)%100)=12
Trigger23=(((Helper(7800),var(var(1))%100)=3) && (Numhelper(13451)=0) && (numproj=0) && (var(44)=0) &&(P2StateNo!=[5000,5120])) || ((var(33)<300) && ((Helper(7800),var(var(1))%100)=[1,2]))
;Trigger23=P2MoveType!=A
;Trigger23=!InGuardDist
; Thunderstorm
Trigger24=(var(1)%100)=13
Trigger24=(Helper(7800),var(var(1))%100)=2
Trigger24=P2StateNo=[120,160]
Trigger24=abs(P2Dist X)>150
Trigger24=Helper(991),var(2)=0
Trigger24=helper(991),var(7)=0
Trigger24=helper(991),var(6)=0
; Dimension Walk
Trigger25=(var(1)%100)=14
Trigger25=(Helper(7800),var(var(1))%100)=1
Trigger25=(!InGuardDist) || (var(19)=1)
Trigger25=life>200 || (var(19)=1)
; Sword, Any
Trigger26=(var(1)%100)=15
Trigger26=(P2StateNo =[120,160]) || (P2Life<=200)
Trigger26=abs(P2Dist X)<270
Trigger26=P2StateType!=L
Trigger26=P2StateNo!=13205
Trigger26=helper(991),var(7)=0
Trigger26=helper(991),var(6)=0
; Sweet - Happiness
Trigger27=(var(1)%100)=16
Trigger27=(Helper(7800),var(var(1))%100)=1
Trigger27=Life<650
; Sweet - Rain of Desserts
Trigger28=(var(1)%100)=16
Trigger28=(Helper(7800),var(var(1))%100)=2
Trigger28=Life<600
Trigger28=(P2Life>800) || (Life<200) || (AILevel<3)
; Cyclonic Conduction
Trigger29=(var(1)%100)=17
Trigger29=(Helper(7800),var(var(1))%100)=1
Trigger29=abs(P2Dist X)<95
Trigger29=(life<125) || (P2MoveType=A)
Trigger29=helper(991),var(7)=0
; Snow
Trigger30=(var(1)%100)=19
Trigger30=(Helper(7800),var(var(1))%100)=1
Trigger30=var(27)>210
Trigger30=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
; Lullaby
Trigger31=(var(1)%100)=20
Trigger31=(Helper(7800),var(var(1))%100)=1
Trigger31=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger31=Helper(991),var(2)=0
Trigger31=abs(P2Dist X)>150
; Silence - Alarm System
Trigger32=(var(1)%100)=21
Trigger32=(Helper(7800),var(var(1))%100)=1
; Sniping
Trigger33=(var(1)%100)=22
Trigger33=(Helper(7800),var(var(1))%100)=1
Trigger33=helper(991),var(7)=0
; Cannonade
Trigger34=(var(1)%100)=22
Trigger34=(Helper(7800),var(var(1))%100)=2
Trigger34=life<500 || random<80 || P2Life=[400,600]
Trigger34=(abs(P2Dist X)>140) || (Life>125)
Trigger34=helper(991),var(7)=0
Trigger34=helper(991),var(6)=0
; Shield card, any
Trigger35=(var(1)%100)=23
Trigger35=NumHelper(4041)=0
; Twilight Stalker
Trigger36=(var(1)%100)=24
Trigger36=(Helper(7800),var(var(1))%100)=1
Trigger36=(Life>400) || (random<50)
; QuickSand
Trigger37=(var(1)%100)=25
Trigger37=(Helper(7800),var(var(1))%100)=1
Trigger37=var(27)>150
Trigger37=(var(17)>0) || !(Name="Eriol Hiiragizawa")
; Grand Returner
Trigger38=var(1)=26
Trigger38=(Helper(7800),var(var(1))%100)=1
Trigger38=(enemy,life>(var(14)+250)) || (var(14)=0)
Trigger38=enemy,life>0
Trigger38=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger38=Helper(991),var(2)=0
Trigger38=helper(991),var(7)=0
; Weather Forecast, Shower Warning
Trigger39=(var(1)%100)=27
Trigger39=(Helper(7800),var(var(1))%100)=[1,2]
; Power - Super Stregth
Trigger40=(var(1)%100)=28
Trigger40=(Helper(7800),var(var(1))%100)=1
Trigger40=(Life>400) || (random<50) || (NumHelper(13151)>0) || (Numhelper(13211)>0)
Trigger40=var(25)=0
; Move - Telekinesis
Trigger41=(var(1)%100)=29
Trigger41=(Helper(7800),var(var(1))%100)=1
Trigger41=P2MoveType=A
Trigger41=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger41=P2stateNo!=13401
Trigger41=Numproj=0
Trigger41=!enemy,HitFall
Trigger41=helper(991),var(7)=0
; Mist - Fog of Acid
Trigger42=(var(1)%100)=30
Trigger42=(Helper(7800),var(var(1))%100)=1
Trigger42=P2Life<=Life-300
; Mirror card, Mirror Image
Trigger43=(var(1)%100)=31
Trigger43=(Helper(7800),var(var(1))%100)=1
Trigger43=P2MoveType!=A
Trigger43=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger43=abs(p2Dist X)>150
; Mirror card, Reflect
Trigger44=(var(1)%100)=31
Trigger44=(Helper(7800),var(var(1))%100)=2
Trigger44=abs(P2Dist X)>220
Trigger44=NumHelper(14201)=0
Trigger44=Helper(991),var(2)>1
; Road of Hell
Trigger45=(var(1)%100)=32
Trigger45=(Helper(7800),var(var(1))%100)=1
Trigger45=Life>P2Life
Trigger45=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger45=abs(P2Dist X)>160
Trigger45=Helper(991),var(2)=0
Trigger45=P2Movetype!=A
Trigger45=helper(991),var(7)=0
; Eternal Road
Trigger46=(var(1)%100)=33
Trigger46=(Helper(7800),var(var(1))%100)=1
Trigger46=Life>300
; Invisibility
Trigger47=(var(1)%100)=38
Trigger47=(Helper(7800),var(var(1))%100)=1
Trigger47=(var(19)=1) || (random<100)
Trigger47=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
; Quick Jump
Trigger48=(var(1)%100)=37
Trigger48=(Helper(7800),var(var(1))%100)=1
; Haunt
Trigger49=(var(1)%100)=38
Trigger49=(Helper(7800),var(var(1))%100)=4
; Thunder 3rd
Trigger50=(var(1)%100)=13
Trigger50=(Helper(7800),var(var(1))%100)=3
Trigger50=abs(P2bodydist X)<110
Trigger50=power>=1000
Trigger50=helper(991),var(7)=0
Trigger50=helper(991),var(6)=0
; Spikes of Cold
Trigger51=(var(1)%100)=40
Trigger51=(Helper(7800),var(var(1))%100)=1
Trigger51=abs(P2Dist X)>100
Trigger51=P2StateType!=L
Trigger51=P2StateNo!=12952
Trigger51=helper(991),var(7)=0
Trigger51=helper(991),var(6)=0
; Frost Driver
Trigger52=(var(1)%100)=40
Trigger52=(Helper(7800),var(var(1))%100)=2
Trigger52=abs(enemynear,pos X+enemynear,vel X*4)=[90,110]
Trigger52=helper(991),var(7)=0
Trigger52=helper(991),var(6)=0
; Evasive Action
Trigger53=(var(1)%100)=41
Trigger53=(Helper(7800),var(var(1))%100)=1
; Float - Any
Trigger54=(var(1)%100)=43
; Fight - Lightspeed
Trigger55=(var(1)%100)=44
Trigger55=(Helper(7800),var(var(1))%100)=1
Trigger55=var(23)=0
; Fight - Breakthrough
Trigger56=(var(1)%100)=44
Trigger56=(Helper(7800),var(var(1))%100)=2
Trigger56=(random<50) || (NumHelper(13151)>0) || (Numhelper(13211)>0) || (var(25)>0)
Trigger56=var(23)=0
; Vanisher
Trigger57=(var(1)%100)=45
Trigger57=(Helper(7800),var(var(1))%100)=1
Trigger57=(abs(P2Dist X)>180)
Trigger57=NumHelper(14201)=0
Trigger57=Helper(991),var(2)>1
; World Dest.
Trigger58=(var(1)%100)=45
Trigger58=(Helper(7800),var(var(1))%100)=2
Trigger58=((Life<=300)&&(random<100))||((Numhelper(14071)>0)&&(P2Life>=350)&&(P2Life>Life))
Trigger58=helper(991),var(7)=0
; Dream
Trigger59=(var(1)%100)=46
Trigger59=(Helper(7800),var(var(1))%100)=1
Trigger59=Life<300 || random<100 || P2Life<300
Trigger59=helper(991),var(7)=0
Trigger59=helper(991),var(6)=0
Trigger59=helper(991),var(5)=0
; Dash, Any
Trigger60=(var(1)%100)=47
Trigger60=var(18)=0
; Create - Any
Trigger61=(var(1)%100)=48
Trigger61=(P2Life > 300) || (Life < 300)
Trigger61=((Helper(7800),var(var(1))%100)=1) || (!Inguarddist && (Helper(991),var(2)=0) && (abs(P2Dist X)>180) && P2Movetype!=A && ((Life>250) || (RoundNo>2)))
Trigger61=helper(991),var(7)=0
Trigger61=helper(991),var(6)=0
; Hiding Mist
Trigger62=(var(1)%100)=49
Trigger62=(Helper(7800),var(var(1))%100)=1
Trigger62=(life<600) || (Power>=4000) || (Helper(991),var(2)>3)
; Big
Trigger63=(var(1)%100)=52
Trigger63=(Helper(7800),var(var(1))%100)=1
Trigger63=P2Stateno!=12952
Trigger63=Numhelper(12951)=0
Trigger63=Life>180
Trigger63=helper(991),var(7)=0
; Wood
Trigger64=(var(1)%100)=53
Trigger64=(Helper(7800),var(var(1))%100)=1
; SandStoneSKin
Trigger65=(var(1)%100)=25
Trigger65=(Helper(7800),var(var(1))%100)=2
Trigger65=life>400
; Illusion - Annihilation Forecast
Trigger66=(var(1)%100)=38
Trigger66=(Helper(7800),var(var(1))%100)=2
Trigger66=!Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger66=P2Stateno!=[120,160]
Trigger66=(Power>8000) || (enemy,life-enemy,power/20>500)
Trigger66=helper(991),var(7)=0
; Snowstorm
Trigger67=(var(1)%100)=19
Trigger67=(Helper(7800),var(var(1))%100)=2
Trigger67=var(42)>60
; Tsunami
Trigger68=(var(1)%100)=9
Trigger68=(Helper(7800),var(var(1))%100)=2
Trigger68=P2StateType!=A
Trigger68=helper(991),var(7)=0
Trigger68=helper(991),var(6)=0
; Illusion - Mirage Attack
Trigger69=(var(1)%100)=38
Trigger69=(Helper(7800),var(var(1))%100)=3
Trigger69=enemy,power<4000
; Twilight Grab
Trigger70=(var(1)%100)=24
Trigger70=(Helper(7800),var(var(1))%100)=2
Trigger70=abs(P2Dist X)>100
Trigger70=(P2stateno=[120,160]) || (Numhelper(12271)>0) || (P2Life<75)
Trigger70=P2StateType=S
Trigger70=!(enemy,ctrl)
Trigger70=helper(991),var(7)=0
Trigger70=helper(991),var(5)=0
; Greater tornado
Trigger71=(var(1)%100)=17
Trigger71=(Helper(7800),var(var(1))%100)=2
Trigger71=abs(enemy,pos X)<30
Trigger71=(RoundNo>=2) || (P2Life>=300)
Trigger71=helper(991),var(7)=0
Trigger71=helper(991),var(6)=0
; Dark - Eternal Sleep
Trigger72=(var(1)%100)=6
Trigger72=(Helper(7800),var(var(1))%100)=4
Trigger72=(life>400) || (NumHelper(12281)>0)
; Move - Centrifugal Training
Trigger73=(var(1)%100)=29
Trigger73=(Helper(7800),var(var(1))%100)=2
Trigger73=P2StateType=A
Trigger73=!enemy,Inguarddist
Trigger73=Numproj=0
Trigger73=!enemy,HitFall
Trigger73=NumHelper(12911)=0
Trigger73=NumHelper(13001)=0
Trigger73=helper(991),var(7)=0
; Bubble - Bubble Bomber
Trigger74=(var(1)%100)=51
Trigger74=(Helper(7800),var(var(1))%100)=2
Trigger74=(life>400) || (NumHelper(14511)>0)
; Trumpet of Victory
Trigger75=(var(1)%100)=18
Trigger75=(Helper(7800),var(var(1))%100)=3
Trigger75=(Life>=400) || (NumHelper(12871)>0)
Trigger75=NumHelper(13001)=0
; Flower Ritual
Trigger76=(var(1)%100)=42
Trigger76=(Helper(7800),var(var(1))%100)=2
Trigger76=Life>500
Trigger76=P2life>500
Trigger76=!inguarddist
; Flower of life
Trigger77=(var(1)%100)=42
Trigger77=(Helper(7800),var(var(1))%100)=3
Trigger77=!inguarddist
; Wood
Trigger78=(var(1)%100)=53
Trigger78=(Helper(7800),var(var(1))%100)=2
Trigger78=!Inguarddist
Trigger78=P2statetype!=L
Trigger78=P2statetype!=A
Trigger78=P2stateno!=[120,160]
Trigger78=helper(991),var(7)=0
Trigger78=helper(991),var(5)=0
; Stunning Light
Trigger79=(var(1)%100)=39
Trigger79=(Helper(7800),var(var(1))%100)=1
Trigger79=(P2life<300) || (power>=5000) || (random<50)
Trigger79=P2statetype!=L
Trigger79=!enemynear,hitfall
; Freeze 3
Trigger80=(var(1)%100)=40
Trigger80=(Helper(7800),var(var(1))%100)=3
Trigger80=P2stateno=[120,160]
Trigger80=helper(991),var(7)=0

[State -1, AI Run Fwd]
Type=ChangeState
Triggerall=ctrl || (Stateno=[130,156])
Triggerall=var(59)>0
triggerall=abs(P2BodyDist X)>75
triggerall=life>400
Triggerall=Cond((NumHelper(13651)=0),1,(abs(Pos X-Helper(13651),Pos X)>25))
;Triggerall=StateType=S
Triggerall = var(44)<30
Triggerall = (var(46) = 0) || (var(55)<50)
Triggerall = (var(48)=0) || (var(18)=[1,9000])
triggerall=var(49)<3
Trigger1=NumHelper(13151)>0
Trigger2=(var(23)>0) && (random<500)
Trigger3=(var(25)>0) && (random<500)
Trigger4=Numhelper(13211)>0
Trigger5=random<var(55)
Trigger5=random<250
trigger5=P2statetype!=L
trigger5=(P2statetype!=A && Statetype!=A) || (Statetype=A && P2statetype=A && (abs(P2dist Y)=[-50,0]))
value=100+10*(Statetype=A)
ctrl=0

[State -1, AI Run Fwd]
Type=ChangeState
Triggerall=ctrl || (Stateno=[130,156])
Triggerall=var(59)>0
triggerall=var(49)<3
Triggerall = (var(48)=0) || (var(18)=[1,9000])
Trigger1 = Helper(991),var(8)>0
value=100+10*(Statetype=A)
ctrl=0

; AI Physical attacks when Power or Fight is active
[State -1, CR Heavy Attack]
Type=ChangeState
TriggerAll=(random<var(55)*1.2)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Triggerall=name!="Eriol Hiiragizawa"
triggerall=name!="Void"
Trigger1=var(44)<30
Trigger1=var(59)>0
Trigger1=abs(P2BodyDist X)<55*(name="Sakura Kinomoto")+42*(name="Shaoran Lee")+155*(name="Yue")
Trigger1=abs(P2Dist Y)<40
Trigger1= P2StateNo = [120,160]
Trigger1=P2StateType!=A
Trigger1=helper(991),var(5)=0
Value=350

[State -1, CR Light Attack]
Type=ChangeState
TriggerAll=(random<var(55)*0.9)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl 
Triggerall=StateType!=A
Triggerall=name!="Eriol Hiiragizawa"
triggerall=name!="Void"
Trigger1=var(59)>0
Trigger1=var(44)<30
Trigger1=abs(P2BodyDist X)<60*(name="Sakura Kinomoto")+29*(name="Shaoran Lee")+85*(name="Yue")
Trigger1=abs(P2Dist Y)<35
Trigger1=P2stateno!=12952
Trigger1=P2StateType!=A
Trigger1=helper(991),var(5)=0
Value=330

[State -1, CR Med Attack]
Type=ChangeState
TriggerAll=(random<var(55))
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Triggerall=name!="Eriol Hiiragizawa"
triggerall=name!="Void"
triggerall=name!="Yue"
Trigger1=var(44)<30
Trigger1=var(59)>0
Trigger1=abs(P2BodyDist X)<54*(name="Sakura Kinomoto")+35*(name="Shaoran Lee")+85*(name="Yue")
Trigger1=abs(P2Dist Y)<35
Trigger1=helper(991),var(5)=0
Value=340

[State -1, Light Attack]
Type=ChangeState
TriggerAll=(random<var(55)*1.1)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl || (Stateno=100)
Triggerall=StateType!=A
Trigger1=var(59)>0
trigger1=!(Name ="Yue")
Trigger1=abs(P2BodyDist X)<50*(name="Sakura Kinomoto")+40*(name="Shaoran Lee")+30*(name="Yue")+115*(name="Eriol Hiiragizawa")+65*(name="Void")*(1-0.5*(P2MoveType=H))
Trigger1=abs(P2Dist Y)<35
Trigger1=P2StateNo!=[13705,13706]
Trigger1=P2stateno!=12952
Trigger1=var(44)<30
Trigger1=P2StateType!=C
Trigger1=P2StateType!=L
Trigger1=helper(991),var(5)=0
Value=300

[State -1, Med Attack]
Type=ChangeState
TriggerAll=(random<var(55)*1.2)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Trigger1=var(59)>0
Trigger1=abs(P2BodyDist X)<61*(name="Sakura Kinomoto")+55*(name="Shaoran Lee")+90*(name="Yue")+115*(name="Eriol Hiiragizawa")+45*(name="Void")
Trigger1=abs(P2Dist Y)<35
Trigger1=var(44)<30
Trigger1=P2stateno!=12952
Trigger1=helper(991),var(5)=0
Value=310

[State -1, Heavy Attack]
Type=ChangeState
TriggerAll=(random<var(55)*1.3)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151)) || (Stateno=100)
Triggerall=StateType!=A
Trigger1=var(59)>0
Trigger1=abs(P2BodyDist X)<64*(name="Sakura Kinomoto")+72*(name="Shaoran Lee")+80*(name="Yue")+160*(name="Eriol Hiiragizawa")+55*(name="Void")
Trigger1=var(44)<30
Trigger1=abs(P2Dist Y)<40
Trigger1=P2stateno!=12952
Trigger1=helper(991),var(5)=0
Value=320

[State -1, Air Med Attack]
Type=ChangeState
TriggerAll=(random<var(55)*1.4)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl
Triggerall=StateType=A
Trigger1=var(59)>0
Trigger1=var(44)<30
Trigger1=abs(P2BodyDist X)<45
Trigger1=abs(P2BodyDist Y)<35
Trigger1=helper(991),var(5)=0
Value=370

[State -1, Air Strong Attack]
Type=ChangeState
TriggerAll=(random<var(55)*1.4)
Triggerall=(var(23)>0) || (var(25)>0)
Triggerall=ctrl
Triggerall=StateType=A
Triggerall=name!="Eriol Hiiragizawa"
Trigger1=var(59)>0
Trigger1=var(44)<30
Trigger1=abs(P2BodyDist X)<55
Trigger1=abs(P2BodyDist Y)<55
Trigger1=helper(991),var(5)=0
Value=360

[State -1, AI P Dodge]
type = ChangeState
TriggerAll = (var(59)=0) || (random<var(55)+2)
triggerall = roundstate=2
triggerall = (ctrl = 1) || (StateNo=[120,150]) || (fvar(17)=1)
Triggerall = (var(48)=0) || (var(18)=[1,9000])
triggerall = StateType!=A
Triggerall = Stateno!=397
trigger1 = (NumHelper(4041)=0) || IsHelper
Trigger1 = var(35)=0
trigger1 = (NumHelper(13750)=0) || (life<200)
trigger1 = var(59) > 0
trigger1 = ((random<75) && ctrl) ;|| (random<2)
trigger1 = InGuardDist
Trigger1 = Cond((NumHelper(13651)=0),1,(abs(Pos X-Helper(13651),Pos X)>25) || (Pos Y<=-100))
Trigger1 = var(44) = 0
Trigger1 = !(enemynear,hitdefattr = SCA,HA,HP,SP,AT)
Trigger1 = (var(46) = 0) || (var(55)<50)
trigger2 = var(59) = 0
trigger2 = (command = "holdfwd") || (command = "holdback")
Trigger2 = command = "holdy"
Trigger2 = fvar(22)!=1
Trigger3 = var(18)>10000
Trigger3 = InGuardDist
trigger4 = var(59) = 0
trigger4 = (command = "holdfwd") || (command = "holdback")
Trigger4 = command = "holdc"
Trigger4 = fvar(22)=1
value = 395

[State -1, Graze Up]
type = ChangeState
value = 109
triggerall = StateType=S
triggerall = stateno!=109
triggerall = fvar(17) || (Stateno=[130,160])
trigger1 = var(59) = 0
trigger1 = command = "holdup"
trigger1 = command = "holdz"
trigger2 = var(59) > 0
trigger2 = Inguarddist
trigger2 = abs(P2Dist X)>=160
trigger2 = Stateno!=[120,160]
trigger2 = random<var(55)
trigger2 = (random<50) || !ctrl
trigger3 = var(59) = 0
trigger3 = command="DU"
Trigger4 = var(59)>0
Trigger4 = Helper(991),var(9)>0

[State -1, AI Defense]
type = SelfState
triggerall = stateno!=[120,160]
triggerall = roundstate=2
triggerall = var(59) > 0
triggerall = (ctrl = 1) || (StateNo=390) || (StateNo=14001)
triggerall = (NumHelper(4041)=0) || IsHelper
Triggerall = Cond((NumHelper(13651)=0),1,(abs(Pos X-Helper(13651),Pos X)>25) || (Pos Y<=-100))
triggerall = (NumHelper(13750)=0) || (life<200) || ((life<510) && (var(46)>0))
Triggerall = var(35)=0
Triggerall = var(44)=0
triggerall = cond(NumHelper(13211),!(ID=Helper(13211),var(29)),1)
triggerall = InGuardDist
triggerall = (StateType!=A) || (var(17)!=2)
triggerall = (StateType!=A) || (name!="Eriol Hiiragizawa") || (var(22)>0)
Trigger1 = random<var(55)*2+(AiLevel>=3)*30+100*Ailevel*(Prevstateno=[5120,5129])
value = 120

[State -1]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1, Clow Card Use]
Type=ChangeState
triggerall=!Ishelper
Triggerall=ctrl || (StateNo=[120,160]) || ((Stateno=[300,370]) && (movecontact)) || (fvar(17)=1)
Triggerall=StateType!=A
triggerall=NumHelper(7800)!=0
Triggerall=var(1)>0
Triggerall=power>=(100*(Helper(7800),var(var(1))/100))
Triggerall=!((Helper(7800),var(var(1))%100=1) && (var(1)=13))
Triggerall=!((Helper(7800),var(var(1))%100=1) && (var(1)=36))
Triggerall=!((Helper(7800),var(var(1))%100=1) && (var(1)=42))
Triggerall=!((Helper(7800),var(var(1))%100=1) && (var(1)=51))
Triggerall=!((Helper(7800),var(var(1))%100=2) && (var(1)=28))
Triggerall=!((Helper(7800),var(var(1))%100=1) && (var(1)=34))
Trigger1 = command="zz"
Trigger1 = command!="longholdz"
Trigger1 = command="relz"
;Trigger1 = command!="holdfwd"
;Trigger1 = command!="holdback"
Trigger1=var(59)=0
Value=380

[State -1, Clow Card Use]
Type=ChangeState
triggerall=Ishelper(4141)
Triggerall=ctrl
Triggerall=StateType!=A
triggerall=NumHelper(7800)!=0
Triggerall=power>=(100*(Helper(7800),var(root,var(1))/100))
Triggerall=root,var(1)>0
Triggerall=!((Helper(7800),var(root,var(1))%100=1) && (root,var(1)=13))
Triggerall=!((Helper(7800),var(root,var(1))%100=1) && (root,var(1)=36))
Triggerall=!((Helper(7800),var(root,var(1))%100=1) && (root,var(1)=42))
Triggerall=!((Helper(7800),var(root,var(1))%100=1) && (root,var(1)=51))
Triggerall=!((Helper(7800),var(root,var(1))%100=2) && (root,var(1)=28))
Triggerall=!((Helper(7800),var(root,var(1))%100=1) && (root,var(1)=34))
Trigger1=command="z"
Trigger1=var(59)=0
Value=385

[State -1,P AI Counter]
Type=ChangeState
TriggerAll = (var(59)=0) || ((random<var(55)) && (var(55)>=20))
Triggerall= StateType=S
Triggerall= StateNo=[150,155]
Triggerall=abs(P2BodyDist X)<60+25*(name="Yue")+25*(name="Eriol Hiiragizawa")
Triggerall=abs(P2Dist Y)<50
triggerall=!(enemynear,hitdefattr=SCA,HA,HP,HT,SP,NP)
Trigger1=var(59)=0
Trigger1=(command="holdback") || (fvar(22)!=1)
Trigger1=command="b"
Trigger2=var(35)=0
Trigger2=var(44)<30
Trigger2=var(59)>0
Trigger2=helper(991),var(5)=0
value=315

[State -1, P Special Yue]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=name="Yue"
Triggerall=var(59)=0
Trigger1=fvar(22)!=1
Trigger1=command="dfb"
Trigger2=fvar(22)=1
Trigger2=command="dfy"
Value=530

[State -1, P Special Yue]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Trigger1=command="dda"
Trigger1=command!="dfa"
Trigger1=var(59)=0
Trigger1=name="Yue"
Value=540

[State -1, P Special Yue 4]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Triggerall=name="Yue"
Trigger1=fvar(22)!=1
Trigger1=command="dfa"
Trigger2=fvar(22)=1
Trigger2=command="x"
Trigger2=command!="holddown"
Trigger2=command!="dfx"
Trigger2=command!="dbx"
Value=560

[State -1, P Special Yue 4]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || (Stateno=[120,160]) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Triggerall=name="Yue"
Trigger1=fvar(22)!=1
Trigger1=command="ddb"
Trigger1=command!="dfb"
Trigger1=command!="dbb"
Trigger2=fvar(22)=1
Trigger2=command="ddy"
Trigger2=command!="dfy"
Trigger2=command!="dby"
Value=570

[State -1, AI,P Special Yue Frost Barrier]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || (Stateno=[120,160]) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Triggerall=Statetype!=A
Triggerall=name="Yue"
Trigger1=var(59)=0
Trigger1=fvar(22)=1
Trigger1=command="dby"
Trigger2=var(46)>0
Trigger2=random<var(55)
Value=580

[State -1, P Special Yue 4]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Trigger1=command="dbx"
Trigger1=var(59)=0
Trigger1=name="Yue"
Value=550

[State -1, P - Sakura Acceleration]
type = ChangeState
value = 530
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=880
Trigger1 = command = "dfa"
Trigger1 = Name="Sakura Kinomoto"

[State -1, P - Sakura Slicer Jump]
type = ChangeState
value = 540
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>4))
;Triggerall = var(16)<=1000
Trigger1 = command = "dfx"
Trigger1 = Name="Sakura Kinomoto"

[State -1, P - Shaoran chain lightning]
type = ChangeState
value = 540
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall = Name="Shaoran Lee"
Trigger1 = command = "dfx"
Trigger1 = fvar(22)!=1
Trigger2 = fvar(22)=1
Trigger2 = command = "dby"

[State -1, P - Eriol Asteroid Zone]
type = ChangeState
value = 540
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall = Name="Eriol Hiiragizawa"
Trigger1 = command = "dfb"
Trigger1 = fvar(22)!=1
Trigger2 = fvar(22)=1
Trigger2 = command = "dfy"

[State -1, P - Eriol Thunderstaff]
type = ChangeState
value = 550
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
Triggerall= ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = statetype!=A
Triggerall = var(16)<=1000
Trigger1 = command = "dfx"
Trigger1 = Name="Eriol Hiiragizawa"

[State -1, P - Sakura Geyser]
type = ChangeState
value = 550
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall = Name="Sakura Kinomoto"
Trigger1 = command = "dfb"
Trigger1 = fvar(22)!=1
Trigger2 = fvar(22)=1
Trigger2 = command = "dby"

[State -1, P - Sakura Flameburst]
type = ChangeState
value = 560
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Trigger1 = command = "dbx"
Trigger1 = Name="Sakura Kinomoto"

[State -1, P - Void Explode]
type = ChangeState
value = 540
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
triggerall = var(16)<=1000
Trigger1 = command="holddown"
Trigger1 = command="b"
Trigger1 = name ="Void"

[State -1, P - Void Explode]
type = ChangeState
value = 550
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
triggerall = var(16)<=1000
Triggerall = name ="Void"
Trigger1 = command="dfa"
Trigger1 = fvar(22)!=1
Trigger2 = fvar(22)=1
Trigger2 = command = "dfx"

[State -1, P - Shaoran Groundfreeze]
type = ChangeState
value = 530
TriggerAll = RoundState=2
TriggerAll = Var(59)=0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>=13))
triggerall = var(16)<=1000
Triggerall = name ="Shaoran Lee"
Trigger1 = command="dfa"
Trigger1 = fvar(22)!=1
Trigger2 = fvar(22)=1
Trigger2 = command = "dfx"

[State -1, P Eriol Hot Laser]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Triggerall=name="Eriol Hiiragizawa"
Triggerall=Statetype!=A
Trigger1=command="dfa"
Trigger1 = fvar(22)!=1
Trigger2 = fvar(22)=1
Trigger2 = command = "holddown"
Trigger2 = command = "y"
Value=560

[State -1, P Eriol Darkness Pillar]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Triggerall=name="Eriol Hiiragizawa"
;Triggerall=Statetype!=A
Trigger1=command="dby"
Value=570

[State -1, P Eriol Light Bolt]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Triggerall=name="Eriol Hiiragizawa"
;Triggerall=Statetype!=A
Trigger1=command="dbx"
Value=580

[State -1, P Eriol Floating Light]
Type=ChangeState
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Triggerall=name="Eriol Hiiragizawa"
;Triggerall=Statetype!=A
Trigger1=command="fbx"
Value=590

[State -1, P Special 1]
Type=ChangeState
Triggerall = fvar(22)!=1
Triggerall = (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall = command!="holddown"
Triggerall=command="a"
Triggerall=var(59)=0
Trigger1=(command="holdback") 
Trigger2=abs(P2BodyDist X)>50
Trigger2=name="Sakura Kinomoto"
Trigger2=Numhelper(501)=0
Trigger3=abs(P2BodyDist X)>40
Trigger3=(name="Shaoran Lee")
Trigger4=abs(P2BodyDist X)>30
Trigger4=(name="Yue")
Trigger5=abs(P2BodyDist X)>115
Trigger5=(name="Eriol Hiiragizawa")
Trigger6=abs(P2BodyDist X)>65
Trigger6=(name="Void")
Value=500

[State -1, P Special 2]
Type=ChangeState
Triggerall = fvar(22)!=1
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = !(name="Shaoran Lee") || (StateType=S)
Triggerall = command!="holddown"
Triggerall = var(16)<=1000
Triggerall=command="b"
Triggerall=var(59)=0
Trigger1=command="holdback"
Trigger2=abs(P2BodyDist X)>61
Trigger2=name="Sakura Kinomoto"
Trigger3=abs(P2BodyDist X)>55
Trigger3=(name="Shaoran Lee")
Trigger4=abs(P2BodyDist X)>90
Trigger4=(name="Yue")
Trigger5=abs(P2BodyDist X)>115
Trigger5=(name="Eriol Hiiragizawa")
Trigger6=abs(P2BodyDist X)>45
Trigger6=(name="Void")
Value=510

[State -1, P Special 3]
Type=ChangeState
Triggerall = fvar(22)!=1
Triggerall= (ctrl) || (StateNo=14001) || ((name="Yue") && (Stateno=[120,160])) || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>4) && (name="Sakura Kinomoto"))
Triggerall = !((name="Yue") || (name="Eriol Hiiragizawa")) || (StateType=S)
Triggerall = command!="holddown"
Triggerall = var(16)<=1000
Triggerall=command="x"
Triggerall=var(59)=0
Trigger1=command="holdback"
Trigger2=abs(P2BodyDist X)>64
Trigger2=name="Sakura Kinomoto"
Trigger3=abs(P2BodyDist X)>72
Trigger3=(name="Shaoran Lee")
Trigger4=abs(P2BodyDist X)>80
Trigger4=(name="Yue")
;Trigger5=abs(P2BodyDist X)>160
;Trigger5=(name="Eriol Hiiragizawa")
Trigger5=abs(P2BodyDist X)>55
Trigger5=(name="Void")
Value=520

; Basic Three Special Attacks New command layout

[State -1, P Special]
Type=ChangeState
Triggerall = fvar(22)=1
Triggerall = (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Trigger1=name="Sakura Kinomoto"
Trigger1=command!="dfy"
Trigger1=command="y"
Trigger1=Numhelper(501)=0
Trigger2=name="Shaoran Lee"
Trigger2=command="x"
Trigger3=name="Yue"
;Trigger3=command!="holddown"
Trigger3=command="dfx"
Trigger4=name="Eriol Hiiragizawa"
Trigger4=command="x"
Trigger5=name="Void"
Trigger5=command="x"
value=500

[State -1, P Special 2]
Type=ChangeState
Triggerall = fvar(22)=1
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Trigger1=name="Sakura Kinomoto"
Trigger1=command="dfy"
Trigger2=StateType=S
Trigger2=name="Shaoran Lee"
Trigger2=command="y"
Trigger2=command!="dfy"
Trigger3=name="Yue"
Trigger3=command="y"
Trigger4=name="Eriol Hiiragizawa"
Trigger4=command="y"
Trigger5=name="Void"
Trigger5=command="y"
Trigger5=command!="dfy"
value=510

[State -1, P Special 3]
Type=ChangeState
Triggerall = fvar(22)=1
Triggerall= (ctrl) || (StateNo=14001) || ((name="Yue") && (Stateno=[120,160])) || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>4) && (name="Sakura Kinomoto"))
Triggerall = var(16)<=1000
Triggerall=var(59)=0
Trigger1=name="Sakura Kinomoto"
Trigger1=command="x"
Trigger2=name="Shaoran Lee"
Trigger2=command="dfy"
Trigger3=StateType!=A
Trigger3=name="Yue"
Trigger3=command="holddown"
Trigger3=command="x"
Trigger4=StateType=S
Trigger4=name="Eriol Hiiragizawa"
Trigger4=command="dfb"
Trigger5=name="Void"
Trigger5=command="dfy"
Value=520


;
; ***** Character Specific basic attacks AI *****
;
; ----- Sakura -----
;

[State -1, AI - Geyser]
type = ChangeState
value = 550
TriggerAll = (var(59)=0) || (random<var(55)*0.6)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2BodyDist X)>120
Trigger1 = abs(P2BodyDist Y)<60
Trigger1 = Name="Sakura Kinomoto"
Trigger1 = NumHelper(551)=0
Trigger1=helper(991),var(6)=0

[State -1, AI - Sakura Silcer Jump]
type = ChangeState
value = 540
TriggerAll = (var(59)=0) || (random<var(55)*0.8)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>4))
;Triggerall = var(16)<=800
Triggerall = (!Inguarddist && (Life>350)) || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2BodyDist X)=[80,160]
Trigger1 = abs(P2BodyDist Y)<60
Trigger1 = P2Stateno=[120,160]
Trigger1 = Name="Sakura Kinomoto"
Trigger1 = var(18)=0
Trigger1=helper(991),var(5)=0

[State -1, AI - Sakura Acceleration]
type = ChangeState
value = 530
TriggerAll = (var(59)=0) || (random<var(55)*0.7)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = (var(16)<500) && (random<100)
Trigger1 = P2StateType=S
Trigger1 = Name="Sakura Kinomoto"
Trigger1=helper(991),var(5)=0

[State -1, AI - Sakura Fireball]
type = ChangeState
value = 520
TriggerAll = (var(59)=0) || (random<var(55)*.95)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>4))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
trigger1 = abs(P2Dist Y)<50
trigger1 = abs(P2Dist X)=[120,240]
trigger1 = P2StateType!=C
trigger1 = P2StateType!=L
trigger1 = P2Stateno!=[120,160]
Trigger1 = Name="Sakura Kinomoto"
Trigger1=helper(991),var(6)=0

[State -1, AI - Sakura Windy Small]
type = ChangeState
value = 500
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = Numhelper(501)=0
Trigger1 = abs(P2Dist X)= [40,90]
Trigger1 = abs(P2Dist Y)<80
Trigger1 = Name="Sakura Kinomoto"
Trigger1 = numhelper(13151)=0
Trigger1=helper(991),var(6)=0

[State -1, AI - Sakura Windy Small]
type = ChangeState
value = 560
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2Dist X)= [70,150]
Trigger1 = abs(P2Dist Y)<40
Trigger1 = vel y<=0
Trigger1 = Name="Sakura Kinomoto"
Trigger1 = numhelper(13151)=0
Trigger1=helper(991),var(6)=0

[State -1, AI - Sakura RainCloud]
type = ChangeState
value = 510
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
;trigger1 = P2StateType != A
Trigger1 = Name="Sakura Kinomoto"
Trigger1 = abs(P2Dist X)>120
Trigger1 = NumHelper(511)<2
Trigger1 = var(16)<500
Trigger1 = BackEdgeDist <80
Trigger1=helper(991),var(6)=0

;
; ----- Yue -----
;

[State -1, AI - Yue Ice Crystal]
type = ChangeState
value = 500
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2Dist X)>150
;Trigger1 = P2StateType !=A
Trigger1 = Name="Yue"
Trigger1 = P2StateType!=C
Trigger1 = (enemy,const(size.height)+enemy,pos Y>=75+pos Y)
Trigger1 = random<200
Trigger1=helper(991),var(6)=0

[State -1, AI - Yue Ice Bolt]
type = ChangeState
value = 550
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2Dist X)>=200
Trigger1 = P2StateNo=[120,160]
Trigger1 = Name="Yue"
Trigger1=helper(991),var(6)=0

[State -1, AI - Yue Pushback wind]
type = ChangeState
value = 540
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
trigger1 = NumHelper(548)=0
Trigger1 = abs(P2Dist X)=[60,120]
Trigger1 = Life<=300
Trigger1 = Name="Yue"

[State -1, AI - Yue Arrow Shower]
type = ChangeState
value = 530
TriggerAll = (var(59)=0) || (random<var(55)-15)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=500
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2Dist X)>150
trigger1 = (P2StateType = A) || (enemy,const(size.height)<75)
Trigger1 = random<500
Trigger1 = Name="Yue"
Trigger1=helper(991),var(6)=0

[State -1, AI - Yue Arrow]
type = ChangeState
value = 510
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=900
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Trigger1 = abs(P2Dist X)>150
trigger1 = P2StateType = A
Trigger1 = enemy,pos Y<=pos Y-70
Trigger1 = Name="Yue"
Trigger1=helper(991),var(6)=0

[State -1, AI - Yue Crystal Wall]
type = ChangeState
value = 520
TriggerAll = (var(59)=0) || (random<var(55)*0.8)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2Dist X)=[30,65]
trigger1 = P2MoveType = A
Trigger1 = enemy,Pos Y>-40
Trigger1 = Name="Yue"
Trigger1=helper(991),var(5)=0

;
; ----- Shaoran -----
;

[State -1, AI - Shaoran Chain Lightning]
type = ChangeState
value = 540
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Triggerall = Name="Shaoran Lee"
Trigger1 = NumHelper(541)=0
Trigger1 = P2Statetype=A
Trigger1=helper(991),var(6)=0

[State -1, AI - Shaoran Groundfreeze]
type = ChangeState
value = 530
TriggerAll = (var(59)=0) || (random<var(55)-6)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype != A
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact)) || ((Stateno=500) && (time>=13))
Triggerall = var(16)<=600
Triggerall = Name="Shaoran Lee"
triggerall = P2StateType != A
Triggerall=helper(991),var(6)=0
Trigger1 = (abs(P2Dist X) > 90) && (random<100)
Trigger2 = (abs(P2Dist X) = [40,90]) && (P2MoveType!=A) && (P2Stateno!=[120,160])

[State -1, AI - Shaoran Thunderbolt Big]
type = ChangeState
value = 520
TriggerAll = (var(59)=0) || (random<var(55)*0.4)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = Name="Shaoran Lee"
Trigger1 = abs(P2Dist X)>120
Trigger1 = Statetype!=A
Trigger1 = P2Statetype!=A
Trigger1 = P2Statetype!=L
Trigger1=helper(991),var(6)=0

[State -1, AI - Shaoran Thunderbolt small]
type = ChangeState
value = 510
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2BodyDist X) = [20,50]
trigger1 = P2StateType != A
Trigger1 = Name="Shaoran Lee"
Trigger1=helper(991),var(6)=0

;
; ----- Void -----
;

[State -1, AI - Void Blaster]
type = ChangeState
value = 550
TriggerAll = (var(59)=0) || (random<var(55)*0.9)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Trigger1 = abs(P2Dist X)= [80,180]
Trigger1 = random<250
Trigger1 = Name="Void"
Trigger1=helper(991),var(6)=0

[State -1, AI - Void Explode]
type = ChangeState
value = 540
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2Dist X)= [30,90]
Trigger1 = P2MoveType!=A
Trigger1 = Name="Void"
Trigger1=helper(991),var(6)=0

[State -1, AI - Void Star Small]
type = ChangeState
value = 500
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=500
Trigger1 = abs(P2Dist X)> 120
Trigger1 = Name="Void"
Trigger1 = Pos Y>-100
Trigger1=helper(991),var(6)=0

[State -1, AI - Void Star Big]
type = ChangeState
value = 510
TriggerAll = (var(59)=0) || (random<var(55)*0.97)
TriggerAll = RoundState=2
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
TriggerAll = Var(59)>0
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2Dist X)> 60
Trigger1 = Name="Void"
Trigger1 = Random<500
Trigger1=helper(991),var(6)=0

[State -1, AI - Void Laser]
type = ChangeState
value = 520
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2Dist X)> 80
Trigger1 = Name="Void"
Trigger1 = Pos Y>-100
Trigger1=helper(991),var(6)=0

;
; ------ Eriol -----
;
[State -1, Heavy Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.6)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Triggerall=var(16)<=800
Trigger1=var(59)>0
Trigger1=abs(P2BodyDist X)<64*(name="Sakura Kinomoto")+72*(name="Shaoran Lee")+80*(name="Yue")+160*(name="Eriol Hiiragizawa")+55*(name="Void")
Trigger1=abs(P2Dist Y)<40
trigger1= (var(44)<20) || (enemy,life<60)
Trigger1=P2stateno=!12952
Trigger1=helper(991),var(5)=0
Value=520

[State -1, AI - Eriol Thunderstaff]
type = ChangeState
value = 550
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
triggerAll = statetype !=A
triggerAll = ctrl || (StateNo=390) || ((Stateno=[300,370]) && (movecontact))
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Triggerall = var(16)<=800
Triggerall = name="Eriol Hiiragizawa"
Trigger1 = abs(P2Dist X) =[40,120]
Trigger1 = P2Dist Y<-90
Trigger1 = P2StateType=A
Trigger1=helper(991),var(6)=0

[State -1, AI - Eriol Comet Shower]
type = ChangeState
value = 540
TriggerAll = (var(59)=0) || (random<var(55)*0.6)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Trigger1 = name="Eriol Hiiragizawa"
Trigger1 = abs(P2Dist X)=[100,200]
Trigger1 = enemynear,pos Y>-160
Trigger1=helper(991),var(6)=0

[State -1, AI - Eriol Comet]
type = ChangeState
value = 510
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = name="Eriol Hiiragizawa"
Trigger1 = random<400
Trigger1 = abs(P2Dist X)>110
Trigger1=helper(991),var(6)=0

[State -1, AI - Darkness Pillar]
type = ChangeState
value = 570
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Trigger1 = name="Eriol Hiiragizawa"
Trigger1 = random<600
Trigger1 = abs(P2Dist X)>110
Trigger1=helper(991),var(6)=0

[State -1, AI - Light Bolt]
type = ChangeState
value = 580
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = name="Eriol Hiiragizawa"
Trigger1 = random<600
Trigger1 = P2statetype!=C
Trigger1 = P2statetype!=L
Trigger1 = abs(P2Dist X)>110
Trigger1=helper(991),var(6)=0

[State -1, AI - Light Bolt 2]
type = ChangeState
value = 590
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = name="Eriol Hiiragizawa"
Trigger1 = random<600
Trigger1=helper(991),var(6)=0

[State -1, AI - Eriol Laser]
type = ChangeState
value = 560
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
triggerAll = statetype !=A
triggerAll = ctrl || (StateNo=390) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=500
Triggerall = name="Eriol Hiiragizawa"
Triggerall=helper(991),var(6)=0
Trigger1 = abs(P2Dist X) =[40,85]
Trigger1 = P2StateType!=A
Trigger1 = P2StateNo!=13205
Trigger2 = P2StateNo=100
Trigger2 = abs(P2Dist X) =[90,180]

[State -1, AI - Eriol Earth Drive]
type = ChangeState
value = 500
TriggerAll = (var(59)=0) || (random<var(55)*0.75)
TriggerAll = RoundState=2
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
TriggerAll = Var(59)>0
triggerall= (ctrl) || (StateNo=14001) || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2Dist X) = [90,180]
Trigger1 = name="Eriol Hiiragizawa"
trigger1 = P2StateType=S
Trigger1 = abs(enemynear,vel X)<1
Trigger1=helper(991),var(6)=0

[State -1, CR Heavy Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Triggerall=name!="Eriol Hiiragizawa"
triggerall=name!="Void"
Trigger1=command="x"
Trigger1=command="holddown"
Trigger1=var(59)=0
Trigger1=fvar(22)!=1
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<55*(name="Sakura Kinomoto")+42*(name="Shaoran Lee")+155*(name="Yue")
Trigger2=abs(P2Dist Y)<40
Trigger2= P2StateNo = [120,160]
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2=P2StateType!=A
Trigger2=helper(991),var(5)=0
Trigger3=command="b"
Trigger3=command!="holdback"
Trigger3=command!="holdfwd"
Trigger3=command="holddown"
Trigger3=var(59)=0
Trigger3=fvar(22)=1
Value=350

[State -1, CR Light Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
Triggerall=ctrl 
Triggerall=StateType!=A
Triggerall=name!="Eriol Hiiragizawa"
triggerall=name!="Void"
Trigger1=command="a"
Trigger1=command="holddown"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<60*(name="Sakura Kinomoto")+29*(name="Shaoran Lee")+85*(name="Yue")
Trigger2=abs(P2Dist Y)<35
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2=P2StateType!=A
Trigger2=helper(991),var(5)=0
Value=330

[State -1, CR Med Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.1)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Triggerall=name!="Eriol Hiiragizawa"
triggerall=name!="Void"
triggerall=name!="Yue"
Trigger1=command="b"
Trigger1=command="holddown"
Trigger1=(command="holdback") || (fvar(22)!=1) || (command="dbb") || (command="holdfwd")
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<54*(name="Sakura Kinomoto")+35*(name="Shaoran Lee")+85*(name="Yue")
Trigger2=abs(P2Dist Y)<35
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2=helper(991),var(5)=0
Value=340

[State -1, Light Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*(1.1+0.5*name="Eriol Hiiragizawa"+0.5*name="Void"))
Triggerall=ctrl || (Stateno=100)
Triggerall=StateType!=A
Trigger1=command="a"
Trigger1=var(59)=0
Trigger2=!(Name="Yue")
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<50*(name="Sakura Kinomoto")+40*(name="Shaoran Lee")+30*(name="Yue")+115*(name="Eriol Hiiragizawa")+65*(name="Void")*(1-0.5*(P2MoveType=H))
Trigger2=abs(P2Dist Y)<35
Trigger2=P2StateNo!=[13705,13706]
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2=P2stateno=!12952
Trigger2=P2StateType!=C
Trigger2=P2StateType!=L
Trigger2=helper(991),var(5)=0
Value=300

[State -1, Med Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.2)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151))
Triggerall=StateType!=A
Trigger1=command="b"
Trigger1=var(59)=0
Trigger1=(command="holdback") || (fvar(22)!=1)
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<61*(name="Sakura Kinomoto")+55*(name="Shaoran Lee")+90*(name="Yue")+115*(name="Eriol Hiiragizawa")+45*(name="Void")
Trigger2=abs(P2Dist Y)<35
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2=P2stateno=!12952
Trigger2=helper(991),var(5)=0
Value=310

[State -1, Heavy Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.3)
Triggerall=ctrl || (((Stateno=300) || (StateNo=330)) && (movecontact) && !IsHelper(13151)) || (Stateno=100)
Triggerall=StateType!=A
Trigger1=fvar(22)!=1
Trigger1=command="x"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<64*(name="Sakura Kinomoto")+72*(name="Shaoran Lee")+80*(name="Yue")+160*(name="Eriol Hiiragizawa")+55*(name="Void")
Trigger2=abs(P2Dist Y)<40
trigger2= (var(44)<20) || (enemy,life<60)
Trigger2=P2stateno=!12952
Trigger2=helper(991),var(5)=0
Trigger3=fvar(22)=1
Trigger3=command="b"
Trigger3=var(59)=0
Value=320

[State -1, AI - Yue Ice Crystal]
type = ChangeState
value = 570
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = (StateType=S) || (StateType=A)
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Trigger1 = abs(P2Dist X)=[90,110]
Trigger1 = enemynear,vel X=[-2,2]
Trigger1 = Name="Yue"
Trigger1 = helper(991),var(6)=0

[State -1, AI - Shaoran Ice Crystal]
type = ChangeState
value = 500
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = (StateType=S) || (StateType=A)
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=800
Trigger1 = abs(P2dist Y*2-P2dist X)<30
Trigger1 = (StateType=A) || (abs(P2Dist X)=[80,120])
Trigger1 = Name="Shaoran Lee"
Trigger1 = helper(991),var(6)=0

[State -1, AI - Yue Ice Crystal]
type = ChangeState
value = 560
TriggerAll = (var(59)=0) || (random<var(55))
TriggerAll = RoundState=2
TriggerAll = Var(59)>0
Triggerall = (StateType=S) || (StateType=A)
triggerAll = ctrl || ((Stateno=[300,370]) && (movecontact))
Triggerall = var(16)<=600
Trigger1 = vel y<=0
Trigger1 = abs(P2dist Y*2+60-P2dist X)<30
Trigger1 = (StateType=A) || (abs(P2Dist X)=[95,125])
Trigger1 = Name="Yue"
Trigger1 = helper(991),var(6)=0

[State -1, Air Med Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.5)
Triggerall= (ctrl) || (StateNo=14001)
Triggerall=StateType=A
Trigger1=command="a"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)=[35,45]
Trigger2=abs(P2Dist Y)<35
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2 = helper(991),var(5)=0
Value=370

[State -1, Air Strong Attack]
Type=ChangeState
TriggerAll = (var(59)=0) || (random<var(55)*1.5)
Triggerall= (ctrl) || (StateNo=14001)
Triggerall=StateType=A
Triggerall=name!="Eriol Hiiragizawa"
Trigger1=command="x"
Trigger1=var(59)=0
Trigger1=fvar(22)!=1
Trigger2=var(59)>0
Trigger2=abs(P2BodyDist X)<45
Trigger2=abs(P2Dist Y)<35
Trigger2= P2StateNo = [120,160]
trigger2= (var(44)<20) || (enemy,life<30)
Trigger2 = helper(991),var(5)=0
Trigger3=command="b"
Trigger3=var(59)=0
Trigger3=fvar(22)=1
Value=360

[State -1,P AI Charge]
Type=ChangeState
Triggerall = Helper(7800),var(56)!=0
TriggerAll = (var(59)=0) || (random<var(55)*0.75)
TriggerAll= StateType!=A
Triggerall = !Inguarddist || (NumHelper(4041)>0) || Cond((NumHelper(13651)>0),(abs(Pos X-Helper(13651),Pos X)<25) && (Pos Y>-100),0)
Triggerall= ctrl
triggerall= Power<powermax
Trigger1=var(59)=0
Trigger1=command="y"
Trigger1=fvar(22)!=1
Trigger2=var(59)>0
Trigger2=(abs(P2Dist X)>130) || (P2StateNo=[120,160])
Trigger2=P2MoveType != A
Trigger2=(power<5000) || Cond(var(1)>0,(power<(100*(Helper(7800),var(var(1))/100))),0)
Trigger2=(var(16)>900)
Trigger2=(Life>100) || (var(16)>900)
Trigger2=(NumHelper(12271)=0) || (Power>1000)
Trigger3=var(59)>0
Trigger3=Power<8000
Trigger3=(P2StateNo=12952) || (var(44)>0) || (P2StateNo=[13951,13952])
Trigger4=var(59)>0
Trigger4=StateNo=0
Trigger4=time>160-ceil(var(55)*0.1)
Trigger5=var(59)=0
Trigger5=command="c"
Trigger5=fvar(22)=1
value = 390

[State -1]
Type=ChangeState
Triggerall=var(59)=0
Triggerall=ctrl || (Stateno=[130,156]) || (Stateno=14001)
Triggerall = (var(48)=0) || (var(18)=[1,9000])
triggerall=var(49)<3
Triggerall=StateNo!=[100,115]
Triggerall=roundstate=2
Trigger1=command="FF"
trigger2=command = "holdfwd"
trigger2=command = "holdz"
trigger2 = command!="holddown"
trigger2 = command!="holdback"
trigger2=!(command = "NO")
value=100+10*(Statetype=A)

[State -1]
Type=ChangeState
Triggerall=var(59)=0
Triggerall=(fvar(17)=1) || (Stateno=14001)
Triggerall = (var(48)=0) || (var(18)=[1,9000])
triggerall=var(49)<3
Triggerall=StateNo!=[100,115]
Triggerall=roundstate=2
Trigger1=command="BB"
trigger2=command = "holdback"
trigger2=command = "holdz"
trigger2 = command!="holddown"
trigger2 = command!="holdfwd"
trigger2=!(command = "NO")
value=105+10*(Statetype=A)
