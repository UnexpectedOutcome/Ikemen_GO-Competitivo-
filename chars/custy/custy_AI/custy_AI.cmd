
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
command.time = 30

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;-| CPUアルゴリズム用コマンド |------------------------------
[Command]
Name = "AI0"
Command = a,a
Time = 0
[Command]
Name = "AI1"
Command = b,b
Time = 0
[Command]
Name = "AI2"
Command = c,c
Time = 0
[Command]
Name = "AI3"
Command = x,x
Time = 0
[Command]
Name = "AI4"
Command = y,y
Time = 0
[Command]
Name = "AI5"
Command = z,z
Time = 0
[Command]
Name = "AI6"
Command = s,s
Time = 0
[Command]
Name = "AI7"
Command = F,F
Time = 0
[Command]
Name = "AI8"
Command = D,D
Time = 0
[Command]
Name = "AI9"
Command = B,B
Time = 0
[Command]
Name = "AI10"
Command = U,U
Time = 0
[Command]
Name = "AI11"
Command = a,b
Time = 0
[Command]
Name = "AI12"
Command = b,a
Time = 0
[Command]
Name = "AI13"
Command = x,y
Time = 0
[Command]
Name = "AI14"
Command = y,x
Time = 0
[Command]
Name = "AI15"
Command = b,c
Time = 0
[Command]
Name = "AI16"
Command = c,b
Time = 0
[Command]
Name = "AI17"
Command = y,z
Time = 0
[Command]
Name = "AI18"
Command = z,y
Time = 0
[Command]
Name = "AI19"
Command = a,c
Time = 0
[Command]
Name = "AI20"
Command = c,a
Time = 0
[Command]
Name = "AI21"
Command = x,z
Time = 0
[Command]
Name = "AI22"
Command = z,x
Time = 0
[Command]
Name = "AI23"
Command = s,a
Time = 0
[Command]
Name = "AI24"
Command = a,s
Time = 0
[Command]
Name = "AI25"
Command = s,b
Time = 0
[Command]
Name = "AI26"
Command = b,s
Time = 0
[Command]
Name = "AI27"
Command = s,c
Time = 0
[Command]
Name = "AI28"
Command = c,s
Time = 0
[Command]
Name = "AI29"
Command = s,x
Time = 0
[Command]
Name = "AI30"
Command = x,s
Time = 0
[Command]
Name = "AI31"
Command = s,y
Time = 0
[Command]
Name = "AI32"
Command = y,s
Time = 0
[Command]
Name = "AI33"
Command = s,z
Time = 0
[Command]
Name = "AI34"
Command = z,s
Time = 0
[Command]
Name = "AI35"
Command = F,B
Time = 0
[Command]
Name = "AI36"
Command = B,F
Time = 0
[Command]
Name = "AI37"
Command = U,D
Time = 0
[Command]
Name = "AI38"
Command = D,U
Time = 0
[Command]
Name = "AI39"
Command = D,F
Time = 0
[Command]
Name = "AI40"
Command = F,D
Time = 0
[Command]
Name = "AI41"
Command = D,B
Time = 0
[Command]
Name = "AI42"
Command = B,D
Time = 0
[Command]
Name = "AI43"
Command = U,F
Time = 0
[Command]
Name = "AI44"
Command = F,U
Time = 0
[Command]
Name = "AI45"
Command = U,B
Time = 0
[Command]
Name = "AI46"
Command = B,U
Time = 0
[Command]
Name = "AI47"
Command = U,x
Time = 0
[Command]
Name = "AI48"
Command = U,y
Time = 0
[Command]
Name = "AI49"
Command = U,z
Time = 0
[Command]
Name = "AI50"
Command = U,s
Time = 0
;------------------------------------------------------------------------------
;-| 超必殺技 |-------------------------------------------------------------------

[Command]
name = "Pan"
command = ~D, DF, F, D, DF, y
time = 40

[Command]
name = "Star"
command = ~D, DF, F, D, DF, F, x
time = 40

[Command]
name = "PKorTK"
command = ~D, D, z
time = 20

[Command]
name = "Mirror"
command = ~D, D, b
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
;コマンドの一部が重なる場合、先に書かれたものが優先されるので
;623 → 236の順に登録されています。
;（注:236等はテンキーでコマンドを表しています）

[Command]
name = "623"
command = ~F, D, DF, a
time = 30

[Command]
name = "s_throw"
command = ~F, DF, D, DB, B, y
time = 40

[Command]
name = "cancel_crescent"
command = ~D, DF, F, a
time = 30

[Command]
name = "hammer"
command = ~D, DF, F, y
time = 30

[Command]
name = "Catapult"
command = ~D, DF, F, b
time = 30

[Command]
name = "Counter_A"
command = ~D, DB, B, x
time = 30

[Command]
name = "Counter_S"
command = ~D, DB, B, a
time = 30

[Command]
name = "Counter_C"
command = ~D, DB, B, b
time = 30

[Command]
name = "7075"
command = ~D, D, x
time = 20

[Command]
name = "jump"
command = ~$D,$U
time = 8

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
name = "recovery"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+a
time = 5

[Command]
name = "throw"
command = y+b
time = 5

[Command]
name = "pause"
command = z+c
time = 5

[Command]
name = "erase"
command = x+y+a+b
time = 5

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
name = "DF_x"
command = /$DF,x
time = 1

[Command]
name = "F_y"
command = /$F,y
time = 1

[Command]
name = "F_x"
command = /$F,x
time = 1

[Command]
name = "F_b"
command = /$F,b
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
name = "down"
command = D
time = 1

;---------------------------
;(パワー溜めステート用にコマンドを追加しています)
[Command]
name = "hold_c"
command = /c

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

