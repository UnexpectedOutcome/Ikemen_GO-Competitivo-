;stateno メモ
;まどかビーム１
;3000
;まどかビーム２
;3040

;浄化の儀式
;3050

;============================================================
;ハイパーまどかビーム
;============================================================
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= ifelse(var(51) = 0, -1000,0)
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 1

;グリーフシード1個分丸々消費します
[State 3300,0]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -1000

[State 3000,1]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 2500
id = 3000
postype = p1
pos = 0, 0
sprpriority = 2
supermove = 200
bindtime = -1
removetime =97
scale = 1,1

[State 3000,2]
type = Explod
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

[State 3000,3]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3000,4]
type = PlaySnd
trigger1 = AnimElem = 1
value = s250,11


;スーパーエフェクト処理
[State 3000,s0]
type = SuperPause
trigger1 = Animelemtime(1) = 0
time = 150
movetime = 150
pos = -5, -48

[State 3000,Nothit]
type = Nothitby
Trigger1 = time = 0
value = SCA
time=100

[State 3000,Playsnd];暗転音
type = PlaySnd
trigger1 = Animelemtime(1) = 0
value = s7, 6

[State 3000,After];残像
type = AfterImage
trigger1 = time = 0
time = 125
TimeGap  = 1
FrameGap = 4

[State 3000,Env]
type = Envcolor
trigger1 = Animelemtime(1) = 0
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1
ownpal = 1

[State 3000,s7]
type = Varset
trigger1 = time = 0
var(20) = 0

[State 3000,s8]
type = VarAdd
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) <= 60
trigger1 = var(20) < 50
var(20) = 2

;カットイン演出
[State 3000,s9-1]
type = Explod
triggerall = numexplod(4000) = 0
;trigger1 = Var(20) <= 50
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) < 60
anim = 4000;ifelse(var(20) > 10 ,2021 ,2020)
id = 4000
postype = back
pos = 100,0;245
sprpriority = -1
vel = 0,0
bindtime = 1
removetime = 100
supermove = 1
supermovetime = 99999
scale = 0.50,0.50;1.0 - (Var(20)*.01), 1.0 - (var(20)*.01)
ownpal = 1

