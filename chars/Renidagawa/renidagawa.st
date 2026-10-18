;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0
[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(2) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1
[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1
[State 40, 1]
type = VarSet
trigger1 = command = "DU"
trigger1 = command != "ChargedDU"
sysvar(2) = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = sysvar(2)
trigger1 = animtime = 0
value = 1,34
[State 0, AfterImage]
type = AfterImage
trigger1 = sysvar(2)
trigger1 = animtime = 0
time = 42
length = 15
palcolor = 40
paladd = 10,10,10
palmul = .74,.74,.74
timegap = 1
framegap = 4
trans = add
[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * ifelse(sysvar(2),2.8,1)
y = const(velocity.jump.y) * ifelse(sysvar(2),1.1,1)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47
facep2 = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = prevstateno != [1100,1140]
trigger1 = Time = 3
value = 1

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < 2 ; Const(movement.stand.friction.threshold)
x = 0

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
;Dash Forward
[Statedef 100]
type    = A
physics = A
ctrl = 0
anim = 100
sprpriority = 1

[State 1120]
type = explod
trigger1 = Time = 0
id = 804
anim = 804
pos = 0,0
scale = 1, 1
sprpriority = 2
ignorehitpause = 1
persistent = 0

[State 100, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.fwd.x)+1.5
y = const(velocity.run.fwd.y)+.75

[State 100,]
type = posset
trigger1 = Pos Y >= 0 && Time >2
y = 0

[State 100]
type = velset
trigger1 = pos y >=0 && Time > 2
x = 0

[State 100, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;------------------------------------------------------------------------
;----------------------------------------------------------------------------
;Dash Back
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 1120]
type = explod
trigger1 = Time = 0
id = 804
anim = 804
pos = 0,0
scale = 1, 1
sprpriority = 2
ignorehitpause = 1
facing = -1
persistent = 0

[State 100, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)-1.5
y = const(velocity.run.back.y)+.75

[State 100, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;----------------------------
;Air Dash

[Statedef 110]
type = A
physics = N
ctrl = 0
anim = 110
velset = 0, 0

[State 0]
type = varset
trigger1 = Time = 0
var(27) = 1

[State 110]
type = velset
trigger1 = Time = 1
x = 5
y = -2

[state 12]
type = veladd
trigger1 = 1
y = 0.2

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,45

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 870
ID =  870
pos = 32,-52
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 110, 0]
type = CtrlSet
trigger1 = Time = 3
value = 1

;[State 110, 2]
;type = HitBy
;trigger1 = Time = 0
;value = SCA;, NT, ST, HT
;time = 30

[State 110, 8]
type = ChangeState
trigger1 = Time = 20
value = 50
ctrl = 1

;----------------------------
;Air Dash Back
[Statedef 115]
type = A
physics = N
ctrl = 0
anim = 115
velset = 0, 0

[State 0]
type = varset
trigger1 = Time = 0
var(27) = 1

[State 110]
type = velset
trigger1 = Time = 1
x = -5
y = -2

[state 12]
type = veladd
trigger1 = 1
y = 0.2

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,45

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 870
ID =  870
pos = 0,-64
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 110, 0]
type = CtrlSet
trigger1 = Time = 3
value = 1

;[State 110, 2]
;type = HitBy
;trigger1 = Time = 0
;value = SCA;, NT, ST, HT
;time = 30

[State 110, 8]
type = ChangeState
trigger1 = Time = 20
value = 50
ctrl = 1
;-------------------------------
;Dizzy
[Statedef 5300]
type = S
movetype = H
physics = N
anim = 5300
ctrl = 0

[State 5300, 0]
type = selfstate
trigger1 = time = 60
value = 0
ctrl = 1
;-------------------------------
; Win
;[Statedef 180]
;type = S
;ctrl = 0
;anim = 180
;velset = 0,0

;[State 180, 0]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;time = 1
;---------------------------------------------
; Exceed
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
juggle = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 2
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
x = 8
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
trigger3 = animelem = 17
trigger4 = animelem = 18
trigger5 = animelem = 19
x = -8
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 20
x = -2

[State 0, ]
type = Helper
triggerall = var(53) <= 2
trigger1 = anim = 195 && Animelem = 11
helpertype = normal
name = "Superpulser"
ID = 999
stateno = 999
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 195, hah]
type = playsnd
triggerall = var(53) <= 2
trigger1 = Animelem = 11
value = 3,1

[State 195, SPEAK]
type = playsnd
trigger1 = time = 4
value = 0, 55
channel = 0

[State 195, vars >_>]
type = varadd
trigger1 = var(53) <= 2
trigger1 = animelemtime(11) = 0
v = 53
value = 1

;[State 0, VarAdd]
;type = VarAdd
;triggerall = fvar(38) < 7
;trigger1 = anim = 195
;trigger1 = animelem = 10
;fvar(38) = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = A
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
movetype = I

[State 195, I love taunts that hit]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
hitflag = MAFD
guardflag = L
animtype = medium
damage = 50
pausetime = 0,0
sparkno = S808
guard.sparkno = S806
sparkxy = -10,-10
hitsound = S1,3
guardsound = S2,4
ground.type = trip
ground.slidetime = 20
ground.hittime = 15
ground.velocity = -2.3,-7.9
air.velocity = -2.7,-7.9
guard.velocity = -8.5
getpower = ifelse(!numhelper(3045),200,0)
givepower = 0
fall = 1
fall.recovertime = 40
yaccel = fvar(12) + 0.25

[State 195, hah]
type = playsnd
trigger1 = Animelem = 5
value = 2,2
persistent = 0
ignorehitpause = 1
[State 195, hah]
type = playsnd
trigger1 = Animelem = 11
value = 1,53

[State 195, gotta take a shit]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Pulse Effect
[Statedef 999]
type    = S
movetype = I
physics = S
sprpriority = 4
anim = 9741
ctrl = 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,ceil(fvar(1)*2)
ignorehitpause = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1;parentdist x
y = 1;parentdist y

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(0) = parent,anim

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(1) = parent,animelemno(0)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time
value = var(0)
elem = var(1)

[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(0) = 11.2

[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(1) = 0.015

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+fvar(1),1+fvar(1)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = floor(0-fvar(0)),floor(0-fvar(0)),floor(0-fvar(0))

[State 0, ]
type = DestroySelf
trigger1 = time >= 22
;--------------------------------
;Lose (Time Over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,200]
flag = roundnotover

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,58
channel = 0

[State 180, 0]
type = Nothitby
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Important thing, this!
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
;-------------------------------------------------------------------------------
[Statedef 180]
type = S

;[State 0, Helper]
;type = Helper
;trigger1 = matchover
;trigger1 = !numhelper(1899)
;helpertype = normal
;name = "Winquote"
;ID = 1899
;stateno = 1899
;ownpal = 1
;supermovetime = 65535
;pausemovetime = 65535

;[State 180, 1]
;type = ChangeState
;trigger1 = var(59) = 1
;trigger1 = random < 500
;value = 183

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = ifelse(numhelper(3305)||!winko, 181,181+random%3)

;-------------------------------------------------------------------------------
;Sorry excuse of a winpose
[Statedef 181]
type = S
ctrl = 0
anim = 180

[State 180]
type = assertspecial
trigger1 = Time <= 100
flag = roundnotover

[State 180, playsnd]
type = playsnd
triggerall = !NumHelper(180)
trigger1 = Animelem =  4
value = 1, 44
;-------------------------------------------------------------------------------
;Sorry excuse of a winpose
[Statedef 182]
type = S
ctrl = 0
anim = 20
sprpriority = 3
;facep2 = 1

[State 180]
type = assertspecial
trigger1 = 1
flag = roundnotover

[State 181]
type = velset
trigger1 = anim = 20
x = const(velocity.walk.fwd.x)

[State 181]
type = changestate
triggerall = Time > 0
trigger1 = pos x >= ((playerID(enemynear,ID), pos x) - 80) && pos x <= ((playerID(enemynear,ID), pos x) + 80)
value = 185+random%2

;[State 181]
;type = changestate
;triggerall = Time > 0
;triggerall = var(26) != 1
;trigger1 = pos x >= ((playerID(enemynear,ID), pos x) - 80)*ifelse((facing = -1), -1,1)
;value = 182

;-------------------------------------------------------------------------------
;Sorry excuse of a winpose
[Statedef 183]
type = S
ctrl = 0
anim = 182

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 2
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 6
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
x = 8

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "BRO"
ID = 1831
stateno = 1831
pos = 2,0
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 180]
type = assertspecial
trigger1 = Time <= 200
flag = roundnotover

[State 180, playsnd]
type = playsnd
trigger1 = time = 0
value = 1, 63
channel = 0

[State 180, playsnd]
type = playsnd
trigger1 = Animelem =  6
value = 1, 53

;-------------------------------------------------------------------------------
; Never forget...
[Statedef 1831]
type = S
ctrl = 0
anim = 1821
sprpriority = 10

[State 0, VarSet]
type = VarAdd
trigger1 = fvar(0) < 1
fvar(0) = 0.05
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(0) = ceil((cos(gametime*.01)*168)*fvar(0))

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(0), 256-var(0)
ignorehitpause = 1


;---------------------------------------
;Sorry excuse of a winpose
[Statedef 185]
type = S
ctrl = 0
anim = 1020
velset = 0,0
sprpriority = 3

[State 180]
type = assertspecial
trigger1 = Time <= 140
flag = roundnotover

[State 400, 1]
type = Helper
trigger1 = Anim = 1020 && Animelem = 3
name = "molotov"
pos = 50,-80
stateno = 1025
id = 1025
ownpal = 1
pausemovetime = 34

[State 400]
type = changestate
trigger1 = random < 500
trigger1 = Anim = 1020 && animtime = -1
value = ifelse(random<500,181,183)

[State 400]
type = changeanim
trigger1 = Anim = 1020 && animtime = 0
value = 0

;---------------------------------------
;Sorry excuse of a winpose
[Statedef 186]
type = S
ctrl = 0
anim = 186
velset = 0,0
sprpriority = 3

[State 180]
type = assertspecial
trigger1 = Time <= 140
flag = roundnotover

[State 400]
type = changestate
trigger1 = animtime = 0
value = ifelse(random<500,185,181)


;---------------------------------------------
[Statedef 9020]
Type = S
ctrl = 0
anim = 5110
velset = 0,0
sprpriority = 2

[State 180]
type = assertspecial
trigger1 = Time <= 97
flag = roundnotover

[State 0, PalFX]
type = PalFX
trigger1 = Time%1 = 1
time = 1
palfx.add = 255,255,255
palfx.mul = 128,128,128
;sinadd = 0,0,0,10
invertall = 0
color = 0
;ignorehitpause =
;persistent =

;----------------------------------------------------------------------
;Game intro
[Statedef 190]
type = S
ctrl = 0
anim = 11

[State 190, Hmph]
type = playsnd
trigger1 = time = 0
value = 190, random%4
channel = 0
persistent = 0

[State 190]
type = changeanim
trigger1 = time = 78
value = 190

[State 190]
type = changestate
trigger1 = animtime = 0 && anim = 190
value = 0
ctrl = 0

[State 190, 6]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 7]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0
;------------------------------------------------------------------------------
;STUFF THAT I RIPPED OFF FROM THE_NONE FOR THE SUPERBG
; Super Spark
[Statedef 3900]
type    = S
movetype= I
physics = N
anim = 9741
velset = 0,0
ctrl = 0

[State 0]
type = posset
trigger1 = 1
value = 0,0

[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(0) = -18
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
fvar(0) = 0.2

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = parent,stateno != 4000
anim = 860
ID = 2999
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = parent,stateno != 3301
anim = 876
ID = 2998
bindtime = -1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = parent,stateno != 4000
anim = 860
ID = 2997
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 869
ID = 2996
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 860
ID = 2995
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 2,2
sprpriority = 100
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 868
ID = 2994
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 90
ontop = 1
ownpal = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2999)
ID = 2999
scale = 1+(fvar(0)/2),1+(fvar(0)/2)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2998)
ID = 2998
scale = 1+(fvar(0)/40),1+(fvar(0)/40)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2997)
ID = 2997
scale = 1+(fvar(0)/16),1+(fvar(0)/16)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2996)
ID = 2996
scale = 1+(fvar(0)/0.6),1+(fvar(0)/0.6)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2995)
ID = 2995
scale = 2-(fvar(0)/2.4),2-(fvar(0)/2.4)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2994)
ID = 2994
scale = 1-(fvar(0)/3),1-(fvar(0)/3)
[State 0, PalFX]
type = PalFX
trigger1 = time != 0
time = 3
add = var(0),var(0),var(0)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(2996)
trigger1 = var(0) < -250
id = 2996
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(2994)
trigger1 = var(0) < -250
id = 2994
[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) < -250

; Super BG
[Statedef 3901]
type    = S
movetype= I
physics = N
anim = 9741
velset = 0,0
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time >= 13
var(0) = -7
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
fvar(0) = 0.09
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(1) = floor(60/time)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3905
ID = 2989
pos = 30,240
postype = back
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
vel = 0,0
sprpriority = -9800
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3906
ID = 2988
pos = 160,120
postype = left
bindtime = 1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
vel = 0,-1
scale = 1,1
sprpriority = -9805
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3906
ID = 2987
pos = 160,120
postype = left
bindtime = 1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
vel = 0,1
sprpriority = -9805
ownpal = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2989)
ID = 2989
pos = 30+var(1),240
postype = back
vel = 0,0
accel = 0,0
bindtime = -1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2987)
ID = 2987
scale = 1+(fvar(0)),-1+(fvar(0))
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2988)
ID = 2988
scale = 1+(fvar(0)),1-(fvar(0))
[State 0, PalFX]
type = PalFX
trigger1 = time != 0
time = 3
add = var(0),var(0),var(0)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,23
volume = 255

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(2989)
trigger1 = var(0) < -250
id = 2989
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(2988)
trigger1 = var(0) < -250
id = 2988
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(2987)
trigger1 = var(0) < -250
id = 2987


[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) < -250

