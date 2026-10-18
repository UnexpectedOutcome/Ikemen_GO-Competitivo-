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
command.time = 18;21;120

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 10;8

;-| Super Motions |--------------------------------------------------------

[Command]
name = "2626c"
command = ~D,DF,F,D,DF,F,c
time = 36

[Command]
name = "6426c"
command = ~F,B,D,DF,F,c
time = 32

[Command]
name = "6426c"
command = ~F,B,DB,D,DF,c
time = 32

[Command]
name = "6426c"
command = ~F,B,D,F,c
time = 32

[Command]
name = "26e"
command = ~D,DF,F,y
time = 18

[Command]
name = "Meta"
command = z
time = 1

[Command]
name = "Meta"
command = a+b+c
time = 1
;-| Special Motions |------------------------------------------------------
[Command]
name = "22a+b"
command = ~D, D, a+b
time = 15

[Command]
name = "24a+b"
command = ~D, DB, B, a+b
time = 18

[Command]
name = "24c"
command = ~D, DB, B, c
time = 18

[Command]
name = "24b"
command = ~D, DB, B, b
time = 18

[Command]
name = "24a"
command = ~D, DB, B, a
time = 18

[Command]
name = "426a+b"
command = ~B,DB,D,F,a+b
time = 21

[Command]
name = "426a"
command = ~B,DB,D,F,a
time = 21

[Command]
name = "426b"
command = ~B,DB,D,F,b
time = 21

[Command]
name = "426c"
command = ~B,DB,D,F,c
time = 21

[Command]
name = "26a+b"
command = ~D, DF, F, a+b
time = 18

[Command]
name = "26a"
command = ~D, DF, F, a
time = 18

[Command]
name = "26b"
command = ~D, DF, F, b
time = 18

[Command]
name = "26c"
command = ~D, DF, F, c
time = 18
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10
buffer.time = 2

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
buffer.time = 2

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "Recovery"
command = s,s,s,s,s,s,s,s,s,s,s
time = 1

[Command]
name = "Recovery S"
command = s
time = 1

[Command]
name = "Recovery S"
command = x
time = 1

[Command]
name = "Recovery S"
command = y
time = 1

[Command]
name = "Recovery S"
command = a
time = 1

[Command]
name = "BC"
command = b+c
time = 1
buffer.time = 2

[Command]
name = "ab"
command = a+b
time = 1
buffer.time = 2
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
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
buffer.time = 1

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
;   - var(24)
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
[State -1]
type = ChangeState
value = 7600
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "6426c" && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7600
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "6426c" && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2000
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "2626c" && statetype != A && var(18) >= 2000
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2000
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "2626c" && statetype != A && var(18) >= 2000
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1575
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "22a+b" && statetype != A && var(18) >= 1000 
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1575
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "22a+b" && statetype != A && var(18) >= 1000 
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1475
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a+b" && statetype = A && var(18) >= 1000 
triggerall = prevstateno != [1400,1475]
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1475
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a+b" && statetype = A && var(18) >= 1000 
triggerall = prevstateno != [1400,1475]
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = stateno = 600
trigger3 = stateno = 605
trigger4 = stateno = 610
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615
trigger5 = AnimElem = 9, < 0
trigger6 = stateno = 620
trigger7 = stateno = 625
trigger8 = stateno = 630
trigger9 = stateno = 7100
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1450
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426c" && statetype = A
triggerall = prevstateno != [1400,1475]
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1450
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426c" && statetype = A
triggerall = prevstateno != [1400,1475]
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = stateno = 600
trigger3 = stateno = 605
trigger4 = stateno = 610
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615
trigger5 = AnimElem = 9, < 0
trigger6 = stateno = 620
trigger7 = stateno = 625
trigger8 = stateno = 630
trigger9 = stateno = 7100
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1425
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426b" && statetype = A
triggerall = prevstateno != [1400,1475]
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1425
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426b" && statetype = A
triggerall = prevstateno != [1400,1475]
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = stateno = 600
trigger3 = stateno = 605
trigger4 = stateno = 610
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615
trigger5 = AnimElem = 9, < 0
trigger6 = stateno = 620
trigger6 = AnimElem = 9, < 0
trigger7 = stateno = 625
trigger7 = AnimElem = 10, < 0
trigger8 = stateno = 630
trigger9 = stateno = 7100
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1400
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a" && statetype = A
triggerall = prevstateno != [1400,1475]
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1400
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a" && statetype = A
triggerall = prevstateno != [1400,1475]
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = stateno = 600
trigger3 = stateno = 605
trigger4 = stateno = 610
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615
trigger5 = AnimElem = 9, < 0
trigger6 = stateno = 620
trigger6 = AnimElem = 9, < 0
trigger7 = stateno = 625
trigger7 = AnimElem = 10, < 0
trigger8 = stateno = 630
trigger9 = stateno = 7100
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a+b" && statetype != A && var(18) >= 1000
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a+b" && statetype != A && var(18) >= 1000
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1350
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426c" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1350
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426c" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1325
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426b" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1325
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426b" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "426a" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1275
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24a+b" && statetype != A && var(18) >= 1000 ;&& NumHelper > 0 
triggerall = numhelper(7780) = 0 && numhelper(7781) = 0
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1275
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24a+b" && statetype != A && var(18) >= 1000 ;&& NumHelper > 0 
triggerall = numhelper(7780) = 0 && numhelper(7781) = 0
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24c" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24c" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1225
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24b" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1225
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24b" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1200
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24a" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1200
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "24a" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26a+b" && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26a+b" && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26c" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26c" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1025
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26b" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1025
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26b" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && (command = "26a" || command = "26b" || command = "26c") && statetype != A
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && (command = "26a" || command = "26b" || command = "26c") && statetype != A
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1000
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26a" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1000
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26a" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 800
triggerall = AIlevel = 0 && roundstate = 2 && command = "BC" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
;===========================================================================
[State -1]
type = ChangeState
value = 600
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && sysvar(1) = 0

[State -1]
type = ChangeState
value = 605
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) != 0

[State -1]
type = ChangeState
value = 610
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && sysvar(1) = 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 610
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && statetype = A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && sysvar(1) = 0
trigger2 = stateno = 600
trigger3 = stateno = 620
trigger3 = prevstateno != 610
ignorehitpause = 1

[State -1]
type = ChangeState
value = 615
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) != 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 615
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && statetype = A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) != 0
trigger2 = stateno = 605
trigger3 = stateno = 625
trigger3 = prevstateno != 615
ignorehitpause = 1


[State -1]
type = ChangeState
value = 630
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && command = "holddown" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 630
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && command = "holddown" && statetype = A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1))
trigger2 = stateno = 600 
trigger3 = stateno = 605 
trigger4 = stateno = 610 
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615 
trigger5 = AnimElem = 9, < 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 620
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && sysvar(1) = 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 620
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && statetype = A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && sysvar(1) = 0
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger3 = prevstateno != 620
trigger3 = AnimElem = 7, < 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 625
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) != 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 625
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && statetype = A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) != 0
trigger2 = stateno = 605
trigger3 = stateno = 615
trigger3 = prevstateno != 625
trigger3 = AnimElem = 9, < 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command = "holddown" && statetype != A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205 
trigger4 = stateno = 400
ignorehitpause = 1

[State -1]
type = ChangeState
value = IfElse(P2Dist X < 120,205,200)
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = IfElse(P2Dist X < 120,205,200)
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command != "holddown" && statetype != A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 400
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holddown" && statetype != A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205 
trigger4 = stateno = 210 
trigger4 = prevstateno != 410
trigger5 = stateno = 215
trigger5 = prevstateno != 410
trigger6 = stateno = 400 
ignorehitpause = 1

[State -1]
type = ChangeState
value = IfElse(P2Dist X < 120,215,210)
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = IfElse(P2Dist X < 120,215,210)
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command != "holddown" && statetype != A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger5 = prevstateno != [210,215]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && command = "holddown" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200 
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215 
trigger6 = stateno = 400
trigger7 = stateno = 410 
trigger8 = stateno = 225
trigger9 = stateno = 220 && var(29)
ignorehitpause = 1

[State -1]
type = ChangeState
value = IfElse(P2Dist X < 120,225,220)
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = IfElse(P2Dist X < 120,225,220)
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "c" && command != "holddown" && statetype != A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400 
trigger7 = stateno = 410
trigger8 = stateno = 420 && var(29)
ignorehitpause = 1

;===========================================================================

[State -1]
type = ChangeState
value = 7400
triggerall = !var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "26e" && power >= 2000 && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
trigger1 = fVar(7) >= 1

[State -1]
type = ChangeState
value = 800
triggerall = AIlevel = 0 && roundstate = 2 && command = "BC" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 7600
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "Meta" && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7600
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "Meta" && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = var(50)
trigger1 = !numexplod(2002)
trigger1 = command = "hold_a"
anim = 9999
ID = 2001
pos = 0,0
removetime = 40
pausemovetime = 999999
supermovetime = 999999
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = var(50)
trigger1 = !numexplod(2002)
trigger1 = command = "hold_a"
anim = 9999
ID = 2002
pos = 0,0
removetime = -1
pausemovetime = 999999
supermovetime = 999999
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = var(50)
triggerall = numexplod(2001)
trigger1 = command != "hold_a"
id = 2001

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = var(50)
triggerall = numexplod(2002)
trigger1 = command != "hold_a"
id = 2002

