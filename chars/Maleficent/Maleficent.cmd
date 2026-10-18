

;**********************************************************************************
;                                                                                 *
;  Athena saga de Hades   Autor   Grafica : Shunchain y Programacion : Tecla2000  *
;                                                                                 *
;**********************************************************************************

;-------------------------
;-------------------------
;    Reasignar botones
;-------------------------
;-------------------------
; Esta sección lo deja reasignar los botones del jugador (para cambiar fácilmente la Configuración)
; El formato es:
; boton predeterminado en mugen = nuevo boton que ponemos
; recuerden que deben mantener las mismas letras, lo que pueden hacer es cambiar el orden x=a o y=b 

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------
;---------------------------
; Valores de incumplimiento
;---------------------------
;---------------------------

[Defaults]

command.time = 15          ; Valor de incumplimiento para el parámetro de "Tiempo" de un comando. Mínimo 1.

command.buffer.time = 1    ; Valor de incumplimiento para el parámetro de "Buffer.time" de un comando. 
                           ; 1 mínimo, 30 máximo.

;-------------------------
;-------------------------
;      AI Command 
;-------------------------
;-------------------------

; The CMD file.
;------------------------------------------------------------------------
;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1


;-------------------------
;-------------------------
;      Ultra Attacks
;-------------------------
;-------------------------

;Dragon Transform
[Command]
name = "DRAGON"
command = D, DB, B, c+z

;-------------------------
;-------------------------
;      Hyper Attacks
;-------------------------
;-------------------------

;Lighting Strikes
[Command]
name = "LightningStorm"
command = D, DF, F, x+y

;Meteors
[Command]
name = "Meteors"
command = D, DF, F, a+b

;Death Curse
[Command]
name = "DeathCurse"
command = D, DB, B, a+b

;Dematerialization
[Command]
name = "Dematerialization"
command = D, DB, B, x+y


;-------------------------
;-------------------------
;      Super Attacks
;-------------------------
;-------------------------

;Fire Control
[Command]
name = "FireControl4"
command = ~D,D, b
time = 25

[Command]
name = "FireControl3"
command = ~D,D, y
time = 25

[Command]
name = "FireControl2"
command = ~D,D, a
time = 25

[Command]
name = "FireControl1"
command = ~D,D, x
time = 25


;Lighting Control A
[Command]
name = "LightingControlA"
command=~F,D,DF,a
time=15

;Lighting Control B
[Command]
name = "LightingControlB"
command=~F,D,DF,y
time=15

;Lighting Control C
[Command]
name = "LightingControlC"
command=~F,D,DF,b
time=15

;Lighting Control A
[Command]
name = "LightingControlD"
command=~F,D,DF,x
time=15

;Lighting Control B
[Command]
name = "LightingControlE"
command=~F,D,DF,c
time=15

;Lighting Control C
[Command]
name = "LightingControlF"
command=~F,D,DF,z
time=15



;-------------------------

;Thunder
[Command]
name = "Thunder"
command = D, DF, F, x

;Thunder
[Command]
name = "Thunder"
command = D, DF, F, y

;Thunder
[Command]
name = "Thunder"
command = D, DF, F, z

[Command]
name = "Thunder"
command = D, DF, F, a

;Thunder
[Command]
name = "Thunder"
command = D, DF, F, b

;Thunder
[Command]
name = "Thunder"
command = D, DF, F, c

;-------------------------


;Flmaes Explosion
[Command]
name = "Explosion"
command = D, DB, B, a

;Flmaes Explosion
[Command]
name = "Explosion"
command = D, DB, B, b

;Flmaes Explosion
[Command]
name = "Explosion"
command = D, DB, B, c

;Sleep Spell
[Command]
name = "SleepSpell"
command = D, DB, B, x

;Sleep Spell
[Command]
name = "SleepSpell"
command = D, DB, B, y

;Sleep Spell
[Command]
name = "SleepSpell"
command = D, DB, B, z



;Invoke Goons
[Command]
name = "Goons"
command=~B,D,DB,a
time=15

