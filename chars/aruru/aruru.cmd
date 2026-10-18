;AI

[Command]
name = "AI_1"
command = U,U
time = 0

[Command]
name = "AI_2"
command = U,D
time = 0

[Command]
name = "AI_3"
command = U,F
time = 0

[Command]
name = "AI_4"
command = U,B
time = 0

[Command]
name = "AI_5"
command = D,U
time = 0

[Command]
name = "AI_6"
command = D,D
time = 0

[Command]
name = "AI_7"
command = D,F
time = 0

[Command]
name = "AI_8"
command = D,B
time = 0

[Command]
name = "AI_9"
command = F,U
time = 0

[Command]
name = "AI_10"
command = F,D
time = 0

[Command]
name = "AI_11"
command = F,D,B
time = 0

[Command]
name = "AI_12"
command = a,a,a,a,a
time = 0

[Command]
name = "AI_13"
command = b,b,b,b,b
time = 0

[Command]
name = "AI_14"
command = c,c,c,c,c,c
time = 0

[Command]
name = "AI_15"
command = x,x,x,x,x,x
time = 0

[Command]
name = "AI_16"
command = D,D,x
time = 0

[Command]
name = "AI_17"
command = D,F,x
time = 0

[Command]
name = "AI_18"
command = D,B,x
time = 0

[Command]
name = "AI_19"
command = F,U,x
time = 0

[Command]
name = "AI_20"
command = F,D,x
time = 0

[Command]
name = "AI_21"
command = F,D,B,x
time = 0

[Command]
name = "AI_22"
command = a,a,a,a,a,x
time = 0

[Command]
name = "AI_23"
command = b,b,b,b,b,x
time = 0

[Command]
name = "AI_24"
command = c,c,c,c,c,c,x
time = 0

[Command]
name = "AI_25"
command = x,x,x,x,x,x,x
time = 0

[Command]
name = "AI_26"
command = D,D,x,c
time = 0

[Command]
name = "AI_27"
command = D,F,x,c
time = 0

[Command]
name = "AI_28"
command = D,B,x,c
time = 0

[Command]
name = "AI_29"
command = F,U,x,c
time = 0

[Command]
name = "AI_30"
command = F,D,x,c
time = 0

[Command]
name = "AI_31"
command = F,D,B,x,c
time = 0

[Command]
name = "AI_32"
command = a,a,a,a,a,x,c
time = 0

[Command]
name = "AI_33"
command = b,b,b,b,b,x,c
time = 0

[Command]
name = "AI_34"
command = c,c,c,c,c,c,x,c
time = 0

[Command]
name = "AI_35"
command = x,x,x,x,x,x,x,c
time = 0

[Command]
name = "AI_36"
command = D,D,x,b
time = 0

[Command]
name = "AI_37"
command = D,F,x,b
time = 0

[Command]
name = "AI_38"
command = D,B,x,b
time = 0

[Command]
name = "AI_39"
command = F,U,x,b
time = 0

[Command]
name = "AI_40"
command = F,D,x,b
time = 0

[Command]
name = "AI_41"
command = F,D,B,x,b
time = 0

[Command]
name = "AI_42"
command = a,a,a,a,a,x,b
time = 0

[Command]
name = "AI_43"
command = b,b,b,b,b,x,b
time = 0

[Command]
name = "AI_44"
command = c,c,c,c,c,c,x,b
time = 0

[Command]
name = "AI_45"
command = x,x,x,x,x,x,x,b
time = 0

[Command]
name = "AI_46"
command = D,D,x,b,c
time = 0

[Command]
name = "AI_47"
command = D,F,x,b,c
time = 0

[Command]
name = "AI_48"
command = D,B,x,b,c
time = 0

[Command]
name = "AI_49"
command = F,U,x,b,c
time = 0

[Command]
name = "AI_50"
command = F,D,x,b,c
time = 0

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "QCF_x"
command = ~B,DB,D, DF, F, x
time = 30

[Command]
name = "QCF_x"
command = ~B,D,F, x
time = 30

[Command]
name = "QCF_a"
command = ~B, DB, D, DF, F, a
time = 30

[Command]
name = "QCF_a"
command = ~B, D, F, a
time = 30

[Command]
name = "QCB_y"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "QCB_y"
command = ~F, D, B, y
time = 30

[Command]
name = "QCB_x"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "QCB_x"
command = ~F, D, B, x
time = 30
;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
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
name = "y"
command = y
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
name = "b"
command = b
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
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1


;------------------------------------------------------------------------------
; 次の行は絶対に消さないでください。必須の項目です。

[Statedef -1]

;==============================================================================
;ヘブンレイ（ゲージレベル２／３）

[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "QCF_a"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;ばよえーん（ゲージレベル２／３）

[State -1,]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = command = "QCB_y"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;フィーバーモード（ゲージレベル１／３）

[State -1,]
type = ChangeState
value = 3500
triggerall = var(59) = 0
triggerall = command = "QCB_x"
triggerall = var(50) >= 4
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;アイスストーム（ゲージレベル１／３）

[State -1,]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "QCF_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;------------------------------------------------------------------------------
;ぷよ攻撃
[State -1]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl


;ファイヤー
[State -1]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = numhelper(7800) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl


;------------------------------------------------------------------------------
;サンダー
[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;ダイアキュート
[State -1]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = power >= 500
triggerall = var(20) = 0
trigger1 = statetype = S || statetype = C
trigger1 = ctrl


;------------------------------------------------------------------------------
;空中ぷよ攻撃
[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x" || command = "y" || command = "a" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl || (stateno = [100,105])