[State -1]
type = ChangeState
value = 2000
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "hold_a" && statetype != A && var(18) >= 2000
triggerall = !numexplod(2001)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2000
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "hold_a" && statetype != A && var(18) >= 2000
triggerall = !numexplod(2001)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1575
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command != "holddown" && command = "holdfwd"  &&  statetype != A && var(18) >= 1000 
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1575
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command != "holddown" && command = "holdfwd"  && statetype != A && var(18) >= 1000
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1475
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && statetype = A && var(18) >= 1000
triggerall = prevstateno != [1400,1475]
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1475
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && statetype = A && var(18) >= 1000
triggerall = prevstateno != [1400,1475]
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = stateno = 600
trigger3 = stateno = 605
trigger4 = stateno = 610
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615
trigger5 = AnimElem = 9, < 0
trigger6 = stateno = 620
trigger6 = AnimElem = 9, < 0
trigger7 = stateno = 625
trigger7 = AnimElem = 10, < 0
trigger8 = stateno = 630
trigger9 = stateno = 7100
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1425+25*command="holdfwd"-25*command="holdback"
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && statetype = A
triggerall = prevstateno != [1400,1475]
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1425+25*command="holdfwd"-25*command="holdback"
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && statetype = A
triggerall = prevstateno != [1400,1475]
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = stateno = 600
trigger3 = stateno = 605
trigger4 = stateno = 610
trigger4 = AnimElem = 7, < 0
trigger5 = stateno = 615
trigger5 = AnimElem = 9, < 0
trigger6 = stateno = 620
trigger6 = AnimElem = 9, < 0
trigger7 = stateno = 625
trigger7 = AnimElem = 10, < 0
trigger8 = stateno = 630
trigger9 = stateno = 7100
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command != "holddown" && command != "holdfwd"  && command != "holdback" &&  statetype != A && var(18) >= 1000 
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command != "holddown" && command != "holdfwd"  && statetype != A && var(18) >= 1000
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1350
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command != "holddown" && command = "holdfwd"  && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1350
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command != "holddown" && command = "holdfwd" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command != "holddown" && command != "holdback"  && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command != "holddown" && command != "holdback" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1275
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command = "holdback" && statetype != A && var(18) >= 1000 
triggerall = numhelper(7780) = 0 && numhelper(7781) = 0
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1275
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command = "holdback" && statetype != A && var(18) >= 1000
triggerall = numhelper(7780) = 0 && numhelper(7781) = 0
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holdback" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holdback" && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command = "holddown" && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "ab" && command = "holddown" && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holddown" && statetype != A
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holddown" && statetype != A
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holddown" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "b" && command = "holddown" && statetype != A
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 620
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype = A
triggerall  =var(24) || (var(29)&&stateno!=7400)
trigger1 = stateno = 610
trigger1 = AnimElem = 7, < 0
trigger2 = stateno = 615
trigger2 = AnimElem = 9, < 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 630
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command = "holddown" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1))

[State -1]
type = ChangeState
value = 615
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) != 0

[State -1]
type = ChangeState
value = 610
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && sysvar(1) = 0

[State -1]
type = ChangeState
value = 1300
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = stateno = 220
trigger1 = prevstateno = 210
trigger2 = stateno = 420
trigger2 = prevstateno = 410
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = stateno = 410
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = stateno = 400
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command = "holddown" && command = "holdfwd" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command = "holddown" && command != "holdfwd" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 220
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = stateno = 210
ignorehitpause = 1

[State -1]
type = ChangeState
value = 210
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
trigger1 = stateno = 200 
ignorehitpause = 1

[State -1]
type = ChangeState
value = 220
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command != "holddown" && command = "holdback" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 200
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "a" && command != "holddown" && command != "holdback" && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7400
triggerall = var(50)
triggerall = AIlevel = 0 && roundstate = 2 && command = "y" && command = "holdfwd" && power >= 2000 && statetype != A
trigger1 = (ctrl || (stateno = [100,101]) )
trigger1 = fVar(7) >= 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 7500
triggerall = fvar(10) >= 0.5
triggerall = AIlevel = 0 && roundstate = 2 && command = "Meta" && var(18) >= 1000 && statetype != A
triggerall = Var(39) = 0 
trigger1 = (ctrl || (stateno = [100,101]) )
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7500
triggerall = fvar(10) >= 0.5
triggerall = AIlevel = 0 && roundstate = 2 && command = "Meta" && var(18) >= 1000 && statetype != A
triggerall = Var(39) = 0
triggerall  = (var(24) &&hitpausetime)
trigger1 = (ctrl || (stateno = [100,101]) )
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 220
trigger9 = stateno = 225
trigger10 = stateno = 420 
ignorehitpause = 1

[State -1]
type = ChangeState
value = 40
triggerall = AIlevel = 0 && roundstate = 2 && command = "holdup" && statetype != A && p2statetype = A
trigger1 = stateno = 200
trigger2 = stateno = 205 
trigger3 = stateno = 210
trigger4 = stateno = 211 
trigger5 = stateno = 215
trigger6 = stateno = 216
trigger7 = stateno = 225 

[State -1]
type = ChangeState
value = 40
triggerall = AIlevel = 0 && roundstate = 2 && command = "holdup"
trigger1 = (stateno = [100,101]) 
trigger2 = statetype != A
trigger2 = var(29)
ignorehitpause = 1

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = AIlevel = 0 && roundstate = 2 && command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(24) && stateno = 225 && hitpausetime
trigger2 = fVar(7) >= 1
trigger2 = var(30):=9303
trigger3 = var(29)
trigger3 = hitpausetime 
ignorehitpause = 1

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = AIlevel = 0 && roundstate = 2 && command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 101 || stateno = 106
ctrl = 0

[State -1]
type = ChangeState
value = 195
triggerall = AIlevel = 0 && roundstate = 2 && command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 7300
triggerall = AIlevel = 0 && roundstate = 2 && command = "y" && power >= 2000 && alive
triggerall = stateno = 5000 || stateno = 5010
triggerall = !hitshakeover
triggerall = MoveType = H && HitFall = 0
triggerall = EnemyNear,HitDefAttr = SCA,NA,SA || ((EnemyNear,movehit||Enemynear,hitpausetime) && p2stateno < 2000)
triggerall = fVar(7) >= 1
trigger1 = StateType = S
trigger2 = StateType = C
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7100
triggerall = AIlevel = 0 && roundstate = 2 && command = "y" && fVar(7) >= 1
triggerall  =var(24) || (var(29)&&stateno!=7400)
triggerall = hitpausetime
triggerall = !var(30)
trigger1 = statetype != A
trigger1 = stateno = [200,420]
trigger1 = var(30):=9301
ignorehitpause = 1

[State -1, Helper]
type = Helper 
triggerall = NumHelper(7205) = 0 & NumHelper(7206) = 0
triggerall = AIlevel = 0 & command = "y" & fVar(7) >= 1 & Power >= 1000 & command != "holdfwd"
triggerall = EnemyNear,hitpausetime
triggerall = EnemyNear,stateno < 2000 && EnemyNear,stateno%100 != 75
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch"
ID = 7205
stateno = 7205
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

[State -1, Helper]
type = Helper 
triggerall = NumHelper(7205) = 0 & NumHelper(7206) = 0
triggerall = AIlevel = 0 & command = "y" & fVar(7) >= 1 & Power >= 1000 & command = "holdfwd"
triggerall = EnemyNear,hitpausetime
triggerall = EnemyNear,stateno < 2000 && EnemyNear,stateno%100 != 75
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch"
ID = 7206
stateno = 7205
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7000
triggerall = AIlevel = 0 && roundstate = 2 && command = "y" && statetype != A
trigger1 = ctrl || (stateno = 100)
trigger1 = fVar(7) >= 1





;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;AI
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State 0, VarSet]
type = VarSet
trigger1 = time = 1
v = 57
value = random
ignorehitpause = 1

[State -1, AssertSpecial]
type = AssertSpecial
Trigger1 =  AILevel
flag = nowalk

[State 0, VarSet]
type = VarSet
trigger1 = AIlevel
v = 4
value = 0
ignorehitpause = 1

[State -1, Null]
type = Null
triggerall = !ishelper
triggerall = var(49):=0 || 1
triggerall = p2movetype = H
trigger1 = p2stateno= 150 || p2stateno= 152 || p2stateno= 154
trigger1 = var(49):=Enemy,gethitvar(ctrltime)
trigger2 = p2stateno= 151 || p2stateno= 153 || p2stateno= 155
trigger2 = var(49):=Enemy,gethitvar(ctrltime)-Enemy,time
trigger3 = p2statetype = S || p2statetype = C
trigger3 = p2stateno=[5000,5099]
trigger3 = var(49):=Enemy,gethitvar(hittime)+1
ignorehitpause = 1

