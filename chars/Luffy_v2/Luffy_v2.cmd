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
name = "Giganto Bazzoka"
command = ~D,DF,F,D,DF,F,a+b+c
time = 35
[Command]
name = "Giganto Bazzoka"
command = ~D,DF,F,D,DF,F+a+b+c
time = 35

[Command]
name = "Giganto Jet Shell"
command = ~20$B,F,B,F,c
time = 35
[Command]
name = "Giganto Jet Shell"
command = ~20$B,F,B,F+c
time = 35



[Command]
name = "Giganto Raifuru"
command = ~D,DF,F,a
time = 35
[Command]
name = "Giganto Raifuru"
command = ~D,DF,F+a
time = 35

[Command]
name = "Gia Sado"
command = ~F,B,DB,D,DF,F,c
time = 35
[Command]
name = "Gia Sado"
command = ~F,B,DB,D,DF,F+c
time = 35



[Command]
name = "Jet Gatoringu Full"
command = ~20$B,F,B,F,a+b
time = 35
[Command]
name = "Jet Gatoringu Full"
command = ~20$B,F,B,F,a+b
time = 35
[Command]
name = "Jet Gatoringu Full"
command = ~20$B,F,B,F,y
time = 35
[Command]
name = "Jet Gatoringu Full"
command = ~20$B,F,B,F,y
time = 35


[Command]
name = "Gear Second 1"
command = ~F,B,DB,D,DF,F,a
time = 35
[Command]
name = "Gear Second 1"
command = ~F,B,DB,D,DF,F+a
time = 35
[Command]
name = "Gear Second 2"
command = ~F,B,DB,D,DF,F,b
time = 35
[Command]
name = "Gear Second 2"
command = ~F,B,DB,D,DF,F+b
time = 35



[Command]
name = "Raifuru"
command = ~D,DF,F,D,DF,F,a
time = 35
[Command]
name = "Raifuru"
command = ~D,DF,F,D,DF,F+a
time = 35


[Command]
name = "Gum Storm"
command = ~D,DF,F,D,DF,F,c
time = 35
[Command]
name = "Gum Storm"
command = ~D,DF,F,D,DF,F+c
time = 35



;-| Special Motions |------------------------------------------------------

[Command]
name = "Gatoringu"
command = a,a,a
time = 30


[Command]
name = "Gatoringu en el aire"
command = a,a,a
time = 30


[Command]
name = "Jari Catch"
command = ~D,DF,F,b
time = 20
[Command]
name = "Jari Catch"
command = ~D,DF,F+b
time = 20


[Command]
name = "Ono"
command = ~D,DB,B,b
time = 20
[Command]
name = "Ono"
command = ~D,DB,B+b
time = 20


[Command]
name = "Bazooka"
command = ~D,DF,F,c
time = 20
[Command]
name = "Bazooka"
command = ~D,DF,F+c
time = 20



[Command]
name = "Catch Rocketto Up"
command = ~B,D,DB,c
time = 25
[Command]
name = "Catch Rocketto Up"
command = ~B,D,DB+c
time = 25

[Command]
name = "Catch Rocketto"
command = ~F,DF,D,DB,B,c
time = 25
[Command]
name = "Catch Rocketto"
command = ~F,DF,D,DB,B,+c
time = 25

[Command]
name = "Pachinko"
command = ~F,DF,D,DB,B,a
time = 25
[Command]
name = "Pachinko"
command = ~F,DF,D,DB,B,+a
time = 25


[Command]
name = "Rocket"
command = ~D,DB,B,c
time = 20
[Command]
name = "Rocket"
command = ~D,DB,B+c
time = 20


[Command]
name = "Fussen"
command = ~D,DB,B,a
time = 20
[Command]
name = "Fussen"
command = ~D,DB,B+a
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
name = "Burst"
command = a+b+c
time = 1
[Command]
name = "Burst"
command = a+x
time = 1
[Command]
name = "Burst"
command = a+y
time = 1
[Command]
name = "Burst"
command = a+z
time = 1
[Command]
name = "Burst"
command = b+x
time = 1
[Command]
name = "Burst"
command = b+y
time = 1
[Command]
name = "Burst"
command = b+z
time = 1
[Command]
name = "Burst"
command = c+x
time = 1
[Command]
name = "Burst"
command = c+y
time = 1
[Command]
name = "Burst"
command = c+z
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
time = 10


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
time = 1


;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
[Command]
name = "AI Prueba"
command = y+z ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

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

;===================================================================================
;---------------- Supers -----------------------------------------------------------
;===================================================================================




;---------------------------------------------------------------------------
;Super Move Unite
[State -1, Super Move Unite]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper(8900) = 1
triggerall = (helper(8900),stateno = 8901)
triggerall = Numpartner
triggerall = command = "Super Move Unite"
triggerall = (partner, name="Zoro Roronoa") || (partner, name="Nami")
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 221) && (movecontact)
trigger8 = (stateno = 222) && (movecontact)
trigger9 = (stateno = 223) && (movecontact)
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1020) && (movecontact)
trigger13 = (stateno = 1200) && (movecontact)
trigger14 = (stateno = 1301) && (movecontact)
trigger15 = (stateno = 1302) && (movecontact)
trigger16 = (stateno = 1520) && (time > 2)
trigger17 = (stateno = 3011) && (time > 2)
value = Ifelse((partner, name="Zoro Roronoa"),3800,3900)



;---------------------------------------------------------------------------
;Giganto Bazzoka
[State -1, Giganto Bazzoka]
type = ChangeState
value = 3700
triggerall = command = "Giganto Bazzoka"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 221) && (movecontact)
trigger8 = (stateno = 222) && (movecontact)
trigger9 = (stateno = 223) && (movecontact)
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1020) && (movecontact)
trigger13 = (stateno = 1200) && (movecontact)
trigger14 = (stateno = 1301) && (movecontact)
trigger15 = (stateno = 1302) && (movecontact)
trigger16 = (stateno = 1520) && (time > 2)
trigger17 = (stateno = 3011) && (time > 2)


;---------------------------------------------------------------------------
;Giganto Jet Shell
[State -1, Giganto Jet Shell]
type = ChangeState
value = 3600
triggerall = var(2) = 1
triggerall = command = "Giganto Jet Shell"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 2221) && (movecontact)
trigger6 = (stateno = 2222) && (movecontact)
trigger7 = (stateno = 2223) && (movecontact)
trigger8 = (stateno = 2500) && (movecontact) && (Time > 20)
trigger9 = (stateno = 2501) && (movecontact) && (Time > 20)
trigger10 = (stateno = 2520) && (movecontact)
trigger11 = (stateno = 3401) && (time > 100)
trigger12 = (stateno = 3403) && (time > 3)


;---------------------------------------------------------------------------
;Gia Sado
[State -1, Gia Sado]
type = ChangeState
value = 3500
triggerall = var(2) != 1
triggerall = command = "Gia Sado"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 221) && (movecontact)
trigger8 = (stateno = 222) && (movecontact)
trigger9 = (stateno = 223) && (movecontact)
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1020) && (movecontact)
trigger13 = (stateno = 1200) && (movecontact)
trigger14 = (stateno = 1301) && (movecontact)
trigger15 = (stateno = 1302) && (movecontact)
trigger16 = (stateno = 1520) && (time > 2)

;---------------------------------------------------------------------------
;Jet Gatuling Full
[State -1, Jet Gatuling Full]
type = ChangeState
value = 3400
triggerall = var(2) = 1
triggerall = command = "Jet Gatoringu Full"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 2221) && (movecontact)
trigger6 = (stateno = 2222) && (movecontact)
trigger7 = (stateno = 2223) && (movecontact)
trigger8 = (stateno = 2500) && (movecontact) && (Time > 20)
trigger9 = (stateno = 2501) && (movecontact) && (Time > 20)
trigger10 = (stateno = 2520) && (movecontact)





;---------------------------------------------------------------------------
;Gear Second
[State -1, Gear Second]
type = ChangeState
value = 3300
triggerall = var(2) != 1
triggerall = command ="Gear Second 1" || command ="Gear Second 2"
triggerall = power >= 1000
triggerall = numhelper(7900) = 1
triggerall = helper(7900),var(19)>199
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 221) && (movecontact)
trigger8 = (stateno = 222) && (movecontact)
trigger9 = (stateno = 223) && (movecontact)
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1020) && (movecontact)
trigger13 = (stateno = 1200) && (movecontact)
trigger14 = (stateno = 1301) && (movecontact)
trigger15 = (stateno = 1302) && (movecontact)
trigger16 = (stateno = 1520) && (time > 2)






;---------------------------------------------------------------------------
;Gum Storm  - Air
[State -1, Gum Storm - Air]
type = ChangeState
value = 3120
triggerall = var(2) != 1
triggerall = command = "Gum Storm"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 1050) && (movecontact)
trigger8 = (stateno = 1351) && (time > 5)
trigger9 = (stateno = 1710) && (Time > 7)



;---------------------------------------------------------------------------
;Gum Storm
[State -1, Gum Storm]
type = ChangeState
value = 3100
triggerall = var(2) != 1
triggerall = command = "Gum Storm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 221) && (movecontact)
trigger8 = (stateno = 222) && (movecontact)
trigger9 = (stateno = 223) && (movecontact)
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1020) && (movecontact)
trigger13 = (stateno = 1200) && (movecontact)
trigger14 = (stateno = 1301) && (movecontact)
trigger15 = (stateno = 1302) && (movecontact)
trigger16 = (stateno = 1520) && (time > 2)



;---------------------------------------------------------------------------
; Raifuru
[State -1, Raifuru]
type = ChangeState
value = 3000
triggerall = var(2) != 1
triggerall = command = "Raifuru"
triggerall = numhelper(3050) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 221) && (movecontact)
trigger8 = (stateno = 222) && (movecontact)
trigger9 = (stateno = 223) && (movecontact)
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1020) && (movecontact)
trigger13 = (stateno = 1200) && (movecontact)
trigger14 = (stateno = 1301) && (movecontact)
trigger15 = (stateno = 1302) && (movecontact)
trigger16 = (stateno = 1520) && (time > 2)


;===================================================================================
;---------------- Specials Modo Gear Second -----------------------------------------
;===================================================================================


;---------------------------------------------------------------------------
;Gatoringu Air - Gear Second
[State -1,  Jet Gatoringu Air - Gear Second]
type = ChangeState
triggerall = var(2) = 1
triggerall = stateno != 2530
triggerall = prevstateno != 2530
triggerall = prevstateno != 2531
value = 2530
triggerall = command = "Gatoringu en el aire"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (movecontact)
trigger3 = (stateno = 2310) && (movecontact)
trigger4 = (stateno = 2320) && (movecontact)
trigger5 = (stateno = 2330) && (movecontact)

;---------------------------------------------------------------------------
;Gatoringu - Gear Second
[State -1,  Jet Gatoringu - Gear Second]
type = ChangeState
triggerall = var(2) = 1
value = 2500
triggerall = command = "Gatoringu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 2221) && (movecontact)
trigger6 = (stateno = 2222) && (movecontact)
trigger7 = (stateno = 2223) && (movecontact)



;---------------------------------------------------------------------------
;Jet Axe - Gear Second
[State -1, Jet Axe - Gear Second]
type = ChangeState
triggerall = var(2) = 1
value = 2600
triggerall = command = "Ono"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 2221) && (movecontact)
trigger6 = (stateno = 2222) && (movecontact)
trigger7 = (stateno = 2223) && (movecontact)
trigger8 = (stateno = 2500) && (hitcount >= 1) && (Time > 20)
trigger9 = (stateno = 2501) && (hitcount >= 1) && (Time > 20)
trigger10 = (stateno = 2520) && (hitcount >= 1)


;---------------------------------------------------------------------------
;Jet Bazooka - En el aire
[State -1,  - Jet Bazooka - En el aire]
type = ChangeState
triggerall = var(2) = 1
triggerall = numhelper(2790) = 0
value = 2750
triggerall = command = "Bazooka"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (movecontact)
trigger3 = (stateno = 2310) && (movecontact)
trigger4 = (stateno = 2320) && (movecontact)
trigger5 = (stateno = 2330) && (movecontact)

;---------------------------------------------------------------------------
;Jet Bazooka - Gear Second
[State -1,  - Gear Second]
type = ChangeState
triggerall = var(2) = 1
triggerall = numhelper(2790) = 0
value = 2700
triggerall = command = "Bazooka"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 2221) && (movecontact)
trigger6 = (stateno = 2222) && (movecontact)
trigger7 = (stateno = 2223) && (movecontact)
trigger8 = (stateno = 2500) && (hitcount >= 1) && (Time > 20)
trigger9 = (stateno = 2501) && (hitcount >= 1) && (Time > 20)
trigger10 = (stateno = 2520) && (hitcount >= 1)

;---------------------------------------------------------------------------
;Rocket Digonal Abajo
[State -1, Rocket Digonal Abajo]
type = ChangeState
value = 2800
triggerall = var(2)= 1
triggerall = command = "Rocket"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (movecontact)
trigger3 = (stateno = 2310) && (movecontact)
trigger4 = (stateno = 2320) && (movecontact)
trigger5 = (stateno = 2330) && (movecontact)





