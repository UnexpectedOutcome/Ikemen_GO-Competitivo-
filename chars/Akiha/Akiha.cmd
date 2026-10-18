; vim: set ts=4 sw=4 sts=4 expandtab: =========================================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;------------------------------------------------------------------------------;
; ボタン配置
;------------------------------------------------------------------------------;
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;------------------------------------------------------------------------------;
; デフォルト設定
;------------------------------------------------------------------------------;
[Defaults]
command.time        = 15            ; デフォルトコマンド入力時間 (F)
command.buffer.time = 1             ; 先行入力時間 (F)

;------------------------------------------------------------------------------;
; アークドライブ
;------------------------------------------------------------------------------;
[command]
name        = "赤主・檻髪"
command     = ~D, F, D, F, z
time        = 21
buffer.time = 4

[command]
name        = "赤主・檻髪"
command     = ~D, F, D, F, ~z
time        = 21
buffer.time = 4

[command]
name        = "赤主・遍生"
command     = ~D, F, D, F, c
time        = 21
buffer.time = 4

[command]
name        = "赤主・遍生"
command     = ~D, F, D, F, ~c
time        = 21
buffer.time = 4

;------------------------------------------------------------------------------;
; Exエッジ
;------------------------------------------------------------------------------;
[command]
name        = "飛来する鳥を渦切る"
command     = ~D, F, x+y
time        = 12
buffer.time = 3

[command]
name        = "飛来する鳥を渦切る"
command     = ~D, F, x+z
time        = 12
buffer.time = 3

[command]
name        = "飛来する鳥を渦切る"
command     = ~D, F, y+z
time        = 12
buffer.time = 3

[command]
name        = "疾駆する獣を焦がす"
command     = D, D, a+b
time        = 18
buffer.time = 3

[command]
name        = "疾駆する獣を焦がす"
command     = D, D, a+c
time        = 18
buffer.time = 3

[command]
name        = "疾駆する獣を焦がす"
command     = D, D, b+c
time        = 18
buffer.time = 3

[command]
name        = "群れ集う獣を挫く"
command     = D, D, x+y
time        = 18
buffer.time = 3

[command]
name        = "群れ集う獣を挫く"
command     = D, D, x+z
time        = 18
buffer.time = 3

[command]
name        = "群れ集う獣を挫く"
command     = D, D, y+z
time        = 18
buffer.time = 3

[command]
name        = "上弦の月を穿つ"
command     = ~D, B, x+y
time        = 12
buffer.time = 3

[command]
name        = "上弦の月を穿つ"
command     = ~D, B, x+z
time        = 12
buffer.time = 3

[command]
name        = "上弦の月を穿つ"
command     = ~D, B, y+z
time        = 12
buffer.time = 3

[command]
name        = "墨空の月に画く"
command     = ~F, D, DF, x+y
time        = 15
buffer.time = 3

[command]
name        = "墨空の月に画く"
command     = ~F, D, DF, x+z
time        = 15
buffer.time = 3

[command]
name        = "墨空の月に画く"
command     = ~F, D, DF, y+z
time        = 15
buffer.time = 3

[command]
name        = "赫訳・紗燐EX"
command     = ~D, F, a+b
time        = 12
buffer.time = 3

[command]
name        = "赫訳・紗燐EX"
command     = ~D, F, a+c
time        = 12
buffer.time = 3

[command]
name        = "赫訳・紗燐EX"
command     = ~D, F, b+c
time        = 12
buffer.time = 3

[command]
name        = "赫訳・紅葉EX"
command     = ~F, D, DF, a+b
time        = 15
buffer.time = 3

[command]
name        = "赫訳・紅葉EX"
command     = ~F, D, DF, a+c
time        = 15
buffer.time = 3

[command]
name        = "赫訳・紅葉EX"
command     = ~F, D, DF, b+c
time        = 15
buffer.time = 3

;------------------------------------------------------------------------------;
; 必殺攻撃
;------------------------------------------------------------------------------;
[command]
name        = "鳥を渦切る・壱"
command     = ~D, F, x
time        = 12
buffer.time = 3

[command]
name        = "鳥を渦切る・弐"
command     = ~D, F, y
time        = 12
buffer.time = 3

[command]
name        = "鳥を渦切る・参"
command     = ~D, F, z
time        = 12
buffer.time = 3

[command]
name        = "獣を焦がす・壱"
command     = D, D, a
time        = 18
buffer.time = 3

[command]
name        = "獣を焦がす・弐"
command     = D, D, b
time        = 18
buffer.time = 3

[command]
name        = "獣を焦がす・参"
command     = D, D, c
time        = 18
buffer.time = 3

[command]
name        = "獣を挫く・壱"
command     = D, D, x
time        = 18
buffer.time = 3

[command]
name        = "獣を挫く・弐"
command     = D, D, y
time        = 18
buffer.time = 3

[command]
name        = "獣を挫く・参"
command     = D, D, z
time        = 18
buffer.time = 3

[command]
name        = "月を穿つ・壱"
command     = ~D, B, x
time        = 12
buffer.time = 3

[command]
name        = "月を穿つ・弐"
command     = ~D, B, y
time        = 12
buffer.time = 3

[command]
name        = "月を穿つ・参"
command     = ~D, B, z
time        = 12
buffer.time = 3

[command]
name        = "月に画く・壱"
command     = ~F, D, DF, x
time        = 15
buffer.time = 3

[command]
name        = "月に画く・弐"
command     = ~F, D, DF, y
time        = 15
buffer.time = 3

[command]
name        = "月に画く・参"
command     = ~F, D, DF, z
time        = 15
buffer.time = 3

[command]
name        = "赫訳・鬼灯楓"
command     = ~F, D, B, a
time        = 15
buffer.time = 3

[command]
name        = "赫訳・鬼灯楓"
command     = ~F, D, B, b
time        = 15
buffer.time = 3

[command]
name        = "赫訳・鬼灯楓"
command     = ~F, D, B, c
time        = 15
buffer.time = 3

[command]
name        = "赫訳・紗燐・壱"
command     = ~D, F, a
time        = 12
buffer.time = 3

[command]
name        = "赫訳・紗燐・弐"
command     = ~D, F, b
time        = 12
buffer.time = 3

[command]
name        = "赫訳・紗燐・参"
command     = ~D, F, c
time        = 12
buffer.time = 3

[command]
name        = "赫訳・紅葉・壱"
command     = ~F, D, DF, a
time        = 15
buffer.time = 3

[command]
name        = "赫訳・紅葉・弐"
command     = ~F, D, DF, b
time        = 15
buffer.time = 3

[command]
name        = "赫訳・紅葉・参"
command     = ~F, D, DF, c
time        = 15
buffer.time = 3

;------------------------------------------------------------------------------;
; システム
;------------------------------------------------------------------------------;
[command]
name    = "longjump"
command = $D, $U
time    = 12

[command]
name    = "Escape"
command = x+a
time    = 1

[command]
name    = "Shield"
command = x+a
time    = 1

[command]
name    = "Guard Cancel"
command = y+b
time    = 1

[command]
name    = "Blocking Upper"
command = F
time    = 1

[command]
name    = "Blocking Lower"
command = D
time    = 1

[command]
name    = "JustDefence Upper"
command = B
time    = 1

[command]
name    = "JustDefence Lower"
command = DB
time    = 1

[command]
name    = "PowerChargeP"
command = /z
time    = 1

[command]
name    = "PowerChargeK"
command = /c
time    = 1

[command]
name    = "HEAT"
command = y+b
time    = 1

[command]
name    = "ThrowP"
command = x+y
time    = 1

[command]
name    = "ThrowP"
command = x+z
time    = 1

[command]
name    = "ThrowP"
command = y+z
time    = 1

[command]
name    = "ThrowK"
command = a+b
time    = 1

[command]
name    = "ThrowK"
command = a+c
time    = 1

[command]
name    = "ThrowK"
command = b+c
time    = 1

;------------------------------------------------------------------------------;
; 基本行動
;------------------------------------------------------------------------------;
[command]               ; ダッシュ (必須)
name    = "FF"
command = F, F
time    = 12

[command]               ; バックステップ (必須)
name    = "BB"
command = B, B
time    = 12

[command]               ; 受身 (必須)
name    = "recovery"
command = x
time    = 1

[command]               ; 受身 (必須)
name    = "recovery"
command = y
time    = 1

[command]               ; 受身 (必須)
name    = "recovery"
command = z
time    = 1

[command]               ; 受身 (必須)
name    = "recovery"
command = a
time    = 1

[command]               ; 受身 (必須)
name    = "recovery"
command = b
time    = 1

[command]               ; 受身 (必須)
name    = "recovery"
command = c
time    = 1

;------------------------------------------------------------------------------;
; ボタン設定
;------------------------------------------------------------------------------;
[command]               ; 必須コマンド
name    = "holdfwd"
command = /$F
time    = 1

[command]               ; 必須コマンド
name    = "holdback"
command = /$B
time    = 1

[command]               ; 必須コマンド
name    = "holdup"
command = /$U
time    = 1

[command]               ; 必須コマンド
name    = "holddown"
command = /$D
time    = 1

[command]
name    = "hold_a"
command = /a
time    = 1

[command]
name    = "hold_b"
command = /b
time    = 1

[command]
name    = "hold_c"
command = /c
time    = 1