[State -1, VarSet];
type = varset
triggerall = AIlevel && roundstate = 2 && !ishelper
Triggerall= var(53)
Trigger1 = Enemy,time <= 1 && p2movetype = A
trigger2 = 0;Enemy,hitdefattr = SCA,AA,AP,AT
trigger3 = (p2movetype = I || Enemy,numhelper > helper(9190),var(0)) && inguarddist
v = 53
value = 0

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = !Enemy,ctrl && p2stateno != 100
triggerall = ctrl
triggerall = Enemy,AnimTime - var(56) < -7
trigger1 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 7 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger1 = p2bodydist X <= 138.5 + facing*Enemy,facing*Enemy,vel X*(7-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 168.5+Enemy,const(size.ground.back))
trigger2 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 8 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger2 = Enemy,AnimTime - var(56) < -8
trigger2 = p2bodydist X <= 146.25 + facing*Enemy,facing*Enemy,vel X*(8-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 176.25+Enemy,const(size.ground.back))

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = !Enemy,ctrl && p2stateno != 100
triggerall = ctrl
triggerall = Enemy,AnimTime - var(56) < -10
trigger1 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 10 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger1 = p2bodydist X <= 218.5 + facing*Enemy,facing*Enemy,vel X*(9-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 248.5+Enemy,const(size.ground.back))
trigger2 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 11 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger2 = Enemy,AnimTime - var(56) < -11
trigger2 = p2bodydist X <= 226.25 + facing*Enemy,facing*Enemy,vel X*(10-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 256.25+Enemy,const(size.ground.back))
trigger3 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 12 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger3 = Enemy,AnimTime - var(56) < -12
trigger3 = p2bodydist X <= 230.5 + facing*Enemy,facing*Enemy,vel X*(11-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 260.5+Enemy,const(size.ground.back))
trigger4 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 13 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger4 = Enemy,AnimTime - var(56) < -13
trigger4 = p2bodydist X <= 239.2 + facing*Enemy,facing*Enemy,vel X*(12-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 269.2+Enemy,const(size.ground.back))
trigger5 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 14 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger5 = Enemy,AnimTime - var(56) < -14
trigger5 = p2bodydist X <= 248.4 + facing*Enemy,facing*Enemy,vel X*(13-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 278.4+Enemy,const(size.ground.back))
trigger6 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 15 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger6 = Enemy,AnimTime - var(56) < -15
trigger6 = p2bodydist X <= 258.4 + facing*Enemy,facing*Enemy,vel X*(14-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 288.4+Enemy,const(size.ground.back))
trigger7 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 16 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger7 = Enemy,AnimTime - var(56) < -16
trigger7 = p2bodydist X <= 268.3 + facing*Enemy,facing*Enemy,vel X*(15-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 298.3+Enemy,const(size.ground.back))
trigger8 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 17 && p2stateno < 1999) || var(53) = 1|| p2movetype = I
trigger8 = Enemy,AnimTime - var(56) < -17
trigger8 = p2bodydist X <= 307 + facing*Enemy,facing*Enemy,vel X*(16-var(56)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 337+Enemy,const(size.ground.back))
trigger9 = facing*Enemy,facing*Enemy,vel X < 9
trigger9 =  p2bodydist X > 307 + facing*Enemy,facing*Enemy,vel X*(16-var(56))
trigger9 = Enemy,AnimTime - var(56) < -17+ ceil(p2bodydist X - 307 - facing*Enemy,facing*Enemy,vel X*(16)/(facing*Enemy,facing*Enemy,vel X-9))
trigger9 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 17-ceil((p2bodydist X - 307 - facing*Enemy,facing*Enemy,vel X*(16)/(facing*Enemy,facing*Enemy,vel X-9)) && p2stateno < 1999) || var(53) = 1|| p2movetype = I)
trigger10 =  ceil(helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X) > 337
trigger10 = Enemy,AnimTime - var(56) < -17- ceil((helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - 337- Enemy,const(size.ground.back))/9)
trigger10 = (helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) > 17+ceil((helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - 337- Enemy,const(size.ground.back))/9) && p2stateno < 1999) || var(53) = 1|| p2movetype = I
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = !Enemy,ctrl && p2stateno != 100
triggerall = ctrl || (stateno = [100,101])  
triggerall = (Enemy,AnimTime - var(56) = [-9,-5]) || (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) = [4,8])
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time > 6) || var(53) = 1|| p2movetype = I
trigger1 = p2bodydist X <= 110 + facing*Enemy,facing*Enemy,vel X*5 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 140+Enemy,const(size.ground.back))
trigger2 = stateno = [100,101]
trigger2 = p2bodydist X <= 110 + facing*Enemy,facing*Enemy,vel X*5 + floor(vel X /-fvar(20))*vel X/2 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 140+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H 
triggerall = !Enemy,ctrl || (p2bodydist X > 170)
triggerall = ctrl || (stateno = [100,101])  
triggerall = (Enemy,AnimTime - var(56) = [-11, -9 + 3*(p2bodydist X > 100)]) || (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) = [7,11])
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time >= 9) || var(53) = 1 || p2movetype = I
trigger1 = p2bodydist X <= 190 + facing*Enemy,facing*Enemy,vel X*8 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 220+Enemy,const(size.ground.back))
trigger2 = stateno = [100,101]
trigger2 = p2bodydist X <= 190 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 220+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 210
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = !Enemy,ctrl || (p2bodydist X > 200)
triggerall = ctrl || (stateno = [100,101])  
triggerall = (Enemy,AnimTime - var(56) = [-11, -9 + 3*(p2bodydist X > 100)])  || (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) = [7,11])
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time >= 9) || var(53) = 1|| p2movetype = I
trigger1 = p2bodydist X <= 200 + facing*Enemy,facing*Enemy,vel X*8 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 230+Enemy,const(size.ground.back))
trigger2 = stateno = [100,101]
trigger2 = p2bodydist X <= 200 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 230+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 215
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X = [0,120)
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = !Enemy,ctrl || (p2bodydist X > 200)
triggerall = ctrl || (stateno = [100,101])  
triggerall = (Enemy,AnimTime - var(56) = [-11, -9]) || (p2bodydist X < 50 && Enemy,AnimTime - var(56)  <= -11) || (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time + var(56) = [9,11])
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time >= 9) || var(53) = 1|| p2movetype = I
trigger1 = p2bodydist X <= 100 + facing*Enemy,facing*Enemy,vel X*8 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 130+Enemy,const(size.ground.back))
trigger2 = stateno = [100,101]
trigger2 = p2bodydist X <= 100 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 130+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 800
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X = [0,145]
triggerall = !var(48)
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
triggerall = !Enemy,ctrl || !Enemy,AIlevel || teamside = 2 || !!(var(57)%3)
triggerall = p2stateno < 2000 || Enemy,AnimTime > -7 || var(53)
triggerall = p2movetype != A || Enemy,AnimTime > -7 || helper(9190),var(1) = -1 ||  (helper(9190),var(1) - Enemy,time < 6 && !var(53))
trigger1 = ctrl || (stateno = [100,101]) 
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7500
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = fvar(10) >= 0.5
triggerall = var(18) >= 1000
triggerall = Var(39) = 0
triggerall = p2movetype = A
triggerall = Enemy,time > 1
triggerall = (stateno = [100,101]) 
triggerall = inguarddist
triggerall = helper(9190),var(2) != 2
trigger1 = helper(9190),var(1) = -1
trigger2 = helper(9190),var(1) - Enemy,time < 9
trigger2 = !var(53)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(8020)  = 1
triggerall =  helper(8020),stateno = 8020
triggerall = helper(8020),numexplod(1015)
triggerall = ctrl || stateno = [100,101]
triggerall = Enemy,AnimTime < -15
triggerall = p2bodydist X > 400
triggerall = Enemy,time <= 1
triggerall = p2movetype = A && (p2statetype = S || p2statetype = C) 
trigger1 = Enemy,facing = 1
trigger1 = Enemy,pos X + Enemy,facing*Enemy,vel X*15 - helper(8020),pos X = [-62 - Enemy,const(size.ground.back),92 + Enemy,const(size.ground.front)]
trigger2 = Enemy,facing = -1
trigger2 = Enemy,pos X + Enemy,facing*Enemy,vel X*15 - helper(8020),pos X = [-62 - Enemy,const(size.ground.front),92 + Enemy,const(size.ground.back)]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2bodydist X >= 350
triggerall = p2movetype = A
triggerall = (stateno = [100,101]) 
trigger1 = !inguarddist
trigger2 = helper(9190),var(2) = 1
ignorehitpause = 1

[State -1, jump]
type = ChangeState
value = 40
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist X > 150
triggerall = backedgebodydist < 50
triggerall = p2movetype = A
triggerall = (stateno = [100,101]) 
triggerall = var(57)%2
trigger1 = var(4):= 3
ctrl = 0

[State -1]
type = ChangeState
value = 1475
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = p2dist Y > 100
triggerall = Enemy,AnimTime < -25
triggerall = p2bodydist X >= 250
triggerall = var(57)%3 = 1
trigger1 = ctrl  || stateno = [100,101]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1425 + 25*(p2bodydist X > 350)
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2movetype = A || (p2movetype = I  && !Enemy,ctrl)
triggerall = p2stateno != 100
triggerall = p2dist Y > 180
triggerall = p2bodydist X >= 250
triggerall = var(57)%2 <= 1
trigger1 = ctrl  || stateno = [100,101]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1350
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2movetype = A || (p2movetype = I  && !Enemy,ctrl)
triggerall = p2stateno != 100
triggerall = p2dist Y > -250
triggerall = p2bodydist X >= 700
triggerall = var(57)%2 <= 1
trigger1 = ctrl  || stateno = [100,101]
ignorehitpause = 1
[State -1]
type = ChangeState
value = 7600
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
triggerall = p2movetype = A && (p2statetype = S || p2statetype = C)
triggerall = ctrl || (stateno = [100,101]) 
trigger1 = Enemy,AnimTime < -25
trigger1 = var(56)
trigger2 = p2bodydist X > 400
trigger2 = prevstateno != 5120
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2movetype = A && p2statetype = S || p2statetype = C 
triggerall = Enemy,AnimTime < -23
triggerall = ctrl || stateno = [100,101]
trigger1 = p2bodydist X > 400
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[State -1, Guard]
type = VarSet
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = var(59):= 0 || 1
triggerall = p2statetype != C || helper(9190),var(11) = 2 || helper(9190),var(11) = 4
triggerall = !var(53)
triggerall = helper(9190),var(2) != 2 || Enemy,numproj || Enemy,numhelper > helper(9190),var(0) 
trigger1 = inguarddist || (p2statetype = A && (p2dist X = [-80,5]) && p2movetype = A)
trigger1 = p2movetype = A
trigger1 = helper(9190),var(1) >= 0
trigger1 = helper(9190),var(1) - Enemy,time + var(56) < 5 || Enemy,HitdefAttr = SCA,AA,AP
trigger2 = inguarddist || (p2statetype = A && (p2dist X = [-80,5]) && p2movetype = A)
trigger2 = p2movetype = A
trigger2 = helper(9190),var(1) = -1
trigger2 = Enemy,vel X != 0 || Enemy,AnimElemTime(Enemy,AnimElemNo(0)) <= 1 || Enemy,AnimElemTime(Enemy,AnimElemNo(0)+1) >= -3
trigger3 = inguarddist || helper(9190),inguarddist
trigger3 = helper(9190),var(2) != 0 || helper(9190),var(1) = -1
trigger3 = Enemy,numproj || Enemy,numhelper > helper(9190),var(0) || p2movetype = I
v = 59
value = 1

[State -1, Guard]
type = VarSet
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = inguarddist
triggerall = p2statetype = C || helper(9190),var(11) = 1 || helper(9190),var(11) = 4 || (p2statetype = S && (var(57)%5 >= 4 || statetype = C) && helper(9190),var(11) != 2)
triggerall = helper(9190),var(2) != 2 || Enemy,numproj || Enemy,numhelper > helper(9190),var(0) 
trigger1 = inguarddist || (p2statetype = A && (p2dist X = [-80,5]) && p2movetype = A)
trigger1 = p2movetype = A
trigger1 = helper(9190),var(1) >= 0
trigger1 = helper(9190),var(1) - Enemy,time + var(56) < 5 || Enemy,HitdefAttr = SCA,AA,AP
trigger2 = inguarddist || (p2statetype = A && (p2dist X = [-80,5]) && p2movetype = A)
trigger2 = p2movetype = A
trigger2 = helper(9190),var(1) = -1
trigger2 = Enemy,vel X != 0 || Enemy,AnimElemTime(Enemy,AnimElemNo(0)) <= 1 || Enemy,AnimElemTime(Enemy,AnimElemNo(0)+1) >= -3
trigger3 = inguarddist || helper(9190),inguarddist
trigger3 = helper(9190),var(2) != 0 || helper(9190),var(1) = -1
trigger3 = Enemy,numproj || Enemy,numhelper > helper(9190),var(0) || p2movetype = I
v = 59
value = 2

[State -1, VarSet];
type = varset
Triggerall = !ishelper
Triggerall = var(59)
Trigger1= helper(9190),var(11)  = 3 || helper(9190),var(11)  = 5
Trigger2 = helper(9190),var(11)  = 4 && statetype = A 
Trigger3 = prevstateno = [150,155]
Trigger3 = (Enemy,time > helper(9190),var(1) && helper(9190),var(1) >= 0)|| Enemy,movecontact || Enemy,hitpausetime
Trigger3 = !(Enemy,Numproj) || (!inguarddist && !(var(57)&3))
;trigger3 = !(Enemy,hitdefattr = SCA,AA,AT,AP) || p2movetype != A
Trigger3 = var(53):= 1
v = 59
value = 0

[State -1, Guard]
type = ChangeState
value = 120
triggerall = AIlevel && roundstate = 2  && !ishelper
triggerall = var(59) > 0
triggerall = stateno != [120,155]
trigger1 = ctrl 

