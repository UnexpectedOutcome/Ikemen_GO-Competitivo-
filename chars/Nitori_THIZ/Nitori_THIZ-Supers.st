;---------------------------------------------------------------------------
; Lvl 1: Fly! Sanpei Flight
[Statedef 2000]
type    = U
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 2000+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))+0*floor(var(5):=0)+0*floor(var(55):=0)
sprpriority = 1
facep2 = 0
juggle = 0
;Var Usage:
; Var(5) = Hit Counter

[State 2000, STS]
type = statetypeset
trigger1 = statetype!=A
trigger1 = time = 0
statetype = S
physics = S

[State 2000, Facep2]
type = turn
trigger1 = statetype!=A
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 2000, IKEMEN BUGFIX]
type = NotHitBy
trigger1 = animelemno(0)=[7,16]
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = animelemtime(7)=0;time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(7)=0;time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = animelemtime(7)=0;time = 0
time = 50
anim = -1
sound = S4,0
p2defmul = 1
;poweradd = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)*(prevstateno!=2002)
unhittable = 1
movetime = 50
darken = 0

[State 2000, PS]
type = poweradd
trigger1 = time = 0
value = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0

;---System Stuff end---

[State 1100, Remember X Pos]
type = varset
trigger1 = time = 0
var(21) = floor(pos x)

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "JetPak"
ID = 22010
pos = 0,0
postype = p1
stateno = 22010
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 4000, Effect]
type = helper
trigger1 = animelemtime(7)=0;time = 0
helpertype = normal
name = "JetFX"
ID = 22000
pos = 0,0
postype = p1
stateno = 22000
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50
[State 4000, Effect]
type = helper
trigger1 = animelemtime(7)=0;time = 0
helpertype = normal
name = "JetFX"
ID = 22001
pos = 0,0
postype = p1
stateno = 22000
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(2)=0
statetype = A
physics = N
ignorehitpause = 1

[State 2000, VS]
type = velset
trigger1 = animelemtime(2)=0
x = 0.0
y = -5.0

[State 2000, Grav]
type = veladd
trigger1 = animelemtime(2)>=1
trigger1 = vel y < 0
;x = 0.1
y = 0.2

[State 2000, VS]
type = velset
trigger1 = animelemtime(7)=0
x = 0.0
y = 5.0

[State 2100, Damage Calc]
type = Null
trigger1 = time = 0
trigger1 = (var(11):=30)||1;250
trigger1 = (var(12):=5)||1;50

[State 2000, VS]
type = veladd
trigger1 = vel y > 0
trigger1 = animelemtime(7)>0 && animelemtime(17)<0
y = -0.25

[State 2000, VS]
type = velset
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
trigger1 = animelemtime(7)>0 && animelemtime(17)<0
y = 0.0

[State 2000, VS]
type = veladd
trigger1 = animelemtime(17)>=0
x = 0.7
y = -0.25

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 2000,10

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(17)=0
value = 2000,11

[State 0, PlayerPush]
type = PlayerPush
trigger1 = animelemtime(17)>=0
value = 0
ignorehitpause = 1

[State 2000, Trigger Jet Growth]
type = null
trigger1 = animelemtime(17)=0
trigger1 = numhelper(22000)
trigger1 = helper(22000),cond(1,var(1):=1,0)
[State 2000, Trigger Jet Growth]
type = null
trigger1 = animelemtime(17)=0
trigger1 = numhelper(22001)
trigger1 = helper(22001),cond(1,var(1):=1,0)

[State 0, ScreenBound]
type = ScreenBound
trigger1 = animelemtime(17)>=0
value = 0
movecamera = 1,1
ignorehitpause = 1

[State 2000, VarAdd]
type = varadd
trigger1 = movecontact=1
trigger1 = var(5)<10
var(5)=1

[State 2000, MHR]
type = movehitreset
trigger1 = var(5)<10

;==========
; HITDEF
;==========
[State 2100, Hitdef]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemno(0)>=17
attr = S,HA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(11)*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(12)*fvar(11)*cond(var(19)=1,0.85,1.0));35,5
animtype = Back                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                  ;Flags on how move is to be guarded against
hitflag = HAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 4,5;10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-60
hitsound = s1,2       ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=27+3*(var(42)!=0)+var(34))<=1,1,var(32))
air.hittime = cond((var(32):=34+3*(var(42)!=0)+var(34))<=1,1,var(32))
ground.velocity = -8.0,-9.0
air.velocity = -8.0,-9.0
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = ceil(var(11)*0.8*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.2*cond(var(19)=1,0.85,1.0))
yaccel = 0.5
p2facing = 1
fall = 1
air.fall = 1
fall.recover = 0
id = 2000
;==========
; /HITDEF
;==========

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=0;1
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=1
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=2
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=3
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=4
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=5
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=6
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=7
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)=8
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1
[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = var(52)=2 ;Type-ß Only
trigger1 = movecontact && var(5)>=9
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(fvar(11)/cond(var(55)=12,(fvar(30)),1))*ifelse(var(42),1.25,1.0)*cond(var(19)=1,0.85,1.0)),ceil(var(11)*0.15*cond(var(19)=1,0.85,1.0)))
persistent=0
ignorehitpause = 1

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2000) && movehit
trigger1 = target(2000),gethitvar(hitcount)=1
trigger1 = var(55)=0
var(55) = 12;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=0;1
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=1
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=2
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=3
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=4
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=5
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=6
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=7
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)=8
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit && var(5)>=9
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 2000, Hard Knockdown]
type = TargetState
trigger1 =p2statetype= A && movehit && (p2stateno!=[6020,6110])
value =6020
ID = 2000
ignorehitpause =1

[State 2000, STS]
type = statetypeset
trigger1 = movecontact||movereversed
trigger1 = var(5)>=10
movetype = I
persistent = 0
ignorehitpause = 1

[State 1002, CS]
type = changestate
trigger1 = frontedgedist <= -450
trigger2 = time>=210
value = 2001
ctrl = 0

;---------------------------------------------------------------------------
; Sanpei Flight Recover
[Statedef 2001]
type = A
movetype = I
physics = N
velset = 0,2
anim = 2001
ctrl = 0
sprpriority = 1
movehitpersist=1
facep2 = 1

[State 1103, T]
type = turn
trigger1 = time <= 1
trigger1 = p2dist x < 0
persistent = 0

[State 1103, PS]
type = posset
trigger1 = time = 0
y = -gameheight
x = var(21)

[State 1103, Grav]
type = veladd
trigger1 = time
y = 0.5

[State 1103, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 2002

;---------------------------------------------------------------------------
; Jump Land
[Statedef 2002]
type = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Sanpei Machine FX
[Statedef 22000]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 22000
sprpriority = 5
;Var(0) = angle
;Var(1) = Growth Flag (Default 0)
;fvar(0) = Scale

[State 22000, VS]
type = null
triggerall = time = 0
trigger1 = (var(0):=190)||1
trigger1 = (fvar(0):=0.1)||1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21202, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 5*ishelper(22000)-1*ishelper(22001)
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
facing = 1
pos = cond(ishelper(22000),-75,0),cond(ishelper(22000),-70,-50)
ignorehitpause = 1

[State 22000, Zeeky]
type = destroyself
trigger1 = root,stateno!=2000
trigger2 = root,movetype = H
trigger3 = root,alive = 0

[State 22200, AD]
type = angledraw
trigger1 = 1
value = var(0)
scale = fvar(0),fvar(0)
ignorehitpause = 1

[State 22000, Grow]
type = varadd
trigger1 = var(1) = 1
trigger1 = fvar(0)<1.5
fvar(0)=0.1

;---------------------------------------------------------------------------
; Super Kappaship
[Statedef 22010]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22010
ctrl = 0
sprpriority = -1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20180, CS]
type = Destroyself
trigger1 = time>13
trigger2 = root,stateno!=2000
trigger3 = root,stateno=2000
trigger3 = root,animelemtime(7)>=0

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,-260+floor(20*time)
ignorehitpause = 1


;---------------------------------------------------------------------------
; Lvl 1: Great War Beneath The River
[Statedef 2100]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 2100+0*floor(var(19):=cond((var(57)>0 && var(52)=2)||(prevstateno=[2000,2999]),1,0))+0*floor(var(55):=0)
sprpriority = 1
facep2 = 1
juggle = 0

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 2100,0
channel = 0

[State 2000, IKEMEN Nothitby]
type = NotHitBy
trigger1 = time<=50;animelemtime(4)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 4000, Effect]
type = helper
trigger1 = animelemtime(1)=0;time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(1)=0;time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 50
supermovetime = 50

[State 2100, PowerAdd]
type = poweradd
trigger1 = time = 0
value = -1000*!(var(57)>0 && var(52)=1)*!(var(57)>0 && var(52)=2)

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = animelemtime(1)=0;time = 0
time = 50
anim = -1
sound = S4,0
p2defmul = 1
poweradd = 0
unhittable = 1
movetime = 50
darken = 0

[State 2000, Spell Trance Power Cost]
type = varadd
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=-250
[State 2000, Spell Rage/Overdrive End]
type = varset
triggerall = time = 0
trigger1 = (var(57)>0 && var(52)=2)
var(57)=0
;---System Stuff end---

[State 2100, Damage Calc]
type = Null
trigger1 = time = 0
trigger1 = (var(11):=280)||1
trigger1 = (var(12):=280)||1

