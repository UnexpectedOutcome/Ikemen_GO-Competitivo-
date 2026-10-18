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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------

[Command]
name = "214214B"
command = D,DB,B,D,DB,B,y
time = 30

[Command]
name = "214214B"
command = D,B,D,B,y
time = 30

[Command]
name = "214214A"
command = D,DB,B,D,DB,B,x
time = 30

[Command]
name = "214214A"
command = D,B,D,B,x
time = 30

[Command]
name = "236236D"
command = D,DF,F,D,DF,F,b
time = 30

[Command]
name = "236236D"
command = D,F,D,F,b
time = 30

[Command]
name = "236236C"
command = D,DF,F,D,DF,F,a
time = 30

[Command]
name = "236236C"
command = D,F,D,F,a
time = 30
;-| Special Motions |------------------------------------------------------
[Command]
name = "214AB"
command = D,DB,B,x+y
time = 15

[Command]
name = "214AB"
command = D,B,x+y
time = 15

[Command]
name = "236CD"
command = D,DF,F,a+b
time = 15

[Command]
name = "236CD"
command = D,F,a+b
time = 15

[Command]
name = "214CD"
command = D,DB,B,a+b
time = 15

[Command]
name = "214CD"
command = D,B,a+b
time = 15

[Command]
name = "xy"
command = x+y
time = 15

[Command]
name = "214C"
command = D,B,a
time = 15

[Command]
name = "214C"
command = D,DB,B,a
time = 15

[Command]
name = "214D"
command = D,B,b
time = 15

[Command]
name = "214D"
command = D,DB,B,b
time = 15

[Command]
name = "214B"
command = D,B,y
time = 15


[Command]
name = "214B"
command = D,B,B,y
time = 15

[Command]
name = "214A"
command = D,B,x
time = 15


[Command]
name = "214A"
command = D,DB,B,x
time = 15

[Command]
name = "236C"
command = ~D, DF, F, a
time = 15

[Command]
name = "236D"
command = ~D, DF, F, b
time = 15

[Command]
name = "DUB"
command = D, UB
time = 15

[Command]
name = "DUF"
command = D, UF
time = 15

[Command]
name = "DU"
command = D, U
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
name = "BD"
command = b+y
time = 1

[Command]
name = "BDa"
command = /b+y
time = 1

[Command]
name = "upperjump"
command = U+F
time = 1

[Command]
name = "upperjump"
command = U
time = 1

[Command]
name = "upperjump"
command = U+B
time = 1

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

