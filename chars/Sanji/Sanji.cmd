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
name = "Meteor Strike"
command = ~D,DF,F,DF,D,DB,B,a+b
time = 35
[Command]
name = "Meteor Strike"
command = ~D,DF,F,DF,D,DB,B+a+b
time = 35
[Command]
name = "Meteor Strike"
command = ~D,DF,F,DF,D,DB,B,y
time = 35
[Command]
name = "Meteor Strike"
command = ~D,DF,F,DF,D,DB,B+y
time = 35



[Command]
name = "Flambage Shot - No Diable Jamble"
command = ~F,B,DB,D,DF,F,a+b
time = 35
[Command]
name = "Flambage Shot - No Diable Jamble"
command = ~F,B,DB,D,DF,F+a+b
time = 35
[Command]
name = "Flambage Shot - No Diable Jamble"
command = ~F,B,DB,D,DF,F,y
time = 35
[Command]
name = "Flambage Shot - No Diable Jamble"
command = ~F,B,DB,D,DF,F+y
time = 35

[Command]
name = "Flambage Shot"
command = ~F,B,DB,D,DF,F,b
time = 35
[Command]
name = "Flambage Shot"
command = ~F,B,DB,D,DF,F+b
time = 35
[Command]
name = "Flambage Shot"
command = ~F,B,DB,D,DF,F,a
time = 35
[Command]
name = "Flambage Shot"
command = ~F,B,DB,D,DF,F+a
time = 35




[Command]
name = "Venaison Shoot - No Diable Jamble"
command = ~D,DF,F,D,DF,F,a+b
time = 35
[Command]
name = "Venaison Shoot - No Diable Jamble"
command = ~D,DF,F,D,DF,F+a+b
time = 35
[Command]
name = "Venaison Shoot - No Diable Jamble"
command = ~D,DF,F,D,DF,F,y
time = 35
[Command]
name = "Venaison Shoot - No Diable Jamble"
command = ~D,DF,F,D,DF,F+y
time = 35

[Command]
name = "Venaison Shoot"
command = ~D,DF,F,D,DF,F,b
time = 35
[Command]
name = "Venaison Shoot"
command = ~D,DF,F,D,DF,F+b
time = 35
[Command]
name = "Venaison Shoot"
command = ~D,DF,F,D,DF,F,a
time = 35
[Command]
name = "Venaison Shoot"
command = ~D,DF,F,D,DF,F+a
time = 35




[Command]
name = "Banquette"
command = ~D,DB,B,D,DB,B,a
time = 35
[Command]
name = "Banquette"
command = ~D,DB,B,D,DB,B+a
time = 35
[Command]
name = "Banquette"
command = ~D,DB,B,D,DB,B,b
time = 35
[Command]
name = "Banquette"
command = ~D,DB,B,D,DB,B+b
time = 35





;-| Special Motions  Diable Jamble |--------------------------------------------





[Command]
name = "Frit Assorité air"
command = ~D,DB,B,b
time = 20
[Command]
name = "Frit Assorité air"
command = ~D,DB,B+b
time = 20

[Command]
name = "Frit Assorité"
command = ~D,DB,B,a
time = 20
[Command]
name = "Frit Assorité"
command = ~D,DB,B+a
time = 20




[Command]
name = "Flame up Kick"
command = ~F,D,DF,b
time = 20
[Command]
name = "Flame up Kick"
command = ~F,D,DF+b
time = 20

[Command]
name = "Flame up Kick"
command = ~F,D,DF,a
time = 20
[Command]
name = "Flame up Kick"
command = ~F,D,DF+a
time = 20



[Command]
name = "Diable Concasse Air"
command = ~D,DB,B,b
time = 20
[Command]
name = "Diable Concasse Air"
command = ~D,DB,B+b
time = 20

[Command]
name = "Diable Concasse Air"
command = ~D,DB,B,a
time = 20
[Command]
name = "Diable Concasse Air"
command = ~D,DB,B+a
time = 20



[Command]
name = "Diable Concasse"
command = ~30$D,U,b
time = 25
[Command]
name = "Diable Concasse"
command = ~30$D,U+b
time = 25
[Command]
name = "Diable Concasse"
command = ~30$D,U,a
time = 25
[Command]
name = "Diable Concasse"
command = ~30$D,U+a
time = 25




[Command]
name = "Premiere Haché"
command = ~F,B,F,b
time = 25
[Command]
name = "Premiere Haché"
command = ~F,B,F+b
time = 25
[Command]
name = "Premiere Haché"
command = ~F,B,F,a
time = 25
[Command]
name = "Premiere Haché"
command = ~F,B,F+a
time = 25

