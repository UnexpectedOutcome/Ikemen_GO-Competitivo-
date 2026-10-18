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


;-| Super Motions |--------------------------------------------------------

[Command]
name = "Shaia_Inferno"
command = ~D, DF, F, D, DB, B, F, c
time = 100

[Command] 
name = "super_chispa2"
command = ~D, DF, F, D, DF, F, c
time = 15

[Command] 
name = "I_DON'T_KNOW"
command = ~D, DF, F, D, DF, F,x
time = 40 

;-| Special Motions |------------------------------------------------------

[Command]
name = "super_chispa"
command = ~D, DF, F, b
time = 40

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "HORIUKEN_PIRATA"
command = ~F,D,F, x

[Command]
name = "SUPERMAN"
command = ~D, DF, F, c
time = 30 

[Command]
name= "Flame thrower"
command= ~D, DF, F, y

[Command]
name= "Thunder"
command= ~D, DF, F, a

[Command]
name= "metralla"
command= ~D, DF, F, x
time = 40

[Command]
name= "metralla2"
command= ~D, DF, F, y
time = 40

[Command]
name= "bite"
command= ~D, DB, B, a
time = 20

[Command]
name= "crash"
command= ~D, DB, B, b
time = 20

[Command]
name= "dancing"
command= ~D, DB, B, x
time = 20

[Command]
name= "mote"
command= ~D, DB, B, D, DB, B, a
time = 40

[Command]
name= "achsm"
command= ~D, DB, B, s

[Command]
name= "moillo"
command= ~D, DB, B, D, DB, B, b
time = 40

[Command]
name= "achsme"
command= ~D, DF, F, s

;---------------------------------------AI-----------------------------------------
[command] 
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b
time = 1
	
[command] 
name = "AI2"
command = b,b,b,b,b,b,b,b,b,a
time = 1


[command] 
name = "AI3"
command = b,b,b,b,b,b,b,b,b,c
time = 1
	

[command] 
name = "AI4"
command = b,b,b,b,b,b,b,b,b,x
time = 1

[command] 
name = "AI5"
command = b,b,b,b,b,b,b,b,b,y
time = 1

[command] 
name = "AI6"
command = b,b,b,b,b,b,b,b,b,z
time = 1

[command] 
name = "AI7"
command = b,b,b,b,b,b,b,b,a,a
time = 1

[command] 
name = "AI8"
command = b,b,b,b,b,b,b,b,c,c
time = 1

[command] 
name = "AI9"
command = b,b,b,b,b,b,b,b,x,x
time = 1

[command] 
name = "AI10"
command = b,b,b,b,b,b,b,b,y,y
time = 1

[command] 
name = "AI11"
command = b,b,b,b,b,b,b,b,z,z
time = 1

[command] 
name = "AI12"
command = b,b,b,b,b,b,b,a,a,a
time = 1

[command] 
name = "AI13"
command = D,D,D,U,U,U,U,b,b,b,b
time = 1

[command] 
name = "AI14"
command = b,b,b,b,b,b,b,c,c,c
time = 1

[command] 
name = "AI15"
command = b,b,b,b,b,b,b,x,x,x
time = 1

[command] 
name = "AI16"
command = b,b,b,b,b,b,b,y,y,y
time = 1

[command] 
name = "AI17"
command = b,b,b,b,b,b,b,z,z,z
time = 1

[command] 
name = "AI18"
command = b,b,b,b,b,b,a,a,a,a
time = 1

[command] 
name = "AI19"
command = b,x,b,b,b,b,a,a,a,a
time = 1

[command] 
name = "AI20"
command = b,y,b,b,b,b,a,a,a,a
time = 1
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
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "helper1"
command = a+x
time = 1

[Command]
name = "helper2"
command = b+y
time = 1

[Command]
name = "helper3"
command = c+z
time = 1

[Command]
name = "helper4"
command = b+x
time = 1

[Command]
name = "helper5"
command = a+y
time = 1

[Command]
name = "helper6"
command = b+c
time = 1

[Command]
name = "helper7"
command = y+z
time = 1

[Command]
name = "helper8"
command = x+y+z
time = 1

