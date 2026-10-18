
;==============================================================================

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

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------
;コマンドの一部が重なる場合、先に書かれたものが優先されるので
;気を付けてください。

;デュアルアタック
[Command]
name = "デュアルアタック"
command = x+a, D, D, x
time = 45

[Command]
name = "デュアルアタック"
command = x+a, D, D, y
time = 45

[Command]
name = "デュアルアタック"
command = x+a, D, D, z
time = 45

;ソーリスマルティブライア
[Command]
name = "ソーリスマルティブライア"
command = ~D, D, a
time = 20

[Command]
name = "ソーリスマルティブライア"
command = ~D, D, b
time = 20

[Command]
name = "ソーリスマルティブライア"
command = ~D, D, c
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
;コマンドの一部が重なる場合、先に書かれたものが優先されるので
;623 → 236の順に登録されています。
;（注:236等はテンキーでコマンドを表しています）

;スタンプラティナム
[Command]
name = "623_x"
command = ~F, D, DF, x

[Command]
name = "623_y"
command = ~F, D, DF, y

[Command]
name = "623_z"
command = ~F, D, DF, z

;スタンブリット
[Command]
name = "236_x"
command = ~D, DF, F, x

[Command]
name = "236_y"
command = ~D, DF, F, y

[Command]
name = "236_z"
command = ~D, DF, F, z

;ジャイアレーター
[Command]
name = "214_a"
command = ~D, DB, B, a

[Command]
name = "214_b"
command = ~D, DB, B, b

[Command]
name = "214_c"
command = ~D, DB, B, c

;アプソリュートビート
[Command]
name = "236_a"
command = ~D, DF, F, a

[Command]
name = "236_b"
command = ~D, DF, F, b

[Command]
name = "236_c"
command = ~D, DF, F, c

;ＴＮＴチャージ
[Command]
name = "hold_x"
command = /$x

[Command]
name = "hold_y"
command = /$y

[Command]
name = "hold_a"
command = /$a

[Command]
name = "hold_b"
command = /$b


[Command]
name = "FFx"
command = ~F, F, x

[Command]
name = "FFy"
command = ~F, F, y

[Command]
name = "FFa"
command = ~F, F, a

[Command]
name = "FFb"
command = ~F, F, b

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

;超ごっつい攻撃
[Command]
name = "z+c"
command = z+c
time = 1

;回り込み
[Command]
name = "y+b"
command = y+b
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
name = "追い討ち"
command = /$U,a
time = 1

[Command]
name = "追い討ち"
command = /$U,b
time = 1

[Command]
name = "追い討ち"
command = /$U,c
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

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;==============================================================================

;デュアルアタック（ゲージレベル3）

[State -1, dual attack]
type = ChangeState
value = 3100
triggerall = command = "デュアルアタック"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = ctrl
trigger2 = stateno = [220,221] ;立ち、ダッシュ中ごっつい
trigger2 = movecontact
trigger3 = stateno = 421
trigger3 = time > 13

;===========================================================================
;連続技を決める変数。変数にすると便利みたいです。
;使いたい人は使うと良いでしょう。

[State -1, Combo Condition Reset] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

;※重大なバグが発覚。　ダメージを受けた瞬間は、var(1)が0にならない。
;　ダメージを受けた直後2Fの間、ダメージ無効のカウンターができる。
;　修正方法は、movetypeをうまく使うことにある。

[State -1, Combo Condition Check] ;キャンセル可なステートナンバーを決定
type = VarSet
triggerall = movetype != H        ;ここに使っても無駄！
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != [220,221];立ち、ダッシュ中ごっつい
trigger2 = stateno != [250,253];回り込み
trigger2 = stateno != 420      ;しゃがみごっつい発動中
trigger2 = stateno != 421      ;しゃがみごっついヒット
trigger3 = stateno = [220,221] ;立ち、ダッシュ中ごっつい
trigger3 = movecontact
trigger4 = stateno = [252,253] ;回り込み
trigger4 = time > 13 || movecontact
trigger5 = stateno = 421       ;しゃがみごっついヒット
trigger5 = time > 13
trigger6 = stateno = 52
var(1) = 1
ignorehitpause = 1

;------------------------------------------------------------------------------

;ソーリスマルティブライア（ゲージレベル１）

[State -1, Maruti briar]
type = ChangeState
value = 3000
triggerall = command = "ソーリスマルティブライア"
triggerall = power >= 1000
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;------------------------------------------------------------------------------

;アプソリュートビート

[State -1, Absolute 3]
type = ChangeState
value = 1302
triggerall = stateno = 1301
triggerall = command = "236_c"
trigger1 = statetime >= 21

;アプソリュートビート(2段目以降、キャンセル用)
[State -1, Absolute 2]
type = ChangeState
value = 1301
triggerall = stateno = 1300
triggerall = command = "236_b"
trigger1 = statetime >= 20

[State -1, Absolute 1]
type = ChangeState
value = 1300
triggerall = command = "236_a"
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;---------------------------------------------------------------------------

;TNTチャージab1
[State -1, TNTab]
Type = ChangeState
value = 1201
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 1
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージab2
[State -1, TNTab]
Type = ChangeState
value = 1202
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 2
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージab3
[State -1, TNTab]
Type = ChangeState
value = 1203
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 3
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージab4
[State -1, TNTab]
Type = ChangeState
value = 1204
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 4
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージxy1
[State -1, TNTxy]
Type = ChangeState
value = 1201
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 1
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージxy2
[State -1, TNTxy]
Type = ChangeState
value = 1202
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 2
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージxy3
[State -1, TNTxy]
Type = ChangeState
value = 1203
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 3
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;TNTチャージxy4
[State -1, TNTxy]
Type = ChangeState
value = 1204
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 4
triggerall = movetype != H
triggerall = roundstate = 2
trigger1 = var(1)
trigger2 = stateno = [105,106]

;ダッシュTNTチャージab1
[State -1, TNTab]
Type = ChangeState
value = 1211
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 1
trigger1 = stateno = [100,101]

;ダッシュTNTチャージab2
[State -1, TNTab]
Type = ChangeState
value = 1212
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 2
trigger1 = stateno = [100,101]

;ダッシュTNTチャージab3
[State -1, TNTab]
Type = ChangeState
value = 1213
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 3
trigger1 = stateno = [100,101]

;ダッシュTNTチャージab4
[State -1, TNTab]
Type = ChangeState
value = 1214
triggerall = command != "hold_a" || command != "hold_b"
triggerall = var(7) = 4
trigger1 = stateno = [100,101]

;ダッシュTNTチャージxy1
[State -1, TNTxy]
Type = ChangeState
value = 1211
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 1
trigger1 = stateno = [100,101]

;ダッシュTNTチャージxy2
[State -1, TNTxy]
Type = ChangeState
value = 1212
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 2
trigger1 = stateno = [100,101]

;ダッシュTNTチャージxy3
[State -1, TNTxy]
Type = ChangeState
value = 1213
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 3
trigger1 = stateno = [100,101]

;ダッシュTNTチャージxy4
[State -1, TNTxy]
Type = ChangeState
value = 1214
triggerall = command != "hold_x" || command != "hold_y"
triggerall = var(9) = 4
trigger1 = stateno = [100,101]


[State -1]
type = VarSet
triggerall = var(7) > 0
triggerall = stateno != [1200,1210]
trigger1 = command != "hold_a"
trigger2 = command != "hold_b"
trigger3 = command = "hold_x" && command = "hold_y"
var(7) = 0

[State -1]
type = VarSet
triggerall = var(9) > 0
triggerall = stateno != [1200,1210]
trigger1 = command != "hold_x"
trigger2 = command != "hold_y"
trigger3 = command = "hold_a" && command = "hold_b"
var(9) = 0

;------------------------------------------------------------------------------

;ジャイアレーター（強）
[State -1, r]
type = ChangeState
value = 1170
triggerall = command = "214_c"
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;ジャイアレーター（中）
[State -1, ]
type = ChangeState
value = 1160
triggerall = command = "214_b"
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;ジャイアレーター（弱）
[State -1, ]
type = ChangeState
value = 1150
triggerall = command = "214_a"
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;------------------------------------------------------------------------------

;ソアプラティナム（強）
[State -1, ]
type = ChangeState
value = 1120
triggerall = command = "623_z"
triggerall = NumHelper(1100) = 0
triggerall = movetype != H
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [640,641]
trigger2 = movecontact

;ソアプラティナム（中）
[State -1, ]
type = ChangeState
value = 1110
triggerall = command = "623_y"
triggerall = NumHelper(1100) = 0
triggerall = movetype != H
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [640,641]
trigger2 = movecontact

;ソアプラティナム（弱）
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "623_x"
triggerall = NumHelper(1100) = 0
triggerall = movetype != H
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [640,641]
trigger2 = movecontact

;------------------------------------------------------------------------------

;スタンプラティナム（強）
[State -1, ]
type = ChangeState
value = 1070
triggerall = command = "623_z"
triggerall = NumHelper(1050) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger1 = stateno != 420
trigger2 = stateno = [105,106]

;スタンプラティナム（中）
[State -1, ]
type = ChangeState
value = 1060
triggerall = command = "623_y"
triggerall = NumHelper(1050) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger1 = stateno != [420,421]
trigger2 = stateno = [105,106]

;スタンプラティナム（弱）
[State -1, ]
type = ChangeState
value = 1050
triggerall = command = "623_x"
triggerall = NumHelper(1050) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger1 = stateno != [420,421]
trigger2 = stateno = [105,106]

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;スタンブリット(強)
[State -1, Bullitt]
type = ChangeState
value = 1020
triggerall = command = "236_z"
triggerall = NumHelper(1000) = 0
triggerall = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;スタンブリット(中)
[State -1, Bullitt]
type = ChangeState
value = 1010
triggerall = command = "236_y"
triggerall = NumHelper(1000) = 0
triggerall = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;スタンブリット(弱)
[State -1, Bullitt]
type = ChangeState
value = 1000
triggerall = command = "236_x"
triggerall = NumHelper(1000) = 0
triggerall = movetype != H
trigger1 = var(1)
trigger2 = stateno = [105,106]

;==============================================================================
;------------------------------------------------------------------------------

;パワー溜め
[State -1, Power Gauge Charge]
type = ChangeState
value = 700
triggerall = command = "hold_x" && command = "hold_a"
triggerall = power < 3000   ;ゲージが満タンの時は出せない
triggerall = var(6) = 0     ;TNTチャージの時は出せない
triggerall = var(8) = 0     
trigger1 = statetype != A
trigger1 = ctrl = 1

;怒り爆発
[State -1, Power Gauge]
type = ChangeState
value = 705
triggerall = var(31) = 1
triggerall = statetype != A
triggerall = roundstate != 3 ;決着がついた瞬間は出せない
trigger1 = ctrl = 1
trigger2 = RoundState = 1
trigger2 = anim = 0
trigger3 = stateno = 700

;迎撃防御
[State -1, Shield]
type = ChangeState
value = 710
triggerall = command = "y+b"
trigger1 = ctrl = 1
trigger2 = stateno = 52
trigger3 = stateno = 100
trigger4 = stateno = 107

;追い討ち
[State -1, ]
type = ChangeState
value = 750
triggerall = command = "追い討ち"
triggerall = P2stateno = [5100,5110]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40

;==============================================================================
;------------------------------------------------------------------------------

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------

;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl || stateno = 100 || stateno = 101
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "holdfwd"
trigger3 = p2bodydist X < 20
trigger3 = p2stateno = 1052 || p2stateno = 1062 || p2stateno = 1072
trigger4 = command = "holdback"
trigger4 = p2bodydist X < 20
trigger4 = p2stateno = 1052 || p2stateno = 1062 || p2stateno = 1072

;空中投げ
[State -1, Aerial Throw]
type = ChangeState
value = 850
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 600
triggerall = Pos Y < -15
triggerall = p2statetype = A
triggerall = p2movetype != H
triggerall = p2bodydist Y = [-60,40] 
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X = [-15,30] 
trigger2 = command = "holdback"
trigger2 = p2bodydist X = [-15,30]

;============================================================================

;超ごっつい攻撃
[State -1, Stand Gottui Punch]
type = ChangeState
value = 720
triggerall = command = "z+c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 100
trigger4 = stateno = [105,107]

;----------------------------------------------------------------------------

;ダッシュパンチ
[State -1, Dash Punch]
type = ChangeState
value = 270
trigger1 = Stateno = 100
trigger1 = command = "x" || command = "y"
trigger2 = Statetype = S
trigger2 = movetype != H
trigger2 = (Stateno != [200,499]) || (Stateno != [700,3199])
trigger2 = command = "FFx" || command = "FFy"
trigger2 = ctrl

;----------------------------------------------------------------------------

;ダッシュキック
[State -1, Dash Kick]
type = ChangeState
value = 280
trigger1 = Stateno = 100
trigger1 = command = "a" || command = "b"
trigger2 = Statetype = S
trigger2 = movetype != H
trigger2 = (Stateno != [200,499]) || (Stateno != [700,3199])
trigger2 = command = "FFa" || command = "FFb"
trigger2 = ctrl

;----------------------------------------------------------------------------

;立ち強パンチ(前押し)
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;立ちごっつい攻撃
[State -1, Stand Gottui Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;立ちごっつい攻撃(ダッシュ時)
[State -1, Stand Gottui Punch]
type = ChangeState
value = 221
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = stateno = 100

;----------------------------------------------------------------------------

;立ち弱キック(前押し)
[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl

;立ち強キック(前押し)
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl

;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;回り込み攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = 100

;回り込み攻撃(バックステップ時)
[State -1, Stand Light Punch]
type = ChangeState
value = 251
triggerall = command = "c"
trigger1 = stateno = [105,106]

;------------------------------------------------------------------------------

;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
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
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみごっつい攻撃
[State -1, Crouching Gottui Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------

;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;空中強パンチ(前押し)
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl

;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;空中ごっつい攻撃
[State -1, Jump Gottui Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;空中ごっつい攻撃
[State -1, Jump Gottui Punch]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------

;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;この下、一行以上空ける事…




