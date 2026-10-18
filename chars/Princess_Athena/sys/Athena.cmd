; FileName : Athena.cmd
;------------------------------------------------------------------------------;
;==============================================================================;
; コマンド
;==============================================================================;
Command.buffer.time = 4
;----------------------------[ 超必殺技 ]----------------------------;

[Command]
  Name    = "2363214A"
  Command = ~D, DF, F, DF, D, DB, B, a
  Time    = 20

[Command]
  Name    = "2363214B"
  Command = ~D, DF, F, DF, D, DB, B, b
  Time    = 20

[Command]
  Name    = "2141236A"
  Command = ~D, DB, B, DB, D, DF, F, a
  Time    = 20

[Command]
  Name    = "2141236B"
  Command = ~D, DB, B, DB, D, DF, F, b
  Time    = 20

[Command]
  Name    = "641236XY"
  Command = ~F, B, DB, D, DF, F, x+y
  Time    = 20

[Command]
  Name    = "641236X"
  Command = ~F, B, DB, D, DF, F, x
  Time    = 20

[Command]
  Name    = "641236Y"
  Command = ~F, B, DB, D, DF, F, y
  Time    = 20

[Command]
  Name    = "236236X"
  Command = ~D, DF, F, D, DF, F, x
  Time    = 20

[Command]
  Name    = "236236Y"
  Command = ~D, DF, F, D, DF, F, y
  Time    = 20

[Command]
  Name    = "236236A"
  Command = ~D, DF, F, D, DF, F, a
  Time    = 20

[Command]
  Name    = "236236B"
  Command = ~D, DF, F, D, DF, F, b
  Time    = 20

;-----------------------------[   EX   ]-----------------------------;

[Command]
  Name    = "236XY"
  Command = ~D, DF, F, x+y

[Command]
  Name    = "236AB"
  Command = ~D, DF, F, a+b

[Command]
  Name    = "623XY"
  Command = ~F, D, DF, x+y

[Command]
  Name    = "623AB"
  Command = ~F, D, DF, a+b

[Command]
  Name     = "214XY"
  Command = ~D, DB, B, x+y

[Command]
  Name     = "214AB"
  Command = ~D, DB, B, a+b

;-----------------------------[ 必殺技 ]-----------------------------;

[Command]
  Name    = "63214A"
  Command = ~F, DF, D, DB, B, a

[Command]
  Name    = "63214B"
  Command = ~F, DF, D, DB, B, b

[Command]
  Name    = "236X"
  Command = ~D, DF, F, x

[Command]
  Name    = "236Y"
  Command = ~D, DF, F, y

[Command]
  Name    = "623A"
  Command = ~F, D, DF, a

[Command]
  Name    = "623B"
  Command = ~F, D, DF, b

[Command]
  Name     = "214X"
  Command = ~D, DB, B, x

[Command]
  Name     = "214Y"
  Command = ~D, DB, B, y

[Command]
  Name    = "22XY"
  Command = ~D, D, x+y

[Command]
  Name    = "22AB"
  Command = ~D, D, a+b

[Command]
  Name    = "22AY"
  Command = ~D, D, a+y

[Command]
  Name    = "22B"
  Command = ~D, D, b"

;---------------------------[ ２回押し技 ]---------------------------;

[Command]
  Name    = "FF"
  Command = F, F
  Time    = 10

[Command]
  Name    = "BB"
  Command = B, B
  Time    = 10

;-----------------------[ ２・３個の同時押し技 ]---------------------;

[Command]
  Name    = "recovery"
  Command = x+y
  Time    = 1

[Command]
  Name    = "recovery"
  Command = a+b
  Time    = 1

;-----------------------[ 方向とボタンで出す技 ]---------------------;

[Command]
  Name    = "down_a"
  Command = /$D,a
  Time    = 1

[Command]
  Name    = "down_b"
  Command = /$D,b
  Time    = 1

;---------------------[ ボタン設定(いじらない) ]---------------------;

[Command]
  Name    = "a"
  Command = a
  Time    = 1

[Command]
  Name    = "b"
  Command = b
  Time    = 1

[Command]
  Name    = "c"
  Command = c
  Time    = 1

[Command]
  Name    = "x"
  Command = x
  Time    = 1

[Command]
  Name    = "y"
  Command = y
  Time    = 1

[Command]
  Name    = "z"
  Command = z
  Time    = 1

[Command]
  Name    = "start"
  Command = s
  Time    = 1

[Command]
  Name    = "fwd"
  Command = F
  Time    = 1

[Command]
  Name    = "back"
  Command = B
  Time    = 1

[Command]
  Name    = "up"
  Command = U
  Time    = 1

[Command]
  Name    = "down"
  Command = D
  Time    = 1

;------------------[ 押しっぱなし設定(いじらない) ]------------------;

[Command]
  Name    = "holdfwd"
  Command = /$F
  Time    = 1

[Command]
  Name    = "holdback"
  Command = /$B
  Time    = 1

[Command]
  Name    = "holdup" 
  Command = /$U
  Time    = 1

[Command]
  Name    = "holddown" 
  Command = /$D
  Time    = 1

[Command]
  Name    = "hold_x"
  Command = /$x
  Time    = 1

[Command]
  Name    = "hold_y"
  Command = /$y
  Time    = 1

;--

[Command]
  Name    = "Jump"
  Command = D, $U
  Time    = 12

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;==============================================================================;
; 超必殺技
;==============================================================================;
;------------------------------------------------------------------------------;
; ペガサス☆ファンタジー
;------------------------------------------------------------------------------;
[State -1 : Pegasus Fantasy]
  Type       = ChangeState
  Value      = 3300
  TriggerAll = Command = "2363214A" || Command = "2363214B"
  TriggerAll = StateType != A
  Trigger1   = Var(30) = [0,1]
  Trigger1   = Ctrl || Var(10) = [1,4]
  Trigger1   = Power >= 3000
  Trigger2   = Var(30) = [2,5]
  Trigger2   = Ctrl || (Var(10) = [1,4]) || (Var(10) = 7)
  Trigger2   = Power >= 2000
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(30) > 0
  Trigger3   = Power >= 1000

;------------------------------------------------------------------------------;
; ヘブンズ･ゲイト
;------------------------------------------------------------------------------;
[State -1 : Heaven's Gate]
  Type       = ChangeState
  Value      = 3100
  TriggerAll = Command = "641236X" || Command = "641236Y"
  TriggerAll = StateType != A
  TriggerAll = Power >= IfElse(Var(31)>0,0,1000)
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,4]
  Trigger3   = Var(10) = 5
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; ポセインドン･レイジ
;------------------------------------------------------------------------------;
[State -1 : Poseidon Rage]
  Type       = ChangeState
  Value      = 3000
  TriggerAll = Command = "2141236A" || Command = "2141236B"
  TriggerAll = StateType != A
  TriggerAll = Power >= IfElse(Var(31)>0,0,1000)
  Trigger1   = Ctrl || (Var(30) = 1 && Var(10) = [1,3])
  Trigger2   = Var(30) != 1
  Trigger2   = Var(10) = [1,4]
  Trigger3   = Var(30) = 1
  Trigger3   = Var(10) = [4,5]
  Trigger3   = Power >= IfElse(Var(31)>0,1000,2000)

