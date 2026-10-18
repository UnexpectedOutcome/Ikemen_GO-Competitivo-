;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; パートナー技 管理ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / れみりあ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 800]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 800
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 800, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[タッチゲージ消費]

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(10)       = 0

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(12)       = 1

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(45)        = 45

;-------------------------------------------------[演出]

[State 800, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s900, 22
channel  = 5

;-------------------------------------------------[パートナー展開]

[State 800]
Type     = Helper
Trigger1 = Animelem = 7
Name     = "Remilia_y"
Stateno  = 20200
ID       = 20000
Pos      = -200, -100
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
;SuperMoveTime = 99999
;PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 800, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / れみりあ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 810]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 810
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 810, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[タッチゲージ消費]

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(10)       = 0

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(12)       = 2

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(45)        = 60

;-------------------------------------------------[演出]

[State 810, ボイス];来なさい！
type     = PlaySnd
trigger1 = !time
value    = s400, 0
channel  = 5

;-------------------------------------------------[パートナー展開]

[State 810]
Type     = Helper
Trigger1 = Animelem = 2
Name     = "Remilia_y"
Stateno  = 20300
ID       = 20000
Pos      = -200, -60
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
;SuperMoveTime = 99999
;PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 810, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / れみりあ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 830]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 830
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 830, 変数]  ;Chain spell補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,1900]
Persistent     = 0
IgnoreHitPause = 1
fvar(4)        = 0.925

;-------------------------------------------------[タッチゲージ消費]

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(10)       = 0

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(12)       = 4

[State a, 変数]
Type           = VarSet
Trigger1       = 1
Persistent     = 0
IgnoreHitPause = 1
var(45)        = 45

;-------------------------------------------------[演出]

[State 830, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s900, 0
channel  = 5

;-------------------------------------------------[パートナー展開]

[State 830]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "Remilia_y"
Stateno  = 20500
ID       = 20000
Pos      = -200, -100
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
;SuperMoveTime = 99999
;PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[エフェクト]

[State 830, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 0
ctrl     = 1




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / レミリア
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 850]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 800
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 850, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[タッチゲージ消費]

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(13)       = 0

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(15)       = 1

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(46)        = 45

;-------------------------------------------------[演出]

[State 850, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s900, 23
channel  = 5

;-------------------------------------------------[パートナー展開]

[State 850]
Type     = Helper
Trigger1 = Animelem = 7
Name     = "Remilia"
Stateno  = 30200
ID       = 30000
Pos      = 20, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
;SuperMoveTime = 99999
;PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 850, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / レミリア
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 860]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 810
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 860, 変数]  ;Chain Arts補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,800]
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = 0.85

;-------------------------------------------------[タッチゲージ消費]

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(13)       = 0

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(15)       = 2

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(46)        = 60

;-------------------------------------------------[演出]

[State 860, ボイス];来なさい！
type     = PlaySnd
trigger1 = !time
value    = s200, 7
channel  = 5

;-------------------------------------------------[パートナー展開]

[State 860]
Type     = Helper
Trigger1 = Animelem = 2
Name     = "Remilia"
Stateno  = 30300
ID       = 30000
Pos      = -20, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
;SuperMoveTime = 99999
;PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 860, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / レミリア
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 880]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 830
sprpriority = 2

;-------------------------------------------------[キャンセル補正]

[State 880, 変数]  ;Chain spell補正
Type           = VarSet
Trigger1       = !time
Trigger1       = PrevStateNo = [200,1900]
Persistent     = 0
IgnoreHitPause = 1
fvar(4)        = 0.925

;-------------------------------------------------[タッチゲージ消費]

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(13)       = 0

[State a, 変数]
Type           = VarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
fvar(15)       = 4

[State a, 変数]
Type           = VarSet
Trigger1       = 1
Persistent     = 0
IgnoreHitPause = 1
var(46)        = 45

;-------------------------------------------------[演出]

[State 880, ボイス]
type     = PlaySnd
trigger1 = !time
value    = s900, 1
channel  = 5

;-------------------------------------------------[パートナー展開]

[State 880]
Type     = Helper
Trigger1 = Animelem = 7
Name     = "Remilia_y"
Stateno  = 30500
ID       = 30000
Pos      = -25, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 880];アサルトタッチデコイ
Type     = Helper
Trigger1 = Animelem = 10
Name     = "Rosa"
Stateno  = 10830
ID       = 10830
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 880, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 0
ctrl     = 1







;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; タッチ / れみりあ / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20200]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20200
sprpriority = 4

[State 20200, 速度]
type     = Velset
trigger1 = 1
X = (parentdist X + 40) / 8
Y = 6

[State 20200, 重力加速]
type     = Gravity
trigger1 = 1

