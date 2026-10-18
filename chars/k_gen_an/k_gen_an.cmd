;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;==============================================================================
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "dappi1"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "mukuro-s1"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, b

[Command]
name = "muzihi"
command = ~D, DB, B, z

[Command]
name = "tuibami"
command = ~D, DF, F, z

[Command]
name = "tume"
command = ~D, DB, B, a

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "JIG-AI"
command = ~B, F, D, s

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "kirikae" ;必須コマンド名
command = b+z
time = 1

[Command]
name = "nage" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "utusemi" ;必須コマンド名
command = z+a
time = 1



;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c
[Command]
name = "hold_z"
command = /z
[Command]
name = "z-hanasu"
command = ~z
[Command]
name = "hold_x"
command = /x
[Command]
name = "x-hanasu"
command = ~x
[Command]
name = "hold_y"
command = /y
[Command]
name = "y-hanasu"
command = ~y
[Command]
name = "hold_b"
command = /b
[Command]
name = "b-hanasu"
command = ~b
;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

;[State -1, スマッシュカンフーアッパー];ゲージレベル１
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"  ;「SmashKFUpper」の名前のコマンドが入力されたら
;triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
;triggerall = statetype != A            ;「空中」ではない時
;trigger1 = ctrl                        ;コントロールが可能な場合
;trigger2 = hitdefattr = SC, NA, SA, HA ;自分の「HitDefの一部の攻撃属性」が出ている時（テンプレート参照）
;trigger2 = stateno != [3050,4000)      ;現在のステートが「3050以上、3100未満」の間のどれかな場合
;trigger2 = movecontact                 ;攻撃が相手に触れている時（ヒット・ガード両方）
;trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加
;------------------------------------------------------------------------------

[State -1, 三烈カンフー突き手];ゲージレベル2
type = ChangeState
value = 3000
triggerall =var(10) = 1
triggerall = command = "TripleKFPalm"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4000)
trigger2 = movecontact


[State -1, 三烈カンフー突き手];ゲージレベル1
type = ChangeState
value = 3200
triggerall =var(11) = 1
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != [3000,4000)
trigger2 = movecontact

[State -1, 三烈カンフー突き手];ゲージレベル１
type = ChangeState
value = 3100
triggerall =var(10) = 1
triggerall = command = "dappi1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4000)
trigger2 = movecontact


[State -1, 三烈カンフー突き手];ゲージレベル１
type = ChangeState
value = 3900
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall =var(12) = 1
triggerall = command = "mukuro-s1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4000)
trigger2 = movecontact

[State -1, 三烈カンフー突き手];ゲージレベル１
type = ChangeState
value = 8500
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 1
triggerall =var(12) = 1
triggerall = command = "mukuro-s1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4000)
trigger2 = movecontact
;trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 自害]
type = ChangeState
value = 4444
triggerall = command = "JIG-AI"
trigger1 = statetype != A
trigger1 = var(1)
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
triggerall =var(10) = 1
triggerall =var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
triggerall =var(10) = 0
triggerall =var(11) = 1
trigger1 = statetype != A
trigger1 = ctrl
var(1) = 1
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, 速いカンフーアッパー];ゲージ消費
type = ChangeState
value = 1120
triggerall = command = "upper_xy"
trigger1 = var(1)

[State -1, 弱カンフーアッパー]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
trigger1 = var(1)

[State -1, 強カンフーアッパー]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
trigger1 = var(1)
;------------------------------------------------------------------------------
[State -1, 速いカンフーニー]
type = ChangeState
value = 1070
triggerall =var(11) = 1
triggerall = command = "QCB_xy"
trigger1 = var(1) ;上で設定した変数が有効になった時

[State -1, 弱カンフーニー]
type = ChangeState
value = 1050
triggerall =var(11) = 1
triggerall = command = "QCB_x"
trigger1 = var(1)

[State -1, 強カンフーニー]
type = ChangeState
value = 1060
triggerall =var(11) = 1
triggerall = command = "QCB_y"
trigger1 = var(1)

[State -1, 強カンフーブロー]
type = ChangeState
value = 2000
triggerall = command = "tume"
trigger1 = var(1)




;------------------------------------------------------------------------------

[State -1, 速いカンフー突き手]
type = ChangeState
value = 1020
triggerall =var(10) = 1
triggerall = NumHelper(1003) = 0
triggerall = command = "QCF_xy"
trigger1 = var(1)

[State -1, 弱カンフー突き手]
type = ChangeState
value = 1000
triggerall =var(10) = 1
triggerall = NumHelper(1003) = 0
triggerall = command = "QCF_x"
trigger1 = var(1)

[State -1, 強カンフー突き手]
type = ChangeState
value = 1010
triggerall =var(10) = 1
triggerall = NumHelper(1003) = 0
triggerall = command = "QCF_y"
trigger1 = var(1)
;------------------------------------------------------------------------------