[State -1, jump]
type = ChangeState
value = 40
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist X < 150 || Enemy,vel X != 0
triggerall = backedgebodydist < 50
trigger1 = helper(9190),var(11) = 3
trigger1 = var(4):= 3
ctrl = 0

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist X < 150 || Enemy,vel X != 0
trigger1 = Enemy,hitdefattr = SCA,AT
trigger2 = helper(9190),var(11) = 3
ctrl = 0
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H 
triggerall = !Enemy,ctrl
triggerall = ctrl
triggerall = numhelper(1845)
triggerall = helper(1845),movehit
triggerall = helper(1845),time < 15
trigger1 = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl
triggerall = ctrl
triggerall = var(49) > 6
trigger1 = p2bodydist X <= 138.5 - ifelse(fvar(16) <= 7,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-14)*7) - ifelse(numhelper(8020),helper(8020),fvar(7),0)
trigger2 = var(49) > 7
trigger2 = p2bodydist X <= 146.25 - ifelse(fvar(16) <= 8,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-16)*8) - ifelse(numhelper(8020),helper(8020),fvar(8),0)

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) > 9
triggerall = ctrl
trigger1 = p2bodydist X <= 218.5 - ifelse(fvar(16) <= 10,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*5) + ifelse(numhelper(8020),helper(8020),fvar(10),0)
trigger2 = var(49) > 10
trigger2 = p2bodydist X <= 226.25 - ifelse(fvar(16) <= 11,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-10)*5.5) + ifelse(numhelper(8020),helper(8020),fvar(11),0)
trigger3 = var(49) > 11
trigger3 = p2bodydist X <= 230.5 - ifelse(fvar(16) <= 12,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-11)*6) + ifelse(numhelper(8020),helper(8020),fvar(12),0)
trigger4 = var(49) > 12
trigger4 = p2bodydist X <= 239.2 - ifelse(fvar(16) <= 13,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-12)*6.5) + ifelse(numhelper(8020),helper(8020),fvar(13),0)
trigger5 = var(49) > 13
trigger5 = p2bodydist X <= 248.4 - ifelse(fvar(16) <= 14,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-13)*7) + ifelse(numhelper(8020),helper(8020),fvar(14),0)
trigger6 = var(49) > 14
trigger6 = p2bodydist X <= 258.4 - (fvar(16)+1)*fvar(16)/2 + ifelse(numhelper(8020),helper(8020),fvar(15),0)
trigger7 = var(49) > 15
trigger7 = p2bodydist X <= 268.3- (fvar(16)+1)*fvar(16)/2 + ifelse(numhelper(8020),helper(8020),fvar(15),0)
trigger8 = var(49) > 16
trigger8 = p2bodydist X <= 307 - (fvar(16)+1)*fvar(16)/2 + ifelse(numhelper(8020),helper(8020),fvar(15),0)
trigger9 = p2bodydist X > 307 - (fvar(16)+1)*fvar(16)/2 + ifelse(numhelper(8020),helper(8020),fvar(15),0)
trigger9 = var(49) > 16 + ceil((p2bodydist X - 307 + (fvar(16)+1)*fvar(16)/2 + ifelse(numhelper(8020),helper(8020),fvar(15),0))/9.0)

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) = [6,7]
triggerall = p2bodydist X <= 110 - ifelse(fvar(16) <= 6,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-6)*3) + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2))
trigger1 = ctrl || (stateno = [100,101])  
ignorehitpause = 1

[State -1]
type = ChangeState
value = 215
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X = [0,120)
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 9
triggerall = p2bodydist X <= 100 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = var(49) = [9,10]
trigger2 = stateno = 400 || (stateno = 410 && prevstateno != [210,215])
trigger2 = var(24)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 9
triggerall = p2bodydist X <= 190 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = var(49) = [9,10]
trigger2 = stateno = 400 || (prevstateno != 410 && stateno = [210,215])
trigger2 = var(24)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 210
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 9
triggerall = p2bodydist X <= 200 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = var(49) = [9,10]
trigger2 = stateno = 400 || (stateno = 410 && prevstateno != [210,215])
trigger2 = var(24)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 14
triggerall = (fvar(7) < 1 && !numhelper(8020)) || (var(18) - power > 1500 &&  !numhelper(8020)) || (numhelper(8020) && (abs(helper(8020),p2dist X) > 120 + Enemy,const(size.ground.back) || !helper(8020),numexplod(1015)))|| (fvar(10)>0.5 && fvar(19)>0.5 && (var(18) > 2000) && (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 312 + Enemy,const(size.ground.back)) && abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) = 250 + Enemy,const(size.ground.back))
triggerall = p2bodydist X <= 260 - ifelse(fvar(16) <= 14,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-14)*7) + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = p2bodydist X >= 220 - ifelse(fvar(16) <= 14,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-14)*7) + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = var(49) = [14,15]
trigger2 = stateno = 210 || stateno = 215 || stateno = 410
trigger2 = var(24)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 220
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 14
triggerall = stateno != 100 ||  (stateno = [100,101])  && (p2bodydist X-floor(vel X /-fvar(20))*vel X/2-200 +(fvar(16)+1)*fvar(16)/2 + ifelse(numhelper(8020),helper(8020),fvar(15),0))/vel X > var(49) - 9
triggerall = p2bodydist X <= 270 - ifelse(fvar(16) <= 14,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-14)*7) + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = var(49) = [14,15]
trigger1 = p2bodydist X > 200 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger2 = stateno = 210 || stateno = 215 || stateno = 410
trigger2 = var(24)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(8020)  = 1
triggerall =  helper(8020),stateno = 8020
triggerall = helper(8020),numexplod(1015)
triggerall = var(24) || (var(29)&&stateno!=7400)
triggerall = stateno = 220 || stateno = 225
triggerall = p2movetype = H && (p2statetype = S || p2statetype = C) && p2stateno != [120,155]
trigger1 = Enemy,facing = 1
trigger1 = Enemy,pos X + facing*(fvar(16)+1)*fvar(16)/2 - helper(8020),pos X = [-62 - Enemy,const(size.ground.back),92 + Enemy,const(size.ground.front)]
trigger2 = Enemy,facing = -1
trigger2 = Enemy,pos X + facing*(fvar(16)+1)*fvar(16)/2 - helper(8020),pos X = [-62 - Enemy,const(size.ground.front),92 + Enemy,const(size.ground.back)]
trigger3 = Enemy,facing = 1
trigger3 = (fvar(16)+1)*fvar(16)/2 - helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X > -40
trigger3 = helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X = [-125 - Enemy,const(size.ground.front),155 + Enemy,const(size.ground.back)]
trigger4 = Enemy,facing = -1
trigger4 = (fvar(16)+1)*fvar(16)/2 - helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X > -40
trigger4 = helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X = [-125 - Enemy,const(size.ground.back),155 + Enemy,const(size.ground.front)]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = fvar(7) >= 1
triggerall  = var(24)
triggerall = hitpausetime
triggerall = !var(30)
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = p2statetype = S || p2statetype = C
trigger1 = statetype != A
trigger1 = stateno = [220,225]
trigger1 = var(30):=9301
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = p2bodydist X = [190 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0), 350 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)]
triggerall = var(57)%30 >= 22
triggerall = var(24)
trigger1 = stateno = 220
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1225
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = p2bodydist X = [220 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0), 350 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)]
triggerall = var(57)%30 <= 8
triggerall = var(24)
trigger1 = stateno = 220
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall  = var(24) 
triggerall = p2bodydist X = [265 - (fvar(16)+1)*fvar(16)/2 + (floor(vel X /-fvar(20))*vel X/2), 400 - (fvar(16)+1)*fvar(16)/2 + floor(vel X /-fvar(20))*vel X/2]
triggerall = var(57)%111 <= 9
trigger1 = stateno = 220
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H && p2stateno != [120,155]
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall = p2bodydist X >= 215 - (fvar(16)+1)*fvar(16)/2 + (floor(vel X /-fvar(20))*vel X/2) + 60*(var(49)<15)
triggerall  = var(24)
trigger1 = stateno = 220
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2movetype = H && p2statetype = A 
triggerall = Enemy,stateno = [5072,5073]
triggerall  = var(24) || (var(29)&&stateno!=7400)
triggerall = stateno = 420; || stateno = 220
triggerall = fvar(19) > 0.5
trigger1 = var(35) - 0.05 +ceil(690*fvar(15)*6*fvar(5)*fvar(6)) >= 12000 
trigger1 = var(57) >= 600
trigger2 = var(39) = 0 
trigger2 = var(37)
trigger3 = var(39) = 0
trigger3 = var(18) >= 4000
trigger3 = var(57) >= 600 || (fvar(19) < 0.5)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2000
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && var(18) >= 3000
triggerall = var(37) = 0
triggerall = var(35) - 0.05 + ceil(1000*fvar(15)*6*fvar(5)*fvar(6)) >= 12000
triggerall = var(57) > 700 - 200*(var(18) >= 4000) + 350*(var(39) = 6)
triggerall = p2movetype = H && p2statetype = A 
triggerall = Enemy,stateno = [5072,5073]
triggerall  = var(24) || (var(29)&&stateno!=7400)
triggerall = stateno = 420
trigger1 = !numhelper(8020)
trigger2 = numhelper(8020)
trigger2 = helper(8020),stateno != 8020 || fvar(10) < 0.5
trigger3= helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X > 342 + Enemy,const(size.ground.back)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7500
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = fvar(10) >= 0.5
triggerall = var(18) >= 1000
triggerall = Var(39) = 0
triggerall = (var(24) &&hitpausetime)
triggerall = p2movetype = H && p2statetype = A
triggerall = stateno = 420 || (stateno = 225 && (var(11)&1)) 
triggerall = fvar(19) > 0.5
triggerall = !var(37) || stateno = 225
trigger1 = var(57) > 500 - 200*(fvar(10) <= 0.75) - 400*(power + var(18) < 6000) - 500*power>4000
trigger2 = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 312 + Enemy,const(size.ground.back)
;trigger2 = var(18) >= 2000
;trigger2 = numhelper(8020)
;trigger2 = helper(8020),stateno = 8020
;trigger2 = abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) = 250 + Enemy,const(size.ground.back)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7600
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
triggerall  = var(24) || (var(29)&&stateno!=7400)
triggerall = p2movetype = H && p2statetype = A
triggerall = p2stateno != [5080,5120]
trigger1 = stateno = 420 || (stateno = 220 && var(37))
trigger2 = (stateno = 225 && (var(11)&1))
trigger2 = fvar(10) < 0.35 || var(18) < 1000 || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X > 160 + Enemy,const(size.ground.back) || !numhelper(8020) || !helper(8020),numexplod(1015) || abs(helper(8020),rootdist X) > 200 || var(37) || var(35) +ceil(5800*fvar(15)*6*fvar(5)*fvar(6)) >= 12000 || var(57)%3
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall  = var(24) || (var(29)&&stateno!=7400)
triggerall = (stateno = 225 && (var(11)&1)) || stateno = 420
triggerall = p2movetype = H && p2statetype = A
trigger1= numhelper(8020) = 0
trigger2 = numhelper(8020)  = 1
trigger2 = helper(8020),stateno != 8020
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(8020)  = 1
triggerall =  helper(8020),stateno = 8020
triggerall = helper(8020),numexplod(1015)
triggerall = var(24) || (var(29)&&stateno!=7400)
triggerall = stateno = 420
triggerall = p2movetype = H && p2stateno = [5072,5073]
trigger1 = facing*(pos X - helper(8020),pos X) > 200
ignorehitpause = 1 
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 1200
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = !(var(11)&1)
triggerall = ctrl
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = var(56) = 3
triggerall = p2stateno = [5072,5073]
trigger1 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*24 = [0,135]
trigger2 = (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 165 + Enemy,const(size.ground.back) + Enemy,const(size.ground.front))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = ctrl
triggerall = p2bodydist X > 50 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 160 + Enemy,const(size.ground.back) && p2dist X < 120)
triggerall = abs(Enemy,vel X) + 1 = 3
triggerall = (-Enemy,vel Y + exp(0.5*ln(((Enemy,vel Y)**2 - 4*0.5*Enemy,gethitvar(yaccel)*Enemy,pos Y))))/1.4 > 10
triggerall = p2bodydist X < 350
trigger1 = !numhelper(8020)
trigger2 = numhelper(8020)
trigger2 = facing*(pos X - helper(8020),pos X) > 100
trigger3 = var(39) = 0

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = !Enemy,ctrl 
triggerall = !(var(11)&8)
triggerall = p2bodydist X <= 190 + Enemy,vel X*9 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
triggerall = ctrl || (stateno = [100,101])  
triggerall = p2stateno != 5041 && p2stateno != 5073
trigger1= (-Enemy,vel Y + exp(0.5*ln(((Enemy,vel Y)**2 - 4*0.5*Enemy,gethitvar(yaccel)*Enemy,pos Y))))/(1.4) = [9,10]
trigger2= (-Enemy,vel Y + exp(0.5*ln(((Enemy,vel Y)**2 - 4*0.5*Enemy,gethitvar(yaccel)*Enemy,pos Y))))/(1.4) > 10
trigger2 = p2bodydist Y >= -30 - Enemy,vel Y*13 - 0.5*1.4*13**2
trigger2 = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 120 + Enemy,const(size.ground.back) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
trigger3 = p2bodydist Y >= -30  - Enemy,vel Y*13 - 0.5*1.4*13**2
trigger3 = p2dist X - Enemy,vel X*9 - (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) < 120
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = !Enemy,ctrl 
triggerall = !(var(11)&8)
triggerall = p2bodydist X <= 190 + Enemy,vel X*9 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
triggerall = ctrl || (stateno = [100,101])  
triggerall = p2stateno = 5041 || p2stateno = 5073
trigger1= (-Enemy,vel Y + exp(0.5*ln(Enemy,vel Y**2 - 2*1.3*Enemy,pos Y)))/(1.3) = [9,11]
trigger2 = var(57)%3
trigger2 = (-Enemy,vel Y + exp(0.5*ln(Enemy,vel Y**2 - 2*1.3*Enemy,pos Y)))/(1.3) > 10
trigger2 = p2bodydist Y >= -35  - Enemy,vel Y*13 - 0.5*1.3*13**2
trigger2 = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 120 + Enemy,const(size.ground.back) + Enemy,const(size.ground.front) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
trigger3 = var(57)%3
trigger3 = (-Enemy,vel Y + exp(0.5*ln(Enemy,vel Y**2 - 2*1.3*Enemy,pos Y)))/(1.3) > 10
trigger3 = p2bodydist Y >= -35  - Enemy,vel Y*13 - 0.5*1.3*13**2
trigger3 = p2dist X + Enemy,vel X*9 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) < 120
ignorehitpause = 1

[State -1]
type = ChangeState
value = 210
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = !Enemy,ctrl 
triggerall = !(var(11)&8)
triggerall = ctrl || (stateno = [100,101]) 
triggerall = p2bodydist Y + Enemy,vel Y*8 + 32*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0)  = [-210,-1] 
triggerall = p2bodydist X <= 190 + facing*Enemy,facing*Enemy,vel X*8 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 230+Enemy,const(size.ground.back))
trigger1 = stateno = 400 && var(24)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 215
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = p2dist X < 120
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = !Enemy,ctrl 
triggerall = !(var(11)&8)
triggerall = p2bodydist X <= 100 + Enemy,vel X*9 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X > 250
trigger1 = p2bodydist Y = [-125 - Enemy,vel Y*9 - 1.3*4.5**2,-Enemy,vel Y*9 - 1.3*4.5**2]
trigger2 = stateno = 410
trigger2 = var(24) || (var(29)&&stateno!=7400)
trigger2 = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 80 + Enemy,const(size.ground.back) + Enemy,const(size.ground.front) 
ignorehitpause = 1

[State -1]
type = ChangeState
value = 225
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = p2dist X < 120
triggerall  = var(24) || (var(29)&&stateno!=7400)
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = !Enemy,ctrl 
triggerall = !(var(11)&8)
trigger1 = stateno = 410
trigger2 = stateno = 215
trigger3 = stateno = 205
ignorehitpause = 1

