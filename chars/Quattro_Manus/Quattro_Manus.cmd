; The CMD file.


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

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
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

[Command]
name = "F";Required (do not remove)
command = $F
time = 1

[Command]
name = "B";Required (do not remove)
command = $B
time = 1

[Command]
name = "U" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "D";Required (do not remove)
command = $D
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

;Phase 1

[State 0, Grab Left]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)>1
triggerall = command = "y"
triggerall = ctrl
trigger1 = IFelse(facing = -1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = 1, command = "holdback", command = "holdfwd")
value = 600

[State 0, Grab Right]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)>1
triggerall = command = "y"
triggerall = ctrl
trigger1 = IFelse(facing = 1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = -1, command = "holdback", command = "holdfwd")
value = 610

[State 0, Grab]
type = ChangeState
triggerall = Var(59) < 1
trigger1 = var(10)>1
triggerall = command = "y"
trigger1 = ctrl
value = Ifelse(random%2=0,600,610)

[State 0, AI Grab]
type = ChangeState
triggerall = Var(59) > 0
trigger1 = var(10)>1
triggerall = random < var(58) * 0.5
triggerall = P2Statetype != L
triggerall = P2bodydist X = [-350,350]
triggerall = P2bodydist Y = [-600,50]
trigger1 = ctrl
value = Ifelse(P2dist X>=0,600,610)

[State 0, Laser]
type = ChangeState
triggerall = Var(59) < 1
trigger1 = var(10)!=1
trigger1 = command = "c"
trigger1 = ctrl
value = 230

[State 0, 2 Laser]
type = ChangeState
triggerall = Var(59) < 1
trigger1 = var(10)!=1
trigger1 = command = "b"
trigger1 = ctrl
value = 240

[State 0, AI Laser]
type = ChangeState
triggerall = Var(59) > 0
trigger1 = var(10)!=1
trigger1 = random < var(58) * 0.2
trigger1 = ctrl
value = IFelse(random%2=0,240,230)


[State 0, Slam Left]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)>1
triggerall = command = "z"
triggerall = ctrl
trigger1 = IFelse(facing = -1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = 1, command = "holdback", command = "holdfwd")
value = 650

[State 0, Slam Right]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)>1
triggerall = command = "z"
triggerall = ctrl
trigger1 = IFelse(facing = 1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = -1, command = "holdback", command = "holdfwd")
value = 660


[State 0, Slam]
type = ChangeState
triggerall = Var(59) < 1
trigger1 = var(10)>1
triggerall = command = "z"
trigger1 = ctrl
value = Ifelse(random%2=0,650,660)

[State 0, AI Slam]
type = ChangeState
triggerall = Var(59) > 0
trigger1 = var(10)>1
triggerall = random < var(58) * 0.4
triggerall = P2bodydist X = [-400,400]
trigger1 = ctrl
value = Ifelse(P2dist X >= 0,650,660)


[State 0, Placing Trap Both]
type = ChangeState
triggerall = Var(59) < 1
trigger1 = var(10)!=1
triggerall = command = "x"
triggerall = (command = "holdfwd" && command = "holdback")
trigger1 = ctrl
value = 220

[State 0, Placing Trap Left]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)!=1
triggerall = command = "x"
triggerall = ctrl
trigger1 = IFelse(facing = -1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = 1, command = "holdback", command = "holdfwd")
value = 200

[State 0, Placing Trap Right]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)!=1
triggerall = command = "x"
triggerall = ctrl
trigger1 = IFelse(facing = 1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = -1, command = "holdback", command = "holdfwd")
value = 210

[State 0, Placing Trap]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)!=1
triggerall = command = "x"
trigger1 = ctrl
value = 200+(random%3*10)

[State 0, AI Placing Trap]
type = ChangeState
triggerall = Var(59) > 0
trigger1 = var(10)!=1
trigger1 = random < var(58) * 0.6
trigger1 = ctrl
value = Ifelse(random<500,IFelse(P2dist X >= 0, 200, 210),220)      ;Ifelse(random<330,200,Ifelse(random>660,210,220))

;Phase 2

[State 0, Punch Left]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)=1
triggerall = ctrl
triggerall = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger1 = IFelse(facing = -1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = 1, command = "holdback", command = "holdfwd")
value = 400

[State 0, Punch Right]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)=1
triggerall = ctrl
triggerall = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger1 = IFelse(facing = 1, command = "holdfwd", command = "holdback")
trigger2 = IFelse(facing = -1, command = "holdback", command = "holdfwd")
value = 410

[State 0, Punch]
type = ChangeState
triggerall = Var(59) < 1
triggerall = var(10)=1
triggerall = ctrl
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
value = Ifelse(random%2=0,400,410)


[State 0, AI Punch]
type = ChangeState
triggerall = Var(59) > 0
triggerall = var(10)=1
triggerall = ctrl
trigger1 = random < var(58) * 0.6
value = IFelse(P2dist X >= 0, 400, 410)


[State 0, AI Activated]
type = VarSet
trigger1 = AILevel
trigger1 = Roundstate = 2
v = 59
value = 1

[State 0, AI Deactivated]
type = VarSet
trigger1 = !AILevel
trigger2 = Roundstate != 2
v = 59
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 58
value = (AILevel = [1,2])*10 + (AILevel = [3,5])*20 + (AILevel = [6,8])*30 