; Super Sliders
[Statedef 3910]
type    = S
movetype= I
physics = N
anim = 3910
velset = 0,0
ctrl = 0
sprpriority = -9999

;[State 52, 2]
;type = PosAdd
;trigger1 = time > 0
;x = -ceil(ScreenPos X-FVar(1))
;y = -ceil(ScreenPos Y-FVar(2))

;[State -2,KO]
;type = VarSet
;trigger1 = 1
;fvar(1) = ScreenPos X

;[State -2,KO]
;type = VarSet
;trigger1 = 1
;fvar(2) = ScreenPos Y

[State 0, Test]
type = Screenbound
trigger1 = 1
movecamera = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger2 = parent,stateno = [3000,3501]
trigger2 = parent,time = 1
var(5) = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(5) = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = ifelse(var(0)>=150,-620,10)

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0-ceil(screenpos y - pos y)+120

[State 0, PosSet]
type = PosAdd
trigger1 = 1
x = -20 - backedgedist - var(0)

[State 0, VarSet]
type = VarAdd
trigger1 = var(5) < 8
fvar(0) = 32

[State 0, VarSet]
type = VarAdd
trigger1 = var(5) >= 50
trigger1 = parent,stateno != 3500
fvar(0) = -8

[State 0, VarSet]
type = VarSet
trigger1 = fvar(0) > 256
fvar(0) = 256

