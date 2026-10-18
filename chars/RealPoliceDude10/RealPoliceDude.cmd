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
[Command]
name = "RealOriginalEnding"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "RealOriginalEnding"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "RealOriginalEnding"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "RealCavitySearch"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "RealCavitySearch"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "RealCavitySearch"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "RealUndercoverMission"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "RealUndercoverMission"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "RealUndercoverMission"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "RealMVPMike"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "RealMVPMike"
command = ~DF, DF, x+y
time = 20

[Command]
name = "RealMVPMike"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "RealMVPMike"
command = ~DF, DF, y+z
time = 20

[Command]
name = "RealMVPMike"
command = ~F, D, DF, x+z
time = 20

[Command]
name = "RealMVPMike"
command = ~DF, DF, x+z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "PoliceBrutality_a"
command = ~D, DF, F, a

[Command]
name = "PoliceBrutality_b"
command = ~D, DF, F, b

[Command]
name = "PoliceBrutality_c"
command = ~D, DF, F, c

[Command]
name = "KitchenGun_x"
command = ~D, DB, B, x

[Command]
name = "KitchenGun_y"
command = ~D, DB, B, y

[Command]
name = "KitchenGun_z"
command = ~D, DB, B, z

[Command]
name = "SpeedRun_x"
command = ~F, D, DF, x

[Command]
name = "SpeedRun_x"
command = ~DF, DF, x

[Command]
name = "SpeedRun_y"
command = ~F, D, DF, y

[Command]
name = "SpeedRun_y"
command = ~DF, DF, y

[Command]
name = "SpeedRun_z"
command = ~F, D, DF, z

[Command]
name = "SpeedRun_z"
command = ~DF, DF, z

[Command]
name = "Magnum"
command = ~D, DF, F, x

[Command]
name = "MachineGun"
command = ~D, DF, F, y

[Command]
name = "RocketLauncher"
command = ~D, DF, F, z

[Command]
name = "Boulder_a"
command = ~D, DB, B, a

[Command]
name = "Boulder_b"
command = ~D, DB, B, b

[Command]
name = "Boulder_c"
command = ~D, DB, B, c

[Command]
name = "Armor"
command = ~D, DB, B, s

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

[Command]
name = "throw"
command = x+a
time = 1

[Command]
name = "Roll"
command = y+b
time = 1

[Command]
name = "Roll Back"
command = /$B, y+b
time = 1

[Command]
name = "OoB"
command = z+c
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

[Command]
name = "down_z"
command = /$D,z
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

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
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

[State -1, AI ON]
type = VarSet
triggerall = var(59) != 1
triggerall = roundstate = 2
trigger1 = AILevel > 0
v = 59
value = 1
ignorehitpause = 1

[State -1, AI OFF]
type = VarSet
trigger1 = var(59) != 0
trigger1 = roundstate != 2
trigger2 = !Ishelper
trigger2 = AILevel = 0
v = 59
value = 0
ignorehitpause = 1

;===========================================================================
;---------------------------------------------------------------------------
;The Real MVP - Helicopter Mike (uses two super bars)
[State -1, Real Undercover Mission]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "RealMVPMike"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3200)
trigger2 = movecontact
trigger3 = stateno = 1000 && time >= 21
trigger4 = stateno = 1010 && time >= 19
trigger5 = stateno = 1020 && time >= 31
trigger6 = stateno = 1100 && time >= 34
trigger7 = stateno = 1110 && time >= 34
trigger8 = stateno = 1120 && time >= 34
trigger9 = stateno = 1403
trigger10 = stateno = 1423
trigger11 = stateno = 196
trigger12 = stateno = 197

;---------------------------------------------------------------------------
;Real Undercover Mission (uses two super bars)
[State -1, Real Undercover Mission]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "RealUndercoverMission"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3200)
trigger2 = movecontact
trigger3 = stateno = 1000 && time >= 21
trigger4 = stateno = 1010 && time >= 19
trigger5 = stateno = 1020 && time >= 31
trigger6 = stateno = 1100 && time >= 34
trigger7 = stateno = 1110 && time >= 34
trigger8 = stateno = 1120 && time >= 34
trigger9 = stateno = 1403
trigger10 = stateno = 1423
trigger11 = stateno = 196
trigger12 = stateno = 197

;---------------------------------------------------------------------------
;Real Cavity Search (uses one super bar)
[State -1, Real Cavity Search]
type = ChangeState
value = 3050
triggerall = var(59) = 0
triggerall = command = "RealCavitySearch"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3200)
trigger2 = movecontact
trigger3 = stateno = 1000 && time >= 21
trigger4 = stateno = 1010 && time >= 19
trigger5 = stateno = 1020 && time >= 31
trigger6 = stateno = 1100 && time >= 34
trigger7 = stateno = 1110 && time >= 34
trigger8 = stateno = 1120 && time >= 34
trigger9 = stateno = 1403
trigger10 = stateno = 1423
trigger11 = stateno = 196
trigger12 = stateno = 197

;---------------------------------------------------------------------------
;Real Original Ending (uses one super bar)
[State -1, Real Original Ending]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "RealOriginalEnding"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3200)
trigger2 = movecontact
trigger3 = stateno = 1000 && time >= 21
trigger4 = stateno = 1010 && time >= 19
trigger5 = stateno = 1020 && time >= 31
trigger6 = stateno = 1100 && time >= 34
trigger7 = stateno = 1110 && time >= 34
trigger8 = stateno = 1120 && time >= 34
trigger9 = stateno = 1403
trigger10 = stateno = 1423
trigger11 = stateno = 196
trigger12 = stateno = 197

;===========================================================================
;---------------------------------------------------------------------------
;BANG! 
[State -1, BANG!]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "KitchenGun_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact


;---------------------------------------------------------------------------
;BANG! BANG! 
[State -1, BANG! BANG!]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = command = "KitchenGun_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;BANG! BANG! BANG!
[State -1, BANG! BANG! BANG!]
type = ChangeState
value = 1120
triggerall = var(59) = 0
triggerall = command = "KitchenGun_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Excessive Force (Magnum)
[State -1, Excessive Force (Magnum)]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "Magnum"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact
trigger21 = stateno = 220 || stateno = 222 || stateno = 420 || stateno = 422
trigger21 = time >= 12
trigger21 = time < 20
trigger22 = stateno = 221 || stateno = 421
trigger22 = time > 2

;---------------------------------------------------------------------------
;Excessive Force ("Machine Gun")
[State -1, Excessive Force ("Machine Gun")]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "MachineGun"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact
trigger21 = stateno = 220 || stateno = 222 || stateno = 420 || stateno = 422
trigger21 = time >= 12
trigger21 = time < 20
trigger22 = stateno = 221 || stateno = 421
trigger22 = time > 2

;---------------------------------------------------------------------------
;Excessive Force (Rocket Launcher)
[State -1, Excessive Force (Rocket Launcher)]
type = ChangeState
value = 1020
triggerall = var(59) = 0
triggerall = command = "RocketLauncher"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact
trigger21 = stateno = 220 || stateno = 222 || stateno = 420 || stateno = 422
trigger21 = time >= 12
trigger21 = time < 20
trigger22 = stateno = 221 || stateno = 421
trigger22 = time > 2

;---------------------------------------------------------------------------
;Police Brutality
[State -1, Police Brutality]
type = ChangeState
value = 1220
triggerall = var(59) = 0
triggerall = command = "PoliceBrutality_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Police Brutality (Ground n' Pound)
[State -1, Police Brutality (Ground n' Pound)]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "PoliceBrutality_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Police Brutality (Handcuffs)
[State -1, Police Brutality (Handcuffs)]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = command = "PoliceBrutality_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Speedrunning Tactics
[State -1,  Speedrunning Tactics]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "SpeedRun_x"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Speedrunning Tactics
[State -1, Speedrunning Tactics]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = command = "SpeedRun_y"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Speedrunning Tactics
[State -1,  Speedrunning Tactics]
type = ChangeState
value = 1320
triggerall = var(59) = 0
triggerall = command = "SpeedRun_z"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Quick Time Event (Dodge)
[State -1, Quick Time Event (Dodge)]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = command = "Boulder_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Quick Time Event (Fail)
[State -1, Quick Time Event (Fail)]
type = ChangeState
value = 1410
triggerall = var(59) = 0
triggerall = command = "Boulder_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;---------------------------------------------------------------------------
;Quick Time Event (Chris)
[State -1, Quick Time Event (Chris)]
type = ChangeState
value = 1420
triggerall = var(59) = 0
triggerall = command = "Boulder_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && time >= 12
trigger5 = stateno = 221 && time >= 5
trigger6 = stateno = 222
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 420 && time >= 12
trigger13 = stateno = 421 && time >= 5
trigger14 = stateno = 422
trigger15 = stateno = 430 && movecontact
trigger16 = stateno = 440 && movecontact
trigger17 = stateno = 450 && movecontact
trigger18 = stateno = 216 && movecontact
trigger19 = stateno = 217 && movecontact
trigger20 = stateno = 251 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Mind Blowing Suplex
[State -1, Mind Blowing Suplex]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "throw"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;HUAGH!
[State -1, HUAGH!]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = command = "Roll Back"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220 && time > 10
trigger3 = stateno = 420 && time > 10
trigger4 = stateno = 221 && time > 3
trigger5 = stateno = 421 && time > 3

;---------------------------------------------------------------------------
;HUAGH!
[State -1, HUAGH!]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = command = "Roll"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220 && time > 10
trigger3 = stateno = 420 && time > 10
trigger4 = stateno = 221 && time > 3
trigger5 = stateno = 421 && time > 3

;---------------------------------------------------------------------------
;Out of Bounds Suplex
[State -1, Out of Bounds Suplex]
type = ChangeState
value = 950
triggerall = var(59) = 0
triggerall = command = "OoB"
triggerall = statetype != A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stab them. Again.
[State -1, Stab them. Again.]
type = ChangeState
value = 217
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = (stateno = 216) && movecontact
trigger2 = (stateno = 216) && time >= 17

;---------------------------------------------------------------------------
;Stab them.
[State -1, Stab them.]
type = ChangeState
value = 216
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;Watch as the policeman's aim gets progressively worse
[State -1, Watch as the policeman's aim gets progressively worse]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 250) && movecontact
trigger5 = (stateno = 251) && movecontact
trigger6 = (stateno = 216) && movecontact
trigger7 = (stateno = 217) && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 216) && movecontact
trigger6 = (stateno = 217) && movecontact

;---------------------------------------------------------------------------
;Real Roundhouse Kick
[State -1, Real Roundhouse Kick]
type = ChangeState
value = 251
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 216) && movecontact
trigger5 = (stateno = 217) && movecontact
trigger6 = (stateno = 250) && movecontact

;---------------------------------------------------------------------------
;Standing Roundhouse Kick
[State -1, Standing Roundhouse Kick]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 216) && movecontact
trigger5 = (stateno = 217) && movecontact

;---------------------------------------------------------------------------
;Armored Ashley
[State -1, Armored Ashley]
type = ChangeState
value = 197
triggerall = command = "Armor"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && !movecontact
trigger2 = time > 7
trigger3 = stateno = 400 && movecontact
trigger3 = prevstateno != 400

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 216 || stateno = 217 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 400 || stateno = 430 || stateno = 440 || stateno = 450
trigger2 = movecontact

;---------------------------------------------------------------------------
;Watch as the policeman's aim gets progressively worse
[State -1, Watch as the policeman's aim gets progressively worse]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) || (stateno = 44)
trigger2 = (time > 9) || movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 251) && movecontact
trigger7 = (stateno = 216) && movecontact
trigger8 = (stateno = 217) && movecontact


;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || movecontact
trigger3 = stateno = 430 && !movecontact
trigger3 = time > 4

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || movecontact

;---------------------------------------------------------------------------
;Crouching Slide
[State -1, Crouching Slide]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) || (stateno = 440)
trigger2 = (time > 9) || movecontact
trigger3 = (stateno = 250) && movecontact
trigger4 = (stateno = 251) && movecontact


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Roundhouse Kick
[State -1, Jump Roundhouse Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640
trigger2 = movecontact

;----------------------------------------------------------------------------
;AI've succeeded in extricating my subject. Where's the extraction point?

;---------------------------------------------------------------------------
; Interactions with Ashley
;---------------------------------------------------------------------------

;WAIT!
[State -1, AI]
type = ChangeState
value = 197
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
triggerall = life >= 350
trigger1 = var(21) > 1  || teammode = turns || teammode = simul
trigger1 = ctrl
trigger1 = random <= (AILevel * 9)
trigger1 = random <= (AILevel * 10)
trigger1 = p2bodydist x >= 110 || backedgebodydist <= 50
trigger2 = var(21) <= 1
trigger2 = ctrl
trigger2 = random <= (AILevel * 3)
trigger2 = random <= (AILevel * 4)
trigger2 = p2bodydist x >= 150 

;Retreat to Ashley
[State -1, AI]
type = ChangeState
value = 105+(805*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = facing = 1
trigger1 = numhelper(1960)
trigger1 = (pos x) - (helper(1960), pos x) >= 40
trigger2 = ctrl
trigger2 = facing = -1
trigger2 = numhelper(1960)
trigger2 = (pos x) - (helper(1960), pos x) <= -40

;Rush to Ashley's side
[State -1, AI]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = facing = 1
trigger1 = numhelper(1960)
trigger1 = (pos x) - (helper(1960), pos x) <= -80
trigger2 = ctrl
trigger2 = facing = -1
trigger2 = numhelper(1960)
trigger2 = (pos x) - (helper(1960), pos x) >= 80

;Safely Radio Mike
[State -1, AI]
type = ChangeState
value = 3200
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = p2bodydist x >= 100
trigger1 = numhelper(1960) || power >= 4000
;Just kidding this move is safe at any distance from Ashley.
trigger2 = ctrl
trigger2 = p2name = "Zombies" || p4name = "Zombies"
trigger2 = power >= 2000
trigger2 = random <= 60 || power >= 4000

;Safely Cavity Search
[State -1, AI]
type = ChangeState
value = 3050
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = power <= 3000
triggerall = power >= 1000
triggerall = var(23) < 4
trigger1 = ctrl
trigger1 = numhelper(1960)
trigger1 = random <= (AILevel * 43)
trigger1 = random <= (AILevel * 23)
trigger1 = (pos x) - (helper(1960), pos x) >= -80
trigger1 = (pos x) - (helper(1960), pos x) <= 40
trigger1 = p2bodydist x <= 90

;Safely shoot/throw stuff
[State -1, AI]
type = ChangeState
value = 220+(900*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1960)
trigger1 = ctrl
trigger1 = p2bodydist x >= 100
trigger1 = numhelper(1960)
trigger1 = (pos x) - (helper(1960), pos x) >= -80
trigger1 = (pos x) - (helper(1960), pos x) <= 40

;Safely Stanky Leg (Either to hit them or to simply charge meter or even in rare cases infinite them, I don't care)
[State -1, AI]
type = ChangeState
value = 430
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1960)
trigger1 = ctrl || stateno = 430 && !movecontact && time > 4
trigger1 = power < powermax
trigger1 = p2bodydist x < 100
trigger1 = numhelper(1960)
trigger1 = (pos x) - (helper(1960), pos x) >= -80
trigger1 = (pos x) - (helper(1960), pos x) <= 40
trigger2 = ctrl
trigger2 = p2bodydist x <= 45
trigger2 = p2bodydist x >= -10
trigger2 = numhelper(1960)
trigger2 = (pos x) - (helper(1960), pos x) >= -80
trigger2 = (pos x) - (helper(1960), pos x) <= 40

;---------------------------------------------------------------------------
; Neutral and High Priority Stuff
;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, AI]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = ctrl
trigger1 = random <= (AILevel * 63)
trigger1 = random <= (AILevel * 63)
trigger1 = p2bodydist x <= 51
trigger1 = p2bodydist y >= -48
trigger2 = ctrl
trigger2 = p2bodydist x <= 51
trigger2 = numhelper(1950)
trigger2 = helper(1950), movehit
trigger2 = random <= (AILevel * 53)
trigger2 = random <= (AILevel * 53)
trigger3 = p2name = "Zombies" || p4name = "Zombies"
trigger3 = stateno = 430 && movehit
trigger3 = random <= (AILevel * 42)
trigger3 = random <= (AILevel * 30)

;Arrest them!
[State -1, AI]
type = ChangeState
value = 1210
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
trigger1 = var(23) < 4
trigger1 = ctrl
trigger1 = p2bodydist x > 51
trigger1 = p2bodydist x <= 150
trigger1 = numhelper(1950)
trigger1 = helper(1950), movehit
trigger1 = random <= (AILevel * 33)
trigger1 = random <= (AILevel * 23)

;Fuck it, just shoot em.
[State -1, AI]
type = ChangeState
value = 1220
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
trigger1 = var(23) >= 4
trigger1 = ctrl
trigger1 = p2bodydist x > 51
trigger1 = p2bodydist x <= 150
trigger1 = numhelper(1950)
trigger1 = helper(1950), movehit
trigger1 = random <= (AILevel * 33)
trigger1 = random <= (AILevel * 23)

;Approach or retreat?
[State -1, AI]
type = ChangeState
value = 105+(795*(random%2))
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl 
trigger1 = backedgebodydist >= 30
trigger1 = random <= (AILevel * 63)
trigger1 = random <= (AILevel * 63)
trigger1 = p2bodydist x > 51
trigger1 = p2bodydist x <= 160

;HUAGH
[State -1, AI]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = p2movetype = A
trigger1 = backedgebodydist <= 30
trigger1 = ctrl
trigger1 = numhelper(1960) = 0
trigger1 = random <= (AILevel * 78)
trigger1 = random <= (AILevel * 69)
trigger1 = p2bodydist x > 51
trigger1 = p2bodydist x <= 98
trigger2 = p2movetype = A
trigger2 = backedgebodydist <= 30
trigger2 = ctrl
trigger2 = numhelper(1960)
trigger2 = facing = 1
trigger2 = (pos x) - (helper(1960), pos x) <= -80
trigger2 = random <= (AILevel * 63)
trigger2 = random <= (AILevel * 63)
trigger2 = p2bodydist x > 51
trigger2 = p2bodydist x <= 98
trigger3 = p2movetype = A
trigger3 = backedgebodydist <= 30
trigger3 = ctrl
trigger3 = numhelper(1960)
trigger3 = facing = -1
trigger3 = (pos x) - (helper(1960), pos x) >= 80
trigger3 = random <= (AILevel * 63)
trigger3 = random <= (AILevel * 63)
trigger3 = p2bodydist x > 51
trigger3 = p2bodydist x <= 98
trigger4 = numhelper(1960) = 0
trigger4 = ctrl
trigger4 = random <= (AILevel * 75)
trigger4 = random <= (AILevel * 68)
trigger4 = p2bodydist x <= 51
trigger4 = p2movetype = A || enemynear, isHelper && vel x != 0 || enemynear, isHelper && vel y != 0
trigger5 = ctrl
trigger5 = facing = 1
trigger5 = numhelper(1960)
trigger5 = p2movetype = A || enemynear, isHelper && vel x != 0 || enemynear, isHelper && vel y != 0
trigger5 = (pos x) - (helper(1960), pos x) <= -80
trigger6 = ctrl
trigger6 = facing = -1
trigger6 = numhelper(1960)
trigger6 = p2movetype = A || enemynear, isHelper && vel x != 0 || enemynear, isHelper && vel y != 0
trigger6 = (pos x) - (helper(1960), pos x) >= 80

;HUAGH
[State -1, AI]
type = ChangeState
value = 910
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = facing = 1
trigger1 = numhelper(1960)
trigger1 = p2movetype = A || enemynear, isHelper && vel x != 0 || enemynear, isHelper && vel y != 0
trigger1 = (pos x) - (helper(1960), pos x) >= 40
trigger2 = ctrl
trigger2 = facing = -1
trigger2 = numhelper(1960)
trigger2 = p2movetype = A || enemynear, isHelper && vel x != 0 || enemynear, isHelper && vel y != 0
trigger2 = (pos x) - (helper(1960), pos x) <= -40
trigger3 = p2movetype = A
trigger3 = backedgebodydist <= 30
trigger3 = ctrl
trigger3 = numhelper(1960)
trigger3 = facing = 1
trigger3 = (pos x) - (helper(1960), pos x) >= 40
trigger3 = random <= (AILevel * 63)
trigger3 = random <= (AILevel * 63)
trigger3 = p2bodydist x > 51
trigger3 = p2bodydist x <= 98
trigger4 = p2movetype = A
trigger4 = backedgebodydist <= 30
trigger4 = ctrl
trigger4 = numhelper(1960)
trigger4 = facing = -1
trigger4 = (pos x) - (helper(1960), pos x) <= -40
trigger4 = random <= (AILevel * 63)
trigger4 = random <= (AILevel * 63)
trigger4 = p2bodydist x > 51
trigger4 = p2bodydist x <= 98

;Rush to Ashley's side
[State -1, AI]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = facing = 1
trigger1 = numhelper(1960)
trigger1 = (pos x) - (helper(1960), pos x) <= -80
trigger2 = ctrl
trigger2 = facing = -1
trigger2 = numhelper(1960)
trigger2 = (pos x) - (helper(1960), pos x) >= 80

;Rolling around at the speed of HUAGH
[State -1, AI]
type = ChangeState
value = 900+(10*(random%2))
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = random <= (AILevel * 72)
trigger1 = random <= (AILevel * 78)
trigger1 = p2bodydist x > 51
trigger1 = p2bodydist x <= 98

;Speedrunning Tactics
[State -1, AI]
type = ChangeState
value = 1320
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = var(22) != 1
triggerall = var(24) = 0
triggerall = !numhelper(1960)
trigger1 = ctrl
trigger1 = random <= (AILevel * 13)
trigger1 = random <= (AILevel * 8)
trigger1 = p2bodydist x >= 130

;Handgun
[State -1, AI]
type = ChangeState
value = 220+(200*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = ctrl
trigger1 = random <= (AILevel * 43)
trigger1 = random <= (AILevel * 38)
trigger1 = p2bodydist x >= 160
trigger1 = p2bodydist y >= -85
trigger2 = ctrl
trigger2 = random <= (AILevel * 18)
trigger2 = random <= (AILevel * 13)
trigger2 = p2bodydist x >= 49
trigger2 = p2bodydist x < 160
trigger2 = p2bodydist y >= -85

;HIDE!
[State -1, AI]
type = ChangeState
value = 196
triggerall = statetype != A
triggerall = p2statetype = L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
trigger1 = ctrl
trigger1 = random <= (AILevel * 11)
trigger1 = random <= (AILevel * 7)

;HIDE!
[State -1, AI]
type = ChangeState
value = 196
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
trigger1 = ctrl
trigger1 = random <= (AILevel * 12)
trigger1 = random <= (AILevel * 19)
trigger1 = p2bodydist x >= 85
trigger2 = power >= 2000 ;Prepare for an undercover mission, Leon.
trigger2 = ctrl
trigger2 = random <= (AILevel * 33)
trigger2 = random <= (AILevel * 21)
trigger2 = enemynear, pos x >= 75
trigger2 = enemynear, pos y >= -50


;Stanky Leg (Charge Meter)
[State -1, AI]
type = ChangeState
value = 430
triggerall = statetype != A
triggerall = p2statetype = L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = power < powermax
triggerall = enemynear, Hitdefattr != SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
trigger1 = ctrl || stateno = 430 && !movecontact && time > 4
trigger1 = random <= (AILevel * 73)
trigger1 = p2bodydist x >= 110
trigger2 = ctrl || stateno = 430 && !movecontact && time > 4
trigger2 = p2name = "Zombies" || p4name = "Zombies"
trigger2 = power <= 2000


;Gap Closing Boulders
[State -1, AI]
type = ChangeState
value = 1410+(10*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
triggerall = life >= 200
trigger1 = var(21) <= 1
trigger1 = ctrl
trigger1 = random <= (AILevel * 50)
trigger1 = random <= (AILevel * 39)
trigger1 = p2bodydist x >= 115
trigger2 = var(21) > 1
trigger2 = ctrl
trigger2 = random <= (AILevel * 28)
trigger2 = random <= (AILevel * 16)
trigger2 = p2bodydist x >= 115

;Chris!
[State -1, AI]
type = ChangeState
value = 1420
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
triggerall = life < 200
trigger1 = var(21) <= 1
trigger1 = ctrl
trigger1 = random <= (AILevel * 50)
trigger1 = random <= (AILevel * 39)
trigger1 = p2bodydist x >= 115
trigger2 = var(21) > 1
trigger2 = ctrl
trigger2 = random <= (AILevel * 28)
trigger2 = random <= (AILevel * 16)
trigger2 = p2bodydist x >= 115

;Police Brutality (Neutral)
[State -1, AI]
type = ChangeState
value = 1200+(10*(random%3))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
triggerall = var(21) <= 1
trigger1 = var(23) < 4 
trigger1 = ctrl
trigger1 = random <= (AILevel * 28)
trigger1 = random <= (AILevel * 12)
trigger1 = p2bodydist x >= 115

;Police Brutality (Neutral)
[State -1, AI]
type = ChangeState
value = 1200+(20*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
triggerall = var(21) <= 1
trigger1 = var(23) >= 4 || enemynear, life <= 150; Alternative to Police Brutality - Handcuffs
trigger1 = ctrl
trigger1 = random <= (AILevel * 28)
trigger1 = random <= (AILevel * 12)
trigger1 = p2bodydist x >= 115

;Damn, stop wasting ammo
[State -1, AI]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = random <= (AILevel * 28)
trigger1 = random <= (AILevel * 23)
trigger1 = p2bodydist x >= 160
trigger1 = p2bodydist y >= -85
trigger2 = stateno = 220 && time >= 15
trigger2 = p2bodydist x >= 130
trigger2 = p2bodydist y >= -75
trigger2 = random <= (AILevel * 28)
trigger2 = random <= (AILevel * 23)

;Damn, stop wasting ammo
[State -1, AI]
type = ChangeState
value = 1000+(10*(random%3))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = ctrl
trigger1 = random <= (AILevel * 33)
trigger1 = random <= (AILevel * 33)
trigger1 = p2bodydist x >= 160
trigger1 = p2bodydist y >= -85
trigger2 = stateno = 220 && time >= 15
trigger2 = p2bodydist x >= 130
trigger2 = p2bodydist y >= -75
trigger3 = ctrl
trigger3 = p2bodydist x >= 52
trigger3 = numhelper(1950)
trigger3 = helper(1950), movehit
trigger3 = random <= (AILevel * 38)
trigger3 = random <= (AILevel * 43)

;Real Undercover Mission
[State -1, AI]
type = ChangeState
value = 3100
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = numhelper(1950)
trigger1 = ctrl || stateno = 196
trigger1 = enemynear, pos y >= -40 ;While they are near the ground so Ashley can attempt to break their guard.

;Real Cavity Search
[State -1, AI]
type = ChangeState
value = 3050
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(23) < 4
trigger1 = ctrl
trigger1 = random <= (AILevel * 33)
trigger1 = random <= (AILevel * 21)
trigger1 = stateno = 900 || stateno = 910
trigger1 = p2bodydist x <= 85
trigger1 = p2bodydist y >= -90
trigger2 = ctrl
trigger2 = random <= (AILevel * 18)
trigger2 = random <= (AILevel * 11)
trigger2 = enemynear, movetype = A
trigger2 = p2bodydist x <= 75
trigger2 = p2bodydist y >= -90

;Woah, it's like that thing Fox does in Melee except not really at all.
[State -1, AI]
type = ChangeState
value = 620
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = stateno = 105

;Uh oh, it's time for a QTE!
[State -1, AI]
type = ChangeState
value = 1400+(10*(random%3))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = numhelper(1950) = 0
triggerall = numhelper(1960) = 0
triggerall = var(21) <= 1
trigger1 = ctrl
trigger1 = random <= (AILevel * 68)
trigger1 = random <= (AILevel * 72)
trigger1 = p2bodydist x >= 115

;Suplex
[State -1, AI]
type = ChangeState
value = 800+(150*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = random <= (AILevel * 63)
trigger1 = random <= (AILevel * 71)
trigger1 = var(23) < 4
trigger1 = stateno = 900 || stateno = 910
trigger1 = ctrl
trigger1 = p2bodydist x <= 50

;Real Original Ending
[State -1, AI]
type = ChangeState
value = 3000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = power >= 1000
trigger1 = (enemynear, life) <= ceil((enemynear, lifemax) * 0.667)
trigger1 = (enemynear, life) > 0
trigger1 = stateno = 1000
trigger1 = numhelper(1001) != 0
trigger1 = helper(1001), movehit
trigger1 = random <= (AILevel * 74)
trigger1 = random <= (AILevel * 79)

;Speedrunning Tactics
[State -1, AI]
type = ChangeState
value = 1300+(10*(random%3))
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = var(22) != 1
triggerall = var(24) = 0
triggerall = !numhelper(1960)
trigger1 = stateno != 105
trigger1 = ctrl
trigger1 = p2bodydist x > 35
trigger1 = p2bodydist y < -55 || p2bodydist y > 4

;Handgun
[State -1, AI]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = var(22) != 1
triggerall = var(24) = 1 || numhelper(1960)
trigger1 = stateno != 105
trigger1 = ctrl
trigger1 = p2bodydist x > 35
trigger1 = p2bodydist y < -55 || p2bodydist y > 4

;---------------------------------------------------------------------------
; Combo 1: Basic Hit confirm
;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, AI]
type = ChangeState
value = 230
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 200
trigger1 = movehit

;Stand Strong Punch
[State -1, AI]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 230
trigger1 = movehit

;Stab
[State -1, AI]
type = ChangeState
value = 216
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 210
trigger1 = movehit

;Knife Combo
[State -1, AI]
type = ChangeState
value = 217
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 216
trigger1 = movehit

;Stand Strong Kick
[State -1, AI]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 217
trigger1 = movehit

;Stand Roundhouse Kick
[State -1, AI]
type = ChangeState
value = 250
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 240
trigger1 = movehit

;Real Roundhouse Kick 
[State -1, AI]
type = ChangeState
value = 251
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = var(22) = 0 || var(22) > 3 || var(22) < 0 ;Branch off to Combo 2 || var 22 failsafe
trigger1 = stateno = 250
trigger1 = movehit

;Launcher
[State -1, AI]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = var(22) = 1 ;Branch off to Combo 3
trigger1 = stateno = 250
trigger1 = movehit

;Police Brutality - Excessive Force
[State -1, AI]
type = ChangeState
value = 1220
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = var(22) = 2 ;Branch off to Combo 4
trigger1 = var(23) >= 4 || enemynear, life <= 150; Alternative to Police Brutality - Handcuffs
trigger1 = stateno = 250
trigger1 = movehit

;Police Brutality - Handcuffs
[State -1, AI]
type = ChangeState
value = 1210
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = var(22) = 2 ;Branch off to Combo 4
trigger1 = var(23) < 4 ; Stop trying if you miss 4 throws/custom state moves.
trigger1 = stateno = 250
trigger1 = movehit



;---------------------------------------------------------------------------
; Combo 2: Follow Up from Real Roundhouse Kick
;---------------------------------------------------------------------------

;I love you, Kitchen gun!
[State -1, AI]
type = ChangeState
value = 1120
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = stateno = 251
trigger1 = movehit

;Real Original Ending
[State -1, AI]
type = ChangeState
value = 3000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
triggerall = power >= 1000
trigger1 = stateno = 1120
trigger1 = animelem = 15
trigger1 = enemynear, movetype = H

;---------------------------------------------------------------------------
; Combo 3: That one air combo that all my other characters do. Also I guess the first move is a neutral move.
;---------------------------------------------------------------------------

;Air Light Punch
[State -1, AI]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = p2bodydist x <= 35
trigger1 = p2bodydist y >= -55
trigger1 = p2bodydist y <= 4

;Air Light Kick
[State -1, AI]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = stateno = 600 && movehit

;Air Strong Punch
[State -1, AI]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = stateno = 630 && movehit

;Air Strong Kick
[State -1, AI]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = stateno = 610 && movehit

;Air Strong...er Kick?
[State -1, AI]
type = ChangeState
value = 650
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = stateno = 640 && movehit


;---------------------------------------------------------------------------
; Combo 4: Follow Up from Police Brutality - Handcuffs
;---------------------------------------------------------------------------

;See Changestates in State 1211

;---------------------------------------------------------------------------
; Combo 5: Attempt to break their guard.
;---------------------------------------------------------------------------

;Real Cavity Search
[State -1, AI]
type = ChangeState
value = 3050
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = power >= 1000
trigger1 = var(23) < 4
trigger1 = stateno = 200
trigger1 = moveguarded

;Suplex
[State -1, AI]
type = ChangeState
value = 800+(150*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = var(23) < 4
trigger1 = stateno = 200
trigger1 = moveguarded

;Crouch Light Punch or Police Brutality - Ground n' Pound
[State -1, AI]
type = ChangeState
value = 400+(800*(random%2))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = var(23) >= 4
trigger1 = stateno = 200
trigger1 = moveguarded

;---------------------------------------------------------------------------
; Combo 6: Basic Hit confirm (Stanky Leg)
;---------------------------------------------------------------------------

;Launcher
[State -1, AI]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = var(23) < 4
trigger1 = stateno = 430
trigger1 = movehit

;QTE (Dodge)
[State -1, AI]
type = ChangeState
value = 1400
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = var(23) < 4
trigger1 = stateno = 410 && prevstateno = 430
trigger1 = movehit

;---------------------------------------------------------------------------
; Combo 7: Basic Contact confirm (Light Dick Punch) and OTG Attempt
;---------------------------------------------------------------------------

;Crouch Medium Kick
[State -1, AI]
type = ChangeState
value = 440
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = p2statetype != L
trigger1 = stateno = 400
trigger1 = movecontact
trigger2 = p2statetype = L
trigger2 = random <= (AILevel * 33)
trigger2 = random <= (AILevel * 42)
trigger2 = ctrl
trigger2 = p2bodydist x <= 45

;Slide into your DMs
[State -1, AI]
type = ChangeState
value = 450
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = stateno = 440
trigger1 = movecontact
trigger2 = stateno = 251 && moveguarded

;Magnum
[State -1, AI]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
trigger1 = random <= (AILevel * 53)
trigger1 = stateno = 450
trigger1 = movehit

;Police Brutality - You do not have clearance to use your Handcuffs, but go ahead and blast them with your shotgun if you want.
[State -1, AI]
type = ChangeState
value = 1200+(20*(random%2))
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = var(23) >= 4 || enemynear, life <= 150; Alternative to Police Brutality - Handcuffs
trigger1 = stateno = 450
trigger1 = movehit

;Police Brutality - Handcuffs Authorized
[State -1, AI]
type = ChangeState
value = 1200+(10*(random%3))
triggerall = statetype != A
triggerall = var(59) != 0
triggerall = AIlevel != 0
triggerall = roundstate = 2
triggerall = p2stateno != 5120
trigger1 = var(23) < 4 ; Stop trying if you miss 4 throws/custom state moves.
trigger1 = stateno = 450
trigger1 = movehit
