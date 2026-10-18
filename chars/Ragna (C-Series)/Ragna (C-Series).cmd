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
;-------------------------------------------------------------------------
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


;-|Motions|--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Black Onslaught"
command = ~D, DB, B, DB, D, DF, F, b
time = 25

[Command]
name = "Black Onslaught (Stylish)"
command = /x+y
time = 30

[Command]
name = "Black Onslaught (TAG)"
command = ~D, D, D, b+y
time = 25

[Command]
name = "Black Onslaught (TAG)"
command = ~D, D, D, c
time = 25

[Command]
name = "Carnage Scissors"
command = ~F, DF, D, DB, B, F, ~a
time = 25

[Command]
name = "Carnage Scissors"
command = ~F, DF, D, DB, B, F, a
time = 25

[Command]
name = "Carnage Scissors"
command = F, DF, D, DB, B, F, ~a
time = 25

[Command]
name = "Carnage Scissors"
command = F, DF, D, DB, B, F, a
time = 25

[Command]
name = "Carnage Scissors (TAG)"
command = D, DF, F, b+y
time = 25

[Command]
name = "Carnage Scissors (TAG)"
command = D, DF, F, c
time = 25

[Command]
name = "Devoured by Darkness"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "Devoured by Darkness (TAG)"
command = D, DB, B, b+y
time = 25

[Command]
name = "Devoured by Darkness (TAG)"
command = D, DB, B, c
time = 25

[Command]
name = "Darkness Fang"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Inferno Eradicator"
command = ~D, DF, F, D, DF, F, b
time = 15

[Command]
name = "Seed of Tatarus"
command = a+b+x+y
time = 30

[Command]
name = "hold_Seed of Tatarus"
command = /a+b+x+y
time = 5
;-| Special Motions |------------------------------------------------------
[Command]
name = "Dead Spike CT-CS"
command = ~D, DF, F, x;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Dead Spike CT-CS"
command = D, DF, F, x;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Dead Spike CP-CF"
command = ~D, DF, F, a;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Dead Spike CP-CF"
command = D, DF, F, a;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Dead Spike CP-CF (TAG)"
command = ~D, DF, F, y
time = 15

[Command]
name = "Dead Spike CP-CF (TAG)"
command = D, DF, F, y
time = 15

[Command]
name = "Dead Spike (EX)"
command = ~D, DF, F, b;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Dead Spike (EX)"
command = D, DF, F, b;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Hell's Fang"
command = ~D, DB, B, x;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Gauntlet Hades"
command = ~D, DB, B, y;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Blood Scythe"
command = ~D, DB, B, a;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Blood Scythe"
command = D, DB, B, a;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Nightmare Edge"
command = ~D, DB, B, x;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Belial Edge"
command = ~D, DB, B, b;~F, D, DF, F, D, DF, y
time = 15

[Command]
name = "Inferno Divider"
command = ~F, D, DF, b
time = 15

[Command]
name = "Inferno Divider"
command = F, D, DF, b
time = 15

[Command]
name = "Inferno Divider Drive"
command = ~F, D, DF, a
time = 15

[Command]
name = "Inferno Divider Drive"
command = F, D, DF, a
time = 15

[Command]
name = "Inferno Divider (BBTAG)"
command = x+a
time = 5

[Command]
name = "Inferno Divider (BBTAG)"
command = x+d
time = 5

[Command]
name = "Inferno Divider (BBTAG)"
command = x+w
time = 5

[Command]
name = "Not Over Yet"
command = D, D, b
time = 10

[Command]
name = "Not Over Yet"
command = ~D, D, b
time = 10

[Command]
name = "Barrier"
command = x+y
time = 5

[Command]
name = "Rapid"
command = b+x+y
time = 5

[Command]
name = "Burst"
command = a+b+x+y
time = 5

[Command]
name = "OverDrive"
command = a+b+x+y
time = 5

[Command]
name = "Throw"
command = b+y
time = 5

[Command]
name = "Throw"
command = c
time = 5

[Command]
name = "Dash Macro"
command = /$F
time = 10

[Command]
name = "Dash Macro"
command = /z
time = 10

[Command]
name = "Super Jump"    
command = $D, $U
time = 15