; PROJECTILE SPAWN ON 62f STARTUP (ELEM 7)
[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(8)=0
value = 1300,10

[State 1010, Effect]
type =helper
trigger1 = !ishelper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "BigMissile"
ID = 22100
pos = -2,-81
postype = p1
stateno = 22100
ownpal = 1
facing = 1

[State 1010, Effect]
type =helper
trigger1 = !ishelper
trigger1 = animelemtime(8)=90
helpertype = normal
name = "Floodwater"
ID = 22110
pos = 0,0
postype = p1
stateno = 22110
ownpal = 1
facing = 1

[State 2000, STS]
type = statetypeset
trigger1 = animelemtime(8)>1
movetype = I
ignorehitpause = 1

[State 2002, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; GWBtR Big Bomber
[Statedef 22100]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 22100
ctrl = 0
sprpriority = 5

[State 22100, Lock Power]
type = varset
trigger1 = time = 0
trigger2 = root,power<=var(50)
var(50) = root,power

[State 0, PowerSet]
type = PowerSet
trigger1 = root,power > var(50)
value = var(50)

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21202, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time>=0
x = 10
y = -10
;ignorehitpause = 
;persistent = 

[State 22100, EX]
type = explod
trigger1 = time<45
trigger1 = time%3=0
id = 22100
anim = 25200
pos = -30,20
postype = p1  ;p2,front,back,left,right
facing = 1
vel = -3+random%2,2
removetime = -2
pausemovetime = 0
scale = 1.0,1.0
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 22102
IgnoreHitPause = 1

[State 22100, PSND]
type = playsnd
trigger1 = time=45
value = 2100,10

[State 0, EnvShake]
type = EnvShake
trigger1 = time=45
time = 20
freq = 145
ampl = 3
phase = 180

[State 21200, CS]
type = changestate
trigger1 = time=45
value = 22101

[State 21200, Zeeky]
type = destroyself
trigger1 = root,movetype=H && (root,stateno!=[120,155])

[State 21300, AS]
type = angledraw
trigger1 = 1
scale = 1.0,1.0;fvar(0),fvar(0)
ignorehitpause = 1

;--------------------------
; Weather Bomb
[Statedef 22101]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 1998
sprpriority = 5
;movehitpersist = 1
; Var(0) = Water Level
; Var(1) = Timer
; Var(50) = Power Lock

[State 22100, Lock Power]
type = varset
trigger1 = root,power<=var(50)
var(50) = root,power

[State 0, PowerSet]
type = PowerSet
trigger1 = root,power > var(50)
value = var(50)

[State 22100, EX]
type = explod
trigger1 = time=0
id = 22110
anim = 22102
pos = -640,240+400
postype = left
facing = facing
vel = 0,0
removetime = 330
pausemovetime = 0
;scale = 0.5,0.5
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0
[State 22100, EX]
type = explod
trigger1 = time=0
id = 22111
anim = 22102
pos = 0,240+400
postype = left
facing = facing
vel = 0,0
removetime = 330
pausemovetime = 0
;scale = 0.5,0.5
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0
[State 22100, EX]
type = explod
trigger1 = time=0
id = 22112
anim = 22102
pos = 640,240+400
postype = left
facing = facing
vel = 0,0
removetime = 330
pausemovetime = 0
;scale = 0.5,0.5
sprpriority = 5
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 22110
pos = -640,240+400-var(0)
postype = left
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 22111
pos = 0,240+400-var(0)
postype = left
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 22112
pos = 640,240+400-var(0)
postype = left

[State 22100, PSND]
type = playsnd
trigger1 = time=0
value = 2100,11
channel = 5

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21202, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22100, EX]
type = explod
trigger1 = time>0
trigger1 = time%10=0
id = 22101
anim = 22101
pos = 100+random%120,-1350
postype = left
facing = 1
vel = 4,45
removetime = 30
pausemovetime = 0
scale = 2.5,2.5
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 22101, CS]
type = changestate
trigger1 = var(1)>=300
trigger2 = root,movetype=H && (root,stateno!=[120,155])
value = 22102

[State 22101, VA]
type = varadd
trigger1 = var(0)<320
var(0) = 5

[State 22101, VA]
type = varadd
trigger1 = time>=0
var(1) = 1

;--------------------------
; Weather Bomb
[Statedef 22102]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 1998
sprpriority = 5
;movehitpersist = 1

[State 22100, Lock Power]
type = varset
trigger1 = root,power<=var(50)
var(50) = root,power

[State 0, PowerSet]
type = PowerSet
trigger1 = root,power > var(50)
value = var(50)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 22110
pos = -640,240+400-var(0)
postype = left
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 22111
pos = 0,240+400-var(0)
postype = left
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 22112
pos = 640,240+400-var(0)
postype = left

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21202, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=30
id = 22110
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=30
id = 22111
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=30
id = 22112
ignorehitpause = 1

[State 22100, PSND]
type = stopsnd
trigger1 = time=30
channel = 5


[State 22102, Zeeky]
type = destroyself
trigger1 = time>30

[State 22101, VA]
type = varadd
trigger1 = var(0)>0
var(0) = -5

;--------------------------
; Floodwater
[Statedef 22110]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 22110
sprpriority = 5
;movehitpersist = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause = 
;persistent = 


[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=15)||1
trigger1 = (var(12):=2)||1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 22112
IgnoreHitPause = 1

[State 21200, CS]
type = changestate
trigger1 = time>=0
value = 22111

;--------------------------
; Floodwater
[Statedef 22111]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
sprpriority = 5
;movehitpersist = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP;,AT
slot = 0
time = -1
Stateno = 22112
IgnoreHitPause = 1

