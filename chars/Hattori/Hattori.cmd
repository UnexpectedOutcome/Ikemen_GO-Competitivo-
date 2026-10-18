;--------------------------------------------------------------------------
;-| Hyper Motions |------------------------------------------------------
;--------------------------------------------------------------------------

[Command]
name = "Ninjutsu";Required (do not remove)
command = ~D, F, D, F, s
time = 20

;--------------------------------------------------------------------------
;-| Super Motions |------------------------------------------------------
;--------------------------------------------------------------------------

[Command]
name = "Shuriken";Required (do not remove)
command = ~D, F, D, F, z
time = 20

[Command]
name = "Shadow Fang";Required (do not remove)
command = ~D, F, D, F, y
time = 20

[Command]
name = "Assault";Required (do not remove)
command = ~D, F, D, F, x
time = 20


;--------------------------------------------------------------------------
;-| Special Motions |------------------------------------------------------
;--------------------------------------------------------------------------

[Command]
name = "Mini Shuriken";Required (do not remove)
command = ~D, B, x
time = 20

[Command]
name = "Mini Shuriken";Required (do not remove)
command = ~D, B, y
time = 20

[Command]
name = "Mini Shuriken";Required (do not remove)
command = ~D, B, z
time = 20

;--------------------------------------------------------------------------
;-| Double Tap |-----------------------------------------------------------
;--------------------------------------------------------------------------
;
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10


[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

;Utsusemi Chizan (SNK layout)
[Command]
name = "yab"
command = a+b+y
time = 1

;Utsusemi Chizan (Capcom layout)
[Command]
name = "yc"
command = y+c
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_xy"
command = /F,x+y
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "df_x"
command = /DF,x
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

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
name = "down_xy"
command = /$D,x+y
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
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
name = "holdup";Required (do not remove)
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
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, )
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

;---------------------------------------------------------------------------
; Ninjutsu
[State -1, Ninjutsu]
type = ChangeState
value = 1500
triggerall = var(59) <= 0
triggerall = power > 1500
trigger1 = command = "Ninjutsu"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Shadow Fang
[State -1, Shadow Fang]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = power > 500
trigger1 = command = "Shadow Fang"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Shuriken
[State -1, Shuriken]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = power > 500
trigger1 = command = "Shuriken"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Assault
[State -1, Assault]
type = ChangeState
value = 810
triggerall = var(59) <= 0
triggerall = power > 500
trigger1 = command = "Assault"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Mini Shuriken
[State -1, Mini Shuriken]
type = ChangeState
value = 800
triggerall = var(59) <= 0
trigger1 = command = "Mini Shuriken"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1, RunFwd]
type = ChangeState
value = 100
triggerall = var(59) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1, RunBack]
type = ChangeState
value = 105
triggerall = var(59) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------------------------------------------



;-----------------------------------------------------------------------
; Stand Hit
[State -1, Stand Hit]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------------------------------------------
;Crouch Hit
[State -1, Crouch Hit]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x";Place name of command here
triggerall = command = "holddown";Crouching moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Hit
[State -1, Jump Hit]
type = ChangeState
value = 600
triggerall = var(59) <= 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1


;-------[ AI ]--------------------------------------------------------------

[State -1, AI]
type = VarSet
triggerall = var(59) != 1
trigger1 = AILevel > 0
v = 59
value = 1

[State -1, AI]
type = changestate
triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = statetype = S
triggerall = stateno = 100
triggerall = p2statetype = S || p2statetype = A
triggerall = random < 999
;triggerall = random < 800
trigger1 = (p2bodydist X = [-45,300]) && (p2movetype = A)
trigger2 = (inguarddist) && (p2movetype != H)
trigger2 = enemynear,numproj >= 1
value = 130;130

[State -1, AI]
type = changestate
triggerall = roundstate = 2
triggerall = var(59) != 0
triggerall = statetype = C
triggerall = stateno = 100
triggerall = p2statetype = C
triggerall = random < 999
;triggerall = random < 800
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-45,300]
trigger2 = (inguarddist) && (enemynear,numproj >= 1)
trigger2 = p2movetype != H
value = 131;131

[State -1, AI]
type = ChangeState
value = 100
triggerall = var(59) != 0
triggerall = roundstate = 2
triggerall = (p2movetype != A) || (enemynear,numproj = 0) || (Enemynear,Ishelper= 0); || (!Inguarddist)
triggerall = statetype != A
triggerall = ctrl && stateno != 100
trigger1 = p2bodydist X >= 15 && random = [0,350]
;ctrl = 1

[State -1, AI]
type = ChangeState
value = ifelse(p2statetype=C,131,130)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = stateno = 100
;triggerall = stateno != 0
;triggerall = p2bodydist X < 255
trigger1 = p2movetype = A && p2bodydist X < 295  || (enemynear,numproj > 0) || (Enemynear,Ishelper> 0); || (!Inguarddist)
;trigger2 = Roundstate = 3
;trigger3 = p2bodydist X < 0
;ctrl = 1

[State -1, AI]
type = ChangeState
value = 0
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = stateno = 100
;triggerall = stateno != 0
;triggerall = p2bodydist X < 255
;trigger1 = p2movetype = A && p2bodydist X < 255  || (enemynear,numproj > 0) || (Enemynear,Ishelper> 0); || (!Inguarddist)
trigger1 = Roundstate = 3
trigger2 = p2bodydist X < -10
ctrl = 1

[State -1, AI]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = p2bodydist X <= 150
trigger1 = p2stateno = 5120

[State -1, AI]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = power > 500

[State -1, AI]
type = ChangeState
value = 810
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = power >= 3000
trigger1 = p2statetype = S || p2statetype = C
trigger1 = ctrl || stateno = 100
trigger1 = (p2bodydist X = [-105,80])
trigger1 = p2movetype != A

[State -1, AI]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 811
trigger1 = movecontact
trigger1 = time = 12

[State -1, AI]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 1200
trigger1 = movecontact
trigger1 = time = 20

[State -1, AI]
type = ChangeState
value = 1500
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 1000
trigger1 = time = 21

[State -1, AI]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = p2statetype = S || p2statetype = C
trigger1 = ctrl || stateno = 100
trigger1 = (p2bodydist X = [-26,46])
trigger1 = p2movetype != A

[State -1, AI]
type = ChangeState
value = 201
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact

[State -1, AI]
type = ChangeState
value = 202
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 201 && movecontact

[State -1, AI]
type = ChangeState
value = 203
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 202 && movecontact


