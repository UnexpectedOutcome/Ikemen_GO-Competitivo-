[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

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


;-| 必殺技 |-------------------------------------------------------------------

;アングリーハンマー
[Command]
name = "623a"
command = ~F, D, DF, a
time = 20

;マッスルバスター
[Command]
name = "426a"
command = ~B, D, F, a
time = 20

;マッスルバスター
[Command]
name = "426a"
command = ~B, D, F, c
time = 20



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

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

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

;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;------------------------------------------------------------------------------

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, アングリーハンマー]
type = ChangeState
value = 1000
triggerall= roundstate=2
triggerall = (command = "623a") || (command = "x")
triggerall = statetype != A
trigger1 = ctrl


[State -1, マッスルバスター]
type = ChangeState
value = 1010
triggerall= roundstate=2
triggerall = (command = "426a") || (command = "y")
triggerall = statetype != A
trigger1 = ctrl

[State -1, タックル]
type = ChangeState
value = 1100
triggerall= roundstate=2
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------


[State -1, バックステップ]
type = ChangeState
value = 105
triggerall= roundstate=2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, パワー溜め]
type = ChangeState
value = 700
triggerall= roundstate=2
triggerall = command = "hold_a"
triggerall = command = "hold_b"
trigger1 = Power < const(data.power) || Power < PowerMax
trigger1 = statetype != A && ctrl

[State -1, 前パンチ]
type = ChangeState
value = 208
triggerall= roundstate=2
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, スタン攻撃]
type = ChangeState
value = 220
triggerall= roundstate=2
triggerall = command = "a"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, 踏みつけ]
type = ChangeState
value = 235
triggerall= roundstate=2
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 前蹴り]
type = ChangeState
value = 240
triggerall= roundstate=2
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 投げ]
type = ChangeState
value = 800
triggerall= roundstate=2
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ちパンチ]
type = ChangeState
value = 200
triggerall= roundstate=2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 立ちキック]
type = ChangeState
value = 230
triggerall= roundstate=2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, しゃがみパンチ]
type = ChangeState
value = 400
triggerall= roundstate=2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 =  statetype = C
trigger1 = ctrl

[State -1, しゃがみキック]
type = ChangeState
value = 430
triggerall= roundstate=2
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 =  statetype = C
trigger1 = ctrl

[State -1, ジャンプパンチ]
type = ChangeState
value = 600
triggerall= roundstate=2
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプキック]
type = ChangeState
value = 630
triggerall= roundstate=2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl