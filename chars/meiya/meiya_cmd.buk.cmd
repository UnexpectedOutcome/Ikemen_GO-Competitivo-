
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

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

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------

[Command]
Name    = "AI_00"
Command =  a, a
Time = 0

[Command]
Name    = "AI_01"
Command =  a, b
Time = 0

[Command]
Name    = "AI_02"
Command =  a, c
Time = 0

[Command]
Name    = "AI_03"
Command =  a, x
Time = 0

[Command]
Name    = "AI_04"
Command =  a, y
Time = 0

[Command]
Name    = "AI_05"
Command =  a, z
Time = 0

[Command]
Name    = "AI_06"
Command =  a, s
Time = 0

[Command]
Name    = "AI_07"
Command =  b, a
Time = 0

[Command]
Name    = "AI_08"
Command =  b, b
Time = 0

[Command]
Name    = "AI_09"
Command =  b, c
Time = 0

[Command]
Name    = "AI_10"
Command =  b, x
Time = 0

[Command]
Name    = "AI_11"
Command =  b, y
Time = 0

[Command]
Name    = "AI_12"
Command =  b, z
Time = 0

[Command]
Name    = "AI_13"
Command =  b, s
Time = 0

[Command]
Name    = "AI_14"
Command =  c, a
Time = 0

[Command]
Name    = "AI_15"
Command =  c, b
Time = 0

[Command]
Name    = "AI_16"
Command =  c, c
Time = 0

[Command]
Name    = "AI_17"
Command =  c, x
Time = 0

[Command]
Name    = "AI_18"
Command =  c, y
Time = 0

[Command]
Name    = "AI_19"
Command =  c, z
Time = 0

[Command]
Name    = "AI_20"
Command =  c, s
Time = 0

[Command]
Name    = "AI_21"
Command =  x, a
Time = 0

[Command]
Name    = "AI_22"
Command =  x, b
Time = 0

[Command]
Name    = "AI_23"
Command =  x, c
Time = 0

[Command]
Name    = "AI_24"
Command =  x, x
Time = 0

[Command]
Name    = "AI_25"
Command =  x, y
Time = 0

[Command]
Name    = "AI_26"
Command =  x, z
Time = 0

[Command]
Name    = "AI_27"
Command =  x, s
Time = 0

[Command]
Name    = "AI_28"
Command =  y, a
Time = 0

[Command]
Name    = "AI_29"
Command =  y, b
Time = 0

[Command]
Name    = "AI_30"
Command =  y, c
Time = 0

[Command]
Name    = "AI_31"
Command =  y, x
Time = 0

[Command]
Name    = "AI_32"
Command =  y, y
Time = 0

[Command]
Name    = "AI_33"
Command =  y, z
Time = 0

[Command]
Name    = "AI_34"
Command =  y, s
Time = 0

[Command]
Name    = "AI_35"
Command =  s, a
Time = 0

[Command]
Name    = "AI_36"
Command =  s, b
Time = 0

[Command]
Name    = "AI_37"
Command =  s, c
Time = 0

[Command]
Name    = "AI_38"
Command =  s, x
Time = 0

[Command]
Name    = "AI_39"
Command =  s, y
Time = 0

[Command]
Name    = "AI_40"
Command =  s, z
Time = 0

[Command]
Name    = "AI_41"
Command =  s, s
Time = 0

[Command]
Name    = "AI_42"
Command =  U, U
Time = 0

[Command]
Name    = "AI_43"
Command =  U, F
Time = 0

[Command]
Name    = "AI_44"
Command =  U, D
Time = 0

[Command]
Name    = "AI_45"
Command =  U, B
Time = 0

[Command]
Name    = "AI_46"
Command =  F, U
Time = 0

[Command]
Name    = "AI_47"
Command =  F, F
Time = 0

[Command]
Name    = "AI_48"
Command =  F, D
Time = 0

[Command]
Name    = "AI_49"
Command =  F, B
Time = 0

[Command]
Name    = "AI_50"
Command =  D, U
Time = 0

[Command]
Name    = "AI_51"
Command =  D, F
Time = 0

[Command]
Name    = "AI_52"
Command =  D, D
Time = 0

[Command]
Name    = "AI_53"
Command =  D, B
Time = 0

[Command]
Name    = "AI_54"
Command =  B, U
Time = 0

[Command]
Name    = "AI_55"
Command =  B, F
Time = 0

[Command]
Name    = "AI_56"
Command =  B, D
Time = 0

[Command]
Name    = "AI_57"
Command =  B, B
Time = 0

[Command]
Name    = "AI_58"
Command =  UF, UF
Time = 0

[Command]
Name    = "AI_59"
Command =  UF, UB
Time = 0

[Command]
Name    = "AI_60"
Command =  UF, DF
Time = 0

[Command]
Name    = "AI_61"
Command =  UF, DB
Time = 0

[Command]
Name    = "AI_62"
Command =  UB, UF
Time = 0

[Command]
Name    = "AI_63"
Command =  UB, UB
Time = 0

[Command]
Name    = "AI_64"
Command =  UB, DF
Time = 0

[Command]
Name    = "AI_65"
Command =  UB, DB
Time = 0

[Command]
Name    = "AI_66"
Command =  DF, UF
Time = 0

[Command]
Name    = "AI_67"
Command =  DF, UB
Time = 0

[Command]
Name    = "AI_68"
Command =  DF, DF
Time = 0

[Command]
Name    = "AI_69"
Command =  DF, DB
Time = 0
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "tukami_x"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_ab"
command = ~D, DF, F, a+b

[Command]
name = "hadou"
command = ~D, DF, F, x

[Command]
name = "QCF_x"
command = ~D, DB, B, a

[Command]
name = "QCF_y"
command = ~D, DB, B, b

[Command]
name = "supaia_xy"
command = ~F, D, DF, x+a

[Command]
name = "kyanon_yb"
command = ~D, DB, B, a+b

[Command]
name = "QCF_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "/F_x"
command = /F, x

[Command]
name = "/F_z"
command = /F, z

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_x"
command = F, F, x

[Command]
name = "MShift"
command = D, D, c


;---------------------------
;(「板投げ」用にコマンドを追加してます)
[Command]
name = "board"
command = ~D, DF, F, a

[Command]
name = "board"
command = ~D, DF, F, b

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

[Command]
name = "jump"       ;必須コマンド名
command = D, U
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| 特殊技 |-------------------------------------------------------------------

;ガードキャンセル攻撃
[Command]
name = "counter_k"
command = ~B,DB,D,a

[Command]
name = "counter_k"
command = ~B,DB,D,b

[Command]
name = "counter_p"
command = ~B,DB,D,x

[Command]
name = "counter_p"
command = ~B,DB,D,y

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

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

;(「念タン」溜め用ホールドキー）
[Command]
name = "nentan_hold"
command = /x

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

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================


[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ライジングナックル];ゲージレベル１
type = ChangeState
value = 3000
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = var(1) = 1 && RoundState = 2 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

[State -1, ワイルドキャノンもどき];ゲージレベル１
type = ChangeState
value = 3100
triggerall = command = "upper_ab"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno != [3000,3100]
trigger2 = movecontact

[State -1, スパイア];ゲージレベル１
type = ChangeState
value = 3110
triggerall = command = "supaia_xy"
triggerall = power >= 1000
triggerall = var(1) = 1 && RoundState = 2 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 830
trigger3 = StateNo = 840

[State -1, ワイルドキャノン型マウント];ゲージレベル2
type = ChangeState
value = 3600
triggerall = command = "kyanon_yb"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------

[State -1, 崩拳弱]
type = ChangeState
value = 1000
triggerall = command = "QCB_x"
triggerall = var(17) = 0
triggerall = power >= 200
trigger1 = var(1) 
trigger2 = var(22) = 1 && Stateno = 1400
trigger3 = var(22) = 1 && Stateno = 1405
trigger4 = var(22) = 1 && Stateno = 11
trigger5 = var(22) = 1 && Stateno = 1101
trigger6 = var(22) = 1 && Stateno = 3101
trigger7 = var(22) = 1 && Stateno = 1302
trigger8 = var(22) = 1 && Stateno = 210
trigger9 = var(22) = 1 && Stateno = 3000

[State -1, 崩拳強]
type = ChangeState
value = 1010
triggerall = command = "QCB_y"
triggerall = var(17) = 0
triggerall = power >= 200
trigger1 = var(1) 
trigger2 = var(22) = 1 && Stateno = 1400
trigger3 = var(22) = 1 && Stateno = 1405
trigger4 = var(22) = 1 && Stateno = 11
trigger5 = var(22) = 1 && Stateno = 1101
trigger6 = var(22) = 1 && Stateno = 3101
trigger7 = var(22) = 1 && Stateno = 1302
trigger8 = var(22) = 1 && Stateno = 210
trigger9 = var(22) = 1 && Stateno = 3000

;------------------------------------------------------------------------------

[State -1, 金剛砕弱]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
triggerall = var(18) = 0
triggerall = power >= 250
trigger1 = var(1) 
trigger2 = stateno = 200
trigger3 = stateno = 203
trigger4 = stateno = 205
trigger5 = stateno = 207
trigger6 = stateno = 223
trigger7 = stateno = 225
trigger8 = stateno = 227
trigger9 = var(22) = 1 && Stateno = 1400
trigger10= var(22) = 1 && Stateno = 1405
trigger11= var(22) = 1 && Stateno = 11
trigger12= var(22) = 1 && Stateno = 1101
trigger13= var(22) = 1 && Stateno = 3101
trigger14= var(22) = 1 && Stateno = 1302
trigger15= var(22) = 1 && Stateno = 210
trigger16= var(22) = 1 && Stateno = 3000
trigger17= var(22) = 1 && Stateno = 1000
trigger18= var(22) = 1 && Stateno = 1010

[State -1, 金剛砕強]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
triggerall = var(18) = 0
triggerall = power >= 250
trigger1 = var(1) 
trigger2 = stateno = 200
trigger3 = stateno = 203
trigger4 = stateno = 205
trigger5 = stateno = 207
trigger6 = stateno = 223
trigger7 = stateno = 225
trigger8 = stateno = 227
trigger9 = var(22) = 1 && Stateno = 1400
trigger10= var(22) = 1 && Stateno = 1405
trigger11= var(22) = 1 && Stateno = 11
trigger12= var(22) = 1 && Stateno = 1101
trigger13= var(22) = 1 && Stateno = 3101
trigger14= var(22) = 1 && Stateno = 1302
trigger15= var(22) = 1 && Stateno = 210
trigger16= var(22) = 1 && Stateno = 3000
trigger17= var(22) = 1 && Stateno = 1000
trigger18= var(22) = 1 && Stateno = 1010
;------------------------------------------------------------------------------

[State -1, 旋風もどき(地上)]
type = ChangeState
value = 1200
triggerall = command = "QCF_x"
triggerall = var(19) = 0
triggerall = power >= 300
trigger1 = var(1) 
trigger2 = var(22) = 1
trigger2 = movetype = A
trigger2 = statetype = S

[State -1, 旋風もどき(空中)]
type = ChangeState
value = 1201
triggerall = command = "QCF_x"
triggerall = PrevStateno != 1201
triggerall = Stateno != 630
triggerall = var(19) = 0
triggerall = power >= 300
trigger1 = statetype = A
trigger1 = var(22)   = 1
trigger1 = movetype  = A
trigger2 = statetype = A
trigger2 = ctrl = 1

[State -1, 旋風もどき(解除)]
type = ChangeState
value = 50
triggerall = command = "a"
trigger1 = stateno = 1201
trigger1 = time >= 2
trigger2 = stateno = 1200
trigger2 = time >= 2
ctrl = 1
;------------------------------------------------------------------------------

;-----------------------------------------------------------
[State -1, ブレイキングエルボー]
type = ChangeState
value = 1400
triggerall = command = "tukami_x"
triggerall = var(21) = 0
triggerall = power >= 300
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(22) = 1 && Stateno = 11
trigger3 = var(22) = 1 && Stateno = 1101
trigger4 = var(22) = 1 && Stateno = 3101
trigger5 = var(22) = 1 && Stateno = 1302
trigger6 = var(22) = 1 && Stateno = 210
trigger7 = var(22) = 1 && Stateno = 3000
trigger8 = var(22) = 1 && Stateno = 1000
trigger9 = var(22) = 1 && Stateno = 1010
;------------------------------------------------------------------------------
[State -1, 念ﾀﾝ]
type = ChangeState
value = 1302
triggerall = command = "hadou"
triggerall = power >= 100
trigger1 = var(1)
;trigger1 = (NumHelper(1305) = 0)
trigger2 = var(22) = 1 && Stateno = 1400
trigger3 = var(22) = 1 && Stateno = 1405
trigger4 = var(22) = 1 && Stateno = 11
trigger5 = var(22) = 1 && Stateno = 1101
trigger6 = var(22) = 1 && Stateno = 3101
trigger7 = var(22) = 1 && Stateno = 210
trigger8 = var(22) = 1 && Stateno = 3000
trigger9 = var(22) = 1 && Stateno = 1000
trigger10= var(22) = 1 && Stateno = 1010

;[State -1, 念ﾀﾝ]
;type = ChangeStatet
;value = 1303
;triggerall = command = "hadou"
;trigger1 = statetype = A
;trigger1 = ctrl



[State -1, アッパー];原作ではないけどバランスを上げるため入れてみた
type = ChangeState
value = 1500
triggerall = command = "upper_b"
triggerall = var(20) = 0
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = var(1)
trigger2 = var(22) = 1 && Stateno = 1400
trigger3 = var(22) = 1 && Stateno = 1405
trigger4 = var(22) = 1 && Stateno = 11
trigger5 = var(22) = 1 && Stateno = 1101
trigger6 = var(22) = 1 && Stateno = 3101
trigger7 = var(22) = 1 && Stateno = 1302
trigger8 = var(22) = 1 && Stateno = 210
trigger9 = var(22) = 1 && Stateno = 3000
trigger10= var(22) = 1 && Stateno = 1000
trigger11= var(22) = 1 && Stateno = 1010

;------------------------------------------------------------------------------

[State -1, マッスルシフト]
type = ChangeState
value = 1600
triggerall = command = "MShift"
triggerall = power >= 800
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl


;------------------------------------------------------------------------------



;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ロープっぽいの];投げ技
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = power >= 300
trigger3 = StateNo = 830
trigger4 = power >= 300
trigger4 = StateNo = 840

[State -1, スープレ];投げ技
type = ChangeState
value = 870
triggerall = command = "/F_z"
triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
triggerall = power >= 300
trigger1 = stateno = 227
trigger1 = movecontact
trigger2 = stateno = 207
trigger2 = movecontact

[State -1, スープレ];投げ技
type = ChangeState
value = 830
triggerall = command = "/F_z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;------------------------------------------------------------------------------

[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = var(0) = 0 
triggerall = command = "hold_c"
triggerall = power < 3000 ;ゲージが満タンの時は出せない
trigger1 = statetype != A && ctrl

[State -1, シールド];ちょっとこ丸が追加した技
type = ChangeState
value = 701
triggerall = var(0) = 0 
triggerall = command = "z"
trigger1 = ctrl

[State -1, ガードキャンセル]
type = ChangeState
triggerall = (RoundState = 2) && (Alive)
triggerall = (command = "counter_k") || (command = "counter_p")
trigger1 = (Power > 999)
trigger1 = (StateType != A)
trigger1 = (StateNo = [150,153])
trigger1 = !(HitShakeOver)
trigger1 = (InGuardDist)
value = 703

[State -1, クイックスタンディング]
type = ChangeState
triggerall = (command = "blocking-002") && (RoundState = 2) && (Alive)
trigger1 = (StateNo = 5050) && (Pos Y > 5)
trigger2 = (PrevStateNo = 5071) && (StateNo = 5110) && (Time = [0,3])
trigger3 = (StateNo = 5100)
value = 10001



;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ダッシュタックル]
type = ChangeState
value = 215
triggerall = command != "holddown"
trigger1 = command = "FF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "x"
trigger2 = stateno = 100

[State -1, 前入れ通常１]
type = ChangeState
value = 200
triggerall = command = "/F_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100

[State -1, 通常１]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100

[State -1, 前入れ通常2]
type = ChangeState
value = 223
triggerall = command = "/F_x"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Time = [2,10]
;trigger1 = movecontact
;trigger2 = Time = [2,12]
;trigger2 = stateno = 200

[State -1, 通常2]
type = ChangeState
value = 203
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Time = [2,10]
;trigger1 = movecontact

[State -1, 前入れ通常３]
type = ChangeState
value = 225
triggerall = command = "/F_x"
triggerall = command != "holddown"
trigger1 = stateno = 203
trigger1 = Time = [4,20]
;trigger1 = movecontact
trigger2 = stateno = 223
trigger2 = Time = [4,20]
;trigger2 = movecontact
;trigger3 = Time = [11,18]
;trigger3 = stateno = 223
[State -1, 通常３]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 203
trigger1 = Time = [4,20]
;trigger1 = movecontact
trigger2 = stateno = 223
trigger2 = Time = [4,20]

[State -1, 前入れ通常４]
type = ChangeState
value = 227
triggerall = command = "/F_x"
triggerall = command != "holddown"
trigger1 = stateno = 205
trigger1 = Time = [4,20]
;trigger1 = time > 5
trigger2 = stateno = 225
trigger2 = Time = [4,20]
;trigger2 = movecontact
;trigger3 = Time = [10,15]
;trigger3 = stateno = 225

[State -1, 通常４]
type = ChangeState
value = 207
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 205
trigger1 = Time = [4,13]
;trigger1 = time > 5
trigger2 = stateno = 225
trigger2 = Time = [4,13]
;trigger2 = movecontact

[State -1, ミューズ];アーマーっぽいの搭載
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(16) = 0
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 227) && time > 3
;trigger3 = (stateno = 230) && time > 6
trigger3 = (stateno = 207) && time > 3
trigger4 = stateno = 200
trigger5 = stateno = 203
trigger6 = stateno = 205
trigger7 = stateno = 223
trigger8 = stateno = 225
trigger9 = var(22) = 1 && Stateno = 1400
trigger10 = var(22) = 1 && Stateno = 1405
trigger11= var(22) = 1 && Stateno = 11
trigger12= var(22) = 1 && Stateno = 1101
trigger13= var(22) = 1 && Stateno = 3101
trigger14= var(22) = 1 && Stateno = 1302
trigger15= var(22) = 1 && Stateno = 210
trigger16= var(22) = 1 && Stateno = 3000
trigger17= var(22) = 1 && Stateno = 1000
trigger18= var(22) = 1 && Stateno = 1010

[State -1, ローキック]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 7
;trigger3 = (stateno = 230) && time > 9

[State -1, ハンマーキック];空中だと吹き飛ばし
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, 虎迅連撃];2発目は下段ガード無効
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 410) || (stateno = 440)&& time < 10
trigger2 = (stateno = 410) && time < 10
trigger2 = movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)&& time < 4
trigger2 = movecontact
trigger3 = (stateno = 410) && time < 3

;------------------------------------------------------------------------------
[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = stateno != 105
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = PrevStateno != 630
trigger2 = command = "x"
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = PrevStateno != 630

[State -1, コンドルダイブ];ヒット後再度ジャンプ、ガード時は多段ヒットで落ちる
type = ChangeState
value = 640
triggerall = stateno != 105
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = stateno = 630
trigger2 = movecontact
trigger3 = command = "y"
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = command = "y"
trigger4 = stateno = stateno = 630
trigger4 = movecontact

;------------------------------------------------------------------------------
