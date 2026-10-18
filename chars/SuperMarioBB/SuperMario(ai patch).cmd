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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

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

;-| Hold Button |-----------------------------------------------------------

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
name = "hold_a"
command =/a
time = 1

[Command]
name = "hold_b"
command =/b
time = 1

[Command]
name = "hold_c"
command =/c
time = 1

[Command]
name = "hold_x"
command =/x
time = 1

[Command]
name = "hold_y"
command =/y
time = 1

[Command]
name = "hold_z"
command =/z
time = 1

[Command]
name = "hold_s"
command =/s
time = 1

;AI Start----------------------------------------------------------------------------

 [Command]
name = "cpu1"
command = U, U, U, U
time = 0
[Command]
name = "cpu2"
command = U, U, U, D
time = 0
[Command]
name = "cpu3"
command = U, U, D, D
time = 0
[Command]
name = "cpu4"
command = U, D, D, D
time = 0
[Command]
name = "cpu5"
command = D, D, D, D
time = 0
[Command]
name = "cpu6"
command = D, D, D, U
time = 0
[Command]
name = "cpu7"
command = D, D, U, U
time = 0
[Command]
name = "cpu8"
command = D, U, U, U
time = 0
[Command]
name = "cpu9"
command = U, D, U, U
time = 0
[Command]
name = "cpu10"
command = U, U, D, U
time = 0
[Command]
name = "cpu11"
command = D, U, U, D
time = 0
[Command]
name = "cpu12"
command = U, D, D, U
time = 0
[Command]
name = "cpu13"
command = D, U, D, U
time = 0
[Command]
name = "cpu14"
command = U, D, U, D
time = 0
[Command]
name = "cpu15"
command = F, F, F, F
time = 0
[Command]
name = "cpu16"
command = B, B, B, B
time = 0
[Command]
name = "cpu17"
command = F, B, F, F
time = 0
[Command]
name = "cpu18"
command = F, F, B, F
time = 0
[Command]
name = "cpu19"
command = B, F, F, F
time = 0
[Command]
name = "cpu20"
command = F, F, F, B
time = 0
[Command]
name = "cpu21"
command = F, B, B, F
time = 0
[Command]
name = "cpu22"
command = B, F, F, B
time = 0
[Command]
name = "cpu23"
command = F, B, F, B
time = 0
[Command]
name = "cpu24"
command = B, F, B, F
time = 0
[Command]
name = "cpu25"
command = D, F, D, F
time = 0
[Command]
name = "cpu26"
command = D, B, D, B
time = 0
[Command]
name = "cpu27"
command = D, B, D, F
time = 0
[Command]
name = "cpu28"
command = D, F, D, B
time = 0
[Command]
name = "cpu29"
command = U, F, D, B
time = 0
[Command]
name = "cpu30"
command = U, B, D, F
time = 0
[Command]
name = "cpu31"
command = B, D, F, U
time = 0
[Command]
name = "cpu32"
command = F, D, B, U
time = 0
[Command]
name = "cpu33"
command = U, U, U, U
time = 0
[Command]
name = "cpu34"
command = U, U, U, D
time = 0
[Command]
name = "cpu35"
command = U, U, D, D
time = 0
[Command]
name = "cpu36"
command = U, D, D, D
time = 0
[Command]
name = "cpu37"
command = D, D, D, D
time = 0
[Command]
name = "cpu38"
command = D, D, D, U
time = 0
[Command]
name = "cpu39"
command = D, D, U, U
time = 0
[Command]
name = "cpu40"
command = D, U, U, U
time = 0
[Command]
name = "cpu41"
command = U, D, U, U
time = 0
[Command]
name = "cpu42"
command = U, U, D, U
time = 0
[Command]
name = "cpu43"
command = D, U, U, D
time = 0
[Command]
name = "cpu44"
command = U, D, D, U
time = 0
[Command]
name = "cpu45"
command = D, U, D, U
time = 0
[Command]
name = "cpu46"
command = U, D, U, D
time = 0
[Command]
name = "cpu47"
command = F, F, F, F
time = 0
[Command]
name = "cpu48"
command = B, B, B, B
time = 0
[Command]
name = "cpu49"
command = F, B, F, F
time = 0
[Command]
name = "cpu50"
command = F, F, B, F
time = 0
[Command]
name = "cpu51"
command = B, F, F, F
time = 0
[Command]
name = "cpu52"
command = F, F, F, B
time = 0
[Command]
name = "cpu53"
command = F, B, B, F
time = 0
[Command]
name = "cpu54"
command = B, F, F, B
time = 0
[Command]
name = "cpu55"
command = F, B, F, B
time = 0
[Command]
name = "cpu56"
command = B, F, B, F
time = 0
[Command]
name = "cpu57"
command = D, F, D, F
time = 0
[Command]
name = "cpu58"
command = D, B, D, B
time = 0
[Command]
name = "cpu59"
command = D, B, D, F
time = 0
[Command]
name = "cpu60"
command = D, F, D, B
time = 0
[Command]
name = "cpu61"
command = U, F, D, B
time = 0
[Command]
name = "cpu62"
command = U, B, D, F
time = 0
[Command]
name = "cpu63"
command = B, D, F, U
time = 0
[Command]
name = "cpu64"
command = F, D, B, U
time = 0


;-| Super Motions |--------------------------------------------------------

[Command]
name = "STONE"
command =  ~U;,U,U
time = 35

[Command]
name = "STONE"
command =  a
time = 35

[Command]
name = "STONE"
command =  b
time = 35

[Command]
name = "STONE"
command =  c
time = 35

[Command]
name = "STONE"
command =  x
time = 35

[Command]
name = "STONE"
command =  y
time = 35

[Command]
name = "STONE"
command =  z
time = 35

[Command]
name = "GHOST"
command =  ~D,D,D

[Command]
name = "MATRIX"
command =  ~D,D,D
time = 35

[Command]
name = "EXThrow"
command =  ~D,DB,B,a+x
time = 35

[Command]
name = "EXThrow"
command =  ~D,DB,B,b+y
time = 35

[Command]
name = "EXThrow"
command =  ~D,DB,B,c+z
time = 35

[Command]
name = "Throw"
command =  a+x
time = 35

[Command]
name = "Throw"
command =  b+y
time = 35

[Command]
name = "Throw"
command =  c+z
time = 35

[Command]
name = "SuperFlame"
command =  ~D, DF, F, D, DF, F, c
time = 35

[Command]
name = "SuperHammer"
command =  ~D, DF, F, D, DF, F, b
time = 35

[Command]
name = "InvincibleStar"
command =  ~D, DF, F, D, DF, F, a
time = 35

[Command]
name = "EXbuttstomp"
command = /D, a+b

[Command]
name = "EXbuttstomp"
command = /D, b+c

[Command]
name = "EXbuttstomp"
command = /D, a+c

[Command]
name = "EXCoinPunch"
command = ~F, D, DF, x+y

[Command]
name = "EXCoinPunch"
command = ~F, D, DF, y+z

[Command]
name = "EXCoinPunch"
command = ~F, D, DF, x+z

[Command]
name = "CoinPunch_x"
command = ~F, D, DF, x

[Command]
name = "CoinPunch_y"
command = ~F, D, DF, y

[Command]
name = "CoinPunch_z"
command = ~F, D, DF, z

[Command]
name = "EXfireball"
command = ~D, DF, F, x+y

[Command]
name = "EXfireball"
command = ~D, DF, F, y+z

[Command]
name = "EXfireball"
command = ~D, DF, F, x+z

[Command]
name = "fireball_x"
command = ~D, DF, F, x

[Command]
name = "fireball_y"
command = ~D, DF, F, y

[Command]
name = "fireball_z"
command = ~D, DF, F, z

[Command]
name = "EXtornado"
command = ~D, DB, B, x+y

[Command]
name = "EXtornado"
command = ~D, DB, B, y+z

[Command]
name = "EXtornado"
command = ~D, DB, B, x+z

[Command]
name = "tornado_x"
command = ~D, DB, B, x

[Command]
name = "tornado_y"
command = ~D, DB, B, y

[Command]
name = "tornado_z"
command = ~D, DB, B, z

[Command]
name = "buttstomp"
command = /D,c

[Command]
name = "drillkick"
command = /D,b

[Command]
name = "headstomp"
command = /D,a

[Command]
name = "airglideEX"
command = B, B, F

[Command]
name = "airglide"
command = F, F
time = 10

[Command]
name = "rollfwd"
command = a+b

[Command]
name = "rollfwd"
command = b+c

[Command]
name = "rollfwd"
command = a+c

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
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "alphacoinpunch"
command = ~B, DB, D, x 
time = 20

[Command]
name = "alphacoinpunch"
command = ~B, DB, D, y 
time = 20

[Command]
name = "alphacoinpunch"
command = ~B, DB, D, z 
time = 20

[Command]
name = "Sjump"
command = D, U

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


[statedef -1]

;-|Signal AI Routines|--------------------------------------------------------------------
; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
[State -1, SetAI]
type = VarSet
triggerall = Alive && RoundState = 2
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(59) = 1

[State -1]
type = VarSet
var(59) = 1
triggerall = Alive && RoundState = 2
triggerall = var(7) != 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger40 = command = "cpu40"
trigger41 = command = "cpu41"
trigger42 = command = "cpu42"
trigger43 = command = "cpu43"
trigger44 = command = "cpu44"
trigger45 = command = "cpu45"
trigger46 = command = "cpu46"
trigger47 = command = "cpu47"
trigger48 = command = "cpu48"
trigger49 = command = "cpu49"
trigger50 = command = "cpu50"
trigger51 = command = "cpu51"
trigger52 = command = "cpu52"
trigger53 = command = "cpu53"
trigger54 = command = "cpu54"
trigger55 = command = "cpu55"
trigger56 = command = "cpu56"
trigger57 = command = "cpu57"
trigger58 = command = "cpu58"
trigger59 = command = "cpu59"
trigger60 = command = "cpu60"
trigger61 = command = "cpu61"
trigger62 = command = "cpu62"
trigger63 = command = "cpu63"
trigger64 = command = "cpu64"

;Begin AI

[State -1]
Type=VarSet
Trigger1=1
var(50)=random

;--|-AI Combos-|------------------------------------------------------------
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 210
trigger1 = (stateno = 200) && movecontact && random<var(50)/4
trigger2 = (stateno = 230) && movecontact && random<var(50)/4
trigger3 = (stateno = 400) && movecontact && random<var(50)/4
trigger4 = (stateno = 430) && movecontact && random<var(50)/4
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 220
trigger1 = (stateno = 200) && movecontact && random<var(50)/8
trigger2 = (stateno = 210) && movecontact && random<var(50)/8
trigger3 = (stateno = 230) && movecontact && random<var(50)/8
trigger4 = (stateno = 240) && movecontact && random<var(50)/8
trigger5 = (stateno = 400) && movecontact && random<var(50)/8
trigger6 = (stateno = 410) && movecontact && random<var(50)/8
trigger7 = (stateno = 430) && movecontact && random<var(50)/8
trigger8 = (stateno = 440) && movecontact && random<var(50)/8
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 230
trigger1 = movecontact
trigger1 = stateno = 200
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 240
trigger1 = (stateno = 200) && movecontact && random<var(50)/6
trigger2 = (stateno = 210) && movecontact && random<var(50)/6
trigger3 = (stateno = 230) && movecontact && random<var(50)/6
trigger4 = (stateno = 400) && movecontact && random<var(50)/6
trigger5 = (stateno = 410) && movecontact && random<var(50)/6
trigger6 = (stateno = 430) && movecontact && random<var(50)/6
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 250
trigger1 = (stateno = 200) && movecontact && random<var(50)/8
trigger2 = (stateno = 210) && movecontact && random<var(50)/8
trigger3 = (stateno = 230) && movecontact && random<var(50)/8
trigger4 = (stateno = 240) && movecontact && random<var(50)/8
trigger5 = (stateno = 400) && movecontact && random<var(50)/8
trigger6 = (stateno = 410) && movecontact && random<var(50)/8
trigger7 = (stateno = 430) && movecontact && random<var(50)/8
trigger8 = (stateno = 440) && movecontact && random<var(50)/8
value = 250

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600 && prevstateno != 200
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 20) && random<var(50)/2 && (p2statetype != A)
value = 200
;End Standing Chain

;---------------------------------------------------------------------------
;Start Crouching Chain

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 410
trigger1 = (stateno = 200) && movecontact && random<var(50)/5
trigger2 = (stateno = 210) && movecontact && random<var(50)/5
trigger3 = (stateno = 230) && movecontact && random<var(50)/5
trigger4 = (stateno = 400) && movecontact && random<var(50)/5
trigger5 = (stateno = 430) && movecontact && random<var(50)/5
value = 410

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 420
trigger1 = (stateno = 200) && movecontact && random<var(50)/8 
trigger2 = (stateno = 210) && movecontact && random<var(50)/8 
trigger3 = (stateno = 230) && movecontact && random<var(50)/8 
trigger4 = (stateno = 240) && movecontact && random<var(50)/8 
trigger5 = (stateno = 400) && movecontact && random<var(50)/8 
trigger6 = (stateno = 410) && movecontact && random<var(50)/8 
trigger7 = (stateno = 430) && movecontact && random<var(50)/8 
trigger8 = (stateno = 440) && movecontact && random<var(50)/8 
trigger9 = (stateno = 110) && movecontact && random<var(50)
trigger10 = (stateno = 105) && movecontact && random<var(50)
value = 420

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 430
trigger1 = (stateno = 200) && movecontact && random<var(50)/3
trigger2 = (stateno = 230) && movecontact && random<var(50)/3
trigger3 = (stateno = 400) && movecontact && random<var(50)/3
value = 430

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 440
trigger1 = (stateno = 200) && movecontact && random<var(50)/7
trigger2 = (stateno = 210) && movecontact && random<var(50)/7
trigger3 = (stateno = 230) && movecontact && random<var(50)/7
trigger4 = (stateno = 240) && movecontact && random<var(50)/7
trigger5 = (stateno = 400) && movecontact && random<var(50)/7
trigger6 = (stateno = 410) && movecontact && random<var(50)/7
trigger7 = (stateno = 430) && movecontact && random<var(50)/7
value = 440

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall =(roundstate = 2) && (var(59) != 0) && prevstateno != 450
trigger1 = (stateno = 200) && movecontact && random<var(50)/8
trigger2 = (stateno = 210) && movecontact && random<var(50)/8
trigger3 = (stateno = 230) && movecontact && random<var(50)/8
trigger4 = (stateno = 240) && movecontact && random<var(50)/8
trigger5 = (stateno = 400) && movecontact && random<var(50)/8
trigger6 = (stateno = 410) && movecontact && random<var(50)/8
trigger7 = (stateno = 430) && movecontact && random<var(50)/8
trigger8 = (stateno = 440) && movecontact && random<var(50)/8
value = 450

[State -1, Ready to Launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 420) && movecontact
value = 9000


[State -1, Combo start]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600 && prevstateno != 400
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 20) && random<var(50)/2 && (p2statetype != A)
trigger2 = movecontact && random<var(50)/2
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/2
value = 400
;End Crouching Chain

;---------------------------------------------------------------------------
;Start Air Chain

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 610
trigger1 = (stateno = 600) && movecontact && random<var(50)/5
trigger2 = (stateno = 640) && movecontact && random<var(50)/5
trigger3 = (stateno = 630) && movecontact && random<var(50)/5
trigger4 = (stateno = 1400) && movecontact && random<var(50)/5
trigger5 = (stateno = 1700) && movecontact && random<var(50)/5
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 620
trigger1 = (stateno = 600) && movecontact && random<var(50)/6
trigger2 = (stateno = 610) && movecontact && random<var(50)/6
trigger3 = (stateno = 630) && movecontact && random<var(50)/6
trigger4 = (stateno = 640) && movecontact && random<var(50)/6
trigger5 = (stateno = 1400) && movecontact && random<var(50)/6
trigger6 = (stateno = 1700) && movecontact && random<var(50)/6
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 630
trigger1 = (stateno = 600) && movecontact && random<var(50)/3
trigger2 = (stateno = 1400) && movecontact && random<var(50)/3
trigger3 = (stateno = 1700) && movecontact && random<var(50)/3
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 640
trigger1 = (stateno = 600) && movecontact && random<var(50)/4
trigger2 = (stateno = 630) && movecontact && random<var(50)/4
trigger3 = (stateno = 1400) && movecontact && random<var(50)/4
trigger4 = (stateno = 1700) && movecontact && random<var(50)/4
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 650
trigger1 = (stateno = 600) && movecontact && random<var(50)/6
trigger2 = (stateno = 610) && movecontact && random<var(50)/6
trigger3 = (stateno = 630) && movecontact && random<var(50)/6
trigger4 = (stateno = 640) && movecontact && random<var(50)/6
trigger5 = (stateno = 1400) && movecontact && random<var(50)/6
trigger6 = (stateno = 1700) && movecontact && random<var(50)/6
value = 650

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) &&  (p2bodydist Y = [0, 60]) && random<var(50)
trigger2 = (p2bodydist x <= 25) && (p2bodydist Y = [0, 60]) && random<var(50) && (stateno = [7000,7100])
trigger3 = (stateno = 630) && movecontact && random<var(50)/3
trigger4 = (stateno = 1400) && movecontact && random<var(50)/3
trigger5 = (stateno = 1700) && movecontact && random<var(50)/3
trigger6 = (stateno = 9000) && movecontact
value = 600
;End Air Chain

;--|-AI Defense-|-----------------------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) 
trigger1 = (statetype = S) && inguarddist
value = 130

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) 
trigger1 = (statetype = C) && inguarddist
value = 131

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) 
trigger1 = (statetype = A) && inguarddist
value = 132

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) 
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A) && (p2movetype != H) && random<var(50)
trigger2 = (p2stateno = [200, 699]) && (p2stateno = [1000, 2999]) && (p2stateno > 2999)
value = 110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != H) && power >= 1000
triggerall = stateno >= 150 && stateno <= 153
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (statetype != A) && random<var(50) && (p2bodydist X <= 33) && (p2statetype != A) || (statetype != A) && random<var(50) && (p2bodydist X <= 100) && (p2statetype = A)
value = 1900
;-|-AI Throw Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != H) && (statetype = S)
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist X <= 10)  && random<var(50)/2
value = 900

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != H) && (statetype = S) && (power > 1000)
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist X <= 10)  && random<var(50)/2
value = 910

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != H) && (statetype = A)
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist X <= 10) && (p2bodydist Y = [0, 60]) && random<var(50)/2
value = 920

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != H) && (statetype = A) && (power > 1000)
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist X <= 10) && (p2bodydist Y = [0, 60]) && random<var(50)/2
value = 930
;-|-AI Special Attempt-|---------------------------------------------