;-| Special Motions |------------------------------------------------------



[Command]
name = "Boquetier Shoot"
command = ~F,D,DF,b
time = 20
[Command]
name = "Boquetier Shoot"
command = ~F,D,DF+b
time = 20


[Command]
name = "Concasse"
command = ~30$D,UF,b
time = 10
[Command]
name = "Concasse"
command = ~30$D,UF+b
time = 10

[Command]
name = "Concasse"
command = ~30$D,UB,b
time = 10
[Command]
name = "Concasse"
command = ~30$D,UB+b
time = 10


[Command]
name = "Concasse"
command = ~30$D,U,b
time = 10
[Command]
name = "Concasse"
command = ~30$D,U+b
time = 10


[Command]
name = "Mouton Shoot"
command = ~30$B,F,b
time = 10
[Command]
name = "Mouton Shoot"
command = ~30$B,F+b
time = 10


[Command]
name = "Veau Shot"
command = ~F,DF,D,DB,B,b
time = 30
[Command]
name = "Veau Shot"
command = ~F,DF,D,DB,B+b
time = 30





[Command]
name = "Brochette"
command = ~D,DB,B,b
time = 20
[Command]
name = "Brochette"
command = ~D,DB,B+b
time = 20
[Command]
name = "Brochette"
command = ~D,DB,B,a
time = 20
[Command]
name = "Brochette"
command = ~D,DB,B+a
time = 20





[Command]
name = "Deuxième Haché"
command = ~F,B,F,a
time = 25
[Command]
name = "Deuxième Haché"
command = ~F,B,F+a
time = 25


[Command]
name = "Party Table Kick Course"
command = ~D,DB,B,a
time = 25
[Command]
name = "Party Table Kick Course"
command = ~D,DB,B+a
time = 25


[Command]
name = "Santen Decoupagé"
command = ~D,DF,F,a
time = 20
[Command]
name = "Santen Decoupagé"
command = ~D,DF,F+a
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
time = 1

[Command]
name = "fwd" ;Required (do not remove)
command = F
time = 1


[Command]
name = "back" ;Required (do not remove)
command = B
time = 1


[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "down";Required (do not remove)
command = D
time = 1

;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = y+z ; con el botón A+B activamos la AI
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
triggerall = (partner, name="Nami") || (partner, name="Zoro Roronoa")
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (movecontact)
trigger13 = (stateno = 1601) && (movecontact)
trigger14 = (stateno = 1701) && (movecontact)
trigger15 = stateno = [3202,3207]
value = Ifelse((partner, name="Nami"),3800,3900)

;---------------------------------------------------------------------------
;Meteor Strike
[State -1, Meteor Strike]
type = ChangeState
value = 3500
triggerall = var(2) = 1
triggerall = command = "Meteor Strike"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)
trigger8 = (stateno = [0,40])
trigger9 = (stateno = 2700) && (time > 25)
trigger10 = (stateno = 2810)
trigger11 = (stateno = 2901) && (movecontact)
trigger12 = stateno = [3202,3207]

;Meteor Strike - No Diable Jamble
[State -1, Meteor Strike - No Diable Jamble]
type = ChangeState
value = 3505
triggerall = var(2) = 0
triggerall = command = "Meteor Strike"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (movecontact)
trigger13 = (stateno = 1601) && (movecontact)
trigger14 = (stateno = 1701) && (movecontact)
trigger15 = stateno = [3202,3207]

;---------------------------------------------------------------------------
;Flambage Shot
[State -1, Flambage Shot]
type = ChangeState
value = 3400
triggerall = var(2) = 1
triggerall = command = "Flambage Shot"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)
trigger8 = (stateno = [0,40])
trigger9 = (stateno = 2700) && (time > 25)
trigger10 = (stateno = 2810)
trigger11 = (stateno = 2901) && (movecontact)



;Flambage Shot - No Diable Jamble
[State -1, Flambage Shot]
type = ChangeState
value = 3405
triggerall = var(2) != 1
triggerall = command = "Flambage Shot - No Diable Jamble"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (movecontact)
trigger13 = (stateno = 1601) && (movecontact)
trigger14 = (stateno = 1701) && (movecontact)


;---------------------------------------------------------------------------

;Venaison Shoot - Diable Jamble
[State -1, Venaison Shoot]
type = ChangeState
value = 3300
triggerall = var(2) = 1
triggerall = command = "Venaison Shoot"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)
trigger8 = (stateno = [0,40])
trigger9 = (stateno = 2700) && (time > 25)
trigger10 = (stateno = 2810)
trigger11 = (stateno = 2901) && (movecontact)


;Venaison Shoot - No Diable Jamble
[State -1, Venaison Shoot]
type = ChangeState
value = 3305
triggerall = var(2) != 1
triggerall = command = "Venaison Shoot - No Diable Jamble"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (movecontact)
trigger13 = (stateno = 1601) && (movecontact)
trigger14 = (stateno = 1701) && (movecontact)

;---------------------------------------------------------------------------
;Banquette
[State -1, Banquette]
type = ChangeState
value = 3200
triggerall = var(2) != 1
triggerall = command = "Banquette"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (movecontact)
trigger13 = (stateno = 1601) && (movecontact)
trigger14 = (stateno = 1701) && (movecontact)






;===============================================================================
;---------------- Specials -----------------------------------------------------
;===============================================================================




;-------------------------------------------------------------------------------
;Diable  Concasse  - Air
[State -1, Diable  Concasse - Air]
type = ChangeState
value = 2920
triggerall = var(2) = 1
triggerall = command = "Diable Concasse Air"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2600) && (movecontact)
trigger3 = (stateno = 2610) && (movecontact)
trigger4 = (stateno = 2500) && (hitcount >= 1)
trigger5 = (stateno = 2750) && (time > 25)

;Diable  Concasse
[State -1, Diable  Concasse]
type = ChangeState
value = 2900
triggerall = var(2) = 1
triggerall = command = "Diable Concasse"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)
trigger8 = (stateno = [0,40])
trigger9 = (stateno = 2700) && (time > 25)
;---------------------------------------------------------------------------

;Premier  Haché - In Air
[State -1, Premier Haché - In Air]
type = ChangeState
value = 2820
triggerall = var(2) = 1
triggerall = command = "Premiere Haché"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2600) && (movecontact)
trigger3 = (stateno = 2610) && (movecontact)
trigger4 = (stateno = 2500) && (hitcount >= 1)
trigger5 = (stateno = 2750) && (time > 25)


;Premier  Haché
[State -1, Premier Haché]
type = ChangeState
value = 2800
triggerall = var(2) = 1
triggerall = command = "Premiere Haché"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)
trigger8 = (stateno = 2901) && (hitcount >= 1)


;---------------------------------------------------------------------------
;Frit Assorité air
[State -1, Frit Assorité air]
type = ChangeState
value = 2750
triggerall = var(2) = 1
triggerall = command = "Frit Assorité air"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)

;Frit Assorité
[State -1, Frit Assorité]
type = ChangeState
value = 2700
triggerall = var(2) = 1
triggerall = command = "Frit Assorité"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)
trigger6 = (stateno = 220) && (time > 11)
trigger7 = (stateno = 320) && (time > 11)

;------------------------------------------------------------------------------
;Diable Jamble mode - Flame up Kick
[State -1, Diable Jamble mode - Flame up Kick]
type = ChangeState
value = 2500
triggerall = var(2) = 1
triggerall = command = "Flame up Kick"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2400) && (movecontact)
trigger5 = (stateno = 2410) && (movecontact)




;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Boquetier Shoot
[State -1, Boquetier Shoot]
type = ChangeState
value = 1900
triggerall = var(2) != 1
triggerall = command = "Boquetier Shoot"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (hitcount >= 1)
trigger13 = (stateno = 1701) && (hitcount >= 1)


;---------------------------------------------------------------------------
; Veau Shot
[State -1, Veau Shot]
type = ChangeState
value = 1800
triggerall = var(2) != 1
triggerall = command = "Veau Shot"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger10 = (stateno = 1101) && (time > 0)
trigger11 = (stateno = 1202) && (hitcount >= 1)
trigger12 = (stateno = 1701) && (hitcount >= 1)
trigger13 = (stateno = 225) && (time > 0)


;---------------------------------------------------------------------------
;Mouton Shoot
[State -1, Mouton Shoot]
type = ChangeState
value = 1700
triggerall = var(2) != 1
triggerall = command = "Mouton Shoot"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (hitcount >= 1)





;---------------------------------------------------------------------------
;Brochette
[State -1, Brochette]
type = ChangeState
value = 1600
triggerall = var(2) != 1
triggerall = command = "Brochette"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 1105) && (hitcount >= 1) && (time > 21)
trigger6 = (stateno = 1302) && (hitcount >= 1)
trigger7 = (stateno = 1900) && (hitcount >= 1)



;---------------------------------------------------------------------------
;Concasse
[State -1, Concasse]
type = ChangeState
value = 1500
triggerall = var(2) != 1
triggerall = command = "Concasse"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 4)
trigger9 = (stateno = [0,40]) || ((numhelper(65) = 1) && (statetype != A))
trigger10 = (stateno = 300) && (movecontact)
trigger11 = (stateno = 310) && (movecontact)
trigger12 = (stateno = 1202) && (hitcount >= 1)
trigger13 = (stateno = 1701) && (hitcount >= 1)



;---------------------------------------------------------------------------
;Deuxième Haché - In Air
[State -1, Deuxième Haché - In Air]
type = ChangeState
value = 1320
triggerall = var(2) != 1
triggerall = command = "Deuxième Haché"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 1900) && (hitcount >= 1)

;Deuxième Haché
[State -1, Deuxième Haché]
type = ChangeState
value = 1300
triggerall = var(2) != 1
triggerall = command = "Deuxième Haché"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 4)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (hitcount >= 1)


;---------------------------------------------------------------------------
;Party Table Kick Course
[State -1, Party Table Kick Course]
type = ChangeState
value = 1200
triggerall = var(2) != 1
triggerall = command = "Party Table Kick Course"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 4)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)


;---------------------------------------------------------------------------
;Santen Decoupagé  - Air
[State -1, Santen Decoupagé - Air]
type = ChangeState
value = 1105
triggerall = var(2) != 1
triggerall = command = "Santen Decoupagé"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 601) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)
trigger5 = (stateno = 1302) && (hitcount >= 1)
trigger6 = (stateno = 1900) && (hitcount >= 1)



;Santen Decoupagé  - Stand
[State -1, Santen Decoupagé - Stand]
type = ChangeState
value = 1100
triggerall = var(2) != 1
triggerall = command = "Santen Decoupagé"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 4)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1202) && (hitcount >= 1)



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
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (hitcount >= 1)
trigger13 = (stateno = 1701) && (hitcount >= 1)
trigger14 = stateno = [3202,3207]
trigger15 = stateno = 3420
trigger16 = (stateno = [150,155]) && (power >= 1500)
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
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (hitcount >= 1)
trigger13 = (stateno = 1701) && (hitcount >= 1)
trigger14 = stateno = [3202,3207]
trigger15 = stateno = 3420
trigger16 = (stateno = [150,155]) && (power >= 1500)
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
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 225) && (time > 0)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)
trigger11 = (stateno = 1101) && (time > 0)
trigger12 = (stateno = 1202) && (hitcount >= 1)
trigger13 = (stateno = 1701) && (hitcount >= 1)
trigger14 = (stateno = [150,155]) && (power >= 1500)
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
;---------------- Burst --------------------------------------------------------
;===============================================================================
;---------------------------------------------------------------------------
; Burst - Anti Combos
[State -1, Burst - Anti Combos]
type = ChangeState
value = 500
triggerall = alive = 1
triggerall = var(2) != 1
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
triggerall = var(2) != 1
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 34
triggerall = var(24) = 0 ; para que no se pueda usar el Bust en Block si ya está activado el Burst Offensive
triggerall = stateno = [150,153]
trigger1 = statetype = S || statetype = C
trigger2 = statetype = A

; Burst - Offensive Activation
[State -1, Burst - Offensive Activation]
type = ChangeState
value = 520
triggerall = var(2) != 1
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 68
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 225) && (time > 0)
trigger8 = (stateno = 300) && (movecontact)
trigger9 = (stateno = 310) && (movecontact)
trigger10 = (stateno = 2200) && (movecontact)
trigger11 = (stateno = 2210) && (movecontact)




;==================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================

;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value           = 60
triggerall      = var(2) != 1
triggerall      = command = "Super Jump"
triggerall      = numhelper(65) = 0
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Run Fwd AIRE
[State -1, Run Fwd]
type = ChangeState
triggerall = stateno != 60
triggerall = prevstateno != 2107
triggerall = prevstateno != 2108
triggerall = var(2) = 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
value = 2107

;---------------------------------------------------------------------------
;Run Back AIRE
[State -1, Run Back]
type = ChangeState
triggerall = stateno != 60
triggerall = numhelper(8561) = 0
triggerall = prevstateno != 2107
triggerall = prevstateno != 2108
triggerall = var(2) = 1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
value = 2108


;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 2100
triggerall = var(2) = 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 2105
triggerall = var(2) = 1
trigger1 = command = "BB"
trigger1 = statetype = S
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


;---------------------------------------------------------------------------
; Throw Basics
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(2) != 1
triggerall = command = "Throw Basic"
triggerall = ctrl
trigger1 = statetype != A


