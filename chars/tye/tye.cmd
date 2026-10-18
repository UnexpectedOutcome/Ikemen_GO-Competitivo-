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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z =
a = a
b = b
c =
s =

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 2

;-| Cpu Activate|-------------------------------------------------------
[Command]
name = "cpu_1"
command = U, U
time = 1

[Command]
name = "cpu_2"
command = B, B
time = 1

[Command]
name = "cpu_3"
command = DB, UF
time = 1

[Command]
name = "cpu_4"
command = UB, DF
time = 1

[Command]
name = "cpu_5"
command = D, D
time = 1

[Command]
name = "cpu_6"
command = F, F
time = 1

[Command]
name = "cpu_7"
command = DF, UB
time = 1

[Command]
name = "cpu_8"
command = UF, DB
time = 1

[Command]
name = "cpu_9"
command = x, x
time = 1

[Command]
name = "cpu_10"
command = y, y
time = 1

[Command]
name = "cpu_11"
command = a, a
time = 1

[Command]
name = "cpu_12"
command = b, b
time = 1

[Command]
name = "cpu_13"
command = U, U
time = 1

[Command]
name = "cpu_14"
command = B, B
time = 1

[Command]
name = "cpu_15"
command = DB, UF
time = 1

[Command]
name = "cpu_16"
command = UB, DF
time = 1

[Command]
name = "cpu_17"
command = D, D
time = 1

[Command]
name = "cpu_18"
command = F, F
time = 1

[Command]
name = "cpu_19"
command = DF, UB
time = 1

[Command]
name = "cpu_20"
command = UF, DB
time = 1

[Command]
name = "cpu_21"
command = x, x
time = 1

[Command]
name = "cpu_22"
command = y, y
time = 1

[Command]
name = "cpu_23"
command = a, a
time = 1

[Command]
name = "cpu_24"
command = b, b
time = 1
[Command]
name = "cpu_25"
command = U, U
time = 1

[Command]
name = "cpu_26"
command = B, B
time = 1

[Command]
name = "cpu_27"
command = DB, UF
time = 1

[Command]
name = "cpu_28"
command = UB, DF
time = 1

[Command]
name = "cpu_29"
command = D, D
time = 1

[Command]
name = "cpu_30"
command = F, F
time = 1

[Command]
name = "cpu_31"
command = DF, UB
time = 1

[Command]
name = "cpu_32"
command = UF, DB
time = 1

[Command]
name = "cpu_33"
command = x, x
time = 1

[Command]
name = "cpu_34"
command = y, y
time = 1

[Command]
name = "cpu_35"
command = a, a
time = 1

[Command]
name = "cpu_36"
command = b, b
time = 1
[Command]
name = "cpu_37"
command = U, U
time = 1

[Command]
name = "cpu_38"
command = B, B
time = 1

[Command]
name = "cpu_39"
command = DB, UF
time = 1

[Command]
name = "cpu_40"
command = UB, DF
time = 1

[Command]
name = "cpu_41"
command = D, D
time = 1

[Command]
name = "cpu_42"
command = F, F
time = 1

[Command]
name = "cpu_43"
command = DF, UB
time = 1

[Command]
name = "cpu_44"
command = UF, DB
time = 1

[Command]
name = "cpu_45"
command = UF, DB
time = 1

;-| Unique Special Motions|--------------------------------------------------------
[Command]
name = "qcfx2_p"
command = ~D, $F, $D, $F, x
time = 25

[Command]
name = "qcfx2_k"
command = ~D, $F, $D, $F, a
time = 25

[Command]
name = "qcbx2_p"
command = ~D, $B, $D, $B, x
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "dp_k"
command = ~$F,D,$F, a
time = 15

[Command]
name = "qcb_k"
command = ~D,DB, B,a
time = 15

[Command]
name = "qcf_k"
command = ~D, DF, F, a
time = 15

[Command]
name = "hcb_p"
command = ~$F, $D, $B, x
time = 15
;-| Move Motions |---------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F,F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B,B
time = 15

