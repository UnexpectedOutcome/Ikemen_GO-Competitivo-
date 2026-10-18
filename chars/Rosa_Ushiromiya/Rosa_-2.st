

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;  ラウンド間処理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 5900]
Type = S

;-------------------------------------------------[タッチゲージ設定]

[State 5900, 霊力設定] ;最初のラウンドだった場合、霊力をセットする
type     = VarSet
trigger1 = roundno = 1
fvar(10) = 100

[State 5900, 霊力設定] ;２ラウンド以降に初登場時に、霊力をセットする
type     = VarSet
Trigger1 = RoundNo > 1       ;ラウンド２以降で
Trigger1 = RoundsExisted = 0 ;初出場時
fvar(10) = 100

[State 5900, 霊力設定] ;最初のラウンドだった場合、霊力をセットする
type     = VarSet
trigger1 = roundno = 1
fvar(13) = 100

[State 5900, 霊力設定] ;２ラウンド以降に初登場時に、霊力をセットする
type     = VarSet
Trigger1 = RoundNo > 1       ;ラウンド２以降で
Trigger1 = RoundsExisted = 0 ;初出場時
fvar(13) = 100

;-------------------------------------------------[メタゲージ設定]

[State 5900];前ラウンド決着時メタ世界展開中だったか判定
type     = Varset
trigger1 = roundsexisted >= 1
trigger1 = fvar(39) = 1
fvar(17) = 0
persistent=0

[State 5900];前ラウンド決着時メタ世界展開中だった時の対応
type     = Varset
trigger1 = roundsexisted >= 1
trigger1 = fvar(39) = 1
fvar(39) = 0
persistent=0

[State 5900];残弾有でスタート
type     = Varset
trigger1 = roundsexisted >= 0
var(50) = 1
persistent=0

;-------------------------------------------------[終了]

;---------------------------------------------------------
[State 5900];Intro for special
type = ChangeState
triggerall = prevstateno != 100191
triggerall = (teammode = single && roundno=1)||teammode=turns
triggerall = !(teammode = simul)
trigger1 = enemy(0),stateno != 192
trigger1 = enemy(0),animexist(18000)
trigger1 = enemy(0),authorname = "iwakick"
trigger1 = enemy(0),name = "SilverSamurai"
value = 100191
;---------------------------------------------------------

[State 5900, ステート変更]
Type = ChangeState
Trigger1 = RoundNo=1
value = 190








[Statedef -2]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;常時監視-2ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝



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
; グレイブシュート判定
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, 変数]
Type     = VarSet
Trigger1 = !(P2MoveType = H && (P2StateNo != [150,159]))
IgnoreHitPause = 1
var(8)   = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ダウン追い打ち判定
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, 変数]
Type     = VarSet
Trigger1 = Enemynear,StateType = L
Trigger1 = (Enemynear,movetype=H) && (Enemynear,StateNo = [5080,5110])
var(10)  = 1
IgnoreHitPause = 1

[State -2, 変数];解除
Type     = VarSet
Trigger1 = (Enemynear,StateType != L) && (Enemynear,movetype!=H)
var(10)  = 0
IgnoreHitPause = 1

[state -2, カウント]
type     = VarAdd
Trigger1 = Var(11) = 1  ;フラグ
trigger1 = (MoveHit)&&(!MoveGuarded)&&(Numtarget > 0)
trigger1 = (Target,StateNo = 8030)&&(target,movetype = H)&&(target,time=1)
var(11)  = 1
ignorehitpause=1

[state -2, リセット]
type     = VarSet
trigger1 = var(10) = 0
var(11)  = 0
ignorehitpause=1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; メタ展開中 演出
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;afterimageを毎フレーム処理させると表示されない

[State -2, 残像]
type     = AfterImage
trigger1 = Var(19) = 1
trigger1 = RoundState >= 2
Trigger1 = Numexplod(9998) = 0
time     = 99999
timegap  = 3
framegap = 1
length   = 10
palcontrast = 255,255,100
palbright = 0,0,0
paladd = 0,0,0
palmull = 1,1,1
trans = add1
ignorehitpause = 1

[State -2, 残像表示制限]
type     = Explod
trigger1 = Var(19) = 1
trigger1 = RoundState >= 2
trigger1 = NumExplod(9998) = 0
anim     = 9999
pos      = 0, 0
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ownpal = 1
id       = 9998

[State -2]
type = AfterImageTime
trigger1 = NumExplod(9998) = 0
time = 0
ignorehitpause = 1

[State -2]
type     = RemoveExplod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9998) = 1
trigger1 = Var(19) != 1
id       = 9998
ignorehitpause = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 補正セット・リセット
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;-------------------------------------------------[補正総合]

[State -2, 変数]
Type     = VarSet
Trigger1 = 1
IgnoreHitPause = 1
fvar(5)  = fvar(0)*fvar(1)*fvar(2)*fvar(3)*fvar(4)

;-------------------------------------------------[Rate補正]

[State -2, 変数]  ;初期値は100％（リセット）
Type     = VarSet
Trigger1 = FVar(0) != 1.00
Trigger1 = !(P2MoveType = H && (P2StateNo != [150,159]))
IgnoreHitPause = 1
fvar(0)  = 1

[State -2, 変数]  ;最小値は１％
Type     = VarSet
Trigger1 = FVar(0) < 0.01
IgnoreHitPause = 1
fvar(0)  = 0.01

;-------------------------------------------------[Rift Attack]
[state -2, 変数]  ;Rift Attack 解除
type     = VarSet
trigger1 = Enemynear,Movetype != H
fvar(1)  = 1

;-------------------------------------------------[Smash Attack]
[state -2, 変数]  ;Smash Attack 解除
type     = VarSet
trigger1 = Enemynear,Movetype != H
fvar(2)  = 1

;-------------------------------------------------[Chain Arts]
[state -2, 変数]  ;Chain Arts 解除
type     = VarSet
trigger1 = Enemynear,Movetype != H
fvar(3)  = 1