;------------------------------------------------------------------------------;
; 炎の杖／風の杖
;------------------------------------------------------------------------------;
[State -1 : Honoo no Tsue/Kaze no Tsue]
  Type       = ChangeState
  Value      = 3200
  TriggerAll = Command = "236236X" || Command = "236236Y"
  TriggerAll = StateType != A || (StateType = A && Var(30) = 5)
  TriggerAll = Var(24) = 0
  TriggerAll = Power >= IfElse(Var(31)>0,0,1000)
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,4]
  Trigger3   = Var(10) = 5
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; フライングファイヤー／フライングハリケーン
;------------------------------------------------------------------------------;
[State -1 : Flying Fire/Flying Hurricane]
  Type       = ChangeState
  Value      = 3210
  TriggerAll = (Command="236236X"&&Var(24) = 1)||(Command="236236Y"&&Var(24) = 2)
  TriggerAll = StateType != A || (StateType = A && Var(30) = 5)
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,4]
  Trigger3   = Var(10) = 5
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; ファイヤーストーム／ストームファイヤー
;------------------------------------------------------------------------------;
[State -1 : Fire Storm/Storm Fire]
  Type       = ChangeState
  Value      = 3220
  TriggerAll = (Command="236236Y"&&Var(24) = 1)||(Command="236236X"&&Var(24) = 2)
  TriggerAll = StateType != A || (StateType = A && Var(30) = 5)
  TriggerAll = Power >= IfElse(Var(31)>0,0,1000)
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,4]
  Trigger3   = Var(10) = 5
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;==============================================================================;
; 必殺技
;==============================================================================;
;------------------------------------------------------------------------------;
; 弱ライオンズシールド
;------------------------------------------------------------------------------;
[State -1 : Lion's Shield(Light)]
  Type       = ChangeState
  Value      = 1400
  TriggerAll = Command = "63214A"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; 強ライオンズシールド
;------------------------------------------------------------------------------;
[State -1 : Lion's Shield(Strong)]
  Type       = ChangeState
  Value      = 1450
  TriggerAll = Command = "63214B"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; ハマドリュアスバスター（地上）
;------------------------------------------------------------------------------;
[State -1 : Hamadrias Buster(Ground)]
  Type       = ChangeState
  Value      = 1000
  TriggerAll = Command = "236X" || Command = "236Y"
  TriggerAll = StateType != A
  TriggerAll = NumHelper(1000) = 0
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0
  Trigger4   = Var(30) = 5
  Trigger4   = StateNo = 105

;------------------------------------------------------------------------------;
; ハマドリュアスバスター（空中）
;------------------------------------------------------------------------------;
[State -1 : Hamadrias Buster(Air)]
  Type       = ChangeState
  Value      = 1100
  TriggerAll = Command = "236X" || Command = "236Y"
  TriggerAll = StateType = A
  TriggerAll = NumHelper(1000) = 0
  TriggerAll = Pos Y < -10
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = StateNo = 250
  Trigger4   = Var(10) = [5,6]
  Trigger4   = Var(30) = 1 || Var(30) = 5
  Trigger4   = Var(31) > 0
  Trigger5   = Var(30) = 5
  Trigger5   = StateNo = 105

;------------------------------------------------------------------------------;
; モーニングスターアタック
;------------------------------------------------------------------------------;
[State -1 : Morning Star Attack]
  Type       = ChangeState
  Value      = 1300
  TriggerAll = Command = "214X"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; モーニングスタークラッシュ
;------------------------------------------------------------------------------;
[State -1 : Morning Star Crash]
  Type       = ChangeState
  Value      = 1350
  TriggerAll = Command = "214Y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; 弱ネプチューンキラー
;------------------------------------------------------------------------------;
[State -1 : Neptune Killer(Light)]
  Type       = ChangeState
  Value      = 1200
  TriggerAll = Command = "623A"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; 強ネプチューンキラー
;------------------------------------------------------------------------------;
[State -1 : Neptune Killer(Strong)]
  Type       = ChangeState
  Value      = 1250
  TriggerAll = Command = "623B"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;------------------------------------------------------------------------------;
; プカプカホバリング
;------------------------------------------------------------------------------;
[State -1 : Pukapuka Hovering]
  Type       = ChangeState
  Value      = 1500
  TriggerAll = Command = "a" && Command = "b"
  TriggerAll = StateType = A
  TriggerAll = Pos Y < -10
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = StateNo = 250
  Trigger4   = Var(10) = [5,6]
  Trigger4   = Var(30) = 1 || Var(30) = 5
  Trigger4   = Var(31) > 0
  Trigger5   = Var(30) = 5
  Trigger5   = StateNo = 105

;------------------------------------------------------------------------------;
; ライフフラワー
;------------------------------------------------------------------------------;
[State -1 : Life Flower]
  Type       = ChangeState
  Value      = 1600
  TriggerAll = Command = "22XY" || Command = "22AB" || Command = "22AY"
  TriggerAll = StateType != A
  TriggerAll = NumHelper(1600) = 0
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,3]
  Trigger3   = Var(10) = [5,6]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Var(31) > 0

;==============================================================================;
; 基本動作
;==============================================================================;
;------------------------------------------------------------------------------;
; フロントステップ
;------------------------------------------------------------------------------;
[State -1 : Front Step]
  Type       = ChangeState
  Value      = 101
  TriggerAll = Var(30) = 0 || Var(30) = 5
  TriggerAll = Command = "FF"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = StateNo = [150,151]
  Trigger2   = Power >= 500

;------------------------------------------------------------------------------;
; ダッシュ
;------------------------------------------------------------------------------;
[State -1 : Run Fwd]
  Type       = ChangeState
  Value      = 100
  TriggrAll  = Var(30) = [1,2]
  TriggerAll = Command = "FF"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; バックステップ
;------------------------------------------------------------------------------;
[State -1 : Run Back]
  Type       = ChangeState
  Value      = 105
  TriggerAll = Command = "BB"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; ジャンプ
;------------------------------------------------------------------------------;
[State -1 : Jump]
  Type       = ChangeState
  Value      = 40
  TriggerAll = Command = "holdup"
  TriggerAll = StateType != A
  TriggerAll = StateNo != 40
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; シルキースルー（投げ）
;------------------------------------------------------------------------------;
[State -1 : Silky Throw(NBC, ARRANGE)]
  Type       = ChangeState
  Value      = 800
  TriggerAll = Var(30) = 0 || Var(30) = 5
  TriggerAll = Command = "y" && Command = "b"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = StateNo != 4000
  Trigger2   = Var(10) = 1

[State -1 : Silky Throw (Punch)]
  Type       = ChangeState
  Value      = 800
  TriggerAll = Var(30) = [1,2]
  TriggerAll = Command = "y"
  TriggerAll = Command = "holdfwd" || Command = "holdback"
  TriggerAll = StateNo != 100
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X < 15
  TriggerAll = P2StateType != A && P2MoveType != H
  Trigger1   = Ctrl

[State -1 : Silky Throw (Kick)]
  Type       = ChangeState
  Value      = 800
  TriggerAll = Var(30) = [1,2]
  TriggerAll = Command = "b"
  TriggerAll = Command = "holdfwd" || Command = "holdback"
  TriggerAll = StateNo != 100
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X < 15
  TriggerAll = P2StateType != A && P2MoveType != H
  Trigger1   = Ctrl

;==============================================================================;
; システム
;==============================================================================;
;------------------------------------------------------------------------------;
; 緊急回避（後方）
;------------------------------------------------------------------------------;
[State -1 : ]
  type       = ChangeState
  value      = 4250
  TriggerAll = Var(30) != 0
  TriggerAll = Command = "x" && Command = "a"
  TriggerAll = Command = "holdback"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Power >= 1000
  Trigger2   = StateNo = [150, 151]
  Trigger3   = Var(30) = 1 || Var(30) = 5
  Trigger3   = Power >= 1000
  Trigger3   = Var(10) = [2, 3]

;------------------------------------------------------------------------------;
; 緊急回避（前方）
;------------------------------------------------------------------------------;
[State -1 : ]
  type       = ChangeState
  value      = 4200
  TriggerAll = (Var(30) = [1,2]) || (Var(30) = 5 && Command = "holdfwd")
  TriggerAll = Command = "x" && Command = "a"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Power >= 1000
  Trigger2   = StateNo = [150, 151]
  Trigger3   = StateNo = 100
  Trigger4   = Var(30) = 1 || Var(30) = 5
  Trigger4   = Power >= 1000
  Trigger4   = Var(10) = [2, 3]

;------------------------------------------------------------------------------;
; GCアタック
;------------------------------------------------------------------------------;
[State -1 : ]
  Type       = ChangeState
  Value      = 4100
  TriggerAll = Var(30) = 0
  TriggerAll = Command = "z"
  TriggerAll = StateType != A
  Trigger1   = Power >= 1000
  Trigger1   = StateNo = [150,151]

;------------------------------------------------------------------------------;
; ふっとばし攻撃
;------------------------------------------------------------------------------;
[State -1 : ]
  Type       = ChangeState
  Value      = 4100
  TriggerAll = (Command = "z"&&Var(30)=[1,5]) || (Command="y"&&Command="b"&&Var(30)=[1,2])
  TriggerAll = StateType != A
  TriggerAll = StateNo != [100,101]
  Trigger1   = Ctrl
  Trigger2   = Power >= 1000
  Trigger2   = StateNo = [150,151]

;------------------------------------------------------------------------------;
; 空中ふっとばし攻撃
;------------------------------------------------------------------------------;
[State -1 : ]
  Type       = ChangeState
  Value      = 4150
  TriggerAll = (Command = "z"&&Var(30)=[1,5]) || (Command="y"&&Command="b"&&Var(30)=[1,2])
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; タクティカルステップ
;------------------------------------------------------------------------------;
[State -1 : Tactical Step(NBC)]
  Type       = ChangeState
  Value      = 4000
  TriggerAll = Var(30) = 0
  TriggerAll = (Command = "x" && Command = "a") || Command = "c"
  TriggerAll = StateType != A
  TriggerAll = Power >= 500
  Trigger1   = Ctrl
  Trigger2   = StateNo != 4000
  Trigger2   = Var(10) = [1,3]
  Trigger2   = Power >= 1000
  Trigger3   = StateNo = [150,151]
  Trigger3   = Power >= 1000

[State -1 : Tactical Step(ARRANGE)]
  Type       = ChangeState
  Value      = 4000
  TriggerAll = Var(30) = 5
  TriggerAll = Command = "x" && Command = "a"
  TriggerAll = StateType != A
  TriggerAll = Power >= 500
  Trigger1   = Ctrl
  Trigger2   = StateNo != 4000
  Trigger2   = Var(10) = [1,3]
  Trigger2   = Power >= 1000
  Trigger3   = StateNo = [150,151]
  Trigger3   = Power >= 1000

;------------------------------------------------------------------------------;
; MAX発動
;------------------------------------------------------------------------------;
[State -1 : MAX]
  Type       = ChangeState
  Value      = 4400
  TriggerAll = Var(30) = 1 || Var(30) = 5
  TriggerAll = Command = "c"
  TriggerAll = StateType != A
  TriggerAll = Power >= 1000
  TriggerAll = Var(31) = 0
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1
  Trigger3   = Var(10) = [2,3]
  Trigger3   = Power >= 2000

;==============================================================================;
; 特殊攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; イカルスの靴
;------------------------------------------------------------------------------;
[State -1 : ]
  Type       = ChangeState
  Value      = 250
  TriggerAll = Command = "22B"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,2]

