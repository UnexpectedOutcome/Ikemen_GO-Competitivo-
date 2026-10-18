;------------------------------------------------------------------------------
;お市
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
;-| 一撃BASARA技 |-----------------------------------------------------------------
[Command]
name = "至れ死の淵"
command = ~D, DB, B, DB, D, DF, F, z
time = 40

;------------------------------------------------------------------------------
;-| BASARA技 |-----------------------------------------------------------------
[Command]
name = "染れ緋の雨"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "集え根の夢"
command = ~D, DB, B, D, DB, B, z
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "syouryu_x"
command = ~F, D, DF, x

[Command]
name = "tatumaki_x"
command = ~D, DB, B, x

[Command]
name = "tatumaki_y"
command = ~D, DB, B, y

[Command]
name = "tatumaki_z"
command = ~D, DB, B, z

[Command]
name = "hadou_y"
command = ~D, DF, F, y

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

[Command]
name = "慣性ジャンプ"
command = U, F
time = 10

[Command]
name = "ハイジャンプ"
command = D, U
time = 10

[Command]
name = "ハイジャンプ"
command = D, UF
time = 10

[Command]
name = "ハイジャンプ"
command = D, UB
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
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
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "up"
command = U
time = 1

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

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 一撃BASARA技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 至れ死の淵]
type = ChangeState
value = 4000
triggerall = command = "至れ死の淵"
triggerall = power >= 5000
triggerall = statetype != A
triggerall = var(6) > 1
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 420 && movecontact
trigger6 = (stateno = 300 && (Time = [29,53]))

;==============================================================================
; BASARA技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 染れ緋の雨]
type = ChangeState
value = 3000
triggerall = command = "染れ緋の雨"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact
trigger8 = stateno = 300 && movecontact

;------------------------------------------------------------------------------

[State -1, 集え根の夢]
type = ChangeState
value = 3100
triggerall = command = "集え根の夢"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact
trigger8 = stateno = 300 && movecontact

;==============================================================================
; 必殺技
;==============================================================================

[State -1, 拒め緋の渦・陰]
type = ChangeState
value = 1000
triggerall = command = "tatumaki_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact
trigger8 = stateno = 300 && movecontact

;------------------------------------------------------------------------------

[State -1, 拒め緋の渦・陽]
type = ChangeState
value = 1010
triggerall = command = "hadou_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact
trigger8 = stateno = 300 && movecontact

;------------------------------------------------------------------------------

[State -1, 惑え緋の羽・陰]
type = ChangeState
value = 1050
triggerall = command = "tatumaki_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;------------------------------------------------------------------------------

[State -1, 惑え緋の羽・陽]
type = ChangeState
value = 1060
triggerall = command = "hadou_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;------------------------------------------------------------------------------

[State -1, 開け根の国]
type = ChangeState
value = 1200
triggerall = command = "syouryu_x"
trigger1 = FVar(30) >=600
trigger1 = statetype != A
trigger1 = ctrl

;==============================================================================
; 移動関連
;==============================================================================

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

[State -1, 空中ダッシュ]
type = ChangeState
value = 110
trigger1 = var(12) != 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, 空中バックステップ]
type = ChangeState
value = 115
trigger1 = var(12) != 1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;ブーストダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 325
triggerall = command = "holdfwd"
trigger1 = stateno = 321 && movehit

;一撃BASARA発動準備
[State -1, Taunt]
type = ChangeState
value = 3999
triggerall = command = "b"
triggerall = power >= 5000
triggerall = var(6) = 0
trigger1 = statetype != A
trigger1 = ctrl

"ハイジャンプ"
[State -1, ハイジャンプ]
type = ChangeState
value = 41
trigger1 = command = "ハイジャンプ"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊攻撃技
;==============================================================================
;投げ技
[State -1, 投げ]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;吹き飛ばし攻撃
[State -1, 吹き飛ばし攻撃]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1, ガードキャンセル攻撃]
type = ChangeState
value = 330
triggerall = power >= 1000
triggerall = command = "y"
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
エリアルスパイク
[State -1, エリアルスパイク]
type = ChangeState
value = 700
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(14) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
;エリアル攻撃
[State -1, エリアル攻撃]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;中段攻撃
[State -1, ６中]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact

;==============================================================================
; 通常攻撃技
;==============================================================================

[State -1, ５弱]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 325

[State -1, ５中]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = (stateno = 300 && (Time = [29,53]))
trigger5 = stateno = 325

[State -1, ５強]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = (stateno = 300 && (Time = [29,53]))
trigger7 = stateno = 325

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ２弱]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 325

[State -1, ２中]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = (stateno = 300 && (Time = [29,53]))
trigger6 = stateno = 325

[State -1, ２強]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = (stateno = 300 && (Time = [29,53]))
trigger8 = stateno = 325

;------------------------------------------------------------------------------

[State -1, Ｊ弱]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = var(14) = 1
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 325

[State -1, Ｊ中]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = var(14) = 1
trigger3 = stateno = 620 && movecontact
trigger4 = stateno = 325

[State -1, Ｊ強]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = var(14) = 1
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 325
