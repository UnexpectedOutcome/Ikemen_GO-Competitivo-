; _________________________________________
;| Roa by varo_hades                       |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<ILLUMINATIVE SPARKS>=============================
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-10 * const(size.xScale)), ceil(-45 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 1

[state 3000,murna]
type=varset
trigger1=!time
var(12)=2+var(10)

[state 3000,murna]
type=varadd
trigger1=!animelemtime(9)
var(12)=-1

[state 3000,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(9)
value=anim
elem=7

[state 3000,fasla]
type=attackdist
trigger1=1
value=const(size.proj.attack.dist)

[state 3000,bolii]
type=playsnd
trigger1=!animelemtime(3)
value= 3100,0
volumescale=100
channel=0

[state 3000,avaaz]
type=playsnd
trigger1=!animelemtime(5)
value= 1,2
volumescale=100

[state 3000,avaaz]
type=playsnd
trigger1=!animelemtime(7)
value= 811,0
volumescale=100
persistent=0

;[state 3000,Energy]
;type=helper
;trigger1=!animelemtime(3)
;helpertype=normal
;name="Energy"
;ID=1007
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.5
;size.yscale=0.5
;supermovetime=12
;pausemovetime=12

[State 1100, Shoryuken Flames Explod]
type = Explod
trigger1 = !animelemtime(3)
anim = 1009
ID = 1009
sprPriority = 3
bindTime = 2
posType = P1
facing = 1
pos = 0,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[state 3000,Spark]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
name="Spark"
ID=3010
stateno=3010
postype=p1
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
persistent=0

[state 3000,Spark]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
name="Spark"
ID=3011
stateno=3010
postype=p1
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
persistent=0

[state 3000,Spark]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
name="Spark"
ID=3012
stateno=3010
postype=p1
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
persistent=0

[state 3000,Hitbox]
type=helper
trigger1=!animelemtime(6)
helpertype=normal
name="Hitbox"
ID=3005
stateno=3005
postype=p1
pos=65,-50
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
persistent=0

[state 3000,bekaar]
type=statetypeset
trigger1=!animelemtime(9)
movetype=I

[state 3000,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;========================<MAX ILLUMINATIVE SPARKS>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-10 * const(size.xScale)), ceil(-45 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[state 3000,murna]
type=varset
trigger1=!time
var(12)=2+var(10)

[state 3000,murna]
type=varadd
trigger1=!animelemtime(9)
var(12)=-1

[state 3000,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(9)
value=anim
elem=7

[state 3000,fasla]
type=attackdist
trigger1=1
value=const(size.proj.attack.dist)

[state 3000,bolii]
type=playsnd
trigger1=!animelemtime(3)
value= 3100,0
volumescale=100
channel=0

[state 3000,avaaz]
type=playsnd
trigger1=!animelemtime(5)
value= 1,2
volumescale=100

[state 3000,avaaz]
type=playsnd
trigger1=!animelemtime(7)
value= 811,0
volumescale=100
persistent=0

;[state 3000,Energy]
;type=helper
;trigger1=!animelemtime(3)
;helpertype=normal
;name="Energy"
;ID=1007
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.5
;size.yscale=0.5
;supermovetime=12
;pausemovetime=12

[State 1100, Shoryuken Flames Explod]
type = Explod
trigger1 = !animelemtime(3)
anim = 1009
ID = 1009
sprPriority = 3
bindTime = 2
posType = P1
facing = 1
pos = 0,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[state 3000,Spark]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
name="Spark"
ID=3060
stateno=3060
postype=p1
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
persistent=0

[state 3000,Spark]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
name="Spark"
ID=3061
stateno=3060
postype=p1
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
persistent=0

[state 3000,Spark]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
name="Spark"
ID=3062
stateno=3060
postype=p1
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
persistent=0

[state 3000,Hitbox]
type=helper
trigger1=!animelemtime(6)
helpertype=normal
name="Hitbox"
ID=3055
stateno=3055
postype=p1
pos=65,-50
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
persistent=0

[state 3000,bekaar]
type=statetypeset
trigger1=!animelemtime(9)
movetype=I

[state 3000,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;========================<STORM CLOUD>=============================
[StateDef 3100]
type = A
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = !animelemtime(2)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15 * const(size.xScale)), ceil(-91 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = !animelemtime(2)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[state 3100,murna]
type=varset
trigger1=!time
var(12)=3

[state 3100,murna]
type=varadd
trigger1=!animelemtime(8)
var(12)=-1

[state 3100,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(8)
value=anim
elem=6

[state 3100,bolii]
type=playsnd
trigger1=!animelemtime(2)
value= 1600,1
volumescale=100
channel=0

[state 3100,avaaz]
type=playsnd
trigger1=!animelemtime(4)
value= 1,2
volumescale=100

[state 3100,avaaz]
type=playsnd
trigger1=!animelemtime(4)
value= 811,0
volumescale=100

[state 3100,shiighrataa]
type=veladd
trigger1=animelemno(0)=[5,8]
y=0.03125

[state 3100,shiighrataa]
type=veladd
trigger1=animelemtime(9)>0
y=0.5859375

[state 3100,roop]
type=playerpush
trigger1=animelemno(0)=[5,7]
value=0
ignorehitpause=1

[State 1100, Shoryuken Flames Explod]
type = Explod
trigger1 = !animelemtime(2)
anim = 1009
ID = 1009
sprPriority = 3
bindTime = 2
posType = P1
facing = 1
pos = 0,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1100, Shoryuken Flames Explod]
type = Explod
trigger1 = !animelemtime(4)
anim = 1080
ID = 1080
sprPriority = 3
bindTime = 2
posType = P1
facing = 1
pos = 0,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = !animelemtime(6) || !animelemtime(7)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 6
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,12
animType = diagup
air.animType = diagup
fall.animType = diagup
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = cond(p2dist x>0,5.0,-3.0),cond(p2dist y<-55&&var(12)>1,5.5,-5.5)
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = cond(p2dist x>0,5.0,-3.0),cond(p2dist y<-55&&var(12)>1,5.5,-5.5)
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ceil(p2dist y-55)
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=48

[state 1355,Target_ID]
type=parentvarset
trigger1=movecontact=1
trigger1=numtarget
trigger1=!MoveGuarded
trigger1=var(55):=target,id
var(55)=target,id
ignorehitpause=1
persistent=0

[state 1355,electricity]
type=helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = !MoveGuarded
name="Electricity"
helpertype=normal
ID=8415
stateno=8415
ownpal=1
ignorehitpause=1
persistent=0

[state 3100,bekaar]
type=statetypeset
trigger1=!animelemtime(8)
movetype=I

[state 3100,badalna]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=3101
ctrl=0

;Landing
[StateDef 3101]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[state 1405,dharna]
type=posset
trigger1=!time
y=0

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1101, End]
type = null;ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<MAX STORM CLOUD>=============================
[StateDef 3150]
type = A
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = !animelemtime(2)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15 * const(size.xScale)), ceil(-91 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = !animelemtime(2)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[state 3100,murna]
type=varset
trigger1=!time
var(12)=5

[state 3100,murna]
type=varadd
trigger1=!animelemtime(8)
var(12)=-1

[state 3100,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(8)
value=anim
elem=6

[state 3100,bolii]
type=playsnd
trigger1=!animelemtime(2)
value= 1600,1
volumescale=100
channel=0

[state 3100,avaaz]
type=playsnd
trigger1=!animelemtime(4)
value= 1,2
volumescale=100

[state 3100,avaaz]
type=playsnd
trigger1=!animelemtime(4)
value= 811,0
volumescale=100

[state 3100,shiighrataa]
type=veladd
trigger1=animelemno(0)=[5,8]
y=0.03125

[state 3100,shiighrataa]
type=veladd
trigger1=animelemtime(9)>0
y=0.5859375

[state 3100,roop]
type=playerpush
trigger1=animelemno(0)=[5,7]
value=0
ignorehitpause=1

[State 1100, Shoryuken Flames Explod]
type = Explod
trigger1 = !animelemtime(2)
anim = 1009
ID = 1009
sprPriority = 3
bindTime = 2
posType = P1
facing = 1
pos = 0,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1100, Shoryuken Flames Explod]
type = Explod
trigger1 = !animelemtime(4)
anim = 1080
ID = 1080
sprPriority = 3
bindTime = 2
posType = P1
facing = 1
pos = 0,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = !animelemtime(6) || !animelemtime(7)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 4
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,12
animType = diagup
air.animType = diagup
fall.animType = diagup
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = cond(p2dist x>0,5.0,-3.0),cond(p2dist y<-55&&var(12)>1,5.5,-5.5)
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = cond(p2dist x>0,5.0,-3.0),cond(p2dist y<-55&&var(12)>1,5.5,-5.5)
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ceil(p2dist y-55)
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=48

[state 1355,Target_ID]
type=parentvarset
trigger1=movecontact=1
trigger1=numtarget
trigger1=!MoveGuarded
trigger1=var(55):=target,id
var(55)=target,id
ignorehitpause=1
persistent=0

[state 1355,electricity]
type=helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = !MoveGuarded
name="Electricity"
helpertype=normal
ID=8415
stateno=8415
ownpal=1
ignorehitpause=1
persistent=0

[state 3100,bekaar]
type=statetypeset
trigger1=!animelemtime(8)
movetype=I

[state 3100,badalna]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=3101
ctrl=0

;========================<SERPENT'S OVERLOAD>=============================
[StateDef 3200]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = !animelemtime(5)
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(8 * const(size.xScale)), ceil(-64 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[state 3600,counter]
type=attackdist
trigger1=movetype=A
value=0

[state 3600,bolii]
type=playsnd
trigger1=!animelemtime(3)
value= 5000,10
volumescale=100
channel=0

[state 3600,counter]
type=reversaldef
trigger1=!animelemtime(4)
reversal.attr=SCA,NA,SA,HA
pausetime=12,66
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 127), var(36) := -50
numhits=0
getpower=0
givepower=0
fall=1
fall.recover=0
p1facing=1
p2facing=1
p1stateno=3205
p2stateno=3295
id=3200

[state 3600,bekaar]
type=statetypeset
trigger1=!animelemtime(5)
movetype=I

[state 3600,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Finish
[StateDef 3205]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=1

[state 3605,badalna]
type=changestate
trigger1=!numtarget(3200)
trigger2=numtarget(3200)
trigger2=target(3200),ishelper
value=0
ctrl=1

[state 3605,id]
type=varset
trigger1=numtarget(3200)
var(55)=target(3200),id

[state 3605,anim]
type=changeanim
trigger1=!time
value=3205

[state 3605,roop]
type=changeanim
trigger1=time=55
value=3206

[state 3605,roop]
type=changeanim
trigger1=time=189
value=9999

[state 3605,roop]
type=changeanim
trigger1=time=346
value=3207

[state 3605,murna]
type=varset
trigger1=!time
var(12)=9

[state 3605,murna]
type=varadd
trigger1=anim=3207
trigger1=!animelemtime(5)
var(12)=-1

[state 3605,murna]
type=changeanim
trigger1=anim=3207
trigger1=var(12)
trigger1=!animelemtime(5)
value=anim
elem=2

[state 3605,fasla]
type=attackdist
trigger1=1
value=0

[state 3605,chaayaa]
type=afterimagetime
trigger1=!time
time=0

[state 3605,bolii]
type=playsnd
trigger1=time=55
value= 3200,0
volumescale=100
channel=0

[state 3605,bolii]
type=playsnd
trigger1=time=149
value= 3200,1
volumescale=100
channel=0

[state 3605,bolii]
type=playsnd
trigger1=time=346
value= 3200,2
volumescale=100
channel=0

[state 3605,target]
type=targetstate
trigger1=anim=3206
trigger1=!animelemtime(1)
value=3295
id=3200

[state 3605,target]
type=targetbind
triggerall=time<346
trigger1=anim=3206
pos=40,-105
id=3200

[state 3605,target]
type=targetstate
trigger1=time=189
value=3296
id=3200

[state 3605,target]
type=targetstate
trigger1=time=346
value=3297
id=3200

[state 3605,Background]
type=helper
trigger1=!numhelper(3215)
trigger1=time<346
helpertype=normal
name="Background"
ID=3215
stateno=3215
postype=p1
pos=0,-10
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
ignorehitpause=1

[state 3605,maar]
type=targetlifeadd
trigger1=time=346
value=ceil(ifElse(340 * fvar(11) < 7, -7, -340 * fvar(11)))
id=3200
kill=1

[state 3605,maar]
type=targetpoweradd
trigger1=time=346
value=200
id=3200

[state 3605,badalna]
type=changestate
trigger1=anim=3207
trigger1=!animtime
value=0
ctrl=1

;Player 2
[Statedef 3215]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=0

[state 3615,bind]
type=bindtoparent
trigger1=1
pos=0,-15

[state 3615,anim]
type=changeanim
trigger1=!time
value=9999

[state 3615,bolii]
type=playsnd
trigger1=parent,time=6
value= 3200,3
volumescale=100

[state 3615,bolii]
type=playsnd
trigger1=parent,time=346
value= 3200,4
volumescale=100

[state 3615,white]
type=explod
trigger1=parent,time=6
ID=1
anim=7010
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=110
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
sprpriority=5

[state 3615,white]
type=modifyexplod
trigger1=parent,time<=55
trigger1=numexplod(1)
trigger1=var(0):=var(0)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=5*var(0),256-(5*var(0))
id=1

[state 3615,white]
type=modifyexplod
trigger1=parent,time>55
trigger1=numexplod(1)
trigger1=var(1):=var(1)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(5*var(1)),5*var(1)
id=1

[state 3615,Background-1]
type=explod
trigger1=parent,time=55
ID=2
anim=7030
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=136
bindtime=-1
ontop=0
under=0
ownpal=1
scale=1.0,1.0
sprpriority=-5

[state 3615,Strings]
type=explod
trigger1=parent,time=149
ID=3
anim=7035
postype=p1
pos=0,15
facing=1
removetime=-2
bindtime=-1
ontop=0
under=0
ownpal=1
scale=1.0,1.0
sprpriority=4

[state 3615,Snakes]
type=explod
trigger1=parent,time=151
ID=4
anim=7040
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=-2
bindtime=-1
ontop=0
under=0
ownpal=1
scale=1.0,1.0
sprpriority=5

[state 3615,Background-2]
type=explod
trigger1=parent,time=191
ID=5
anim=7045
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=-2
bindtime=-1
ontop=0
under=0
ownpal=1
scale=1.0,1.0
sprpriority=-5

[state 3615,Circle]
type=explod
trigger1=parent,time=282
ID=6
anim=7055
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*40)
facing=1
removetime=16
bindtime=-1
ontop=1
under=0
ownpal=1
sprpriority=5

[state 3615,white]
type=modifyexplod
trigger1=numexplod(6)
trigger1=var(2):=var(2)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*40)
scale=var(2)*0.05,var(2)*0.05
trans=addalpha
alpha=256-(16*var(2)),16*var(2)
id=6

[state 3615,Light]
type=explod
trigger1=parent,time=323
ID=7
anim=7050
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=-2
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
sprpriority=5

[state 3615,white]
type=explod
trigger1=parent,time=346
ID=8
anim=7010
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=70
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
sprpriority=5

[state 3615,white]
type=modifyexplod
trigger1=numexplod(8)
trigger1=var(5):=var(5)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(4*var(5)),4*var(5)
id=8

[state 3615,darken]
type=bgpalfx
trigger1=parent,time>=6
trigger1=var(40)<16
trigger1=var(40):=var(40)+1
time=16
mul=256-(16*var(40)),256-(16*var(40)),256-(16*var(40))
add=0,0,0
color=256
invertall=0

[state 3615,darken]
type=bgpalfx
trigger1=parent,time<346
trigger1=var(40)=16
time=10
mul=0,0,0
add=0,0,0
color=256
invertall=0

[state 3615,marna]
type=removeexplod
trigger1=parent,stateno!=3205
trigger2=time>=416
id=-1

[state 3615,marna]
type=destroyself
trigger1=parent,stateno!=3205
trigger2=time>=416

;Serpent's Overload Target State
[Statedef 3295]
type=A
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=-1

[state 3695,marna]
type=removeexplod
trigger1=ishelper

[state 3695,marna]
type=destroyself
trigger1=ishelper

[state 3695,roop]
type=screenbound
trigger1=1
value=0
movecamera=1,0

[state 3695,anim]
type=changeanim2
trigger1=!time
value=3295

[state 3695,phir_lana]
type=selfstate
trigger1=!gethitvar(isbound)
trigger1=time>300
value=5050

;Serpent's Overload Target State
[Statedef 3296]
type=A
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=-1

[state 3696,marna]
type=removeexplod
trigger1=ishelper

[state 3696,marna]
type=destroyself
trigger1=ishelper

[state 3696,roop]
type=screenbound
trigger1=1
value=0
movecamera=1,0

[state 3696,anim]
type=changeanim2
trigger1=!time
value=9999

[state 3696,phir_lana]
type=selfstate
trigger1=!gethitvar(isbound)
trigger1=time>300
value=5050

;Serpent's Overload Target State
[Statedef 3297]
type=A
movetype=H
physics=N
sprpriority=-1

[state 3697,marna]
type=removeexplod
trigger1=ishelper

[state 3697,marna]
type=destroyself
trigger1=ishelper

[state 3697,dharna]
type=posset
trigger1=!time
y=-200

[state 3697,roop]
type=screenbound
trigger1=1
value=1
movecamera=1,0

[state 3697,fall]
type=hitfallset
trigger1=!time
value=1

[state 3697,anim]
type=changeanim2
trigger1=!time
value=3697

[state 3697,shiighrataa]
type=velset
trigger1=!time
x=0.0
y=0.0
[state 3697,shiighrataa]
type=veladd
trigger1=1
y=0.5

[state 3697,hilaav]
type=envshake
trigger1=pos y>=0
trigger1=vel y>0
time=15
ampl=12

[state 3697,phir_lana]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;========================<SLICE'N DICE>=============================
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = anim=3300
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-65 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = anim=3300
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 4
trigger2 = animelem = 12
x = 15

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 8
trigger2 = animelem = 15
x = 0

[state 3200,murna]
type=null;varset
trigger1=!time
var(12)=1+1

[state 3200,murna]
type=null;varadd
trigger1=anim=3300
trigger1=!animelemtime(18)
var(12)=-1

[state 3200,murna]
type=null;changeanim
trigger1=anim=3300
trigger1=var(12)
trigger1=!animelemtime(18)
value=anim
elem=4

[state 3200,anim]
type=null;changeanim
trigger1=var(12)<=1
trigger1=anim=3300
trigger1=!animelemtime(10)
value=anim+5

[state 3200,bolii]
type=playsnd
trigger1=anim=3300
trigger1=!animelemtime(3)
value= 3000,0
volumescale=100

[state 3200,avaaz]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(6)
trigger2=!animelemtime(12)
trigger3=!animelemtime(21)
value= 1,2
volumescale=100

[state 3200,bolii]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(6)
trigger2=!animelemtime(13)
value= 4,5
volumescale=100
channel=0

[state 3200,bolii]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(22)
value= 4,11
volumescale=100
channel=0

[state 3200,avaaz]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(7)
trigger2=!animelemtime(14)
trigger3=!animelemtime(23)
value= 1300,3
volumescale=100

[state 3200,ajay]
type=nothitby
trigger1=anim=3300
trigger1=animelemtime(6)=40
value=SCA
time=5*1

[state 1900,prakash]
type=explod
trigger1 = anim=3300
trigger1 = !animelemtime(7)
id=1040
anim=1040
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

;[state 3200,Energy]
;type=helper
;trigger1=anim=3300
;trigger1=!animelemtime(7)
;helpertype=normal
;name="Energy"
;ID=1040
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.5
;size.yscale=0.5

[state 1900,prakash]
type=explod
trigger1 = anim=3300
trigger1 = !animelemtime(14)
id=1035
anim=1035
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

;[state 3200,Energy]
;type=helper
;trigger1=anim=3300
;trigger1=!animelemtime(14)
;helpertype=normal
;name="Energy"
;ID=1035
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.5
;size.yscale=0.5

[state 1900,prakash]
type=explod
trigger1 = anim=3300
trigger1 = !animelemtime(23)
id=1040
anim=1040
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

[State 3300, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = back
fall.animType = back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -7.5
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -35
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32

[State 3300, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = back
fall.animType = back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -7.5
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -75
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32

[State 3300, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 24
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = diagup
air.animType = diagup
fall.animType = diagup
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 14
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -35
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32

[state 1355,Target_ID]
type=parentvarset
trigger1=movecontact=1
trigger1=numtarget
trigger1=!MoveGuarded
trigger1=var(55):=target,id
var(55)=target,id
ignorehitpause=1
persistent=0

[state 1355,electricity]
type=helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = !MoveGuarded
name="Electricity"
helpertype=normal
ID=8415
stateno=8415
ownpal=1
ignorehitpause=1
persistent=0

[state 3000,bekaar]
type=statetypeset
trigger1=!animelemtime(25)
movetype=I

[state 3200,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;========================<MAX SLICE'N DICE>=============================
[StateDef 3350]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = anim=3300
trigger1 = AnimElemTime(9) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = anim=3300
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-65 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = anim=3300
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 4
trigger2 = animelem = 12
x = 15

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 8
trigger2 = animelem = 15
x = 0

[state 3200,murna]
type=varset
trigger1=!time
var(12)=3+1

[state 3200,murna]
type=varadd
trigger1=anim=3300
trigger1=!animelemtime(18)
var(12)=-1

[state 3200,murna]
type=changeanim
trigger1=anim=3300
trigger1=var(12)
trigger1=!animelemtime(18)
value=anim
elem=4

[state 3200,anim]
type=changeanim
trigger1=var(12)<=1
trigger1=anim=3300
trigger1=!animelemtime(10)
value=anim+5

[state 3200,bolii]
type=playsnd
trigger1=anim=3300
trigger1=!animelemtime(3)
value= 3000,0
volumescale=255

[state 3200,avaaz]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(6)
trigger2=!animelemtime(12)
value= 1,2
volumescale=100

[state 3200,bolii]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(6)
trigger2=!animelemtime(13)
value= 4,cond((var(12)<=1),10,5)
volumescale=100
channel=0

[state 3200,avaaz]
type=playsnd
triggerall=anim=3300
trigger1=!animelemtime(7)
trigger2=!animelemtime(14)
value= 1300,3
volumescale=100

[state 3200,ajay]
type=nothitby
trigger1=anim=3300
trigger1=animelemtime(3)=40
value=SCA
time=5*3

[state 1900,prakash]
type=explod
trigger1 = anim=3300
trigger1 = !animelemtime(7)
id=1040
anim=1040
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

;[state 3200,Energy]
;type=helper
;trigger1=anim=3300
;trigger1=!animelemtime(7)
;helpertype=normal
;name="Energy"
;ID=1040
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.5
;size.yscale=0.5

[state 1900,prakash]
type=explod
trigger1 = anim=3300
trigger1 = !animelemtime(14)
id=1035
anim=1035
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

;[state 3200,Energy]
;type=helper
;trigger1=anim=3300
;trigger1=!animelemtime(14)
;helpertype=normal
;name="Energy"
;ID=1035
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.5
;size.yscale=0.5

[State 3300, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = anim = 3300
trigger1 = !animelemtime(8)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = diagup
air.animType = diagup
fall.animType = diagup
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 14
air.hitTime = 120
ground.velocity = -4+(1.25*(var(12)<=1)),-8*(var(12)<=1)
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -4, -7.5
air.cornerPush.velOff = 0
yAccel = 0.6
fall = (var(12)<=1)
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -35
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32

[State 3300, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = anim = 3300
trigger1 = !animelemtime(15)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = back
fall.animType = back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 16
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -7.5-(8*(var(12)<=1))
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -75
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32

[state 1355,Target_ID]
type=parentvarset
trigger1=movecontact=1
trigger1=numtarget
trigger1=!MoveGuarded
trigger1=var(55):=target,id
var(55)=target,id
ignorehitpause=1
persistent=0

[state 1355,electricity]
type=helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = !MoveGuarded
name="Electricity"
helpertype=normal
ID=8415
stateno=8415
ownpal=1
ignorehitpause=1
persistent=0

[state 3200,bekaar]
type=statetypeset
trigger1=anim=3305
movetype=I

[state 3200,badalna]
type=changestate
trigger1=anim=3305
trigger1=!animtime
value=0
ctrl=1

;========================<LIGHTNING STORM>=============================
[StateDef 3400]
type = S
physics = S
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = !animelemtime(2)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-65 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = !animelemtime(2)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[state 3300,fasla]
type=attackdist
trigger1=1
value=const(size.proj.attack.dist)

[state 3300,bolii]
type=playsnd
trigger1=!animelemtime(2)
value= 3400,0
volumescale=100
channel=0

[state 3300,Bolt]
type=helper
trigger1=var(12)=8
trigger1=!animelemtime(5)
helpertype=normal
name="Bolt"
ID=3405
stateno=3405
postype=p1
pos=30,-10
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=8
trigger1=animelemtime(7)=3
helpertype=normal
name="Bolt"
ID=3406
stateno=3405
postype=p1
pos=30,-20
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=7
trigger1=!animelemtime(7)
helpertype=normal
name="Bolt"
ID=3407
stateno=3405
postype=p1
pos=5,-15
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=7
trigger1=animelemtime(7)=1
helpertype=normal
name="Bolt"
ID=3408
stateno=3405
postype=p1
pos=-40,-15
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=6
trigger1=animelemtime(7)=0
helpertype=normal
name="Bolt"
ID=3409
stateno=3405
postype=p1
pos=45,-20
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=5
trigger1=animelemtime(6)=3
helpertype=normal
name="Bolt"
ID=3410
stateno=3405
postype=p1
pos=-30,-15
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,murna]
type=varset
trigger1=!time
var(12)=8

[state 3300,murna]
type=varadd
trigger1=!animelemtime(8)
var(12)=-1

[state 3300,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(8)
value=anim
elem=5

[state 3300,bekaar]
type=statetypeset
trigger1=!animelemtime(8)
movetype=I

[state 3300,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;========================<MAX LIGHTNING STORM>=============================
[StateDef 3450]
type = S
physics = S
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = !animelemtime(2)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-65 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = !animelemtime(2)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[state 3300,fasla]
type=attackdist
trigger1=1
value=const(size.proj.attack.dist)

[state 3300,bolii]
type=playsnd
trigger1=!animelemtime(2)
value= 3400,0
volumescale=100
channel=0

[state 3300,Bolt]
type=helper
trigger1=var(12)=8
trigger1=!animelemtime(5)
helpertype=normal
name="Bolt"
ID=3455
stateno=3455
postype=p1
pos=30,-10
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=8
trigger1=animelemtime(7)=3
helpertype=normal
name="Bolt"
ID=3456
stateno=3455
postype=p1
pos=30,-20
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=7
trigger1=!animelemtime(7)
helpertype=normal
name="Bolt"
ID=3457
stateno=3455
postype=p1
pos=5,-15
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=7
trigger1=animelemtime(7)=1
helpertype=normal
name="Bolt"
ID=3458
stateno=3455
postype=p1
pos=-40,-15
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=6
trigger1=animelemtime(7)=0
helpertype=normal
name="Bolt"
ID=3459
stateno=3455
postype=p1
pos=45,-20
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,Bolt]
type=helper
trigger1=var(12)=5
trigger1=animelemtime(6)=3
helpertype=normal
name="Bolt"
ID=3460
stateno=3455
postype=p1
pos=-30,-15
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3300,murna]
type=varset
trigger1=!time
var(12)=8

[state 3300,murna]
type=varadd
trigger1=!animelemtime(8)
var(12)=-1

[state 3300,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(8)
value=anim
elem=5

[state 3300,bekaar]
type=statetypeset
trigger1=!animelemtime(8)
movetype=I

[state 3300,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;========================<LIGHTNING BARRAGE>=============================
[StateDef 3500]
type = S
physics = S
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = !animelemtime(4)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-35 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = !animelemtime(4)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[state 3400,murna]
type=varset
trigger1=!time
var(12)=10

[state 3400,murna]
type=varadd
trigger1=!animelemtime(7)
var(12)=-1

[state 3400,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(7)
value=anim
elem=5

[state 3400,roop]
type=angledraw
trigger1=animelemno(0)=[9,11]
scale=0.65,0.55
ignorehitpause=1

[state 3400,roop]
type=trans
trigger1=animelemno(0)=[9,11]
trans=addalpha
alpha=256,256
ignorehitpause=1

[state 3400,ajay]
type=nothitby
trigger1=animelemno(0)=[10,12]
value=SCA

[state 3400,bolii]
type=playsnd
trigger1=!animelemtime(4)
value= 1500,1
volumescale=100
channel=0

[state 3400,bolii]
type=playsnd
trigger1=!animelemtime(8)
value= 1500,0
volumescale=100
channel=0

[state 3400,avaaz]
type=playsnd
trigger1=!animelemtime(8)
value= 1500,2
volumescale=100

[state 3400,prakash]
type=explod
trigger1=!animelemtime(8)
id=1065
anim=1065
postype=back
pos=128,215
bindtime=-1
removetime=-2
random=0,0
velocity=0,0
accel=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

[state 3400,Energy]
type=helper
trigger1=!animelemtime(4)
helpertype=normal
name="Energy"
ID=3560
stateno=3560
postype=p1
pos=0,0
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
supermovetime=40
pausemovetime=40

;[state 3400,Energy]
;type=helper
;trigger1=!animelemtime(12)
;helpertype=normal
;name="Energy"
;ID=1070
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.65
;size.yscale=0.55

[state 1900,prakash]
type=explod
trigger1=!animelemtime(12)
id=1070
anim=1070
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.65,0.55
sprpriority=5
supermovetime=0
pausemovetime=0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 70

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 12
x = 0

[State 3300, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = animelemno(0)=8
attr = S, HT
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 36, 36
pauseTime = 1,12
guard.pauseTime = 1,12
animType = Hard
air.animType = back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 14
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0,0
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -25
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32
ID=3500
p1stateno=3505

[state 3400,bekaar]
type=statetypeset
trigger1=!animelemtime(13)
movetype=I

[state 3400,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Lightning Barrage Destroy
[Statedef 3505]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=1

[state 3405,maar]
type=hitadd
trigger1=!time
value=-1

[state 3405,anim]
type=changeanim
trigger1=!time
value=9999

[state 3405,fasla]
type=attackdist
trigger1=1
value=0

[state 3405,chaayaa]
type=afterimagetime
trigger1=!time
time=0

[state 3405,Background]
type=helper
trigger1=!time
helpertype=normal
name="Background"
ID=3515
stateno=3515
postype=p1
pos=0,0
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
supermovetime=65536
pausemovetime=65536

[state 3405,maar]
type=varset
trigger1=!time
var(12)=0

[state 3405,maar]
type=varadd
trigger1=time>32
var(12)=1

[state 3405,maar]
type=varset
trigger1=!time
var(11)=0

[state 3405,maar]
type=varadd
trigger1=time>=32
trigger1=!(var(12)%4)
var(11)=1

[state 3405,maar]
type=targetstate
trigger1=!time
trigger2=time>=32
trigger2=!(var(12)%4)
value=3595
id=3500

[state 3405,maar]
type=targetfacing
trigger1=!time
value=-1
id=3500

[state 3405,maar]
type=bindtotarget
trigger1=numtarget
trigger1=!time
pos=-target,const(size.ground.back)*2,0
id=3500

[state 3405,avaaz]
type=playsnd
trigger1=time>=32
trigger1=!(var(12)%4)
value= 2,7
channel=1

[state 3405,maar]
type=targetlifeadd
trigger1=time>=32
trigger1=!(var(12)%4)
value=ceil(-12*fvar(11))
id=3500
kill=var(11)=10

[state 3405,maar]
type=targetpoweradd
trigger1=time>=32
trigger1=!(var(12)%4)
value=10
id=3500

[state 3405,shakti]
type=poweradd
trigger1=time>=32
trigger1=!(var(12)%4)
value=0*!var(25)

[state 3405,maar]
type=envshake
trigger1=time>=32
trigger1=!(var(12)%4)
time=12
ampl=6

[state 3405,maar]
type=hitadd
trigger1=time>=32
trigger1=!(var(12)%4)
value=1

[State 3206, HitSpark]
type = Helper
trigger1=time>=32
trigger1=!(var(12)%4)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil((p2dist x+25)+(-random%75)),ceil((p2dist y-100)+(random%75))
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state 3405,Lightning]
type=helper
trigger1=time>=32
trigger1=!(var(12)%2)
helpertype=normal
name="Lightning"
ID=3520
stateno=3520
postype=left
pos=random%320,-random%160
facing=cond(random<500,1,-1)
keyctrl=0
ownpal=0
size.xscale=1.0
size.yscale=0.25

[state 3405,badalna]
type=changestate
trigger1=var(11)>=10
value=3510
ctrl=0

;Lightning Barrage Finish
[Statedef 3510]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=1

[state 3410,anim]
type=changeanim
trigger1=!time
value=3510

[state 3410,roop]
type=angledraw
trigger1=animelemtime(1)>=0
trigger1=animelemtime(4)<0
scale=0.65,0.55

[state 3410,roop]
type=trans
trigger1=animelemtime(1)>=0
trigger1=animelemtime(4)<0
trans=addalpha
alpha=256,256

[state 3410,ajay]
type=nothitby
trigger1=animelemno(0)=[2,4]
value=SCA

[state 3410,maar]
type=targetstate
trigger1=!time
value=3596
id=3500

[state 3410,maar]
type=targetfacing
trigger1=!time
value=-1
id=3500

[state 3410,maar]
type=turn
trigger1=!time
trigger1=facing=target(3500),facing

[state 3410,maar]
type=targetbind
trigger1=numtarget(3500)
trigger1=!time
pos=(target(3500),pos x-pos x)*facing,0
id=3500

[state 3410,maar]
type=bindtotarget
trigger1=numtarget(3500)
trigger1=!time
pos=-target(3500),const(size.ground.back)*2,-target(3500),pos y
id=3500

;[state 3410,Energy]
;type=helper
;trigger1=!animelemtime(4)
;helpertype=normal
;name="Energy"
;ID=1070
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.65
;size.yscale=0.55

[state 1900,prakash]
type=explod
trigger1=!animelemtime(4)
id=1070
anim=1070
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.65,0.55
sprpriority=5
supermovetime=0
pausemovetime=0

[state 3410,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Lightning Barrage Background Effects
[Statedef 3515]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=0

[state 3415,bind]
type=bindtoparent
trigger1=1
pos=0,-15

[state 3415,roop]
type=assertspecial
trigger1=1
flag=nofg

[state 3415,anim]
type=changeanim
trigger1=!time
value=9999

[state 3415,darken]
type=bgpalfx
trigger1=parent,stateno=3505
trigger1=var(0)<16
trigger1=var(0):=var(0)+1
time=5
mul=256-(16*var(0)),256-(16*var(0)),256-(16*var(0))
add=0,0,0
color=256
invertall=0

[state 3415,darken]
type=bgpalfx
trigger1=parent,stateno=3505
trigger1=var(0)=16
time=5
mul=0,0,0
add=0,0,0
color=256
invertall=0

[state 3415,darken]
type=bgpalfx
trigger1=parent,stateno=3510
trigger1=var(1)<16
trigger1=var(1):=var(1)+1
time=5
mul=16*var(1),16*var(1),16*var(1)
add=0,0,0
color=256
invertall=0

[state 3415,marna]
type=destroyself
trigger1=parent,stateno!=[3505,3510]

;Lightning Barrage Lightning
[Statedef 3520]
type=A
movetype=I
physics=N
sprpriority=5
velset=0,0

[state 3420,anim]
type=changeanim
trigger1=!time
value=1017

[state 3420,roop]
type=assertspecial
trigger1=1
flag=noshadow

[state 3420,roop]
type=varset
trigger1=!time
var(0)=random%12

[state 3420,roop]
type=angledraw
trigger1=fvar(0):=const(size.xscale)||fvar(11):=const(size.yscale)
value=30*(var(0))

[state 3420,roop]
type=angledraw
trigger1=animelemtime(7)>0
trigger1=fvar(0):=fvar(0)+0.0625||fvar(11):=fvar(11)-0.015625
value=30*(var(0))
scale=fvar(0),fvar(11)

[state 3420,roop]
type=trans
trigger1=1
trans=add

[state 3420,marna]
type=destroyself
trigger1=!animtime

;Lightning Barrage Energy
[Statedef 3560]
type=A
movetype=I
physics=N
ctrl=0
sprpriority=5

[state 3450,bind]
type=bindtoparent
trigger1=0
pos=0,0

[state 3450,roop]
type=assertspecial
trigger1=1
flag=noshadow

[state 3450,roop]
type=trans
trigger1=time>=36
trans=addalpha
alpha=256-(26*(time-36)),256

[state 3450,anim]
type=changeanim
trigger1=!time
value=1061

[state 3450,marna]
type=destroyself
trigger1=!animtime
trigger2=parent,stateno!=3500
trigger2=parent,stateno!=3550
trigger2=parent,movetype=H
trigger3=parent,animelemtime(8)>=0

;Lightning Barrage Target State
[Statedef 3595]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=-1

[state 3495,roop]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[state 3495,anim]
type=changeanim
trigger1=!time
value=5002+(10*(prevstateno=3595&&random<500))

[state 3495,ajay]
type=nothitby
trigger1=1
value=SCA
time=1

[state 3495,roop]
type=palfx
trigger1=!time
time=63
color=256
mul=128,128,128
add=0,0,0
sinadd=256,256,256,4

[state 3495,shiighrataa]
type=velset
trigger1=prevstateno=3595
x=-20.0+(random/25.0)
y=-20.0+(random/25.0)

[state 3495,shiighrataa]
type=velmul
trigger1=vel x>0&&p2dist x<=0
trigger2=vel x<0&&p2dist x>=0
x=-1.0

[state 3495,shiighrataa]
type=velmul
trigger1=vel y>0&&pos y>=0
trigger2=vel y<0&&pos y<=-40
y=-1.0

[state 3495,phir_lana]
type=selfstate
trigger1=!gethitvar(isbound)
trigger1=time>300
value=5050

;Lightning Barrage Target State
[Statedef 3596]
type=A
movetype=H
physics=N
sprpriority=-1

[state 3496,roop]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[state 3496,roop]
type=palfx
trigger1=!time
time=48
color=256
mul=128,128,128
add=0,0,0
sinadd=256,256,256,4

[state 3496,fall]
type=hitfallset
trigger1=!time
value=1

[state 3496,anim]
type=changeanim2
trigger1=!time
value=3596

[state 3496,shiighrataa]
type=velset
trigger1=!time
x=0.0
y=-12.5

[state 3496,shiighrataa]
type=veladd
trigger1=1
y=0.5

[state 3496,hilaav]
type=envshake
trigger1=pos y>=0
trigger1=vel y>0
time=15
ampl=12

[state 3496,phir_lana]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;========================<MAX LIGHTNING BARRAGE>=============================
[StateDef 3550]
type = S
physics = S
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = !animelemtime(4)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-35 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = !animelemtime(4)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[state 3400,murna]
type=varset
trigger1=!time
var(12)=10

[state 3400,murna]
type=varadd
trigger1=!animelemtime(7)
var(12)=-1

[state 3400,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(7)
value=anim
elem=5

[state 3400,roop]
type=angledraw
trigger1=animelemno(0)=[9,11]
scale=0.65,0.55
ignorehitpause=1

[state 3400,roop]
type=trans
trigger1=animelemno(0)=[9,11]
trans=addalpha
alpha=256,256
ignorehitpause=1

[state 3400,ajay]
type=nothitby
trigger1=animelemno(0)=[10,12]
value=SCA

[state 3400,bolii]
type=playsnd
trigger1=!animelemtime(4)
value= 1500,1
volumescale=100
channel=0

[state 3400,bolii]
type=playsnd
trigger1=!animelemtime(8)
value= 1500,0
volumescale=100
channel=0

[state 3400,avaaz]
type=playsnd
trigger1=!animelemtime(8)
value= 1500,2
volumescale=100

[state 3400,prakash]
type=explod
trigger1=!animelemtime(8)
id=1065
anim=1065
postype=back
pos=128,215
bindtime=-1
removetime=-2
random=0,0
velocity=0,0
accel=0,0
ownpal=1
scale=0.5,0.5
sprpriority=5
supermovetime=0
pausemovetime=0

[state 3400,Energy]
type=helper
trigger1=!animelemtime(4)
helpertype=normal
name="Energy"
ID=3560
stateno=3560
postype=p1
pos=0,0
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5
supermovetime=40
pausemovetime=40

;[state 3400,Energy]
;type=helper
;trigger1=!animelemtime(12)
;helpertype=normal
;name="Energy"
;ID=1070
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.65
;size.yscale=0.55

[state 1900,prakash]
type=explod
trigger1=!animelemtime(12)
id=1070
anim=1070
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.65,0.55
sprpriority=5
supermovetime=0
pausemovetime=0

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 70

[State 1100, VelSet]
type = VelSet
trigger1 = animelem = 12
x = 0

[State 3300, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = animelemno(0)=8
attr = S, HT
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = 0
getPower = 0,0
givePower = 36, 36
pauseTime = 1,12
guard.pauseTime = 1,12
animType = Hard
air.animType = back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 14
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0,0
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -25
envshake.time=12
envshake.ampl=6
palfx.color=256
palfx.mul=128,128,128
palfx.add=0,0,0
palfx.sinadd=256,256,256,4
palfx.time=32
ID=3550
p1stateno=3555

[state 3400,bekaar]
type=statetypeset
trigger1=!animelemtime(13)
movetype=I

[state 3400,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Lightning Barrage Destroy
[Statedef 3555]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=1

[state 3405,maar]
type=hitadd
trigger1=!time
value=-1

[state 3405,anim]
type=changeanim
trigger1=!time
value=9999

[state 3405,fasla]
type=attackdist
trigger1=1
value=0

[state 3405,chaayaa]
type=afterimagetime
trigger1=!time
time=0

[state 3405,Background]
type=helper
trigger1=!time
helpertype=normal
name="Background"
ID=3575
stateno=3575
postype=p1
pos=0,0
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
supermovetime=65536
pausemovetime=65536

[state 3405,maar]
type=varset
trigger1=!time
var(12)=0

[state 3405,maar]
type=varadd
trigger1=time>32
var(12)=1

[state 3405,maar]
type=varset
trigger1=!time
var(11)=0

[state 3405,maar]
type=varadd
trigger1=time>=32
trigger1=!(var(12)%4)
var(11)=1

[state 3405,maar]
type=targetstate
trigger1=!time
trigger2=time>=32
trigger2=!(var(12)%4)
value=3595
id=3550

[state 3405,maar]
type=targetfacing
trigger1=!time
value=-1
id=3550

[state 3405,maar]
type=bindtotarget
trigger1=numtarget
trigger1=!time
pos=-target,const(size.ground.back)*2,0
id=3550

[state 3405,avaaz]
type=playsnd
trigger1=time>=32
trigger1=!(var(12)%4)
value= 2,7
channel=1

[state 3405,maar]
type=targetlifeadd
trigger1=time>=32
trigger1=!(var(12)%4)
value=ceil(-9*fvar(11))
id=3550
kill=var(11)=21

[state 3405,maar]
type=targetpoweradd
trigger1=time>=32
trigger1=!(var(12)%4)
value=21
id=3550

[state 3405,shakti]
type=poweradd
trigger1=time>=32
trigger1=!(var(12)%4)
value=0*!var(25)

[state 3405,maar]
type=envshake
trigger1=time>=32
trigger1=!(var(12)%4)
time=12
ampl=6

[state 3405,maar]
type=hitadd
trigger1=time>=32
trigger1=!(var(12)%4)
value=1

[State 3206, HitSpark]
type = Helper
trigger1=time>=32
trigger1=!(var(12)%4)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil((p2dist x+25)+(-random%75)),ceil((p2dist y-100)+(random%75))
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state 3405,Lightning]
type=helper
trigger1=time>=32
trigger1=!(var(12)%2)
helpertype=normal
name="Lightning"
ID=3520
stateno=3520
postype=left
pos=random%320,-random%160
facing=cond(random<500,1,-1)
keyctrl=0
ownpal=0
size.xscale=1.0
size.yscale=0.25

[state 3405,badalna]
type=changestate
trigger1=var(11)>=21
value=3570
ctrl=0

;Lightning Barrage Finish
[Statedef 3570]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=1

[state 3410,anim]
type=changeanim
trigger1=!time
value=3510

[state 3410,roop]
type=angledraw
trigger1=animelemtime(1)>=0
trigger1=animelemtime(4)<0
scale=0.65,0.55

[state 3410,roop]
type=trans
trigger1=animelemtime(1)>=0
trigger1=animelemtime(4)<0
trans=addalpha
alpha=256,256

[state 3410,ajay]
type=nothitby
trigger1=animelemno(0)=[2,4]
value=SCA

[state 3410,maar]
type=targetstate
trigger1=!time
value=3596
id=3550

[state 3410,maar]
type=targetfacing
trigger1=!time
value=-1
id=3550

[state 3410,maar]
type=turn
trigger1=!time
trigger1=facing=target(3550),facing

[state 3410,maar]
type=targetbind
trigger1=numtarget(3550)
trigger1=!time
pos=(target(3550),pos x-pos x)*facing,0
id=3550

[state 3410,maar]
type=bindtotarget
trigger1=numtarget(3550)
trigger1=!time
pos=-target(3550),const(size.ground.back)*2,-target(3550),pos y
id=3550

;[state 3410,Energy]
;type=helper
;trigger1=!animelemtime(4)
;helpertype=normal
;name="Energy"
;ID=1070
;stateno=1000
;postype=p1
;facing=1
;ownpal=1
;keyctrl=0
;size.xscale=0.65
;size.yscale=0.55

[state 1900,prakash]
type=explod
trigger1=!animelemtime(4)
id=1070
anim=1070
postype=p1
facing=1
pos=0,0
ownpal=1
scale=0.65,0.55
sprpriority=5
supermovetime=0
pausemovetime=0

[state 3410,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Lightning Barrage Background Effects
[Statedef 3575]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=0

[state 3415,bind]
type=bindtoparent
trigger1=1
pos=0,-15

[state 3415,roop]
type=assertspecial
trigger1=1
flag=nofg

[state 3415,anim]
type=changeanim
trigger1=!time
value=9999

[state 3415,darken]
type=bgpalfx
trigger1=parent,stateno=3555
trigger1=var(0)<16
trigger1=var(0):=var(0)+1
time=5
mul=256-(16*var(0)),256-(16*var(0)),256-(16*var(0))
add=0,0,0
color=256
invertall=0

[state 3415,darken]
type=bgpalfx
trigger1=parent,stateno=3555
trigger1=var(0)=16
time=5
mul=0,0,0
add=0,0,0
color=256
invertall=0

[state 3415,darken]
type=bgpalfx
trigger1=parent,stateno=3570
trigger1=var(1)<16
trigger1=var(1):=var(1)+1
time=5
mul=16*var(1),16*var(1),16*var(1)
add=0,0,0
color=256
invertall=0

[state 3415,marna]
type=destroyself
trigger1=parent,stateno!=[3555,3570]

;========================<ILLUMINATIVE SPARKS>=============================
[StateDef 3600]
type = S
physics = S
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-10 * const(size.xScale)), ceil(-45 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[state 3500,murna]
type=varset
trigger1=!time
var(12)=2

[state 3500,murna]
type=varadd
trigger1=!animelemtime(10)
var(12)=-1

[state 3500,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(10)
value=anim
elem=7

[state 3500,fasla]
type=attackdist
trigger1=1
value=const(size.proj.attack.dist)

[state 3500,Spark]
type=helper
trigger1=!animelemtime(6)
helpertype=normal
name="Spark"
ID=3640
stateno=3640
postype=p1
pos=80,-40
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0

[state 3500,bekaar]
type=statetypeset
trigger1=!animelemtime(12)
movetype=I

[state 3500,badalna]
type=changestate
trigger1=numhelper(3640)
trigger1=helper(3640),stateno=3665
value=3605
ctrl=0

[state 3500,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Millennium Clap Loop
[StateDef 3605]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=1

[state 3550,id]
type=varset
trigger1=numhelper(3640)
trigger1=!time
var(55)=helper(3640),var(55)

[state 3505,anim]
type=changeanim
trigger1=!time
value=3605

[state 3505,murna]
type=varset
trigger1=!time
var(12)=43

[state 3505,murna]
type=varadd
trigger1=!animelemtime(7)
var(12)=-1

[state 3505,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(7)
value=anim
elem=4

[state 3505,murna]
type=varset
trigger1=!animelemtime(8)
var(12)=16

[state 3505,murna]
type=varadd
trigger1=!animelemtime(12)
var(12)=-1

[state 3505,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(12)
value=anim
elem=9

[state 3505,ajay]
type=nothitby
trigger1=1
value=SCA
time=1

[state 3505,fasla]
type=attackdist
trigger1=1
value=0

[state 3505,chaayaa]
type=afterimagetime
trigger1=!time
time=0

[state 3505,bolii]
type=playsnd
trigger1=time=12
value= 3600,0
volumescale=100
channel=0

[state 3505,bolii]
type=playsnd
trigger1=time=223
value= 3600,2
volumescale=100
channel=0

[state 3505,dharna]
type=posadd
trigger1=!time
x=-backedgedist+40

[state 3405,Background]
type=helper
trigger1=!time
helpertype=normal
name="Background"
ID=3615
stateno=3615
postype=p1
pos=0,0
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
supermovetime=65536
pausemovetime=65536

[state 3505,camera]
type=helper
trigger1=playeridexist(var(55))
trigger1=!time
helpertype=normal
name="Camera"
ID=3610
stateno=3610
postype=p1
pos=ceil(playerid(var(55)),pos x-pos x)*facing,0
facing=1
ownpal=1
keyctrl=0

[state 3405,Seal-1]
type=helper
trigger1=time=43
helpertype=normal
name="Seal-1"
ID=3620
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-1]
type=helper
trigger1=time=43
helpertype=normal
name="Seal-1"
ID=3621
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-2]
type=helper
trigger1=time=103
helpertype=normal
name="Seal-2"
ID=3622
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-2]
type=helper
trigger1=time=103
helpertype=normal
name="Seal-2"
ID=3623
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-3]
type=helper
trigger1=time=163
helpertype=normal
name="Seal-3"
ID=3624
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-3]
type=helper
trigger1=time=163
helpertype=normal
name="Seal-3"
ID=3625
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-4]
type=helper
trigger1=time=223
helpertype=normal
name="Seal-4"
ID=3626
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-4]
type=helper
trigger1=time=223
helpertype=normal
name="Seal-4"
ID=3627
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Bolt-1]
type=helper
trigger1=time=281
helpertype=normal
name="Bolt-1"
ID=3625
stateno=3625
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*-120)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Bolt-2]
type=helper
trigger1=time=291
helpertype=normal
name="Bolt-2"
ID=3626
stateno=3625
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*-120)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3505,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Millennium Clap Camera
[Statedef 3610]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0

[state 3350,id]
type=varset
trigger1=!time
var(55)=parent,var(55)

[state 3510,anim]
type=changeanim
trigger1=anim!=9999
value=9999

[state 3510,kaas]
type=screenbound
trigger1=1
value=1
movecamera=1,1

[state 3510,marna]
type=destroyself
trigger1=!parent,numhelper(3640)
trigger2=!parent,numhelper(3670)

;Millennium Clap Background Effects
[Statedef 3615]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=0

[state 3515,bind]
type=bindtoparent
trigger1=1
pos=0,-15

[state 3515,roop]
type=null;assertspecial
trigger1=1
flag=nofg
flag2=nobardisplay
;flag3=nomusic

[state 3515,anim]
type=changeanim
trigger1=!time
value=9999

[state 3515,avaaz]
type=playsnd
trigger1=!time
value= 3600,4
volumescale=100

[state 3515,avaaz]
type=playsnd
trigger1=time=5
value= 3600,3
volumescale=100

[state 3515,white]
type=explod
trigger1=!time
ID=1
anim=7010
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=36
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=5

[state 3515,white]
type=modifyexplod
trigger1=time>4
trigger1=numexplod(1)
trigger1=var(0):=var(0)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(8*var(0)),8*var(0)
id=1

[state 3515,aura]
type=explod
trigger1=!time
ID=2
anim=1085
postype=p1
pos=0,15
facing=1
removetime=-1
bindtime=-1
ontop=1
under=0
ownpal=1
scale=0.5,0.5
supermovetime=-1
pausemovetime=-1
sprpriority=5

[state 3515,aura]
type=removeexplod
trigger1=parent,time=407
id=2

[state 3515,fog]
type=explod
trigger1=parent,time=138
ID=3
anim=7015
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=-1
bindtime=-1
ontop=0
under=1
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=-5

[state 3515,fog]
type=modifyexplod
trigger1=parent,time>=138
trigger1=numexplod(3)
trigger1=var(1):=var(1)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=(1*var(1)),256
id=3

[state 3515,fog]
type=removeexplod
trigger1=parent,time=407
id=3

[state 3515,ray]
type=explod
trigger1=parent,time=226
ID=4
anim=7020
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=64
bindtime=-1
ontop=0
under=0
ownpal=0
scale=1.5,gameheight
supermovetime=-1
pausemovetime=-1
sprpriority=4

[state 3515,ray]
type=modifyexplod
trigger1=parent,time>=226
trigger1=numexplod(4)
trigger1=var(2):=var(2)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=(4*var(2)),256
id=4

[state 3515,ray]
type=modifyexplod
trigger1=parent,time>=258
trigger1=numexplod(4)
trigger1=var(2):=var(2)-1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=(4*var(2)),256
id=4

[state 3515,white]
type=explod
trigger1=parent,time=290
ID=5
anim=7010
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=32
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=5

[state 3515,white]
type=modifyexplod
trigger1=parent,time>291
trigger1=numexplod(5)
trigger1=var(5):=var(5)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(4*var(5)),4*var(5)
id=5

[state 3515,light]
type=explod
trigger1=parent,time=304
ID=6
anim=7025
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=21
bindtime=-1
ontop=0
under=0
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=-4

[state 3515,light]
type=modifyexplod
trigger1=numexplod(6)
trigger1=var(24):=var(24)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(12*var(24)),256
id=6

[state 3515,circle]
type=explod
trigger1=parent,time=304
ID=7
anim=1130
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=32
bindtime=-1
ontop=0
under=0
ownpal=1
scale=0.5,0.5
supermovetime=-1
pausemovetime=-1
sprpriority=-4

[state 3515,circle]
type=modifyexplod
trigger1=numexplod(7)
trigger1=var(46):=var(46)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
scale=0.5+(0.04*var(46)),0.5+(0.04*var(46))
trans=addalpha
alpha=256-(8*var(46)),256
id=7

[state 3515,white]
type=explod
trigger1=parent,time=352
ID=8
anim=7010
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=32
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=5

[state 3515,white]
type=modifyexplod
trigger1=parent,time>353
trigger1=numexplod(8)
trigger1=var(56):=var(56)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(4*var(56)),4*var(56)
id=8

[state 3515,light]
type=explod
trigger1=parent,time=368
ID=9
anim=7025
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=21
bindtime=-1
ontop=0
under=0
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=-4

[state 3515,light]
type=modifyexplod
trigger1=numexplod(9)
trigger1=var(57):=var(57)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(12*var(57)),256
id=9

[state 3515,circle]
type=explod
trigger1=parent,time=368
ID=10
anim=1130
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=32
bindtime=-1
ontop=0
under=0
ownpal=1
scale=0.5,0.5
supermovetime=-1
pausemovetime=-1
sprpriority=-4

[state 3515,circle]
type=modifyexplod
trigger1=numexplod(10)
trigger1=var(59):=var(59)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
scale=0.5+(0.04*var(59)),0.5+(0.04*var(59))
trans=addalpha
alpha=256-(8*var(59)),256
id=10

[state 3515,white]
type=explod
trigger1=parent,time=386
ID=11
anim=7010
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
facing=1
removetime=37
bindtime=-1
ontop=1
under=0
ownpal=1
scale=1.0,1.0
supermovetime=-1
pausemovetime=-1
sprpriority=5

[state 3515,white]
type=modifyexplod
trigger1=parent,time>=386
trigger1=numexplod(11)
trigger1=var(52):=var(52)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=(12*var(52)),256-(12*var(52))
id=11

[state 3515,white]
type=modifyexplod
trigger1=parent,time>407
trigger1=numexplod(11)
trigger1=var(53):=var(53)+1
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*120)
trans=addalpha
alpha=256-(16*var(53)),16*var(53)
id=11

[state 3515,darken]
type=bgpalfx
trigger1=parent,animelemtime(13)<0
trigger1=var(10)<16
trigger1=var(10):=var(10)+1
time=10
mul=256-(16*var(10)),256-(16*var(10)),256-(16*var(10))
add=0,0,0
color=256
invertall=0

[state 3515,darken]
type=bgpalfx
trigger1=parent,animelemtime(13)<0
trigger1=var(10)=16
time=10
mul=0,0,0
add=0,0,0
color=256
invertall=0

[state 3515,darken]
type=bgpalfx
trigger1=parent,animelemtime(13)>=0
trigger1=var(12)<16
trigger1=var(12):=var(12)+1
time=10
mul=16*var(10),16*var(10),16*var(10)
add=0,0,0
color=256
invertall=0

[state 3515,marna]
type=removeexplod
trigger1=time>=407
trigger1=!numexplod(11)
id=-1

[state 3515,marna]
type=destroyself
trigger1=time>=407
trigger1=!numexplod(11)

;Millennium Clap Seal 1
[Statedef 3620]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=0

[state 3520,anim]
type=changeanim
trigger1=!time
value=(1095*ishelper(3620))+(1096*ishelper(3621))+(1097*ishelper(3622))+(1098*ishelper(3623))+(1099*ishelper(3624))+(1121*ishelper(3625))+(1122*ishelper(3626))+(1123*ishelper(3627))

[state 3520,roop]
type=assertspecial
trigger1=1
flag=noshadow

[state 3520,roop]
type=null
trigger1=ishelper(3620)||ishelper(3622)||ishelper(3625)||ishelper(3626)
trigger1=!time
trigger1=fvar(0):=const(size.xscale)||fvar(11):=const(size.yscale)

[state 3520,roop]
type=angledraw
trigger1=ishelper(3620)||ishelper(3622)||ishelper(3625)||ishelper(3626)
trigger1=time<=10
trigger1=fvar(0):=fvar(0)+0.05||fvar(11):=fvar(11)+0.05
value=(time*3)
scale=fvar(0),fvar(11)

[state 3520,roop]
type=angledraw
trigger1=ishelper(3620)||ishelper(3622)||ishelper(3625)||ishelper(3626)
trigger1=time>10
value=((time-10)*3)
scale=fvar(0),fvar(11)

[state 3521,roop]
type=null
trigger1=ishelper(3621)||ishelper(3623)||ishelper(3624)||ishelper(3627)
trigger1=!time
trigger1=fvar(0):=const(size.xscale)||fvar(11):=const(size.yscale)

[state 3521,roop]
type=angledraw
trigger1=ishelper(3621)||ishelper(3623)||ishelper(3624)||ishelper(3627)
trigger1=time<=10
trigger1=fvar(0):=fvar(0)+0.05||fvar(11):=fvar(11)+0.05
value=-(time*3)
scale=fvar(0),fvar(11)

[state 3521,roop]
type=angledraw
trigger1=ishelper(3621)||ishelper(3623)||ishelper(3624)||ishelper(3627)
trigger1=time>10
value=-((time-10)*3)
scale=fvar(0),fvar(11)

[state 3521,roop]
type=trans
trigger1=1
trans=addalpha
alpha=(25*time),256

[state 3520,marna]
type=destroyself
trigger1=parent,anim!=3605
trigger2=parent,stateno!=3605
trigger2=parent,stateno!=3655
trigger3=parent,anim=3605
trigger3=!parent,animelemtime(13)

;Millennium Clap Bolt 1
[Statedef 3625]
type=A
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=0

[state 3525,anim]
type=changeanim
trigger1=!time
value=1125

[state 3525,murna]
type=varset
trigger1=!time
var(12)=(25*ishelper(3625))+(25*ishelper(3626))+(12*ishelper(3627))+(12*ishelper(3628))

[state 3525,murna]
type=varadd
trigger1=!animelemtime(5)
var(12)=-1

[state 3525,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(5)
value=anim
elem=3

[state 3525,roop]
type=assertspecial
trigger1=1
flag=noshadow

[state 3525,roop]
type=angledraw
trigger1=1
value=(0*ishelper(3625))+(90*ishelper(3626))+(-45*ishelper(3627))+(45*ishelper(3628))

[state 3525,roop]
type=trans
trigger1=1
trans=addalpha
alpha=224,256

[state 3525,avaaz]
type=playsnd
trigger1=!time
value= 3600,5
volumescale=100

[state 3525,avaaz]
type=playsnd
trigger1=!time
trigger1=ishelper(3625)||ishelper(3627)
value= 3600,4
volumescale=100

[state 3525,avaaz]
type=playsnd
trigger1=time=6
trigger1=ishelper(3626)||ishelper(3628)
value=1500,2
volumescale=100

[state 3525,hilaav]
type=envshake
trigger1=!time
time=8
ampl=8

[state 3525,marna]
type=destroyself
trigger1=!animtime

;========================<MAX ILLUMINATIVE SPARKS>=============================
[StateDef 3650]
type = S
physics = S
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !animelemtime(3)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-10 * const(size.xScale)), ceil(-45 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !animelemtime(3)
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[state 3500,murna]
type=varset
trigger1=!time
var(12)=2

[state 3500,murna]
type=varadd
trigger1=!animelemtime(10)
var(12)=-1

[state 3500,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(10)
value=anim
elem=7

[state 3500,fasla]
type=attackdist
trigger1=1
value=const(size.proj.attack.dist)

[state 3500,Spark]
type=helper
trigger1=!animelemtime(6)
helpertype=normal
name="Spark"
ID=3670
stateno=3670
postype=p1
pos=80,-40
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0

[state 3500,bekaar]
type=statetypeset
trigger1=!animelemtime(12)
movetype=I

[state 3500,badalna]
type=changestate
trigger1=numhelper(3670)
trigger1=helper(3670),stateno=3685
value=3655
ctrl=0

[state 3500,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;Millennium Clap Loop
[StateDef 3655]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=1

[state 3550,id]
type=varset
trigger1=numhelper(3670)
trigger1=!time
var(55)=helper(3670),var(55)

[state 3505,anim]
type=changeanim
trigger1=!time
value=3605

[state 3505,murna]
type=varset
trigger1=!time
var(12)=43

[state 3505,murna]
type=varadd
trigger1=!animelemtime(7)
var(12)=-1

[state 3505,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(7)
value=anim
elem=4

[state 3505,murna]
type=varset
trigger1=!animelemtime(8)
var(12)=16

[state 3505,murna]
type=varadd
trigger1=!animelemtime(12)
var(12)=-1

[state 3505,murna]
type=changeanim
trigger1=var(12)
trigger1=!animelemtime(12)
value=anim
elem=9

[state 3505,ajay]
type=nothitby
trigger1=1
value=SCA
time=1

[state 3505,fasla]
type=attackdist
trigger1=1
value=0

[state 3505,chaayaa]
type=afterimagetime
trigger1=!time
time=0

[state 3505,bolii]
type=playsnd
trigger1=time=12
value= 3600,0
volumescale=100
channel=0

[state 3505,bolii]
type=playsnd
trigger1=time=223
value= 3600,2
volumescale=100
channel=0

[state 3505,dharna]
type=posadd
trigger1=!time
x=-backedgedist+40

[state 3405,Background]
type=helper
trigger1=!time
helpertype=normal
name="Background"
ID=3615
stateno=3615
postype=p1
pos=0,0
facing=1
ownpal=1
keyctrl=0
size.xscale=1.0
size.yscale=1.0
supermovetime=65536
pausemovetime=65536

[state 3505,camera]
type=helper
trigger1=playeridexist(var(55))
trigger1=!time
helpertype=normal
name="Camera"
ID=3610
stateno=3610
postype=p1
pos=ceil(playerid(var(55)),pos x-pos x)*facing,0
facing=1
ownpal=1
keyctrl=0

[state 3405,Seal-1]
type=helper
trigger1=time=43
helpertype=normal
name="Seal-1"
ID=3620
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-1]
type=helper
trigger1=time=43
helpertype=normal
name="Seal-1"
ID=3621
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-2]
type=helper
trigger1=time=103
helpertype=normal
name="Seal-2"
ID=3622
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-2]
type=helper
trigger1=time=103
helpertype=normal
name="Seal-2"
ID=3623
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-170)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-3]
type=helper
trigger1=time=163
helpertype=normal
name="Seal-3"
ID=3624
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-3]
type=helper
trigger1=time=163
helpertype=normal
name="Seal-3"
ID=3625
stateno=3620
postype=left
pos=70,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-4]
type=helper
trigger1=time=223
helpertype=normal
name="Seal-4"
ID=3626
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Seal-4]
type=helper
trigger1=time=223
helpertype=normal
name="Seal-4"
ID=3627
stateno=3620
postype=left
pos=250,ceil((1.33*gameheight/gamewidth)*-40)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Bolt-1]
type=helper
trigger1=time=281
helpertype=normal
name="Bolt-1"
ID=3625
stateno=3625
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*-120)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Bolt-2]
type=helper
trigger1=time=291
helpertype=normal
name="Bolt-2"
ID=3626
stateno=3625
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*-120)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Bolt-3]
type=helper
trigger1=time=336
helpertype=normal
name="Bolt-3"
ID=3627
stateno=3625
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*-120)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3405,Bolt-4]
type=helper
trigger1=time=354
helpertype=normal
name="Bolt-4"
ID=3628
stateno=3625
postype=left
pos=160,ceil((1.33*gameheight/gamewidth)*-120)
facing=1
ownpal=1
keyctrl=0
size.xscale=0.5
size.yscale=0.5

[state 3505,badalna]
type=changestate
trigger1=!animtime
value=0
ctrl=1
