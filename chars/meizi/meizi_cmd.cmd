
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

;
;------------------------------------------------------------------------------
;-| ＡＩ発動用コマンド |-------------------------------------------------------
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
name = "tatu_b"
command = ~D, DB, B, b

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
name = "hadou_a"
command = ~D, DF, F, a

[Command]
name = "hadou_b"
command = ~D, DF, F, b


[Command]
name = "hadou_x"
command = ~D, DF, F, x

[Command]
name = "QCF_x"
command = ~D, DB, B, a

[Command]
name = "QCF_y"
command = ~D, DB, B, b

[Command]
name = "supaia_xy"
command = ~F, D, DF, a+b

[Command]
name = "kyanon_yb"
command = ~D, DB, B, a+b

[Command]
name = "BF_b"
command = ~B, F, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "hadou_y"
command = ~D, DF, F, y

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "DD_z"
command = D, D, z

[Command]
name = "hadou_z"
command = ~D, DF, F, z

[Command]
name = "/F_x"
command = /F, x

[Command]
name = "tatu_a"
command = ~D, DB, B, a
.
[Command]
name = "/F_z"
command = /F, z

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_a"
command = F, F, a




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

[Command]
name = "riro" ;必須コマンド名
command = /D, x
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

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "up_x"
command = /$U,x
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

;(魔法溜め用ホールドキー）
[Command]
name = "mahou_b"
command = /b

;(魔法溜め用ホールドキー）
[Command]
name = "mahou_a"
command = /a

;(落花掌溜め用ホールドキー）
[Command]
name = "rakka_y"
command = /y


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
[State -1, サンダーコーリング詠唱];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59)<=0
triggerall = command = "DD_b"
triggerall = pos Y = 0
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 2000
triggerall = var(26) = 0 || var(26) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240


[State -1, フレイムストライク];ゲージレベル１
type = ChangeState
value = ifelse(var(16)=0,1200,1203)
triggerall = var(59)<=0
triggerall = command = "DD_a"
triggerall = pos Y = 0
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 500
triggerall = var(26) = 0 || var(26) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, サンバースト];ゲージレベル１
type = ChangeState
value = 1000
triggerall = var(59)<=0
triggerall = command = "upper_b"
triggerall = pos Y = 0
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 300
triggerall = var(26) = 0 || var(26) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, ヴォイド];ゲージレベル１
type = ChangeState
value = ifelse(var(16)=0,1100,1101)
triggerall = var(59)<=0
triggerall = command = "tatu_b"
triggerall = pos Y = 0
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 1000
triggerall = var(26) = 0 || var(26) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, アイスニードル];ゲージレベル１
type = ChangeState
value = ifelse(var(16)=0,1300,1301)
triggerall = var(59)<=0
triggerall = command = "tatu_a"
triggerall = pos Y = 0
triggerall = var(17) = 0
triggerall = var(25) = 0
triggerall = power >= 300
triggerall = var(26) = 0 || var(26) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240


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
trigger2 = stateno = [260,270] ;通常攻撃はこの範囲に追加で
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------

;--------------------------------
[State -1, 位相転移]
type = ChangeState
value = 1400
triggerall = var(59)<=0
triggerall = command = "a"
triggerall = Movetype = H
triggerall = Stateno = [5000,5110]
triggerall = alive
triggerall = var(39)>=-1
trigger1 = ctrl = 0



;------------------------------------------------------------------------------
[State -1, 砕覇]
type = ChangeState
value = 230
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "hadou_x"
triggerall = var(17) = 0
trigger1 = var(1)
trigger2 = movecontact
trigger2 = Stateno = 240

[State -1, フローレスセント]
type = ChangeState
value = ifelse(var(16)=0,330,331)
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "hadou_b"
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 200
triggerall = var(26) = 0 || var(26) > 2
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, プルート]
type = ChangeState
value = ifelse(var(16)=0,301,302)
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "BF_b"
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 100
triggerall = var(26) = 0 || var(26) > 2
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240


[State -1, ランタン]
type = ChangeState
value = ifelse(var(16)=0,320,321)
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "hadou_a"
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 100
triggerall = var(26) = 0 || var(26) > 2
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, 空中ランタン]
type = ChangeState
value = 325
triggerall = var(59)<=0
triggerall = pos Y < 0
triggerall = prevstateno != 290
triggerall = command = "hadou_a"
triggerall = var(25) = 0
triggerall = var(17) = 0
triggerall = power >= 100
triggerall = var(26) = 0 || var(26) > 2
trigger1 = ctrl
trigger2 = stateno = 105



;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)<=0
triggerall = pos Y = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)<=0
triggerall = pos Y = 0
;triggerall = var(17) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =  stateno =[260,270]
;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 通常投げ];押す
type = ChangeState
value = 800
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(17) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X = [-5,10]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X = [-5,10]
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, 通常投げ];裏に回る
type = ChangeState
value = 830
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(17) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X = [-5,10]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X = [-5,10]
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;------------------------------------------------------------------------------

[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "hold_c"
triggerall = power < 5000 ;ゲージが満タンの時は出せない
triggerall = var(17) = 0
trigger1 = statetype != A && ctrl

[State -1, ショータイム]
type = ChangeState
value = 505
triggerall = var(59)<=0
triggerall = command = "hadou_z"
triggerall = var(16) = 0
triggerall = var(17) = 0
trigger1 = statetype != A && ctrl

[State -1, 古代の図書館]
type = ChangeState
value = ifelse(var(16)=0,500,501)
triggerall = var(59)<=0
triggerall = command = "DD_z"
triggerall = var(23) = 0
triggerall = var(17) = 0
trigger1 = statetype != A && ctrl

[State -1, 古代の記憶]
type = ChangeState
value = ifelse(var(16)=0,502,503)
triggerall = var(59)<=0
triggerall = command = "z"
triggerall = var(24) = 0
triggerall = var(17) = 0
trigger1 = statetype != A && ctrl

[State -1, ガードキャンセル]
type = ChangeState
triggerall = var(59)<=0
triggerall = (RoundState = 2) && (Alive)
triggerall = pos Y = 0
triggerall = (command = "counter_k") || (command = "counter_p")
trigger1 = (Power > 999)
trigger1 = (StateType != A)
trigger1 = (StateNo = [150,153])
trigger1 = !(HitShakeOver)
trigger1 = (InGuardDist)
value = 703

[State -1, クイックスタンディング]
type = ChangeState
triggerall = var(59)<=0
triggerall = (command = "up_x") && (RoundState = 2) && (Alive)
trigger1 = (StateNo = 5050) && (Pos Y > 5)
trigger2 = (PrevStateNo = 5071) && (StateNo = 5110) && (Time = [0,3])
trigger3 = (StateNo = 5100)
value = 10001



;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 天激１]
type = ChangeState
value = 200
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "down_y"
triggerall = var(17) = 0
trigger1 = var(1)
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, 竜牙]
type = ChangeState
value = 240
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = var(17) = 0
trigger1 = var(1)

[State -1, 落花掌]
type = ChangeState
value = 210
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(17) = 0
trigger1 = command = "holdback"
trigger1 = var(1)
trigger2 = movecontact
trigger2 = stateno = 240


[State -1, マジックショット]
type = ChangeState
value = 300
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(17) = 0
triggerall = var(25) = 0
triggerall = power >= 10
triggerall = var(26) = 0 || var(26) > 2
trigger1 = var(1)
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, マジックショット]
type = ChangeState
value = 305
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(17) = 0
triggerall = var(25) = 0
triggerall = power >= 10
triggerall = var(26) = 0 || var(26) > 2
trigger1 = var(1)
trigger2 = movecontact
trigger2 = stateno = 240

;------------------------------------------------------------------------------
;サンダーコーリング中

[State -1, サンダーコーリング発動1];立ち
type = ChangeState
value = 3001
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = var(25) = [1,3]
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = command = "a" || command = "b"
trigger1= var(1)
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, サンダーコーリング発動3];立ち 前押し
type = ChangeState
value = 3003
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = var(25) = [1,3]
triggerall = command = "a" || command = "b"
triggerall = command = "holdfwd"
trigger1 = var(1)
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, サンダーコーリング発動1];立ち 後ろ押し
type = ChangeState
value = 3006
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = var(25) = [1,3]
triggerall = command = "a" || command = "b"
triggerall = command = "holdback"
trigger1 = var(1)
trigger2 = movecontact
trigger2 = stateno = 240

[State -1, サンダーコーリング発動1];バクステ中 後ろ押し 
type = ChangeState
value = 3007
triggerall = var(59)<=0
triggerall = var(25) = [1,3]
triggerall = command = "a" || command = "b"
triggerall = command = "holdback"
trigger1 = stateno = 105

[State -1, サンダーコーリング発動3];下押し 又はしゃがみ
type = ChangeState
value = 3008
triggerall = var(59)<=0
triggerall = pos Y = 0
triggerall = var(25) = [1,3]
triggerall = var(1)
triggerall = command = "a" || command = "b"
trigger1 = Statetype = C
trigger2 = command = "holddown"
trigger3 = command = "holddown"
trigger3 = movecontact
trigger3 = stateno = 240

[State -1, サンダーコーリング発動2]; 上押し 又は上昇中 高速度
type = ChangeState
value = 3002
triggerall = var(59)<=0
triggerall = Stateno != 3002
triggerall = var(25) = [1,3]
triggerall = command = "a" || command = "b"
trigger1 = vel y < -5
trigger2 = stateno = 40
trigger3 = command = "holdup"
trigger3 = Statetype != A
trigger3 = var(1)
trigger4 = command = "holdup"
trigger4 = Statetype != A
trigger4 = stateno = [3000,3009]
trigger4 = time >= 18
trigger5 = command = "holdup"
trigger5 = movecontact
trigger5 = stateno = 240

[State -1, サンダーコーリング発動4];上昇中 低速度
type = ChangeState
value = 3004
triggerall = var(59)<=0
triggerall = Stateno != [3002,3009]
triggerall = Stateno != 105
triggerall = var(25) = [1,3]
triggerall = command = "a" || command = "b"
triggerall = vel y = [-5,-1]
trigger1 = Statetype = A
trigger2 = stateno = 801
trigger2 = pos y < 0


[State -1, サンダーコーリング発動4];落下中 又はバクステ中
type = ChangeState
value = 3005
triggerall = var(59)<=0
triggerall = Statetype = A
triggerall = Stateno != [3003,3009]
triggerall = var(25) = [1,3]
triggerall = command = "a" || command = "b"
trigger1 = Stateno != 3002
trigger1 = stateno != 801
trigger1 = vel y > -1
trigger2 = stateno = 105
trigger3 = pos y < 0
trigger3 = Stateno = 3002
trigger3 = time >= 25
trigger4 = stateno = 801
trigger4 = pos y < 0

;------------------------------------------------------------------------------


;------------------------------------------------------------------------------



;------------------------------------------------------------------------------
[State -1, ジャンプ攻撃]
type = ChangeState
value = 290
triggerall = var(59)<=0
triggerall = command = "x" || command = "y"
triggerall = prevstateno != 290
trigger1 = statetype = A
trigger1 = ctrl



;------------------------------------------------------------------------------
