[Statedef -3]

[State -2]
type = VarSet
trigger1 = var(49)>0
trigger1 = Pos Y = 0
trigger2 = var(17)=1
var(49) = 0
ignorehitpause=1

;--------------------------------
; Post grazing restrictions counter
[State -3]
Type=Varset
Trigger1=Stateno=100
Trigger2=Stateno=105
Trigger3=Stateno=110
Trigger4=Stateno=115
var(48)=10

[State -3]
Type=Assertspecial
Trigger1=var(48)>0
flag=noairguard
flag2=nostandguard
flag3=nocrouchguard
ignorehitpause=1

[State -3]
Type=Varadd
Trigger1=var(48)>0
var(48)=-1
ignorehitpause=1

[State -3, Autoturn]
Type=Turn
Triggerall=P2Dist X<0
Trigger1=StateNo=[120,160]
Trigger2=var(59)>0
Trigger2=stateno=[0,52]
Trigger3=Stateno=52
ignorehitpause=1

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State -1, AI ON]
Type = VarSet
TriggerAll = Var(59) < 1
TriggerAll = RoundState=2
Trigger1  = AILevel>0
v = 59
value= 2
Ignorehitpause=1

[State -1, AI OFF]
Type=VarSet
Trigger1=var(59)>0
Trigger1=RoundState!=2
Trigger3=AILevel=0
v=59
value=0
Ignorehitpause=1

[State -3, AI Level Set]
Type=VarSet
Trigger1=1
var(55)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*25+(AILevel=5)*36+(AILevel=6)*51+(AILevel=7)*77+(AILevel=8)*120

[State -3, AI Level Set]
Type=VarSet
Trigger1=name="Sakura Kinomoto"
Trigger2=name="Eriol Hiiragizawa"
;Trigger3=name="Void"
var(55)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*12+(AILevel=4)*18+(AILevel=5)*25+(AILevel=6)*35+(AILevel=7)*50+(AILevel=8)*75

[State -3, AI Level Set]
Type=VarSet
Trigger1=name="Void"
var(55)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*12+(AILevel=4)*25+(AILevel=5)*36+(AILevel=6)*51+(AILevel=7)*77+(AILevel=8)*120

[State -2]
type = AfterImage
Triggerall=var(13)=0
Triggerall=var(23)>10000
trigger1 = time<2
trigger2 = var(23)=10720
time = var(23)-10000
FrameGap = 1
length = 12
PalContrast = 255,0,0
PalBright = 255,0,0
TimeGap = 2
PalColor = 0
Trans = add
persistent = 0
ignorehitpause=1

[State -3, Air magic attack position fix]
Type=PosSet
Trigger1=Stateno=[500,550]
Trigger1=StateType=S
Trigger1=Pos Y>0
Y=0

[State -3]
Type=PowerAdd
Trigger1=(var(24)>0) || Cond(Numhelper(4141)>0,(Helper(4141),stateno!=5150),0)
Trigger1=Power>var(47)
Trigger1=Stateno!=390
value=-ceil((power-var(47))*(1-((1-0.9*(var(24)>0))*(1-0.5*Cond(Numhelper(4141)>0,(Helper(4141),stateno!=5150),0)))))
ignorehitpause=1

[State -3]
Type=VarSet
Trigger1=1
var(47)=power
ignorehitpause=1

[State 12017]
Type=Explod
Trigger1=var(24)>0
bindtime=1
removetime=-2
sprpriority=8
anim=21001+(random %2)*100
Pos=random %61-30,-(random % const(size.head.pos.y))
PosType=P1
ownpal=1
scale=0.5,0.5
ID=12450
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12017]
Type=Explod
Trigger1=NumHelper(13211)>0
bindtime=1
removetime=-2
sprpriority=8
anim=21003+(random %2)*100
Pos=random %61-30,-(random % const(size.head.pos.y))
PosType=P1
ownpal=1
scale=0.5,0.5
ID=12450
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12017]
Type=Explod
Trigger1=var(25)>0
bindtime=1
removetime=-2
sprpriority=8
anim=21004+(random %2)*100
Pos=random %61-30,-(random % const(size.head.pos.y))
PosType=P1
ownpal=1
scale=0.5,0.5
ID=12450
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12017]
Type=Explod
Trigger1=IsHelper(4141)
Trigger1=StateNo!=5150
Trigger1=RoundState=2
bindtime=1
removetime=-2
sprpriority=8
anim=21002+(random %2)*100
Pos=random %61-30,-(random % const(size.head.pos.y))
PosType=P1
ownpal=1
scale=0.5,0.5
ID=4141
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12017]
Type=Explod
Trigger1=NumHelper(13651)>0                ; Safety Wall in effect
Trigger1=abs(Pos X-Helper(13651),Pos X)<25
Trigger1=Pos Y>-100
bindtime=1
removetime=-2
sprpriority=8
anim=21002+(random %2)*100
Pos=random %61-30,-(random % const(size.head.pos.y))
PosType=P1
ownpal=1
scale=0.5,0.5
ID=4141
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State -3]
Type=AssertSpecial
Trigger1=NumHelper(13651)>0                ; Safety Wall in effect
Trigger1=abs(Pos X-Helper(13651),Pos X)<25
Trigger1=Pos Y>-100
Trigger1=var(59)>0
Trigger2=IsHelper(4141)
flag=NoWalk

[State -3]
Type=VarSet
Trigger1=1
v=45
value=GameTime
ignorehitpause=1

[State -2] ; Float
Type=PosSet
Trigger1=StateType=S
Trigger1=Pos Y>-20
Trigger1=var(22)=[1,9000]
Y=-20
ignorehitpause=1

