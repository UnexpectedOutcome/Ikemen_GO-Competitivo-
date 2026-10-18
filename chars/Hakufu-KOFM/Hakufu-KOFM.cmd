;=========================Hakufu Sonsaku Creada por Zelgadis=====================;
;=========================Zelgadiss-Graywords@hotmail.com======================;
;===============================Play KOF MENORIAL==============================;
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Deafauls |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1
;------------------------------------------------------------------------------
;-| Hypers |--------------------------------------------------------------
[command]
name = "dragon's fist dawn"
command = ~F,B,DB,D,DF,F,c
time = 20

[command]
name = "Incarnation devil"
command = ~D,DF,F,DF,D,B,c
time = 20

[command]
name = "Materializes Lightning"
command = ~D,DB,B,D,F,c
time = 20
;------------------------------------------------------------------------------
;-| Dobles |--------------------------------------------------------------

[command]
name = "Hyper Destructive fist"
command = ~D,DF,F,D,DF,F,c
time = 20

[command]
name = "Buster"
command = ~D,DB,B,D,DB,B,c
time = 20
;------------------------------------------------------------------------------
;-| Especiales |-----------------------------------------------------------------

[command]
name = "Destructive fist"
command = ~D,DF,F,D,DF,F,x
time = 20

[command]
name = "Destructive fist"
command = ~D,DF,F,D,DF,F,y
time = 20

[command]
name = "Destructive Kick"
command = ~D,DF,F,D,DF,F,a
time = 20

[command]
name = "Destructive Kick"
command = ~D,DF,F,D,DF,F,b
time = 20
;------------------------------------------------------------------------------
;-| Vasicos |-------------------------------------------------------------------
[command]
name = "Reversal 2"
command = ~D,DB,B,y
time = 15

[command]
name = "Reversal"
command = ~D,DB,B,x
time = 15

[command]
name = "seguir"
command = ~D,DB,B,b
time = 15

[command]
name = "seguir"
command = ~D,DB,B,a
time = 15

[command]
name = "Combo 2"
command = ~D,DB,B,b
time = 15

[command]
name = "Combo 1"
command = ~D,DB,B,a
time = 15

[command]
name = "Zenpu Kyaku 2"
command = ~D,DF,F,b
time = 15

[command]
name = "Zenpu Kyaku 1"
command = ~D,DF,F,a
time = 15

[command]
name = "poder 1"
command = ~D,DF,F,x
time = 15

[command]
name = "poder 2"
command = ~D,DF,F,y
time = 15

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
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "ふっとばし"
command = y+b
time = 1

[Command]
name = "ふっとばし"
command = c
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "jump"
command = D, $U
time = 12

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

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
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
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1]

;dragon's fist dawn
[State -1, dragon's fist dawn]
type = ChangeState
value = 2600
triggerall = command = "dragon's fist dawn"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact
trigger19 = stateno = 2550 && movecontact
trigger20 = stateno = 2511 && movecontact

;Reversal 2
[State -1, Reversal 2]
type = ChangeState
value = 1043
triggerall = command = "Reversal 2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;Reversal
[State -1, Reversal]
type = ChangeState
value = 1040
triggerall = command = "Reversal"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;Incarnation devil
[State -1, Incarnation devil]
type = ChangeState
value = 2540
triggerall = command = "Incarnation devil"
triggerall = power >= 3000
triggerall = life <= 1200
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact

;Combo 2
[State -1, Combo 2]
type = ChangeState
value = 1033
triggerall = command = "Combo 2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;Destructive fist
[State -1, Destructive fist]
type = ChangeState
value = 2550
triggerall = command = "Destructive fist"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact

;Combo 1
[State -1, Combo 1]
type = ChangeState
value = 1030
triggerall = command = "Combo 1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact


;Materializes Lightning
[State -1, Materializes Lightning]
type = ChangeState
value = 2530
triggerall = command = "Materializes Lightning"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact

;Hyper Destructive fist
[State -1, Hyper Destructive fist]
type = ChangeState
value = 2520
triggerall = command = "Hyper Destructive fist"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact
trigger19 = stateno = 2550 && movecontact
trigger20 = stateno = 2511 && movecontact

;Destructive fist
[State -1, Destructive fist]
type = ChangeState
value = 2510
triggerall = command = "Destructive Kick"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 240 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact
;Buster
[State -1, Buster]
type = ChangeState
value = 2500
triggerall = command = "Buster"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 1030 && movecontact
trigger15 = stateno = 1031 && movecontact
trigger16 = stateno = 1032 && movecontact
trigger17 = stateno = 1033 && movecontact
trigger18 = stateno = 1034 && movecontact
trigger19 = stateno = 2550 && movecontact
trigger20 = stateno = 2511 && movecontact

;Zenpu Kyaku 2
[State -1, Zenpu Kyaku 2]
type = ChangeState
value = 1013
triggerall = command = "Zenpu Kyaku 2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact


;Zenpu Kyaku 1
[State -1, Zenpu Kyaku 1]
type = ChangeState
value = 1010
triggerall = command = "Zenpu Kyaku 1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact


;poder 2
[State -1, poder 2]
type = ChangeState
value = 1002
triggerall = command = "poder 2"
triggerall = numprojID(1000) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;poder 1
[State -1, poder 1]
type = ChangeState
value = 1000
triggerall = command = "poder 1"
triggerall = numprojID(1000) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 300 && movecontact
trigger9 = stateno = 310 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

; Power charge
[State -1]
type = ChangeState
value = 910
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "holda"
trigger1 = command = "holdy"
;---------------------------------------------------------------------------
;後緊急回避
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]

;---------------------------------------------------------------------------
;前緊急回避
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;受身
[State -1, UKEMI]
type = ChangeState
value = 52000
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30

;------------------------------------------------------------------------------
;ふっとばし
[State -1, Throw]
type = ChangeState
value = 300
triggerall = command = "ふっとばし"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]

;------------------------------------------------------------------------------
;空中ふっとばし
[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "ふっとばし"
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;P投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------
;K投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl
;------------------------------------------------------------------------------
;外式・轟斧　陽
[State -1, GOUHU]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 400 && movecontact

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

;==============================================================================
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 24
trigger1 = ctrl

;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 14
trigger1 = ctrl

;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 20
trigger1 = ctrl

;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 4 && movecontact

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
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
;ジャンプ弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;ジャンプ強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;垂直ジャンプ強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

