;-| ボタンコンフィグ |----------------------------------------

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 15  
command.buffer.time = 1

;==============================================================================
; コマンド定義パート
;==============================================================================
;-| ＡＩ発動用コマンド |-------------------------------------------------------

[Command]
name = "AI-000"
command = ~F,a,~D,y,~U,c+x,D,b+y,F,z,z,z+a
time = 1

[Command]
name = "AI-001"
command = ~F,c,~D,y,~U,c+a,D,b+x,B,z,z,z+b
time = 1

[Command]
name = "AI-002"
command = ~F,y,~D,y,~U,c+y,D,b+z,F,z,z,z+c
time = 1

[Command]
name = "AI-003"
command = ~F,b,~D,y,~U,c+b,D,b+a,B,z,z,z+x
time = 1

[Command]
name = "AI-004"
command = ~F,x,~D,x,~U,c+x,D,b+y,F,z,z,z+y
time = 1

[Command]
name = "AI-005"
command = ~F,z,~D,y,~U,c+a,D,b+c,B,z,z,z+a
time = 1

[Command]
name = "AI-006"
command = ~D,U,x+y+z,~F,F,b,c,y,B,~B,a+b+c,U
time = 1

[Command]
name = "AI-007"
command = ~U,D,x+b+z,~F,F,b,b,x,B,~B,a+y+c,F
time = 1

[Command]
name = "AI-008"
command = ~D,U,a+y+c,~F,F,b,a,z,B,~B,x+b+z,D
time = 1

[Command]
name = "AI-009"
command = ~U,D,x+b+c,~F,F,b,c,x,B,~B,a+y+z,B
time = 1

[Command]
name = "AI-010"
command = ~x,~y,~z,~a,~b,~c,~s,a+b+c,x+y+z,~F,B
time = 1

[Command]
name = "AI-011"
command = F,D,F
time = 0

[Command]
name = "AI-012"
command = B,F,B
time = 0

[Command]
name = "AI-013"
command = U,B,U
time = 0

[Command]
name = "AI-014"
command = D,U,D
time = 0

[Command]
name = "AI-015"
command = a,s,a
time = 0

[Command]
name = "AI-016"
command = b,a,b
time = 0

[Command]
name = "AI-017"
command = c,b,c
time = 0

[Command]
name = "AI-018"
command = x,c,x
time = 0

[Command]
name = "AI-019"
command = y,x,y
time = 0

[Command]
name = "AI-020"
command = z,y,z
time = 0

[Command]
name = "AI-021"
command = s,z,s
time = 0

;------------------------------------------------------------------------------
;-| 固有コマンド技 |-------------------------------------------------------
;つかんでひっぱたく
[Command]
name = "メガスパイク"
command = ~B, D, F, U, z
time = 35

[Command]
name = "メガスパイク"
command = ~D, F, U, B, z
time = 35

[Command]
name = "メガスパイク"
command = ~F, U, B, D, z
time = 35

[Command]
name = "メガスパイク"
command = ~U, B, D, F, z
time = 35

[Command]
name = "メガスパイク"
command = ~B, U, F, D, z
time = 35

[Command]
name = "メガスパイク"
command = ~U, F, D, B, z
time = 35

[Command]
name = "メガスパイク"
command = ~F, D, B, U, z
time = 35

[Command]
name = "メガスパイク"
command = ~D, B, U, F, z
time = 35

;-| ゲージ技 |-----------------------------------------------------------
;***********************************
;念動ひこにゃん
[Command]
name = "N_hikonyan"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "N_hikonyan"
command = ~D,DF,F,D,DF,F,b
time = 20

[Command]
name = "N_hikonyan"
command = ~D,DF,F,D,DF,F,c
time = 20

;***********************************
;幻影ひこにゃん
[Command]
name = "G_hikonyan"
command = ~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "G_hikonyan"
command = ~D,DB,B,D,DB,B,b
time = 20

[Command]
name = "G_hikonyan"
command = ~D,DB,B,D,DB,B,c
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
;***********************************
;ライジングストライク
[Command]
name = "syouryu-01"
command = ~F,D,DF,a

[Command]
name = "syouryu-02"
command = ~F,D,DF,b

[Command]
name = "syouryu-03"
command = ~F,D,DF,c

;***********************************
;スライサー
[Command]
name = "hadouken-01"
command = ~D,DF,F,a

[Command]
name = "hadouken-02"
command = ~D,DF,F,b

[Command]
name = "hadouken-03"
command = ~D,DF,F,c

;***********************************
;ボディープレス
[Command]
name = "body-01"
command = ~B,D,DB,a

[Command]
name = "body-02"
command = ~B,D,DB,b

[Command]
name = "body-03"
command = ~B,D,DB,c