[State -2] ; Float
Type=PosAdd
Triggerall=var(22)=[1,9000]
Triggerall=Pos Y=[-25,-20]
Triggerall=StateType=S
Trigger1=GameTime % 34=0
Trigger2=GameTime % 34=4
Trigger3=GameTime % 34=7
Trigger4=GameTime % 34=11
Y=-1

[State -2] ; Float
Type=PosAdd
Triggerall=var(22)=[1,9000]
Triggerall=Pos Y=[-25,-20]
Triggerall=StateType=S
Trigger1=GameTime % 34=17
Trigger2=GameTime % 34=21
Trigger3=GameTime % 34=24
Trigger4=GameTime % 34=28
Y=1

[State -3]
Type=VelSet
Trigger1=var(17)=1
Trigger1=StateNo=[500,599]
Trigger1=StateType=A
Trigger1=(name!="Sakura Kinomoto") || (Stateno!=[540,549])
X=0
Y=0

[State 7703]
Type=Explod
Trigger1=time=1
Trigger1=var(17)=1
Trigger1=(StateNo=[500,599])
Trigger1=StateType=A
Trigger1=(name!="Sakura Kinomoto") || (Stateno!=[540,549])
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

[State 7703]
Type=Explod
Trigger1=time %20=1
Trigger1=var(17)=1
Trigger1=(StateNo=[120,155])
Trigger1=StateType=A
Trigger1=NumExplod(10760)=0
anim=10760
ID = 10760
Postype=P1
pos= 0,const(size.mid.pos.y)
bindtime=-1
vel=0,0
sprpriority=-1
ownpal=1
scale= 1,1
Ignorehitpause=1
Pausemovetime=9999

[State -2]
Type=Explod
Trigger1=var(17)=1
Trigger1=StateNo=[500,599]
Trigger1=StateType=A
Trigger1=(name!="Sakura Kinomoto") || (Stateno!=[540,549])
ID=14000
anim=4800+random %4
bindtime=1
removetime=30
postype=p1
pos=0,const(size.mid.pos.y)
vel=-1,0
accel=-0.1*(random %7),0.1*(random %7-3)
pausemovetime=9999999
scale=0.3,0.3
sprpriority=-2
ownpal=1
ignorehitpause=1
trans=add

[State -2]
Type=Explod
Trigger1=var(22)=[1,9000]
Trigger1=var(13)=0
Trigger1=GameTime %15=0
Trigger1=stateNo!=14001
Trigger1=StateNo!=13551
Trigger1=StateNo!=13861
Trigger1=Stateno!=[5000,5999]
ID=12100
anim=10770
bindtime=-1
postype=p1
pos=0,0
pausemovetime=9999999
scale=0.7,0.7
sprpriority=-1
ownpal=1
ignorehitpause=1
trans=add

; Grazing
[State 130]
Type = Helper
Triggerall = NumHelper(162)=0
Triggerall = NumHelper(4041)=0
Trigger1 = Stateno=[100,119]
Trigger2 = name="Sakura Kinomoto"
Trigger2 = StateNo=530
StateNo = 162
ID = 162
Name = "GrazeEffect"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
supermovetime=99999
pausemovetime=99999

; State Changing

[State -3]
Type=ChangeState
Triggerall=Pos Y<-10
triggerall=(StateNo<100) || (StateNo=5200) || (StateNo=5210)
Triggerall=var(17)=1
triggerall=roundstate=2
triggerall=StateNo!=[120,160]
triggerall=StateNo!=[14001,14002]
Trigger1=var(22)!=[1,9000]
Trigger2=Pos Y<-30
Value=14001
ctrl=0

[State -3]
Type=ChangeState
Trigger1=(!IsHelper) || Ishelper(4141)
Trigger1=StateType=S
Trigger1=Pos Y<=-20
Trigger1=var(22)!=[1,9000]
Trigger1=StateNo<12000
value=50
ctrl=1

[Statedef -2]

[State -2]
Type=displaytoclipboard
Trigger1=1
text="Created by Seravy    http://seravy.tk"

[State -2]
Type=Removeexplod
Trigger1=stateno!=320
ID=320
ignorehitpause=1

[State -2]
Type=Removeexplod
Trigger1=stateno!=360
ID=360
ignorehitpause=1

[State 12871]
Type=AssertSpecial
Trigger1=NumHelper(13001)>0
flag=NoMusic

[State -3]
Type=VarSet
Trigger1=GameTime>var(45)+10
v=46
value=95
ignorehitpause=1

[State -2]
Type=Assertspecial
Trigger1=NumHelper(13211)>0		   ; Sandstone Skin in effect
Trigger1=ID=Helper(13211),var(29)
flag=Nostandguard
flag2=Noairguard
flag3=Nocrouchguard
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(46)>0
v=46
value=-1
ignorehitpause=1

[State -2,Intro]
Type= Helper
trigger1 = numhelper(190)=0
trigger1 = roundstate=1
trigger1 = roundno=1
trigger1 = command="start"
trigger1 = var(59)=0
HelperType=normal
Name="Intro"
ID=190
StateNo=192
PosType=Back
pos=60+30*(Teamside=2),-120
keyctrl=0
pausemovetime=999999
supermovetime=999999
facing=1-2*(teamside=2)

;****** Nothitby section *******

[State -2,008]
Type=NotHitBy				; float card
Trigger1=var(22)=[1,9000]
Value=C
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=IsHelper(13151)                   ; Is Shadow
Trigger2=IsHelper(12501)                   ; Is Twin
Trigger3=IsHelper(14250)                   ; Is Dream
Trigger4=NumHelper(13651)>0                ; Safety Wall in effect
Trigger4=abs(Pos X-Helper(13651),Pos X)<25
Trigger4=Pos Y>-100
Trigger5=var(37)>0			   ; Dream is using Overrule spell.
Trigger6=Life<1
Trigger7=NumHelper(13211)>0		   ; Sandstone Skin in effect
Trigger7=ID=Helper(13211),var(29)
Trigger8=NumHelper(4041)>0
Trigger8=!ishelper
Trigger9=Stateno=396
Trigger10=StateNo=12110			   ; Deep Ocean
Trigger11=StateNo=12210			   ; Shining Light
Trigger12=StateNo=12260			   ; Engulfing Darkness
Trigger13=StateNo=12300			   ; Final Ray of Light
;Trigger13=!(enemy,name="Seravy") || !(enemy,authorname="Seravy")
Trigger14=StateNo=12310			   ; Healing Rainbow
Trigger15=StateNo=12800			   ; Cyclonic Conductor
Trigger16=StateNo=13250			   ; Grand Returner
Value=SAC
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=NumHelper(13161)			; Twilight Shield
Value2=,NA
ignorehitpause=1

[State -2]
Type=NotHitBy
Trigger1=var(23)>10000			; fight card
Value2=,NA,NT
ignorehitpause=1

[State 14001]				   ;Cloud
Type=NotHitBy
Trigger1=var(41)>0
Value2= ,NP,NT
ignorehitpause=1

[State 14001]				   ;Cloud
Type=NotHitBy
Trigger1=var(41)>0
Trigger1=var(23)>10000			; fight and cloud card
Value2= ,NA,NP,NT
ignorehitpause=1

;*********************************

[State -2]
Type=VarSet
Trigger1=roundstate<2
trigger1=roundno=1
v=58
value=0
ignorehitpause=1

[State -2,001]
Type=VarSet
Trigger1=NumHelper(13111)>0
Trigger1=roundstate>=2
v=58
value=var(58) | 1
ignorehitpause=1

[State -2,001]
Type=VarSet
Trigger1=NumHelper(13451)>0
Trigger1=roundstate>=2
v=58
value=var(58) | 2
ignorehitpause=1

[State -2,001]
Type=Null;VarSet
Trigger1=NumHelper(13451)=0
Trigger1=roundstate=2
Trigger1=var(58)=[2,3]
v=58
value=var(58)-2
ignorehitpause=1

[State 591]
trigger1 = !Ishelper
trigger1 = roundno!=1
trigger1 = roundstate<=2
trigger1 = var(58) & 1=1
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

[State 450]
Type = Helper
trigger1 = !Ishelper
trigger1 = roundno!=1
trigger1 = roundstate<=2
trigger1 = var(58) = [2,3]
trigger1 = NumHelper(13451)=0
StateNo = 13451
ID = 13451
Name = "Mist"
Pos = 0,100
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 0.7
Size.YScale = 0.7
;Pausemovetime=999999
;supermovetime=999999

[State -2,002]
Type=VarAdd
Trigger1=var(44)>0
v=44
value=-1
ignorehitpause=1

[State -2,003]
Type=VarSet
Triggerall=var(44)=[1,239]
Trigger1=Stateno=[5000,5210]
Trigger2=enemy,Stateno=[5000,5120]
Trigger3=numenemy>1
Trigger3=enemy(1),Stateno=[5000,5120]
Trigger4=MoveType=H
Trigger4=StateNo>=12000
Trigger5=StateNo=13551
Trigger6=P2Stateno=[5000,5210]
v=44
value=999
ignorehitpause=1

[State -2,004]
Type=Pause
Trigger1=var(44)=999
time=1
movetime=0
ignorehitpause=1

[State -2,005]
Type=BgPalFX
Trigger1=var(44)=999
add=-50,-90,-130
time=1
ignorehitpause=1

[State -2,Sand]
Type=PalFX
Trigger1=Numhelper(13211)>0
Trigger1=Helper(13211),var(29)=ID
Trigger1=StateNo!=13551
add=30,20,-100
time=1
ignorehitpause=1

[State -2,006]
Type=VarSet
Trigger1=var(44)=999
v=44
value=0
ignorehitpause=1

[State -2,010]
TYpe=VarSet
Trigger1=var(37)>0
v=37
Value=0
ignorehitpause=1

;
; Defense Apply
;

[State -2,011]
Type=VarAdd
Trigger1=life<var(36)
fv=15
value=(var(36)-life)*fvar(14)
ignorehitpause=1

[State -2,012]
Type=LifeAdd
Trigger1=life>1
Trigger1=abs(fvar(15))>=1
Trigger1=!Ishelper(4141)
value=floor(fvar(15))
absolute=1
ignorehitpause=1

[State -2,013]
Type=VarSet
Trigger1=1
fv=15
value=fvar(15)-floor(fvar(15))
ignorehitpause=1

;
; Void Absorption effect
;

[State -2]
Type=VarSet
Trigger1=var(35)>0
Trigger1=enemy,name="Seravy"
Trigger1=enemy,authorname="Seravy"
Trigger1=stateno=1699 || stateno=14699
Trigger1=enemy,numhelper(1692)>0 || enemy,numhelper(14602)>0
v=35
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(35)>0
v=35
value=1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(35)>180
Trigger2=Life=LifeMax
v=35
value=0
ignorehitpause=1

[State -2]
Type=VarSet
Triggerall=var(35)>120
Trigger1=MoveType=H				; Getting hit
Trigger2=Var(36)>life			; or taking damage
Trigger3=var(45)<Gametime		; or being in the opponent's state
v=35
value=120						; will prevent negative existence from ending
ignorehitpause=1

[State -2]
Type=LifeSet
Trigger1=RoundState=2
Trigger1=var(35)>0
Trigger1=Life=0
value=1
ignorehitpause=1

[State -2]
Type=LifeAdd
Trigger1=RoundState=2
Trigger1=var(35)>0
value=2*(var(36)-life)
ignorehitpause=1
absolute=1

[State -2,014]
Type=VarSet
Trigger1=1
v=36
value=Life
ignorehitpause=1