;==============================================================================
;------------------------------------------------------------------------------
[Statedef -1]
;------------------------------------------------------------------------------
;==============================================================================
;------------------------------------------------------------------------------

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;AIトリガー(AItrigger)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -3, AItrigger]
type = VarSet
triggerall = !ishelper && !var(59) && RoundState = 2
trigger1 = (command="AI0")||(command="AI1")||(command="AI2")||(command="AI3")||(command="AI4")
trigger2 = (command="AI5")||(command="AI6")||(command="AI7")||(command="AI8")||(command="AI9")
trigger3 = (command="AI10")||(command="AI11")||(command="AI12")||(command="AI13")||(command="AI14")
trigger4 = (command="AI15")||(command="AI16")||(command="AI17")||(command="AI18")||(command="AI19")
trigger5 = (command="AI20")||(command="AI21")||(command="AI22")||(command="AI23")||(command="AI24")
trigger6 = (command="AI25")||(command="AI26")||(command="AI27")||(command="AI28")||(command="AI29")
trigger7 = (command="AI30")||(command="AI31")||(command="AI32")||(command="AI33")||(command="AI34")
trigger8 = (command="AI35")||(command="AI36")||(command="AI37")||(command="AI38")||(command="AI39")
trigger9 = (command="AI40")||(command="AI41")||(command="AI42")||(command="AI43")||(command="AI44")
trigger10 = (command="AI45")||(command="AI46")||(command="AI47")||(command="AI48")||(command="AI49")||(command="AI50")
trigger11 = NumHelper(20000)
trigger11 = Helper(20000),var(59)
;trigger12 = 1 ;常時起動トリガー(Always-on trigger)
var(59) = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;フラッシュキャンセル
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;フラッシュ  対ジャンプ攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1030
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = numhelper(887700)
triggerall = stateno = 1000
Trigger1 = EnemyNear(var(1)),movetype != A
Trigger1 = !inguarddist
Trigger2 = helper(887700),var(55) = 2
Trigger3 = helper(887700),var(56) = 2
Trigger4 = helper(887700),var(55) = 3
Trigger5 = helper(887700),var(56) = 3

;フラッシュ  対上段攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1031
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = numhelper(887700)
triggerall = stateno = 1001
Trigger1 = EnemyNear(var(1)),movetype != A
Trigger1 = !inguarddist
Trigger2 = helper(887700),var(55) = 1
Trigger3 = helper(887700),var(56) = 1
Trigger4 = helper(887700),var(55) = 3
Trigger5 = helper(887700),var(56) = 3

;フラッシュ  対下段攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1032
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = numhelper(887700)
triggerall = stateno = 1002
Trigger1 = EnemyNear(var(1)),movetype != A
Trigger1 = !inguarddist
Trigger2 = helper(887700),var(55) = 1
Trigger3 = helper(887700),var(56) = 1
Trigger3 = helper(887700),var(55) = 2
Trigger4 = helper(887700),var(56) = 2

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;時止め中の行動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;立ちキック2
[State -1, S_Kick2]
type = ChangeState
value = 240
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) >= 1
Triggerall = ceil(p2dist y) >= -35
trigger1 = floor(p2bodydist X) = [-5,40]
trigger1 = statetype != A && ctrl
trigger2 = stateno = 240
trigger2 = movecontact = 2
trigger2 = numtarget

;歩行
[State -1, walk]
type = ChangeState
value = 20
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) >= 1
triggerall = stateno != 20
triggerall = statetype != A && ctrl
trigger1 = floor(p2bodydist X) = [41,75]

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) >= 1
triggerall = stateno != 100
triggerall = statetype != A && ctrl
trigger1 = floor(p2bodydist X) >= 76


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上拾い～繋ぎ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;アダマンフライパン
[State -1, AdamantFryingPan]
type = ChangeState
value = 3400
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = statetype != A && ctrl
triggerall = numtarget(200) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist X) <= 70
trigger1 = ceil(p2dist Y) >= -90
trigger1 = EnemyNear(var(1)),vel y > 0

;ダブルハンマー
[State -1, double_hammer]
type = ChangeState
value = 1200
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = power < 2000
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5020,5050]
triggerall = floor(p2bodydist X) <= 35
triggerall = ceil(p2dist Y) >= -115
triggerall = EnemyNear(var(1)),vel y > 0
trigger1 = numtarget(200) >= 1
trigger2 = numtarget(3400) >= 1

;歩行
[State -1, walk]
type = ChangeState
value = 20
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 20
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5020,5050]
triggerall = floor(p2bodydist X) = [36,55]
triggerall = ceil(p2dist Y) <= -116 || EnemyNear(var(1)),vel y < 0
trigger1 = numtarget(200) >= 1
trigger2 = numtarget(3400) >= 1

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 100
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5020,5050]
triggerall = floor(p2bodydist X) >= 56
triggerall = ceil(p2dist Y) <= -116 || EnemyNear(var(1)),vel y < 0
trigger1 = numtarget(200) >= 1
trigger2 = numtarget(3400) >= 1

;立ちパンチ1
[State -1, S_Punch1]
type = ChangeState
value = 200
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype != A && ctrl
triggerall = numtarget(610) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist X) <= 55
trigger1 = ceil(p2dist Y) >= -140
trigger1 = EnemyNear(var(1)),vel y > 0

;歩行
[State -1, walk]
type = ChangeState
value = 20
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 20
triggerall = statetype != A && ctrl
triggerall = numtarget(610) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist X) >= 5
trigger1 = ceil(p2dist Y) <= -141

;空中パンチ2
[State -1, A_Punch2]
type = ChangeState
value = 610
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype = A
triggerall = var(2) <= 14
triggerall = var(5) = 2
trigger1 = stateno = 600
trigger1 = movehit = 2

;空中パンチ1
[State -1, A_Punch1]
type = ChangeState
value = 600
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype = A && ctrl
trigger1 = var(2) <= 14
trigger1 = var(5) = 2
trigger1 = ceil(p2dist Y) = [-75,-5]

;空中前方ジャンプ
[State -1, A_jump_F]
type = ChangeState
value = 47
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype = A
triggerall = var(5) = 1
trigger1 = var(2) <= 9
trigger1 = stateno = 610
trigger1 = movehit = 10

;空中パンチ2
[State -1, A_Punch2]
type = ChangeState
value = 610
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype = A
triggerall = var(2) <= 14
triggerall = var(5) = 1
trigger1 = stateno = 600
trigger1 = movehit = 2

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上拾い
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;空中パンチ1
[State -1, A_Punch2]
type = ChangeState
value = 600
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype = A && ctrl
triggerall = !numtarget(200)
triggerall = !numtarget(610)
trigger1 = var(2) <= 9
trigger1 = var(5) = 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = ceil(p2dist Y) = [-85,-5]

;垂直ジャンプ
[State -1, 41]
type = ChangeState
value = 41
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype != A && ctrl
triggerall = !numtarget(200)
triggerall = !numtarget(610)
trigger1 = var(2) <= 9
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist x) <= 20
trigger1 = EnemyNear(var(1)),vel y > 0
trigger1 = ceil(p2dist Y) >= -160

;前ジャンプ
[State -1, 42]
type = ChangeState
value = 42
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype != A && ctrl
triggerall = !numtarget(200)
triggerall = !numtarget(610)
trigger1 = var(2) <= 9
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist x) = [21,50]
trigger1 = EnemyNear(var(1)),vel y > 0
trigger1 = ceil(p2dist Y) >= -160

;待機
[State -1, 0]
type = ChangeState
value = 0
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 0
triggerall = statetype != A && ctrl
triggerall = !numtarget(200)
triggerall = !numtarget(610)
trigger1 = var(2) <= 9
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist X) <= 50
trigger1 = ceil(p2dist Y) < -160

;歩行
[State -1, walk]
type = ChangeState
value = 20
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 20
triggerall = statetype != A && ctrl
triggerall = !numtarget(200)
triggerall = !numtarget(610)
trigger1 = var(2) <= 9
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist X) = [51,70]

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 100
triggerall = statetype != A && ctrl
triggerall = !numtarget(200)
triggerall = !numtarget(610)
trigger1 = var(2) <= 9
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist X) >= 71

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;バリスタボルト拾い
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;空中パンチ1
[State -1, A_Punch2]
type = ChangeState
value = 600
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype = A && ctrl
triggerall = numtarget(1760) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = ceil(p2dist Y) = [-75,-5]

;前ジャンプ
[State -1, 42]
type = ChangeState
value = 42
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = statetype != A && ctrl
triggerall = numtarget(1760) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = EnemyNear(var(1)),vel y > 0
trigger1 = ceil(p2dist Y) >= -190

;クレセントエッジ(キャンセル版)
[State -1, cancel_crescent_edge]
type = ChangeState
value = 1760
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = stateno = 1300
trigger1 = movehit = 2


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;カタパルト拾い
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;空中パンチ1
[State -1, A_Punch2]
type = ChangeState
value = 600
Triggerall = var(59) >= 1
triggerall = var(10) = 0
Triggerall = roundstate = 2 && alive
triggerall = statetype = A && ctrl
triggerall = numtarget(1100) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = ceil(p2dist Y) = [-75,-5]

;垂直ジャンプ
[State -1, 41]
type = ChangeState
value = 41
Triggerall = var(59) >= 1
triggerall = var(10) = 0
Triggerall = roundstate = 2 && alive
triggerall = statetype != A && ctrl
triggerall = numtarget(1100) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist x) <= 20
trigger1 = EnemyNear(var(1)),vel y > 0
trigger1 = ceil(p2dist Y) >= -200

;前ジャンプ
[State -1, 42]
type = ChangeState
value = 42
Triggerall = var(59) >= 1
triggerall = var(10) = 0
Triggerall = roundstate = 2 && alive
triggerall = statetype != A && ctrl
triggerall = numtarget(1100) >= 1
trigger1 = EnemyNear(var(1)),stateno = [5020,5050]
trigger1 = floor(p2bodydist x) >= 21
trigger1 = EnemyNear(var(1)),vel y > 0
trigger1 = ceil(p2dist Y) >= -200

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ミラーオブテラー反撃成功
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;アダマンフライパン
[State -1, AdamantFryingPan]
type = ChangeState
value = 3400
triggerall = power >= 2000
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = statetype != A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5000,5015]
trigger1 = floor(p2bodydist X) <= 65

;カタパルト
[State -1, Catapult]
type = ChangeState
value = 1100
triggerall = power < 2000
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = statetype != A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5000,5015]
trigger1 = floor(p2bodydist X) <= 5

;バリスタボルト
[State -1, ballista_bolt]
type = ChangeState
value = 1300
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = statetype != A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5020,5035]
trigger1 = floor(p2bodydist X) <= 90
trigger1 = ceil(p2dist Y) >= -65

;空中パンチ1
[State -1, A_Punch2]
type = ChangeState
value = 600
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = statetype = A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5020,5035]
trigger1 = floor(p2bodydist X) <= 20
trigger1 = ceil(p2dist Y) = [-66,4]

;垂直ジャンプ
[State -1, 41]
type = ChangeState
value = 41
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = statetype != A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5020,5035]
trigger1 = floor(p2bodydist X) <= 20
trigger1 = ceil(p2dist Y) <= -66

;歩き
[State -1, walk]
type = ChangeState
value = 20
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = stateno != 20
triggerall = statetype != A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5000,5015]
trigger1 = floor(p2bodydist X) = [6,40]
trigger2 = EnemyNear(var(1)),stateno = [5020,5035]
trigger2 = floor(p2bodydist X) = [91,100]
trigger2 = ceil(p2dist Y) >= -65
trigger3 = EnemyNear(var(1)),stateno = [5020,5035]
trigger3 = floor(p2bodydist X) = [6,40]
trigger3 = ceil(p2dist Y) <= -66

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = stateno != 100
triggerall = statetype != A && ctrl
Triggerall = fvar(8) = 0.3260
trigger1 = EnemyNear(var(1)),stateno = [5000,5015]
trigger1 = floor(p2bodydist X) >= 41
trigger2 = EnemyNear(var(1)),stateno = [5020,5035]
trigger2 = floor(p2bodydist X) >= 101
trigger2 = ceil(p2dist Y) >= -65
trigger3 = EnemyNear(var(1)),stateno = [5020,5035]
trigger3 = floor(p2bodydist X) >= 41
trigger3 = ceil(p2dist Y) <= -66

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;水月打ち
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;カタパルト
[State -1, Catapult]
type = ChangeState
value = 1100
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
trigger1 = stateno = 210
trigger1 = movehit = 2

