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
[Command]
name = "shadow"
command = ~D,B,F,a
time = 15

[Command]
name = "trasporta"
command = ~10a
time = 40

[Command]
name = "xxx"
command = ~100c
;-| Special Motions |------------------------------------------------------

[Command]
name = "123"
command = ~D,F,x


[Command]
name = "123b"
command = ~D,B,x

[Command] ;Charge down, then up + c
name = "1234"
command = ~D,B,F,x
time = 10

[Command] ;Charge down, then up + c
name = "12345"
command = ~D,B,F,c
time = 10

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

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b
time = 1

 [Command]
name = "counter"
command = x+a
time = 1

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1


[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /x
time = 1


[Command]
name = "hold_x";Required (do not remove)
command = /z
time = 1






;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
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
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
[State -1,          recarga]
type                = ChangeState
triggerall          = (Var(4) != 1) && (Command = "hold_y" && Command = "hold_b") && (Power < 3000)
trigger1            = (StateType = S||StateType != A) && (ctrl)
value               = 700
;---------------------------------------------------------------------------
[State -1, invisible]
type = ChangeState
value = 6005
triggerall = !var(0)
triggerall = power >= 250 && var(16) = 0
trigger1 = command = "shadow"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, invisible]
type = ChangeState
value = ifelse(P2bodydist X <100, 450,6005)
triggerall = roundstate = 2 && Var(0)
triggerall = power > 500 && var(16) = 0 && random > 500
triggerall = (statetype = S) && (ctrl)
trigger1 = (enemynear,statetype = L)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, combo]
type = ChangeState
value = 500
triggerall = command = "1234"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, dispara arma]
type = ChangeState
value = 1220
triggerall = command = "12345"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, dispara arma]
type = ChangeState
value = 1200
triggerall = command = "123"
trigger1 = var(1) ;Use combo condition (above)


;Light Kung Fu Blow
[State -1, dispara arma2]
type = ChangeState
value = 1289
triggerall = command = "123b"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = NULL;ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
[State -1,ja]
type = ChangeState
value = 200;250
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 230)  && (movecontact)
trigger2 = (stateno = 1115) && (movecontact)


[State -1,jaa]
type = ChangeState
value = 230;251
triggerall = (command = "x")  && (command != "holddown")
triggerall = stateno = 200
triggerall = movecontact
trigger1 = (statetype = S)


[State -1,jaa]
type = ChangeState
value = 1115
triggerall = (command = "x") && (command != "holddown")
triggerall = stateno = 230
triggerall = movecontact
trigger1 = (statetype = S)


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1,cuchillo]
type = null;ChangeState
value = 210;250
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 220)  && (movecontact)
trigger2 = (stateno = 200) && (movecontact)


[State -1,putazo]
type =null; ChangeState
value = 220;251
triggerall = (command = "y")  && (command != "holddown")
triggerall = stateno = 210;250
triggerall = movecontact
trigger1 = (statetype = S)

MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
[State -1,a1]
type = ChangeState
value = 260;250
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 210)  && (movecontact)
trigger2 = (stateno = 220) && (movecontact)


[State -1,a2]
type = ChangeState
value = 210;251
triggerall = (command = "y")  && (command != "holddown")
triggerall = stateno = 260;250
triggerall = movecontact
trigger1 = (statetype = S)


[State -1,a3]
type = ChangeState
value = 220
triggerall = (command = "y") && (command != "holddown")
triggerall = stateno = 210
triggerall = movecontact
trigger1 = (statetype = S)


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

[State -1,patadadevil]
type = ChangeState
value = 230
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 203)  && (movecontact)
trigger2 = (stateno = 201) && (movecontact)

[State -1,patadadevil2]
type = ChangeState
value = 231
triggerall = (command = "a")  && (command != "holddown")
triggerall = stateno = 230
triggerall = movecontact
trigger1 = (statetype = S)

;---------------------------------------------------------------------------
;patada media

[State -1,patada media1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 203)  && (movecontact)
trigger2 = (stateno = 241) && (movecontact)


[State -1,patada media2]
type =ChangeState
value = 241
triggerall = (command = "b")  && (command != "holddown")
triggerall = stateno = 240
triggerall = movecontact
trigger1 = (statetype = S)

;---------------------------------------------------------------------------


[State -1,patadafuerte1]
type = ChangeState
value = 250
triggerall = (command = "c")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 251)  && (movecontact)
trigger2 = (stateno = 252) && (movecontact)


[State -1,patada fuerte2]
type = ChangeState
value = 251
triggerall = (command = "c")  && (command != "holddown")
triggerall = stateno = 250
triggerall = movecontact
trigger1 = (statetype = S)


[State -1,patada fuerte3]
type = ChangeState
value = 252
triggerall = (command = "c") && (command != "holddown")
triggerall = stateno = 251
triggerall = movecontact
trigger1 = (statetype = S)


;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, burla]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


[State -1,expecial]
type = ChangeState
value = 320
triggerall = command = "xxx"
triggerall = power > 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 431
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------

[State -1, 	barrida]
type 			= ChangeState
value 			= 431
triggerall 		= Command = "z"
trigger1		= (StateNo = 100) && (AnimElem = 2, > 0) && (Command = "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 20
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking



[State -1,]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger3 = stateno = 640
trigger3 = movecontact = 1


[State -1,]
type = ChangeState
value = 660
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger3 = stateno = 640
trigger3 = movecontact = 1


; trasporta
[State -1, trasporta]
type = ChangeState
value = 1600
triggerall = command = "trasporta"
triggerall = alive
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1501
trigger3 = stateno = [120,158]
;vlocidad
[State -1]
type = ChangeState
value = 1601
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, piola]
type 			= ChangeState
value 			=  6005
triggerall 		= Command = "y"
trigger1		= (StateNo = 1601) && (AnimElem = 2, > 0) && (Command = "holdfwd") && (BackEdgeBodyDist > -5) && (Pos Y >= 0)
ignorehitpause		= 1



;Standing another kick2
[State -1, Standing Medium Kick2]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl




[State -1, 4kicks]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl




