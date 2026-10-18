
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Last Resort"
command = ~F, D, B, F, D, B, x
time = 30

[Command]
name = "Last Resort"
command = ~F, D, B, F, D, B, y
time = 30

[Command]
name = "Joy Joy Party"
command = ~D, F, D, F, x
time = 30

[Command]
name = "Joy Joy Party"
command = ~D, F, D, F, y
time = 30

[Command]
name = "ASO II - Last Guardian"
command = ~D, B, D, B, c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Joy Joy Block 3"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Joy Joy Block 3"
command = ~D, DF, F, z
time = 20

[Command]
name = "Joy Joy Block 1"
command = ~D, DF, F, x
time = 20

[Command]
name = "Joy Joy Block 2"
command = ~D, DF, F, y
time = 20

[Command]
name = "Baseball Stars 3"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Baseball Stars 3"
command = ~D, DB, B, z
time = 20

[Command]
name = "Baseball Stars 1"
command = ~D, DB, B, x
time = 20

[Command]
name = "Baseball Stars 2"
command = ~D, DB, B, y
time = 20

[Command]
name = "2020 Super Catch 1"
command = ~D, DB, B, a
time = 20

[Command]
name = "2020 Super Catch 2"
command = ~D, DB, B, b
time = 20

[Command]
name = "Bushin Ken 1"
command = ~D, DF, F, a
time = 20

[Command]
name = "Bushin Ken 2"
command = ~D, DF, F, b
time = 20

[Command]
name = "longjump"
command = ~$D,$U
time = 20


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
command = x+a
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Last Resort
[State -1, Last Resort]
type = ChangeState
value = 3100
triggerall = command = "Last Resort"
triggerall = numhelper(3111) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1300
trigger3 = stateno = 1305
trigger4 = stateno = 1100 && animelemtime(6) < 0
trigger5 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger7 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger9 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger10 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger11 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
;Power! Unit!
[State -1, Power! Unit!]
type = ChangeState
value = 3150
triggerall = var(7) = 1
triggerall = command = "Baseball Stars 1" || command = "Baseball Stars 2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1300
trigger3 = stateno = 1305
trigger4 = stateno = 1100 && animelemtime(6) < 0
trigger5 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger7 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger9 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger10 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger11 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
;Joy Joy Party
[State -1, Joy Joy Party]
type = ChangeState
value = 3000
triggerall = command = "Joy Joy Party"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1300
trigger3 = stateno = 1305
trigger4 = stateno = 1100 && animelemtime(6) < 0
trigger5 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger7 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger9 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger10 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger11 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
;ASO II - Last Guardian
[State -1, ASO II - Last Guardian]
type = ChangeState
value = 3200
triggerall = command = "ASO II - Last Guardian"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1300
trigger3 = stateno = 1305
trigger4 = stateno = 1100 && animelemtime(6) < 0
trigger5 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger7 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger9 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger10 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger11 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; Joy Joy Block
[State -1, Joy Joy Block]
type = ChangeState
value = 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1120) = 0
triggerall = command = "Joy Joy Block 1" || command = "Joy Joy Block 2" || command = "Joy Joy Block 3"
trigger1 = StateType != A && Ctrl = 1
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; Baseball Stars 2
[State -1, Baseball Stars 2]
type = ChangeState
value = 1105
triggerall = numhelper(1001) = 0
triggerall = numhelper(1120) = 0
triggerall = command = "Baseball Stars 3"
trigger1 = StateType != A && Ctrl = 1
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; Baseball Stars
[State -1, Baseball Stars]
type = ChangeState
value = 1100
triggerall = command = "Baseball Stars 1" || command = "Baseball Stars 2"
trigger1 = StateType != A && Ctrl = 1
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; 2020 Super Catch
[State -1, 2020 Super Catch]
type = ChangeState
value = 1200
triggerall = command = "2020 Super Catch 1" || command = "2020 Super Catch 2"
trigger1 = StateType != A && Ctrl = 1
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; Bushin Ken
[State -1, Bushin Ken]
type = ChangeState
value = 1300
triggerall = command = "Bushin Ken 1" || command = "Bushin Ken 2"
trigger1 = StateType != A && Ctrl = 1
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger8 = movecontact && stateno = 445 && (animelemtime(2) > 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; Joy Joy Balloon
[State -1, Joy Joy Balloon]
type = ChangeState
value = 1400
triggerall = command = "x" && command = "a" && command = "y" || command = "c"
trigger1 = StateType = S && Ctrl = 1

;---------------------------------------------------------------------------
; Joy Joy Balloon (air)
[State -1, Joy Joy Balloon (air)]
type = ChangeState
value = 1405
triggerall = command = "x" && command = "a" && command = "y" || command = "c"
trigger1 = StateType = A && Ctrl = 1

;----------------------------------------------------------------------------
; Tatical Step
[State -1, Tactical Step]
type = ChangeState
value = 900
triggerall = power >= 500
triggerall = statetype != A
trigger1 = command = "x" && command = "a"
trigger1 = ctrl

;----------------------------------------------------------------------------
; Tactical Step Guard Cancel
[State -1, Tactical Step Guard Cancel]
type = ChangeState
value = 900
triggerall = Command = "FF"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)

;----------------------------------------------------------------------------
; Guard Cancel
[State -1, Guard Cancel]
type = ChangeState
value = 910
triggerall = Command = "c"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Top Hunting Throw
[State -1, Top Hunting]
type = ChangeState
value = 800
triggerall = command = "y" && command = "b"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1= ctrl

;===========================================================================
;---------------------------------------------------------------------------
;----------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 400 && time > 6
trigger4 = stateno = 430 && time > 6

;---------------------------------------------------------------------------
;Forward Whirlwind fist
[State -1, Forward Whirlwind fist]
type = ChangeState
value = 211
triggerall = command = "holdfwd" && command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)

;---------------------------------------------------------------------------
;Backward Whirlwind fist
[State -1, Backward Whirlwind fist]
type = ChangeState
value = 212
triggerall = command = "holdback" && command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(4) > 0 && animelemtime(7) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 400 && time > 6
trigger4 = stateno = 430 && time > 6

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Robo Arm
[State -1, Robo Arm]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 400 && time > 6
trigger4 = stateno = 430 && time > 6

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 400 && time > 6
trigger4 = stateno = 430 && time > 6

;---------------------------------------------------------------------------
;Hyper Tackle
[State -1, Hyper Tackle]
type = ChangeState
value = 445
triggerall = command = "b"
triggerall = (command = "holddown" && command = "holdfwd") || (command = "holddown" && command = "holdback")
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger3 = movecontact && stateno = 210 && (animelemtime(1) > 0 && animelemtime(5) < 0)
trigger4 = movecontact && stateno = 230 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger5 = movecontact && stateno = 400 && (animelemtime(1) > 0 && animelemtime(3) < 0)
trigger6 = movecontact && stateno = 405 && (animelemtime(3) >= 0 && animelemtime(6) < 0)
trigger7 = movecontact && stateno = 430 && (animelemtime(1) > 0 && animelemtime(3) < 0)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

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