;---------------------------------------------------------------------------
;Roll BACK - Super
[State -1, Roll BACK]
type = ChangeState
value = 715
triggerall = command = "recovery" && command = "holdback" || command = "recovery" && command = "holdback"  && command = "holddown"
triggerall = stateno = [150,151]
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
triggerall = stateno = [150,151]
Triggerall = power >= 500
trigger1 = statetype = S || statetype = C

;Roll FWD
[State -1, Roll FWD]
type = ChangeState
value = 700
triggerall = numhelper(8380) = 0 ; no recovery during STUN fall
triggerall = command = "recovery" || command = "recovery" && command = "holddown"
triggerall = statetype = S || statetype = C
triggerall = ifelse((stateno = [200,320]),power >= 500,power >= 0)
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 225) && (time > 0)
trigger8 = (stateno = 300) && (movecontact)
trigger9 = (stateno = 310) && (movecontact)


;---------------------------------------------------------------------------
;Roll Fall Down
[State -1, Roll Fall Down]
type = ChangeState
value = ifelse(vel x > 0, 720, 725)
triggerall = numhelper(8380) = 0 ; helper(8300), var(20) < 67 ; no recovery during STUN fall
triggerall = command = "recovery"
triggerall = enemy, numhelper(3095) = 0
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30
trigger1 = vel y > 0 && vel y < 9


;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================
;Run Slap Kick
[State -1, Slap Kick]
type = ChangeState
value = 300
triggerall = stateno = 100
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Stomp Kick
[State -1, Stomp Kick]
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
triggerall = stateno = 100
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;===================================================================================
;---------------- Diable Jamble mode -----------------------------------------------
;===================================================================================


;Diable Jamble mode Start
[State -1, Diable Jamble mode Start]
type = ChangeState
value = 220
triggerall = var(2) != 1
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 52)
trigger9 = (stateno = 300) && (movecontact)
trigger10 = (stateno = 310) && (movecontact)



;Diable Jamble mode Start
[State -1, Diable Jamble mode terminación]
type = ChangeState
value = 225
triggerall = var(9) != 1
triggerall = var(2) = 1
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------
;Diable Jamble mode - Air Kick 1
[State -1, Diable Jamble mode - Air Kick 1]
type = ChangeState
value = 2600
triggerall = var(2) = 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------
;Diable Jamble mode - Patada Fuerte Arriba
[State -1, Diable Jamble mode - Patada Fuerte arriba]
type = ChangeState
value = 2610
triggerall = var(2) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl



;---------------------------------------------
;Diable Jamble mode - Patada devil Abajo
[State -1, Diable Jamble mode - Patada devil]
type = ChangeState
value = 2400
triggerall = var(2) = 1
triggerall = (command = "holddown") || (command = "down")
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger4 = (stateno = 2410) && (movecontact)
trigger5 = (stateno = 220) && (time > 11)
trigger6 = (stateno = 320) && (time > 11)
trigger7 = (stateno = 52)

;---------------------------------------------
;Diable Jamble mode - Patada Fuerte anajo
[State -1, Diable Jamble mode - Patada Fuerte]
type = ChangeState
value = 2410
triggerall = var(2) = 1
triggerall = (command = "holddown") || (command = "down")
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 2210) && (movecontact)
trigger5 = (stateno = 220) && (time > 11)
trigger6 = (stateno = 320) && (time > 11)
trigger7 = (stateno = 52)


;---------------------------------------------
;Diable Jamble mode - Patada devil
[State -1, Diable Jamble mode - Patada devil]
type = ChangeState
value = 2200
triggerall = var(2) = 1
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 220) && (time > 5)
trigger3 = (stateno = 320) && (time > 5)
trigger4 = (stateno = 2100)
trigger5 = (stateno = 52)

;---------------------------------------------
;Diable Jamble mode - Fuerte devil
[State -1, Diable Jamble mode - Patada Fuerte]
type = ChangeState
value = 2210
triggerall = var(2) = 1
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2200) && (movecontact)
trigger3 = (stateno = 220) && (time > 5)
trigger4 = (stateno = 320) && (time > 5)
trigger5 = (stateno = 2100)
trigger6 = (stateno = 52)




;===================================================================================
;---------------- Básicos ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;Stand - Anti Manner Kick Course
[State -1, Stand Strong Kick]
type = ChangeState
value = 217
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 52)


;===================================================================================
;---------------- Básicos ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;Stand - Anti Manner Kick Course
[State -1, Stand Strong Kick]
type = ChangeState
value = 215
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 52)

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 52)

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 205
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 52)
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 52)





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




;---------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