[command]
name    = "hold_x"
command = /x
time    = 1

[command]
name    = "hold_y"
command = /y
time    = 1

[command]
name    = "hold_z"
command = /z
time    = 1

[command]
name    = "hold_start"
command = /s
time    = 1

[command]
name    = "fwd"
command = F
time    = 1

[command]
name    = "back"
command = B
time    = 1

[command]
name    = "up"
command = U
time    = 1

[command]
name    = "down"
command = D
time    = 1

[command]
name    = "a"
command = a
time    = 1

[command]
name    = "b"
command = b
time    = 1

[command]
name    = "c"
command = c
time    = 1

[command]
name    = "x"
command = x
time    = 1

[command]
name    = "y"
command = y
time    = 1

[command]
name    = "z"
command = z
time    = 1

[command]
name    = "start"
command = s
time    = 1


;==============================================================================;
;           [ 常時監視ステート -1 (コマンド受付ステート) ]                     ;
;------------------------------------------------------------------------------;
; 1. 時間停止中は条件付きで実行
; 2. ヘルパーも条件付きで参照可能
; 3. 相手にステートを奪われていても有効っぽい
;==============================================================================;
[Statedef -1]

;==============================================================================;
;                              [ システム ]                                    ;
;==============================================================================;
;==============================================================================;
; ブロッキング
;==============================================================================;
;------------------------------------------------------------------------------;
; ブロッキング (入力)
;------------------------------------------------------------------------------;
[State -1:          Set Blocking Vars (Upper)]
type       = VarSet
triggerall = !var(59)
triggerall = var(52) & 2
triggerall = var(16) <= 0
triggerall = StateType != A
triggerall = ctrl
trigger1   = command = "Blocking Upper"
v          = 16
value      = 1

[State -1:          Set Blocking Vars (Lower)]
type       = VarSet
triggerall = !var(59)
triggerall = var(52) & 2
triggerall = var(17) <= 0
triggerall = StateType != A
triggerall = ctrl
trigger1   = command = "Blocking Lower"
v          = 17
value      = 1

[State -1:          Set Blocking Vars (Air)]
type       = VarSet
triggerall = !var(59)
triggerall = var(52) & 2
triggerall = var(18) <= 0
triggerall = StateType = A
triggerall = ctrl
trigger1   = command = "Blocking Upper"
v          = 18
value      = 1

[State -1:          AI Set Blocking Vars (Upper)]
type       = VarSet
triggerall = var(59)
triggerall = var(52) & 2
triggerall = var(16) <= 0
triggerall = StateType != A
triggerall = ctrl
triggerall = PlayerIDExist(var(35))
trigger1   = PlayerID(var(35)),StateType != C
trigger1   = PlayerID(var(35)),MoveType = A || PlayerID(var(35)),NumProj > 0
trigger1   = InGuardDist
trigger1   = Random < 25 * var(59)
v          = 16
value      = 1

[State -1:          AI Set Blocking Vars (Lower)]
type       = VarSet
triggerall = var(59)
triggerall = var(52) & 2
triggerall = var(17) <= 0
triggerall = StateType != A
triggerall = ctrl
triggerall = PlayerIDExist(var(35))
trigger1   = PlayerID(var(35)),StateType != A
trigger1   = PlayerID(var(35)),MoveType = A || PlayerID(var(35)),NumProj > 0
trigger1   = InGuardDist
trigger1   = Random < 25 * var(59)
v          = 17
value      = 1

[State -1:          AI Set Blocking Vars (Air)]
type       = VarSet
triggerall = var(59)
triggerall = var(52) & 2
triggerall = var(18) <= 0
triggerall = StateType = A
triggerall = ctrl
triggerall = PlayerIDExist(var(35))
trigger1   = PlayerID(var(35)),MoveType = A || PlayerID(var(35)),NumProj > 0
trigger1   = InGuardDist
trigger1   = Random < 25 * var(59)
v          = 18
value      = 1

[State -1:          Reset Blocking Var (Upper) by Shield]
type       = VarSet
triggerall = var(52) & 2
triggerall = var(16) > 0
trigger1   = StateNo = 900
v          = 16
value      = 0

[State -1:          Reset Blocking Var (Lower) by Shield]
type       = VarSet
triggerall = var(52) & 2
triggerall = var(17) > 0
trigger1   = StateNo = 910
v          = 17
value      = 0

[State -1:          Reset Blocking Var (Air) by Shield]
type       = VarSet
triggerall = var(52) & 2
triggerall = var(18) > 0
trigger1   = StateNo = 920
v          = 18
value      = 0

;------------------------------------------------------------------------------;
; ブロッキング (発生)
;------------------------------------------------------------------------------;
[State -1:          Stand Blocking Detector]
type          = Helper
triggerall    = var(52) & 2
triggerall    = !NumHelper(9800)
triggerall    = StateType != A
triggerall    = MoveType != H
triggerall    = ctrl
triggerall    = var(16) > 0
trigger1      = var(16) <= 5
trigger2      = var(15) & 4
trigger2      = var(16) <= 10
helpertype    = Normal
name          = "Stand Blocking Detector"
stateno       = 9800
id            = 9800
postype       = p1
pos           = 0, 0
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State -1:          Crouch Blocking Detector]
type          = Helper
triggerall    = var(52) & 2
triggerall    = !NumHelper(9810)
triggerall    = StateType != A
triggerall    = MoveType != H
triggerall    = ctrl
triggerall    = var(17) > 0
trigger1      = var(17) <= 5
trigger2      = var(15) & 2
trigger2      = var(17) <= 10
helpertype    = Normal
name          = "Crouch Blocking Detector"
stateno       = 9810
id            = 9810
postype       = p1
pos           = 0, 0
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State -1:          Air Blocking Detector]
type          = Helper
triggerall    = var(52) & 2
triggerall    = !NumHelper(9820)
triggerall    = StateType = A
triggerall    = MoveType != H
triggerall    = ctrl
triggerall    = var(18) > 0
trigger1      = var(18) <= 5
trigger2      = var(15) & 1
trigger2      = var(18) <= 10
helpertype    = Normal
name          = "Air Blocking Detector"
stateno       = 9820
id            = 9820
postype       = p1
pos           = 0, 0
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State -1:          Stand Blocking (Reversal)]
type       = ChangeState
triggerall = var(52) & 2
triggerall = MoveType != H
triggerall = NumHelper(9800)
triggerall = Helper(9800),StateNo = 9801
trigger1   = ctrl
value      = 902

[State -1:          Crouch Blocking (Reversal)]
type       = ChangeState
triggerall = var(52) & 2
triggerall = MoveType != H
triggerall = NumHelper(9810)
triggerall = Helper(9810),StateNo = 9811
trigger1   = ctrl
value      = 912

[State -1:          Air Blocking (Reversal)]
type       = ChangeState
triggerall = var(52) & 2
triggerall = MoveType != H
triggerall = NumHelper(9820)
triggerall = Helper(9820),StateNo = 9821
trigger1   = ctrl
value      = 922

[State -1:          Stand Blocking (Override)]
type       = HitOverride
triggerall = var(52) & 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = ctrl
triggerall = var(16) > 0
trigger1   = var(16) <= 5
trigger2   = var(15) & 4
trigger2   = var(16) <= 10
attr       = SA, NA, SA, HA, NP, SP, HP
slot       = 0
time       = 1
stateno    = 902

[State -1:          Crouch Blocking (Override)]
type       = HitOverride
triggerall = var(52) & 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = ctrl
triggerall = var(17) > 0
trigger1   = var(17) <= 5
trigger2   = var(15) & 2
trigger2   = var(17) <= 10
attr       = C, NA, SA, HA, NP, SP, HP
slot       = 1
time       = 1
stateno    = 912

[State -1:          Air Blocking (Override)]
type       = HitOverride
triggerall = var(52) & 2
triggerall = StateType = A
triggerall = MoveType != H
triggerall = ctrl
triggerall = var(18) > 0
trigger1   = var(18) <= 5
trigger2   = var(15) & 1
trigger2   = var(18) <= 10
attr       = SCA, NA, SA, HA, NP, SP, HP
slot       = 2
time       = 1
stateno    = 922

;==============================================================================;
; 基本行動
;==============================================================================;
[State -1:          Dash Forward (Run)]
type       = ChangeState
triggerall = StateType = S
triggerall = command = "FF"
trigger1   = ctrl
trigger2   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 100

;[State -1:          Dash Forward (Step)]
;type       = ChangeState
;triggerall = StateType = S
;triggerall = command = "FF"
;trigger1   = ctrl
;value      = 102

[State -1:          Back Step]
type       = ChangeState
triggerall = StateType = S
triggerall = command = "BB"
trigger1   = ctrl
trigger2   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 105

[State -1:          Air Dash Forward]
type       = ChangeState
triggerall = StateType = A
triggerall = command = "FF"
triggerall = var(28) < const(movement.airjump.num)
trigger1   = ctrl
value      = 110

[State -1:          Air Back Step]
type       = ChangeState
triggerall = StateType = A
triggerall = command = "BB"
triggerall = var(28) < const(movement.airjump.num)
trigger1   = ctrl
value      = 115

