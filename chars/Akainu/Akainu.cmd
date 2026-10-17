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




[Command]
name = "Super Move Unite"
command = ~D,DF,F,D,DF,F,x
time = 35
[Command]
name = "Super Move Unite"
command = ~D,DF,F,D,DF,F+x
time = 35


[Command]
name = "Super Move Tag 2"
command = ~D,DB,B,x
time = 20
[Command]
name = "Super Move Tag 2"
command = ~D,DB,B+x
time = 20

[Command]
name = "Super Move Tag 1"
command = ~D,DF,F,x
time = 20
[Command]
name = "Super Move Tag 1"
command = ~D,DF,F+x
time = 20







[Command]
name = "Ryusei Kazan"
command = ~D,DB,B,D,DB,B,b
time = 35
[Command]
name = "Ryusei Kazan"
command = ~D,DB,B,D,DB,B+b
time = 35



[Command]
name = "Kazan Bakuhatsu"
command = ~F,B,DB,D,DF,F,a+c
time = 35
[Command]
name = "Kazan Bakuhatsu"
command = ~F,B,DB,D,DF,F+a+c
time = 35
[Command]
name = "Kazan Bakuhatsu"
command = ~F,B,DB,D,DF,F,x
time = 35
[Command]
name = "Kazan Bakuhatsu"
command = ~F,B,DB,D,DF,F+x
time = 35


[Command]
name = "Inugami Guren"
command = ~D,DF,F,D,DF,F,c
time = 35
[Command]
name = "Inugami Guren"
command = ~D,DF,F,D,DF,F+c
time = 35


;-| Special Motions |------------------------------------------------------






[Command]
name = "Maguma Fisures"
command = ~D,DB,B+c
time = 20
[Command]
name = "Maguma Fisures"
command = ~D,DB,B,c
time = 20


[Command]
name = "Maguma Catch"
command = ~F,DF,D,DB,B+c
time = 25
[Command]
name = "Maguma Catch"
command = ~F,DF,D,DB,B,c
time = 25




[Command]
name = "Meigo"
command = ~F,D,DF+c
time = 20
[Command]
name = "Meigo"
command = ~F,D,DF,c
time = 20



[Command]
name = "Pyroplasctic Flow"
command = ~B,DB,D,DF,F+b
time = 25
[Command]
name = "Pyroplasctic Flow"
command = ~B,DB,D,DF,F,b
time = 25

[Command]
name = "Body Meteorite"
command = ~D,DB,B+b
time = 20
[Command]
name = "Body Meteorite"
command = ~D,DB,B,b
time = 20





[Command]
name = "Lava Hammer"
command = ~D,DF,F+a
time = 20
[Command]
name = "Lava Hammer"
command = ~D,DF,F,a
time = 20

 [Command]
name = "Nigazan"
command = ~D,DB,B+a
time = 20
[Command]
name = "Nigazan"
command = ~D,DB,B,a
time = 20






;-| Comands  |-----------------------------------------------------------

[Command]
name = "Super Jump"
command = ~D, U
time = 5

[Command]
name = "Super Jump"
command = ~D, UF
time = 5
[Command]
name = "Super Jump"
command = ~D, UB
time = 5

[Command]
name = "Super Jump"
command = ~DB, UF
time = 5
[Command]
name = "Super Jump"
command = ~DB, UB
time = 5

[Command]
name = "Super Jump"
command = ~DF, UF
time = 5
[Command]
name = "Super Jump"
command = ~DF, UB
time = 5

[Command]
name = "Super Jump"
command = ~DB, U
time = 5
[Command]
name = "Super Jump"
command = ~DF, U
time = 5


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
name = "recovery";Required (do not remove)
command = a+b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1



[Command]
name = "Throw Basic"
command = b+c
time = 1
[Command]
name = "Throw Basic"
command = z
time = 1


[Command]
name = "Change Tag"
command = a+c
time = 1
[Command]
name = "Change Tag"
command = x
time = 1
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10



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
name = "down_c"
command = /$D,c
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
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down" ;Required (do not remove)
command = D
time = 1

[Command]
name = "fwd" ;Required (do not remove)
command = F
time = 1

[Command]
name = "back" ;Required (do not remove)
command = B


;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = y+z ; con el bot A+B activamos la AI
;time = 1

;[Command]
;name = "AI desactivado"
;command = b+c ; Con el boton B+C desactivamos la AI
;time = 1

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1

;-------------------------------------------------------------------------------
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

;===============================================================================
;---------------- Supers -------------------------------------------------------
;===============================================================================

;---------------------------------------------------------------------------
;Super Move Unite
[State -1, Super Move Unite]
type = ChangeState
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper(8900) = 1
triggerall = (helper(8900),stateno = 8901)
triggerall = Numpartner
triggerall = command = "Super Move Unite"
triggerall = (partner, name="Aokiji")
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)
trigger13 = (stateno = 3001) && (movecontact) && (time > 20)
value = 3800

;Kazan Bakuhatsu - Stand
[State -1, Kazan Bakuhatsu - Stand]
type = ChangeState
value = 3300
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Kazan Bakuhatsu"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)
trigger13 = (stateno = 3001) && (movecontact) && (time > 20)


;Ryusei Kazan - Stand
[State -1, Ryusei Kazan - Stand]
type = ChangeState
value = 3100
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Ryusei Kazan"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)


;Inugami Guren- Stand
[State -1, Inugami Guren - Stand]
type = ChangeState
value = 3000
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Inugami Guren"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)



;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================

;===========================================================================
;--- Normal Mode -----------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Maguma Catch
[State -1, Maguma Catch]
type = ChangeState
value = 1400
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Maguma Catch"
triggerall = numexplod(70752) = 0
triggerall = numexplod(70762) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (hitcount >= 1)
trigger8 = (stateno = 1311) && (hitcount >= 1)
trigger9 = (stateno = 1600) && (hitcount >= 1) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (hitcount >= 1)
trigger12 = (stateno = [150,153]) && (power >= 1000)



;---------------------------------------------------------------------------
; Maguma Fisures
[State -1, Maguma Fisures]
type = ChangeState
value = 1800
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Maguma Fisures"
triggerall = numhelper(1860) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (hitcount >= 1) && (time > 18)
trigger8 = (stateno = 1311) && (hitcount >= 1)
trigger9 = (stateno = 1710) && (hitcount >= 1)
trigger10 = (stateno = [150,153]) && (power >= 1000)


;---------------------------------------------------------------------------
; Pyroplasctic Flow
[State -1, Pyroplasctic Flow]
type = ChangeState
value = 1700
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Pyroplasctic Flow"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (hitcount >= 1) && (time > 18)
trigger8 = (stateno = 1311) && (hitcount >= 1)



;---------------------------------------------------------------------------
; Meigo
[State -1, Meigo]
type = ChangeState
value = 1600
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Meigo"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (hitcount >= 1) && (time > 18)
trigger8 = (stateno = 1311) && (hitcount >= 1)
trigger9 = (stateno = 1710) && (hitcount >= 1)





;---------------------------------------------------------------------------


; Body Meteorite - Air
[State -1, Body Meteorite - Air]
type = ChangeState
value = 1350
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Body Meteorite"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact) && (time > 27)
trigger5 = (stateno = 1220) && (hitcount >= 1) && (time > 15)
trigger6 = (stateno = 1230) && (hitcount >= 1) && (time > 15)


; Body Meteorite
[State -1, Body Meteorite]
type = ChangeState
value = 1300
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Body Meteorite"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (hitcount >= 1)


;---------------------------------------------------------------------------
; Nigazan
[State -1, Nigazan]
type = ChangeState
value = 1200
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Nigazan"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (hitcount >= 1)
trigger8 = (stateno = 1311) && (hitcount >= 1)
trigger9 = (stateno = 1600) && (hitcount >= 1) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (hitcount >= 1)


;---------------------------------------------------------------------------
; Lava Hammer
[State -1, Lava Hammer]
type = ChangeState
value = 1100
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "Lava Hammer"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)





;===============================================================================
;---- Tag Team System ----------------------------------------------------------
;===============================================================================

[State -3, Tag System  - Start Exit Command - Super Move 1]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = power >= 1000
triggerall = command = "Super Move Tag 1"
trigger1 = ctrl
trigger1 = ailevel = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)
trigger13 = (stateno = 3001) && (movecontact) && (time > 20)
trigger14 = (stateno = [150,155]) && (power >= 1500)
value = 902

[State -3, Tag System  - Start Exit Command - Super Move 2]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = power >= 1000
triggerall = command = "Super Move Tag 2"
trigger1 = ctrl
trigger1 = ailevel = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)
trigger13 = (stateno = 3001) && (movecontact) && (time > 20)
trigger14 = (stateno = [150,155]) && (power >= 1500)
value = 903


[State -3, Tag System  - Start Exit Command - Offensive]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = command = "Change Tag"
triggerall = p2bodydist x <= 75
trigger1 = ctrl
trigger1 = ailevel = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact) && (time > 17)
trigger7 = (stateno = 1101) && (movecontact)
trigger8 = (stateno = 1311) && (movecontact)
trigger9 = (stateno = 1600) && (movecontact) && (time > 23)
trigger10 = (stateno = 1601) && (time > 10)
trigger11 = (stateno = 1710) && (movecontact)
trigger12 = (stateno = 1820) && (time > 25)
trigger13 = (stateno = [150,155]) && (power >= 1500)
value = 900



[State -3, Tag System  - Start Exit Command - Defensive]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = command = "Change Tag"
triggerall = ctrl
trigger1 = ailevel = 0 && p2bodydist x > 75
trigger2 = ailevel = 0 && movetype != A
trigger3 = ailevel > 0 && random < 20
value = 901




;===============================================================================
;---- Throw Basics -------------------------------------------------------------
;===============================================================================
; Throw Basics
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "Throw Basic"
triggerall = ctrl
trigger1 = statetype != A



;===============================================================================
;---- Rolls en el CMD ------------------------------------------------------
;===============================================================================

;Roll BACK - Super
[State -1, Roll BACK]
type = ChangeState
value = 715
triggerall = command = "recovery" && command = "holdback" || command = "recovery" && command = "holdback"  && command = "holddown"
triggerall = stateno = [150,153]
Triggerall = power >= 500
trigger1 = statetype = S || statetype = C

;Roll BACK
[State -1, Roll BACK]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback" || command = "recovery" && command = "holdback"  && command = "holddown"
triggerall = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll FWD - Super
[State -1, Roll FWD]
type = ChangeState
value = 705
triggerall = numhelper(8380) = 0; helper(8300), var(20) < 67 ; no recovery during STUN fall
triggerall = command = "recovery" || command = "recovery" && command = "holddown"
triggerall = stateno = [150,153]
Triggerall = power >= 500
trigger1 = statetype = S || statetype = C

;Roll FWD
[State -1, Roll FWD]
type = ChangeState
value = 700
triggerall = numhelper(8380) = 0 ; no recovery during STUN fall
triggerall = command = "recovery" || command = "recovery" && command = "holddown"
triggerall = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Fall Down
[State -1, Roll Fall Down]
type = ChangeState
value = ifelse(vel x > 0, 720, 725)
triggerall = numhelper(8380) = 0 ; helper(8300), var(20) < 67 ; no recovery during STUN fall
triggerall = enemy, numhelper(3095) = 0
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30
trigger1 = vel y > 0 && vel y < 9


;===============================================================================
;---------------- Comands -----------------------------------------------------
;===============================================================================



;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value           = 60
triggerall      = command = "Super Jump"
triggerall      = numhelper(65) = 0
trigger1        = (statetype = S) && (ctrl)




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
triggerall = numhelper(8561) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================
;Run light Attack
[State -1, Run light Attack]
type = ChangeState
value = 200
triggerall = stateno = 100
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Run Twin Punch
[State -1, Run Strong Attack]
type = ChangeState
value = 210
triggerall = stateno = 100
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl


;Run Magu Magu no Mi -  Dai Funka
[State -1, Stand  Magu Magu no Mi]
type = ChangeState
triggerall = stateno = 100
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = Numhelper(1010) = 0
trigger1 = statetype != A
value = 220


;===================================================================================
;---------------- B疽icos ----------------------------------------------------------
;===================================================================================

;---------------------------------------------------------------------------
;Crouch Punch
[State -1, Crouch Punch]
type = ChangeState
value = 205
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = Numhelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 52)


;Stand Punch
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = Numhelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 52)

;---------------------------------------------------------------------------
;Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 215
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = Numhelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 52)

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = Numhelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 52)



;------------------------------------------------------------------------

;Stand Magu Magu no Mi -  Dai Funka
[State -1, Stand  Magu Magu no Mi -  Dai Funka]
type = ChangeState
triggerall = command = "c"
triggerall = Numhelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 205) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 52)
value = 220

;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Atack
;空中弱パンチ
[State -1, Jump Light Atack]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Atack
[State -1, Jump Strong Atack]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)

;---------------------------------------------------------------------------
;Jump  Fuwa Fuwa no Mi -  Rock Summon
[State -1, Jump Fuwa Fuwa no Mi]
type = ChangeState
triggerall = command = "c"
triggerall = Numhelper(1010) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
value = 620

[State -1, Jump Fuwa Fuwa no Mi]
type = ChangeState
triggerall = command = "c"
triggerall = Numhelper(1010) = 1
triggerall = Numhelper(1020) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
value = 621


[State -1, Jump Fuwa Fuwa no Mi]
type = ChangeState
triggerall = command = "c"
triggerall = Numhelper(1020) = 1
triggerall = Numhelper(1030) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
value = 622



[State -1, Jump Fuwa Fuwa no Mi]
type = ChangeState
triggerall = command = "c"
triggerall = Numhelper(1030) = 1
triggerall = Numhelper(1040) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
value = 623


[State -1, Jump Fuwa Fuwa no Mi]
type = ChangeState
triggerall = command = "c"
triggerall = Numhelper(1040) = 1
triggerall = Numhelper(1050) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
value = 624



;---------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