[Command]
name = "recover";Required (do not remove)
command = a
time = 1
[Command]
name = "recover";Required (do not remove)
command = b
time = 1
[Command]
name = "recover";Required (do not remove)
command = x
time = 1
[Command]
name = "recover";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
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
;-----------------------------------------------------------------------------
[Command]
name = "start"
command = s
time = 1

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
name = "holdback2" ;Required (do not remove)
command = /B
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
;------------------------------------------------------------------------------
; 214214B(Heavy)
[State -1, 214214B Cross Slash (Heavy)]
type = ChangeState
value = 1017
triggerall = !ishelper
triggerall= var(14) = 1
triggerall = !AIlevel
triggerall = command = "214214B"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 405 && time >= 11 && time <=13 && movecontact
trigger3 = stateno = 433 && time >= 16 && movecontact
trigger4 = stateno = 434 && time >= 40 && movecontact
trigger5 = stateno = 435 && time >= 16 && movecontact
trigger6 = stateno = 436 && time >= 16 && movecontact
trigger7 = stateno = 437 && time >= 18 && movecontact
trigger8 = stateno = 438 && time >= 14 && movecontact
trigger9 = stateno = 208 && time >= 0 && movecontact
trigger10 = stateno = 209 && time >= 0 && movecontact
trigger11 = stateno = 211 && time >= 0 && movecontact
trigger12 = stateno = 418 && time >= 0 && movecontact
trigger13 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger14 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger15 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger16 = stateno = 207 && time >= 8 && time <= 21
trigger17 = stateno = 221 && time >= 14 && movecontact
trigger18 = stateno = 222 && time >= 9 && movecontact
trigger19 = stateno = 223 && time >= 9 && movecontact
trigger20 = stateno = 210 && time >= 9 && movecontact
trigger21 = stateno = 500 && time >= 24
trigger22 = stateno = 502 && time >= 24
trigger23 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
; 214214A(Light)
[State -1, 214214A Cross Slash(Light)]
type = ChangeState
value = 1012
triggerall = !ishelper
triggerall= var(14) = 1
triggerall = !AIlevel
triggerall = command = "214214A"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 405 && time >= 11 && time <=13 && movecontact
trigger3 = stateno = 433 && time >= 16 && movecontact
trigger4 = stateno = 434 && time >= 40 && movecontact
trigger5 = stateno = 435 && time >= 16 && movecontact
trigger6 = stateno = 436 && time >= 16 && movecontact
trigger7 = stateno = 437 && time >= 18 && movecontact
trigger8 = stateno = 438 && time >= 14 && movecontact
trigger9 = stateno = 208 && time >= 0 && movecontact
trigger10 = stateno = 209 && time >= 0 && movecontact
trigger11 = stateno = 211 && time >= 0 && movecontact
trigger12 = stateno = 418 && time >= 0 && movecontact
trigger13 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger14 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger15 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger16 = stateno = 207 && time >= 8 && time <= 21
trigger17 = stateno = 221 && time >= 14 && movecontact
trigger18 = stateno = 222 && time >= 9 && movecontact
trigger19 = stateno = 223 && time >= 9 && movecontact
trigger20 = stateno = 210 && time >= 9 && movecontact
trigger21 = stateno = 500 && time >= 24
trigger22 = stateno = 502 && time >= 24
trigger23 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
; j.236236C(Heavy)
[State -1, Air Zyodine]
type = ChangeState
value = 1003
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = command = "236236D"
triggerall = power >= 1000 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240 &&  movecontact && time >= 8
trigger3 = stateno = 241 &&  movecontact && time >= 11
trigger4 = stateno = 242 &&  movecontact && time >= 8
trigger5 = stateno = 407 && time >= 5 && movecontact
trigger6 = stateno = 204 && time >= 11 && movecontact
trigger7 = stateno = 205 && time >= 16 && movecontact
trigger8 = stateno = 206 && time >= 40 && movecontact
trigger9 = stateno = 415 && time >= 16 && movecontact
trigger10 = stateno = 416 && time >= 16 && movecontact
trigger11 = stateno = 417 && time >= 18 && movecontact
trigger12 = stateno = 510 && time >= 29
trigger13 = stateno = 405 && time >= 14 && movecontact
;---------------------------------------------------------------------------
; j.236236C(Light)
[State -1, Air Zyodine]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = command = "236236C"
triggerall = power >= 1000 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 240 &&  movecontact && time >= 8
trigger3 = stateno = 241 &&  movecontact && time >= 11
trigger4 = stateno = 242 &&  movecontact && time >= 8
trigger5 = stateno = 407 && time >= 5 && movecontact
trigger6 = stateno = 204 && time >= 11 && movecontact
trigger7 = stateno = 205 && time >= 16 && movecontact
trigger8 = stateno = 206 && time >= 40 && movecontact
trigger9 = stateno = 415 && time >= 16 && movecontact
trigger10 = stateno = 416 && time >= 16 && movecontact
trigger11 = stateno = 417 && time >= 18 && movecontact
trigger12 = stateno = 510 && time >= 29
trigger13 = stateno = 405 && time >= 14 && movecontact
;---------------------------------------------------------------------------
; 236236C(Heavy)
[State -1, Zyodine]
type = ChangeState
value = 1002
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = command = "236236D"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 405 && time >= 11 && time <=13 && movecontact
trigger3 = stateno = 433 && time >= 16 && movecontact
trigger4 = stateno = 434 && time >= 40 && movecontact
trigger5 = stateno = 435 && time >= 16 && movecontact
trigger6 = stateno = 436 && time >= 16 && movecontact
trigger7 = stateno = 437 && time >= 18 && movecontact
trigger8 = stateno = 438 && time >= 14 && movecontact
trigger9 = stateno = 208 && time >= 0 && movecontact
trigger10 = stateno = 209 && time >= 0 && movecontact
trigger11 = stateno = 211 && time >= 0 && movecontact
trigger12 = stateno = 418 && time >= 0 && movecontact
trigger13 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger14 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger15 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger16 = stateno = 207 && time >= 8 && time <= 21
trigger17 = stateno = 221 && time >= 14 && movecontact
trigger18 = stateno = 222 && time >= 9 && movecontact
trigger19 = stateno = 223 && time >= 9 && movecontact
trigger20 = stateno = 210 && time >= 9 && movecontact
trigger21 = stateno = 500 && time >= 24
trigger22 = stateno = 502 && time >= 24
trigger23 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
; 236236C(Light)
[State -1, Zyodine]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = command = "236236C"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 405 && time >= 11 && time <=13 && movecontact
trigger3 = stateno = 433 && time >= 16 && movecontact
trigger4 = stateno = 434 && time >= 40 && movecontact
trigger5 = stateno = 435 && time >= 16 && movecontact
trigger6 = stateno = 436 && time >= 16 && movecontact
trigger7 = stateno = 437 && time >= 18 && movecontact
trigger8 = stateno = 438 && time >= 14 && movecontact
trigger9 = stateno = 208 && time >= 0 && movecontact
trigger10 = stateno = 209 && time >= 0 && movecontact
trigger11 = stateno = 211 && time >= 0 && movecontact
trigger12 = stateno = 418 && time >= 0 && movecontact
trigger13 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger14 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger15 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger16 = stateno = 207 && time >= 8 && time <= 21
trigger17 = stateno = 221 && time >= 14 && movecontact
trigger18 = stateno = 222 && time >= 9 && movecontact
trigger19 = stateno = 223 && time >= 9 && movecontact
trigger20 = stateno = 210 && time >= 9 && movecontact
trigger21 = stateno = 500 && time >= 24
trigger22 = stateno = 502 && time >= 24
trigger23 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Stand 214AB EX
[State -1, Stand Raging Lion Ex]
type = ChangeState
value = 206
triggerall = power >= 500
triggerall = !ishelper
triggerall = command = "214AB"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Stand 214B
[State -1, Stand Raging Lion Heavy]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = command = "214B"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno=52 || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Stand 214A
[State -1, Stand Raging Lion Light]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = command = "214A"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno=52 || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
; j.214AB EX
[State -1, Air Raging Lion Ex]
type = ChangeState
value = 417
triggerall = power>=500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "214AB" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 8
trigger3 = stateno = 111 && time >= 11
trigger4 = stateno = 240 &&  movecontact && time >= 8
trigger5 = stateno = 241 &&  movecontact && time >= 11
trigger6 = stateno = 242 &&  movecontact && time >= 8
trigger7 = stateno = 510 && time >= 29
;---------------------------------------------------------------------------
; j.214B
[State -1, Air Raging Lion Heavy]
type = ChangeState
value = 416
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "214B" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 8
trigger3 = stateno = 111 && time >= 11
trigger4 = stateno = 240 &&  movecontact && time >= 8
trigger5 = stateno = 241 &&  movecontact && time >= 11
trigger6 = stateno = 242 &&  movecontact && time >= 8
trigger7 = stateno = 510 && time >= 29
;---------------------------------------------------------------------------
; j.214A
[State -1, Air Raging Lion Light]
type = ChangeState
value = 415
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "214A" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 8
trigger3 = stateno = 111 && time >= 11
trigger4 = stateno = 240 &&  movecontact && time >= 8
trigger5 = stateno = 241 &&  movecontact && time >= 11
trigger6 = stateno = 242 &&  movecontact && time >= 8
trigger7 = stateno = 510 && time >= 29
;---------------------------------------------------------------------------
;Ex Zio
[State -1, 236 CD]
type = ChangeState
value = 435
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = numhelper(2020) < 1
triggerall = var(15) != 1
triggerall = command = "236CD"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Light Zio - 236C
[State -1, Light Zio]
type = ChangeState
value = 433
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = numhelper(2020) < 1
triggerall = var(15) != 1
triggerall = command = "236C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Heavy Zio - 236D
[State -1, Heavy Zio]
type = ChangeState
value = 434
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = numhelper(2020) < 1
triggerall = var(15) != 1
triggerall = command = "236D"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Swift Strike - 214CD
[State -1, Swift Strike]
type = ChangeState
value = 438
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2011) < 1
triggerall = var(15) != 1
triggerall = command = "214CD"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Swift Strike - 214C
[State -1, Swift Strike]
type = ChangeState
value = 436
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2008) < 1
triggerall = var(15) != 1
triggerall = command = "214C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Swift Strike - 214D
[State -1, Swift Strike]
type = ChangeState
value = 437
triggerall = !ishelper
triggerall = !AIlevel
triggerall= numhelper(2009)< 1
triggerall = var(15) != 1
triggerall = command = "214D"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 24
trigger10 = stateno = 502 && time >= 24
trigger11 = stateno = 221 && time >= 14 && movecontact
trigger12 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;Normal Defensive Burst
[state -1, Normal Defensive Burst]
type = changestate
triggerall = var(13) = 0
triggerall = !ishelper
triggerall =  command = "c" || (command = "x" && command = "y" && command = "a" && command = "b")
triggerall = statetype = A
trigger1 = movetype = H
trigger1 = vel y < 0
trigger1 = pos y < 0
trigger2 = stateno = 303 || stateno = 203
trigger3 = stateno = [211,214]
trigger4 = stateno = [219,220]
trigger5 = stateno = [243,246]
trigger6 = stateno = [341,342]
trigger7 = stateno = [409,412]
value = 731
;---------------------------------------------------------------------------
;Normal Defensive Burst
[state -1, Normal Defensive Burst]
type = changestate
triggerall = var(13) = 0
triggerall = !ishelper
triggerall =  command = "c" || (command = "x" && command = "y" && command = "a" && command = "b")
triggerall = statetype != A
trigger1 = movetype = H
value = 730
;---------------------------------------------------------------------------
;Normal Max Burst
[state -1, Normal Max Burst]
type = changestate
triggerall = var(26) != 1
triggerall = numhelper(2010) < 1
triggerall = numhelper(2020) < 1
triggerall= numhelper(2080)< 1
triggerall = numhelper(2015) < 1
triggerall = numhelper(2005) < 1
triggerall= numhelper(2025)< 1
triggerall = !ishelper
triggerall =  command = "c" || (command = "x" && command = "y" && command = "a" && command = "b")
triggerall = statetype = A
trigger1 = ctrl
value = 724
;---------------------------------------------------------------------------
;Normal One More Burst
[state -1, Normal Ground One More Burst]
type = changestate
triggerall = var(13) = 0
triggerall = !ishelper
triggerall =  command = "c" || (command = "x" && command = "y" && command = "a" && command = "b")
triggerall = statetype = A
trigger1 = stateno=415&& time>=0 && movecontact
trigger2 = stateno=418&& time>=0 && movecontact
trigger3 = stateno=240&& time>=0 && movecontact
trigger4 = stateno=241&& time>=0 && movecontact
trigger5 = stateno=341&& time>=0 && movecontact
trigger6 = stateno=242&& time>=0 && movecontact
value = 725

