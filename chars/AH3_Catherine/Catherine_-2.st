
[Statedef -2]


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;  アーマーダメージ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2]
type     = NothitBy
Trigger1 = NumHelper(1180) > 0
Trigger1 = Helper(1180),gethitVar(damage)
value    = SCA
time     = Helper(1180),gethitVar(hitshaketime) + 5

[State -2, ダメージ]
type     = LifeAdd
trigger1 = NumHelper(1180) > 0
value    = -(floor(Helper(1180),var(0)))
ignorehitpause = 1

[State -2]
type     = NothitBy
Trigger1 = NumHelper(1181) > 0
Trigger1 = Helper(1181),gethitVar(damage)
value    = SCA
time     = Helper(1181),gethitVar(hitshaketime) + 5

[State -2, ダメージ]
type     = LifeAdd
trigger1 = NumHelper(1181) > 0
value    = -(floor(Helper(1181),var(0)))
ignorehitpause = 1

[State -2]
type     = NothitBy
Trigger1 = NumHelper(1182) > 0
Trigger1 = Helper(1182),gethitVar(damage)
value    = SCA
time     = Helper(1182),gethitVar(hitshaketime) + 5

[State -2, ダメージ]
type     = LifeAdd
trigger1 = NumHelper(1182) > 0
value    = -(floor(Helper(1182),var(0)))
ignorehitpause = 1

[State -2]
type     = NothitBy
Trigger1 = NumHelper(1380) > 0
Trigger1 = Helper(1380),gethitVar(damage)
value    = SCA
time     = Helper(1380),gethitVar(hitshaketime) + 5

[State -2, ダメージ]
type     = LifeAdd
trigger1 = NumHelper(1380) > 0
value    = -(floor(Helper(1380),var(0)))
ignorehitpause = 1

;-----------------------------------------

[State -2]
type     = NothitBy
Trigger1 = NumHelper(2180) > 0
Trigger1 = Helper(2180),gethitVar(damage)
value    = SCA
time     = Helper(2180),gethitVar(hitshaketime) + 5

[State -2, ダメージ]
type     = LifeAdd
trigger1 = NumHelper(2180) > 0
value    = -(floor(Helper(2180),var(0)))
ignorehitpause = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;補正セット・リセット
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

fvar(0) = 補正総合値
;本体FVar(1) ＝ チェーン補正
;本体FVar(2) ＝ コンボ開始判定
;本体FVar(3) ＝ 受け身不能時間補正
;本体FVar(10)＝ ゲージ量補正
;-------------------------------------------------[連続ヒット補正]

[State -2, VarSet];初期値は100％（リセット）
Type     = VarSet
Trigger1 = FVar(1) != 1.00
Trigger1 = !(P2MoveType = H && (P2StateNo != [150,159]))
fvar(1)  = 1.0
IgnoreHitPause = 1

[State -2, VarSet];最小値は１％
Type     = VarSet
Trigger1 = FVar(1) < 0.01
fvar(1)  = 0.01
IgnoreHitPause = 1

;-------------------------------------------------[連続技判定]

[state -2, コンボ開始判定] ;判定リセット
type     = VarSet
trigger1 = Numenemy > 0
trigger1 = enemy,movetype != H
fvar(2)  = 0

;-------------------------------------------------[EFキャンセル補正]

[state -2, コンボ開始判定] ;判定リセット
type     = VarSet
trigger1 = Numenemy > 0
trigger1 = enemy,movetype != H
fvar(4)  = 1.0

;-------------------------------------------------[EFアルカナ補正]

[state -2]
type     = VarSet
trigger1 = var(15) = 1 ;EF中
fvar(5)  = 1.05

[state -2]
type     = VarSet
trigger1 = var(15) = 0 ;EF中
fvar(5)  = 1.0

;-------------------------------------------------[復帰不能時間補正]

[State -2, VarSet];初期値は100％（リセット）
Type     = VarSet
Trigger1 = FVar(3) != 1.00
Trigger1 = !(P2MoveType = H && (P2StateNo != [150,159]))
fvar(3)  = 1.0
IgnoreHitPause = 1

[State -2, VarSet];最小値は１％
Type     = VarSet
Trigger1 = FVar(3) < 0.01
fvar(3)  = 0.01
IgnoreHitPause = 1

;-------------------------------------------------[アルカナゲージ量補正]

[State -2, ゲージ補正]
Type     = VarSet
Trigger1 = fvar(20) < 1000
fvar(23)  = 1.0

[State -2, ゲージ補正]
Type     = VarSet
Trigger1 = fvar(20) = [1000,1999]
fvar(23)  = 1.1

[State -2, ゲージ補正]
Type     = VarSet
Trigger1 = fvar(20) >= 2000
fvar(23)  = 1.2

;-------------------------------------------------[補正総合]

[State -2, 変数]
Type     = VarSet
Trigger1 = 1
IgnoreHitPause = 1
fvar(0)  = fvar(1)*fvar(4)*fvar(5)

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ハイジャンプ制御
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, 変数]  ;高速ジャンプ 入力時間設定
Type = VarSet
Trigger1 = Command = "高速ジャンプ"
V = 4
Value = 20

[State -2, 変数]  ;高速ジャンプ 入力時間減少
Type = VarAdd
Trigger1 = Var(4) > 0
V = 4
Value = -1

[State -2, 変数]
Type = VarSet
Trigger1 = Var(4) < 0
V = 4
Value = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中ダッシュ制御
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state -2]
type     = VarSet
trigger1 = StateType != A
var(5)   = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; カウンターヒット判定
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state -2, 変数] ;カウンター判定
type       = VarSet
TriggerAll = NumEnemy >= 1
trigger1   = Enemynear,Movetype != A
var(7)     = 0

[state -2, 変数] ;カウンター判定
type       = VarSet
TriggerAll = NumEnemy >= 1
trigger1   = Enemynear,Movetype  = A
var(7)     = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ジャンプキャンセル制御
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state -2];リセット
type = VarSet
trigger1 = StateType != A
var(8) = 0

[state -2];リセット
type = VarSet
trigger1 = StateType != A
var(9) = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中行動制御
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state -2, 押しつぶしたるっちゅーねん]
type     = VarSet
trigger1 = StateType != A
var(10)  = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;根性値  [根性値敷居=50%,最大根性値25%]
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, DefenceMulSet]
Type     = DefenceMulSet
Trigger1 = Life <( LifeMax*0.50)
Value    = 0.75+(0.25*Life/(LifeMax*0.50))
IgnoreHitPause = 1

[state -2];変数
type     = varset
trigger1 = Life < (LifeMax*0.50)
fvar(30) = 0.75+(0.25*Life/(LifeMax*0.50))
IgnoreHitPause = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; KOボイス処理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, ヘルパー]
type     = Helper
trigger1 = NumHelper(9970) = 0
trigger1 = LoseKO = 1
;trigger1 = !Alive
pos      = 0,0
stateno  = 9970
ID       = 9970

;================================================[変数管理]

[State -2] ;KO判定
type       = varset
triggerall = Lose
trigger1   = roundstate = 4
var(50)    = 1

;---------------------------------------

[State -2];通常技判別
type     = VarSet
trigger1 = enemy,hitdefattr = SCA, NA, NP, NT, SA, SP, ST
trigger2 = enemy,stateno < 2000
trigger2 = enemy,stateno != [5000,5999]
var(51)  = 0

[State -2];必殺技判別
type = varset
trigger1 = enemy,hitdefattr = SCA, HA, HP, HT
trigger2 = enemy,stateno >= 2000
trigger2 = enemy,stateno != [5000,5999]
var(51)  = 1

;================================================[脱衣管理]

[State -2, 脱衣判定用]
type       = Helper
triggerall = var(51) != 0
triggerall = NumHelper(9971) = 0
trigger1   = !alive
trigger1   = matchover || teammode = turns
helpertype = normal
name       = "Datui"
id         = 9971
postype    = p1
pos        = 0,0
stateno    = 9971
keyctrl    = 0
ownpal     = 1
ignorehitpause = 1

[State -2, 脱衣やられ]
type     = ChangeAnim
trigger1 = stateno = 5020
trigger1 = time >= 0
trigger1 = NumHelper(9971) = 1
trigger1 = anim != 35030
value    = 35030
ignorehitpause = 1

[State -3]  ;特殊KO キャサリン京橋
Type     = Helper
Trigger1 = NumHelper(9972) = 0
trigger1 = anim = 35170
StateNo  = 9972
PosType  = P1
Pos      = 0, -20
Ownpal   = 1
ID       = 9972
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;アルカナゲージ用ヘルパー呼び出し
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state -2, Helper];アルカナゲージ用ヘルパー
Type      = Helper
Trigger1  = NumHelper(20000) = 0
OwnPal    = 1
PosType   = P1
Pos       = 0, 0
ID        = 20000
StateNo   = 20000
PauseMoveTime = 999999
SuperMoveTime = 999999
Name      = "gage"


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アルカナゲージの管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;-------------------------------------------------[霊力設定２]