[State -2,015]
Type=VarSet
Trigger1=1
fv=14
value=(1-0.2*(NumHelper(13111)>0))*(1-0.3*(StateNo=[14550,14559]))*(1-0.7*(StateNo=12161))
ignorehitpause=1

[State -2,015]
Type=VarSet
Trigger1=1
fv=14
value=1-fvar(14)*(1+0.08*(Name="Void")-0.1*(Name="Yue")+0.05*(Name="Eriol Hiiragizawa"))*(1-0.95*(name="Yue")*(Stateno=587))
ignorehitpause=1

;
; Damage Dampening
;

[State 501]
Type=varset
Trigger1=projhittime(511)=0
Trigger1=name="Sakura Kinomoto"
fvar(39)=fvar(39)*0.95
ignorehitpause=1

[State 501]
Type=varset
Triggerall=name="Shaoran Lee"
Trigger1=projhittime(500)=0
Trigger2=projhittime(510)=0
Trigger3=projhittime(520)=0
Trigger4=projhittime(540)=0
fvar(39)=fvar(39)*0.8
ignorehitpause=1

[State 501]
Type=varset
Triggerall=name="Yue"
Trigger1=projhittime(510)=0
fvar(39)=fvar(39)*0.81
ignorehitpause=1

[State 501]
Type=varset
Triggerall=name="Yue"
Trigger1=projhittime(500)=0
fvar(39)=fvar(39)*0.96
ignorehitpause=1

[State 501]
Type=varset
Triggerall=name="Yue"
Trigger1=projhittime(560)=0
fvar(39)=fvar(39)*0.8
ignorehitpause=1

[State 501]
Type=varset
Triggerall=name="Void"
Trigger1=projhittime(521)=0
Trigger2=projhittime(551)=0
fvar(39)=fvar(39)*0.8
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12002)=0
fvar(39)=fvar(39)*0.98
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12062)=0
fvar(39)=fvar(39)*0.99
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12112)=0
fvar(39)=fvar(39)*0.994
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12171)=0
fvar(39)=fvar(39)*0.92
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12201)=0
fvar(39)=fvar(39)*0.95
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(13962)=0
fvar(39)=fvar(39)*0.82
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12212)=0
fvar(39)=fvar(39)*0.95
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12251)=0
fvar(39)=fvar(39)*0.94
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12612)=0
fvar(39)=fvar(39)*0.94
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12700)=0
fvar(39)=fvar(39)*0.65
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12711)=0
fvar(39)=fvar(39)*0.8
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12800)=0
fvar(39)=fvar(39)*0.9
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(12802)=0
fvar(39)=fvar(39)*0.91
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(13161)=0
fvar(39)=fvar(39)*0.84
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(13301)=0
fvar(39)=fvar(39)*0.96
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(13311)=0
fvar(39)=fvar(39)*0.99
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(14352)=0
fvar(39)=fvar(39)*0.93
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(14502)=0
fvar(39)=fvar(39)*0.95
ignorehitpause=1

[State 501]
Type=varset
Trigger1=projhittime(14602)=0
fvar(39)=fvar(39)*0.86
ignorehitpause=1

;
; Lifegain from The Dark
;
[State -2]
Type=LifeAdd
Triggerall=roundstate=2
Triggerall=projhittime(12251)=0
Trigger1=(StateNo=[12250,12259])
Trigger2=Cond(NumHelper(4141),(Helper(4141),StateNo=[12250,12259]),0)
Trigger3=Cond(NumHelper(14250),(Helper(14250),StateNo=[12250,12259]),0)
Trigger4=Cond(NumHelper(12501),(Helper(12501),StateNo=[12250,12259]),0)
value=floor(18*fvar(39))
absolute=1

; Dampening reset
[State -2]
Type=VarSet
Triggerall=P2stateno!=13705
Trigger1=Roundstate<2
Trigger2=P2Stateno=[120,160]
Trigger3=enemynear,ctrl
Trigger4=P2StateType!=A
Trigger4=P2MoveType!=H
fvar(39)=1
ignorehitpause=1

[State 13360]
Type=PalFX
Trigger1=var(35)>0
Trigger1=StateNo!=13551
add= -160-random%60,-160-random%60,-160-random%60
time=1
ignorehitpause=1

[State -2, AttackTable Init]
Type=Helper
Trigger1=NumHelper(7800)<1
Trigger1=!Ishelper
StateNo = 7800
ID = 7800
Name = "AttackTable"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
SuperMoveTime=9999999

[State -2]				; Decrease time effect remaining
Type=VarAdd
Triggerall=MoveType!=H
triggerall=enemy,movetype!=H
triggerall=P2movetype!=H
triggerall=Stateno!=390
Trigger1=var(33)>0
v=33
Value=-1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(39)<10000
Trigger2=var(39)=[13951,13952]
Trigger2=P2StateNo!=[13951,13952]
Trigger2=P2StateNo!=43816
;Trigger2=NumHelper(6867)>0
Trigger3=P2StateNo!=[13551,13559]
Trigger3=var(39)=[13552,13558]
Trigger3=P2StateNo!=43816
Trigger3=enemy(0),time>0
Trigger3=Cond(Numenemy>1,enemy(1),time>0,1)
Trigger4=P2StateNo!=13205
Trigger4=var(39)=13205
Trigger4=P2StateNo!=43816
Trigger4=enemy(0),time>0
Trigger4=Cond(Numenemy>1,enemy(1),time>0,1)
var(39)=43816
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=P2StateNo=[13951,13952]
var(39)=13952
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=P2StateNo=13205
var(39)=13205
ignorehitpause=1

[State -1]
Type=AssertSpecial
Trigger1=IsHelper(13211)
flag=invisible
flag2=noshadow
ignorehitpause=1

