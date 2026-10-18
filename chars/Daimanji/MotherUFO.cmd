

[Command]
name = "xy"
command = x+y
time = 20

[Command]
name = "ab"
command = a+b
time = 20

[Command]
name = "bc"
command = b+c
time = 20


[Command]
name = "hold_z";Required (do not remove)
command = /$z
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;---------------------------------------------------------------------------
;一斉射
[State -1, Stand Light Kick]
type = ChangeState
value = 290
triggerall = command = "xy"
;triggerall = numhelper(600) = 0
triggerall = power >= 1000
;triggerall = Pos Y <= -40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;地上一掃光線
[State -1, Stand Light Kick]
type = ChangeState
value = 280
triggerall = command = "ab"
;triggerall = numhelper(500) = 0
;triggerall = Pos Y <= -40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;シグビー
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ツイビー
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;硬化光線
[State -1, Stand Light Kick]
type = ChangeState
value = 233
triggerall = command = "c"
;triggerall = Pos Y <= -90
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;波動
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;速体たり
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;電バアー
[State -1, Standing Strong Kick]
type = ChangeState
value = 270
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;電バアー
[State -1, Standing Strong Kick]
type = ChangeState
value = 295
triggerall = command = "start"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl
;---------------------------------------------------------------------------