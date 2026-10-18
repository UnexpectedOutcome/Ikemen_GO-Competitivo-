;-| 超必殺技 |----------------------------------------------------
[Command] 
name = "MD_xy"
command = ~B, DB, D, DF, F, B, F, x+y
time = 30

[Command] 
name = "MD_x"
command = ~B, DB, D, DF, F, B, F, x
time = 30

[Command] 
name = "MD_y"
command = ~B, DB, D, DF, F, B, F, y
time = 30

[Command] 
name = "PG"
command = ~D, DB, B, D, DB, B, x
time = 25

[Command] 
name = "PG"
command = ~D, DB, B, D, DB, B, y
time = 25


;-| EX必殺技 |----------------------------------------------------
[Command] 
name = "PF_xy"
command = ~D, DB, B, x+y

[Command] 
name = "BC_xy"
command = ~D, DF, F, x+y

[Command] 
name = "BC2_xy"
command = ~F, DF, D, x+y

[Command] 
name = "LU_xy"
command = ~F, D, DF, x+y

;-| 必殺技 |------------------------------------------------------
[Command] 
name = "PF_x"
command = ~D, DB, B, x

[Command] 
name = "PF_y"
command = ~D, DB, B, y

[Command] 
name = "LU_x"
command = ~F, D, DF, x

[Command] 
name = "LU_y"
command = ~F, D, DF, y

[Command] 
name = "BC_x"
command = ~D, DF, F, x

[Command] 
name = "BC_y"
command = ~D, DF, F, y

[Command] 
name = "BC2_x"
command = ~F, DF, D, x

[Command] 
name = "BC2_y"
command = ~F, DF, D, y

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
;---------------------------------------------------------------------------
; メテオドールMAC
[State -1,]
type = ChangeState
value = 3200
triggerall = command = "MD_xy"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; パステルゲイザー
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "PG"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; メテオドール
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "MD_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; メテオドール
[State -1,]
type = ChangeState
value = 3005
triggerall = command = "MD_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; リリカルアッパー（EX）
[State -1,]
type = ChangeState
value = 1150
triggerall = power >= 500
triggerall = command = "LU_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; リリカルアッパー（弱）
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "LU_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; リリカルアッパー（強）
[State -1,]
type = ChangeState
value = 1110
triggerall = command = "LU_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; パステルファイヤー（EX）
[State -1,]
type = ChangeState
value = 1050
triggerall = power >= 500
triggerall = command = "PF_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; パステルファイヤー（弱）
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "PF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;---------------------------------------------------------------------------
; パステルファイヤー（強）
[State -1,]
type = ChangeState
value = 1010
triggerall = command = "PF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = stateno != 241
trigger2 = movecontact
trigger3 = stateno = 52
trigger4 = stateno = 100
trigger5 = stateno = 106

;===========================================================================
;---------------------------------------------------------------------------
; バトンカッター（EX）
[State -1,]
type = ChangeState
value = 1260
triggerall = command = "BC_xy"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])||(stateno = 241)
trigger2 = movecontact
trigger3 = stateno = 105
trigger4 = (stateno = 1101)||(stateno = 1111)||(stateno = 1121)||(stateno = 1151)
trigger4 = (movecontact)||(Var(1) = 1)

;---------------------------------------------------------------------------
; バトンカッター（小）
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "BC_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])||(stateno = 241)
trigger2 = movecontact
trigger3 = stateno = 105
trigger4 = (stateno = 1101)||(stateno = 1111)||(stateno = 1121)||(stateno = 1151)
trigger4 = (movecontact)||(Var(1) = 1)

;---------------------------------------------------------------------------
; バトンカッター（強）
[State -1,]
type = ChangeState
value = 1210
triggerall = command = "BC_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])||(stateno = 241)
trigger2 = movecontact
trigger3 = stateno = 105
trigger4 = (stateno = 1101)||(stateno = 1111)||(stateno = 1121)||(stateno = 1151)
trigger4 = (movecontact)||(Var(1) = 1)

;===========================================================================
;---------------------------------------------------------------------------
; 対地バトンカッター（EX）
[State -1,]
type = ChangeState
value = 1270
triggerall = command = "BC2_xy"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])||(stateno = 241)
trigger2 = movecontact
trigger3 = stateno = 105
trigger4 = (stateno = 1101)||(stateno = 1111)||(stateno = 1121)||(stateno = 1151)
trigger4 = (movecontact)||(Var(1) = 1)

;---------------------------------------------------------------------------
; 対地バトンカッター（小）
[State -1,]
type = ChangeState
value = 1220
triggerall = command = "BC2_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])||(stateno = 241)
trigger2 = movecontact
trigger3 = stateno = 105
trigger4 = (stateno = 1101)||(stateno = 1111)||(stateno = 1121)||(stateno = 1151)
trigger4 = (movecontact)||(Var(1) = 1)

;---------------------------------------------------------------------------
; 対地バトンカッター（強）
[State -1,]
type = ChangeState
value = 1230
triggerall = command = "BC2_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])||(stateno = 241)
trigger2 = movecontact
trigger3 = stateno = 105
trigger4 = (stateno = 1101)||(stateno = 1111)||(stateno = 1121)||(stateno = 1151)
trigger4 = (movecontact)||(Var(1) = 1)

;===========================================================================
;---------------------------------------------------------------------------
;パワーーアップ１
[State -1, Run Fwd]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = Var(3) = 0
trigger1 = command = "pu"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;パワーーアップ２
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
value = 500
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