[State -2]				;Activate Counter-Time if time was used against Yue
Type=Pause
Triggerall=var(44)=0
Triggerall=Movetype!=H
Trigger1=enemy,authorname="Seravy"
Trigger1=!enemy,name="Yue"
Trigger1=enemy,stateno=12570
time=240
movetime=240
ignorehitpause=1

[State -2]				;Set Chronofreeze Timer if time was used against Yue
Type=VarSet
Triggerall=Movetype!=H
Trigger1=enemy,authorname="Seravy"
Trigger1=!enemy,name="Yue"
Trigger1=enemy,stateno=12570
v=44
value=240
ignorehitpause=1

[State -2]
Type=RemoveExplod
trigger1=StateNo!=[14250,14259]
ID=10700
ignorehitpause=1

[State -2]
Type=RemoveExplod
trigger1=StateNo!=[14250,14259]
ID=10701
ignorehitpause=1

[State -2]
Type=RemoveExplod
trigger1=StateNo!=[12850,12859]
ID=10670
ignorehitpause=1

[State -2]
Type=RemoveExplod
trigger1=StateNo!=12860
ID=10680
ignorehitpause=1

[State -2]
Type=AngleDraw
Trigger1=StateNo=[14553,14555]
Trigger2=StateNo=14551
scale=2,2
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=P2StateType=A
Trigger2=P2StateNo=13951
Trigger3=P2StateNo=13205
Trigger4=Enemy(0),GetHitvar(chainID) = 13053
Trigger5=NumEnemy>1
Trigger5=Enemy(1),GetHitvar(chainID) = 13053
v=27
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=abs(enemy,vel X)<1
Trigger1=abs(enemy,vel y)<1
v=27
value=1
ignorehitpause=1

[State -2]
Type=VarAdd
Triggerall=gametime %3=1
Trigger1=abs(enemy,vel X)>1
v=27
value=-ceil(abs(enemy, vel x))
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(41)>0
v=41
value=-1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=StateType=A
Trigger2=StateNo=13951
Trigger3=StateNo=13205
v=28
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=abs(vel X)<1
Trigger1=abs(vel y)<1
v=28
value=1
ignorehitpause=1

[State -2]
Type=AssertSpecial
Trigger1=var(57)=2
flag=NoBG
flag2=NoFG
ignorehitpause=1

[State -2]
Type=VarAdd
Triggerall=time %3=1
Trigger1=abs(vel X)>1
v=28
value=-ceil(abs(vel x))
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=Statetype=A
Trigger1=Pos Y<-50
v=43
value=1+(Pos Y<-100)+(Pos Y<-150)
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=Statetype!=A
v=43
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=enemy,Statetype=A
Trigger1=enemy,Pos Y<-50
v=42
value=1+(enemy,Pos Y<-100)+(enemy,Pos Y<-150)
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=enemy,Statetype!=A
v=42
value=0
ignorehitpause=1

[State -2]
Type=MakeDust
Trigger1=NumHelper(13201)>0
Trigger1=Pos Y=[-10,10]
Trigger1=(abs(vel X)>2) ||(abs(vel Y)>2)
Pos=0,0
ignorehitpause=1

[State -2]
Type=MakeDust
Trigger1=NumHelper(13201)>0
Trigger1=Enemy,Pos Y=[-10,10]
Trigger1=(abs(enemy,vel X)>2) ||(abs(enemy,vel Y)>2)
Pos=floor(enemy,Pos X- Pos x),floor(enemy,pos Y- Pos Y)
ignorehitpause=1

[State -2]
Type=Removeexplod
Trigger1=Stateno!=[300,370]
ID=333
ignorehitpause=1

[State -2]
Type=AssertSpecial
Trigger1=NumHelper(13750)>0
Trigger2=var(35)>0
Trigger2=P2Life>0
Trigger3=NumHelper(14071)>0
Trigger3=P2Life>0
flag=noko
ignorehitpause=1

[State -2]
Type=AssertSpecial
Trigger1=!IsHelper
Trigger1=Name="Eriol Hiiragizawa"
Trigger1=var(22)=0
flag=NoAirGuard
ignorehitpause=1

[State -2]
type = AfterImage
Triggerall=var(13)=0
Triggerall=var(23)=[1,9000]
trigger1 = time<2
trigger2 = var(23)=720
time = var(23)
FrameGap = 1
length = 12
PalContrast = 255,0,0
PalBright = 255,0,0
TimeGap = 2
PalColor = 255
paladd = -15,0,0
palmul=1,1,1
persistent = 0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(22)>0
v=22
Value=-1
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(23)>0
v=23
Value=-1-(var(23)<9999)*(StateNo=[300,370])
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(23)=[9001,9999]
v=23
Value=0
ignorehitpause=1

[State -2]
Type=PosAdd
Trigger1=var(23)>10000
X=random % 3-1

[State -2]
Type=LifeAdd
;Trigger1=!IsHelper
Trigger1=var(20)!=0
;Trigger1=NumHelper(4041)=0
value=-floor(var(20)*(1-fvar(14)))
ignorehitpause=1

[State -2]
Type=VarSet
;Trigger1=!IsHelper
Trigger1=var(20)!=0
v=20
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(18)>0
v=18
Value=-1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(18)=[9000,10000]
v=18
Value=0
ignorehitpause=1

[State -2]
Type=PosAdd
Trigger1=var(18)=[1,8999]
Trigger1=Stateno=20 || Stateno=[100,119]
X=Vel X

[State -2]
Type=VarAdd
Trigger1=var(24)>0
v=24
value=-1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(24)>0
v=16
value=0
ignorehitpause=1

[State -2]
Type=VarSet ; use 1000,1999 for other characters
Trigger1=StateNo=[500,599]
var(3)=0

[State -2]
Type=VarAdd
Trigger1=1
var(3)=1

[State -2]
Type=VarAdd
Triggerall=var(16)>0
Triggerall=StateNo!=12007
Trigger1=var(3)>=30
v=16
value=-4
ignorehitpause=1

[State -2]
Type=PlaySnd
Trigger1=var(16)=[1500,5000]
value=S19999,0
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(16)=[1500,5000]
v=16
value=0
ignorehitpause=1

[State -2]
Type=PlaySnd
Trigger1=var(16)=[1001,1499]
value=S19998,0
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(16)=[1001,1499]
Trigger2=var(16)>6250
v=16
value=6250
ignorehitpause=1

[State -2]
Type=Assertspecial
Trigger1=var(13)>0
flag=invisible
ignorehitpause=1

[State -2]
Type=varadd
trigger1=var(13)>0
v=13
value=-1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(14)=0
Trigger2=var(14)>P2Life
v=14
value=P2Life
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(15)=0
Trigger2=var(15)>enemy,power
v=15
value=enemy,power
ignorehitpause=1

[State -1]
Type=PalFX
Trigger1=!IsHelper
Trigger1=var(24)>0
Trigger1=StateNo!=13551
add=50+floor(1.5*IfElse(GameTime%60<30,GameTime %60,60-GameTime %60)),0,30+IfElse(GameTime%60<30,GameTime %60,60-GameTime %60)
mul=256,256,256
time=1
IgnoreHitPause=1

[State -2]
Type=VarAdd
Trigger1=var(25)>0
V=25
Value=-1
Ignorehitpause=1

[State -1]
Type=PalFX
Trigger1=!IsHelper
Trigger1=var(25)>0
Trigger1=StateNo!=13551
add=50+2*IfElse(GameTime%60<30,GameTime %60,60-GameTime %60),-10,-10
mul=256,256,256
time=1
IgnoreHitPause=1

[State -1]
Type=PalFX
Trigger1=!IsHelper
Trigger1= NumHelper(12501)>0
Trigger1=StateNo!=13551
add=50,-50,-50
mul=256,256,256
time=1
IgnoreHitPause=1

[State -2]
Type=RemoveExplod
Trigger1=NumHelper(13151)<1
ID=13155
ignorehitpause=1

[State -2]
Type=Assertspecial
Trigger1=NumHelper(13151)>0
Trigger1=!IsHelper
flag=Noshadow
Ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=var(4)>0
v=4
value=1
ignorehitpause = 1

[State -2]
Type=VarSet
Trigger1=var(4)>300
Trigger1=P2StateNo !=[13700,13709]
v=39
value=43816
ignorehitpause = 1

[State -2]
Type=VarSet
Trigger1=var(4)>300
Trigger1=P2StateNo !=[13700,13709]
v=4
value=0
ignorehitpause = 1

[State -2,Time Effect Small]
Type = Pause
Trigger1 = !IsHelper
Trigger1 = gametime%4 = 0
Trigger1 = RoundState = 2
Trigger1 = NumHelper(29001)>0
Trigger1 = MoveType != H
Trigger1 = P2movetype !=H
Trigger1 = Stateno != 390
time = 2
movetime =2
ignorehitpause = 1
endcmdbuftime=2

[State -2,Time Effect Big]
Type = Pause
Trigger1 = !IsHelper
Trigger1 = gametime%6 = 0
Trigger1 = RoundState = 2
Trigger1 = NumHelper(29000)>0
Trigger1 = MoveType != H
Trigger1 = P2movetype !=H
Trigger1 = Stateno != 390
time = 4
movetime =4
ignorehitpause = 1
endcmdbuftime=4

[State -2]
Type=Varset
Triggerall = !IsHelper
Trigger1 = var(8)<life
Trigger1 = Life>0
v=8
value = life
IgnoreHitPause=1

[State -2]
Type= VarSet
Triggerall = !IsHelper
Trigger1 = life<var(8)
v = 7
value=0
ignorehitpause=1

[State -2]
Type= VarAdd
Triggerall = !IsHelper
Trigger1=1
v = 7
value=1
ignorehitpause=1

[State -2]
Type= PlaySnd
Triggerall = !IsHelper
Trigger1= var(7)=2000
Trigger1= Numhelper(7800)>0
Trigger1= Helper(7800),var(59)=1
Trigger1= Life>0
value=9900,0

[State -2]
Type= VarAdd
Triggerall = !IsHelper
Trigger1 = life<var(8)
Trigger1 = life>=var(8)-400
v = 8
value = -1
IgnoreHitPause=1

[State -2]
Type= Null;LifeSet
Triggerall = !IsHelper
triggerall = !(enemy,authorname ="Seravy")
Trigger1 = NumHelper(7800)>0
Trigger1 = Helper(7800),var(55)=1
Trigger1 = NumHelper(14211)=0
Trigger1 = life<var(8)-400
value = var(8)-400
IgnoreHitPause=1
pausemovetime = 99
supermovetime = 99

[State -2]
Type= Null;DefenceMulSet
Triggerall = !IsHelper
triggerall = !(enemy,authorname ="Seravy")
Trigger1 = NumHelper(14211)=0
Trigger1 = NumHelper(7800)>0
Trigger1 = Helper(7800),var(55)=1
Trigger1 = life=var(8)-400
value = 0.0000001
IgnoreHitPause=1
pausemovetime = 99
supermovetime = 99

[State -1]
Type=PlaySnd
Trigger1=var(8)=0
Trigger1=RoundState=2
trigger1=!IsHelper
Trigger1 = NumHelper(7800)>0
Trigger1= Helper(7800),var(59)=1
Trigger1=Life>0
value = 9900,2
IgnoreHitPause=1

[State -2]
Type=VarSet
Trigger1=Roundstate<2
Trigger2=(P2MoveType!=H) || (P2StateNo=[120,160])
Trigger2=P2StateType!=A
fvar(27)=1
ignorehitpause=1

[State -1]
Type=Helper
Triggerall = !IsHelper
Trigger1 = NumHelper(9900)=0
Trigger1 = NumHelper(7800)>0
Trigger1= Helper(7800),var(59)=1
Trigger1= StateNo!=[13551,13559]
StateNo = 9900
ID = 9900
Name = "Tomoyo"
Pos = -40,-5
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=1
Size.yscale=1

[State -2]
Type=Helper
Triggerall = (stateno!=5900) || (time>0)
Triggerall = !IsHelper
Trigger1 = NumHelper(14364)=0
Trigger1= var(57)=1
StateNo = 14364
ID = 14364
Name = "Crater"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.5
Size.yscale=0.5
supermovetime=99999999
pausemovetime=99999999

[State -2]
Type=VarAdd
Trigger1=var(10)>0
v=10
value=-2
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(10)>0
Trigger1=var(11)>10
v=10
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=GetHitVar(damage)=0
Trigger2=MoveType!=H
v=11
value=1

[State -2]
Type=VarSet
Trigger1=MoveType=H
Trigger1=GetHitVar(damage)>0
Trigger1=StateNo!=[120,160]
v=11
value=0
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=MoveType=H
Trigger1=GetHitVar(damage)>0
Trigger1=Var(10)<1
v=5
value=Gametime
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=MoveType=H
Trigger1=GetHitVar(damage)>0
v=10
value=GetHitVar(damage)
ignorehitpause=1

[State -2]
Triggerall = !IsHelper
Type=PlaySnd
Trigger1= (gametime-var(5)) % 60=0
Trigger1= var(10)=[1,50]
Trigger1=StateNo!=[120,160]
value=5000,0
ignorehitpause=1
lowpriority=1
channel=8

[State -2]
Triggerall = !IsHelper
Type=PlaySnd
Trigger1= (gametime-var(5)) % 60=0
Trigger1= var(10)=[51,90]
Trigger1=StateNo!=[120,160]
value=5000,1
ignorehitpause=1
lowpriority=1
channel=8

[State -2]
Triggerall = !IsHelper
Type=PlaySnd
Trigger1= (gametime-var(5)) % 60=0
Trigger1= var(10)>90
Trigger1=StateNo!=[120,160]
value=5000,2
ignorehitpause=1
lowpriority=1
channel=8

[State -2,Deck Init]
Type=Helper
Trigger1=NumHelper(7900)<1
Trigger1=!Ishelper
Trigger1=roundstate=2
StateNo = 7900
ID = 7900
Name = "Deck"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
SuperMoveTime=9999999

[State -2, Clow System Init]
Type=Helper
Trigger1=NumHelper(7700)<1
Trigger1=roundstate=2
Trigger1=!Ishelper
StateNo = 7700
ID = 7700
Name = "ClowSystem"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
SuperMoveTime=9999999

[State -2, Bar System Init]
Type=Helper
Trigger1=NumHelper(7600)<1
Trigger1=roundstate=2
Trigger1=!Ishelper
StateNo = 7600
ID = 7600
Name = "BarSystem"
Pos = 0,0
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
SuperMoveTime=9999999

[State -2]
Type=Helper
Triggerall = !IsHelper
Triggerall = RoundState=2
Trigger1 = NumHelper(991)=0
StateNo = 991
ID = 991
Name = "AI"
Pos = 0, 0
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
PauseMoveTime=9999999
SuperMoveTime=9999999

[State -2]
Type=LifeAdd
Triggerall=Roundstate=2
Trigger1=NumHelper(12851)>0
Trigger1=gametime %4=1
value=1
ignorehitpause=1

[State -2]
Type = Helper
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12718
Trigger1 = Projhittime(12718)=[0,1]
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

[State 6005]
Type = Helper
Trigger1 = !Ishelper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12718
Trigger1 = Projhittime(12718)=[0,1]
StateNo = 6006
ID = 6006
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

[State -2]
Type = Helper
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12717
Trigger1 = Projhittime(12717)=[0,1]
StateNo = 6005
ID = 6005
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
Trigger1 = !Ishelper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12717
Trigger1 = Projhittime(12717)=[0,1]
StateNo = 6005
ID = 6005
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

[State -2]
Type = Helper
Triggerall = !Ishelper
Triggerall = NumEnemy != 0
Triggerall = (Enemy(0),Movetype = H)
Triggerall = (Enemy(0),StateNo != [5100,5150])
Triggerall = (Enemy(0),StateNo != [120,160])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12612
Trigger1 = NumHelper(6015)=0
StateNo = 6015
ID = 6015
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

[State 6005]
Type = Helper
Triggerall = !Ishelper
Triggerall = NumEnemy > 1
Triggerall = (Enemy(1),Movetype = H)
Triggerall = (Enemy(1),StateNo != [5100,5150])
Triggerall = (Enemy(1),StateNo != [120,160])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12612
Trigger1 = NumHelper(6015)<2
StateNo = 6015
ID = 6015
Name = "HitSpark"
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))+random %40-20
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = .5
Size.YScale = .5

[State -2]
Type = Helper
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12000
Trigger1 = NumHelper(12009)<5
Trigger1 = (Enemy(0),StateNo != [120,160])
StateNo = 12009
ID = 12009
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

[State 6005]
Type = Helper
Trigger1 = !Ishelper
Trigger1 = NumEnemy = 2
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = Enemy(1),GetHitvar(chainID) = 12000
Trigger1 = NumHelper(12009)<5
Trigger1 = (Enemy(1),StateNo != [120,160])
StateNo = 12009
ID = 12009
Name = "HitSpark"
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))+random %40-20
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = .5
Size.YScale = .5

[State -2]
Type = Helper
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = Enemy(0),GetHitvar(chainID) = 12221
Trigger1 = NumHelper(12228)<12
Trigger1 = gametime %20=1
Trigger1 = NumHelper(12221)>0
StateNo = 6010
ID = 6011
Name = "LightSpark"
Pos = Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 1
Size.YScale = 1

[State -2]
Type = Helper
Trigger1 = NumHelper(12221)>0
Trigger1 = Movetype = H
Trigger1 = StateNo != [5100,5150]
Trigger1 = GetHitvar(chainID) = 12221
Trigger1 = NumHelper(12228)<12
Trigger1 = gametime %20=1
StateNo = 6010
ID = 6011
Name = "LightSpark"
Pos = 0,const(size.mid.pos.Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
Size.XScale = 1
Size.YScale = 1

[State -2]
Type = Explod
Trigger1 = Name!="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),GetHitvar(chainID) = 14550)
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = (Enemy(0),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6

[State -2]
Type = Explod
Trigger1 = Name!="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),GetHitvar(chainID) = 14551)
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = (Enemy(0),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6

[State -2]
Type = Explod
Trigger1 = Name!="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),GetHitvar(chainID) = 14550)
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = (Enemy(1),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Head.Pos.Y))+random %40
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6

[State -2]
Type = Explod
Trigger1 = Name!="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),GetHitvar(chainID) = 14551)
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = (Enemy(1),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Head.Pos.Y))+random %40
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6

;z

[State -2]
Type = Explod
Trigger1 = Name="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),GetHitvar(chainID) = 14550)
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = (Enemy(0),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6
trans=sub

[State -2]
Type = Explod
Trigger1 = Name="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),GetHitvar(chainID) = 14551)
Trigger1 = (Enemy(0),StateNo != [120,160])
Trigger1 = (Enemy(0),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6
trans=sub

[State -2]
Type = Explod
Trigger1 = Name="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),GetHitvar(chainID) = 14550)
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = (Enemy(1),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Head.Pos.Y))+random %40
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6
trans=sub

[State -2]
Type = Explod
Trigger1 = Name="Void"
Trigger1 = !Ishelper
Trigger1 = NumEnemy > 1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),GetHitvar(chainID) = 14551)
Trigger1 = (Enemy(1),StateNo != [120,160])
Trigger1 = (Enemy(1),time=0)
Trigger1 = Roundstate=2
anim= 20005
ID = 14550
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Head.Pos.Y))+random %40
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100
scale = 0.6,0.6
trans=sub

[State -2]
Type = Explod
Trigger1 = !Ishelper
Trigger1 = NumEnemy != 0
Trigger1 = (Enemy(0),Movetype = H)
Trigger1 = (Enemy(0),StateNo != [5100,5150])
Trigger1 = (Enemy(0),GetHitvar(chainID) = [14550,14551])
Trigger1 = (Enemy(0),StateNo = [120,160])
Trigger1 = (Enemy(0),time=0)
Trigger1 = Roundstate=2
anim = 4040
ID = 6011
Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Head.Pos.Y))+random %40-20
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State -2]
Type = Explod
Trigger1 = !Ishelper
Trigger1 = NumEnemy >1
Trigger1 = (Enemy(1),Movetype = H)
Trigger1 = (Enemy(1),StateNo != [5100,5150])
Trigger1 = (Enemy(1),GetHitvar(chainID) = [14550,14551])
Trigger1 = (Enemy(1),StateNo = [120,160])
Trigger1 = (Enemy(1),time=0)
Trigger1 = Roundstate=2
anim = 4040
ID = 6011
Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Head.Pos.Y))+random %40-20
Sprpriority=2
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 100
PauseMoveTime = 100

[State -2]
Type=Explod
Triggerall=NumExplod(13600)=0
Trigger1=var(12)=1
ID=13600
anim=13600
bindtime=-1
removetime=-1
postype=left
pos=20,200
pausemovetime=9999999
scale=0.3,1
sprpriority=99
ownpal=1
ignorehitpause=1
;trans=add

[State -2]
Type=Explod
Triggerall=NumExplod(13601)=0
Trigger1=var(12)=1
ID=13601
anim=13600
facing=-1
bindtime=-1
removetime=-1
postype=left
pos=300,200
pausemovetime=9999999
scale=0.3,1
sprpriority=99
ownpal=1
ignorehitpause=1

[State -1]
Type=PosSet
Trigger1=Screenpos X<20
Trigger1=var(12)=1
Trigger1=(StateNo<12000) || (Stateno=14001)
X=Pos X+280

[State -1]
Type=PosSet
Trigger1=Screenpos X>300
Trigger1=var(12)=1
Trigger1=(StateNo<12000) || (Stateno=14001)
X=Pos X-280

[State -1]
Type=screenbound
Trigger1=1
Value=1-var(12)*((StateNo<12000) || (StateNo=14001))
Movecamera=1-var(12)*((StateNo<12000) || (StateNo=14001)),1

; State changing

[State -2, Libra card delay loss]
Type=SelfState
Trigger1=!IsHelper
Trigger1=life=0
Trigger1=NumHelper(13750)>0
Trigger1=StateNo!=13758
value=13758
ignorehitpause=1
ctrl=0

[State -2, Flower card resurrection]
Type=SelfState
Trigger1=!IsHelper
Trigger1=life=0
Trigger1=NumHelper(14071)>0
Trigger1=StateNo!=14075
value=14075
ignorehitpause=1
ctrl=0

[State -2] ; Void absorb self card
Type=SelfState
Triggerall=P2StateNo=[12300,12320]
Triggerall=StateNo!=12310
Triggerall=Name="Void"
Triggerall=!IsHelper
Trigger1=P2name="Eriol Hiiragizawa"
Trigger2=P2name="Sakura Kinomoto"
Trigger3=P2name="Yue"
Trigger4=P2name="Shaoran Lee"
Value=12310
ignorehitpause=1
ctrl=0