;===============
; HITDEF
;===============
[State 1211, HitDef]
type = HitDef
trigger1 = movecontact = 0 && movereversed = 0
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
priority = 4,Hit
damage = ceil(var(11)*(root,fvar(11)/cond(root,var(55)=13,(root,fvar(30)),1))),ceil(var(12)*root,fvar(11))
pausetime = 0,8
getpower = 0,0;ceil(var(11)*1.6*(root,fvar(11)/cond(root,var(55)=13,(root,fvar(30)),1))),ceil(var(11)*0.4) ;160% & 40% of base damage
givepower = ceil(var(11)*0.8*(root,fvar(11)/cond(root,var(55)=13,(root,fvar(30)),1))),ceil(var(11)*0.2) ;80% & 20% of base damage
sparkno=s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,-50
hitsound = S1,2
guardsound = S2,0
ground.type = High
yaccel = 0.5
p1sprpriority = 5
ground.velocity = -10.0,-1.0
down.velocity = -10.0,-1.0
guard.velocity = -10.0
air.velocity = -10.0,-1.0
airguard.velocity = -10.0,-1.0
p2facing = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = cond((var(32):=32+root,var(34))<=1,1,var(32))
ground.hittime  = cond((var(32):=32+root,var(34))<=1,1,var(32))
guard.slidetime = cond((var(32):=27+root,var(34))<=1,1,var(32))
guard.hittime = cond((var(32):=27+root,var(34))<=1,1,var(32))
air.hittime = cond((var(32):=34+root,var(34))<=1,1,var(32))
fall = 1
air.fall = 1
fall.recover = 0
id = 2100

[State 2011, Helper Hit Flag]
type = parentvarset
trigger1 = MoveHit=1
trigger1 = p2stateno != [120,159]
var(35)=2
ignorehitpause = 1
persistent = 0

[State 1602, Recovery Frames]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1

[State -2, Spirit Gauge Increase]
type = parentvaradd
trigger1 = root,var(52)=2 ;Type-ß Only
trigger1 = movecontact
trigger1 = root,var(54)<ceil(root,lifemax*0.9)
var(54) = cond(movehit,ceil(var(11)*0.6*(root,fvar(11)/cond(root,var(55)=13,(root,fvar(30)),1))),ceil(var(11)*0.15))
persistent=0
ignorehitpause = 1
;===============
; END HITDEF
;===============

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(2100) && movehit
trigger1 = target(2100),gethitvar(hitcount)=1
trigger1 = root,var(55)=0
var(55) = 13;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Proration]
type = parentvarset
trigger1 = Movehit
fvar(10) = (root,fvar(10))*0.97*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21101, CS]
type = changestate
trigger1 = var(0)>240||var(1)>=20||(root,movetype=H && (root,stateno!=[120,155]))
value = 22113

[State 21101, CS]
type = changestate
trigger1 = movecontact||movereversed
value = 22112

[State 21300, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;---------------------------------------------------------------------------
;Floodwater Projectile
[Statedef 22112]
type    = A
movetype= I
physics = N
sprpriority=5
ctrl = 0
velset = 0,0
facep2 = 0
movehitpersist = 1

[State 22102, Hitcount]
type = varadd
trigger1 = time = 0
var(1) = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21102, Zeeky]
type = changestate
trigger1 = time>=8
value = 22111+2*(var(0)>240||var(1)>=20)

[State 21300, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;---------------------------------------------------------------------------
;Floodwater End
[Statedef 22113]
type    = A
movetype= I
physics = N
sprpriority=5
ctrl = 0
anim = 1998
velset = 0,0
facep2 = 0
movehitpersist = 1

[State 22113, Flag Rain Effect to End]
; Utilizes Cond exploit to set Var(1) to 300
type = null
trigger1 = time = 0
trigger1 = root,numhelper(22100)
trigger1 = root,cond(1,(helper(22100),cond(1,(var(1):=300),0)),0)

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21102, Zeeky]
type = changestate
trigger1 = time>=6
value = 999

;---------------------------------------------------------------------------
; Type-a: Spell Trance
[Statedef 3000]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 3000+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 1900, Decrease Spirit]
type = varset
trigger1 = time = 0
var(54) = 0;

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time<=70
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 2999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,0
p2defmul = 1
;poweradd = -2000
unhittable = 1
movetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
trigger1 = (var(57):=power)||1
helpertype = normal
name = "Spell Trance"
id = 23000
stateno = 23000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Type-ß: Spell Overdrive
[Statedef 3010]
type    = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
anim = 3000+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time<=70
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 4999
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
trigger1 = (var(57):=480)||1
helpertype = normal
name = "Spell Overdrive"
id = 23010
stateno = 23000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970
[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spell Overdrive"
id = 23010
stateno = 30010
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999970
supermovetime = 9999970

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Spell Trance/Rage/Overdrive Helper
[StateDef 23000]
Type = A
MoveType = I
Physics = N
SprPriority = -1
anim = 1998
velset = 0,0

[State 23000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 30000, Spirit]
type = varset
trigger1 = ishelper(23010)||ishelper(23005)
trigger1 = time = 0
var(10) = root,power

[State 23000, T]
type = turn
trigger1 = facing != root,facing 

[State 23000, CA]
type = changeanim
trigger1 = root,movetype != H
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State 23000, Angleset]
type = angleset
trigger1 = 1
value = 0
ignorehitpause = 1

[State 23000, Flicker]
type = angledraw
trigger1 = 1
scale = 1.05+0.05*(time%2=0),1.05+0.05*(time%2=0)
ignorehitpause = 1

[State 23000, Invis]
type = assertspecial
trigger1 = root,movetype = H
trigger2 = time=0
flag = invisible
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23000)
time = -1
add = 256,256,256
mul = 256,0,0
invertall = 0
color = 0
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23005)
time = -1
add = 256,256,256
mul = 0,256,0
invertall = 0
color = 0
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = ishelper(23010)
time = -1
add = 256,256,256
mul = 256,256,0
invertall = 0
color = 0
ignorehitpause = 1

[State 30000, Deplete Spirit]
type = parentvaradd
triggerall = root,var(52)=1
triggerall = root,var(57)>0
trigger1 = root,stateno!=[3000,3010]
trigger1 = !(root,stateno=2000 && root,time<=50)
trigger1 = !(root,stateno=2100 && root,time<=50)
trigger1 = !(root,stateno=2200 && root,time<=50)
trigger1 = !(root,stateno=2300 && root,time<=50)
var(57)=-3

[State 30000, Deplete Spirit]
type = parentvaradd
triggerall = root,var(52)=2||root,var(52)=2
triggerall = root,var(57)>0
trigger1 = root,stateno!=[3000,3010]
trigger1 = !(root,stateno=2000 && root,time<=50)
trigger1 = !(root,stateno=2100 && root,time<=50)
trigger1 = !(root,stateno=2200 && root,time<=50)
trigger1 = !(root,stateno=2300 && root,time<=50)
var(57)=-1

[State 30000, Spirit]
type = powerset
trigger1 = ishelper(23000)
value = root,var(57)

[State 30000, Spirit]
type = powerset
trigger1 = ishelper(23010);||ishelper(23010)
trigger1 = root,power>var(10)
value = var(10)

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,0

[State 23000, Zeeky]
type = destroyself
trigger1 = root,var(57)<=0
;trigger1 = root,stateno!=4000
trigger1 = root,stateno!=[2000,2299]

[State 0, Offset]
type = Offset
triggerall = root,stateno=21
triggerall = root,anim=22
trigger1 = root,animelemno(0)=[4,9]
y = floor(-2.0*(1+root,animelemtime(4))+0.0909091*root,animelemtime(4)**2);+0.05714*animelemtime(4)**2)
ignorehitpause = 1

[State 0, Offset]
type = Offset
triggerall = root,stateno=21
triggerall = root,anim=23
trigger1 = root,animelemno(0)=[4,9]
y = floor(-2.0*(1+root,animelemtime(4))+0.0909091*root,animelemtime(4)**2)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Last Word: Kappa's Covering Fire
[Statedef 4000]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 4000+0*floor(var(11):=1)+0*floor(var(12):=0)+0*floor(var(19):=cond((var(57)>0 && var(52)=2),1,0))+0*floor(var(55):=0)
sprpriority = 1
facep2 = 1
juggle = 0