[State -1, 速いカンフー突き手]
type = ChangeState
value = 1040
triggerall =var(11) = 1
triggerall = NumProjID(1003) = 0
triggerall = command = "QCF_xy"
trigger1 = var(1)

[State -1, 弱カンフー突き手]
type = ChangeState
value = 1030
triggerall =var(11) = 1
triggerall = NumProjID(1003) = 0
triggerall = command = "QCF_x"
trigger1 = var(1)

[State -1, 強カンフー突き手]
type = ChangeState
value = 1035
triggerall =var(11) = 1
triggerall = NumProjID(1003) = 0
triggerall = command = "QCF_y"
trigger1 = var(1)
;------------------------------------------------------------------------------

[State -1, 速いカンフーブロー];
type = ChangeState
value = 1220
triggerall =var(10) = 1
triggerall = command = "QCB_xy"
trigger1 = var(1)

[State -1, 弱カンフーブロー]
type = ChangeState
value = 1200
triggerall =var(10) = 1
triggerall = command = "QCB_x"
trigger1 = var(1)

[State -1, 強カンフーブロー]
type = ChangeState
value = 1210
triggerall =var(10) = 1
triggerall = command = "QCB_y"
trigger1 = var(1)


[State -1, 強カンフーブロー]
type = ChangeState
value = 902
triggerall = NumHelper(826) = 1
triggerall = var(12) = 1
triggerall = command = "muzihi"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl

[State -1, 強カンフーブロー]
type = ChangeState
value = 880
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "muzihi"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, モード切替]
type = ChangeState
value = 6666
triggerall = var(12) = 1
triggerall = var(59) = 0
triggerall = command = "kirikae"
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype != A

[State -1, モード切替]
type = ChangeState
value = 6667
triggerall = var(12) = 1
triggerall = var(59) = 1
triggerall = command = "kirikae"
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype != A
;------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, デュクシ];投げ
type = ChangeState
value = 800
triggerall = command = "nage"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdfwd"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "holdback"
trigger3 = (p2statetype = S) || (p2statetype = C)
trigger3 = p2movetype != H

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = command = "hold_c"
triggerall = power < powermax ;ゲージが満タンの時は出せない
trigger1 = statetype != A && ctrl
[State -1, シールド];ちょっとこ丸が追加した技
type = ChangeState
value = 802
triggerall =var(12) = 0
triggerall = command = "z"
triggerall = statetype != A
triggerall = statetype = S
trigger1 = command = "holdback"
trigger1 = ctrl
[State -1, シールド];ちょっとこ丸が追加した技
type = ChangeState
value = 801
triggerall =var(12) = 0
triggerall = command = "z"
triggerall = statetype != A
triggerall = statetype = S
trigger1 = ctrl
trigger2 = command = "holdfwd"
trigger2 = ctrl

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ち弱パンチ];ダッシュ
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100
[State -1, 立ち弱パンチ];ダッシュ
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100
[State -1, 立ち弱パンチ];ダッシュ
type = ChangeState
value = 431
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100
[State -1, 立ち弱パンチ];ダッシュ
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = P2bodydist X <= 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 8

[State -1, 立ち弱パンチ];遠距離
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = P2bodydist X >= 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 8
[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall =var(10) = 1
triggerall = command = "y"
triggerall = P2bodydist X <= 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 200) || (stateno = 201) || (stateno = 230)
trigger3 = (time > 9) || (movecontact && time > 5)

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall =var(11) = 1
triggerall = command = "y"
triggerall = P2bodydist X <= 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, 立ち強パンチ];遠距離
type = ChangeState
value = 211
triggerall =var(10) = 1
triggerall = command = "y"
triggerall = P2bodydist X >= 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 201) && time > 5
trigger3 = (stateno = 200) || (stateno = 201) || (stateno = 230)
trigger3 = (time > 9) || (movecontact && time > 5)


[State -1, 立ち強パンチ];遠距離
type = ChangeState
value = 211
triggerall =var(11) = 1
triggerall = command = "y"
triggerall = P2bodydist X >= 50
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 立ち弱キック]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, 立ち弱キック]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 8


[State -1, 立ち強キック]
type = ChangeState
value = 240
triggerall =var(10) = 1
triggerall = command = "b"
triggerall = P2bodydist X <= 70
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 201) || (stateno = 210) || (stateno = 211)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, 立ち強キック]
type = ChangeState
value = 240
triggerall =var(11) = 1
triggerall = command = "b"
triggerall = P2bodydist X <= 70
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 立ち強キック]
type = ChangeState
value = 241
triggerall =var(10) = 1
triggerall = command = "b"
triggerall = P2bodydist X >= 70
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 201) || (stateno = 210) || (stateno = 211)
trigger2 = (time > 9) || (movecontact && time > 5)


[State -1, 立ち強キック]
type = ChangeState
value = 241
triggerall =var(11) = 1
triggerall = command = "b"
triggerall = P2bodydist X >= 70
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = P2bodydist X <= 50
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = P2bodydist X >= 50
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall =var(10) = 1
triggerall = command = "y"
triggerall = P2bodydist X <= 50
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 401)|| (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall =var(11) = 1
triggerall = command = "y"
triggerall = P2bodydist X <= 50
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl



[State -1, しゃがみ強パンチ]
type = ChangeState
value = 411
triggerall =var(10) = 1
triggerall = command = "y"
triggerall = P2bodydist X >= 50
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 401) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 411
triggerall =var(11) = 1
triggerall = command = "y"
triggerall = P2bodydist X >= 50
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ弱キック]
type = ChangeState
value = 431
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 401)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強キック]
type = ChangeState
value = 441
triggerall =var(10) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 401)||(stateno = 410)||(stateno = 411)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = NumHelper(8400) = 0
triggerall =var(11) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, 突っ込み骸]
type = ChangeState
value = 900
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 1
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl

[State -1, 突っ込み骸]
type = ChangeState
value = 911
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 1
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = statetype != A 
triggerall = statetype = S
;trigger1 = ctrl
trigger1 = stateno = 901
trigger1 = (time > 25) || (movecontact && time >5 )
trigger2 = stateno = 911
trigger2 = time > 3

[State -1, 突っ込み骸]
type = ChangeState
value = 901
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 1
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl

[State -1, 突っ込み骸]
type = ChangeState
value = 840
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = statetype != A 
triggerall = statetype = C
trigger1 = ctrl
[State -1, 突っ込み骸]
type = ChangeState
value = 840
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 851
trigger2 = (time > 25) || (movecontact && time >10 )
trigger3 = stateno = 850
trigger3 = (time > 21) || (movecontact && time >10 )
[State -1, 突っ込み骸]
type = ChangeState
value = 830
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 851
trigger2 = (time > 25) || (movecontact && time >10 )
trigger3 = stateno = 850
trigger3 = (time > 21) || (movecontact && time >10 )
[State -1, 突っ込み骸]
type = ChangeState
value = 835
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 851
trigger2 = (time > 25) || (movecontact && time >10 )
trigger3 = stateno = 850
trigger3 = (time > 21) || (movecontact && time >10 )
[State -1, 突っ込み骸]
type = ChangeState
value = 850
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl
[State -1, 突っ込み骸]
type = ChangeState
value = 851
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = var(12) = 1
triggerall = command = "z"
triggerall = statetype != A 
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 850
trigger2 = (time > 21) || (movecontact && time >10 )
;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = (stateno = 825) && time > 16

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = (stateno = 825) && time > 16

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = (stateno = 825) && time > 16

[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = (stateno = 825) && time > 16

[State -1, ジャンプ骸];啄み～紫鏡
type = ChangeState
value = 855
triggerall = var(12) = 1
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = command = "muzihi"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact


[State -1, ジャンプ骸];啄み～骸
type = ChangeState
value = 825
triggerall = var(12) = 1
triggerall = NumHelper(8400) = 0
triggerall = NumHelper(826) = 0
triggerall = command = "tuibami"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact

[State -1, ジャンプ強キック]
type = ChangeState
value = 650
triggerall = var(12) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = (stateno = 825) && time > 16

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, ]
type=Explod
triggerall = TeamSide = 1
trigger1 = RoundState = 2
trigger1 = NumExplod(12344) = 0
anim=4024
pos=3,37
postype=left
sprpriority=-9999
removetime=-1
bindtime=-1
ownpal=0
ID=12344

[State -1, ]
type=Explod
triggerall = TeamSide = 2
trigger1 = RoundState = 2
trigger1 = NumExplod(12344) = 0
anim=4024
pos=-28,37
postype=right
sprpriority=-9999
removetime=-1
bindtime=-1
ownpal=0
ID=12344

[State -1, ]
type=Explod
triggerall = TeamSide = 1
trigger1 = RoundState = 2
trigger1 = NumExplod(12343) = 0
anim=4023
pos=3,37
postype=left
sprpriority=-9999
removetime=-1
bindtime=-1
ownpal=0
ID=12343

[State -1, ]
type=Explod
triggerall = TeamSide = 2
trigger1 = RoundState = 2
trigger1 = NumExplod(12343) = 0
anim=4023
pos=-28,37
postype=right
sprpriority=-9999
removetime=-1
bindtime=-1
ownpal=0
ID=12343

[State -1, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(12344) > 0
trigger1 =var(11) = 1
ID = 12343

[State -1, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(12343) > 0
trigger1 = var(10) = 1
ID = 12344