;Invoke Goons
[Command]
name = "Goons"
command=~B,D,DB,b
time=15

;Invoke Goons
[Command]
name = "Goons"
command=~B,D,DB,c
time=15

;Invoke Goons
[Command]
name = "Goons"
command=~B,D,DB,x
time=15

;Invoke Goons
[Command]
name = "Goons"
command=~B,D,DB,y
time=15

;Invoke Goons
[Command]
name = "Goons"
command=~B,D,DB,z
time=15

;==========================================HURRICANE DOUBLE BUTTON=============================

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

;-------------------------
;-------------------------
;        Double Tap
;-------------------------
;-------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


;-------------------------
;-------------------------
;   Button combination
;-------------------------
;-------------------------

;Carga de cosmo

[Command]
name = "charge"
command = /b
time= 1
[Command]
name = "charge 1"
command= /c
time= 1


;septimo senso

[Command]
name = "recover"
command = a+x
time = 20


;-------------------------
;-------------------------
;      Dir + Button
;-------------------------
;-------------------------

;puño adicional medio
[Command]
name = "fwd_y"
command = /F,b
time = 1

;Remate puño
[Command]
name = "fwd_c"
command = /F,c
time = 1

;Remate patada
[Command]
name = "fwd_z"
command = /F,z
time = 1

;Remate patada
[Command]
name = "fwd_b"
command = /F,y
time = 1

;Remate patada
[Command]
name = "fwd_x"
command = /F,x
time = 1

;agarre puño
[Command]
name = "throw_1" 
command = /F, b
time = 10

;agarre patada
[Command]
name = "throw_2" 
command = /F, y
time = 10

;-------------------------
;-------------------------
;   Single button
;-------------------------
;-------------------------


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



;-------------------------
;-------------------------
;       Hold Dir
;-------------------------
;-------------------------

