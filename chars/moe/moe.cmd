;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "PT"
command = ~D, DF, F, D, DF, x
time = 30

[Command]
name = "PT"
command = ~D, DF, F, D, DF, y
time = 30

[Command]
name = "CH"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "CH"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command] 
name = "MM"
command = ~B, D, F, B, F, x
time = 35

[Command] 
name = "MM"
command = ~B, D, F, B, F, y
time = 35

;-| EX必殺技 |----------------------------------------------------
[Command]
name = "SS_xy"
command = ~D, DF, F, x+y

[Command] 
name = "AT_xy"
command = ~F, D, DF, x+y

[Command] 
name = "SK_ab"
command = ~D, DB, B, a+b

;-| 必殺技 |------------------------------------------------------
[Command] 
name = "SS_x"
command = ~D, DF, F, x

[Command] 
name = "SS_y"
command = ~D, DF, F, y

[Command] 
name = "AT_x"
command = ~F, D, DF, x

[Command] 
name = "AT_y"
command = ~F, D, DF, y

[Command] 
name = "SK_a"
command = ~D, DB, B, a

[Command] 
name = "SK_b"
command = ~D, DB, B, b

[Command] 
name = "pu"
command = z
time = 1

[Command] 
name = "pu"
command = x+a+y
time = 2

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command =y+b
time = 1

[Command]
name = "nage"
command =x+a
time = 1

[Command]
name = "GC"
command =y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; モコモコ
[State -1,]
type = ChangeState
value = 3200
triggerall = command = "MM"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; 突進超必
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "CH"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; 対空超必
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "PT"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; 空中シューティングスター（EX)
[State -1,]
type = ChangeState
value = 1070
triggerall = command = "SS_xy"
triggerall = (NumHelper(1001) = 0)||(NumHelper(1001) = 1)&&(Var(5) = 1)
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = stateno = 1304
trigger4 = stateno = 1314
trigger5 = stateno = 1324
trigger6 = stateno = 3004
trigger7 = stateno = 105

;---------------------------------------------------------------------------
; シューティングスター（EX）
[State -1,]
type = ChangeState
value = 1020
triggerall = command = "SS_xy"
triggerall = (NumHelper(1001) = 0)||(NumHelper(1001) = 1)&&(Var(5) = 1)
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;アステロイドトライアングル（EX）
[State -1,]
type = ChangeState
value = 1220
triggerall = command = "AT_xy"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; シューメイカーキック(EX）
[State -1,]
type = ChangeState
value = 1320
triggerall = command = "SK_ab"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
; シューメイカーキック(弱）
[State -1,]
type = ChangeState
value = 1300
triggerall = command = "SK_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52

;---------------------------------------------------------------------------
; シューメイカーキック(強）
[State -1,]
type = ChangeState
value = 1310
triggerall = command = "SK_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
; アステロイドトライアングル(弱）
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "AT_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52

;---------------------------------------------------------------------------
; アステロイドトライアングル(強）
[State -1,]
type = ChangeState
value = 1210
triggerall = command = "AT_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
; 空中シューティングスター（弱）
[State -1,]
type = ChangeState
value = 1050
triggerall = command = "SS_x"
triggerall = (NumHelper(1001) = 0)||(NumHelper(1001) = 1)&&(Var(5) = 1)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = stateno = 1304
trigger4 = stateno = 1314
trigger5 = stateno = 1324
trigger6 = stateno = 3004
trigger7 = stateno = 105

;---------------------------------------------------------------------------
; 空中シューティングスター（強）
[State -1,]
type = ChangeState
value = 1060
triggerall = command = "SS_y"
triggerall = (NumHelper(1001) = 0)||(NumHelper(1001) = 1)&&(Var(5) = 1)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = stateno = 1304
trigger4 = stateno = 1314
trigger5 = stateno = 1324
trigger6 = stateno = 3004
trigger7 = stateno = 105

;===========================================================================
;---------------------------------------------------------------------------
; シューティングスター（弱）
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "SS_x"
triggerall = (NumHelper(1001) = 0)||(NumHelper(1001) = 1)&&(Var(5) = 1)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; シューティングスター（強）
[State -1,]
type = ChangeState
value = 1010
triggerall = command = "SS_y"
triggerall = (NumHelper(1001) = 0)||(NumHelper(1001) = 1)&&(Var(5) = 1)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != [300,310]
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
;パワーアップ１
[State -1, Run Fwd]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = Var(3) = 0
trigger1 = command = "pu"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;パワーアップ２
[State -1, Run Fwd]
type = ChangeState
value = 2001
triggerall = power >= 1000
triggerall = Var(3) = 1
trigger1 = command = "pu"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
;[State -1, Run Fwd]
;type = ChangeState
;value = 100
;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;ガードキャンセル
[State -1]
type = ChangeState
value = 310
triggerall = command = "GC"
triggerall = power >= 1000
trigger1 = stateno = [150,151]
trigger2 = stateno = [152,153]

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)

;===========================================================================
;---------------------------------------------------------------------------
;しゃがみガード不可
[State -1, Stand Strong Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 8
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 10
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 8
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 10
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 6
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 8
trigger3 = stateno = 430
trigger3 = time > 8
trigger4 = stateno = 52

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 8
trigger3 = stateno = 430
trigger3 = time > 8
trigger4 = stateno = 52

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
