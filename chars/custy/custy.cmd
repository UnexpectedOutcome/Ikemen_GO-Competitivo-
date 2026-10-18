
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

;アダマンフライパン
[State -1, AdamantFryingPan]
type = ChangeState
value = 3400
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
triggerall = command = "623"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;クレセントエッジ(キャンセル版)
[State -1, cancel_crescent_edge]
type = ChangeState
value = 1760
triggerall = command = "cancel_crescent"
trigger1 = statetype = A
trigger1 = stateno = 1300

;フラッシュ　対ジャンプ攻撃
[State -1, Flash_A]
type = ChangeState
value = 1000
triggerall = numhelper(1000) = 0
triggerall = command = "Counter_A"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;フラッシュ　対上段攻撃
[State -1, Flash_S]
type = ChangeState
value = 1001
triggerall = numhelper(1000) = 0
triggerall = command = "Counter_S"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;フラッシュ　対下段攻撃
[State -1, Flash_C]
type = ChangeState
value = 1002
triggerall = numhelper(1000) = 0
triggerall = command = "Counter_C"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;フラッシュ  対ジャンプ攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1030
trigger1 = stateno = 1000
trigger1 = command = "y"

;フラッシュ  対上段攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1031
trigger1 = stateno = 1001
trigger1 = command = "y"

;フラッシュ  対下段攻撃キャンセル 
[State -1, Flash_cancel]
type = ChangeState
value = 1032
trigger1 = stateno = 1002
trigger1 = command = "y"

;ウインドミルドロップ
[State -1, Windmill_drop]
type = ChangeState
value = 1400
triggerall = var(10) <= 0
triggerall = command = "s_throw"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact

;バリスタボルト
[State -1, ballista_bolt]
type = ChangeState
value = 1300
triggerall = command = "623"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,230]) || (stateno = [400,440])
trigger2 = movecontact

;カタパルト
[State -1, Catapult]
type = ChangeState
value = 1100
triggerall = command = "Catapult"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact

;ダブルハンマー
[State -1, double_hammer]
type = ChangeState
value = 1200
triggerall = command = "hammer"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact

;空中フライング7075
[State -1, Air_7075]
type = ChangeState
value = 1600
triggerall = command = "7075"
triggerall = numhelper(1502) = 0
triggerall = numhelper(1503) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

;フライング7075
[State -1, 7075]
type = ChangeState
value = 1500
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
triggerall = command = "throw"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;前方ワープ 
[State -1, Roll_F]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = command != "pause"
triggerall = command = "c" && command != "holdback"
trigger1 = ctrl

;後方ワープ 
[State -1, Roll_B]
type = ChangeState
value = 910
triggerall = statetype != A
triggerall = command != "pause"
triggerall = command = "c" && command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, jump]
type = ChangeState
value = 40
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
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックダッシュ
[State -1, Back Dash]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;アドバンシングガード
[State -1, A_guard]
type = ChangeState
value = 160
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
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 230
trigger2 = movecontact

;立ちパンチ2
[State -1, S_Punch2]
type = ChangeState
value = 210
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
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype !=A
trigger1 = ctrl

;しゃがみキック1
[State -1, C_Kick1]
type = ChangeState
value = 430
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
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;空中キック1
[State -1, A_kick1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;空中キック2
[State -1, A_kick2]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------


