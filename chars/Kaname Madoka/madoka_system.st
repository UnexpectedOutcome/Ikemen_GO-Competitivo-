;---------------------------------------------------------------------------
;編集したcommon1
;---------------------------------------------------------------------------
;調整中含む
;stateno
;0
;1(追加)
;11
;40
;45
;50
;52
;65
;70(追加のハイジャンプ)
;100,101(101はエフェクト)
;105,106
;110,111
;5150 ライフ0の時に表示するアニメ
;5200
;5900

;---------------------------------------------------------------------------
; Stand ランダム
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


[State 0, 5]
type = VarRandom
trigger1 = time >= 0
v = 1
range = 0, 10

[State 0, 6]
type = ChangeState
triggerall = Var(1) = 1
trigger1 = animelem = 10
trigger2 = AnimTime = 0
value = 1

[State 0, 6]
type = ChangeState
triggerall = Var(1) = 2
trigger1 = animelem = 20
trigger2 = AnimTime = 0
value = 2

;---------------------------------------------------------------------------
; Stand 1
[Statedef 1]
type = S
physics = S
sprpriority = 0
anim = 1

[State 1, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 1, 4]
type = null;ChangeState
trigger1 = AnimTime = 0
value = 0

[State 1, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 2

[State 1, 5] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Stand 1
[Statedef 2]
type = S
physics = S
sprpriority = 0
anim = 2

[State 1, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 1, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 1, 5] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0

[State 11,0]
type = VarRandom
trigger1 = 1
v = 1
range = 0, 1

[State 11,1]
type = null;ChangeAnim
trigger1 = Var(1) = 1
trigger1 = Anim = 11
trigger1 = Animelem = 2
value = 13

[State 11,1]
type = null;ChangeAnim
trigger1 = Var(1) != 1
trigger1 = Anim = 13
trigger1 = Animelem = 6
value = 11

[State 11,2] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 45,0]
type = Explod
triggerall = numexplod(40) = 0
trigger1 = time = 0
anim = 30
id = 40
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
;ontop = 1
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26;
scale = 0.5,0.5
;ignorehitpause = 1

[State 40, キャンセル]
type = Varset
trigger1 = time = 0
;trigger1 = prevstateno = 1101
v = 23
value = 0
[State 40, キャンセル]
type = Varset
trigger1 = time = 0
trigger1 = prevstateno = 1121
v = 23
value = 1
[State 40, キャンセル]
type = Varset
trigger1 = time = 0
trigger1 = prevstateno = 1121
v = 23
value = 2

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y) - var(23)*.5

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

[State 40, 7]
type = null;VarSet
trigger1 = time = 0
v = 11
value = 0

;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45,0]
type = Explod
triggerall = numexplod(45) = 0
trigger1 = time = 0
anim = 30
id = 45
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
;ontop = 1
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.5,0.5
;ignorehitpause = 1

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45,0]
type = Veladd
trigger1 = time >= 2
y = -.15

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 45,0]
type = Veladd
trigger1 = 1
y = -.15

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52,0]
type = null;VarSet
trigger1 = time = 0
v = 11
value = 0

[State 52,1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52,2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52,3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52,4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; AirJump Start
[Statedef 65]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 65, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 65, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 65, 5]
type = VarSet
trigger1 = time = 0
sysvar(1) = -1

[State 65, 6]
type = VelSet
trigger1 = Time = 2
x = const(velocity.airjump.back.x)
y = const(velocity.airjump.y)

[State 65, 7]
type = ChangeState
trigger1 = Time = 2
value = 50

;ハイジャンプ
;---------------------------------------------------------------------------
;High Jump Start
[Statedef 70]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 70,0]
type = Explod
triggerall = numexplod(40) = 0
trigger1 = time = 0
anim = 30
id = 40
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
;ontop = 1
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 8
scale = 0.5,0.5
;ignorehitpause = 1

[State 70,0]
type = Varset
trigger1 = time = 0
v = 7
value = 1

[State 70,MUTEKI]
type = Nothitby
Trigger1 = time = 0
value = SCA
time = 6

[State 70, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 70, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 70, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 70,HighJump-AfterImage]
type = AfterImage
trigger1 = time = 0
trans = add1
TimeGap  = 2
FrameGap = 4
length = 20
time = 75
PalBright   =  50, 0, 20
PalContrast = 100,100,100
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1

[State 70, 4]
type = VelSet
trigger1 = AnimTime = 0
x = 1.5*(ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))))
y = (const(velocity.jump.y) - 4)

[State 70, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 70, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100,0]
type = Explod
triggerall = numexplod(101) = 0
trigger1 = time = 0
anim = 101
id = 100
postype = p1
pos = 20,0
vel = 0,0
ownpal = 0
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.8,0.8
;ignorehitpause = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100,0]
type = PlaySnd
triggerall = anim = 100
trigger1 = animelemtime(1) = 1
trigger2 = animelemtime(4) = 1
value = s7,9
volume = 250

[State 100,0]
type = PlaySnd
triggerall = anim = 100
trigger1 = animelemtime(2) = 4
trigger2 = animelemtime(5) = 4
value = s7,10
volume = 250

[State 100,ex]
type = Explod
trigger1 = Time%4 = 0
trigger1 = random = [0,300]
anim = 391
id = 391
postype = p1
pos = -20,-50
vel = 0,0
ownpal = 0
random = 10,40
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = -1
scale = .5,.25
sprpriority = 2
removetime = 12;消去命令で消します。

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 0

;---------------------------------------------------------------------------
;Dush_Stop
[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1
ctrl = 1

[State 101,0]
type = PlaySnd
trigger1 = time = 0
value = 10,2

[State 100,1]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 100,0]
type = Explod
triggerall = numexplod(101) = 0
trigger1 = time = 0
anim = 101
id = 100
postype = p1
pos = -20,0
vel = 0,0
facing = -1
ownpal = 0
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.8,0.8
;ignorehitpause = 1


[State 105,1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105,3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106

[State 106,Tyakuti Sound]
type = PlaySnd
trigger1 = Time = 1
value = s7,4

[State 106,1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106,2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106,3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106,4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1


;ロンダート
[Statedef 107]
type    = A
physics = N;A
ctrl = 0
anim = 107
sprpriority = 1

[State 107,1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = 0;const(velocity.run.back.y)

[State 107,2]
type = PosSet
trigger1 = time = 0
y = 0

[State 107,Tyakuti Sound]
type = PlaySnd
trigger1 = Animelem = 4
value = s7,4

[State 107,3]
type = ChangeState
trigger1 = animtime = 0
value = 108

;着地その２
[Statedef 108]
type    = S
physics = S
ctrl = 0
anim = 106

[State 108,Tyakuti Sound]
type = PlaySnd
trigger1 = Time = 1
value = s7,4

[State 108,1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 108,2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 108,3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 108,4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;空中ダッシュ
[Statedef 110]
type    = A
physics = A
velset = 6.2,-1.5
ctrl = 1
anim = 110

[State 100,0]
type = Explod
triggerall = numexplod(101) = 0
trigger1 = time = 0
anim = 101
id = 100
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.8,0.8
;ignorehitpause = 1

[State 110,0]
type = Varadd
TRIGGER1  = time = 0
v = 2
persistent = 0
value = 1

[State 110,0]
type = Varadd
trigger1 = Var(51) = 1
trigger1 = time = 0
v = 50
value = -25

[State 110,1]
type = AfterImage
trigger1 = time = 0
trans = add1
TimeGap  = 1
FrameGap = 3
time = 20
PalBright   = (200+((palno=3||palno=12)*50)-((palno=4)*150)+((palno=[5,7])*50)), (250-((palno=4)*200)-((palno=5)*200)), (250-((palno=3||palno=12||palno=[6,7])*150)-((palno=5)*200))
PalContrast = (120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110))
PalAdd      = (10+(palno=1)*120+(palno=2||palno=11)*50+(palno=3||palno=12)*80+(palno=5)*110),(10+(palno=2||palno=11)*30+(palno=3||palno=12)*80+(palno=[6,7])*110),(10+(palno=1)*80+(palno=4)*110+(palno=[6,7])*50)
PalMul      = .8, .8, .8
;長い…もっといい記述方法無いかな？

[State 110,ex]
type = Explod
trigger1 = Time%4 = 0
trigger1 = random = [0,300]
anim = 391
id = 391
postype = p1
pos = -20,-50
vel = 0,0
ownpal = 0
random = 10,40
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = -1
scale = .5,.25
sprpriority = 2
removetime = 12;消去命令で消します。

[state 110,2]
type = playsnd
trigger1 = time = 0
value = s7,12

[state 110,3]
type = veladd
trigger1 = time >= 0
y = -.2

[State 110,4]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 1

;Air Dush
[Statedef 111]
type    = A
physics = A
velset = 6.2,-1.5
poweradd = ifelse(var(51)= 0,-50,0)
ctrl = 1

[State 111,0]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -50

[State 111,1]
type = Explod
triggerall = numexplod(101) = 0
trigger1 = time = 0
anim = 101
id = 100
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.8,0.8
;ignorehitpause = 1

[State 111,2]
type = ChangeAnim
trigger1 = time = 0
value = 110
elem = 2

[State 110,3]
type = Varadd
trigger1 = Var(51) = 1
trigger1 = time = 0
v = 50
value = -25

[State 110,4]
type = AfterImage
trigger1 = time = 0
trans = add1
TimeGap  = 1
FrameGap = 3
time = 20
PalBright   = (200+((palno=3||palno=12)*50)-((palno=4)*150)+((palno=[5,7])*50)), (250-((palno=4)*200)-((palno=5)*200)), (250-((palno=3||palno=12||palno=[6,7])*150)-((palno=5)*200))
PalContrast = (120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110))
PalAdd      = (10+(palno=1)*120+(palno=2||palno=11)*50+(palno=3||palno=12)*80+(palno=5)*110),(10+(palno=2||palno=11)*30+(palno=3||palno=12)*80+(palno=[6,7])*110),(10+(palno=1)*80+(palno=4)*110+(palno=[6,7])*50)
PalMul      = .8, .8, .8

[State 111,ex]
type = Explod
trigger1 = Time%4 = 0
trigger1 = random = [0,300]
anim = 391
id = 391
postype = p1
pos = -20,-50
vel = 0,0
ownpal = 0
random = 10,40
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = -1
scale = .5,.25
sprpriority = 2
removetime = 12;消去命令で消します。

[state 111,5]
type = playsnd
trigger1 = time = 0
value = s7,12

[state 111,6]
type = veladd
trigger1 = time >= 0
y = -.2

[State 111,7]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 1


;---------------------------------------------------------------------------
;空中バックダッシュ
[Statedef 115]
type    = A
physics = A
velset = -6.2,-1.5
ctrl = 1
anim = 115

[State 100,0]
type = Explod
triggerall = numexplod(101) = 0
trigger1 = time = 0
anim = 101
id = 100
postype = p1
pos = -20,0
vel = 0,0
facing = -1
ownpal = 0
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.8,0.8
;ignorehitpause = 1

[State 115,0]
type = Varadd
TRIGGER1  = time = 0
v = 2
persistent = 0
value = 1

[State 115,0]
type = Varadd
trigger1 = Var(51) = 1
trigger1 = time = 0
v = 50
value = -25

[State 115,1]
type = AfterImage
trigger1 = time = 0
trans = add1
TimeGap  = 1
FrameGap = 3
time = 20
PalBright   = (200+((palno=3||palno=12)*50)-((palno=4)*150)+((palno=[5,7])*50)), (250-((palno=4)*200)-((palno=5)*200)), (250-((palno=3||palno=12||palno=[6,7])*150)-((palno=5)*200))
PalContrast = (120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110))
PalAdd      = (10+(palno=1)*120+(palno=2||palno=11)*50+(palno=3||palno=12)*80+(palno=5)*110),(10+(palno=2||palno=11)*30+(palno=3||palno=12)*80+(palno=[6,7])*110),(10+(palno=1)*80+(palno=4)*110+(palno=[6,7])*50)
PalMul      = .8, .8, .8

[state 115,2]
type = playsnd
trigger1 = time = 0
value = s7,12

[state 115,3]
type = veladd
trigger1 = time >= 0
y = -.2

[State 115,ex]
type = Explod
trigger1 = Time%4 = 0
trigger1 = random = [0,300]
anim = 391
id = 391
postype = p1
pos = -20,-50
vel = 0,0
ownpal = 0
random = 10,40
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = -1
scale = .5,.25
sprpriority = 2
removetime = 12;消去命令で消します。

[State 115,4]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 1

;Air Dush
[Statedef 116]
type    = A
physics = A
velset = -6.2,-1.5
poweradd = ifelse(var(51)= 0,-50,0)
ctrl = 1

[State 116,0]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -50

[State 116,1]
type = Explod
triggerall = numexplod(101) = 0
trigger1 = time = 0
anim = 101
id = 100
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = 1
sprpriority = 4
removetime = 26
scale = 0.8,0.8
;ignorehitpause = 1


[State 116,2]
type = ChangeAnim
trigger1 = time = 0
value = 115
elem = 3

[State 116,3]
type = Varadd
trigger1 = Var(51) = 1
trigger1 = time = 0
v = 50
value = -25

[State 116,4]
type = AfterImage
trigger1 = time = 0
trans = add1
TimeGap  = 1
FrameGap = 3
time = 20
PalBright   = (200+((palno=3||palno=12)*50)-((palno=4)*150)+((palno=[5,7])*50)), (250-((palno=4)*200)-((palno=5)*200)), (250-((palno=3||palno=12||palno=[6,7])*150)-((palno=5)*200))
PalContrast = (120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110)),(120-((palno=2||palno=11)*110))
PalAdd      = (10+(palno=1)*120+(palno=2||palno=11)*50+(palno=3||palno=12)*80+(palno=5)*110),(10+(palno=2||palno=11)*30+(palno=3||palno=12)*80+(palno=[6,7])*110),(10+(palno=1)*80+(palno=4)*110+(palno=[6,7])*50)
PalMul      = .8, .8, .8

[state 116,5]
type = playsnd
trigger1 = time = 0
value = s7,12

[state 116,6]
type = veladd
trigger1 = time >= 0
y = -.2

[State 116,ex]
type = Explod
trigger1 = Time%4 = 0
trigger1 = random = [0,300]
anim = 391
id = 391
postype = p1
pos = -20,-50
vel = 0,0
ownpal = 0
random = 10,40
supermove = 1
pausemovetime = 1
shadow = 0,0,0
bindtime = -1
scale = .5,.25
sprpriority = 2
removetime = 12;消去命令で消します。

[State 116,7]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

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

[State 5120, 8]
type = Varset
trigger1 = time = 0
v = 2
value = 0

[State 5120, 8]
type = Varset
triggerall = anim = 5120
triggerall = Var(2) = 0
trigger1 = AnimElemtime(1) > 0
trigger1 = AnimElemTime(3) < 3
trigger1 = command = "a" || command ="b" || command = "c";"recovery"
trigger1 = command = "holdback"
v = 2
value = 1

[State 5120, 8]
type = Varset
triggerall = anim = 5120
triggerall = Var(2) = 0
trigger1 = AnimElemtime(1) > 0
trigger1 = AnimElemTime(3) < 3
trigger1 = command = "a" || command ="b" || command = "c";"recovery"
trigger1 = command = "holdfwd"
v = 2
value = 2

[State 5120, 7]
type = ChangeState
trigger1 = AnimElemTime(3) >= 3
trigger1 = var(2) = 1
value = 5125

[State 5120, 7]
type = ChangeState
trigger1 = AnimElemTime(3) >= 3
trigger1 = var(2) = 2
value = 5126

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;無敵移動立ち上がり（後方）
[Statedef 5125]
type    = L
movetype= I
physics = N

[State 5125,0]
type = helper
trigger1 = numhelper(5125) = 0
trigger1 = time = 0
helpertype = player;normal
neme = "Down_Dummy"
ID = 5125
pos = 0,0
postype = p1
stateno = 5127
keyctrl = 0
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 5125, 1a] ;Get up anim (normal)
type = ChangeAnim
trigger1 = time = 0
;trigger1 = anim != [5111,5119]
;trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5125

[State 5125,0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5125,1]
type = Velset
trigger1 = time = 0
x = -5

[State 5125, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;無敵移動立ち上がり（後方）
[Statedef 5126]
type    = L
movetype= I
physics = N

[State 5126,0]
type = helper
trigger1 = numhelper(5126) = 0
trigger1 = time = 0
helpertype = player;normal
neme = "Down_Dummy"
ID = 5126
pos = 0,0
postype = p1
stateno = 5128
keyctrl = 0
persistent = 0
supermovetime = 99999
pausemovetime = 99999

[State 5126, 1a] ;Get up anim (normal)
type = ChangeAnim
trigger1 = time = 0
;trigger1 = anim != [5111,5119]
;trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5126

[State 5126,0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5126,1]
type = Velset
trigger1 = time = 0
x = 5

[State 5126, 3]
type = Turn
trigger1 = anim = 5126
trigger1 = animelem = 7

[State 5126, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ダミー
[Statedef 5127]
type    = L
movetype= I
physics = N
anim = 5127;ダミー

[State 5127,0]
type = Destroyself
trigger1 = root,stateno = 5125
trigger1 = root,animelem = 7
trigger2 = root,stateno != 5125

[Statedef 5128]
type    = L
movetype= I
physics = N
anim = 5127;ダミー

[State 5127,0]
type = Destroyself
trigger1 = root,stateno = 5126
trigger1 = root,animtime = 9
trigger2 = root,stateno != 5126

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
elem = ifelse((teammode = simul && Animelemtime(18) >= 30),18,1)
;elemの設定はチーム（一緒に戦う）モードでは本人が負けてからの時間差がある事があるため、
;その為の時間調整のアニメ変更設定です。
;↓「設定」の意味↓
;変身解除してから18枚目のアニメが表示されて尚且つ時間が30以上経っている場合、
;5150のアニメのそこから表示するように変更する事とします。

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

;LOLのラーニングランダムメッセージ用
;ここに入れないと無反応の場合が多いかも？
[State 5150, random]
type = VarRandom
triggerall = time = 0
trigger1 = numenemy = 1
trigger1 = enemy,teammode = single || enemy,teammode = turns
trigger1 = enemy,alive
trigger1 = (enemy,name = "masaru_takahara" && enemy,authorname = "AnkokuNaitou")
v = 10
range = 0, 6
;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = S
movetype= H
physics = S
velset = -24,0
anim = 5200

[State 5200, 1]
type = posset
trigger1 = time = 0
y = 0

[State 5200, 2]
type = palfx
trigger1 = Time = 0
value = 231,231,231
time = 2

[State 5200, 3]
type = Velset
trigger1 = time = 0
trigger1 = command = "holdfwd"
x = 24

[State 5200, 4]
type = Velset
trigger1 = time = 0
trigger1 = command = "holdback"
x = -24

[state 5200, 5]
type = velset
trigger1 = animtime = 0
x = 0

[State -3, PlaySnd]
type = PlaySnd
triggerall = Alive && Random <= 800
triggerall = time = 0
trigger1 = time = 0
value = s510,0+(random%3)
channel = 0
volume = 255

[state 5200, 6]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundno = 1
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundno = 1
fvalue = 0

[State -2, Facing1]
type = Varset
trigger1 = facing = 1
trigger1 = time = 0
v = 11
value = 1

[State -2, Facing2]
type = Varset
trigger1 = facing = -1
trigger1 = time = 0
v = 11
value = 2

;因果レベルの上昇
[State 5900,0]
type = Varadd
trigger1 = time = 0
v = 52
value = 1

;グリーフシード＋１
[State 5900,0]
type = Varadd
trigger1 = time = 0
v = 53
value = 1

;向き関係固定
[State 5900, Facing1]
type = null;Varset
trigger1 = facing = 1
trigger1 = time = 0
v = 39
value = 1

[State 5900, Facing2]
type = null;Varset
trigger1 = facing = -1
trigger1 = time = 0
v = 39
value = 2

;ＬＯＬキャラのイントロ用
[State -2, random]
type = VarRandom
triggerall = roundstate < 2
triggerall = time = 0
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
v = 10
range = 0, 2


[State 5900, 3] ;Intro
type = ChangeState
trigger1 = roundno = 1
value = 190

[State -2, Mode Select]
type = null;Helper
trigger1 = time = 0;!Time
;trigger1 = stateno = 190;191
stateno = 6500
name = "モードセレクト"
postype = left
helpertype = normal
keyctrl = 1
ontop = 1
ownpal = 1