[Command]
name = "superjump" ;Required (do not remove)
command = DB,UF
time = 10

[Command]
name = "superjump" ;Required (do not remove)
command = D,U
time = 10

[Command]
name = "superjump" ;Required (do not remove)
command = DF,UB
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = /$U,y
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "r_a"
command = ~a
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
name = "r_x"
command = ~x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "y"
command = x+a
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = F
time = 1

[Command]
name = "downfwd"
command = DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = D
time = 1

[Command]
name = "downback"
command = DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "upfwd"
command = UF
time = 1

[Command]
name = "tfwd" ;Required (do not remove)
command = F
time = 1

[Command]
name = "tdownfwd"
command = DF
time = 1

[Command]
name = "tdown" ;Required (do not remove)
command = D
time = 1

[Command]
name = "tdownback"
command = DB
time = 1

[Command]
name = "tback" ;Required (do not remove)
command = B
time = 1

[Command]
name = "tupback"
command = UB
time = 1

[Command]
name = "tup" ;Required (do not remove)
command = U
time = 1

[Command]
name = "tupfwd"
command = UF
time = 1

[Command]
name = "r_down"
command = ~$D
time = 1

[Command]
name = "r_up"
command = ~$U
time = 1

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
name = "hold_y"
command = /x+a
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdtfwd" ;Required (do not remove)
command = /F
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
name = "holdtdown" ;Required (do not remove)
command = /D
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
;AI ACTIVE
;---------------------------------------------------------------------------

[State -1]
type = VarSet
triggerall = var(59)=0
triggerall = life != 0
triggerall = alive
trigger1 = command = "cpu_1"
trigger2 = command = "cpu_2"
trigger3 = command = "cpu_3"
trigger4 = command = "cpu_4"
trigger5 = command = "cpu_5"
trigger6 = command = "cpu_6"
trigger7 = command = "cpu_7"
trigger8 = command = "cpu_8"
trigger9 = command = "cpu_9"
trigger10 = command = "cpu_10"
trigger11 = command = "cpu_11"
trigger12 = command = "cpu_12"
trigger13 = command = "cpu_13"
trigger14 = command = "cpu_14"
trigger15 = command = "cpu_15"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = var(59)=0
triggerall = life != 0
triggerall = alive
trigger1 = command = "cpu_16"
trigger2 = command = "cpu_17"
trigger3 = command = "cpu_18"
trigger4 = command = "cpu_19"
trigger5 = command = "cpu_20"
trigger6 = command = "cpu_21"
trigger7 = command = "cpu_22"
trigger8 = command = "cpu_23"
trigger9 = command = "cpu_24"
trigger10 = command = "cpu_25"
trigger11 = command = "cpu_26"
trigger12 = command = "cpu_27"
trigger13 = command = "cpu_28"
trigger14 = command = "cpu_29"
trigger15 = command = "cpu_30"
v = 59
value = 1

[State -1]
type = VarSet
triggerall = var(59)=0
triggerall = life != 0
triggerall = alive
trigger1 = command = "cpu_31"
trigger2 = command = "cpu_32"
trigger3 = command = "cpu_33"
trigger4 = command = "cpu_34"
trigger5 = command = "cpu_35"
trigger6 = command = "cpu_36"
trigger7 = command = "cpu_37"
trigger8 = command = "cpu_38"
trigger9 = command = "cpu_39"
trigger10 = command = "cpu_40"
trigger11 = command = "cpu_41"
trigger12 = command = "cpu_42"
trigger13 = command = "cpu_43"
trigger14 = command = "cpu_44"
trigger15 = command = "cpu_45"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = roundstate = 3
v = 59
value = 0

[State -1]
type = VarRandom
triggerall= var(59)=1
trigger1 = life != 0
trigger1 = alive
trigger1 = (time%10)=0
trigger1 = roundstate = 2
trigger2 = movecontact = [2,5]
v = 58
range = 0,500

[State -1]
type = VarRandom
trigger1 = roundstate = 0
trigger1 = (time%10)=0
trigger2 = roundstate = 4
v = 58
range = 0,500