[State -1:          Landing Cancel Guard]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "holdback"
triggerall = command = "holddown"
triggerall = InGuardDist
triggerall = StateNo = 52
trigger1   = Anim = 47
trigger1   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger2   = Anim = 48
trigger2   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger3   = Anim = 49
trigger3   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 120

;==============================================================================;
; システム
;==============================================================================;
;------------------------------------------------------------------------------;
; チャージ
;------------------------------------------------------------------------------;
[State -1:          Power Charge]
type       = ChangeState
triggerall = !var(59)
triggerall = var(51) & 16
triggerall = StateType = S
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = var(24) <= 0
triggerall = StateNo != [850, 851]
triggerall = Power < PowerMax
triggerall = command = "PowerChargeP" && command = "PowerChargeK"
trigger1   = ctrl
value      = 850

;------------------------------------------------------------------------------;
; シールドバンカー
;------------------------------------------------------------------------------;
[State -1:          Shield Bunker]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = S
triggerall = command = "Guard Cancel" && command = "holdfwd"
trigger1   = ctrl
value      = 930

;------------------------------------------------------------------------------;
; HEAT
;------------------------------------------------------------------------------;
[State -1:          Initiative HEAT]
type       = ChangeState
triggerall = !var(59)
triggerall = var(51) & 2
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = Power >= PowerMax || var(24) > 0       ; ゲージMAX or MAX状態
triggerall = command = "HEAT"
trigger1   = var(10)        ; 通常技キャンセル
trigger2   = var(11)        ; スーパーキャンセル
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 800 + (StateType = A) * 5

[State -1:          BLOOD HEAT]
type       = ChangeState
triggerall = !var(59)
triggerall = var(51) & 2
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = Power >= PowerMax || var(24) > 0       ; ゲージMAX or MAX状態
triggerall = command = "HEAT"
trigger1   = ctrl
value      = 810 + (StateType = A) * 5

[State -1:          HEAT]
type       = ChangeState
triggerall = !var(59)
triggerall = var(51) & 2
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = Power >= var(6)
triggerall = command = "HEAT"
trigger1   = ctrl
value      = 800 + (StateType = A) * 5

;------------------------------------------------------------------------------;
; シールド
;------------------------------------------------------------------------------;
[State -1:          Stand Shield]
type       = ChangeState
triggerall = var(52) & 1
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(3)
triggerall = command = "Shield" && command = "holdfwd"
triggerall = command != "holddown"
trigger1   = ctrl
value      = 900

[State -1:          Crouch Shield]
type       = ChangeState
triggerall = var(52) & 1
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(3)
triggerall = command = "Shield" && command = "holdfwd"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger3   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 910

[State -1:          Air Shield]
type       = ChangeState
triggerall = var(52) & 1
triggerall = !var(59)
triggerall = StateType = A
triggerall = Power >= var(3)
triggerall = command = "Shield" && command = "holdfwd"
trigger1   = ctrl
value      = 920

;------------------------------------------------------------------------------;
; ガードキャンセル
;------------------------------------------------------------------------------;
[State -1:          Guard-Cancel Rolling Back]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = S
triggerall = Power >= var(5)
triggerall = StateNo = [150, 151]
trigger1   = command = "Escape" && command = "holdback"
value      = 760

[State -1:          Guard-Cancel Shield Bunker]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = S
triggerall = Power >= var(5)
triggerall = StateNo = [150, 151]
trigger1   = command = "Guard Cancel" && command = "holdfwd"
value      = 770

;------------------------------------------------------------------------------;
; サーキットスパーク
;------------------------------------------------------------------------------;
[State -1:          CIRCUIT SPARK]
type       = ChangeState
triggerall = !var(59)
triggerall = var(51) & 4
triggerall = StateType != L
triggerall = var(23) <= 0
triggerall = (Power >= var(6) || var(20) > 0 || var(21) > 0)
triggerall = command = "HEAT"
trigger1   = MoveType = H
value      = 820 + (StateType = A) * 5

;------------------------------------------------------------------------------;
; 回避
;------------------------------------------------------------------------------;
[State -1:          Stand Escape]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "Escape"
triggerall = command != "holddown"
triggerall = ctrl
trigger1   = StateNo = 0
trigger2   = StateNo = 10
trigger3   = StateNo = 12
trigger4   = StateNo = [20, 21]
value      = 700

[State -1:          Air Escape]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "Escape"
trigger1   = ctrl
value      = 710

;------------------------------------------------------------------------------;
; ジャンプキャンセル
;------------------------------------------------------------------------------;
[State -1:          Jump Cancel]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = StateNo != [40, 52]
triggerall = command = "holdup"
trigger1   = var(10) = [1, 3]
trigger2   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 40

[State -1:          Air Jump Cancel]
type       = ChangeState
triggerall = var(29) < const(movement.airjump.num)
triggerall = !var(59)
triggerall = StateType = A
triggerall = StateNo != [40, 52]
triggerall = command = "holdup"
trigger1   = var(10) = [1, 3]
value      = 45

;==============================================================================;
; アークドライブ
;==============================================================================;
;------------------------------------------------------------------------------;
; 赤主・檻髪
;------------------------------------------------------------------------------;
[State -1:          赤主・檻髪 (Another Arc-Drive)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = var(21) > 0
triggerall = command = "赤主・檻髪"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(12)        ; ドリームキャンセル
trigger5   = var(13)        ; シールドバンカーキャンセル
trigger6   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 3010

[State -1:          赤主・檻髪 (Arc-Drive)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = var(20) > 0 || var(24) > 0 || ((var(20) <= 0 && var(21) <= 0 && var(24) <= 0) && (Power >= PowerMax))      ; HEAT中もしくはゲージMAX
triggerall = command = "赤主・檻髪"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(12)        ; ドリームキャンセル
trigger5   = var(13)        ; シールドバンカーキャンセル
trigger6   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 3000

;------------------------------------------------------------------------------;
; 赤主・遍生
;------------------------------------------------------------------------------;
[State -1:          赤主・遍生 (Another Arc-Drive)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = var(21) > 0
triggerall = command = "赤主・遍生"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(12)        ; ドリームキャンセル
trigger5   = var(13)        ; シールドバンカーキャンセル
trigger6   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
;value      = 3030 + (StateType = A)
value      = 3031

[State -1:          赤主・遍生 (Arc-Drive)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = var(20) > 0 || var(24) > 0 || ((var(20) <= 0 && var(21) <= 0 && var(24) <= 0) && (Power >= PowerMax))      ; HEAT中もしくはゲージMAX
triggerall = command = "赤主・遍生"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(12)        ; ドリームキャンセル
trigger5   = var(13)        ; シールドバンカーキャンセル
trigger6   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
;value      = 3020 + (StateType = A)
value      = 3021

;==============================================================================;
; Exエッジ
;==============================================================================;
;------------------------------------------------------------------------------;
; 墨空の月に画く
;------------------------------------------------------------------------------;
[State -1:          墨空の月に画く]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = command = "墨空の月に画く"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2050

;------------------------------------------------------------------------------;
; 飛来する鳥を渦切る
;------------------------------------------------------------------------------;
[State -1:          飛来する鳥を渦切る (地上)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = command = "飛来する鳥を渦切る"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2000

[State -1:          飛来する鳥を渦切る (空中)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = Power >= var(1)
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = command = "飛来する鳥を渦切る"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
value      = 2010

;------------------------------------------------------------------------------;
; 赫訳・紅葉 (EX)
;------------------------------------------------------------------------------;
[State -1:          赫訳・紅葉 (EX)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = command = "赫訳・紅葉EX"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2130

;------------------------------------------------------------------------------;
; 赫訳・紗燐 (EX)
;------------------------------------------------------------------------------;
[State -1:          赫訳・紗燐 (EX)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = command = "赫訳・紗燐EX"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2070

[State -1:          赫訳・紗燐 (空中 / EX)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = Power >= var(1)
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = command = "赫訳・紗燐EX"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
value      = 2080

;------------------------------------------------------------------------------;
; 上弦の月を穿つ
;------------------------------------------------------------------------------;
[State -1:          上弦の月を穿つ]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = command = "上弦の月を穿つ"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2040

;------------------------------------------------------------------------------;
; 疾駆する獣を焦がす
;------------------------------------------------------------------------------;
[State -1:          疾駆する獣を焦がす (地上) 発生]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = command = "疾駆する獣を焦がす"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2020

[State -1:          疾駆する獣を焦がす (空中) 発生]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = Power >= var(1)
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = command = "疾駆する獣を焦がす"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)        ; スーパーキャンセル
value      = 2030

;------------------------------------------------------------------------------;
; 群れ集う獣を挫く
;------------------------------------------------------------------------------;
[State -1:          群れ集う獣を挫く]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = command = "群れ集う獣を挫く"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(11)
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 2120

;==============================================================================;
; 必殺攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; 赫訳・鬼灯楓
;------------------------------------------------------------------------------;
[State -1:          赫訳・鬼灯楓]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "赫訳・鬼灯楓"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
value      = 1060

;------------------------------------------------------------------------------;
; 月に画く
;------------------------------------------------------------------------------;
[State -1:          月に画く]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "月に画く・壱" && (var(9) := 0) = 0
trigger2   = command = "月に画く・弐" && (var(9) := 1) = 1
trigger3   = command = "月に画く・参" && (var(9) := 2) = 2
value      = 1050 + var(9)

;------------------------------------------------------------------------------;
; 鳥を渦切る
;------------------------------------------------------------------------------;
[State -1:          鳥を渦切る (地上)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = command != "holddown"
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "鳥を渦切る・壱" && (var(9) := 0) = 0
trigger2   = command = "鳥を渦切る・弐" && (var(9) := 1) = 1
trigger3   = command = "鳥を渦切る・参" && (var(9) := 2) = 2
value      = 1000 + var(9)

[State -1:          鳥を渦切る (空中)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = ctrl || var(10)
trigger1   = command = "鳥を渦切る・壱" && (var(9) := 0) = 0
trigger2   = command = "鳥を渦切る・弐" && (var(9) := 1) = 1
trigger3   = command = "鳥を渦切る・参" && (var(9) := 2) = 2
value      = 1010 + var(9)

;------------------------------------------------------------------------------;
; 赫訳・紅葉
;------------------------------------------------------------------------------;
[State -1:          赫訳・紅葉]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "赫訳・紅葉・壱" && (var(9) := 0) = 0
trigger2   = command = "赫訳・紅葉・弐" && (var(9) := 1) = 1
trigger3   = command = "赫訳・紅葉・参" && (var(9) := 2) = 2
value      = 1130 + var(9)

;------------------------------------------------------------------------------;
; 赫訳・紗燐
;------------------------------------------------------------------------------;
[State -1:          赫訳・紗燐]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = command != "holddown"
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "赫訳・紗燐・壱" && (var(9) := 0) = 0
trigger2   = command = "赫訳・紗燐・弐" && (var(9) := 1) = 1
trigger3   = command = "赫訳・紗燐・参" && (var(9) := 2) = 2
value      = 1070 + var(9)

[State -1:          赫訳・紗燐 (空中)]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = ctrl || var(10)
trigger1   = command = "赫訳・紗燐・壱" && (var(9) := 0) = 0
trigger2   = command = "赫訳・紗燐・弐" && (var(9) := 1) = 1
trigger3   = command = "赫訳・紗燐・参" && (var(9) := 2) = 2
value      = 1080 + var(9)

;------------------------------------------------------------------------------;
; 月を穿つ
;------------------------------------------------------------------------------;
[State -1:          月を穿つ]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "月を穿つ・壱" && (var(9) := 0) = 0
trigger2   = command = "月を穿つ・弐" && (var(9) := 1) = 1
trigger3   = command = "月を穿つ・参" && (var(9) := 2) = 2
value      = 1040 + var(9)

;------------------------------------------------------------------------------;
; 獣を焦がす
;------------------------------------------------------------------------------;
[State -1:          獣を焦がす (地上) 発動]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "獣を焦がす・壱" || command = "獣を焦がす・弐" || command = "獣を焦がす・参"
triggerall = ctrl || var(10) || var(13) || var(14)
trigger1   = NumHelper(7050)
trigger1   = Helper(7050),StateNo = 7050
trigger2   = NumHelper(7055)
trigger2   = Helper(7055),StateNo = 7050
value      = 1025

[State -1:          獣を焦がす (地上) 発生]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "獣を焦がす・壱" && (var(9) := 0) = 0
trigger2   = command = "獣を焦がす・弐" && (var(9) := 1) = 1
trigger3   = command = "獣を焦がす・参" && (var(9) := 2) = 2
value      = 1020 + var(9)

[State -1:          獣を焦がす (空中) 発動]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "獣を焦がす・壱" || command = "獣を焦がす・弐" || command = "獣を焦がす・参"
triggerall = ctrl || var(10)
trigger1   = NumHelper(7050)
trigger1   = Helper(7050),StateNo = 7050
trigger2   = NumHelper(7055)
trigger2   = Helper(7055),StateNo = 7050
value      = 1035

[State -1:          獣を焦がす (空中) 発生]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = ctrl || var(10)
trigger1   = command = "獣を焦がす・壱" && (var(9) := 0) = 0
trigger2   = command = "獣を焦がす・弐" && (var(9) := 1) = 1
trigger3   = command = "獣を焦がす・参" && (var(9) := 2) = 2
value      = 1030 + var(9)

;------------------------------------------------------------------------------;
; 獣を挫く
;------------------------------------------------------------------------------;
[State -1:          獣を挫く]
type        = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = ctrl || var(10) || var(13) || var(14)
;trigger1   = ctrl
;trigger2   = var(10)
;trigger3   = var(13)        ; シールドバンカーキャンセル
;trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger1   = command = "獣を挫く・壱" && (var(9) := 0) = 0
trigger2   = command = "獣を挫く・弐" && (var(9) := 1) = 1
trigger3   = command = "獣を挫く・参" && (var(9) := 2) = 2
value      = 1120 + var(9)

;==============================================================================;
; 通常攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; 投げ
;------------------------------------------------------------------------------;
[State -2:          Stand Throw]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = S
triggerall = command = "ThrowP" || command = "ThrowK"
triggerall = command = "holdfwd" || command = "holdback"
trigger1   = ctrl
trigger2   = var(10) = [1, 3]
value      = 500

[State -2:          Air Throw]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "ThrowP" || command = "ThrowK"
triggerall = command = "holdfwd" || command = "holdback"
trigger1   = ctrl
trigger2   = var(10) = [1, 3]
value      = 510

;------------------------------------------------------------------------------;
; 立ち通常攻撃
;------------------------------------------------------------------------------;
[State -1:          Stand Hard Kick, 2]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "c" && command = "holdfwd"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = [1, 3]
value      = 255

[State -1:          Stand Hard Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "c"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = [1, 2]
value      = 250

[State -1:          Stand Hard Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "z"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = [1, 2]
value      = 220

[State -1:          Stand Middle Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 240

[State -1:          Stand Middle Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "y"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 210

[State -1:          Stand Light Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "a"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 230

[State -1:          Stand Light Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = ifelse(var(50), 201, 200)

;------------------------------------------------------------------------------;
; しゃがみ通常攻撃
;------------------------------------------------------------------------------;
[State -1:          Crouch Hard Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "c"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = var(10) = [1, 2]
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 450

[State -1:          Crouch Hard Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "z"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = var(10) = [1, 2]
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 420

[State -1:          Crouch Middle Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 440

[State -1:          Crouch Middle Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "y"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 410

[State -1:          Crouch Light Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "a"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 430

[State -1:          Crouch Light Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType != A
triggerall = command = "x"
triggerall = command = "holddown"
trigger1   = ctrl
trigger2   = var(10) = 1
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
value      = 400

;------------------------------------------------------------------------------;
; ジャンプ通常攻撃
;------------------------------------------------------------------------------;
[State -1:          Air Hard Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "c"
trigger1   = ctrl
trigger2   = var(10) = [1, 2]
value      = 650

[State -1:          Air Hard Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "z"
trigger1   = ctrl
trigger2   = var(10) = [1, 2]
value      = 620

[State -1:          Air Middle Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "b"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 640

[State -1:          Air Middle Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "y"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 610

[State -1:          Air Light Kick]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "a"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 630

[State -1:          Air Light Punch]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = A
triggerall = command = "x"
trigger1   = ctrl
trigger2   = var(10) = 1
value      = 600

;------------------------------------------------------------------------------;
; 挑発?
;------------------------------------------------------------------------------;
[State -1:          Neko]
type       = ChangeState
triggerall = !var(59)
triggerall = StateType = S
triggerall = command = "hold_start"
trigger1   = ctrl
value      = 195


;==============================================================================;
;                                    [ AI ]                                    ;
;==============================================================================;
;==============================================================================;
; ゲームシステム
;==============================================================================;
;------------------------------------------------------------------------------;
; HEAT
;------------------------------------------------------------------------------;
[State -1:          AI HEAT]
type       = ChangeState
triggerall = var(59)
triggerall = var(51) & 2
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = RoundState = 2 && Alive
triggerall = Power >= var(6)
triggerall = ctrl
trigger1   = var(59) <= 2
trigger1   = !InGuardDist
trigger1   = Random < 20
trigger2   = var(59) = 3
trigger2   = Random < 5 + (InGuardDist && (P2BodyDist X = [-20 * const(size.xscale), 20 * const(size.xscale)])) * 45 + ((P2MoveType = H) || (P2StateType = L)) * 5
trigger3   = var(59) >= 4
trigger3   = var(27) > 0
trigger3   = Random < 10 + (InGuardDist && (P2BodyDist X = [-20 * const(size.xscale), 20 * const(size.xscale)])) * 45 + ((P2MoveType = H) || (P2StateType = L)) * 35
value      = 800 + ((Power >= PowerMax) || (var(24) > 0)) * 10 + (StateType = A) * 5

[State -1:          AI Initiative HEAT]
type       = ChangeState
triggerall = var(59)
triggerall = var(51) & 2
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = RoundState = 2 && Alive
triggerall = Power >= PowerMax || var(24) > 0
trigger1   = var(10)        ; 通常技キャンセル
trigger1   = var(59) >= 2
trigger1   = Random < 5
trigger2   = var(11)        ; スーパーキャンセル
trigger2   = var(59) >= 3
trigger2   = Random < 5 * var(59)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 5
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 15
value      = 800 + (StateType = A) * 5

;------------------------------------------------------------------------------;
; サーキットスパーク
;------------------------------------------------------------------------------;
[State -1:          AI CIRCUIT SPARK]
type       = ChangeState
triggerall = var(59)
triggerall = var(51) & 4
triggerall = RoundState = 2 && Alive
triggerall = StateType != L
triggerall = var(23) <= 0
triggerall = (Power >= var(6) || var(20) > 0 || var(21) > 0)
triggerall = MoveType = H
trigger1   = var(59) <= 2
trigger1   = P2BodyDist X = [-40 * const(size.xscale), 40 * const(size.xscale)]
trigger1   = Random < 55
trigger2   = var(59) > 2
trigger2   = InGuardDist
trigger2   = Random < 10 + (GetHitVar(HitCount) * 5) + (P2BodyDist X = [-40 * const(size.xscale), 40 * const(size.yscale)]) * 25
trigger2   = (1.0 - ((Power * 1.0) / PowerMax)) < (Random / 100.0)
value      = 820 + (StateType = A) * 5

;------------------------------------------------------------------------------;
; シールド
;------------------------------------------------------------------------------;
[State -1:          AI Stand Shield]
type       = ChangeState
triggerall = var(52) & 1
triggerall = var(59) >= 2
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(3)
triggerall = ctrl
triggerall = PlayerIDExist(var(35))
trigger1   = PlayerID(var(35)),HitDefAttr = SA, NA, SA, HA, NP, SP, HP
trigger1   = P2BodyDist X = [-20 * const(size.xscale), 35 * const(size.yscale)]
trigger1   = Random < 25 * var(59)
trigger2   = P2MoveType = A
trigger2   = InGuardDist
trigger2   = Random < 15 * var(59)
value      = 900

[State -1:          AI Crouch Shield]
type       = ChangeState
triggerall = var(52) & 1
triggerall = var(59) >= 2
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(3)
triggerall = command = "Shield" && command = "holdfwd"
triggerall = command = "holddown"
triggerall = ctrl
triggerall = PlayerIDExist(var(35))
trigger1   = PlayerID(var(35)),HitDefAttr = C, NA, SA, HA, NP, SP, HP
trigger1   = P2BodyDist X = [-20 * const(size.xscale), 35 * const(size.yscale)]
trigger1   = Random < 25 * var(59)
trigger2   = P2MoveType = A
trigger2   = InGuardDist
trigger2   = Random < 15 * var(59)
trigger3   = StateNo = 52 && Anim = 47          ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = P2MoveType = A
trigger3   = InGuardDist
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48          ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = P2MoveType = A
trigger4   = InGuardDist
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49          ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = P2MoveType = A
trigger5   = InGuardDist
trigger5   = Random < 10 * var(59)
value      = 910

[State -1:          AI Air Shield]
type       = ChangeState
triggerall = var(52) & 1
triggerall = var(59) >= 2
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = Power >= var(3)
triggerall = command = "Shield" && command = "holdfwd"
triggerall = ctrl
triggerall = PlayerIDExist(var(35))
trigger1   = PlayerID(var(35)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP
trigger1   = P2BodyDist X = [-20 * const(size.xscale), 35 * const(size.yscale)]
trigger1   = Random < 25 * var(59)
trigger2   = P2MoveType = A
trigger2   = InGuardDist
trigger2   = Random < 15 * var(59)
value      = 920

;------------------------------------------------------------------------------;
; シールドバンカー
;------------------------------------------------------------------------------;
[State -1:          AI Shield Bunker]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-40 * const(size.xscale), 40 * const(size.xscale)]
triggerall = P2BodyDist Y = [-80 * const(size.yscale), 0]
trigger1   = ctrl
trigger1   = Random < 5 + (P2MoveType = A) * 25 - (3 * var(59))
value      = 930

;------------------------------------------------------------------------------;
; 回避行動
;------------------------------------------------------------------------------;
[State -1:          AI Guard-Cancel Rolling Back]
type       = ChangeState
triggerall = var(59) >= 2
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = Power >= var(5)
triggerall = P2StateType != L
triggerall = StateNo = [150, 151]
triggerall = BackEdgeBodyDist > Floor(100 * const(size.xscale))
trigger1   = P2BodyDist X = [Floor(-20 * const(size.xscale)), Floor(80 * const(size.xscale))]
trigger1   = Random < 75
value      = 760

[State -1:          AI Guard-Cancel Shield Bunker]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = Power >= var(5)
triggerall = StateNo = [150, 151]
trigger1   = P2BodyDist X = [Floor(-40 * const(size.xscale)), Floor(40 * const(size.xscale))]
trigger1   = Random < 35 * var(59)
value      = 770

[State -1:          AI Stand Escape]
type       = ChangeState
triggerall = var(59) >= 2
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = ctrl
triggerall = InGuardDist
triggerall = PlayerIDExist(var(35))
triggerall = P2MoveType = A
triggerall = var(59) <= 3 || (var(59) >= 4 && PlayerID(var(35)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP)
triggerall = Random < 45 * var(59)
trigger1   = StateNo = 0
trigger2   = StateNo = 10
trigger3   = StateNo = 12
trigger4   = StateNo = [20, 21]
value      = 700

[State -1:          AI Air Escape]
type       = ChangeState
triggerall = var(59) >= 2
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = PlayerIDExist(var(35))
triggerall = P2MoveType = A
triggerall = var(59) <= 3 || (var(59) >= 4 && PlayerID(var(35)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP)
triggerall = InGuardDist
trigger1   = ctrl
trigger1   = Random < 45 * var(59)
value      = 710

;------------------------------------------------------------------------------;
; チャージ
;------------------------------------------------------------------------------;
[State -1:          AI Power Charge]
type       = ChangeState
triggerall = var(59)
triggerall = var(51) & 16
triggerall = var(59) <= 3
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = var(20) <= 0
triggerall = var(21) <= 0
triggerall = var(23) <= 0
triggerall = var(24) <= 0
triggerall = StateNo != [850, 851]
triggerall = Power < PowerMax
triggerall = ctrl
trigger1   = P2MoveType != A
trigger1   = P2BodyDist X >= Floor(120 * const(size.xscale))
trigger1   = Random < 165 - (35 * var(59))
trigger2   = P2MoveType = A
trigger2   = !InGuardDist
trigger2   = Random < 100 - (20 * var(59))
value      = 850

[State -1:          AI Release Power Charge]
type       = ChangeState
triggerall = var(59)
triggerall = StateType != A
triggerall = StateNo = 850 && AnimElemTime(4) > 3
trigger1   = P2BodyDist X <= Floor(80 * const(size.xscale))
trigger1   = P2MoveType = A
trigger1   = Random < 225
trigger2   = InGuardDist
trigger2   = P2MoveType = A
trigger2   = Random < 375
trigger3   = RoundState != 2
value      = 851

;------------------------------------------------------------------------------;
; ジャンプキャンセル
;------------------------------------------------------------------------------;
[State -1:          AI Jump Cancel]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType = A
triggerall = P2StateType != L
triggerall = StateNo != [40, 52]
trigger1   = var(10) = [1, 3]
trigger1   = Random < 10 + ((var(10) * 5) + (Abs(P2Dist Y) > (80 * const(size.yscale))) * 5) * var(59)
trigger2   = var(13)        ; シールドバンカーキャンセル
trigger2   = var(59) >= 3
trigger2   = Random < 5
trigger3   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 10
value      = 40

[State -1:          AI Air Jump Cancel]
type       = ChangeState
triggerall = var(29) < const(movement.airjump.num)
triggerall = var(59)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = P2StateType != L
triggerall = StateNo != [40, 52]
trigger1   = var(10) = [1, 3]
trigger1   = Random < 10 + (var(10) * 5) * var(59)
value      = 45

;==============================================================================;
; 基本行動制御
;==============================================================================;
;------------------------------------------------------------------------------;
; ガード
;------------------------------------------------------------------------------;
[State -1:          AI Guarding]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateNo != [120, 159]
triggerall = ctrl
triggerall = InGuardDist
trigger1   = Random < 105 * var(59)
trigger2   = StateNo = 52 && Anim = 47
trigger2   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger2   = Random < 85 * var(59)
trigger3   = StateNo = 52 && Anim = 48
trigger3   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger3   = Random < 85 * var(59)
trigger4   = StateNo = 52 && Anim = 49
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 85 * var(59)
value      = 120
ctrl       = 0

;------------------------------------------------------------------------------;
; ジャンプ制御
;------------------------------------------------------------------------------;
[State -1:          AI Jump]
type       = ChangeState
triggerall = var(59)
triggerall = var(59) >= 4           ; Lv.4以上でジャンプ制御
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = ctrl
triggerall = P2StateType = A
triggerall = P2MoveType != H
triggerall = PlayerIDExist(var(35))
triggerall = P2BodyDist X = [Floor(30 * const(size.xscale)), Floor(135 * const(size.xscale))]
trigger1   = PlayerID(var(35)),Vel X > 2
trigger1   = (PlayerID(var(35)),Vel Y < 0) || (P2BodyDist Y < Floor(-60 * const(size.yscale)))
trigger1   = Random < 35 * var(59)
trigger2   = PlayerID(var(35)),NumProj > 0
trigger2   = Random < 5
trigger3   = PlayerID(var(35)),MoveType = A
trigger3   = PlayerID(var(35)),HitDefAttr = SC, NT, ST, HT
trigger3   = Random < 55 * var(59)
value      = 40

;------------------------------------------------------------------------------;
; ダッシュ制御
;------------------------------------------------------------------------------;
[State -1:          AI Dash]
type       = ChangeState
triggerall = var(59)
triggerall = var(59) >= 4               ; Lv.4以上でダッシュ移動制御
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = P2BodyDist X > Floor(200 * const(size.xscale))
triggerall = P2MoveType != A
trigger1   = ctrl
trigger1   = Random < (15 + (NumTarget(2133) * 45)) * var(59)
trigger2   = var(13)        ; シールドバンカーキャンセル
trigger2   = var(59) >= 3
trigger2   = Random < 5 * var(59)
trigger3   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 10 * var(59)
value      = 100

[State -1:          AI Back Step]
type       = ChangeState
triggerall = var(59)
triggerall = var(59) >= 2               ; Lv.2以上でバックステップ制御
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = ctrl
triggerall = BackEdgeBodyDist > Floor(60 * const(size.xscale))
trigger1   = P2StateType = L
trigger1   = P2BodyDist X = [0, Floor(50 * const(size.xscale))]
trigger1   = Random < 35 * var(59)
trigger2   = var(13)        ; シールドバンカーキャンセル
trigger2   = var(59) >= 3
trigger2   = Random < 5 * var(59)
trigger3   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 5 * var(59)
value      = 105

;==============================================================================;
; 通常攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; 投げ
;------------------------------------------------------------------------------;
[State -2:          AI Stand Throw]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = S
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, (50 - (var(59) >= 3) * 20) * const(size.xscale)]
triggerall = P2StateType != A
trigger1   = ctrl
trigger1   = Random < 15 + (var(59) >= 2 && (P2StateNo = [120, 155])) * 55
trigger2   = var(10) = [1, 3]
trigger2   = var(59) >= 3
trigger2   = Random < (10 + 5 * var(10)) * var(59)
value      = 500

[State -2:          AI Air Throw]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2StateType = A
triggerall = P2BodyDist X = [-16 * const(size.xscale), 30 * const(size.xscale)]
triggerall = fvar(30) = [-80, 60]
trigger1   = ctrl
trigger1   = Random < 15 + (var(59) >= 2 && (P2StateNo = [120, 155])) * 55
trigger2   = var(10) = [1, 3]
trigger2   = var(59) >= 3
trigger2   = Random < (10 + 5 * var(10)) * var(59)
value      = 510

;------------------------------------------------------------------------------;
; 立ち通常攻撃
;------------------------------------------------------------------------------;
[State -1:          AI Stand Middle Punch 派生]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateNo = 210
triggerall = P2StateType != L
triggerall = AnimElemTime(5) > 0 && AnimElemTime(7) < 0
trigger1   = var(59) <= 2
trigger1   = Random < 25 + (MoveContact != 0) * 15
trigger2   = var(59) > 2
trigger2   = MoveContact
trigger2   = Random < (35 - (MoveGuarded != 0) * 20) * var(59)
value      = 211

[State -1:          AI Stand Hard Kick, 2]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = P2StateType != L
triggerall = StateType != A
triggerall = P2BodyDist X = [0, 80 * const(size.xscale)]
triggerall = fvar(30) = [-60, 60]
trigger1   = ctrl
trigger1   = Random < 10
trigger2   = var(10) = [1, 3]
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10) * var(59)
value      = 255

[State -1:          AI Stand Hard Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 75 * const(size.xscale)]
triggerall = fvar(30) = [-80, 20]
trigger1   = ctrl
trigger1   = Random < 10 + (P2StateType = C) * 25
trigger2   = var(10) = [1, 2]
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10) * var(59)
value      = 250

[State -1:          AI Stand Hard Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 120 * const(size.xscale)]
triggerall = fvar(30) = [-60, 60]
trigger1   = ctrl
trigger1   = Random < 10
trigger2   = var(10) = [1, 2]
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10) * var(59)
value      = 220

[State -1:          AI Stand Middle Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 65 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 20 + (P2StateType = S) * 15
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 15 + (P2StateType = S) * 25
value      = 240

[State -1:          AI Stand Middle Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 95 * const(size.xscale)]
triggerall = fvar(30) = [-80, 80]
trigger1   = ctrl
trigger1   = Random < 20
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 25
value      = 210

[State -1:          AI Stand Light Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 35 * const(size.xscale)]
triggerall = fvar(30) = [-50, 0]
trigger1   = ctrl
trigger1   = Random < 35 - (P2StateType != S) * 20
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 15 + (P2StateType = S) * 20
value      = 230

[State -1:          AI Stand Light Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 80 * const(size.xscale)]
triggerall = fvar(30) = [-70, 0]
trigger1   = ctrl
trigger1   = Random < 15
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 25
value      = ifelse(var(50), 201, 200)

;------------------------------------------------------------------------------;
; しゃがみ通常攻撃
;------------------------------------------------------------------------------;
[State -1:          AI Crouch Hard Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [20 * const(size.xscale), 100 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 15 - (P2StateType = A) * 10
trigger2   = var(10) = [1, 2]
trigger2   = var(59) >= 2
trigger2   = Random < 20 * var(10)
trigger3   = StateNo = 52 && Anim = 47              ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48              ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49              ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = Random < 10 * var(59)
value      = 450

[State -1:          AI Crouch Hard Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [20 * const(size.xscale), 100 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 15 - (P2StateType = A) * 10
trigger2   = var(10) = [1, 2]
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10)
trigger3   = StateNo = 52 && Anim = 47              ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48              ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49              ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = Random < 10 * var(59)
value      = 420

[State -1:          AI Crouch Middle Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [20 * const(size.xscale), 100 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 20 - (P2StateType = A) * 15
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 25
trigger3   = StateNo = 52 && Anim = 47              ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48              ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49              ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = Random < 10 * var(59)
value      = 440

[State -1:          AI Crouch Middle Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 70 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 20 - (P2StateType = A) * 15
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 25
trigger3   = StateNo = 52 && Anim = 47              ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48              ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49              ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = Random < 10 * var(59)
value      = 410

[State -1:          AI Crouch Light Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-20 * const(size.xscale), 65 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 25 - (P2StateType = A) * 15
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 20
trigger3   = StateNo = 52 && Anim = 47              ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48              ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49              ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = Random < 10 * var(59)
value      = 430

[State -1:          AI Crouch Light Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = P2StateType != L
triggerall = StateType != A
triggerall = P2BodyDist X = [-20 * const(size.xscale), 55 * const(size.xscale)]
triggerall = fvar(30) = [-45, 45]
trigger1   = ctrl
trigger1   = Random < 25 - (P2StateType = A) * 15
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 20
trigger3   = StateNo = 52 && Anim = 47              ; 垂直ジャンプ着地
trigger3   = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
trigger3   = Random < 10 * var(59)
trigger4   = StateNo = 52 && Anim = 48              ; 前ジャンプ着地
trigger4   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger4   = Random < 10 * var(59)
trigger5   = StateNo = 52 && Anim = 49              ; 後ろジャンプ着地
trigger5   = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
trigger5   = Random < 10 * var(59)
value      = 400

;------------------------------------------------------------------------------;
; ジャンプ通常攻撃
;------------------------------------------------------------------------------;
[State -1:          AI Air Hard Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 60 * const(size.xscale)]
triggerall = fvar(30) = [-80, 80]
trigger1   = ctrl
trigger1   = Random < 15
trigger2   = var(10) = [1, 2]
trigger2   = var(59) >= 2
trigger2   = Random < 20 * var(10)
value      = 650

[State -1:          AI Air Hard Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-60 * const(size.xscale), 60 * const(size.xscale)]
triggerall = P2BodyDist Y = [-80 * const(size.yscale), 120 * const(size.yscale)]
trigger1   = ctrl
trigger1   = Random < 15
trigger2   = var(10) = [1, 2]
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10)
value      = 620

[State -1:          AI Air Middle Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 40 * const(size.xscale)]
triggerall = fvar(30) = [-80, 40]
trigger1   = ctrl
trigger1   = Random < 25
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 25
value      = 640

[State -1:          AI Air Middle Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-40 * const(size.xscale), 40 * const(size.xscale)]
triggerall = P2BodyDist Y = [-80 * const(size.yscale), 160 * const(size.yscale)]
trigger1   = ctrl
trigger1   = Random < 20
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 15
value      = 610

[State -1:          AI Air Light Kick]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 60 * const(size.xscale)]
triggerall = fvar(30) = [-20, 80]
trigger1   = ctrl
trigger1   = Random < 20
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 30 - (5 * var(59))
value      = 630

[State -1:          AI Air Light Punch]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 60 * const(size.xscale)]
triggerall = fvar(30) = [-20, 80]
trigger1   = ctrl
trigger1   = Random < 30
trigger2   = var(10) = 1
trigger2   = var(59) >= 2
trigger2   = Random < 35 - (5 * var(59))
value      = 600

;==============================================================================;
; 必殺攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; 赫訳・紅葉
;------------------------------------------------------------------------------;
[State -1:          AI 赫訳・紅葉]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2BodyDist X = [0, 240 * const(size.xscale)]
triggerall = P2BodyDist Y = [-80 * const(size.yscale), 80 * const(size.yscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 5 + (PlayerID(var(35)),StateType = A && (PlayerID(var(35)),Vel X > 0 && PlayerID(var(35)),Vel Y > 0)) * 10 * var(59)
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 5 + (5 * var(10)) * var(59)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 5
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 5 * (var(59) ** 2)
value      = ifelse(Abs(PlayerID(var(35)),Pos X - Pos X) < (35 * const(size.xscale)), 1130, 1131 + (Random % 2))

;------------------------------------------------------------------------------;
; 赫訳・鬼灯楓
;------------------------------------------------------------------------------;
[State -1:          AI 赫訳・鬼灯楓]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X = [0, 30 * const(size.xscale)]
trigger1   = ctrl
trigger1   = Random < 15 + (P2StateNo = [120, 155]) * 25 + (StateNo = [900, 911]) * 35
trigger2   = var(10)
trigger2   = Random < 10 * var(10)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 5
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 5
value      = 1060

;------------------------------------------------------------------------------;
; 月に画く
;------------------------------------------------------------------------------;
[State -1:          AI 月に画く]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = PlayerIDExist(var(35))
triggerall = P2BodyDist X = [0, 125 * const(size.xscale)]
triggerall = fvar(30) = [-70, 0]
trigger1   = ctrl
trigger1   = Random < 5 + ((P2StateType = A) && (PlayerID(var(35)),Vel X > 0)) * 30
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < (10 - (P2StateType = C) * 10 - (P2StateType = S) * 5) * var(10)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 15
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 15
value      = 1050 + (Random % 3)

;------------------------------------------------------------------------------;
; 月を穿つ
;------------------------------------------------------------------------------;
[State -1:          AI 月を穿つ]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2MoveType != A
triggerall = P2BodyDist X < 180 * const(size.xscale)
triggerall = (P2BodyDist X = [(40 + var(59) * 5) * const(size.xscale), (120 - var(59) * 5) * const(size.xscale)]) || (P2BodyDist X = [(120 + var(59) * 5) * const(size.xscale), (200 - var(59) * 5) * const(size.xscale)])
trigger1   = ctrl
trigger1   = Random < 0 + (P2StateType = A) * 10 + (P2BodyDist X > 100 * const(size.xscale)) * 10 + (P2StateType = L || P2MoveType = H) * 25
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 5
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 15
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 10
value      = ifelse((P2BodyDist X = [120 * const(size.xscale), 180 * const(size.xscale)]), 1042, 1040 + (Random % 2))

;------------------------------------------------------------------------------;
; 獣を挫く
;------------------------------------------------------------------------------;
[State -1:          AI 獣を挫く]
type        = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = fvar(30) = [-45, 90]
triggerall = P2BodyDist X = [-80 * const(size.xscale), 80 * const(size.xscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 15 + (PlayerID(var(35)),HitFall = 1) * 10 * var(59)
trigger2   = var(10)
trigger2   = Random < 10 + ((PlayerID(var(35)),HitFall = 1) * 5 + (PlayerID(var(35)),StateType = A) * 10) * var(59)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = Random < 10
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < (15 - Time) * var(59)
value      = ifelse(command = "z", 1122, ifelse(command = "y", 1121, 1120))

;------------------------------------------------------------------------------;
; 獣を焦がす
;------------------------------------------------------------------------------;
[State -1:          AI 獣を焦がす (地上) 発動]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = ctrl || var(10) || var(13) || var(14)
triggerall = PlayerIDExist(var(35))
triggerall = Random < 35 - (InGuardDist) * 20
trigger1   = NumHelper(7050)
trigger1   = Helper(7050),StateNo = 7050
trigger1   = Abs((Helper(7050),Pos X) - (PlayerID(var(35)),Pos X)) < 100 * const(size.xscale)
trigger2   = NumHelper(7055)
trigger2   = Helper(7055),StateNo = 7050
trigger2   = Abs((Helper(7055),Pos X) - (PlayerID(var(35)),Pos X)) < 100 * const(size.xscale)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 15
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 5
value      = 1025

[State -1:          AI 獣を焦がす (地上) 発生]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = !InGuardDist || P2MoveType != A
trigger1   = ctrl
trigger1   = Random < (Abs(P2BodyDist X) / 100) / var(59)
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = PlayerIDExist(var(35))
trigger2   = Random < 5 + (PlayerID(var(35)),HitFall = 1) * 20
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 2
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 1
value      = 1020 + (Random % 3)

[State -1:          AI 獣を焦がす (空中) 発動]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = ctrl || var(10)
triggerall = PlayerIDExist(var(35))
triggerall = Random < 35 - (InGuardDist) * 20
trigger1   = NumHelper(7050)
trigger1   = Helper(7050),StateNo = 7050
trigger1   = Abs((Helper(7050),Pos X) - (PlayerID(var(35)),Pos X)) < 100 * const(size.xscale)
trigger2   = NumHelper(7055)
trigger2   = Helper(7055),StateNo = 7050
trigger2   = Abs((Helper(7055),Pos X) - (PlayerID(var(35)),Pos X)) < 100 * const(size.xscale)
value      = 1035

[State -1:          AI 獣を焦がす (空中) 発生]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = !InGuardDist | P2MoveType != A
trigger1   = ctrl
trigger1   = Random < (Abs(P2BodyDist X) / 100) / var(59)
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = PlayerIDExist(var(35))
trigger2   = Random < 5 + (PlayerID(var(35)),HitFall = 1) * 20
value      = 1030 + (Random % 3)

;------------------------------------------------------------------------------;
; 赫訳・紗燐
;------------------------------------------------------------------------------;
[State -1:          AI 赫訳・紗燐]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = P2BodyDist X = [50 * const(size.xscale), 160 * const(size.xscale)]
trigger1   = ctrl
trigger1   = Random < 15 + (P2BodyDist Y > 0 || P2StateType = L) * 15
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 5
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 1
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 1
value      = 1070 + (Random % 3)

[State -1:          AI 赫訳・紗燐 (空中)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = P2BodyDist X = [50 * const(size.xscale), 160 * const(size.xscale)]
triggerall = fvar(30) = [-45, 80]
trigger1   = ctrl
trigger1   = Random < 15 + (P2BodyDist Y < 0) * 15
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 5
value      = 1080 + (Random % 3)

;------------------------------------------------------------------------------;
; 鳥を渦切る
;------------------------------------------------------------------------------;
[State -1:          AI 鳥を渦切る (地上)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = P2StateType != L
triggerall = PlayerIDExist(var(35))
triggerall = P2BodyDist X = [0, 180 * const(size.xscale)]
trigger1   = ctrl
trigger1   = Random < 1 + (P2BodyDist X < (110 * const(size.xscale))) * 15 + (fvar(30) = [-60, 60]) * 20 + (PlayerID(var(35)),Vel X) * 15
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 10
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 25
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 20 * var(59)
value      = 1000 + (Random % 3)

[State -1:          AI 鳥を渦切る (空中)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = P2StateType != L
triggerall = PlayerIDExist(var(35))
triggerall = P2BodyDist X = [0, 160 * const(size.xscale)]
trigger1   = ctrl
trigger1   = Random < 1 + (P2BodyDist X < (80 * const(size.xscale))) * 15  + (fvar(30) = [-40, 80]) * 20 + (PlayerID(var(35)),Vel X) * 15
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 20
value      = 1010 + (Random % 3)

;==============================================================================;
; Exエッジ
;==============================================================================;
;------------------------------------------------------------------------------;
; 赫訳・紅葉 (EX)
;------------------------------------------------------------------------------;
[State -1:          AI 赫訳・紅葉 (EX)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 240 * const(size.xscale)]
triggerall = P2BodyDist Y = [-80 * const(size.yscale), 80 * const(size.yscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 5 + (PlayerID(var(35)),StateType = A && (PlayerID(var(35)),Vel X > 0 && PlayerID(var(35)),Vel Y > 0)) * 10 * var(59)
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 10 * var(59)
trigger3   = var(11)        ; スーパーキャンセル
trigger3   = var(59) >= 3
trigger3   = (PlayerID(var(35)),StateType != A) || (PlayerID(var(35)),StateType = A && (PlayerID(var(35)),Vel X > 0 && PlayerID(var(35)),Vel Y > 0))
trigger3   = Random < 10 * (var(59) ** 2)
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 5
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger5   = var(59) >= 3
trigger5   = Random < 15 * var(59)
value      = 2130

;------------------------------------------------------------------------------;
; 墨空の月に画く
;------------------------------------------------------------------------------;
[State -1:          AI 墨空の月に画く]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 110 * const(size.xscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 0 + (PlayerID(var(35)),StateType = A) * 10 + (PlayerID(var(35)),Vel X > 0) * 15
trigger2   = var(10) || var(11)
trigger2   = var(59) >= 2
trigger2   = Random < 15 + (P2StateType = A) * 10 + (fvar(30) = [-80, -20]) * 20
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 30
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 15
value      = 2050

;------------------------------------------------------------------------------;
; 飛来する鳥を渦切る
;------------------------------------------------------------------------------;
[State -1:          AI 飛来する鳥を渦切る (地上)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = Power >= var(1)
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 140 * const(size.xscale)]
triggerall = fvar(30) = [-70, 70]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 10 - (PlayerID(var(35)),Vel X < 0) * 10
trigger2   = var(10) || var(11)
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 40
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 25 * var(59)
value      = 2000

[State -1:          AI 飛来する鳥を渦切る (空中)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = !NumHelper(7040)
triggerall = !NumHelper(7041)
triggerall = !NumHelper(7042)
triggerall = !NumHelper(7045)
triggerall = Power >= var(1)
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 120 * const(size.xscale)]
triggerall = fvar(30) = [-45, 80]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 10 - (PlayerID(var(35)),Vel X < 0) * 10
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 15 * var(10)
value      = 2010

;------------------------------------------------------------------------------;
; 赫訳・紗燐 (EX)
;------------------------------------------------------------------------------;
[State -1:          AI 赫訳・紗燐 (EX)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = P2BodyDist X = [60 * const(size.xscale), 180 * const(size.xscale)]
trigger1   = ctrl
trigger1   = Random < 10 + (P2BodyDist Y < 0) * 15
trigger2   = var(10) || var(11)
trigger2   = var(59) >= 2
trigger2   = Random < 10
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 2
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 1
value      = 2070

[State -1:          AI 赫訳・紗燐 (空中 / EX)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = Power >= var(1)
triggerall = !NumHelper(7110)
triggerall = !NumHelper(7111)
triggerall = !NumHelper(7115)
triggerall = P2BodyDist X = [60 * const(size.xscale), 180 * const(size.xscale)]
triggerall = fvar(30) = [-45, 80]
trigger1   = ctrl
trigger1   = Random < 10 + (P2BodyDist Y > 0) * 15
trigger2   = var(10) || var(11)
trigger2   = var(59) >= 2
trigger2   = Random < 10
value      = 2080

;------------------------------------------------------------------------------;
; 上弦の月を穿つ
;------------------------------------------------------------------------------;
[State -1:          AI 上弦の月を穿つ]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(1)
trigger1   = ctrl
trigger1   = Random < 15 - (5 * var(59)) + (P2MoveType = H || P2StateType = L) * 25
trigger2   = var(10) || var(11)
trigger2   = var(59) >= 2
trigger2   = PlayerIDExist(var(35))
trigger2   = Random < 5 * var(10) + (PlayerID(var(35)),HitFall) * 10
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 35
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 15
value      = 2040

;------------------------------------------------------------------------------;
; 群れ集う獣を挫く
;------------------------------------------------------------------------------;
[State -1:          AI 群れ集う獣を挫く]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = P2StateType != L
triggerall = fvar(30) = [-55, 90]
triggerall = P2BodyDist X = [-120 * const(size.xscale), 120 * const(size.xscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 10 + (PlayerID(var(35)),HitFall = 1) * 5 * var(59)
trigger2   = var(10) || var(11)
trigger2   = var(59) <= 2
trigger2   = Random < 25
trigger3   = var(10) || var(11)
trigger3   = var(59) >= 3
trigger3   = P2StateType = A
trigger3   = Random < 55
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger4   = Random < 5
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger5   = var(59) >= 3
trigger5   = Random < 15 * var(59)
value      = 2120

;------------------------------------------------------------------------------;
; 疾駆する獣を焦がす
;------------------------------------------------------------------------------;
[State -1:          AI 疾駆する獣を焦がす (地上) 発生]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = Power >= var(1)
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = !InGuardDist || P2MoveType != A
trigger1   = ctrl
trigger1   = Random < (Abs(P2BodyDist X) / 200) + ((PlayerID(var(35)),HitFall = 1) || (PlayerID(var(35)),MoveType = H) || (PlayerID(var(35)),StateType = L)) * 15
trigger2   = var(10) || var(11)
trigger2   = var(59) >= 2
trigger2   = PlayerIDExist(var(35))
trigger2   = Random < 5 + (PlayerID(var(35)),HitFall = 1) * 20
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 2
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 1
value      = 2020

[State -1:          疾駆する獣を焦がす (空中) 発生]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType = A
triggerall = Power >= var(1)
triggerall = !NumHelper(7050)
triggerall = !NumHelper(7055)
triggerall = !InGuardDist | P2MoveType != A
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < (Abs(P2BodyDist X) / 200) + ((PlayerID(var(35)),HitFall = 1) || (PlayerID(var(35)),MoveType = H) || (PlayerID(var(35)),StateType = L)) * 15
trigger2   = var(10)
trigger2   = var(59) >= 2
trigger2   = Random < 5
value      = 2030

;==============================================================================;
; アークドライブ
;==============================================================================;
[State -1:          AI 赤主・檻髪 (Another Arc-Drive)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = var(21) > 0
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 70 * const(size.xscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 20 + (P2MoveType = H) * 25 + (P2StateNo = [120, 155]) * 25
trigger2   = var(10) || var(11) || var(12)
trigger2   = var(59) = 2
trigger2   = Random < 20 * (var(10) + (var(11) != 0) + (var(12) != 0))
trigger3   = var(10) || var(11) || var(12)
trigger3   = var(59) >= 3
trigger3   = ((PlayerID(var(35)),Pos Y) + ((PlayerID(var(35)),Vel Y) * 10) - (((PlayerID(var(35)),const(movement.yaccel)) * 100) / 2)) < Abs(PlayerID(var(35)),const(size.height))
trigger3   = Random < 15 * (var(10) + (var(11) != 0) + (var(12) != 0)) + (PlayerID(var(35)),HitFall) * 10
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 60 * var(59)
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger5   = var(59) >= 3
trigger5   = Random < 35 * var(59)
value      = 3010

[State -1:          AI 赤主・檻髪 (Arc-Drive)]
type       = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = var(20) > 0 || var(24) > 0 || ((var(20) <= 0 && var(21) <= 0 && var(24) <= 0) && (Power >= PowerMax))      ; HEAT中もしくはゲージMAX
triggerall = P2StateType != L
triggerall = P2BodyDist X = [0, 70 * const(size.xscale)]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 20 + (P2MoveType = H) * 25 + (P2StateNo = [120, 155]) * 25
trigger2   = var(10) || var(11) || var(12)
trigger2   = var(59) = 2
trigger2   = Random < 20 * (var(10) + (var(11) != 0) + (var(12) != 0))
trigger3   = var(10) || var(11) || var(12)
trigger3   = var(59) >= 3
trigger3   = ((PlayerID(var(35)),Pos Y) + ((PlayerID(var(35)),Vel Y) * 10) - (((PlayerID(var(35)),const(movement.yaccel)) * 100) / 2)) < Abs(PlayerID(var(35)),const(size.height))
trigger3   = Random < 15 * (var(10) + (var(11) != 0) + (var(12) != 0)) + (PlayerID(var(35)),HitFall) * 10
trigger4   = var(13)        ; シールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 60 * var(59)
trigger5   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger5   = var(59) >= 3
trigger5   = Random < 35 * var(59)
value      = 3000

;------------------------------------------------------------------------------;
; 赤主・遍生
;------------------------------------------------------------------------------;
[State -1:          AI 赤主・遍生 (Another Arc-Drive)]
type       = ChangeState
triggerall = var(59)
triggerall = StateType = A
triggerall = RoundState = 2 && Alive
triggerall = var(21) > 0
triggerall = P2BodyDist X = [60 * const(size.xscale), 240 * const(size.xscale)]
triggerall = P2BodyDist Y = [-60 * const(size.yscale), 60 * const(size.yscale)]
triggerall = fvar(30) = [-45, 45]
triggerall = P2StateType != L
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = var(59) < 3
trigger1   = Random < 10 - (var(59))
trigger2   = var(10) || var(11) || var(12)
trigger2   = var(59) >= 3
trigger2   = Random < 10 + (PlayerID(var(35)),HitFall = 1) * 5 * var(59)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 15 * var(59)
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 15 * var(59)
trigger5   = ctrl
trigger5   = var(59) >= 3
trigger5   = Random < (35 - (Abs(P2BodyDist X / 10)))
;value      = 3030 + (StateType = A)
value      = 3031

[State -1:          赤主・遍生 (Arc-Drive)]
type       = ChangeState
triggerall = var(59)
triggerall = StateType = A
triggerall = RoundState = 2 && Alive
triggerall = var(20) > 0 || var(24) > 0 || ((var(20) <= 0 && var(21) <= 0 && var(24) <= 0) && (Power >= PowerMax))      ; HEAT中もしくはゲージMAX
triggerall = P2StateType != L
triggerall = P2BodyDist X = [60 * const(size.xscale), 180 * const(size.xscale)]
triggerall = P2BodyDist Y = [-60 * const(size.yscale), 60 * const(size.yscale)]
triggerall = fvar(30) = [-45, 45]
triggerall = PlayerIDExist(var(35))
trigger1   = ctrl
trigger1   = Random < 10 - (var(59))
trigger2   = var(10) || var(11) || var(12)
trigger2   = var(59) >= 3
trigger2   = Random < 10 + (PlayerID(var(35)),HitFall = 1) * 5 * var(59)
trigger3   = var(13)        ; シールドバンカーキャンセル
trigger3   = var(59) >= 3
trigger3   = Random < 15 * var(59)
trigger4   = var(14)        ; ガードキャンセルシールドバンカーキャンセル
trigger4   = var(59) >= 3
trigger4   = Random < 15 * var(59)
;value      = 3020 + (StateType = A)
value      = 3021


;==============================================================================;
;                              [ AI ここまで ]                                 ;
;==============================================================================;


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date$
;==============================================================================;
