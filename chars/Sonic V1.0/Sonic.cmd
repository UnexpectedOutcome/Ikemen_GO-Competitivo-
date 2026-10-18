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

[Command]
name = "Super Jump"
command = ~D,U
time = 10

;-| ULTIMATE |-------------------------------------------------------

[command]
name = "ULTIMATE"
command = ~D,DF,F,D,DF,F,a+b
time = 30

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Specials |-------------------------------------------------------
[command]
name = "Dark"
command = ~y
time = 15

[command]
name = "Hyper"
command = ~z
time = 15

[command]
name = "Ultra"
command = ~D,z
time = 15

[command]
name = "Partner A"
command = ~a
time = 1

[command]
name = "Partner B"
command = ~b
time = 1

[command]
name = "Partner C"
command = ~c
time = 1

[command]
name = "Partner X"
command = ~x
time = 1

[command]
name = "Partner Y"
command = ~y
time = 1

[command]
name = "Partner Z"
command = ~z
time = 1

[command]
name = "Fusion"
command = ~D,D,a+b
time = 30

[command]
name = "SPECIAL 1"
command = ~D,DF,F,a
time = 15

[command]
name = "SPECIAL 2"
command = ~D,DB,B,a
time = 15

[command]
name = "SPECIAL 3"
command = ~D,DF,F,b
time = 15

[command]
name = "SPECIAL 4"
command = ~D,DB,B,b
time = 15

[command]
name = "SPECIAL 5"
command = ~D,DF,F,c
time = 15

[command]
name = "SPECIAL 6"
command = ~D,DB,B,c
time = 15

[command]
name = "Teleport"
command = ~a+b
time = 15

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;ULTIMATE:
;===========================================================================
;Sonic X
[State -1, Sonic X]
type = ChangeState
triggerall = var(2) = 0
value = 4000
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl

;Super Sonic Space
[State -1, Super Sonic Space]
type = ChangeState
triggerall = var(2) = 2
value = 4100
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl

;HQ
[State -1, Hq]
type = ChangeState
Triggerall = life <= lifemax/2
triggerall = var(2) = 8
value = 4200
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl

;Light Sonic
[State -1, Light Sonic]
type = ChangeState
Triggerall = life <= lifemax/2
triggerall = var(2) = 4
value = 4305
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl
;======================================================================
;BASE

;Turbo Combo
[State -1, Turbo Combo]
type = ChangeState
triggerall = var(2) = 0
value = 1000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

;Sonic Combo
[State -1, Sonic Combo]
type = ChangeState
triggerall = var(2) = 0
value = 1100
Triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

;Boost
[State -1, Boost Combo]
type = ChangeState
triggerall = var(2) = 0
value = 1200
Triggerall = power >= 1000
triggerall = command = "SPECIAL 3"
trigger1 = ctrl

;Light Speed Attack
[State -1, Turbo Combo]
type = ChangeState
triggerall = var(2) = 0
value = 1300
Triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

;Sonic Wind
[State -1, Sonic Windo]
type = ChangeState
triggerall = var(2) = 0
value = 1410
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

;Sonic Wind
[State -1, Sonic Windo]
type = ChangeState
triggerall = var(2) = 0
value = 1400
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

;Sonic Wind
[State -1, Sonic Wind]
type = ChangeState
triggerall = var(2) = 0
value = 1500
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

;Sonic Tornado
[State -1, Sonic Tornado]
type = ChangeState
triggerall = var(2) = 0
value = 3000
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;======================================================================
;Darksonic

;Super sonic Combo
[State -1, Super sonic Combo]
type = ChangeState
triggerall = var(2) = 1
value = 21000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

;Sonic Combo
[State -1, Sonic Combo]
type = ChangeState
triggerall = var(2) = 1
value = 21100
Triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

;Boost
[State -1, Boost Combo]
type = ChangeState
triggerall = var(2) = 1
value = 21200
Triggerall = power >= 1000
triggerall = command = "SPECIAL 3"
trigger1 = ctrl

;Clone
[State -1, Super sonic Wave]
type = ChangeState
triggerall = numhelper(21250) = 0
triggerall = var(2) = 1
value = 21300
Triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

;Super sonic Wave
[State -1, Super sonic Wave]
type = ChangeState
triggerall = var(2) = 1
value = 21400
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

;Super sonic Wave
[State -1, Super sonic Wave]
type = ChangeState
triggerall = var(2) = 1
value = 21410
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

;Super sonic Wave
[State -1, Super sonic Wave]
type = ChangeState
triggerall = var(2) = 1
value = 21500
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

;Super Light Speed mode
[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(3) = 0
value = 3200
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl

;Super Light Speed mode
[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(3) = 1
value = 3300
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = ctrl
;======================================================================
;Supersonic

;Super sonic Combo
[State -1, Super sonic Combo]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

;Light speed attack
[State -1, Light speed attack]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25100
Triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl


;Super sonic Boost
[State -1, Super sonic Boost]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25200
Triggerall = power >= 1200
triggerall = command = "SPECIAL 3"
trigger1 = ctrl

;Super sonic Spindash metteor
[State -1, Super sonic Spindash metteor]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25300
Triggerall = power >= 1300
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

;Super sonic Wave
[State -1, Super sonic Wave]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25400
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

;Super sonic Spindash wave
[State -1, Super sonic Spindash wave]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25500
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

;Sonic Wind
[State -1, Sonic Windo]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25410
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

;Sonic Wind
[State -1, Sonic Windo]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 25510
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

;Super Light Speed mode
[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3
value = 3100
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;======================================================================
;Ultrasonic
[State -1, Performance]
type = ChangeState
triggerall = var(2) = 8
value = 71000
triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Eco Sonic]
type = ChangeState
triggerall = var(2) = 8
value = 71100
triggerall = power >= 1500
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Ultra Sonic Boost]
type = ChangeState
triggerall = var(2) = 8
value = 71200
triggerall = power >= 1500
triggerall = command = "SPECIAL 3"
trigger1 = ctrl

[State -1, Polar Sonic]
type = ChangeState
triggerall = var(2) = 8
value = 71300
triggerall = power >= 1000
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Super sonic Wave]
type = ChangeState
triggerall = var(2) = 8
value = 71400
triggerall = power >= 1500
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Super sonic Wave]
type = ChangeState
triggerall = var(2) = 8
value = 71600
triggerall = power >= 1500
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

[State -1, Solar Sonic]
type = ChangeState
triggerall = var(2) = 8
value = 71500
triggerall = power >= 1000
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Solar Sonic]
type = ChangeState
triggerall = var(2) = 8
value = 71510
triggerall = power >= 1000
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

;Super Light Speed mode
[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 8
value = 3400
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;======================================================================
;Darkspine
[State -1, Rage Punch]
type = ChangeState
triggerall = var(2) = 5
value = 151000
triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151100
triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151200
triggerall = power >= 1250
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151300
triggerall = power >= 1000
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151400
triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151410
triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151500
triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Fire Burst]
type = ChangeState
triggerall = var(2) = 5
value = 151510
triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 5
value = 3500
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl

; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 5
value = 15301
Triggerall = power >= 200
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;======================================================================
;Excalibur
[State -1, Strong Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171000
triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Strong Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171100
triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Strong Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171200
triggerall = power >= 1000
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171300
triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Strong Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171400
triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Strong Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171500
triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Strong Slash]
type = ChangeState
triggerall = var(2) = 6
value = 171600
triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

;Super
[State -1, Super]
type = ChangeState
triggerall = var(2) = 6
value = 3900
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;======================================================================
;Hyper
;Hyper push wave
[State -1, hyper push wave]
type = ChangeState
triggerall = var(2) = 4
value = 28000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

;Hyper Tornado
[State -1, hyper Tornado]
type = ChangeState
triggerall = var(2) = 4
value = 28100
Triggerall = power >= 1500
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl


;Hyper Boost
[State -1, hyper Boost]
type = ChangeState
triggerall = var(2) = 4
value = 28200
Triggerall = power >= 1000
triggerall = command = "SPECIAL 3"
trigger1 = ctrl

;Hyper Speed mode
[State -1, hyper Speed mode]
type = ChangeState
triggerall = var(2) = 4
triggerall = var(4) = 0
value = 28300
Triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

;Ultra violet light
[State -1, Ultra violet light]
type = ChangeState
triggerall = var(2) = 4
value = 28400
Triggerall = power >= 1500
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

;Ultra violet Ki blast
[State -1, Ultra violet Ki blast]
type = ChangeState
triggerall = var(2) = 4
value = 28500
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

;Ultra violet light
[State -1, Ultra violet light]
type = ChangeState
triggerall = var(2) = 4
value = 28600
Triggerall = power >= 1500
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

;Ultra violet Ki blast
[State -1, Ultra violet Ki blast]
type = ChangeState
triggerall = var(2) = 4
value = 28520
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

;Super Light Speed mode
[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 4
value = 3600
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;Fleetway
;Fleetway Combo
[State -1, Fleetway Combo]
type = ChangeState
triggerall = var(2) = 9
value = 231000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

;Lazer Grab
[State -1, Lazer Grab]
type = ChangeState
triggerall = var(2) = 9
value = 231100
Triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

;Boost
[State -1, Boost]
type = ChangeState
triggerall = var(2) = 9
value = 231200
Triggerall = power >= 1000
triggerall = command = "SPECIAL 3"
trigger1 = ctrl

;Fast Kick
[State -1, Fast Kick]
type = ChangeState
triggerall = var(2) = 9
value = 231300
Triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
trigger1 = ctrl

;Blast
[State -1, Blast]
type = ChangeState
triggerall = var(2) = 9
value = 231400
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

;Blast
[State -1, Blast]
type = ChangeState
triggerall = var(2) = 9
value = 231410
Triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

;Super sonic Spindash wave
[State -1, Super sonic Spindash wave]
type = ChangeState
triggerall = var(2) = 9
value = 231500
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

;Super sonic Spindash wave
[State -1, Super sonic Spindash wave]
type = ChangeState
triggerall = var(2) = 9
value = 231510
Triggerall = power >= 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

;Super Light Speed mode
[State -1, Super Light Speed mode]
type = ChangeState
triggerall = var(2) = 9
value = 3700
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;Werehog
; SPC1
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191000
triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

; SPC1
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191100
triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl

; SPC3
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191200
triggerall = power >= 1500
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl

; SPC4
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191300
triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

; SPC5
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191400
triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

; SPC6
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191502
triggerall = power >= 1000
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

; SPCA1
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191401
triggerall = power >= 1000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl

; SPCA2
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 191500
triggerall = power >= 1000
triggerall = command = "SPECIAL 6"
Triggerall = statetype = A
trigger1 = ctrl

;Super
[State -1, Super]
type = ChangeState
triggerall = var(2) = 7
value = 3800
Triggerall = power >= 3000
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 90
trigger1 = command = "Super Jump"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, TP]
type = ChangeState
value = 305
triggerall = var(2) = 1||var(2) = 2||var(2) = 3||var(2) = 4||var(2) = 5||var(2) = 8||var(2) = 9
triggerall = var(2) != 0||var(2) != 7||var(2) != 6
triggerall = numhelper(1350) = 0
Triggerall = power >= 200
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = command = "b"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run forwards
[State -1, Run forwards]
type = ChangeState
triggerall = stateno != 100
triggerall = stateno != 101
value = 100
trigger1 = command = "FF"
trigger1 = ctrl
trigger1 = statetype != A
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Run Backwards]
type = ChangeState
triggerall = stateno != 100
triggerall = stateno != 101
value = 101
trigger1 = command = "BB"
trigger1 = ctrl
trigger1 = statetype != A
;---------------------------------------------------------------------------
; Air Dash forwards
[State -1, Air Dash forwards]
type = ChangeState
triggerall = var(2) = 0||var(2) = 7
triggerall = var(5) < 3
triggerall = stateno != 105
triggerall = stateno != 110
value = 105
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Backwards
[State -1, Air Dash Backwards]
type = ChangeState
triggerall = var(2) = 0||var(2) = 7
triggerall = var(5) < 3
triggerall = stateno != 105
triggerall = stateno != 110
value = 110
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash forwards
[State -1, Air Dash forwards]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(3) = 0
triggerall = var(5) < 3
triggerall = stateno != 105
triggerall = stateno != 110
value = 105
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Backwards
[State -1, Air Dash Backwards]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(3) = 0
triggerall = var(5) < 3
triggerall = stateno != 105
triggerall = stateno != 110
value = 110
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar adelante
[State -1, Voar adelante]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3||var(2) = 4||var(2) = 5||var(2) = 6||var(2) = 8||var(2) = 9
triggerall = var(4) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar atras
[State -1, Voar atras]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3||var(2) = 4||var(2) = 5||var(2) = 6||var(2) = 8||var(2) = 9
triggerall = var(4) = 0
value = 101
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar adelante
[State -1, Voar adelante]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(3) = 1
value = 100
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar atras
[State -1, Voar atras]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(3) = 1
value = 101
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 1
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 2
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 3
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 4
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 5
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 6
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 7
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 8
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 9
Triggerall = power < 3000
triggerall = numhelper(1350) = 0
triggerall = numhelper(1305) = 0
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != C
trigger1 = ctrl
;----------------
; Spin dash
[State -1, C]
type = ChangeState
triggerall = var(2) = 6
value = 17205
triggerall = power >= 500
triggerall = command = "holddown"
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 6
triggerall = power >= 250
value = 17305
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;===========================
;NORMAL
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 0
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Fusion
[State -1, A]
type = ChangeState
triggerall = TeamMode = Simul
triggerall = numexplod(75000000) = 1
triggerall = partner,numhelper(955) = 0
triggerall = var(2) = 0||var(2) = 2||var(2) = 4
value = 750
triggerall = command = "a"
triggerall = command = "c"
triggerall = command = "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 0
value = 400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, A air]
type = ChangeState
triggerall = var(2) != 7
triggerall = var(2) != 6
value = 601
triggerall = command = "holddown" && command = "a" 
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Holling attack
[State -1, A air]
type = ChangeState
triggerall = var(2) != 7
triggerall = var(2) != 6
value = 611
triggerall = power >= 200
triggerall = command = "holddown" && command = "b" 
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Holling attack
[State -1, A air]
type = ChangeState
triggerall = var(2) != 7
triggerall = var(2) != 6
value = 621
triggerall = command = "holddown" && command = "c" 
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 0
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 0
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C air
[State -1, C air]
type = ChangeState
triggerall = var(2) = 0
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 0
value = 301
Triggerall = power >= 200
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 1
value = 2301
Triggerall = power >= 200
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 2||var(2) = 3||var(2) = 8
value = 11301
Triggerall = power >= 200
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================
;Dark sonic
;----------------
;---------------------------------------------------------------------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 1
value = 205
triggerall = command = "a" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 1
value = 2200
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl

; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 1
value = 2300
triggerall = command = "b"
Triggerall = statetype != A
trigger1 = ctrl

; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 1
value = 2400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl

; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 1
value = 2600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 1
value = 2610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

; C air
[State -1, C air]
type = ChangeState
triggerall = var(2) = 1
value = 2620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 0
value = 300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl

;===========================
;Super sonic
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 2
value = 11200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 2
value = 11300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 2
value = 11400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Spin dash
[State -1, C]
type = ChangeState
triggerall = var(2) != 7
triggerall = var(2) != 6
value = 205
triggerall = power >= 500
triggerall = command = "holddown"
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 2
value = 11600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 2
triggerall = var(3) = 0
value = 11603
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C air
[State -1, C air]
type = ChangeState
triggerall = var(2) = 2
value = 11620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;===========================
;Ultra sonic
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 3
value = 11200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 3
value = 11300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 3
value = 11400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 3
value = 11600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 2
triggerall = var(3) = 1
value = 11603
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================
;Darkspine
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 5
value = 15200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 5
value = 15300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 5
value = 15400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Spin dash
[State -1, C]
type = ChangeState
triggerall = var(2) != 7
triggerall = var(2) != 6
value = 205
triggerall = power >= 500
triggerall = command = "holddown"
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 5
value = 15600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 5
value = 15610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C air
[State -1, C air]
type = ChangeState
triggerall = var(2) = 5
value = 15620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;===========================
;Hyper sonic
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 4
value = 13200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 4
value = 13300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 4
value = 13400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 4
value = 13600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 4
value = 13610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C air
[State -1, C air]
type = ChangeState
triggerall = power >= 500
triggerall = var(2) = 4
value = 13620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 4
triggerall = power >= 500
value = 13301
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B
[State -1, Down+B]
type = ChangeState
triggerall = var(2) = 9
triggerall = power >= 500
value = 23305
triggerall = command = "b" && command = "holddown" 
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================
;ultra sonic
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 8
value = 7200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 8
value = 7300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 8
value = 7400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A Air
[State -1, A]
type = ChangeState
triggerall = var(2) = 8
value = 7600
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A Air
[State -1, A]
type = ChangeState
triggerall = var(2) = 8
value = 7610
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C Aire
[State -1, C Aire]
type = ChangeState
triggerall = var(2) = 8
value = 7620
triggerall = power >= 200
triggerall = command = "c"
Triggerall = statetype = A
trigger1 = ctrl
;===========================
;Werehog sonic
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 19201
triggerall = command = "holddown" 
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; B
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 19301
triggerall = command = "holddown" 
triggerall = command = "b"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 19200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; B
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 19300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; C
[State -1, A]
type = ChangeState
triggerall = var(2) = 7
value = 19400
triggerall = power >= 500
triggerall = command = "c"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; A - Air
[State -1, A - Air]
type = ChangeState
triggerall = var(2) = 7
value = 19600
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl
;----------------
; B - Air
[State -1, B - Air]
type = ChangeState
triggerall = var(2) = 7
value = 19610
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl
;----------------
; C - Air
[State -1, C - Air]
type = ChangeState
triggerall = var(2) = 7
triggerall = power >= 250
value = 19620
triggerall = command = "c"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl
;===========================
;Excalibur
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 6
value = 17200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 6
value = 17300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 6
value = 17400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;----------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 6
value = 17600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;----------------
; B air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 6
value = 17610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;----------------
; C air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 6
value = 17620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================
;Fleetway sonic
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 9
value = 23200
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl

; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 9
value = 23300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl

; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 9
value = 23400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl

; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 9
value = 23600
triggerall = command = "a"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl

; B
[State -1, A]
type = ChangeState
triggerall = var(2) = 9
value = 23610
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl

; C air
[State -1, C air]
type = ChangeState
triggerall = var(2) = 9
value = 23620
triggerall = power >= 500
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================================================================
; Hyper Sonic transform
[State -1, Hyper Sonic transform]
type = ChangeState
triggerall = var(6) =! 1
triggerall = var(2) = 0
triggerall = power >= 2500
triggerall = ailevel = 0
triggerall = stateno != 802
value = 808
triggerall = command = "holddown"
triggerall = command = "Hyper"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------



; Ultra Sonic turn off
[State -1, Ultra Sonic turn off]
type = ChangeState
triggerall = var(2) = 8
triggerall = ailevel = 0
triggerall = stateno != 810
value = 810
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl
;-------------
; Full Power
[State -1, Ultra Sonic transform]
type = ChangeState
Triggerall = var(3) = 0
Triggerall = power = 3000
value = 520
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Sonic transform
[State -1, Super Sonic transform]
type = ChangeState
triggerall = var(2) = 0
triggerall = var(6) =! 1
triggerall = power >= 1500
triggerall = ailevel = 0
triggerall = stateno != 800
value = 800
triggerall = command != "holddown"
triggerall = command = "x"
Triggerall = statetype != A
trigger1 = ctrl

; Super Sonic transform
[State -1, Super Sonic transform]
type = ChangeState
triggerall = var(2) = 0
triggerall = var(6) =! 1
triggerall = power >= 1500
triggerall = ailevel = 0
triggerall = stateno != 835
value = 835
triggerall = command != "holddown"
triggerall = command = "x"
Triggerall = statetype = A
trigger1 = ctrl

; Super Sonic transform
[State -1, Super Sonic transform]
type = ChangeState
triggerall = var(2) = 0
triggerall = var(6) =! 1
triggerall = power >= 3000
triggerall = ailevel = 0
triggerall = stateno != 836
value = 836
triggerall = command != "holddown"
triggerall = command = "Hyper"
Triggerall = statetype = A
trigger1 = ctrl

; Super Sonic transform
[State -1, Super Sonic transform]
type = ChangeState
triggerall = var(2) = 2
triggerall = var(6) =! 1
triggerall = power >= 3000
triggerall = ailevel = 0
triggerall = stateno != 837
value = 837
triggerall = command != "holddown"
triggerall = command = "Hyper"
Triggerall = statetype = A
trigger1 = ctrl

; Super Sonic turn off
[State -1, Super Sonic turn off]
type = ChangeState
triggerall = var(2) = 2
triggerall = ailevel = 0
triggerall = stateno != 810
value = 810
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------------------
; Dark Sonic transform
[State -1, Super Sonic transform]
type = ChangeState
triggerall = numhelper(21250) = 0
triggerall = stateno != 801
triggerall = var(6) =! 1
triggerall = var(2) = 0
triggerall = power >= 1500
triggerall = ailevel = 0
value = 801
triggerall = command = "Dark"
Triggerall = statetype != A
trigger1 = ctrl
; Dark Sonic turn off
[State -1, Dark Sonic turn off]
type = ChangeState
triggerall = numhelper(21250) = 0
triggerall = var(2) = 1
triggerall = ailevel = 0
triggerall = stateno != 801
value = 811
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Hyper Sonic transform
[State -1, Hyper Sonic transform]
type = ChangeState
triggerall = var(6) =! 1
triggerall = var(2) = 0
triggerall = power >= 3000
triggerall = ailevel = 0
triggerall = stateno != 802
value = 802
triggerall = command != "holddown"
triggerall = command = "Hyper"
Triggerall = statetype != A
trigger1 = ctrl

; Hyper Sonic transform
[State -1, Hyper Sonic transform]
type = ChangeState
triggerall = var(6) =! 1
triggerall = var(2) = 2
triggerall = power >= 3000
triggerall = ailevel = 0
triggerall = stateno != 802
value = 8020
triggerall = command != "holddown"
triggerall = command = "Hyper"
Triggerall = statetype != A
trigger1 = ctrl

; Hyper Sonic turn off
[State -1, Hyper Sonic turn off]
type = ChangeState
triggerall = var(2) = 4
triggerall = ailevel = 0
triggerall = stateno != 810
value = 812
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Darkspine Sonic transform
[State -1, Darkspine Sonic transform]
type = ChangeState
triggerall = var(6) =! 1
triggerall = var(2) = 0
triggerall = power >= 1500
triggerall = ailevel = 0
triggerall = stateno != 804
value = 804
triggerall = command = "holddown"
triggerall = command = "y"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Darkspine Sonic turn off]
type = ChangeState
triggerall = stateno != 813
triggerall = var(2) = 5
triggerall = ailevel = 0
value = 813
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Excalibur Sonic transform
[State -1, Excalibur Sonic transform]
type = ChangeState
triggerall = var(6) =! 1
triggerall = var(2) = 0
triggerall = power >= 1500
triggerall = ailevel = 0
triggerall = stateno != 805
value = 805
triggerall = command = "holddown"
triggerall = command = "x"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Excalibur Sonic turn off]
type = ChangeState
triggerall = stateno != 814
triggerall = var(2) = 6
triggerall = ailevel = 0
value = 814
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Excalibur Sonic transform
[State -1, Excalibur Sonic transform]
type = ChangeState
triggerall = var(6) =! 1
triggerall = var(2) = 0
triggerall = power >= 0
triggerall = ailevel = 0
triggerall = stateno != 806
value = 806
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Excalibur Sonic turn off]
type = ChangeState
triggerall = stateno != 815
triggerall = var(2) = 7
triggerall = ailevel = 0
value = 815
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl