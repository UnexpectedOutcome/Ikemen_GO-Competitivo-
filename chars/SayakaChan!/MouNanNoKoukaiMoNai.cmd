
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

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]  ;※異なるコマンドでも、同じ名前に設定するとその同じ技を出せるようになります。
name = "TripleKFPalm2"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]  ;※異なるコマンドでも、同じ名前に設定するとその同じ技を出せるようになります。
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "真昇龍拳"  ;日本語も使えるらしい
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "真昇龍拳"
command = ~D, DF, F, D, DF, F, b
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
;コマンドの一部が重なる場合、先に書かれたものが優先されるので
;623 → 236の順に登録されています。
;（注:236等はテンキーでコマンドを表しています）

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "236_x"
command = ~D, DF, F, x

[Command]
name = "236_y"
command = ~D, DF, F, y

[Command]
name = "236_xy"
command = ~D, DF, F, x+y

[Command]
name = "214_x"
command = ~D, DB, B, x

[Command]
name = "214_y"
command = ~D, DB, B, y

[Command]
name = "214_xy"
command = ~D, DB, B, x+y

[Command]
name = "214_a"
command = ~D, DF, F, a

[Command]
name = "214_b"
command = ~D, DF, F, b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1

[Command]
name = "helper"
command = y+b
time = 1

[Command]
name = "roll"
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




;===========================================================================


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
command = a,a,a,c,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,z,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,a,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,z,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,a,z,z,z,z,z,x,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,U,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = b,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,a,b,b,a,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,a,b,c,c,c,c,c,z,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,y,x,x,x,x,x,x,x,x,x,x,x,x,z,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,c,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,b,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,a,z,s,s,b,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,s,F,F,F,F,F,F,F,F,b,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,a,D,D,D,D,D,z,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,z,B,B,B,B,B,B,s,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,s,U,U,U,U,U,U,U,U,a,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,s,a,a,a,a,a,a,a,a,a,s,a,a,a,a,z,a,a
time = 0
[Command]
name = "AI30"
command = c,a,c,c,s,z,a,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,a,x,z,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,s,y,y,y,y,y,y,y,y,y,y,y,y,a
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,z,s,s,s,s,s,s,s,x,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,x,z,z,z,s,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,b,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,y,z,a,a,a,a,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,b,y,b
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,b,z,z,a,z,y,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = s,z,z,z,z,z,a,b,c,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = s,z,z,z,a,z,z,z,z,z,z,z,s,z,a,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,a,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = b,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,b,z
time = 0
[Command]
name = "AI46"
command = z,c,z,z,c,z,z,z,a,a,a,a,c,a,z,z,c,z,z
time = 0
[Command]
name = "AI47"
command = z,z,c,a,a,a,a,z,z,z,z,s,z,z,z,s,z,z,z
time = 0
[Command]
name = "AI48"
command = s,z,x,x,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = s,s,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = x,x,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0




;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;==============================================================================
;------------------------------------------------------------------------------
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


;==============================================================================
[State -1]
type = ChangeState
value = 270
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl


[State -1]
type = ChangeState
value = 231
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl



[State -1]
type = ChangeState
value = 232
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------
;立ち弱
[State -1]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl


;立ち中
[State -1]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl

;立ち強
[State -1]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
































































;--------------------------------------------------------------------------------------
[State -1]
type = VarSet
TriggerAll = Var(59) = 0
triggerall = RoundState = [1,2]
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
;trigger52 = 1    ;常時起動スイッチ
V = 59
Value = 70
;行動頻度。



[State -1]
type = VarSet
trigger1 = var(55) = 0
V = 55
Value = 2
;難易度
;easy   = 1
;normal = 2
;hard   = 3



[State -1]
type = VarAdd
Trigger1 = Var(59) > 0
Trigger1 = stateno < 200
V = 58
Value = 1+(random%10=0)
[State -1]
type = VarSet
Trigger1 = roundstate != 2
Trigger2 = (enemynear,stateno = [264,265]) && p2movetype = H
V = 58
Value = 1000
[State -1]
type = VarSet
Trigger1 = Var(59) > 0
Trigger1 = stateno >= 200
V = 58
Value = 0


[State -1]
type = VarSet
Trigger1 = var(58) = 0
V = 57
Value = (random%4<=2)


;------------------------------------------------------------------------------
;p2bodydist x < 70
[State -1]
type = ChangeState
value = 270
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%7= [0,2]
trigger1 = p2bodydist x <= 70

[State -1]
type = ChangeState
value = 250
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%7 = 3
trigger1 = p2bodydist x <= 70
Trigger1 = (enemynear,stateno != [264,265])

[State -1]
type = ChangeState
value = 230
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%7 = 4
trigger1 = p2bodydist x <= 70


[State -1]
type = ChangeState
value = 231
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%7 = 5
trigger1 = p2bodydist x <= 70



[State -1]
type = ChangeState
value = 232
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%7 = 6
trigger1 = p2bodydist x <= 70





;------------------------------------------------------------------------------
;p2bodydist x = [70,150]
[State -1]
type = ChangeState
value = 250
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 1
trigger1 = p2bodydist x = [70,150]
Trigger1 = (enemynear,stateno != [264,265])

[State -1]
type = ChangeState
value = 230
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 2
trigger1 = p2bodydist x = [70,150]


[State -1]
type = ChangeState
value = 231
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 3
trigger1 = p2bodydist x = [70,150]



[State -1]
type = ChangeState
value = 232
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 4
trigger1 = p2bodydist x = [70,150]



;立ち弱
[State -1]
type = ChangeState
value = 200
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 5
trigger1 = p2bodydist x = [70,150]


;立ち中
[State -1]
type = ChangeState
value = 210
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 0
trigger1 = p2bodydist x = [70,150]


;------------------------------------------------------------------------------
;p2bodydist x > 150
;立ち弱
[State -1]
type = ChangeState
value = 200
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 0
trigger1 = p2bodydist x >= 150


;立ち中
[State -1]
type = ChangeState
value = 210
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 1
trigger1 = p2bodydist x >= 150


;立ち強
[State -1]
type = ChangeState
value = 220
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 2
trigger1 = p2bodydist x >= 150



[State -1]
type = ChangeState
value = 250
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 3
trigger1 = p2bodydist x >= 150
Trigger1 = (enemynear,stateno != [264,265])

[State -1]
type = ChangeState
value = 230
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 4
trigger1 = p2bodydist x >= 150


[State -1]
type = ChangeState
value = 231
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) >= var(59)
trigger1 = gametime%6 = 5
trigger1 = p2bodydist x >= 150




;==============================================================================
;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(57) = 1
trigger1 = stateno != [100,105]

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl




;この下、一行以上空ける事…



