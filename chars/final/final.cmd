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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;[E] starts ai activation code

;***************************************************************************
; CMD
;***************************************************************************

;[Remap]
;
;  Note that if you modify the button remapping scheme, this character will
; still be able to correctly detect the basic commands of other characters
; complying with the basic command order specified below, as long as their
; buttons haven't been remapped.  But no character (not even one with the same
; remapping scheme, not even another instance of this character) will be able to
; correctly detect this character's commands.  This shouldn't ever result in any
; false positives, but it could delay correct positives, and could erroneously
; make the helper AI activation method trigger a false negative in team simul
; modes, in which case the XOR-ed commands method would be needed to provide
; backup.  But of course, this isn't an issue in any version of Mugen prior to
; version 2002.04.14.


; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
;   (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
;   It may slightly increase the chances of faulty AI activation if the user
; is using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Please don't add any extra definitions for any of these 11 basic command
; names, nor for any of the 7 "hold[button]" command names that follow.
; For example, things like this should be avoided:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; There are several workarounds possible to achieve the same effect.  Please
; feel free to ask me about it if you have any uncertainty.
; Violating this rule would cause the KeyCtrl Helper method and/or the XORed
; Commands method to malfunction, and could also interfere with other future
; applications of this command order standard.
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

;--- None of your own command definitions should be above this line. ---

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

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

;[E]
;ends ai activation code

[Command]
name = "hyper_rayo"
command = ~D, DF, F, x+y

[Command]
name = "clones"
command = ~D, DF, F, a+b

[Command]
name = "agarre1"
command = ~D, DF, F, x

[Command]
name = "agarre1"
command = ~D, DF, F, y

[Command]
name = "agarre2"
command = ~D, DF, F, a

[Command]
name = "agarre2"
command = ~D, DF, F, b

[Command]
name = "teleport"
command = ~D, DB, B, x

[Command]
name = "teleport"
command = ~D, DB, B, y

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

:[E]
;ai stuff
;[StateDef -1]
;
; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
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
; trigger1 = var(0) ; (Or use "var(58)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType = S
; trigger1 = MoveType = I
; trigger1 = P2MoveType = H
; trigger1 = NumEnemy = 1
; trigger1 = Enemy,GetHitVar(HitTime) > 60
; trigger1 = PrevStateNo != 195
; trigger1 = Random < 99
; value = 195

; And of course, most human-only command-based ChangeStates also belong
; in State -1.  For example, this move would only be performable by a human:
;
; [State -1, Death Before Dishonor]
; type = ChangeState
; trigger1 = command = "suicide"
; trigger1 = !var(0) ; (Or use "var(58)<1" if you've chosen not to
;                    ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType != A
; trigger1 = MoveType = I
; value = {suicide state number}

;-----------------------------------
;-----------------------------------
;HUMAN
;-----------------------------------
;-----------------------------------

;---------------------------------------------------------------------------
;clones
[State -1, clones]
type = ChangeState
value = 3000
triggerall = var(24)=0
trigger1 = command = "clones"
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;hyper rayo
[State -1, hyper rayo]
type = ChangeState
value = 3500
triggerall = var(24)=0
trigger1 = command = "hyper_rayo"
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 2000

;---------------------------------------------------------------------------
;agarre 1
[State -1, agarre1]
type = ChangeState
value = 1100
triggerall = var(24)=0
trigger1 = command = "agarre1"
trigger1 = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
;agarre 2
[State -1, agarre2]
type = ChangeState
value = 1300
triggerall = var(24)=0
trigger1 = command = "agarre2"
trigger1 = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
;teleport
[State -1, teleport]
type = ChangeState
value = 1200
triggerall = var(24)=0
trigger1 = command = "teleport"
trigger1 = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
;rayo
[State -1, rayo]
type = ChangeState
value = 1000
triggerall = var(24)=0
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "x"
trigger2 = command = "y"

;---------------------------------------------------------------------------
;patada
[State -1, patada]
type = ChangeState
value = 200
triggerall = var(24)=0
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "a"
trigger2 = command = "b"

;------------------------------------------
;AI command
;----------

;AI
[State -2, varset]
type = varset
trigger1 = var(59)=1
var(24)=2

;-----------------------------------
;-----------------------------------
;AI 1
;-----------------------------------
;-----------------------------------

;clones
[State -1, AI clones]
type = ChangeState
value = 3000
triggerall = var(24)=1 && roundstate=2 && statetype =s
triggerall = (p2stateno!=[120,155])
triggerall = p2dist x <= 120 && ctrl
triggerall = power >= 1000
trigger1 = random < 6

;hyper rayo
[State -1, AI hyper rayo]
type = ChangeState
value = 3500
triggerall = var(24)=1 && roundstate=2 && statetype =s
triggerall = p2dist x >= 100 && ctrl
triggerall = power >= 2000
trigger1 = random < 7

;agarre
[State -1, AI agarre]
type = ChangeState
value = ifelse(random<500,1100,1300)
triggerall = var(24)=1 && roundstate=2 && statetype =s
triggerall = (p2stateno!=[120,155])
triggerall = p2dist x <= 120 && ctrl
trigger1 = random < 6

;teleport
[State -1, AI teleport]
type = ChangeState
value = 1200
triggerall = var(24)=1 && roundstate=2 && statetype =s
triggerall = ctrl
trigger1 = p2dist x < 80 && random < 30
trigger1 = (enemynear, stateno = 200)||(enemynear, stateno = 210)||(enemynear, stateno = 230)||(enemynear, stateno = 240)||(enemynear, stateno = 400)||(enemynear, stateno = 410)||(enemynear, stateno = 430)||(enemynear, stateno = 440)
trigger2 = p2dist x < 80 && random < 30
trigger2 = (enemynear, stateno = 600)||(enemynear, stateno = 610)||(enemynear, stateno = 630)||(enemynear, stateno = 640)
trigger3 = p2dist x >= 80 && random < 8
;CONTRA ATAQUES ESPECIFICOS
;peketo dementia 13
trigger4 = enemynear, name = "peketo" && enemynear, stateno = 2100
trigger4 = enemynear, facing != facing && random < 250 && p2dist x < 20
;peketo cuchillos
trigger5 = enemynear, name = "peketo" && enemynear, stateno = 3060
trigger5 = enemynear, facing != facing && random < 10
;ananzi huevo
trigger6 = enemynear, name = "ananzi"
trigger6 = (enemynear, stateno = 1000)||(enemynear, stateno = 1010)
trigger6 = enemynear, facing != facing && random < 10
;ananzi requiem
trigger7 = enemynear, name = "ananzi" && enemynear, stateno = 3000
trigger7 = enemynear, facing != facing && random < 10
;animus sierra
trigger8 = enemynear, name = "animus" && enemynear, stateno = 3200
trigger8 = enemynear, facing != facing && random < 10
;shar-makai giros
trigger9 = enemynear, name = "shar-makai"
trigger9 = (enemynear, stateno = 1200)||(enemynear, stateno = 1202)
trigger9 = enemynear, facing != facing && random < 10
;shar-makai vomito
trigger10 = enemynear, name = "shar-makai" && enemynear, stateno = 3000
trigger10 = enemynear, facing != facing && random < 20
;shar-makai gusanitos
trigger11 = enemynear, name = "shar-makai" && enemynear, stateno = 3100
trigger11 = enemynear, facing != facing && random < 20
;hashi semilla
trigger12 = enemynear, name = "hashi" && enemynear, stateno = 1103
trigger12 = random < 5
;hashi sandia
trigger13 = enemynear, name = "hashi" && enemynear, stateno = 3100
trigger13 = random < 20
;noroko emma-o
trigger14 = enemynear, name = "noroko" && enemynear, stateno = 3000
trigger14 = enemynear, facing != facing && random < 20
;noroko funeral
trigger15 = enemynear, name = "noroko" && enemynear, stateno = 3300
trigger15 = enemynear, facing != facing && random < 20

;rayo
[State -1, AI rayo]
type = ChangeState
value = 1000
triggerall = var(24)=1 && roundstate=2 && statetype = s
triggerall = ctrl
trigger1 = p2dist x >= 80 && random < 4
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger2 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 5
;noroko decoy
trigger3 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 5
;ananzi super huevo
trigger4 = enemynear, name = "ananzi" && enemynear, stateno = 3200 && ctrl && random < 30
;ananzi df
trigger5 = enemynear, name = "ananzi" && enemynear, var(10)!=0 && ctrl && random < 5

;patada
[State -1, AI patada]
type = ChangeState
value = 200
triggerall = var(24)=1 && roundstate=2 && statetype =s
triggerall = (p2stateno!=[120,155])
triggerall = p2dist x <= 150 && ctrl
trigger1 = random < 5
;ataques basicos
trigger2 = p2dist x < 70 && random < 5
trigger2 = (enemynear, stateno = 200)||(enemynear, stateno = 230)||(enemynear, stateno = 400)||(enemynear, stateno = 430)||(enemynear, stateno = 600)||(enemynear, stateno = 630)
;despues de teleport
trigger3 = p2dist x <= 120 && prevstateno = 1200 && random < 100 && time <= 10
;CONTRA ATAQUES ESPECIFICOS
;ananzi estampida
trigger4 = enemynear, name = "ananzi" && enemynear, stateno = 1150
trigger4 = random < 150 && p2dist x < 10
;animus giros
trigger5 = enemynear, name = "animus"
trigger5 = (enemynear, stateno = 1000)||(enemynear, stateno = 1050)
trigger5 = random < 150 && p2dist x < 10
;hashi palmera
trigger6 = enemynear, name = "hashi" && enemynear, stateno = 1000
trigger6 = random < 150 && p2dist x < 10
;hashi tronco
trigger7 = enemynear, name = "hashi" && enemynear, stateno = 3000
trigger7 = random < 150 && p2dist x < 10
;noroko df
trigger8 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 10
;shar-makai df
trigger9 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 10


;-----------------------------------
;-----------------------------------
;AI 2
;-----------------------------------
;-----------------------------------

;clones
[State -1, AI clones]
type = ChangeState
value = 3000
triggerall = var(24)=2 && roundstate=2 && statetype =s
triggerall = (p2stateno!=[120,155])
triggerall = p2dist x <= 120 && ctrl
triggerall = power >= 1000
trigger1 = random < 6
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger2 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 5
;noroko decoy
trigger3 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 5
;hashi palmera
trigger4 = enemynear, name = "hashi" && enemynear, stateno = 1000 && random < 5
;hashi tronco
trigger5 = enemynear, name = "hashi" && enemynear, stateno = 3000 && random < 5
;noroko mujer de nieve
trigger6 = enemynear, name = "noroko" && enemynear, stateno = 1210 && random < 5
;desde atras
trigger7 = enemynear, facing = facing && random < 5

;hyper rayo
[State -1, AI hyper rayo]
type = ChangeState
value = 3500
triggerall = var(24)=2 && roundstate=2 && statetype =s
triggerall = p2dist x >= 100 && ctrl
triggerall = power >= 2000
trigger1 = random < 7

;agarre
[State -1, AI agarre]
type = ChangeState
value = ifelse(random<500,1100,1300)
triggerall = var(24)=2 && roundstate=2 && statetype =s
triggerall = (p2stateno!=[120,155])
triggerall = p2dist x <= 120 && ctrl
trigger1 = random < 6
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger2 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 30
;noroko decoy
trigger3 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 30
;hashi palmera
trigger4 = enemynear, name = "hashi" && enemynear, stateno = 1000 && random < 30
;hashi tronco
trigger5 = enemynear, name = "hashi" && enemynear, stateno = 3000 && random < 30
;noroko mujer de nieve
trigger6 = enemynear, name = "noroko" && enemynear, stateno = 1210 && random < 50
;desde atras
trigger7 = enemynear, facing = facing && random < 80

;teleport
[State -1, AI teleport]
type = ChangeState
value = 1200
triggerall = var(24)=2 && roundstate=2 && statetype =s
triggerall = ctrl
trigger1 = p2dist x < 80 && random < 150
trigger1 = (enemynear, stateno = 200)||(enemynear, stateno = 210)||(enemynear, stateno = 230)||(enemynear, stateno = 240)||(enemynear, stateno = 400)||(enemynear, stateno = 410)||(enemynear, stateno = 430)||(enemynear, stateno = 440)
trigger2 = p2dist x < 80 && random < 150
trigger2 = (enemynear, stateno = 600)||(enemynear, stateno = 610)||(enemynear, stateno = 630)||(enemynear, stateno = 640)
trigger3 = p2dist x >= 80 && random < 8
;CONTRA ATAQUES ESPECIFICOS
;peketo dementia 13
trigger4 = enemynear, name = "peketo" && enemynear, stateno = 2100
trigger4 = enemynear, facing != facing && random < 250 && p2dist x < 80
;peketo cuchillos
trigger5 = enemynear, name = "peketo" && enemynear, stateno = 3060
trigger5 = enemynear, facing != facing && random < 50
;ananzi huevo
trigger6 = enemynear, name = "ananzi"
trigger6 = (enemynear, stateno = 1000)||(enemynear, stateno = 1010)
trigger6 = enemynear, facing != facing && random < 60
;ananzi requiem
trigger7 = enemynear, name = "ananzi" && enemynear, stateno = 3000
trigger7 = enemynear, facing != facing && random < 60
;animus sierra
trigger8 = enemynear, name = "animus" && enemynear, stateno = 3200
trigger8 = enemynear, facing != facing && random < 60
;shar-makai giros
trigger9 = enemynear, name = "shar-makai"
trigger9 = (enemynear, stateno = 1200)||(enemynear, stateno = 1202)
trigger9 = enemynear, facing != facing && random < 60
;shar-makai vomito
trigger10 = enemynear, name = "shar-makai" && enemynear, stateno = 3000
trigger10 = enemynear, facing != facing && random < 100
;shar-makai gusanitos
trigger11 = enemynear, name = "shar-makai" && enemynear, stateno = 3100
trigger11 = enemynear, facing != facing && random < 100
;hashi semilla
trigger12 = enemynear, name = "hashi" && enemynear, stateno = 1103
trigger12 = random < 40
;hashi sandia
trigger13 = enemynear, name = "hashi" && enemynear, stateno = 3100
trigger13 = random < 100
;noroko emma-o
trigger14 = enemynear, name = "noroko" && enemynear, stateno = 3000
trigger14 = enemynear, facing != facing && random < 100
;noroko funeral
trigger15 = enemynear, name = "noroko" && enemynear, stateno = 3300
trigger15 = enemynear, facing != facing && random < 100

;rayo
[State -1, AI rayo]
type = ChangeState
value = 1000
triggerall = var(24)=2 && roundstate=2 && statetype = s
triggerall = ctrl
trigger1 = p2dist x >= 50 && random < 7
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger2 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 30
;noroko decoy
trigger3 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 30
;ananzi super huevo
trigger4 = enemynear, name = "ananzi" && enemynear, stateno = 3200 && ctrl && random < 150
;ananzi df
trigger5 = enemynear, name = "ananzi" && enemynear, var(10)!=0 && ctrl && random < 40

;patada
[State -1, AI patada]
type = ChangeState
value = 200
triggerall = var(24)=2 && roundstate=2 && statetype =s
triggerall = (p2stateno!=[120,155])
triggerall = p2dist x <= 150 && ctrl
;(NO LO HACE) CONTRA ATAQUES ESPECIFICOS
;animus decoy
triggerall = enemynear, stateno != 1200
;noroko decoy
triggerall = enemynear, stateno != 1100
;normal
trigger1 = random < 15
;ataques basicos
trigger2 = p2dist x < 70 && random < 30
trigger2 = (enemynear, stateno = 200)||(enemynear, stateno = 230)||(enemynear, stateno = 400)||(enemynear, stateno = 430)||(enemynear, stateno = 600)||(enemynear, stateno = 630)
;despues de teleport
trigger3 = p2dist x <= 120 && prevstateno = 1200 && random < 100 && time <= 40
;CONTRA ATAQUES ESPECIFICOS
;ananzi estampida
trigger4 = enemynear, name = "ananzi" && enemynear, stateno = 1150
trigger4 = random < 150 && p2dist x < 40
;animus giros
trigger5 = enemynear, name = "animus"
trigger5 = (enemynear, stateno = 1000)||(enemynear, stateno = 1050)
trigger5 = random < 150 && p2dist x < 40
;hashi palmera
trigger6 = enemynear, name = "hashi" && enemynear, stateno = 1000
trigger6 = random < 150 && p2dist x < 40
;hashi tronco
trigger7 = enemynear, name = "hashi" && enemynear, stateno = 3000
trigger7 = random < 150 && p2dist x < 40
;noroko df
trigger8 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 40
;shar-makai df
trigger9 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 40
