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

;-| Special Motions |------------------------------------------------------

[command]
name = "Combobreaker"
command = a+b+c
time = 20

[Command]
name = "Pumpkin_2"     ;Required (do not remove)
command = D,DB,B,b
time = 25

[Command]
name = "Pumpkin"     ;Required (do not remove)
command = D,DB,B,c
time = 25

[Command]
name = "Astral"     ;Required (do not remove)
command = D,DB,B,D,DB,B,a
time = 27;30;25

[Command]
name = "airbomb"     ;Required (do not remove)
command = D,DF,F,D,DF,F,c
time = 25

[Command]
name = "Wind"     ;Required (do not remove)
command = D,DB,B,D,DB,B,b
time = 27;30;25

[Command]
name = "Baden_Baden_Lily_A"     ;Required (do not remove)
command = D,DB,B,D,DB,B,c
time = 27;30;25

[Command]
name = "Baden_Baden_Lily"     ;Required (do not remove)
command = D,DB,B,D,DB,B,c
time = 27;30;25

[Command]
name = "Tiny_Lobelia_A3"     ;Required (do not remove)
command = D,DF,F,c
time = 15

[Command]
name = "Tiny_Lobelia_A2"     ;Required (do not remove)
command = D,DF,F,b
time = 15

[Command]
name = "Tiny_Lobelia_A"     ;Required (do not remove)
command = D,DF,F,a
time = 15

[Command]
name = "Tiny_Lobelia_Can2"     ;Required (do not remove)
command = D,DF,F,c
time = 15

[Command]
name = "Tiny_Lobelia_Can"     ;Required (do not remove)
command = D,DF,F,b
time = 15

[Command]
name = "Tiny_Lobelia"     ;Required (do not remove)
command = D,DF,F,a
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

;---

[Command]
name = "holdfwd"
Command = /$F
time = 1

[Command]
name = "holdback"
Command = /$B
time = 1

[Command]
name = "holdup"
Command = /$U
time = 1

[Command]
name = "holddown"
Command = /$D
time = 1

[Command]
name = "HoldX"
Command = /$x
time = 1

[Command]
name = "HoldY"
Command = /$y
time = 1

[Command]
name = "HoldZ"
Command = /$z
time = 1

[Command]
name = "HoldA"
Command = /$a
time = 1

[Command]
name = "HoldB"
Command = /$b
time = 1

[Command]
name = "HoldC"
Command = /$c
time = 1

[Command]
name = "HoldS"
Command = /$s
time = 1

[Command]
name = "CPU"
command = a
time = 99

[Command]
name = "CPU"
command = b
time = 99

[Command]
name = "CPU"
command = c
time = 99

[Command]
name = "CPU"
command = x
time = 99

[Command]
name = "CPU"
command = y
time = 99

[Command]
name = "CPU"
command = z
time = 99

[Command]
name = "CPU"
command = s
time = 99

[Command]
name = "CPU"
command = U
time = 99

[Command]
name = "CPU"
command = D
time = 99

[Command]
name = "CPU"
command = B
time = 99

[Command]
name = "CPU"
command = F
time = 99

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

[State 0, VarSet]
type = VarSet
trigger1 = !AILevel
var(58) = 0

[State -1]
type = VarSet
v = 58
value = 1
triggerall = AIlevel != 1
;triggerall = AIlevel != 2
triggerall = Var(32) = 1
trigger1 = AILevel 

;--------------------

;HellAI

[State -1, 230AI]
type = ChangeState
value = 0
triggerall = anim != [5301,5303]
triggerall = !(enemy,AILevel) && authorname = "Speedy9199"
triggerall = AIlevel != 1
triggerall = AIlevel != 2
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = stateno = 40
triggerall = p2stateno != 40
triggerall = alive
triggerall = var(58) = 1
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
trigger1 = 1;random%(1) = 0
trigger1 = ctrl

[State -1, 230AI]
type = ChangeState
value = 0
triggerall = anim != [5301,5303]
triggerall = !(enemy,AILevel) && authorname = "Speedy9199"
triggerall = AIlevel != 1
triggerall = AIlevel != 2
triggerall = stateno = 10
;triggerall = p2statetype != C ;|| p2statetype != L
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 281;251;66;251
trigger1 = 1;random%(1) = 0
trigger1 = ctrl

[State -1, AI Block]
Type = ChangeState
Value = 40
triggerall = anim != [5301,5303]
triggerall = stateno != [900,915]
triggerall = anim != [120,159]
triggerall = stateno != [120,159]
triggerall = stateno != 10
triggerall = prevstateno != 40
triggerall = stateno != 40
triggerall = var(58) = 1 ;|| var(58) = 2
triggerall = !(enemy,AILevel) && authorname = "Speedy9199"
triggerall = AIlevel != 1
triggerall = AIlevel != 2
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = Movetype != A
triggerall = !(p2statetype = C)
triggerall = p2stateno = 40 && (enemy,vel X = 0)
triggerall = alive
triggerall = statetype = S
;triggerall = p2bodydist x <= 400
trigger1 = (p2statetype = S)
trigger2 = ctrl
trigger3 = (p2statetype = A)
IgnoreHitPause = 1