[State -2, VarAdd];霊力自動回復
Type = VarAdd
Trigger1 = fVar(22) = 0						;回復抑制時間が０
Trigger1 = fVar(20) < fvar(21)				;現在の霊力 ＜ 現在の最大霊力
IgnoreHitPause = 1
fV = 20
Value = 3 * Fvar(23)

[State -2, VarAdd];霊力回復無効時間減少
Type = VarAdd
Trigger1 = fVar(22) > 0
IgnoreHitPause = 1
fV = 22
Value = -1

;-------------------------------------------------[霊力設定]

[State -2, VarSet];霊力最大
Type = VarSet
Trigger1 = fVar(20) > fvar(21)
IgnoreHitPause = 1
fV = 20
Value = fvar(21)

[State -2, VarSet];通常時:霊力最低値は0
Type = VarSet
Trigger1 = fVar(20) < 0
IgnoreHitPause = 1
fV = 20
Value = 0

[State -2, VarSet];霊力最大値設定
Type = VarSet
Trigger1 = fVar(20) > 3000
IgnoreHitPause = 1
fV = 20
Value = 3000

[State -2, VarSet];バイタル最大
Type = VarSet
Trigger1 = fVar(21) < 0
IgnoreHitPause = 1
fV = 21
Value = 0

[State -2, VarSet];バイタル最小
Type = VarSet
Trigger1 = fVar(21) > 3000
IgnoreHitPause = 1
fV = 21
Value = 3000

;-------------------------------------------------[ゲージ上昇]

[State -2, ダメージ時]
type       = VarAdd
TriggerAll = Fvar(20) >= Fvar(21)
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(damage) != 0
fv         = 21
Value      = Floor(GetHitVar(damage) *0.8) * ifelse(var(15)=1, 1.1, 1)
ignorehitpause = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; フォースゲージの管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;-------------------------------------------------[フォースゲージ設定]

[State -2, VarSet];通常時:最低値は0
Type = VarSet
Trigger1 = fVar(10) < 0
IgnoreHitPause = 1
fV = 10
Value = 0

[State -2, VarSet];通常時:最大値は10000
Type = VarSet
Trigger1 = fVar(10) > 10000
IgnoreHitPause = 1
fV = 10
Value = 10000

;-------------------------------------------------[フォースゲージ設定-2]

[State -2, 通常回復];通常時フォースゲージ回復
Type     = Varadd
TriggerAll = roundState = 2
Trigger1 = fVar(10) < 10000
Trigger1 = Var(15) != 1			;EF中でない
Trigger1 = Var(16)  = 0			;バースト後ではない
fvar(10) = floor(10000/270)

[State -2, ゆっくり回復];バースト使用後フォースゲージ回復
Type     = Varadd
TriggerAll = roundState = 2
Trigger1 = fVar(10) < 10000
Trigger1 = Var(16) = 1			;バースト後
fvar(10) = floor((10000/270)*0.15)

;-------------------------------------------------[フォースゲージ設定-3]

[State -2] ;EF中減少
Type     = Varadd
Trigger1 = fVar(10) > 0
Trigger1 = Var(15)  = 1			;EF中
fV       = 10
Value    = -floor(10000/300)*ifelse(Var(14)=1, 2, 1)


;-------------------------------------------------[各種フラグリセット]

[State -2] ;バーストフラグ初期化
Type     = VarSet
Trigger1 = !var(15)			;EF中でない
Trigger1 = fvar(10) >= 10000
var(16)  = 0

[state -2] ;エクステンドフォース終了
type     = Varset
trigger1 = fvar(10) <= 0
trigger1 = Movetype != A
var(15)  = 0

[state -2] ;フォースキャンセル判定
type     = Varset
trigger1 = fvar(10) <= 0
var(14)  = 0

;------------------------------------------[トランザム]

[State -2, パレット変更] ;トランザム!
type     = Palfx
trigger1 = Alive
trigger1 = var(15) = 1    ;エクステンド
trigger1 = Roundstate = 2
add      = 100, -50, -50
sinadd   = 10, 10, 10
time     = 1
ignorehitpause = 1

[State -2, 残像] ;トランザム 残像
type     = Afterimage
trigger1 = Alive
trigger1 = var(15) = 1
trigger1 = (time%5) = 1
trans    = add
Time     = 5
TimeGap  = 1
FrameGap = 1
PalBright = 100,0,0
PalContrast = 70,70,70
PalAdd = 0,0,0
PalMul = 1,1,1

[state -2, GN粒子] ;粒子01
Type       = Helper
TriggerAll = (time%7)=1
Trigger1   = var(15) = 1
Trigger1   = Movetype != H
Trigger1   = (StateNo !=1305)&&(StateNo!=2110)&&(StateNo!=2305)&&(StateNo!=2405)
id         = 13407
name       = "TRANS-AM"
pos        = 0+(random/100),-100+(random/100)
postype    = p1
stateno    = 13407
helpertype = normal
keyctrl    = 0 
ownpal     = 1
supermovetime=999
pausemovetime=999





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ヘルパー変数管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;-------------------------------------------[ミサイルぎょーさん発射やでー！]

[State a, 変数]  ;Rate補正
Type           = VarSet
Type           = VarSet
Trigger1       = NumProjID(12000) > 0
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = FVar(1) * ifelse(fvar(2)=1, 0.95, 0.80)

[State a, 変数]  ;Rate補正
Type           = VarSet
Trigger1       = NumProjID(12001) > 0
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = FVar(1) * ifelse(fvar(2)=1, 0.98, 0.95)

[State a, VarSet];復帰不能補正
Type           = VarSet
Trigger1       = (NumProjID(12000) > 0) || (NumProjID(12001) > 0)
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = FVar(3) - 0.02

[State a, アルカナゲージ]
Type           = VarAdd
TriggerAll     = Fvar(20) >= Fvar(21)
Trigger1       = (NumProjID(12000) > 0) || (NumProjID(12001) > 0)
Persistent     = 0
IgnoreHitPause = 1
fvar(21)       = 21*(0.7)*ifelse(var(15)=1, 1.1, 1)

[State a, アルカナゲージ]
Type           = VarAdd
TriggerAll     = Fvar(20) >= Fvar(21)
Trigger1       = (NumProjID(12010) > 0)
Persistent     = 0
IgnoreHitPause = 1
fvar(21)       = 21*(0.125)*ifelse(var(15)=1, 1.1, 1)

;-------------------------------------------[みんなのヒーローちびガワ！]

[State a, 変数]  ;Rate補正
Type           = VarSet
Type           = VarSet
Trigger1       = NumProjID(12200) > 0
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = FVar(1) * ifelse(fvar(2)=1, 0.95, 0.80)

[State a, 変数]  ;Rate補正
Type           = VarSet
Trigger1       = NumProjID(12201) > 0
Persistent     = 0
IgnoreHitPause = 1
fvar(1)        = FVar(1) * ifelse(fvar(2)=1, 0.98, 0.95)

[State a, VarSet];復帰不能補正
Type           = VarSet
Trigger1       = (NumProjID(12200) > 0) || (NumProjID(12201) > 0)
Persistent     = 0
IgnoreHitPause = 1
fvar(3)        = FVar(3) - 0.02

[State a, アルカナゲージ]
Type           = VarAdd
TriggerAll     = Fvar(20) >= Fvar(21)
Trigger1       = (NumProjID(12200) > 0) || (NumProjID(12201) > 0)
Persistent     = 0
IgnoreHitPause = 1
fvar(21)       = 21*(0.7)*ifelse(var(15)=1, 1.1, 1)

[State a, アルカナゲージ]
Type           = VarAdd
TriggerAll     = Fvar(20) >= Fvar(21)
Trigger1       = (NumProjID(12210) > 0)
Persistent     = 0
IgnoreHitPause = 1
fvar(21)       = 21*(0.125)*ifelse(var(15)=1, 1.1, 1)



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; デバッグ表示
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;[State -2, デバッグ表示]
;Type     = DisplayToClipBoard
;Trigger1 = 1
;Text     = "Fvar(0)=%f, Fvar(1)=%f, FVar(3)=%f,Fvar(20)=%f,Hit=%d"
;Params   = fvar(0), fvar(1), fvar(3), fvar(20),(Movecontact)
;IgnoreHitPause = 1


;[State -2, デバッグ表示]
;Type     = null;DisplayToClipBoard
;Trigger1 = 1
;Text     = "var(2)=%d,var(3)=%d"
;Params   = var(2), var(3)
;IgnoreHitPause = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; エフェクト消去 (バーニア)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, RemoveExplod] ;ジャンプ
Type       = RemoveExplod
TriggerAll = NumExplod(4000) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 50)
ID         = 4000

[State -2, RemoveExplod] ;バックダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4001) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 105)
ID         = 4001

[State -2, RemoveExplod] ;空中ダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4002) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 110)
ID         = 4002

[State -2, RemoveExplod] ;空中バックダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4003) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 115)
ID         = 4003

[State -2, RemoveExplod] ;ダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4004) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 100)
ID         = 4004

[State -2, RemoveExplod] ;2E
Type       = RemoveExplod
TriggerAll = NumExplod(4020) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 310)
ID         = 4020

[State -2, RemoveExplod] ;2E
Type       = RemoveExplod
TriggerAll = NumExplod(4021) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 310)
ID         = 4021


[State -2, RemoveExplod] ;ラリアットA
Type       = RemoveExplod
TriggerAll = NumExplod(4023) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1100)&&(StateNo != 1150)
ID         = 4023

[State -2, RemoveExplod] ;ラリアットB
Type       = RemoveExplod
TriggerAll = NumExplod(4027) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1110)&&(StateNo != 1160)
ID         = 4027

[State -2, RemoveExplod] ;ラリアットC
Type       = RemoveExplod
TriggerAll = NumExplod(4030) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1120)&&(StateNo != 1170)
ID         = 4031


[State -2, RemoveExplod] ;押しつぶし1
Type       = RemoveExplod
TriggerAll = NumExplod(4035) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1200)&&(StateNo != 1210)&&(StateNo != 1220)
ID         = 4035

[State -2, RemoveExplod] ;押しつぶし2
Type       = RemoveExplod
TriggerAll = NumExplod(4037) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1200)&&(StateNo != 1210)&&(StateNo != 1220)&&(StateNo != 1230)
ID         = 4037

[State -2, RemoveExplod] ;押しつぶし3
Type       = RemoveExplod
TriggerAll = NumExplod(4039) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1200)&&(StateNo != 1210)&&(StateNo != 1220)&&(StateNo != 1230)
ID         = 4039


[State -2, RemoveExplod] ;せくしーきゅーとなヒップ
Type       = RemoveExplod
TriggerAll = NumExplod(4040) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1300)
ID         = 4040

[State -2, RemoveExplod] ;せくしーきゅーとなヒップ (エフェクト)
Type       = RemoveExplod
TriggerAll = NumExplod(11305) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1300)
ID         = 11305

[State -2, RemoveExplod] ;ホバリング - 1
Type       = RemoveExplod
TriggerAll = NumExplod(4045) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1400)
ID         = 4045

[State -2, RemoveExplod] ;ホバリング - 2N
Type       = RemoveExplod
TriggerAll = NumExplod(4048) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1410)
Trigger3   = Anim != 1401
ID         = 4048

[State -2, RemoveExplod] ;ホバリング - 2N
Type       = RemoveExplod
TriggerAll = NumExplod(4049) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1410)
Trigger3   = Anim != 1401
ID         = 4049

[State -2, RemoveExplod] ;ホバリング - 2F
Type       = RemoveExplod
TriggerAll = NumExplod(4050) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1410)
Trigger3   = Anim != 1402
ID         = 4050

[State -2, RemoveExplod] ;ホバリング - 2F
Type       = RemoveExplod
TriggerAll = NumExplod(4051) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1410)
Trigger3   = Anim != 1402
ID         = 4051

[State -2, RemoveExplod] ;ホバリング - 2B
Type       = RemoveExplod
TriggerAll = NumExplod(4052) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1410)
Trigger3   = Anim != 1403
ID         = 4052

[State -2, RemoveExplod] ;ホバリング - 2B
Type       = RemoveExplod
TriggerAll = NumExplod(4053) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 1410)
Trigger3   = Anim != 1403
ID         = 4053

[State -2, RemoveExplod] ;Fガードキャンセル
Type       = RemoveExplod
TriggerAll = NumExplod(4054) > 0
Trigger1   = MoveType = H
trigger2   = (Anim != 950)&&(Anim != 970)
Trigger3   = ((Anim=950)&&(Animelemtime(12)>=0))&&((Anim=970)&&(Animelemtime(11)>=0))
ID         = 4054

[State -2, RemoveExplod] ;Fガードキャンセル
Type       = RemoveExplod
TriggerAll = NumExplod(4055) > 0
Trigger1   = MoveType = H
trigger2   = (Anim != 950)&&(Anim != 970)
Trigger3   = ((Anim=950)&&(Animelemtime(12)>=0))&&((Anim=970)&&(Animelemtime(11)>=0))
ID         = 4055

[State -2, RemoveExplod] ;バックダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4056) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 940)
Trigger3   = (Anim = 940)&&(Animelemtime(4)>=0)
ID         = 4056

[State -2, RemoveExplod] ;バックダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4058) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 940)
Trigger3   = (Anim = 940)&&(Animelemtime(6)<0)
ID         = 4058

[State -2, RemoveExplod] ;ホーミングダッシュ
Type       = RemoveExplod
TriggerAll = NumExplod(4059) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 930)
Trigger3   = (Anim = 930)&&(Animelemtime(3)<0)
ID         = 4059

[State -2, RemoveExplod] ;Bガードキャンセル
Type       = RemoveExplod
TriggerAll = NumExplod(4060) > 0
Trigger1   = MoveType = H
trigger2   = (Anim != 960)&&(Anim != 980)
Trigger3   = (Anim = 960)&&(Animelemtime(4)>=0)
ID         = 4060

[State -2, RemoveExplod] ;Bガードキャンセル-後半
Type       = RemoveExplod
TriggerAll = NumExplod(4061) > 0
Trigger1   = MoveType = H
trigger2   = (Anim != 960)
Trigger3   = (Anim = 960)&&(Animelemtime(4)<0)
ID         = 4061

[State -2, RemoveExplod] ;回転力は遠心力で破壊力
Type       = RemoveExplod
TriggerAll = NumExplod(4062) > 0
Trigger1   = MoveType = H
trigger2   = (StateNo != 2305)&&(StateNo != 2405)
ID         = 4062










;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;常時監視-3ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Statedef -3]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;効果音 再生
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


[State -3, Playsnd];ダウン時 ドサッ！
type = PlaySnd
Trigger1 = StateNo = 5110
trigger1 = Time = 1
value = 50, 1
IgnoreHitPause = 1
Persistent = 0

[State -3, Playsnd];キャサリン専用
type = PlaySnd
Trigger1 = StateNo = 5110
trigger1 = Time = 1
value = 80, 9
IgnoreHitPause = 1
Persistent = 0

[State -3, Playsnd];ダウン時 ドサッ！
type = PlaySnd
Trigger1 = StateNo = 5100
trigger1 = Time = 1
value = 50, 3
IgnoreHitPause = 1
Persistent = 0

[State -3, Playsnd];キャサリン専用
type = PlaySnd
Trigger1 = StateNo = 5100
trigger1 = Time = 1
value = 80, 9
IgnoreHitPause = 1
Persistent = 0

[State -2, Helper];ダウンエフェクト
type     = Helper
Trigger1 = StateNo = 5100
trigger1 = Time = 1
StateNo  = 7200
PosType  = P1
Pos      = 0, 0
Ownpal   = 1
ID       = 7200

[State -3, playsnd];受け身サウンド
type = PlaySnd
Trigger1 = (StateNo = 5201)&&(Time = 1)
trigger2 = (StateNo = 5210)&&(Time = 1)
value = S3,1
IgnoreHitPause = 1
Persistent = 0



;----------------------------------[各種ボイス]

[State -3, 攻撃];A攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 200 || stateno = 600
Trigger1   = random < 900
value      = S300,0+(random%3)
channel    = 1

[State -3, 攻撃];2A攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 400
value      = S300,16
channel    = 1

[State -3, 攻撃];B攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 210 || stateno = 410 || stateno = 610
Trigger1   = random < 900
value      = S300,3+(random%3)
channel    = 1

[State -3, 攻撃];C攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 220 || stateno = 420 || stateno = 620
Trigger1   = random < 900
value      = S300,6+(random%3)
channel    = 1

[State -3, 攻撃];6C攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 240 || stateno = 440
value      = S300,14
channel    = 1

[State -3, 攻撃];4C攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 230 || stateno = 430
value      = S405,12 + (StateNo=430)
channel    = 1

[State -3, 攻撃];E攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 301
value      = S300,9
channel    = 1

[State -3, 攻撃];HE攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 302
value      = S300,10
channel    = 1

[State -3, 攻撃];2E攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 311
value      = S300,11
channel    = 1

[State -3, 攻撃];H2E攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 312
value      = S300,12
channel    = 1

[State -3, 攻撃];JE攻撃
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 320
value      = S300,13
channel    = 1


[State -3, 投げ] ;開始
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = (stateno = 800)||(StateNo=820)
value      = S300, 0
channel    = 1

[State -3, 投げ] ;失敗
type       = PlaySnd
Triggerall = Time = 7 && Alive
Trigger1   = stateno = 800
value      = S305, 0
channel    = 1

[State -3, L投げ] ;失敗
type       = PlaySnd
Triggerall = Time = 10 && Alive
Trigger1   = stateno = 800
value      = S305, 0
channel    = 1

[State -3, 投げ] ;投げ抜け
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = stateno = 802
value      = S5000, 2
channel    = 1

[State -3, 投げ] ;成功
type       = PlaySnd
Triggerall = Time = 12 && Alive
Trigger1   = stateno = 805
value      = S300, 13
channel    = 1

[State -3, 投げ] ;成功2
type       = PlaySnd
Triggerall = Time = 41 && Alive
Trigger1   = stateno = 805
value      = S300, 10
channel    = 1

[State -3, L投げ] ;成功
type       = PlaySnd
Triggerall = Time = 5 && Alive
Trigger1   = stateno = 825
value      = S5100, 0
channel    = 1


[State -3, Air投げ] ;成功
type       = PlaySnd
Triggerall = Time = 7 && Alive
Trigger1   = stateno = 846
value      = S300, 9
channel    = 1


[State -3, 攻撃];ミサイル
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = (Stateno = 1000)||(Stateno = 1010)||(Stateno = 1020)
value      = S400, 0
channel    = 1

[State -3, 攻撃];ラリアットA
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = (Stateno = 1100)||(Stateno = 1150)
value      = S400,2
channel    = 1

[State -3, 攻撃];ラリアットB
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = (Stateno = 1110)||(Stateno = 1160)
value      = S400,3
channel    = 1

[State -3, 攻撃];ラリアットC
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = (Stateno = 1120)||(Stateno = 1170)
value      = S400,4
channel    = 1


[State -3, 攻撃];運送A
type       = PlaySnd
Triggerall = Animelem = 4 && Alive
Trigger1   = (Stateno = 1200)
value      = S400,5
channel    = 1

[State -3, 攻撃];運送B
type       = PlaySnd
Triggerall = Time = 1 && Alive
Trigger1   = (Stateno = 1231)
value      = S400,6

[State -3, 攻撃];空中運送A
type       = PlaySnd
Triggerall = Animelem = 3 && Alive
Trigger1   = (Stateno = 1250)
value      = S400,5
channel    = 1


[State -3, 攻撃];どんけつ
type       = PlaySnd
Triggerall = Animelem = 2 && Alive
Trigger1   = (Stateno = 1300)
value      = S405, 4
channel    = 1

[State -3, 攻撃];どんけつ-着地
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 1305)
value      = S5000, 21


[State -3, 攻撃];ホバリング
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 1400)
value      = S400, 7
channel    = 1


[State -3, 攻撃];ミサイルぎょーさん発射やでー！
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2000)
value      = S410, 0
channel    = 1

[State -3, 攻撃];めっちゃまわるでラリアット！
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2100)
value      = S410, 2
channel    = 1

[State -3, 攻撃];めっちゃまわるでラリアット！
type       = PlaySnd
Triggerall = Animelem = 25 && Alive
Trigger1   = (Stateno = 2100)
value      = S410, 3

[State -3, 攻撃];めっちゃまわるでラリアット！
type       = PlaySnd
Triggerall = Animelem = 41 && Alive
Trigger1   = (Stateno = 2100)
value      = S410, 4

[State -3, 攻撃];めっちゃまわるでラリアット！
type       = PlaySnd
Triggerall = Animelem = 4 && Alive
Trigger1   = (Stateno = 2110)
value      = S410, 5


[State -3, 攻撃];みんなのヒーローちびガワ発進！
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2200)
value      = S410, 7
channel    = 1


[State -3, 攻撃];回転力は遠心力で破壊力や！(発動)
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2300)
value      = S410, 11

[State -3, 攻撃];回転力は遠心力で破壊力や！(ヒット)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2305)&&(Animelem=9)
value      = S410, 12

[State -3, 攻撃];回転力は遠心力で破壊力や！(2段階)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2305)&&(Animelem=25)
value      = S410, 14

[State -3, 攻撃];回転力は遠心力で破壊力や！(3段階)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2305)&&(Animelem=65)
value      = S410, 13

[State -3, 攻撃];回転力は遠心力で破壊力や！(3段階)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2305)&&(Animelem=81)
value      = S5000, 22

[State -3, 攻撃];回転力は遠心力で破壊力や！(最後)
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2310)
value      = S410, 15


[State -3, 攻撃];EF回転力は遠心力で破壊力や！(発動)
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2400)
value      = S410, 18

[State -3, 攻撃];EF回転力は遠心力で破壊力や！(ヒット)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2405)&&(Animelem=9)
value      = S410, 19

[State -3, 攻撃];EF回転力は遠心力で破壊力や！(2段階)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2405)&&(Animelem=49)
value      = S410, 21

[State -3, 攻撃];EF回転力は遠心力で破壊力や！(3段階)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2405)&&(Animelem=95)
value      = S410, 22

[State -3, 攻撃];EF回転力は遠心力で破壊力や！(4段階)
type       = PlaySnd
Triggerall = Alive
Trigger1   = (Stateno = 2405)&&(Animelem=204)
value      = S410, 17

[State -3, 攻撃];EF回転力は遠心力で破壊力や！(最後)
type       = PlaySnd
Triggerall = time = 1 && Alive
Trigger1   = (Stateno = 2410)
value      = S5000, 21


[State -3] ;エクステンド(通常)
type       = PlaySnd
triggerAll = Time = 1
triggerAll = Movetype != H
trigger1   = (StateNo = 2900)
value      = s500, 26

[State -3] ;エクステンド(キャンセル)
type       = PlaySnd
triggerAll = Time = 1
triggerAll = Movetype != H
trigger1   = (StateNo = 2910)
value      = s500, 20

[State -3] ;バースト
type       = PlaySnd
triggerAll = Time = 1
triggerAll = Movetype != H
trigger1   = (StateNo = 2800) || (StateNo = 2850)
value      = s500, 30

[State -2, ラウンド間]
type     = PlaySnd
trigger1 = (anim = 5140)&&(animelemtime(7)=0)
value    = s11, 4

[State -3, 地上受け身]
type       = PlaySnd
triggerAll = Time = 1 && Alive
trigger1   = stateno = 5201
value      = S5100, 0
channel    = 5

[State -2, 空中受け身]
type       = PlaySnd
triggerall = Time = 1 && Alive
trigger1   = stateno = 5210
value      = S5100, 2
channel    = 5

[State -3, 弱ダメージ]
type       = PlaySnd
triggerAll = Alive
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(animtype) = 0
trigger1   = GetHitVar(damage) != 0
trigger1   = Random < 600
value      = s5000,0+(random%3)
channel    = 5

[State -3, 中ダメージ]
type       = PlaySnd
triggerAll = Alive
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(animtype) = 2
trigger1   = GetHitVar(damage) != 0
trigger1   = Random < 600
value      = s5000,10+(random%3)
channel    = 5

[State -3, 強ダメージ]
type       = PlaySnd
triggerAll = Alive
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(animtype) = [3,5]
trigger1   = GetHitVar(damage) != 0
trigger1   = Random < 600
value      = s5000,20+(random%3)
channel    = 5



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 相手吹っ飛ばしやられ / エフェクト表示
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -3]  ;吹っ飛び激突
Type     = Helper
Trigger1 = NumHelper(8045) = 0
Trigger1 = NumTarget > 0
Trigger1 = Target,Time = 1
Trigger1 = Target,StateNo = 8012
StateNo  = 8045
PosType  = P2
Pos      = -10, -45
Ownpal   = 1
ID       = 8045

[State -2, Playsnd];相手ダウン時 ドサッ！
type     = PlaySnd
Trigger1 = NumTarget > 0
Trigger1 = Target,Time = 1
Trigger1 = Target,StateNo = 8052
value    = s50, 3
IgnoreHitPause = 1
Persistent = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 叩きつけやられ / エフェクト表示
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -3]  ;地面に激突
Type     = Helper
Trigger1 = NumHelper(8047) = 0
Trigger1 = NumTarget > 0
Trigger1 = Target,Time = 1
Trigger1 = Target,StateNo = 8062
StateNo  = 8047
PosType  = P2
Pos      = 0, 5
Ownpal   = 1
ID       = 8047

[State -3]  ;地面に激突
Type     = Helper
Trigger1 = NumHelper(8047) = 0
Trigger1 = NumTarget > 0
Trigger1 = Target,Time = 1
Trigger1 = Target,StateNo = 8072
StateNo  = 8047
PosType  = P2
Pos      = 0, 5
Ownpal   = 1
ID       = 8047