;-------------------------------------------------[Chain Spell]
[state -2, 変数]  ;Chain Spell 解除
type     = VarSet
trigger1 = Enemynear,Movetype != H
fvar(4)  = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ハイジャンプ制御
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, 変数]  ;高速ジャンプ 入力時間設定
Type     = VarSet
Trigger1 = Command = "高速ジャンプ"
var(4)   = 20
IgnoreHitPause = 1

[State -2, 変数]  ;高速ジャンプ 入力時間減少
Type     = VarAdd
Trigger1 = Var(4) > 0
var(4)   = -1
IgnoreHitPause = 1

[State -2, 変数]
Type     = VarSet
Trigger1 = Var(4) < 0
var(4)   = 0
IgnoreHitPause = 1

[State -2, 変数];小ジャンプ判定
type     = Varset
trigger1 = stateno = 40
trigger1 = command != "holdup"
var(5)   = 1

[State -2, 変数];小ジャンプ消去
type     = varset
trigger1 = stateno = 40
trigger1 = command = "holdup"
var(5)   = 0

[State -2, 速度];小ジャンプ
type     = veladd
trigger1 = stateno = 50
trigger1 = time = 1
trigger1 = var(5) = 1
Y = 2

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; タッチゲージ管理 / れみりあ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;-------------------------------------------------[霊力設定]

[State -2, 変数] ;霊力 自動回復
Type     = VarAdd
Trigger1 = Var(45) = 0
Trigger1 = FVar(10) < 100	;現在の霊力 ＜ 現在の霊球数
fvar(10) = fvar(11)
IgnoreHitPause = 1

[State -2, VarSet];使用判定リセット
Type     = VarSet
Trigger1 = fVar(10) >= 100	;何らかの霊力消費技の後
fvar(12) = 0
IgnoreHitPause = 1

[State -2, 変数]
Type     = VarAdd
Trigger1 = Var(45) > 0
var(45)  = -1
IgnoreHitPause = 1

;-------------------------------------------------[霊力設定]

[State -2, 変数] ;霊力 最低値設定
Type     = VarSet
Trigger1 = Fvar(10) < 0
fvar(10) = 0
IgnoreHitPause = 1

[State -2, 変数] ;霊力 最大値設定
Type     = VarSet
Trigger1 = Fvar(10) > 100
fvar(10) = 100
IgnoreHitPause = 1

;-------------------------------------------------[回復速度補正]

[State -2, 変数] ;平常時?
Type      = VarSet
Trigger1  = (fvar(12) != [1,4]) && (fvar(12) != 10)
fvar(11)  = 1.666
IgnoreHitPause = 1

[State -2, 変数] ;ノーマルタッチ3秒
Type      = VarSet
Trigger1  = fvar(12) = 1
fvar(11)  = 0.555
IgnoreHitPause = 1

[State -2, 変数] ;アタックタッチ6秒
Type      = VarSet
Trigger1  = fvar(12) = 2
fvar(11)  = 0.277
IgnoreHitPause = 1

[State -2, 変数] ;ガードタッチ7秒
Type      = VarSet
Trigger1  = fvar(12) = 3
fvar(11)  = 0.238
IgnoreHitPause = 1

[State -2, 変数] ;ダメージタッチ10秒
Type      = VarSet
Trigger1  = fvar(12) = 4
fvar(11)  = 0.166
IgnoreHitPause = 1

[State -2, 変数] ;負傷12秒
Type      = VarSet
Trigger1  = fvar(12) = 10
fvar(11)  = 0.138
IgnoreHitPause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; タッチゲージ管理 / レミリア
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;-------------------------------------------------[霊力設定]

[State -2, 変数] ;霊力 自動回復
Type     = VarAdd
Trigger1 = var(46) = 0
Trigger1 = FVar(13) < 100	;現在の霊力 ＜ 現在の霊球数
fvar(13) = fvar(14)
IgnoreHitPause = 1

[State -2, VarSet];使用判定リセット
Type     = VarSet
Trigger1 = fVar(13) >= 100	;何らかの霊力消費技の後
fvar(15) = 0
IgnoreHitPause = 1

[State -2, 変数]
Type     = VarAdd
Trigger1 = Var(46) > 0
var(46)  = -1
IgnoreHitPause = 1

;-------------------------------------------------[霊力設定]

[State -2, 変数] ;霊力 最低値設定
Type     = VarSet
Trigger1 = Fvar(13) < 0
fvar(13) = 0
IgnoreHitPause = 1

[State -2, 変数] ;霊力 最大値設定
Type     = VarSet
Trigger1 = Fvar(13) > 100
fvar(13) = 100
IgnoreHitPause = 1

;-------------------------------------------------[回復速度補正]

[State -2, 変数] ;平常時?
Type      = VarSet
Trigger1  = (fvar(15) != [1,4]) && (fvar(15) != 10)
fvar(14)  = 1.666
IgnoreHitPause = 1

[State -2, 変数] ;ノーマルタッチ3秒
Type      = VarSet
Trigger1  = fvar(15) = 1
fvar(14)  = 0.555
IgnoreHitPause = 1

[State -2, 変数] ;アタックタッチ6秒
Type      = VarSet
Trigger1  = fvar(15) = 2
fvar(14)  = 0.277
IgnoreHitPause = 1

[State -2, 変数] ;ガードタッチ7秒
Type      = VarSet
Trigger1  = fvar(15) = 3
fvar(14)  = 0.238
IgnoreHitPause = 1

[State -2, 変数] ;ダメージタッチ / アサルトタッチ10秒
Type      = VarSet
Trigger1  = fvar(15) = 4
fvar(14)  = 0.166
IgnoreHitPause = 1

