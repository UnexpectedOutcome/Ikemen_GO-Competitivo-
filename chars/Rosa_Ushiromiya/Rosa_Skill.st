;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; 必殺技 管理ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ソードオフライフルA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1000]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 1000
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 1000, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1100, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(4) = 0
var(50)  = 0

[State 1000, 効果音];発砲
type     = PlaySnd
trigger1 = AnimElem = 4
value    = s50, 0

[State 1000, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1000, 0
channel  = 5

[State a, エフェクト]
Type     = Helper
Trigger1 = Animelem = 4
Name     = "Effect"
Stateno  = 11010
ID       = 11010
Pos      = 70, -80
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 50, 煙エフェクト]
type     = Helper
Trigger1 = Animelem = 4
ID       = 8042
postype  = p1
pos      = 70, -80
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[弾幕展開]

[State 1000]
Type     = Helper
Trigger1 = Animelem = 4
Name     = "sord off"
Stateno  = 11000
ID       = 11000
Pos      = 45, -97
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 1000]
type     = Velset
Trigger1 = Animelem = 4
X = -4


;-------------------------------------------------[終了]

[State 1000, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ソードオフライフルB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1010]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 1010
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 1010, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1010, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(4) = 1
var(50)  = 0

[State 1010, 効果音];発砲
type     = PlaySnd
trigger1 = AnimelemTime(4) = 1
value    = s50, 0

[State 1010, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1000, 1
channel  = 5

[State a, エフェクト]
Type     = Helper
Trigger1 = AnimelemTime(4) = 1
Name     = "Effect"
Stateno  = 11010
ID       = 11011
Pos      = 50, -80
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 50, 煙エフェクト]
type     = Helper
Trigger1 = Animelem = 4
ID       = 8042
postype  = p1
pos      = 50, -80
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[弾幕展開]

[State 1010]
Type     = Helper
Trigger1 = AnimelemTime(4) = 1
Name     = "sord off"
Stateno  = 11000
ID       = 11001
Pos      = 50, -70
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 1010]
type     = Velset
Trigger1 = Animelem = 4, = 1
X = -4


;-------------------------------------------------[終了]

[State 1010, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ソードオフライフルC
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1020]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 1020
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 1020, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1020, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(5) = 0
var(50)  = 0

[State 1020, 効果音];発砲
type     = PlaySnd
trigger1 = AnimElem = 5
value    = s50, 0

[State 1020, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1000, 2
channel  = 5

[State a, エフェクト]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "Effect"
Stateno  = 11010
ID       = 11012
Pos      = 11, -150
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 50, 煙エフェクト]
type     = Helper
Trigger1 = Animelem = 5
ID       = 8042
postype  = p1
pos      = 11, -150
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[弾幕展開]

[State 1020]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "sord off"
Stateno  = 11000
ID       = 11002
Pos      = 10, -120
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 1000]
type     = Velset
Trigger1 = Animelem = 5
X = -4


;-------------------------------------------------[終了]

[State 1020, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル / 弾丸
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11000]
type        = A
Physics     = N
Movetype    = A
Anim        = 11000 + (5*ishelper(11002))
SprPriority = 4

[State 10000, 速度]
type     = Velset
Trigger1 = ISHelper(11000)
Trigger1 = time > 0
X        = 50

[State 10000, 速度]
type     = Velset
Trigger1 = ISHelper(11001)
Trigger1 = time > 0
X        = 50 * cos(30*Pi/180)
Y        =-50 * Sin(30*Pi/180)

[State 10000, 速度]
type     = Velset
Trigger1 = ISHelper(11002)
Trigger1 = time > 0
X        = 50 * cos(90*Pi/180)
Y        =-50 * Sin(90*Pi/180)


;-------------------------------------------------[ヒット定義]