;立ちパンチ2
[State -1, S_Punch2]
type = ChangeState
value = 210
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
TriggerAll = statetype != A && Ctrl
triggerall = var(10) <= 0
Trigger1 = EnemyNear(var(1)),stateno = 10861
trigger1 = floor(p2bodydist x) = [-5,60]

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = stateno != 100
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = 10860
trigger1 = floor(p2bodydist x) >= 61

;水月打ち
[State -1, throw]
type = ChangeState
value = 800
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
TriggerAll = statetype != A && Ctrl
Trigger1 = numhelper(887700) >= 1
Trigger1 = helper(887700),var(1) = 0
Trigger1 = EnemyNear(var(1)),statetype = S || EnemyNear(var(1)),statetype = C
Trigger1 = EnemyNear(var(1)),movetype != H
Trigger1 = !EnemyNear(var(1)),ctrl
Trigger1 = EnemyNear(var(1)),stateno < 1000
Trigger1 = EnemyNear(var(1)),animtime <= -29
trigger1 = floor(p2bodydist x) = [-5,20]
Trigger1 = random <= 700


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ウインドミルドロップ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;ウインドミルドロップ
[State -1, Windmill_drop]
type = ChangeState
value = 1400
Triggerall = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = floor(p2bodydist x) = [-5,35]
trigger1 = statetype != A && ctrl
Trigger1 = numhelper(887700) >= 1
Trigger1 = helper(887700),var(1) = 0
Trigger1 = EnemyNear(var(1)),statetype = S || EnemyNear(var(1)),statetype = C
Trigger1 = EnemyNear(var(1)),movetype != H
Trigger1 = !EnemyNear(var(1)),ctrl
Trigger1 = EnemyNear(var(1)),stateno < 1000
Trigger1 = EnemyNear(var(1)),animtime <= -10
Trigger1 = random <= 140
trigger2 = stateno = [200,440]
trigger2 = movecontact = 5
Trigger2 = EnemyNear(var(1)),statetype = S || EnemyNear(var(1)),statetype = C
Trigger2 = EnemyNear(var(1)),movetype != H
Trigger2 = !numtarget
Trigger2 = random <= 640

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;切り返し
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;ホーミングスター
[State -1, HomingStar]
type = ChangeState
value = 3300
Triggerall = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = numhelper(3300) = 0
triggerall = power >= 1000
Triggerall = inguarddist || EnemyNear(var(1)),Movetype = A
Triggerall = frontedgebodydist >= 100
Triggerall = floor(p2bodydist x) >= 90
Triggerall = numhelper(887700)
Triggerall = helper(887700),var(1) = 0
Triggerall = random = [200,550]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;ミラーオブテラー
[State -1, Mirror of Terror]
type = ChangeState
value = 3200
Triggerall = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = numhelper(3200) = 0
triggerall = power >= 1000
triggerall = statetype != A
Triggerall = inguarddist || EnemyNear(var(1)),Movetype = A
Triggerall = frontedgebodydist >= 75
Triggerall = numhelper(887700)
Triggerall = helper(887700),var(1) = 0
Triggerall = random >= 770
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger3 = stateno = [1000,1002]
trigger4 = stateno = [1030,1032]
trigger5 = stateno = [1100,1500]

;空中ピーケーオアティーケー
[State -1, Air_PKorTK]
type = ChangeState
value = 3100
Triggerall = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = numhelper(3001) = 0
triggerall = numhelper(3002) = 0
triggerall = numhelper(3003) = 0
triggerall = numhelper(3004) = 0
triggerall = numhelper(3005) = 0
triggerall = numhelper(3006) = 0
triggerall = numhelper(3007) = 0
triggerall = numhelper(3008) = 0
triggerall = numhelper(3009) = 0
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = power >= 1000
Triggerall = statetype = A && Ctrl || (stateno = [600,640]) && movecontact
Triggerall = !EnemyNear(var(1)),ctrl
Triggerall = EnemyNear(var(1)),animtime <= -9
Trigger1 = EnemyNear(var(1)),Movetype = A
Trigger1 = random <= 360
Trigger2 = EnemyNear(var(1)),Statetype != L
Trigger2 = inguarddist
Trigger2 = random <= 200
Trigger3 = numhelper(887700)
Trigger3 = helper(887700),var(1) = 0
Trigger3 = EnemyNear(var(1)),Movetype = A
Trigger3 = random <= 500

;クレセントエッジ
[State -1, crescent_edge]
type = ChangeState
value = 1700
Triggerall = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
Triggerall = EnemyNear(var(1)),movetype = A
Triggerall = floor(p2bodydist x) = [-35,70]
Triggerall = ceil(p2dist y) = [-90,70]
Triggerall = random <= 350
Trigger1 = statetype = A && Ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;ピーケーオアティーケー
[State -1, PKorTK]
type = ChangeState
value = 3000
Triggerall = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
triggerall = numhelper(3001) = 0
triggerall = numhelper(3002) = 0
triggerall = numhelper(3003) = 0
triggerall = numhelper(3004) = 0
triggerall = numhelper(3005) = 0
triggerall = numhelper(3006) = 0
triggerall = numhelper(3007) = 0
triggerall = numhelper(3008) = 0
triggerall = numhelper(3009) = 0
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = power >= 1000
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
Triggerall = !EnemyNear(var(1)),ctrl
Triggerall = EnemyNear(var(1)),animtime <= -9
Trigger1 = EnemyNear(var(1)),Movetype = A
Trigger1 = random <= 140
Trigger2 = EnemyNear(var(1)),Statetype != L
Trigger2 = inguarddist
Trigger2 = random <= 90
Trigger3 = numhelper(887700)
Trigger3 = helper(887700),var(1) = 0
Trigger3 = EnemyNear(var(1)),Movetype = A
Trigger3 = random <= 500

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;対投げ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;フラッシュ(対空)
[State -1, 1000]
Type = ChangeState
Value = 1000
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1113
Trigger1 = EnemyNear(var(1)),Statetype = A

