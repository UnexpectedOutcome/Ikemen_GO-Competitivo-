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

;-| Ultimate Motions |--------------------------------------------------------
[Command]
name = "Jikuu"
command = ~D,DF,F,D,DF,F, s
time = 20

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Noise"
command = ~D,DF,F, x+y
time = 30

[Command]
name = "EnergyBall"
command = ~D,DB,B, y+z
time = 30

[Command]
name = "HellBurst"
command = ~D,D, x+y
time = 30

[Command]
name = "ChronoSolid"
command = ~D,D, y+z
time = 30

[Command]
name = "GraphGlaive"
command = ~D,D, x+z
time = 30

;-| Special Motions |------------------------------------------------------


[Command]
name = "Microwave"
command = ~D, DF, F, x

[Command]
name = "Voice"
command = ~D, DF, F, y

[Command]
name = "Hishouken"
command = ~D, DF, F, z

[Command]
name = "SuddenBlast"
command = ~D, DB, B, x

[Command]
name = "Aqua"
command = ~D, DB, B, y

[Command]
name = "Toutsuisen"
command = ~D, DB, B, z

[Command]
name = "PickerHat"
command = ~D, D, x

[Command]
name = "Heal"
command = ~D, D, y

[Command]
name = "DugBlast"
command = ~D, D, z

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


;===========================================================================
;---------------------------------------------------------------------------
;AI Activation
[State -1, AI Deactivation]
type = VarSet
trigger1 = roundstate = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
v = 59
value = 0

;-|-AI-|--------------------------------------------------------------------
[State -1, AI]
type = VarSet
triggerall = roundstate = 2
trigger1 = AILevel
trigger1 = Ctrl
v = 59
value = 1

;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 979)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 979)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 979)
value = 132

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = AIlevel && numenemy
triggerall = !ishelper
triggerall = statetype != A
triggerall = roundstate = 3
triggerall = prevstateno != 195
triggerall = stateno != 195
trigger1 = enemy,life <= 0
trigger1 = ctrl

;-|-AI Combo Attempt-|----------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 200
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,30])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 210
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = P2stateno != [120,155]
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2MoveType != H) && (P2life != 0)
trigger1 = (P2BodyDist X = [0,30])
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,AI Stand Light Kick]
type = ChangeState
value = 220
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,30])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 600
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,30])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 610
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,30])
;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 620
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,30])

;-|-AI Super Attempt-|----------------------------------------------

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1000) = 0
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1050) = 0
value = 1050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1100) = 0
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1150) = 0
value = 1150

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1200) = 0
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 160) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1210) = 0
value = 1210

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1250) = 0
value = 1250

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 212) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1300) = 0 && (power > 500)
trigger1 = (life < 550)
value = 1300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
trigger1 = (p2bodydist X <= 160) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1310) = 0 && (power > 500)
value = 1310

;-------------------------------------------------------------------

[State -1, AI]
type = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Enemy,StateNo != [120,162]
trigger1 = movecontact
trigger1 = StateNo = 200
value = 210

[State -1, AI]
type = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Enemy,StateNo != [120,162]
trigger1 = movecontact
trigger1 = StateNo = 210
value = 220

[State -1, AI]
type = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Enemy,StateNo != [120,162]
trigger1 = movecontact
trigger1 = StateNo = 400
value = 410

[State -1, AI]
type = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Enemy,StateNo != [120,162]
trigger1 = movecontact
trigger1 = StateNo = 410
value = 420

[State -1, AI]
type = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Enemy,StateNo != [120,162]
trigger1 = movecontact
trigger1 = StateNo = 600
value = 610

[State -1, AI]
type = ChangeState
triggerall = var(59)
triggerall = RoundState = 2 && Enemy,StateNo != [120,162]
trigger1 = movecontact
trigger1 = StateNo = 610
value = 620

;-|-AI Hyper Attempt-|----------------------------------------------

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [60,100]) && (statetype != A)
triggerall = (p2bodydist X <= 212)
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 1000) && (random = [60,100]) && (statetype != A)
triggerall = (p2bodydist X <= 110)
value = 3050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [60,100]) && (statetype != A)
triggerall = (p2bodydist X <= 212)
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [60,100]) && (statetype != A)
triggerall = (p2bodydist X <= 212)
value = 3110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 2000) && (random = [60,100]) && (statetype != A)
triggerall = (p2bodydist X <= 212)
value = 3150

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power > 3000) && (random = [60,100]) && (statetype != A)
triggerall = (p2bodydist X <= 212)
trigger1 = (life < 250)
value = 3200

;-------------------------------------------------------------------

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

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
;Kururu Jikuu
[State -1, Kururu Jikuu]
type = ChangeState
value = 3200
triggerall = command = "Jikuu"
triggerall = power >= 3000
triggerall = life<250
trigger1 = ctrl
trigger1 = statetype != A
triggerall = numhelper = 0

;---------------------------------------------------------------------------
;Pleasant Noise
[State -1, Pleasant Noise]
type = ChangeState
value = 3000
triggerall = command = "Noise"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype != A
triggerall = numhelper = 0

;---------------------------------------------------------------------------
;Energy Ball
[State -1, Energy Ball]
type = ChangeState
value = 3050
triggerall = command = "EnergyBall"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype != A
triggerall = numhelper = 0

;---------------------------------------------------------------------------
;Graph Glaive
[State -1, Graph Glaive]
type = ChangeState
value = 3150
triggerall = command = "GraphGlaive"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
triggerall = numhelper = 0

;---------------------------------------------------------------------------
;Chrono Solid
[State -1, Chrono Solid]
type = ChangeState
value = 3110
triggerall = command = "ChronoSolid"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
triggerall = numhelper = 0

;---------------------------------------------------------------------------
;Hell Burst
[State -1, Hell Burst]
type = ChangeState
value = 3100
triggerall = command = "HellBurst"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
triggerall = numhelper = 0

;---------------------------------------------------------------------------
;Dug Blast
[State -1, Dug Blast]
type = ChangeState
value = 1310
triggerall = numhelper(1310) = 0
triggerall = command = "DugBlast"
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Heal
[State -1, Heal]
type = ChangeState
value = 1300
triggerall = command = "Heal"
triggerall = life <= 999
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Picker Hat
[State -1, Picker Hat]
type = ChangeState
value = 1250
triggerall = numhelper(1250) = 0
triggerall = command = "PickerHat"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Toutsuisen
[State -1, Toutsuisen]
type = ChangeState
value = 1210
triggerall = command = "Toutsuisen"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Aqua Gush
[State -1, Aqua Gush]
type = ChangeState
value = 1200
triggerall = command = "Aqua"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Sudden Blast
[State -1, Sudden Blast]
type = ChangeState
value = 1150
triggerall = command = "SuddenBlast"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Hishouken
[State -1, Hishouken]
type = ChangeState
value = 1100
triggerall = command = "Hishouken"
trigger1 = var(1) ;Use combo condition (above)

[State -1, Hishouken (Air)]
type = ChangeState
value = 1101
triggerall = command = "Hishouken"
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 620) && (movecontact) && time > 2

;---------------------------------------------------------------------------
;Maximum Voice
[State -1, Maximum Voice]
type = ChangeState
value = 1050
triggerall = command = "Voice"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Microwave
[State -1, Microwave]
type = ChangeState
value = 1000
triggerall = command = "Microwave"
trigger1 = var(1) ;Use combo condition (above)

[State -1, Microwave (Air)]
type = ChangeState
value = 1001
triggerall = command = "Microwave"
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 620) && (movecontact) && time > 2

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
;Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dash Back
[State -1, Dash Back]
type = ChangeState
value = 115
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 410

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 610