[Command]
name = "cd"
command = a+b
time = 1

[Command]
name = "xy"
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

[Command]
name = "f_b"
command = /$F,y
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
name = "charge"
command = /$a+b
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
[State -1, "super_chispa_especial"]
type = ChangeState
value = 1081
triggerall = command = "super_chispa2"
triggerall = power >= 2000
triggerall = Life <= 700
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1, "Shaia_Inferno"]
type = ChangeState
value = 3000
triggerall = command = "Shaia_Inferno"
triggerall = StateNo != [6039,6041]
triggerall = power >= 1500
;triggerall = Life <=300 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
triggerall = StateNo != 3000

[State -1, I_DON'T_KNOW]
type = ChangeState;Null;
value = 6039;6040
triggerall = command = "I_DON'T_KNOW"
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
triggerall = power = 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = StateNo = 6004 && movecontact

;monstruo raja
[State -1,48]
type = ChangeState
value = 9520
triggerall = NumHelper(2700) = 1
triggerall = power >= 1000
triggerall = StateNo != [6039,6041]
trigger1 = command = "helper1" || command = "helper4" || command = "helper6" || command = "helper8"
trigger1 = statetype != A && ctrl

[State -1,48]
type = ChangeState
value = 9524
triggerall = NumHelper(2700) = 1
triggerall = power >= 1000
triggerall = StateNo != [6039,6041]
trigger1 = command = "helper1" || command = "helper4" || command = "helper6" || command = "helper8"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;LLAMANDO AL MONTRUO
[State -1,70]
type = ChangeState
value = 9526
triggerall = NumHelper(2700) = 0
triggerall = power >= 1000
triggerall = StateNo != [6039,6041]
trigger1 = command = "mote"
trigger1 = statetype != A && ctrl

[State -1,71]
type = ChangeState
value = 9527
triggerall = NumHelper(2700) = 1
triggerall = StateNo != [6039,6041]
trigger1 = command = "achsm"
trigger1 = statetype != A && ctrl

;LLAMANDO AL MONSTRILLO
[State -1,72]
type = ChangeState
value = 9528
triggerall = NumHelper(4000) = 0
triggerall = StateNo != [6039,6041]
triggerall = power >= 1000
trigger1 = command = "moillo"
trigger1 = statetype != A && ctrl

[State -1,71]
type = ChangeState
value = 9511
triggerall = NumHelper(4000) = 1
triggerall = StateNo != [6039,6041]
trigger1 = command = "achsme"
trigger1 = statetype != A && ctrl

;===========================================================================
;Bite
[State -1,50]
type = ChangeState
value = 9521
triggerall = NumHelper(2700) = 1
triggerall = StateNo != [6039,6041]
triggerall = power >= 0
triggerall = command = "bite"
triggerall = StateNo != 3000
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Crash
[State -1,51]
type = ChangeState
value = 9525
triggerall = NumHelper(2700) = 1
triggerall = power >= 0
triggerall = command = "crash"
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Flame thrower
[State -1, "Flame thrower"]
type = ChangeState
value = 1000
triggerall = command = "Flame thrower"
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Thunder
[State -1, "Thunder"]
type = ChangeState
value = 1020
triggerall = command = "Thunder"
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Metralla
[State -1, Metralla]
type = ChangeState
value = 6000
triggerall = command = "metralla"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact 
trigger3 = stateno = 600 && movecontact && time >5 
trigger3 = stateno = 610 && movecontact && time >8
trigger4 = stateno = 640 && movecontact 
trigger5 = stateno = 641 && movecontact 
trigger6 = Projcontact(2804) = 641 && time > 2 

;Metralla
[State -1, Metralla2]
type = ChangeState
value = 6001
triggerall = command = "metralla2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact 
trigger3 = stateno = 600 && movecontact && time >5 
trigger3 = stateno = 610 && movecontact && time >8
trigger4 = stateno = 640 && movecontact 
trigger5 = stateno = 641 && movecontact 
trigger6 = Projcontact(2804) = 641 && time > 2

[State -1, "super_chispa"]
type = ChangeState
value = 1080
triggerall = command = "super_chispa"
triggerall = power >= 400
triggerall = StateNo != [6039,6041]
triggerall = StateNo != 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;HORIUKEN PIRATA
[State -1, HORIUKEN_PIRATA]
type = ChangeState
value = 6006
triggerall = command = "HORIUKEN_PIRATA"
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = StateNo = 6004 && movecontact

;SUPERMAN
[State -1, Superman]
type = ChangeState
value = 6004
triggerall = command = "SUPERMAN"
triggerall = StateNo != 3000
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Charge
[State -1]
type = ChangeState
value = 1502
triggerall = power < 3000
trigger1 = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl = 1

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl = 1
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
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = NumHelper(4000) = 1
triggerall = stateno != [3000,3001]
triggerall = StateNo != [6039,6041] 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7
trigger2 = stateno = 230 && movecontact
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact
;---------------------------------------------------------------------------
;Standing Golpe fuerte
[State -1, Standing Golpe fuerte]
type = ChangeState
value = 220
triggerall = command = "f_b"
triggerall = command != "holddown"
triggerall = NumHelper(4000) = 1
triggerall = stateno != [3000,3001]
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = statetype != A
trigger5 = hitdefattr = SC, NA, SA
trigger5 = movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = NumHelper(2700) = 1 || NumHelper(4000) = 1
triggerall = stateno != [3000,3001]
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = statetype != A
trigger5 = hitdefattr = SC, NA, SA
trigger5 = movecontact
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Stand_CD
[State -1,52]
type = ChangeState
value = 241
triggerall = command = "cd"
triggerall = command != "holddown"
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact 
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 440 && movecontact 

;Stand_CD
[State -1,53]
type = ChangeState
value = 241
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateNo != [6039,6041]
trigger1 = statetype = S && ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact 
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 440 && movecontact 


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = NumHelper(4000) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = NumHelper(2700) = 1
triggerall = stateno != [3000,3001]
trigger1 = statetype = C
triggerall = IsHelper(2700) = 0
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact

[State -1, Crouching Strong Punch2]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = NumHelper(4000) = 1
triggerall = stateno != [3000,3001]
;triggerall = NumHelper(2700) = 1  stateno != 411
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact && time > 4
trigger4 = stateno = 430 && movecontact 
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact 
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 410 && movecontact && time > 5

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = NumHelper(4000) = 1
triggerall = command = "x"
triggerall = IsHelper(2700) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = NumHelper(2700) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact 
trigger3 = stateno = 640 && movecontact && time > 10 
trigger4 = stateno = 600 && movecontact && time >5 
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >5 
trigger3 = stateno = 630 && movecontact && time >8


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact 
trigger3 = stateno = 600 && movecontact && time >5 
trigger3 = stateno = 610 && movecontact && time >8

;---------------------------------------------------------------------------
;Jumping_CD
[State -1,50]
type = ChangeState
value = 641
triggerall = command = "cd"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 630 && movecontact 
trigger3 = stateno = 640 && movecontact && time > 10 
trigger4 = stateno = 600 && movecontact && time >5 
trigger5 = stateno = 610 && movecontact && time >8

;Jumping_CD
[State -1,51]
type = ChangeState
value = 641
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 630 && movecontact 
trigger3 = stateno = 640 && movecontact && time > 10 
trigger4 = stateno = 600 && movecontact && time >5 
trigger5 = stateno = 610 && movecontact && time >8


----------------------------------------AI-only-------------------------------------------------
[State -1, auto_atac]
type = VarSeT
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI7"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
v = 0
value = 1

[State -1, Auto_Shaia_Inferno]
type = ChangeState
value = 3000
triggerall = (power >= 1500) && (Life <= 350) && (StateNo != 3000) && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType != A) && (StateType != C)
trigger1 = (ctrl = 1) && (P2Life >= 1) && (p2StateType != L)
persistent = 0