[State -1]
type = ChangeState
value = 220
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = A
triggerall = p2movetype = H 
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = p2stateno = [5072,5073]
trigger1 = var(37)
trigger1 = p2bodydist X <= 270 - (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno=[100,101])
trigger1 = p2bodydist Y + Enemy,vel Y*14 + 117.6 = [-175,-1]
trigger2 = stateno = 210 || stateno = 215 || stateno = 410
trigger2 = var(24)
trigger2 = !var(37)
trigger2 = hitpausetime
trigger2 = p2bodydist X <= 166 - (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 186+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
trigger2 = p2bodydist Y - 68.6 = [-135,-1]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall = stateno = 225 && var(24)
triggerall = !hitpausetime
triggerall = p2statetype = A
triggerall = p2movetype = H && (var(11)&8)
triggerall = AnimElemTime(8) >= 0
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 150+Enemy,const(size.ground.back)+(floor(vel X /-fvar(20))*vel X/2)
triggerall = helper(8020),rootdist X = [-200,200]
trigger1 = Enemy,pos Y + Enemy,vel Y*26 + 338*1.4 = [-290,-50]
trigger2 = Enemy,pos Y + Enemy,vel Y*27+ 364.5*1.4 = [-290,-50]
trigger3 = Enemy,pos Y + Enemy,vel Y*28 + 392*1.4 = [-290,-50]
trigger4 = Enemy,pos Y + Enemy,vel Y*29 + 420.5*1.4= [-290,-50]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall = ((stateno = [200,220]) || stateno = 410) && var(24)
triggerall = p2statetype = A
triggerall = p2movetype = H && p2stateno = 5041
triggerall = (p2bodydist X = [10 + facing*Enemy,facing*Enemy,vel X*20 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]), 450 + facing*Enemy,facing*Enemy,vel X*20 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101])]) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 400+Enemy,const(size.ground.back)+(floor(vel X /-fvar(20))*vel X/2))
trigger1 = (Enemy,pos X + Enemy,facing*Enemy,vel X*20 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || (abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300)
trigger1 = Enemy,pos Y + Enemy,vel Y*20 + 200*1.3 = [-160,-1]
trigger2 = (Enemy,pos X + Enemy,facing*Enemy,vel X*21  - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger2 = Enemy,pos Y + Enemy,vel Y*21 + 220.5*1.3 = [-160,-1]
trigger3 = (Enemy,pos X + Enemy,facing*Enemy,vel X*22 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger3 = Enemy,pos Y + Enemy,vel Y*22 + 242*1.3 = [-160,-1]
trigger4 = (Enemy,pos X + Enemy,facing*Enemy,vel X*23 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger4 = Enemy,pos Y + Enemy,vel Y*23 + 264.5*1.3 = [-160,-1]
trigger5 = (Enemy,pos X + Enemy,facing*Enemy,vel X*24 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger5 = Enemy,pos Y + Enemy,vel Y*24 + 288*1.3 = [-360,-1]
trigger6 = (Enemy,pos X + Enemy,facing*Enemy,vel X*25 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger6 = Enemy,pos Y + Enemy,vel Y*25 + 312.5*1.3 = [-360,-1]
trigger7 = (Enemy,pos X + Enemy,facing*Enemy,vel X*26 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger7 = Enemy,pos Y + Enemy,vel Y*26 + 338*1.3 = [-360,-1]
trigger8 = (Enemy,pos X + Enemy,facing*Enemy,vel X*27 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger8 = Enemy,pos Y + Enemy,vel Y*27+ 364.5*1.3 = [-360,-1]
trigger9 = (Enemy,pos X + Enemy,facing*Enemy,vel X*28 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger9 = Enemy,pos Y + Enemy,vel Y*28 + 392*1.3 = [-360,-1]
trigger10 = (Enemy,pos X + Enemy,facing*Enemy,vel X*29 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger10 = Enemy,pos Y + Enemy,vel Y*29 + 420.5*1.3 = [-360,-1]
trigger11= (Enemy,pos X + Enemy,facing*Enemy,vel X*30 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger11 = Enemy,pos Y + Enemy,vel Y*30 + 450*1.3 = [-360,-1]
trigger12 = (Enemy,pos X + Enemy,facing*Enemy,vel X*31 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger12 = Enemy,pos Y + Enemy,vel Y*31 + 480.5*1.3 = [-360,-1]
trigger13 = (Enemy,pos X + Enemy,facing*Enemy,vel X*32 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]) || abs(helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X) < 300 &&helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X - Enemy,facing*Enemy,vel X*20 < 300
trigger13 = Enemy,pos Y + Enemy,vel Y*32 + 512*1.3 = [-360,-1]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = ctrl || stateno = [100,101]
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall =  numhelper(1847)
triggerall = abs(Enemy,vel X)+1 = 3
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 160+Enemy,const(size.ground.back)+(floor(vel X /-fvar(20))*vel X/2)
triggerall= (-Enemy,vel Y + exp(0.5*ln(((Enemy,vel Y)**2 - 4*0.5*Enemy,gethitvar(yaccel)*Enemy,pos Y))))/(1.4) >= 42
trigger1 = numhelper(8020) = 0
trigger2 = numhelper(8020)  = 1
trigger2 = helper(8020),stateno != 8020
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = H 
triggerall  = var(24) 
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X  > 300
trigger1 = stateno = [210,220]
trigger2 = stateno = 410
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1200
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = !(var(11)&1)
triggerall = (ctrl || (stateno = [100,101]) ) || (stateno = 225 && var(24))
triggerall = p2statetype = A
triggerall = p2movetype = H
trigger1 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*29 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger1 = Enemy,pos Y + Enemy,vel Y*29 + 420.5*1.4 = [-28,-1]
trigger2 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*30 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger2 = Enemy,pos Y + Enemy,vel Y*30 + 450*1.4 = [-62,-1]
trigger3 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*31 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger3 = Enemy,pos Y + Enemy,vel Y*31 + 480.5*1.4 = [-94,-1]
trigger4 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*32 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger4 = Enemy,pos Y + Enemy,vel Y*32+ 512*1.4 = [-125,-1]
trigger5 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*33 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger5 = Enemy,pos Y + Enemy,vel Y*33 + 444.5*1.4 = [-155,-1]
trigger6 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*34 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger6 = Enemy,pos Y + Enemy,vel Y*34 + 578*1.4 = [-183,-1]
trigger7 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*35 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger7 = Enemy,pos Y + Enemy,vel Y*35 + 612.5*1.4 = [-209,-1]
trigger8 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*36 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger8 = Enemy,pos Y + Enemy,vel Y*36 + 648.5*1.4 = [-233,-1]
trigger9 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*37 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger9 = Enemy,pos Y + Enemy,vel Y*37 + 684.5*1.4 = [-254,-1]
trigger10 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*38 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger10 = Enemy,pos Y + Enemy,vel Y*38 + 722*1.4 = [-272,-1]
trigger11 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*39 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger11 = Enemy,pos Y + Enemy,vel Y*39 + 760.5*1.4 = [-287,-1]
trigger12 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*40 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger12 = Enemy,pos Y + Enemy,vel Y*40 + 800*1.4 = [-299,-1]
trigger13 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*41 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger13 = Enemy,pos Y + Enemy,vel Y*41 + 840.5*1.4 = [-308,-1]
trigger14 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*42 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger14 = Enemy,pos Y + Enemy,vel Y*42 + 882*1.4 = [-313,-1]
trigger15 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*43 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger15 = Enemy,pos Y + Enemy,vel Y*43 + 924.5*1.4 = [-315,-1]
trigger16 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*44 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger16 = Enemy,pos Y + Enemy,vel Y*43 + 968*1.4 = [-315,-1]
trigger17 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*45 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger17 = Enemy,pos Y + Enemy,vel Y*43 + 1012.5*1.4 = [-315,-1]
trigger18 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*46 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger18 = Enemy,pos Y + Enemy,vel Y*43 + 1058*1.4 = [-315,-1]
trigger19 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*47 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger19 = Enemy,pos Y + Enemy,vel Y*43 + 1104.5*1.4 = [-315,-1]
trigger20 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*48 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger20 = Enemy,pos Y + Enemy,vel Y*43 + 1152*1.4 = [-315,-1]
trigger21 = (p2bodydist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) + facing*Enemy,facing*Enemy,vel X*49 = [10,125])  || helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X - (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]) - 50 - Enemy,const(size.ground.back) - Enemy,const(size.ground.front) < 125
trigger21 = Enemy,pos Y + Enemy,vel Y*43 + 1200.5*1.4 = [-315,-1]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = !Enemy,ctrl
triggerall = ctrl
triggerall = var(56) > 0
triggerall = Enemy,stateno = [5072,7073];29 288
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 342 + Enemy,const(size.ground.back)
;trigger1 = abs(helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X) <= 120 + Enemy,const(size.ground.back)
trigger1 = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 7500
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = fvar(10) >= 0.5
triggerall = var(18) >= 2000
triggerall = Var(39) = 0
triggerall = var(13) < 30
triggerall = ctrl  || stateno = [100,101]
triggerall = p2movetype = H && p2statetype = A
triggerall = numhelper(1846) 
triggerall = abs(Enemy,vel X)+1 = 3 
trigger1 = p2bodydist X > 350
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1375
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2movetype = H && p2statetype = A 
triggerall = ctrl  || stateno = [100,101]
triggerall = !var(39) || fvar(10) < 0.07
triggerall = fvar(19) > 0.5
triggerall = abs(Enemy,vel X)+1 = 3
triggerall = (-Enemy,vel Y + exp(0.5*ln(Enemy,vel Y**2 - 2*(1.4)*Enemy,pos Y)))/1.4 = [24,40]
trigger1 = p2bodydist X > 350 ;|| var(18) > 3500
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = ctrl
triggerall = var(39) = 6
triggerall = p2movetype = H
triggerall = p2statetype = A
triggerall = fvar(10) > 0.07
triggerall = abs(Enemy,vel X)+1 = 3
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X > 450 || p2bodydist X > 350 
trigger1 = numhelper(8020) = 0
trigger2 = numhelper(8020)  = 1
trigger2 = helper(8020),stateno != 8020
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall = (ctrl || (stateno = [100,101]) )
triggerall = (var(39)=6 && fvar(10) >= 0.114) || var(18) > 2000
triggerall = fvar(19) > 0.5
triggerall = p2bodydist X > 350
triggerall = Enemy,pos X - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
triggerall =  var(54)
;triggerall = Enemy,sysvar(2) = 3
trigger1 = Enemy,stateno = 5102
trigger2 = Enemy,stateno = 5103
trigger2 = Enemy,time <= 7 || Enemy,sysvar(0) > 20
trigger3 = p2stateno = 5074
trigger4 = p2stateno = 5111 && Enemy,sysvar(0) > 20
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7600
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
triggerall = p2movetype = H && p2statetype = A
triggerall = numhelper(8020)
triggerall = numhelper(8020) > 1 || helper(8020),numexplod(1007)
triggerall = abs(Enemy,vel X)+1 = 3
triggerall =  (-Enemy,vel Y + exp(0.5*ln(((Enemy,vel Y)**2 - 4*0.5*Enemy,gethitvar(yaccel)*Enemy,pos Y))))/(1.4) <= 9 || p2bodydist X > 650
trigger1 = ctrl
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 7600
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = (Var(39) = 6)
triggerall = !numhelper(7620)
triggerall = ctrl 
triggerall = p2movetype = H && p2statetype = A
triggerall = p2stateno != [5080,5120]
trigger1 = var(56) > 0
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2stateno = 5074 || ((p2stateno = [5102,5103]) && Enemy,sysvar(0) > 20)
triggerall = Enemy,pos X - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
triggerall = p2bodydist X < 250
triggerall = p2dist X > 0
triggerall = var(18) > 1000
trigger1 = ctrl
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall = stateno = [100,101]
triggerall = p2bodydist X < 250
triggerall = Enemy,pos X - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
triggerall =  var(54)
trigger1 = Enemy,stateno = 5111 || p2bodydist X < 100
trigger1 = Enemy,sysvar(0) > 20
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 7000
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = var(54)
triggerall = ctrl || (stateno = 100)
triggerall = fVar(7) >= 1
triggerall = !NumHelper(53010)
trigger1 = var(18) < power
trigger1 = var(51) = 0 || var(51) > 500
trigger2 = numhelper(8020)
trigger2 = abs(helper(8020),p2dist X) > 250

[State -1]
type = ChangeState
value = 22
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = var(54)
triggerall = !inguarddist
triggerall = ctrl
triggerall = stateno != 22
trigger1 = p2bodydist X < 30
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = var(54); || (var(11)&8)
triggerall = !inguarddist
triggerall = ctrl || (stateno = [100,101])   || (stateno = 420 && var(24))
triggerall = p2stateno != 5111 || p2bodydist X > 150
trigger1 = numhelper(8020) = 0
trigger2 = numhelper(8020)  = 1
trigger2 = helper(8020),stateno != 8020
ignorehitpause = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = var(54)
triggerall = p2stateno != 5111
triggerall = p2bodydist X < 220
triggerall = var(57)%3 = 0
trigger1 = ctrl
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = var(54)
triggerall = p2stateno != 5111 || Enemy,sysvar(0) < 20
triggerall = Enemy,sysvar(0) < 20 || p2stateno != 5111
triggerall = p2bodydist X <= 170 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
triggerall = ctrl || (stateno = [100,101])  
trigger1= p2stateno != 5111
trigger1 = Enemy,sysvar(0) < 20
trigger2= p2stateno = 5111
trigger2 = Enemy,sysvar(0) > 10
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = var(54)
triggerall = p2stateno != 5111
triggerall = p2bodydist X <= 220 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) 
trigger1= stateno = 410
trigger1 = var(24)
trigger1 = Enemy,sysvar(0) >= 5
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1200
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = !NumHelper(53010)
triggerall = p2bodydist X = [20,120]
triggerall = ctrl
triggerall = var(54)
trigger1 = p2stateno = 5111 && Enemy,sysvar(0) + helper(9190),var(38 + (Enemy,anim = 5111 && Enemy,selfanimexist(5121))) = [26,30]
trigger2 = p2stateno = 5120 && Enemy,AnimTime = [-26,-30]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1225
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = !NumHelper(53010)
triggerall = p2bodydist X >= 220  + (fvar(16)+1)*fvar(16)/2
triggerall = var(57)%24 <= 11
triggerall = var(24) && (stateno = 420)
trigger1 = var(54)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = !NumHelper(53010)
triggerall = p2bodydist X >= 150  + (fvar(16)+1)*fvar(16)/2
triggerall = var(57)%24 <= 19
triggerall = var(24) && (stateno = 420)
trigger1 = var(54)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1225
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = !NumHelper(53010)
triggerall = p2bodydist X = [220 - (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno = [100,101]), 350 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno = [100,101])]
triggerall = var(57)%30 <= 12
triggerall = ctrl || stateno = [100,101]
trigger1 = p2stateno = 5111 && Enemy,sysvar(0) + helper(9190),var(38 + (Enemy,anim = 5111 && Enemy,selfanimexist(5121))) = [30,52]
trigger2 = p2stateno = 5120 && Enemy,AnimTime = [-30,-52]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = !NumHelper(53010)
triggerall = p2bodydist X = [190 - (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno = [100,101]), 350 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno = [100,101])]
triggerall = var(57)%46 >= 30
triggerall = ctrl || stateno = [100,101]
trigger1 = p2stateno = 5111 && Enemy,sysvar(0) + helper(9190),var(38 + (Enemy,anim = 5111 && Enemy,selfanimexist(5121))) = [39,66]
trigger2 = p2stateno = 5120 && Enemy,AnimTime = [-39,-66]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = var(54)
triggerall = p2stateno = [5111,5120]
triggerall = !NumHelper(53010)
triggerall = p2bodydist X = [180,370)
triggerall = var(57)%2 = 1
triggerall = ctrl 
trigger1 = p2stateno = 5111 && Enemy,sysvar(0) + helper(9190),var(38 + (Enemy,anim = 5111 && Enemy,selfanimexist(5121))) = [32,39]
trigger2 = p2stateno = 5120 && Enemy,AnimTime = [-32,-39]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1325 + 25*(p2bodydist X>= 700)
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = var(54)
triggerall = p2stateno = [5111,5120]
triggerall = !NumHelper(53010)
triggerall = p2bodydist X >= 370
;triggerall = var(57)%2 <= 1
triggerall = ctrl 
trigger1 = p2stateno = 5111 && Enemy,sysvar(0) + helper(9190),var(38 + (Enemy,anim = 5111 && Enemy,selfanimexist(5121))) = [30,42]
trigger2 = p2stateno = 5120 && Enemy,AnimTime = [-30,-42]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = ctrl
triggerall = !NumHelper(53010) 
triggerall = p2bodydist X = [60 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]),190 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])]
trigger1= p2stateno = 5120
trigger1 = Enemy,AnimTime = -6
ignorehitpause = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = !inguarddist
triggerall = NumHelper(53010) || p2stateno = [7210,7212]
triggerall = p2dist X > 0
trigger1 = ctrl
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = (ctrl || (stateno = [100,101]) )
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = 5300
triggerall = p2bodydist X <= 200 + (floor(vel X /-fvar(20))*vel X/2)
trigger1 = Enemy,AnimTime < -67
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [7210,7212]
triggerall = !Enemy,ctrl 
triggerall = Enemy,AnimTime = [-12,-10]
triggerall = p2bodydist X = [60 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]),190 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])]
trigger1 = ctrl || (stateno = [100,101])  
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [7210,7212]
triggerall = !Enemy,ctrl 
triggerall = p2bodydist X <= 50 + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])
trigger1 = ctrl || (stateno = [100,101])  
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = 5300
triggerall = !Enemy,ctrl 
triggerall = p2bodydist X <= 50 + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])
trigger1 = ctrl || (stateno = [100,101])  
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(8020)  = 1
triggerall =  helper(8020),stateno = 8020
triggerall = helper(8020),numexplod(1015)
triggerall  = p2stateno = 5300
triggerall = Enemy,time = 110
triggerall = p2bodydist X - (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]) - vel X *3 > 110
triggerall = ctrl || (stateno = [100,101])  
trigger1 = Enemy,facing = 1
trigger1 = Enemy,pos X - helper(8020),pos X = [-62 - Enemy,const(size.ground.back),62 + Enemy,const(size.ground.front)]
trigger2 = Enemy,facing = -1
trigger2 = Enemy,pos X  - helper(8020),pos X = [-62 - Enemy,const(size.ground.front),62 + Enemy,const(size.ground.back)]
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = I
triggerall = p2bodydist X = [60 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]),190 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])]
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = random%8 < 2 + 2*(stateno = 100)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 210
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = I
triggerall = p2bodydist X = [60 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]),200 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])]
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = random%17 > 9 - 2*(stateno = 100)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = I
triggerall = p2stateno != 100
triggerall = p2bodydist X = [10 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101]),50 + facing*Enemy,facing*Enemy,vel X*2 + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)*stateno = [100,101])]
trigger1 = ctrl || (stateno = [100,101])  
trigger1 = random > 200
ignorehitpause = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = I
triggerall = !inguarddist
triggerall = p2stateno != 100
triggerall = p2bodydist X > 190 || numhelper(1849) || numhelper(1950)
triggerall = ctrl
trigger1 = random = [300,450 + 200*!Enemy,ctrl]
trigger2 = numhelper(1849)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = I
triggerall = p2stateno != 100
triggerall = p2bodydist X = [235, 350]
triggerall = ctrl
trigger1 = random = [600,700]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1325
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2movetype = I
triggerall = p2dist Y > -250
triggerall = p2bodydist X = [400+Enemy,vel X*25,700]
triggerall = random = [200,250]
trigger1 = ctrl  || stateno = [100,101]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1350
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2movetype = I
triggerall = p2dist Y > -250
triggerall = p2stateno != 100
triggerall = p2bodydist X >= 700
triggerall = random > 800
trigger1 = ctrl
ignorehitpause = 1

