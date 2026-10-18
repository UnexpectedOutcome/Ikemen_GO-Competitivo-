; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Burst"
command = F, B, DB, D, DF, F, a
time = 60

[Command]
name = "Burst"
command = F, B, DB, D, DF, F, b
time = 60

[Command]
name = "Burst"
command = F, $B, $D, $F, a
time = 40

[Command]
name = "Burst"
command = F, $B, $D, $F, b
time = 40


[Command]
name = "Embrace"
command = x, x, F, a, y
time = 50

[Command]
name = "Embrace"
command = x, x, F, a, ~y
time = 50

;[Command]
;name = "Embrace"
;command = x, x, /F, a, ~y
;time = 50


[Command]
name = "ShingakuRush"
command = $D, $B, D, DF, F, a
time = 26

[Command]
name = "ShingakuRush"
command = ~D, DB, B, DB, D, DF, F, a
time = 30

[Command]
name = "ShingakuRush"
command = $D, $B, $D, $F, a
time = 16

[Command]
name = "ShingakuRush"
command = $D, $B, D, DF, F, b
time = 26

[Command]
name = "ShingakuRush"
command = ~D, DB, B, DB, D, DF, F, b
time = 30

[Command]
name = "ShingakuRush"
command = $D, $B, $D, $F, b
time = 16


[Command]
name = "GadgetStorm"
command = $D, $B, D, DF, F, x
time = 26

[Command]
name = "GadgetStorm"
command = ~D, DB, B, DB, D, DF, F, x
time = 30

[Command]
name = "GadgetStorm"
command = $D, $B, $D, $F, x
time = 16

[Command]
name = "GadgetStorm"
command = $D, $B, D, DF, F, y
time = 26

[Command]
name = "GadgetStorm"
command = ~D, DB, B, DB, D, DF, F, y
time = 30

[Command]
name = "GadgetStorm"
command = $D, $B, $D, $F, y
time = 16


[Command]
name = "Kashinjiba"
command = ~D, DB, B, D, DB, B, x
time = 26

[Command]
name = "Kashinjiba"
command = ~D, DB, B, D, DB, B, y
time = 26


[Command]
name = "MajinCannon"
command = ~D, DF, F, D, DF, F, x
time = 26

[Command]
name = "MajinCannon"
command = ~D, DF, F, D, DF, F, y
time = 26

;------------------------------------------------
;Overlimit commands
;------------------------------------------------

[Command]
name = "ShingakuRush2"
command = $D, $B, D, DF, F, a
time = 26

[Command]
name = "ShingakuRush2"
command = ~D, DB, B, DB, D, DF, F, a
time = 30

[Command]
name = "ShingakuRush2"
command = $D, $B, $D, $F, a
time = 16

[Command]
name = "ShingakuRush2"
command = $D, $B, D, DF, F, b
time = 26

[Command]
name = "ShingakuRush2"
command = ~D, DB, B, DB, D, DF, F, b
time = 30

[Command]
name = "ShingakuRush2"
command = $D, $B, $D, $F, b
time = 16


[Command]
name = "GadgetStorm2"
command = $D, $B, D, DF, F, x
time = 26

[Command]
name = "GadgetStorm2"
command = ~D, DB, B, DB, D, DF, F, x
time = 30

[Command]
name = "GadgetStorm2"
command = $D, $B, $D, $F, x
time = 16

[Command]
name = "GadgetStorm2"
command = $D, $B, D, DF, F, y
time = 26

[Command]
name = "GadgetStorm2"
command = ~D, DB, B, DB, D, DF, F, y
time = 30

[Command]
name = "GadgetStorm2"
command = $D, $B, $D, $F, y
time = 16


[Command]
name = "Kashinjiba2"
command = ~D, DB, B, D, DB, B, x
time = 26

[Command]
name = "Kashinjiba2"
command = ~D, DB, B, D, DB, B, y
time = 26


[Command]
name = "MajinCannon2"
command = ~D, DF, F, D, DF, F, x
time = 26

[Command]
name = "MajinCannon2"
command = ~D, DF, F, D, DF, F, y
time = 26





;-| Special Motions |------------------------------------------------------

[Command]
name = "Warp_X"
command = ~D, D, x
time = 14

[Command]
name = "Warp_Y"
command = ~D, D, y
time = 14

[Command]
name = "Warp_A"
command = ~D, D, a
time = 14

[Command]
name = "Warp_B"
command = ~D, D, b
time = 14



[Command]
name = "Rush_A"
command = ~D, DF, F, a
time = 30

[Command]
name = "Rush_B"
command = ~D, DF, F, b
time = 30


[Command]
name = "Impact_X"
command = ~D, DB, B, x
time = 30

[Command]
name = "Impact_Y"
command = ~D, DB, B, y
time = 30


[Command]
name = "Strike_X"
command = ~F, D, DF, x
time = 15

[Command]
name = "Strike_Y"
command = ~F, D, DF, y
time = 15


[Command]
name = "AirCannon_X"
command = ~D, DF, F, x
time = 30

[Command]
name = "AirCannon_Y"
command = ~D, DF, F, y
time = 30


[Command]
name = "Launcher"
command = b+y
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

;-| Air Jump |-----------------------------------------
[Command]
name = "Airjump"
command = U
time = 1
[Command]
name = "Airjump"
command = UF
time = 1
[Command]
name = "Airjump"
command = UB

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
;Doraemon Supers
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; FK Burst
[State -1, ]
type = ChangeState
value = 3500
triggerall = power >= 3000
triggerall = command = "Burst"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]


;---------------------------------------------------------------------------
; Extravagant Embrace
[State -1, ]
type = ChangeState
value = 3400
triggerall = power >= 3000
triggerall = command = "Embrace"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 
trigger4 = stateno = 230 
trigger5 = stateno = 210 
trigger6 = stateno = 400 
trigger7 = stateno = 410 
trigger8 = stateno = 430 
trigger9 = stateno = 220 
trigger10 = stateno = 221 
trigger11 = stateno = 240 
trigger12 = stateno = 440 
trigger13 = stateno = 251 



;---------------------------------------------------------------------------
; Shingaku Rush
[State -1, ]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "ShingakuRush"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Shingaku Rush (Overlimit)
[State -1, ]
type = ChangeState
value = 3370
triggerall = power >= 2000
triggerall = command = "ShingakuRush2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1300 && movecontact
trigger3 = stateno = 1310 && movecontact
trigger4 = stateno = 1400 && movecontact && time < 30
trigger5 = stateno = 1410 && movecontact && time < 30



;---------------------------------------------------------------------------
; Gadget Storm
[State -1, ]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = command = "GadgetStorm"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Gadget Storm (Overlimit)
[State -1, ]
type = ChangeState
value = 3260
triggerall = power >= 2000
triggerall = command = "GadgetStorm2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1300 && movecontact
trigger3 = stateno = 1310 && movecontact
trigger4 = stateno = 1400 && movecontact && time < 30
trigger5 = stateno = 1410 && movecontact && time < 30

;---------------------------------------------------------------------------
; Kashinjiba
[State -1, ]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "Kashinjiba"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Kashinjiba (Overlimit)
[State -1, ]
type = ChangeState
value = 3170
triggerall = power >= 2000
triggerall = command = "Kashinjiba2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1300 && movecontact
trigger3 = stateno = 1310 && movecontact
trigger4 = stateno = 1400 && movecontact && time < 30
trigger5 = stateno = 1410 && movecontact && time < 30

;---------------------------------------------------------------------------
; Majin Cannon
[State -1, ]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "MajinCannon"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Majin Cannon (Overlimit)
[State -1, ]
type = ChangeState
value = 3050
triggerall = power >= 2000
triggerall = command = "MajinCannon2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1300 && movecontact
trigger3 = stateno = 1310 && movecontact
trigger4 = stateno = 1400 && movecontact && time < 30
trigger5 = stateno = 1410 && movecontact && time < 30

;---------------------------------------------------------------------------
; <!>
[State -1,]
type = ChangeState
value = 3698
triggerall = command = "Burst" 
triggerall = power < 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]

; <!>
[State -1,]
type = ChangeState
value = 3698
triggerall =  command = "Embrace"
triggerall = power < 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 
trigger4 = stateno = 230 
trigger5 = stateno = 210 
trigger6 = stateno = 400 
trigger7 = stateno = 410 
trigger8 = stateno = 430 
trigger9 = stateno = 220 
trigger10 = stateno = 221 
trigger11 = stateno = 240 
trigger12 = stateno = 440 
trigger13 = stateno = 251 


; <!>
[State -1,]
type = ChangeState
value = 3698
triggerall = command = "ShingakuRush2" || command = "GadgetStorm2" || command = "Kashinjiba2" || command = "MajinCannon2"
triggerall = power < 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; <!>
[State -1,]
type = ChangeState
value = 3698
triggerall = command = "ShingakuRush2" || command = "GadgetStorm2" || command = "Kashinjiba2" || command = "MajinCannon2"
triggerall = power < 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1300 && movecontact
trigger3 = stateno = 1310 && movecontact
trigger4 = stateno = 1400 && movecontact && time < 30
trigger5 = stateno = 1410 && movecontact && time < 30


