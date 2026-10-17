;====================================================
;================SYS=================================
;====================================================

;-----------------------------------------------------------------------------------
; Stand
[Statedef 0,Stand]
type = S
physics = S
sprpriority = 2;0


[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = prevstateno!=[180,198]
value = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = prevstateno=[180,198]
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = life <= 300
trigger1 = time = 0
value = 1

[State 0, 1]
type = ChangeAnim
triggerall = life <= 300
trigger1 = Anim != 1 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 1

[State 0, Helper]
type = Helper
triggerall = !numhelper(50034) 
trigger1 = life <= 300 && anim=1
trigger1 = time >= 0 && time%30=0;
helpertype = normal ;player
name = "AfterImage3REd"
ID = 50034
stateno = 50034
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim=1 && time >= 2
trigger1 = time%90=0 && (life <=300 && life >=200)
trigger2 = time%60=0 && (life <=199 && life >=1)
value = S8,18
volumescale = 250

[State 0, 1]
type = ChangeAnim
triggerall = life > 300
trigger1 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=2
trigger1 = animtime=0
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime=0
trigger1 = anim=3
value = 0
;----------------------------------

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

;--------------------------------------
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time=0
time = 0
ignorehitpause = 1
persistent = 1
;--------------------------------------

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050



;----------------------------------------------------------------------------------------------------------------------------
; Crouching
;Stand to Crouch
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 2;0

[State 10, Anim]
type = ChangeAnim
trigger1 = !time && anim = 12
value = 10
elem = 3 -animelemno(0)

[State 10, Anim]
type = ChangeAnim
trigger1 = anim != 10
value = 10

[State 10, End]
type = changestate
trigger1 = !Animtime
value = 11

;Crouching
[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 2;0

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11

;Crouch to Stand
[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 2;0

[State 12, Anim]
type = ChangeAnim
trigger1 = !time && anim = 10
value = 12
elem = 3 -animelemno(0)

[State 12, Anim]
type = ChangeAnim
trigger1 = anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !Animtime
value = 0

;----------------------------------------------------------------------------------------------------------------------------

; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0
anim=21

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 0, 1]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 1
trigger2 = Anim = 1 && AnimTime = 0
value = 20

[State 0, 1]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 1
trigger2 = Anim = 1  && AnimTime = 0
value = 21


 ;-------------------------------------------------------------------------------
 ;jump
[Statedef 40, Jump Start]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 2;0
faceP2 = 1


[State 40, Direction]
type = VarSet
trigger1 = !AILevel
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
var(3) = ifElse(command = "Super Jump", 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse((P2BodyDist x >= 160 || Random < (125 * (AILevel ** 2 / 64.0))), 3, 0)

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = (EnemyNear, StateType = C) && Random < 500
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)


[State 40]
type = Explod
triggerall = Var(3) != 3
trigger1 = !AnimTime
anim = 7105
ID = 7105
pos = 0, 10 ;ifelse(sysvar(1)=0, 0, ifelse(sysvar(1)=1, -35, 35)),35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = ifelse(sysvar(1)=0, 0.25*const(velocity.jump.neu.x), ifelse(sysvar(1)=1, 0.25*const(velocity.jump.fwd.x), 0.25*const(velocity.jump.back.x))),0.15*const(velocity.jump.y)
removetime = 30
scale = .75,.75
sprpriority = 10
ownpal = 1
removeongethit = 0


[State 40, Explod]
Type = Explod
triggerall = !sysvar(1)
triggerall = Var(3) = 3
trigger1 = !AnimTime
Anim = 10043
ID = 10043
Pos = 0,13;
Ownpal = 0
Scale = .3,.3;
SprPriority = 3
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 40, Explod]
Type = Explod
triggerall = sysvar(1) = 1
triggerall = Var(3) = 3
trigger1 = !AnimTime
Anim = 10040
ID = 10040
Facing = 1
Pos = -10,13;
Ownpal = 0
Scale = .3,.3
SprPriority = 3
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 40, Explod]
Type = Explod
triggerall = sysvar(1) = -1
triggerall = Var(3) = 3
trigger1 = !AnimTime
Anim = 10040
ID = 10040
Facing = -1
Pos = 10,13
Ownpal = 0
Scale = .3,.3
SprPriority = 3
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 60, Jump Sound]
type = PlaySnd
trigger1 =  !AnimTime
value = S0,ifelse((var(3) = [2,3]),4,5)
;volumescale = 50
channel = -1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, VelMul]
type = VelMul
trigger1 = !AnimTime 
x = 1
y = 1.01

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 50, Jump Up]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

;------------------------------------------
[State 700, changestate daishincanAttack]
type = ChangeState
triggerall=!AIlevel && var(40)=1
trigger1 = command = "y" 
value = 3702
[State 0, BGPalFX]
type = BGPalFX
triggerall=!AIlevel && var(40)=1
trigger1 = Time > 0
time =1
add = -80,-80,-80
[State 0, AllPalFX]
type = BGPalFX
triggerall=!AIlevel && var(40)=1
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128
;---------------------------------------------------

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)); + 10 * (var(3) = [1,2])
persistent = 0
;-----------

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y >-2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
;  (empty state for compatibility)
[Statedef 51, Jump Down]
type    = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
;
[Statedef 52, Jump Land]
type    = S
physics = S
ctrl = 0
anim =47

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3

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
trigger1 = Time = 3
value = 1

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 7106
ID = 7106
pos = 0,7
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 34
scale = 1,.5
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------------------------------------------------------------------------
; Dash Forward
[Statedef 100]
type = S
physics = S
anim = 100
ctrl = 0
sprpriority = 2;

[State 100, PlaySnd]
type =  PlaySnd
trigger1 = Anim = 101
value = S0,7;
persistent = 0

[State 108,VelAdd]
type = VelSet
trigger1 = !Time
x = 30

[State 108,VelAdd]
type = Veladd
trigger1 = Time<4
x = 1

[State 108,VelAdd]
type = VelSet
trigger1 = Time<7
y=0

[State 108,VelAdd]
type = Velset
trigger1 = Time>6
trigger2 = p2dist x < 30 && P2dist y = [-15,15]
x = 3

[State 100]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, Jump]
type = changestate
trigger1 = !AIlevel
trigger1 = command = "holdup"
value = 40

[State 100, Jump]
type = changestate
trigger1 = AIlevel && random < 25
value = 40

[state 0,afterimage]
type=afterimage
trigger1=!time
time=12
length=12
palbright=0,0,0
palcontrast=0,0,255
palpostbright=0,0,0
paladd=0,0,0
palmul=0.5,0.5,0.5
timegap=2
framegap=5
trans=add

[State 100, Explod]
type = Explod
trigger1 = !Time
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1
[State 100, Dash]
type = Explod
trigger1 = !Time
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1
[State 100, Dash]
type = Explod
trigger1 = !Time
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 =time < 7
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

[State 100, 1]
type = ChangeState
trigger1 = Time = 10
value = 101

;-------------------------------------------------------------------------------


;-stop --------------------------
[Statedef 101]
type = S
physics = N;S
movetype = I
anim = 101
ctrl = 0
sprpriority = 2;0

;-------RUN--------------
[State 0, VelSet]
type = VelSet
triggerall = prevstateno = 100
trigger1 = time=0
x = 7

[State 0, VelMul]
type = VelMul
triggerall = prevstateno = 100
trigger1 = time > 0
x = 0.85
;-----------------------

[State 101, PlaySnd]
type =  PlaySnd
trigger1 = Animelem = 1
value = S0,7;
persistent = 0

[State 101, Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprpriority = 3
postype = p1
pos = 20, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 101, 1]
type = ChangeState
trigger1 = Time = 12
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Back Dash
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 2;0

[state 0,afterimage]
type=afterimage
trigger1=!time
time=23
length=6
palbright=0,0,0
palcontrast=0,0,255
palpostbright=0,0,0
paladd=0,0,0
palmul=0.5,0.5,0.5
timegap=1
trans=add

[State 0, NotHitBy]
type = NotHitBy
trigger1 =time = 0
value = ,NA,NP,NT
time = 2

[State 105, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S0,10

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106


;----------------------------------------------------------------------------------------------------------------------------
; Back Dash (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 105, Explod]
type = Explod
trigger1 = !Time
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
pos = -5,0
scale = .5,.5
vel = -1,0
ownpal = 1

[State 106, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S0,11

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 4]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Dash Forward air
[StateDef 108]
type = A
movetype= I
physics = A
velset = 0,0
ctrl = 0
anim = 100
PowerAdd = -100

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1
;
[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

[State 100, Dash]
type = Explod
trigger1 = !Time
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1
[State 100, Dash]
type = Explod
trigger1 = !Time
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = !Time
time = 5
freq = 75
ampl = -3

[State 0, Helper]
type = Helper
trigger1 = Time=1
helpertype = normal
name = "Fx"
ID = 111
stateno = 111
pos = 0,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[state 0,afterimage]
type=afterimage
trigger1=!time
time=12
length=12
palbright=0,0,0
palcontrast=0,0,255
palpostbright=0,0,0
paladd=0,0,0
palmul=0.5,0.5,0.5
timegap=2
framegap=5
trans=add

[State 108,VelAdd]
type = VelSet
trigger1 = !Time
x = 15

[State 108,VelAdd]
type = Veladd
trigger1 = Time<4
x = 1

[State 108,VelAdd]
type = VelSet
trigger1 = Time<7
y=0

[State 108,VelAdd]
type = Velset
trigger1 = Time>6
trigger2 = p2dist x < 30 && P2dist y = [-15,15]
x = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S0,12
volumescale = 290

[State 0, ChangeState]
type = ChangeState
trigger1 = Time=10
trigger2 = p2dist x < 30 && P2dist y = [-15,15]
value = 50
ctrl = 1


;----------------------------------------------------------------------
;Dash Back air
[StateDef 109]
Type = A
MoveType = I
Ctrl = 0
Anim = 101
VelSet = 0,0
PowerAdd = -100

[state 0,afterimage]
type=afterimage
trigger1=!time
time=12
length=12
palbright=0,0,0
palcontrast=0,0,255
palpostbright=0,0,0
paladd=0,0,0
palmul=0.5,0.5,0.5
timegap=2
framegap=5
trans=add

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1
;
[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

[State 100, Dash]
type = Explod
trigger1 = !Time
anim = 6005
id = 6005
pos = 44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1
[State 100, Dash]
type = Explod
trigger1 = !Time
anim = 6005
id = 6005
pos = 40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time=1
helpertype = normal
name = "Fx"
ID = 111
stateno = 111
pos = 0,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 0, VelSet]
Type = VelSet
Trigger1 = Time <= 5
X = -5

[State 0, VelAdd]
Type = VelAdd
Trigger1 = Time <= 2
X = (Vel X) * 5.0

[State 0, EnvShake]
type = EnvShake
trigger1 = !Time
time = 5
freq = 75
ampl = -3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S0,12
volumescale = 290

[State 0, ChangeState]
type = ChangeState
trigger1 = Time=10
trigger2 = p2dist x < 30 && P2dist y = [-15,15]
value = 50
ctrl = 1

;-------------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 111, helper dash]
type = S
movetype = I
physics = N
juggle = 0
ctrl = 0
velset = -2,0
anim = 6020

[State 0, AngleDraw]
Type=AngleDraw
Trigger1=1
Scale=0.0+((Time/12.0)*0.1),0.1+((Time/12.0)*0.5)

[State 0, Trans]
Type=Trans
Trigger1=1
Trans=AddAlpha
Alpha=Ceil(256.0-((Time/12.0)*256.0)),256

[State 0, DestroySelf]
type = DestroySelf
trigger1=Time=12
;===============================================================================

; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

;--------------------------------------
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time=0
time = 0
ignorehitpause = 1
persistent = 1
;--------------------------------------

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;HITC_SLIDE

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE


; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

;----
[State 5100, 22]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim        = 7110;+(sysvar(1) > 10)
id          = 7110
ownpal      = 1
sprpriority = 7
scale       = 0.5,0.5
;----------

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14


[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N


[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

;-----------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 700
value = S5,40+random%5
;--------------------------

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

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

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 8


[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 500
value = S5,50+random%2
channel=0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, Recover FX]
type = Explod
trigger1 = !Time
anim = 6075
ID = 6075
pos = -10,-18
postype = p1
removetime = -2
scale = .7,.7
ownpal = 1
sprpriority = 3

[State 5201, Snd]
type = playsnd
trigger1 = !time
value = S0,8

[State 5201, 6]
type = GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

;----------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 500
value = S5,50+random%2
channel=0
;---------------------------

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, Recover FX]
type = Explod
trigger1 = !Time
anim =6075
ID = 6075
pos = 0,-55
postype = p1
removetime = -2
scale = .7,.7
ownpal = 1
sprpriority = 3

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = S0,8

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

; Initialize (at the start of the round)
;[Statedef 5900]
;type = S
;
;[State 5900, 1] ;Clear all int variables
;type = VarRangeSet
;trigger1 = roundsexisted = 0
;value = 0
;
;[State 5900, 2] ;Clear all float variables
;type = VarRangeSet
;trigger1 = roundsexisted = 0
;fvalue = 0
;
;[State 5900, 3] ;Intro for round 1
;type = ChangeState
;trigger1 = roundno = 1
;value = 190


;********************======================================P2 HIT WALL********************======================================

;===============================================================================================================================
[Statedef 5600, HitWall I - golpe] ;360PH
Type     = U
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, Turn]
type = Turn
trigger1 = enemyNear,facing = facing

[State -1]
Type = PosSet
Trigger1 = Pos Y > 0
Y = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = HitFallSet
Trigger1 = 1
Value = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = OffSet
Trigger1 = Time >= 0
X = 1
Persistent = 4

[State -1]
Type = OffSet
Trigger1 = Time >= 2
X = -1
Persistent = 4

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = 1
Value = 5030

[State -1]
Type = ChangeState
Trigger1 = GetHitVar(HitShakeTime) = 0
Value = 5601

;-------------------------------------------------------------------------------
[Statedef 5601, HitWall I - deslice]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State -1]
Type = PlayerPush
Trigger1 = Time >= 0
Value = 0
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = 1
Edge = 0,-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VelSet
Trigger1 = Time = 0
X = -15

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 =! SelfAnimExist(5030)
Trigger1 =! SelfAnimExist(5035)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5035
Trigger3 = AnimTime = 0
Value = 5050

