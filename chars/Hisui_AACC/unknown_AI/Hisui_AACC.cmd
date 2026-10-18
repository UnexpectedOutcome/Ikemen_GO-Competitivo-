;-| ボタン配置 |------------------------------------------------
[Remap]
x = x    ;簡易ボタン
y = y    ;簡易ボタン2
z = z    ;シールド
a = a    ;弱攻撃
b = b    ;中攻撃
c = c    ;強攻撃
s = s    ;挑発

;-| AI |--------------------------------------------------------
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

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "41236c"
command = ~B, DB, D, DF, F, c
time = 18

[Command]
name = "87412369z"
command = ~U, B, D, F, z
time = 26

[Command]
name = "87412369z"
command = ~U, F, D, B, z
time = 26

[Command]
name = "87412369z"
command = ~B, D, F, U, z
time = 26

[Command]
name = "87412369z"
command = ~B, U, F, D, z
time = 26

[Command]
name = "87412369z"
command = ~F, D, B, U, z
time = 26

[Command]
name = "87412369z"
command = ~F, U, B, D, z
time = 26

[Command]
name = "87412369z"
command = ~D, B, U, F, z
time = 26

[Command]
name = "87412369z"
command = ~D, F, U, B, z
time = 26

;-| 必殺技 |------------------------------------------------------
[Command]
name = "63214c"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "623a"
command = ~F, D, DF, a
time = 15

[Command]
name = "623b"
command = ~F, D, DF, b
time = 15

[Command]
name = "623c"
command = ~F, D, DF, c
time = 15

[Command]
name = "236z"
command = ~D, DF, F, z
time = 15

[Command]
name = "236a"
command = ~D, DF, F, a
time = 15

[Command]
name = "236b"
command = ~D, DF, F, b
time = 15

[Command]
name = "236c"
command = ~D, DF, F, c
time = 15

[Command]
name = "421a"
command = ~B, D, DB, a
time = 15

[Command]
name = "421b"
command = ~B, D, DB, b
time = 15

[Command]
name = "421c"
command = ~B, D, DB, c
time = 15

[Command]
name = "214z"
command = ~D, DB, B, z
time = 15

[Command]
name = "214a"
command = ~D, DB, B, a
time = 15

[Command]
name = "214b"
command = ~D, DB, B, b
time = 15

[Command]
name = "214c"
command = ~D, DB, B, c
time = 15

[Command]
name = "22a"
command = D, D, a
time = 15

[Command]
name = "22b"
command = D, D, b
time = 15

[Command]
name = "22c"
command = D, D, c
time = 15

[Command]
name = "22z"
command = D, D, z
time = 15

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "jump"    
command = $D, UF
time = 11

[Command]
name = "rjump"    
command = $D, UB
time = 11

[Command]
name = "jump2"    
command = $D, U
time = 11

[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "FF"
command = F, >~$F, U, >~$U, F 
time = 16

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "BB"
command = B, >~$B, U, >~$U, B
time = 16

;-| 方向とボタンで出す技 |---------------------------------------------------------
;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 0

[Command]
name = "b"
command = b
time = 0

[Command]
name = "c"
command = c
time = 0

[Command]
name = "x"
command = x
time = 0

[Command]
name = "y"
command = y
time = 0

[Command]
name = "z"
command = z
time = 0

[Command]
name = "start"
command = s
time = 0

[Command]
Name    = "recovery"
Command = a
Time    = 0

[Command]
Name    = "recovery"
Command = b
Time    = 0

[Command]
Name    = "recovery"
Command = c
Time    = 0

[Command]
Name    = "recovery"
Command = x
Time    = 0

[Command]
Name    = "recovery"
Command = y
Time    = 0

[Command]
Name    = "recovery"
Command = z
Time    = 0

[command]
name = "fwd"
command = F
time = 0

[command]
name = "back"
command = B
time = 0

[Command]
name = "up" 
command = U
time = 0

[Command]
name = "down"
command = D
time = 0

[Command]
name = "ab"
command = a+b
time = 0

[Command]
name = "abc"
command = a+b+c
time = 0

[Command]
name = "az"
command = a+z
time = 0

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "A溜め"
command = /$a
time = 1

[Command]
name = "B溜め"
command = /$b
time = 1

[Command]
name = "C溜め"
command = /$c
time = 1

[Command]
name = "X溜め"
command = /$x
time = 1

[Command]
name = "Z溜め"
command = /$z
time = 1

[Command]
name = "ABC溜め"
command = /$a+b+c
time = 1

;---------------------------------------------------------------------------
; 下の記述↓は絶対に消さないでください。
;この記述を消すのは自殺行為です。絶対に消さないで下さい。
[Statedef -1]
;===========================================================================
;偽固有結界・ぐるぐる翡翠ワールド
[State -1] 
Type = ChangeState
Value = 3100
TriggerAll = Var(59) = 0
TriggerAll = Var(13) = 4
TriggerAll = NumHelper(25000)
Trigger1 = Var(2)/100%10 >= 2
Trigger1 = (StateNo = [900,901]) || (StateNo = [910,911]) || StateNo = 903 && FVar(26) = 1 && Var(57)%10 = 3 || StateNo = 913 && FVar(26) = 1 && Var(57)%10 = 3
Trigger2 = StateType != A
Trigger2 = Var(57)%10 = 4
Trigger2 = FVar(23) > 0
Trigger2 = Command = "87412369z" || Helper(25000),Var(6) = 406
Trigger2 = Ctrl || Var(2)/100%10 >= 5 && MoveType != H || StateNo = [39,40]

;---------------------------------------------------------------------------
;大暗黒翡翠拳
[State -1]
Type = ChangeState
Value = 3050
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "41236c" || Helper(25000),Var(6) = 203
TriggerAll = StateType != A
TriggerAll = Var(13) = 4
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;暗黒翡翠拳
[State -1]
Type = ChangeState
Value = 3000
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "41236c" || Helper(25000),Var(6) = 203
TriggerAll = StateType != A
TriggerAll = (Var(13) = [1,3]) || Var(13) = 5
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;立ちシールドカウンター
[State -1] 
Type = ChangeState
Value = 905
TriggerAll = Var(59) = 0
TriggerAll = Var(2)/100%10 >= 2 && StateNo = [900,903]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "236z" && Var(57)%10 >= 3 || Helper(25000),Var(6) = 226 && Var(57)%10 >= 3
Trigger2 = Var(57)%10 = 2
Trigger2 = NumTarget
Trigger2 = ! Target,IsHelper
Trigger2 = StateNo = 900 || StateNo = 902
Trigger3 = Var(57)%10 = 2
Trigger3 = Var(2)/100%10 >= 2 && Command = "236z" || Var(2)/100%10 >= 2 && Helper(25000),Var(6) = 226
Trigger3 = StateNo = [900,903]

;---------------------------------------------------------------------------
;しゃがみシールドカウンター
[State -1] 
Type = ChangeState
Value = 915
TriggerAll = Var(59) = 0
TriggerAll = Var(2)/100%10 >= 2 && StateNo = [910,913]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "236z" && Var(57)%10 >= 3 || Helper(25000),Var(6) = 226 && Var(57)%10 >= 3
Trigger2 = Var(57)%10 = 2
Trigger2 = NumTarget
Trigger2 = ! Target,IsHelper
Trigger2 = StateNo = 910 || StateNo = 912
Trigger3 = Var(57)%10 = 2
Trigger3 = Var(2)/100%10 >= 2 && Command = "236z" || Var(2)/100%10 >= 2 && Helper(25000),Var(6) = 226
Trigger3 = StateNo = [910,913]

;---------------------------------------------------------------------------
;空中シールドカウンター
[State -1] 
Type = ChangeState
Value = 925
TriggerAll = Var(59) = 0
TriggerAll = Var(2)/100%10 >= 2 && StateNo = [920,923]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "236z" && Var(57)%10 >= 3 || Helper(25000),Var(6) = 226 && Var(57)%10 >= 3
Trigger2 = Var(57)%10 = 2
Trigger2 = NumTarget
Trigger2 = ! Target,IsHelper
Trigger2 = StateNo = 920 || StateNo = 922
Trigger3 = Var(57)%10 = 2
Trigger3 = Var(2)/100%10 >= 2 && Command = "236z" || Var(2)/100%10 >= 2 && Helper(25000),Var(6) = 226
Trigger3 = StateNo = [920,923]

;---------------------------------------------------------------------------
;シールドバンカー
[State -1]
Type = ChangeState
Value = 930
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214z" || Helper(25000),Var(6) = 256
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;C失礼しますA
[State -1]
Type = ChangeState
Value = 1000
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623a" || Helper(25000),Var(6) = 211
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;E失礼しますA
[State -1]
Type = ChangeState
Value = 1010
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623a" || Helper(25000),Var(6) = 211
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;C失礼しますB
[State -1]
Type = ChangeState
Value = 1050
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623b" || Helper(25000),Var(6) = 212 || Command = "623c" && Var(13) = 0 && FVar(29) < 1000 || Command = "623c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;H失礼しますB
[State -1]
Type = ChangeState
Value = 1060
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623b" || Helper(25000),Var(6) = 212 || Command = "623c" && Var(13) = 0 && FVar(29) < 1000 || Command = "623c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;E失礼しますB
[State -1]
Type = ChangeState
Value = 1070
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623b" || Helper(25000),Var(6) = 212 || Command = "623c" && Var(13) = 0 && FVar(29) < 1000 || Command = "623c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;C失礼しますEX
[State -1]
Type = ChangeState
Value = 2000
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623c" || Helper(25000),Var(6) = 213
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;E失礼しますEX
[State -1]
Type = ChangeState
Value = 2010
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623c" || Helper(25000),Var(6) = 213
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;天井に危険ですA
[State -1]
Type = ChangeState
Value = 1500
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623a" || Helper(25000),Var(6) = 211
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;天井に危険ですB
[State -1]
Type = ChangeState
Value = 1550
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623b" || Helper(25000),Var(6) = 212 || Command = "623c" && Var(13) = 0 && FVar(29) < 1000 || Command = "623c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;天井に危険ですEX
[State -1]
Type = ChangeState
Value = 2500
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "623c" || Helper(25000),Var(6) = 213
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;お玉は頑丈ですA
[State -1]
Type = ChangeState
Value = 1100
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;お玉は頑丈ですB
[State -1]
Type = ChangeState
Value = 1150
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;お玉は頑丈ですEX
[State -1]
Type = ChangeState
Value = 2100
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;翡翠流フライ揚げ
[State -1]
Type = ChangeState
Value = 1800
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;翡翠流卵返し
[State -1]
Type = ChangeState
Value = 1850
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;翡翠流卵返し三人前
[State -1]
Type = ChangeState
Value = 2800
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;洗脳探偵翡翠
[State -1]
Type = ChangeState
Value = 1700
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "63214c" || Helper(25000),Var(6) = 233
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;翡翠マグナムデコピン
[State -1]
Type = ChangeState
Value = 1750
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "63214c" || Helper(25000),Var(6) = 233
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;危ないですよA
[State -1]
Type = ChangeState
Value = 1300
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214a" || Helper(25000),Var(6) = 251
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;危ないですよB
[State -1]
Type = ChangeState
Value = 1310
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214b" || Helper(25000),Var(6) = 252 || Command = "214c" && Var(13) = 0 && FVar(29) < 1000 || Command = "214c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;危ないですよEX
[State -1]
Type = ChangeState
Value = 2300
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "214c" || Helper(25000),Var(6) = 253
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;がんばりましたA
[State -1]
Type = ChangeState
Value = 1400
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 != 3
TriggerAll = NumHelper(1450) + NumHelper(1460) + NumHelper(2450) <= 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22a" || Helper(25000),Var(6) = 121
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;がんばりましたB
[State -1]
Type = ChangeState
Value = 1410
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 != 3
TriggerAll = NumHelper(1450) + NumHelper(1460) + NumHelper(2450) <= 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22b" || Helper(25000),Var(6) = 122 || Command = "22c" && Var(13) = 0 && FVar(29) < 1000 && Var(57)/100%10 = 1 || Command = "22c" && (Var(13) = [6,9]) && Var(57)/100%10 = 1
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;がんばりましたC
[State -1]
Type = ChangeState
Value = 1420
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 2 && NumHelper(1470) + NumHelper(1480) <= 1 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22c" || Helper(25000),Var(6) = 123
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;がんばりましたZ
[State -1]
Type = ChangeState
Value = 1430
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 2 && NumHelper(1470) + NumHelper(1480) <= 1 || Var(57)/100%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22z" || Helper(25000),Var(6) = 126
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;超がんばりました
[State -1]
Type = ChangeState
Value = 2400
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 1
TriggerAll = NumHelper(1450) + NumHelper(1460) + NumHelper(2450) <= 1
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22c" || Helper(25000),Var(6) = 123
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;おかけくださいA
[State -1]
Type = ChangeState
Value = 1600
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(1650) + NumHelper(1660) + NumHelper(2650) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22a" || Helper(25000),Var(6) = 121
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;おかけくださいB
[State -1]
Type = ChangeState
Value = 1610
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(1650) + NumHelper(1660) + NumHelper(2650) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22b" || Helper(25000),Var(6) = 122 || Command = "22c" && Var(13) = 0 && FVar(29) < 1000 || Command = "22c" && Var(13) = [6,9]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;おかけくださいZ
[State -1]
Type = ChangeState
Value = 1620
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(1670) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22z" || Helper(25000),Var(6) = 126
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;秋葉さま用です
[State -1]
Type = ChangeState
Value = 2600
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = 3
TriggerAll = NumHelper(1650) + NumHelper(1660) + NumHelper(2650) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "22c" || Helper(25000),Var(6) = 123
TriggerAll = StateType != A
TriggerAll = StateNo != 2500
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;空中お玉は頑丈ですA
[State -1]
Type = ChangeState
Value = 1200
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236a" || Helper(25000),Var(6) = 221
TriggerAll = StateType = A
TriggerAll = StateNo != 1200
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;空中お玉は頑丈ですB
[State -1]
Type = ChangeState
Value = 1250
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236b" || Helper(25000),Var(6) = 222 || Command = "236c" && Var(13) = 0 && FVar(29) < 1000 || Command = "236c" && Var(13) = [6,9]
TriggerAll = StateType = A
TriggerAll = StateNo != 1250
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;空中お玉は頑丈ですEX
[State -1]
Type = ChangeState
Value = 2200
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "236c" || Helper(25000),Var(6) = 223
TriggerAll = StateType = A
Trigger1 = FVar(29) >= 1000
Trigger1 = Var(13) = 0
Trigger1 = Ctrl
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0
Trigger2 = Var(2)/100%10 >= 1 && MoveType != H
Trigger3 = Var(13) = [1,5]
Trigger3 = Ctrl
Trigger4 = Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 1 && MoveType != H

;---------------------------------------------------------------------------
;空中洗脳探偵翡翠
[State -1]
Type = ChangeState
Value = 1710
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/100%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "63214c" || Helper(25000),Var(6) = 233
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 2 && MoveType != H

;---------------------------------------------------------------------------
;前ハイジャンプ
[State -1]
Type = ChangeState
Value = 41
TriggerAll = Var(59) = 0
TriggerAll = Var(11)%10 = [0,0+IfElse(Var(57)%10=4,3,0)]
TriggerAll = NumHelper(25000)
Trigger1 = Command = "jump" && (SysVar(4) = [0,10]) || Helper(25000),Var(6) = 150 && (SysVar(4) = [0,10])
Trigger1 = StateType != A
Trigger1 = StateNo != [200,499]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = Command = "jump" && P2Dist X >= 0 || Command = "rjump" && P2Dist X < 0 || Helper(25000),Var(6) = 150 && P2Dist X >= 0 || Helper(25000),Var(6) = 130 && P2Dist X < 0
Trigger2 = StateType = A
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = Command = "jump" && P2Dist X >= 0 || Command = "rjump" && P2Dist X < 0 || Helper(25000),Var(6) = 150 && P2Dist X >= 0 || Helper(25000),Var(6) = 130 && P2Dist X < 0
Trigger3 = Var(51) <= 1
Trigger3 = StateType = A
Trigger3 = Ctrl || Var(2)/100%10 = 3 && MoveType != H

;---------------------------------------------------------------------------
;ニュートラルハイジャンプ
[State -1]
Type = ChangeState
Value = 42
TriggerAll = Var(59) = 0
TriggerAll = Var(11)%10 = 0
TriggerAll = NumHelper(25000)
Trigger1 = Command = "jump2" && (SysVar(4) = [0,10]) || Helper(25000),Var(6) = 140 && (SysVar(4) = [0,10])
Trigger1 = StateType != A
Trigger1 = StateNo != [200,499]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;ジャンプ
[State -1]
Type = ChangeState
Value = 40
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = Command = "holdup"
Trigger1 = Ctrl
Trigger2 = Var(10) = 0
Trigger2 = Var(2)/100 = 14 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 3 && (StateNo = [900,901]) || Var(2)/100%10 = 3 && (StateNo = [910,911]) || Var(2)/100%10 = 2 && StateNo = 905
Trigger3 = Var(10) = 0
Trigger3 = Var(2)/1000 = 1 && (StateNo = [200,209]) || Var(2)/1000 = 1 && (StateNo = [400,409])
Trigger4 = Var(10) = 0
Trigger4 = Var(2)/100 = 12 && StateNo = 431 || Var(2)/100 = 11 && StateNo = 1010 || Var(2)/100 = 11 && StateNo = 1070 || Var(2)/100 = 11 && StateNo = 1120
Trigger5 = Var(10) = 0
Trigger5 = Var(2)/100 = 11 && StateNo = 1500 || Var(2)/100 = 11 && StateNo = 1550 || Var(2)/100 = 11 && StateNo = 1850 || Var(2)/100 = 11 && StateNo = 1851 || Var(2)/100 = 11 && StateNo = 2500

;---------------------------------------------------------------------------
;２段ジャンプ
[State -1]
Type = ChangeState
Value = 45
TriggerAll = Var(59) = 0
TriggerAll = StateType = A
TriggerAll = Command = "holdup"
TriggerAll = Var(51) <= 1
TriggerAll = Var(11)%10 = [0,0+IfElse(Var(57)%10=4,3,0)]
Trigger1 = StateNo = 50 || StateNo = 51 || StateNo = 110 || StateNo = 115 || StateNo = 120 || StateNo = 132 || StateNo = 140 || StateNo = 155 || StateNo = 830 || StateNo = 840 || StateNo = 1200 || StateNo = 1250 || StateNo = 2200
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = StateNo = 5040 || StateNo = 5210
Trigger3 = Ctrl

;---------------------------------------------------------------------------
;ダッシュ
[State -1]
Type = ChangeState
Value = 100
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdfwd" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 100
TriggerAll = StateType != A
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1]
Type = ChangeState
Value = 105
TriggerAll = Var(59) = 0
TriggerAll = StateType != A
TriggerAll = NumHelper(25000)
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdback" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 110
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1]
Type = ChangeState
Value = 110
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdfwd" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 100
TriggerAll = Var(11)/10%10 = [0,0+IfElse(Var(57)%10=4,2,0)]
TriggerAll = Pos Y < -35.75 && Var(57)%10 != 4 || Var(57)%10 = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(57)%10 != 3
Trigger2 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = Var(57)%10 = 3
Trigger3 = Var(2)/100%10 >= 3 && MoveType != H
Trigger3 = StateNo != [610,699]

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1]
Type = ChangeState
Value = 115
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdback" && Command = "y" && Command != "holddown" && Command != "holdup" || Helper(25000),Var(6) = 110
TriggerAll = Var(11)/10%10 = [0,0+IfElse(Var(57)%10=4,2,0)]
TriggerAll = Pos Y < -35.75 && Var(57)%10 != 4 || Var(57)%10 = 4
TriggerAll = StateType = A
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H && StateNo != 760 && StateNo != 920

