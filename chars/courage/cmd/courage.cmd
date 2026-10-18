; Courage's CMD file.
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
;----- A.I ---------------------------------------------

[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI_19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1
;-| Super Motions |--------------------------------------------------------

[command]
name = "scream"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[command]
name = "eggplant"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[command]
name = "computer"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[command]
name = "shirley"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[command]
name = "FINISHER"
command = ~D, DF, F, D, DF, F, s
time = 35



;-| Special Motions |------------------------------------------------------

[command]
name = "rolling pin"
command = ~D, DB, B, x
time = 15

[command]
name = "sling shot"
command = ~D, DF, F, a
time = 15

[command]
name = "bone swing"
command = ~F, F, a
time = 15

[command]
name = "ray gun"
command = ~D, DB, B, z
time = 15

[command]
name = "club"
command = ~D, DB, B, x
time = 20

[command]
name = "bomb"
command = ~D, DF, F, b
time = 20

[command]
name = "ryu"
command = ~F, F, x
time = 15

[command]
name = "dragon"
command = ~D, DB, B, x+a
time = 15

[command]
name = "counter"
command = ~D, D, a
time = 15

[command]
name = "eustace"
command = ~D, D, x+y
time = 15

[command]
name = "Mouse"
command = ~D, DB, B, a+b
time = 15

[command]
name = "dig"
command = b+c
time = 10

[Command]
Name= "fab"
command = /$F,a+b
time = 1

[Command]
Name= "bab"
command = /$B,a+b
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

[Command]
name = "DU"
command = D, $U
time = 20
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

;-----------------------------------------------------------------------------
;Hold button
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
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

;[Command]
;name = "up_y"
;command = /$U,y
;time = 1

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
name = "start"
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

[Command]
name = "Dodge"
command = a+b
time = 1
;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holds2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
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

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------
[State -1 ,ALL AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
v = 59
value = 1

;---------------------------------------------------------------------------
[State -1, AI Stand guard]
type = ChangeState
triggerall = fvar(0) = 1
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl
value = 130

[State -1, AI S-to-C guard]
type = ChangeState
triggerall = fvar(0) = 1
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
value = 152

[State -1, AI Crouch guard]
type = ChangeState
triggerall = fvar(0) = 1
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = ctrl
trigger2 = random > 979
value = 131

;---------------------------------------------------------------------------
[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 999

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 200
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 210
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 220
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 230
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 240
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 250
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 600
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 610
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 620
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 630
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 640
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 650
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;===========================================================================
;specials

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1001) = 0
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1101) = 0
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1251) = 0
value = 1250

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1451) = 0
value = 1450

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != S)
value = 1500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1550

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != S)
value = 1550

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(4974) = 0
value = 1520

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(6001) = 0
value = 6000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(6105) = 0
value = 6075

;-|-AI Hyper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [60,100]) && (statetype != A)
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != S)
trigger1 = (power > 1000) && (random = [60,100]) && (statetype != S)
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [60,100]) && (statetype != A)
triggerall = numhelper(3101) = 0
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 4000) && (random = [60,100]) && (statetype != A)
triggerall = numhelper(3201) = 0
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [60,100]) && (statetype != A)
triggerall = numhelper(6102) = 0
value = 6100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 5000) && (random = [60,100]) && (statetype != A)
triggerall = life <= lifemax / 4
triggerall = numhelper(20001) = 0
value = 20000

;---------------------------------------------------------------------------
;Combo #1
[State -1,AI Combo Attack]
type = ChangeState
value = 100
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = (P2BodyDist X = [0,500]) && (Random  = [0,100])
trigger1 = p2statetype != C


;Combo #2
[State -1,AI Crouching Light Kick]
type = ChangeState
value = 400
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 410
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 420
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 430
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 440
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 450
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

[State -1]
type = ChangeState
value = 1350
triggerall = var(59)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 100) && (prevstateno != 100)
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;===========================================================================
;---------------------------------------------------------------------------
;Hyper 1 - Raging Scream