; AI GUARD
[State -1, AI GUARD]
type = ChangeState
value = 120
triggerall = var(59)=1
triggerall = ctrl
triggerall = stateno !=[120,140]
trigger1 = inguarddist
trigger2 = (enemy,command = "a") || (enemy,command = "b") || (enemy,command = "c")
trigger2 = (p2bodydist x < 100) ^^ (p2bodydist y < 100)
trigger3 = (enemy,command = "x") || (enemy,command = "y") || (enemy,command = "z")
trigger3 = (p2bodydist x < 100) ^^ (p2bodydist y < 100)

;===========================================================================
;---------------------------------------------------------------------------
; Rush Chaos
[State -1, Rush Chaos]
type =  ChangeState
value = 4900
triggerall = var(59) = 0
triggerall = command = "qcfx2_p"
triggerall = (statetype = S) || (statetype = C)
triggerall = power >= 2000
trigger1 = ctrl

[State -1, Rush Chaos AI]
type =  ChangeState
value = 4900
triggerall = var(59) = 1
triggerall = var(58) = [1,500]
triggerall = (statetype = S) || (statetype = C)
triggerall = power >= 2000
trigger1 = enemynear, gethitvar(fall)=1
trigger1 = p2bodydist x < 120
trigger1 = p2bodydist y = [-150,-90]
;---------------------------------------------------------------------------
; Rush Kaiser
[State -1, Rush Kaiser]
type =  ChangeState
value = 4000
triggerall = var(59) = 0
triggerall = command = "qcfx2_k"
triggerall = (statetype = A)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = movecontact = [1,5]
trigger2 = (stateno = 610) || (stateno = 610) ||(stateno = 640) || (stateno = 655) || (stateno = 2600)
trigger3 = (stateno = [4200,4500]) && (movecontact)
trigger3 = pos y <=0

[State -1, Rush Kaiser AI]
type =  ChangeState
value = 4000
triggerall = var(59) = 1
triggerall = var(58) = [1,100]
triggerall = statetype = A
triggerall = power >= 1000
triggerall = pos y <=-100
trigger1 = ctrl
trigger1 = enemynear, movetype = A
trigger2 = movecontact = [1,5]
trigger2 = (stateno = 610) || (stateno = 610) ||(stateno = 640) || (stateno = 655) || (stateno = 2600)
trigger3 = (stateno = [4200,4500]) && (movecontact)

;---------------------------------------------------------------------------
; Rush Splendor
[State -1, Rush Splendor]
type = ChangeState
value = 4500
triggerall = var(59) = 0
triggerall = command = "qcfx2_k"
triggerall = (statetype = S) || (statetype = C)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = movecontact = [1,5]
trigger2 = (stateno = [200,410]) || (stateno = 430) || (stateno = 2200)
trigger3 = (stateno = 4200)
trigger3 = pos y >= 0
trigger3 = time >67
trigger4 = (stateno = [4000,4050]) && (movecontact)
trigger4 = pos y >=0

[State -1, Rush Splendor AI]
type =  ChangeState
value = 4500
triggerall = var(59) = 1
triggerall = var(58) = [50,99]
triggerall = (statetype = S) || (statetype = C)
triggerall = power >= 1000
triggerall = p2bodydist x <=60
triggerall = enemynear, statetype = S
trigger1 = movehit = [1,5]
trigger1 = (stateno = [200,410]) || (stateno = 430) || (stateno = 2200)

;---------------------------------------------------------------------------
; Rush Overture
[State -1, Rush Overture]
type =  ChangeState
value = 4200
triggerall = var(59) = 0
triggerall = command = "qcbx2_p"
triggerall = (statetype = S) || (statetype = C)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [4000,4050]) && (movecontact)
trigger2 = pos y >=0

[State -1, Rush Overture AI]
type =  ChangeState
value = 4200
triggerall = var(59) = 1
triggerall = var(58) = [100,149]
triggerall = (statetype = S) || (statetype = C)
triggerall = power >= 1000
triggerall = p2bodydist x <=120
trigger1 = enemynear, statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Gyro Rush
[State -1, Gyro Rush]
type =  ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = command = "dp_k"
triggerall = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = (stateno = [200,410]) || (stateno = 430)
trigger2 = movecontact = [1,5]