[State 4000, ResetVars]
type = varset
trigger1 = time = 0
var(39)=0

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(9)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time = 0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24000
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24001
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Bomb_FX"
id = 24002
stateno = 24000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 4000;2999+1000*(var(52)=2)
stateno = 1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70
[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 70
supermovetime = 70

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70
anim = -1
sound = S4,1
p2defmul = 1
poweradd = -1000*(var(52)=2)*!(var(52)=2&&var(57)>0);Deplete Power only if Type-B and not EX Shielded
unhittable = 1
movetime = 70
darken=0

[State 2000, Spell Trance End]
type = varset
trigger1 = time = 0
trigger1 = (var(57)>0 && var(52)=1)
var(57)=0
[State 2000, Type-a Deplete Spirit]
type = varset
trigger1 = time = 0
trigger1 = var(52)=1
var(54)=0

;--End System Stuff---

[State 1300, Damage Calc]
type = null
triggerall = time = 0
trigger1 = (var(11):=75)||1 
trigger1 = (var(12):=0)||1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1200,10
channel = 2

[State 0, AttackDist]
type = AttackDist
trigger1 = 1
value = 320
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Smoke Canister"
id = 24010
stateno = 24010
pos = 40,-64
postype = p1
ownpal = 1
facing = 1

[State 200, 1]
type = HitDef
trigger1 = animelemno(0)=8
trigger1 = !movecontact && !movereversed 
attr = S,HA                     ;Attribute: Standing, Normal Attack
damage = 0,121
kill = 0
guard.kill = 1
animtype = Hard                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4, Hit
pausetime = 0,10                 ;Time attacker pauses, time opponent shakes
sparkno = -1;S8020+(random%2)
guard.sparkno = S8030
sparkxy = -20,-50+cond(numenemy,floor(p2dist y),0)
hitsound = -1;s4000,11                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 32
ground.hittime  = 32
guard.slidetime = 27
guard.hittime = 27
air.hittime  = 34
ground.velocity = -0.0,-0.0             ;Velocity at which opponent is pushed
airguard.velocity = -0.0,-0.0     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -0.0,-0.0
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
;givepower = 0,600
givepower = 0,102
yaccel = 0.5
p2facing = 1
fall = 1
fall.recover = 0
id = 4000
p1stateno = 4001
p2stateno = 4050

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(9)=0
trigger2 = movecontact||movereversed
movetype = I
persistent = 0
ignorehitpause = 1

[State 2000, Land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lvl 3: Success
[Statedef 4001]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
anim = 4001
sprpriority = 1
facep2 = 0
movehitpersist = 1

[State 810, Bind]
type = TargetBind
trigger1 = time = 0
pos = var(13):=floor(p2dist x), 0
id = 4000

[State 810, Bind]
type = TargetBind
trigger1 = time=1
pos = p2dist x, p2dist y
id = 4000

[State 4001, Save X Pos]
type = varset
trigger1 = time = 0
var(40) = floor(pos x)

[State 4001, FlagSet]
type = null
trigger1 = time = 0
trigger1 = numhelper(24010)
trigger1 = helper(24010),cond(1,(var(1):=1),0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(13)=0
helpertype = normal
name = "Cape"
id = 24016
stateno = 24016
pos = 0,0
postype = p1
ownpal = 0
facing = 1

[State 4001, CS]
type = changestate
trigger1 = animelemtime(14)=0
value = 4002

[State 0, AllPalFX]
type = AllPalFX
trigger1 = 1;animelemno(0)<=12
time = 1
color = cond(animelemno(0)<=12,256-floor(224*time/60.0),32)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Lvl 3: Success
[Statedef 4002]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0, 0
anim = 4002+0*floor(var(41):=0)
sprpriority = 2
facep2 = 0
movehitpersist = 1

[State 4002, PSND]
type = playsnd
trigger1 = 1
persistent = 20
value = 4000,10
channel = 7

[State 4002, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 4000,11

[State 0, AllPalFX]
type = AllPalFX
trigger1 = 1;animelemno(0)<=12
time = 1
color = 32
ignorehitpause = 1

[State 0, AllPalFX]
type = PalFX
trigger1 = 1;animelemno(0)<=12
time = 1
mul = 0,0,0
color = 0
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nofg
ignorehitpause = 1

[State 0, Offset]
type = posset
trigger1 = time = 0
y = -240
;ignorehitpause = 
;persistent = 

[State 4002, VS]
type = velset
trigger1 = time=0
y = 6.0

[State 4002, VS]
type = velset
trigger1 = time=30
y = 0.0

[State 2000, Spellcard Effect]
type = helper
;trigger1 = animelemtime(6)=-10||animelemtime(8)=-10||animelemtime(10)=-10||animelemtime(12)=-10||animelemtime(14)=-10
;trigger2 = animelemtime(16)=-10||animelemtime(18)=-10||animelemtime(20)=-10||animelemtime(22)=-10||animelemtime(24)=-10
trigger1 = animelemtime(6)=-10||animelemtime(10)=-10||animelemtime(14)=-10||animelemtime(18)=-10||animelemtime(22)=-10
trigger2 = animelemtime(26)=-10||animelemtime(30)=-10||animelemtime(34)=-10||animelemtime(38)=-10||animelemtime(42)=-10
helpertype = normal
name = "Reticule"
id = 24015
stateno = 24015
pos = 10-floor(21.0*random/1000.0),-50-10+floor(21.0*random/1000.0)
postype = p2
ownpal = 1
facing = 1

[State 4000, PSND]
type = playsnd
;trigger1 = animelemtime(6)=0||animelemtime(8)=0||animelemtime(10)=0||animelemtime(12)=0||animelemtime(14)=0
;trigger2 = animelemtime(16)=0||animelemtime(18)=0||animelemtime(20)=0||animelemtime(22)=0||animelemtime(24)=0
trigger1 = animelemtime(6)=0||animelemtime(10)=0||animelemtime(14)=0||animelemtime(18)=0||animelemtime(22)=0
trigger2 = animelemtime(26)=0||animelemtime(30)=0||animelemtime(34)=0||animelemtime(38)=0||animelemtime(42)=0
value = 1300,10

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(6)=0||animelemtime(10)=0||animelemtime(14)=0||animelemtime(18)=0||animelemtime(22)=0
trigger2 = animelemtime(26)=0||animelemtime(30)=0||animelemtime(34)=0||animelemtime(38)=0||animelemtime(42)=0
helpertype = normal
name = "Missile"
id = 24020
stateno = 24020
pos = 24,-34
postype = p1
ownpal = 1
facing = 1


[State 4202, TLA]
type = null
trigger1 = var(41)=1
trigger1 = (var(39):=var(39)+1)||1

[State 4202, TLA]
type = targetlifeadd
trigger1 = var(41)=1
value = -ceil(var(11)*cond((fvar(11)/cond(var(55)=14,(fvar(30)),1))<0.5,0.5,(fvar(11)/cond(var(55)=14,(fvar(30)),1))))
id = 4000
kill = cond(var(39)>=10,1,0)

[State 4202, TLA]
type = targetpoweradd
trigger1 = var(41)=1
value = ceil(var(11)*cond((fvar(11)/cond(var(55)=14,(fvar(30)),1))<0.5,0.5,(fvar(11)/cond(var(55)=14,(fvar(30)),1))))
id = 4000

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(4000)
trigger1 = var(41)=1
value = cond(var(39)>=10,4052,4051)
ID = 4000

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(4000) && movehit
trigger1 = target(4000),gethitvar(hitcount)=1
trigger1 = var(41)=1
trigger1 = var(55)=0
var(55) = 14;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = var(41)=1
trigger1 = (var(41):=0)||1
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1


[State 4001, CS]
type = changestate
trigger1 = animelemtime(44)>=0
trigger2 = var(39)>=10
value = 4003

;---------------------------------------------------------------------------
; Lvl 3: SVotOWL Success
[Statedef 4003]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
anim = 4003
sprpriority = 1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 1103, Grav]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.5

[State 1103, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4004

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time<48
time = 1
add = 256-floor(256.0*(time**2)/(48.0**2)),256-floor(256.0*(time**2)/(48.0**2)),256-floor(256.0*(time**2)/(48.0**2))
ignorehitpause = 1

;---------------------------------------------------------------------------
; Lvl 3: SVotOWL Success
[Statedef 4004]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
anim = 47
sprpriority = 1
facep2 = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 4004, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Last Word Effect
[Statedef 24000]
anim = 24000
velset = 0,0
sprpriority = 5

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 21920, AD]
type = angledraw
trigger1 = 1
value = cond(ishelper(24000),0,cond(ishelper(24001),45,-45))
scale = 0.75*(time*0.3)*0.667,0.35*(time*0.3)*0.667
ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/30.0),256
ignorehitpause = 1

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 30

;-----------------------
; Canister
[Statedef 24010]
anim = 21200
velset = 0,0
sprpriority = 5

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 21200, VelS]
type = velset
trigger1 = time = 0
x = 3.0
y = -2.0

[State 21200, VelS]
type = veladd
trigger1 = time
y = 0.5

[State 21200, AS]
type = angleset
trigger1 = time = 0
value = var(1)

[State 21200, AA]
type = angleadd
trigger1 = time
value = 12*cond(var(3)%2=0,1,-1)

[State 24010, Zeeky]
type = Changestate
trigger1 = time>=20
value = 24011

[State 21200, AD]
type = angledraw
trigger1 = 1
scale = 0.3,0.45
ignorehitpause = 1

;-----------------------
; Canister
[Statedef 24011]
velset = 0,0
sprpriority = 5
; var(1) = Success Flag

[State 24011, PS]
type = playsnd
trigger1 = time = 0
value = 4000,12
[State 24011, PS]
type = playsnd
trigger1 = time = 0
value = 4000,13

[State 21200, AS]
type = angleset
trigger1 = time = 0
value = 0

[State 22100, EX]
type = explod
trigger1 = time<cond(var(1),90,30)
trigger1 = time%3=0
id = 24000
anim = 25200
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = -3+floor(7.0*random/1000.0),-15.0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 6
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 21200, VS]
type = posset
trigger1 = time = 0
y = 0

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 22100, EX]
type = explod
trigger1 = var(1)=1
trigger1 = time=30
id = 24010
anim = 24010
pos = 0,80
postype = left
facing = 1
vel = 0.15,0.0
removetime = -1
pausemovetime = 0
scale = 5.0,5.0
sprpriority = 6
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0
[State 22100, EX]
type = explod
trigger1 = var(1)=1
trigger1 = time=35
id = 24010
anim = 24010
pos = 320,160
postype = left
facing = 1
vel = -0.2,0.0
removetime = -1
pausemovetime = 0
scale = 4.5,4.5
sprpriority = 6
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Trans]
type = Trans
trigger1 = var(2)>0
trans = addalpha
alpha = 256-floor(256.0*var(2)/10.0),floor(256.0*var(2)/10.0)

[State 21200, Zeeky]
type = changestate;destroyself
trigger1 = var(2)>=10
value = 24012

[State 21200, AD]
type = angledraw
trigger1 = 1
scale = 0.3,0.45
ignorehitpause = 1

[State 21200, TimerAdd]
type = varadd
trigger1 = var(1)=0
trigger1 = time>=40
trigger2 = time>=100
var(2) = 1

;-----------------------
; Canister
[Statedef 24012]
velset = 0,0
anim = 1998
sprpriority = 5
; var(1) = Success Flag

[State 21200, AS]
type = angleset
trigger1 = time = 0
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = root,stateno=4003
value = 24013

[State 21200, AD]
type = angledraw
trigger1 = 1
scale = 0.3,0.45
ignorehitpause = 1

;-----------------------
; Canister
[Statedef 24013]
velset = 0,0
anim = 1998
sprpriority = 5
; var(1) = Success Flag

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 24010

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time>=10

;--------------------------
; 421 Reticule - Locked
[Statedef 24015]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 21310+0*floor(fvar(0):=1.0)
sprpriority = 5

[State 21310, VA]
type = varadd
trigger1 = time
trigger1 = fvar(0)>0.6
fvar(0)=-0.04

[State 21310, AA]
type = angleadd
trigger1 = time
value = 7

[State 21311, PSND]
type = playsnd
trigger1 = time=0
value = 1300,11

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21311, Destroyself]
type = destroyself
trigger1 = time>=30

[State 21311, AD]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

;--------------------------
; LW Cape
[Statedef 24016]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 24011
sprpriority = 5

[State 24016, VS]
type = velset
trigger1 = time
y = 4.0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*(time**2)/400.0),floor(256.0*(time**2)/400.0)
ignorehitpause = 1

[State 24016, Zeeky]
type = destroyself
trigger1 = time>=20

;--------------------------
; LW - Missile
[Statedef 24020]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 21300
sprpriority = 5

[State 20410, Angle Calc]
type = null
trigger1 = numenemy
trigger1 = (fvar(1) := (enemynear(0),pos x - pos x)*facing) || 1
trigger1 = (fvar(2) := (enemynear(0),pos y + enemynear(0),const(size.mid.pos.y)*ifelse((enemynear(0),statetype=C),0.5,ifelse((enemynear(0),statetype=L),0.0,1.0)) - pos y)) || 1
trigger1 = (fvar(3) := ((fvar(1)**2)+(fvar(2)**2))**0.5) || 1
trigger2 = !numenemy
trigger2 = (fvar(1) := 320.0) || 1
trigger2 = (fvar(2) := 0.0) || 1
trigger2 = (fvar(3) := ((fvar(1)**2)+(fvar(2)**2))**0.5) || 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time=0
flag = invisible
ignorehitpause = 1

[State 24020, AngleSet]
type = varset
trigger1 = time = 0
fvar(0) = 20.0-10.0+floor(21.0*random/1000.0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 8.0*cos(fvar(0)*pi/180.0)
y = 8.0*sin(fvar(0)*pi/180.0)


[State 24020, VA]
type = veladd
trigger1 = time>0
x = (p2dist x)*0.1;0.004
y = (cond(numenemy,(enemynear(0),const(size.mid.pos.y)),0)+p2dist y)*0.1;05;0.004

;[State 0, VelSet]
;type = VelSet
;trigger1 = time>=5
;x = 12.0*(fvar(1)/fvar(3))
;y = 12.0*(fvar(2)/fvar(3))

[State 2010, AS]
type = angleset
trigger1 = vel x != 0
value = atan(vel y/vel x)*(-180.0/pi)+((vel x<0)*180)
[State 2010, AS]
type = angleset
trigger1 = vel x = 0
value = ifelse(vel y<0,90,-90)

[State 21100, Math shit that makes your head hurt]
type = Varset
triggerall = numenemy
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) != 0
trigger1 = p2dist x != 0
fvar(6) = atan((p2dist y+enemynear,const(size.mid.pos.y))/(p2dist x))*180/pi+ifelse(p2dist x > 0,0,180)
[State 21100, Math shit that makes your head hurt]
type = Varset
triggerall = numenemy
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) = 0
fvar(6) = ifelse(p2dist x >= 0, 0, 180)
[State 21100, Math shit that makes your head hurt]
type = Varset
triggerall = numenemy
trigger1 = p2dist x = 0
fvar(6) = ifelse(p2dist y+enemynear,const(size.mid.pos.y) >= 0, 90, 270)

[State 0, ChangeState]
type = ChangeState
;trigger1 = time>=10
triggerall = numenemy
triggerall = p2dist y+enemynear,const(size.mid.pos.y) = [-60,60]
trigger1 = p2dist x = [cos(fvar(6)*pi/180)*30,-cos(fvar(6)*pi/180)*30]
trigger2 = p2dist x = [-cos(fvar(6)*pi/180)*30,cos(fvar(6)*pi/180)*30]
value = 24021

[State 0, PalFX]
type = PalFX
trigger1 = time>=0
time = 1
mul = 0,0,0
invertall = 0
color = 0

[State 24020, ScaleMe]
type = angledraw
trigger1 = 1
;value = fvar(0)
scale = 0.5,0.5
ignorehitpause = 1

;--------------------------
; LW - Missile
[Statedef 24021]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 21102
sprpriority = 5

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 180
ampl = 2
phase = 90

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = time=0
var(41) = 1 ;Hit Flag

[State 0, HitAdd]
type = HitAdd
trigger1 = time=0
value = 1
;ignorehitpause = 
;persistent = 

[State 21301, PSND]
type = playsnd
trigger1 = time = 0
value = 1300,13

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ChangeState]
type = Destroyself
trigger1 = animtime=0

[State 0, PalFX]
type = PalFX
trigger1 = time>=0
time = 1
color = 0

[State 24020, ScaleMe]
type = angledraw
trigger1 = 1
;value = fvar(0)
scale = 0.75,0.75;1.0,1.0
ignorehitpause = 1

;-------------------------------
; SVotOWL Hit
[Statedef 4050]
type    = S
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 4050, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 4050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4050

;[State 0, Trans]
;type = Trans
;trigger1 = 1
;trans = addalpha
;alpha = cond(time<60,256-floor(128*time/60.0),128),0

[State 0, AllPalFX]
type = PalFX
trigger1 = 1;animelemno(0)<=12
time = 1
mul = cond(time<60,256-floor(256*time/60.0),0),cond(time<60,256-floor(256*time/60.0),0),cond(time<60,256-floor(256*time/60.0),0)
ignorehitpause = 1

;-------------------------------
; SVotOWL Hit
[Statedef 4051]
type    = S
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 4050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4051

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = 0,0,0
color = 0

;-------------------------------
; SVotOWL Hit
[Statedef 4052]
type    = S
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 4050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4052

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = 0,0,0
color = 0

[State 4052, CS]
type = changestate
trigger1 = animtime=0
value = 4053

;-------------------------------
; SVotOWL Hit
[Statedef 4053]
type    = L
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 4050, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5110, 1]
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110)
value = 5110

[State 4050, CA2]
type = changeanim2
trigger1 = !SelfAnimExist(5110)
value = 4053

[State 6110, SS]
type = selfstate
trigger1 = !alive
value = 5150

[State 6110, SS]
type = selfstate
trigger1 = alive
trigger1 = time >= 60
value = 5120