;===============================================================================
;---------------- Specials -----------------------------------------------------
;===============================================================================
;-------------------------------------------------------------------------------
;Gatoringu
[State -1, Gatoringu]
type = ChangeState
value = 1000
triggerall = var(2) != 1
triggerall = command != "holddown"
triggerall = command = "Gatoringu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 201) && (movecontact)
trigger3 = (stateno = 202) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 215) && (movecontact)
trigger6 = (stateno = 221) && (movecontact)
trigger7 = (stateno = 222) && (movecontact)
trigger8 = (stateno = 223) && (movecontact)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)

;---------------------------------------------------------------------------
;Gatoringu en el aire
[State -1, Gatoringu en el aire]
type = ChangeState
value = 1050
triggerall = var(2) != 1
triggerall = command = "Gatoringu en el aire" ;"Metralleta"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 1351) && (time > 5)
trigger8 = (stateno = 1710) && (Time > 7)
trigger9 = (stateno = 3111) && (movecontact)

;---------------------------------------------------------------------------
;Gum Ono
[State -1, Gum Ono]
type = ChangeState
value = 1200
triggerall = var(2) != 1
triggerall = command = "Ono"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (hitcount >= 1)
trigger14 = (stateno = 1301) && (hitcount >= 1)
trigger15 = (stateno = 1302) && (hitcount >= 1)
trigger16 = (stateno = 1520) && (time > 2)



;---------------------------------------------------------------------------
;Gum Axe
[State -1, Gum Axe]
type = ChangeState
value = 1250
;triggerall = var(2) != 1
triggerall = command = "Ono"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 1050) && (movecontact)
trigger8 = (stateno = 1351) && (time > 5)
trigger9 = (stateno = 1710) && (Time > 7)
trigger10 = (stateno = 2300) && (movecontact)
trigger11 = (stateno = 2310) && (movecontact)
trigger12 = (stateno = 2320) && (movecontact)
trigger13 = (stateno = 3111) && (movecontact)




;---------------------------------------------------------------------------
;Bazooka
[State -1, Bazooka]
type = ChangeState
value = 1300
triggerall = var(2) != 1
triggerall = command = "Bazooka"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (hitcount >= 1)
trigger14 = (stateno = 1200) && (hitcount >= 1)


;---------------------------------------------------------------------------
;Bazooka en el aire
[State -1, Bazooka en el aire]
type = ChangeState
value = 1350
triggerall = var(2) != 1
triggerall = command = "Bazooka"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 1710) && (Time > 7)



;---------------------------------------------------------------------------
;Catch Rocketto Up
[State -1, Catch Rocketto Up]
type = ChangeState
value = 1550
triggerall = var(2) != 1
triggerall = command = "Catch Rocketto Up"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (hitcount >= 1)
trigger14 = (stateno = 1200) && (hitcount >= 1)
trigger15 = (stateno = 1301) && (hitcount >= 1)
trigger16 = (stateno = 1302) && (hitcount >= 1)
trigger17 = (stateno = [150,155]) && (power >= 1500)

;Catch Rocketto
[State -1, Catch Rocketto]
type = ChangeState
value = 1500
triggerall = var(2) != 1
triggerall = command = "Catch Rocketto"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (hitcount >= 1)
trigger14 = (stateno = 1200) && (hitcount >= 1)
trigger15 = (stateno = 1301) && (hitcount >= 1)
trigger16 = (stateno = 1302) && (hitcount >= 1)
trigger17 = (stateno = [150,155]) && (power >= 1500)



;---------------------------------------------------------------------------
;Jari Catch
[State -1, Jari Catch]
type = ChangeState
value = 1600
triggerall = var(2) != 1
triggerall = command = "Jari Catch"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 1351) && (time > 5)
trigger8 = (stateno = 1710) && (Time > 7)



;---------------------------------------------------------------------------
;Rocket Digonal Abajo
[State -1, Rocket Digonal Abajo]
type = ChangeState
value = 1700
triggerall = var(2) != 1
triggerall = command = "Rocket"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 620) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 1351) && (time > 5)






;---------------------------------------------------------------------------
;Pachinko
[State -1, Pachinko]
type = ChangeState
value = 1800
triggerall = var(2) != 1
triggerall = command = "Pachinko"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (hitcount >= 1)
trigger14 = (stateno = 1200) && (hitcount >= 1)
trigger15 = (stateno = 1301) && (hitcount >= 1)
trigger16 = (stateno = 1302) && (hitcount >= 1)

;---------------------------------------------------------------------------
;Fussen - En el aire
[State -1, Fussen - En el aire]
type = ChangeState
value = 1950
triggerall = var(2)!= 1
triggerall = command = "Fussen"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fussen
[State -1, Fussen]
type = ChangeState
value = 1900
triggerall = var(2)!= 1
triggerall = command = "Fussen"
trigger1 = statetype != A
trigger1 = ctrl


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
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (movecontact)
trigger14 = (stateno = 1200) && (movecontact)
trigger15 = (stateno = 1301) && (movecontact)
trigger16 = (stateno = 1302) && (movecontact)
trigger17 = (stateno = 1520) && (time > 2)
trigger18 = (stateno = 3011) && (time > 2)
trigger19 = (stateno = [150,155]) && (power >= 1500)
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
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (movecontact)
trigger14 = (stateno = 1200) && (movecontact)
trigger15 = (stateno = 1301) && (movecontact)
trigger16 = (stateno = 1302) && (movecontact)
trigger17 = (stateno = 1520) && (time > 2)
trigger18 = (stateno = 3011) && (time > 2)
trigger19 = (stateno = [150,155]) && (power >= 1500)
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
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)
trigger13 = (stateno = 1020) && (movecontact)
trigger14 = (stateno = 1200) && (movecontact)
trigger15 = (stateno = 1301) && (movecontact)
trigger16 = (stateno = 1302) && (movecontact)
trigger17 = (stateno = 1520) && (time > 2)
trigger18 = (stateno = 3011) && (time > 2)
trigger19 = (stateno = [150,155]) && (power >= 1500)
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
;---------------- Comands ------------------------------------------------------
;===============================================================================
;---------------------------------------------------------------------------
; Burst - Anti Combos
[State -1, Burst - Anti Combos]
type = ChangeState
value = 500
triggerall = alive = 1
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 68
triggerall = p2stateno != [3000,3999]
triggerall = stateno = [5000,5035]
trigger1 = movetype = H
trigger1 = ctrl = 0


; Burst - Block Reject
[State -1, Burst - Block Reject]
type = ChangeState
value = 510
triggerall = alive = 1
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 34
triggerall = stateno = [150,153]
triggerall = var(24) = 0 ; para que no se pueda usar el Bust en Block si ya está activado el Burst Offensive
trigger1 = statetype = S || statetype = C
trigger2 = statetype = A

; Burst - Offensive Activation
[State -1, Burst - Offensive Activation]
type = ChangeState
value = 520
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 68
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "Throw Basic"
triggerall = ctrl
trigger1 = statetype != A


;-------------------------------------------------------------------------------
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
Triggerall = power >= 1000
trigger1 = statetype = S || statetype = C


;Roll FWD
[State -1, Roll FWD]
type = ChangeState
value = 700
triggerall = numhelper(8380) = 0 ; no recovery during STUN fall
triggerall = command = "recovery" || command = "recovery" && command = "holddown"
triggerall = statetype = S || statetype = C
triggerall = ifelse((stateno = [200,320]),power >= 1000,power >= 0)
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 221) && (movecontact)
trigger9 = (stateno = 222) && (movecontact)
trigger10 = (stateno = 223) && (movecontact)
trigger11 = (stateno = 300) && (movecontact)
trigger12 = (stateno = 310) && (movecontact)


;---------------------------------------------------------------------------
;Roll Fall Down
[State -1, Roll Fall Down]
type = ChangeState
value = ifelse(vel x > 0, 720, 725)
triggerall = numhelper(8380) = 0 ; helper(8300), var(20) < 67 ; no recovery during STUN fall
triggerall = command = "recovery"
triggerall = enemy, numhelper(3095) = 0;Para evitar que se recupere luego de un super move
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30
trigger1 = vel y > 0 && vel y < 9





;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value           = 60
triggerall      = var(2) != 1
triggerall      = command = "Super Jump"
triggerall      = numhelper(65) = 0
trigger1        = (statetype = S) && (ctrl)


;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
triggerall = var(2)= 1
trigger1 = command = "FF"
value = 2100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
triggerall = var(2)= 1
type = ChangeState
trigger1 = command = "BB"
value = 2105
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
triggerall = Var(4) = 0
triggerall = stateno != 60
triggerall = var(2)= 1
triggerall = prevstateno != 2107
triggerall = prevstateno != 2108
triggerall = prevstateno != [2310,2320]
trigger1 = command = "FF"
value = 2107
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
triggerall = Var(4) = 0
triggerall = stateno != 60
triggerall = var(2)= 1
triggerall = prevstateno != 2107
triggerall = prevstateno != 2108
triggerall = prevstateno != [2310,2320]
type = ChangeState
trigger1 = command = "BB"
value = 2108
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
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
;Run Buretto
[State -1, Run Buretto]
type = ChangeState
value = 300
triggerall = stateno = 100
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Run Patada
[State -1, Run Patada]
type = ChangeState
value = 310
triggerall = stateno = 100
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Run Special
[State -1, Run Special]
type = ChangeState
value = 320
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = stateno = 100
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;===================================================================================
;---------------- Gear Secon Básicos----------------------------------------------
;===================================================================================

;---------------------------------------------------------------------------
;Stand Light Atack
[State -1, Stand Light Atack]
type = ChangeState
triggerall = var(2)= 1
triggerall = command = "a"
value = 2200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 310) && (movecontact)
trigger3 = (stateno = 52)

;---------------------------------------------------------------------------
;Stand Light Atack - 2nd hit
[State -1, Stand Light Atack, 2nd hit]
type = ChangeState
triggerall = var(2)= 1
triggerall = command = "a"
value = 2201
triggerall = (stateno = 2200) && (time > 2)
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Strong Atack
[State -1, Stand Strong Atack]
type = ChangeState
triggerall = var(2)= 1
triggerall = command = "b"
value = 2210
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 52)


;---------------------------------------------------------------------------
;Stand Special Atack
[State -1, Stand Special Atack]
type = ChangeState
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = var(2)= 1
triggerall = command = "c"
value = 2220
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2201) && (movecontact)
trigger4 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 52)

;---------------------------------------------------------------------------
;Jump Light Atack aire
[State -1, Jump Special Atack]
type = ChangeState
value = 2300
triggerall = var(2)= 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Atack aire
[State -1, Jump Special Atack]
type = ChangeState
value = 2310
triggerall = var(2)= 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (Time > 8)


;---------------------------------------------------------------------------
;Jump Special Atack aire
[State -1, Jump Special Atack]
type = ChangeState
value = 2330
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = var(2)= 1
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (movecontact)
trigger3 = (stateno = 2310) && (movecontact)


;---------------------------------------------------------------------------
;Jump Special Atack aire
[State -1, Jump Special Atack]
type = ChangeState
value = 2320
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = var(2)= 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (movecontact)
trigger3 = (stateno = 2310) && (movecontact)


;===============================================================================
;---------------- Básicos ------------------------------------------------------
;===============================================================================

;---------------------------------------------------------------------------
;Crouch Light Atack
[State -1, Crouch Light Atack]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = (command = "holddown")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 52)


;---------------------------------------------------------------------------
;Stand Light Atack - Buretto
;[State -1, Stand Light Atack, Buretto]
;type = ChangeState
;value = 202
;triggerall = command = "a"
;triggerall = (command = "holdfwd")
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = 200) && (movecontact)
;trigger3 = (stateno = 201) && (movecontact)
;trigger4 = (stateno = 205) && (movecontact)

;---------------------------------------------------------------------------
;Stand Light Atack
[State -1, Stand Light Atack]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 300) && (movecontact)
trigger3 = (stateno = 52)

;---------------------------------------------------------------------------
;Stand Light Atack - 2nd hit
[State -1, Stand Light Atack, 2nd hit]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = (stateno = 200) && (movecontact)
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouch Kick Atack
[State -1, Crouch Kick Atack]
type = ChangeState
value = 215
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 300) && (movecontact)
trigger7 = (stateno = 52)


;Stand Strong Atack
[State -1, Stand Strong Atack]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 300) && (movecontact)
trigger7 = (stateno = 52)




;---------------------------------------------------------------------------
;Stand Special Atack
[State -1, Stand Special Atack]
type = ChangeState
value = 220
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 210) && (movecontact)
trigger7 = (stateno = 215) && (movecontact)
trigger8 = (stateno = 300) && (movecontact)
trigger9 = (stateno = 52)





;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Atack
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Atack]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1710) && (movecontact)


;---------------------------------------------------------------------------
;Jump Strong Atack
[State -1, Jump Strong Atack]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger5 = (stateno = 1710) && (time > 4)



;---------------------------------------------------------------------------
;Jump Whip
[State -1, Jump Special Atack]
type = ChangeState
value = 620
triggerall = ifelse((enemy, name = "Kurohige"),(enemy, numhelper(1090) = 0),(enemy, name != "Kurohige"))
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 1710) && (time > 4)






;---------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