[State -1, Gyro Rush AI]
type = ChangeState
value = 2000
triggerall = var(59) = 1
triggerall = var(58) = [1,50]
triggerall = (statetype = S) || (statetype = C)
triggerall = p2bodydist x = [0,80]
triggerall = enemynear, statetype !=C
triggerall = (enemynear, statetype != L)
trigger1 = (ctrl) && (enemynear, statetype = A || enemynear, movetype = A)
trigger2 = (stateno = [200,410]) || (stateno = 430)
trigger2 = movehit = [1,5]


;---------------------------------------------------------------------------
; Earth Rush
[State -1, Earth Rush]
type =  ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "qcf_k"
triggerall = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = (stateno = [200,410])||(stateno =430)
trigger2 = movecontact = [1,3]

[State -1, Earth Rush AI]
type =  ChangeState
value = 2200
triggerall = var(59) = 1
triggerall = (statetype = S) || (statetype = C)
trigger1 = var(58) = [1,50]
trigger1 = (ctrl) && (p2bodydist x < 120) && (enemynear, statetype = S)
trigger2 = var(58) = [1,50]
trigger2 = (stateno = [200,410]) || (stateno = 430)
trigger2 = movecontact = [2,3]
trigger3 = var(58) = [1,300]
trigger3 = (stateno = 430) && (movecontact = [4,5])
trigger4= var(58) = [1,300]
trigger4 = (ctrl) && (enemynear, statetype = L) && var(58) = [1,25]

;---------------------------------------------------------------------------
; Tempest Rush
[State -1, Tempest Rush]
type =  ChangeState
value = 2400
triggerall = var(59) = 0
triggerall = command = "qcb_k"
triggerall = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movecontact = [1,5]

[State -1, Tempest Rush AI]
type =  ChangeState
value = 2400
triggerall = var(59) = 1
triggerall = (statetype = S) || (statetype = C)
trigger1 = (stateno = 240) && (movecontact = [4,5]) && (var(58) = [1,250])
trigger2 = (ctrl) && (enemynear, numproj > 0) && (var(58) = [1,250])

;---------------------------------------------------------------------------
; Comet Rush
[State -1, Comet Rush]
type =  ChangeState
value = 2600
triggerall = var(59) = 0
triggerall = command = "qcf_k"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact=[1,3]
trigger2 = (stateno = 610) || (stateno = 610) ||(stateno = 640) || (stateno = 655)

[State -1, Comet Rush AI]
type =  ChangeState
value = 2600
triggerall = pos y <=-100
triggerall = var(59) = 1
triggerall = var(58) = [0,250]
triggerall = statetype = A
trigger1 = movecontact=[1,3]
trigger1 = (stateno = 610) || (stateno = 610) ||(stateno = 640) || (stateno = 655)
trigger2 = (ctrl) && (p2bodydist x < 120) && (enemynear, movetype = A)
;---------------------------------------------------------------------------
; Rainbow Rush
[State -1, Rainbow Rush]
type =  ChangeState
value = 2800
triggerall = var(59) = 0
triggerall = command = "hcb_p"
triggerall = statetype = S || statetype = C
trigger1 = ctrl

[State -1, Rainbow Rush AI]
type =  ChangeState
value = 2800
triggerall = var(59) = 1
triggerall = statetype = S || statetype = C
triggerall = ctrl
triggerall = p2bodydist x = [120,220]
trigger1 = (var(58) = [1,50]) && (enemynear, statetype = C)
trigger2 = (ctrl) && (enemynear, numproj > 0) && (var(58) = [251,500])
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno !=100
trigger2 = stateno = [240,245]

[State -1, Run Fwd AI]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(58) = [450,500]
triggerall = p2bodydist x > 250
triggerall = statetype = S || statetype = C
trigger2 = life >= (lifemax/2)
trigger1 = ctrl
trigger1 = stateno !=100
trigger2 = stateno = [240,245]

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = command = "BB"
triggerall = statetype = S || statetype = C
trigger1 = ctrl