[State -1, 230AI]
type = ChangeState
value = 10;11
triggerall = anim != [5301,5303]
triggerall = stateno != 99
triggerall = stateno != [120,159]
;triggerall = P2statetype != L
triggerall = Movetype != A
triggerall = P2Movetype != A
triggerall = !(enemy,AILevel) && authorname = "Speedy9199"
triggerall = Stateno != 10
triggerall = PrevStateno != 10
triggerall = stateno != 11
triggerall = prevstateno != 11
triggerall = stateno != 12
triggerall = prevstateno != 12
;triggerall = p2stateno = 11
;triggerall = p2statetype = C
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
;triggerall = enemy,pos y >= 0
triggerall = p2statetype != A
triggerall = p2statetype = C || p2statetype = L
trigger1 = p2bodydist x <= 250;250
trigger1 = random%(1) = 0
trigger1 = ctrl
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = statetype != A
;triggerall = inguarddist
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
triggerall = Anim != 21
triggerall = prevstateno != 99
;triggerall = stateno != 99
;triggerall = prevstateno != 101
triggerall = stateno != 101
triggerall = stateno != 3050
triggerall = stateno != 3055
triggerall = stateno != 2700
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = stateno != [900,915]
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = stateno != [1000,1030]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = stateno != 105
triggerall = anim != [120,155]
triggerall = anim != 5
triggerall = enemy,numhelper >= 1 ;&& time <= 8
triggerall = AIlevel != 1
triggerall = AIlevel != 2
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
trigger1 = random%(1) = 0
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
trigger1 = p2movetype = A ;&& time <= 5
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 20
;triggerall = !inguarddist
triggerall = anim != [5301,5303]
triggerall = anim != [120,155]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 8
triggerall = stateno != 10
triggerall = stateno != 40
triggerall = stateno != 20
;triggerall = stateno != 101
triggerall = stateno != 120
triggerall = stateno != 140
triggerall = stateno != 105
triggerall = stateno != 2000
triggerall = stateno != 2001
triggerall = stateno != 900
triggerall = stateno != 910
triggerall = stateno != 1000
triggerall = stateno != 1020
triggerall = stateno != 1030
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = stateno != [68785,68786]
triggerall = roundstate != 0
triggerall = roundstate != 1
triggerall = statetype = S
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = movetype != A
triggerall = p2movetype != I
triggerall = stateno != [70000,70002]
triggerall = stateno != [1000,1030]
triggerall = !(enemy,numproj >= 1)
trigger1 = stateno != 99
trigger1= p2movetype = A && enemy,numproj = 0
trigger1 = p2bodydist x >= 1
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
trigger2 = movetype != A
trigger2 = enemy,numhelper >= 1 && P2movetype = A
trigger2 = ctrl || movetype != H ;ctrl ||
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = p2bodydist x <= Var(9)
;triggerall = backedgebodydist >= Var(9)
;triggerall = inguarddist
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
triggerall = p2bodydist y >= -500
triggerall = p2bodydist y <= 500
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = statetype = S
triggerall = stateno != 3050
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = anim != [120,155]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = stateno != 101
triggerall = stateno != 105
triggerall = prevstateno != 99
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [1000,1030])
triggerall = (stateno != [120,159])
triggerall = (stateno != [900,915])
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
trigger1 = stateno = 99 || stateno = 0 || (stateno = 20 && AILevel = 8)
;trigger1 = enemy,movetype = A
trigger1 = enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
;trigger1 = p2movetype = A
trigger2 = AILevel != 8
trigger2 = movetype != A
trigger2 = enemy,numhelper > 0 && p2movetype = A
trigger2 = ctrl || movetype != H ;ctrl ||
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = p2bodydist x <= Var(9)
;triggerall = backedgebodydist >= Var(9)
;triggerall = inguarddist ;+ 100
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
triggerall = p2bodydist y >= -500
triggerall = p2bodydist y <= 500
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = statetype = C
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = anim != [120,155]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (stateno != [900,915])
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
trigger1 = stateno = 11
;trigger1 = enemy,movetype = A
trigger1 = enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
;trigger1 = p2movetype = A
trigger2 = AILevel != 8
trigger2 = movetype != A
trigger2 = enemy,numhelper > 0 && p2movetype = A
trigger2 = ctrl || movetype != H ;ctrl ||
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = p2bodydist x <= Var(9)
;triggerall = backedgebodydist >= Var(9)
;triggerall = inguarddist + 110
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
;triggerall = (p2bodydist x + 600)/2 >= p2bodydist x
triggerall = p2bodydist y >= -500
triggerall = p2bodydist y <= 500
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = statetype = A
triggerall = stateno != 3055
triggerall = stateno != 2700
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = anim != [120,155]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = stateno != 105
triggerall = prevstateno != 105
triggerall = prevstateno != 51
;triggerall = stateno != 51
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (stateno != [900,915])
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
trigger1 = stateno = 102 && time >= 3 || stateno = 50
;trigger1 = enemy,movetype = A
trigger1 = enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
;trigger1 = p2movetype = A
trigger2 = AILevel != 8
trigger2 = movetype != A
trigger2 = enemy,numhelper > 0 && p2movetype = A
trigger2 = ctrl || movetype != H ;ctrl ||
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 70000
triggerall = anim != [5,6]
triggerall = stateno != 3050
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = stateno != [68785,68786]
triggerall = prevstateno != 70002
triggerall = stateno != 10
triggerall = stateno != 99
triggerall = stateno != 195
triggerall = anim != [5000,5007]
triggerall = stateno != 2000
triggerall = stateno != 2001
triggerall = stateno != 20000 && movetype = H
triggerall = prevstateno != 20000 && movetype = H
triggerall = stateno != 20001 && movetype = H
triggerall = prevstateno != 20001 && movetype = H
triggerall = stateno != 20002 && movetype = H
triggerall = prevstateno != 20002 && movetype = H
triggerall = stateno != 20010 && movetype = H
triggerall = prevstateno != 20010 && movetype = H
triggerall = stateno != 20011 && movetype = H
triggerall = prevstateno != 20011 && movetype = H
triggerall = stateno != 20012 && movetype = H
triggerall = prevstateno != 20012 && movetype = H
triggerall = stateno != 420 && movetype = H
triggerall = prevstateno != 420 && movetype = H
triggerall = stateno != 430 && movetype = H
triggerall = prevstateno != 430 && movetype = H
triggerall = stateno != 440 && movetype = H
triggerall = prevstateno != 440 && movetype = H
triggerall = stateno != 450 && movetype = H
triggerall = prevstateno != 450 && movetype = H
triggerall = stateno != 460 && movetype = H
triggerall = prevstateno != 460 && movetype = H
triggerall = stateno != 230 && movetype = H
triggerall = prevstateno != 230 && movetype = H
triggerall = stateno != 240 && movetype = H
triggerall = prevstateno != 240 && movetype = H
triggerall = stateno != 250 && movetype = H
triggerall = prevstateno != 250 && movetype = H
triggerall = stateno != 780 && movetype = H
triggerall = prevstateno != 780 && movetype = H
triggerall = stateno != 751 && movetype = H
triggerall = prevstateno != 751 && movetype = H
triggerall = stateno != 900 && movetype = H
triggerall = prevstateno != 900 && movetype = H
triggerall = stateno != 910 && movetype = H
triggerall = prevstateno != 910 && movetype = H
triggerall = stateno != 220 && movetype = H
triggerall = prevstateno != 220 && movetype = H
triggerall = stateno != 830 && movetype = H
triggerall = prevstateno != 830 && movetype = H
triggerall = stateno != 800 && movetype = H
triggerall = prevstateno != 800 && movetype = H
triggerall = stateno != 725 && Movetype = H
triggerall = prevstateno != 725 && Movetype = H  ;
triggerall = stateno != 700 && Movetype = H
triggerall = prevstateno != 700 && Movetype = H
triggerall = stateno != 1000 && Movetype = H
triggerall = prevstateno != 1000 && Movetype = H
triggerall = stateno != 1020 && Movetype = H
triggerall = prevstateno != 1020 && Movetype = H
triggerall = stateno != 1030 && Movetype = H
triggerall = prevstateno != 1030 && Movetype = H
triggerall = p2stateno != 68785 && Authorname = "Speedy9199"
triggerall = p2stateno != 68786 && Authorname = "Speedy9199"
triggerall = anim != [120,155]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = var(49) != 400
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (prevstateno != [120,159])
triggerall = (stateno != [120,159])
triggerall = stateno != [70000,70002]
triggerall = movetype != A
triggerall = statetype = S
triggerall = statetype != A
trigger1 = enemy,hitdefattr = SCA,NP,SP,HP
;trigger1 = random%(1) = 0
trigger1 = enemy,movetype = A
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
trigger1 = p2movetype = A
trigger2 = enemy,numproj > 0
trigger2 = ctrl
trigger3 = p2movetype = A
trigger3 = movetype != A
trigger3 = enemy,vel x >= 4
;trigger3 = p2bodydist x >= 1
trigger3 = enemy,pos y >= -200
IgnoreHitPause = 1

;---

;---

[State -1, 3050AI]
type = ChangeState
value = 3050
triggerall = anim != [5301,5303]
triggerall = stateno != [70000,70002]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = movetype = H ;&& Time >= 4
triggerall = power >= 2001
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = P2Movetype = A
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 3050AI]
type = ChangeState
value = 3055
triggerall = anim != [5301,5303]
triggerall = stateno != [70010,70012]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = A
triggerall = movetype = H ;&& Time >= 4
triggerall = power >= 2001
triggerall = pos y <= -75
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = P2Movetype = A
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 2500
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = stateno != [68785,68786]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power >= 1000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = P2statetype = A
triggerall = P2movetype = A
triggerall = p2bodydist x <= 235
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(1) = 0

[State -1, 800AI]
type = ChangeState
value = 2500
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power >= 1000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = P2movetype = H
triggerall = p2bodydist x <= 235
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(1) = 0

[State -1, 800AI]
type = ChangeState
value = 2600
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power >= 2000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = P2movetype = H
triggerall = p2bodydist x >= 150
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A) || (p2statetype = L)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 700
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = stateno != [68785,68786]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = P2movetype = A
triggerall = (p2statetype = A)
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 320
triggerall = enemy,pos y >= -500
triggerall = enemy,pos y <= -201
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 775 && Time >= 21
trigger2 = Movecontact
trigger2 = random%(2) = 0

[State -1, 68786AI]
type = ChangeState
value = 749
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = stateno != [68785,68786]
triggerall = stateno != 725
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = P2movetype = A
triggerall = (p2statetype = A)
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 320
triggerall = enemy,pos y >= -450
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 250
triggerall = anim != [5301,5303]
triggerall = anim != [120,155]
triggerall = stateno != 751
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power != 3000 && life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = P2movetype = H
triggerall = p2stateno != [120,155]
triggerall = p2bodydist x <= 295
triggerall = enemy,pos y >= -290
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(2) = 0

[State -1, 68786AI]
type = ChangeState
value = 780
triggerall = stateno != [70000,70002]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 285
triggerall = p2statetype != S
trigger1 = (p2statetype = L)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 725 && Time >= 19
trigger2 = Movecontact

[State -1, 68786AI]
type = ChangeState
value = 725
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = stateno != [68785,68786]
triggerall = stateno != 749
triggerall = !(enemy,vel x >= 4)
triggerall = prevstateno != 725 && !Movecontact
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = P2movetype = A
triggerall = p2bodydist x >= 115  ;125
triggerall = p2bodydist x <= 305 ;305
triggerall = enemy, pos y >= -200
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 775 && Time >= 21
trigger2 = Movecontact
trigger2 = random%(1) = 0
trigger3 = stateno = 99 && P2movetype = A

[State -1, 68786AI]
type = ChangeState
value = 725
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = stateno != 749
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 485 ;505
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger1 = prevstateno = 140

[State -1, 800AI]
type = ChangeState
value = 850
triggerall = anim != [5301,5303]
triggerall = p2name != "Rachel" && authorname = "Speedy9199"
;triggerall = prevstateno != 50
triggerall = stateno != 850
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = p2movetype != H
triggerall = prevstateno != 850
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = !(p2bodydist x <= -1)
triggerall = p2bodydist x < 100
triggerall = p2bodydist y <= 120
triggerall = p2bodydist y >= -120
triggerall = pos y <= -30
;triggerall = p2bodydist y < -100
trigger1 = (p2statetype = A)
trigger1 = random%(1) = 0
trigger1 = ctrl
persistent = 0

[State -1, 800AI]
type = ChangeState
value = 800
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = p2name != "Rachel" && authorname = "Speedy9199"
;triggerall = prevstateno != 0
triggerall = stateno != 800
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = p2movetype != H
triggerall = prevstateno != 800
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 40 ;50
triggerall = enemy, pos y >= 0
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
persistent = 0

[State -1, 800AI]
type = ChangeState
value = 830
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = p2name != "Rachel" && authorname = "Speedy9199"
;triggerall = prevstateno != 0
triggerall = stateno != 830
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = p2movetype != H
triggerall = prevstateno != 830
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 40;50
triggerall = enemy, pos y >= 0
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
persistent = 0

[State -1, 800AI]
type = ChangeState
value = 850
triggerall = anim != [5301,5303]
triggerall = p2name = "Rachel" && authorname = "Speedy9199" && Enemy,AILevel = 8
;triggerall = prevstateno != 50
triggerall = stateno != 850
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = p2movetype != H
triggerall = prevstateno != 850
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = !(p2bodydist x <= -1)
triggerall = p2bodydist x < 100
triggerall = p2bodydist y <= 120
triggerall = p2bodydist y >= -120
triggerall = pos y <= -30
;triggerall = p2bodydist y < -100
trigger1 = (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl
persistent = 0

[State -1, 800AI]
type = ChangeState
value = 800
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = p2name = "Rachel" && authorname = "Speedy9199" && Enemy,AILevel = 8
;triggerall = prevstateno != 0
triggerall = stateno != 800
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = p2movetype != H
triggerall = prevstateno != 800
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 30;40;50
triggerall = enemy, pos y >= 0
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
persistent = 0

[State -1, 800AI]
type = ChangeState
value = 830
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = p2name = "Rachel" && authorname = "Speedy9199" && Enemy,AILevel = 8
;triggerall = prevstateno != 0
triggerall = stateno != 830
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = p2movetype != H
triggerall = prevstateno != 830
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 30;40;50
triggerall = enemy, pos y >= 0
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
persistent = 0

[State -1, 800AI]
type = ChangeState
value = 900
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = numhelper(950) < 1
triggerall = numhelper(960) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = !(enemy,vel x >= 4)
triggerall = p2bodydist x >= 800
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 905
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = numhelper(950) < 1
triggerall = numhelper(960) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = !(enemy,vel x >= 4)
triggerall = p2bodydist x >= 800
triggerall = pos y <= -250
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 910
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = numhelper(960) < 1
triggerall = numhelper(950) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = !(enemy,vel x >= 4)
triggerall = p2bodydist x >= 700
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 915
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = numhelper(960) < 1
triggerall = numhelper(950) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = !(enemy,vel x >= 4)
triggerall = p2bodydist x >= 800
triggerall = pos y <= -250
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 790
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 65
triggerall = p2bodydist x >= -20
triggerall = p2bodydist y >= 1
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C)|| (p2statetype = A)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1000
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = power <= 2499
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = NumHelper(1001) < 1
triggerall = alive
triggerall = var(58) = 1 ;|| var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 200 && p2bodydist x <= 300
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger1 = enemy,anim = 21

[State -1, 800AI]
type = ChangeState
value = 1020
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = power <= 2499
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = NumHelper(1021) < 1
triggerall = alive
triggerall = var(58) = 1 ;|| var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 350 && p2bodydist x <= 550
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger1 = enemy,anim = 21

[State -1, 800AI]
type = ChangeState
value = 1030
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = power <= 2499
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = NumHelper(1031) < 1
triggerall = alive
triggerall = var(58) = 1 ;|| var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 650 && p2bodydist x <= 750
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger1 = enemy,anim = 21

[State -1, 3050AI]
type = ChangeState
value = 2000
triggerall = anim != [5301,5303]
triggerall = command != "CPU"
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = stateno != 2000
triggerall = prevstateno != 2001
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x > 699
triggerall = !p2bodydist x <= 699
triggerall = power < 3000
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A) || (p2statetype = L)
trigger1 = random%(14) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 99
triggerall = anim != [5301,5303]
;triggerall = stateno ^^ 20
triggerall = stateno != 20 ;new
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = stateno != 40
triggerall = stateno != 99
triggerall = prevstateno != 101
triggerall = stateno != [120,159]
triggerall = !(enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP)
triggerall = alive
triggerall = var(58) = 1
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 175;151
triggerall = !p2bodydist x <= 174;150
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(4) = 0 ;4
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 220
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power >= 500 && power <= 999
triggerall = alive
triggerall = var(58) = 1 ;|| var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2movetype != A
triggerall = p2bodydist x >= 285 && p2bodydist x <= 700
triggerall = enemy,pos y >= -600
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(8) = 0 ;5
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 420
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power >= 500 && power <= 999
triggerall = alive
triggerall = var(58) = 1 ;|| var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = C;S
triggerall = p2bodydist x >= 85 && p2bodydist x <= 500
triggerall = enemy,pos y >= -600
trigger1 = (p2statetype = S) || (p2statetype = A)
trigger1 = random%(8) = 0  ;2
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 620
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = power >= 500 && power <= 999
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 85 && p2bodydist x <= 500
trigger1 = (p2statetype = S) || (p2statetype = A)
trigger1 = random%(4) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1010
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = NumHelper(1041) < 1
triggerall = NumHelper(1051) != 1
triggerall = NumHelper(1061) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 200 && p2bodydist x <= 300
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1015
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = NumHelper(1051) < 1
triggerall = NumHelper(1041) != 1
triggerall = NumHelper(1061) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 301 && p2bodydist x <= 500
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1017
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = NumHelper(1061) < 1
triggerall = NumHelper(1051) != 1
triggerall = NumHelper(1041) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 600 && p2bodydist x <= 900 ;500
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 2700
triggerall = anim != [5301,5303]
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 3
triggerall = AILevel != 4
triggerall = AILevel != 5
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = numhelper(1071) != 1
triggerall = numhelper(1081) != 1
triggerall = numhelper(1091) != 1
triggerall = prevstateno != 2700
triggerall = power >= 500 && power <= 1999
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 50
triggerall = p2bodydist x <= 700
triggerall = pos y <= -260
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(6) = 0
trigger1 = ctrl


;--------------------

;AI1-7

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = p2bodydist x <= Var(9)
;triggerall = backedgebodydist >= Var(9)
;triggerall = inguarddist
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
triggerall = p2bodydist y >= -500
triggerall = p2bodydist y <= 500
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = AILevel != 8
triggerall = statetype = S
triggerall = stateno != 3050
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = anim != [120,155]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = stateno != 105
triggerall = prevstateno != 99
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [1000,1030])
triggerall = (stateno != [120,159])
triggerall = (stateno != [900,915])
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
triggerall = stateno = 99 || stateno = 0 ;|| stateno = 20
trigger1 = random%(2) = 0
;trigger1 = inguarddist
;trigger1 = enemy,movetype = A
trigger1 = enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
;trigger1 = p2movetype = A
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = p2bodydist x <= Var(9)
;triggerall = backedgebodydist >= Var(9)
;triggerall = inguarddist ;+ 100
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
triggerall = p2bodydist y >= -500
triggerall = p2bodydist y <= 500
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = AILevel != 8
triggerall = statetype = C
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = anim != [120,155]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (stateno != [900,915])
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
triggerall = stateno = 11
trigger1 = random%(2) = 0
;trigger1 = inguarddist
;trigger1 = enemy,movetype = A
trigger1 = enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
;trigger1 = p2movetype = A
trigger2 = random%(2) = 0
trigger2 = movetype != A
trigger2 = enemy,numhelper > 0 && p2movetype = A
trigger2 = ctrl || movetype != H ;ctrl ||
IgnoreHitPause = 1
persistent = 0

[State -1, AI Block]
Type = ChangeState
Value = 120
triggerall = anim != [5301,5303]
;triggerall = p2bodydist x <= Var(9)
;triggerall = backedgebodydist >= Var(9)
;triggerall = inguarddist ;+ 110
triggerall = floor(backedgebodydist >= p2bodydist x/4.5) || (backedgebodydist <= 100 && (enemy,backedgebodydist >= p2bodydist x))
;triggerall = (p2bodydist x + 600)/2 >= p2bodydist x
triggerall = p2bodydist y >= -500
triggerall = p2bodydist y <= 500
triggerall = AILevel != 1
triggerall = AILevel != 2
triggerall = AILevel != 6
triggerall = AILevel != 7
triggerall = AILevel != 8
triggerall = statetype = A
triggerall = stateno != 3055
triggerall = stateno != 2700
triggerall = stateno != [70000,70002]
triggerall = prevstateno != [70000,70002]
triggerall = anim != [120,155]
triggerall = stateno != 10
triggerall = stateno != 12
triggerall = stateno != 40
triggerall = stateno != 105
triggerall = prevstateno != 105
triggerall = prevstateno != 51
;triggerall = stateno != 51
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (stateno != [900,915])
triggerall = stateno != [750,752]
triggerall = stateno != 780
triggerall = (prevstateno != [120,159])
triggerall = movetype != A
triggerall = stateno = 102 && time >= 3 || stateno = 50
trigger1 = random%(2) = 0
;trigger1 = inguarddist
;trigger1 = enemy,movetype = A
trigger1 = enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
;trigger1 = p2movetype = A
trigger2 = random%(2) = 0
trigger2 = movetype != A
trigger2 = enemy,numhelper > 0 && p2movetype = A
trigger2 = ctrl || movetype != H ;ctrl ||
IgnoreHitPause = 1
persistent = 0

;---

[State -1, AI Block]
Type = ChangeState
Value = 70000
triggerall = anim != [5,6]
triggerall = stateno != 2000
triggerall = stateno != 2001
triggerall = stateno != 3050
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = stateno != [68785,68786]
triggerall = prevstateno != 70002
triggerall = stateno != 230
triggerall = stateno != 780
triggerall = stateno != 751
triggerall = stateno != 99
triggerall = stateno != 800
triggerall = stateno != 830
triggerall = AIlevel != 1
triggerall = AIlevel != 2
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = var(49) != 400
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (prevstateno != [120,159])
triggerall = stateno != [70000,70002]
triggerall = movetype != A
triggerall = statetype = S
triggerall = statetype != A
trigger1 = enemy,hitdefattr = SCA,NP,SP,HP
;trigger1 = random%(2) = 0
trigger1 = enemy,movetype = A
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
trigger1 = p2movetype = A
trigger2 = enemy,numproj > 0
trigger2 = ctrl
IgnoreHitPause = 1

[State -1, AI Block]
Type = ChangeState
Value = 70000
triggerall = anim != [5,6]
triggerall = stateno != 2000
triggerall = stateno != 2001
triggerall = stateno != 3050
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = stateno != [68785,68786]
triggerall = prevstateno != 70002
triggerall = stateno != 230
triggerall = stateno != 780
triggerall = stateno != 751
triggerall = stateno != 99
triggerall = stateno != 800
triggerall = stateno != 830
triggerall = AILevel != 8
triggerall = AILevel != 3
triggerall = var(49) != 400
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = (stateno != [120,159])
triggerall = (prevstateno != [120,159])
triggerall = stateno != [70000,70002]
triggerall = movetype != A
triggerall = statetype = S
triggerall = statetype != A
trigger1 = enemy,hitdefattr = SCA,NP,SP,HP
trigger1 = random%(3) = 0;2
trigger1 = enemy,movetype = A
trigger1 = ctrl || movetype != H ;ctrl ||
trigger1 = movetype != A
trigger1 = p2movetype = A
trigger2 = enemy,numproj > 0
trigger2 = ctrl
IgnoreHitPause = 1

[State -1, 68785AI]
type = ChangeState
value = 68785
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 120
triggerall = P2movetype = A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(7) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 68786
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 120
triggerall = P2movetype = A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(7) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 800
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = stateno != 751
;triggerall = prevstateno != 0
;triggerall = stateno != 800
triggerall = p2movetype != H
triggerall = prevstateno != 800
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 30;40;50
triggerall = enemy, pos y >= 0
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 830
triggerall = anim != [5301,5303]
Triggerall = AILevel != 8
triggerall = stateno != 751
;triggerall = prevstateno != 0
;triggerall = stateno != 830
triggerall = p2movetype != H
triggerall = prevstateno != 830
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 30;40;50
triggerall = enemy, pos y >= 0
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 230
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = alive
triggerall = var(58) = 1 
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
;triggerall = p2bodydist x >= 51
triggerall = p2bodydist x <= 85
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 2800
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = power >= 3000
triggerall = life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 60
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact

[State -1, 800AI]
type = ChangeState
value = 2800
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = AIlevel != 8
triggerall = power >= 3000
triggerall = life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 60
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(4) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact

[State -1, 800AI]
type = ChangeState
value = 2550
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = power >= 1000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 105
trigger1 = (p2statetype = A)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 630 && Time >= 10
trigger2 = Movecontact
trigger2 = random%(2) = 0

[State -1, 800AI]
type = ChangeState
value = 2550
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = AIlevel != 8
triggerall = power >= 1000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 105
trigger1 = (p2statetype = A)
trigger1 = random%(4) = 0
trigger1 = ctrl
trigger2 = stateno = 630 && Time >= 10
trigger2 = Movecontact
trigger2 = random%(5) = 0

[State -1, 800AI]
type = ChangeState
value = 2500
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = AIlevel != 8
triggerall = power >= 1000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 105
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(2) = 0

[State -1, 800AI]
type = ChangeState
value = 2500
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = AIlevel != 8
triggerall = power >= 1000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 105
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(4) = 0
trigger1 = ctrl
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(5) = 0

[State -1, 800AI]
type = ChangeState
value = 2600
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AIlevel != 3
triggerall = AIlevel != 4
triggerall = AIlevel != 5
triggerall = AIlevel != 8
triggerall = power >= 2000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 150
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A) || (p2statetype = L)
trigger1 = random%(4) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 2600
triggerall = anim != [5301,5303]
triggerall = (stateno != [120,159])
triggerall = stateno != 751
triggerall = AIlevel != 6
triggerall = AIlevel != 7
triggerall = AIlevel != 8
triggerall = power >= 2000
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 150
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A) || (p2statetype = L)
trigger1 = random%(11) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 220
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = power >= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 85 && p2bodydist x <= 700
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(5) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 850
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
;triggerall = prevstateno != 50
triggerall = p2movetype != H
triggerall = prevstateno != 850
;triggerall = stateno != 850
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = !(p2bodydist x <= -1)
triggerall = p2bodydist x < 100
triggerall = p2bodydist y <= 120
triggerall = p2bodydist y >= -120
triggerall = pos y <= -30
;triggerall = p2bodydist y < -100
trigger1 = (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 99
triggerall = anim != [5301,5303]
;triggerall = stateno ^^ 20
triggerall = stateno != 20 ;new
triggerall = AILevel != 8
triggerall = stateno != 40
triggerall = stateno != 99
triggerall = prevstateno != 101
triggerall = stateno != [120,159]
triggerall = !(enemynear,hitdefattr = SCA,NA,SA,HA,NP,SP,HP)
triggerall = alive
triggerall = var(58) = 1
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 245;205
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(4) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 240
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = power != 3000 && life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 145
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(2) = 0
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 230 && Time%2 >= 16
trigger3 = Movecontact
trigger3 = random%(2) = 0

[State -1, 68786AI]
type = ChangeState
value = 250
triggerall = anim != [5301,5303]
triggerall = anim != [120,155]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = power != 3000 && life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 135
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger2 = random%(2) = 0
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 230 && Time%2 >= 16
trigger3 = Movecontact
trigger3 = random%(2) = 0

[State -1, 68786AI]
type = ChangeState
value = 420
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = power >= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = C;S
triggerall = p2bodydist x >= 85 && p2bodydist x <= 250;280;500
trigger1 = (p2statetype = S) || (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl


[State -1, 68786AI]
type = ChangeState
value = 430 
triggerall = anim != [5301,5303]
triggerall = power != 3000 && life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = C;S
triggerall = p2bodydist x <= 65;65
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 440
triggerall = anim != [5301,5303]
triggerall = power != 3000 && life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = C
triggerall = p2bodydist x <= 95;105
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 430 && Time >= 9
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 430 && Time%2 >= 9
trigger3 = Movecontact

[State -1, 68786AI]
type = ChangeState
value = 450
triggerall = anim != [5301,5303]
triggerall = power != 3000 && life <= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 45
trigger1 = (p2statetype = S) || (p2statetype = C)  || (p2statetype = L)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 620
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = power >= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 85 && p2bodydist x <= 500
trigger1 = (p2statetype = S) || (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 630
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 1 
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 65
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 640
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 1  
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 95
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 630 && Time >= 10
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 630 && Time%2 >= 10
trigger3 = Movecontact

[State -1, 68786AI]
type = ChangeState
value = 650
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 25
triggerall = p2bodydist y <= -25
trigger1 = (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 700
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 200
triggerall = P2movetype = H
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(3) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 775 && Time >= 21
trigger2 = Movecontact
trigger2 = random%(2) = 0
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 775 && Time%2 >= 21
trigger3 = Movecontact
trigger3 = random%(2) = 0


[State -1, 68786AI]
type = ChangeState
value = 725
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 195
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 775 && Time >= 21
trigger2 = Movecontact
trigger2 = random%(2) = 0
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 775 && Time%2 >= 21
trigger3 = Movecontact
trigger3 = random%(2) = 0

[State -1, 68786AI]
type = ChangeState
value = 749
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 225
triggerall = p2bodydist y >= 45
trigger1 = (p2statetype = A)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 68786AI]
type = ChangeState
value = 775
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 205
triggerall = P2movetype = H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 230 && Time >= 16
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 230 && Time%2 >= 16
trigger3 = Movecontact

[State -1, 68786AI]
type = ChangeState
value = 780
triggerall = prevstateno != 780 && random%2 = 0
triggerall = stateno != [70000,70002]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x <= 285
trigger1 = (p2statetype = S) || (p2statetype = C)|| (p2statetype = A) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 725 && Time >= 19
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 725 && Time%2 >= 19
trigger3 = Movecontact

[State -1, 68786AI]
type = ChangeState
value = 790
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 65
triggerall = p2bodydist y >= 1
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C)|| (p2statetype = A)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 3050AI]
type = ChangeState
value = 3050
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 320
triggerall = movetype = H ;&& Time >= 4
triggerall = power >= 2000
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = P2Movetype = A
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 3050AI]
type = ChangeState
value = 3055
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = A
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 320
triggerall = movetype = H ;&& Time >= 4
triggerall = power >= 2000
triggerall = pos y <= -75
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = P2Movetype = A
trigger1 = random%(3) = 0
trigger1 = ctrl


[State -1, 800AI]
type = ChangeState
value = 900
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = prevstateno != [5000,5011]
triggerall = AILevel != 8
triggerall = numhelper(950) < 1
triggerall = numhelper(960) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 300
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 905
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = numhelper(950) < 1
triggerall = numhelper(960) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 300
triggerall = pos y <= -250
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 910
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = prevstateno != [5000,5011]
triggerall = numhelper(960) < 1
triggerall = numhelper(950) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 200
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 915
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = numhelper(960) < 1
triggerall = numhelper(950) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 300
triggerall = pos y <= -250
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1000
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel !=8
triggerall = NumHelper(1001) < 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 200 && p2bodydist x <= 400
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1010
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = NumHelper(1041) < 1
triggerall = NumHelper(1051) != 1
triggerall = NumHelper(1061) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 300 && p2bodydist x <= 500
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1015
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = NumHelper(1051) < 1
triggerall = NumHelper(1041) != 1
triggerall = NumHelper(1061) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 400 && p2bodydist x <= 600
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1017
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = NumHelper(1061) < 1
triggerall = NumHelper(1051) != 1
triggerall = NumHelper(1041) != 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 500 && p2bodydist x <= 700 ;500
triggerall = pos y <= -175
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1020
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = NumHelper(1021) < 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 300 && p2bodydist x <= 500
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 1030
triggerall = stateno != [120,155]
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = AILevel != 8
triggerall = NumHelper(1031) < 1
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 500 && p2bodydist x <= 700
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = L)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 800AI]
type = ChangeState
value = 2700
triggerall = anim != [5301,5303]
triggerall = AILevel != 8
triggerall = numhelper(1071) != 1
triggerall = numhelper(1081) != 1
triggerall = numhelper(1091) != 1
triggerall = prevstateno != 2700
triggerall = power >= 500
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x >= 50
triggerall = pos y <= -260
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl

[State -1, 3050AI]
type = ChangeState
value = 2000
triggerall = anim != [5301,5303]
triggerall = command != "CPU"
triggerall = AILevel != 8
triggerall = stateno != 2000
triggerall = prevstateno != 2001
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x > 400
triggerall = !p2bodydist x <= 190
triggerall = power < 3000
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A) || (p2statetype = L)
trigger1 = random%(14) = 0
trigger1 = ctrl

;------------

[State -1]
type = VarSet
v = 58
value = 2
triggerall = AIlevel != 1
;triggerall = AIlevel != 2
triggerall = Var(32) = 2
trigger1 = AILevel 

[State -1, 230AI]
type = ChangeState
value = 105
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = stateno != 20
triggerall = stateno != 120
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 1
triggerall = p2bodydist x <= 600
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 230AI]
type = ChangeState
value = 102
triggerall = anim != [5301,5303]
triggerall = anim != [120,159]
triggerall = stateno != [120,159]
triggerall = stateno != 106
triggerall = stateno != 102
triggerall = prevstateno != 102
triggerall = stateno != 103
triggerall = prevstateno != 103
triggerall = stateno = 50 && time >= 4 ;3
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A ;&& time >= 9
triggerall = statetype != S
;triggerall = pos y <= -75;vel y >= -460 ;500
triggerall = pos y <= -200 ;215
triggerall = p2bodydist x >= 90
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(5) = 0
trigger1 = ctrl

[State -1, 230AI]
type = ChangeState
value = 40
triggerall = anim != [5301,5303]
triggerall = anim != [120,159]
triggerall = stateno != [120,159]
;triggerall = AILevel != 8
triggerall = stateno != 10
triggerall = prevstateno != 40
triggerall = stateno != 40
triggerall = stateno != 52
triggerall = stateno != [120,159]
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = p2bodydist x >= 165
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 230AI]
type = ChangeState
value = 428
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = C
triggerall = p2bodydist x <= 190 ;210
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl

[State -1, 230AI]
type = ChangeState
value = 429
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = C
triggerall = p2bodydist x <= 220;240
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(1) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 428 && Time >= 9
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 428 && Time%2 >= 9
trigger3 = Movecontact

[State -1, 230AI]
type = ChangeState
value = 430
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = C
triggerall = p2bodydist x <= 240;260
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 429 && Time >= 9
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 429 && Time%2 >= 9
trigger3 = Movecontact

[State -1, 230AI]
type = ChangeState
value = 440
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = C
triggerall = p2bodydist x <= 250;270;290
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 430 && Time >= 9
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 430 && Time%2 >= 9
trigger3 = Movecontact

[State -1, 68786AI]
type = ChangeState
value = 230
triggerall = anim != [5301,5303]
triggerall = stateno != 751
triggerall = alive
triggerall = var(58) = 2 
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
;triggerall = p2bodydist x >= 51
triggerall = p2bodydist x <= 85
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random%(3) = 0
trigger1 = ctrl

[State -1, 650AI]
type = ChangeState
value = 630
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = random%(2) = 0
triggerall = alive
triggerall = var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != S
triggerall = statetype = A
triggerall = p2bodydist x >= 100
triggerall = p2bodydist x <= 349 ;50
triggerall = p2bodydist y <= 150
triggerall = p2bodydist y >= -170
trigger1 = (p2statetype = S) || (p2statetype = A) || (p2statetype = C)
trigger1 = ctrl
trigger2 = prevstateno = 102
trigger2 = stateno = 50 && Time >= 1

[State -1, 68786AI]
type = ChangeState
value = 640
triggerall = stateno != 3055
triggerall = anim != [5301,5303]
triggerall = alive
triggerall = var(58) = 2 
triggerall = !Win
triggerall = !Lose
triggerall = statetype = A
triggerall = statetype != S
triggerall = p2bodydist x <= 250
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random%(2) = 0
trigger1 = ctrl
trigger2 = AILevel != 1
trigger2 = AILevel != 2
trigger2 = AILevel != 3
trigger2 = AILevel != 4
;trigger2 = AILevel != 5
trigger2 = stateno = 630 && Time >= 10
trigger2 = Movecontact
trigger3 = AILevel != 1
trigger3 = AILevel != 2
trigger3 = AIlevel != 5
trigger3 = AILevel != 6
trigger3 = AILevel != 7
trigger3 = AILevel != 8
trigger3 = stateno = 630 && Time%2 >= 10
trigger3 = Movecontact

[State -1, 195AI]
type = ChangeState
value = 195
triggerall = AIlevel != 8
triggerall = stateno != [1,9999999]
triggerall = alive
triggerall = var(58) = 1 || var(58) = 2
triggerall = !Win
triggerall = !Lose
triggerall = statetype != A
triggerall = statetype = S
triggerall = (life >= 800 && p2life <= 200) ^^ (life <= 200 && p2life >= 800)
triggerall = p2bodydist x >= 600
trigger1 = (p2statetype = S) || (p2statetype = C) || (p2statetype = A)
trigger1 = random >= 750;993
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

;super
[State -1, barrier]
type = ChangeState
value = 70020
;triggerall = anim != [5,6]
triggerall = !var(58)
triggerall = var(49) != 400
triggerall = (command = "holddownback" && command = "hold_a" && command = "hold_b") && time >= 4
trigger1 = (statetype = c) && ctrl

;super
[State -1, barrier]
type = ChangeState
value = 70010
triggerall = prevstateno != 70012
triggerall = !var(58)
triggerall = var(49) != 400
triggerall = (command = "holdback" && command = "hold_a" && command = "hold_b")
trigger1 = (statetype = a) && ctrl


;super
[State -1, barrier]
type = ChangeState
value = 70000
;triggerall = anim != [5,6]
triggerall = !var(58)
triggerall = var(49) != 400
triggerall = (command = "holdback" && command = "hold_a" && command = "hold_b") && time >= 4
trigger1 = (statetype = s) && ctrl

