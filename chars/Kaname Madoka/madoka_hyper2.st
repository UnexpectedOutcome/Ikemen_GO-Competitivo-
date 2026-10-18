;============================================================
;救済の女神
;============================================================
;HelperID
;3320 初撃
;3310 魔法陣＋
[Statedef 3300]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= ifelse(var(51) = 0, -3000,0)
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 1

[State 3300,0]
type = Posset
trigger1 = 1
y = -30

[State 3300,0]
type = Velset
trigger1 = 1
y = 0

;グリーフシード1個分丸々消費します
[State 3300,0]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -3001

;一応最初にリセット
[State 3300,2]
type = VarSet
trigger1 = time = 0
trigger1 = var(51) = 0
v = 27
value = 0

;ダメージ用判定
[State 3300,3]
type = varset
trigger1 = time = 0
trigger1 = Var(51) = 1
trigger1 = Var(52) <= 3
v = 27
value = var(52);上昇する前の因果レベルを指定

;因果律のリセット
[State 3300,4]
type = varset
trigger1 = time = 0
trigger1 = Var(51) >= 1;マギカモードの時のみ
v = 52
value = 0

[State 3300,1]
type = null;Explod
trigger1 = Animelem = 19;time(19) = 0
persistent = 0
anim = 3010
id = 3010
postype = p1
pos = 0, 0
sprpriority = -1
supermove = 200
bindtime = -1
removetime = 24
scale = 1,1


