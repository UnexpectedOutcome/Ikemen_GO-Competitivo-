;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;-|AIスイッチ|-----------------------------------------------------------------
[Command]
name = "AI0"
command = a,a,a,a,a
time = 1
[Command]
name = "AI1"
command = b,b,b,b,b
time = 1
[Command]
name = "AI2"
command = c,c,c,c,c
time = 1
[Command]
name = "AI3"
command = x,x,x,x,x
time = 1
[Command]
name = "AI4"
command = y,y,y,y,y
time = 1
[Command]
name = "AI5"
command = z,z,z,z,z
time = 1
[Command]
name = "AI6"
command = s,s,s,s,s
time = 1
[Command]
name = "AI7"
command = F,F,F,F,F
time = 1
[Command]
name = "AI8"
command = D,D,D,D,D
time = 1
[Command]
name = "AI9"
command = B,B,B,B,B
time = 1
[Command]
name = "AI10"
command = U,U,U,U,U
time = 1
[Command]
name = "AI11"
command = a,a,a,a,a
time = 1
[Command]
name = "AI12"
command = c,c,c,c,c
time = 1
[Command]
name = "AI13"
command = x,x,x,x,x
time = 1
[Command]
name = "AI14"
command = y,y,y,y,y
time = 1
[Command]
name = "AI15"
command = z,z,z,z,z
time = 1
[Command]
name = "AI16"
command = s,s,s,s,s
time = 1
[Command]
name = "AI17"
command = a,B,c,x,y
time = 1
[Command]
name = "AI18"
command = a,a,a,a,F
time = 1
[Command]
name = "AI19"
command = b,b,b,b,F
time = 1
[Command]
name = "AI20"
command = c,c,c,c,F
time = 1
[Command]
name = "AI21"
command = x,x,x,x,F
time = 1
[Command]
name = "AI22"
command = y,y,y,y,F
time = 1
[Command]
name = "AI23"
command = z,z,z,z,F
time = 1
[Command]
name = "AI24"
command = s,s,s,s,F
time = 1
[Command]
name = "AI25"
command = F,F,F,F,F
time = 1
[Command]
name = "AI26"
command = D,D,D,D,D
time = 1
[Command]
name = "AI27"
command = B,B,B,B,B
time = 1
[Command]
name = "AI28"
command = U,U,U,U,U
time = 1
[Command]
name = "AI29"
command = a,a,a,a,B
time = 1
[Command]
name = "AI30"
command = c,c,c,c,B
time = 1
[Command]
name = "AI31"
command = x,x,x,x,B
time = 1
[Command]
name = "AI32"
command = y,y,y,y,B
time = 1
[Command]
name = "AI33"
command = z,z,z,z,B
time = 1
[Command]
name = "AI34"
command = s,s,s,s,B
time = 1
[Command]
name = "AI35"
command = z,z,z,z,B
time = 1
[Command]
name = "AI36"
command = z,z,z,z,a
time = 1
[Command]
name = "AI37"
command = z,a,a,a,a
time = 1
[Command]
name = "AI38"
command = z,z,z,z,U
time = 1
[Command]
name = "AI39"
command = z,z,z,z,D
time = 1
[Command]
name = "AI40"
command = z,z,z,z,F,D
time = 1
[Command]
name = "AI41"
command = z,z,z,a,z,D
time = 1
[Command]
name = "AI42"
command = z,z,z,z,U,U
time = 1
[Command]
name = "AI43"
command = z,z,z,z,B,U
time = 1
[Command]
name = "AI44"
command = z,z,a,a,a,a
time = 1
[Command]
name = "AI45"
command = z,z,z,a,b,c
time = 1
[Command]
name = "AI46"
command = z,z,z,z,U,D
time = 1
[Command]
name = "AI47"
command = z,z,z,a,a,U
time = 0
[Command]
name = "AI48"
command = z,z,z,c,z,B
time = 1
[Command]
name = "AI49"
command = z,c,z,z,a,B
time = 1
[Command]
name = "AI50"
command = z,b,z,a,a,z
time = 1
[Command]
Name    = "AI51"
Command = D, DF, F, UF, U, UB
Time    = 1
[Command]
Name    = "AI52"
Command = D, DF, F, UF, z, UB
Time    = 1
[Command]
Name    = "AI53"
Command = D, DF, F, UF, b, UB
Time    = 1
[Command]
Name    = "AI54"
Command = D, DF, z, UF, U, UB
Time    = 1
[Command]
Name    = "AI55"
Command = D, DF, F, UF, c, UB
Time    = 1
[Command]
Name    = "AI56"
Command = D, DF, F, UF, U, B
Time    = 1
[Command]
Name    = "AI57"
Command = D, DF, F, UF, U, U
Time    = 1
[Command]
Name    = "AI58"
Command = D, D, F, UF, U, UB
Time    = 1
[Command]
Name    = "AI59"
Command = D, DF, F, UF, U, UB, x, y, z
Time    = 1
[Command]
Name    = "AI60"
Command = D, DF, F, UF, U, UB, c, x
Time    = 1



;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "rena"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, c
time = 30

[Command]
name = "akashachi"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "akashachi"
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "akashachi"
command = ~D, DB, B, D, DB, B, c
time = 20

[Command]
name = "tsukitobashi"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "tsukitobashi"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "tsukitobashi"
command = ~D, DF, F, D, DF, F, c
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "taraiotoshia"
command = ~D, DB, B, a
time = 12

[Command]
name = "taraiotoshib"
command = ~D, DB, B, b
time = 12

[Command]
name = "taraiotoshic"
command = ~D, DB, B, c
time = 12

[Command]
name = "taraiotoshis"
command = ~D, DB, B, s
time = 12

[Command]
name = "itowoharu"
command = ~D, DB, B, a
time = 12

[Command]
name = "itowoharu"
command = ~D, DB, B, b
time = 12

[Command]
name = "itowoharu"
command = ~D, DB, B, c
time = 12

[Command]
name = "banana"
command = ~D, DF, F, a
time = 12

[Command]
name = "kanshakudama"
command = ~D, DF, F, b
time = 12

[Command]
name = "w-kanshakudama"
command = ~D, DF, F, c
time = 12

[Command]
name = "a-hanabi"
command = ~D, DF, F, a
time = 12

[Command]
name = "a-hanabi"
command = ~D, DF, F, b
time = 12

[Command]
name = "a-hanabi"
command = ~D, DF, F, c
time = 12

[Command]
name = "sutekaku"
command = /F, b
time = 7
;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "h-jump"    
command = ~$D,$U
time = 2

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 15

[Command]
name = "j-cancel"
command = $D, $U
time = 6

;------------------------------------------------------------------------------
;-| 復帰 |-----------------------------------------------------------------

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

;------------------------------------------------------------------------------
;-| ボタン同時押し |-----------------------------------------------------------
[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+b"
command = y+b
time = 1

[Command]
name = "a+b"
command = a+b
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

;=================================
;ブロッキング
[Command]
name = "blocking-000"
command = F
time = 1

[Command]
name = "blocking-001"
command = /F
time = 1

[Command]
name = "blocking-002"
command = D
time = 1

[Command]
name = "blocking-003"
command = /D
time = 1

;====================================
;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_a"
command = /a
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

[command]
name="fwd"
command=F
time=1

[command]
name="back"
command=B
time=1

[command]
name="up"
command=U
time=1

[command]
name="down"
command=D
time=1

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。



[State -3, AI];スイッチオン
type = Varset
TriggerAll = Var(59) = 0
;TriggerAll = RoundState = [1, 2]
trigger1 = Command = "AI0"
trigger2 = Command = "AI1"
trigger3 = Command = "AI2"
trigger4 = Command = "AI3"
trigger5 = Command = "AI4"
trigger6 = Command = "AI5"
trigger7 = Command = "AI6"
trigger8 = Command = "AI7"
trigger9 = Command = "AI8"
trigger10 = Command = "AI9"
trigger11 = Command = "AI10"
trigger12 = Command = "AI11"
trigger13 = Command = "AI12"
trigger14 = Command = "AI13"
trigger15 = Command = "AI14"
trigger16 = Command = "AI15"
trigger17 = Command = "AI16"
trigger18 = Command = "AI17"
trigger19 = Command = "AI18"
trigger20 = Command = "AI19"
trigger21 = Command = "AI20"
trigger22 = Command = "AI21"
trigger23 = Command = "AI22"
trigger24 = Command = "AI23"
trigger25 = Command = "AI24"
trigger26 = Command = "AI25"
trigger27 = Command = "AI26"
trigger28 = Command = "AI27"
trigger29 = Command = "AI28"
trigger30 = Command = "AI29"
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
trigger51 = Command = "AI50"
trigger42 = Command = "AI51"
trigger43 = Command = "AI52"
trigger44 = Command = "AI53"
trigger45 = Command = "AI54"
trigger46 = Command = "AI55"
trigger47 = Command = "AI56"
trigger48 = Command = "AI57"
trigger49 = Command = "AI58"
trigger50 = Command = "AI59"
trigger51 = Command = "AI60"
v = 59
value = 1
IgnoreHitPause = 1

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 竜宮レナびっぐぼでぃ];ゲージレベル５
type = ChangeState
value = 3500
triggerall = command = "rena"
triggerall = power >= 4000
triggerall = statetype = S
triggerall = Var(59) = 0
trigger1 = ctrl || stateno = [100,105]
trigger2 = var(1)
trigger3 = stateno = [1000,1010]
trigger3 = movecontact

