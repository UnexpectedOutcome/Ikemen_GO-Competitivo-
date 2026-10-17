;===============================================================================
;-------------------------------Comandos----------------------------------------
;===============================================================================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Soap Sheep"
command = x
time = 35

[Command]
name = "Shigan"
command = y
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "Rankyaku Storm"
command = ~D,DB,B,b
time = 35

[Command]
name = "Bubble Beam"
command = ~D,DF,F,c
time = 35

[Command]
name = "Golden Awa"
command = ~D,DB,B,c
time = 25

[Command]
name = "Rankyaku air"
command = ~D,DF,F,b
time = 20

[Command]
name = "Spin Bubble Kicks"
command = ~D,DF,F,b
time = 20

[Command]
name = "Spicked Trap"
command = ~D,DB,B,a
time = 25

[Command]
name = "Ibara Road"
command = ~D,DF,F,a
time = 20

[Command]
name = "Power Charge"
command = s
time = 20

;-| Comands  |-----------------------------------------------------------

[Command]
name = "Super Jump"
command = ~D, U
time = 10

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

[Command]
name = "down_s"
command = /$D,s
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
;---------------------------------------------------------------
; Soap Sheep
[State -1, Soap Sheep]
type = ChangeState
value = 3300
triggerall = command = "Soap Sheep"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------
; Rankyaku Storm air
[State -1, Rankyaku Storm air]
type = ChangeState
value = 3200
Triggerall = power >= 1000
triggerall = command = "Rankyaku Storm"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------
; Rankyaku Storm
[State -1, Rankyaku Storm]
type = ChangeState
value = 3100
Triggerall = power >= 1000
triggerall = command = "Rankyaku Storm"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------
;Bubble Beam
[State -1, Bubble Beam]
type = ChangeState
value = 3000
Triggerall = power >= 1500
triggerall = command = "Bubble Beam"
triggerall = numhelper(3050) = 0
triggerall = numhelper(3051) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Golden Awa
[State -1, Golden Awa]
type = ChangeState
value = 1600
Triggerall = power >= 1000
triggerall = command = "Golden Awa"
triggerall = numhelper(1650) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Spin Bubble Kicks
[State -1, Spin Bubble Kicks]
type = ChangeState
value = 1400
Triggerall = power >= 1000
triggerall = command = "Spin Bubble Kicks"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Rankyaku - Air
[State -1, Rankyaku - Air]
type = ChangeState
value = 1320
Triggerall = power >= 0
triggerall = command = "Rankyaku air"
triggerall = numhelper(1360) = 0
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Spicked Trap
[State -1, Spicked Trap]
type = ChangeState
value = 1200
Triggerall = power >= 1000
triggerall = command = "Spicked Trap"
triggerall = numhelper(1290) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Ibara Road
[State -1, Ibara Road]
type = ChangeState
value = 1100
Triggerall = power >= 1000
triggerall = command = "Ibara Road"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 500
Triggerall = power < 3000
triggerall = command = "Power Charge"
Trigger1 = statetype != A
trigger1 = ctrl
;===============================================================================
; Shigan
[State -1, Shigan]
type = ChangeState
value = 800
Triggerall = power >= 500
triggerall = command = "Shigan"
triggerall = ctrl
triggerall = stateno != 100
trigger1 = statetype != A
;---------------------------------------------------------------------------
; Bubble Beam - Air
[State -1, Bubble Beam - Air]
type = ChangeState
value = 1720
Triggerall = power >= 0
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;===============================================================================
;---------------- Comands ------------------------------------------------------
;===============================================================================

;Super Jump
[State -1: Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1   = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Run Fwd AIRE
[State -1, Run Fwd]
type = ChangeState
trigger1 = command = "FF"
triggerall = prevstateno != 107
triggerall = prevstateno != 108
value = 107
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back AIRE
[State -1, Run Back]
type = ChangeState
trigger1 = command = "BB"
triggerall = prevstateno != 107
triggerall = prevstateno != 108
value = 108
trigger1 = statetype = A
trigger1 = ctrl

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

;===============================================================================
;---------------- Basicos ------------------------------------------------------
;===============================================================================
;-------------------------------------------------------------------------------
;Crouch Punch
[State -1, Stand Punch]
type = ChangeState
value = 205
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Rankyaku
[State -1, Rankyaku]
type = ChangeState
value = 1300
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = numhelper(1350) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Tidal Wave
[State -1, Tidal Wave]
type = ChangeState
value = 1700
triggerall = command = "holddown"
triggerall = command = "c"
triggerall = numhelper(1750) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Punch
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------
;Stand Bari Shock
[State -1, Stand Bari Shock]
type = ChangeState
value = 220
triggerall = var(2) != 1
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------
;Jump Light Atack air
[State -1, Jump Light Atack air]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Atack air
[State -1, Jump Strong Atack air]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Special Atack air
[State -1, Jump Special Atack air]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1