[State -2]
type = varset
trigger1 = facing = -1
v = 28
value = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = ceil((fvar(0))),ceil(256-(fvar(0)))

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,stateno = 3100
;trigger1 = parent,time = 0
;trigger2 = parent,stateno = 3501
;trigger2 = parent,movehit
value = 3911

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(5) >= 50
trigger1 = fvar(0) <= 0

; BBBreak backround
[Statedef 3911]
type    = S
movetype= I
physics = N
anim = 864
velset = 0,0
ctrl = 0
sprpriority = -9999

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 256
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 2,2
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger2 = parent,stateno = 3100
trigger2 = parent,time = 1
var(5) = 0
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(5) = 1
[State 0, PosSet]
type = PosSet
trigger1 = 1
x = 0
y = 0-ceil(screenpos y - pos y)+120
[State 0, VarSet]
type = VarAdd
trigger1 = var(5) < 8
fvar(0) = 32
[State 0, VarSet]
type = VarAdd
trigger1 = var(5) >= 50
trigger1 = (parent,stateno != 3100) || (parent,anim=3105)
fvar(0) = -6
[State 0, VarSet]
type = VarSet
trigger1 = fvar(0) > 256
fvar(0) = 256
[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = ceil((fvar(0))),ceil(256-(fvar(0)))

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(5) >= 50
trigger1 = fvar(0) <= 0

;---------------------------------------------------------------------------
; CARL WINSLOW OF DOOM
; fvar(0)
[Statedef 9999]
type    = S
movetype= A
physics = N
juggle  = 0
PowerAdd= 0
VelSet = 0,0
anim = 9002

[State 0, VarAdd]
type = VarAdd
trigger1 = NumExplod(9999)
fvar(0) = 0.001

[State 0, StopSnd]
type = StopSnd
trigger1 = NumExplod(9999)
channel = -1
ignorehitpause = 1
persistent = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = NumExplod(9999)
value = 666,666
volume = 255
channel = 0
abspan = 0
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = movecontact
ignorehitpause = 1
flag = nokosnd
flag2 = nokoslow

[State 1000, 5]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 0
priority  = 5
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = -10,-90
hitsound   = -1;S9999,0
guardsound = -1
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
air.velocity = 0,0
fall = 1
yaccel = .5
getpower = 0
givepower = 0
id = 9999
nochainid = 9999
numhits = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = movecontact
value = -9999
ID = -1
kill = 1
absolute = 0

[State 0, Explod]
type = Explod
trigger1 = movecontact
anim = 9001
ID = 9999
;pos = 160,120
pos = 150+ceil(10*fvar(0)),60+ceil(60*fvar(0))
postype = left   ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
removetime = 518
supermovetime = 518
pausemovetime = 518
scale = 0.5+fvar(0),0.5+fvar(0)
sprpriority = 5
ignorehitpause = 1
persistent = 0
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = NumExplod(9999) = 1
ID = 9999
pos = 150+ceil(10*fvar(0)),60+ceil(60*fvar(0))
postype = left
bindtime = -1
scale = 0.5+fvar(0),0.5+fvar(0)
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = NumExplod(9999) = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noFG

[State 0, Pause]
type = Pause
trigger1 = NumExplod(9999)
time = 518
movetime = 518
ignorehitpause = 1
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 520
trigger1 = !NumExplod(9999)
ignorehitpause = 1
persistent = 0


[Statedef -2]

[State 0, VarSet]
type = VarSet
trigger1 = roundstate != 0
var(49) = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) )
ignorehitpause = 1


[State because DefenceMulSet wasn't that reliable]
type = LifeAdd
trigger1 = numhelper(3045)
trigger1 = gethitvar(damage)
value = 0 - floor(gethitvar(damage)*0.15)
kill = 1
absolute = 1
ignorehitpause = 1
[State Crit sound enemy]
type = PlaySnd
triggerall = numhelper(3045)
trigger1 = numenemy
trigger1 = enemynear,gethitvar(damage)
value = S4,ifelse((enemynear,gethitvar(damage))<=35,5+random%5,ifelse((enemynear,gethitvar(damage))>=90,10+random%3,0+random%5))
ignorehitpause = 1
[State Crit sound self]
type = PlaySnd
triggerall = numhelper(3045)
trigger1 = gethitvar(damage)
value = S4,ifelse((gethitvar(damage))<=35,5+random%5,ifelse((gethitvar(damage))>=90,10+random%3,0+random%5))
ignorehitpause = 1
[State Crit sound throws]
type = PlaySnd
triggerall = numhelper(3045)
trigger1 = stateno = 3021
trigger1 = animelem = 8
trigger2 = stateno = 3022 || stateno = 3023
trigger2 = animelem = 2
trigger3 = stateno = 1201
trigger3 = numtarget
trigger3 = target,stateno = 1208
trigger3 = target,time = 1
value = S4,ifelse(stateno!=3021,10+random%3,0+random%5)
ignorehitpause = 1

[State 0, Eglible for a fatality?]
type = VarSet
triggerall = var(52) = 0
trigger1 = win
trigger2 = numenemy
trigger2 = enemynear,teammode = turns
var(52) = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time = 1
trigger1 = stateno = 5200 || stateno = 5210
value = S1,18
channel = 0
ignorehitpause = 1

[State 1120, Jump Spark]
type = explod
trigger1 = stateno = 9000
trigger1 = Time = 1
trigger2 = stateno = 40
trigger2 = animtime = 0
trigger3 = stateno = 45
trigger3 = time = 1
id = 803
anim = 803
pos = 0,0
scale = 1, 1
sprpriority = 2
;ignorehitpause = 1
;persistent = 0

; Land sounds
[State 9000, PlaySnd]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno = 106 || stateno = 52
value = 1,ifelse(stateno=52,35,53)

[State 1120, Land Spark]
type = explod
trigger1 = time = 1
trigger1 = stateno = 106 || stateno = 52
id = 805
anim = 805
pos = 0,0
scale = 1, 1
sprpriority = 2
ignorehitpause = 1
persistent = 0

[State -2, Reset just in case]
type = VarSet
trigger1 = time = [0,1]
var(25) = 0
ignorehitpause = 1

[State -2,7]
type = Varset
trigger1 = Stateno = 190
v = 2
value = 0

[State -2,9]
type = Varset
trigger1 = stateno = 800
v = 13
value = 1

[State -2]
type = Helper
trigger1 = time = 1
trigger1 = Stateno = 5200 || stateno = 5210
helpertype = normal
name = "Superpulser"
ID = 999
stateno = 999
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State -2, 4]
type = VarSet
trigger1 = movetype = I
fv = 0
value = 1.0

; Tick fix to allow proper cmd triggering
[State -2, Tick Fix]
Type = CtrlSet
Triggerall = !ctrl
Trigger1 = (stateno=52 || stateno=101 || stateno=106 || stateno=5120) && !animtime
Trigger2 = (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
Trigger3 = (stateno = [200,999]) && !animtime;basic attacks
Trigger4 = (stateno = 1000 || stateno = 1010) && !animtime;advanced attacks
Trigger5 = (stateno = 3001 || stateno = 3011 || stateno = 3012) && !animtime;special attacks
Value = 1

[State -2, Ow Sound]
type = PlaySnd
triggerall = alive
triggerall = time = 0
triggerall = random < 500
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
trigger4 = stateno = 5070
trigger5 = stateno = 5100
trigger5 = random < 100
value = 10,0+(random%13)
channel = 0
[State -2, Ow Sound]
type = PlaySnd
trigger1 = stateno = 5120
trigger1 = time = 1
trigger1 = random < 500
value = 10,13+(random%2)
channel = 0

[State -2, stuff]
type = varset
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State -2, more stuff]
type = varset
trigger1 = command = "holdback"
sysvar(1) = 2

[State -2, ready the airdash]
type = varset
trigger1 = stateno = 52
trigger2 = stateno = [1100,1140]
trigger2 = statetype = S
var(27) = 0

[State -2, StopSnd]
type = StopSnd
trigger1 = var(17) = 0
channel = 2

[State -2,var]
type = varset
trigger1 = Stateno != 1500 
var(17) = 0

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno = 1525
;trigger2 = !Anim = 1500 && time > 30
;trigger3 = var(17) = 0
id = 1504
ignorehitpause = 1
persistent = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 1525
trigger1 = power = 5000
trigger1 = time = 1
channel = 2
value = 9001,2

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "proration = %f, accel = %f, x = %f, h = %d"
params = fvar(13),fvar(12),p2bodydist x,var(49)
ignorehitpause = 1