[State -1, Raging Scream]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "scream"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)

[State -1, Raging Scream]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "scream"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype != S
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
;---------------------------------------------------------------------------
;Hyper 2 - Eggplant

[State -1, Eggplant]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = command = "eggplant"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
;---------------------------------------------------------------------------
;Hyper 3 - Computer-Droid

[State -1, Computer-Droid]
type = ChangeState
value = 3200
triggerall = power >= 4000
triggerall = command = "computer"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
;---------------------------------------------------------------------------
;Hyper 4 - Shirley the Medium

[State -1, Shirley the Medium]
type = ChangeState
value = 6100
triggerall = NumHelper(6102) = 0
triggerall = power >= 3000
triggerall = command = "shirley"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
;---------------------------------------------------------------------------
;FINISHER! - King Ramses Assist

[State -1, FINISHER]
type = ChangeState
value = 20000
triggerall = power >= 5000
triggerall = NumHelper(20001) = 0
triggerall = command = "FINISHER"
triggerall = life <= lifemax / 4
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = (stateno = 200) && movecontact && time > 2
trigger3 = (stateno = 210) && movecontact && time > 2
trigger4 = (stateno = 220) && movecontact && time > 2
trigger5 = (stateno = 230) && movecontact && time > 2
trigger6 = (stateno = 240) && movecontact && time > 2
trigger7 = (stateno = 250) && movecontact && time > 2
trigger8 = (stateno = 400) && movecontact && time > 2
trigger9 = (stateno = 410) && movecontact && time > 2
trigger10 = (stateno = 420) && movecontact && time > 2
trigger11 = (stateno = 430) && movecontact && time > 2
trigger12 = (stateno = 440) && movecontact && time > 2
trigger13 = (stateno = 450) && movecontact && time > 2
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Special 1 - Rolling Pin

[State -1, Rolling Pin]
type = ChangeState
value = 1100
triggerall = command = "rolling pin"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = NumHelper(1101) = 0
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;Special 2 - Sling Shot

[State -1, Sling Shot]
type = ChangeState
value = 1000
triggerall = command = "sling shot"
triggerall = command != "holddown"
Triggerall = Numhelper(1001) = 0
Triggerall = Numhelper(1006) = 0
Triggerall = Numhelper(1007) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && ctrl
trigger3 = ctrl
;---------------------------------------------------------------------------
;Special 3 - Bone Swing

[State -1, Bone Swing]
type = ChangeState
value = 1200
triggerall = command = "bone swing"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 220) && (movecontact) && time > 2
trigger4 = (stateno = 240) && (movecontact) && time > 2
trigger5 = (stateno = 250) && (movecontact) && time > 2
trigger6 = (stateno = 410) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Special 4 - Bellow Counter

[State -1, Bellow Counter]
type = ChangeState
value = 1250
triggerall = command = "counter"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;Special 5 - Ray Gun

[State -1, Ray Gun]
type = ChangeState
value = 1050
triggerall = command = "ray gun"
triggerall = command != "holddown"
triggerall = Statetype != A && ctrl
trigger1 = (StateType != A) && (HitdefAttr != SC, NA) && ctrl
;---------------------------------------------------------------------------
;Special 6 - Dragon

[State -1, Dragon]
type = ChangeState
value = 1500
triggerall = command = "dragon"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 220) && (movecontact) && time > 2
trigger4 = (stateno = 240) && (movecontact) && time > 2
trigger5 = (stateno = 250) && (movecontact) && time > 2
trigger6 = (stateno = 410) && (movecontact) && time > 2

[State -1, Dragon]
type = ChangeState
value = 1500
triggerall = command = "dragon"
triggerall = command != "holddown"
triggerall = statetype != S
trigger1 = (statetype = a) && ctrl
trigger2 = (stateno = 610) && (movecontact) && time > 2
trigger3 = (stateno = 620) && (movecontact) && time > 2
trigger4 = (stateno = 640) && (movecontact) && time > 2
trigger5 = (stateno = 650) && (movecontact) && time > 2
;----------------------------------
[State -1, Club]
type = ChangeState
value = 1520
triggerall = command = "club"
triggerall = command != "holddown"
triggerall = statetype != A
Triggerall = Numhelper(4925) = 0
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Special 7 - Ryu