;フラッシュ(上段)
[State -1, 1001]
Type = ChangeState
Value = 1001
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1113
Trigger1 = EnemyNear(var(1)),Statetype = S

;フラッシュ(下段)
[State -1, 1002]
Type = ChangeState
Value = 1002
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1113
Trigger1 = EnemyNear(var(1)),Statetype = C

[State -1, AI]
Type = ChangeState
Value = 105
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
TriggerAll = statetype != A && Ctrl
TriggerAll = backedgebodydist >= 75
TriggerAll = fvar(8) = 0.10542
Trigger1 = var(17) = 1

[State -1, AI]
Type = ChangeState
Value = 42
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
TriggerAll = statetype != A && Ctrl
TriggerAll = backedgebodydist < 75
TriggerAll = fvar(8) = 0.10542
Trigger1 = var(17) = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;対飛び道具
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;フラッシュ(対空)
[State -1, 1000]
Type = ChangeState
Value = 1000
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1111
TriggerAll = numhelper(887700)
Trigger1 = helper(887700),var(55) = 1
Trigger2 = helper(887700),var(56) = 1

;フラッシュ(上段)
[State -1, 1001]
Type = ChangeState
Value = 1001
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1111
TriggerAll = numhelper(887700)
Trigger1 = helper(887700),var(55) = 2
Trigger2 = helper(887700),var(56) = 2

;フラッシュ(下段)
[State -1, 1002]
Type = ChangeState
Value = 1002
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1111
TriggerAll = numhelper(887700)
Trigger1 = helper(887700),var(55) = 3
Trigger2 = helper(887700),var(56) = 3

;前方ワープ
[State -1, Roll_F]
Type = ChangeState
Value = 900
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl
Trigger1 = fvar(8) = 0.0900

;ワープ
[State -1, Roll_ForB]
type = ChangeState
value = ifelse(backedgebodydist <= 90,900,910)
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl
triggerall = var(10) = 0
Triggerall = numhelper(887700)
Triggerall = random <= 290
Trigger1 = helper(887700),var(52) != 0
Trigger2 = helper(887700),var(53) = 10
Trigger3 = helper(887700),var(53) = -10

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;対打撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;フラッシュ(対空)
[State -1, 1000]
Type = ChangeState
Value = 1000
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1112
Trigger1 = EnemyNear(var(1)),Hitdefattr = A,AA

;フラッシュ(上段)
[State -1, 1001]
Type = ChangeState
Value = 1001
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1112
Trigger1 = EnemyNear(var(1)),Hitdefattr = S,AA

;フラッシュ(下段)
[State -1, 1002]
Type = ChangeState
Value = 1002
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
TriggerAll = fvar(8) = 0.1112
Trigger1 = EnemyNear(var(1)),Hitdefattr = C,AA

;バリスタボルト
[State -1, ballista_bolt]
type = ChangeState
value = 1300
Triggerall = var(59) >= 1 && roundstate = 2 && alive
Triggerall = fvar(8) = 0.1300
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,230]) || (stateno = [400,440])
trigger2 = movecontact

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ワープ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;ワープ前方
[State -1, Roll_F]
type = ChangeState
value = 900
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
Triggerall = statetype != A && Ctrl
triggerall = var(10) = 0
Triggerall = fvar(8) = 0
Triggerall = InGuardDist
Trigger1 = EnemyNear(var(1)),MoveType = A
Trigger1 = ceil(p2bodydist X) = [-5,140]
Trigger1 = EnemyNear(var(1)),animtime <= -37
Trigger1 = random <= 150

;回り込み後方
[State -1, Roll_B]
type = ChangeState
value = 910
Triggerall = var(59) >= 1
Triggerall = roundstate = 2 && alive
Triggerall = statetype != A && Ctrl
triggerall = var(10) = 0
Triggerall = fvar(8) = 0
Triggerall = var(18) = 0
Triggerall = var(19) = 0
Triggerall = InGuardDist
Triggerall = EnemyNear(var(1)),MoveType = A
Triggerall = backedgedist >= 90
Triggerall = EnemyNear(var(1)),vel x = 0
Trigger1 = EnemyNear(var(1)),animtime = -37
Trigger1 = random <= 300
Trigger2 = ceil(p2bodydist X) >= 110
Trigger2 = random <= 30

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;フラッシュ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;フラッシュ(対空)
[State -1, 1000]
Type = ChangeState
Value = 1000
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
TriggerAll = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
triggerall = var(10) = 0
TriggerAll = fvar(8) = 0
TriggerAll = var(18) = 0
TriggerAll = var(19) = 0
Trigger1 = numhelper(887700) >= 1
Trigger1 = helper(887700),var(1) = 0
Trigger1 = EnemyNear(var(1)),anim <= 100 || EnemyNear(var(1)),stateno <= 699
Trigger1 = InGuardDist || EnemyNear(var(1)),MoveType = A
Trigger1 = EnemyNear(var(1)),statetype = A
Trigger1 = random >= 770
Trigger2 = EnemyNear(var(1)),Hitdefattr = A,AA,AP,AT
Trigger2 = random <= 300

;フラッシュ(上段)
[State -1, 1001]
Type = ChangeState
Value = 1001
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
TriggerAll = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
triggerall = var(10) = 0
TriggerAll = fvar(8) = 0
TriggerAll = random >= 770
TriggerAll = var(18) = 0
TriggerAll = var(19) = 0
Trigger1 = numhelper(887700) >= 1
Trigger1 = helper(887700),var(1) = 0
Trigger1 = EnemyNear(var(1)),anim <= 100 || EnemyNear(var(1)),stateno <= 699
Trigger1 = InGuardDist || EnemyNear(var(1)),MoveType = A
Trigger1 = EnemyNear(var(1)),statetype = S
Trigger1 = random >= 770
Trigger2 = EnemyNear(var(1)),Hitdefattr = S,AA,AP,AT
Trigger2 = random <= 300