;---------------------------------------------------------------------------
;Normal Ground One More Burst
[state -1, Normal Ground One More Burst]
type = changestate
triggerall = var(13) = 0
triggerall = !ishelper
triggerall =  command = "c" || (command = "x" && command = "y" && command = "a" && command = "b")
triggerall = statetype != A
trigger1 = stateno = 200 && time >= 0 && movecontact
trigger2 = stateno = 201 && time >= 0 && movecontact
trigger3 = stateno = 202 && time >= 0 && movecontact 
trigger4 = stateno = 207 && movecontact && time >= 0
trigger5 = stateno = 202 && time >= 0 && movecontact
trigger6 = stateno = 416 && time >= 0 && movecontact
trigger7 = stateno = 417 && time >= 0 && movecontact
trigger8 = stateno = 419 && time >= 0 && movecontact
trigger9 = stateno = 420 && time >= 0 && movecontact
trigger10 = stateno = 204 && movecontact && time >=0
trigger11 = stateno = 205 && movecontact && time >=1
trigger12 = stateno = 247 && movecontact && time >=1
trigger13 = stateno = 216 && movecontact && time >=1
trigger14 = stateno = 217 && movecontact && time >=1
trigger15 = stateno = 221 && movecontact && time >=1
trigger16 = stateno = 223 && movecontact && time >=1
trigger17 = stateno = 224 && movecontact && time >=1
trigger18 = stateno = 324 && movecontact && time >=1
trigger19 = stateno = 406 && movecontact && time >=1
trigger20 = stateno = 407 && movecontact && time >=1
trigger21 = stateno = 221 && movecontact && time >=1
trigger22 = numhelper(4611) 
trigger22 = helper(4611), movecontact && time < 3
trigger23 = numhelper(4601) 
trigger23 = helper(4601), movecontact && time < 6
trigger24 = stateno = 209 && movecontact && time >= 0
trigger25 = stateno = 210 && movecontact && time >= 0
trigger27 = stateno=351&& time>=0 && movecontact
value = 720
;---------------------------------------------------------------------------
;Normal Ground Max Burst
[state -1, Normal Ground Max Burst]
type = changestate
triggerall = var(26) != 1
triggerall = !ishelper
triggerall =  command = "c" || (command = "x" && command = "y" && command = "a" && command = "b")
triggerall = statetype != A
trigger1 = ctrl
value = 719
;---------------------------------------------------------------------------
;One More
[state -1, One More]
type = changestate
triggerall = !ishelper
triggerall = power >= 1000
triggerall =  command = "z" || (command = "x" && command = "y" && command = "a")
triggerall = statetype != A
trigger1 = stateno = 200 && time >= 0 && movecontact
trigger2 = stateno = 201 && time >= 0 && movecontact
trigger3 = stateno = 202 && time >= 0 && movecontact
trigger4 = stateno = 222 && time >= 1 && movecontact
trigger5 = stateno = 223 && time >= 1 && movecontact
trigger6 = stateno = 207 && time >= 0 && movecontact
trigger7 = stateno = 210 && time >= 0 && movecontact
trigger8 = stateno = 213 && time >= 0 && movecontact
trigger9 = stateno = 215 && time >= 0 && movecontact
trigger10 = stateno = 991 && time >= 0 && movecontact
trigger11 = stateno = 992 && time >= 0 && movecontact
trigger12 = stateno = 993 && time >= 0 && movecontact
trigger13 = stateno = 221 && time >= 1 && movecontact
trigger14 = stateno = 436 && time >= 0 
trigger15 = stateno = 437 && time >= 0 
trigger16 = stateno = 438 && time >= 0 
trigger17 = stateno = 203 && time >= 0 
trigger18 = stateno = 350 && time >= 0
trigger19 = stateno = 351 && time >= 0
trigger20 = stateno = 433 && time >= 0
trigger21 = stateno = 434 && time >= 0
trigger22 = stateno = 435 && time >= 0
trigger23 = stateno = 1000 && time >= 85
trigger24 = stateno = 1002 && time >= 134
trigger25 = stateno = 1012 && moveguarded != 0
trigger26 = stateno = 1017 && moveguarded != 0
value = 1
;---------------------------------------------------------------------------
;One More
[state -1, One More]
type = changestate
triggerall = !ishelper
triggerall = power >= 1000
triggerall =  command = "z" || (command = "x" && command = "y" && command = "a")
triggerall = statetype = A
trigger1 = stateno = 240 && time >= 0 && movecontact
trigger2 = stateno = 241 && time >= 0 && movecontact
trigger3 = stateno = 242 && time >= 0 && movecontact
trigger4 = stateno = 247 && time >= 0 && movecontact
trigger5 = stateno = 295 && time >= 0 && movecontact
trigger6 = stateno = 204 && time >= 0 && movecontact
trigger7 = stateno = 205 && time >= 0 && movecontact
trigger8 = stateno = 206 && time >= 0 && movecontact
trigger9 = stateno = 510 && time >= 0
trigger10 = stateno = 360 && time >= 0
trigger11 = stateno = 361 && time >= 0
trigger12 = stateno = 1001 && time >= 85
trigger13 = stateno = 1003 && time >= 134
value = 56
;---------------------------------------------------------------------------
[State -1, j.BD, Aerial Big Gamble]
type = ChangeState
value = 407
triggerall = !ishelper
triggerall = command = "BD"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 241 && time >= 4 && movecontact
trigger3 = stateno = 242 && time >= 8 && movecontact  
;---------------------------------------------------------------------------
[State -1, BD, Big Gamble]
type = ChangeState
value = 405
triggerall = !ishelper
triggerall = command = "BD"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, AC Dash]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = command = "x"
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 202 && time >= 6 && movecontact
trigger3 = stateno = 502 && time >= 16
;---------------------------------------------------------------------------
[State -1, j.CD Grab]
type = ChangeState
value = 360
triggerall = !ishelper
triggerall = command = "a"
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, CD Grab]
type = ChangeState
value = 350
triggerall = !ishelper
triggerall = command = "a"
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
;---------------------------------------------------------------------------
;2AB
[State -1, 2AB]
type = ChangeState
value = 221
triggerall = !ishelper
triggerall = command = "xy"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 207 && time >= 8 && time <= 21
trigger5 = stateno = 222 && time >= 9 && movecontact
trigger6 = stateno = 223 && time >= 9 && movecontact
trigger7 = stateno = 210 && time >= 9 && movecontact
trigger8 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;5AB EX
[State -1, 5AB EX]
type = ChangeState
value = 800
triggerall = power>=500
triggerall = !ishelper
triggerall = command = "xy"
trigger1 = stateno = 700 && time > 2
trigger2 = stateno = 710 && time > 2
trigger3 = stateno = 740 && time > 2
;---------------------------------------------------------------------------
;5AB
[State -1, 5AB]
type = ChangeState
value = 215
triggerall = !ishelper
triggerall = command = "xy"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 202 && time >= 10 && time <= 23 && movecontact
trigger5 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger6 = stateno = 222 && time >= 9 && movecontact
trigger7 = stateno = 223 && time >= 9 && movecontact
trigger8 = stateno = 210 && time >= 9 && movecontact
trigger9 = stateno = 213 && time >= 9 && movecontact
;---------------------------------------------------------------------------
;2B
[State -1, 2B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 200 && time >= 1 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger6 = stateno = 500 && time >= 28
;---------------------------------------------------------------------------
;2B
[State -1, 2B]
type = ChangeState
value = 213
triggerall = !ishelper
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 200 && time >= 1 && time <= 16 && movecontact
trigger2 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger3 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger4 = stateno = 222 && time >= 9 && movecontact
trigger5 = stateno = 500 && time >= 28
;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 222
triggerall = !ishelper
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger6 = stateno = 500 && time >= 28
;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 223
triggerall = !ishelper
triggerall = statetype != A
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger2 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger3 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger4 = stateno = 210 && time >= 9 && movecontact
trigger5 = stateno = 500 && time >= 28
;---------------------------------------------------------------------------
; Super Jump
[state -1, Super Jump, Persona]
type = changestate
triggerall = !ishelper
triggerall =  command = "DUB"
triggerall = statetype != A
trigger1 = ctrl
value = 902
;---------------------------------------------------------------------------
; Super Jump
[state -1, Super Jump, Persona]
type = changestate
triggerall = !ishelper
triggerall =  command = "DUF"
triggerall = statetype != A
trigger1 = ctrl
value = 901
;---------------------------------------------------------------------------
; Super Jump
[state -1, Super Jump, Persona]
type = changestate
triggerall = !ishelper
triggerall = (command = "DU")
triggerall = statetype != A
trigger1 = ctrl
value = 900

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash Backward
[State -1, Air Dash Backward]
type = ChangeState
value = 111
triggerall = !ishelper
triggerall = command = "BB"
triggerall = statetype = A
trigger1  = var(2) <= 1||Var(2) = 5
trigger1 = ctrl
trigger2 = stateno = [903,905] 
trigger2 = time >= 2
;---------------------------------------------------------------------------
; Air Dash Fwd
[State -1, Air Dash Fwd]
type = ChangeState
value = 110
triggerall = !ishelper
triggerall = command = "FF"
triggerall = statetype = A
trigger1  = var(2) <= 1||Var(2) = 5
trigger1 = ctrl
trigger2 = stateno = [903,905] 
trigger2 = time >= 2
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ishelper
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; j.2A
[State -1, j2.A]
type = ChangeState
value = 295
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holddown" 
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 10
trigger3 = stateno = 111 && time >= 10
trigger4 = stateno = 240 && time >= 8 && movecontact
trigger5 = stateno = 241 && time >= 11 && movecontact
trigger6 = stateno = 242 && time >= 8 && movecontact
;---------------------------------------------------------------------------
; j.A 
[State -1, j.A]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "x" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 10
trigger3 = stateno = 111 && time >= 10
trigger4 = stateno = 240 && time >= 13 && movecontact
;---------------------------------------------------------------------------
; j.B
[State -1, j.B]
type = ChangeState
value = 241
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 8
trigger3 = stateno = 111 && time >= 11
trigger4 = stateno = 240 && time >= 8 && movecontact
;---------------------------------------------------------------------------
; j.B
[State -1, j.B]
type = ChangeState
value = 247
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 && time >= 8
trigger3 = stateno = 111 && time >= 11
trigger4 = stateno = 240 && time >= 8 && movecontact
trigger5 = stateno = 242 && time >= 8 && movecontact
;---------------------------------------------------------------------------
; Jump After Attack
[State -1, Jump After Attack]
type = ChangeState
value = 45
triggerall = !ishelper
TriggerAll = RoundState = 2
triggerall = command = "upperjump" 
triggerall = statetype = A
Triggerall = P2MoveType = H
trigger1 = movecontact && stateno = 240 && time >=8
triggerall = var(2)=1
trigger3 = stateno=50
trigger3 = Ctrl = 1
trigger2 = movecontact && stateno = 241 && time >=7
trigger4 = stateno = 242 && time >= 8 && movecontact
;---------------------------------------------------------------------------
; Jump After Attack
[State -1, Jump After Attack]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = statetype = A
triggerall = command = "upperjump"
triggerall = var(2)=1
trigger1 = stateno=50
trigger2= stateno = 240 && time >= 88
trigger3 =stateno = 360 && time >=25
trigger4 =stateno = 241 && time >=25
trigger5 = stateno = 242 && time >= 3 && movecontact
;---------------------------------------------------------------------------
; Jump After Attack
[State -1, Jump After Attack]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = command = "upperjump" 
triggerall = statetype != A
trigger1 = stateno = 200 && time >= 6 && movecontact
trigger2 = stateno = 201 && time >= 8 && movecontact 
trigger3 = stateno = 202 && time >= 10 && movecontact 
trigger4 = stateno = 222 && time >= 9 && movehit
trigger5 = stateno = 223 && time >= 9 && movehit
trigger6 = stateno = 210 && time >= 9  && movecontact
trigger7 = stateno = 213 && time >= 9 && movecontact 
trigger8 = stateno = 351 && time >= 25 && movecontact
trigger9 = stateno = 500 && time >= 24
;---------------------------------------------------------------------------
; j.D
[State -1, j.D]
type = ChangeState
value = 515
triggerall = !ishelper
triggerall = numhelper(2010) < 1
triggerall = var(15) != 1
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [110,111]
trigger2 = stateno = 110 && time >= 13
trigger3 = stateno = 111 && time >= 13
trigger4 = stateno = 240 && time >= 8 && movecontact
trigger5 = stateno = 241 && time >= 11 && movecontact
trigger6 = stateno = 242 && time >= 8 && movecontact
trigger7 = stateno = 510 && time >= 29
trigger8 = stateno = 295 && time >= 17 && movecontact
trigger9 = numhelper(4661) > 0
trigger9 = helper(4661), movecontact && time > 15
;---------------------------------------------------------------------------
; j.C
[State -1, j.C]
type = ChangeState
value = 510
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = numhelper(2020) < 1
triggerall = numhelper(2010) < 1
triggerall = var(15) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [110,111]
trigger2 = stateno = 110 && time >= 19
trigger3 = stateno = 111 && time >= 19
trigger4 = stateno = 240 && time >= 8 && movecontact
trigger5 = stateno = 241 && time >= 11 && movecontact
trigger6 = stateno = 510 && time >= 72
;---------------------------------------------------------------------------
; 2C
[State -1, 2C]
type = ChangeState
value = 502
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2010) < 1
triggerall = numhelper(2020) < 1
triggerall = var(15) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger5 = stateno = 222 && time >= 9 && movecontact
trigger6 = stateno = 223 && time >= 9 && movecontact
trigger7 = stateno = 210 && time >= 9 && movecontact
trigger8 = stateno = 213 && time >= 9 && movecontact
trigger9 = stateno = 500 && time >= 28
trigger9 = prevstateno != 502
;---------------------------------------------------------------------------
; 5D
[State -1, 5D]
type = ChangeState
value = 501
triggerall = !ishelper
triggerall = numhelper(2020) < 1
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = numhelper(2005) < 1
trigger1 = numhelper(2025) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 500 && time >= 28
trigger2 = numhelper(2005)
trigger2 = helper(2005),stateno!=2010
trigger2 = stateno != 501
trigger3 = numhelper(2025)
trigger3 = helper(2025),stateno!=2010
trigger3 = stateno != 501
trigger3 = stateno = 502 && time >= 35
trigger4 = stateno = 221 && time >= 14 && movecontact 
trigger5 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger6 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger7 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger8 = stateno = 223 && time >= 9 && movecontact
trigger9 = stateno = 223 && time >= 9 && movecontact
trigger10 = stateno = 210 && time >= 9 && movecontact
trigger11 = stateno = 213 && time >= 9 && movecontact
trigger12 = stateno = 221 && time >= 14 && movecontact
;---------------------------------------------------------------------------
; 5C
[State -1, 5C]
type = ChangeState
value = 500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(2005) < 1
triggerall = numhelper(2010) < 1
triggerall = numhelper(2020) < 1
triggerall = numhelper(2025) < 1
triggerall = var(15) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 6 && time <= 16 && movecontact
trigger3 = stateno = 201 && time >= 8 && time <= 18 && movecontact
trigger4 = stateno = 207 && movecontact && time >= 8 && time <= 21
trigger5 = stateno = 222 && time >= 9 && movecontact
trigger6 = stateno = 223 && time >= 9 && movecontact
trigger7 = stateno = 210 && time >= 9 && movecontact
trigger8 = stateno = 213 && time >= 9 && movecontact
trigger9 = numhelper(4660) > 0
trigger9 = helper(4660), movecontact && time > 15
trigger9 = prevstateno != 502
;===========================================================================
;5A
[State -1, Stand 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 200 && time >= 20
trigger3 = stateno = 207 && movecontact && time >= 8 && time <= 21
;----------------------------------------------------------------------------
;5AA
[State -1, Stand 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 200 && time >= 6 && time <= 16 && movecontact
;-----------------------------------------------------------------------------
;5AAA
[State -1, Stand 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 201 && time >= 8 && time <= 18 && movecontact
;-----------------------------------------------------------------------------
;Swift Strike
[State -1, Stand 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 202 && time >= 10 && time <= 23 && movecontact
;---------------------------------------------------------------------------
; 236236C(Light)
[State -1, Stand 5AAAAA]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = power >= 1000 
triggerall = statetype != A
trigger1 = stateno = 203 && movecontact && time >= 16
;---------------------------------------------------------------------------
;2A
[State -1, Crouch 2A]
type = ChangeState
value = 207
triggerall = !ishelper
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl||stateno=52||(stateno=[100,101])
trigger2 = stateno = 207 && movecontact && time >= 16 && time <= 21
trigger3 = stateno = 200 && movecontact && time >= 6 && time <= 20
;-----------------------------------------------------------------------------

[State ]
type=ctrlset
trigger1=ishelper  ;;  keyctrl=1 for helpers enables access to this statedef. With it one of the benefits is you can re map all palettes with one controller
value=0

[State ]
type=helper
trigger1=!numhelper(256)
trigger1=roundno=1&&stateno=5900
id=256
stateno=256






