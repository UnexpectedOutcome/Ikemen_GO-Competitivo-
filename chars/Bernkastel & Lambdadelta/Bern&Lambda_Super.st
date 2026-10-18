
;===========================================================================
; 超必殺技
;===========================================================================
;ダブル連続突進パンチ
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3000+ceil(var(10)*0.01)+ceil(var(12)*0.01)
ctrl = 0
sprpriority = 2

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = Time = 1
value = s20,222
channel = 1
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
trigger1 = Time = 1
value = s30,223
channel = 2
ignorehitpause = 1

[State 3000, 移動速度]
type = VelSet
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger3 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger4 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger5 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
x = 5.0

[State 3000, 音を鳴らす]
type = PlaySnd
trigger1 = time = 1
value = s14, 0

[State 3000, ゲージ減少]
Type           = PowerAdd
Trigger1       = time = 1
Persistent     = 0
IgnoreHitPause = 1
Value          = -1000

[State 3000, 暗転]
type = Explod
triggerall = NumExplod(7100) = 0
trigger1 = time = 1
anim = 7100
ID = 7100
pos = 0, 0
postype = left
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = 1.0,1.0
Persistent = 0
ignorehitpause = 1

[State 3000, カットイン]
type = Explod
triggerall = NumExplod(4000) = 0
trigger1 = time = 1
anim = 4000
ID = 4000
pos = 0, 0
postype = back
bindtime = -1
removetime = -2
sprpriority = 0
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = 1.2,1.2
Persistent = 0
ignorehitpause = 1

[State 3000, エフェクト]
type = Explod
triggerall = NumExplod(4400) = 0
trigger1 = time = 1
anim = 4400
ID = 4400
pos = ceil(10*Const(size.xscale)), ceil(-95*Const(size.yscale))
postype = P1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = Const(size.xscale),Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3000, 暗転処理]
type     = SuperPause
trigger1 = time = 1
anim     = -1
sound    = -1
time     = 40
darken   = 0
movetime = 40
P2DefMul = 1

[State 3000, ヒット定義]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = S, HA
animtype  = Hard
damage    = 43, 8
priority  = 5
guardflag = MA
pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-60
hitsound   = s12,2
guardsound = s6,0
ground.type = low
ground.slidetime = 16
ground.hittime  = 16
guard.slidetime = 13
guard.hittime = 13
guard.ctrltime = 13
ground.velocity = -6
air.velocity = -4,-3
fall.recover = 0
yaccel = .44
ID = 3000

[State 3000, ヒット定義]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
animtype  = Hard
damage    = 43, 8
priority  = 5
guardflag = MA
pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-60
hitsound   = s12,2
guardsound = s6,0
ground.type = high
ground.slidetime = 16
ground.hittime  = 16
guard.slidetime = 13
guard.hittime = 13
guard.ctrltime = 13
ground.velocity = -6
air.velocity = -4,-3
fall.recover = 0
yaccel = .44
ID = 3001

[State 3000, ヒット定義]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
animtype  = Hard
damage    = 43, 8
priority  = 5
guardflag = LA
pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-60
hitsound   = s12,2
guardsound = s6,0
ground.type = low
ground.slidetime = 16
ground.hittime  = 16
guard.slidetime = 13
guard.hittime = 13
guard.ctrltime = 13
ground.velocity = -6
air.velocity = -4,-3
fall.recover = 0
yaccel = .44
ID = 3002

[State 3000, ヒット定義]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
animtype  = Hard
damage    = 62, 12
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-60
hitsound   = s12,2
guardsound = s6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 18
ground.velocity = -4,-3.5
air.velocity = -4,-3
fall = 1
fall.recover = 0
yaccel = .44
ID = 3003