[State -1, Run Back AI]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = statetype = S || statetype = C
triggerall = ctrl
triggerall = backedgebodydist > 120
trigger1 = var(58) = [450,500]
trigger1 = enemynear, vel x = [1, 5]
trigger1 = (enemynear, movetype = I) || (enemynear, movetype = A)
trigger2 = life < (lifemax/2)
trigger2 = var(40)<7
trigger2 = var(58) = [400,500]

;---------------------------------------------------------------------------
; Roll Fwd
[State -1, Roll Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120
trigger1 = life !=0

[State -1, Roll Fwd AI]
type = ChangeState
value = 110
triggerall = var(59) = 1
triggerall = var(58) = [0,120]
triggerall = stateno = 5120
triggerall = life !=0
trigger1 = enemynear, vel x <=0
trigger2 = backedgebodydist < 30

;---------------------------------------------------------------------------
; Roll Back
[State -1, Roll Back]
type = ChangeState
value = 115
triggerall = var(59) = 0
trigger1 = command = "holdback"
trigger1 = stateno = 5120
trigger1 = life !=0

[State -1, Roll Back AI]
type = ChangeState
value = 115
triggerall = var(59) = 1
triggerall = var(58) = [0,120]
triggerall = stateno = 5120
triggerall = life !=0
trigger1 = enemynear, vel x <=0
trigger2 = backedgebodydist < 30
;---------------------------------------------------------------------------
; Wall Hop
[State -1, Wallhop]
type = ChangeState
value = 60
trigger1 = command = "holdfwd"
trigger1 = stateno!=[106,107]
trigger1 = stateno !=[60,65]
trigger1 = statetype = A
trigger1 = pos y < -40
trigger1 = ctrl
trigger1 = backedgedist < 5

[State -1, Wallhop]
type = ChangeState
value = 62
triggerall = command = "holdback"
triggerall = statetype = A
triggerall = frontedgedist < 5
triggerall = pos y < -40
trigger1 = stateno!=[106,107]
trigger1 = stateno !=[60,65]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 70
triggerall = var(59) = 0
triggerall = alive
triggerall = statetype != A
trigger1 = command = "superjump"
trigger1 = ctrl = 1

[State -1, Super Jump AI]
type = ChangeState
value = 70
triggerall = var(59) = 1
triggerall = var(58) = [0,100]
triggerall = alive
triggerall = statetype != A
trigger1 = p2bodydist y < -250
trigger1 = ctrl

;---------------------------------------------------------------------------
; Cancel Jump
[State -1, Cancel Jump]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype = S || statetype = C
triggerall = movecontact = [5,10]
trigger1 =(stateno = [200,210]) ||(stateno = 225)
trigger2 =(stateno = [400,410])

;---------------------------------------------------------------------------

; Somersault Crush
[State -1, Throw]
type =  ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command ="holdback"
triggerall = command = "y"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = stateno != 100

; Aerial Somersault Crush
[State -1, Throw]
type =  ChangeState
value = 801
triggerall = var(59) = 0
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

; Spin Comet
[State -1, Throw]
type =  ChangeState
value = 850
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = command !="holdback"
trigger2 = statetype = A
trigger2 = ctrl

[State -1, Throw AI]
type =  ChangeState
value = 850
triggerall = var(59) = 1
triggerall = var(58) = [0,50]
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, command = "holdback"
trigger1 = p2bodydist x < 40
;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type =  ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command !="holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type =  ChangeState
value = 195
triggerall = var(59) = 1
triggerall = var(58) = [0,100]
trigger1 = life= [(lifemax/2),(lifemax/5)]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(40)<4
trigger1 = p2bodydist x > 150

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type =  ChangeState
value = 196
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command ="holdfwd"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Getup Kick - Spike Rush
[State -1, Getup Kick]
type =  ChangeState
value = 700
trigger1 = command = "a"
trigger1 = (stateno = 5120)
trigger1 = power>=200
trigger1 = life !=0

;---------------------------------------------------------------------------
; Stand Jab
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command !="holdfwd"
triggerall = command !="holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno =200) || (stateno =230)
trigger2 = movecontact=[1,5]

; Stand Jab
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = var(58) = [300,400]
triggerall = statetype = S || statetype = C
trigger1 = p2bodydist x =[0,50]
trigger1 = (enemynear,statetype = S) || (enemynear,statetype = C)
trigger1 = ctrl
trigger2 = (stateno =200) || (stateno =230)
trigger2 = movecontact=[4,5]

;---------------------------------------------------------------------------
; Stand Overhead
[State -1, Stand Overhead]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Overhead Ai]
type =  ChangeState
value = 210
triggerall = var(59) = 1
triggerall = var(58) = [75,149]
triggerall = (enemynear, statetype != L)
triggerall = p2bodydist x < 45
triggerall = statetype = S || statetype = C
trigger1 = (ctrl) && (enemynear, statetype = C)
;---------------------------------------------------------------------------
; Stand Uppercut
[State -1, Stand Uppercut]
type = ChangeState
value = 215
triggerall = command = "x"
triggerall = statetype = S
triggerall = command = "holdback"
trigger1 = ctrl
trigger2 = (movecontact=[3,5]) && (stateno = 225)