;---------------------------------------------------------------------------
;避け
[State -1]
Type = ChangeState
Value = 750
TriggerAll = Var(59) = 0
TriggerAll = Var(57)%10 != 3 && Var(57)%10 != 5
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = Command = "ab" || Command = "x" || Command = "y" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = StateType != A
Trigger1 = Ctrl || Var(2)/100%10 = 3 && (StateNo != [200,209]) && (StateNo != [400,409]) && MoveType != H && (StateNo != [900,919]) || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
;空中避け
[State -1]
Type = ChangeState
Value = 760
TriggerAll = Var(59) = 0
TriggerAll = Var(57)%10 != 3 && Var(57)%10 != 5
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = Command = "ab" || Command = "x" || Command = "y" || (Helper(25000),Var(6) = [4,5]) && Helper(25000),Var(7) = 2 || Helper(25000),Var(6) = 8 && Helper(25000),Var(7) = 2
TriggerAll = StateType = A
TriggerAll = StateNo != 760
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = FVar(29) >= 500 || Var(13) = [1,5]
Trigger2 = Var(2)/100%10 >= 3
Trigger2 = StateNo = [600,699]
Trigger3 = Var(2)/100%10 >= 2
Trigger3 = StateNo = [900,929]
Trigger4 = FVar(29) >= 500 || Var(13) = [1,5]
Trigger4 = Var(2)/100%10 >= 2
Trigger4 = StateNo = 615