;===========================================================================
;Doraemon Specials
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Counter!
[State -1, Counter]
type = ChangeState
value = 1950
triggerall = power >= 1000
triggerall = command = "Launcher"
triggerall = statetype != A
trigger1 = stateno = 150 && Time <= 10
trigger2 = stateno = 151 && Time <= 10
trigger3 = stateno = 152 && Time <= 10
trigger4 = stateno = 153 && Time <= 10

;---------------------------------------------------------------------------
; Dora Rush a
[State -1, ]
type = ChangeState
value = 1400
triggerall = command = "Rush_A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Dora Rush a
[State -1, ]
type = ChangeState
value = 1410
triggerall = command = "Rush_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact


;---------------------------------------------------------------------------
; Dora Impact x
[State -1, ]
type = ChangeState
value = 1300
triggerall = command = "Impact_X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Dora Impact y
[State -1, ]
type = ChangeState
value = 1310
triggerall = command = "Impact_Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact


;---------------------------------------------------------------------------
; Air Dora Strike x
[State -1, ]
type = ChangeState
value = 1200
triggerall = command = "Strike_X"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact 
trigger5 = stateno = 640 && movecontact 

; Air Dora Strike y
[State -1, ]
type = ChangeState
value = 1210
triggerall = command = "Strike_Y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact 
trigger5 = stateno = 640 && movecontact 



;---------------------------------------------------------------------------
; Dora Strike x
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "Strike_X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
; Dora Strike y
[State -1, ]
type = ChangeState
value = 1110
triggerall = command = "Strike_Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
; Air Cannon x
[State -1, ]
type = ChangeState
value = 1000
triggerall = command = "AirCannon_X"
triggerall = numhelper(21160) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Air Cannon y
[State -1, ]
type = ChangeState
value = 1010
triggerall = command = "AirCannon_Y"
triggerall = numhelper(21160) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
; Dora Warp x
[State -1, ]
type = ChangeState
value = 1500
triggerall = command = "Warp_X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Dora Warp y
[State -1, ]
type = ChangeState
value = 1510
triggerall = command = "Warp_Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Dora Warp a
[State -1, ]
type = ChangeState
value = 1520
triggerall = command = "Warp_A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact

; Dora Warp b
[State -1, ]
type = ChangeState
value = 1530
triggerall = command = "Warp_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 251 && movecontact


;---------------------------------------------------------------------------
; Powercharge
[State -1, ]
type = ChangeState
value = 2000
triggerall = command = "hold_c"
triggerall = power < 5000
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Dash FWD
[State -1, Air Dash]
type = ChangeState
value = 107
triggerall = numhelper(89745) < 2
triggerall = command = "FF"
trigger1 = stateno != [107,108]
trigger1 = stateno != 99050
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time < 21
trigger3 = stateno = 610 && movecontact && time < 21
trigger4 = stateno = 630 && movecontact && time < 21
trigger5 = stateno = 640 && movecontact && time < 21

;---------------------------------------------------------------------------
; Air Dash BCK
[State -1, Air Dash]
type = ChangeState
value = 108
triggerall = numhelper(89745) < 2
triggerall = command = "BB"
trigger1 = stateno != [107,108]
trigger1 = stateno != 99050
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time < 21
trigger3 = stateno = 610 && movecontact && time < 21
trigger4 = stateno = 630 && movecontact && time < 21
trigger5 = stateno = 640 && movecontact && time < 21


;---------------------------------------------------------------------------
; Alt. Airjump
[State -1, Run Back]
type = ChangeState
value = 8045
triggerall = numhelper(89745) < 1
triggerall = command = "Airjump"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50 && time > 8;[40,46]
trigger2 = stateno = 600 && movecontact && time < 21
trigger3 = stateno = 610 && movecontact && time < 21
trigger4 = stateno = 630 && movecontact && time < 21
trigger5 = stateno = 640 && movecontact && time < 21

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Dora Uppercut
[State -1, Standing Medium Kick]
type = ChangeState
value = 260
triggerall = command = "Launcher"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 220 && movecontact
trigger10 = stateno = 221 && movecontact

;---------------------------------------------------------------------------
; Hammer Fist
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]

;---------------------------------------------------------------------------
; Hammer Fist Combo ver
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact


;---------------------------------------------------------------------------
; Thrust Kick
[State -1, ]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]

;---------------------------------------------------------------------------
; Thrust Kick Combo Ver.
[State -1, ]
type = ChangeState
value = 251
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 210 && movecontact


;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 430 && movecontact


;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,106]
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 450
;triggerall = command = "c"
;triggerall = command = "holddown"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = [100,106]

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 630 && movecontact 

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 630 && movecontact 

;---------------------------------------------------------------------------