[State -1, Stand Uppercut AI]
type = ChangeState
value = 215
triggerall = var(59) = 1
triggerall = var(58) = [1,100]
triggerall = (enemynear, statetype != L)
triggerall = p2bodydist x = [0,30]
trigger1 = (statetype = S) || (statetype = C)
trigger1 = (ctrl) && (enemynear, statetype = A || enemynear, statetype = S)

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)= 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 51
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong Punch AI]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = var(58) = [1,100]
triggerall = p2bodydist x = [51,120]
trigger1 = (statetype = S) || (statetype = C)
trigger1 = (ctrl) && (enemynear, statetype = S || enemynear, movetype = A)

;---------------------------------------------------------------------------
; Stand Elbow
[State -1, Stand Elbow]
type = ChangeState
value = 225
triggerall = var(59)= 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = p2bodydist x = [-20,50]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = [1,5]
trigger2 = stateno = 200

[State -1, Stand Elbow AI]
type = ChangeState
value = 225
triggerall = var(59) = 1
triggerall = var(58) = [1,100]
triggerall = p2bodydist x = [-20,50]
trigger1 = (statetype = S) || (statetype = C)
trigger1 = (ctrl) && (enemynear, statetype = S || enemynear, movetype = A)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = p2bodydist x < 40
triggerall = command != "holdback"
triggerall = command !="holdfwd"
triggerall = command != "holddown"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno =200
trigger2 = movecontact=[1,5]

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = var(58) = [0,300]
triggerall = (statetype = S) || (statetype = C)
triggerall = p2bodydist x = [0,30]
trigger1 = stateno =200
trigger1 = movecontact=[1,5]
trigger1 = (ctrl) && (enemynear, statetype = S)

; Standing Anti-Air Kick
[State -1, Standing Anti-Air Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Launcher
[State -1, Standing Launcher]
type = ChangeState
value = 240
triggerall = p2bodydist x < 40
triggerall = stateno !=100
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Standing Launcher Mobile
[State -1, Standing Launcher Mobile]
type = ChangeState
value = 243
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = p2bodydist x >= 40
trigger2 = stateno = 100

; Standing Launcher Mobile
[State -1, Standing Launcher Mobile]
type = ChangeState
value = 243
triggerall = var(59) = 1
triggerall = var(58) = [400,500]
triggerall = (statetype = S) || (statetype = C)
triggerall = p2bodydist x = [0,75]
triggerall = ctrl
trigger1 = enemynear, movetype = A
trigger2 = enemynear, vel x > 0

[State -1, Standing Roundhouse]
type = ChangeState
value = 245
triggerall = p2bodydist x >= 40
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Roundhouse]
type = ChangeState
value = 245
triggerall = var(59) = 1
triggerall = var(58) = [1,100]
triggerall = (statetype = S) || (statetype = C)
triggerall = p2bodydist x = [60,120]
triggerall = ctrl
trigger1 = enemynear, movetype = A
trigger2 = enemynear, vel x > 0
;---------------------------------------------------------------------------
; Standing Ax Kick
[State -1, Standing Ax Kick]
type =  ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holdup"
trigger1 = stateno = 240
trigger1 = animelemtime(3)=[6,16]
trigger2 = stateno = 243
trigger2 = animelemtime(3)=[6,16]
;---------------------------------------------------------------------------
; Standing Rising Anti-Air
[State -1, Standing Rising Anti-Air]
type =  ChangeState
value = 255
triggerall = command = "a"
triggerall = command = "holdup"
trigger1 = stateno = [240,243]
trigger1  = movecontact = [1,5]
trigger2 = stateno = 215
trigger2  = movecontact = [1,10]

[State -1, Standing Rising Anti-Air AI]
type =  ChangeState
value = 255
triggerall = var(59) = 1
triggerall = var(58) = [1,100]
triggerall = (statetype = S) || (statetype = C)
triggerall = p2bodydist x = [60,120]
triggerall = ctrl
trigger1 = stateno = [240,243]
trigger1  = movecontact = [1,5]
trigger2 = stateno = 215
trigger2  = movecontact = [1,10]

;---------------------------------------------------------------------------
; Crouching Combo
[State -1, Crouching Combo]
type =  ChangeState
value = 410
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "holddown"
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = (stateno=200) || (stateno = 235)
trigger2 = movecontact = [1,5]
trigger3 = stateno = 410
trigger3 = movecontact = [5,10]

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type =  ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl

[State -1, Crouching Strong Punch AI]
type =  ChangeState
value = 420
triggerall = var(59) = 1
triggerall = var(58) = [400,449]
triggerall = p2bodydist x = [40,140]
triggerall = (statetype = S) || (statetype = C)
trigger1 = (ctrl) && (numtarget(450)>0) && (enemynear, gethitvar(fall)=1)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type =  ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl

[State -1, Crouching Light Kick]
type =  ChangeState
value = 430
triggerall = var(59) = 1
triggerall = var(58) = [101,200]
triggerall = p2bodydist x = [0,100]
trigger1 = (statetype = S) || (statetype = C)
trigger1 = (ctrl) && (enemynear, statetype = S || enemynear, movetype = A)
trigger2 = (stateno = 230) && (movecontact = [1,5])
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type =  ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type =  ChangeState
value = 450
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = command = "holddown"
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger2 = animelemtime(6)>0
trigger2 = numtarget(420)>0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = stateno != 600

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 635
trigger2 = movecontact=[1,5]

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact=[1,5]

;---------------------------------------------------------------------------
; Jump Far Kick
[State -1, Jump Far Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = (anim != 41) && (anim != 44)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Anti-Air Kick
[State -1, Jump Anti-Air Kick]
type = ChangeState
value = 640
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = (anim = 41) || (anim = 44)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Spin Kick
[State -1, Jump Spin Kick]
type = ChangeState
value = 650
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = (anim != 41) || (anim != 44)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Short Kick
[State -1, Jump Short Kick]
type = ChangeState
value = 655
triggerall = command = "a"
triggerall = command != "holdup"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Cancel
[State -1, Cancel]
type = ChangeState
value = 900
triggerall = var(59)=0
triggerall = hitdefattr = SCA,AA,AP
triggerall = movecontact = [1,3]
triggerall = hitcount <= 1
triggerall = time > 5
triggerall = power >= 1000
triggerall = stateno = [200,2999]
trigger1 = command = "hold_b"

; Cancel
[State -1, Cancel AI]
type = ChangeState
value = 900
triggerall = var(59)=1
triggerall = var(58)=[490,500]
triggerall = hitdefattr = SCA,AA,AP
triggerall = movecontact = [1,3]
triggerall = hitcount <= 1
triggerall = time > 5
triggerall = power >= 1000
trigger1 = stateno = [200,2999]