;***********************************
;移動技Ａ
[Command]
name = "idou-01"
command = ~D,DB,B,a

;移動技Ｂ
[Command]
name = "idou-02"
command = ~D,DB,B,b

;移動技Ｃ
[Command]
name = "idou-03"
command = ~D,DB,B,c

;------------------------------------------------------------------------------
;-| 特殊技 |-------------------------------------------------------------------

;ガードキャンセル攻撃
[Command]
name = "counter_a"
command = ~B,D,a
time = 30

[Command]
name = "counter_a"
command = ~B,D,b
time = 30

[Command]
name = "counter_a"
command = ~B,D,c
time = 30

;***********************************
;ブロッキング
[Command]
name = "blocking-000"
command = F
time = 1

[Command]
name = "blocking-001"
command = /F
time = 1

[Command];クイックスタンディングと共用
name = "blocking-002"
command = D
time = 1

[Command]
name = "blocking-003"
command = /D
time = 1

;***********************************
;スーパージャンプ
[Command]
name = "super_jump"
command = D,$U
time = 7

[Command]
name = "HJ"
command = D
time = 1

[Command]
name = "HJ"
command = DB
time = 1

[Command]
name = "前HJ"
command = D,UF
time = 10

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = c
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "fwd_c"
command = /F,c
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
name = "holdup2"
command = $U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;==============================================================================
; ステートエントリーパート
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1]

;==============================================================================
; ゲージ技
;==============================================================================
[State -1, 幻影ひこにゃん]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "G_hikonyan")
triggerall = (Power > 999)
triggerall = (NumHelper(1000) <= 2)
trigger1 = (StateType != A) &&(Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact)
;■■■地上スーパーキャンセル■■■
trigger3 = (StateNo = 1000) && (StateType != A) && (MoveContact)
trigger4 = (StateNo = 1010) && (StateType != A) && (MoveContact)
trigger5 = (StateNo = 1020) && (StateType != A) && (MoveContact)
trigger6 = (StateNo = 1100) && (StateType != A) && (MoveContact)
trigger7 = (StateNo = 1110) && (StateType != A) && (MoveContact)
trigger8 = (StateNo = 1120) && (StateType != A) && (MoveContact)
trigger9 = (StateNo = 1410) && (StateType != A) && (Time > 88)

value = 3000


[State -1, 念動ひこにゃん]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "N_hikonyan")
triggerall = (Power > 1999)
triggerall = (NumHelper(1000) <= 0)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact)
;■■■地上スーパーキャンセル■■■
trigger3 = (StateNo = 1000) && (StateType != A) && (MoveContact)
trigger4 = (StateNo = 1010) && (StateType != A) && (MoveContact)
trigger5 = (StateNo = 1020) && (StateType != A) && (MoveContact)
trigger6 = (StateNo = 1100) && (StateType != A) && (MoveContact)
trigger7 = (StateNo = 1110) && (StateType != A) && (MoveContact)
trigger8 = (StateNo = 1120) && (StateType != A) && (MoveContact)
trigger9 = (StateNo = 1410) && (StateType != A) && (Time > 88)

value = 3010


;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;いぶきＴＣ
[State -1]
type = ChangeState
value = 1400
triggerall = command = "メガスパイク"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [10,12]
trigger3 = stateno = 40
trigger4 = stateno = 52

;------------------------------------------------------------------------------
[State -1, ライストＡ]
type = ChangeState
triggerall = (command = "syouryu-01")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact || Time = [1,9])
value = 1100

[State -1, ライストＢ]
type = ChangeState
triggerall = (command = "syouryu-02")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact || Time = [1,9])
value = 1110

[State -1, ライストＣ]
type = ChangeState
triggerall = (command = "syouryu-03")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact || Time = [1,9])
value = 1120

[State -1, スライサーＡ]
type = ChangeState
triggerall = (command = "hadouken-01")
trigger1 = (Ctrl) && (NumProjID(1000) <= 1) && (var(35) <= 0)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
value = 1000

[State -1, スライサーＢ]
type = ChangeState
triggerall = (command = "hadouken-02")
trigger1 = (Ctrl) && (NumProjID(1000) <= 1) && (var(35) <= 0)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
value = 1010

[State -1, スライサーＣ]
type = ChangeState
triggerall = (command = "hadouken-03")
trigger1 = (Ctrl) && (NumProjID(1000) <= 1) && (var(35) <= 0)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
value = 1020

[State -1, ボディープレスＡ]
type = ChangeState
triggerall = (command = "body-01")
trigger1 = (Ctrl); && (StateType != A)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
value = 1200

[State -1, ボディープレスＢ]
type = ChangeState
triggerall = (command = "body-02")
trigger1 = (Ctrl); && (StateType != A)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
value = 1210

[State -1, ボディープレスＣ]
type = ChangeState
triggerall = (command = "body-03")
trigger1 = (Ctrl); && (StateType != A)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
value = 1220

[State -1, 移動技Ａ]
type = ChangeState
triggerall = (command = "idou-01")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact || Time = [1,9])
value = 1300

[State -1, 移動技Ｂ]
type = ChangeState
triggerall = (command = "idou-02")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact || Time = [1,9])
value = 1310

[State -1, 移動技Ｃ]
type = ChangeState
triggerall = (command = "idou-03")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 420) && (MoveContact || Time = [1,9])
value = 1320

[State -1, レバーＣ]
type = ChangeState
triggerall = (command = "fwd_c")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact || Time = [1,9])
value = 500

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 地上投げ]
type = ChangeState
triggerall = (command = "z")
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
trigger1 = (command = "holdfwd") || (command = "holdback")
trigger1 = (StateType != A)
trigger1 = (Ctrl)
trigger1 = (P2BodyDist X < 8)
trigger1 = (P2StateType != A)
trigger1 = (P2MoveType != H)
value = 900

[State -1, 空中投げ]
type = ChangeState
triggerall = (command = "z")
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
trigger1 = (command = "holdfwd") || (command = "holdback")
trigger1 = (StateType = A)
trigger1 = (Ctrl)
trigger1 = (P2BodyDist X < 14)
trigger1 = (P2Dist Y = [-60,30])
trigger1 = (P2StateType = A)
trigger1 = (P2MoveType != H)
trigger2 = (StateNo = 600) && (Movecontact) 
trigger3 = (StateNo = 610) && (Movecontact) 
trigger4 = (StateNo = 620) && (Movecontact) 
value = 800

;------------------------------------------------------------------------------
[State -1, ガードキャンセル]
type = ChangeState
triggerall = (RoundState = 2) && (Alive)
triggerall = (command = "counter_a") 
trigger1 = (Power > 999)
trigger1 = (StateType != A)
trigger1 = (StateNo = [150,153])
trigger1 = !(HitShakeOver)
trigger1 = (InGuardDist)
value = 703

;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = (RoundState = 2) && (Alive)
trigger1 = (command = "x") && (StateType != A) && (Ctrl)
value = 702

[State -1, クイックスタンディング]
type = ChangeState
triggerall = (command = "blocking-002") && (RoundState = 2) && (Alive)
trigger1 = (StateNo = 5050) && (Pos Y > 5)
trigger2 = (PrevStateNo = 5071) && (StateNo = 5110) && (Time = [0,3])
trigger3 = (StateNo = 5100)
value = 10001

[State -1, 移動起き上がり]
type = ChangeState
triggerall = (Alive)
triggerall = (RoundState = 2) && (StateNo = 5110) && (MoveType = H) && (Time > 1)
trigger1 = (command = "holdfwd") || (command = "holdback")
value = 10002

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
triggerall = (StateNo != 100)
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
value = 100

[State -1, バックステップ]
type = ChangeState
triggerall = (StateNo != 100)
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
value = 105

[State -1, 空中ダッシュ]
type = ChangeState
triggerall = (Pos Y < -40)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "FF") && (StateType = A) && (Ctrl)
value = 101

[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = (Pos Y < -40)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
value = 106

[State -1, スーパージャンプ]
type = ChangeState
trigger1 = (command = "super_jump") && (StateType != A) && (Ctrl)
value = 10003

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ちＡ]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && (movecontact || animelemtime(4) > 0)

[State -1, 立ちＢ]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && (movecontact || animelemtime(4) > 0)

[State -1, 立ちＣ]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && (movecontact || animelemtime(4) > 0)
trigger3 = movecontact && stateno = 210
trigger4 = movecontact && stateno = 410

;------------------------------------------------------------------------------

[State -1, しゃがみＡ]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && (movecontact || animelemtime(4) > 0)

[State -1, しゃがみＢ]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && (movecontact || animelemtime(4) > 0)
trigger3 = movecontact && stateno = 210

[State -1, しゃがみＣ]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && (movecontact || animelemtime(4) > 0)
trigger3 = movecontact && stateno = 210
trigger4 = movecontact && stateno = 410
trigger5 = movecontact && stateno = 220

;------------------------------------------------------------------------------

[State -1, ジャンプＡ]
type = ChangeState
triggerall = (command = "a")
trigger1 = (StateType = A) && (Ctrl)
;trigger2 = (StateNo = 600) && (MoveContact)
value = 600

[State -1, ジャンプＢ]
type = ChangeState
triggerall = (command = "b")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
value = 610

[State -1, ジャンプＣ]
type = ChangeState
triggerall = (command = "c")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 610) && (MoveContact)
value = 620

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
triggerall = (command = "start")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,500]) && (MoveContact || Time = [1,9])
value = 10000

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