[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCF_ab"
command = ~D, DB, B, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "up_a"
command = U,a
time = 15

[Command]
name = "up_b"
command = /$U,b
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
name = "6A"
command = F, x
time = 1

[Command]
name = "6B"
command = F, y
time = 1

[Command]
name = "6C"
command = F, b
time = 1

[Command]
name = "6D"
command = F, a
time = 1

[Command]
name = "3C"
command = DF, b
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

[Command]
name = "down"
command = D
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "upF"
command = UF
time = 1

[Command]
name = "upB"
command = UB
time = 1
;-| Hold Single Button |---------------------------------------------------------
[Command]
name = "hold_a";Required (do not remove)
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
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1
;===========================================================================
;Carnage Scissors
[State -1, Carnage Scissors]
type = ChangeState
value = 3000
triggerall = var(20) < 5 && var(21) = 0 && command = "Carnage Scissors" || var(20) < 5 && var(21) = 1 && command = "Dead Spike CP-CF" || var(20) = 5 && command = "Carnage Scissors (TAG)"
triggerall = power >= 1000
;triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;trigger1 = p2bodydist X=[-32,125]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = stateno = 8310 ;Not Over Yet
trigger5 = movecontact || animelemtime (11) > 0
trigger6 = stateno = 1310 || stateno = 1330 ;From blocking
trigger7 = stateno = 831 ;Not Over Yet
trigger7 = movecontact || animelemtime (10) > 0
trigger8 = (stateno = 10002) || (stateno = 10007) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021) || (stateno = 10240) || (stateno = 10250) ;special hits
trigger8 = movecontact
trigger9 = stateno = 8310 ;Not Over Yet
trigger9 = movecontact || animelemtime (10) > 0
trigger10 = stateno = 1310 || stateno = 1330 ;From blocking
trigger11 = (stateno = 52) || (stateno = 106) || (stateno = 236) || (stateno = 1004) || (stateno = 1007) || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;land
;---------------------------------------------------------------------------
;Blood Kain
[State -1, Blood Kain]
type = ChangeState
value = 3010
triggerall = var(20) < 5 && var(21) = 0 && command = "Devoured by Darkness" || var(20) < 5 && var(21) = 1 && command = "Blood Scythe"
triggerall = power >= 1000
triggerall =! var(10)
triggerall = var(20) <= 2 || var(20) = 5;Game Moveset
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = stateno = 831 ;Not Over Yet
trigger5 = movecontact || animelemtime (10) > 0
trigger6 = stateno = 1310 || stateno = 1330 ;From blocking
trigger7 = (stateno = 52) || (stateno = 106) || (stateno = 236) || (stateno = 1004)  || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;land
trigger8 = stateno = 1013 || stateno = 1014;Dead Spike
trigger8 = animelemtime (10) > 0
;trigger9 = (stateno = 1002) || (stateno = 1017) || (stateno = 1020) || (stateno = 1021) || (stateno = 1024) || (stateno = 1025) ;special hits
;trigger9 = movecontact
;trigger10 = (stateno = 10002) || (stateno = 10007) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021) || (stateno = 10240) || (stateno = 10250) ;special hits
;trigger10 = movecontact
;---------------------------------------------------------------------------
;OverDrive
[State -1, OverDrive]
type = ChangeState
value = 3020
triggerall = command = "OverDrive"
triggerall = power >= 1000
triggerall =! var(10)
triggerall = var(20)!= 5
triggerall = var(20) > 2
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
;trigger5 = (stateno = 1002) || (stateno = 1017) || (stateno = 1020) || (stateno = 1021) || (stateno = 1024) || (stateno = 1025) ;special hits
trigger5 = (stateno = 1024) || (stateno = 1025) ;special hits
trigger5 = movecontact
trigger6 = stateno = 831 ;Not Over Yet
trigger6 = movecontact || animelemtime (10) > 0
trigger7 = (stateno = 52) || (stateno = 106) || (stateno = 236) || (stateno = 1004)  || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;land
trigger8 = stateno = 1013 || stateno = 1014;Dead Spike
trigger8 = animelemtime (10) > 0
trigger9 = (stateno = 10002) || (stateno = 10007) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021) || (stateno = 10240) || (stateno = 10250) ;special hits
trigger9 = movecontact
;trigger10 = stateno = 1310 || stateno = 1330 ;From blocking
;---------------------------------------------------------------------------
;OverDrive (Air)
[State -1, OverDrive (Air)]
type = ChangeState
value = 3021
triggerall = command = "OverDrive"
triggerall = power >= 1000
triggerall =! var(10)
triggerall = var(20)!= 5
triggerall = var(20) > 2
;triggerall = var(20) = 0 || var(20) = 5;Game Moveset
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;From blocking
trigger3 = (stateno = 60) || (stateno = 61)
;trigger4 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) ;air hits
;trigger4 = movecontact
;trigger5 = (stateno = 1808);special hits
;trigger5 = movecontact
;---------------------------------------------------------------------------
;Devoured by Darkness
[State -1, Devoured by Darkness]
type = ChangeState
value = 3030
triggerall = var(20) < 5 && var(21) = 0 && command = "Devoured by Darkness" || var(20) < 5 && var(21) = 1 && command = "Blood Scythe" ||  var(20) = 5 && command = "Devoured by Darkness (TAG)"
triggerall = power >= 1000
triggerall = var(10) || var(20) >= 3 ;Game Moveset
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
;trigger5 = (stateno = 1002) || (stateno = 1007) || (stateno = 1017) || (stateno = 1020) || (stateno = 1021) || (stateno = 1024) || (stateno = 1025) ;special hits
;trigger5 = movecontact
trigger5 = (stateno = 104) || (stateno = 106)
trigger6 = stateno = 831 ;Not Over Yet
trigger6 = movecontact || animelemtime (10) > 0
trigger7 = stateno = 8310 ;Not Over Yet
trigger7 = movecontact || animelemtime (10) > 0
trigger8 = stateno = 1310 || stateno = 1330 ;From blocking
;trigger9 = (stateno = 1004) || (stateno = 1007) || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;land
trigger9 = (stateno = 10004) || (stateno = 10007) || (stateno = 10012) || (stateno = 10016) || (stateno = 10019) ;land
trigger10 = (stateno = 10002) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021) || (stateno = 10240) || (stateno = 10250) ;special hits
trigger10 = movecontact
trigger11 = stateno = 1013 || stateno = 1014;Dead Spike
trigger11 = animelemtime (10) > 0
trigger12 = (stateno = 52) || (stateno = 236) 
;===========================================================================
;Seed of Tatarus
[State -1, Seed of Tatarus]
type = ChangeState
value = 3040
triggerall = command = "Seed of Tatarus"
triggerall = var(10)	 ;Blood Kain
triggerall = var(20) = 4 ;Game Moveset
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 10002) || (stateno = 10007) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021) || (stateno = 10240) || (stateno = 10250) ;special hits
trigger5 = movecontact
trigger6 = stateno = 8310 ;Not Over Yet
trigger6 = movecontact || animelemtime (11) > 0
trigger7 = stateno = 1310 || stateno = 1330 ;From blocking
trigger8 = (stateno = 52) || (stateno = 106) || (stateno = 236) || (stateno = 1004) || (stateno = 1007) || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;land
trigger9 = (stateno = 10004) || (stateno = 10102) || (stateno = 10016) || (stateno = 10019) ;land
;---------------------------------------------------------------------------
;Black Onslaught
[State -1, Black Onslaught]
type = ChangeState
value = 3050
triggerall = var(20) < 5 && var(21) = 0 && command = "Black Onslaught" || var(20) < 5 && var(21) = 1 && command = "Black Onslaught (Stylish)" || var(20) = 5 && command = "Black Onslaught (TAG)"
triggerall = power >= powermax
triggerall = enemy,life <= (enemy,lifemax)*.3
triggerall = DecisiveRound = 1;IKEMEN GO ONLY
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 10002) || (stateno = 10007) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021) || (stateno = 10240) || (stateno = 10250) ;special hits
trigger5 = movecontact
trigger6 = (stateno = 831) || (stateno = 8310) ;Not Over Yet
trigger6 = movecontact || animelemtime (11) > 0
trigger7 = stateno = 1310 || stateno = 1330 ;From blocking
trigger8 = (stateno = 52) || (stateno = 106) || (stateno = 236) || (stateno = 1004) || (stateno = 1007) || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;land
;===========================================================================
;(EX) Dead Spike
[State -1, (EX) Dead Spike]
type = ChangeState
value = 1030
triggerall = var(20) = 5 && command = "Dead Spike (EX)"
triggerall = !AiLevel ;Ai Off
triggerall = power >= 500
trigger1 = statetype != S
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420 ) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831) || (stateno = 8310);Throw && Not Done Yet
trigger6 = movecontact