[State 10000, HitDef]
type                = HitDef
TriggerAll          = root,var(11) < 6   ;ダウン追い打ち回数
Trigger1            = ISHelper(11000)
trigger1            = Time > 0
attr                = S, SP
hitflag             = MAFD
guardflag           = MA
damage              = Floor(150*root,Fvar(5)), 20
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 0
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = -4, -10
guard.velocity      = -10
air.velocity        = -4, -10
airguard.velocity   = -5, -3
yaccel              = 0.48
fall                = 1
air.fall            = 1
fall.recoveer       = 0
fall.recovertime    = 9999;Ceil(45*(1+(0.5*root,var(7))))
getpower            = 100, 100
givepower           = Floor(150*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
Id = 1000

[State 10000, HitDef]
type                = HitDef
TriggerAll          = root,var(11) < 6   ;ダウン追い打ち回数
Trigger1            = ISHelper(11001)
attr                = S, SP
hitflag             = MAFD
guardflag           = MA
damage              = Floor(150*root,Fvar(5)), 20
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 0
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = -4, -9
guard.velocity      = -8
air.velocity        = -4, -9
airguard.velocity   = -5, -3
yaccel              = 0.48
fall                = 1
air.fall            = 1
fall.recoveer       = 0
fall.recovertime    = 9999;Ceil(45*(1+(0.5*root,var(7))))
getpower            = 100, 100
givepower           = Floor(150*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
Id = 1000

[State 10000, HitDef]
type                = HitDef
TriggerAll          = root,var(11) < 6   ;ダウン追い打ち回数
Trigger1            = ISHelper(11002)
attr                = S, SP
hitflag             = MAFD
guardflag           = MA
damage              = Floor(150*root,Fvar(5)), 20
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 0
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = -0.5, -9
guard.velocity      = -8
air.velocity        = -0.5, -9
airguard.velocity   = -3, -3
yaccel              = 0.45
fall                = 1
air.fall            = 1
fall.recoveer       = 0
fall.recovertime    = 9999;Ceil(45*(1+(0.5*root,var(7))))
getpower            = 100, 100
givepower           = Floor(150*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
Id = 1000

;=======================================[ヒット、ガードエフェクト]

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7015
ID       = 7000
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク2
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 11030
ID       = 11030
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a]
Type     = Helper
Trigger1 = Moveguarded = 1
Name     = "Guard"
Stateno  = 7105
ID       = 7100
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

[State a, 変数]  ;smash attck補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(2)        = 0.80

;-------------------------------------------------[カウンターヒット]

[State a, 変数]
type     = Varset
trigger1 = P2Movetype = A
var(7)   = 1

[State a, 攻撃力補正] 
type     = AttackMulSet 
trigger1 = 1
value    = 1.0+(0.33*(var(7)=1))

[State a, エフェクト]
Type     = Helper
Trigger1 = var(7) = 1
Trigger1 = MoveHit
trigger1 = enemynear,movetype = H
Name     = "counter-hit"
Stateno  = 8500
ID       = 8500
Pos      = 0, -50
PosType  = P2
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[ダウン追い打ち]

[State a];ダウン攻撃
type     = TargetState
trigger1 = Numtarget(1000) >= 1
Trigger1 = (MoveHit) && (root,var(10) = 1)
trigger1 = Target,Stateno != [8030,8031]
value    = 8030
ignorehitpause=1

;-------------------------------------------------[終了]


[State 11010]
Type     = DestroySelf
Trigger1 = MoveContact = 1
Trigger2 = time > 5


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル / マズルフラッシュ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11010]
Physics     = N
Anim        = 11010
SprPriority = 9

[State 11010, 変数]
Type     = VarAdd
Trigger1 = Time > 8
var(0)   = 25

[State 11010, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 256-var(0), 256

[State 11010]
type     = AngleSet
Trigger1 = Ishelper(11010)
value    = -90

[State 11010]
type     = AngleSet
Trigger1 = IsHelper(11011)
value    = -60

[State 11010]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75 ,0.75

[State 11010, Explod]
type     = null;Explod
trigger1 = !time && Ishelper(11010)
id       = 2
anim     = 11011
pos      = 0,0
postype  = p1
ownpal   = 1
bindtime = -1
supermove = 1
sprpriority = 9
scale    = 0.7, 0.7
ignorehitpause = 1
removeongethit = 1

[State a, エフェクト]
Type     = Helper
trigger1 = !time
Name     = "effect"
Stateno  = 11011
ID       = 0 + IsHelper(11011) + ((Ishelper(11012))*2)
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 11010]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 11010]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル / マズルフラッシュ2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11011]
Physics     = N
Anim        = 11012
SprPriority = 9

[State 11011]
type       = null
TriggerAll = !time
Trigger1   = Ishelper(0)
Trigger1   = 1 || var(0) := 0
Trigger2   = Ishelper(1)
Trigger2   = 1 || var(0) := 30
Trigger3   = Ishelper(2)
Trigger3   = 1 || var(0) := 90

[State 11011]
type     = AngleSet
Trigger1 = 1
value    = var(0)

[State 11011]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.5 ,0.5

[State 11011]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 11011]
type     = velset
trigger1 = 1
X = 15 * cos(var(0)*pi/180)
Y =-15 * Sin(var(0)*pi/180)

[State 11011]
type     = trans
Trigger1 = 1
trans    = Add

[State 11011]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル / ヒットガラス
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11030]
Physics     = N
Anim        = 11030
SprPriority = 9

[State 11030]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.5 ,1.5

[State 11030, フェードアウト処理] 
type      = PalFX 
trigger1  = time < 26
time      = 1 
add       = 0,0,0 
mul       = 256-time*8,256-time*8,256-time*8 
invertall = 0 
color     = 256 

[State 11030]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 11030]
type     = trans
Trigger1 = 1
trans    = Sub

[State 11030]
Type     = DestroySelf
Trigger1 = animTime =0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中 / ソードオフライフルJA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1050]
type     = A
movetype = A
physics  = A
ctrl     = 0
anim     = 1050
sprpriority = 2

[State 1050, 速度]
type     = Velset
Trigger1 = Animelem = 5
X = -3
Y = -5

;-------------------------------------------------[キャンセル補正]

[State 1050, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1150, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(5) = 0
var(50)  = 0

[State 1050, 効果音];発砲
type     = PlaySnd
trigger1 = AnimElem = 5
value    = s50, 0

[State 1050, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1000, 3
channel  = 5

[State a, エフェクト]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "Effect"
Stateno  = 11060
ID       = 11060
Pos      = 75, -102
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 50, 煙エフェクト]
type     = Helper
Trigger1 = Animelem = 5
ID       = 8042
postype  = p1
pos      = 75, -102
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[弾幕展開]

[State 1050]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "sord off"
Stateno  = 11050
ID       = 11050
Pos      = 10, -102
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 1150, 行動可能]
type     = CtrlSet
trigger1 = Animelem = 8
value    = 1

[State 1150, 着地終了]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (pos y >= 0)
Value    = 52
Ctrl     = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中 / ソードオフライフルJB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1060]
type     = A
movetype = A
physics  = A
ctrl     = 0
anim     = 1060
sprpriority = 2

[State 1060, 速度]
type     = Velset
Trigger1 = Animelem = 5
X = -3
Y = -5

;-------------------------------------------------[キャンセル補正]

[State 1060, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1160, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(5) = 0
var(50)  = 0

[State 1060, 効果音];発砲
type     = PlaySnd
trigger1 = AnimElem = 5
value    = s50, 0

[State 1060, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1000, 4
channel  = 5

[State a, エフェクト]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "Effect"
Stateno  = 11060
ID       = 11061
Pos      = 85, -80
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 50, 煙エフェクト]
type     = Helper
Trigger1 = Animelem = 5
ID       = 8042
postype  = p1
pos      = 85, -80
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[弾幕展開]

[State 1060]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "sord off"
Stateno  = 11050
ID       = 11051
Pos      = 12, -108
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 1060, 行動可能]
type     = CtrlSet
trigger1 = Animelem = 8
value    = 1

[State 1060, 着地終了]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (pos y >= 0)
Value    = 52
Ctrl     = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中 / ソードオフライフルJC
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1070]
type     = A
movetype = A
physics  = N
ctrl     = 0
anim     = 1070
sprpriority = 2

[State 1070, 速度]
type     = Velmul
Trigger1 = !time
X = 0.8

[State 1070, 速度]
type     = Velset
Trigger1 = !time
Y = -4

[State 1070, 速度]
type     = VelSet
Trigger1 = AnimelemTime(5) = 0
Y = -8

[State 1070]
type     = VelAdd
Trigger1 = 1
Y = 0.48

;-------------------------------------------------[キャンセル補正]

[State 1070, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1070, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(5) = 2
var(50)  = 0

[State 1070, 効果音];発砲
type     = PlaySnd
trigger1 = AnimelemTime(5) = 2
value    = s50, 0

[State 1070, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1000, 5
channel  = 5

[State a, エフェクト]
Type     = Helper
Trigger1 = AnimelemTime(5) = 2
Name     = "Effect"
Stateno  = 11060
ID       = 11062
Pos      = 2, -10
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 50, 煙エフェクト]
type     = Helper
Trigger1 = Animelem = 5
ID       = 8042
postype  = p1
pos      = 2, -10
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[弾幕展開]

[State 1070]
Type     = Helper
Trigger1 = AnimelemTime(5) = 2
Name     = "sord off"
Stateno  = 11050
ID       = 11052
Pos      = 2, -15
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 1070, 行動可能]
type     = CtrlSet
trigger1 = Animelem = 11
value    = 1

[State 1070, 着地終了]
Type     = ChangeState
Trigger1 = Animelemtime(5) > 2
Trigger1 = (Vel Y > 0) && (pos y >= 0)
Value    = 52
Ctrl     = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル(空中) / 弾丸
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11050]
type        = A
Physics     = N
Movetype    = A
Anim        = 11000
SprPriority = 4

[State 11050, 速度]
type     = Velset
Trigger1 = ISHelper(11050)
Trigger1 = time > 0
X        = 50

[State 11050, 速度]
type     = Velset
Trigger1 = ISHelper(11051)
Trigger1 = time > 0
X        = 50 * cos(-30*Pi/180)
Y        =-50 * Sin(-30*Pi/180)

[State 10050, 速度]
type     = Velset
Trigger1 = ISHelper(11052)
Trigger1 = time > 0
X        = 50 * cos(-90*Pi/180)
Y        =-50 * Sin(-90*Pi/180)


;-------------------------------------------------[ヒット定義]

[State 10050, HitDef]
type                = HitDef
TriggerAll          = root,var(11) < 6   ;ダウン追い打ち回数
Trigger1            = ISHelper(11050)
trigger1            = Time > 0
attr                = A, SP
hitflag             = MAFD
guardflag           = MA
damage              = Floor(150*root,Fvar(5)*(1.0+var(7)*0.33)), 20
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 0
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = -4, -10
guard.velocity      = -10
air.velocity        = -4, -10
airguard.velocity   = -5, -3
yaccel              = 0.48
fall                = 1
air.fall            = 1
fall.recoveer       = 0
fall.recovertime    = 9999;Ceil(45*(1+(0.5*root,var(7))))
getpower            = 100, 100
givepower           = Floor(150*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
id = 1050

[State 11050, HitDef]
type                = HitDef
TriggerAll          = root,var(11) < 6   ;ダウン追い打ち回数
Trigger1            = ISHelper(11051)
trigger1            = Time > 0
attr                = S, SP
hitflag             = MAFD
guardflag           = MA
damage              = Floor(150*root,Fvar(5)*(1.0+var(7)*0.33)), 20
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 0
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = -4, -9
guard.velocity      = -8
air.velocity        = -4, -9
airguard.velocity   = -5, -3
yaccel              = 0.48
fall                = 1
air.fall            = 1
fall.recoveer       = 0
fall.recovertime    = 9999;Ceil(45*(1+(0.5*root,var(7))))
getpower            = 100, 100
givepower           = Floor(150*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
id = 1050

[State 10000, HitDef]
type                = HitDef
TriggerAll          = root,var(11) < 6   ;ダウン追い打ち回数
Trigger1            = ISHelper(11052)
trigger1            = Time > 0
attr                = S, SP
hitflag             = MAFD
guardflag           = MA
damage              = Floor(150*root,Fvar(5)*(1.0+var(7)*0.33)), 20
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 0
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = 0, -8
guard.velocity      = -8
air.velocity        = 0, -8
airguard.velocity   = -3, -3
yaccel              = 0.48
fall                = 1
air.fall            = 1
fall.recoveer       = 0
fall.recovertime    = 9999;Ceil(45*(1+(0.5*root,var(7))))
getpower            = 100, 100
givepower           = Floor(150*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
id = 1050

;=======================================[ヒット、ガードエフェクト]

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7015
ID       = 7000
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク2
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 11030
ID       = 11030
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a]
Type     = Helper
Trigger1 = Moveguarded = 1
Name     = "Guard"
Stateno  = 7105
ID       = 7100
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80* (1-(root,var(10)*0.3))

[State a, 変数]  ;smash attck補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(2)        = 0.80

;-------------------------------------------------[カウンターヒット]

[State a, 変数]
type     = Varset
trigger1 = P2Movetype = A
var(7)   = 1

[State a, 攻撃力補正] 
type     = AttackMulSet 
trigger1 = 1
value    = 1.0+(0.33*(var(7)=1))

[State a, エフェクト]
Type     = Helper
Trigger1 = var(7) = 1
Trigger1 = MoveHit
trigger1 = enemynear,movetype = H
Name     = "counter-hit"
Stateno  = 8500
ID       = 8500
Pos      = 0, -50
PosType  = P2
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[ダウン追い打ち]

[State a];ダウン攻撃
type     = TargetState
trigger1 = Numtarget(1050) >= 1
Trigger1 = (MoveHit) && (root,var(10) = 1)
trigger1 = Target,Stateno != [8030,8031]
value    = 8030
ignorehitpause=1

;-------------------------------------------------[終了]

[State 11050]
Type     = DestroySelf
Trigger1 = MoveContact = 1
Trigger2 = time > 5


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル / マズルフラッシュ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11060]
Physics     = N
Anim        = 11010
SprPriority = 9

[State 11060, 変数]
Type     = VarAdd
Trigger1 = Time > 0
var(0)   = 25

[State 11060, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 256-var(0), 256

[State 11060]
type     = AngleSet
Trigger1 = Ishelper(11060)
value    = -90

[State 11060]
type     = AngleSet
Trigger1 = IsHelper(11061)
value    = -120

[State 11060]
type     = AngleSet
Trigger1 = IsHelper(11062)
value    = -180

[State 11060]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75 ,0.75

[State 11060, Explod]
type     = null;Explod
trigger1 = !time && Ishelper(11060)
id       = 2
anim     = 11011
pos      = 0,0
postype  = p1
ownpal   = 1
bindtime = -1
supermove = 1
sprpriority = 9
scale    = 0.7, 0.7
ignorehitpause = 1
removeongethit = 1

[State a, エフェクト]
Type     = Helper
trigger1 = !time
Name     = "effect"
Stateno  = 11061
ID       = 0 + IsHelper(11061) + ((Ishelper(11062))*2)
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 11060]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 11060]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = var(0) > 255


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ソードオフライフル / マズルフラッシュ2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11061]
Physics     = N
Anim        = 11012
SprPriority = 9

[State 11061]
type       = null
TriggerAll = !time
Trigger1   = Ishelper(0)
Trigger1   = 1 || var(0) := 0
Trigger2   = Ishelper(1)
Trigger2   = 1 || var(0) := -30
Trigger3   = Ishelper(2)
Trigger3   = 1 || var(0) := -90

[State 11061]
type     = AngleSet
Trigger1 = 1
value    = var(0)

[State 11061]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.5 ,0.5

[State 11061]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 11061]
type     = velset
trigger1 = 1
X = 15 * cos(var(0)*pi/180)
Y =-15 * Sin(var(0)*pi/180)

[State 11061]
type     = trans
Trigger1 = 1
trans    = Add

[State 11061]
Type     = DestroySelf
Trigger1 = animTime =0





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / リロード
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1100]
type     = S
movetype = A
physics  = N
ctrl     = 0
anim     = 1100
sprpriority = 2

[State 1100]
type     = Velset
Trigger1 = !time
X = 0

;-------------------------------------------------[キャンセル補正]

[State 1100, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1100, 効果音]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = s50, 1

[State 1100];排莢
Type     = Helper
Trigger1 = Animelem = 7
Name     = "sord off"
Stateno  = 11100
ID       = 11100
Pos      = 32, -100
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 1100, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1200, 0
channel  = 5

[State 1100, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(7) = 0
var(50)  = 1

;-------------------------------------------------[終了]

[State 1100, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中 / リロード
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1150]
type     = A
movetype = A
physics  = N
ctrl     = 0
anim     = 1150
sprpriority = 2

[State 1150]
type     = VelMul
trigger1 = !time
X = 0.5
Y = 0.2

[State 1150]
Type     = VelAdd
Trigger1 = !time
Y        = -5.5

[State 1150]
type     = velAdd
Trigger1 = Animelemtime(2) > 0
Y        = 0.45

;-------------------------------------------------[キャンセル補正]

[State 1150, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1150, 効果音]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = s50, 1

[State 1150];排莢
Type     = Helper
Trigger1 = Animelem = 3
Name     = "sord off"
Stateno  = 11100
ID       = 11100
Pos      = 23, -100
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 1150, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s1200, 1
channel  = 5

[State 1150, リロード判定]
type     = Varset
Trigger1 = AnimelemTime(3) = 0
var(50)  = 1

;-------------------------------------------------[終了]

[State 1150, 行動可能]
type     = CtrlSet
trigger1 = Animelem = 13
value    = 1

[State 1150, 着地終了]
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (pos y >= 0)
Value    = 52
Ctrl     = 0




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ローリングシープA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1200]
type     = S
movetype = A
physics  = N
ctrl     = 0
anim     = 1200
sprpriority = 2

[State 1200, 無敵]
Type     = NotHitBy
Trigger1 = time = [0, 8]
value    = SCA,AA,At,AP

;-------------------------------------------------[キャンセル補正]

[State 1200, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1200, 効果音]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = s40, 1