[State -2, 変数] ;負傷12秒
Type      = VarSet
Trigger1  = fvar(15) = 10
fvar(14)  = 0.138
IgnoreHitPause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; タッチゲージ用ヘルパー呼び出し
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state -2, Helper]  ;ゲージ用ヘルパー
Type     = Helper
Trigger1 = NumHelper(6000) = 0
OwnPal   = 1
PosType  = P1
Pos      = 0, 0
ID       = 6000
StateNo  = 6000
PauseMoveTime = 999999
SuperMoveTime = 999999
Name     = "gage"



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; メタゲージ管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2];メタゲージ増加開始時間
type     = Varadd
Trigger1 = RoundState >= 2
Trigger1 = fvar(19) = 0
Trigger1 = var(20) < 500  ;とりあえず
var(20)  = 1
ignorehitpause=1

[State -2];メタゲージ増加
type       = Varadd
triggerall = roundstate = 2
triggerall = stateno != [2900,2940]
triggerall = fvar(17) < 680
trigger1   = var(20) >= 120         ;増加開始時間ＯＫ
trigger1   = fvar(19) = 0           ;回復停止状態でない
trigger1   = var(19) = 0            ;メタ世界展開中でない
fvar(17)   = 1
ignorehitpause=1

[State -2];メタゲージ減少
type       = Varadd
triggerall = roundstate = 2
triggerall = fvar(17) > 0
trigger1   = fvar(19) = 0           ;回復停止状態でない
trigger1   = var(19) = 1            ;メタ世界展開中
fvar(17)   = -1.4
ignorehitpause=1

[State -2];メタ世界展開解除
type       = Varset
triggerall = stateno != [2900,2940]
triggerall = var(19)  = 1
trigger1   = fvar(17) <= 0           ;メタゲージが０
var(19)    = 0
ignorehitpause=1

[State -2];メタ返し判定解除
type       = Varset
triggerall = stateno != [2900,2940]
trigger1   = var(21) != 0
var(21)    = 0
ignorehitpause=1

[State -2];メタ世界展開中決着判定
type       = Varset
triggerall = roundstate >= 3
trigger1   = var(19) = 1
fvar(39)   = 1
ignorehitpause=1

;-------------------------------------------------[上限設定]

[State -2, 変数] ;霊力 最低値設定
Type     = VarSet
Trigger1 = Fvar(17) < 0
fvar(17) = 0
IgnoreHitPause = 1

[State -2, 変数] ;霊力 最大値設定
Type     = VarSet
Trigger1 = Fvar(17) > 680
fvar(17) = 680
IgnoreHitPause = 1






;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 特殊やられ対応
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;---------------------------------
;右代宮縁寿「投げ弾き」対応ステート

[State -2]
type       = PlaySnd
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
trigger1   = stateno = 2851
trigger1   = movetype = H
trigger1   = time = 1
value      = s400, 11

;---------------------------------
;右代宮縁寿「メタ返し＆メタ再反論」対応ステート

[State -2];メタ返し～カットイン（右向き）
type = Explod
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = facing = 1
anim = 19864
ID = 19864
postype = left
pos = 0,240
facing = 1
scale = 0.5,0.5
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ返し～カットイン（左向き）
type = Explod
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = facing = -1
anim = 19864
ID = 19864
postype = right
pos = 0,240
facing = -1
scale = 0.5,0.5
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ返し～ボイス
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
trigger1 = enemynear,stateno = 2910 && enemynear,time = 2
value = s3000, 4

[State -2];メタ返し～パワーゲージ消費
type = Poweradd
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
trigger1 = enemynear,stateno = 2910 && enemynear,time = 2
value = -2000

[State -2];メタ再反論～カットイン（右向き）
type = Explod
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = facing = 1
anim = 19865
ID = 19865
postype = left
pos = 0,240
facing = 1
scale = 0.5,0.5
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ再反論～カットイン（左向き）
type = Explod
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = facing = -1
anim = 19865
ID = 19865
postype = right
pos = 0,240
facing = -1
scale = 0.5,0.5
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ再反論～ボイス
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
trigger1 = enemynear,stateno = 2930 && enemynear,time = 2
value = s3000, 6

[State -2];メタ再反論～パワーゲージ消費
type = Poweradd
triggerall = numenemy
triggerall = enemynear,name = "USHIROMIYA ANGE" && enemynear,Authorname = "YU-TOHARU"
trigger1 = enemynear,stateno = 2930 && enemynear,time = 2
value = -2000



;---------------------------------


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; メタ重ねがけ防止
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;---------------------------------------------------[自作]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
trigger1   = enemy(0),name = "Rosa_Ushiromiya" && enemy(0),Authorname = "barai"
trigger1   = enemy(0),var(19) = 0
trigger2   = numenemy >= 2
trigger2   = enemy(1),name = "Rosa_Ushiromiya" && enemy(1),Authorname = "barai"
trigger2   = enemy(1),var(19) = 0
trigger3   = NumPartner = 1
trigger3   = p3name = "Rosa_Ushiromiya" && (partner,Authorname = "barai")
trigger3   = partner,var(19) = 0
trigger4   = enemy(0),name = "Chiester410" && enemy(0),Authorname = "barai"
trigger4   = enemy(0),var(19) = 0
trigger5   = numenemy >= 2
trigger5   = enemy(1),name = "Chiester410" && enemy(1),Authorname = "barai"
trigger5   = enemy(1),var(19) = 0
trigger6   = NumPartner = 1
trigger6   = p3name = "Chiester410" && (partner,Authorname = "barai")
trigger6   = partner,var(19) = 0
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中か判定
type     = Varset
triggerall = var(18) = 0
trigger1 = enemy(0),name = "Rosa_Ushiromiya" && enemy(0),Authorname = "barai"
trigger1 = (enemy(0),stateno = [2900,2940])||(enemy(0),var(19) = 1)
trigger2 = numenemy >= 2
trigger2 = enemy(1),name = "Rosa_Ushiromiya" && enemy(1),Authorname = "barai"
trigger2 = (enemy(1),stateno = [2900,2940])||(enemy(1),var(19) = 1)
trigger3 = NumPartner = 1
trigger3 = p3name = "Rosa_Ushiromiya" && partner,Authorname = "barai"
trigger3 = (partner,stateno = [2900,2940])||(partner,var(19) = 1)
trigger4 = enemy(0),name = "Chiester410" && enemy(0),Authorname = "barai"
trigger4 = enemy(0),var(19) = 1
trigger5 = numenemy >= 2
trigger5 = enemy(1),name = "Chiester410" && enemy(1),Authorname = "barai"
trigger5 = enemy(1),var(19) = 1
trigger6 = NumPartner = 1
trigger6 = p3name = "Chiester410" && (partner,Authorname = "barai")
trigger6 = (partner,stateno = [2900,2940])||(partner,var(19) = 1)
var(18)  = 1
ignorehitpause=1

;---------------------------------------------------[ゆ～とはる氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   = (enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU")&&(enemy,var(19)=0)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),var(56)=19861004&&enemy,Authorname="YU-TOHARU")&&(enemy(1),var(19)=0)
trigger3   = NumPartner
trigger3   = (partner,var(56)=19861004&&partner,Authorname="YU-TOHARU")&&(Partner,var(19)=0)
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU")&&((enemy,stateno=[2900,2940])||enemy,var(19)=1)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),var(56)=19861004&&enemy,Authorname="YU-TOHARU")&&((enemy(1),stateno=[2900,2940])||enemy(1),var(19)=1)
trigger3   = NumPartner
trigger3   = (partner,var(56)=19861004&&partner,Authorname="YU-TOHARU")&&((partner,stateno=[2900,2940])||Partner,var(19)=1)
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[baggy氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   =((enemy,name="oyashirorika"||enemy,name="TrapSatoko"||enemy,name="Furudo_Erika")&&enemy,Authorname="baggy")&&(enemy,var(19)=0)
trigger2   = numenemy >= 2
trigger2   =((enemy(1),name="oyashirorika"||enemy(1),name="TrapSatoko"||enemy(1),name="Furudo_Erika")&&enemy(1),Authorname="baggy")&&(enemy(1),var(19)=0)
trigger3   = NumPartner
trigger3   =((Partner,name="oyashirorika"||Partner,name="TrapSatoko"||Partner,name="Furudo_Erika")&&Partner,Authorname="baggy")&&(Partner,var(19)=0)
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,name="oyashirorika"||enemy,name="TrapSatoko"||enemy,name="Furudo_Erika")&&(enemy,Authorname="baggy")&&((enemy,stateno=[2900,2940])||enemy,var(19)=1)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),name="oyashirorika"||enemy(1),name="TrapSatoko"||enemy(1),name="Furudo_Erika")&&(enemy(1),Authorname="baggy")&&((enemy(1),stateno=[2900,2940])||enemy(1),var(19)=1)
trigger3   = NumPartner
trigger3   = (Partner,name="oyashirorika"||Partner,name="TrapSatoko"||Partner,name="Furudo_Erika")&&(Partner,Authorname="baggy")&&((Partner,stateno=[2900,2940])||Partner,var(19)=1)
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[Boomer氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   =(enemy,name="BATTLER USHIROMIYA"||enemy,name="LUCIFER"||enemy,name="Ronove"||enemy,name="BEATRICE"||enemy,name="VIRGILIA")&&enemy,Authorname="Boomer"&&enemy,Var(39)=0
trigger2   = numenemy >= 2
trigger2   =(enemy(1),name="BATTLER USHIROMIYA"||enemy(1),name="LUCIFER"||enemy(1),name="Ronove"||enemy(1),name="BEATRICE"||enemy(1),name="VIRGILIA")&&enemy(1),Authorname="Boomer"&&enemy(1),Var(39)=0
trigger3   = NumPartner
trigger3   =(partner,name="BATTLER USHIROMIYA"||partner,name="LUCIFER"||partner,name="Ronove"||partner,name="BEATRICE"||partner,name="VIRGILIA")&&partner,Authorname="Boomer"&&partner,Var(39)=0
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,name="BATTLER USHIROMIYA"||enemy,name="LUCIFER"||enemy,name="Ronove"||enemy,name="BEATRICE"||enemy,name="VIRGILIA")&&enemy,Authorname="Boomer"&&((enemy,stateno=[7500,7560])||enemy,var(39)>=1)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),name="BATTLER USHIROMIYA"||enemy(1),name="LUCIFER"||enemy(1),name="Ronove"||enemy(1),name="BEATRICE"||enemy(1),name="VIRGILIA")&&enemy(1),Authorname="Boomer"&&((enemy(1),stateno=[7500,7560])||enemy(1),var(39)>=1)
trigger3   = NumPartner
trigger3   = (partner,name="BATTLER USHIROMIYA"||partner,name="LUCIFER"||partner,name="Ronove"||partner,name="BEATRICE"||partner,name="VIRGILIA")&&partner,Authorname="Boomer"&&((partner,stateno=[7500,7560])||partner,var(39)>=1)
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[SXVector氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   =((enemy,name="EvaBeatrice"||enemy,name="Kanon"||enemy,name="Shannon")&&enemy,Authorname="SXVector"&&enemy,numhelper(9200)=0)
trigger2   = numenemy >= 2
trigger2   =((enemy(1),name="EvaBeatrice"||enemy(1),name="Kanon"||enemy(1),name="Shannon")&&enemy(1),Authorname="SXVector"&&enemy(1),numhelper(9200)=0)
trigger3   = NumPartner
trigger3   =((Partner,name="EvaBeatrice"||Partner,name="Kanon"||Partner,name="Shannon")&&Partner,Authorname="SXVector"&&Partner,numhelper(9200)=0)
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,name="EvaBeatrice"||enemy,name="Kanon"||enemy,name="Shannon")&&enemy,Authorname="SXVector"&&((enemy,stateno=[2000,2010])||enemy,numhelper(9200)>=1)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),name="EvaBeatrice"||enemy(1),name="Kanon"||enemy(1),name="Shannon")&&enemy(1),Authorname="SXVector"&&((enemy(1),stateno=[2000,2010])||enemy(1),numhelper(9200)>=1)
trigger3   = NumPartner
trigger3   = (Partner,name="EvaBeatrice"||Partner,name="Kanon"||Partner,name="Shannon")&&Partner,Authorname="SXVector"&&((Partner,stateno=[2000,2010])||Partner,numhelper(9200)>=1)
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[トキィ氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   =(enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,var(19)=0)
trigger2   = numenemy >= 2
trigger2   =(enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),var(19)=0)
trigger3   = NumPartner
trigger3   =(Partner,name="Lucifer"&&Partner,Authorname="Tokey"&&Partner,var(19)=0)
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,name="Lucifer"&&enemy,Authorname="Tokey")&&((enemy,stateno=[2900,2940])||enemy,var(19)=1)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey")&&((enemy(1),stateno=[2900,2940])||enemy(1),var(19)=1)
trigger3   = NumPartner
trigger3   = (partner,name="Lucifer"&&partner,Authorname="Tokey")&&((partner,stateno=[2900,2940])||partner,var(19)=1)
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[シロト氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   =(enemy,name="Dlanor A. Knox"&&enemy,Authorname="Shiroto"&&enemy,fvar(11)=0)
trigger2   = numenemy >= 2
trigger2   =(enemy(1),name="Dlanor A. Knox"&&enemy(1),Authorname="Shiroto"&&enemy(1),fvar(11)=0)
trigger3   = NumPartner
trigger3   =(Partner,name="Dlanor A. Knox"&&Partner,Authorname="Shiroto"&&Partner,fvar(11)=0)
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,name="Dlanor A. Knox"&&enemy,Authorname="Shiroto")&&((enemy,stateno=[2900,2940])||enemy,fvar(11)>0)
trigger2   = numenemy >= 2
trigger2   = (enemy(1),name="Dlanor A. Knox"&&enemy,Authorname="Shiroto")&&((enemy(1),stateno=[2900,2940])||enemy(1),fvar(11)>0)
trigger3   = NumPartner
trigger3   = (partner,name="Dlanor A. Knox"&&enemy,Authorname="Shiroto")&&((partner,stateno=[2900,2940])||partner,fvar(11)>0)
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[flowrallia氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   =(enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&((enemy,var(7)!=[1,2])||(enemy,stateno!=[3000,3004])))
trigger2   = numenemy >= 2
trigger2   =(enemy(1),AuthorName="flowrallia"&&enemy(1),var(56)=19861004&&((enemy(1),var(7)!=[1,2])||(enemy(1),stateno!=[3000,3004])))
trigger3   = NumPartner
trigger3   =(Partner,AuthorName="flowrallia"&&Partner,var(56)=19861004&&((Partner,var(7)!=[1,2])||(Partner,stateno!=[3000,3004])))
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = (enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&((enemy,var(7)=[1,2])||(enemy,stateno=[3000,3004])))
trigger2   = numenemy >= 2
trigger2   = (enemy(1),AuthorName="flowrallia"&&enemy(1),var(56)=19861004&&((enemy(1),var(7)=[1,2])||(enemy(1),stateno=[3000,3004])))
trigger3   = NumPartner
trigger3   = (Partner,AuthorName="flowrallia"&&Partner,var(56)=19861004&&((Partner,var(7)=[1,2])||(Partner,stateno=[3000,3004])))
var(18)    = 1
ignorehitpause=1

;---------------------------------------------------[my100yen氏]

[State -2];自分以外がメタ世界展開中か判定～解除
type       = Varset
triggerall = var(18) = 1
Trigger1   = NumEnemy
trigger1   = enemy,Authorname="my100yen"&&enemy,name="Lam Bat"&&enemy,var(19)=0
trigger2   = numenemy >= 2
trigger2   = enemy(1),Authorname="my100yen"&&enemy(1),name="Lam Bat"&&enemy(1),var(19)=0
trigger3   = NumPartner
trigger3   = Partner,Authorname="my100yen"&&Partner,name="Lam Bat"&&Partner,var(19)=0
var(18)    = 0
ignorehitpause=1

[State -2];自分以外がメタ世界展開中
type       = Varset
triggerall = var(18) = 0
Trigger1   = NumEnemy
trigger1   = enemy,Authorname="my100yen"&&enemy,name="Lam Bat"&&((enemy,stateno=[2900,2940])||enemy,var(19)=1)
trigger2   = numenemy >= 2
trigger2   = enemy(1),Authorname="my100yen"&&enemy(1),name="Lam Bat"&&((enemy(1),stateno=[2900,2940])||enemy(1),var(19)=1)
trigger3   = NumPartner
trigger3   = Partner,Authorname="my100yen"&&Partner,name="Lam Bat"&&((Partner,stateno=[2900,2940])||Partner,var(19)=1)
var(18)    = 1
ignorehitpause=1




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; メタ制御
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[state ];メタ返し＆メタ再反論～パワーゲージ消費×2
type=Poweradd
triggerall=alive&&!numexplod(19864)&&!numexplod(19865)
trigger1=numenemy&&!numpartner
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
value=-2000
ignorehitpause=1

[state ];メタ返し～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s3000, 4
ignorehitpause=1

[state ];メタ返し～カットイン（右向き）
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=-1
anim=19864
ID=19864
postype=left
pos=0,240
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ];メタ返し～カットイン（左向き）
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=1
anim=19864
ID=19864
postype=right
pos=0,240
facing=-1
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ];メタ再反論～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s405,1
ignorehitpause=1


[state ];メタ再反論～カットイン（右向き）
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=-1
anim=19865
ID=19865
postype=left
pos=0,240
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ];メタ再反論～カットイン（左向き）
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=1
anim=19865
ID=19865
postype=right
pos=0,240
facing=-1
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;---------------------------------
;桜座 & シエスタ410「メタ返し＆メタ再反論」対応ステート


[State -2, メタ反論パワー処理]
type       = Poweradd
triggerAll = (Alive) && (!NumExplod(19864)) && (!NumExplod(19865))
trigger1   = (numenemy)&&(!numpartner)
Trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno=2910||enemy,Stateno=2930)&&(enemy,time=2)
trigger2   = (numenemy)&&(numpartner)
Trigger2   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger2   = (enemy,stateno=2910||enemy,Stateno=2930)&&(enemy,time=2)
Trigger2   = (ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3   = (numenemy>=2)&&(!numpartner)
trigger3   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger3   = (enemy(1),stateno=2910||enemy(1),stateno=2930)&&(enemy(1),time=2)
trigger4   = (numenemy>=2)&&(numpartner)
trigger4   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
Trigger4   = (enemy(1),stateno=2910||enemy(1),stateno=2930)&&(enemy(1),time=2)&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
value      = -1*(floor(PowerMax)/5)*2
ignorehitpause=1

[State -2];メタ返し～ボイス
type       = PlaySnd
TriggerAll = (Alive) && (!NumExplod(19864))
trigger1   = NumEnemy
trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno = 2910)&&(enemy,time=2)
trigger2   = NumEnemy>=2
trigger2   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger2   = (enemy(1),stateno = 2910)&&(enemy(1),time=2)&&(enemy(1),facing=-1)
value      = s3000, 4

[State -2];メタ返し～カットイン（右向き）
type       = Explod
triggerAll = (Alive) && (!NumExplod(19864))
trigger1   = NumEnemy
trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno = 2910)&&(enemy,time=2)&&(enemy,facing=-1)
trigger2   = NumEnemy>=2
trigger2   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger2   = (enemy(1),stateno = 2910)&&(enemy(1),time=2)&&(enemy(1),facing=-1)
anim       = 19864
ID         = 19864
postype    = left
pos        = 0,240
facing     = 1
scale      = 0.5, 0.5
ownpal     = 1
bindtime   = -1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999
ignorehitpause=1

[State -2];メタ返し～カットイン（左向き）
type       = Explod
triggerAll = (Alive) && (!NumExplod(19864))
trigger1   = NumEnemy
trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno = 2910)&&(enemy,time=2)&&(enemy,facing=1)
trigger2   = NumEnemy>=2
trigger2   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger2   = (enemy(1),stateno = 2910)&&(enemy(1),time=2)&&(enemy(1),facing=1)
anim       = 19864
ID         = 19864
postype    = right
pos        = 0,240
facing     = -1
scale      = 0.5, 0.5
ownpal     = 1
bindtime   = -1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999
ignorehitpause=1


[State -2];メタ再反論～ボイス
type       = PlaySnd
TriggerAll = (Alive) && (!NumExplod(19865))
trigger1   = NumEnemy
trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno = 2930)&&(enemy,time=2)
trigger2   = NumEnemy>=2
trigger2   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger2   = (enemy(1),stateno = 2930)&&(enemy(1),time=2)&&(enemy(1),facing=-1)
value      = s3000, 6

[State -2];メタ返し～カットイン（右向き）
type       = Explod
triggerAll = (Alive) && (!NumExplod(19865))
trigger1   = NumEnemy
trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno = 2930)&&(enemy,time=2)&&(enemy,facing=-1)
trigger2   = NumEnemy>=2
trigger2   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger2   = (enemy(1),stateno = 2930)&&(enemy(1),time=2)&&(enemy(1),facing=-1)
anim       = 19865
ID         = 19865
postype    = left
pos        = 0,240
facing     = 1
scale      = 0.5, 0.5
ownpal     = 1
bindtime   = -1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999
ignorehitpause=1

[State -2];メタ返し～カットイン（左向き）
type       = Explod
triggerAll = (Alive) && (!NumExplod(19865))
trigger1   = NumEnemy
trigger1   = ((enemy,name="Rosa_Ushiromiya")||((enemy,name="Chiester410")))&&(enemy,Authorname = "barai")
trigger1   = (enemy,stateno = 2930)&&(enemy,time=2)&&(enemy,facing=1)
trigger2   = NumEnemy>=2
trigger2   = ((enemy(1),name="Rosa_Ushiromiya")||((enemy(1),name="Chiester410")))&&(enemy(1),Authorname = "barai")
trigger2   = (enemy(1),stateno = 2930)&&(enemy(1),time=2)&&(enemy(1),facing=1)
anim       = 19865
ID         = 19865
postype    = right
pos        = 0,240
facing     = -1
scale      = 0.5, 0.5
ownpal     = 1
bindtime   = -1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999
ignorehitpause=1


;ラムダデルタ＆右代宮戦人「メタ返し＆メタ再反論」対応ステート
[state ]
type=Poweradd
triggerall=alive&&!numexplod(19864)&&!numexplod(19865)
trigger1=numenemy&&!numpartner
trigger1=enemy,Authorname="my100yen"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,Authorname="my100yen"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),Authorname="my100yen"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),Authorname="my100yen"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
value=-1000
ignorehitpause=1

[state ]
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,Authorname="my100yen"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),Authorname="my100yen"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s3000, 4
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,Authorname="my100yen"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),Authorname="my100yen"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=-1
anim=19864
ID=19864
postype=left
pos=-80,270
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,Authorname="my100yen"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),Authorname="my100yen"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=1
anim=19864
ID=19864
postype=right
pos=80,270
facing=-1
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,Authorname="my100yen"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),Authorname="my100yen"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s3000, 6
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,Authorname="my100yen"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),Authorname="my100yen"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=-1
anim=19865
ID=19865
postype=left
pos=-40,240
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,Authorname="my100yen"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),Authorname="my100yen"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=1
anim=19865
ID=19865
postype=right
pos=40,240
facing=-1
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;ルシファー「メタ返し＆メタ再反論」対応ステート
[state ]
type=Poweradd
triggerall=alive&&!numexplod(19864)&&!numexplod(19865)
trigger1=numenemy&&!numpartner
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
value=-1000
ignorehitpause=1

[state ]
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s3000, 4
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=-1
anim=19864
ID=19864
postype=left
pos=-80,270
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=1
anim=19864
ID=19864
postype=right
pos=80,270
facing=-1
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s3000, 6
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=-1
anim=19865
ID=19865
postype=left
pos=-40,240
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=1
anim=19865
ID=19865
postype=right
pos=40,240
facing=-1
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;ドラノール・A・ノックス「メタ返し＆メタ再反論」対応ステート
[State ]
Type=PowerAdd
TriggerAll=Alive&&!NumExplod(19864)&&!NumExplod(19865)
Trigger1=NumEnemy&&!NumPartner
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&(Enemy,StateNo=2910||Enemy,StateNo=2930)&&Enemy,StateTime=2
Trigger2=NumEnemy>=2&&!NumPartner
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&(Enemy(1),StateNo=2910||Enemy(1),StateNo=2930)&&Enemy(1),StateTime=2
Trigger3=NumEnemy&&NumPartner
Trigger3=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&(Enemy,StateNo=2910||Enemy,StateNo=2930)&&Enemy,StateTime=2
Trigger3=ID<Partner,ID||(ID>Partner,ID&&Partner,NumExplod(19864)=0&&Partner,Numexplod(19865)=0)
Trigger4=NumEnemy>=2&&NumPartner
Trigger4=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&(Enemy(1),StateNo=2910||Enemy(1),StateNo=2930)&&Enemy(1),StateTime=2
Trigger4=ID<Partner,ID||(ID>Partner,ID&&Partner,NumExplod(19864)=0&&Partner,Numexplod(19865)=0)
Value=-(floor(PowerMax)/5)*2
ignorehitpause=1

[State ]
Type=PlaySnd
TriggerAll=Alive
Trigger1=NumEnemy&&!NumExplod(19864)
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"
Trigger1=Enemy,StateNo=2910&&Enemy,StateTime=2
Trigger2=NumEnemy>=2
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&Enemy(1),StateNo=2910&&Enemy(1),StateTime=2
Value=s3000, 4
ignorehitpause=1

[state ]
Type=Explod
Triggerall=Alive&&!NumExplod(19864)
Trigger1=NumEnemy
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&Enemy,StateNo=2910&&Enemy,StateTime=2&&Enemy,Facing=-1
Trigger2=NumEnemy>=2
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&Enemy(1),StateNo=2910&&Enemy(1),StateTime=2&&Enemy(1),Facing=-1
Anim=19864
ID=19864
Postype=left
Pos=-80,270
Scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
Type=Explod
Triggerall=Alive&&!NumExplod(19864)
Trigger1=NumEnemy
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&Enemy,StateNo=2910&&Enemy,StateTime=2&&Enemy,Facing=1
Trigger2=NumEnemy>=2
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&Enemy(1),StateNo=2910&&Enemy(1),StateTime=2&&Enemy(1),Facing=1
Anim=19864
ID=19864
Postype=right
Pos=80,270
Facing=-1
Scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[State ]
Type=PlaySnd
TriggerAll=Alive&&!NumExplod(19865)
Trigger1=NumEnemy
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&Enemy,StateNo=2930&&Enemy,StateTime=2
Trigger2=NumEnemy>=2
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&Enemy(1),StateNo=2930&&Enemy(1),StateTime=2
Value=s3000, 6
ignorehitpause=1

[state ]
Type=Explod
Triggerall=Alive&&!NumExplod(19865)
Trigger1=NumEnemy
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&Enemy,StateNo=2930&&Enemy,StateTime=2&&Enemy,Facing=-1
Trigger2=NumEnemy>=2
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&Enemy(1),StateNo=2930&&Enemy(1),StateTime=2&&Enemy(1),Facing=-1
Anim=19865
ID=19865
Postype=left
Pos=-40,240
Scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
Type=Explod
Triggerall=Alive&&!NumExplod(19865)
Trigger1=NumEnemy
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&Enemy,StateNo=2930&&Enemy,StateTime=2&&Enemy,Facing=1
Trigger2=NumEnemy>=2
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&Enemy(1),StateNo=2930&&Enemy(1),StateTime=2&&Enemy(1),Facing=1
Anim=19865
ID=19865
Postype=right
Pos=40,240
Facing=-1
Scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;オヤシロリカ＆トラップサトコ＆古戸ヱリカ「メタ返し＆メタ再反論」対応ステート
[state ]
type=Explod
trigger1=numenemy&&facing=1
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2910&&enemynear,time=2
anim=19864
ID=19864
postype=left
pos=-80,270
scale=.5,.5
ownpal=1
sprpriority=50
pausemovetime=999999999
supermovetime=999999999

[state ]
type=Explod
trigger1=numenemy&&facing=-1
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2910&&enemynear,time=2
anim=19864
ID=19864
postype=right
pos=80,270
facing=-1
scale=.5,.5
ownpal=1
sprpriority=50
pausemovetime=999999999
supermovetime=999999999

[state ]
type=PlaySnd
trigger1=numenemy
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2910&&enemynear,time=2
value=s3000, 4

[state ]
type=Poweradd
trigger1=numenemy
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2910&&enemynear,time=2
value=-1000

[state ]
type=Explod
trigger1=numenemy&&facing=1
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2930&&enemynear,time=2
anim=19865
ID=19865
postype=left
pos=-40,240
scale=.5,.5
ownpal=1
sprpriority=50
pausemovetime=999999999
supermovetime=999999999

[state ]
type=Explod
trigger1=numenemy&&facing=-1
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2930&&enemynear,time=2
anim=19865
ID=19865
postype=right
pos=40,240
facing=-1
scale=.5,.5
ownpal=1
sprpriority=50
pausemovetime=999999999
supermovetime=999999999

[state ]
type=PlaySnd
trigger1=numenemy
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2930&&enemynear,time=2
value=s3000, 6

[state ]
type=Poweradd
trigger1=numenemy
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2930&&enemynear,time=2
value=-1000

;エルザ・ラ・コンティ「メタ返し＆メタ再反論」対応ステート
[state ]
type=Poweradd
triggerall=alive&&!NumExplod(19864)&&!NumExplod(19865)&&power>=floor(PowerMax*.4)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&(enemy,stateno=3001||enemy,stateno=3003)&&enemy,time=2-(TeamSide=1)*1
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&(Enemy(1),stateno=3001||Enemy(1),stateno=3003)&&Enemy(1),time=2-(TeamSide=1)*1
value=floor(-Powermax*.4)
ignorehitpause=1

[state ]
type=PlaySnd
triggerall=alive&&!NumExplod(19864)&&!NumExplod(19865)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&enemy,stateno=3001&&enemy,time=2-(TeamSide=1)*1
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&Enemy(1),stateno=3001&&Enemy(1),time=2-(TeamSide=1)*1
value=s3000, 4
ignorehitpause=1

[state ]
type=PlaySnd
triggerall=alive&&!NumExplod(19864)&&!NumExplod(19865)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&enemy,stateno=3003&&enemy,time=2-(TeamSide=1)*1
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&Enemy(1),stateno=3003&&Enemy(1),time=2-(TeamSide=1)*1
value=s3000, 6
ignorehitpause=1

[state ]
type=Explod
triggerall=TeamSide=1&&alive&&!NumExplod(19864)&&!NumExplod(19865)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&enemy,stateno=3001&&enemy,time<=2
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&Enemy(1),stateno=3001&&Enemy(1),time<=2
anim=19864
ID=19864
postype=left
pos=-80,270
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
suermove=1
pausemovetime=100
supermovetime=100
persistent=0
ignorehitpause=1

[state ]
type=Explod
triggerall=TeamSide!=1&&alive&&!NumExplod(19864)&&!NumExplod(19865)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&enemy,stateno=3001&&enemy,time<=2
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&Enemy(1),stateno=3001&&Enemy(1),time<=2
anim=19864
ID=19864
postype=right
pos=80,270
facing=-1
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
supermove=1
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ]
type=Explod
triggerall=TeamSide=1&&alive&&!NumExplod(19864)&&!NumExplod(19865)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&enemy,stateno=3003&&enemy,time<=2
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&Enemy(1),stateno=3003&&Enemy(1),time<=2
anim=19865
ID=19865
postype=left
pos=-40,240
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
suermove=1
pausemovetime=100
supermovetime=100
persistent=0
ignorehitpause=1

[state ]
type=Explod
triggerall=TeamSide!=1&&alive&&!NumExplod(19864)&&!NumExplod(19865)
trigger1=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&enemy,stateno=3003&&enemy,time<=2
trigger2=NumEnemy=2
trigger2=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&Enemy(1),stateno=3003&&Enemy(1),time<=2
anim=19865
ID=19865
postype=right
pos=40,240
facing=-1
scale=.5,.5
ownpal=1
bindtime=-1
sprpriority=50
supermove=1
pausemovetime=100
supermovetime=100
ignorehitpause=1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; デバッグ表示
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, デバッグ表示]
Type     = DisplayToClipBoard
Trigger1 = 1
Text     = "Fvar(17)=%f, var(20)=%d, Rate:%f, 6B:%d, META=%d, "
Params   = fvar(17), var(20), fvar(0), var(4), var(19)
IgnoreHitPause = 1









[Statedef -3]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;常時監視-3ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ダメージエフェクト 管理 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -2, Helper];ダウンエフェクト
type      = Explod
Trigger1  = StateNo = 5100
trigger1  = Time = 1
Anim      = 8050
pos       = 0, 0
Scale     = 1, 1
id        = 8050
ownpal    = 1
sprpriority = 8

[State -3, 激突サウンド]
type     = PlaySnd
trigger1 = stateno = 5100
trigger1 = Time = 1
value    = s40, 3


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ボイス再生 管理 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -3, 弱ダメージ]
type       = PlaySnd
triggerAll = Alive
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(animtype) = 0
trigger1   = GetHitVar(damage) != 0
trigger1   = Random < 800
value      = s5000,0+(random%7)
channel    = 5

[State -3, 中ダメージ]
type       = PlaySnd
triggerAll = Alive
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(animtype) = 1
trigger1   = GetHitVar(damage) != 0
trigger1   = Random < 800
value      = s5001,0+(random%6)
channel    = 5

[State -3, 強ダメージ]
type       = PlaySnd
triggerAll = Alive
triggerAll = Movetype = H && stateno != [120,155]
trigger1   = GetHitVar(animtype) = [2,5]
trigger1   = GetHitVar(damage) != 0
trigger1   = Random < 800
value      = s5002,0+(random%5)
channel    = 5

[State -3, 地上受け身]
type       = PlaySnd
triggerAll = (Alive)
triggerall = Time = 1
trigger1   = stateno = 5201
value      = S5040, 2
channel    = 5

[State -2, 空中受け身]
type       = PlaySnd
triggerAll = (Alive)
triggerall = Time = 1
trigger1   = stateno = 5210
value      = S5040, 2
channel    = 5

[State -3, 起き上がり]
type       = PlaySnd
triggerAll = Alive
triggerAll = Time = 1
trigger1   = stateno=5120
trigger1   = anim = 5120
value      = s5040, 0
channel    = 5

[State -3, 起き上がり(うつ伏せ)]
type       = PlaySnd
triggerAll = Alive
triggerAll = Time = 1
trigger1   = stateno=5120
trigger1   = anim = 5120
value      = s5040, 1
channel    = 5

[State -3, 気絶ボイス]
Type       = PlaySnd
TriggerAll = Alive = 1
TriggerAll = Time = 1
Trigger1   = StateNo = 5300
Trigger2   = Anim = 5300
Value      = s5300, 0
Channel    = 1

[State -3, コンティニューボイス]
Type       = PlaySnd
TriggerAll = Alive = 1
TriggerAll = Time = 1
Trigger1   = Anim = 5500
Value      = s5500, 0 + (random%2)
Channel    = 1