;---------------------------------------------------------------------------
;(EX) Blood Scythe
[State -1, (EX) Blood Scythe]
type = ChangeState
value = 1036
triggerall = command = "Belial Edge"
triggerall = var(20) = 5 ;Game Moveset
triggerall = power >= 500
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831) || (stateno = 8310);Throw && Not Done Yet
trigger6 = movecontact
;---------------------------------------------------------------------------
; (EX) Blood Scythe (Air)
[State -1, (EX) Blood Scythe (Air)]
type = ChangeState
value = 1037
triggerall = command = "Belial Edge"
triggerall = var(20) = 5 ;Game Moveset
triggerall = power >= 500
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 815);jump hits
trigger2 = movecontact
trigger3 = stateno = 235;standing hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall

;===========================================================================
;Hell's Fang
[State -1, Hell's Fang]
type = ChangeState
value = 1000
triggerall = command = "Hell's Fang"
triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831);Throw && Not Done Yet
trigger6 = movecontact
trigger7 = (stateno = 430) ;crouching hits
trigger7 = movecontact && animelem >= 7
;---------------------------------------------------------------------------
;Gauntlet Hades
[State -1, Gauntlet Hades]
type = ChangeState
value = 1003
triggerall = command = "Gauntlet Hades"
triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831);Throw && Not Done Yet
trigger6 = movecontact
;---------------------------------------------------------------------------
;Gauntlet Hades (Air)
[State -1, Gauntlet Hades (Air)]
type = ChangeState
value = 1033
triggerall = command = "Gauntlet Hades"
triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 815) || (stateno = 235) ;air hits
trigger2 = movecontact
trigger3 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;---------------------------------------------------------------------------
;Belial Edge
[State -1, Belial Edge]
type = ChangeState
value = 1006
triggerall = var(20) != 5 && command = "Belial Edge" || var(20) = 5 && command = "b"
triggerall =! var(10)
triggerall = var(20) <= 3 || var(20) = 5 ;Game Moveset
triggerall = var(20) != 1
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact
trigger3 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 815);jump hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;---------------------------------------------------------------------------
;Inferno Divider
[State -1, Inferno Divider]
type = ChangeState
value = 1008
triggerall = command = "Inferno Divider"
triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 235) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) ;jump hits
trigger5 = movecontact
trigger6 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger6 = movecontact
trigger7 = (stateno = 803) || (stateno = 808) || (stateno = 815) || (stateno = 831);Throw && Not Done Yet
trigger7 = movecontact
;---------------------------------------------------------------------------
;Inferno Divider (Drive)
[State -1, Inferno Divider (Drive)]
type = ChangeState
value = 1088
triggerall = var(20) != 5 && command = "Inferno Divider Drive" || var(20) = 5 && command = "Inferno Divider (BBTAG)"
triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 235) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) ;jump hits
trigger5 = movecontact
trigger6 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger6 = movecontact
trigger7 = (stateno = 803) || (stateno = 808) || (stateno = 815) || (stateno = 831);Throw && Not Done Yet
trigger7 = movecontact
;---------------------------------------------------------------------------
;Dead Spike CT-CS
[State -1, Dead Spike CT-CS]
type = ChangeState
value = 1013
triggerall = var(20) < 3 && command = "Blood Scythe" || var(20) = 5 && command = "Dead Spike CT-CS";Game Moveset
triggerall =! var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420 ) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831);Throw && Not Done Yet
trigger6 = movecontact
;---------------------------------------------------------------------------
;Dead Spike CP-CF
[State -1, Dead Spike CP-CF]
type = ChangeState
value = 1014
triggerall = var(20) < 5 && command = "Dead Spike CP-CF" || var(20) = 5 && command = "Dead Spike CP-CF (TAG)"
triggerall =! var(10)
triggerall = var(20) >= 3 ;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831);Throw && Not Done Yet
trigger6 = movecontact
;---------------------------------------------------------------------------
;Nightmare Edge
[State -1, Nightmare Edge]
type = ChangeState
value = ifelse(var(20) != 5 && var(21) != 1 ,1015,713) ;If Not in TAG Moveset and Stylish Mode, then 1015, if In Tag Moveset and Stylish Mode, then 713
triggerall =! var(10)
triggerall = var(20) = 4 && command = "Belial Edge" || var(20) = 5 && command = "Nightmare Edge"  ;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact
trigger3 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 815);jump hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;---------------------------------------------------------------------------
;Blood Scythe
[State -1, Blood Scythe]
type = ChangeState
value = 1018
triggerall = var(20) != 5 && command = "Blood Scythe"
triggerall =! var(10)
triggerall = var(20) >= 3;Game Moveset
triggerall = var(20) != 5
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 1024) || (stateno = 1025) ;Crush Counter
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 831);Throw && Not Done Yet
trigger6 = movecontact
;---------------------------------------------------------------------------
;Blood Scythe (Air)
[State -1, Blood Scythe (Air)]
type = ChangeState
value = 1808
triggerall = var(20) != 5 && command = "Blood Scythe" || var(20) = 5 && command = "Belial Edge"
triggerall =! var(10)
triggerall = var(20) >= 3;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 815) || (stateno = 630) ;jump hits
trigger2 = movecontact
trigger3 = stateno = 235;standing hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;===========================================================================
;Hell's Fang - Blood Kain
[State -1, Hell's Fang - Blood Kain]
type = ChangeState
value = 10000
triggerall = command = "Hell's Fang"
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 8310);Throw && Not Done Yet
trigger5 = movecontact
trigger6 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger6 = movecontact
trigger7 = stateno = 10004
;---------------------------------------------------------------------------
;Gauntlet Hades - Blood Kain
[State -1, Gauntlet Hades - Blood Kain]
type = ChangeState
value = 10003
triggerall = command = "Gauntlet Hades"
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 8310);Throw && Not Done Yet
trigger5 = movecontact
trigger6 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger6 = movecontact
;---------------------------------------------------------------------------
;Gauntlet Hades (Air) - Blood Kain
[State -1, Gauntlet Hades (Air) - Blood Kain]
type = ChangeState
value = 10033
triggerall = command = "Gauntlet Hades"
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 815) || (stateno = 235) ;standing hits
trigger2 = movecontact
trigger3 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;---------------------------------------------------------------------------
;Belial Edge - Blood Kain
[State -1, Belial Edge - Blood Kain]
type = ChangeState
value = 10006
triggerall = var(20) != 5 && command = "Belial Edge" || var(20) = 5 && command = "b"
triggerall = var(10)
triggerall = var(20) <= 3 || var(20) = 5 ;Game Moveset
triggerall = var(20) != 1
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact
trigger3 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 815) || (stateno = 630) ;jump hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;---------------------------------------------------------------------------
;Inferno Divider - Blood Kain
[State -1, Inferno Divider - Blood Kain]
type = ChangeState
value = 10008
triggerall = command = "Inferno Divider"
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 235) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) ;jump hits
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 815) || (stateno = 8310);Throw && Not Done Yet
trigger6 = movecontact
trigger7 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger7 = movecontact
;---------------------------------------------------------------------------
;Inferno Divider (Drive) - Blood Kain
[State -1, Inferno Divider Drive - Blood Kain]
type = ChangeState
value = 10088
triggerall = command = "Inferno Divider Drive"
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype != L
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 235) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) ;jump hits
trigger5 = movecontact
trigger6 = (stateno = 803) || (stateno = 808) || (stateno = 815) || (stateno = 8310);Throw && Not Done Yet
trigger6 = movecontact
trigger7 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger7 = movecontact
;---------------------------------------------------------------------------
;Dead Spike CT-CS - Blood Kain
[State -1, Dead Spike CT-CS - Blood Kain]
type = ChangeState
value = 10013
triggerall = var(20) < 3 && command = "Blood Scythe" || var(20) = 5 && command = "Dead Spike CT-CS";Game Moveset
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 8310);Throw && Not Done Yet
trigger5 = movecontact
trigger6 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger6 = movecontact
;---------------------------------------------------------------------------
;Dead Spike CP-CF
[State -1, Dead Spike CP-CF - Blood Kain]
type = ChangeState
value = 10014
triggerall = var(20) < 5 && command = "Dead Spike CP-CF" || var(20) = 5 && command = "Dead Spike CP-CF (TAG)"
triggerall = var(10)
triggerall = var(20) >= 3 ;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 8310);Throw && Not Done Yet
trigger5 = movecontact
trigger6 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger6 = movecontact
;---------------------------------------------------------------------------
;Nightmare Edge - Blood Kain
[State -1, Nightmare Edge - Blood Kain]
type = ChangeState
value = ifelse(var(20) != 5 && var(21) != 1 ,10015,713) ;If Not in TAG Moveset and Stylish Mode, then 1015, if In Tag Moveset and Stylish Mode, then 713
triggerall = var(10)
triggerall = var(20) = 4 && command = "Belial Edge" || var(20) = 5 && command = "Nightmare Edge" ;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact
trigger3 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 815);jump hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;---------------------------------------------------------------------------
;Blood Scythe - Blood Kain
[State -1, Blood Scythe - Blood Kain]
type = ChangeState
value = 10018
triggerall = var(20) != 5 && command = "Blood Scythe" || var(20) = 5 && command = "Belial Edge"
triggerall = var(10)
triggerall = var(20) >= 3 ;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 815) || (stateno = 8310);Throw && Not Done Yet
trigger5 = movecontact
trigger6 = (stateno = 10024) || (stateno = 10025) ;Crush Counter
trigger6 = movecontact
;---------------------------------------------------------------------------
;Blood Scythe (Air) - Blood Kain
[State -1, Blood Scythe (Air) - Blood Kain]
type = ChangeState
value = 10818
triggerall = var(20) != 5 && command = "Blood Scythe" || var(20) = 5 && command = "Belial Edge"
triggerall = var(10)
triggerall = var(20) >= 3 ;Game Moveset
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) ;jump hits
trigger2 = movecontact
trigger3 = stateno = 235 ;standing hits
trigger3 = movecontact
trigger4 = stateno = 60 || stateno = 61 || stateno = 62 ;air dash (forward and back) and air dash fall
;-----------------------------------------------------------------------------
;Rapid Cancel
[State -1]
type = ChangeState
value = 950
triggerall = !ishelper
triggerall = var(4) = 1
triggerall = !AiLevel ;Ai Off
triggerall = command = "Rapid"
triggerall = Power >= 1000
;triggerall = statetype != A
trigger1 = (stateno = [200,630]) && (movecontact||movereversed)
trigger2 = (stateno = [1000,1005]) && (movecontact||movereversed)
trigger3 = (stateno = [1008,1014]) && (movecontact||movereversed)
trigger4 = stateno = 1017 && (movecontact||movereversed)
trigger5 = (stateno = [1020,3003]) && (movecontact||movereversed)
trigger6 = (stateno = [10000,10005]) && (movecontact||movereversed)
trigger7 = (stateno = [10008,10014]) && (movecontact||movereversed)
trigger8 = stateno = 10017 && (movecontact||movereversed)
trigger9 = (stateno = [10020,30000]) && (movecontact||movereversed)
trigger10 = (stateno = [800,816]) && (movecontact||movereversed);Throws
trigger11 = stateno = 831 && (movecontact||movereversed) || stateno = 8310 && (movecontact||movereversed);Not Over Yet
;-----------------------------------------------------------------------------
;Red Roman Cancel
[State -1]
type = ChangeState
value = 951
triggerall = !ishelper
triggerall = var(4) = 2
triggerall = !AiLevel ;Ai Off
triggerall = roundstate = 2
triggerall = command = "Rapid"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [200,630]) && (movecontact||movereversed)
trigger2 = (stateno = [1000,1005]) && (movecontact||movereversed)
trigger3 = (stateno = [1008,1014]) && (movecontact||movereversed)
trigger4 = stateno = 1017 && (movecontact||movereversed)
trigger5 = (stateno = [1020,3003]) && (movecontact||movereversed)
trigger6 = (stateno = [10000,10005]) && (movecontact||movereversed)
trigger7 = (stateno = [10008,10014]) && (movecontact||movereversed)
trigger8 = stateno = 10017 && (movecontact||movereversed)
trigger9 = (stateno = [10020,30000]) && (movecontact||movereversed)
trigger10 = (stateno = [800,816]) && (movecontact||movereversed);Throws
trigger11 = stateno = 831 && (movecontact||movereversed) || stateno = 8310 && (movecontact||movereversed);Not Over Yet
;-----------------------------------------------------------------------------
;Red Roman Cancel (Air)
[State -1]
type = ChangeState
value = 952
triggerall = !ishelper
triggerall = var(4) = 2
triggerall = !AiLevel ;Ai Off
triggerall = roundstate = 2
triggerall = command = "Rapid"
triggerall = Power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,630]) && (movecontact||movereversed)
trigger2 = (stateno = [1000,1005]) && (movecontact||movereversed)
trigger3 = (stateno = [1008,1014]) && (movecontact||movereversed)
trigger4 = stateno = 1017 && (movecontact||movereversed)
trigger5 = (stateno = [1020,3000]) && (movecontact||movereversed)
trigger6 = (stateno = [10000,10005]) && (movecontact||movereversed)
trigger7 = (stateno = [10008,10014]) && (movecontact||movereversed)
trigger8 = stateno = 10017 && (movecontact||movereversed)
trigger9 = (stateno = [10020,30000]) && (movecontact||movereversed)
;trigger10 = (stateno = [800,816]) && (movecontact||movereversed);Throws
;trigger11 = stateno = 831 && (movecontact||movereversed) || stateno = 8310 && (movecontact||movereversed);Not Over Yet
;-----------------------------------------------------------------------------
;Blue Roman Cancel
[State -1]
type = ChangeState
value = 953
triggerall = var(4) = 2
triggerall = !AiLevel ;Ai Off
triggerall = roundstate = 2
triggerall = command = "Rapid"
triggerall = roundstate = 2
trigger1 = stateno = [0,61]
trigger2 = stateno = [100,101]
trigger3 = stateno = [105,106]
trigger4 = (stateno = 110) || (stateno = 115)
;-----------------------------------------------------------------------------
;Purple Roman Cancel
[State -1]
type = ChangeState
value = 954
triggerall = var(4) = 2
triggerall = !AiLevel ;Ai Off
triggerall = roundstate = 2
triggerall = command = "Rapid"
triggerall = Power >= 1000
trigger1 = (stateno = [200,630]) && (!movecontact||!movereversed)
trigger2 = (stateno = [1000,1005]) && (!movecontact||!movereversed)
trigger3 = (stateno = [1008,1014]) && (!movecontact||!movereversed)
trigger4 = stateno = 1017
trigger5 = (stateno = [1020,3000]) && (!movecontact||!movereversed)
trigger6 = (stateno = [10000,10005]) && (!movecontact||!movereversed)
trigger7 = (stateno = [10008,10014]) && (!movecontact||!movereversed)
trigger8 = stateno = 10017
trigger9 = (stateno = [10020,30000]) && (!movecontact||!movereversed)
;-----------------------------------------------------------------------------
;Yellow Roman Cancel
[State -1]
type = ChangeState
value = 955
triggerall = var(4) = 2
triggerall = !AiLevel ;Ai Off
triggerall = command = "Rapid"
triggerall = Power >= 1000
trigger1 = stateno = [150,156]
;-----------------------------------------------------------------------------
;Barrier
[State -1,Barrier (Standing)]
Type = ChangeState
Value = 940
Triggerall = Var(6) = 1 || Var(6) = 3
triggerall = !AiLevel ;Ai Off
triggerAll = Numhelper(4000) = 0
TriggerAll = Command = "Barrier" && command = "holdback"
TriggerAll = power >= 1
triggerAll = statetype = S
trigger1 = ctrl || stateno = [100,101]
;-----------------------------------------------------------------------------
;Barrier (Air)
[State -1,Barrier (Air)]
Type = ChangeState
Value = 941
Triggerall = Var(6) = 1 || Var(6) = 3
triggerall = !AiLevel ;Ai Off
triggerAll = Numhelper(4000) = 0
TriggerAll = Command = "Barrier" && command = "holdback"
TriggerAll = power >= 1
triggerAll = statetype = A
trigger1 = ctrl || stateno = [100,101]
;-----------------------------------------------------------------------------
;Barrier (Crouch)
[State -1,Barrier (Crouch)]
Type = ChangeState
Value = 942
Triggerall = Var(6) = 1 || Var(6) = 3
triggerall = !AiLevel ;Ai Off
triggerAll = Numhelper(4000) = 0
TriggerAll = Command = "Barrier" && command = "holdback"
TriggerAll = power >= 1
triggerAll = statetype = C
trigger1 = ctrl || stateno = [100,101]
;-----------------------------------------------------------------------------
;BURST
[State -1]
type = ChangeState
value = 943
triggerall = var(6) >= 2
triggerall = !AiLevel ;Ai Off
triggerall = command = "Seed of Tatarus"
triggerall = Power = Powermax
triggerAll = statetype != A
trigger1 = stateno = [150,153]
trigger2 = stateno = [5000,5210]
;-----------------------------------------------------------------------------
;BURST (AIR)
[State -1]
type = ChangeState
value = 944
triggerall = var(6) >= 2
triggerall = !AiLevel ;Ai Off
triggerall = command = "Seed of Tatarus"
triggerall = Power = Powermax
triggerAll = statetype = A
trigger1 = stateno = [154,155]
trigger2 = stateno = [5000,5210]
;---------------------------------------------------------------------------
;Forward Throw
[State -1, Forward Throw]
type = ChangeState
value = 800
triggerall =! command = "holdback"
triggerall = command = "Throw"
triggerall = !AiLevel ;Ai Off
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
;Back Throw
[State -1, Back Throw]
type = ChangeState
value = 805
triggerall = command = "holdback"
triggerall = command = "Throw"
triggerall = !AiLevel ;Ai Off
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
;Air Throw
[State -1, Air Throw]
type = ChangeState
value = 810
triggerall = command = "Throw"
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [60,62]
;===========================================================================
;Not Over Yet
[State -1, Not Over Yet]
type = ChangeState
value = 830
triggerall = command = "Not Over Yet"
triggerall =! var(10)
triggerall = var(20) != 5
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1024) || (stateno = 10024) || (stateno = 1025) || (stateno = 10025) ;crush counter
trigger5 = movecontact
trigger6 = (stateno = 1004) || (stateno = 1007) || (stateno = 1012) || (stateno = 1016) || (stateno = 1019) ;Special Land
;-----------------------------------------------------------------------------
;Not Over Yet - Blood Kain
[State -1, Not Over Yet - Blood Kain]
type = ChangeState
value = 8300
triggerall = command = "Not Over Yet"
triggerall = var(10)
triggerall = var(20) != 5
triggerall = !AiLevel ;Ai Off
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 1020) || (stateno = 10020) ;crush counter
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crush Counter - Blood Kain
[State -1, Crush Counter - Blood Kain]
type = ChangeState
value = 10020
triggerall = var(20) != 5 && Command = "Barrier" || var(20) = 5 && command = "c" && command != "holddown"
triggerall = command != "holdback"
triggerall = var(10)
triggerall = var(20) <=! 2 || var(20) = 0 || var(20) >=3;Game Moveset
triggerall = !AiLevel ;Ai Off
triggerall =  var(20) != 5 && power >= 500 || var(20) = 5 && power >= 0
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)  || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 8310);Throw && Not Done Yet
trigger5 = movecontact
;---------------------------------------------------------------------------
;Crush Counter
[State -1, Crush Counter]
type = ChangeState
value = 1020
triggerall = var(20) != 5 && Command = "Barrier" || var(20) = 5 && command = "b" && command != "holddown"
triggerall = command != "holdback"
triggerall =! var(10)
triggerall = var(20) != 1;Game Moveset
triggerall = var(20) != 2;Game Moveset
triggerall = !AiLevel ;Ai Off
triggerall =  var(20) != 5 && power >= 500 || var(20) = 5 && power >= 0
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 205) || (stateno = 215) || (stateno = 225) || (stateno = 245) || (stateno = 831) ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) || (stateno = 430) ;crouching hits
trigger4 = movecontact
trigger5 = (stateno = 803) || (stateno = 808) || (stateno = 831);Throw && Not Done Yet
trigger5 = movecontact

;===========================================================================
;5A
[State -1, 5A]
type = ChangeState
value = 200
triggerall = var(20) != 5 && command = "x" || var(20) = 5 && command = "x"  && command = "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger2 = var(21) = 0
trigger3 = stateno = 200 && animelemtime(4) >= 0
trigger3 = var(21) = 0
trigger4 = stateno = [100,101]
trigger5 = (stateno = 52) || (stateno = 106) ;land
trigger6 = (stateno = 400) && movecontact
trigger7 = stateno = 104
trigger8 = stateno = 1001 || stateno = 10001
trigger8 = animelemtime(11) >= 0
;---------------------------------------------------------------------------
;5B
[State -1, 5B]
type = ChangeState
value = 210
triggerall = var(20) != 5 && command = "y" && command != "holdfwd"|| var(20) = 5 && command = "x"
triggerall = command != "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 400) || (stateno = 410)
trigger2 = movecontact
trigger3 = stateno = [100,101]
trigger4 = (stateno = 52) || (stateno = 106) || (stateno = 1004) || (stateno = 10004) ;land
trigger5 = stateno = 104
;---------------------------------------------------------------------------
;5C
[State -1, 5C]
type = ChangeState
value = 220
triggerall = var(20) != 5 && command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210)
trigger2 = movecontact
trigger3 = (stateno = 400) || (stateno = 410)
trigger3 = movecontact
trigger4 = (stateno = 52) || (stateno = 106) ;land
trigger5 = stateno = [100,101]
trigger6 = stateno = 104
;---------------------------------------------------------------------------
;5D
[State -1, 5D]
type = ChangeState
value = 230
triggerall = var(20) != 5 && command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = var(20) != 5
triggerall = var(21) != 1
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 215) && movecontact
trigger6 = (stateno = 220) && movecontact
trigger7 = (stateno = 225) && movecontact
trigger8 = (stateno = 400) || (stateno = 410) || (stateno = 420) ;crouching hits
trigger8 = movecontact
trigger9 = stateno = [100,101]
trigger10 = (stateno = 52) || (stateno = 106) ;land
trigger11 = stateno = 104
;---------------------------------------------------------------------------
;6A
[State -1, 6A]
type = ChangeState
value = 205
;triggerall = command = "6A"
triggerall = var(20) != 5 && command = "x" && command = "holdfwd" || var(20) = 5 && ifelse(var(21)=0,command="y",command = "y" && command = "holdback")
triggerall = command != "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 215) && movecontact
trigger5 = (stateno = 220) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 420) && movecontact
trigger8 = stateno = [100,101]
trigger9 = stateno = 104
;---------------------------------------------------------------------------
;6B
[State -1, 6B]
type = ChangeState
value = 215
;triggerall = command = "6B"
triggerall = var(20) != 5 && command = "y" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = stateno = [100,101]
trigger4 = stateno = 104
;---------------------------------------------------------------------------
;6C
[State -1, 6C]
type = ChangeState
value = 225
;triggerall = command = "6C"
triggerall = var(20) != 5 && command = "b" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 215) && movecontact
trigger5 = (stateno = 220) && movecontact
trigger6 = (stateno = 420) && movecontact
trigger7 = stateno = [100,101]
trigger8 = stateno = 104
;---------------------------------------------------------------------------
;6D
[State -1, 6D]
type = ChangeState
value = 235
;triggerall = command = "6D"
triggerall = var(20) != 5 && command = "a" && command = "holdfwd" || var(20) = 5 && var(21) = 0 && command = "y" && command = "holddown" || var(20) = 5 && var(21) = 1 && command = "y"
;triggerall = var(20) < 5 && command != "holddown" || var(20) = 5 && var(21) = 0 && command = "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = var(20) < 5 && statetype != A || var(20) = 5 && ifelse(var(21)=0,statetype=C,statetype=S)
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 215) && movecontact
trigger6 = (stateno = 220) && movecontact
trigger7 = (stateno = 225) && movecontact
trigger8 = (stateno = 410) && movecontact && Var(20) = 5
trigger9 = stateno = [100,101]
trigger10 = stateno = 104
;---------------------------------------------------------------------------
;3C
[State -1, 3C]
type = ChangeState
value = 425
triggerall = command = "holddown"
triggerall = var(20) != 5 && command = "b" && command = "holdfwd" || var(20) = 5 && var(21) = 1 && command = "y" && command = "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 420) ;crouching hits
trigger2 = movecontact
trigger3 = (stateno = 200) || (stateno = 210) || (stateno = 215) || (stateno = 220) ;standing hits
trigger3 = movecontact
trigger4 = stateno = 1012 || stateno = 10012
trigger5 = (stateno = 10) || (stateno = 52) || (stateno = 104) || (stateno = 106) || (stateno = 1004) || (stateno = 10004) ;land
;---------------------------------------------------------------------------
;2A
[State -1, 2A]
type = ChangeState
value = 400
triggerall = var(20) != 5 && command = "x"
triggerall = var(20) != 5 && command = "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 8
trigger3 = stateno = 10
trigger4 = (stateno = 10) || (stateno = 52) || (stateno = 104) || (stateno = 106) || (stateno = 1004) || (stateno = 10004) ;land
;---------------------------------------------------------------------------
;2B
[State -1, 2B]
type = ChangeState
value = 410
triggerall = var(20) != 5 && command = "y" || var(20) = 5 && command = "x"
triggerall = command = "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400  ;crouching hits
trigger2 = movecontact
trigger3 = stateno = 200 ;standing hits
trigger3 = movecontact
trigger4 = (stateno = 10) || (stateno = 52) || (stateno = 104) || (stateno = 106) || (stateno = 1004) || (stateno = 10004) ;land
;---------------------------------------------------------------------------
;2C
[State -1, 2C]
type = ChangeState
value = 420
triggerall = var(20) != 5 && command = "b"
triggerall = var(20) != 5 && command = "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) ;crouching hits
trigger2 = movecontact
trigger3 = (stateno = 200) || (stateno = 210) || (stateno = 220) ;standing hits
trigger3 = movecontact
trigger4 = stateno = [100,101]
trigger5 = (stateno = 10) || (stateno = 52) || (stateno = 104) || (stateno = 106) || (stateno = 1004) || (stateno = 10004) ;land
;---------------------------------------------------------------------------
;2D
[State -1, 2D]
type = ChangeState
value = 430
triggerall = var(20) != 5 && command = "a" || var(20) = 5 && command = "b"
triggerall = command = "holddown"
triggerall = !AiLevel ;Ai Off
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 420) || (stateno = 425) ;crouching hits
trigger2 = movecontact
trigger3 = (stateno = 200) || (stateno = 210) || (stateno = 215) || (stateno = 220) || var(20) = 5 && (stateno = 225) || var(20) = 5 && (stateno = 230);standing hits
trigger3 = movecontact
trigger4 = stateno = 1012 || stateno = 10012
trigger5 = (stateno = 10) || (stateno = 52) || (stateno = 104) || (stateno = 106) || (stateno = 1004) || (stateno = 10004) ;land
;---------------------------------------------------------------------------
;Jump A
[State -1, j.A]
type = ChangeState
value = 600
triggerall = var(20) != 5 && command = "x"
triggerall = !AiLevel ;Ai Off
triggerall = stateno != 105
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50 || stateno = 62 ;air dash fall
trigger3 = stateno = 60 || stateno = 61 ;air dash (forward and back)
trigger3 = animelemtime(3) >= 0
trigger4 = stateno = 600
trigger4 = statetime >= 11
trigger5 = stateno = 1350 ;Air blocking
trigger6 = stateno = 45 ;Air Jump
trigger6 = animelem >= 2
;---------------------------------------------------------------------------
;Jump B
[State -1, j.B]
type = ChangeState
value = 610
triggerall = var(20) != 5 && command = "y"
triggerall = stateno != 105
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50 || stateno = 62 ;air dash fall
trigger3 = stateno = 60 || stateno = 61 ;air dash (forward and back)
trigger3 = animelemtime(3) >= 0
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 1350 ;Air blocking
trigger6 = stateno = 45 ;Air Jump
trigger6 = animelem >= 2
;---------------------------------------------------------------------------
;Jump C
[State -1, j.C]
type = ChangeState
value = 620
triggerall = var(20) != 5 && command = "b" || var(20) = 5 && command = "x" 
triggerall = stateno != 105
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50 || stateno = 62 ;air dash fall
trigger3 = stateno = 60 || stateno = 61 ;air dash (forward and back)
trigger3 = animelemtime(3) >= 0
trigger4 = stateno = 600 || var(20) != 5 && stateno = 610 ;jump_a or jump_b
trigger4 = movecontact
trigger5 = stateno = 1350 ;Air blocking
trigger6 = stateno = 45 ;Air Jump
trigger6 = animelem >= 2
;---------------------------------------------------------------------------
;Jump D
[State -1, j.D]
type = ChangeState
value = 630
triggerall = var(20) != 5 && command = "a" || var(20) = 5 && command = "y"
triggerall = stateno != 105
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50 || stateno = 62 ;air dash fall
trigger3 = stateno = 60 || stateno = 61 ;air dash (forward and back)
trigger3 = animelemtime(3) >= 0
trigger4 = stateno = 600 || stateno = 610 || stateno = 620 ;jump_x or jump_a
trigger4 = movecontact
trigger5 = stateno = 1350 ;Air blocking
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 45 ;Air Jump
trigger7 = animelem >= 2
;---------------------------------------------------------------------------
;Jump Dust
[State -1, Dust Jump]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = var(20) = 5
triggerall = !AiLevel ;Ai Off
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50 || stateno = 62 ;air dash fall
trigger3 = stateno = 60 || stateno = 61 ;air dash (forward and back)
trigger3 = animelem != 1
trigger4 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 630 ;jump_x or jump_a
trigger4 = movecontact
trigger5 = stateno = 1350 ;Air blocking
trigger6 = stateno = 45 ;Air Jump
;---------------------------------------------------------------------------
;Air Jump
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(5) = 0
triggerall = !AiLevel ;Ai Off
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 235)
trigger2 = movecontact
trigger3 = (stateno = 1005) || (stateno = 10005)
trigger3 = movecontact
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 53
triggerall = !AiLevel ;Ai Off
triggerall = command = "Super Jump" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = animelemtime(6) > 0 && movecontact
trigger3 = stateno = 220
trigger3 = animelemtime(9) > 0 && movecontact
trigger4 = stateno = 225
trigger4 = animelemtime(12) > 0 && movecontact
trigger5 = stateno = 225
trigger5 = animelemtime(12) > 0 && movecontact
;--------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash]
type = ChangeState
value = 60
triggerall = stateno != [60,61]
triggerall = stateno != 45
triggerall = !var(5)
triggerall = !AiLevel ;Ai Off
triggerall = command != "holdback"
triggerall = statetype = A && ctrl
trigger1 = var(11) = 0
trigger1 = command = "FF"
trigger2 = var(11) = 1
trigger2 = command = "z" || command = "FF"
;---------------------------------------------------------------------------
;Back Air Dash
[State -1, Back Air Dash]
type = ChangeState
value = 61
triggerall = stateno != [60,61]
triggerall = stateno != [100,105]
triggerall = !var(5)
triggerall = !AiLevel ;Ai Off
triggerall = statetype =A && ctrl
trigger1 = var(11) = 0
trigger1 = command = "BB"
trigger2 = var(11) = 1
trigger2 = command = "z" && command = "holdback" || command = "BB"
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AiLevel ;Ai Off
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = var(11) = 0
trigger1 = command = "FF"
trigger1 = ctrl
trigger2 = var(11) = 1
trigger2 = command = "z" || command = "FF"
trigger2 = ctrl
trigger3 = command = "FF"
trigger3 = statetype = S
trigger3 = stateno = 1019 || stateno = 10019
trigger4 = var(11) = 0
trigger4 = command = "FF"
trigger4 = stateno = 104
trigger5 = var(11) = 1
trigger5 = command = "z" || command = "FF"
trigger5 = stateno = 104
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AiLevel ;Ai Off
triggerall = statetype = S
trigger1 = command = "BB"
trigger1 = ctrl
trigger2 = var(11) = 1
trigger2 = command = "z" && command = "holdback"|| command = "BB"
trigger2 = ctrl
;---------------------------------------------------------------------------
;Dash Cancel
[State -1, Dash Cancel]
type = ChangeState
value = 102
triggerall = var(10)
triggerall = !AiLevel ;Ai Off
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) || (stateno = 430) ;standing hits
trigger2 = movecontact
trigger3 = (stateno = 10002) || (stateno = 10017) || (stateno = 10020) || (stateno = 10021);special hits
trigger3 = movecontact
trigger4 = stateno = 10013 ;Dead Spike CT-CS
trigger4 = movecontact || animelemtime (12) > 0
trigger5 = (stateno = 10014) ;Dead Spike CP-CF
trigger5 = movecontact || animelemtime (12) > 0
trigger5 =! var(10)
trigger6 = stateno = 1024 ;Dust
trigger6 = movecontact
;----------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AiLevel ;Ai Off
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl