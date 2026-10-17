;--- SUPERS ---
;States 2500 - 3499
;Reserved for Super Attacks.
;Examples, Ryu's Shinkku Hadouken, or Shin Shoryuken. Terry Bogard's Power Geyser, or Buster Wolf.

;---------------------------------------------------------------------------
; Power Geyser
[Statedef 3000]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000
sprpriority = 2
facep2 = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !time
time = 40
anim = -1
sound = s3000,0
darken = 0
p2defmul = 1
unhittable = 1

[State 3000, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 40
add = -255,-150,-150
ignorehitpause = 1

[State 3000, Helper]
type = Helper
trigger1 = !time
stateno = 4000
ID = 4000
pos = 10,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4002
pos = 10,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4003
pos = 10,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4004
pos = 10,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4005
pos = 10,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
stateno = 3001
ID = 3001
pos = 55,0
postype = p1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 3
value = SCA
ignorehitpause = 1

[State 3000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 18
ampl = -6
freq = 120
ignorehitpause = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(2)
value = s210,0
channel = 0

[State 3000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) > 0 && !numhelper(3001)
movetype = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Power Geyser Helper
[Statedef 3001]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3

[State 3001, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3001
value = 3001

[State 3001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3001, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3002
ignorehitpause = 1

[State 3001, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 3001, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
damage = ceil(200*root,fvar(11)),40
animtype = Heavy
hitflag = MAFD
guardflag = M
pausetime = 0,12
sparkno = s6002
guard.sparkno = s6004
sparkxy = -10,-50
hitsound = s3001,1
guardsound = s0,10
ground.type = High
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -2,-9
guard.velocity = -8.0
air.type = High
air.velocity = -2,-9
air.hittime = 25
fall = 1
fall.recover = 0
yaccel = 0.4
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 3001, Damage Dampen]
type = ParentVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3001,0

[State 3001, ChangeState]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 3002
ignorehitpause = 1

[State 3001, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
ignorehitpause = 1

;---------------------------------------------------------------------------
; Disappear
[Statedef 3002]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 3

[State 3002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3002, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
ignorehitpause = 1

;---------------------------------------------------------------------------
; Somersault Justice
[Statedef 3010]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3010
poweradd = -1000
sprpriority = 2
facep2 = 1

[State 3010, SuperPause]
type = SuperPause
trigger1 = !time
time = 40
anim = -1
sound = s3000,0
darken = 0
p2defmul = 1
unhittable = 1

[State 3010, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 40
add = -255,-150,-150
ignorehitpause = 1

[State 3010, Helper]
type = Helper
trigger1 = !time
stateno = 4000
ID = 4000
pos = -5,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3010, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4002
pos = -5,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3010, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4003
pos = -5,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3010, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4004
pos = -5,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3010, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4005
pos = -5,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
ignorehitpause = 1

[State 3010, AfterImage]
type = AfterImage
trigger1 = !time
time = 2
length = 15
ignorehitpause = 1

[State 3010, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 0
time = 2
ignorehitpause = 1

[State 3010, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(15) <= 0
x = 4

[State 3010, VelAdd]
type = VelAdd
trigger1 = AnimElem = 15
x = 3.333
y = -11.5

[State 3010, VelAdd]
type = VelAdd
trigger1 = AnimElemNo(0) >= 15
y = 0.5

[State 3010, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 15
statetype = A

[State 3010, Explod]
type = Explod
trigger1 = AnimElem = 15
anim = 6021
pos = -30,floor(-vel y)
postype = p1
ownpal = 1
scale = 0.5,0.5
sprpriority = 10

[State 3010, Explod]
type = Explod
trigger1 = AnimElem = 4 || AnimElem = 10 || AnimElem = 16
anim = 1032
ID = 1032
pos = -30,0
postype = p1
ownpal = 1
scale = 0.4*const(size.xscale),0.4
bindtime = -1
sprpriority = 10
removeongethit = 1

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
value = s240,0
channel = 0

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(14)
value = s430,0
channel = 0

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
value = s1031,0

[State 3010, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
attr = S, HA
damage = ceil(40*fvar(11)),10
animtype = Medium
hitflag = MAF
guardflag = M
pausetime = 3,3
sparkno = s6001
guard.sparkno = s6003
sparkxy = -10,-55
hitsound = s0,4
guardsound = s0,10
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -4.0,0
guard.velocity = -5.0
air.type = High
air.velocity = -3.0,-3.5
air.hittime = 30
air.fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 3010, HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = A, HA
damage = ceil(90*fvar(11)),20
animtype = Heavy
air.animtype = Up
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = s6002
guard.sparkno = s6004
sparkxy = -10,-55
hitsound = s0,5
guardsound = s0,10
ground.type = High
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.25,-15
guard.velocity = -12.0
air.type = High
air.velocity = -4.25,-15
air.hittime = 25
fall = 1
fall.recover = 0
yaccel = 0.75
envshake.time = 15
envshake.ampl = 8
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 3010, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 3010, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 17
movetype = I

[State 3010, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 1031
ctrl = 0

;---------------------------------------------------------------------------
; Marine Shoot
[Statedef 3020]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3020
poweradd = -1000
sprpriority = 2
facep2 = 1

[State 3020, SuperPause]
type = SuperPause
trigger1 = !time
time = 40
movetime = 40
anim = -1
sound = s3000,0
darken = 0
p2defmul = 1
unhittable = 1

[State 3020, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 40
add = -255,-150,-150
ignorehitpause = 1

[State 3020, Helper]
type = Helper
trigger1 = !time
stateno = 4000
ID = 4000
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3020, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4002
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3020, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4003
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3020, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4004
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3020, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4005
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3020, Explod]
type = Explod
trigger1 = time = 1
anim = 3021
ID = 3021
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 10
scale = 1,1
supermovetime = 99999
pausemovetime = 99999

[State 3020, Helper]
type = Helper
trigger1 = AnimElemTime(6) = 1
helpertype = Normal
stateno = 30200
ID = 30200
pos = -20,0
postype = p1
ownpal = 1
ignorehitpause = 1

[State 3020, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 6
value = SCA
ignorehitpause = 1

[State 3020, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3020,0
channel = 1

[State 3020, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; I summon thee!
[Statedef 30200]
type = A
movetype = A
physics = N
ctrl = 0
anim = 99999

[State 30200, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 10
trigger4 = time = 15
trigger5 = time = 20
helpertype = Normal
stateno = 3022
ID = 3022
pos = 0,0
ownpal = 1
ignorehitpause = 1

[State 30200, DestroySelf]
type = DestroySelf
trigger1 = time = 20
trigger2 = parent,movetype = H
ignorehitpause = 1

;---------------------------------------------------------------------------
; Marine Shoot Projectile
[Statedef 3022]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3

[State 3022, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3022
value = 3022

[State 3022, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3022, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 3023
time = -1
ignorehitpause = 1

[State 3022, HitBy]
type = HitBy
trigger1 = 1
value = SCA,SP,HP
time = -1
ignorehitpause = 1

[State 3022, VelSet]
type = VelSet
trigger1 = !time
x = 8

[State 3022, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3021,0
persistent = 5

[State 3022, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
damage = ceil(30*root,fvar(11)),10
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 0,12
sparkno = s6001
guard.sparkno = s6003
sparkxy = -10,-60
hitsound = s0,4
guardsound = s0,10
ground.type = High
ground.slidetime = 23
ground.hittime = 23
ground.velocity = -6,0
air.type = High
air.velocity = -3,-3
air.hittime = 23
air.fall = 1
fall.recover = 0
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 3022, Damage Dampen]
type = ParentVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 3022, ChangeState]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 3023
ignorehitpause = 1

[State 3022, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist <= -100

;---------------------------------------------------------------------------
; Projectile Hit
[Statedef 3023]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 3023
sprpriority = 3

[State 3023, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3023, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
ignorehitpause = 1

;---------------------------------------------------------------------------
; Blue Forte Wave
[Statedef 3030]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3030
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 3030, SuperPause]
type = SuperPause
trigger1 = !time
time = 48
movetime = 48
anim = -1
sound = s3000,1
darken = 0
p2defmul = 1
unhittable = 1

[State 3030, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 48
add = -255,-150,-150
ignorehitpause = 1

[State 3030, Helper]
type = Helper
trigger1 = !time
stateno = 4000
ID = 4000
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3030, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4002
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3030, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4003
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3030, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4004
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3030, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4005
pos = 0,-50
postype = p1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3030, Helper]
type = Helper
trigger1 = !time
stateno = 4010
ID = 4010
pos = 0,-50
postype = p1
ownpal = 1
size.xscale = 0.95
size.yscale = 0.95
supermovetime = 99999
pausemovetime = 99999

[State 3030, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3031
ID = 3031
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 10
scale = 1,1
supermovetime = 99999
pausemovetime = 99999

[State 3030, Helper]
type = Helper
trigger1 = AnimElemTime(8) = 1
helpertype = Normal
stateno = 3032
ID = 3032
pos = -20,0
postype = p1
ownpal = 1
ignorehitpause = 1

[State 3030, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 6
value = SCA
ignorehitpause = 1

[State 3030, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3030,0
channel = 1

[State 3030, ChangeState]
type = ChangeState
trigger1 = NumHelper(3032)
trigger1 = helper(3032),stateno = 3033
value = 3031

[State 3030, ChangeState]
type = ChangeState
trigger1 = NumHelper(3032) = 0
trigger1 = AnimElemTime(8) >= 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Blue Forte Wave - 2
[Statedef 3031]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3031, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(3032)
trigger1 = !(helper(3032),var(0))
value = Anim
elem = AnimElemNo(0)

[State 3031, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3035
trigger1 = NumHelper(3032)
trigger1 = helper(3032),var(0) = 1
value = 3035

[State 3031, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 3031, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3031, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3030,1
channel = 0

[State 3031, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3031,1

[State 3031, ChangeState]
type = ChangeState
trigger1 = WinKo
value = 3050
ctrl = 0

[State 3031, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forte Wave Projectile
[Statedef 3032]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3

[State 3032, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3032
value = 3032

[State 3032, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3032, VelSet]
type = VelSet
trigger1 = !time
x = 8

[State 3032, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3021,0

[State 3032, HitDef]
type = HitDef
trigger1 = !time
attr = A, HP
damage = ceil(360*root,fvar(11)),30
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
sparkxy = 60,0
hitsound = s3031,0
guardsound = s0,10
ground.type = High
ground.slidetime = 23
ground.hittime = 23
ground.velocity = -6,0
air.type = High
air.velocity = -3,-4
air.hittime = 23
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ID = 3032
p1stateno = 3033
p2facing = 1
hitonce = 1
kill = 0
getpower = 0,0
givepower = 0,0

[State 3032, ChangeState]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 3040
ignorehitpause = 1

[State 3032, Damage Dampen]
type = ParentVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 3032, DestroySelf]
type = DestroySelf
trigger1 = root,stateno != 3030
trigger2 = FrontEdgeDist <= -100

;---------------------------------------------------------------------------
; Forte Wave Projectile - Hit
[Statedef 3033]
type = A
movetype = A
physics = N
ctrl = 0
anim = 99999
velset = 0,0

[State 3033, Explod]
type = Explod
trigger1 = !Time && !NumExplod(3033)
anim = 3033
id = 3033
pos = 0,0
postype = p1
sprpriority = 10
ownpal = 1
ignorehitpause = 1

[State 3033, TargetState]
type = TargetState
trigger1 = !time && numtarget
value = 3034
ID = 3032
ignorehitpause = 1

[State 3033, VarSet]
type = VarSet
trigger1 = !time
var(0) = 0
ignorehitpause = 1

[State 3033, VarAdd]
type = VarAdd
trigger1 = numtarget
trigger1 = target,hitshakeover
trigger1 = var(0) < 2
var(0) = 1
ignorehitpause = 1

[State 3033, ReversalDef]
type = ReversalDef
trigger1 = ishelper
trigger1 = !numtarget
reversal.attr = SCA,AA,AP,AT
ignorehitpause = 1

[State 3033, Explod]
type = Explod
trigger1 = var(0) = 1 && numtarget
trigger1 = !numexplod(3034)
anim = 3034
id = 3034
pos = ceil((target,pos x-pos x)*facing+(target,const(size.ground.back)*0.10)),ceil(target,pos y)
postype = p1
facing = 1
removetime = -1
sprpriority = 2
ignorehitpause = 1

[State 3033, ModifyExplod]
type = ModifyExplod
trigger1 = numtarget
trigger1 = numexplod(3034)
id = 3034
pos = ceil((target,pos x-pos x)*facing+(target,const(size.ground.back)*0.10)),ceil(target,pos y)
postype = p1
ignorehitpause = 1

[State 3033, HitAdd]
type = HitAdd
triggerall = ishelper
triggerall = numtarget
triggerall = root,anim = 3035
triggerall = root,stateno = 3031
trigger1 = root,AnimElem = 4
trigger2 = root,AnimElem = 8
trigger3 = root,AnimElem = 12
trigger4 = root,AnimElem = 16
trigger5 = root,AnimElem = 20
value = 1

[State 3033, TargetLifeAdd]
type = TargetLifeAdd
triggerall = ishelper
triggerall = numtarget
triggerall = root,anim = 3035
triggerall = root,stateno = 3031
trigger1 = root,AnimElem = 4
trigger2 = root,AnimElem = 8
trigger3 = root,AnimElem = 12
trigger4 = root,AnimElem = 16
trigger5 = root,AnimElem = 20
value = -4
kill = (root,AnimElem = 20)

[State 3033, TargetState]
type = TargetState
triggerall = ishelper
triggerall = numtarget
triggerall = root,stateno = 3031
triggerall = root,anim = 3035
trigger1 = root,AnimElem = 20
value = 3036

[State 3033, TargetState]
type = TargetState
triggerall = ishelper
triggerall = numtarget
triggerall = root,stateno = 3050
trigger1 = root,time = 1
value = 3037

[State 3033, TargetState]
type = TargetState
triggerall = ishelper
triggerall = numtarget
triggerall = root,stateno = 3050
trigger1 = root,time = 80
value = 3038

[State 3033, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3034)
trigger1 = !numtarget
trigger1 = root,anim = 3035
trigger1 = root,AnimElem = 20
trigger2 = roundstate = 2
trigger2 = root,stateno != 3031
trigger3 = numtarget
trigger3 = (target,stateno = 3036 && target,time = 1 && !(root,winko)) || target,stateno = 3038

[State 3033, DestroySelf]
type = DestroySelf
trigger1 = roundstate = 2
trigger1 = root,stateno != 3031

;---------------------------------------------------------------------------
; Hit by Blue Forte Wave
[Statedef 3034]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 3

[State 3034, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3034, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3034, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3034, Offset]
type = Offset
trigger1 = !hitshakeover
x = (animelemtime(1)%2)
ignorehitpause = 1

[State 3034, PosSet]
type = PosSet
trigger1 = !hitshakeover
y = 0
ignorehitpause = 1
persistent = 0

[State 3034, PosFreeze]
type = PosFreeze
trigger1 = !hitshakeover
value = 1
ignorehitpause = 1

[State 3034, ChangeAnim]
type = ChangeAnim
trigger1 = !hitshakeover
value = 5001
ignorehitpause = 1

[State 3034, ChangeAnim]
type = ChangeAnim
trigger1 = time
value = 5001
ignorehitpause = 1

[State 3034, ChangeState]
type = ChangeState
trigger1 = hitshakeover
value = 3035

;---------------------------------------------------------------------------
; Hit by Blue Forte Wave - 2
[Statedef 3035]
type = A
movetype = H
physics = N
velset = 0,-0.60
ctrl = 0
sprpriority = 3

[State 3035, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3035, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3035, ChangeAnim2]
type = ChangeAnim2
trigger1 = (name = "Erika Kurumi" * authorname = "Sergio P") <= 0
trigger1 = !time
value = 3036
ignorehitpause = 1

[State 3035, ChangeAnim]
type = ChangeAnim
trigger1 = (name = "Erika Kurumi" * authorname = "Sergio P") >= 1
trigger1 = !time
value = 30366
ignorehitpause = 1

[State 3035, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Hit by Blue Forte Wave - 3
[Statedef 3036]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 3

[State 3036, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3036, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3036, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 5030+(5*(SelfAnimExist(5035) = 1))
ignorehitpause = 1

[State 3036, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && AnimTime = 0
value = 5050

[State 3036, VelSet]
type = VelSet
trigger1 = time = 1
x = -3.0
y = -4.0

[State 3036, VelAdd]
type = VelAdd
trigger1 = time
y = 0.50

[State 3036, SelfState]
type = SelfState
trigger1 = Pos Y + Vel Y >= 0
trigger1 = Time
value = 5100

[State 3036, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Hit by Blue Forte Wave - Dying
[Statedef 3037]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,vel y
sprpriority = 3

[State 3037, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3037, VelMul]
type = VelMul
trigger1 = time
y = 0.98
ignorehitpause = 1

[State 3037, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Hit by Blue Forte Wave - Dead
[Statedef 3038]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3038, DestroySelf]
type = DestroySelf
trigger1 = ishelper
ignorehitpause = 1

[State 3038, LifeSet]
type = LifeSet
trigger1 = !time
value = 0
ignorehitpause = 1

[State 3038, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3038, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3038, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 99999
ignorehitpause = 1

[State 3038, PosSet]
type = PosSet
trigger1 = !time
y = 2147483647
ignorehitpause = 1

[State 3038, SelfState]
type = SelfState
trigger1 = time = 1
value = 5150

;---------------------------------------------------------------------------
; Forte Wave Projectile Guarded
[Statedef 3040]
type = A
movetype = I
physics = N
ctrl = 0
anim = 99999
velset = 0,0
sprpriority = 3

[State 3040, Explod]
type = Explod
trigger1 = !Time && !NumExplod(3033)
anim = 3033
id = 3033
pos = 0,0
postype = p1
sprpriority = 10
ownpal = 1
ignorehitpause = 1

[State 3040, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = NoShadow
ignorehitpause = 1

[State 3040, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3040, DestroySelf]
type = DestroySelf
trigger1 = Time >= 32

;---------------------------------------------------------------------------
; Blue Forte Wave - Win
[Statedef 3050]
type = S
movetype = I
physics = N
velset = 0,0
sprpriority = 2

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3035
elem = 20

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3050, ChangeState]
type = ChangeState
trigger1 = time >= 120
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; SuperPause Helper
[Statedef 4000]
ctrl = 0
anim = 6010

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4000, Trans]
type = Trans
trigger1 = time <= 9
trans = addalpha
alpha = 28*time,256

[State 4000, Trans]
type = Trans
trigger1 = time >= 10
trigger1 = time <= 20
trans = addalpha
alpha = 256,256

[State 4000, Trans]
type = Trans
trigger1 = time >= 20
trans = addalpha
alpha = 256-25*(time-20),256

[State 4000, AngleDraw]
type = AngleDraw 
trigger1 = time <= 9
scale = 0.1+(time*0.1),0.1+(time*0.1)

[State 4000, AngleDraw]
type = AngleDraw 
trigger1 = time >= 10
scale = 1,1

[State 4000, DestroySelf]
type = DestroySelf
trigger1 = time = 30
ignorehitpause = 1

;---------------------------------------------------------------------------
; SuperPause Helper 2
[Statedef 4001]
ctrl = 0
anim = 6011

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4001, Trans]
type = Trans
trigger1 = time <= 9
trans = addalpha
alpha = 28*time,256

[State 4001, Trans]
type = Trans
trigger1 = time >= 10
trigger1 = time <= 20
trans = addalpha
alpha = 256,256

[State 4001, Trans]
type = Trans
trigger1 = time >= 20
trans = addalpha
alpha = 256-25*(time-20),256

[State 4001, AngleSet]
type = AngleSet
trigger1 = IsHelper(4002) = 1
trigger1 = !time
value = 0

[State 4001, AngleSet]
type = AngleSet
trigger1 = IsHelper(4003) = 1
trigger1 = !time
value = 90

[State 4001, AngleSet]
type = AngleSet
trigger1 = IsHelper(4004) = 1
trigger1 = !time
value = 180

[State 4001, AngleSet]
type = AngleSet
trigger1 = IsHelper(4005) = 1
trigger1 = !time
value = 270

[State 4001, AngleAdd]
type = AngleAdd
trigger1 = 1
value = -5

[State 4001, AngleDraw]
type = AngleDraw 
trigger1 = 1

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = time = 30
ignorehitpause = 1

;---------------------------------------------------------------------------
; SuperPause Helper 3
[Statedef 4010]
ctrl = 0
anim = 6016

[State 4010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4010, Trans]
type = Trans
trigger1 = time <= 9
trans = addalpha
alpha = 28*time,256

[State 4010, Trans]
type = Trans
trigger1 = time >= 10
trigger1 = time <= 20
trans = addalpha
alpha = 256,256

[State 4010, Trans]
type = Trans
trigger1 = time >= 20
trans = addalpha
alpha = 256-25*(time-20),256

[State 4010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
ignorehitpause = 1