;---------------------------------------------------------------------------
;投げ
[State -1]
Type = ChangeState
Value = 800
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" || Command = "holdback" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = Command = "az" || Command = "x" && Command != "holddown" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = StateType != A
Trigger1 = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H

;---------------------------------------------------------------------------
; 空中投げ
[State -1]
Type = ChangeState
Value = 820
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" || Command = "holdback" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = Command = "az" || Command = "x" && Command != "holddown" || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [4,6]) || Helper(25000),Var(6) = 10 && (Helper(25000),Var(7) = [4,6])
TriggerAll = Statetype = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger3 = Var(2)/100 = 14 && MoveType != H

;---------------------------------------------------------------------------
;ゲージ溜め
[State -1]
Type = ChangeState
Value = 850
TriggerAll = Var(59) = 0
TriggerAll = Var(57)%10 = 3
TriggerAll = Var(13) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback" || Helper(25000),Var(6) = 9 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 0
TriggerAll = StateType != A
TriggerAll = FVar(29) <= 3000
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
Trigger2 = (StateNo != [900,903]) && (StateNo != [910,913])
Trigger2 = Var(2)/100%10 = 3 && MoveType != H

;---------------------------------------------------------------------------
;イニシアティブヒート
[State -1]
Type = ChangeState
Value = 950
TriggerAll = Var(59) = 0
TriggerAll = Var(57)%10 = 3
TriggerAll = Var(13) = 1 || Var(13) = 5
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback"
TriggerAll = StateNo != 950
Trigger1 = (StateNo != [200,209]) && (StateNo != [400,409]) && (StateNo != [600,609])
Trigger1 = Var(2)/100%10 >= 1 && MoveType = A
Trigger2 = (StateNo = [200,209]) || (StateNo = [400,409]) || (StateNo = [600,609])
Trigger2 = Var(2)/100%10 >= 4
Trigger3 = (StateNo = [900,903]) || (StateNo = [910,913]) || (StateNo = [920,923])
Trigger3 = Var(2)/100%10 >= 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;強制開放
[State -1]
Type = ChangeState
Value = 960
TriggerAll = Var(59) = 0
TriggerAll = Var(57)%10 != 2
TriggerAll = NumHelper(25000)
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback" || Helper(25000),Var(6) = 9 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 0
TriggerAll = StateType != A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H
Trigger1 = Var(13) = 1 || Var(13) = 5
Trigger2 = Var(57)%10 = 1 || Var(57)%10 = 4
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0

;---------------------------------------------------------------------------
;空中強制開放
[State -1]
Type = ChangeState
Value = 970
TriggerAll = Var(59) = 0
TriggerAll = Var(57)%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "abc" || Command = "x" && Command != "holddown" && Command != "holdfwd" && Command != "holdback" || Helper(25000),Var(6) = 9 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 0
TriggerAll = StateType = A
TriggerAll = Ctrl || Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100 = 14 && MoveType != H
Trigger1 = Var(13) = 1 || Var(13) = 5
Trigger2 = FVar(29) >= 1000
Trigger2 = Var(13) = 0

;===========================================================================
;立ちシールド
[State -1]
Type = ChangeState
Value = 900
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "z" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 6 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo != 905 && StateNo != 915 && StateNo != 925 && StateNo = [900,929]

;---------------------------------------------------------------------------
;しゃがみシールド
[State -1]
Type = ChangeState
value = 910
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "z" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 6 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo != 905 && StateNo != 915 && StateNo != 925 && StateNo = [900,929]

;---------------------------------------------------------------------------
;空中シールド
[State -1]
Type = ChangeState
Value = 920
TriggerAll = Var(59) = 0
TriggerAll = NumHelper(25000)
TriggerAll = Command = "z" || Command = "x" || Helper(25000),Var(6) = 6 || Helper(25000),Var(6) = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H
Trigger3 = Var(2)/100%10 = 5 && MoveType != H
Trigger4 = Var(2)/100%10 = 2 && StateNo != 905 && StateNo != 915 && StateNo != 925 && StateNo = [900,929]