;------------------------------------------------------------------------------;
; 特殊技
;------------------------------------------------------------------------------;
[State -1 : ]
  Type       = ChangeState
  Value      = 260
  TriggerAll = Var(30) != 0
  TriggerAll = Command = "holdfwd" && Command = "y"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = [1,2]

;==============================================================================;
; 通常攻撃
;==============================================================================;
;------------------------------------------------------------------------------;
; 遠距離立ち弱パンチ
;------------------------------------------------------------------------------;
[State -1 : Stand Light Punch]
  Type       = ChangeState
  Value      = 200
  TriggerAll = Command = "x"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X > 24
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 近距離立ち弱パンチ
;------------------------------------------------------------------------------;
[State -1 : Stand Light Punch]
  Type       = ChangeState
  Value      = 205
  TriggerAll = Command = "x"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X <= 24
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1
  Trigger3   = StateNo = 205 && AnimElem = 2, > 0

;------------------------------------------------------------------------------;
; 遠距離立ち強パンチ
;------------------------------------------------------------------------------;
[State -1 : Stand Strong Punch]
  Type       = ChangeState
  Value      = 210
  TriggerAll = Command = "y"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X > 24
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 近距離立ち強パンチ
;------------------------------------------------------------------------------;
[State -1 : Stand Strong Punch]
  Type       = ChangeState
  Value      = 215
  TriggerAll = Command = "y"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X <= 24
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 遠距離立ち弱キック
;------------------------------------------------------------------------------;
[State -1 : Stand Light Kick]
  Type       = ChangeState
  Value      = 230
  TriggerAll = Command = "a"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X > 18
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 近距離立ち弱キック
;------------------------------------------------------------------------------;
[State -1 : Stand Light Kick]
  Type       = ChangeState
  Value      = 235
  TriggerAll = Command = "a"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X <= 18
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1
  Trigger3   = StateNo = 235 && AnimElem = 3, > 0