[State -1, Ryu]
type = ChangeState
value = 1550
triggerall = command = "ryu"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 220) && (movecontact) && time > 2
trigger4 = (stateno = 240) && (movecontact) && time > 2
trigger5 = (stateno = 250) && (movecontact) && time > 2
trigger6 = (stateno = 410) && (movecontact) && time > 2

[State -1, Ryu]
type = ChangeState
value = 1550
triggerall = command = "ryu"
triggerall = command != "holddown"
triggerall = statetype != S
trigger1 = (statetype = a) && ctrl
trigger2 = (stateno = 610) && (movecontact) && time > 2
trigger3 = (stateno = 620) && (movecontact) && time > 2
trigger4 = (stateno = 640) && (movecontact) && time > 2
trigger5 = (stateno = 650) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Special 8 - Bomb for You

[State -1, Bomb for You]
type = ChangeState
value = 1450
triggerall = command = "bomb"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = Numhelper(1451) = 0
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;Dig

[State -1, Dig a Hole]
type = ChangeState
value = 1350
triggerall = command = "dig"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 1300;1300
triggerall = power < powermax
triggerall = command = "hold_y"
triggerall = command = "hold_b"
trigger1 = ctrl && statetype != A

[State -1, Charge]
type = ChangeState
value = 1301
triggerall = var(58) && RoundState = 2
triggerall = power < powermax
triggerall = ctrl && !inguarddist && statetype != A && random < 10
trigger1 = P2bodydist X > 50
;---------------------------------------------------------------------------
;Helpers

[State -1, Eustace]
type = ChangeState
value = 6000
triggerall = command = "eustace"
trigger1 = statetype != A
trigger1 = ctrl = 1
triggerall = NumHelper(6001) = 0
triggerall = NumHelper(6105) = 0
triggerall = NumHelper(3251) = 0

[State -1, Mr. Mouse]
type = ChangeState
value = 6075
triggerall = command = "Mouse"
trigger1 = statetype != A
trigger1 = ctrl = 1
triggerall = NumHelper(6001) = 0
triggerall = NumHelper(6105) = 0
triggerall = NumHelper(3251) = 0
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
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
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

[State -1, Throw]
type = ChangeState
value = 801
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H
;===========================================================================
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 7000
trigger1 = command = "DU"
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit
;---------------------------------------------------------------------------
;Stand Dodge
[State -1, Stand Dodge]
type = ChangeState
value = 254
triggerall = stateno != 254
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Dodge"
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 230) && (movecontact) && time > 2
trigger4 = (stateno = 400) && (movecontact) && time > 2
trigger5 = (stateno = 430) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 240) && (movecontact) && time > 2
trigger4 = (stateno = 410) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 400) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 400) && (movecontact) && time > 2
trigger6 = (stateno = 410) && (movecontact) && time > 2
trigger7 = (stateno = 430) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 240) && (movecontact) && time > 2
trigger4 = (stateno = 410) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 230) && (movecontact) && time > 2
trigger4 = (stateno = 400) && (movecontact) && time > 2
trigger5 = (stateno = 430) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 240) && (movecontact) && time > 2
trigger4 = (stateno = 410) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 400) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 400) && (movecontact) && time > 2
trigger6 = (stateno = 410) && (movecontact) && time > 2
trigger7 = (stateno = 430) && (movecontact) && time > 2
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210) && (movecontact) && time > 2
trigger3 = (stateno = 240) && (movecontact) && time > 2
trigger4 = (stateno = 410) && (movecontact) && time > 2
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
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 630) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (movecontact) && time > 2
trigger3 = (stateno = 640) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && (movecontact) && time > 2
trigger3 = (stateno = 620) && (movecontact) && time > 2
trigger4 = (stateno = 640) && (movecontact) && time > 2