;---------------------------------------------------------------------------
;H6A
[State -1]
Type = ChangeState
Value = 230
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "a" || Command != "holddown" && Command = "holdfwd" && Command = "x" || Helper(25000),Var(6) = 1 && Helper(25000),Var(7) = 6 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = StateNo = 201
Trigger1 = Time = [5,14]

;---------------------------------------------------------------------------
;H6A2
[State -1]
Type = ChangeState
Value = 231
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "a" || Command != "holddown" && Command = "holdfwd" && Command = "x" || Helper(25000),Var(6) = 1 && Helper(25000),Var(7) = 6 || Helper(25000),Var(6) = 4 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = StateNo = 230
Trigger1 = Time = [7,21]

;---------------------------------------------------------------------------
;C5A
[State -1]
Type = ChangeState
Value = 200
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;H5A
[State -1]
Type = ChangeState
Value = 201
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;F5A
[State -1]
Type = ChangeState
Value = 202
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;E5A
[State -1]
Type = ChangeState
Value = 203
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "a" || Command != "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) != [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) != [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)%10 = 0
Trigger3 = StateNo = [200,209]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;C5B
[State -1]
Type = ChangeState
Value = 210
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdback" && Command != "holdfwd" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,6])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;F5B
[State -1]
Type = ChangeState
Value = 211
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,4])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;E5B
[State -1]
Type = ChangeState
Value = 213
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdback" && Command != "holdfwd" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) != [1,6])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,209]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)%10 = 0

;---------------------------------------------------------------------------
;C5C
[State -1]
Type = ChangeState
Value = 220
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) != [1,3]) && Helper(25000),Var(7) != 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)%10 = 0

;---------------------------------------------------------------------------
;E5C
[State -1]
Type = ChangeState
Value = 222
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command != "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) != [1,3]) && Helper(25000),Var(7) != 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)%10 = 0

;---------------------------------------------------------------------------
;C4B
[State -1]
Type = ChangeState
Value = 240
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 4
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])

;---------------------------------------------------------------------------
;E4B
[State -1]
Type = ChangeState
Value = 242
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdback" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 4
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])

;---------------------------------------------------------------------------
;C6B
[State -1]
Type = ChangeState
Value = 250
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(23)%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,419])
Trigger3 = Var(23)%10 = 0

;---------------------------------------------------------------------------
;C6C
[State -1]
Type = ChangeState
Value = 260
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(23)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,259]) || (StateNo = [400,429])
Trigger3 = Var(23)/10%10 = 0

;---------------------------------------------------------------------------
;H6C
[State -1]
Type = ChangeState
Value = 261
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 2 || Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(23)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,259]) || (StateNo = [400,429])
Trigger3 = Var(23)/10%10 = 0

;---------------------------------------------------------------------------
;F6C
[State -1]
Type = ChangeState
Value = 262
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 6
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(23)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,259]) || (StateNo = [400,429])
Trigger3 = Var(23)/10%10 = 0

;---------------------------------------------------------------------------
;C2A
[State -1]
Type = ChangeState
Value = 400
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "a" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = Statetype != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = [400,409]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;F2A
[State -1]
Type = ChangeState
Value = 401
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "a" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = Statetype != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = [400,409]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;E2A
[State -1]
Type = ChangeState
Value = 402
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "a" || Command = "holddown" && Command = "x" || Helper(25000),Var(6) = 1 && (Helper(25000),Var(7) = [1,3]) || Helper(25000),Var(6) = 4 && (Helper(25000),Var(7) = [1,3])
TriggerAll = Statetype != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 1
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)/10%10 = 0
Trigger3 = StateNo = [400,409]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = (StateNo = [200,209]) || (StateNo = [400,409])
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;C2B
[State -1]
Type = ChangeState
Value = 410
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != [3,4]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;F2B
[State -1]
Type = ChangeState
Value = 411
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;E2B
[State -1]
Type = ChangeState
Value = 412
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl || StateNo = 52 && Var(9) >= 2
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || StateNo = 230 || (StateNo = [400,409])
Trigger3 = Var(21)/10%10 = 0

;---------------------------------------------------------------------------
;C2C
[State -1]
Type = ChangeState
Value = 420
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)/10%10 = 0

;---------------------------------------------------------------------------
;C2C
[State -1]
Type = ChangeState
Value = 420
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) = [1,2])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)/10%10 = 0

;---------------------------------------------------------------------------
;E2C
[State -1]
Type = ChangeState
Value = 421
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "c" || Helper(25000),Var(6) = 3 && (Helper(25000),Var(7) = [1,3])
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)/10%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,219]) || (StateNo = [230,259]) || (StateNo = [400,419])
Trigger3 = Var(22)/10%10 = 0

;---------------------------------------------------------------------------
;F3C
[State -1]
Type = ChangeState
Value = 430
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command = "holdfwd" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 3
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(23)/100%10 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [200,259]) || (StateNo = [400,429])
Trigger3 = Var(23)/100%10 = 0

;---------------------------------------------------------------------------
;CJA
[State -1]
Type = ChangeState
Value = 600
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "a" || Command = "x" || Helper(25000),Var(6) = 1 || Helper(25000),Var(6) = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)/100 = 0
Trigger3 = StateNo = [600,609]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = [600,609]
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;EJA
[State -1]
Type = ChangeState
Value = 601
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "a" || Command = "x" || Helper(25000),Var(6) = 1 || Helper(25000),Var(6) = 4
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(20)/100 = 0
Trigger3 = StateNo = [600,609]
Trigger3 = Var(2)/100%10 = 3 && MoveType != H
Trigger4 = StateNo = [600,609]
Trigger4 = Var(2)/100%10 = 4 && MoveType != H