[State 3060, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 110
length = 12
palcolor = 128;256
;palbright = 0,0,0
palcontrast = 220,220,220
paladd = 0,0,0
timegap = 1
framegap = 3

[State 3000, ドリームキャンセル]
type = ChangeState
triggerall = var(8) != 0
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
value = 3150

[State 3000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ラムダコンビネーション
[Statedef 3050]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3050+ceil(var(12)*0.01)
ctrl = 0
sprpriority = 2

[State -3, ボイス分岐・ラムダ]
type = VarRandom
trigger1 = Time = 1
v = 7
range = 0,1

[State -3, ボイス・ラムダ]
type = PlaySnd
trigger1 = Time = 1
value = s30,174
channel = 2
ignorehitpause = 1

[State 3050, 音を鳴らす]
type     = PlaySnd
trigger1 = time = 1
value    = s3050, 0
channel = 0
ignorehitpause = 1

[State 3050, 音を鳴らす]
type = PlaySnd
trigger1 = time = 1
value = s14, 0

[State 3050, ゲージ減少]
Type           = PowerAdd
Trigger1       = time = 1
Persistent     = 0
IgnoreHitPause = 1
Value          = -1000

[State 3050, 暗転]
type = Explod
triggerall = NumExplod(7100) = 0
trigger1 = time = 1
anim = 7100
ID = 7100
pos = 0, 0
postype = left
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = 1.0,1.0
Persistent = 0
ignorehitpause = 1

[State 3050, エフェクト]
type = Explod
triggerall = NumExplod(4400) = 0
trigger1 = time = 1
anim = 4400
ID = 4400
pos = 0, ceil(-100*Const(size.yscale))
postype = P1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = Const(size.xscale),Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3050, カットイン]
type = Explod
triggerall = NumExplod(4000) = 0
trigger1 = time = 1
anim = 4000
ID = 4000
pos = 0, 0
postype = back
bindtime = -1
removetime = -2
sprpriority = 0
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = 1.2,1.2
Persistent = 0
ignorehitpause = 1

[State 3050, 暗転処理]
type     = SuperPause
trigger1 = time = 1
anim     = -1
sound    = -1
time     = 36
darken   = 0
movetime = 36
P2DefMul = 1

[State 3050, ヒット定義]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Medium
damage    = 49,9
hitflag   = MAF
guardflag = MA
pausetime = 0,0
priority = 4, hit
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-70
hitsound   = s12,2
guardsound = s6,0
ground.type = High
ground.slidetime    = 20
ground.hittime      = 20
guard.slidetime     = 20
guard.hittime       = 17
air.hittime         = 17
ground.velocity = -5.5
air.velocity = -2.5,-4
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3060
p2stateno = 3070
fall = 1
Fall.recover  = 0
Kill          = 0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -3
envshake.phase = 0
ID = 3050

[State 3050, AfterImage]
type = AfterImage
trigger1 = time = 39
time = 2
length = 12
palcolor = 128;256
;palbright = 0,0,0
palcontrast = 220,220,220
paladd = 0,0,0
timegap = 1
framegap = 3

[State 3050, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ラムダコンビネーション・ヒット
[Statedef 3060]
type    = S
movetype= A
physics = N
anim = 3060+var(7)
poweradd = 0
sprpriority = 2
velset = 0,0

[State -3, ボイス・ラムダ]
type = PlaySnd
trigger1 = var(7) = 0
trigger1 = AnimElem = 3
value = s30,85
channel = 2
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
trigger1 = var(7) = 1
trigger1 = AnimElem = 3
value = s30,175
channel = 2
ignorehitpause = 1

[State 3060, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3060, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3060, 物理的なキャラの幅]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = ceil(90*Const(size.xscale)),0

[State 3060, 掴んだ相手の位置１]
type = TargetBind
trigger1 = var(7) = 0
trigger1 = AnimElemTime(4) = 0
trigger2 = var(7) = 1
trigger2 = AnimElemTime(16) = 0
pos = ceil(90*Const(size.xscale)), 0

[State 3060, 掴んだ相手のステート変更]
type = TargetState
trigger1 = var(7) = 0
trigger1 = AnimElem = 4
trigger2 = var(7) = 1
trigger2 = AnimElem = 16
value = 3071+4*var(15)

[State 3060, ループ回避]
type = varset
triggerall = var(15) = 0
trigger1 = var(7) = 0
trigger1 = AnimElem = 4
trigger2 = var(7) = 1
trigger2 = AnimElem = 16
var(15) = 1

[State 3060, 音を鳴らす]
type = PlaySnd
trigger1 = var(7) = 0
trigger1 = AnimElem = 4
trigger2 = var(7) = 1
trigger2 = AnimElem = 16
value = 12, 2

[State 3060, 2]
type = HitAdd
trigger1 = var(7) = 0
trigger1 = AnimElem = 4
trigger2 = var(7) = 1
trigger2 = AnimElem = 16
value = 1

[State 3060, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = var(7) = 0
trigger1 = AnimElem = 4
trigger2 = var(7) = 1
trigger2 = AnimElem = 16
value = ceil(-120*(const(data.attack)*0.01))

[State 3060, ヒット・ガード]
type = Explod
triggerall = NumEnemy
triggerall = NumExplod(3060) = 0
trigger1 = var(7) = 0
trigger1 = AnimElemTime(4) = 0
trigger2 = var(7) = 1
trigger2 = AnimElem = 16
anim = 4220
ID = 3060
pos = ceil(100*Const(size.xscale)), ceil(-90*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 0
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3060, AfterImage]
type = AfterImage
trigger1 = AnimElem = 2
time = 60+var(7)*90
length = 12
palcolor = 128;256
;palbright = 0,0,0
palcontrast = 220,220,220
paladd = 0,0,0
timegap = 1
framegap = 3

[State 3060, ドリームキャンセル]
type = TargetState
triggerall = var(8) != 0
trigger1 = anim = 3060
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger2 = anim = 3061
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(16) < 0
value = 3180

[State 3060, ドリームキャンセル]
type = ChangeState
triggerall = var(8) != 0
trigger1 = anim = 3060
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger2 = anim = 3061
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(16) < 0
value = 3150

[State 3060, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ラムダコンビネーション・相手1
[Statedef 3070]
type    = U
movetype= H
physics = S
velset = 0,0
sprpriority = 1

[State 3070, PosSet]
type = PosSet
trigger1 = statetype != A
trigger1 = Time = 0
y = 0

[State 3070, 移動速度]
type = VelSet
trigger1 = statetype != A
trigger1 = AnimElem = 2
x = -3.5

[State 3070,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3070, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3070

[State 3070, 相手ステートに戻す]
type = SelfState
trigger1 = Time = 170
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ラムダコンビネーション・相手2
[Statedef 3071]
type    = U
movetype= H
physics = S
velset = 0,0
sprpriority = 1

[State 3071,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3071, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3071

[State 3071, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 3072

;---------------------------------------------------------------------------
;ラムダコンビネーション・相手3
[Statedef 3072]
type    = A
movetype= H
physics = N
velset = -1.0,-7
poweradd = 60
sprpriority = 1

[State 3072, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3072

[State 3072, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Anim = 3072
trigger1 = Vel Y > 0
trigger1 = SelfAnimExist(5061)
value = 5061

[State 3072, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Anim = 3072
trigger1 = Vel Y > 0
value = 5050

[State 3072,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3072, 速度加算];重力
type = VelAdd
trigger1 = 1
y = .4

[State 3072, 相手ステートに戻す]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
;ラムダコンビネーション・相手2・ループ
[Statedef 3075]
type    = U
movetype= H
physics = S
velset = 0,0
sprpriority = 1

[State 3071,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3071, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3071

[State 3071, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 3076

;---------------------------------------------------------------------------
;ラムダコンビネーション・相手3・ループ
[Statedef 3076]
type    = A
movetype= H
physics = N
velset = -5.0,-5
poweradd = 60
sprpriority = 1

[State 3072, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 3072,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3072, 速度加算];重力
type = VelAdd
trigger1 = 1
y = .7

[State 3072, 相手ステートに戻す]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52


;---------------------------------------------------------------------------
;真・ベルン拳
[Statedef 3100]
type    = S
movetype= A
physics = N
poweradd= 0
velset = 0,0
anim = 3100+ceil(var(10)*0.01)+ceil(var(12)*0.01)
ctrl = 0
sprpriority = 2

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = Time = 1
value = s20,170
channel = 1
ignorehitpause = 1

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = AnimElem = 4
value = s20,178
channel = 1
ignorehitpause = 1

[State 3100, 無敵]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
ignorehitpause = 1

[State 3100, 移動速度]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
x = 13

[State 3100, 移動速度]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 0.0
y = -5.5

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(5) = 0
statetype = A

[State 3100, 移動速度]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 1.5

[State 3100, 移動速度]
type = Gravity
trigger1 = AnimElemTime(8) >= 0

[State 3100, 音を鳴らす]
type = PlaySnd
trigger1 = time = 1
value = s14, 0

[State 3100, ゲージ減少]
Type           = PowerAdd
Trigger1       = time = 1
Persistent     = 0
IgnoreHitPause = 1
Value          = -2000

[State 3100, 暗転]
type = Explod
triggerall = NumExplod(7100) = 0
trigger1 = time = 1
anim = 7100
ID = 7100
pos = 0, 0
postype = left
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = 1.0,1.0
Persistent = 0
ignorehitpause = 1

[State 3100, エフェクト]
type = Explod
triggerall = NumExplod(4400) = 0
trigger1 = time = 1
anim = 4400
ID = 4400
pos = ceil(5*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = Const(size.xscale),Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3100, カットイン]
type = Explod
triggerall = NumExplod(4000) = 0
trigger1 = time = 1
anim = 4000
ID = 4000
pos = 0, 0
postype = back
bindtime = -1
removetime = -2
sprpriority = 0
ownpal = 1
supermovetime = 40
pausemovetime = 40
scale = 1.2,1.2
Persistent = 0
ignorehitpause = 1

[State 3100, 暗転処理]
type     = SuperPause
trigger1 = time = 1
anim     = -1
sound    = -1
time     = 37
darken   = 0
movetime = 37
P2DefMul = 1

[State 3100, ヒット定義]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Hard
damage    = 39, 7
priority  = 5
hitflag = MF
guardflag = M
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-60
hitsound   = s12,2
guardsound = s6,0
ground.type = low
ground.slidetime = 16
ground.hittime  = 16
guard.slidetime = 13
guard.hittime = 13
guard.ctrltime = 13
ground.velocity = -1
air.velocity = -4,-2
p1stateno = 3110
p2stateno = 3120
fall = 1
Fall.recover  = 0
Kill          = 0
yaccel = .44
envshake.time = 10
envshake.freq = 60
envshake.ampl = -3
envshake.phase = 0
ID = 3100

[State 3100, ヒット定義]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
attr = A, HA
animtype  = Hard
damage    = 62, 12
priority  = 5
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-60
hitsound   = s12,2
guardsound = s6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 18
ground.velocity = -1
guard.velocity = -9
air.velocity = -4,-2
fall.recover = 0
yaccel = .44
ID = 3102

[State 3100, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3100)
trigger1 = NumExplod(3100) = 0
anim = 4230
ID = 3100
pos = ceil(110*Const(size.xscale)), ceil(-120*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3100, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3101)
trigger1 = NumExplod(3101) = 0
anim = 4220
ID = 3101
pos = ceil(110*Const(size.xscale)), ceil(-120*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3100, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3101)
trigger1 = NumExplod(3101) = 0
anim = 4230
ID = 3101
pos = ceil(110*Const(size.xscale)), ceil(-120*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3100, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3102)
trigger1 = NumExplod(3102) = 0
anim = 4220
ID = 3102
pos = ceil(110*Const(size.xscale)), ceil(-120*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 1
ignorehitpause = 1
[State 3100, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3102)
trigger1 = NumExplod(3102) = 0
anim = 4230
ID = 3102
pos = ceil(110*Const(size.xscale)), ceil(-120*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 1
ignorehitpause = 1

[State 3100, AfterImage]
type = AfterImage
trigger1 = time = 39
time = 24
length = 12
palcolor = 128;256
;palbright = 0,0,0
palcontrast = 220,220,220
paladd = 0,0,0
timegap = 1
framegap = 3

[State 3100, 着地]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

;---------------------------------------------------------------------------
;真・ベルン拳・クリーンヒット
[Statedef 3110]
type    = S
movetype= A
physics = N
anim = 3110
poweradd = 0
sprpriority = 2
velset = 0,0

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = time = 20
value = s20,171
channel = 1
ignorehitpause = 1

[State 3110, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3110, ]
type = PlayerPush
trigger1 = 1
value = 0

[State 3110, 2]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
value = 1

[State 3110, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
value = 12, 2

[State 3110, 2]
type = EnvShake
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
time = 10
freq = 90
ampl = 3

[State 3110, 移動速度]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
x = 13

[State 3110, 移動速度]
type = VelSet
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
x = 0.0
y = -6.5

[State 3110, 移動速度]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 0.0
y = 0.0

[State 3110, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(5) = 0
statetype = A

[State 3110, 移動速度]
type = Gravity
trigger1 = AnimElemTime(9) >= 0

[State 3110, 掴んだ相手の位置]
type = TargetBind
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(7) = 0
pos = ceil(80*Const(size.xscale)), ceil(-40*Const(size.yscale))

[State 3110, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 3
value = 3121

[State 3110, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 6
value = 3122

[State 3110, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 7
value = 3123

[State 3110, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = ceil(-57*(const(data.attack)*0.01))
kill = 0

[State 3110, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = ceil(-76*(const(data.attack)*0.01))
kill = 0

[State 3110, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = ceil(-164*(const(data.attack)*0.01))

[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(1) = 0
trigger1 = NumExplod(3110) = 0
anim = 4220
ID = 3110
pos = ceil(83*Const(size.xscale)), ceil(-115*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(3) = 0
trigger1 = NumExplod(3111) = 0
anim = 4220
ID = 3111
pos = ceil(100*Const(size.xscale)), ceil(-150*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(6) = 0
trigger1 = NumExplod(3112) = 0
anim = 4220
ID = 3112
pos = ceil(50*Const(size.xscale)), ceil(-205*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(7) = 0
trigger1 = NumExplod(3113) = 0
anim = 4220
ID = 3113
pos = ceil(50*Const(size.xscale)), ceil(-205*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(1) = 0
trigger1 = NumExplod(3115) = 0
anim = 4900
ID = 3115
pos = ceil(97*Const(size.xscale)), ceil(-110*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(3) = 0
trigger1 = NumExplod(3116) = 0
anim = 4900
ID = 3116
pos = ceil(96*Const(size.xscale)), ceil(-146*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(6) = 0
trigger1 = NumExplod(3117) = 0
anim = 4900
ID = 3117
pos = ceil(50*Const(size.xscale)), ceil(-205*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3110, ヒット・ガード]
type = Explod
trigger1 = animelemtime(7) = 0
trigger1 = NumExplod(3118) = 0
anim = 4900
ID = 3118
pos = ceil(50*Const(size.xscale)), ceil(-205*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3110, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 138
length = 12
palcolor = 128;256
;palbright = 0,0,0
palcontrast = 220,220,220
paladd = 0,0,0
timegap = 1
framegap = 3

[State 3110, ドリームキャンセル]
type = TargetState
triggerall = var(8) != 0
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
value = 3185

[State 3110, ドリームキャンセル]
type = TargetState
triggerall = var(8) != 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
value = 3180

[State 3110, ドリームキャンセル]
type = ChangeState
triggerall = var(8) != 0
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
value = 3150

[State 3110, 着地]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

;---------------------------------------------------------------------------
;真・ベルン拳・クリーンヒット相手側1
[Statedef 3120]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 1

[State 3120, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3120, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3120

;---------------------------------------------------------------------------
;真・ベルン拳・クリーンヒット相手側2
[Statedef 3121]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 3

[State 3121, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3121

;---------------------------------------------------------------------------
;真・ベルン拳・クリーンヒット相手側3
[Statedef 3122]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 4

[State 3122, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3122

[State 3122, 移動速度]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 0.0
y = -6.5

;---------------------------------------------------------------------------
;真・ベルン拳・クリーンヒット相手側4
[Statedef 3123]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 3

[State 3123, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3123

[State 3123, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3123, 移動速度]
type = VelSet
trigger1 = Anim = 3123
trigger1 = AnimElemTime(2) = 0
x = -2.8
y = -5.5

[State 3123, 速度加算];重力
type = VelAdd
trigger1 = Anim = 3123
trigger1 = AnimElemTime(2) >= 0
trigger2 = Anim != 3123
y = .4

[State 3123, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Anim = 3123
trigger1 = Vel Y > 0
value = 5050

[State 3123, 相手ステートに戻す]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
;うみねこボンバー
[Statedef 3150]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3150+ceil(var(10)*0.01)
ctrl = 0
sprpriority = 3

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = Time = 1
value = s20,172
channel = 1
ignorehitpause = 1

[State -3, ボイス分岐・ラムダ]
type = VarRandom
trigger1 = Time = 1
v = 7
range = 176,178

[State -3, ボイス・ラムダ]
type = PlaySnd
trigger1 = Time = 1
value = s30,var(7)
channel = 2
ignorehitpause = 1

[State 3150, 音を鳴らす]
type = PlaySnd
trigger1 = time = 1
value = s14, 1

[State 3150, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3150, ゲージ減少]
Type           = PowerAdd
Trigger1       = time = 1
Persistent     = 0
IgnoreHitPause = 1
Value          = -3000

[State 3150, ドリームキャンセル]
type       = VarSet
Trigger1   = time = 1
var(8)     = 0

[State 3150, 暗転]
type = Explod
triggerall = NumExplod(7100) = 0
trigger1 = time = 1
anim = 7100
ID = 7100
pos = 0, 0
postype = left
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = 1.0,1.0
Persistent = 0
ignorehitpause = 1

[State 3150, エフェクト]
type = Explod
triggerall = NumExplod(4500) = 0
trigger1 = time = 1
anim = 4500
ID = 4500
pos = ceil(5*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
supermovetime = 43
pausemovetime = 43
scale = Const(size.xscale),Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3150, 暗転処理]
type     = SuperPause
trigger1 = time = 1
anim     = -1
sound    = -1
time     = 40
darken   = 0
movetime = 40
P2DefMul = 1

[State 3150, 移動速度]
type = VelSet
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
x = 9.0

[State 3150, 移動速度]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 3150, ヒット定義]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = Medium
damage    = 128,12
hitflag   = MAF
guardflag = M
pausetime = 0,1
priority = 4, hit
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-70
hitsound   = s12,2
guardsound = s6,0
ground.type = High
ground.slidetime    = 20
ground.hittime      = 20
guard.slidetime     = 20
guard.hittime       = 16
air.hittime         = 16
ground.velocity = -5.5
air.velocity = -2.5,-4
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3160
p2stateno = 3170
fall = 1
Fall.recover  = 0
Kill          = 0
envshake.time = 10
envshake.freq = 60
envshake.ampl = -3
envshake.phase = 0
ID = 3150

[State 3150, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;うみねこボンバー・ヒット1
[Statedef 3160]
type    = S
movetype= A
physics = N
anim = 3160
poweradd = 0
sprpriority = 2
velset = 0,0

[State 3160, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3160, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3160, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 3160, 暗転]
type = Explod
triggerall = NumExplod(7300) = 0
trigger1 = Time = 1
anim = 7300
ID = 7300
pos = 0, 0
postype = back
bindtime = -1
removetime = -1
sprpriority = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = 0.5,0.5
Persistent = 0
ignorehitpause = 1
removeongethit = 1

[State 3160, ヘルパー1]
type = Helper
trigger1 = NumHelper(3161) = 0
trigger1 = AnimElem = 1,0
id = 3161
name = "bomber1"
pos = 0, 0
postype = p1
stateno = 3161
helpertype = Normal
keyctrl = 0
ownpal = 1
pausemovetime = 0
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State 3160, ヘルパー1]
type = Helper
trigger1 = NumHelper(3162) = 0
trigger1 = AnimElem = 1,0
id = 3162
name = "bomber2"
pos = 0, 0
postype = p2
stateno = 3162
helpertype = Normal
keyctrl = 0
ownpal = 1
facing = 1
pausemovetime = 0
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State 3170, ステート変更]
type = ChangeState
trigger1 = target,anim = 3176
value = 3165

;---------------------------------------------------------------------------
;うみねこボンバー・ヘルパー1
[Statedef 3161]
type    = S
movetype= A
physics = N
anim = 3161
poweradd = 0
sprpriority = 3
velset = 9,0

[State 3161, destroyself]
type = destroyself
trigger1 = FrontEdgeDist < -20

;---------------------------------------------------------------------------
;うみねこボンバー・ヘルパー2
[Statedef 3162]
type    = A
movetype= I
physics = N
anim = 3160
velset = -18,0
poweradd = 0
sprpriority = 1

[State 3162, 音を鳴らす]
type = PlaySnd
trigger1 = BackEdgeDist <= 20
value = s12, 4

[State 3162, 移動速度]
type = VelSet
trigger1 = BackEdgeDist <= 20
trigger1 = vel X < 0
x = 18.0

[State 3162, 移動速度]
type = VelSet
trigger1 = BackEdgeDist >= 20
trigger1 = vel X < 0
x = -18.0

[State 3162,]
type = VarAdd
trigger1 = BackEdgeDist <= 20
var(0) = 1

[State 3162,]
type = turn
trigger1 = BackEdgeDist <= 20

[State 3162, destroyself]
type = destroyself
trigger1 = var(0) = 6

;---------------------------------------------------------------------------
;うみねこボンバー・ヘルパー3
[Statedef 3163]
type    = A
movetype= I
physics = N
anim = 3163
poweradd = 0
sprpriority = 2
velset = 0,0

[State 3163, 移動速度]
type = VelSet
trigger1 = AnimElem = 1,0
x = -6
y = 2.5

[State 3163, 移動速度]
type = VelSet
trigger1 = AnimElem = 2,0
x = 0.0
y = 3

[State 3163, 移動速度]
type = VelSet
trigger1 = AnimElem = 3,0
x = 0.0
y = 0

[State 3163, 移動速度]
type = VelSet
trigger1 = AnimElem = 4,0
x = 0.0
y = 10

[State 3163, destroyself]
type = destroyself
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0

;---------------------------------------------------------------------------
;うみねこボンバー・ヒット2
[Statedef 3165]
type    = S
movetype= A
physics = N
anim = 3165
poweradd = 0
sprpriority = 2
velset = 0,0

[State 3165, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3165, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3160, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 3165,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3165, 2]
type = PosSet
trigger1 = Time = 0
x = -20*facing
;x = 0

[State 3165, 掴んだ相手のステート変更]
type = TargetState
triggerall = numtarget
triggerall = target,stateno = 3170
trigger1 = facing = 1
trigger1 = (pos x-target,pos x) <= 0
trigger2 = facing = -1
trigger2 = (pos x-target,pos x) >= 0
value = 3171

[State 3165, ヘルパー3]
type = Helper
trigger1 = NumHelper(3163) = 0
trigger1 = statetime = 0
id = 3163
name = "bomber3"
pos = 60, -150
postype = p1
stateno = 3163
helpertype = Normal
keyctrl = 0
ownpal = 1
pausemovetime = 0
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),AnimElem = 4,0
value = s20,173
channel = 1
ignorehitpause = 1

[State 3165, 音を鳴らす]
type = PlaySnd
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),AnimElem = 4,3
value = s12, 2

[State 3165, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),AnimElem = 4,3
value = ceil(-19*(const(data.attack)*0.01))
kill = 0

[State 3165, 2]
type = HitAdd
trigger1 = Numexplod(3160) = 0
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),AnimElem = 4,3
value = 1

[State 3165, ヒット・ガード]
type = Explod
trigger1 = Numexplod(3160) = 0
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),AnimElem = 4,3
anim = 4220
ID = 3160
pos = 0, ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3165, 掴んだ相手のステート変更]
type = TargetState
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),AnimElem = 4,3
value = 3172

[State 3165, ステート変更]
type = ChangeState
trigger1 = NumHelper(3163)
trigger1 = Helper(3163),Vel Y > 0
trigger1 = Helper(3163),Pos Y >= 0
value = 3166

;---------------------------------------------------------------------------
;うみねこボンバー・ヒット3
[Statedef 3166]
type    = S
movetype= A
physics = N
anim = 3166
poweradd = 0
sprpriority = 2
velset = 0,0

[State 3166, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3166, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3166, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 3166, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3166, 移動速度]
type = VelSet
trigger1 = AnimElem = 2,0
x = -2.0

[State 3166, 移動速度]
type = VelSet
trigger1 = AnimElem = 3,0
x = 0

[State 3066, 掴んだ相手の位置]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
pos = ceil(80*Const(size.xscale)), 0

[State 3166, 2]
type = HitAdd
trigger1 = AnimElem = 4,0
trigger2 = AnimElem = 6,0
trigger3 = AnimElem = 8,0
trigger4 = AnimElem = 10,0
trigger5 = AnimElem = 12,0
trigger6 = AnimElem = 14,0
trigger7 = AnimElem = 17,0
value = 1

[State 3166, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 4,0
trigger2 = AnimElem = 6,0
trigger3 = AnimElem = 8,0
trigger4 = AnimElem = 10,0
trigger5 = AnimElem = 12,0
trigger6 = AnimElem = 17,0
value = 3173

[State 3166, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElem = 4,0
trigger2 = AnimElem = 6,0
trigger3 = AnimElem = 8,0
trigger4 = AnimElem = 10,0
trigger5 = AnimElem = 12,0
trigger6 = AnimElem = 14,0
value = ceil(-17*(const(data.attack)*0.01))
kill = 0

[State 3166, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElem = 17,0
value = ceil(-19*(const(data.attack)*0.01))
kill = 0

[State 3166, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 17,0
value = 3174

[State 3166, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4,0
trigger2 = AnimElem = 6,0
trigger3 = AnimElem = 8,0
trigger4 = AnimElem = 10,0
trigger5 = AnimElem = 12,0
trigger6 = AnimElem = 14,0
value = s12, 1

[State 3166, ヒット・ガード]
type = Explod
trigger1 = AnimElem = 4,0
trigger2 = AnimElem = 6,0
trigger3 = AnimElem = 8,0
trigger4 = AnimElem = 10,0
trigger5 = AnimElem = 12,0
trigger6 = AnimElem = 14,0
anim = 4210
ID = 3161
pos = ceil(60*Const(size.xscale)), ceil(-105*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 1
ignorehitpause = 1

[State 3166, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 17,0
value = s12, 2

[State 3166, ヒット・ガード]
type = Explod
trigger1 = AnimElem = 17,0
anim = 4220
ID = 3162
pos = ceil(90*Const(size.xscale)), ceil(-140*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3166, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 3167

;---------------------------------------------------------------------------
;うみねこボンバー・ヒット4
[Statedef 3167]
type    = S
movetype= A
physics = N
anim = 3167
poweradd = 0
sprpriority = 2
velset = 0,0

[State 3167, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3167, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3167, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State -3, ボイス・ベルン]
type = PlaySnd
trigger1 = AnimElem = 2,0
value = s20,174
channel = 1
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
trigger1 = AnimElem = 2,0
value = s30,179
channel = 2
ignorehitpause = 1

[State 3167, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2,0
trigger1 = numexplod(7300)
ID = 7300
ignorehitpause = 1

[State 3100, 暗転]
type = Explod
triggerall = NumExplod(7100) = 0
trigger1 = AnimElem = 2,0
anim = 7110
ID = 7100
pos = 0, 0
postype = left
bindtime = -1
removetime = -1
sprpriority = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = 1.0,1.0
Persistent = 0
ignorehitpause = 1

[State 3167, ヘルパー4]
type = Helper
trigger1 = NumHelper(3168) = 0
trigger1 = AnimElem = 2,0
id = 3168
name = "bomber4"
pos = -110, 0
postype = p1
stateno = 3168
helpertype = Normal
keyctrl = 0
ownpal = 1
facing = 1
pausemovetime = 30
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State 3167, ヘルパー5]
type = Helper
trigger1 = NumHelper(3169) = 0
trigger1 = AnimElem = 2,0
id = 3169
name = "bomber5"
pos = 195, 0
postype = p1
stateno = 3169
helpertype = Normal
keyctrl = 0
ownpal = 1
facing = -1
pausemovetime = 30
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State 3167, 2]
type = HitAdd
trigger1 = AnimElem = 3,0
value = 1

[State 3167, ヒット・ガード]
type = Explod
trigger1 = AnimElem = 3,0
anim = 4220
ID = 3167
pos = ceil(90*Const(size.xscale)), ceil(-145*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3167, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3,0
value = s12, 2

[State 3167, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2,50
value = s19, 0

[State 3167, 暗転処理]
type     = Pause
trigger1 = AnimElem = 2,42
time     = 32
movetime = 32

[State 3167, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3,0
value = s19, 1

[State 3167, 掴んだ相手のライフ増減]
type = TargetLifeAdd
trigger1 = AnimElem = 3,0
value = ceil(-324*(const(data.attack)*0.01))

[State 3066, 掴んだ相手の位置]
type = TargetBind
trigger1 = AnimElemTime(3) = 0
pos = ceil(70*Const(size.xscale)), 0

[State 3167, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 3,0
value = 3175

[State 3167, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = numexplod(7100)
ID = 7100
ignorehitpause = 1

[State 3167, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;うみねこボンバー・ヘルパー4
[Statedef 3168]
type    = S
movetype= I
physics = N
anim = 3168
poweradd = 0
sprpriority = 2
velset = 0,0

[State 3168, 移動速度]
type = VelSet
trigger1 = AnimElem = 2,0
x = 6.0

[State 3168, 移動速度]
type = VelSet
trigger1 = AnimElem = 10,0
x = 7.0

[State 3168, 移動速度]
type = VelSet
trigger1 = AnimElem = 9,0
x = 0.0

[State 3168, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;うみねこボンバー・ヘルパー5
[Statedef 3169]
type    = S
movetype= I
physics = N
anim = 3169
poweradd = 0
sprpriority = 4
velset = 0,0

[State 3169, 移動速度]
type = VelSet
trigger1 = AnimElem = 2,0
x = 6.0

[State 3169, 移動速度]
type = VelSet
trigger1 = AnimElem = 10,0
x = 7.0

[State 3169, 移動速度]
type = VelSet
trigger1 = AnimElem = 9,0
x = 0.0

[State 3169, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;うみねこボンバー・相手側1
[Statedef 3170]
type    = A
movetype= H
physics = N
velset = -18,0
poweradd = 0
sprpriority = 1

[State 3170, 2]
type = PosSet
trigger1 = Time = 0
y = -13

[State 3170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3170,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;movecamera = 1,0

[State 3170, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3170

[State 3170, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = BackEdgeDist <= 20
trigger1 = Anim = [3170,3175]
value = Anim+1

[State 3170, 移動速度]
type = VelSet
trigger1 = BackEdgeDist <= 20
trigger1 = vel X < 0
x = 18.0

[State 3170, 移動速度]
type = VelSet
trigger1 = BackEdgeDist >= 20
trigger1 = vel X < 0
x = -18.0

[State 3170,]
type = turn
trigger1 = BackEdgeDist <= 20

;[State 3170, 移動速度]
;type = VelSet
;trigger1 = Anim = 3176
;trigger1 = BackEdgeDist <= 100
;x = 0.0

;[State 3170, ステート変更]
;type = ChangeState
;trigger1 = Anim = 3176
;trigger1 = BackEdgeDist <= 100
;value = 3171

;---------------------------------------------------------------------------
;うみねこボンバー・相手側2
[Statedef 3171]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 1

[State 3171, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3171,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
;うみねこボンバー・相手側3
[Statedef 3172]
type    = S
movetype= H
physics = S
velset = -6,0
poweradd = 0
sprpriority = 1

[State 3172, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3166, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3172,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3172, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3172, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Time = 0
value = 5002

[State 3172, 相手のアニメ変更]
type = ChangeAnim
trigger1 = anim = 5002
trigger1 = AnimTime = 0
value = 5007

;---------------------------------------------------------------------------
;うみねこボンバー・相手側4
[Statedef 3173]
type    = S
movetype= H
physics = S
velset = 0,0
poweradd = 0
sprpriority = 1

[State 3173, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3173, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3173, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Time = 0
value = 5001

[State 3173, 相手のアニメ変更]
type = ChangeAnim
trigger1 = anim = 5001
trigger1 = AnimTime = 0
value = 5006

;---------------------------------------------------------------------------
;うみねこボンバー・相手側5
[Statedef 3174]
type    = S
movetype= H
physics = S
velset = 0,0
poweradd = 0
sprpriority = 1

[State 3174, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3174, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3174, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Time = 0
value = 5002

[State 3174, 相手のアニメ変更]
type = ChangeAnim
trigger1 = SelfAnimExist(5300)
trigger1 = anim = 5002
trigger1 = AnimTime = 0
value = 5300

[State 3174, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = !SelfAnimExist(5300)
trigger1 = anim = 5002
trigger1 = AnimTime = 0
value = 3170

;---------------------------------------------------------------------------
;うみねこボンバー・相手側6
[Statedef 3175]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 2

[State 3175, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3175, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3169, 移動速度]
type = VelSet
trigger1 = time = 3
x = -5.0
y = -2.5

[State 3175, 相手のアニメ変更]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 3175, 相手のアニメ変更]
type = ChangeAnim
trigger1 = anim = 5030
trigger1 = AnimTime = 0
value = 5035

[State 3175, 相手のアニメ変更]
type = ChangeAnim
trigger1 = anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 3175,]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3175, 速度加算];重力
type = VelAdd
trigger1 = time >= 3
y = .4

[State 3175, 相手ステートに戻す]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
;ドリームキャンセル用相手ステート・上段
[Statedef 3180]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 3180, 相手のアニメ変更]
type = ChangeAnim
trigger1 = time < 25
value = 5007

[State 3180, 相手ステートに戻す]
type = SelfState
trigger1 = time = 30
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ドリームキャンセル用相手ステート・下段
[Statedef 3185]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 3185, 相手のアニメ変更]
type = ChangeAnim
trigger1 = time < 25
value = 5017

[State 3185, 相手ステートに戻す]
type = SelfState
trigger1 = time = 30
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