[State -1]
Type = SelfState
TriggerAll = BackEdgeDist > 0
Trigger1 = time > 29
Value = 5100

[State -1]
Type = ChangeState
TriggerAll = Time = [0,11]
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value = 5610 ; impact A

[State -1]
Type = ChangeState
TriggerAll = Time >=12
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value =5611 ; impact B

;---------------------------------------------------------------------------
[Statedef 5602, HitWall II - golpe]
Type     = U
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, Turn]
type = Turn
trigger1 = enemyNear,facing = facing

[State -1]
Type = HitFallSet
Trigger1 = 1
Value = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = OffSet
Trigger1 = Time >= 0
X = 1
Persistent = 4

[State -1]
Type = OffSet
Trigger1 = Time >= 2
X = -1
Persistent = 4

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 = 1
Value = 5030

[State -1]
Type = ChangeState
Trigger1 = GetHitVar(HitShakeTime) = 0
Value = 5603

;---------------------------------------------------------------------------
[Statedef 5603, HitWall II - deslice]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

;----
[State 212, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 212, Gravity]
type = VelAdd
trigger1 = 1
y = .35
;------

[State -1]
Type = PlayerPush
Trigger1 = Time >= 0
Value = 0
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = 1
Edge = 0,-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VelSet
Trigger1 = Time = 0
X = -15

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 =! SelfAnimExist(5030)
Trigger1 =! SelfAnimExist(5035)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5035
Trigger3 = AnimTime = 0
Value = 5050

[State -1]
Type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -12
Value = 5100

[State -1]
Type = ChangeState
TriggerAll = Time = [0,11]
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value = 5610 ; impact A

[State -1]
Type = ChangeState
TriggerAll = Time >=12
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value =5611 ; impact B


;===============================================================================
[Statedef 5604, HitWall III - golpe]
type    = U
movetype= H
physics = S
ctrl = 0

[State 4600]
type = Turn
triggerall = Time = 0
trigger1 = P2Dist X<0
trigger2 = enemy,facing=facing

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5605

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
[Statedef 5605, HitWall III - deslice]
type    = A
movetype= H
physics = N

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 =! SelfAnimExist(5030)
Trigger1 =! SelfAnimExist(5035)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5035
Trigger3 = AnimTime = 0
Value = 5050

[State -1]
Type = PlayerPush
Trigger1 = Time >= 0
Value = 0
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = 1
Edge = 0,-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 5050, 3]
type = VelSet
trigger1 = time = 0
x = -10
y = -4

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4

[State -1]
Type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -12
Value = 5100

[State -1]
Type = ChangeState
TriggerAll = Time = [0,11]
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value = 5610 ; impact A

[State -1]
Type = ChangeState
TriggerAll = Time >=12
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value =5611 ; impact B


;===============================================================================
[Statedef 5606, HitWall IV - golpe]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, Turn]
type = Turn
trigger1 = enemyNear,facing = facing

[State -1]
Type = PosSet
Trigger1 = Pos Y > 0
Y = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = HitFallSet
Trigger1 = 1
Value = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = OffSet
Trigger1 = Time >= 0
X = 1
Persistent = 4

[State -1]
Type = OffSet
Trigger1 = Time >= 2
X = -1
Persistent = 4

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = 1
Value = 5030

[State -1]
Type = SelfState
Trigger1 = p2dist y != 0
Value = 5030

[State -1]
Type = ChangeState
Trigger1 = GetHitVar(HitShakeTime) = 0
Value = 5607

;-------------------------------------------------------------------------------
[Statedef 5607, HitWall IV - deslice]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State -1]
Type = PlayerPush
Trigger1 = Time >= 0
Value = 0
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = 1
Edge = 0,-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VelSet
Trigger1 = Time =0
x = -8

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = ChangeState
TriggerAll = Time = [0,11]
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value = 5610 ; impact A

[State -1]
Type = ChangeState
TriggerAll = Time >=12
TriggerAll = BackEdgeDist <= 0
Trigger1 = 1
Value =5611 ; impact B

[State 5110, 11] ;If just died
type = SelfState
Trigger1 =  Time >=  20
value = 5100

;-------------------------------------------------

;================================================
[Statedef 5610, HitWall - impacto A]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time > 10
value = SCA,NA,SA,NP,SP,NT,ST
time = 1

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = time>8
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = time>8
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State -1]
Type = Width
Trigger1 = Time = [0,6]
Edge = -Const(Size.Air.Front),-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = Time >= 7
Trigger1 = Const(Size.Air.Front)-(Time-7) > 0
Edge = -Const(Size.Air.Front)+(Time-7),0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = HitFallSet
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= -30
Trigger2 = Vel Y > 4
Value = 1
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 =! SelfAnimExist(5030)
Trigger1 =! SelfAnimExist(5035)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5035
Trigger3 = AnimTime = 0
Value = 5050

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 140
ampl = -5
phase = 90

[State -1]
Type = VelSet
Trigger1 = Time = 5
X = -1.5
Y = -6.6

[State -1]
Type = VelAdd
Trigger1 = Time >= 6
Y = .48

[State -1]
Type = Turn
Trigger1 = Time = 0

[State -1]
Type = SelfState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value = 5100

;---------------------------------------------------------------------------
[Statedef 5611, HitWall - impacto B]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,NP,SP,NT,ST
time = 1

[State -1]
Type = Width
Trigger1 = Time = [0,6]
Edge = -Const(Size.Air.Front),-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = Time >= 7
Trigger1 = Const(Size.Air.Front)-(Time-7) > 0
Edge = -Const(Size.Air.Front)+(Time-7),0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = HitFallSet
TriggerAll = Time = 6
Trigger1 = 1
Value = 1
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = time>8
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = time>8
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 =! SelfAnimExist(5030)
Trigger1 =! SelfAnimExist(5035)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5035
Trigger3 = AnimTime = 0
Value = 5050

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 140
ampl = -5
phase = 90

[State -1]
Type = VelSet
Trigger1 = Time = 5
X = -1.5
Y = -6.6

[State -1]
Type = VelAdd
Trigger1 = Time >= 6
Y = .48

[State -1]
Type = Turn
Trigger1 = Time = 0

[State -1]
Type = SelfState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value = 5100

;---------------------------------------------------------------------------
[Statedef 5612, HitWall - helper]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim     = 99999
VelSet   = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7123
ID = 7123
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.4,0.4
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 7124
ID = 7124
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 7131
ID = 7131
pos = 0,5
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.4,0.4
sprpriority = -5
ownpal = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 213, Sound]
type = PlaySnd
trigger1 = Time = 0
value = S7,0;F808,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !Animtime