;---------------------------------------------------------------------------
;CJB
[State -1]
Type = ChangeState
Value = 610
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 1
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holdfwd" && Command = "b" || Command = "holdfwd" && Command = "holdup" && Command = "b" || Command = "holdfwd" && Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) != 6
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [600,609])
Trigger3 = Var(21)/100 = 0

;---------------------------------------------------------------------------
;HJB
[State -1]
Type = ChangeState
Value = 611
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 2
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holdfwd" && Command = "b" || Command = "holdfwd" && Command = "holdup" && Command = "b" || Command = "holdfwd" && Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) != 6
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [600,609])
Trigger3 = Var(21)/100 = 0

;---------------------------------------------------------------------------
;FJB
[State -1]
Type = ChangeState
Value = 612
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holdfwd" && Command = "b" || Command = "holdfwd" && Command = "holdup" && Command = "b" || Command = "holdfwd" && Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) != 6
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [600,609])
Trigger3 = Var(21)/100 = 0

;---------------------------------------------------------------------------
;EJB
[State -1]
Type = ChangeState
Value = 614
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holdfwd" && Command = "b" || Command = "holdfwd" && Command = "holdup" && Command = "b" || Command = "holdfwd" && Command = "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) != 6
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(21)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = (StateNo = [600,609])
Trigger3 = Var(21)/100 = 0

;---------------------------------------------------------------------------
;CJC
[State -1]
Type = ChangeState
Value = 620
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = [1,2]
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Command = "holddown" && Command = "holdfwd" && Command = "c" || Command = "holddown" && Command = "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) != 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]
Trigger3 = Var(22)/100 = 0

;---------------------------------------------------------------------------
;FJC
[State -1]
Type = ChangeState
Value = 622
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Command = "holddown" && Command = "holdfwd" && Command = "c" || Command = "holddown" && Command = "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) != 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]
Trigger3 = Var(22)/100 = 0

;---------------------------------------------------------------------------
;EJC
[State -1]
Type = ChangeState
Value = 624
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command != "holddown" && Command = "c" || Command = "holddown" && Command = "holdfwd" && Command = "c" || Command = "holddown" && Command = "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) != 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger2 = Var(22)/100 = 0
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]
Trigger3 = Var(22)/100 = 0

;---------------------------------------------------------------------------
;CJ6B
[State -1]
Type = ChangeState
Value = 630
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" && Command != "holdup" && Command != "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 6
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]

;---------------------------------------------------------------------------
;EJ6B
[State -1]
Type = ChangeState
Value = 631
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 4
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holdfwd" && Command != "holdup" && Command != "holddown" && Command = "b" || Helper(25000),Var(6) = 2 && Helper(25000),Var(7) = 6
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,619]

;---------------------------------------------------------------------------
;CJ2C
[State -1]
Type = ChangeState
Value = 640
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 != 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,629]

;---------------------------------------------------------------------------
;FJ2C
[State -1]
Type = ChangeState
Value = 642
TriggerAll = Var(59) = 0
TriggerAll = Var(57)/10%10 = 3
TriggerAll = NumHelper(25000)
TriggerAll = Command = "holddown" && Command != "holdfwd" && Command != "holdback" && Command = "c" || Helper(25000),Var(6) = 3 && Helper(25000),Var(7) = 2
TriggerAll = StateType = A
Trigger1 = Ctrl
Trigger2 = Var(2)/100%10 = 3 && MoveType != H || Var(2)/100%10 = 5 && MoveType != H || Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 != 3 || Var(2)/1000%10 != 0 && Var(57)%10 = 4 && StateNo = [1000,2999]
Trigger3 = Var(2)/100%10 = 4 && MoveType != H && Var(57)%10 = 3
Trigger3 = StateNo = [600,629]

;---------------------------------------------------------------------------
;挑発
[State -1]
Type = ChangeState
Value = 195
TriggerAll = Var(59) = 0
TriggerAll = RoundState = [2,3]
TriggerAll = NumHelper(25000)
TriggerAll = Command = "start" || Helper(25000),Var(6) = 7
Trigger1 = StateType != A
Trigger1 = Ctrl || (Var(2)/100%10 = [4,5]) && MoveType != H

;---------------------------------------------------------------------------
;ガード
[State -1]
Type = ChangeState
Value = 120
TriggerAll = Var(59) = 0
TriggerAll = Command = "holdback"
TriggerAll = InGuardDist
TriggerAll = StateNo != 760
TriggerAll = StateNo != [920,923]
Trigger1 = Ctrl || Var(2)/100%10 = 5 && MoveType != H
