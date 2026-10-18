
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;-| CPUアルゴリズム用コマンド |------------------------------
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "昇蛇招嵐"
command = ~B, F, D, B, y
time = 20

[Command]
name = "獣神アタック"
command = F, x+y+a
time = 20

[Command]
name = "獣神アタック"
command = F, z
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;四連斬「牙顎」
[Command]
name = "63214_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "63214_y"
command = ~F, DF, D, DB, B, y

;疾風斬「蛇喝」
[Command]
name = "41236_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "41236_y"
command = ~B, DB, D, DF, F, y

;破砕陣「蛟鱗」
[Command]
name = "623_x"
command = ~F, D, DF, x

[Command]
name = "623_y"
command = ~F, D, DF, y

;堕天掌「鎌首」
[Command]
name = "421_x"
command = ~B, D, DB, x

[Command]
name = "421_y"
command = ~B, D, DB, y

;反撃技
[Command]
name = "123_x"
command = DB, DF, x

[Command]
name = "123_a"
command = DB, DF, a

;最終連続
[Command]
name = "FF+y"
command = F, F, y

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
name = "beast"
command = x+y+a
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "x+a"
command = x+a
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

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name  ="down"
command = D
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

;獣神セレクト
[Command]
name = "獣神セレクト"
command = c
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
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;------------------------------------------------------------------------------
;===========================================================================

[State -1, Combo Condition Reset] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo Condition Check] ;キャンセル可なステートナンバーを決定
type = VarSet
triggerall = movetype != H        ;ここに使っても無駄！
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 270
trigger2 = stateno != 280
trigger2 = movecontact || time > 2
var(1) = 1
ignorehitpause = 1

;===========================================================================

;獣神アタック（Peccary）
[State -1, ]
type = ChangeState
value = 3070
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 1
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Hawk）
[State -1, ]
type = ChangeState
value = 3060
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 2
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,649]
trigger2 = movecontact

;獣神アタック（Wolf）
[State -1, ]
type = ChangeState
value = 3050
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 3
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Ox）
[State -1, ]
type = ChangeState
value = 3040
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 4
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Snake）
[State -1, ]
type = ChangeState
value = 3030
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 5
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Tiger）
[State -1, ]
type = ChangeState
value = 3020
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 6
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Rabbit）
[State -1, ]
type = ChangeState
value = 3010
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 0
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;------------------------------------------------------------------------------

;昇蛇招嵐（Snake）
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "昇蛇招嵐"
triggerall = NumHelper(10000) = 1
triggerall = NumHelper(10050) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = var(11) = 1
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;------------------------------------------------------------------------------

;堕天掌「鎌首」
[State -1, ]
type = ChangeState
value = 1150
triggerall = command = "421_x" || command = "421_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = 102

;------------------------------------------------------------------------------

;破砕陣「蛟鱗」
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "623_x" || command = "623_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;疾風斬「蛇喝」
[State -1, ]
type = ChangeState
value = 1050
triggerall = command = "41236_x" || command = "41236_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;------------------------------------------------------------------------------

;四連斬「牙顎」
[State -1, ]
type = ChangeState
value = 1000
triggerall = command = "63214_x" || command = "63214_y"
triggerall = movetype != H
triggerall = var(59) = 0
trigger1 = var(1)
trigger2 = stateno = [100,102]

;==============================================================================

;獣神セレクト
[State -1]
type = VarSet
triggerall = var(59) = 0
trigger1 = var(12) = 0
trigger1 = RoundState = 2
trigger1 = alive = 1
trigger1 = command = "c"
var(12) = 7

[State -1]
type = varadd
triggerall = var(59) = 0
trigger1 = var(12) != 0
trigger1 = RoundState = 2
trigger1 = alive = 1
trigger1 = command = "c"
var(12) = -1

;------------------------------------------------------------------------------

;ビースト召喚
[State -1, Beast]
type = ChangeState
value = 750
triggerall = var(11) = 0
triggerall = command != "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = statetype != A
triggerall = movetype != H
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = var(1) = 1

;蛟地斬
[State -1, Beast Atack]
type = ChangeState
value = 760
triggerall = var(11) = 1
triggerall = NumHelper(10050) = 0
triggerall = command = "beast" || command = "z"
triggerall = movetype != H
triggerall = var(59) = 0
trigger1 = var(1) = 1
trigger2 = stateno = 40
trigger3 = stateno = 52
trigger4 = stateno = [100,102]

;払い(立ち)
[State -1, Shield]
type = ChangeState
value = 700
triggerall = command = "x+a"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = [200,201]
trigger4 = stateno = 230

;払い(屈み)
[State -1, Shield]
type = ChangeState
value = 710
triggerall = command = "x+a"
triggerall = statetype = C
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 400
trigger4 = stateno = 430

;==============================================================================

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

;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = var(59) = 0
triggerall = EnemyNear,statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X = [-20,20]
trigger1 = ctrl || stateno = 101

;==============================================================================

;最終連続
[State -1, ]
type = ChangeState
value = 270
triggerall = command = "FF+y"
triggerall = movetype != H
triggerall = var(59) = 0
trigger1 = var(1) = 1

;------------------------------------------------------------------------------

;中段攻撃
[State -1, ]
type = ChangeState
value = 280
triggerall = command = "x+y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200
trigger3 = movecontact || time > 2
trigger4 = stateno = 210
trigger4 = movecontact || time > 2
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact

;------------------------------------------------------------------------------

;踏み込み攻撃y
[State -1, ]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;踏み込み攻撃b
[State -1, ]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;------------------------------------------------------------------------------

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]

;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

;------------------------------------------------------------------------------

;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;------------------------------------------------------------------------------

;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = time > 5

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact

;------------------------------------------------------------------------------

;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl

;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 2
trigger3 = stateno = 630
trigger3 = time > 2

;------------------------------------------------------------------------------

;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 2

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 2
trigger3 = stateno = 610
trigger3 = time > 2
trigger4 = stateno = 630
trigger4 = time > 2

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;この下、一行以上空ける事…