;------------------------------------------------------------------------------;
; 遠距離立ち強キック
;------------------------------------------------------------------------------;
[State -1 : Standing Strong Kick]
  Type       = ChangeState
  Value      = 240
  TriggerAll = Command = "b"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X > 18
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 近距離立ち強キック
;------------------------------------------------------------------------------;
[State -1 : Standing Strong Kick]
  Type       = ChangeState
  Value      = 245
  TriggerAll = Command = "b"
  TriggerAll = Command != "holddown"
  TriggerAll = StateType != A
  TriggerAll = P2BodyDist X <= 18
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 屈み弱パンチ
;------------------------------------------------------------------------------;
[State -1 : Crouching Light Punch]
  Type       = ChangeState
  Value      = 400
  TriggerAll = Command = "x"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1
  Trigger3   = StateNo = 400 && AnimElem = 2, > 0

;------------------------------------------------------------------------------;
; 屈み強パンチ
;------------------------------------------------------------------------------;
[State -1 : Crouching Strong Punch]
  Type       = ChangeState
  Value      = 410
  TriggerAll = Command = "y"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1

;------------------------------------------------------------------------------;
; 屈み弱キック
;------------------------------------------------------------------------------;
[State -1 : Crouching Light Kick]
  Type       = ChangeState
  Value      = 430
  TriggerAll = Command = "a"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl
  Trigger2   = Var(10) = 1
  Trigger3   = StateNo = 430 && AnimElem = 2, > 0

;------------------------------------------------------------------------------;
; 屈み強キック
;------------------------------------------------------------------------------;
[State -1 : Crouching Strong Kick]
  Type       = ChangeState
  Value      = 440
  TriggerAll = Command = "b"
  TriggerAll = Command = "holddown"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; 空中弱パンチ
;------------------------------------------------------------------------------;
[State -1 : Jump Light Punch]
  Type       = ChangeState
  Value      = 600
  TriggerAll = Command = "x"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; 空中強パンチ
;------------------------------------------------------------------------------;
[State -1 : Jump Strong Punch]
  Type       = ChangeState
  Value      = 610
  TriggerAll = Command = "y"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; 空中弱キック
;------------------------------------------------------------------------------;
[State -1 : Jump Light Kick]
  Type       = ChangeState
  Value      = 630
  TriggerAll = Command = "a"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; 空中強キック
;------------------------------------------------------------------------------;
[State -1 : Jump Strong Kick]
  Type       = ChangeState
  Value      = 640
  TriggerAll = Command = "b"
  TriggerAll = StateType = A
  Trigger1   = Ctrl

;------------------------------------------------------------------------------;
; 挑発
;------------------------------------------------------------------------------;
[State -1 : Taunt]
  Type       = ChangeState
  Value      = 195
  TriggerAll = Command = "start"
  TriggerAll = StateType != A
  Trigger1   = Ctrl