;super
[State -1, combobreaker]
type = ChangeState
value = 3055
triggerall = life != 0
triggerall = !Lose
triggerall = alive
triggerall = power >= 2000
triggerall = command = "Combobreaker"
triggerall = movetype = H && Time >= 4
triggerall = pos y <= -75
trigger1 = (statetype = a) && ctrl

;super
[State -1, combobreaker]
type = ChangeState
value = 3050
triggerall = life != 0
triggerall = !Lose
triggerall = alive
triggerall = power >= 2000
triggerall = command = "Combobreaker"
triggerall = movetype = H && Time >= 4
trigger1 = (statetype = s) && ctrl

; Run Fwd
[State -1, Wind]
type = ChangeState
value = 2800
triggerall = !win
;triggerall = command != "holdback"
triggerall = stateno != 120
triggerall = !AILevel
triggerall = Power >= 3000
triggerall = Life <= 500
trigger1 = command = "Astral"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Wind]
type = ChangeState
value = 2700
triggerall = numhelper(1071) != 1
triggerall = numhelper(1081) != 1
triggerall = numhelper(1091) != 1
triggerall = prevstateno != 2700
triggerall = Power >= 500
trigger1 = command = "airbomb"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Wind]
type = ChangeState
value = 2600
;triggerall = command != "holdback"
triggerall = stateno != 120
triggerall = !AILevel
triggerall = Power >= 2000
trigger1 = command = "Wind"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Baden_Baden_Lily_A]
type = ChangeState
value = 2550
;triggerall = command != "holdback"
triggerall = stateno != 120
triggerall = !AILevel
triggerall = Power >= 1000
trigger1 = command = "Baden_Baden_Lily_A"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Baden_Baden_Lily]
type = ChangeState
value = 2500
;triggerall = command != "holdback"
triggerall = stateno != 120
triggerall = !AILevel
triggerall = Power >= 1000
trigger1 = command = "Baden_Baden_Lily"
trigger1 = statetype = S
trigger1 = ctrl

;powercharge
[State -1, powercharge]
type = ChangeState
value = 2000
triggerall = AILevel != 8
triggerall = prevstateno != 2001
triggerall = !var(58)
triggerall = power<powermax
trigger1 = command = "hold_a" && command = "hold_c"
trigger1 = (statetype = s) && ctrl

; Run Fwd
[State -1, Tiny_lobelia]
type = ChangeState
value = 1030
triggerall = NumHelper(1031) < 1
trigger1 = command = "Tiny_Lobelia_Can2"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Tiny_lobelia]
type = ChangeState
value = 1020
triggerall = NumHelper(1021) < 1
trigger1 = command = "Tiny_Lobelia_Can"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Tiny_lobelia]
type = ChangeState
value = 1017
triggerall = NumHelper(1041) != 1
triggerall = NumHelper(1051) != 1
triggerall = NumHelper(1061) < 1
trigger1 = command = "Tiny_Lobelia_A3"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Tiny_lobelia]
type = ChangeState
value = 1015
triggerall = NumHelper(1061) != 1
triggerall = NumHelper(1041) != 1
triggerall = NumHelper(1051) < 1
trigger1 = command = "Tiny_Lobelia_A2"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Tiny_lobelia]
type = ChangeState
value = 1010
triggerall = NumHelper(1061) != 1
triggerall = NumHelper(1051) != 1
triggerall = NumHelper(1041) < 1
trigger1 = command = "Tiny_Lobelia_A"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Tiny_lobelia]
type = ChangeState
value = 1000
triggerall = NumHelper(1001) < 1
trigger1 = command = "Tiny_Lobelia"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Pumpkin]
type = ChangeState
value = 915
triggerall = numhelper(960) < 1
triggerall = numhelper(950) != 1
trigger1 = command = "Pumpkin_2"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Pumpkin]
type = ChangeState
value = 910
triggerall = numhelper(960) < 1
triggerall = numhelper(950) != 1
trigger1 = command = "Pumpkin_2"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Pumpkin]
type = ChangeState
value = 905
triggerall = numhelper(950) < 1
triggerall = numhelper(960) != 1
trigger1 = command = "Pumpkin"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Pumpkin]
type = ChangeState
value = 900
triggerall = numhelper(950) < 1
triggerall = numhelper(960) != 1
trigger1 = command = "Pumpkin"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(58)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; air Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = !var(58)
triggerall = statetype != S
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; air Run back
[State -1, Run back]
type = ChangeState
value = 103
triggerall = !var(58)
triggerall = statetype != S
trigger1 = command = "BB"
trigger1 = statetype = A
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
triggerall = command = "b" && command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X <= 40 ;< 50
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

; Throw
[State -1, Throw]
type = ChangeState
value = 830
triggerall = command = "b" && command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 10
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
trigger1 = command = "holdback"
trigger1 = p2bodydist X <= 40;< 50
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------

; Throw
[State -1, airThrow]
type = ChangeState
value = 850
triggerall = command = "b" && command = "c"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 100
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 100
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(58)
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Roll forward
[State -1,roll forward]
type = ChangeState
value = 68785
triggerall = command != "holdback"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Roll back
[State -1,roll back]
type = ChangeState
value = 68786
triggerall = command = "holdback"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Power >= 500
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = AILevel != 8
triggerall = command != "holdfwd"
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = AILevel != 8
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = AILevel != 8
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Power >= 500
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AILevel != 8
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel != 8
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AILevel != 8
triggerall = command != "holddownfwd"
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;trip
[State -1, trip]
type = ChangeState
value = 460
triggerall = AILevel != 8
triggerall = command = "c"
triggerall = command = "holddownfwd"
trigger1 = (statetype = c) && ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = power >= 500
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command != "holddown"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Forward attack A
[State -1, forward attack A]
type = ChangeState
value = 700
triggerall = AILevel != 8
triggerall = command = "holdfwd"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Forward attack b
[State -1, forward attack b]
type = ChangeState
value = 725
triggerall = AILevel != 8
triggerall = command = "holdfwd"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Forward attack c
[State -1, forward attack c]
type = ChangeState
value = 749
triggerall = AILevel != 8
triggerall = command = "holdfwd"
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Forward attack c
[State -1, backward attack b]
type = ChangeState
value = 775
triggerall = AILevel != 8
triggerall = command = "holdback"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Forward attack c
[State -1, backward attack c]
type = ChangeState
value = 780
triggerall = AILevel != 8
triggerall = command = "holdback"
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Forward attack c
[State -1, downward attack c]
type = ChangeState
value = 790
triggerall = AILevel != 8
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
