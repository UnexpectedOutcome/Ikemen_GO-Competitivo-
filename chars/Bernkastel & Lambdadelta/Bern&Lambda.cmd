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
command.time = 15
command.buffer.time = 1
;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "ダブル連続突進パンチ"
command = ~D, DF, F, D, DF, F, a
time = 35

[Command]
name = "ラムダコンビネーション"
command = ~D, DF, F, D, DF, F, b
time = 35

[Command]
name = "真・ベルン拳"
command = ~D, DF, F, D, DF, F, c
time = 35

[Command]
name = "うみねこボンバー"
command = ~20$B, F, B, F, x
time = 35

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "ベルンキック"
command = ~D, DF, F, a

[Command]
name = "ラムダキック"
command = ~D, DF, F, b

[Command]
name = "ダブルキック"
command = ~D, DF, F, c

[Command]
name = "突撃パンチ(ベルン)"
command = ~D, DB, B, a

[Command]
name = "追加の突撃パンチ(ラムダ)"
command = ~D, DB, B, b

[Command]
name = "トドメのパンチ(ベルン)"
command = ~D, DB, B, c

[Command]
name = "トドメのパンチ(ラムダ)"
command = ~D, DF, F, c

[Command]
name = "ベルンミサイル/ラムダミサイル"
command = ~D, DB, B, c

[Command]
name = "ゲロカスアッパー(ベルン)"
command = ~F, D, DF, a

[Command]
name = "ボンバー(ラムダ)"
command = ~F, D, DF, b

[Command]
name = "ヘッドクラッシャーズ"
command = ~F, D, DF, c

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
name = "ab"
command = a+b
time = 1

[Command]
name = "ab"
command = y
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "bc"
command = z
time = 1

[Command]
name = "オヤシロアタック"
command = a+x
time = 1

[Command]
name = "オヤシロアタック"
command = b+x
time = 1

[Command]
name = "オヤシロアタック"
command = c+x
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x
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

[Command]
name = "DF_c"
command = /$DF,c
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
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
[Statedef -1] 
;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, うみねこボンバー]
type = ChangeState
value = 3150
triggerall = command = "うみねこボンバー"
triggerall = life <= 333
triggerall = power >= 3000 
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,410])
trigger2 = movecontact
trigger3 = (stateno = 1000) || (stateno = [1050,1060]) ||  (stateno = 1160)
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact
trigger5 = stateno = [230,235]

[State -1, ドリームキャンセル]
type       = VarSet
triggerall = command = "うみねこボンバー"
triggerall = life <= 333
triggerall = power >= 3000
triggerall = var(8) = 0
trigger1 = stateno = 3000
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
trigger2 = stateno = 3060
trigger2 = anim = 3060
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger3 = stateno = 3060
trigger3 = anim = 3061
trigger3 = AnimElemTime(3) >= 0 && AnimElemTime(16) < 0
trigger4 = stateno = 3110
trigger4 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
var(8)     = 1

;------------------------------------------------------------------------------

[State -1, 真・ベルン拳];ゲージレベル２
type = ChangeState
value = 3100
triggerall = command = "真・ベルン拳"
triggerall = power >= 2000 
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,410])
trigger2 = movecontact
trigger3 = (stateno = 1000) || (stateno = [1050,1060]) ||  (stateno = 1160)
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact
trigger5 = stateno = [230,235]

;------------------------------------------------------------------------------

[State -1, ラムダコンビネーション];ゲージレベル１
type = ChangeState
value = 3050
triggerall = command = "ラムダコンビネーション"
triggerall = power >= 1000 
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,410])
trigger2 = movecontact
trigger3 = (stateno = 1000) || (stateno = [1050,1060]) ||  (stateno = 1160)
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact
trigger5 = stateno = [230,235]

;------------------------------------------------------------------------------

[State -1, ダブル連続突進パンチ];ゲージレベル１
type = ChangeState
value = 3000
triggerall = command = "ダブル連続突進パンチ"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,410])
trigger2 = movecontact
trigger3 = (stateno = 1000) || (stateno = [1050,1060]) ||  (stateno = 1160)
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact
trigger5 = stateno = [230,235]

;==============================================================================
; 必殺技
;==============================================================================

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,410])
trigger2 = movecontact
trigger3 = stateno = [230,235]
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, ゲロカスアッパー(ベルン)]
type = ChangeState
value = 1150
triggerall = command = "ゲロカスアッパー(ベルン)"
trigger1 = var(1)

[State -1, ボンバー(ラムダ)]
type = ChangeState
value = 1160
triggerall = command = "ボンバー(ラムダ)"
trigger1 = var(1)

[State -1, ヘッドクラッシャーズ]
type = ChangeState
value = 1170
triggerall = command = "ヘッドクラッシャーズ"
trigger1 = var(1)

;------------------------------------------------------------------------------

[State -1, ダブルキック]
type = ChangeState
value = 1020
triggerall = command = "ダブルキック"
trigger1 = var(1)

[State -1, ラムダキック]
type = ChangeState
value = 1010
triggerall = command = "ラムダキック"
trigger1 = var(1)

[State -1, ベルンキック]
type = ChangeState
value = 1000
triggerall = command = "ベルンキック"
trigger1 = var(1)

;------------------------------------------------------------------------------

[State -1, 突撃パンチ(ベルン)]
type = ChangeState
value = 1050
triggerall = command = "突撃パンチ(ベルン)"
trigger1 = var(1)

[State -1, 追加の突撃パンチ(ラムダ)]
type = ChangeState
value = 1060
triggerall = stateno = 1050
triggerall = var(0) = 1
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(4) < 9

[State -1, トドメのパンチ(ベルン)]
type = ChangeState
value = 1070
triggerall = stateno = 1060
triggerall = var(0) = 1
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(4) < 9

[State -1, トドメのパンチ(ラムダ)]
type = ChangeState
value = 1080
triggerall = stateno = 1060
triggerall = var(0) = 2
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(4) < 9

;------------------------------------------------------------------------------

[State -1, ベルンミサイル]
type = ChangeState
value = 1100
triggerall = command = "ベルンミサイル/ラムダミサイル"
trigger1 = var(1)

[State -1, ラムダミサイル]
type = ChangeState
value = 1110
triggerall = command = "ベルンミサイル/ラムダミサイル"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = AnimElemTime(2) > 0

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

[State -1, 投げ]
type = ChangeState
value = 800
triggerall = command = "ab"
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl
trigger2 = stateno = [230,235]

;------------------------------------------------------------------------------

[State -1, アルティメットアタック]
type = ChangeState
value = 700
triggerall = var(5) = 31
triggerall = command = "bc"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl
trigger2 = stateno = [230,235]

[State -1, GCアルティメット]
type       = ChangeState
value      = 705
triggerall = var(5) = 31
triggerall = command = "bc"
triggerall = statetype != A
triggerall = statetype != L
triggerAll = power >= 1000
trigger1   = stateno = 150
trigger2   = stateno = 151
trigger3   = stateno = 152
trigger4   = stateno = 153

[State -1, オヤシロアタック]
type = ChangeState
value = 750
triggerall = command = "オヤシロアタック"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = stateno = [5000,5011]
trigger2 = statetype = A
trigger2 = stateno = [5020,5030]

;[State -1, オヤシロアタックtest]
;type = ChangeState
;value = 750
;triggerall = command = "オヤシロアタック"
;trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ラムダタックル]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 200 || stateno = 210 || (stateno = [400,410])
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact

[State -1, ベルンアッパー]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = (stateno = 200) || (stateno = 210) || (stateno = [400,410])
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = AnimElemTime(6) < 0
trigger4 = movecontact

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱攻撃]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 200
trigger3 = time > 8
trigger4 = stateno = 200 || stateno = 400
trigger4 = movecontact

[State -1, 立ち中攻撃]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 200 || stateno = 400
trigger3 = movecontact

[State -1, 立ち強攻撃]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 200 || stateno = 210 || (stateno = [400,410])
trigger3 = movecontact

[State -1, ステップジャンプ]
type = ChangeState
value = 240
trigger1 = command = "holddown"
trigger1 = command = "x"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl
trigger2 = command = "holddown"
trigger2 = command = "x"
trigger2 = stateno = [230,235]
trigger3 = command = "holdup"
trigger3 = stateno = [230,235]

[State -1, バックステップ]
type = ChangeState
value = 235
triggerall = command = "holdback"
triggerall = command = "x"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl

[State -1, ステップ]
type = ChangeState
value = 230
triggerall = command = "x"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl

[State -1, バックステップキャンセル]
type = ChangeState
value = 235
triggerall = command = "holdback"
triggerall = command = "x"
triggerall = statetype != A
triggerall = statetype != L
triggerall = power >= 1000
trigger1 = (stateno = [200,210]) || (stateno = 225) || (stateno = [400,410])
trigger1 = movecontact
trigger2 = (stateno = 1000) || (stateno = [1050,1060]) || (stateno = 1160)
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = AnimElemTime(6) < 0
trigger3 = movecontact

[State -1, ステップキャンセル]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = statetype != A
triggerall = statetype != L
triggerall = power >= 1000
trigger1 = (stateno = [200,210]) || (stateno = 225) || (stateno = [400,410])
trigger1 = movecontact
trigger2 = (stateno = 1000) || (stateno = [1050,1060]) || (stateno = 1160)
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = AnimElemTime(6) < 0
trigger3 = movecontact

[State -1, GCステップ]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = statetype != A
triggerall = statetype != L
triggerall = power >= 1000
trigger1   = stateno = 150
trigger2   = stateno = 151
trigger3   = stateno = 152
trigger4   = stateno = 153

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = statetype != L
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱攻撃]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 400
trigger3 = time > 8
trigger4 = stateno = 200 || stateno = 400
trigger4 = movecontact

[State -1, しゃがみ中攻撃]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 200 || stateno = 400
trigger3 = movecontact

[State -1, しゃがみ強攻撃]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [230,235]
trigger3 = stateno = 200 || stateno = 210 || (stateno = [400,410])
trigger3 = movecontact

;------------------------------------------------------------------------------

[State -1, ジャンプ弱攻撃]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = AnimElemTime(2) > 0
trigger3 = stateno = 600
trigger3 = AnimElemTime(3) > 0

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = AnimElemTime(2) > 0
trigger3 = stateno = 600
trigger3 = AnimElemTime(3) > 0

[State -1, ジャンプ強攻撃]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = AnimElemTime(2) > 0
trigger3 = stateno = 600
trigger3 = AnimElemTime(3) > 0

[State -1, クイック下降]
type = ChangeState
value = 630
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = AnimElemTime(2) > 0

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
