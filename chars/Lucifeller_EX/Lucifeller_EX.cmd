;-| hyper Moves |------------------------------------------------------

罪與罰
[Command]
name = "finalfire"     ;
command = D,DF,F,x+y+z
time = 30

IFL
[Command]
name = "fireball"     ;
command = D,D,a+b
time = 30

血十字
[Command]
name = "claw"     ;
command = D,DB,B,a+b
time = 30

地獄火
[Command]
name = "firebeam-b"     ;
command = D,DF,F,a+b
time = 30

;-| Special Motions |------------------------------------------------------


抓技
[Command]
name = "catch"     ;
command = D,D,a
time = 30

抓技
[Command]
name = "catch"     ;
command = D,D,b
time = 30

踢擊
[Command]
name = "kick"     ;
command = D,DB,B,a
time = 30

踢擊
[Command]
name = "kick"     ;
command = D,DB,B,b
time = 30

鬼炎
[Command]
name = "fire-n"     ;
command = D,DF,F,a
time = 30

鬼炎
[Command]
name = "fire-n"     ;
command = D,DF,F,b
time = 30

震地
[Command]
name = "shake"     ;
command = B,F,a
time = 30

震地
[Command]
name = "shake"     ;
command = B,F,b
time = 30

防護罩
[Command]
name = "shield"     ;
command = D,DF,F,c
time = 30

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
name = "recovery";Required (do not remove)
command = x+y
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

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "hold_c"
command = /c
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

;-|CPU|-------------------------------------------------------------------
[Command]
name = "CPU"
command = a
[Command]
name = "CPU"
command = b
[Command]
name = "CPU"
command = c
[Command]
name = "CPU"
command = x
[Command]
name = "CPU"
command = y
[Command]
name = "CPU"
command = z
[Command]
name = "CPU"
command = s
[Command]
name = "CPU"
command = F
[Command]
name = "CPU"
command = B
[Command]
name = "CPU"
command = U
[Command]
name = "CPU"
command = D

;----------------------------------------------------------------- 


;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]

;罪與罰
[State -1, 罪與罰]
type = ChangeState
value = 1400
triggerall = command = "finalfire"
trigger1 = power >= 3000
triggerall = life<= Lifemax*0.3
trigger1 = statetype != A
trigger1 = ctrl = 1

;IFL
[State -1, IFL]
type = ChangeState
value = 1100
triggerall = command = "fireball"
trigger1 = power >= 2000
trigger1 = statetype = s
trigger1 = ctrl = 1

;血十字
[State -1, 血十字]
type = ChangeState
value = 1050
triggerall = command = "claw"
trigger1 = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl = 1

;地獄火
[State -1, 地獄火]
type = ChangeState
value = 1000
triggerall = command = "firebeam-b"
trigger1 = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;前衝
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;後衝
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

;集氣
[State -1, Taunt]
type = ChangeState
value = 1300
triggerall = command = "hold_s"
trigger1 = statetype != A
trigger1 = power < 3000
trigger1 = ctrl = 1

;抓技
[State -1, 抓技]
type = ChangeState
value = 450
trigger1 = command = "catch"
trigger1 = statetype = s
trigger1 = ctrl = 1

;踢擊
[State -1, 踢擊]
type = ChangeState
value = 400
trigger1 = command = "kick"
trigger1 = statetype = s
trigger1 = ctrl = 1

;鬼炎
[State -1, 鬼炎]
type = ChangeState
value = 350
triggerall = numhelper(351) = 0
trigger1 = command = "fire-n"
trigger1 = statetype = s
trigger1 = ctrl = 1

;震地
[State -1, 震地]
type = ChangeState
value = 300
trigger1 = command = "shake"
trigger1 = statetype = s
trigger1 = ctrl = 1

;輕-站立攻擊
[State -1, 輕-站立攻擊]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;重-站立攻擊
[State -1, 重-站立攻擊]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = statetype = s
trigger1 = ctrl = 1

;空中攻擊
[State -1, 空中攻擊]
type = ChangeState
value = 220
triggerall = statetype = a
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"

;----------------------------------------------------------------- 
;防護罩
[State -1, 防護罩]
type = ChangeState
value = 900
triggerall = command = "shield"
trigger1 = statetype != A
trigger1 = power > 20
trigger1 = ctrl = 1