[State 20200, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 2

;--------------------------------[相殺判定]

[State 20200, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25010
IgnoreHitPause = 1

[State 20020, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20200, ステート変更];ノーマルタッチ
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 20210


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / れみりあ - チェーンギャング / 着地
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20210]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 20210
sprpriority = 4

[State 20210, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 20210, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 20210, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S40, 4

;--------------------------------[相殺判定]

[State 20210, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25000
IgnoreHitPause = 1

[State 20210, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20210, ステート変更]
Type     = ChangeState
Trigger1 = !animtime
Value    = 20220


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / れみりあ - チェーンギャング / 攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20220]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 20220
sprpriority = 4

[State 20220, 座標]
type     = PosAdd
trigger1 = Animelem = 3
X = 20

[State 20220, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S2, 5

;--------------------------------[相殺判定]

[State 20220, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25000
IgnoreHitPause = 1

[State 20220, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 20200, HitDef]
type                = HitDef
trigger1            = Animelem = 3
attr                = S, SA
hitflag             = MAF
guardflag           = MA
damage              = Floor(70*root,Fvar(5)*(1.0+var(7)*0.33)), 10
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 1, 14
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 3
guardsound          = s1, 1
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = 5
guard.velocity      = 4
air.velocity        = 5, -4
airguard.velocity   = -4, -3
yaccel              = 0.48
air.fall            = 0
fall.recover        = 0 + ifelse(root,var(19)=1,0,1)
fall.recovertime    = 30
getpower            = 50, 50
givepower           = Floor(70*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
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
fvar(0)        = Root,FVar(0) * 0.92

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

;-------------------------------------------------[終了]

[State 20220, 緊急退避]
type     = null;ChangeState
trigger1 = root,StateNo = 2600  ;真理亞の込めた弾丸
;trigger2 = root,StateNo = [2200,2210] ;ゴートハンティング
value    = 20900
ctrl     = 0

[State 20220];勝利ポーズAへ
Type     = ChangeState
Trigger1 = Animtime = 0
Trigger1 = RoundState = 3
value    = 20190

[State 20220];通常終了
Type     = ChangeState
Trigger1 = Animtime = 0
value    = 20225


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / れみりあ - チェーンギャング / 終了
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 20225]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 20021
sprpriority = 2

[State 20310, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 20310, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 20225, 速度]
type     = Velset
Trigger1 = 1
X = -2.5

;--------------------------------[相殺判定]

[State 20225, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25000
IgnoreHitPause = 1

[State 20225, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[終了]

[State 20225, ステート変更];勝利ポーズへ
Type     = ChangeState
Trigger1 = (RoundState = 3) || (RoundState = 4)
Trigger1 = Animelem = 1
trigger1 = (PrevStateNo != 20190) && (PrevStateNo = 20220)
Value    = 20190

[State 20225, ステート変更];勝利ポーズへ
Type     = ChangeState
Trigger1 = (RoundState = 3) || (RoundState = 4)
Trigger1 = Animelem = 1
trigger1 = (PrevStateNo != 20191) && (PrevStateNo = 20321)
Value    = 20191

[State 20225, ヘルパー消滅]
Type     = DestroySelf
Trigger1 = backedgedist <= -50



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / れみりあ / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20300]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20200
sprpriority = 4

[State 20300, 速度]
type     = Velset
trigger1 = 1
X = (parentdist X + 72) / 8
Y = 6

[State 20300, 重力加速]
type     = Gravity
trigger1 = 1

[State 20300, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 5

;--------------------------------[相殺判定]

[State 20300, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20300, ステート変更];ノーマルタッチ
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 20310


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / れみりあ / 着地
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20310]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 20210
sprpriority = 4

[State 20310, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 20310, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 20310, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S40, 4

;--------------------------------[相殺判定]

[State 20310, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25000
IgnoreHitPause = 1

[State 20310, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20310, ステート変更]
Type     = ChangeState
Trigger1 = Time = 1
Value    = 20320


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / れみりあ - れみりゃブレード / 攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20320]
type     = A
movetype = A
physics  = N
ctrl     = 0
anim     = 20300
sprpriority = 4

[state 20320, statetypeset]
type      = StateTypeSet
trigger1  = animelem = 2
statetype = A

[State 20320, 速度]
type     = Velset
trigger1 = Animelem = 2
X = 12
Y = -2

[State 20320]
type     = Veladd
trigger1 = AnimElemTime(2) >= 0
Y        = 1

;-------------------------------------[演出]

[State 20320, 効果音]
type     = PlaySnd
trigger1 = Animelem = 2
value    = s40, 2

;--------------------------------[相殺判定]

[State 20320, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25010
IgnoreHitPause = 1

[State 20320, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[攻撃へ]

[State 20320, ステート変更]
type     = ChangeState
trigger1 = AnimElemTime(3) >= 0
trigger1 = Pos Y >= 0
trigger1 = Vel Y >0
value    = 20321


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / れみりあ - れみりゃブレード / 攻撃～終了
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20321]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 20310
sprpriority = 4

[State 20321, 座標]
type     = VelSet
trigger1 = !time
X = 0
Y = 0

[State 20321, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 20321, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S2, 3

[State 20321, 効果音];カノンブレード
Type     = PlaySnd
Trigger1 = !time
value    = S60, 4

[State 20321]
type     = Explod
trigger1 = animelem = 2
anim     = 20350
postype  = p1
sprpriority = 2
pos     = 0, 0
bindtime = -1
ownpal = 1
removeongethit = 1

;--------------------------------[相殺判定]

[State 20321, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25000
IgnoreHitPause = 1

[State 20321, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 20321, HitDef]
type                = HitDef
trigger1            = Animelem = 2
attr                = S, SA
hitflag             = MAF
guardflag           = HA
damage              = Floor(70*root,Fvar(5)*(1.0+var(7)*0.33)), 15
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 0, 14
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 4
guardsound          = s1, 2
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = -1, -8
guard.velocity      = -6
air.velocity        = -1, -8
airguard.velocity   = -4, -3
yaccel              = 0.48
guard.kill          = 0
fall                = 1
air.fall            = 1
fall.recover        = 0 + ifelse(root,var(19)=1,0,1)
fall.recovertime    = 40
getpower            = 70, 70
givepower           = Floor(70*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
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

[State a, 変数]  ;Rift Attck補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = 0.8

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

;-------------------------------------------------[終了]

[State 20320, 緊急退避]
type     = null;ChangeState
trigger1 = root,StateNo = 2600  ;真理亞の込めた弾丸
;trigger2 = root,StateNo = [2200,2210] ;ゴートハンティング
value    = 20900
ctrl     = 0

[State 20320];勝利ポーズBへ
Type     = ChangeState
Trigger1 = Animtime = 0
Trigger1 = RoundState = 3
value    = 20191

[State 20320];通常終了
Type     = ChangeState
Trigger1 = Animtime = 0
value    = 20225



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / れみりあ / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20400]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20200
sprpriority = 4

[State 20400, 速度]
type     = Velset
trigger1 = 1
X = ((parentdist X+40) + 40) / 8
Y = 6

[State 20400, 重力加速]
type     = Gravity
trigger1 = 1

[State 20400, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 2

[State 20400]
Type     = Helper
Trigger1 = !time
Name     = "GuardChancel"
Stateno  = 8700
ID       = 8700
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;--------------------------------[本体-各種処理]

[State 20400, 変数]
type     = ParentVarSet
Trigger1 = !time
fvar(10) = 0

[State 20400, 変数]
type     = ParentVarSet
Trigger1 = !time
fvar(12) = 3

[State 20400, 変数]
type     = PowerAdd
Trigger1 = !time
value    = -1000

[State a, 変数]
Type           = ParentVarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(45)        = 60

;--------------------------------[相殺判定]

[State 20400, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AT,AP
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20400, ステート変更];ガード
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 20410


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / れみりあ / 着地
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20410]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 20210
sprpriority = 4

[State 20410, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 20410, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 20410, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S40, 4

;--------------------------------[相殺判定]

[State 20410, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20410, ステート変更]
Type     = ChangeState
Trigger1 = Animtime = 0
Value    = 20420


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / れみりあ - ゆっくりクレイドル / 攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20420]
type     = A
movetype = A
physics  = N
ctrl     = 0
anim     = 20400
sprpriority = 4

[state 20420, statetypeset]
type      = StateTypeSet
trigger1  = animelem = 4
statetype = A

[State 20420, 速度]
type     = Velset
trigger1 = Animelem = 4
X = 3.0
Y = -3.8

[State 20420]
type     = Velset
trigger1 = AnimElem = 20
X        = 0

[State 20420]
type     = Veladd
trigger1 = AnimElemTime(20) >= 0
Y        = 0.48

;-------------------------------------[演出]

[State 20420, 効果音]
type     = PlaySnd
trigger1 = Animelem = 2
value    = s40, 5

;--------------------------------[相殺判定]

[State 20420, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25010
IgnoreHitPause = 1

[State 20420, 出掛かり無敵]
type     = Nothitby
trigger1 = Time < 10
value    = SCA, AA, AP, AT
time     = 1
IgnoreHitPause = 1

[State 20420, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 20420, HitDef]
type                = HitDef
trigger1            = Animelem = 4
trigger2            = Animelem = 10
attr                = A, SA
hitflag             = MAF
guardflag           = M
damage              = Floor(20*root,Fvar(5)*(1.0+var(7)*0.33)), 5
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 6, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 3
guardsound          = s1, 0
ground.slidetime    = 11
ground.hittime      = 14
air.hittime         = 14
guard.slidetime     = 12
guard.hittime       = 12
ground.velocity     = -1, -6
guard.velocity      = -8
air.velocity        = -1, -6
airguard.velocity   = -4, -3
yaccel              = 0.45
guard.kill          = 0
fall                = 1
air.fall            = 1
fallrecover         = 0
fall.recovertime    = 9999
getpower            = 0, 0
givepower           = Floor(30*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

[State 20410, HitDef]
type                = HitDef
trigger1            = Animelem = 16
attr                = A, SA
hitflag             = MAF
guardflag           = M
damage              = Floor(25*root,Fvar(5)*(1.0+var(7)*0.33)), 5
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 6, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 3
guardsound          = s1, 0
ground.slidetime    = 11
ground.hittime      = 14
air.hittime         = 14
guard.slidetime     = 12
guard.hittime       = 12
ground.velocity     = -1, -6
guard.velocity      = -8
air.velocity        = -1, -6
airguard.velocity   = -4, -3
yaccel              = 0.45
guard.kill          = 0
fall                = 1
air.fall            = 1
Kill                = 0
fall.recovertime    = Ceil(45*(1+(0.5*root,var(7))))
getpower            = 0, 0
givepower           = Floor(45*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Trigger1 = Animelemtime(4) = [0,6]
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Trigger1 = Animelemtime(10) = [0,6]
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Trigger1 = Animelemtime(16) = [0,6]
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a]
Type     = Helper
Trigger1 = Moveguarded = 1
Trigger1 = Animelemtime(4) = [0,6]
Name     = "Guard"
Stateno  = 7105
ID       = 7100
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a]
Type     = Helper
Trigger1 = Moveguarded = 1
Trigger1 = Animelemtime(10) = [0,6]
Name     = "Guard"
Stateno  = 7105
ID       = 7100
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a]
Type     = Helper
Trigger1 = Moveguarded = 1
Trigger1 = Animelemtime(16) = [0,6]
Name     = "Guard"
Stateno  = 7105
ID       = 7100
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0



;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Trigger1       = Animelemtime(4) = [0,6]
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Trigger1       = Animelemtime(10) = [0,6]
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Trigger1       = Animelemtime(16) = [0,6]
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

[State a, 変数]  ;Rift Attck補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = 0.8

;--------------------------------[攻撃へ]

[State 20420, ステート変更]
type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value    = 20225



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / れみりあ / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20500]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20200
sprpriority = 4

[State 20500, 速度]
type     = Velset
trigger1 = 1
X = (parentdist X + 120) / 8
Y = 6

[State 20500, 重力加速]
type     = Gravity
trigger1 = 1

;--------------------------------[相殺判定]

[State 20500, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 20500, ステート変更];ノーマルタッチ
Type     = ChangeState
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
Value    = 20510


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / れみりあ / 暗転
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20510]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 20500
sprpriority = 2

[State 20510, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 20510, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 20510, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S40, 4

;--------------------------------[相殺判定]

[State 20510, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;-----------------------------------------------------[ゲージ管理]

[State 20510, ゲージ減少]
Type           = PowerAdd
Trigger1       = Animelemtime(2) = 0
Persistent     = 0
IgnoreHitPause = 1
Value          = -1000

[State a, 背景用]
type     = VarSet
Trigger1 = !time
var(1)   = 0

[State a, 背景用]
type     = VarAdd
Trigger1 = Animelemtime(2) = [1, 10]
var(1)   = 10

[State a];背景色
type      = BGPalFX
trigger1  = Animelemtime(2) > 0
time      = 1
mul       = 255-var(1),255-var(1),255-var(1)
invertall = 0

[State a, 暗転処理]
type     = null;SuperPause
trigger1 = Animelemtime(2) = 0
anim     = -1
sound    = -1
darken   = 0
time     = 40
movetime = 40
P2DefMul = 1

;-----------------------------------------------------[エフェクト]

[State a, エフェクト] ;スペル発動エフェクト
Type     = Helper
Trigger1 = AnimelemTime(2) = 0
OwnPal   = 1
PosType  = P1
Pos      = 0, -30
ID       = 8800
StateNo  = 8800
Name     = "Spell-time"
Persistent= 0
size.xscale   = 0.5
size.yscale   = 0.5
ownpal   = 1
PauseMoveTime = 999999
SuperMoveTime = 999999

[State a, 効果音]; 暗転音
type     = playsnd
trigger1 = Animelemtime(2) = 0
value    = s60, 2

;-----------------------------------------------------[終了]

[State 2510, ChangeState]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 20520

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / れみりあ / 上昇
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20520]
type     = A
movetype = A
physics  = N
ctrl     = 0
anim     = 20501
sprpriority = 4

[State 20520, 速度]
type     = Velset
trigger1 = !time
Y = -4

[State 20520, 速度]
type     = Velset
trigger1 = Time = 40
Y = 0

[State a, エフェクト] ;不夜城レッド
Type     = Helper
Trigger1 = AnimelemTime(4) = 0
OwnPal   = 1
PosType  = P1
Pos      = 0, 0
ID       = 20550
StateNo  = 20550
Name     = "NoNight"
Persistent= 0
size.xscale   = 1.5
size.yscale   = 1.5
ownpal   = 1
PauseMoveTime = 999999
SuperMoveTime = 999999

[State a, エフェクト] ;不夜城レッド(攻撃判定)
Type     = Helper
Trigger1 = AnimelemTime(4) = 0
OwnPal   = 1
PosType  = P1
Pos      = 0, 0
ID       = 20560
StateNo  = 20560
Name     = "NoNight"
Persistent= 0
size.xscale   = 1
size.yscale   = 1
ownpal   = 1
PauseMoveTime = 999999
SuperMoveTime = 999999

;--------------------------------[補正中継]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
trigger1       = fvar(0) > 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.93

[State a, 変数]  ;rift attck補正
Type           = ParentVarSet
Trigger1       = fvar(0) > 0
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = 0.80

[State a]
type = varadd
trigger1 = fvar(0) > 0
fvar(0) = -1

;--------------------------------[相殺判定]

[State 20520, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25010
IgnoreHitPause = 1

[State 20520,NotHitBy]
type     = NotHitBy
trigger1 = Time < 40
value    = SCA,AA,At,AP
time     = 1
IgnoreHitPause = 1

[State 20020, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;-----------------------------------------------------[終了]

[State 20520, ChangeState]
type     = ChangeState
trigger1 = Time = 90
value    = 20530


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / れみりあ / 落下
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20530]
type     = A
movetype = A
physics  = N
ctrl     = 0
sprpriority = 4

[State 20530]
type     = VelAdd
Trigger1 = 1
Y = 0.22

[State 20530, 変数];終了フラグ
Type           = ParentVarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(3)         = 1

;--------------------------------[相殺判定]

[State 20530, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25010
IgnoreHitPause = 1

[State 20530, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------

[State 20530, ChangeState]
type     = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value    = 20540


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / れみりあ / 着地
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20540]
type     = S
movetype = I
physics  = S
ctrl     = 0
Anim     = 20502
sprpriority = 4

[State 20540]
type     = Velset
Trigger1 = 1
Y        = 0

;--------------------------------[相殺判定]

[State 20540, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 25000
IgnoreHitPause = 1

[State 20540, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[終了]

[State 20540, ステート変更]
Type     = ChangeState
Trigger1 = Animtime = 0
Value    = 20225


;━━━━━━━━━━━━━━━━━━━━━
;[helper] 不夜城レッド
;━━━━━━━━━━━━━━━━━━━━━
[statedef 20550]
Physics     = N
Anim        = 20505
SprPriority = -1

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State a]
Type     = trans
Trigger1 = 1
trans    = Add

[State 20550, 座標]
type     = PosSet
trigger1 = 1
Y        = 0
ignorehitpause = 1

[State 20550, 効果音]
type     = PlaySnd
trigger1 = time = 0
value    = S70, 4

[State 20550, ChangeState]
type     = ChangeState
trigger1 = Parent,Stateno != 20520
value    = 20551

;━━━━━━━━━━━━━━━━━━━━━
;[helper] 不夜城レッド / 終わり
;━━━━━━━━━━━━━━━━━━━━━
[statedef 20551]
Physics     = N
Anim        = 20506
SprPriority = -1

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State a]
Type     = trans
Trigger1 = 1
trans    = Add

[State 20550, 座標]
type     = PosSet
trigger1 = 1
Y        = 0
ignorehitpause = 1

[State 20550, ChangeState]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━
;[helper] 不夜城レッド / 攻撃判定
;━━━━━━━━━━━━━━━━━━━━━
[statedef 20560]
Physics     = N
Movetype    = A
Anim        = 20507
SprPriority = -1

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State 20560, 座標]
type     = PosSet
trigger1 = 1
Y        = 0
ignorehitpause = 1

;-------------------------------------------------[ヒット定義]

[State 20560, HitDef]
type                = HitDef
trigger1            = ANimelemTime(2) >= 0
attr                = S, HP
hitflag             = MAF
guardflag           = MA
damage              = Floor(25*root,Fvar(5)*(1.0+var(7)*0.33)), 10
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 0, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 1
guardsound          = s1, 1
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = 0, -6
guard.velocity      = -6
air.velocity        = 0, -6
airguard.velocity   = -3, -3
yaccel              = 0.47
fall                = 1
air.fall            = 1
ID                  = 22500
fall.recovertime    = Ceil(60*(1+(0.5*root,var(7))))
getpower            = 0, 0
givepower           = Floor(20*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0
Persistent          = 7

;-------------------------------------------------[ヒットエフェクト]

[State 20560, Explod]
type     = Explod
trigger1 = MoveHit 
trigger1 = NumTarget > 0
trigger1 = Target,IsHelper = 0
anim     = 20508
ID       = 20508
pos      = 0,-45
postype  = p2 
facing   = 1-(random>=500)*2
vfacing  = 1-(random>=500)*2
bindtime = 1
vel      = 0, 0
random   = 10,10
removetime = -2
scale    = 1,1
ownpal   = 1
sprpriority = 3
supermove = 99999
pausemove = 99999
removeongethit = 0
ignorehitpause = 1
persistent = 10

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarAdd
trigger1       = MoveHit = 1
trigger1       = NumTarget > 0
trigger1       = Target,IsHelper = 0
Persistent     = 7
IgnoreHitPause = 1
fvar(0)        = 1

[State 20560, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 20560, ChangeState]
type     = ChangeState
trigger1 = Parent,Stateno != 20520
value    = 20561


;━━━━━━━━━━━━━━━━━━━━━
;[helper] 不夜城レッド / 終わり
;━━━━━━━━━━━━━━━━━━━━━
[statedef 20561]
Physics     = N
Anim        = 9999
SprPriority = -1

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State 20560, 座標]
type     = PosSet
trigger1 = 1
Y        = 0
ignorehitpause = 1

[State 20550, ChangeState]
type     = DestroySelf
trigger1 = time = 20







;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; れみりあ / 地上やられ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 25000]
type     = S
movetype = H
physics  = S
ctrl     = 0
anim     = 25000
sprpriority = 2

[State 25000, 無敵]
type     = NotHitBy
Trigger1 = 1
value    = SCA,AA,AT,AP
IgnoreHitPause = 1

[State 25000, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 0

[State 25000, 変数] ;負傷
Type      = parentVarSet
Trigger1  = !time
fvar(12)  = 10
IgnoreHitPause = 1

[State 25000, 変数];アサルトタッチ終了フラグ
Type           = ParentVarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(3)         = 1

;------------------------------------------[速度処理]

[State 25000, HitVelSet]
Type     = HitVelSet
Trigger1 = Time = 0
X        = 1

[State 25000, ステート変更]
Type     = ChangeState
Trigger1 = HitShakeOver
Trigger2 = Animtime = 0
Value    = 20225


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; れみりあ / 空中やられ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 25010]
type     = A
movetype = H
physics  = A
ctrl     = 0
anim     = 25010
sprpriority = 2

[State 25010, 無敵]
type     = NotHitBy
Trigger1 = 1
value    = SCA,AA,AT,AP
IgnoreHitPause = 1

[State 25010, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 4

[State 25000, 変数] ;負傷
Type      = parentVarSet
Trigger1  = !time
fvar(12)  = 10
IgnoreHitPause = 1

[State 20530, 変数];アサルトタッチ終了フラグ
Type           = ParentVarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(3)         = 1

;------------------------------------------[速度処理]

[State 25010, HitVelSet]
Type     = HitVelSet
Trigger1 = Time = 0
X        = 1
Y        = 1

[State 25010, 速度]  ;Y加速度
Type     = VelAdd
Trigger1 = 1
Y        = Ifelse(GetHitVar(YAccel)!=0 , GetHitVar(YAccel), 0.42)

;------------------------------------------[ステート変更]

[State 25010, ステート復帰]  ;バウンドへ
Type     = ChangeState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= -10
Value    = 25020

[State 25010, ステート変更]  ;異常時
Type       = DestroySelf
Trigger1   = Time > 300


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	れみりあ / 床に激突
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 25020]
Type     = A
MoveType = H
Physics  = N
Anim     = 25020

[State 25020, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S40, 3

[State a, 無敵]
type     = NotHitBy
trigger1 = 1
value    = SCA, AA, AT, AP
time     = 1
IgnoreHitPause = 1

[State 25020, 速度]
Type     = VelSet
Trigger1 = !Time
Y        = 0
X        = 0

[State 25020, 速度]
Type     = PosSet
Trigger1 = !Time
Y        = 0

[State 25020, 画面振動]
type     = EnvShake
trigger1 = !time
time     = 10
ampl     = -6
freq     = 70
phase    = 70

[State 25020, ステート変更];もう帰る
type     = ChangeState
trigger1 = Animtime = 0
value    = 20225



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	れみりあ / 勝利ポーズA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 20190]
type     = S
movetype = I
physics  = S
anim     = 20190
sprpriority = 2

[State 20190, スクロール]
type     = ScreenBound
trigger1 = 1
value    = 1        
MoveCamera = 0,0 

[State 20190, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
IgnoreHitPause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	れみりあ / 勝利ポーズB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 20191]
type     = S
movetype = I
physics  = S
anim     = 20191
sprpriority = 2

[State 20191, スクロール]
type     = ScreenBound
trigger1 = 1
value    = 1        
MoveCamera = 0,0 

[State 20191, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
IgnoreHitPause = 1








;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / レミリア / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30200]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 30200
sprpriority = 4

[State 30200, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S70, 2

;--------------------------------[相殺判定]

[State 30200, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 30200, ステート変更];アタックタッチ
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 30210


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / レミリア - ヴァンパイアクロウ / 攻撃-1
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30210]
type     = S
movetype = A
physics  = S
ctrl     = 0
velset   = 0, 0
anim     = 30220
sprpriority = 4

[State 30210, 速度]
type     = Velset
trigger1 = Animelem = 5
X = 5

[State 30210]
type     = Velmul
trigger1 = Vel X > 0
X = 0.95

;-------------------------------------[演出]

[State 30210, 効果音]
type     = PlaySnd
trigger1 = Animelem = 6
value    = s70, 1

[State 30200, ボイス]
Type     = PlaySnd
Trigger1 = Animelem = 3
value    = S4000, 6

[State 30210]
type     = Explod
trigger1 = animelem = 6
anim     = 30225
postype  = p1
sprpriority = 6
pos     = 25, 40
scale   = 1.5,1.5
;SuperMoveTime = 99999
;PauseMoveTime = 99999
bindtime = -1
ownpal = 1
removeongethit = 1

;--------------------------------[相殺判定]

[State 30210, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35000
IgnoreHitPause = 1

[State 30210, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 30210, HitDef]
type                = HitDef
trigger1            = Animelem = 7
attr                = A, SA
hitflag             = MAF
guardflag           = MA
damage              = Floor(40*root,Fvar(5)*(1.0+var(7)*0.33)), 8
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 4, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 4
guardsound          = s1, 1
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = -6
guard.velocity      = -7
air.velocity        = -3, -3
airguard.velocity   = -4, -3
yaccel              = 0.48
guard.kill          = 0
air.fall            = 0
fall.recover        = 0 + ifelse(var(19)=1,0,1)
fall.recovertime    = 25
Kill                = 1
getpower            = 0, 0
givepower           = Floor(40*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.92

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

;--------------------------------[攻撃へ]

[State 30210, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 30211


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / レミリア - ヴァンパイアクロウ / 攻撃-2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30211]
type     = S
movetype = A
physics  = S
ctrl     = 0
velset   = 0, 0
anim     = 30221
sprpriority = 4

[State 30211, 速度]
type     = Velset
trigger1 = Animelem = 6
X = 7

[State 30211, 速度]
type     = Velset
trigger1 = Animelem = 7
X = 5

[State 30211]
type     = Velmul
trigger1 = AnimelemTime(7) > 0
trigger1 = Vel X > 0
X = 0.98

;-------------------------------------[演出]

[State 30211, 効果音]
type     = PlaySnd
trigger1 = Animelem = 6
value    = s70, 1

[State 30200, ボイス]
Type     = PlaySnd
Trigger1 = Animelem = 5
value    = S4000, 6

[State 30210]
type     = Explod
trigger1 = animelem = 6
anim     = 30226
postype  = p1
sprpriority = 6
pos     = 25, 40
scale   = 1.5,1.5
;SuperMoveTime = 99999
;PauseMoveTime = 99999
bindtime = -1
ownpal = 1
removeongethit = 1

;--------------------------------[相殺判定]

[State 30211, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35000
IgnoreHitPause = 1

[State 30211, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 30211, HitDef]
type                = HitDef
trigger1            = Animelem = 7
attr                = A, SA
hitflag             = MAF
guardflag           = MA
damage              = Floor(40*root,Fvar(5)*(1.0+var(7)*0.33)), 8
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 4, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 4
guardsound          = s1, 1
ground.slidetime    = 25 + ((p2movetype=A)*5)
ground.hittime      = 25 + ((p2movetype=A)*5)
air.hittime         = 25 + ((p2movetype=A)*5)
guard.slidetime     = 18
guard.hittime       = 18
ground.velocity     = -6
guard.velocity      = -7
air.velocity        = -6, -6
airguard.velocity   = -4, -3
yaccel              = 0.45
guard.kill          = 0
air.fall            = 1
Kill                = 1
fall.recovertime    = Ceil(25*(1+(0.5*(p2movetype=A))))
getpower            = 0, 0
givepower           = Floor(40*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.92


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

;--------------------------------[攻撃へ]

[State 30211, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 30212


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / レミリア - ヴァンパイアクロウ / 攻撃-3
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30212]
type     = S
movetype = A
physics  = S
ctrl     = 0
velset   = 0, 0
anim     = 30222
sprpriority = 4

[State 30212, 速度]
type     = Velset
trigger1 = Animelem = 7
X = 6

[State 30212, 速度]
type     = Velset
trigger1 = Animelem = 8
X = 5

[State 30212]
type     = Velmul
trigger1 = AnimelemTime(8) > 0
trigger1 = Vel X > 0
X = 0.95

;-------------------------------------[演出]

[State 30212, 効果音]
type     = PlaySnd
trigger1 = Animelem = 8
value    = s70, 1

[State 30200, ボイス]
Type     = PlaySnd
Trigger1 = Animelem = 7
value    = S4000, 7

[State 30210]
type     = Explod
trigger1 = animelem = 8
anim     = 30227
postype  = p1
sprpriority = 6
pos     = 25, 40
scale   = 1.5,1.5
bindtime = -1
;SuperMoveTime = 99999
;PauseMoveTime = 99999
ownpal = 1
removeongethit = 1

;--------------------------------[相殺判定]

[State 30212, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35000
IgnoreHitPause = 1

[State 30212, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 30212, HitDef]
type                = HitDef
trigger1            = Animelem = 9
attr                = A, SA
hitflag             = MAF
guardflag           = MA
damage              = Floor(40*root,Fvar(5)*(1.0+var(7)*0.33)), 8
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 0, 9
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 5
guardsound          = s1, 1
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = -7
guard.velocity      = -7
air.velocity        = -3, -4
airguard.velocity   = -3, -3
yaccel              = 0.48
guard.kill          = 0
fall                = 0
air.fall            = 1
Kill                = 1
fall.recovertime    = Ceil(35*(1+(0.5*(p2movetype=A))))
getpower            = 0, 0
givepower           = Floor(40*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

[State a, 変数]  ;Rift attack補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = 0.80

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

;--------------------------------[攻撃へ]

[State 30212];勝利ポーズAへ
Type     = ChangeState
Trigger1 = Animtime = 0
Trigger1 = RoundState = 3
value    = 30190

[State 30212, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 30225


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ノーマルタッチ / レミリア / 終了
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 30225]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 30021
sprpriority = 2

[State 30225, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 20325, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 30225, 速度]
type     = Velset
Trigger1 = Animelem = 6
X        = 10

[State 30310, 効果音]
type     = PlaySnd
trigger1 = Animelem = 5
value    = s70, 2

;--------------------------------[相殺判定]

[State 30225, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35000
IgnoreHitPause = 1

[State 30225, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[終了]

[State 30225, ステート変更];勝利ポーズへ
Type     = ChangeState
Trigger1 = (RoundState = 3) || (RoundState = 4)
Trigger1 = Animelem = 1
trigger1 = (PrevStateNo != 30190) && (PrevStateNo = 30212)
Value    = 30190

[State 30225, ステート変更];勝利ポーズへ
Type     = ChangeState
Trigger1 = (RoundState = 3) || (RoundState = 4)
Trigger1 = Animelem = 1
trigger1 = (PrevStateNo != 30191) && (PrevStateNo = 30312)
Value    = 30191

[State 30225, ステート変更];勝利ポーズへ
Type     = ChangeState
Trigger1 = (RoundState = 3) || (RoundState = 4)
Trigger1 = Animelem = 1
trigger1 = (PrevStateNo != 30191) && (PrevStateNo = 30510)
Value    = 30192

[State 30225, ヘルパー消滅]
Type     = DestroySelf
Trigger1 = Time = 60
Trigger2 = FrontedgeDist < -30



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / レミリア / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30300]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 30200
sprpriority = 4

[State 30300, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 4

[State 30330, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S70, 2

;--------------------------------[相殺判定]

[State 30300, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 30300, ステート変更];アタックタッチ
Type     = ChangeState
Trigger1 = Animelem = 3
Value    = 30310



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / レミリア - デーモンロードウォーク / 攻撃-1
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30310]
type     = S
movetype = A
physics  = S
ctrl     = 0
velset   = 0, 0
anim     = 30300
sprpriority = 4

[state 30310, statetypeset]
type      = StateTypeSet
trigger1  = animelem = 8
statetype = A
Physics   = N

[State 30310, 速度]
type     = Velset
trigger1 = Animelem = 8
X = 18
Y = -14

[State 30310]
type     = Veladd
trigger1 = AnimElemTime(8) >= 0
Y        = 3.5

;-------------------------------------[演出]

[State 30310, 効果音]
type     = PlaySnd
trigger1 = Animelem = 8
value    = s70, 1

[state 30310, エフェクト]
type     = Explod
trigger1 = Animelem=4
id       = 8100
anim     = 8100
scale    = 0.5, 0.5
pos      = 0,0
sprpriority = 1
ownpal = 1

;--------------------------------[相殺判定]

[State 30310, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA
time     = 1
stateno  = 35010
IgnoreHitPause = 1

[State 30310, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT,AP
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 30310, HitDef]
type                = HitDef
trigger1            = Animelem = 8
attr                = A, SA
hitflag             = MAF
guardflag           = HA
damage              = Floor(60*root,Fvar(5)*(1.0+var(7)*0.33)), 18
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 0, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 3
guardsound          = s1, 0
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = -8
guard.velocity      = -8
air.velocity        = -3, -3
airguard.velocity   = -3, -3
yaccel              = 0.48
guard.kill          = 0
air.fall            = 0
fall.recover        = 0 + ifelse(root,var(19)=1,0,1)
fall.recovertime    = Ceil(35*(1+(0.5*(p2movetype=A))))
getpower            = 0, 0
givepower           = Floor(60*root,Fvar(5)), 0
Kill                = 1
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

;--------------------------------[攻撃へ]

[State 30310, ステート変更]
type     = ChangeState
Trigger1 = Animelemtime(8) >= 0
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value    = 30311


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / レミリア - デーモンロードウォーク / 攻撃-2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30311]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 30301
sprpriority = 4

[State 30311, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 30311, 速度]
type     = PosSet
trigger1 = !Time
Y = 0

[state 30311, statetypeset]
type      = StateTypeSet
trigger1  = animelem = 12
statetype = A
Physics   = N

[State 30311, 速度]
type     = Velset
trigger1 = Animelem = 12
X = 18
Y = -14

[State 30311]
type     = Veladd
trigger1 = AnimElemTime(12) >= 0
Y        = 3.5

;-------------------------------------[演出]

[State 30311, 効果音]
type     = PlaySnd
trigger1 = Animelem = 12
value    = s70, 1

;--------------------------------[相殺判定]

[State 30311, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA
time     = 1
stateno  = 35010
IgnoreHitPause = 1

[State 30311, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT,AP
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 30311, HitDef]
type                = HitDef
trigger1            = Animelem = 12
attr                = A, SA
hitflag             = MAF
guardflag           = MA
damage              = Floor(60*root,Fvar(5)*(1.0+var(7)*0.33)), 18
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 0, 5
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 3
guardsound          = s1, 0
ground.slidetime    = 11
ground.hittime      = 16
air.hittime         = 16
guard.slidetime     = 11
guard.hittime       = 11
ground.velocity     = -8
guard.velocity      = -8
air.velocity        = -3, -3
airguard.velocity   = -4, -3
yaccel              = 0.48
guard.kill          = 0
Kill                = 1
air.fall            = 0
fall.recover        = 0 + ifelse(root,var(19)=1,0,1)
fall.recovertime    = Ceil(35*(1+(0.5*(p2movetype=A))))
getpower            = 0, 0
givepower           = Floor(60*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7025
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.80

;-------------------------------------------------[終了]

[State 30311];勝利ポーズBへ
Type     = ChangeState
Trigger1 = Animtime = 0
Trigger1 = RoundState = 3
value    = 30191

[State 30311, ステート変更]
type     = ChangeState
Trigger1 = Animelemtime(12) >= 0
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value    = 30312


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アタックタッチ / レミリア - デーモンロードウォーク / 終了
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30312]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 30302
sprpriority = 4

[State 30312, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 30312, 速度]
type     = PosSet
trigger1 = !Time
Y = 0

[State 30312, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 30225



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / レミリア / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30400]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 30400
sprpriority = 4

[State 30400, ボイス]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 5

[State 30400, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S70, 2

[State 30400]
Type     = Helper
Trigger1 = !time
Name     = "GuardChancel"
Stateno  = 8700
ID       = 8700
Pos      = 0, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;--------------------------------[本体-各種処理]

[State 30400, 変数]
type     = ParentVarSet
Trigger1 = !time
fvar(13) = 0

[State 30400, 変数]
type     = ParentVarSet
Trigger1 = !time
fvar(15) = 3

[State 30400, 変数]
type     = PowerAdd
Trigger1 = !time
value    = -1000

[State a, 変数]
Type           = ParentVarSet
Trigger1       = !time
Persistent     = 0
IgnoreHitPause = 1
var(46)        = 60

;--------------------------------[相殺判定]

[State 30400, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 30400, ステート変更];ガードタッチ
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 30410



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / レミリア-デーモンロードクレイドル / 攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30410]
type     = A
movetype = A
physics  = N
ctrl     = 0
anim     = 30401
sprpriority = 4

[State 30410, 速度]
type     = Velset
trigger1 = !time
X = 6 * cos(45*pi/180)
Y =-6 * Sin(45*pi/180)

;-------------------------------------[演出]

[State 30410, 効果音]
type     = PlaySnd
trigger1 = !time
value    = s70, 3

[State 30410]
type     = Explod
trigger1 = !time
anim     = 30410
postype  = p1
sprpriority = 6
pos     = 0, 0
scale   = 1,1
bindtime = -1
removetime = 16
ownpal = 1
removeongethit = 1

;--------------------------------[相殺判定]

[State 30410, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 30410
IgnoreHitPause = 1

[State 20410, 出掛かり無敵]
type     = Nothitby
trigger1 = Time < 3
value    = SCA, AA, AP, AT
time     = 1
IgnoreHitPause = 1

[State 30410, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;-------------------------------------------------[ヒット定義]

[State 30410, HitDef]
type                = HitDef
trigger1            = Animelem = 2
attr                = A, SA
hitflag             = MAF
guardflag           = M
damage              = Floor(80*root,Fvar(5)*(1.0+var(7)*0.33)), 15
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 5, 4
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 2
guardsound          = s1, 2
ground.slidetime    = 20 + ((p2movetype=A)*5)
ground.hittime      = 20 + ((p2movetype=A)*5)
air.hittime         = 20 + ((p2movetype=A)*5)
guard.slidetime     = 17
guard.hittime       = 17
ground.velocity     = -3, -9
guard.velocity      = -7
air.velocity        = -3, -9
airguard.velocity   = -4, -3
yaccel              = 0.45
guard.kill          = 0
Kill                = 0
fall                = 1
air.fall            = 1
fall.recovertime    = Ceil(45*(1+(0.5*root,var(7))))
getpower            = 0, 0
givepower           = Floor(80*root,Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Guard.CornerPush.VelOff    = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7010
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[補正]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
Trigger1       = MoveHit = 1
Persistent     = 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.50

[State a, 変数]  ;Rift Attck補正
Type           = ParentVarSet
Trigger1       = MoveHit
Trigger1       = P2Movetype = H
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = 0.8

;--------------------------------[攻撃へ]

[State 30410, ステート変更]
type     = ChangeState
Trigger1 = Animtime = 0
value    = 30411


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / レミリア-デーモンロードクレイドル / 終了
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30411]
type     = A
Movetype = I
physics  = N
ctrl     = 0
anim     = 30402

[state 30411, 速度]
type     = VelMul
trigger1 = !time
X = 0.5
Y = 0.5

[state 30411, 速度]
type     = VelAdd
trigger1 = 1
Y = 0.25

;--------------------------------[相殺判定]

[State 30411, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35010
IgnoreHitPause = 1

[State 30411, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

[State 30411, ステート変更]
type     = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value    = 30413


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードタッチ / レミリア / 終了
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 30413]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 30403
sprpriority = 2

[State 30413, 速度]
type     = Velset
trigger1 = !time
X = 0
Y = 0

[State 30413, 座標]
type     = PosSet
trigger1 = !time
Y = 0

[State 30413, 速度]
type     = Velset
Trigger1 = Animelem = 9
X        = 10

[State 30413, 効果音]
type     = PlaySnd
trigger1 = Animelem = 8
value    = s70, 2

;--------------------------------[相殺判定]

[State 30413, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35000
IgnoreHitPause = 1

[State 30413, 無敵]
type     = Nothitby
trigger1 = 1
value    = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[終了]

[State 30413, ヘルパー消滅]
Type     = DestroySelf
Trigger1 = Time = 120
Trigger2 = FrontedgeDist < -30



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / レミリア / 登場
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30500]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 30200
sprpriority = 4

[State 30500, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S70, 2

;--------------------------------[相殺判定]

[State 30500, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[次へ]

[State 30500, ステート変更];アサルトタッチ
Type     = ChangeState
Trigger1 = Animtime = 0
Value    = 30510


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アサルトタッチ / レミリア / 暗転
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 30510]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 30500
sprpriority = 2

;-----------------------------------------------------[ゲージ管理]

[State 30510, ゲージ減少]
Type           = PowerAdd
Trigger1       = Animelemtime(1) = 0
Persistent     = 0
IgnoreHitPause = 1
Value          = -1000

[State a, 背景用]
type     = VarSet
Trigger1 = !time
var(1)   = 0

[State a, 背景用]
type     = VarAdd
Trigger1 = Animelemtime(1) = [1, 10]
var(1)   = 10

[State a];背景色
type      = BGPalFX
trigger1  = Animelemtime(1) > 0
time      = 1
mul       = 255-var(1),255-var(1),255-var(1)
invertall = 0

[State a, 暗転処理]
type     = null;SuperPause
trigger1 = Animelemtime(1) = 0
anim     = -1
sound    = -1
darken   = 0
time     = 40
movetime = 40
P2DefMul = 1

;-----------------------------------------------------[エフェクト]

[State a, エフェクト] ;スペル発動エフェクト
Type     = Helper
Trigger1 = AnimelemTime(1) = 0
OwnPal   = 1
PosType  = P1
Pos      = 0, -45
ID       = 8800
StateNo  = 8800
Name     = "Spell-time"
Persistent= 0
size.xscale   = 0.5
size.yscale   = 0.5
ownpal   = 1
PauseMoveTime = 999999
SuperMoveTime = 999999

[State a, 効果音]; 暗転音
type     = playsnd
trigger1 = Animelemtime(1) = 0
value    = s60, 2

;-----------------------------------------------------[演出]

[State a, ボイス]; もらった
type     = playsnd
trigger1 = Animelemtime(2) = 0
value    = s4000, 8

[State a, 効果音]
type     = playsnd
trigger1 = Animelemtime(2) = 0
value    = s60, 5

[State a, ボイス]; うー
type     = playsnd
trigger1 = Animelemtime(12) = 0
value    = s4000, 7

[State 30510, 槍]
Type     = Helper
Trigger1 = AnimelemTime(2) = 0
OwnPal   = 1
PosType  = P1
Pos      = 0, -92
ID       = 30550
StateNo  = 30550
Name     = "Spell"
Persistent= 0
size.xscale   = 1
size.yscale   = 1
ownpal   = 1
PauseMoveTime = 999999
SuperMoveTime = 999999

[State a, 効果音]
type     = playsnd
trigger1 = Animelemtime(14) = 0
value    = s60, 3

;--------------------------------[相殺判定]

[State 30510, 攻撃指定]
type     = HitOverride
trigger1 = 1
attr     = SCA, AA, AP
time     = 1
stateno  = 35000
IgnoreHitPause = 1

[State 30510,NotHitBy]
type     = NotHitBy
trigger1 = Time < 65
value    = SCA,AA,At,AP
time     = 1
IgnoreHitPause = 1

[State 30510, 無敵]
type     = Nothitby
trigger1 = 1
value2   = ,AT
time     = 1
IgnoreHitPause = 1

;--------------------------------[補正中継]

[State a, 変数]  ;Rate補正
Type           = ParentVarSet
trigger1       = fvar(0) > 0
IgnoreHitPause = 1
fvar(0)        = Root,FVar(0) * 0.75

[State a, 変数]  ;smash attck補正
Type           = ParentVarSet
Trigger1       = fvar(0) > 0
Persistent     = 0
IgnoreHitPause = 1
fvar(2)        = 0.80

[State a]
type = varadd
trigger1 = fvar(0) > 0
fvar(0) = -1

;-----------------------------------------------------[終了]

[State 30510];勝利ポーズCへ
Type     = ChangeState
Trigger1 = Animtime = 0
Trigger1 = RoundState = 3
value    = 30192

[State 20530, 変数];終了フラグ
Type           = ParentVarSet
Trigger1       = Animelem = 13
Persistent     = 0
IgnoreHitPause = 1
var(3)         = 1

[State 30510, ChangeState]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 30225


;━━━━━━━━━━━━━━━━━━━━━
;[helper] スピア (演出用)
;━━━━━━━━━━━━━━━━━━━━━
[statedef 30550]
Physics     = N
Anim        = 30505
SprPriority = 6

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State a]
Type     = trans
Trigger1 = 1
trans    = Add

;-----------------------------------------------[角度+座標設定]

[State 30550, 角度用]
type     = Varset
Trigger1 = parent,AnimelemTime(7) < 0
Trigger1 = 1 || var(1) := 180
Trigger2 = parent,AnimelemTime(7)>=0 && parent,AnimelemTime(8) < 0
Trigger2 = 1 || var(1) := 125
Trigger3 = parent,AnimelemTime(8)>=0 && parent,AnimelemTime(9) < 0
Trigger3 = 1 || var(1) := 110
Trigger4 = parent,AnimelemTime(9)>=0 && parent,AnimelemTime(10) < 0
Trigger4 = 1 || var(1) := 107
Trigger5 = parent,AnimelemTime(10)>=0 && parent,AnimelemTime(11) < 0
Trigger5 = 1 || var(1) := 105
Trigger6 = parent,AnimelemTime(11)>=0 && parent,AnimelemTime(12) < 0
Trigger6 = 1 || var(1) := 75
Trigger7 = parent,AnimelemTime(12)>=0 && parent,AnimelemTime(13) < 0
Trigger7 = 1 || var(1) := 20
var(1)   = var(1)

[State 30550]
Type     = Angledraw
Trigger1 = 1
value    = Var(1)

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(7) < 0
pos      = -8, -95

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(7)>=0 && parent,AnimelemTime(8) < 0
pos      = -50, -63

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(8)>=0 && parent,AnimelemTime(9) < 0
pos      = -54, -30

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(9)>=0 && parent,AnimelemTime(10) < 0
pos      = -54, -27

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(10)>=0 && parent,AnimelemTime(11) < 0
pos      = -53, -27

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(11)>=0 && parent,AnimelemTime(12) < 0
pos      = -30, -70

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(12)>=0 && parent,AnimelemTime(13) < 0
pos      = 40, -82

[State 30550]
type     = Bindtoparent
Trigger1 = parent,AnimelemTime(13)>=0 && parent,AnimelemTime(14) < 0
pos      = 40, -75

[State 30550, ChangeState]
type     = ChangeState
trigger1 = Parent,Animelem = 13
value    = 30551

[State 30550, ヘルパー消滅]
type     = Destroyself
trigger1 = parent,StateNo != 30510
trigger1 = parent,Movetype = H


;━━━━━━━━━━━━━━━━━━━━━
;[helper] スピア (攻撃用)
;━━━━━━━━━━━━━━━━━━━━━
[statedef 30551]
Physics     = N
Movetype    = A
Anim        = 30506
SprPriority = 6

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State a]
Type     = trans
Trigger1 = 1
trans    = Add

[State 30551]
Type     = Angledraw
Trigger1 = 1
value    = 0

;--------------------------[速度設定]

[State 30551]
Type     = VelSet
Trigger1 = 1
X        = 30
Y        = 0

;-------------------------------------------------[ヒット定義]

[State 30551, HitDef]
type                = HitDef
trigger1            = Time > 0
attr                = S, HP
hitflag             = MAF
guardflag           = MA
damage              = Floor(180*root,Fvar(5)*(1.0+var(7)*0.33)), 35
animtype            = Hard
ground.type         = High
priority            = 3, Hit
pausetime           = 0, 9
sparkno             = -1
sparkxy             = 0, 0
guard.sparkno       = -1
hitsound            = s0, 5
guardsound          = s1, 2
ground.slidetime    = 14
ground.hittime      = 23 + ((p2movetype=A)*5)
air.hittime         = 23 + ((p2movetype=A)*5)
guard.slidetime     = 21
guard.hittime       = 21
ground.velocity     = -12, -3
guard.velocity      = -8
air.velocity        = -12, -3
airguard.velocity   = -5, -3
yaccel              = 0.48
fall                = 1
air.fall            = 1
ID                  = 30500
fall.recovertime    = Ceil(60*(1+(0.5*root,var(7))))
getpower            = 0, 0
givepower           = Floor(180*Fvar(5)), 0
Ground.CornerPush.VelOff   = 0
Air.CornerPush.VelOff      = 0
Guard.CornerPush.VelOff    = 0
AirGuard.CornerPush.VelOff = 0
IgnoreHitPause = 1
Persistent = 0

;=======================================[ヒット、ガードエフェクト]


[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7015
ID       = 7000
Pos      = 0, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State a];ヒットスパーク
Type     = Helper
Trigger1 = MoveHit = 1
Name     = "hit"
Stateno  = 7026
ID       = 7000
Pos      = 0, -55
PosType  = P2
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
Pos      = 10, -55
PosType  = P2
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
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
fvar(0)        = 1

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

;-------------------------------------------------[終了]

[State 30551, 相手制御]
type     = targetstate
trigger1 = NumTarget(50500) >= 1
trigger1 = Target(30500),ishelper = 0
trigger1 = Movehit = 1
value    = 8020
ID       = 30500
persistent = 0

[State 30551]
Type     = DestroySelf
Trigger1 = Time > 60





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; レミリア / 地上やられ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 35000]
type     = S
movetype = H
physics  = S
ctrl     = 0
anim     = 35000
sprpriority = 2

[State 35000, 無敵]
type     = NotHitBy
Trigger1 = 1
value    = SCA,AA,AT,AP
IgnoreHitPause = 1

[State 35000, 変数] ;負傷
Type      = parentVarSet
Trigger1  = !time
fvar(15)  = 10
IgnoreHitPause = 1

;------------------------------------------[速度処理]

[State 35000, HitVelSet]
Type     = HitVelSet
Trigger1 = Time = 0
X        = 1

[State 35000, ステート変更];カリスマ帰宅
Type     = ChangeState
Trigger1 = HitShakeOver
Trigger2 = Animtime = 0
Value    = 35030


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; れみりあ / 空中やられ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 35010]
type     = A
movetype = H
physics  = A
ctrl     = 0
anim     = 35010
sprpriority = 2

[State 35010, 無敵]
type     = NotHitBy
Trigger1 = 1
value    = SCA,AA,AT,AP
IgnoreHitPause = 1

[State 35010, 変数] ;負傷
Type      = parentVarSet
Trigger1  = !time
fvar(15)  = 10
IgnoreHitPause = 1

[State a, 変数];タッチゲージ
Type           = ParentVarSet
Trigger1       = !time
fvar(13)       = 0
IgnoreHitPause = 1

;------------------------------------------[速度処理]

[State 35010, HitVelSet]
Type     = HitVelSet
Trigger1 = Time = 0
X        = 1
Y        = 1

[State 35010, 速度]  ;Y加速度
Type     = VelAdd
Trigger1 = 1
Y        = Ifelse(GetHitVar(YAccel)!=0 , GetHitVar(YAccel), 0.42)

;------------------------------------------[ステート変更]

[State 35010, ステート復帰]  ;バウンドへ
Type     = ChangeState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= -10
Value    = 35020

[State 35010, ステート変更]  ;異常時
Type       = DestroySelf
Trigger1   = Time > 300


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	レミリア / 床に激突
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 35020]
Type     = A
MoveType = H
Physics  = N
Anim     = 35020

[State 35020, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S40, 3

[State a, 無敵]
type     = NotHitBy
trigger1 = 1
value    = SCA, AA, AT, AP
time     = 1
IgnoreHitPause = 1

[State 35020, 速度]
Type     = VelSet
Trigger1 = !Time
X        = 0
Y        = 0

[State 35020, 速度]
Type     = PosSet
Trigger1 = !Time
Y        = 0

[State 35020, 画面振動]
type     = EnvShake
trigger1 = !time
time     = 10
ampl     = -6
freq     = 70
phase    = 70

[State 35020, ステート変更];もう帰る
type     = ChangeState
trigger1 = Animtime = 0
value    = 35030

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; レミリア / カリスマ帰宅
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 35030]
Type     = S
MoveType = I
Physics  = S
Anim     = 35030

[State 35030]
type = Nothitby
trigger1 = 1
value = SCA

[state 10192, エフェクト]
type     = Explod
trigger1 = Time = 55
id       = 8000
anim     = 8000
scale    = 1, 1
pos      = 0, 10
sprpriority = 9
ownpal = 1

[State 35030, 効果音]
Type     = PlaySnd
Trigger1 = time = 55
value    = S60, 5

[State 35030, 効果音]
Type     = PlaySnd
Trigger1 = !time
value    = S4000, 0

[State 35030]
type     = varadd
trigger1 = Time > 60
var(2)   = 15

[State 35030]
type     = trans
Trigger1 = 1
trans    = Addalpha
alpha    = 256-var(2),var(2)

[State 35030]
type     = destroySelf
Trigger1 = var(2) >= 256




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	レミリア / 勝利ポーズA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 30190]
type     = S
movetype = I
physics  = S
anim     = 30190
sprpriority = 2

[State 30191, スクロール]
type     = ScreenBound
trigger1 = 1
value    = 1        
MoveCamera = 0,0 

[State 30191, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	レミリア / 勝利ポーズB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 30191]
type     = S
movetype = I
physics  = S
anim     = 30191
sprpriority = 2

[State 30191, スクロール]
type     = ScreenBound
trigger1 = 1
value    = 1        
MoveCamera = 0,0 

[State 30191, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	レミリア / 勝利ポーズC
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 30192]
type     = S
movetype = I
physics  = S
anim     = 30192
sprpriority = 2

[State 30191, スクロール]
type     = ScreenBound
trigger1 = 1
value    = 1        
MoveCamera = 0,0 

[State 30191, 無敵]
type     = Nothitby
trigger1 = 1
value    = SCA,AA,AP,AT


