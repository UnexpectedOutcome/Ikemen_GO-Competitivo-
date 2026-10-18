
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "NV"
command = ~D, DF, D, DF, x
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ice"
command = ~D, DF, F, x

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
name = "up_x"
command = /$U,a
time = 1

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
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
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
name = "hold_s"
command = /s
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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================


;===============================
;AI code Level: Medium - Hard
;===============================

;===========================================================================
;---------------------------------------------------------------------------
;Nibelung Valesti
[State -1, Nibelung Valesti]
type = ChangeState
value = 3000
triggerall = command = "NV"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
; Spear Attack
[State -1, Spear Attack]
type = ChangeState
value = 500
triggerall = command = "b"
triggerall = statetype = A
triggerall = PrevStateNo = 40
triggerall = Pos Y <= -50 * Const(size.yscale)
trigger1  =ctrl
trigger2 = stateno = 260 && movecontact

; Ice Attack
[State -1,  Ice Attack]
type = ChangeState
value = 280
triggerall = command = "Ice"
trigger1 = statetype = S
trigger1 = ctrl

; Ice Attack (AIR)
[State -1,  Ice Attack AIR]
type = ChangeState
value = 295
triggerall = command = "Ice"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Counter
[State -1, Counter]
type = ChangeState
value = 9100
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Fly Fwd (AIR)
[State -1, Fly Fwd]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = roundstate = 2
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Fly Back
[State -1, Fly Back]
type = ChangeState
value = 107
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = roundstate = 2
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Sword
[State -1,  Stand Light Sword]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
;---------------------------------------------------------------------------
; Stand Light Sword
[State -1,  Stand Light Sword]
type = ChangeState
value = 205
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 6
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Sword
[State -1,  Stand Strong Sword]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 401 && movecontact

;---------------------------------------------------------------------------
;Dash Kick
[State -1, Dash Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 401 && movecontact
trigger6 = stateno = 411 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Smash
[State -1, Stand Strong Smash]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 421 && movecontact

;---------------------------------------------------------------------------
; Crouch Light Sword
[State -1,  Crouch Light Sword]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
; Air Light Sword
[State -1,  Air Light Sword]
type = ChangeState
value = 250
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 260 && movecontact
trigger3 = stateno = 102
;---------------------------------------------------------------------------
; Air Medium Sword
[State -1,  Air Medium Sword]
type = ChangeState
value = 260
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 250 && movecontact
trigger3 = stateno = 102

