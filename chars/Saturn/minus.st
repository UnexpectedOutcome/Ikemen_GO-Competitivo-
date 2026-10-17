[Statedef -3]

[State -3]
Type=VarSet
Trigger1=1
;**********************
var(39)= 65 ; Magic Bar Y positon
;**********************


;--------------------------------
; Post grazing restrictions counter
[State -3]
Type=Varset
Trigger1=Stateno=100
Trigger2=Stateno=105
Trigger3=Stateno=110
Trigger4=Stateno=115
var(15)=10

[State -3]
Type=Assertspecial
Trigger1=var(15)>0
flag=noairguard
flag2=nostandguard
flag3=nocrouchguard
ignorehitpause=1

[State -3]
Type=Varadd
Trigger1=var(15)>0
var(15)=-1
ignorehitpause=1

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State -3, Autoturn]
Type=Turn
Triggerall=P2Dist X<0
Trigger1=StateNo=[120,160]
Trigger2=var(59)>0
Trigger2=stateno=[0,52]
Trigger3=Stateno=52
ignorehitpause=1

[State -1, AI ON]
Type = VarSet
TriggerAll = Var(59) < 1
TriggerAll = RoundState=2
Trigger1  = AILevel>0
v = 59
value= 1
Ignorehitpause=1

[State -1, AI OFF]
Type=VarSet
Trigger1=var(59)>0
Trigger1=RoundState!=2
Trigger2=AILevel=0
v=59
value=0
Ignorehitpause=1

[State -3]
Type=VarSet
Trigger1=!IsHelper
var(50)=(AILevel=1)*2+(AILevel=2)*6+(AILevel=3)*11+(AILevel=4)*18+(AILevel=5)*25+(AILevel=6)*40+(AILevel=7)*65+(AILevel=8)*120

[State -2]
Type = AfterImageTime
Trigger1 = (StateNo=[100,115])
Time = 2

; Grazing
[State 130]
Type = Helper
Triggerall = NumHelper(162)=0
Trigger1 = Stateno=[100,115]
Trigger2 = Stateno=1000
Trigger2 = animelem=3,>=0
Trigger3 = Stateno=2000
Trigger4 = Stateno=2107
Trigger5 = Stateno=2200
Trigger6 = Stateno=[2600,2607]
StateNo = 162
ID = 162
Name = "GrazeEffect"
Pos = 20,-40
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
;supermovetime=99999
pausemovetime=99999

[Statedef -2]

[State -2]
Type=Nothitby
Trigger1=Numhelper(1011)>0
value=,NP,SP
ignorehitpause=1

[State -2]
Type=Varset
Trigger1=projhittime(13901)=0
fvar(39)=fvar(39)*0.2

[State -2]
Type=VarSet
Trigger1=Roundstate<2
Trigger2=P2Stateno=[120,160]
Trigger3=enemynear,ctrl
Trigger4=P2StateType!=A
Trigger4=P2MoveType!=H
fvar(39)=1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=P2StateType!=A
fvar(31)=1
ignorehitpause=1

[State -2]
type = VarSet
trigger1 = var(1)<100
trigger1 = Pos Y = 0
var(1) = 0
ignorehitpause=1

[State -2]
Type=displaytoclipboard
Trigger1=1
text="Created by Seravy    http://seravy.tk"

[State -3]
Type=VarSet
Trigger1=1
var(41)=GameTime
ignorehitpause=1

[State -1,EndofTheWorld]
Triggerall = NumHelper(2602)=0
Triggerall = NumHelper(2601)=0
Trigger1= var(49)=1
Trigger1= time>1
Type=Helper
StateNo = 2602
ID = 2602
Name = "EndofWorld"
Pos = 150,-110
PosType = Back
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1.2;7
Size.YScale = 1.2;7
Pausemovetime=9999999
Supermovetime=9999999

;[State -2]
;Type=AssertSpecial
;Trigger1=NumHelper(1601)>0
;Trigger2=NumHelper(2501)>0
;Flag=NoKO
;Ignorehitpause=1

[State -2]
Type = VarSet
Trigger1 = RoundState <2
Trigger1 = RoundNo=1
var(49) = 0

[State -2]
Type=VarSet
Trigger1=Stateno=[1000,1999]
var(17)=0

[State -2]
Type=VarAdd
Trigger1=1
var(17)=1

[State -2]
Type=VarAdd
Triggerall=var(16)>0
Trigger1=var(17)>=30
v=16
value=-4+2*(Numhelper(1021)>0)
ignorehitpause=1

[State -2]
Type=PlaySnd
Trigger1=var(16)=[1500,5000]
value=999,1
ignorehitpause=1

[State -2]
Type=PlaySnd
Trigger1=var(16)=[1001,1499]
value=999,0
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(16)=[1001,1499]
v=16
value=6000
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=var(16)=[1500,5000]
v=16
value=0
ignorehitpause=1

[State -2]
Type=VarAdd
Trigger1=life<var(36)
fv=15
value=(var(36)-life)*fvar(14)
ignorehitpause=1

[State -2]
Type=LifeAdd
Trigger1=life>1
Trigger1=fvar(15)>1
value=floor(fvar(15))
absolute=1
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=1
fv=15
value=fvar(15)-floor(fvar(15))
ignorehitpause=1

[State -2]
Type=VarSet
Trigger1=1
v=36
value=Life
ignorehitpause=1

[State -2]
Type=Varset
Trigger1=1
fv=14
value=1-(1-0.75*(NumHelper(1800)>0))*(1-0.75*(StateNo=1607)*(var(9)<850))*(1-0.3*(var(54)=1))
ignorehitpause=1

;*****************************************************

[State -2]
Type=Helper
Triggerall = !IsHelper
Triggerall = RoundState=2
Trigger1 = NumHelper(999)=0
StateNo = 999
ID = 999
Name = "Bar"
Pos = 0, 0
PosType = Left
Ownpal = 1
IgnoreHitPause = 1
Size.xscale=0.5
Size.yscale=0.5
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

;[State -2]
;Type = Helper
;Triggerall = Roundstate<4
;Triggerall = StateNo!=1010
;triggerall = StateNo!=1400
;Triggerall = NumEnemy != 0
;Triggerall = (Enemy(0),Movetype = H)
;Triggerall = (Enemy(0),StateNo != [5100,5160])
;Triggerall = (Enemy(0),StateNo != [120,160])
;Trigger1 = Enemy(0),GetHitvar(chainID) = 2701
;Trigger1 = NumHelper(2708)=0
;StateNo = 2708
;ID = 2708
;Name = "HitSpark"
;Pos = random %20-10+Ceil(Enemy(0),Pos X - Pos X)*Facing,Ceil(Enemy(0),Pos Y - Pos Y)+(Enemy(0),Const(Size.Mid.Pos.Y))+random %40-20
;PosType = P1
;Ownpal = 1
;IgnoreHitPause = 1
;Persistent = 1
;SuperMoveTime = 100
;PauseMoveTime = 100
;Size.XScale = 0.5
;Size.YScale = 0.5
;
;[State 6005]
;Type = Helper
;Triggerall = Roundstate<4
;Triggerall = StateNo!=1010
;triggerall = StateNo!=1400
;Triggerall = NumEnemy = 2
;Triggerall = (Enemy(1),Movetype = H)
;Triggerall = (Enemy(1),StateNo != [5100,5160])
;Triggerall = (Enemy(1),StateNo != [120,160])
;Trigger1 = Enemy(1),GetHitvar(chainID) = 2701
;Trigger1 = NumHelper(2708)<2
;StateNo = 2708
;ID = 2708
;Name = "HitSpark"
;Pos = random %20-10+Ceil(Enemy(1),Pos X - Pos X)*Facing,Ceil(Enemy(1),Pos Y - Pos Y)+(Enemy(1),Const(Size.Mid.Pos.Y))+random %40-20
;PosType = P1
;Ownpal = 1
;IgnoreHitPause = 1
;Persistent = 1
;SuperMoveTime = 100
;PauseMoveTime = 100
;Size.XScale = .5
;Size.YScale = .5