;フラッシュ(下段)
[State -1, 1002]
Type = ChangeState
Value = 1002
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
TriggerAll = statetype != A && Ctrl || (stateno = [200,440]) && movecontact
triggerall = var(10) = 0
TriggerAll = fvar(8) = 0
TriggerAll = random >= 770
TriggerAll = var(18) = 0
TriggerAll = var(19) = 0
Trigger1 = numhelper(887700) >= 1
Trigger1 = helper(887700),var(1) = 0
Trigger1 = EnemyNear(var(1)),anim <= 100 || EnemyNear(var(1)),stateno <= 699
Trigger1 = InGuardDist || EnemyNear(var(1)),MoveType = A
Trigger1 = EnemyNear(var(1)),statetype = C
Trigger1 = random >= 770
Trigger2 = EnemyNear(var(1)),Hitdefattr = C,AA,AP,AT
Trigger2 = random <= 300

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ガード
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;アドバンシングガード
[State -1, A_guard]
type = ChangeState
value = 160
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
triggerall = numhelper(165) = 0
triggerall = numhelper(166) = 0
triggerall = stateno = [150,155]
trigger1 = floor(p2bodydist x) = [-35,35]
trigger1 = random >= 910
trigger2 = numhelper(887700) >= 1
trigger2 = helper(887700),var(1) > 0
trigger3 = floor(p2bodydist x) >= 36
trigger3 = random >= 888

;空中
[State -1, AI]
Type = ChangeState
Value = 120
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
TriggerAll = stateno != [120,155]
TriggerAll = statetype = A && Ctrl
Trigger1 = InGuardDist
Trigger1 = ceil(p2bodydist X) = [-15,130]
Trigger2 = !InGuardDist
Trigger2 = Abs(P2Dist X) < 60
Trigger2 = EnemyNear(var(1)),MoveType = A
Trigger3 = InGuardDist
Trigger3 = EnemyNear(var(1)),numproj
Trigger4 = var(18) != 0
Trigger4 = var(18) = [-30,70]
Trigger5 = var(19) != 0
Trigger5 = var(19) = [-30,70]

;地上
[State -1, AI]
Type = ChangeState
Value = 120
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
triggerall = var(10) = 0
TriggerAll = stateno != [120,155]
TriggerAll = statetype != A && Ctrl
Trigger1 = var(18) = 0
Trigger1 = var(19) = 0
Trigger1 = InGuardDist
Trigger2 = !InGuardDist
Trigger2 = Abs(P2Dist X) < 60
Trigger2 = EnemyNear(var(1)),MoveType = A
Trigger3 = numhelper(887700) >= 1
Trigger3 = EnemyNear(var(1)),MoveType = A
Trigger3 = InGuardDist
Trigger3 = helper(887700),var(1) >= 1
Trigger4 = var(18) != 0
Trigger4 = var(18) = [-50,50]
Trigger5 = var(19) != 0
Trigger5 = var(19) = [-50,50]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;相手ダウン時
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;待機
[State -1, 0]
type = ChangeState
value = 0
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = fvar(8) = 0
triggerall = stateno != 0
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5100,5120]
triggerall = floor(p2bodydist x) >= 91
trigger1 = numhelper(1500) >= 1
trigger1 = numhelper(1501) >= 1

;フライング7075
[State -1, 7075]
type = ChangeState
value = 1500
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = statetype != A && ctrl
triggerall = numhelper(1500) = 0
triggerall = numhelper(1501) = 0
triggerall = EnemyNear(var(1)),stateno = [5100,5120]
trigger1 = floor(p2bodydist x) >= 91

;バックダッシュ
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5100,5120]
trigger1 = floor(p2bodydist x) = [-15,90]
trigger1 = backedgebodydist >= 100

;空中フライング7075or空中キック2
[State -1, Air_7075orA_kick2]
type = ChangeState
value = ifelse(random <= 500,1600,640)
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = numhelper(1502) = 0
triggerall = numhelper(1503) = 0
triggerall = statetype = A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5100,5120]
trigger1 = floor(p2bodydist x) <= -45
trigger2 = prevstateno = 102
trigger2 = time >= 20

;空中ダッシュ
[State -1, airdash_f]
type = ChangeState
value = 102
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(5) = 1
triggerall = statetype = A && ctrl
trigger1 = EnemyNear(var(1)),stateno = [5100,5120]
trigger1 = floor(p2bodydist x) = [-65,70]

;前ジャンプ
[State -1, jump_fwd]
type = ChangeState
value = 42
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = statetype != A && ctrl
triggerall = EnemyNear(var(1)),stateno = [5100,5120]
trigger1 = floor(p2bodydist x) = [-55,70]
trigger1 = backedgebodydist < 100

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;昇り攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;クレセントエッジ
[State -1, crescent_edge]
type = ChangeState
value = 1700
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
trigger1 = stateno = 630
trigger1 = movehit = 2
Trigger1 = EnemyNear(var(1)),statetype = S || EnemyNear(var(1)),Statetype = A
Trigger2 = statetype = A && Ctrl
Trigger2 = vel y < 0
Trigger2 = !numtarget
Trigger2 = EnemyNear(var(1)),Statetype = A
Trigger2 = floor(p2bodydist x) = [-35,70]
Trigger3 = stateno = 1700 && Ctrl
Trigger3 = numtarget(1700) >= 1
Trigger3 = var(2) <= 15
Trigger3 = EnemyNear(var(1)),Stateno = [5030,5050]
Trigger3 = floor(p2bodydist x) = [-35,70]
trigger4 = stateno = 630
trigger4 = movecontact
Trigger4 = !numtarget
Trigger4 = floor(p2bodydist x) = [-35,70]
Trigger4 = EnemyNear(var(1)),Statetype = A
trigger5 = stateno = 1700 && ctrl
trigger5 = movecontact
Trigger5 = !numtarget
Trigger5 = floor(p2bodydist x) = [-35,70]
Trigger5 = EnemyNear(var(1)),Statetype = A

;空中キック1
[State -1, AI]
Type = ChangeState
Value = 630
TriggerAll = var(59) >= 1 && roundstate = 2 && alive
TriggerAll = statetype = A && Ctrl
TriggerAll = vel y < 0
Trigger1 = !numtarget
Trigger1 = EnemyNear(var(1)),Statetype = S || EnemyNear(var(1)),Statetype = C
Trigger1 = floor(p2bodydist x) = [-25,33]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;設置
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;フライング7075
[State -1, 7075]
type = ChangeState
value = 1500
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
triggerall = statetype != A && ctrl
triggerall = numhelper(1500) = 0
triggerall = numhelper(1501) = 0
trigger1 = fvar(8) = 0
trigger1 = !inguarddist
trigger1 = !numtarget
trigger1 = EnemyNear(var(1)),stateno != [5100,5120]
trigger1 = floor(p2bodydist x) >= 100
trigger1 = random <= 60

;空中フライング7075
[State -1, Air_7075]
type = ChangeState
value = 1600
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
triggerall = numhelper(1502) = 0
triggerall = numhelper(1503) = 0
triggerall = statetype = A && ctrl
trigger1 = fvar(8) = 0
trigger1 = !inguarddist
trigger1 = !numtarget
trigger1 = EnemyNear(var(1)),stateno != [5100,5120]
trigger1 = random <= 80

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上牽制～繋ぎ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;バリスタボルト
[State -1, ballista_bolt]
type = ChangeState
value = 1300
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
Triggerall = fvar(8) = 0
trigger1 = stateno = 230
trigger1 = movehit = 2

;カタパルト
[State -1, Catapult]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
Triggerall = fvar(8) = 0
trigger1 = stateno = 400 || stateno = 410
trigger1 = movehit = 2

;しゃがみパンチ1
[State -1, C_Punch1]
type = ChangeState
value = 400
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
Triggerall = fvar(8) = 0
trigger1 = stateno = 440
trigger1 = movehit = 2

;しゃがみキック2
[State -1, C_Kick2]
type = ChangeState
value = 440
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
Triggerall = fvar(8) = 0
trigger1 = stateno = 430
trigger1 = movehit = 2

;しゃがみキック1
[State -1, C_Kick1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
triggerall = fvar(8) = 0
triggerall = statetype != A && ctrl
triggerall = !numtarget
triggerall = !inguarddist
triggerall = EnemyNear(var(1)),stateno != [5000,5210]
trigger1 = floor(p2bodydist X) = [40,45]
Trigger1 = EnemyNear(var(1)),Statetype = S || EnemyNear(var(1)),Statetype = C
trigger1 = random <= 400

;立ちキック1
[State -1, S_Kick1]
type = ChangeState
value = 230
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
triggerall = fvar(8) = 0
triggerall = statetype != A && ctrl
triggerall = !numtarget
triggerall = !inguarddist
triggerall = EnemyNear(var(1)),stateno != [5000,5210]
trigger1 = floor(p2bodydist X) = [50,55]
trigger1 = ceil(p2dist y) >= -50
trigger1 = random <= 370

;しゃがみパンチ2
[State -1, C_Punch2]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = var(10) = 0
triggerall = fvar(8) = 0
triggerall = statetype != A && ctrl
trigger1 = !numtarget
trigger1 = !inguarddist
trigger1 = EnemyNear(var(1)),stateno != [5000,5210]
trigger1 = floor(p2bodydist X) = [65,70]
Trigger1 = EnemyNear(var(1)),Statetype = S || EnemyNear(var(1)),Statetype = C
trigger1 = random <= 205
trigger2 = EnemyNear(var(1)),stateno = [5000,5011]
trigger2 = floor(p2bodydist X) = [-5,70]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上移動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;待機
[State -1, 0]
type = ChangeState
value = 0
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = fvar(8) = 0
triggerall = stateno != 0
triggerall = statetype != A && ctrl
triggerall = !numtarget
triggerall = !inguarddist
triggerall = EnemyNear(var(1)),stateno != [5100,5120]
trigger1 = floor(p2bodydist X) <= 10

;歩行
[State -1, walk]
type = ChangeState
value = 20
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = fvar(8) = 0
triggerall = stateno != 20
triggerall = statetype != A && ctrl
triggerall = !numtarget
triggerall = !inguarddist
triggerall = EnemyNear(var(1)),stateno != [5100,5120]
trigger1 = floor(p2bodydist X) = [11,90]

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) >= 1 && RoundState = 2 && alive && !ishelper
triggerall = fvar(8) = 0
triggerall = stateno != 100
triggerall = statetype != A && ctrl
triggerall = !numtarget
triggerall = !inguarddist
triggerall = EnemyNear(var(1)),stateno != [5100,5120]
trigger1 = floor(p2bodydist X) >= 91

;------------------------------------------------------------------------------
;==============================================================================
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------




;アダマンフライパン
[State -1, AdamantFryingPan]
type = ChangeState
value = 3400
triggerall = var(59) = 0
triggerall = command = "Pan"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;ホーミングスター
[State -1, HomingStar]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "Star"
triggerall = numhelper(3300) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;空中ピーケーオアティーケー
[State -1, Air_PKorTK]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command != "pause"
triggerall = command = "PKorTK"
triggerall = numhelper(3001) = 0
triggerall = numhelper(3002) = 0
triggerall = numhelper(3003) = 0
triggerall = numhelper(3004) = 0
triggerall = numhelper(3005) = 0
triggerall = numhelper(3006) = 0
triggerall = numhelper(3007) = 0
triggerall = numhelper(3008) = 0
triggerall = numhelper(3009) = 0
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;ピーケーオアティーケー
[State -1, PKorTK]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command != "pause"
triggerall = command = "PKorTK"
triggerall = numhelper(3001) = 0
triggerall = numhelper(3002) = 0
triggerall = numhelper(3003) = 0
triggerall = numhelper(3004) = 0
triggerall = numhelper(3005) = 0
triggerall = numhelper(3006) = 0
triggerall = numhelper(3007) = 0
triggerall = numhelper(3008) = 0
triggerall = numhelper(3009) = 0
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;ミラーオブテラー
[State -1, Mirror of Terror]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = var(10) = 0
triggerall = command = "Mirror"
triggerall = numhelper(3200) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger3 = stateno = [1000,1002]
trigger4 = stateno = [1030,1032]
trigger5 = stateno = [1100,1500]

;------------------------------------------------------------------------------

;クレセントエッジ
[State -1, crescent_edge]
type = ChangeState
value = 1700
triggerall = var(59) = 0
triggerall = command = "623"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;クレセントエッジ(キャンセル版)
[State -1, cancel_crescent_edge]
type = ChangeState
value = 1760
triggerall = var(59) = 0
triggerall = command = "cancel_crescent"
trigger1 = statetype = A
trigger1 = stateno = 1300

;フラッシュ　対ジャンプ攻撃
[State -1, Flash_A]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = numhelper(1000) = 0
triggerall = command = "Counter_A"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;フラッシュ　対上段攻撃
[State -1, Flash_S]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = numhelper(1000) = 0
triggerall = command = "Counter_S"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;フラッシュ　対下段攻撃
[State -1, Flash_C]
type = ChangeState
value = 1002
triggerall = var(59) = 0
triggerall = numhelper(1000) = 0
triggerall = command = "Counter_C"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;フラッシュ  対ジャンプ攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1030
triggerall = var(59) = 0
trigger1 = stateno = 1000
trigger1 = command = "y"

;フラッシュ  対上段攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1031
triggerall = var(59) = 0
trigger1 = stateno = 1001
trigger1 = command = "y"

;フラッシュ  対下段攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1032
triggerall = var(59) = 0
trigger1 = stateno = 1002
trigger1 = command = "y"

;ウインドミルドロップ
[State -1, Windmill_drop]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = var(10) <= 0
triggerall = command = "s_throw"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;バリスタボルト
[State -1, ballista_bolt]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "623"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,230]) || (stateno = [400,440])
trigger2 = movecontact

;カタパルト
[State -1, Catapult]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "Catapult"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact

;ダブルハンマー
[State -1, double_hammer]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "hammer"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact

;空中フライング7075
[State -1, Air_ESD]
type = ChangeState
value = 1600
triggerall = var(59) = 0
triggerall = command = "7075"
triggerall = numhelper(1502) = 0
triggerall = numhelper(1503) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;フライング7075
[State -1, ESD]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall = command = "7075"
triggerall = numhelper(1500) = 0
triggerall = numhelper(1501) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;---------------------------------------------------------------------------

;水月打ち
[State -1, throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "throw"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;前方ワープ 
[State -1, Roll_F]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command != "pause"
triggerall = command = "c" && command != "holdback"
trigger1 = ctrl

;後方ワープ 
[State -1, Roll_B]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command != "pause"
triggerall = command = "c" && command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, jump]
type = ChangeState
value = 40
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "holdup"
triggerall = command != "holddown"
trigger1 = stateno = [200,440]
trigger1 = movecontact
trigger1 = enemynear(var(1)),statetype = A

;空中ジャンプ
[State -1, airjump]
type = ChangeState
value = 45
triggerall = var(59) = 0
triggerall = floor(pos y) <= ifelse(vel y < 0,-35,-10)
triggerall = var(4) = 0
triggerall = var(5) = 1
triggerall = command = "holdup"
triggerall = command != "holddown" 
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;空中ダッシュ
[State -1, airdash_f]
type = ChangeState
value = 102
triggerall = var(59) = 0
triggerall = var(5) = 1
triggerall = statetype = A
triggerall = command != "pause"
triggerall = command = "c" || command = "FF"
triggerall = command != "z" && command != "holddown" && command != "holdback"
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;空中バックダッシュ
[State -1, airdash_b]
type = ChangeState
value = 107
triggerall = var(59) = 0
triggerall = var(5) = 1
triggerall = statetype = A
triggerall = command != "pause"
triggerall = command = "c" && command = "holdback" || command = "BB"
triggerall = command != "z" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックダッシュ
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;アドバンシングガード
[State -1, A_guard]
type = ChangeState
value = 160
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Alive
triggerall = command = "z"
triggerall = command != "pause"
triggerall = numhelper(165) = 0
triggerall = numhelper(166) = 0
trigger1 = stateno = [150,155]
ignorehitpause = 1

;------------------------------------------------------------------------------
;立ちパンチ1
[State -1, S_Punch1]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 230
trigger2 = movecontact

;立ちパンチ2
[State -1, S_Punch2]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "throw"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

;立ちキック1
[State -1, S_Kick1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 230
trigger2 = movecontact || animelemtime(3) >= 0
trigger3 = stateno = 430
trigger3 = movecontact

;立ちキック2
[State -1, S_Kick2]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "throw"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 240
trigger2 = movecontact || animelemtime(3) >= 0
trigger3 = stateno = 200 || stateno = 230
trigger3 = movecontact

;------------------------------------------------------------------------------
;しゃがみパンチ1
[State -1, C_Punch1]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movehit

;しゃがみパンチ2
[State -1, C_Punch2]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype !=A
trigger1 = ctrl

;しゃがみキック1
[State -1, C_Kick1]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact || animelemtime(3) >= 0

;しゃがみキック2
[State -1, C_Kick2]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 230 || stateno = 410 || stateno = 430
trigger2 = movecontact

;------------------------------------------------------------------------------
;空中パンチ1
[State -1, A_Punch1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(10) >= 1
trigger2 = stateno = 610
trigger2 = movecontact

;空中パンチ2
[State -1, A_Punch2]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;空中キック1
[State -1, A_kick1]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;空中キック2
[State -1, A_kick2]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------