[State -1, Jump]
type = ChangeState
triggerall = roundstate = 2 && (var(59) != 0)
triggerall = random<var(50) && statetype != A 
trigger1 = (p2bodydist x <= 100) && (p2movetype = H) && (p2statetype = A) || (p2bodydist x <= 100) && (p2movetype != H) && (p2statetype = A)
trigger1 = ctrl
value = 40

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/3
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = (p2bodydist X <= 50) && (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist X <= 50) && (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1800

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/3
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = (p2bodydist X <= 100) && (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist X <= 100) && (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1803

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/3
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1806

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/2
trigger1 = (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist y = [0,60]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1300) && movecontact && random<var(50)/6
trigger7 = (stateno = 1400) && movecontact && random<var(50)/6
value = 1700

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/2 && power >=1000
triggerall = PalNo != 12
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = PalNo != 9
trigger1 = (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist y = [0,60]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/9
trigger3 = (stateno = 610) && movecontact && random<var(50)/9
trigger4 = (stateno = 630) && movecontact && random<var(50)/9
trigger5 = (stateno = 640) && movecontact && random<var(50)/9
trigger6 = (stateno = 1300) && movecontact && random<var(50)/9
trigger7 = (stateno = 1400) && movecontact && random<var(50)/9
trigger8 = (stateno = 1700) && movecontact && random<var(50)/9
trigger9 = (stateno = 1550) && movecontact && random<var(50)/9
trigger10 = (stateno = 1650) && movecontact && random<var(50)/9
value = 1701

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/2
trigger1 = (p2bodydist Y >= 0) && (p2bodydist X = [0, 15]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y >= 0) && (p2bodydist X = [0, 15]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/7
trigger3 = (stateno = 610) && movecontact && random<var(50)/7
trigger4 = (stateno = 630) && movecontact && random<var(50)/7
trigger5 = (stateno = 640) && movecontact && random<var(50)/7
trigger6 = (stateno = 1300) && movecontact && random<var(50)/7
trigger7 = (stateno = 1400) && movecontact && random<var(50)/7
trigger8 = (stateno = 1700) && movecontact && random<var(50)/7
value = 1600

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)
trigger1 = (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/7
trigger3 = (stateno = 610) && movecontact && random<var(50)/7
trigger4 = (stateno = 630) && movecontact && random<var(50)/7
trigger5 = (stateno = 640) && movecontact && random<var(50)/7
trigger6 = (stateno = 1300) && movecontact && random<var(50)/7
trigger7 = (stateno = 1400) && movecontact && random<var(50)/7
trigger8 = (stateno = 1700) && movecontact && random<var(50)/7
value = 1400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = A) && random<var(50)
trigger1 = (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/4
trigger1 =(p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1203

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/4
trigger1 =(p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1204

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/4
trigger1 =(p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1205

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numhelper(2001) = 0
trigger1 =(p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numhelper(2001) = 0
trigger1 =(p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105
value = 1201

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numhelper(2001) = 0
trigger1 =(p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105
value = 1202

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/4 && power >= 1000
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 =(p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0,60]) && (p2bodydist X <= 15) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1251

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 =  (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 =  (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105
value = 1001

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 =  (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105
value = 1002

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numhelper(2001) = 0
trigger1 = (p2bodydist X <= 33) &&  (prevstateno != 5120) && (p2statetype != A) && (statetype != A) || (p2bodydist X <= 33) &&  (prevstateno != 5120) && (p2statetype = A) && (statetype != A) 
trigger2 = movecontact && random<var(50)/12
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/12
trigger3 = stateno = 400
trigger4 = movecontact && random<var(50)/12
trigger4 = stateno = 210
trigger5 = movecontact && random<var(50)/12
trigger5 = stateno = 410
trigger6 = movecontact && random<var(50)/12
trigger6 = stateno = 220
trigger7 = movecontact && random<var(50)/12
trigger7 = stateno = 230
trigger8 = movecontact && random<var(50)/12
trigger8 = stateno = 240
trigger9 = movecontact && random<var(50)/12
trigger9 = stateno = 250
trigger10 = movecontact && random<var(50)/12
trigger10 = stateno = 440
trigger11 = movecontact && random<var(50)/12
trigger11 = stateno = 420
trigger12 = movecontact && random<var(50)/12
trigger12 = stateno = 430
trigger13 = movecontact && random<var(50)/12
trigger13 = stateno = 450
trigger14 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger15 = stateno = 110
trigger16 = stateno = 105
value = 1500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numhelper(2001) = 0
trigger1 = (p2bodydist X <= 33) &&  (prevstateno != 5120) && (p2statetype != A) && (statetype != A) || (p2bodydist X <= 66) &&  (prevstateno != 5120) && (p2statetype = A) && (statetype != A) 
trigger2 = movecontact && random<var(50)/12
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/12
trigger3 = stateno = 400
trigger4 = movecontact && random<var(50)/12
trigger4 = stateno = 210
trigger5 = movecontact && random<var(50)/12
trigger5 = stateno = 410
trigger6 = movecontact && random<var(50)/12
trigger6 = stateno = 220
trigger7 = movecontact && random<var(50)/12
trigger7 = stateno = 230
trigger8 = movecontact && random<var(50)/12
trigger8 = stateno = 240
trigger9 = movecontact && random<var(50)/12
trigger9 = stateno = 250
trigger10 = movecontact && random<var(50)/12
trigger10 = stateno = 440
trigger11 = movecontact && random<var(50)/12
trigger11 = stateno = 420
trigger12 = movecontact && random<var(50)/12
trigger12 = stateno = 430
trigger13 = movecontact && random<var(50)/12
trigger13 = stateno = 450
trigger14 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger15 = stateno = 110
trigger16 = stateno = 105
value = 1502

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4
triggerall = numhelper(2001) = 0
trigger1 = (p2bodydist X <= 33) &&  (prevstateno != 5120) && (p2statetype != A) && (statetype != A) || (p2bodydist X <= 100) &&  (prevstateno != 5120) && (p2statetype = A) && (statetype != A) 
trigger2 = movecontact && random<var(50)/12
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/12
trigger3 = stateno = 400
trigger4 = movecontact && random<var(50)/12
trigger4 = stateno = 210
trigger5 = movecontact && random<var(50)/12
trigger5 = stateno = 410
trigger6 = movecontact && random<var(50)/12
trigger6 = stateno = 220
trigger7 = movecontact && random<var(50)/12
trigger7 = stateno = 230
trigger8 = movecontact && random<var(50)/12
trigger8 = stateno = 240
trigger9 = movecontact && random<var(50)/12
trigger9 = stateno = 250
trigger10 = movecontact && random<var(50)/12
trigger10 = stateno = 440
trigger11 = movecontact && random<var(50)/12
trigger11 = stateno = 420
trigger12 = movecontact && random<var(50)/12
trigger12 = stateno = 430
trigger13 = movecontact && random<var(50)/12
trigger13 = stateno = 450
trigger14 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger15 = stateno = 110
trigger16 = stateno = 105
value = 1504

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/4 && power >= 1000
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
triggerall = NumHelper(1051) < 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y = [0, 60]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/6
trigger3 = (stateno = 610) && movecontact && random<var(50)/6
trigger4 = (stateno = 630) && movecontact && random<var(50)/6
trigger5 = (stateno = 640) && movecontact && random<var(50)/6
trigger6 = (stateno = 1400) && movecontact && random<var(50)/6
trigger7 = (stateno = 1700) && movecontact && random<var(50)/6
value = 1052

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && random<var(50)/2 && power >= 1000
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist Y >= 0) && (p2bodydist X = [0, 15]) && (prevstateno != 5120) && (p2statetype != A) && (statetype = A) || (p2bodydist Y >= 0) && (p2bodydist X = [0, 15]) && (prevstateno != 5120) && (p2statetype = A) && (statetype = A)
trigger2 = (stateno = 600) && movecontact && random<var(50)/8
trigger3 = (stateno = 610) && movecontact && random<var(50)/8
trigger4 = (stateno = 630) && movecontact && random<var(50)/8
trigger5 = (stateno = 640) && movecontact && random<var(50)/8
trigger6 = (stateno = 1300) && movecontact && random<var(50)/8
trigger7 = (stateno = 1400) && movecontact && random<var(50)/8
trigger8 = (stateno = 1700) && movecontact && random<var(50)/8
trigger9 = (stateno = 1701) && movecontact && random<var(50)/8
value = 1650

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4 && power >= 1000
triggerall = numhelper(2001) = 0
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 =(p2bodydist X <= 50) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105
value = 1250

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4 && power >= 1000
triggerall = numhelper(2001) = 0
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (p2bodydist X <= 33) &&  (prevstateno != 5120) && (p2statetype != A) && (statetype != A) || (p2bodydist X <= 100) &&  (prevstateno != 5120) && (p2statetype = A) && (statetype != A) 
trigger2 = movecontact && random<var(50)/15
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/15
trigger3 = stateno = 400
trigger4 = movecontact && random<var(50)/15
trigger4 = stateno = 210
trigger5 = movecontact && random<var(50)/15
trigger5 = stateno = 410
trigger6 = movecontact && random<var(50)/15
trigger6 = stateno = 220
trigger7 = movecontact && random<var(50)/15
trigger7 = stateno = 230
trigger8 = movecontact && random<var(50)/15
trigger8 = stateno = 240
trigger9 = movecontact && random<var(50)/15
trigger9 = stateno = 250
trigger10 = movecontact && random<var(50)/15
trigger10 = stateno = 440
trigger11 = movecontact && random<var(50)/15
trigger11 = stateno = 420
trigger12 = movecontact && random<var(50)/15
trigger12 = stateno = 430
trigger13 = movecontact && random<var(50)/15
trigger13 = stateno = 450
trigger14 = movecontact && random<var(50)/15
trigger14 = stateno = 1504
trigger15 = movecontact && random<var(50)/15
trigger15 = stateno = 1250
trigger16 = movecontact && random<var(50)/15
trigger16 = stateno = 1202
trigger17 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger18 = stateno = 110
trigger19 = stateno = 105
value = 1550

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && random<var(50)/4 && power >= 1000
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
triggerall = NumHelper(1051) < 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 =  (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105
value = 1050

;-|-AI Hyper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L)
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 3000) && random<var(50)/3 && (statetype != A)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105
value = 2200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && random<var(50)/3 && (statetype != A) && (p2bodydist X = [50, -50])
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105
value = 2100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && random<var(50)/3 && (statetype != A) && (p2statetype != A) && (p2bodydist X <= 50) || (power >= 3000) && random<var(50)/3 && (statetype != A) && (p2statetype = A) && (p2bodydist X <= 50)
trigger2 = movecontact && random<var(50)/10
trigger2 = stateno = 200
trigger3 = movecontact && random<var(50)/10
trigger3 = stateno = 210
trigger4 = movecontact && random<var(50)/10
trigger4 = stateno = 230
trigger5 = movecontact && random<var(50)/10
trigger5 = stateno = 400
trigger6 = movecontact && random<var(50)/10
trigger6 = stateno = 240
trigger7 = movecontact && random<var(50)/10
trigger7 = stateno = 410
trigger8 = movecontact && random<var(50)/10
trigger8 = stateno = 430
trigger9 = movecontact && random<var(50)/10
trigger9 = stateno = 440
trigger10 = movecontact && random<var(50)/10
trigger10 = stateno = 420
trigger11 = movecontact && random<var(50)/10
trigger11 = stateno = 220
trigger10 = stateno = 110
trigger11 = stateno = 105
value = 2000
;===========================================================================

;idea for extras against tough characters from Kamek
[State -1, AI Power BOOST]
type = PowerAdd
value = 20
trigger1 = P2name = "Dark Chun Li"
trigger2 = P4name = "Dark Chun Li"
trigger3 = P2name = "Psycho Shredder[S]"
trigger4 = P4name = "Psycho Shredder[S]"
trigger5 = P2name = "Broli Remix ver1.2"
trigger6 = P4name = "Broli Remix ver1.2"
trigger7 = P2name = "Dark Chun Li2"
trigger8 = P4name = "Dark Chun Li2"
trigger9 = P2name = "Super Dan"
trigger10 = P4name = "Super Dan"

[State -1, AI Attack BOOST]
type = AssertSpecial
flag = unguardable
flag2 = nojugglecheck
trigger1 = P2name = "Dark Chun Li"
trigger2 = P4name = "Dark Chun Li"
trigger3 = P2name = "Psycho Shredder[S]"
trigger4 = P4name = "Psycho Shredder[S]"
trigger5 = P2name = "Broli Remix ver1.2"
trigger6 = P4name = "Broli Remix ver1.2"
trigger7 = P2name = "Dark Chun Li2"
trigger8 = P4name = "Dark Chun Li2"
trigger9 = P2name = "Super Dan"
trigger10 = P4name = "Super Dan"

[State -1, AI DEFENCE BOOST]
type = DefenceMulSet
value = 0
trigger1 = P2name = "Dark Chun Li"
trigger2 = P4name = "Dark Chun Li"
trigger3 = P2name = "Psycho Shredder[S]"
trigger4 = P4name = "Psycho Shredder[S]"
trigger5 = P2name = "Psycho Shredder[S] 3.5"
trigger6 = P4name = "Psycho Shredder[S] 3.5"
trigger7 = P2name = "Broli Remix ver1.2"
trigger8 = P4name = "Broli Remix ver1.2"
trigger9 = P2name = "Dark Chun Li2"
trigger10 = P4name = "Dark Chun Li2"
trigger11 = P2name = "Super Dan"
trigger12 = P4name = "Super Dan"

[State -1, AI ATTACK BOOST]
type = AttackMulSet
value = 2
trigger1 = P2name = "Broli Remix ver1.2"
trigger2 = P4name = "Broli Remix ver1.2"
trigger3 = P2name = "Dark Chun Li2"
trigger4 = P4name = "Dark Chun Li2"
trigger5 = P2name = "Super Dan"
trigger7 = P4name = "Super Dan"

[State -1, AI ATTACK BOOST]
type = AttackMulSet
value = 99999
trigger1 = P2name = "Psycho Shredder[S]"
trigger2 = P4name = "Psycho Shredder[S]"
trigger3 = P2name = "Psycho Shredder[S] 3.5"
trigger4 = P4name = "Psycho Shredder[S] 3.5"

[State -1, Stone Mario Attack Boost]
type = AttackMulSet
value = 1.5
trigger1 = PalNo = 12
trigger2 = PalNo = 9

[State -1, Stone Mario Defence Boost]
type = DefenceMulSet
value = .5
trigger1 = PalNo = 12
trigger2 = PalNo = 9

[State -1, Stone Mario Energy Drain]
type = PowerAdd
value = -1
trigger1 = PalNo = 12
trigger2 = PalNo = 9

[State -1, Stone Mario Energy Drain]
type = PowerAdd
value = -7
trigger1 = PalNo = 12
trigger1 = StateNo = 4000
trigger2 = PalNo = 9
trigger2 = StateNo = 4000

[State -1, Neo Mario Attack Drain]
type = AttackMulSet
value = .4
trigger1 = PalNo = 10
trigger2 = PalNo = 7

[State -1,Neo Mario Wall Jump]
type = VarSet
trigger1 = StateNo != [40,50]
var(15) = 1

[State -1,Neo Mario Wall Jump]
type = VarSet
trigger1 = StateNo = [40,50]
trigger1 = Command != "holdup"
var(15) = 0

[State -1,Neo Mario Wall Jump]
type = ChangeState
value = 40
triggerall = (statetype = A) && ctrl
triggerall = !Var(15)
trigger1 = ((command = "holdup") && (command = "holdfwd") && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger1 = PalNo = 10
trigger2 = ((command = "holdup") && (command = "holdback") && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger2 = PalNo = 10
trigger3 = ((command = "holdup") && (command = "holdfwd") && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger3 = PalNo = 7
trigger4 = ((command = "holdup") && (command = "holdback") && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger4 = PalNo = 7

[State -1, Mario Ghost Energy Boost]
type = PowerAdd
value = 7
trigger1 = PalNo = 11
trigger2 = PalNo = 8

;[State -1, Mario Ghost Life Drain]
;type = LifeAdd
;value = 100
;triggerall = PalNo = 11
;triggerall = PalNo = 8
;trigger1 = Life >= 10
;trigger1 = Roundstate = 3
;trigger1 = PalNo = 11
;trigger2 = RoundState = 4
;trigger2 = PalNo = 11
;trigger2 = stateno != 3800
;trigger3 = RoundState = 2
;trigger3 = PalNo = 8
;trigger4 = RoundState = 4
;trigger4 = PalNo = 8
;trigger4 = stateno != 3800

[State -1, Ghosts Don't Have Shadows]
type = AssertSpecial
flag = noshadow
trigger1 = PalNo = 11
trigger2 = PalNo = 8

[State -1, Neo Mario]
type = AssertSpecial
flag = nojugglecheck
trigger1 = PalNo = 10
trigger2 = PalNo = 7

;End AI

;---------------------------------------------------------------------------
;Hard Hit Sound
[State -1, Hard Hit Sound]
type = playsnd
triggerall = random < 400
triggerall = time = 1
trigger1 = stateno = 5000 && anim = 5002 ; stand high
trigger2 = stateno = 5000 && anim = 5012 ; stand low
trigger3 = stateno = 5010 && anim = 5022 ; crouch
trigger4 = stateno = 5020 && anim = 5002 ; air high
trigger5 = stateno = 5020 && anim = 5012 ; air low
value = S1, 3
volume = 1
channel = 0

;Ghost Die
[State -1]
type = CtrlSet
value = 0
trigger1 = life = 0
trigger1 = PalNo = 11
trigger2 = life = 0
trigger2 = PalNo = 8

;Chun Li Taunt Reaction
[State -1, Oh Baby]
type = ChangeState
value = 199
triggerall = statetype = S
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2Name = "Chun-Li"
trigger1 = P2stateno = 195
trigger1 = P2BodyDist X <= 20

;---------------------------------------------------------------------------

;SPECIALS And SUPERS

;---------------------------------------------------------------------------
;Strong Tornado SpinEX
[State -1, Strong Tornado SpinEX]
type = ChangeState
value = 1250
triggerall = power >= 1000
triggerall = command = "EXtornado"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105

;---------------------------------------------------------------------------
;Strong Coin PunchEX
[State -1, Strong Coin PunchEX]
type = ChangeState
value = 1550
triggerall = power >= 1000
triggerall = command = "EXCoinPunch"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450
trigger14 = movecontact
trigger14 = stateno = 1504
trigger15 = movecontact
trigger15 = stateno = 1250
trigger16 = movecontact
trigger16 = stateno = 1202
trigger17 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger18 = stateno = 110
trigger19 = stateno = 105

;---------------------------------------------------------------------------
;Strong Standing FireballEX
[State -1, Strong Standing FireballEX]
type = ChangeState
value = 1050
triggerall = power >= 1000
triggerall = command = "EXfireball"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
triggerall = NumHelper(1051) < 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105

[State -1, EXThrow]
type = ChangeState
value = 910
triggerall = power >= 1000
triggerall = command = "EXThrow"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl

;Stone Transform
[State -1, Stone Transform]
type = ChangeState
value = 4000
triggerall = command = "MATRIX"
triggerall = power >= 1000
trigger1 = PalNo = 9
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = PalNo = 12
trigger2 = statetype = S
trigger2 = ctrl

;Ghosteleport
[State -1, Ghosteleport]
type = ChangeState
value = 3900
triggerall = command = "MATRIX"
trigger1 = PalNo = 8
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = PalNo = 11
trigger2 = statetype = S
trigger2 = ctrl

;MATRIX
[State -1, MATRIX]
type = ChangeState
value = 3600
triggerall = command = "MATRIX"
triggerall = life <= 300
triggerall = power = 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = PalNo = 10
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = PalNo = 7

;Light Coin Punch
[State -1, Light Coin Punch]
type = ChangeState
value = 1500
triggerall = command = "CoinPunch_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Medium Coin Punch
[State -1, Medium Coin Punch]
type = ChangeState
value = 1502
triggerall = command = "CoinPunch_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Strong Coin Punch
[State -1, Strong Coin Punch]
type = ChangeState
value = 1504
triggerall = command = "CoinPunch_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Light Standing Fireball
[State -1, Light Standing Fireball]
type = ChangeState
value = 1000
triggerall = command = "fireball_x"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Medium Standing Fireball
[State -1, Medium Standing Fireball]
type = ChangeState
value = 1001
triggerall = command = "fireball_y"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Strong Standing Fireball
[State -1, Strong Standing Fireball]
type = ChangeState
value = 1002
triggerall = command = "fireball_z"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Light Tornado Spin
[State -1, Light Tornado Spin]
type = ChangeState
value = 1200
triggerall = command = "tornado_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1500
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1502
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1504
trigger18 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Medium Tornado Spin
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1201
triggerall = command = "tornado_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1500
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1502
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1504
trigger18 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;Strong Tornado Spin
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1202
triggerall = command = "tornado_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1500
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1502
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1504
trigger18 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------

[State -1, EXAir Throw]
type = ChangeState
value = 930
triggerall = power >= 1000
triggerall = command = "EXThrow"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

[State -1, Throw]
type = ChangeState
value = 900
triggerall = command = "Throw"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 920
triggerall = command = "Throw"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;SuperFlame
[State -1, SuperFlame]
type = ChangeState
value = 2000
triggerall = power >= 3000
triggerall = command = "SuperFlame"
;triggerall = PalNo != 10
;triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger10 = stateno = 110
trigger11 = stateno = 105

;---------------------------------------------------------------------------
;SuperHammer
[State -1, SuperHammer]
type = ChangeState
value = 2100
triggerall = power >= 3000
triggerall = command = "SuperHammer"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;InvincibleStar
[State -1, InvincibleStar]
type = ChangeState
value = 2200
triggerall = power >= 3000
triggerall = command = "InvincibleStar"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Butt StompEX
[State -1, Butt StompEX]
type = ChangeState
value = 1650
triggerall = power >= 1000
triggerall = command = "EXbuttstomp"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact
trigger9 = (stateno = 1701) && movecontact

;---------------------------------------------------------------------------
;Hard Air FireballEX (Air)
[State -1, Hard Air FireballEX (Air)]
type = ChangeState
value = 1052
triggerall = power >= 1000
triggerall = command = "EXfireball"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
triggerall = NumHelper(1051) < 1
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Light Coin Punch
[State -1, Light Coin Punch]
type = ChangeState
value = 1500
triggerall = command = "CoinPunch_x"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450
trigger14 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger15 = stateno = 110
trigger16 = stateno = 105

;---------------------------------------------------------------------------
;Medium Coin Punch
[State -1, Medium Coin Punch]
type = ChangeState
value = 1502
triggerall = command = "CoinPunch_y"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450
trigger14 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger15 = stateno = 110
trigger16 = stateno = 105


;---------------------------------------------------------------------------
;Strong Coin Punch
[State -1, Strong Coin Punch]
type = ChangeState
value = 1504
triggerall = command = "CoinPunch_z"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 420
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 450
trigger14 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger15 = stateno = 110
trigger16 = stateno = 105

;---------------------------------------------------------------------------
;Light Standing Fireball
[State -1, Light Standing Fireball]
type = ChangeState
value = 1000
triggerall = command = "fireball_x"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Medium Standing Fireball
[State -1, Medium Standing Fireball]
type = ChangeState
value = 1001
triggerall = command = "fireball_y"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Strong Standing Fireball
[State -1, Strong Standing Fireball]
type = ChangeState
value = 1002
triggerall = command = "fireball_z"
triggerall = numproj = 0
triggerall = NumHelper(1100) < 1
triggerall = NumHelper(1102) < 1
triggerall = NumHelper(1103) < 1
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 110
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Strong Tornado SpinEX (Air)
[State -1, Strong Tornado SpinEX (Air)]
type = ChangeState
value = 1251
triggerall = power >= 1000
triggerall = command = "EXtornado"
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Light Tornado Spin
[State -1, Light Tornado Spin]
type = ChangeState
value = 1200
triggerall = command = "tornado_x"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105

;---------------------------------------------------------------------------
;Medium Tornado Spin
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1201
triggerall = command = "tornado_y"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105

;---------------------------------------------------------------------------
;Strong Tornado Spin
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1202
triggerall = command = "tornado_z"
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]
trigger13 = stateno = 110
trigger14 = stateno = 105

;---------------------------------------------------------------------------
;Light Tornado Spin (Air)
[State -1, Light Tornado Spin]
type = ChangeState
value = 1203
triggerall = command = "tornado_x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Light Tornado Spin (Air)
[State -1, Light Tornado Spin]
type = ChangeState
value = 1203
triggerall = command = "tornado_x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Medium Tornado Spin (Air)
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1204
triggerall = command = "tornado_y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Medium Tornado Spin (Air)
[State -1, Medium Tornado Spin]
type = ChangeState
value = 1204
triggerall = command = "tornado_y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Strong Tornado Spin (Air)
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1205
triggerall = command = "tornado_z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Strong Tornado Spin (Air)
[State -1, Strong Tornado Spin]
type = ChangeState
value = 1205
triggerall = command = "tornado_z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Drill Kick
[State -1, Drill Kick]
type = ChangeState
value = 1300
triggerall = command = "drillkick"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Drill Kick
[State -1, Drill Kick]
type = ChangeState
value = 1300
triggerall = command = "drillkick"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Head Stomp
[State -1, Head Stomp]
type = ChangeState
value = 1400
triggerall = command = "headstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact

;Head Stomp
[State -1, Head Stomp]
type = ChangeState
value = 1400
triggerall = command = "headstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Butt Stomp
[State -1, Butt Stomp]
type = ChangeState
value = 1600
triggerall = command = "buttstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact

;Butt Stomp
[State -1, Butt Stomp]
type = ChangeState
value = 1600
triggerall = command = "buttstomp"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Air GlideEX
[State -1, Air GlideEX]
type = ChangeState
value = 1701
triggerall = power >= 1000
triggerall = command = "airglideEX"
triggerall = PalNo != 12
triggerall = PalNo != 10
triggerall = PalNo != 7
triggerall = PalNo != 9
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact
trigger8 = (stateno = 1700) && movecontact
trigger9 = (stateno = 1550) && movecontact
trigger10 = (stateno = 1650) && movecontact

;---------------------------------------------------------------------------
;Air Glide
[State -1, Air Glide]
type = ChangeState
value = 1700
triggerall = command = "airglide"
triggerall = var(1) <= 1
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1300) && movecontact
trigger7 = (stateno = 1400) && movecontact

;Air Glide
[State -1, Air Glide]
type = ChangeState
value = 1700
triggerall = command = "airglide"
triggerall = var(1) <= 1
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Light Air Fireball
[State -1, Light Air Fireball]
type = ChangeState
value = 1800
triggerall = command = "fireball_x"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Medium Air Fireball
[State -1, Medium Air Fireball]
type = ChangeState
value = 1803
triggerall = command = "fireball_y"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;---------------------------------------------------------------------------
;Hard Air Fireball
[State -1, Hard Air Fireball]
type = ChangeState
value = 1806
triggerall = command = "fireball_z"
triggerall = numproj = 0
triggerall = NumHelper(1801) < 1
triggerall = NumHelper(1807) < 1
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;==========================================================================

;BASIC ATTACKS 
;---------------------------------------------------------------------------
Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
trigger1 = statetype != A
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
;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]

;---------------------------------------------------------------------------
;Roll Fwd
[State -1, Roll Fwd]
type = ChangeState
value = 110
triggerall = command = "rollfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 5120 && time = [4, 9]; ["Wake up" code by SorrowEdge]

;---------------------------------------------------------------------------
;Slide Kick
[State -1, Slide Kick]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno = 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 430
trigger6 = stateno = 110
trigger7 = stateno = 105

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

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
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 410
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = stateno = 110
trigger7 = stateno = 105

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
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = stateno = 110
trigger5 = stateno = 105

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

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
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = stateno = 110
trigger8 = stateno = 105

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 440
trigger9 = stateno = 110
trigger10 = stateno = 105

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 12
trigger3 = movecontact
trigger3 = stateno = 400
trigger3 = PalNo = 12
trigger4 = movecontact
trigger4 = stateno = 210
trigger4 = PalNo = 12
trigger5 = movecontact
trigger5 = stateno = 410
trigger5 = PalNo = 12
trigger6 = movecontact
trigger6 = stateno = 230
trigger6 = PalNo = 12
trigger7 = movecontact
trigger7 = stateno = 240
trigger7 = PalNo = 12
trigger8 = movecontact
trigger8 = stateno = 440
trigger8 = PalNo = 12
trigger9 = stateno = 110
trigger9 = PalNo = 12
trigger10 = stateno = 105
trigger10 = PalNo = 12
trigger11 = movecontact
trigger11 = stateno = 200
trigger11 = PalNo = 9
trigger12 = movecontact
trigger12 = stateno = 400
trigger12 = PalNo = 9
trigger13 = movecontact
trigger13 = stateno = 210
trigger13 = PalNo = 9
trigger14 = movecontact
trigger14 = stateno = 410
trigger14 = PalNo = 9
trigger15 = movecontact
trigger15 = stateno = 230
trigger15 = PalNo = 9
trigger16 = movecontact
trigger16 = stateno = 240
trigger16 = PalNo = 9
trigger17 = movecontact
trigger17 = stateno = 440
trigger17 = PalNo = 9
trigger18 = stateno = 110
trigger18 = PalNo = 9
trigger19 = stateno = 105
trigger19 = PalNo = 9

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = PalNo != 12
triggerall = PalNo != 9
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

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
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 220
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 250
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = stateno = 110
trigger12 = stateno = 105

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 1400) && movecontact
trigger5 = (stateno = 1700) && movecontact

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 640) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 1400) && movecontact
trigger6 = (stateno = 1700) && movecontact

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 430
trigger6 = stateno = 110
trigger7 = stateno = 105

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 430
trigger6 = movecontact
trigger6 = stateno = 440
trigger7 = movecontact
trigger7 = stateno = 210
trigger8 = movecontact
trigger8 = stateno = 440
trigger9 = stateno = 110
trigger10 = stateno = 105

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = movecontact
trigger8 = stateno = 430
trigger9 = movecontact
trigger9 = stateno = 440
trigger10 = stateno = 110
trigger11 = stateno = 105

;Stand Strong Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = stateno = 110
trigger6 = stateno = 105

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 430
trigger7 = movecontact
trigger7 = stateno = 410
trigger8 = stateno = 110
trigger9 = stateno = 105

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 240
trigger7 = movecontact
trigger7 = stateno = 440
trigger8 = movecontact
trigger8 = stateno = 250
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 220
trigger12 = movecontact
trigger12 = stateno = 410
trigger13 = stateno = 110
trigger14 = stateno = 105

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger2 = PalNo = 10
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = PalNo = 10
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = PalNo = 10
trigger5 = movecontact
trigger5 = stateno = 230
trigger5 = PalNo = 10
trigger6 = movecontact
trigger6 = stateno = 240
trigger6 = PalNo = 10
trigger7 = movecontact
trigger7 = stateno = 250
trigger7 = PalNo = 10
trigger8 = movecontact
trigger8 = stateno = 400
trigger8 = PalNo = 10
trigger9 = movecontact
trigger9 = stateno = 410
trigger9 = PalNo = 10
trigger10 = movecontact
trigger10 = stateno = 420
trigger10 = PalNo = 10
trigger11 = movecontact
trigger11 = stateno = 430
trigger11 = PalNo = 10
trigger12 = movecontact
trigger12 = stateno = 440
trigger12 = PalNo = 10
trigger13 = movecontact
trigger13 = stateno = 450
trigger13 = PalNo = 10
trigger14 = stateno = 110
trigger14 = PalNo = 10
trigger15 = stateno = 105
trigger15 = PalNo = 10
trigger16 = movecontact
trigger16 = stateno = 1200
trigger16 = PalNo = 10
trigger17 = movecontact
trigger17 = stateno = 1201
trigger17 = PalNo = 10
trigger18 = movecontact
trigger18 = stateno = 1202
trigger18 = PalNo = 10
trigger19 = movecontact
trigger19 = stateno = 1500
trigger19 = PalNo = 10
trigger20 = movecontact
trigger20 = stateno = 1502
trigger20 = PalNo = 10
trigger21 = movecontact
trigger21 = stateno = 1504
trigger21 = PalNo = 10
trigger22 = movecontact
trigger22 = stateno = 200
trigger22 = PalNo = 7
trigger23 = movecontact
trigger23 = stateno = 210
trigger23 = PalNo = 7
trigger24 = movecontact
trigger24 = stateno = 220
trigger24 = PalNo = 7
trigger25 = movecontact
trigger25 = stateno = 230
trigger25 = PalNo = 7
trigger26 = movecontact
trigger26 = stateno = 240
trigger26 = PalNo = 7
trigger27 = movecontact
trigger27 = stateno = 250
trigger27 = PalNo = 7
trigger28 = movecontact
trigger28 = stateno = 400
trigger28 = PalNo = 7
trigger29 = movecontact
trigger29 = stateno = 410
trigger29 = PalNo = 7
trigger30 = movecontact
trigger30 = stateno = 420
trigger30 = PalNo = 7
trigger31 = movecontact
trigger31 = stateno = 430
trigger31 = PalNo = 7
trigger32 = movecontact
trigger32 = stateno = 440
trigger32 = PalNo = 7
trigger33 = movecontact
trigger33 = stateno = 450
trigger33 = PalNo = 7
trigger34 = stateno = 110
trigger34 = PalNo = 7
trigger35 = stateno = 105
trigger35 = PalNo = 7
trigger36 = movecontact
trigger36 = stateno = 1200
trigger36 = PalNo = 7
trigger37 = movecontact
trigger37 = stateno = 1201
trigger37 = PalNo = 7
trigger38 = movecontact
trigger38 = stateno = 1202
trigger38 = PalNo = 7
trigger39 = movecontact
trigger39 = stateno = 1500
trigger39 = PalNo = 7
trigger40 = movecontact
trigger40 = stateno = 1502
trigger40 = PalNo = 7
trigger41 = movecontact
trigger41 = stateno = 1504
trigger41 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 1400) && movecontact
trigger5 = (stateno = 1700) && movecontact

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 1400) && movecontact
trigger6 = (stateno = 1700) && movecontact

;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 1400) && movecontact
trigger7 = (stateno = 1700) && movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = 600) && movecontact 
trigger2 = PalNo = 10
trigger3 = (stateno = 610) && movecontact
trigger3 = PalNo = 10
trigger4 = (stateno = 620) && movecontact
trigger4 = PalNo = 10
trigger5 = (stateno = 630) && movecontact
trigger5 = PalNo = 10
trigger6 = (stateno = 640) && movecontact
trigger6 = PalNo = 10
trigger7 = (stateno = 650) && movecontact
trigger7 = PalNo = 10
trigger8 = (stateno = 1203) && movecontact
trigger8 = PalNo = 10
trigger9 = (stateno = 1204) && movecontact
trigger9 = PalNo = 10
trigger10 = (stateno = 1205) && movecontact
trigger10 = PalNo = 10
trigger11 = (stateno = 1300) && movecontact
trigger11 = PalNo = 10
trigger12 = (stateno = 1400) && movecontact
trigger12 = PalNo = 10
trigger13 = (stateno = 1600) && movecontact
trigger13 = PalNo = 10
trigger14 = (stateno = 1700) && movecontact
trigger14 = PalNo = 10
trigger15 = (stateno = 600) && movecontact 
trigger15 = PalNo = 7
trigger16 = (stateno = 610) && movecontact
trigger16 = PalNo = 7
trigger17 = (stateno = 620) && movecontact
trigger17 = PalNo = 7
trigger18 = (stateno = 630) && movecontact
trigger18 = PalNo = 7
trigger19 = (stateno = 640) && movecontact
trigger19 = PalNo = 7
trigger20 = (stateno = 650) && movecontact
trigger20 = PalNo = 7
trigger21 = (stateno = 1203) && movecontact
trigger21 = PalNo = 7
trigger22 = (stateno = 1204) && movecontact
trigger22 = PalNo = 7
trigger23 = (stateno = 1205) && movecontact
trigger23 = PalNo = 7
trigger24 = (stateno = 1300) && movecontact
trigger24 = PalNo = 7
trigger25 = (stateno = 1400) && movecontact
trigger25 = PalNo = 7
trigger26 = (stateno = 1600) && movecontact
trigger26 = PalNo = 7
trigger27 = (stateno = 1700) && movecontact
trigger27 = PalNo = 7

;---------------------------------------------------------------------------
;Coin Punch Alpha Counter
[State -1,Coin Punch Alpha Counter]
type = ChangeState
value = 1900
triggerall = command = "alphacoinpunch"
triggerall = power >= 1000
triggerall = stateno >= 150 && stateno <= 153
triggerall = PalNo != 10
triggerall = PalNo != 7
trigger1 = command = "alphacoinpunch"
trigger2 = p2statetype = A

[State -1,Coin Punch Alpha Counter]
type = ChangeState
value = 1900
triggerall = command = "alphacoinpunch"
triggerall = stateno >= 150 && stateno <= 153
trigger1 = command = "alphacoinpunch"
trigger1 = PalNo = 10
trigger2 = p2statetype = A
trigger2 = PalNo = 10
trigger3 = command = "alphacoinpunch"
trigger3 = PalNo = 7
trigger4 = p2statetype = A
trigger4 = PalNo = 7

;---------------------------------------------------------------------------
;Sjump
[State -1, Sjump]
type = ChangeState
value = 9000
triggerall = command = "Sjump"
trigger1 = statetype = S
trigger1 = ctrl 
