; The CMD file.
;

[Command]
name = "AI49"
command = B,a,y,b
time = 0

[Command]
name = "AI48"
command = U,x,a
time = 0

[Command]
name = "AI47"
command = z,x,s,D,U
time = 0

[Command]
name = "AI46"
command = D,DB,c
time = 0

[Command]
name = "AI45"
command = DF,c,DB
time = 0

[Command]
name = "AI44"
command = D,a,z,DB
time = 0

[Command]
name = "AI43"
command = x,DB,b,c,a
time = 0

[Command]
name = "AI42"
command = a,U,F,DF
time = 0

[Command]
name = "AI41"
command = U,s,DB,x
time = 0

[Command]
name = "AI40"
command = c,a,y,U,DF
time = 0

[Command]
name = "AI39"
command = b,y,B
time = 0

[Command]
name = "AI38"
command = b,DB,x,a
time = 0

[Command]
name = "AI37"
command = DB,B,F,y
time = 0

[Command]
name = "AI36"
command = y,U
time = 0

[Command]
name = "AI35"
command = B,s,y,F,a
time = 0

[Command]
name = "AI34"
command = s,D,U
time = 0

[Command]
name = "AI33"
command = D,U,B,DF
time = 0

[Command]
name = "AI32"
command = DF,a,F
time = 0

[Command]
name = "AI31"
command = F,DF
time = 0

[Command]
name = "AI30"
command = F,s
time = 0

[Command]
name = "AI29"
command = DB,x,b,U
time = 0

[Command]
name = "AI28"
command = DB,z
time = 0

[Command]
name = "AI27"
command = B,z
time = 0

[Command]
name = "AI26"
command = s,DF,F,DB,B
time = 0

[Command]
name = "AI25"
command = B,s,c,b,z
time = 0

[Command]
name = "AI24"
command = x,DF,a,c
time = 0

[Command]
name = "AI23"
command = F,b,DF,U
time = 0

[Command]
name = "AI22"
command = DF,a,c,s
time = 0

[Command]
name = "AI21"
command = F,a,z,c
time = 0

[Command]
name = "AI20"
command = a,B
time = 0

[Command]
name = "AI19"
command = c,B,s
time = 0

[Command]
name = "AI18"
command = DB,b,D,s,y
time = 0

[Command]
name = "AI17"
command = a,DB,D,z
time = 0

[Command]
name = "AI16"
command = U,D,B,c
time = 0

[Command]
name = "AI15"
command = y,b,x,D,a
time = 0

[Command]
name = "AI14"
command = z,U,a,y
time = 0

[Command]
name = "AI13"
command = c,a,s
time = 0

[Command]
name = "AI12"
command = y,U,b,a,D
time = 0

[Command]
name = "AI11"
command = b,B
time = 0

[Command]
name = "AI10"
command = D,c,DF,b
time = 0

[Command]
name = "AI9"
command = c,z,s,a,F
time = 0

[Command]
name = "AI8"
command = a,a,DF
time = 0

[Command]
name = "AI7"
command = s,a,DB,D
time = 0

[Command]
name = "AI6"
command = DF,a,a
time = 0

[Command]
name = "AI5"
command = D,s,b,c,DB
time = 0

[Command]
name = "AI4"
command = y,s
time = 0

[Command]
name = "AI3"
command = a,c,x,F,U
time = 0

[Command]
name = "AI2"
command = b,F,a,DF,x
time = 0

[Command]
name = "AI1"
command = a,DF
time = 0

[Command]
name = "AI0"
command = x,s,F,DF,z
time = 0

[Command]
name = "down"
command = D
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "up"
command = U
time = 1

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
name = "Vieja"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, x+y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "Ears" 
command = ~D, DB, B, b+c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~B, F, x

[Command]
name = "upper_xy"
command = ~B, F, y

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, z

[Command]
name = "cuchi_a"
command = ~D, DF, F, a

[Command]
name = "rock_b"
command = ~D, DF, F, b

[Command]
name = "rock_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_xy"
command = ~D, DB, B, b

[Command]
name = "Blue"
command = ~D, DB, B, a

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
;---------------------------------------------------------------------------
;(uses one super bar)

[State -1, Bruja]
type = ChangeState
value = 3050
triggerall = var(59) <= 0
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
;---------------------------------------------------------------------------
;(uses one super bar)

[State -1, Coneja]
type = ChangeState
value = 3400
triggerall = var(59) <= 0
triggerall = command = "Ears"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = command = "Vieja"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3100)
trigger2 = movecontact

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
;Fast Kung Fu Knee (1/3 super bar)
;
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = var(59) <= 0
triggerall = command = "FF_ab"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = var(59) <= 0
triggerall = command = "FF_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = var(59) <= 0
triggerall = command = "FF_b"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;gata (1/3 super bar)

[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = var(59) <= 0
triggerall = command = "QCF_xy"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = var(59) <= 0
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = var(59) <= 0
triggerall = command = "upper_xy"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Upper

[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = ChangeState
value = 1220
triggerall = var(59) <= 0
triggerall = command = "QCB_xy"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Pelusada (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = ChangeState
value = 1225
triggerall = var(59) <= 0
triggerall = command = "Blue"
triggerall = power >= 320
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "cuchi_a"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;queremosrock
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1030
triggerall = var(59) <= 0
triggerall = command = "rock_b"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Chola
[State -1, Strong Kung Fu Blow]
type = ChangeState
value = 1210
triggerall = var(59) <= 0
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Mazo
[State -1, Strong Blow]
type = ChangeState
value = 2220
triggerall = var(59) <= 0
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Paraguita
[State -1, Legs Kung Fu Zankou]
type = ChangeState
value = 1400
triggerall = var(59) <= 0
triggerall = command = "QCB_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Mu patadita
[State -1, Kung Fu leg]
type = ChangeState
value = 1500
triggerall = var(59) <= 0
triggerall = command = "rock_c"
trigger1 = var(1) ;Use combo condition (above)
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59) <= 0
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

;---------------------------------------------------------------------------
;Sorbetina

[State -1, Ice baby]
type = ChangeState
value = 300
triggerall = var(59) <= 0
triggerall = command = "QCF_c"
trigger1 = var(1) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;---------------------------------------------------------------------------
;Stand Strongest Punch
;
[State -1, Stand Strongest Punch]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Standing Strongest Kick
;
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
;Crouching Strong Punch2

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
;Crouching Strong Kick2

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Punch2
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Kick2
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