[State -1]
type = ChangeState
value = 21
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = p2bodydist X > 150
triggerall = statetype != A
triggerall = p2movetype = I 
triggerall = stateno != 21
trigger1 = ctrl
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall = p2bodydist X >= 215
triggerall = var(57)%3 = 2
triggerall  = var(24)
triggerall = ctrl
trigger1 = numhelper(1845) 
trigger2 = numhelper(1849)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2stateno = [120,155]
triggerall = !inguarddist
triggerall = ctrl
trigger1 = numhelper(1845) 
trigger2 = numhelper(1849)
ignorehitpause = 1

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = !Enemy,ctrl 
triggerall = p2stateno = [120,155]
triggerall = var(49) > 5
triggerall = var(57) > 500 || p2bodydist X < 40
triggerall = p2bodydist X <= 100 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2))
trigger1 = stateno = 400
trigger1  = var(24) || (var(29)&&stateno!=7400)
trigger2 = ctrl || (stateno = [100,101]) 
ignorehitpause = 1

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 9
triggerall = var(24)
triggerall = p2bodydist X <= 190 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = stateno = 400
trigger1 = var(57)%10 <= 2
trigger2 = (prevstateno != 410 && stateno = [210,215])
trigger2 = var(57)%4 = 3 || p2bodydist X < 130
ignorehitpause = 1

[State -1]
type = ChangeState
value = ifelse(p2dist X >= 120, 210, 215)
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 9
triggerall = var(24)
triggerall = p2bodydist X <= 200 - ifelse(fvar(16) <= 9,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-9)*4.5) + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = stateno = 400
trigger1 = var(57)%10 = [4,5]
trigger2 = (stateno = 410 && prevstateno != [210,215])
trigger2 = var(57)%4 = 3 || p2bodydist X < 130
ignorehitpause = 1

[State -1]
type = ChangeState
value = 420
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = !Enemy,ctrl 
triggerall = var(49) >= 12
triggerall = var(24)
triggerall = p2bodydist X <= 260 - ifelse(fvar(16) <= 14,(fvar(16)+1)*fvar(16)/2,(fvar(16)*2-14)*7) + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)
trigger1 = stateno = 410 || stateno = [210,215]
trigger1 = var(57) %23 > 10
ignorehitpause = 1

[State -1]
type = ChangeState
value = 7100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = fvar(7) >= 1
triggerall  = var(24)
triggerall = hitpausetime
triggerall = !var(30)
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
trigger1 = var(57)%2 = 1
trigger1 = stateno = 420
trigger1 = var(30):=9301
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = p2bodydist X = [190 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0), 350 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)]
triggerall = var(57)%30 >= 22
triggerall = var(24)
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 410
trigger6 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1225
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = p2bodydist X = [190 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0), 350 - (fvar(16)+1)*fvar(16)/2 + (ifelse(vel X /-fvar(20)>14,vel X*14-98*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) + ifelse(numhelper(8020),helper(8020),fvar(9),0)]
triggerall = var(57)%30 <= 8
triggerall = var(24)
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 410
trigger6 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1575
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall  = var(24) 
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 340 + Enemy,const(size.ground.back) + Enemy,const(size.ground.front) 
triggerall = p2bodydist X = [190 - (fvar(16)+1)*fvar(16)/2 + (floor(vel X /-fvar(20))*vel X/2), 240 - (fvar(16)+1)*fvar(16)/2 + floor(vel X /-fvar(20))*vel X/2]
triggerall = var(57)%99 <= 14
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 410
trigger4 = stateno = 220
trigger5 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1300
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall  = var(24) 
triggerall = p2bodydist X = [265 - (fvar(16)+1)*fvar(16)/2 + (floor(vel X /-fvar(20))*vel X/2), 400 - (fvar(16)+1)*fvar(16)/2 + floor(vel X /-fvar(20))*vel X/2]
triggerall = var(57)%111 <= 9
trigger1 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
triggerall = ifelse(numhelper(8020) = 0,1,helper(8020),stateno != 8020)
triggerall = p2bodydist X >= 215 - (fvar(16)+1)*fvar(16)/2 + (floor(vel X /-fvar(20))*vel X/2) + 60*(var(49)<15)
triggerall = var(57)%4 = 2 || stateno = 420
triggerall  = var(24)
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 410
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 420
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1001
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(8020)  = 1
triggerall =  helper(8020),stateno = 8020
triggerall = helper(8020),numexplod(1015)
triggerall  = var(24) || (var(29)&&stateno!=7400)
triggerall = (stateno = [210,225 ]) || (stateno = [410,420])
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype = H
triggerall = p2stateno = [120,155]
trigger1 = Enemy,facing = 1
trigger1 = Enemy,pos X + facing*(fvar(16)+1)*fvar(16)/2 - helper(8020),pos X = [-62 - Enemy,const(size.ground.back),62 + Enemy,const(size.ground.front)]
trigger2 = Enemy,facing = -1
trigger2 = Enemy,pos X + facing*(fvar(16)+1)*fvar(16)/2 - helper(8020),pos X = [-62 - Enemy,const(size.ground.front),62 + Enemy,const(size.ground.back)]
trigger3 = Enemy,facing = 1
trigger3 = (fvar(16)+1)*fvar(16)/2 - helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X > -40
trigger3 = helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X = [-62 - Enemy,const(size.ground.front),62 + Enemy,const(size.ground.back)]
trigger4 = Enemy,facing = -1
trigger4 = (fvar(16)+1)*fvar(16)/2 - helper(ifelse(helper(9191),facing=facing,9192,9191)),p2dist X > -40
trigger4 = helper(8020),pos X - helper(ifelse(helper(9191),facing=facing,9192,9191)),pos X = [-62 - Enemy,const(size.ground.back),62 + Enemy,const(size.ground.front)]
ignorehitpause = 1

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 225
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = p2dist X < 120
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = I || p2movetype = A
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time >= 12) || (helper(9190),var(2) != 2 && helper(9190),var(1) < 0 && var(57) > 700)|| var(53) = 1|| p2movetype = I
triggerall = p2bodydist Y + Enemy,vel Y*12 + 72*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0)  = [-310,-1] 
triggerall = ctrl || (stateno = [100,101]) 
triggerall = !numhelper(1846)
trigger1 = p2bodydist X = [-5 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>12,vel X*12-72*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno=[100,101]) ,100 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>12,vel X*12-72*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno=[100,101])]
trigger2 =  (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 100+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2))*(stateno=[100,101]))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 210
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X >= 120
triggerall = p2statetype = A
triggerall = p2movetype = I || p2movetype = A
triggerall = ctrl || (stateno = [100,101]) 
triggerall = !numhelper(1846)
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time >= 9) || (helper(9190),var(2) != 2 && helper(9190),var(1) < 0 && var(57) > 700) || var(53) = 1|| p2movetype = I
triggerall = p2bodydist Y + Enemy,vel Y*8 + 32*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0)  = [-210,-1] 
trigger1 = p2bodydist X <= 190 + facing*Enemy,facing*Enemy,vel X*8 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 230+Enemy,const(size.ground.back))
trigger2 = stateno = [100,101]
trigger2 = p2bodydist X <= 190 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 230+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 215
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = p2dist X = [0,120)
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = I || p2movetype = A
triggerall = ctrl || (stateno = [100,101])  
triggerall = !numhelper(1846)
triggerall = (p2stateno < 2000 && helper(9190),var(2) != 2 && helper(9190),var(1) >= 0 && helper(9190),var(1) - Enemy,time >= 9) || (helper(9190),var(2) != 2 && helper(9190),var(1) < 0 && var(57) > 700)|| var(53) = 1|| p2movetype = I
triggerall = p2bodydist Y + Enemy,vel Y*8 + 32*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0)  = [-223,-1] 
trigger1 = p2bodydist X <= 100 + facing*Enemy,facing*Enemy,vel X*8 || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 130+Enemy,const(size.ground.back))
trigger2 = stateno = [100,101]
trigger2 = p2bodydist X <= 75 + facing*Enemy,facing*Enemy,vel X*8 + (ifelse(vel X /-fvar(20)>9,vel X*9-40.5*-fvar(20),floor(vel X /-fvar(20))*vel X/2)) || (helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X < 75+Enemy,const(size.ground.back)+(ifelse(vel X /-fvar(20)>6,vel X*6-18*-fvar(20),floor(vel X /-fvar(20))*vel X/2)))
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1575
triggerall = AIlevel && roundstate = 2 && !ishelper && var(18) >= 1000
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = I || p2movetype = A
triggerall = helper(ifelse(helper(9191),facing=facing,9192,9191)),rootdist X <= 340 + Enemy,const(size.ground.back) + Enemy,const(size.ground.front) 
triggerall = p2bodydist X = [190 + facing*Enemy,facing*Enemy,vel X*10 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]), 240 + facing*Enemy,facing*Enemy,vel X*10 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101])]
triggerall = var(57)%61 > 45
trigger1 = ctrl || (stateno = [100,101]) 
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1200
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A
triggerall = numhelper(1847) + numhelper(1848) + numhelper(1849) = 0
triggerall = (ctrl || (stateno = [100,101]) )
triggerall = p2statetype = A
triggerall = p2movetype = I
triggerall = var(57)%11 > 5
;triggerall = p2bodydist X = [-15 + facing*Enemy,facing*Enemy,vel X*32 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]), 150 + facing*Enemy,facing*Enemy,vel X*32 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101])]
trigger1 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*29 = [10,135]
trigger1 = Enemy,pos Y + Enemy,vel Y*29 + 420.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-28,-1]
trigger2 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*30 = [10,135]
trigger2 = Enemy,pos Y + Enemy,vel Y*30 + 450*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-62,-1]
trigger3 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*31 = [10,135]
trigger3 = Enemy,pos Y + Enemy,vel Y*31 + 480.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-94,-1]
trigger4 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*32 = [10,135]
trigger4 = Enemy,pos Y + Enemy,vel Y*32+ 512*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-125,-1]
trigger5 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*33 = [10,135]
trigger5 = Enemy,pos Y + Enemy,vel Y*33 + 444.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-155,-1]
trigger6 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*34 = [10,135]
trigger6 = Enemy,pos Y + Enemy,vel Y*34 + 578*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-183,-1]
trigger7 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*35 = [10,135]
trigger7 = Enemy,pos Y + Enemy,vel Y*35 + 612.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-209,-1]
trigger8 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*36 = [10,135]
trigger8 = Enemy,pos Y + Enemy,vel Y*36 + 648.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-233,-1]
trigger9 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*37 = [10,135]
trigger9 = Enemy,pos Y + Enemy,vel Y*37 + 684.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-254,-1]
trigger10 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*38 = [10,135]
trigger10 = Enemy,pos Y + Enemy,vel Y*38 + 722*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-272,-1]
trigger11 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*39 = [10,135]
trigger11 = Enemy,pos Y + Enemy,vel Y*39 + 760.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-287,-1]
trigger12 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*40 = [10,135]
trigger12 = Enemy,pos Y + Enemy,vel Y*40 + 800*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-299,-1]
trigger13 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*41 = [10,135]
trigger13 = Enemy,pos Y + Enemy,vel Y*41 + 840.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-308,-1]
trigger14 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*42 = [10,135]
trigger14 = Enemy,pos Y + Enemy,vel Y*42 + 882*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-313,-1]
trigger15 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*43 = [10,135]
trigger15 = Enemy,pos Y + Enemy,vel Y*43 + 924.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
trigger16 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*44 = [10,135]
trigger16 = Enemy,pos Y + Enemy,vel Y*44 + 968*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
trigger17 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*45 = [10,135]
trigger17 = Enemy,pos Y + Enemy,vel Y*45 + 1012.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
trigger18 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*46 = [10,135]
trigger18 = Enemy,pos Y + Enemy,vel Y*46 + 1058*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
trigger19 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*47 = [10,135]
trigger19 = Enemy,pos Y + Enemy,vel Y*47 + 1104.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
trigger20 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*48 = [10,135]
trigger20 = Enemy,pos Y + Enemy,vel Y*48 + 1152*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
trigger21 = p2bodydist X+ facing*Enemy,facing*Enemy,vel X*49 = [10,135]
trigger21 = Enemy,pos Y + Enemy,vel Y*49 + 1200.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-315,-1]
ignorehitpause = 1

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && var(18) >= 1000
triggerall = numhelper(8020)  = 1
triggerall = helper(8020),numexplod(1015)
triggerall = (ctrl || (stateno = [100,101]) )
triggerall = p2statetype = A
triggerall = p2movetype = I || p2movetype = A
triggerall = var(18) >= 4000 || p2bodydist X = [190 + facing*Enemy,facing*Enemy,vel X*20 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101]), 450 + facing*Enemy,facing*Enemy,vel X*20 + (floor(vel X /-fvar(20))*vel X/2)*(stateno = [100,101])]
trigger1 = Enemy,pos X + Enemy,facing*Enemy,vel X*20 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger1 = Enemy,pos Y + Enemy,vel Y*20 + 200*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-160,-1]
trigger2 = Enemy,pos X + Enemy,facing*Enemy,vel X*21  - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger2 = Enemy,pos Y + Enemy,vel Y*21 + 220.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-160,-1]
trigger3 = Enemy,pos X + Enemy,facing*Enemy,vel X*22 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger3 = Enemy,pos Y + Enemy,vel Y*22 + 242*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-160,-1]
trigger4 = Enemy,pos X + Enemy,facing*Enemy,vel X*23 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger4 = Enemy,pos Y + Enemy,vel Y*23 + 264.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-160,-1]
trigger5 = Enemy,pos X + Enemy,facing*Enemy,vel X*24 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger5 = Enemy,pos Y + Enemy,vel Y*24 + 288*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger6 = Enemy,pos X + Enemy,facing*Enemy,vel X*25 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger6 = Enemy,pos Y + Enemy,vel Y*25 + 312.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger7 = Enemy,pos X + Enemy,facing*Enemy,vel X*26 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger7 = Enemy,pos Y + Enemy,vel Y*26 + 338*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger8 = Enemy,pos X + Enemy,facing*Enemy,vel X*27 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger8 = Enemy,pos Y + Enemy,vel Y*27+ 364.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger9 = Enemy,pos X + Enemy,facing*Enemy,vel X*28 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger9 = Enemy,pos Y + Enemy,vel Y*28 + 392*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger10 = Enemy,pos X + Enemy,facing*Enemy,vel X*29 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger10 = Enemy,pos Y + Enemy,vel Y*29 + 420.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger11= Enemy,pos X + Enemy,facing*Enemy,vel X*30 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger11 = Enemy,pos Y + Enemy,vel Y*30 + 450*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger12 = Enemy,pos X + Enemy,facing*Enemy,vel X*31 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger12 = Enemy,pos Y + Enemy,vel Y*31 + 480.5*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
trigger13 = Enemy,pos X + Enemy,facing*Enemy,vel X*32 - helper(8020),pos X = [-200 - Enemy,const(size.ground.back),200 + Enemy,const(size.ground.front)]
trigger13 = Enemy,pos Y + Enemy,vel Y*32 + 512*Enemy,const(movement.yaccel)*!(Enemy,vel Y = 0) = [-360,-1]
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 7300
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && power >= 2000 && alive
triggerall = stateno = 5000 || stateno = 5010
triggerall = !hitshakeover
triggerall = MoveType = H && HitFall = 0
triggerall = EnemyNear,HitDefAttr = SCA,NA,SA || ((EnemyNear,movehit||Enemynear,hitpausetime) && p2stateno < 2000 && p2stateno%100=75)
triggerall = fVar(7) >= 1
triggerall = p2bodydist X = [-110,110]
triggerall = Enemy,AnimTime < -20
triggerall = var(57) - 600*life/lifemax - 200*(1-1.0*Enemy,power/Enemy,powermax) - 50*gethitvar(damage)/lifemax  - 150*gethitvar(hitcount)/15 > 300
trigger1 = StateType = S
trigger2 = StateType = C
ignorehitpause = 1

[State -1, Helper]
type = Helper 
triggerall = NumHelper(7205) = 0 & NumHelper(7206) = 0
triggerall = AIlevel && roundstate = 2 && !ishelper && statetype != A && power >= 1000 && alive 
triggerall = fVar(7) >= 1
triggerall = EnemyNear,hitpausetime
triggerall = p2statetype != A
triggerall = EnemyNear,stateno < 2000 && EnemyNear,stateno%100 != 75
triggerall = gethitvar(ctrltime) > 13
triggerall = var(57)%7 - 3*(var(18)<power) - 2*life/lifemax
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch"
ID = 7206
stateno = 7205
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 615
triggerall = !var(50)
triggerall = AIlevel   && roundstate = 2 && !ishelper && statetype = A
triggerall = stateno = 7015 || stateno = 7200 || stateno = 7315 || stateno = 7415
triggerall = time = 7
trigger1 = ctrl
ignorehitpause = 1
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[State -1]
type = ChangeState
value = 100
triggerall = AIlevel && roundstate = 2 && !ishelper
triggerall = statetype != A
triggerall = stateno = [200,420]
trigger1 =  var(29)
ignorehitpause = 1