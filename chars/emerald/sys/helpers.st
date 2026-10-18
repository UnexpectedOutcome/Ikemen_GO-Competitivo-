;---------------------------------------------------------------------------
;Youma 1
[Statedef 6000]
type = S
movetype = A
physics = N
anim = 6500
ctrl = 0
velset = 5,0
sprpriority = 2

[State 6000, screen]
type = ScreenBound
trigger1 = ishelper(6000)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6000, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = ishelper(6000)
trigger1 = !time
anim = 6043
pos = 0,0
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = add
removeongethit = 1
ignorehitpause = 1

[State 6000, hit]
type = Hitdef
triggerall = ishelper(6000)
trigger1 = !time
attr = S,SA
damage = 40,10
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = M
sparkno = S6300
guard.sparkno = S6305
sparkxy = -10,-75
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 6,12
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-5.5
air.velocity = -2.5,-5.5
air.cornerpush.veloff = 0
air.animtype = Back
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 3
envshake.freq = 70

[State 6000, Anim]
type = ChangeAnim
triggerall = ishelper(6000)
trigger1 = movecontact
value = 6501
persistent = 0

[State 6000, Vel]
type = VelSet
triggerall = ishelper(6000)
trigger1 = movecontact
x = 0
ignorehitpause = 1

[State 6000, STS]
type = StateTypeSet
triggerall = ishelper(6000)
triggerall = anim = 6501
trigger1 = !time
movetype = I
ignorehitpause = 1

[State 6000, Destroy]
type = DestroySelf
triggerall = ishelper(6000)
triggerall = anim = 6501
trigger1 = !animtime

;---------------------------------------------------------------------------
;Youma 2
[Statedef 6010]
type = S
movetype = A
physics = N
anim = 6510
ctrl = 0
velset = 6,0
sprpriority = 2

[State 6010, screen]
type = ScreenBound
trigger1 = ishelper(6010)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6010, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = ishelper(6010)
trigger1 = !time
anim = 6043
pos = 0,0
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = add
removeongethit = 1
ignorehitpause = 1

[State 6010, hit]
type = Hitdef
triggerall = ishelper(6010)
trigger1 = !time
attr = S,SA
damage = 60,20
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = M
sparkno = S6301
guard.sparkno = S6305
sparkxy = -10,-75
hitsound = S200,8
guardsound = S120,(random%2)
pausetime = 6,12
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-5.5
air.velocity = -2.5,-5.5
air.cornerpush.veloff = 0
air.animtype = Back
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 3
envshake.freq = 75

[State 6010, Anim]
type = ChangeAnim
triggerall = ishelper(6010)
trigger1 = movecontact
value = 6511
persistent = 0

[State 6010, Vel]
type = VelSet
triggerall = ishelper(6010)
trigger1 = movecontact
x = 0
ignorehitpause = 1

[State 6010, STS]
type = StateTypeSet
triggerall = ishelper(6010)
triggerall = anim = 6511
trigger1 = !time
movetype = I
ignorehitpause = 1

[State 6010, Destroy]
type = DestroySelf
triggerall = ishelper(6010)
trigger1 = anim = 6511
trigger1 = !animtime

;---------------------------------------------------------------------------
;Youma 3
[Statedef 6020]
type = S
movetype = A
physics = N
anim = 6520
ctrl = 0
velset = 7,0
sprpriority = 2

[State 6020, screen]
type = ScreenBound
trigger1 = ishelper(6020)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6020, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = ishelper(6020)
trigger1 = !time
anim = 6043
pos = 0,0
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = add
removeongethit = 1
ignorehitpause = 1

[State 6020, hit]
type = Hitdef
triggerall = ishelper(6020)
trigger1 = !time
attr = S,SA
damage = 80,40
animtype = Hard
priority = 5,Hit
hitflag = MAF
guardflag = M
sparkno = S6302
guard.sparkno = S6305
sparkxy = -10,-75
hitsound = S200,10
guardsound = S120,(random%2)
pausetime = 6,12
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-5.5
air.velocity = -2.5,-5.5
air.cornerpush.veloff = 0
air.animtype = Back
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
envshake.freq = 75

[State 6020, Anim]
type = ChangeAnim
triggerall = ishelper(6020)
trigger1 = movecontact
value = 6521
persistent = 0

[State 6020, Vel]
type = VelSet
triggerall = ishelper(6020)
trigger1 = movecontact
x = 0
ignorehitpause = 1

[State 6020, STS]
type = StateTypeSet
triggerall = ishelper(6020)
triggerall = anim = 6521
trigger1 = !time
movetype = I
ignorehitpause = 1

[State 6020, Destroy]
type = DestroySelf
triggerall = ishelper(6020)
triggerall = anim = 6521
trigger1 = !animtime

;---------------------------------------------------------------------------
;Youma Special
[Statedef 6050]
type = S
movetype = I
physics = N
anim = 6550
ctrl = 0
velset = 0,0
sprpriority = 5

[State 6050, screen]
type = ScreenBound
trigger1 = ishelper(6050)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6050, pos]
type = PosSet
triggerall = ishelper(6050)
trigger1 = !time
y = 0

[State 6050, vel]
type = VelSet
trigger1 = ishelper(6050)
x = const(velocity.walk.fwd.x)

[State 6050, self]
type = SelfState
triggerall = ishelper(6050)
trigger1 = enemynear,statetype != A
trigger1 = P2BodyDist X = [-60,60]
value = 6051
ctrl = 0

[State 6050, destroy]
type = DestroySelf
triggerall = ishelper(6050)
trigger1 = FrontEdgeDist<-80

;---------------------------------------------------------------------------
[Statedef 6051]
type = S
movetype = A
physics = N
anim = 6551
ctrl = 0
velset = 0,0
sprpriority = 5

[State 6051, screen]
type = ScreenBound
trigger1 = ishelper(6050)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6051, snd]
type = PlaySnd
triggerall = ishelper(6050)
trigger1 = !time
value = S300,8
volumescale = 255

[State 6051, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = ishelper(6050)
trigger1 = !animelemtime(3)
anim = 6042
pos = 0,0
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
trans = add
ignorehitpause = 1

[State 6051, hit]
type = HitDef
triggerall = ishelper(6050)
triggerall = enemynear,stateno != [5040,5049]
trigger1 = !time
attr = S,NA
damage = 100,50
animtype = hard
priority = 5,hit
hitflag = MAF
guardflag = L
sparkno = s6302
guard.sparkno = s6305
sparkxy = -10,-45
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 10,13
givepower = -50,-50
ground.hittime = 20
ground.type = trip
ground.slidetime = 20
ground.velocity = -3.5,-8
ground.cornerpush.veloff = 0
guard.velocity = -12
guard.cornerpush.veloff = -22
air.velocity = -3.5,-8
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 90
fall.animtype = back
fall.yvelocity = -3
fall.envshake.time = 14
fall.envshake.ampl = 7
envshake.time = 12
envshake.ampl = 6

[State 6051, destroy]
type = DestroySelf
triggerall = ishelper(6050)
trigger1 = !animtime

;---------------------------------------------------------------------------
;Youma Flamer
[Statedef 6100]
type = S
movetype = I
physics = N
anim = 6600
ctrl = 0
velset = 0,0
sprpriority = 5

[State 6100, screen]
type = ScreenBound
trigger1 = ishelper(6100)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6100, pos]
type = PosSet
triggerall = ishelper(6100)
trigger1 = !time
y = 0

[State 6100, vel]
type = VelSet
trigger1 = ishelper(6100)
x = const(velocity.walk.fwd.x)

[State 6100, self]
type = SelfState
triggerall = ishelper(6100)
triggerall = BackEdgeDist > 1
trigger1 = P2BodyDist X = [20,160]
value = 6101
ctrl = 0

[State 6100, destroy]
type = DestroySelf
triggerall = ishelper(6100)
trigger1 = FrontEdgeDist<-80

;---------------------------------------------------------------------------
[Statedef 6101]
type = S
movetype = A
physics = N
anim = 6601
ctrl = 0
velset = 0,0
sprpriority = 5

[State 6101, screen]
type = ScreenBound
trigger1 = ishelper(6100)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6101, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = ishelper(6100)
trigger1 = !animelemtime(1)
anim = 6043
pos = 0,3
postype = p1
scale = 0.5,0.5
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
trans = add
ignorehitpause = 1

[State 6101, snd]
type = PlaySnd
triggerall = ishelper(6100)
trigger1 = !animelemtime(1)
value = S4000,3
volumescale = 255

[State 6101, snd]
type = PlaySnd
triggerall = ishelper(6100)
trigger1 = !animelemtime(1)
value = S4000,4
volumescale = 255

[State 6101, proj]
type = Projectile
triggerall = ishelper(6100)
trigger1 = !animelemtime(1)
projanim = 6700
projID = 6700
projhits = 1
projremove = 0
projremovetime = 34
projpriority = 30
projsprpriority = 3
velocity = 0,0
postype = p1
offset = 33,-72
attr = S,SP
damage = 120,60
animtype = hard
hitflag = MAFD
guardflag = MA
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S4000,2
guardsound = S4000,2
pausetime = 0,12
ground.type = high
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -4,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = high
air.velocity = -4,-8
airguard.velocity = -3.6,-2
air.cornerpush.veloff = 0
air.fall = 1
fall = 1
fall.recover = 0
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
Palfx.color = 0
palfx.invertall = 1
envshake.time = 8
envshake.ampl = 6

[State 6101, self]
type = SelfState
triggerall = ishelper(6100)
trigger1 = !animtime
value = 6102
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6102]
type = A
movetype = I
physics = N
anim = 6602
ctrl = 0
velset = -5,-10
sprpriority = 1

[State 6102, screen]
type = ScreenBound
trigger1 = ishelper(6100)
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6102, snd]
type = PlaySnd
triggerall = ishelper(6100)
trigger1 = !time
value = S105,0
volumescale = 255

[State 6102, dust]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = ishelper(6100)
trigger1 = !animelemtime(1)
anim = 6044
pos = 0,3
postype = p1
scale = 0.5,0.5
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
ignorehitpause = 1

[State 6102, self]
type = DestroySelf
triggerall = ishelper(6100)
trigger1 = time = 30