[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you to treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(55):=0
var(55) = 1	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

[State -2, Carl Winslow of Doom]
type = Helper
triggerall = Roundstate = 2 && NumHelper(9999) = 0 && movetype = H
trigger1 = enemynear,authorname="choiyer"
trigger2 = enemynear,authorname="Shinra358"
trigger3 = enemynear,authorname="tengu"
trigger4 = enemynear,authorname="Seravy"
helpertype = normal
name = "Carl Winslow"
ID = 9999
stateno = 9999
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
size.xscale = 0.5
size.yscale = 0.5


;--------------------------------------
[Statedef -3]

;[State -3, Record Turn]
;type = VarSet
;triggerall = WinKO
;trigger1 = Anim = [5,6]
;v = 18
;value = 1

[State Graviter Varset]
type = VarSet
trigger1 = numtarget
trigger2 = fvar(10):=0
fvar(10) = target,gethitvar(hitcount)
ignorehitpause = 1
[State Graviter Varset]
type = VarSet
trigger1 = numtarget
;trigger2 = fvar(12):=0
fvar(12) = 0.44 + ifelse( (fvar(10)/398)<0.4, (fvar(10)/398) , 0.4)
IgnoreHitPause = 1
[State Graviter Reset]
type = VarSet
trigger1 = !numtarget
fvar(12) = 0.44
IgnoreHitPause = 1
;[State Dampender Varset]
;type = VarSet
;trigger1 = numenemy
;trigger1 = enemynear, movetype = H
;trigger1 = enemynear, stateno != [120,160]
;trigger1 = EnemyNear, gethitvar(hitcount) > 0
;fvar(13) = EnemyNear, gethitvar(hitcount)
;ignorehitpause = 1
;[State Dampender Reset]
;type = VarSet
;trigger1 = !numenemy
;trigger2 = enemynear, movetype != H
;trigger3 = enemynear, stateno = [120,160]
;fvar(13) = 0
;ignorehitpause = 1
[State Prorator Reset]
type = VarSet
trigger1 = !numenemy
trigger2 = p2movetype != H || (!enemynear,gethitvar(hitcount))
trigger2 = !movehit || movereversed
fvar(13) = 1
ignorehitpause = 1
;[State Dampender set]
;type = VarSet
;trigger1 = p2movetype=H
;trigger1 = p2stateno!=[120,169]
;fvar(14) = ifelse(fvar(13)/10>.7+(.2*numhelper(3045)),.7+(.2*numhelper(3045)),fvar(13)/10)
;ignorehitpause = 1
;[State Dampender Reset]
;type = VarSet
;trigger1 = p2movetype!=H
;trigger2 = p2stateno=[120,169]
;fvar(14) = 0
;ignorehitpause = 1
[State -3, Dampender]
type = AttackMulSet
;trigger1 = numtarget
;trigger1 = EnemyNear, gethitvar(hitcount) > 0
;value = ifelse((enemynear,gethitvar(hitcount) = [1,3]),1,ifelse((enemynear,gethitvar(hitcount) = [4,5]),.7,ifelse((enemynear,gethitvar(hitcount) =[6,7]),.5,ifelse((enemynear,gethitvar(hitcount) >= 8),.3,0))))
trigger1 = 1
;value = ifelse(p2movetype!=H||(p2stateno=[120,169]),1+(.2*numhelper(3045)),1+(.2*numhelper(3045))-fvar(14))
value = fvar(13)*(1+(.15*numhelper(3045)))
ignorehitpause = 1
;[State -3, Dampender]
;type = AttackMulSet
;trigger1 = !numtarget
;value = 1
;ignorehitpause = 1

; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
; Feel free to move this controller to your character's intro state for slightly
; better efficiency.
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

; If you want to use the Guard mode, Dummy mode, Distance, or Button jam dummy
; control options in Training mode without activating the dummy's AI while
; working on the character, then all you need to do is temporarily disable
; this controller.  Or, if you want to permanently disable this controller in
; Training mode, then you could use the Training mode detection code available
; from my site ( http://www.mugenguild.net/~winane/ ), and then just add a
; "(var(59)&63)>30" triggerall to this controller.
; Alternatively, you can just set "Dummy control" to "Manual", press a P2 button
; to kill the AI helper, and then set dummy control back to "Cooperative".  (In
; fact, setting dummy control to manual isn't even necessary, if you press the
; P2 button prior to the first time you pause.)
[State -3, AI Helper]
type = Helper
triggerall = !var(58) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(58) = 1

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if AI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(58)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
var(58) = 1

; These next two controllers must be placed here, after the above XOR
; VarSet controller and before the below GameTime VarSet controller.
[State -3, fiXOR]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

[State -3]
type = varrandom
trigger1 = 1
v = 32
range = 6