;********************======================================P2 HIT Floor********************======================================

;===============================================================================================================================
[Statedef 5630, HitFloor I - golpe]
type    = U
movetype= H
physics = S
ctrl = 0
;
[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = Pos Y < vel y
value = 5631

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = Pos Y >= vel y
value = 5632

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140
;;---------------------------------------------------------------------------
;;
[Statedef 5631, HitFloor I - deslice]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= abs(vel y)
value = 5632 ;GROUND_BOUNCE
;---------------------------------------------------------------------------
[Statedef 5632, HitFloor I - impacto]
type    = L
movetype= H
physics = S
ctrl = 0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = time>8
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = time>8
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 0, EnvShake]
type = EnvShake
trigger1 =  Time = 0
time = 40
freq = 70
ampl = -5

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = ceil(vel x)

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time=6
trigger1 = anim=5100
statetype = A
movetype = H
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = time=6
trigger1 = anim=5100
y = -15

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time=6
trigger1 = anim=5100
value = 5600

[State 0, HitVelSet]
type = HitVelSet
trigger1 = anim=5600
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim=5600
y = -2.5+time/8

[State 230, 5]
type = SelfState
trigger1 = anim=5600
trigger1 = vel y>0
trigger1 = pos y>-abs(vel y)
value = 5100
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 5600
value = time*45

[State 5050, 6]
type = ChangeState
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603
;;---------------------------------------------------------------------------
;;-------------------------------------------------------------------------------
[Statedef 5633, HitFloor I - helper FX]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim     = 99999;aux
VelSet   = 0,0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7142
ID = 7142
pos = 0,0
postype = p1 
removetime = -2
scale = .5,.5
sprpriority = -5
ownpal = 1
ignorehitpause=1
supermovetime =9999
pausemovetime =9999

[State 5100, 1]
type = Explod
trigger1 = time = 0
anim  = 7143
id = 7143
ownpal  = 1
sprpriority = -1
scale = 0.5,0.5
pos = 0,0
postype = p1 
ignorehitpause=1
supermovetime =9999
pausemovetime =9999

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7140
ID = 7140
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale=.6,.6
sprpriority = -5
ownpal = 1 
ignorehitpause=1
supermovetime =9999
pausemovetime =9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !Animtime

;;-------------------------------------------------------------------------------
[Statedef 5640, HitFloor II - golpe]
type    = U
movetype= H
physics = S
ctrl = 0

[State 4600]
type = Turn
triggerall = Time = 0
trigger1 = P2Dist X<0
trigger2 = enemy,facing=facing

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP(only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = 4) && (SelfAnimExist(5051))
value = 5051


[State 5000, 3] ;Anim for HIT_UP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = 5) && (SelfAnimExist (5061))
value = 5061

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5641


;---------------------------------------------------------------------------
; HITA_FALL - Before Ground
[Statedef 5641, HitFloor II - deslice]
type    = A
movetype= H
physics = N

[State 5050, 3]
type = VelSet
trigger1 = time = 0
x = -12
y = 12;

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4

[State 5050, 6]
type = ChangeState
;trigger1 = vel x>0 && frontedgebodydist<=3
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603

[State -1]
Type = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0); pos y > -vel y
Value = 5642

;-------------------------------------------------------------------------------
[Statedef 5642, HitFloor II - impacto]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time > 10
value = SCA,NA,SA,NP,SP,NT,ST
time = 1

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = time>8
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = time>8
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER
[State -1]
Type = HitFallSet
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= -30
Trigger2 = Vel Y > 4
Value = 1
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 0

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5101)
Trigger1 = Time = 0
Value = 5101

[State 0, EnvShake]
type = EnvShake
trigger1 =  Time = 0
time = 30
freq = 85
ampl = -5

[State -1]
Type = VelSet
Trigger1 = Time = 5
X = -1.5
Y = -6.6

[State -1]
Type = VelAdd
Trigger1 = Time >= 6
Y = .48

[State -1]
Type = SelfState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value = 5100

;---------------------------------------------------------------------------
[Statedef 5643, HitFloor II - helper FX]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim     = 99999
VelSet   = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7142
ID = 7142
pos = 0,0
postype = p1 
removetime = -2
scale =.5,.5
sprpriority = -5
ownpal = 1
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7140
ID = 7140
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale=.7,.7
sprpriority = -5
ownpal = 1 
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7144
ID = 7144
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 0.2,0.2
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 5100, 1]
type = Explod
trigger1 = time = 0
anim  = 7143
id  = 7143
ownpal  = 1
sprpriority = -1
scale  = 0.5,0.5
pos = 0,0
postype = p1 
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !Animtime
;
;
;;=========================================================================
;
;
;
;;==========================================================================
;;
[Statedef 5650, p2 Throw - deslice]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State -1]
Type = VelSet
Trigger1 = Time = 0
X = -7
Y = 25

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim2
trigger1 = time = 0
value = 5605

[State -1]
Type = ChangeState
Trigger1 = pos y > 10
Value = 5651
;---------------------------------------------------------------------------
;
[Statedef 5651, p2 Throw - impacto]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = animtime = 0
value = 5652

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
[Statedef 5652, p2 Throw - rebote]
type    = S
movetype= H
physics = N
ctrl=0

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = time>8
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = time>8
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = -1
length = 10
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 200,200,200
palpostbright = 0,0,0
paladd = -10,-10,-25
palmul = .85,.85,.85
timegap = 2
framegap = 1
trans = add

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 10

[State 5100, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 100
ampl = -4
phase = 90

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -1;-3
y = -11.5;-11

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim2
trigger1 = time = 0
value = 5605;anim ThrowSpin295

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = -20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*40

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -12
Trigger2 = BackEdgeDist <= 0
time = 1

[State 5050, 6]
type = ChangeState
;trigger1 = vel x>0 && frontedgebodydist<=3
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -12
type = SelfState
value = 5100


;---------------------------------------------------------------------------
[Statedef 5653, p2 Throw - helper FX]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
anim     = 99999;aux 
VelSet   = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1000, EnvColor]
type = EnvColor
triggerall = time = 0
trigger1 = 1
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7142
ID = 7142
pos = 0,0
postype = p1 
removetime = -2
scale = .5,.5
sprpriority = -5
ownpal = 1
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7144
ID = 7144
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = 0.2,0.2
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 5100, 1]
type = Explod
trigger1 = time = 0
anim  = 7143
id  = 7143
ownpal  = 1
sprpriority = -1
scale  = 0.5,0.5
pos = 0,0
postype = p1 
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7140
ID = 7140
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = .8,.8
sprpriority = -5
ownpal = 1 
ignorehitpause=1

[State 0, Explod bigRocks] 
type = Explod
triggerall = time <15
trigger1 = time%2=0
anim = 7145
id = 7145
postype = p1
pos = -8,0
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.13,.05),IfElse(Random <= 499,.13,.05)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
removeongethit = 1
ignorehitpause=1

[State 0, Explod bigRocks] 
type = Explod
triggerall = time <15
trigger1 = time%2=0
anim = 7145
id = 7145
postype = p1
pos = 8,0
facing = ifelse(random%2,1,-1)
vel = -Random/(-120),-Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.13,.05),IfElse(Random <= 499,.13,.05)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
removeongethit = 1
ignorehitpause=1

[State 5100, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 11
ampl = -25
phase = 270
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,8

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !Animtime
;
;
;;----------------------------------------------------------------------------
;
;

;---------------------------------------------------------------------------
;Hitshake Before Spin - 32 deg
[Statedef 5800]
type    = U
movetype= H
physics = S
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver 
value = 5805
;---------------------------------------------------------------------------
;Hitshake Before Spin - 45 deg
[Statedef 5801]
type    = U
movetype= H
physics = S
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5806
;---------------------------------------------------------------------------
;Hitshake Before Spin - 60 deg
[Statedef 5802]
type    = U
movetype= H
physics = S
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5807
;---------------------------------------------------------------------------
;Hitshake Before Spin - 60 deg - Slow Fall
[Statedef 5803]
type    = U
movetype= H
physics = S
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5808
;---------------------------------------------------------------------------
; Fall Spining - 32 deg
[Statedef 5805]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = -1
length = 10
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 200,200,200
palpostbright = 0,0,0
paladd = -10,-10,-25
palmul = .85,.85,.85
timegap = 2
framegap = 1
trans = add
ignorehitpause=1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 10

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time =0
x = 1
y = 1

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5600

[State 5050, 6]
type = ChangeState
;trigger1 = vel x>0 && frontedgebodydist<=3
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603

[State 230, 5]
type = SelfState
trigger1 = vel y>0
trigger1 = pos y>-vel y+25
value = 5100
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*32

;---------------------------------------------------------------------------
; Fall Spining - 45 deg
[Statedef 5806]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = -1
length = 10
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 200,200,200
palpostbright = 0,0,0
paladd = -10,-10,-25
palmul = .85,.85,.85
timegap = 2
framegap = 1
trans = add
ignorehitpause=1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 10

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time =0
x = 1
y = 1
;
[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5600

[State 5050, 6]
type = ChangeState
;trigger1 = vel x>0 && frontedgebodydist<=3
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603

[State 230, 5]
type = SelfState
trigger1 = vel y>0
trigger1 = pos y>-vel y+25
value = 5100
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*45
;---------------------------------------------------------------------------
; Fall Spining - 60 deg
[Statedef 5807]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = -1
length = 10
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 200,200,200
palpostbright = 0,0,0
paladd = -10,-10,-25
palmul = .85,.85,.85
timegap = 2
framegap = 1
trans = add
ignorehitpause=1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 10

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time =0
x = 1
y = 1

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5600

[State 5050, 6]
type = ChangeState
;trigger1 = vel x>0 && frontedgebodydist<=3
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603

[State 230, 5]
type = SelfState
trigger1 = vel y>0
trigger1 = pos y>-vel y+25
value = 5100
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*60
;---------------------------------------------------------------------------
; Fall Spining - 60 deg - Slow Fall
[Statedef 5808]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = -1
length = 10
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 200,200,200
palpostbright = 0,0,0
paladd = -10,-10,-25
palmul = .85,.85,.85
timegap = 2
framegap = 1
trans = add
ignorehitpause=1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 10

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time =0
x = 1
y = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5600

[State 5050, 6]
type = ChangeState
;trigger1 = vel x>0 && frontedgebodydist<=3
trigger1 = vel x<0 && backedgebodydist<=3
value = 5603

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2

[State 230, 5]
type = SelfState
trigger1 = vel y>0
trigger1 = pos y>-vel y+25
value = 5100
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*60
;---------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[Statedef 5840, p2 kokuyo - hit]
type    = S
movetype= H
physics = N
velset = 0,0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 5051

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5841

;-------------------------------------------------------------------------------
[Statedef 5841, p2 kokuyo - up]
type    = S
movetype= H
physics = N
ctrl = 0

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
y = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .08
ignorehitpause = 1

[State 0, velset]
type = velset
trigger1 =  time>5
x = ifelse(random<500,7,-7)
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time>5
value = ifelse(random<500,10,-10)
ignorehitpause = 1

[State 0, velset]
type = velset
trigger1 =  HitOver
x = 0
ignorehitpause = 1
 
[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5842;5050 ;HITA_FALL

;-------------------------------------------------------------------------------
[Statedef 5842, p2 kokuyo - down]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 230, 5]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100
ctrl = 0


;---------------------------------------------------------------------------
[Statedef 5810, p2 Daishinkan]
type    = S
movetype= H
physics = N
ctrl = 0
velset=0,0
anim=5001

[State 0, VelSet]
type = VelSet
triggerall = pos Y <= -3
trigger1 = time >= 0
y = 3
ignorehitpause =1

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -3
y = 0
ignorehitpause =1

[State 0, PosSet]
type = PosSet
trigger1 = pos Y >= -3
y = 0
ignorehitpause =1

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = 5001

[State 0, Explod]
type = Explod
trigger1 = time>0
anim =5001
ID =  5001
pos = 2,-1
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime =-1;
vel = 0,0
accel = 0,0
random = 0,0
removetime = 1
pausemovetime = 0
scale = 1,1
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[State 0, Explod]
type = Explod
trigger1 = time=[0,20];time>0
anim =5001
ID =  5001
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop =0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

;-------------------------------------------------------------------

[State 0, Explod]
type = Explod
trigger1 = time=[20,22]
anim =5001
ID =  5001
pos = -.25,.25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time=[23,25];
anim =5001
ID =  5001
pos = -.5,.5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time=[26,28];
anim =5001
ID =  5001
pos = -.75,.75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[State 0, Explod]
type = Explod
trigger1 = time=[29,31];
anim =5001
ID =  5001
pos = -1,1
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


[State 0, Explod]
type = Explod
trigger1 = time=[32,34];
anim =5001
ID =  5001
pos = -1.25,1.25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time=[35,37];
anim =5001
ID =  5001
pos = -1.50,1.50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time=[38,40]
anim =5001
ID =  5001
pos = -1.75,1.75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 0;
vel =-.1,.1
accel = 0,0
random = 0,0
removetime = 2;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0


;-------------------------------------------------------------------------------

[State 0, Explod]
type = Explod
trigger1 = time>40
anim =5001
ID = 5001
pos = -2,2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1;
vel =0,0
accel = 0,0
random = 0,0
removetime = 1;
pausemovetime = 0;
scale = 1,1
sprpriority = 40
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 200
id = 5001

[State 214, Hit ground]
type = SelfState
trigger1 = time >= 200
value = 5100


;-------------------------------------------------------------------------------

 ;===============================================================================
[Statedef 5820, p2 BBB]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, Turn]
type = Turn
trigger1 = enemyNear,facing = facing

[State -1]
Type = PosSet
Trigger1 = Pos Y > 0
Y = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = HitFallSet
Trigger1 = 1
Value = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = OffSet
Trigger1 = Time >= 0
X = 1
Persistent = 4

[State -1]
Type = OffSet
Trigger1 = Time >= 2
X = -1
Persistent = 4

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = 1
Value = 5030

[State -1]
Type = SelfState
Trigger1 = p2dist y != 0
Value = 5030

[State -1]
Type = ChangeState
Trigger1 = GetHitVar(HitShakeTime) = 0
Value = 5821

;-------------------------------------------------------------------------------
[Statedef 5821, p2 BBB]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State -1]
Type = PlayerPush
Trigger1 = Time >= 0
Value = 0
IgnoreHitPause = 1
Persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Width
Trigger1 = 1
Edge = 0,-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = VelSet
Trigger1 = Time =0
x = -7

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 0
Value = 5030

[State -1]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 0
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[State -1]
Type = SelfState
triggerall = alive
Trigger1 =  Time >=  20
Value = 5011

[State 5110, 11] ;If just died
type = SelfState
triggerall = !alive
Trigger1 =  Time >= 20
value = 5100

;---------------------------------------------------------------------------
[Statedef 5850, p2 Shi Shishi Sonson]
type    = S
movetype= H
physics = N
juggle  = 0
poweradd = 0
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5601

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
 value = 0
 
[State -1]
Type = SelfState
TriggerAll = Time >=  160
Trigger1 = 1
Value = 0

;-------------------------------------------------------------------------------
[Statedef 5860, p2 Rashomon]
type    = S
movetype= H
physics = N
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5020, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5861
;-------------------------------------------------------------------------------
[Statedef 5861, p2 Rashomon]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time=0
value = 5603

;------if airHit-----------
;[State 0, VelSet]
;type = VelSet
;trigger1 = 1
;x = 0
;[State 0, VelSet]
;type = VelSet
;triggerall = pos Y <= -3
;trigger1 = time >= 0
;y = 3
;[State 0, VelSet]
;type = VelSet
;trigger1 = pos Y >= -3
;y = 0
;[State 0, PosSet]
;type = PosSet
;trigger1 = pos Y >= -3
;y = 0
;-----------

[State -1]
Type = SelfState
TriggerAll = Time >=  40
Trigger1 = 1;(Vel Y > 0) && (Pos Y >= 0)
Value = 5030
;-------------------------------------------------------------------------------
[Statedef 5862, p2 shake]
type    = S
movetype= H
physics = N
juggle  = 0
poweradd = 0
ctrl = 0
sprpriority = -3

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5604

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -1
y = 0

[State -1]
Type = SelfState
trigger1 = HitOver =1
Value = 5030
;;----------------------------------------------------------

;-------------------------------------------------------------------------------
[Statedef 5863, p2 shake II]
type    = S
movetype= H
physics = N
juggle  = 0
poweradd = 0
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
;TriggerAll = SelfAnimExist(5604)
trigger1 = time = 0
value = 5606

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -1
y = 0

 [State -1]
Type = SelfState
trigger1 = HitOver =1
Value = 5030
;;----------------------------------------------------------

;------------------------------------------------
[Statedef 5875, p2 shishison]
type    = S
movetype= H
physics = N
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 5020, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5876
;-------------------------------------------------------------------------------
[Statedef 5876, p2 shishison]
Type     = S
MoveType = H
Physics  = N
Ctrl     = 0
VelSet   = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time=0
value = 5606

;------if airHit-----------
;[State 0, VelSet]
;type = VelSet
;trigger1 = 1
;x = 0
;[State 0, VelSet]
;type = VelSet
;triggerall = pos Y <= -3
;trigger1 = time >= 0
;y = 3
;[State 0, VelSet]
;type = VelSet
;trigger1 = pos Y >= -3
;y = 0
;[State 0, PosSet]
;type = PosSet
;trigger1 = pos Y >= -3
;y = 0
;-----------

[State -1]
Type = SelfState
TriggerAll = Time >=  120;40
Trigger1 = 1;(Vel Y > 0) && (Pos Y >= 0)
Value = 5030
;-------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------------------------
[Statedef 5880, ashura p2]
type    = S
movetype= H
physics = N


[State 1290, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 5300

;------if air-----------
[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
[State 0, VelSet]
type = VelSet
triggerall = pos Y <= -3
trigger1 = time >= 0
y = 3
[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= -3
y = 0
[State 0, PosSet]
type = PosSet
trigger1 = pos Y >= -3
y = 0
;-----------

[State 1291, Hit ground]
type = SelfState
trigger1 = time >= 30;60
value = 5000
ctrl = 1

;----------------------------------------------------------------------------------------------------------------------------
; Cheap K.O
[Statedef 5950]
type = S
movetype = H
physics = S
anim = 5950
velset = 0, 0

[State 5950, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, KO Snd]
type = AssertSpecial
trigger1 = 1
flag = NoKoSnd

[State 5950, KO Snd]
type = StopSnd
trigger1 = !Time && !alive
channel = 0

[State 5950, KO Snd]
type = PlaySnd
trigger1 = Animelem = 16 && !alive
value = S6,20

[State 5950, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 32
value = f0,9

[State 5950, Dust]
type = Explod
trigger1 = Animelem = 32
anim = 8104
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 5950, End]
type = ChangeState
trigger1 = !Animtime
value = ifelse(alive, 5110, 5150)

;----------------------------------------------------------------------------------------------------------------------------







;===============================================================================
;--------------------------------- STATE -2 ------------------------------------
;===============================================================================

[Statedef -2]

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

;------------------
[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "AI = %d ";comboReset = %d  comboDetect = %d   ashuraHitDetect = %d   ashuraCount = %d" ;sonson = %d  hitCountCanon = %d  1080Impact = %d " 
params = AIlevel;, var(24),  var(35), var(20);var(25);, var(5),, var(26)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy Daniel's"
ignorehitpause = 1

;-------------------------------------------------------------------------------
[State -2, Get Hit Sound]
type = PlaySnd
triggerall = Time = 0
triggerall = random<333
trigger1 = movetype = H
trigger1 = GetHitVar(animtype) = 0
value = S5, ifelse(random<500,ifelse(random<500,15,11),ifelse(random<500,12,13))
channel=7

[State -2, Get Hit Sound]
type = PlaySnd
triggerall = Time = 2
triggerall = random<666
trigger1 = movetype = H
trigger1 = GetHitVar(animtype) = 1
value = S5, ifelse(random<500,ifelse(random<500,20,21),ifelse(random<500,22,14))
channel=7

[State -2, Get Hit Sound]
type = PlaySnd
triggerall = Time = 4
triggerall = random<800
trigger1 = movetype = H
trigger1 = GetHitVar(animtype) = 2
value = S5, ifelse(random<800,ifelse(random<500,30,31),ifelse(random<500,32,33))
channel=7

[State -2, Get Hit Sound]
type = PlaySnd
triggerall = Time = 9
triggerall = random<200
trigger1 = movetype = H
trigger1 = GetHitVar(animtype) = [1,2]
value = S5, ifelse(random<800,41,43)
channel=7

;[State -2, Walking Sound]
;type = PlaySnd
;trigger1 = stateno = 20 ;Walking Forward
;trigger1 = Timemod = 22, 11
;trigger2 = stateno = 21 ;Walking Back
;trigger2 = Timemod = 22, 11
;value = 0, 3
;persistent = 1

;-------------------------------------------------------------------------------
;-----------------Contador estado ashura-----------------
[State -2, varset]
type = varset
trigger1 = var(20) <= 0
var(20) = 0
ignorehitpause = 1
[State -2, varadd]
type = varadd
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1
;-------------------------------------------------------------------------------

;-----------------ashura change state hit-----------------
[State -2, varset]
type = varset
trigger1 = var(35) <= 0
var(35) = 0
ignorehitpause = 1
[State -2, varadd]
type = varadd
trigger1 = var(35) > 0
var(35) = -1
ignorehitpause = 1
;-------------------------------------------------------------------------------


;-----------------varsetCombo-----------------
[State -2, varsetCombo]
type = varset
trigger1 =1
var(23) = 0
ignorehitpause = 1
[State -2, varset]
type = varset
trigger1 =(prevstateno=200 || prevstateno=201 || prevstateno=202 || prevstateno=205 || prevstateno=210 || prevstateno=211 || prevstateno=212  || prevstateno=214 || prevstateno=220 || prevstateno=222 || prevstateno=223|| prevstateno=263)
var(23) = 1
ignorehitpause = 1
;---------------------------------------------------

;-----------------1080 impact-----------------
[State -2, 1080]
type = varset
trigger1 =1
var(26) = 0
ignorehitpause = 1
[State -2, 1080]
type = varset
trigger1 = numhelper(8001)>0
var(26) = 1
ignorehitpause = 1
;---------------------------------------------------


;--------Slow Time for p2------------
[State 0, VarSet]
type = VarSet
trigger1 =  stateno = 3600    
v = 25
value = 1
[State -2, SLOWMO]
type = pause
trigger1 = var(25)=1 & time%7=0
time = 7
movetime = 7
[State 0, VarSet]
type = VarSet
trigger1 =  stateno != 3600   
v = 25
value = 0
;----------------------------------------------------

;--------Slow Time for p2------------
[State 0, VarSet]
type = VarSet
trigger1 = stateno = 3001  
v = 27
value = 1
[State -2, SLOWMO]
type = pause
trigger1 = var(27)=1 & time%7=0
time = 7
movetime = 7
[State 0, VarSet]
type = VarSet
trigger1 = stateno != 3001 
v = 27
value = 0
;----------------------------------------------------
;--------Slow Time for p2------------
[State 0, VarSet]
type = VarSet
trigger1 = stateno = 3701 
v = 28
value = 1
[State -2, SLOWMO]
type = pause
trigger1 = var(28)=1 & time%15=0
time = 5
movetime = 5
[State 0, VarSet]
type = VarSet
trigger1 = stateno != 3701
v = 28
value = 0
;----------------------------------------------------


;-----------------daishinkan air-----------------
[State 0, VarSet]
type = VarSet
trigger1 = stateno = 3700
v = 40
value = 1
[State 0, VarSet]
type = VarSet
trigger1 = stateno = 52 || stateno =  203
v = 40
value = 0
;---------------------------------------------------

;-------removeExplods---------------------
[State -2,removeExplod]
type = RemoveExplod
id = 834
trigger1 =stateno!=2200

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=2200
id = 843

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=263
id = 3150

[State 300]
type = RemoveExplod
trigger1=stateno!=225
id = 7119

[State 300]
type = RemoveExplod
trigger1=stateno!=270
id = 71119

[State 300]
type = RemoveExplod
trigger1=stateno!=3001
id = 7137

[State 300]
type = RemoveExplod
trigger1=stateno!=3002
id = 71137

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=2400
id = 85030

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=1601
id = 815

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=1200
id = 7111

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=1500
id = 71111

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=1700
id = 711111

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=3400
id = 7111111

;---ModifyExplod---------
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = stateno!=2000
anim = 7126
ID =  7126
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = stateno!=2000
anim =824
ID =  824
supermovetime = 9999
pausemovetime = 9999


;---------------------------------------------------
[State 10, StopSnd]
type = StopSnd
trigger1 =  stateno!=1700
channel = 5

[State 10, StopSnd]
type = StopSnd
trigger1 =  stateno!=1100 && stateno!=1140 && stateno!=1150 && stateno!=2400
channel = 10


;-------------------
;afterImage
[State 0, Null]
type = Null
trigger1= !stateno
trigger1 = fvar(20):=0
ignorehitpause =1 

[State 0, Null]
type = Null
trigger1 = selfanimexist(anim)
trigger1 = fvar(20):=0
ignorehitpause =1 

[State 0, Null]
type = Null
trigger1 = !stateno
trigger1 = fvar(21):=1
ignorehitpause =1 

[State 0, Null]
type = Null
trigger1 = !stateno
trigger1 = fvar(22):=0
ignorehitpause =1 

[State 0, Null]
type = Null
trigger1 = !stateno
trigger1 = fvar(23):=0
ignorehitpause =1 


[State 0, Null]
type = Null
trigger1 = !stateno
trigger1 = fvar(35):=1
ignorehitpause =1 



;===============================================================================
[Statedef -3]

;This controller plays a sound everytime the player lands from a jump, or
;from a back-dash.

[State 0, TargetLifeAddWall]
type = TargetLifeAdd
triggerall = enemy,time=1
trigger1 = enemy,stateno=5610||enemy,stateno=5611
value = -10
ID = -1
kill = 1
absolute = 0
ignorehitpause =  1
persistent = 0

[State 0, TargetLifeAddFloor]
type = TargetLifeAdd
triggerall = enemy,time=1
trigger1 = enemy,stateno=5632 || enemy,stateno=5651 || enemy,stateno=5642
value = -10
ID = -1
kill = 1
absolute = 0
ignorehitpause =  1
persistent = 0

[State -3, Helper]
type = Helper
triggerall = enemy,time=1
trigger1 = enemy,stateno=5610||enemy,stateno=5611
helpertype = normal
name = " Wall"
ID = 5612
stateno = 5612
pos = floor(enemy,screenpos x+10*enemy,facing),floor(enemy,pos y-30)
postype = left
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State -3, Helper]
type = Helper
triggerall =  enemy,time=1
trigger1 = enemy,stateno=5642
helpertype = normal
name = "floor II"
ID = 5643
stateno = 5643
pos = 0,-4
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=.7
size.yscale=.7

[State -3, Helper]
type = Helper
triggerall =  enemy,time=1
trigger1 = enemy,stateno=5632 || enemy,stateno=5651
helpertype = normal
name = "floor III"
ID = 5653
stateno = 5653
pos = 0,0
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=.5
size.yscale=.5

[State -3, RunForward Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 100
value = S0,6
channel = -1
;volume = 200

[State -3, Cheap K.O]
type = ChangeState
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5950
ignorehitpause = 1

[State -3, Cheap K.O]
type = AssertSpecial
trigger1 = (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
flag = NoKoSnd
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

;[State -3, Running Sound]
;type = PlaySnd
;triggerall = stateno = 70
;trigger1 = animelem = 2
;value = 0, 76
;volume = 200

[State -3, JUMP Sound]
type = PlaySnd
triggerall = anim= 42
trigger1 =  time=7
value = S4, 11
volume = 200


[State 0, Helper]
type = Helper
triggerall = numhelper(50042)=0 
trigger1 = life <= 300 
trigger1 = time >= 0 && time%30=0
helpertype = normal ;player
name = "AfterImage7 glowBlood"
ID = 50042
stateno = 50042
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
remappal = 1,3
supermovetime = 9999
pausemovetime = 9999



;---------------------- Integer variable list ----------------------

; var(0):= 2503, ---helper
;          2504, ---helper
;          40000 - Dai Butsu Giri
; var(1):= -1
; var(3):= 40, Jump Start - jump
; var(4):= 5632, HitFloor I - impacto
; var(5):= 1103,--- helper projectile
;          2413,--- hitDef
; var(6):= 8000, Hands - Light - HitSpark - Hands - Light
;          8001, Hands - Medium - HitSpark - Hands - Medium
;          8002, Hands - Hard - HitSpark - Hands - Hard
;          8012, Hands - Hard 2 - HitSpark - Hands - Hard 2
;          8003, Hands - SP - HitSpark - Hands - SP
;          8013, Hands - SP 2 - HitSpark - Hands - SP 2
;          8100, Sword - Light - HitSpark - Sword - Light
;          8101, Sword - Medium - HitSpark - Sword - Medium
;          8102, Sword - Hard - HitSpark - Sword - Hard
;          8112, Sword - Hard 2 - HitSpark - Sword - Hard 2
;          8103, Sword - SP - HitSpark - Sword - SP
;          8113, Sword - SP 2 - HitSpark - Sword - SP 2
;var(10):= 6220 - ; Heat Ring 1
;          6230 - Heat Ring 2
;          6240 - Heat Ring 3
;          8000, Hands - Light - HitSpark - Hands - Light
;          8001, Hands - Medium - HitSpark - Hands - Medium
;          8002, Hands - Hard - HitSpark - Hands - Hard
;          8012, Hands - Hard 2 - HitSpark - Hands - Hard 2
;          8003, Hands - SP - HitSpark - Hands - SP
;          8013, Hands - SP 2 - HitSpark - Hands - SP 2
;          8005, Hands - Small - HitSparks - Hands - Small
;          8006, Hands - Medium - HitSparks - Hands - Medium
;          8007, Hands - Special - HitSparks - Hands - Special
;          8008, Hands - Line - HitSparks - Hands - Line
;          8020, Hands - Medium - HitSpark - Hands - Medium
;          8021, Hands - Hard - HitSpark - Hands - Hard
;          8100, Sword - Light - HitSpark - Sword - Light
;          8101, Sword - Medium - HitSpark - Sword - Medium
;          8102, Sword - Hard - HitSpark - Sword - Hard
;          8112, Sword - Hard 2 - HitSpark - Sword - Hard 2
;          8103, Sword - SP - HitSpark - Sword - SP
;          8113, Sword - SP 2 - HitSpark - Sword - SP 2
;          8105, Sword - Small - HitSparks - Sword - Small
;          8106, Sword - Medium - HitSparks - Sword - Medium
;          8107, Sword - Special - HitSparks - Sword - Special
;          8108, Sword - Line - HitSparks - Sword - Line
;          8120, Sword - Medium - HitSpark - Sword - Medium
;          8121, Sword - Hard - HitSpark - Sword - Hard
;var(11):= 6220 - ; Heat Ring 1
;          6230 - Heat Ring 2
;          6240 - Heat Ring 3
;          8006, Hands - Medium - HitSparks - Hands - Medium
;          8007, Hands - Special - HitSparks - Hands - Special
;          8106, Sword - Medium - HitSparks - Sword - Medium
;          8107, Sword - Special - HitSparks - Sword - Special
;var(13):= 50038 - AfterImageFX7
;          50039 - AfterImageFX8
;var(15):= 8020, Hands - Medium - HitSpark - Hands - Medium
;          8021, Hands - Hard - HitSpark - Hands - Hard
;          8120, Sword - Medium - HitSpark - Sword - Medium
;          8121, Sword - Hard - HitSpark - Sword - Hard
;var(20):= -2
;          263, Ashura hit
;var(21):= -2
;var(22):= -2
;var(23):= -2
;var(24):= 1100, 360PH - start
;          1140, 72PH - start
;          1150, 108PH - start
;          1200, SHISHI SONSON - start
;          1500, RASHOMON - start
;          1700, ONIGIRI - Start
;          2400, 1080PH - start
;var(25):= -2
;var(26):= -2
;var(27):= -2
;var(28):= -2
;var(30):= 185, helper esp1
;var(31):= 186, helper esp2
;var(32):= 187, helper esp3
;var(35):= -2
;          3102,--- rush attack
;var(40):= -2
;var(41):= 1206,---fx

;---------------------- Float variable list ----------------------

; fvar(1):= 50003 - Mugshot
;          50004 - Mugshot Hit
; fvar(2):= 50003 - Mugshot
;          50004 - Mugshot Hit
; fvar(5):= 8000, Hands - Light - HitSpark - Hands - Light
;          8001, Hands - Medium - HitSpark - Hands - Medium
;          8002, Hands - Hard - HitSpark - Hands - Hard
;          8012, Hands - Hard 2 - HitSpark - Hands - Hard 2
;          8003, Hands - SP - HitSpark - Hands - SP
;          8013, Hands - SP 2 - HitSpark - Hands - SP 2
;          8008, Hands - Line - HitSparks - Hands - Line
;          8020, Hands - Medium - HitSpark - Hands - Medium
;          8021, Hands - Hard - HitSpark - Hands - Hard
;          8100, Sword - Light - HitSpark - Sword - Light
;          8101, Sword - Medium - HitSpark - Sword - Medium
;          8102, Sword - Hard - HitSpark - Sword - Hard
;          8112, Sword - Hard 2 - HitSpark - Sword - Hard 2
;          8103, Sword - SP - HitSpark - Sword - SP
;          8113, Sword - SP 2 - HitSpark - Sword - SP 2
;          8108, Sword - Line - HitSparks - Sword - Line
;          8120, Sword - Medium - HitSpark - Sword - Medium
;          8121, Sword - Hard - HitSpark - Sword - Hard












;=============TEST==========================
;
; [State -2, powerADD]
; type = poweradd
; trigger1 = 1
; value = 1000

; [State 0, LifeAdd]
; type = LifeAdd
; trigger1 = 1
; value = 999999
; persistent = 1

 ;=============TEST==========================



