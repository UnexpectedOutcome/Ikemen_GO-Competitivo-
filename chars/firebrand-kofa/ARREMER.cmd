
;=====================================================================
;  CMD File For "ARREMER"	                           Made By H"
;                                       Ver. 1.11          
;=====================================================================
;-| AI |------------------------------------------------------

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------


[Command]
name = "Timeless"
command = ~D, F, D, F, c
time = 30

[Command]
name = "Death canonz"
command = ~D, F, D, F, z
time = 30

[Command]
name = "Time"
command = ~D, F, D, F, a
time = 30
[Command]
name = "Time"
command = ~D, F, D, F, b
time = 30


[Command]
name = "Death canon"
command = ~D, F, D, F, x
time = 30

[Command]
name = "Death canon"
command = ~D, F, D, F, y
time = 30




;-| Special Motions |-------------------------------------------------

[Command]
name = "Demon_x"
command = ~D, DB, B, x
time = 30
[Command]
name = "Demon_y"
command = ~D, DB, B, y
time = 30

[Command]
name = "Hellhunter"
command = ~D, DF, F, a
time = 30
[Command]
name = "Hellhunter"
command = ~D, DF, F, b
time = 30

[Command]
name = "Fireball_x"
command = ~D, DF, F, x
time = 30
[Command]
name = "Fireball_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "Zombie1"
command = ~D, D, a
time = 30
[Command]
name = "Zombie1"
command = ~D, D, b
time = 30

[Command]
name = "Zombie"
command = ~D, D, x
time = 30
[Command]
name = "Zombie"
command = ~D, D, y
time = 30

[Command]
name = "Devil"
command = ~D, DB, B, a
time = 30
[Command]
name = "Devil"
command = ~D, DB, B, b
time = 30

[Command]
name = "Hellhunter(air)_a"
command = ~D, DF, F, a
time = 30
[Command]
name = "Hellhunter(air)_b"
command = ~D, DF, F, b
time = 30

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "longjump"
command = D, $U
time = 18

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "Power-Max"
command = a+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "FrontStep"
command = a+y
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "by"
command = c
time = 1

[Command]
name = "call-st"
command = x+a
time = 1

[Command]
name = "call-st"
command = s
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "Tsubame Yoku"
command = /F,x
time = 1

[Command]
name = "Senkai Kyaku"
command = /F,a
time = 1

[Command]
name = "Enyoku"
command = /DF,a
time = 1

[Command]
name = "Upward Kick"
command = /DF,b
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

[Command]
name = "q_back"
command = /B, z
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]
;=====================================================================
; AI設定
;=====================================================================

;=====================================================================
; CPU Function
;=====================================================================
;

;=====================================================================
; Super Arts
;=====================================================================

[State -1]
type = ChangeState
value = 3900
triggerall= Command = "Timeless"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; サパータイム（MAX2）
[State -1]
type = ChangeState
value = 3500
triggerall= Command = "Time"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; デスキャノン（ノーマル版）
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Death canon"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; デスキャノン（ノーマル版）
[State -1]
type = ChangeState
value = 3210
triggerall = command = "Death canonz"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;=====================================================================
; Special Arts 
;=====================================================================



;---------------------------------------------------------------------
; デーモンピラー・弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Demon_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; デーモンピラー・強
[State -1]
type = ChangeState
value = 1210
triggerall = command = "Demon_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ヘルハンター（地上）
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Hellhunter"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ヘルハンター（空中）・弱
[State -1]
type = ChangeState
value = 1150
triggerall = command = "Hellhunter(air)_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------
; ヘルハンター（空中）・強
[State -1]
type = ChangeState
value = 1160
triggerall = command = "Hellhunter(air)_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------
; ファイアーボール（地上）・弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Fireball_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ファイアーボール（地上）・強
[State -1]
type = ChangeState
value = 1005
triggerall = command = "Fireball_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ゾンビ
[State -1,1]
type = ChangeState
value = 1500
triggerall = command = "Zombie"
triggerall = Numhelper(1500)=0
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ウッディピッグ
[State -1,1]
type = ChangeState
value = 1550
triggerall = command = "Zombie1"
triggerall = NumProjid(1550)=0
triggerall = NumProjid(1560)=0
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------
; ファイアーボール（空中）・弱
[State -1]
type = ChangeState
value = 1015
triggerall = command = "Fireball_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------
; ファイアーボール（空中）・強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Fireball_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------
; プチデビル
[State -1]
type = ChangeState
value = 1400
triggerall = command = "Devil"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; プチデビル
[State -1]
type = ChangeState
value = 1202
triggerall = command = "Devil"
triggerall = NumProjid(1202)=0
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = IfElse(var(30)=2,110,100)
trigger1 = Command = "FF" && StateType = S && Ctrl

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl

;=====================================================================
; 2/3 Buttons
;=====================================================================
;---------------------------------------------------------------------


; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 500
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 505
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
;[State -1]
;type = ChangeState
;value = 4050
;triggerall = Command = "recovery" && Power >= 1000
;triggerall = StateType != A
;trigger1 = StateNo = [150,153]

;---------------------------------------------------------------------



;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4010
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4000
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;-------------------------------------------------------------Roll from falling
[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071); && canrecover 
trigger1 = Command = "recovery" || Command = "z"
value = 5200

[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y < -20 && (alive||life >= 10) && (StateNo = 5050 || StateNo = 5071)
trigger1 = Command = "recovery" || Command = "z"
value = 5210

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 通常投げ（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateType = S && Ctrl
trigger1 = P2MoveType != H && !P2StateType = A
trigger1 = (Command = "fwd_y" && P2BodyDist X < 8) || (Command = "back_y" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; 通常投げ（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateType = S && Ctrl
trigger1 = P2MoveType != H && !P2StateType = A
trigger1 = (Command = "fwd_b" && P2BodyDist X < 8) || (Command = "back_b" && P2BodyDist X < 20)

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------

; 三角跳び
[State -1]
type = ChangeState
value = 53
triggerall = StateNo = 50 && StateNo != 53
triggerall = pos y < -12 && PrevStateNo != 53
trigger1 = command = "holdupfwd" && backedgebodydist < 3
trigger2 = command = "holdupback" && frontedgebodydist < 3


;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType != A && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact  

;---------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;---------------------------------------------------------------------
; ジャンプ弱攻撃
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x"
triggerall = StateType = A
trigger1 = Ctrl

[State -1]
type = ChangeState
value = 615
triggerall = Command = "y"
triggerall = StateType = A
trigger1 = Ctrl

;---------------------------------------------------------------------
; ジャンプ強攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "a"
triggerall = StateType = A
trigger1 = Ctrl


; ジャンプ強攻撃
[State -1]
type = ChangeState
value = 611
triggerall = Command = "b"
triggerall = StateType = A
trigger1 = Ctrl

;====================================================================================