[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holdx"
command = /$x
time = 1

[command]
name = "holdy"
command = /$y
time = 1

[command]
name = "holdz"
command = /$z
time = 1


[command]
name = "holda"
command = /$a
time = 1

[command]
name = "holdb"
command = /$b
time = 1

[command]
name = "holdc"
command = /$c
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
;===============================================================================
;===============================================================================
;===============================================================================
;===============================================================================
;===============================================================================
;Player commands
;===============================================================================

;===============================================================================
;Player commands
;===============================================================================

;===============================================================================
;Player commands
;===============================================================================

;---------------------------------------------------------------------------

;-------------------------
;-------------------------
;      Ultra Atraks
;-------------------------
;-------------------------

;===============================================================================================
;                                            Ultra Moves
;===============================================================================================
;---------------------------------
;Ultra SPECIAL - DRAGON FORM
[State DRAGON FORM]
type=ChangeState
value=4899
triggerall=!var(0)&&command="DRAGON"&&power>=3000
triggerall=StateType!=A
triggerall=StateNo!=420
trigger1=ctrl

;-------------------------
;-------------------------
;      Hyper Atraks
;-------------------------
;-------------------------

;===============================================================================================
;                                            Hypers Moves
;===============================================================================================
;---------------------------------
;HYPER - Lightning Storm
[State Lightning Storm]
type=ChangeState
value=3999
triggerall=!var(0)&&command="LightningStorm"&&power>=1000
triggerall=StateType!=A
triggerall=StateNo!=420
trigger1=ctrl

;---------------------------------
;HYPER - Meteors
[State Meteors]
type=ChangeState
value=4499
triggerall=!var(0)&&command="Meteors"&&power>=1000
triggerall=StateType!=A
triggerall=StateNo!=420
trigger1=ctrl

;---------------------------------
;HYPER - Death Curse
[State Death Curse]
type=ChangeState
value=4599
triggerall=!var(0)&&command="DeathCurse"&&power>=3000
triggerall=StateType!=A
triggerall=StateNo!=420
trigger1=ctrl

;---------------------------------
;HYPER - Dematerialization
[State Dematerialization]
type=ChangeState
value=4699
triggerall = command = "Dematerialization"
triggerall = power>=2000
triggerall=StateType!=A
trigger1=ctrl



;===========================================================================

;-------------------------
;-------------------------
;      Super Atraks
;-------------------------
;-------------------------

;Maleficent ARMY
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Helpers to fight
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = numhelper(7399) <= 3 ;(Max 4 Goons in Play)
triggerall = statetype != A
trigger1 = command = "Goons"
trigger1 = ctrl


;===============================================================================================
;                                            Super Moves
;===============================================================================================

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;FireControl
[State -1, FireControl]
type = ChangeState
value = 1449
triggerall =  (command = "FireControl1")||(command = "FireControl2")||(command = "FireControl3")||(command = "FireControl4")
triggerall = statetype != A
triggerall = var(30) != 1
trigger1 = ctrl
trigger1 = power >= 500
;---------------------------------------------------------------------------
;Super - Lighting Control A
[State -1, Lighting Control A]
type = ChangeState
value = 1100
triggerall = command = "LightingControlA"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super - Lighting Control B
[State -1, Lighting Control B]
type = ChangeState
value = 1110
triggerall = command = "LightingControlB"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super - Lighting Control C
[State -1, Lighting Control C]
type = ChangeState
value = 1115
triggerall = command = "LightingControlC"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super - Lighting Control D
[State -1, Lighting Control D]
type = ChangeState
value = 1120
triggerall = command = "LightingControlD"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super - Lighting Control E
[State -1, Lighting Control E]
type = ChangeState
value = 1125
triggerall = command = "LightingControlE"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super - Lighting Control F
[State -1, Lighting Control F]
type = ChangeState
value = 1130
triggerall = command = "LightingControlF"
triggerall = StateType = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Super - Thunder
[State -1, Thunder]
type = ChangeState
value = 1000
triggerall = command = "Thunder"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super - Flames Explosion
[State -1, Flames Explosion]
type = ChangeState
value = 1200
triggerall = command = "Explosion"
triggerall = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super - Sleep Spell
[State -1, Sleep Spell]
type = ChangeState
value = 1300
triggerall = command = "SleepSpell"
triggerall = StateType = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Charge 1
[State -1, Charge]
type = ChangeState
value = 88887
triggerall = power < 3000
trigger1 = command = "holda" && command = "holdx"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Charge 2
[State -1, Charge]
type = ChangeState
value = 88877
triggerall = power < 3000
trigger1 = command = "holdb" && command = "holdy"
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================

;-------------------------
;-------------------------
;        Double Tap
;-------------------------
;-------------------------

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;===========================================================================

;-------------------------
;-------------------------


;===========================================================================

;-------------------------
;-------------------------
;       Hold Dir
;-------------------------
;-------------------------



;===========================================================================

;-------------------------
;-------------------------
;   Single button
;-------------------------
;-------------------------


; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------
;Grab  1  command = "y" || command = "b"
[State -1,Grab]
type = ChangeState
value = 800
triggerall = command = "z" || command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 100
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;--------------

;--------------

;--------------

;-------------------------
;         Basic Moves
;-------------------------

;--------------



; Light Maleficent's Staff
[State -1, Stand Light Maleficent's Staff]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Medium Maleficent's Staff
[State -1, Stand Medium Maleficent's Staff]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (MoveContact)
trigger3 = (stateno = 230) && (MoveContact)

; Strong Maleficent's Staff
[State -1, Strong Maleficent's Staff]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (MoveContact)
trigger3 = (stateno = 200) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 220) && (MoveContact)

;--------------

;Standing Light Scratch
[State -1, Stand Light Scratch]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 220) && (MoveContact)

;Standing Medium Scratch
[State -1, Standing Light Scratch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)


;Standing Strong Scratch
[State -1, Standing Strong Scratch]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (MoveContact)
trigger3 = (stateno = 220) && (MoveContact)
trigger4 = (stateno = 200) && (MoveContact)
trigger5 = (stateno = 210) && (MoveContact)


;--------------


; Crouching Light Maleficent's Staff
[State -1, Crouching Light Maleficent's Staff]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)

; Crouching Medium Maleficent's Staff
[State -1, Crouching Medium Maleficent's Staff]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)


; Crouching Strong Maleficent's Staff
[State -1, Crouching Strong Maleficent's Staff]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && (MoveContact)
trigger3 = (stateno = 440) && (MoveContact)


;--------------


;--------------


; Crouching Light Scratch
[State -1, Crouching Light Scratch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


; Crouching Medium Scratch
[State -1, Crouching Medium Scratch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && (MoveContact)


;Crouching Strong Scratch
[State -1,Crouching Strong Scratch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 410) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 220) && (MoveContact)
trigger6 = (stateno = 250) && (MoveContact)


;Crouching Light Maleficent's Staff
[State -1, Crouching Light Maleficent's Staff]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)

;Crouching Medium Maleficent's Staff
[State -1, Crouching Medium Maleficent's Staff]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 430) && (MoveContact)


;--------------


; Jumping Strong Scratch
[State -1, Jumping Strong Scratch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

; Jumping Strong Scratch
[State -1, Jumping Strong Scratch]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

; Jumping Strong Scratch
[State -1, Jumping Strong Scratch]
type = ChangeState
value = 600
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;--------------

; Jumping Strong Maleficent's Staff
[State -1, Jumping Strong Maleficent's Staff]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; Jumping Strong Maleficent's Staff
[State -1, Jumping Strong Maleficent's Staff]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


; Jumping Strong Maleficent's Staff
[State -1, Jumping Strong Maleficent's Staff]
type = ChangeState
value = 610
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl



;--------------



;--------------


;===========================================================================


;-----------------------------------------------------------------------
;****                                                               ****
;****                AI Inteligencia Artificial                     **** 
;****                                                               ****
;-----------------------------------------------------------------------


;===============================================================================
;===============================================================================
;===============================================================================
;===============================================================================
;===============================================================================
;AI
;===============================================================================

;===============================================================================
;AI
;===============================================================================

;===============================================================================
;AI
;===============================================================================



;==========================================Statedef values ==============================
;-------------------------------------------------------------------------------
[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------


;====================================================================
; AI Ultra Attack
;====================================================================

[State -1, ULTRA SPECIAL DRAGON] ;----------( DRAGON )
type = ChangeState
value = 4899
triggerall = Life < 300 && var(59) && ctrl
triggerall = statetype != A
triggerall = !numhelper(4998)
trigger1 = enemynear, p2bodydist X > 90 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500



;---------------------------------------------------------------------------
;defense Teleport or Explosion
[State -1, defense punch]
type = ChangeState
value = ifelse(random<500,100,1200)
triggerall = var(59) && ctrl
triggerall = statetype != A
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)


;====================================================================
; Main Standing Supers
;====================================================================
; Thunder or Lighting Control
[State -1, Thunder or Lighting Control]
type = ChangeState
value = ifelse(random<500,1000,1040)
triggerall = statetype != A
triggerall = var(59) && ctrl && prevstateno != 1050
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

; Goons
[State -1, Goons]
type = ChangeState
value = 3100
triggerall = numhelper(7399) <= 3 ;(Max 4 Goons in Play)
triggerall = statetype != A
triggerall = var(59) && ctrl && prevstateno != 1050
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

;Sleep Spell
[State -1,Sleep Spell]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall = var(59) && ctrl && prevstateno != 1050
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]



;====================================================================
; AI Hypers Attacks
;====================================================================

[State -1, hyper A]; ----------( Lighting Storm & Meteors)
type = ChangeState
value = ifelse(random<500,3999,4499)
triggerall = statetype != A
triggerall = power >= 2000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, p2bodydist X > 90 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

[State -1, hyper B]  ;----------( Death Curse & Dematerialization)
type = ChangeState
value = ifelse(random<500,4599,4699)
triggerall = statetype != A
triggerall = power >= 3000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, p2bodydist X > 70 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500