[State 3300,1]
type = Explod
trigger1 = Animelem = 2
persistent = 0
anim = 3331
id = 3331
postype = p1
pos = ceil(43*const(size.xscale)), ceil(-90*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 8
scale = 1*const(size.xscale),1*const(size.yscale)
[State 3300,1]
type = Explod
trigger1 = Animelem = 3
persistent = 0
anim = 3331
id = 3331
postype = p1
pos = ceil(-40*const(size.xscale)), ceil(-80*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 8
scale = 1*const(size.xscale),1*const(size.yscale)
[State 3300,1]
type = Explod
trigger1 = Animelem = 5
persistent = 0
anim = 3331
id = 3331
postype = p1
pos = ceil(10*const(size.xscale)), ceil(-70*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 8
scale = 1*const(size.xscale),1*const(size.yscale)
[State 3300,1]
type = Explod
trigger1 = Animelem = 6
persistent = 0
anim = 3331
id = 3331
postype = p1
pos = ceil(-20*const(size.xscale)), ceil(-50*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 8
scale = 1*const(size.xscale),1*const(size.yscale)
[State 3300,1]
type = Explod
trigger1 = Animelem = 7
persistent = 0
anim = 3331
id = 3331
postype = p1
pos = 0, ceil(-80*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 8
scale = 1*const(size.xscale),1*const(size.yscale)

;弓１
[State 3300,1]
type = Explod
trigger1 = Animelem = 19
persistent = 0
anim = 3350
id = 3350
postype = p1
pos = ceil(10*const(size.xscale)), ceil(-115*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 40;24
scale = 1*const(size.xscale),1*const(size.yscale)

[State 3300,1]
type = Explod
trigger1 = Animelem = 30;11+19
persistent = 0
anim = 3351
id = 3351
postype = p1
pos = ceil(10*const(size.xscale)), ceil(-115*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 40;24
scale = 1*const(size.xscale),1*const(size.yscale)

[State 3300,1]
type = Explod
trigger1 = Animelem = 30;11+19
persistent = 0
anim = 3355
id = 3355
postype = p1
pos = ceil(10*const(size.xscale)), ceil(-115*const(size.yscale))
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 40;24
scale = 1*const(size.xscale),1*const(size.yscale)

;暗転キラキラ
[State 3300,Playsnd]
type = PlaySnd
trigger1 = Animelem = 2
value = s0, 30
volume = 255

;弓出現音
[State 3300,Playsnd]
type = PlaySnd
trigger1 = Animelem = 19
value = s0, 31
volume =255

[State 3000,0]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3300,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = s250,13


;スーパーエフェクト処理
[State 3300,s0]
type = SuperPause
trigger1 = Animelemtime(1) = 0
time = 310;230;150
movetime = 310;230;150
pos = -5, -80
anim = s3330

[State 3300,Nothit]
type = Nothitby
Trigger1 = time = 0
value = SCA
time=100

[State 3300,Playsnd];暗転音
type = PlaySnd
trigger1 = Animelemtime(1) = 0
value = s7, 6

[State 3300,After];残像
type = AfterImage
trigger1 = time = 0
time = 125
TimeGap  = 1
FrameGap = 4

[State 3300,s7]
type = Varset
trigger1 = time = 0
var(20) = 0

[State 3000,s8]
type = VarAdd
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) <= 60
trigger1 = var(20) < 50
var(20) = 2

[State 1220,s10]
type = null;Explod
trigger1 = Animelemtime(1) = 60
persistent = 0
anim = 2022
postype = back
pos = 100, 245
sprpriority = -1
supermove = 1
bindtime = 1
vel = 1.5,0
removetime = 20
scale = .5,.5
ownpal = 1
;スーパーエフェクト終了


;女神の羽１
[State 3300,s10]
type = Explod
trigger1 = Animelemtime(19) = 1
persistent = 0
anim = 3360
postype = p1
pos = 0, ceil(-73*const(size.yscale))
sprpriority = -1
supermove = 1
bindtime = -1
vel = 0,0
removetime = 64
scale = 1*const(size.xscale),1*const(size.yscale)
ownpal = 1

;女神の羽２
[State 3300,s10]
type = Explod
trigger1 = Animelemtime(19) = 1
persistent = 0
anim = 3361
postype = p1
pos = 0, ceil(-73*const(size.yscale))
sprpriority = -1
supermove = 1
bindtime = -1
vel = 0,0
removetime = 64
scale = 1,1
ownpal = 1

[State 3300,0]
type = RemoveExplod
trigger1 = movetype = h
id = 3351
[State 3300,0]
type = RemoveExplod
trigger1 = movetype = h
id = 3355

;スカートの中の宇宙
[State 3300,1]
type = Explod
trigger1 = numexplod(3365) = 0
trigger1 = Animelem = 11;9;10;17
persistent = 0
anim = 3365
id = 3365
postype = p1
pos = 0,0
sprpriority = 2
supermovetime = 200
pausemovetime = 200
bindtime = -1
removetime = 88;
scale = .5*const(size.xscale),.5*const(size.yscale)

[State 3300,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;救済の女神
;射撃動作
[Statedef 3301]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3301
ctrl = 0
sprpriority = 1

;スカートの中の宇宙
[State 3300,1]
type = Explod
trigger1 = numexplod(3366) = 0
trigger1 = Animelemtime(1) = 0
persistent = 0
anim = 3366
id = 3366
postype = p1
pos = 0,0;ceil(-3.0*const(size.xscale)),0
sprpriority = 2
supermovetime = 200
pausemovetime = 200
bindtime = -1
removetime = 128
scale = .5*const(size.xscale),.5*const(size.yscale)

[State 3301,0]
type = RemoveExplod
trigger1 = animelem = 3
trigger2 = movetype = h
id = 3351
[State 3301,0]
type = RemoveExplod
trigger1 = animelem = 3
trigger2 = movetype = h
id = 3355

;弓１
[State 3301,1]
type = Explod
trigger1 = Animelem = 3
persistent = 0
anim = 3352
id = 3352
postype = p1
pos = 0, 0
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 28;4*6
scale = 1,1

;弓２
[State 3301,1]
type = Explod
trigger1 = Animelem = 9
persistent = 0
anim = 3353
id = 3353
postype = p1
pos = 43, -90
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 150
scale = 1,1

;矢
[State 3301,1]
type = Explod
trigger1 = Animelem = 26
persistent = 0
anim = 3310
id = 3310
postype = p1
pos = 40, -86
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 32
scale = 1,1

[State 3301,1]
type = Explod
trigger1 = Animelem = 26
persistent = 0
anim = 3315
id = 3315
postype = p1
pos = 40, -86
sprpriority = 2
supermove = 200
bindtime = -1
removetime = 32
scale = 1,1

;矢発射
[State 3301,2]
type = helper
trigger1 = Animtime = 0
helpertype = normal
neme = "Arrow"
ID = 3320
pos = 40,-86
postype = p1
stateno = 3320
keyctrl = 0
persistent = 0
supermovetime = 200
size.xscale = 1
size.yscale = 1

;女神の羽
[State 3301,3]
type = Explod
trigger1 = Animelemtime(2) = 1
persistent = 0
anim = 3362
id = 3362
postype = p1
pos = 0, -73
sprpriority = -1
supermove = 1
bindtime = -1
vel = 0,0
removetime = 150;4*7+40;64
scale = 1,1
ownpal = 1

;カットイン
[State 3301,cut-in]
type = Explod
triggerall = numexplod(4002) = 0
trigger1 = Animelemtime(10) >= 0
anim = 4002
id = 4002
postype = back
pos = 120,10;100,0;245
sprpriority = -1
vel = 0,0
bindtime = 1
removetime = 100
supermove = 1
supermovetime = 99999
scale = 0.50,0.50
ownpal = 1

[State 3301,4]
type = PlaySnd
trigger1 = AnimElem = 1;17
value = s250,14

[State 3301,6]
type = PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3301,7]
type = Nothitby
Trigger1 = 1
value = SCA
time=1

;後退する魔法陣
[State 3301,8]
type = helper
trigger1 = Animelem = 15
helpertype = normal
neme = "Mahoujin"
ID = 3310
pos = 0,0
postype = p1
stateno = 3310
keyctrl = 0
persistent = 0
supermovetime = 200
size.xscale = .5
size.yscale = .5

;発射
[State 3300,Playsnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = s0,32
volume = 255

[State 3301,re1]
type = RemoveExplod
trigger1 = animtime = 0
trigger2 = movetype = H
id = 3362

[State 3301,re2]
type = RemoveExplod
trigger1 = animtime = 0
trigger2 = movetype = H
id = 3353

[State 3301,9]
type = ChangeState
trigger1 = AnimTime = 0
value = 3302

;救済の女神
;終了動作
[Statedef 3302]
type    = S
movetype= A
physics = N
poweradd= 0
velset = 0,0
anim = 3302
ctrl = 0
sprpriority = -1

;スカートの中の宇宙
[State 3300,1]
type = Explod
trigger1 = numexplod(3367) = 0
trigger1 = time = 0
persistent = 0
anim = 3367
id = 3367
postype = p1
pos = 0,0
sprpriority = 2
supermovetime = 200
pausemovetime = 200
bindtime = -1
removetime = 28
scale = .5*const(size.xscale),.5*const(size.yscale)

[State 3300,s10]
type = Explod
trigger1 = Animelemtime(3) = 4
persistent = 0
anim = 3305
postype = p1
pos = 0, 0
sprpriority = -1
supermove = 1
bindtime = 1
vel = -3,-3
accel = -0.05,0.28
removetime = 25
scale = 1,1
ownpal = 1

[State 3302,0]
type = Velset
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(3) <= 4
y = 0

[State 3302,1]
type = Velset
trigger1 = animelemtime(4) = 1
persistent = 0
y = -3
x = -2

[State 3302,2]
type = VelAdd
trigger1 = time > 29
y = .28

[State 3302,3]
type = ChangeState
trigger1 = Pos Y > 0
trigger1 = Vel Y > 0
value = 3303


;救済の女神
;着地
[Statedef 3303]
type    = S
movetype= I
physics = S
poweradd= 0
velset = 0,0
anim = 47
ctrl = 0
sprpriority = -1

[State 3303,1]
type = Posset
trigger1 = time = 0
y = 0

[State 3303,2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3303,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;魔法陣＋射撃
[Statedef 3310]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3370
ctrl = 0
sprpriority = 3

[State 3310,0]
type = BindToRoot
trigger1 = helper(3310),time = 0
time = 1
pos = 0,-90

[State 3310,1]
type = Velset
trigger1 = helper(3310),time > 0
trigger1 = helper(3310),time <=50
x = -4

[State 3310,0] 
type = velset
trigger1 = helper(3310),time >= 50
x = 0

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 120
;trigger2 = helper(3310),time = 60
;trigger3 = helper(3310),time = 70
;trigger4 = helper(3310),time = 80
;trigger5 = helper(3310),time = 90
;trigger6 = helper(3310),time = 100
;trigger7 = helper(3310),time = 110
;trigger8 = helper(3310),time = 120
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, 0
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1


[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 50
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 130
;trigger4 = helper(3310),time = 80
;trigger5 = helper(3310),time = 90
;trigger6 = helper(3310),time = 100
;trigger7 = helper(3310),time = 110
;trigger8 = helper(3310),time = 120
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, -25
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1


[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 50
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 130
;trigger4 = helper(3310),time = 80
;trigger5 = helper(3310),time = 90
;trigger6 = helper(3310),time = 100
;trigger7 = helper(3310),time = 110
;trigger8 = helper(3310),time = 120
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, 25
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1


[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 60
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 95
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 3320
projhitanim = 351
projremanim = -1;347
projremove = 0
projID = 3320
offset = 0, -50
velocity = 10,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1


[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 60
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 95
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, 50
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1;20+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1


[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 90
trigger3 = helper(3310),time = 150
;trigger4 = helper(3310),time = 95
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, -75
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 90
trigger3 = helper(3310),time = 150
;trigger4 = helper(3310),time = 95
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, 75
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 160
;trigger3 = helper(3310),time = 80
;trigger4 = helper(3310),time = 95
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, -100
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 160
;trigger3 = helper(3310),time = 80
;trigger4 = helper(3310),time = 95
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 3320
projhitanim = 351
projremanim = -1;347
projID = 3320
offset = 0, 100
velocity = 10,0
projremovetime = 50
projedgebound = 200
projremove = 0
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,20,10+(root,var(27)*10)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1



[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, 0
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*150)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, 40
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, -40
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, 80
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, -80
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, 120
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 80
trigger2 = helper(3310),time = 110
trigger3 = helper(3310),time = 140
;trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, -120
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

;ラストの部分
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = 0, 0
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*150)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = -20, 40
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = -20, -40
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = -40, 80
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = -40, -80
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = -60, 120
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 170
projanim = 350
projhitanim = 351
projremanim = -1;347
projID = 3321
offset = -60, -120
velocity = 12,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,15,5+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, 0
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, 30
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, -30
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1


[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, 90
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, -90
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, 120
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1
[State 3310, 1]
type = Projectile
trigger1 = helper(3310),time = 70
trigger2 = helper(3310),time = 100
trigger3 = helper(3310),time = 130
trigger4 = helper(3310),time = 170
;trigger5 = helper(3310),time = 110
;trigger6 = helper(3310),time = 125
projanim = 301
projhitanim = 303
projremanim = -1;347
projID = 3322
offset = 0, -120
velocity = 12,0
accel =.2,0
projremovetime = 50
projedgebound = 200
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,1+(root,var(27)*5)),1
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 17;21
ground.hittime  = 25;30
ground.velocity = 0
airguard.velocity = -0.5      
air.velocity = 0,-1.5
air.juggle = 0
fall = 1
down.bounce = 1

[State 3310,2]
type = null;Explod
triggerall = numexplod(1001) = 0
trigger1 = movehit = 1
anim = 351
id = 1001
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
;ontop = 1
supermove = 100
pausemovetime = 100
shadow = 0,0,0
bindtime = -1
sprpriority = 4
removetime = 14
ignorehitpause = 1

[State 3310,4]
type = ChangeState
trigger1 = helper(3310),time >= 200
value = 3311
ctrl = 0

[State 3310,4]
type = DestroySelf
trigger1 = helper(3310),movetype = h

;---------------------------------------------------------------------------
;消える魔法陣
[Statedef 3311]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3371
ctrl = 0
sprpriority = 3

[State 3311,0] 
type = velset
trigger1 = helper(3310),time >= 0
x = 0

[State 3311,4]
type = DestroySelf
trigger1 = helper(3310),animtime = 0
trigger2 = helper(3310),movetype = h
;trigger2 = movecontact = 1













;---------------------------------------------------------------------------
;初撃
[Statedef 3320]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3311
ctrl = 0
sprpriority = 3

[State 3320,0]
type = BindToRoot
trigger1 = helper(3320),time = 0
time = -1
pos = 40,-86

[State 3320,1] 
type = velset
trigger1 = helper(3320),time >= 0
x = 0

[State 3320,2] 
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype  = Hard
damage    = ifelse(root,var(51)= 0,90,80+(root,var(27)*10)), 2
priority  = 3
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-7
air.velocity = -2.5,-7.2
sparkno = 3;s300
fall = 1
fall.recover = 0
air.recover = 0

[State 3320,4]
type = DestroySelf
trigger1 = helper(3320),animtime = 0
trigger2 = helper(3320),movetype = h