[State -1, 赤鯱];ゲージレベル１
type = ChangeState
value = 3000
triggerall = command = "akashachi"
triggerall = power >= 1000
triggerall = statetype = S
triggerall = Numhelper(3010) = 0
triggerall = Var(59) = 0
trigger1 = ctrl = 1 || stateno = [100,105]
trigger2 = stateno = [1000,1010]
trigger2 = movecontact
trigger3 = Var(30)
trigger3 = statetype != A
trigger3 = stateno = [200, 2999]
trigger3 = time > 3
trigger4 = Var(30) > 0
trigger4 = stateno = 3050
trigger4 = movecontact

;------------------------------------------------------------------------------

[State -1,突き飛ばし];ゲージレベル１
type = ChangeState
value = 3050
triggerall = command = "tsukitobashi"
triggerall = power >= 1000
triggerAll = Var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl || stateno = [100,105]
trigger2 = var(1)
trigger3 = stateno = [1000,1010]
trigger3 = movecontact
trigger4 = Var(30) > 0
trigger4 = statetype != A
trigger4 = stateno = [200, 2999]
trigger4 = time > 3


;==============================================================================
; 必殺技
;==============================================================================
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
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 220
trigger2 = stateno != 420 ;[Statedef 420]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
[State -1, たらい落としa]
type = ChangeState
value = 1400
triggerAll = Var(59) = 0
triggerall = command = "taraiotoshia"
;triggerall = Numhelper(12010) < 1
trigger1 = var(1) ;上で設定した変数が有効になった時
trigger2 = stateno = 1010
trigger2 = movecontact

[State -1, たらい落としb]
type = ChangeState
value = 1410
triggerAll = Var(59) = 0
triggerall = command = "taraiotoshib"
;triggerall = Numhelper(12010) < 1
trigger1 = var(1)
trigger2 = stateno = 1010
trigger2 = movecontact

[State -1, たらい落としc]
type = ChangeState
value = 1420
triggerAll = Var(59) = 0
triggerall = command = "taraiotoshic"
;triggerall = Numhelper(12010) < 1
trigger1 = var(1)
trigger2 = stateno = 1010
trigger2 = movecontact

[State -1, たらい落としs]
type = ChangeState
value = 1430
triggerAll = Var(59) = 0
triggerall = command = "taraiotoshis"
;triggerall = Numhelper(12010) < 1
trigger1 = var(1)
trigger2 = stateno = 1010
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, 糸を張る]
type = ChangeState
value = 1300
triggerAll = Var(59) = 0
triggerall = stateno != 620
triggerall = Numhelper(1310) < 1
triggerall = command = "itowoharu"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 600) || (stateno = 610)
trigger2 = movecontact
trigger3 = stateno = 105
trigger3 = time > 3

;------------------------------------------------------------------------------

[State -1, バナナの皮]
type = ChangeState
value = 1100
triggerAll = Var(59) = 0
triggerall = command = "banana"
triggerall = Numhelper(11000) < 2
trigger1 = var(1)
trigger2 = stateno = 1010
trigger2 = movecontact

[State -1, カンシャク玉]
type = ChangeState
value = 1110
triggerAll = Var(59) = 0
triggerall = command = "kanshakudama"
triggerall = command != "hold_a"
triggerall = Numhelper(1111) < 2
trigger1 = var(1)
trigger2 = stateno = 1010
trigger2 = movecontact

[State -1, ダブルカンシャク玉]
type = ChangeState
value = 1120
triggerAll = Var(59) = 0
triggerall = command = "w-kanshakudama"
triggerall = Numhelper(1111) < 2
trigger1 = var(1)
trigger2 = stateno = 1010
trigger2 = movecontact

;------------------------------------------------------------------------------
[State -1, 空中花火]
type = ChangeState
value = 2000
triggerAll = Var(59) = 0
triggerall = command = "a-hanabi"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = Pos Y < -10
trigger2 = (stateno = 600) || (stateno = 610)
trigger2 = movecontact
trigger3 = stateno = 105
trigger3 = time > 8

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
[State -1, ジャンプキャンセル可能技]
type = ChangeState
value = 40
triggerAll = Var(59) = 0
triggerall = RoundState = 2
triggerall = command = "holdup"
triggerall = command != "holddown"
triggerall = StateType = S
trigger1 = ctrl || stateno = [100,105]
trigger2 = stateno = 200
trigger2 = movecontact

 [State -1, ジャンプキャンセル可能技]
type = ChangeState
value = 40
triggerAll = Var(59) = 0
triggerall = RoundState = 2
triggerall = command = "j-cancel"
triggerall = StateType = S
trigger1 = stateno = 1000
trigger1 = movecontact
trigger2 = stateno = 1011
trigger2 = movecontact
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerAll = Var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, バックステップ]
type = ChangeState
value = 105
triggerAll = Var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1|| stateno = [100,105]

;==============================================================================
; 特殊技
;==============================================================================
[State -1, オヤシロ発動]
type = ChangeState
value = 3100
triggerAll = Var(59) = 0
triggerAll = Var(30) = 0
triggerAll = Statetype != A
triggerall = command = "y+b"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [100,104]
trigger3 = stateno = 701
trigger4 = stateno = [120,131]
trigger5 = stateno = [140,153]
;------------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 800
triggerAll = Var(59) = 0
triggerall = command = "a+b"
triggerall = statetype != A
trigger1 = ctrl|| stateno = [100,105]

;------------------------------------------------------------------------------
[State -1, 梨花を呼ぶ]
type = ChangeState
value = 4000
triggerAll = Var(59) = 0
triggerall = command = "x+a"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = Numhelper(4001) = 0
trigger1 = ctrl = 1
trigger2 = stateno = [200, 1999]
;------------------------------------------------------------------------------
[State -1, ステップ格闘]
type = ChangeState
value = 1000
triggerAll = Var(59) = 0
triggerall = command = "sutekaku"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || stateno = [100,105]
trigger2 = stateno != 220
trigger2 = stateno != 420
trigger2 = time >=8
trigger2 = movecontact

[State -1, ステップ格闘(通常技キャンセル）]
type = ChangeState
value = 1010
triggerAll = Var(59) = 0
triggerall = command = "sutekaku"
trigger1 = (stateno = [200,299]) || (stateno = [400,499]) || stateno = [100,105]
trigger1 = stateno != 220
trigger1 = stateno != 420
trigger1 = time < 8
trigger1 = movecontact
;--------------------------------------------------------------------------------------
;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerAll = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1|| stateno = [100,105]
trigger2 = stateno = 200
trigger2 = time > 4
trigger3 = stateno = 400
trigger3 = time > 3

[State -1, 立ち中]
type = ChangeState
value = 210
triggerAll = Var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1|| stateno = [100,105]

[State -1, 立ち強]
type = ChangeState
value = 220
triggerAll = Var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1|| stateno = [100,105]

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerAll = Var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerAll = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 400)
trigger2 = time > 6
trigger3 = stateno = [100,105]

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerAll = Var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerAll = Var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]

;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerAll = Var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 105
trigger2 = time > 8

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerAll = Var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 105
trigger3 = time > 8

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerAll = Var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) || (stateno = 610)
trigger2 = movecontact
trigger3 = stateno = 105
trigger3 = time > 8

;------------------------------------------------------------------------------
