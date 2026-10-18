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
;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
; (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
; It may slightly increase the chances of faulty AI activation if the user is
; using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Another important point to make, is that if you want to add additional
; definitions for any of these basic command names, then there are limits on
; what kind of parameters you can use, in order to ensure the reliability of
; the helper method.  That is, if you redefine any of these first 11 commands,
; then you must follow these rules when doing so:
; - Don't use any command string that includes any tildes. (e.g. no "~x",
;   no "~30D")
; - In the command string, don't include any direction that isn't preceeded by
;   a slash. (e.g. no "F", no "$D")
; - Don't put any non-slashed buttons in a command string overloading one of
;   the Hold Dir command names.
; - Using a command string that includes any commas (e.g. no "a,b"), and/or
;   setting the time parameter to greater than 1, may be safe, but I wouldn't
;   risk it.
; An example of what is permissible, is redefining the "z" button like so:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; Other than that particular common type of redefinition, it's probably best
; to simply avoid adding definitions for these 11 command names altogether.
; And remember, this paragraph just has to do with the helper method.  You'll
; still need to make changes to the XOR code, no matter what type of overloading
; you use with the commands used by it.
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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
name = "holdstart"
command = /s
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
name = "start2"
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
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

[Command]
name = "recovery2" ;Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery2" ;Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery2" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery2" ;Required (do not remove)
command = b+c
time = 1

[Command]
name = "recovery2" ;Required (do not remove)
command = a+c
time = 1

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.  You should
; use button-only commands before using any commands with directional
; components, as the latter apparently doesn't work in Linux Mugen 2002.04.14.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

[Command]
name = "QCFXY2"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "QCFX2"
command = ~D, DF, F, x
time = 15

[Command]
name = "QCFY2"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCBX2"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCBY2"
command = ~D, DB, B, y
time = 15

[Command]
name = "DPX2"
command = ~F, D, DF, x
time = 20

[Command]
name = "DPY2"
command = ~F, D, DF, y
time = 20

[Command]
name = "QCFA2"
command = ~D, DF, F, a
time = 15

[Command]
name = "QCFB2"
command = ~D, DF, F, b
time = 15

[Command]
name = "QCBA2"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCBB2"
command = ~D, DB, B, b
time = 15

;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCFXY"
command = ~D, DF, F, x+y
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "DPX"
command = ~F, D, DF, x
time = 20

[Command]
name = "DPY"
command = ~F, D, DF, y
time = 20

[Command]
name = "QCFX"
command = ~D, DF, F, x
time = 15

[Command]
name = "QCFY"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCBX"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCBY"
command = ~D, DB, B, y
time = 15

[Command]
name = "QCFA"
command = ~D, DF, F, a
time = 15

[Command]
name = "QCFB"
command = ~D, DF, F, b
time = 15

[Command]
name = "QCBA"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCBB"
command = ~D, DB, B, b
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

;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; This is generally the best place to put most of your AI directives.  For
; example, this controller would only be executed when the CPU is in control:
;
; [State -1, Haha!]
; type = ChangeState
; trigger1 = var(0) ; (Or use "var(59)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = (StateType = S)
; trigger1 = (MoveType = I)
; trigger1 = (P2MoveType = H)
; trigger1 = (NumEnemy = 1)
; trigger1 = (Enemy,GetHitVar(HitTime) > 60)
; trigger1 = (PrevStateNo != 195)
; trigger1 = (Random < 99)
; value = 195

; And of course, most human-only command-based ChangeStates also belong
; in State -1.  For example, this move would only be performable by a human:
;
; [State -1, Death Before Dishonor]
; type = ChangeState
; trigger1 = (command = "suicide")
; trigger1 = !var(0) ; (Or use "var(59)<1" if you've chosen not to
;                    ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = (StateType != A)
; trigger1 = (MoveType = I)
; value = {suicide state number}

;==================================================================================
;==================================================================================
;==================================================================================

; Kientenhou
[State -1, Stand Light Punch]
type = ChangeState
value = 2000
triggerall = var(59) < 1
triggerall = statetype != A
triggerall = !var(11)
triggerall = power >= 1000
triggerall = ctrl
trigger1 = command = "QCFXY"

;===========================================================================
;---------------------------------------------------------------------------
; Sanyokuran
[State -1, Stand Light Punch]
type = ChangeState
value = 1400
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
trigger1 = command = "QCFA"
trigger1 = var(0) := 0 || 1
trigger2 = command = "QCFB"
trigger2 = var(0) := 1

;---------------------------------------------------------------------------
; Tenshiouzahou
[State -1, Stand Light Punch]
type = ChangeState
value = 1100
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
trigger1 = command = "DPX"
trigger1 = var(0) := ifelse(var(16), 0, 1) || 1
trigger2 = command = "DPY"
trigger2 = var(0) := 1

;---------------------------------------------------------------------------
; Mamestusenshiou
[State -1, Stand Light Punch]
type = ChangeState
value = 1300
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
trigger1 = command = "QCFX"
trigger1 = var(0) := ifelse(var(16), 0, 2) || 1
trigger2 = command = "QCFY"
trigger2 = var(0) := 2

;---------------------------------------------------------------------------
; Yokurestujyusou/Kakurestudakou
[State -1, Stand Light Punch]
type = ChangeState
value = 1200
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3 || (var(16) && pos y < -128)
triggerall = ctrl
trigger1 = command = "QCBA"
trigger1 = var(0) := 0 || 1
trigger2 = command = "QCBB"
trigger2 = var(0) := 1

;---------------------------------------------------------------------------
; Shinjyougokou
[State -1, Stand Light Punch]
type = ChangeState
value = 1000
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
trigger1 = command = "QCBX"
trigger1 = var(0) := 0 || 1
trigger2 = command = "QCBY"
trigger2 = var(0) := 2

;===========================================================================
;---------------------------------------------------------------------------
; Altitude Switch
[State -1, Stand Light Punch]
type = ChangeState
value = 900
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
trigger1 = command = "holdz"
trigger1 = !var(29)
trigger1 = var(29) := 1

;---------------------------------------------------------------------------
; Dodge
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
trigger1 = command = "holdc"
trigger1 = !var(30)
trigger1 = var(30) := 1

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
trigger1 = command = "FF"

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
trigger1 = command = "BB"

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A || var(10) < 3
;trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 600
triggerall = var(59) < 1
triggerall = var(16)
triggerall = var(11) || var(10) = 3
triggerall = ctrl
trigger1 = command = "holddown"
trigger1 = command = "a" || command = "b"

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
trigger1 = command = "x"

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
trigger1 = command = "y"

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
trigger1 = command = "a"

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) < 1
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
trigger1 = command = "b"

;===========================================================================
;---------------------------------------------------------------------------
; AI

[State AI, Action Select]
type = VarSet ;4+3+3+2 + 3+0+3+4 = 21
;triggerall = var(59) > 0
trigger1 = statetype != A || var(10) < 3
trigger1 = movetype != A || time = 1
var(58) = random%21

[State AI, Action Select]
type = VarSet
triggerall = var(59) > 0
trigger1 = enemynear, stateno = [160, 162]
trigger1 = enemynear, movetype != A
trigger1 = enemynear, statetype = S
var(58) = -1

[State AI, Guard Jump/Crouch Response]
type = null
triggerall = var(59) > 0
triggerall = p2movetype != H
trigger1 = p2statetype = A
trigger1 = fvar(39) < 200
trigger1 = fvar(39) := fvar(39) + 1
trigger2 = p2statetype = C
trigger2 = fvar(39) > -200
trigger2 = fvar(39) := fvar(39) - 1
trigger3 = p2statetype = S
trigger3 = fvar(39) := 0
ignorehitpause = 1

[State AI, Enemy Cornered]
type = VarSet
trigger1 = var(59) > 0
var(52) = 0

[State AI, Enemy Cornered]
type = VarSet
triggerall = var(59) > 0
trigger1 = enemynear, vel x < 0
trigger1 = enemynear, backedgebodydist > 5
trigger2 = enemynear, vel x > 0
trigger2 = enemynear, frontedgebodydist > 5
var(52) = 1

[State AI, Guard Ctrl]
type = CtrlSet
trigger1 = var(59) > 0
trigger1 = stateno = [120, 155]
trigger1 = movetype != H
value = 1

[State AI, Super]
type = ChangeState
value = 2000
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = !var(11)
triggerall = power >= 1000
triggerall = ctrl
triggerall = p2dist x + p2dist y > const(size.yscale)*32 || p2dist y > -10
triggerall = !inguarddist
trigger1 = random/fvar(10) < (power/1000.0 + var(53)/300.0)*(p2dist x*0.025 + 10)

[State AI, DP P]
type = ChangeState
value = 1100
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2statetype != A || p2movetype != H
triggerall = random/fvar(10) < 50
trigger1 = var(16)
trigger1 = p2dist y + enemynear, vel y*8 = [-120*const(size.yscale), -32*const(size.yscale)]
trigger1 = p2bodydist x + enemynear, vel x*8 < 128*const(size.xscale)
trigger1 = p2dist x > -32*const(size.xscale)
trigger1 = var(0) := 0 || 1
trigger2 = p2dist y + enemynear, vel y*8 = [-180*const(size.yscale), -48*const(size.yscale)]
trigger2 = p2bodydist x + enemynear, vel x*8 < 96*const(size.xscale)
trigger2 = p2dist x > -48*const(size.xscale)
trigger2 = var(0) := 1

[State AI, DP P]
type = ChangeState
value = 1100
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2bodydist x + enemynear, vel x*7*facing*enemynear, facing*var(52) < const(size.xscale)*32
triggerall = p2dist x > 0
triggerall = p2dist y + enemynear, vel y*7 > const(size.yscale)*-128 || p2dist y > -10
triggerall = p2dist y + enemynear, vel y*7 < const(size.yscale)*32
trigger1 = p2statetype != A || p2movetype != H
trigger1 = random/fvar(10) < 10 + var(53)/10 + 20*(anim = 20 || anim = 100) + (p2movetype = A)*(var(53)/5 + 30 + enemynear, time*5 + 50*(anim = 20 || anim = 100))
trigger1 = var(0) := random%2 || 1
trigger2 = !enemynear, gethitvar(guarded)
trigger2 = p2statetype = A
trigger2 = p2movetype = H
trigger2 = var(44) < 2

[State AI, Standing Medium Kick]
type = ChangeState
value = 210
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2statetype != A || p2movetype != H
triggerall = p2bodydist x < const(size.xscale)*64
triggerall = p2dist y + enemynear, vel y*12 > const(size.yscale)*-90 || p2dist y > -10
triggerall = p2dist y + enemynear, vel y*12 < const(size.yscale)*(64 - 32*p2statetype = C)
triggerall = stateno != [120, 155]
triggerall = !inguarddist
trigger1 = var(58) = [10, 11]
trigger1 = random/fvar(10) < 200
trigger2 = enemynear, stateno = 5400
trigger2 = enemynear, movetype = H

[State AI, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2statetype != A || p2movetype != H
triggerall = p2bodydist x < const(size.xscale)*100
triggerall = p2dist x > const(size.xscale)*16
triggerall = p2dist y + enemynear, vel y*7 > const(size.yscale)*-50 || p2dist y > -10
triggerall = p2dist y + enemynear, vel y*7 < const(size.yscale)*50
triggerall = stateno != [120, 155]
triggerall = !inguarddist
trigger1 = var(58) = [4, 6]
trigger1 = random/fvar(10) < 300 - 150*(p2bodydist x < const(size.xscale)*64)
trigger2 = enemynear, stateno = 5400
trigger2 = enemynear, movetype = H

[State AI, Standing Medium Kick]
type = ChangeState
value = 200
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2statetype != A || p2movetype != H
triggerall = p2bodydist x < const(size.xscale)*120
triggerall = p2dist y + enemynear, vel y*12 > const(size.yscale)*-60 || p2dist y > -10
triggerall = p2dist y + enemynear, vel y*12 < const(size.yscale)*(64 - 32*p2statetype = C)
triggerall = stateno != [120, 155]
trigger1 = var(58) = [7, 9]
trigger1 = random/fvar(10) < 250 - 100*(p2bodydist x < const(size.xscale)*64)
trigger2 = enemynear, stateno = 5400
trigger2 = enemynear, movetype = H
trigger3 = anim = 20 || anim = 100
trigger3 = random/fvar(10) < 200 - 100*(p2bodydist x < const(size.xscale)*64)

[State AI, Standing Light Kick]
type = ChangeState
value = 230
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3; || var(16)
triggerall = ctrl
triggerall = p2statetype != L
triggerall = p2statetype != A || p2movetype != H
triggerall = p2bodydist x < const(size.xscale)*64
triggerall = p2dist x > const(size.xscale)*16
triggerall = p2dist y + enemynear, vel y*7 > const(size.yscale)*-32 || p2dist y > -10
triggerall = p2dist y + enemynear, vel y*7 < const(size.yscale)*(64 - 32*p2statetype = C)
triggerall = stateno != [120, 155]
trigger1 = var(58) = [0, 3]
trigger1 = random/fvar(10) < 400 + 200*(stateno = 230) + 100*enemynear, movetype = H
trigger2 = enemynear, stateno = 5400
trigger2 = enemynear, movetype = H
trigger3 = anim = 20 || anim = 100
trigger3 = random/fvar(10) < 200

[State AI, QCF P]
type = ChangeState
value = 1300
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
triggerall = p2statetype != L || p2stateno > 5099
triggerall = p2statetype != A || p2movetype != H
triggerall = p2dist x - p2dist y > const(size.xscale)*32
triggerall = p2dist y + enemynear, vel y*44 > const(size.yscale)*-90 || p2dist y > -10
triggerall = (p2dist y > 60 && p2dist x > 120 && random*2 < var(53)) || !inguarddist
triggerall = (((var(58)=[18,20])||(var(10)=3&&abs(p2dist x>80)&&random>p2dist x/2))&&random/fvar(10)<(p2dist x+p2dist y+300*p2movetype=H)/1.5-50+100*p2statetype=L)||(enemynear,stateno=5400&&enemynear,movetype=H)
trigger1 = !var(11) && var(10) < 3
trigger1 = p2bodydist x < const(size.xscale)*128
trigger1 = var(0) := ifelse(random%2, 0, 2) || 1
trigger2 = !var(11) && var(10) < 3
trigger2 = var(0) := 2
trigger3 = var(11) || var(10) = 3
trigger3 = p2dist x - p2dist y < const(size.xscale)*96
trigger3 = var(0) := 0 || 1
trigger4 = var(11) || var(10) = 3
trigger4 = var(0) := ifelse(random%2, 0, 2) || 1

[State AI, QCB P]
type = ChangeState
value = 1000
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3 || var(16)
triggerall = ctrl
triggerall = p2statetype != L || p2stateno > 5099
triggerall = p2statetype != A || p2movetype != H
triggerall = p2dist x - p2dist y > const(size.xscale)*-32
triggerall = p2dist y + enemynear, vel y*44 > const(size.yscale)*-90 || p2dist y > -10
triggerall = (p2dist y > 60 && p2dist x > 120 && random*2 < var(53)) || !inguarddist
triggerall = (((var(58)=[12,14])||(var(10)=3&&abs(p2dist x>80)&&random>p2dist x/2))&&random/fvar(10)<(p2dist x+p2dist y+300*p2movetype=H)/2.0+100*p2statetype=L)||(enemynear,stateno=5400&&enemynear,movetype=H)
trigger1 = !var(11) && var(10) < 3
trigger1 = p2bodydist x < const(size.xscale)*96
trigger1 = var(0) := ifelse(random%2, 0, 2) || 1
trigger2 = !var(11) && var(10) < 3
trigger2 = var(0) := 2
trigger3 = var(11) || var(10) = 3
trigger3 = p2dist x - p2dist y < const(size.xscale)*96
trigger3 = var(0) := 0 || 1
trigger4 = var(11) || var(10) = 3
trigger4 = var(0) := 2

[State AI, QCB K]
type = ChangeState
value = 1200
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3 || (var(16) && pos y < -128)
triggerall = ctrl
triggerall = p2statetype != L || p2stateno > 5110
triggerall = p2statetype != A || p2movetype != H
triggerall = pos y > -128 || p2dist x - p2dist y*2  > const(size.xscale)*64
triggerall = p2dist x - p2dist y*2 < const(size.xscale)*192
triggerall = p2dist x > const(size.xscale)*64
triggerall = (p2dist y > 60 && random < var(53)) || stateno != [120, 155]
triggerall = (var(58) = [15, 17]) || (var(10) = 3 && abs(p2dist x > 80) && random > p2dist x/2)
trigger1 = random/fvar(10) < 200 - abs(p2dist x - 260)/2
trigger1 = var(0) := random%2 || 1
trigger2 = p2dist x >= 150
trigger2 = random/fvar(10) < 100
trigger2 = var(0) := random%2 || 1
trigger3 = p2dist x < 150
trigger3 = random/fvar(10) < p2dist x/2
trigger3 = var(0) := 0 || 1

[State AI, D K]
type = ChangeState
value = 600
triggerall = var(59) > 0
triggerall = var(16)
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = enemynear, pos y > -5
triggerall = ctrl
triggerall = var(58) < 12 || random < 50
triggerall = var(10) = 3 || (var(11) && random < 300)
trigger1 = pos y >= -128
trigger1 = random/fvar(10) < 250
trigger1 = p2dist x > -80*const(size.xscale)
trigger1 = p2bodydist x < 45*const(size.xscale)
trigger2 = pos y < -128
trigger2 = random/fvar(10) < 250
trigger2 = p2dist x > -96*const(size.xscale)
trigger2 = p2bodydist x < 60*const(size.xscale)

[State AI, Evade]
type = ChangeState
value = ifelse(!var(11) || random%2, 900, 700)
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
triggerall = prevstateno != 900
triggerall = !var(11) || inguarddist || random < 50
trigger1 = enemynear, hitdefattr = SCA, AT, AA, AP
trigger1 = random/fvar(10) < ((320 - p2bodydist x)/40)*(1 + inguarddist*(1 + enemynear, time*0.05)) + var(53)/30
trigger2 = !enemynear, hitdefattr = SCA, AT, AA, AP || p2movetype != H
trigger2 = random/fvar(10) < ((ifelse(p2bodydist x < 120, 320 - p2bodydist x, 200))/20)*(1 + inguarddist*(1 + enemynear, time*0.05)) + var(53)/30

[State AI, Evade]
type = ChangeState
value = 700
triggerall = var(59) > 0
triggerall = statetype != A || var(10) < 3
triggerall = ctrl
trigger1 = prevstateno != 700
trigger1 = enemynear, hitdefattr = SCA, AT, AA, AP
trigger1 = random/fvar(10) < ((p2bodydist x)/10)*(1 + inguarddist*(1 + enemynear, time*0.05))

[State AI, Close Landing]
type = ChangeState
value = ifelse(random%2 && p2dist x > 0, 1100, 600)
triggerall = var(59) > 0
triggerall = var(16)
triggerall = ctrl
triggerall = var(10) = 3
triggerall = pos y + vel y*2 >= 0
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = enemynear, pos y > -5
triggerall = p2bodydist x < 32
triggerall = p2dist x > -80*const(size.xscale)
trigger1 = random/fvar(10) < 1000
trigger1 = var(0) := random%2 || 1

[State AI, Guard]
type = CtrlSet
trigger1 = var(59) > 0
trigger1 = stateno = [120, 155]
trigger1 = stateno != 140
value = 0

[State AI, Guard]
type = ChangeState
value = 120
triggerall = var(59) > 0
triggerall = ctrl
triggerall = inguarddist
triggerall = p2movetype != A || !enemynear, movecontact
trigger1 = statetype = A
trigger2 = anim = 21
trigger3 = enemynear, movetype != A
trigger4 = prevstateno = 5120
trigger5 = stateno = 50
trigger6 = anim = 0
trigger6 = random/fvar(10) < 250 + enemynear, time*10
trigger7 = random/fvar(10) < 150 + enemynear, time*10
trigger8 = var(48)
ctrl = 0

[State AI, Dash Back]
type = ChangeState
value = 105
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = ctrl
triggerall = !inguarddist && stateno != [120, 155]
triggerall = p2movetype != A
triggerall = backedgebodydist > 40
trigger1 = p2bodydist x < 10*const(size.xscale)
trigger1 = p2statetype != A
trigger1 = random/fvar(10) < 30
trigger2 = p2statetype = L || enemynear, stateno = [5120, 5129]
trigger2 = p2bodydist x < 30 || random < (80 - p2bodydist x)

;---------------------------------------------------------------------------
[State Jump]
type = ChangeState
;triggerall = var(59) < 1
triggerall = var(11)
triggerall = var(10) < 3
triggerall = ctrl
triggerall = stateno != [120, 132]
trigger1 = command = "holdup"
value = 40
ctrl = 0

[State Walk]
type = ChangeState
;triggerall = var(59) < 1
triggerall = var(11)
triggerall = var(10) < 3
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != [120, 132]
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
value = 20
ctrl = 1

[State Walk]
type = ChangeState
triggerall = var(59) > 0
triggerall = var(10) < 3 || stateno < 21
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != [120, 132]
trigger1 = var(51) = 60
trigger2 = var(51) = -60
value = 20
ctrl = 1