[State -1, I_don't_know]
type = ChangeState
value = 6039
triggerall = (power = 3000) && (Life >= 0) && (StateNo != 3000) && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType != A) && (StateType != C)
trigger1 = (Pos y = 0) && (ctrl = 1) && (P2Life >= 1) && (p2StateType = A) && P2bodydist x <= 20
trigger2 = (Pos y = 0) && (ctrl = 1) && (P2life >= 1) && (P2bodydist x <= 20) && (P2StateNo = 2000) ;For some fliying chars
persistent = 0

[State -1, super_chispa_especial]
type = ChangeState
value = 1081
triggerall = (Stateno = [0,21]) && (power >= 2000) && (Life <= 700) && (StateNo != [3000,3001]) && StateNo != 1081 && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType != A) && (StateType != C)
trigger1 = (ctrl = 1) && (P2Life >= 1) && P2BodyDist x <= 20 && random = [50,100]   
persistent = 0

;Thunder
[State -1, aUTO_Thunder]
type = ChangeState
value = 1020
triggerall = (Life >= 1) && (StateNo != [3000,3001]) && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType != A) && (StateType != C) && (StateNo != 1020) && P2StateNo != 2000
trigger1 = (P2Life >= 1) && (ctrl = 1) && (P2BodyDist x <= 50) && (random >= 500) && (P2StateType != L)
persistent = 0