[State 1200, ボイス] ;ｺｯﾁﾖ
type     = PlaySnd
trigger1 = AnimElem = 2
Trigger1 = Random < 800
value    = s1300, 0
channel  = 5

[State 1200, 速度]
type     = Velset
Trigger1 = !time && Vel X > 0
X = 0

[State 1200, 速度]
type     = VelAdd
Trigger1 = !time
X = -3

[State 1200, 速度]
type     = VelMul
Trigger1 = AnimelemTime(9) >= 0
X = 0.82

[State 1200]
type     = Helper
trigger1 = Animelem = 2
ID       = 8107
postype  = p1
pos      = 0, 0
name     = "Dash-Efect3"
stateno  = 8107
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

[State 1200];エフェクト
Type     = Helper
Trigger1 = Animelem = 5
Name     = "rolling"
Stateno  = 11200
ID       = 11200
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 1200, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ローリングシープB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1210]
type     = S
movetype = A
physics  = N
ctrl     = 0
anim     = 1210
sprpriority = 2

[State 1210, 無敵]
Type     = NotHitBy
Trigger1 = time = [0, 10]
value    = SCA,AA,At,AP

;-------------------------------------------------[キャンセル補正]

[State 1210, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1210, 効果音]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = s40, 1

[State 1210, ボイス] ;ﾅﾒﾅｲﾃﾞ
type     = PlaySnd
trigger1 = AnimElem = 2
Trigger1 = Random < 800
value    = s1300, 1
channel  = 5

[State 1210, 速度]
type     = Velset
Trigger1 = !time && Vel X > 0
X = 0

[State 1210, 速度]
type     = VelAdd
Trigger1 = !time
X = -3.5

[State 1210, 速度]
type     = VelMul
Trigger1 = AnimelemTime(9) >= 0
X = 0.82

[State 1200]
type     = Helper
trigger1 = Animelem = 2
ID       = 8107
postype  = p1
pos      = 0, 0
name     = "Dash-Efect3"
stateno  = 8107
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

[State 1210];エフェクト
Type     = Helper
Trigger1 = Animelem = 5
Name     = "rolling"
Stateno  = 11200
ID       = 11200
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 1210, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ローリングシープC
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 1220]
type     = S
movetype = A
physics  = N
ctrl     = 0
anim     = 1220
sprpriority = 2

[State 1220, 無敵]
Type     = NotHitBy
Trigger1 = time = [0, 12]
value    = SCA,AA,At,AP

;-------------------------------------------------[キャンセル補正]

[State 1220, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[演出]

[State 1220, 効果音]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = s40, 1

[State 1220, ボイス] ;ﾁｮｳｼﾆﾉﾗﾅｲﾃﾞ
type     = PlaySnd
trigger1 = AnimElem = 2
Trigger1 = Random < 800
value    = s1300, 2
channel  = 5

[State 1220, 速度]
type     = Velset
Trigger1 = !time && Vel X > 0
X = 0

[State 1220, 速度]
type     = VelAdd
Trigger1 = !time
X = -4.5

[State 1220, 速度]
type     = VelMul
Trigger1 = AnimelemTime(9) >= 0
X = 0.82

[State 1200]
type     = Helper
trigger1 = Animelem = 2
ID       = 8107
postype  = p1
pos      = 0, 0
name     = "Dash-Efect3"
stateno  = 8107
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

[State 1220];エフェクト
Type     = Helper
Trigger1 = Animelem = 5
Name     = "rolling"
Stateno  = 11200
ID       = 11200
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 1220, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[エフェクト] ローリングシープ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11200]
Physics     = N
Anim        = 11200
SprPriority = 9

[State 8700]
type     = bindtoroot
trigger1 = !time
Pos      = 0, 0

[State 11200]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State a]
type = varset
trigger1 = Time = 5
var(0) = 25

[State a]
type = varset
trigger1 = Time = 6
var(0) = 50

[State 11200]
Type     = AngleDraw
Trigger1 = 1
value    = var(0)
Scale    = 1.5 ,1.5

[State 11200]
type     = trans
Trigger1 = 1
trans    = Addalpha
alpha    = var(2), 256

[State a]
type = varset
trigger1 = Time = 0
var(2) = 25

[State a]
type = varset
trigger1 = Time = 1
var(2) = 50

[State a]
type = varset
trigger1 = Time = 2
var(2) = 125

[State a]
type = varAdd
trigger1 = Time >= 7
var(2) = -40

[State a]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = root,Stateno != [1200, 1220]