[State 3000,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001

[Statedef 3001]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 1

[State 3000,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = s250,12

[State 3000,1]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 3011
id = 3011
postype = p1
pos = 0, 0
sprpriority = 1
supermove = 200
bindtime = -1
removetime = 20
scale = 1,1

[State 3001,1]
type = null;Explod
trigger1 = Animelemtime(14) = 1
persistent = 0
anim = 2600
id = 3001
postype = p1
pos = 0, 16
sprpriority = 2
supermove = 1
bindtime = -1
removetime = 100
scale = 1,1



[State 3001,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3001,1]
type = Nothitby
Trigger1 = 1
value = SCA
time=1

[State 3001,2]
type = helper
trigger1 = Animelem = 15
helpertype = normal
neme = "Hirogaru wa"
ID = 3005
pos = 0,0
postype = p1
stateno = 3005
keyctrl = 0
persistent = 0
supermovetime = 200

;魔法陣みたいなもの
[State 3000,1]
type = Explod
trigger1 = Animelem = 15
persistent = 0
anim = 3015
id = 3015
postype = p1
pos = -50, 10
sprpriority = 1
supermove = 200
bindtime = -1
removetime = 32
scale = 1,1

[State 3001,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3002

;
[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
velset = 0,0
anim = 3002
ctrl = 0
sprpriority = -1

[State 3002,2]
type = Helper
trigger1 = Animelemtime(1) = 0
helpertype = normal
neme = "Mahoujin00"
ID = 3015
pos = 150,-205
postype = p1
stateno = 3015
keyctrl = 0
persistent = 0
size.xscale = .4;.5
size.yscale = .4;.5
supermovetime = 200

[State 3000,1]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 3016
id = 3016
postype = p1
pos = -50, 10
sprpriority = 1
supermove = 200
bindtime = -1
removetime = 16
scale = 1,1

[State 3002,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3002,1]
type = helper
trigger1 = Animelem = 8
helpertype = normal
neme = "MadokaBeam!"
ID = 3010
pos = -50,10
postype = p1
stateno = 3010
keyctrl = 0
persistent = 0
supermovetime = 200

[State 3002,2]
type = null;Helper
trigger1 = Animelemtime(1) = 50
helpertype = normal
neme = "Stand"
ID = 3010
pos = -50,-255
postype = p1
stateno = 3010
keyctrl = 0
persistent = 0
size.xscale = .5
size.yscale = .5
supermovetime = 200

[State 3002,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;広がる波動
[Statedef 3005]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3009
ctrl = 0
sprpriority = 3

[State 3005,0]
type = BindToRoot
trigger1 = helper(3005),time = 0
time = -1
pos = 0,0

[State 3005,0] 
type = velset
trigger1 = helper(3005),time >= 0
x = 0

[State 3005,1] 
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype  = Hard
damage    = ifelse(root,var(51)= 0,90,80+(root,var(52)*10)), 2
priority  = 3
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

;p2stateno = 3020

[State 3005,2]
type = TargetBind
trigger1 = helper(3005),movehit = 1
pos = 100,-120
time = 1

[State 3005,3]
type = TargetState
trigger1 = helper(3005),movehit = 1
value = 3020
ctrl = 0

[State 3005,2]
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

[State 3005,4]
type = DestroySelf
trigger1 = animtime = 0;time = 90
;trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;広がる波動
[Statedef 3010]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3017
ctrl = 0
sprpriority = 3

[State 3010,0]
type = BindToRoot
trigger1 = helper(3010),time = 0
time = 1
pos = -50,0

[State 3010,0] 
type = velset
trigger1 = helper(3010),time >= 0
x = 25
y = -20

[State 3010,1] 
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype  = Hard
damage    = ifelse(root,var(51)= 0,90,80+(root,var(52)*10)), 2
priority  = 3
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

[State 3010,2]
type = null;TargetBind
trigger1 = helper(3010),movehit = 1
pos = 100,-120
time = 40

[State 3010,2]
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

[State 3010,4]
type = DestroySelf
trigger1 = time = 50
trigger2 = helper(3010),movetype = h
;trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;まどっち魔法陣
[Statedef 3015]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3020
ctrl = 0
sprpriority = 3

[State 3015,0]
type = BindToRoot
trigger1 = helper(3015),time = 0
time = 1
pos = 150,-205

[State 3015,0] 
type = velset
trigger1 = helper(3015),time >= 0
x = 0
y = 0

[State 3010,4]
type = Changestate
trigger1 = time = 50
value = 3016

;広がる波動
[Statedef 3016]
type    = S
movetype= A
physics = N
anim = 3021
ctrl = 0
sprpriority = 3

[State 3016,0] 
type = velset
trigger1 = helper(3015),time >= 0
x = 0
y = 0

[State 3016,1] 
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype  = Hard
damage    = 90, 2
priority  = 3
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

[State 3016,2]
type = Explod
trigger1 = time = 5
trigger2 = time = 20
trigger3 = time = 35
trigger4 = time = 50
trigger5 = time = 65
trigger6 = time = 80
trigger7 = time = 95
anim = 3025
id = 3025
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
scale = .2,.2
removetime = 39
ignorehitpause = 1

[State 3016,2]
type = Explod
trigger1 = time = 0
trigger2 = time = 15
trigger3 = time = 30
trigger4 = time = 45
trigger5 = time = 60
trigger6 = time = 75
trigger7 = time = 90
anim = 3025
id = 3025
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
scale = .4,.4
removetime = 39
ignorehitpause = 1

;真ん中
[State 640, 1]
type = Projectile
trigger1 = time = 5
trigger2 = time = 20
trigger3 = time = 35
trigger4 = time = 50
trigger5 = time = 65
trigger6 = time = 80
trigger7 = time = 95
projanim = 349
projhitanim = 348
projremanim = -1;347
projID = 640
offset = 0, 0
velocity = 0,20
projremovetime = 39
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,10+(root,var(52)*10)),1;ifelse(var(31)+var(34), ceil(98*1.25), 98), 6
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

;前1
[State 640, 1]
type = Projectile
trigger1 = time = 5+3
trigger2 = time = 20+3
trigger3 = time = 35+3
trigger4 = time = 50+3
trigger5 = time = 65+3
trigger6 = time = 80+3
;trigger7 = time = 95
projanim = 349
projhitanim = 348
projremanim = -1;347
projID = 640
offset = 50, 0
velocity = 3,18
projremovetime = 39
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 10,1;ifelse(var(31)+var(34), ceil(98*1.25), 98), 6
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

;前２
[State 640, 1]
type = Projectile
;trigger1 = Timemod = 10,15 ;で出現
;trigger1 = time <= 95
trigger1 = time = 10
trigger2 = time = 25
trigger3 = time = 40
trigger4 = time = 55
trigger5 = time = 70
trigger6 = time = 85
projanim = 349
projhitanim = 348
projremanim = -1;347
projID = 640
offset = 100, 0
velocity = 5,16
projremovetime = 39
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,10+(root,var(52)*10)),1;ifelse(var(31)+var(34), ceil(98*1.25), 98), 6
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

;後ろ
[State 640, 1]
type = Projectile
;trigger1 = Timemod = 10,15 ;で出現
;trigger1 = time <= 95
trigger1 = time = 10
trigger2 = time = 25
trigger3 = time = 40
trigger4 = time = 55
trigger5 = time = 70
trigger6 = time = 85
projanim = 349
projhitanim = 348
projremanim = -1;347
projID = 640
offset = -50, 0
velocity = -3,18
projremovetime = 39
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,10+(root,var(52)*10)),1;ifelse(var(31)+var(34), ceil(98*1.25), 98), 6
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

後ろ２
[State 640, 1]
type = Projectile
;trigger1 = Timemod = 8,15 ;で出現
;trigger1 = time <= 95
trigger1 = time = 5+3
trigger2 = time = 20+3
trigger3 = time = 35+3
trigger4 = time = 50+3
trigger5 = time = 65+3
trigger6 = time = 80+3
;trigger7 = time = 95
projanim = 349
projhitanim = 348
projremanim = -1;347
projID = 640
offset = -100, 0
velocity = -5,16
projremovetime = 39
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = ifelse(root,var(51)= 0,10,10+(root,var(52)*10)),1;ifelse(var(31)+var(34), ceil(98*1.25), 98), 6
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

[State 3016,4]
type = DestroySelf
trigger1 = helper(3015),movetype = h

[State 3010,4]
type = Changestate
trigger1 = time = 100
value = 3017

;広がる波動
[Statedef 3017]
type    = S
movetype= A
physics = N
anim = 3022
ctrl = 0
sprpriority = 3

[State 3016,4]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = helper(3015),movetype = h

;---------------------------------------------------------------------------
;波動にヒットした時の挙動
[Statedef 3020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3020,0]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3048;50

[State 3020,0]
type = Velset
trigger1 = animelem = 1
y = -5

[State 3020,0]
type = VelAdd
trigger1 = 1
y = .28

[State 3020,1]
type = HitFallSet
trigger1 = time = 0
value = 1

[State 3020,2] ;保険
type = SelfState
trigger1 = time > 200
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 0
value = 5100 ;Hit ground
















;============================================================
;ハイパーまどかビーム(ハノカゲ氏の漫画版)
;============================================================
[Statedef 3040]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= ifelse(var(51) = 0, -1000,0)
velset = 0,0
anim = 3040
ctrl = 0
sprpriority = 1

;グリーフシード1個分丸々消費します
[State 3340,0]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -1000

[State 3040,1]
type = null;Explod
trigger1 = time = 0
persistent = 0
anim = 2500
id = 3000
postype = p1
pos = 0, 0
sprpriority = 2
supermove = 200
bindtime = -1
removetime =97
scale = 1,1

[State 3040,2]
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

[State 3040,3]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3040,4]
type = PlaySnd
trigger1 = AnimElem = 1
value = s250,16


;スーパーエフェクト処理
[State 3040,s0]
type = SuperPause
trigger1 = Animelemtime(1) = 0
time = 120;150
movetime = 120;150
pos = -5, -48

[State 3040,Nothit]
type = Nothitby
Trigger1 = time = 0
value = SCA
time=100

[State 3040,Playsnd];暗転音
type = PlaySnd
trigger1 = Animelemtime(1) = 0
value = s7, 6

[State 3040,After];残像
type = AfterImage
trigger1 = time = 0
time = 125
TimeGap  = 1
FrameGap = 4

[State 3040,Env]
type = Envcolor
trigger1 = Animelemtime(1) = 0
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 120;200
under = 1
supermove = 1
ownpal = 1

[State 3040,s7]
type = Varset
trigger1 = time = 0
var(20) = 0

[State 3040,s8]
type = VarAdd
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) <= 60
trigger1 = var(20) < 50
var(20) = 2

[State 3040,s9-1]
type = Explod
triggerall = numexplod(4000) = 0
;trigger1 = Var(20) <= 50
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) < 60
anim = 4000;ifelse(var(20) > 10 ,2021 ,2020)
id = 4000
postype = back
pos = 100,0;245
sprpriority = -1
vel = 0,0
bindtime = 1
removetime = 100
supermove = 1
supermovetime = 99999
scale = 0.50,0.50;1.0 - (Var(20)*.01), 1.0 - (var(20)*.01)
ownpal = 1

[State 3040,1]
type = helper
trigger1 = Animelem = 3;20
helpertype = normal
neme = "MadokaBeem02"
ID = 3040
pos = 67,-67;53-16,-104+29;-77
postype = p1
stateno = 3041
keyctrl = 0
persistent = 0
supermovetime = 200

[State 3040,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;まどかビーム
[Statedef 3041]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3045
ctrl = 0
sprpriority = 4

[State 3041,anim3]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 3
time = 3
pos = 67,-67

[State 3041,anim4]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 4
time = 3
pos = 67,-69

[State 3041,anim5]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 5
time = 3
pos = 67,-70

[State 3041,anim6]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 6
time = 3
pos = 69,-72

[State 3041,anim7]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 7
time = 3
pos = 69,-74;70

[State 3041,anim8]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 8
time = 3
pos = 68,-75

[State 3041,anim9]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 9
time = 3
pos = 66,-81;

[State 3041,anim10]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 10
time = 3
pos = 63,-82;

[State 3041,anim11]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 11
time = 3
pos = 63,-82

[State 3041,anim12]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 12
time = 3
pos = 61,-83

[State 3041,anim13]
type = BindToRoot
trigger1 = parent,stateno = 3040
trigger1 = parent,animelem = 13
time = 3
pos = 60,-85;63,-82

[State 3041,anim18-20]
type = BindToRoot
triggerall = parent,stateno = 3040
trigger1 = parent,animelem = 18
;trigger2 = parent,animelem = 19
;trigger3 = parent,animelem = 20
time = 12
pos = 64,-85

[State 3041,changeanim21]
type = Changeanim
trigger1 = parent,stateno = 3040
trigger1 = parent,AnimElemtime(31) < 0;(21) < 0
value = 3045
elem = 1

[State 3041,anim21]
type = BindToRoot
triggerall = parent,stateno = 3040
trigger1 = parent,AnimElem = 21
time = 4
pos = 64,-84

[State 3041,anim22]
type = BindToRoot
triggerall = parent,stateno = 3040
trigger1 = parent,AnimElem = 22
time = 4
pos = 63,-82

[State 3041,anim23-26]
type = BindToRoot
triggerall = parent,stateno = 3040
trigger1 = parent,AnimElem = 23
trigger2 = parent,AnimElem = 24
trigger3 = parent,AnimElem = 25
trigger4 = parent,AnimElem = 26
time = 4
pos = 63,-81

[State 3041,anim27-end]
type = BindToRoot
triggerall = parent,stateno = 3040
trigger1 = parent,AnimElem = 27
time = -1
pos = 60,-81

[State 3041,anim27-end]
type = BindToRoot
trigger1 = helper(3040),time = 150
time = 1
pos = 60,-81

[State 3041,0]
type = null;Changeanim
trigger1 = parent,stateno = 3040
trigger1 = parent,AnimElem = 21
value = 3045
elem = 2

[State 3041,0] 
type = velset
trigger1 = helper(3040),time >= 0
x = 0
y = 0

[State 3041,1] 
type = HitDef
triggerall = helper(3040),time != 170
trigger1 = helper(3040),animelem = 5
trigger2 = helper(3040),animelem = 6
trigger3 = helper(3040),animelem = 7
trigger4 = helper(3040),animelem = 8
trigger5 = helper(3040),animelem = 10
attr = S, HP
animtype  = Hard
damage    = ifelse(root,var(51)= 0,30,20+(root,var(52)*10)), 8
;damage    = ifelse(root,var(51)= 0,40,30+(root,var(52)*10)), 8
priority  = 7
sprpriority = 7
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

[State 3041,1] 
type = HitDef
trigger1 = helper(3040),time = 170
attr = S, HP
animtype  = Hard
damage    = ifelse(root,var(51)= 0,40,30+(root,var(52)*10)), 8
priority  = 7
sprpriority = 7
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -2,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
id = 3041
air.recover = 0
;p2stateno = 3045

[State 3041]
type = TargetState
trigger1 = movehit = 1
id = 3041
value = 3045

[State 3041,2]
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

[State 3041,4]
type = ChangeState
trigger1 = helper(3040),time >= 170;150;animtime = 0;time = 90
trigger2 = helper(3040),movetype = h
value = 3042
ctrl = 0

[Statedef 3042]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3046
ctrl = 0
sprpriority = 4

[State 3042,4]
type = DestroySelf
trigger1 = helper(3040),animtime = 0
trigger2 = helper(3040),movetype = h

;---------------------------------------------
[Statedef 3045]
type    = S
movetype= H
physics = N
velset = 0,0

[State 3045,0]
type = VelSet
trigger1 = time = 0
x = -15
;y = 0

[State 3045,2]
type = null;ChangeState
triggerall = time > 5
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 3045,3]
type = HitFallSet
trigger1 = time = 10
value = 1

[State 3045,4]
type = SelfState
trigger1 = BackEdgeDist < 20
trigger1 = time >= 60
value = 5100
ctrl = 1




;============================================================
;浄化の儀式
;============================================================
;本体の動作
;3050-3055
;Ｐ２側の動作
;3060
;飛び道具の動作
;3070-
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= ifelse(var(51) = 0,(ifelse(numhelper(3015)=1,-1000,-2000)),0)
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 1

;グリーフシード1個分丸々消費します
[State 3050,0]
type = Varadd
trigger1 = numhelper(3015) = 1
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -1000
[State 3050,0]
type = Varadd
trigger1 = numhelper(3015) = 0
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -2000

[State 3050,1]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 2500
id = 3000
postype = p1
pos = 0, 0
sprpriority = 2
supermove = 200
bindtime = -1
removetime =97
scale = 1,1

[State 3050,2]
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

[State 3050,4]
type = PlaySnd
trigger1 = AnimElem = 1
value = s250,17

;スーパーエフェクト処理
[State 3050,s0]
type = SuperPause
trigger1 = Animelemtime(1) = 0
time = 150
movetime = 150
pos = -5, -48

[State 3000,Nothit]
type = Nothitby
Trigger1 = time = 0
value = SCA
time=100

[State 3000,Playsnd];暗転音
type = PlaySnd
trigger1 = Animelemtime(1) = 0
value = s7, 6

[State 3050,After];残像
type = AfterImage
trigger1 = time = 0
time = 125
TimeGap  = 1
FrameGap = 4

[State 3050,Env]
type = Envcolor
trigger1 = Animelemtime(1) = 0
persistent = 0
ignorehitpause = 1
value = 14,14,14;0, 0, 0
time = 90
under = 1
supermove = 1
ownpal = 1

[State 3050,s7]
type = Varset
trigger1 = time = 0
var(20) = 0

[State 3050,s8]
type = VarAdd
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) <= 60
trigger1 = var(20) < 50
var(20) = 2

;カットイン演出
[State 3000,s9-1]
type = null;Explod
triggerall = numexplod(4000) = 0
;trigger1 = Var(20) <= 50
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) < 60
anim = 4000;ifelse(var(20) > 10 ,2021 ,2020)
id = 4000
postype = back
pos = 100,0;245
sprpriority = -1
vel = 0,0
bindtime = 1
removetime = 100
supermove = 1
supermovetime = 99999
scale = 0.50,0.50;1.0 - (Var(20)*.01), 1.0 - (var(20)*.01)
ownpal = 1

[State 3050,2]
type = helper
trigger1 = numhelper(3050) = 0
trigger1 = Animelem = 23
helpertype = normal
neme = "JOUKA01"
ID = 3050
pos = 0,0
postype = p1
stateno = 3070
keyctrl = 0
persistent = 0
supermovetime = 200

[State 3050,3]
type = ChangeState
trigger1 = time >= 80;AnimTime = 0
value = 3051

;待機
[Statedef 3051]
type    = S
movetype= A
physics = S
velset = 0,0
;anim = 0
ctrl = 0
sprpriority = 1

[State 3050,4]
type = PlaySnd
trigger1 = time = 0
value = s250,18

[State -2,消去]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 3051,0]
type = null;ChangeAnim
trigger1 = time = 0
value = 0

[State 3054,3]
type = TargetState
trigger1 = projhittime(3070) = 1
value = 3060

[State 3054,3]
type = ChangeState
trigger1 = projhittime(3070) = 1
value = 3054

[State 3050,3]
type = ChangeState
trigger1 = Time >= 500;保険
trigger2 = numhelper(3050) = 0
value = 3053

;成功時
[Statedef 3052]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3052
ctrl = 0
sprpriority = 1

[State 3052,1]
type = Playsnd
trigger1 = time = 0
value = s7,13
volume = 250

[State 3052,0]
type = Posset
trigger1 = time = 0
y = 0

[State 3052,0]
type = Posadd
trigger1 = time = 0
x = -100

[State 3052,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;失敗時の着地
[Statedef 3053]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3055
ctrl = 0
sprpriority = 1

[State 3053,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ヒット時の動作
;ソウルジェムをそっと包み込んで浄化する動作
[Statedef 3054]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3051
ctrl = 0
sprpriority = 3

[State 3054,Playsnd];暗転音
type = PlaySnd
trigger1 = Animelemtime(9) = 0
persistent = 0
value = s0, 28

[State 3054,0]
type = Posset
trigger1 = time = 0
x = target,pos X
y = target,pos Y -20

[State 800,***]
type = TargetBind
trigger1 = time >= 1
trigger1 = time < 170;139
pos = 10,18
time = 1

[State 3054,1]
type = Poweradd
trigger1 = var(51) = 0
trigger1 = time = 171;140
value = 1000/2

;穢れ
[State 3050,2]
type = Explod
trigger1 = time = 80
persistent = 0
anim = 3056
id = 3056
postype = p1
pos = 20, -20
sprpriority = 4
supermove = 200
bindtime = -1
removetime = 36
scale = 1,1

[State 3054,1]
type = null;Varadd
trigger1 = var(51) = 1
trigger1 = time = 140
v = 53
value = 1

[State 3054,2]
type = TargetState
trigger1 = numtarget
trigger1 = time >= 171;150
value = 3061

[State 3054,3]
type = ChangeState
trigger1 = Time >= 171;150
value = 3052

;ソウルジェムやられ動作
[Statedef 3060]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 3

;ＳＧやられがある場合
[state 3060,0]
type = ChangeAnim
trigger1 = selfanimexist(9885) = 1
trigger1 = time = 0
value = 9885

;無い場合の汎用動作
[State 3060,1]
type = ChangeAnim2
trigger1 = selfanimexist(9885) != 1
Trigger1 = Time = 0
value = 3060

;やられ対応の場合
[State 3060,2]
type = Poweradd
trigger1 = anim = 9885
trigger1 = time = 140
value = -2000
[State 3060,2]
type = Lifeadd
trigger1 = anim = 9885
trigger1 = time = 140
value = -100

;未対応の場合
[State 3060,2]
type = Poweradd
trigger1 = anim = 3060
trigger1 = time = 140
value = -1000
[State 3060,2]
type = Lifeadd
trigger1 = anim = 3060
trigger1 = time = 140
value = -200

[State 3060,3]
type = HitFallSet
trigger1 = time = 0
value = 1

[State 3060,4] ;保険
type = SelfState
trigger1 = time > 200
value = 5100 ;Hit ground

;終了動作
[Statedef 3061]
type    = S
movetype= H
physics = S
velset = 0,0
poweradd = 40
sprpriority = 3

[State 3255, 1]
type = ChangeAnim2
;trigger1 = selfanimexist(8005) != 1
Trigger1 = Time = 0
value = 3061

[State 3256,0]
type = VelSet
trigger1 = pos Y > 0
trigger1 = time = 0
x = 0
y = 0
[State 3256,0]
type = velset
trigger1 = pos Y <= 0
trigger1 = time = 0
y = 4

[State 3256,0]
type = veladd
trigger1 = pos Y <= 0
trigger1 = time >= 0
y = .18

[State 3256,0]
type = PosSet
trigger1 = pos Y > 0
y = 0

[State 3256,2]
type = null;ChangeState
triggerall = time > 5
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 3256,4]
type = SelfState
trigger1 = animtime = 0
;trigger1 = time >= 60
value = 5100
ctrl = 1

;飛んでいく光の弾
[Statedef 3070]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3054
ctrl = 0
sprpriority = 1

[State 3070,0]
type = VelSet
trigger1 = helper(3050),time = 0
x = 0
y = -15

[State 3070,3]
type = ChangeState
trigger1 = helper(3050),pos Y <= -250
value = 3071


[Statedef 3071]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 3054
ctrl = 0
sprpriority = 1

[State 3070,0]
type = PlaySnd
trigger1 = helper(3050),time = 0
value = s0,26
volume =250

[State 3070,0]
type = PlaySnd
trigger1 = helper(3050),time = 1
value = s0,29
volume =250

[State 3070,0]
type = VelSet
trigger1 = helper(3050),time >= 0
x = .5;0
y = 0

;80度
[State 640, 1]
type = Projectile
trigger1 = time = 0
trigger2 = time = 96
trigger3 = time = 192
trigger4 = time = 24
trigger5 = time = 120
;trigger6 = time = 
;trigger7 = time = 95
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi*8/9)),ceil(20*sin(pi*8/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;70度
[State 640, 1]
type = Projectile
trigger1 = time = 3
trigger2 = time = 93
trigger3 = time = 99
trigger4 = time = 189
trigger5 = time = 21
trigger6 = time = 27
trigger7 = time = 117
trigger8 = time = 123
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi*7/9)),ceil(20*sin(pi*7/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;60度
[State 640, 1]
type = Projectile
trigger1 = time = 6
trigger2 = time = 90
trigger3 = time = 102
trigger4 = time = 186
trigger5 = time = 18
trigger6 = time = 30
trigger7 = time = 114
trigger8 = time = 126
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi*2/3)),ceil(20*sin(pi*2/3))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;50度
[State 640, 1]
type = Projectile
trigger1 = time = 9
trigger2 = time = 87
trigger3 = time = 105
trigger4 = time = 183
trigger5 = time = 15
trigger6 = time = 33
trigger7 = time = 111
trigger8 = time = 129
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi*5/9)),ceil(20*sin(pi*5/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;40度
[State 640, 1]
type = Projectile
trigger1 = time = 12
trigger2 = time = 84
trigger3 = time = 108
trigger4 = time = 180
trigger5 = time = 36;12;同じ
trigger6 = time = 132;108;同じ
;trigger7 = time = 
;trigger8 = time = 
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi*4/9)),ceil(20*sin(pi*4/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;30度
[State 640, 1]
type = Projectile
trigger1 = time = 15
trigger2 = time = 81
trigger3 = time = 111
trigger4 = time = 177
trigger5 = time = 9
trigger6 = time = 39
trigger7 = time = 105
trigger8 = time = 135
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi/3)),ceil(20*sin(pi/3))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;20度
[State 640, 1]
type = Projectile
trigger1 = time = 18
trigger2 = time = 78
trigger3 = time = 114
trigger4 = time = 174
trigger5 = time = 6
trigger6 = time = 42
trigger7 = time = 102
trigger8 = time = 138
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi*2/9)),ceil(20*sin(pi*2/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;10度
[State 640, 1]
type = Projectile
trigger1 = time = 21
trigger2 = time = 75
trigger3 = time = 117
trigger4 = time = 171
trigger5 = time = 3
trigger6 = time = 45
trigger7 = time = 99
trigger8 = time = 141
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = ceil(20*cos(pi/9)),ceil(20*sin(pi/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;0度　真下
[State 640, 1]
type = Projectile
trigger1 = time = 24
trigger2 = time = 72
trigger3 = time = 120
trigger4 = time = 168
trigger5 = time = 0
trigger6 = time = 48
trigger7 = time = 96
trigger8 = time = 144
trigger9 = time = 192
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = 0,20
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-10度
[State 640, 1]
type = Projectile
trigger1 = time = 27
trigger2 = time = 69
trigger3 = time = 123
trigger4 = time = 165
trigger5 = time = 51
trigger6 = time = 93
trigger7 = time = 147
trigger8 = time = 189
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi/9)),ceil(20*sin(pi/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060


;-20度
[State 640, 1]
type = Projectile
trigger1 = time = 30
trigger2 = time = 66
trigger3 = time = 126
trigger4 = time = 162
trigger5 = time = 54
trigger6 = time = 90
trigger7 = time = 150
trigger8 = time = 186
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi*2/9)),ceil(20*sin(pi*2/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-30度
[State 640, 1]
type = Projectile
trigger1 = time = 33
trigger2 = time = 63
trigger3 = time = 129
trigger4 = time = 159
trigger5 = time = 57
trigger6 = time = 87
trigger7 = time = 153
trigger8 = time = 183
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi/3)),ceil(20*sin(pi/3))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-40度
[State 640, 1]
type = Projectile
trigger1 = time = 36
trigger2 = time = 60
trigger3 = time = 132
trigger4 = time = 156
trigger5 = time = 84;60:同じ
trigger6 = time = 180;156;同じ
;trigger7 = time = 
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi*4/9)),ceil(20*sin(pi*4/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-50度
[State 640, 1]
type = Projectile
trigger1 = time = 39
trigger2 = time = 57
trigger3 = time = 135
trigger4 = time = 153
trigger5 = time = 63
trigger6 = time = 81
trigger7 = time = 159
trigger8 = time = 177
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi*5/9)),ceil(20*sin(pi*5/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-60度
[State 640, 1]
type = Projectile
trigger1 = time = 42
trigger2 = time = 54
trigger3 = time = 138
trigger4 = time = 150
trigger5 = time = 66
trigger6 = time = 78
trigger7 = time = 162
trigger8 = time = 174
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi*2/3)),ceil(20*sin(pi*2/3))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-70度
[State 640, 1]
type = Projectile
trigger1 = time = 45
trigger2 = time = 51
trigger3 = time = 141
trigger4 = time = 147
trigger5 = time = 69
trigger6 = time = 75
trigger7 = time = 165
trigger8 = time = 171
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi*7/9)),ceil(20*sin(pi*7/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060

;-80度
[State 640, 1]
type = Projectile
trigger1 = time = 48
trigger2 = time = 144
trigger3 = time = 72
trigger4 = time = 168
;trigger5 = time = 
;trigger6 = time = 
;trigger7 = time = 95
projanim = 3054
projhitanim = 3054
projremanim = -1;347
projID = 3070
offset = 0, 0
velocity = -ceil(20*cos(pi*8/9)),ceil(20*sin(pi*8/9))
projremovetime = 50
attr = A, HP
animtype  = Hard
getpower = 0,0
givepower = 20,10
damage    = 0,4
guardflag = MA
hitflag = MAFD
pausetime = 0,2
sparkno = 3
guard.sparkno = 40;s306
sparkky = 0,0
hitsound   = s0,26
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
p1stateno = 3054
p2stateno = 3060



[State 3070,3]
type = Destroyself
trigger1 = helper(3050),time >= 150