;Metralla
[State -1, Metralla]
type = ChangeState
value = 6000
triggerall = (Life >= 0) && (StateNo != 3000) && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType = A) && (StateType != C)&& (statetype != S)
trigger1 = ctrl = 1 && P2StateType = A && random <= 50
persistent = 0

;Metralla
[State -1, Metralla2]
type = ChangeState
value = 6001
triggerall = (Life >= 0) && (StateNo != 3000) && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType = A) && (StateType != C)&& (statetype != S)
trigger1 = ctrl = 1 && P2StateType != A  && P2Life >= 1 && P2BodyDist x <= 150 && random <= 50
persistent = 0

[State -1,llamando_al_mostrillo]
type = ChangeState
value = 9528
triggerall = NumHelper(4000) = 0 && power >= 1000 && statetype != A && ctrl = 1 && (StateType != L) && (MoveType != H) && (StateType != C) && (Var(0) = 1)
trigger1 = (ctrl = 1) && Life >= 0 ;&& random >= 400
persistent = 0

[State -1,llamando_al_mostruo]
type = ChangeState
value = 9526
triggerall = NumHelper(2700) = 0 && power >= 1000 && statetype != A && ctrl = 1 && (StateType != L) && (MoveType != H) && (StateType != C) && (Var(0) = 1)  
trigger1 = (ctrl = 1) && Life >= 0 ;&& random >= 200
persisitent = 0

[State -1, golpe0];stand golpe debil
type = changestate
value = 200
triggerall = NumHelper = 400 && Var(0) = 1 && StateType != A && StateType != L && MoveType != H && StateType != C && StateNo != [3000,3001]
trigger1 = (Stateno = [0,21]) && (ctrl = 1) && (P2Life >= 1) && (P2Statetype != A) && (P2BodyDist X <= 200) && (random <= 10)
persistent = 0

[State -1, golpe1];stand strong punch
type = changestate
value = 210
triggerall = NumHelper(4000) = 1 && Var(0) = 1 && StateType != A && StateType != L && MoveType != H && StateType != C && StateNo != [3000,3001] ;&& StateNo != 210
trigger1 = (Stateno = [0,21]) && (ctrl = 1) && (P2Life >= 1) && (P2BodyDist X <= 21) && (random = [11,20])  
persistent = 0

[State -1, golpe1(2)];stand strong punch
type = changestate
value = 210
triggerall = NumHelper(2700) = 1 && Var(0) = 1 && StateType != A && StateType != L && MoveType != H && StateType != C && StateNo != [3000,3001] ;&& StateNo != 210
trigger1 = (Stateno = [0,21]) && (ctrl = 1) && (P2Life >= 1) && (P2BodyDist X <= 1) && (random = [21,30])
persistent = 0

[State -1, golpe3];standig golpe fuerte
type = changestate
value = 220
triggerall = NumHelper(4000) = 1 && Var(0) = 1 && P2StateType != A && StateType != A && StateType != L && MoveType != H && StateType != C && StateNo != [3000,3001]
trigger1 = (Stateno = [0,21]) && (ctrl = 1) && P2Life >= 1 && P2StateType != L && random = [31,40] 
trigger2 = (Stateno = [0,21]) && (ctrl = 1) && P2MoveType = H && random = [500,550]
persistent = 0

[State -1, golpe4];crouching light punch
type = Null;changestate
value = 400
triggerall = NumHelper(4000) = 1 && Var(0) = 1 && StateType != A && StateType != L && MoveType != H && StateType = C && StateNo != [3000,3001]
trigger1 = P2Life >= 1 && (ctrl = 1) && P2BodyDist X <= 100 && random = [41,50]
persistent = 0

[State -1, golpe5];crouching strong punch
type = changestate
value = 410
triggerall = NumHelper(4000) = 1 && Var(0) = 1 && StateType != A && StateType != L && MoveType != H && StateType = C && StateNo != [3000,3001]
trigger1 = P2Life >= 1 && (ctrl = 1) && (P2StateType != A) && Stateno = 10 && random = [51,60]
persistent = 0

[State -1, golpe6];air light punch
type = changestate
value = 600
triggerall = NumHelper(4000) = 1 && Var(0) = 1 && StateType != L && MoveType != H && StateType != C && StateNo != [3000,3001]
trigger1 = (StateType = A) && P2Life >= 1 && (ctrl = 1) && P2StateType != L && random = [61,70]
persistent = 0

[State -1, golpe7];air strong punch
type = changestate
value = 610
triggerall = NumHelper(2700) = 1 && Var(0) = 1 && StateType != L && MoveType != H && StateType != C && StateNo != [3000,3001]
trigger1 = (StateType = A) && P2StateType != L && (ctrl = 1) && random = [100,110]
persistent = 0

[State -1,Bite]
type = ChangeState
value = 9521
triggerall = (Stateno = [0,21]) && (ctrl = 1) && NumHelper(2700) = 1 && StateNo != 3000 && StateType = S && ctrl && statetype != A && (Var(0) = 1) && movetype != H && (StateType != L) && p2life >=1 && Helper(2700), StateNo != 9530 
trigger1 = P2StateType = S 
trigger1 = time >= 100 || random <= 50
trigger2 = P2StateType = A
trigger2 = time >= 100 || random <= 50
persistent = 0

[State -1,Crash]
type = ChangeState
value = 9525
triggerall = (Stateno = [0,21]) && (ctrl = 1) && NumHelper(2700) = 1 && StateNo != 3000 && StateType = S && ctrl && statetype != A && (Var(0) = 1) && movetype != H && (StateType != L)&& p2life >=1 && Helper(2700), StateNo != 9530 && Helper(2700), StateNo != 9521              
trigger1 = P2StateType = S
trigger1 = time >= 100 || random <= 50
persistent = 0

[State -1, Flame thrower]
type = ChangeState
value = 1000
triggerall = (Life >= 0) && (StateNo != [3000,3001]) && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType != A) && (StateType != C)
trigger1 = (P2Life >= 0) && ctrl = 1 && P2BodyDist x <= 200 && P2StateType = L                 
persistent = 0

[State -1,Blast]
type = ChangeState
value = 9520
triggerall = NumHelper(2700) = 1 && (ctrl = 1) && StateNo != 3000 && StateType = S && (ctrl = 1) && statetype != A && (Var(0) = 1) && movetype != H && (StateType != L) && p2life >=1 && Helper(2700), StateNo != 9530 
trigger1 = Helper(2700), StateNo = 2700 && Helper(2700), StateNo = 7020 && Helper(2700), StateNo = 2721 && P2Life >= 1 && P2BodyDist x >= 100 && random <= 50 && power >= 1000
persistent = 0

[State -1,charge]
type = ChangeState
value = 1502
triggerall = (Stateno = [0,21]) && (ctrl = 1) && (power <= 1000) && (Life >= 1) && (P2Life >= 1) && (StateNo != [3000,3001]) && StateNo != 1081 && (Var(0) = 1) && (StateType != L) && (MoveType != H) && (StateType != A) && (StateType != C)
trigger1 = P2BodyDist X >= 200
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = random <= 200
persistent = 0


