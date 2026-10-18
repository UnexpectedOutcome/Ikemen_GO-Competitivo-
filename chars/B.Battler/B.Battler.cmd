;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
a = b
b = x
c = y
x = a
y = c
z = z
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
name = "2626a+b"
command = ~D,DF,F,D,DF,F,b
time = 30

[Command]
name = "2626a+b"
command = ~D,DF,F,D,DF,F,x+a
time = 30

[Command]
name = "2626c"
command = ~D,DF,F,D,DF,F,y
time = 30

[Command]
name = "2626b"
command = ~D,DF,F,D,DF,F,a
time = 30

[Command]
name = "2626a"
command = ~D,DF,F,D,DF,F,x
time = 30

[Command]
name = "6426c"
command = ~F,B,D,DF,F,y
time = 30

[Command]
name = "6426c"
command = ~F,B,DB,D,DF,y
time = 30

[Command]
name = "6426b"
command = ~F,B,D,DF,F,a
time = 30

[Command]
name = "6426b"
command = ~F,B,DB,D,DF,a
time = 30

[Command]
name = "6426a"
command = ~F,B,D,DF,F,x
time = 30

[Command]
name = "6426a"
command = ~F,B,DB,D,DF,x
time = 30

[Command]
name = "26e"
command = ~D,DF,F,c
time = 15

[Command]
name = "Meta"
command = z

[Command]
name = "Meta"
command = x+y+a



;-| Special Motions |------------------------------------------------------

[Command]
name = "426a+b"
command = ~B,D,DF,F,x+a

[Command]
name = "426a+b"
command = ~B,D,DF,F,b

[Command]
name = "426c"
command = ~B,D,DF,F,y

[Command]
name = "426b"
command = ~B,D,DF,F,a

[Command]
name = "426a"
command = ~B,D,DF,F,x

[Command]
name = "624a+b"
command = ~F,D,DB,B,x+a

[Command]
name = "624a+b"
command = ~F,D,DB,B,b

[Command]
name = "624c"
command = ~F,D,DB,B,y

[Command]
name = "624b"
command = ~F,D,DB,B,a

[Command]
name = "624a"
command = ~F,D,DB,B,x

[Command]
name = "421a+b"
command = ~B,D,DB,b

[Command]
name = "421a+b"
command = ~B,D,DB,x+a

[Command]
name = "421c"
command = ~B,D,DB,y

[Command]
name = "421b"
command = ~B,D,DB,a

[Command]
name = "421a"
command = ~B,D,DB,x

[Command]
name = "623a+b"
command = ~F,D,DF,b

[Command]
name = "623a+b"
command = ~F,D,DF,x+a

[Command]
name = "623c"
command = ~F,D,DF,y

[Command]
name = "623b"
command = ~F,D,DF,a

[Command]
name = "623a"
command = ~F,D,DF,x

[Command]
name = "24a+b"
command = ~D, DB, B, b

[Command]
name = "24a+b"
command = ~D, DB, B, x+a

[Command]
name = "24c"
command = ~D, DB, B, y

[Command]
name = "24b"
command = ~D, DB, B, a

[Command]
name = "24a"
command = ~D, DB, B, x

[Command]
name = "26a+b"
command = ~D, DF, F, b

[Command]
name = "26a+b"
command = ~D, DF, F, x+a

[Command]
name = "26a"
command = ~D, DF, F, x

[Command]
name = "26b"
command = ~D, DF, F, a

[Command]
name = "26c"
command = ~D, DF, F, y

[Command]
name = "22a+b"
command = ~D, D, b

[Command]
name = "22a+b"
command = ~D, D, x+a

[Command]
name = "22c"
command = ~D, D, y

[Command]
name = "22b"
command = ~D, D, a

[Command]
name = "22a"
command = ~D, D, x

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "FF2"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

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
command = y+a
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
name = "F";Required (do not remove)
command = F
time = 1

[Command]
name = "B";Required (do not remove)
command = B
time = 1

[Command]
name = "U" ;Required (do not remove)
command = U
time = 1

[Command]
name = "D";Required (do not remove)
command = D
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

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) = 0 & (command = "6426c" || Var(40) = 7600) & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = stateno = 7560 & animelemtime(17) >= 1

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) = 0 & (command = "6426c" || Var(40) = 7600) & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(48) = 1
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(11) >= 1
trigger14 = stateno = 1226 && animelemtime(19) >= 1
trigger15 = stateno = 1251 && animelemtime(21) >= 1
trigger16 = stateno = 1075 && animelemtime(23) >= 1
trigger17 = stateno = 1175 && animelemtime(6) >= 1
trigger18 = stateno = 1176 && animelemtime(1) >= 1
trigger19 = stateno = 1280 && animelemtime(17) >= 4
trigger20 = stateno = 2011 && animelemtime(5) >= 5

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) = 0 & (command = "2626c" || Var(40) = 2000) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 2000) & NumHelper(2050) = 0
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 2000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) = 0 & (command = "2626c" || Var(40) = 2000) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 2000) & NumHelper(2050) = 0
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 2000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) = 0 & (command = "2626c" || Var(40) = 2000) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 2000) & NumHelper(2050) = 0 & Var(48) = 1
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 2000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) = 0 & (command = "2626c" || Var(40) = 2000) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 2000) & NumHelper(2050) = 0 & Var(48) = 1
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 2000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) = 0 & (command = "24a+b" || Var(40) = 1275) & statetype = A & (NumHelper(9101) > 0 || Var(18) >= 1000)
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger2 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger5 = (MoveContact || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger6 = (MoveContact || Var(29) = 3) & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveContact || Var(29) = 3) & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger8 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger11 = (MoveContact || Var(29) = 3) & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) = 0 & (command = "24a+b" || Var(40) = 1275) & statetype = A & (NumHelper(9175) > 0 || Var(18) >= 1000)
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger2 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger5 = (MoveContact || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger6 = (MoveContact || Var(29) = 3) & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveContact || Var(29) = 3) & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger8 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger11 = (MoveContact || Var(29) = 3) & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 1350
triggerall = Var(59) = 0 & (command = "24c" || Var(40) = 1250) & statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger2 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger5 = (MoveContact || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger6 = (MoveContact || Var(29) = 3) & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveContact || Var(29) = 3) & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger8 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger11 = (MoveContact || Var(29) = 3) & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 1325
triggerall = Var(59) = 0 & (command = "24b" || Var(40) = 1225) & statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger2 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger5 = (MoveContact || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger6 = (MoveContact || Var(29) = 3) & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveContact || Var(29) = 3) & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger8 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger11 = (MoveContact || Var(29) = 3) & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 1300
triggerall = Var(59) = 0 & (command = "24a" || Var(40) = 1200) & statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger2 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger5 = (MoveContact || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger6 = (MoveContact || Var(29) = 3) & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveContact || Var(29) = 3) & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger8 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger11 = (MoveContact || Var(29) = 3) & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) = 0 & (command = "24a+b" || Var(40) = 1275) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 1000) & Var(48) = 1
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) = 0 & (command = "24a+b" || Var(40) = 1275) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 1000) & Var(48) = 1
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) = 0 & (command = "24a+b" || Var(40) = 1275) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 1000)
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) = 0 & (command = "24a+b" || Var(40) = 1275) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 1000)
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1250
triggerall = Var(59) = 0 & (command = "24c" || Var(40) = 1250) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1225
triggerall = Var(59) = 0 & (command = "24b" || Var(40) = 1225) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) = 0 & (command = "24a" || Var(40) = 1200) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) = 0 & (command = "623a+b" || Var(40) = 1175) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 1000)
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) = 0 & (command = "623a+b" || Var(40) = 1175) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 1000)
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) = 0 & (command = "623a+b" || Var(40) = 1175) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 1000) & Var(48) = 1
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) = 0 & (command = "623a+b" || Var(40) = 1175) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 1000) & Var(48) = 1
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) = 0 & (command = "623c" || Var(40) = 1150) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1125
triggerall = Var(59) = 0 & (command = "623b" || Var(40) = 1125) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1100
triggerall = Var(59) = 0 & (command = "623a" || Var(40) = 1100) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0


[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) = 0 & (command = "26a+b" || Var(40) = 1075) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 1000)
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
triggerall = numhelper(8050) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0


[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) = 0 & (command = "26a+b" || Var(40) = 1075) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 1000)
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
triggerall = numhelper(8050) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) = 0 & (command = "26a+b" || Var(40) = 1075) & statetype != A & (NumHelper(9101) > 0 || Var(18) >= 1000) & Var(48) = 1
triggerall = Helper(9101),Var(19) = 1 || Var(18) >= 1000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) = 0 & (command = "26a+b" || Var(40) = 1075) & statetype != A & (NumHelper(9175) > 0 || Var(18) >= 1000) & Var(48) = 1
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1050
triggerall = Var(59) = 0 & (command = "26c" || Var(40) = 1050) & statetype != A
triggerall = numhelper(8020) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1025
triggerall = Var(59) = 0 & (command = "26b" || Var(40) = 1025) & statetype != A
triggerall = numhelper(8020) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1000
triggerall = Var(59) = 0 & (command = "26a" || Var(40) = 1000) & statetype != A
triggerall = numhelper(8020) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0


;===========================================================================

[State -1]
type = ChangeState
value = 800
triggerall = Var(59) = 0 & (command = "BC" || Var(40) = 800) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))

[State -1]
type = ChangeState
value = 600
triggerall = Var(59) = 0 & command = "x" & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl

[State -1]
type = ChangeState
value = 605
triggerall = Var(59) = 0 & command = "x" & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger2 = StateNo = 5210 & Vel X != 0
trigger2 = ctrl

[State -1]
type = ChangeState
value = 611
triggerall = Var(59) = 0 & command = "a" & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 610
triggerall = Var(59) = 0 & command = "a" & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0

[State -1]
type = ChangeState
value = 616
triggerall = Var(59) = 0 & command = "a" & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2

[State -1]
type = ChangeState
value = 615
triggerall = Var(59) = 0 & command = "a" & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger2 = StateNo = 5210 & Vel X != 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 

[State -1]
type = ChangeState
value = 630
triggerall = Var(59) = 0 & command = "y" & command = "holddown" & statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 600 
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605 
trigger4 = (MoveContact || Var(29) = 3) & stateno = 610 
trigger5 = (MoveContact || Var(29) = 3) & stateno = 615 

[State -1]
type = ChangeState
value = 621
triggerall = Var(59) = 0 & command = "y" & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 610 

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) = 0 & command = "y" & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) & stateno = 600 

[State -1]
type = ChangeState
value = 626
triggerall = Var(59) = 0 & command = "y" & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 615 

[State -1]
type = ChangeState
value = 625
triggerall = Var(59) = 0 & command = "y" & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger2 = StateNo = 5210 & Vel X != 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) & stateno = 605

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) = 0 & ((command = "x" & command = "holddown") || Var(40) = 400) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-35,35]),205,200)
triggerall = Var(59) = 0 & ((command = "x" & command != "holddown") || Var(40) = 200) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 431
triggerall = Var(59) = 0 & command = "a" & command = "holddown" & command = "holdfwd" & statetype != A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger3 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) = 0 & ((command = "a" & command = "holddown" & command = "holdfwd") || Var(40) = 430) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 231
triggerall = Var(59) = 0 & command = "a" & command != "holddown" & command = "holdfwd" & statetype != A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = 230
triggerall = Var(59) = 0 & ((command = "a" & command != "holddown" & command = "holdfwd") || Var(40) = 230) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 411
triggerall = Var(59) = 0 & command = "a" & command = "holddown" & statetype != A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger3 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) = 0 & ((command = "a" & command = "holddown") || Var(40) = 410) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0


[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),216,211)
triggerall = Var(59) = 0 & command = "a" & command != "holddown" & statetype != A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3


[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) = 0 & ((command = "a" & command != "holddown") || Var(40) = 210) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 240
triggerall = Var(59) = 0 & ((command = "y" & command != "holddown" & command = "holdfwd") || Var(40) = 240) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = 420
triggerall = Var(59) = 0 & ((command = "y" & command = "holddown") || Var(40) = 420) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = Var(59) = 0 & ((command = "y" & command != "holddown") || Var(40) = 220) & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger14 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

;===========================================================================
[State -1]
type = ChangeState
value = 40
triggerall = Var(59) = 0 & (command = "holdup" || Var(40) = 40) & statetype != A & p2statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger2 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger3 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger4 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger10 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger11 = (StateNo = 7560 ||PrevStateNo = 7560) & Ctrl

[State -1]
type = ChangeState
value = 45
triggerall = Var(59) = 0 & command = "holdup" & statetype = A & Var(31) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 600 
trigger2 = (MoveContact || Var(29) = 3) & stateno = 605 
trigger3 = (MoveContact || Var(29) = 3) & stateno = 610 
trigger4 = (MoveContact || Var(29) = 3) & stateno = 611
trigger5 = (MoveContact || Var(29) = 3) & stateno = 615 
trigger6 = (MoveContact || Var(29) = 3) & stateno = 616
trigger7 = (MoveContact || Var(29) = 3) & stateno = 620 
trigger8 = (MoveContact || Var(29) = 3) & stateno = 621 
trigger9 = (MoveContact || Var(29) = 3) & stateno = 625 
trigger10 = (MoveContact || Var(29) = 3) & stateno = 626 
trigger11 = (MoveContact || Var(29) = 3) & stateno = 630 

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) = 0 & (command = "FF" || Var(40) = 100) & statetype != A
trigger1 = 0
trigger2 = Var(29) = 3 & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = Var(29) = 3 & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = Var(29) = 3 & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = Var(29) = 3 & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = Var(29) = 3 & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = Var(29) = 3 & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = Var(29) = 3 & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = Var(29) = 3 & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = Var(29) = 3 & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = Var(29) = 3 & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = Var(29) = 3 & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = Var(29) = 3 & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = Var(29) = 3 & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = Var(29) = 3 & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = Var(29) = 3 & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = Var(29) = 3 & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = Var(29) = 3 & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4
trigger19 = Var(29) = 3 & stateno = 1100 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger20 = Var(29) = 3 & stateno = 1125 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger21 = Var(29) = 3 & stateno = 1150 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger22 = Var(29) = 3 & stateno = 1200 && animelemtime(4) >= 1 && animelemtime(19) <= 1
trigger23 = Var(29) = 3 & stateno = 1225 && animelemtime(4) >= 1 && animelemtime(21) <= 1
trigger24 = Var(29) = 3 & stateno = 1250 && animelemtime(4) >= 1 && animelemtime(23) <= 1
trigger25 = Var(29) = 3 & stateno = 1175 && animelemtime(6) >= 1 && animelemtime(10) <= 3
trigger26 = Var(29) = 3 & stateno = 1176 && animelemtime(1) >= 1
trigger27 = Var(29) = 3 & stateno = 1201 && animelemtime(4) >= 1 && animelemtime(19) <= 1
trigger28 = Var(29) = 3 & stateno = 1226 && animelemtime(4) >= 1 && animelemtime(21) <= 1
trigger29 = Var(29) = 3 & stateno = 1251 && animelemtime(4) >= 1 && animelemtime(23) <= 1

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = Var(59) = 0 & (command = "FF" || Var(40) = 100)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(59) = 0 & command = "FF2"
trigger2 = MoveContact & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5
trigger2 = Var(5) >= 1000
trigger3 = Var(59) = 0 & command = "FF2"
trigger3 = MoveContact & stateno = 225 && animelemtime(3) >= 0 && animelemtime(4) <= 8
trigger3 = Var(5) >= 1000

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = Var(31) > 0
triggerall = Var(59) = 0 & command = "FF" & statetype = A & Pos Y <= -70
trigger1 = ctrl 
trigger2 = stateno = 115 || stateno = 116

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = Var(59) = 0 & (command = "BB" || Var(40) = 105)
trigger1 = statetype = S
trigger1 = ctrl || stateno = 101 || stateno = 106

;Run Back
[State -1, Run Back]
type = ChangeState
value = 115
triggerall = Var(31) > 0
triggerall = Var(59) = 0 & command = "BB" & statetype = A & Pos Y <= -70
trigger1 = ctrl 
trigger2 = stateno = 110 || stateno = 111

[State -1]
type = ChangeState
value = 195
triggerall = Var(59) = 0 & command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 7300
triggerall = Var(59) = 0 & command = "c" & Power >= 2000 & alive
triggerall = (stateno = 5000 || (stateno = 5001 & Time < 2) || stateno = 5010 || (stateno = 5011 & Time < 2)) & (Anim = [5000,5029])
triggerall = MoveType = H & HitFall = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) = 0 & command = "c" & NumHelper(9101) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9101),Var(14) = 1
trigger2 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9101),Var(14) = 1
trigger3 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger5 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 1
trigger6 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 1
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger8 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger9 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9101),Var(14) = 1
trigger10 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 1
trigger11 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 1
trigger12 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 1
trigger13 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9101),Var(14) = 1
trigger14 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 1
trigger15 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 1
trigger16 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9101),Var(14) = 1
trigger17 = (MoveContact || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9101),Var(14) = 1

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) = 0 & command = "c" & NumHelper(9175) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9175),Var(14) = 1
trigger2 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9175),Var(14) = 1
trigger3 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger4 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger5 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 1
trigger6 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 1
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger8 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger9 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9175),Var(14) = 1
trigger10 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 1
trigger11 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 1
trigger12 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 1
trigger13 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9175),Var(14) = 1
trigger14 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 1
trigger15 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 1
trigger16 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9175),Var(14) = 1
trigger17 = (MoveContact || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 1

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) = 0 & command = "c" & Var(5) >= 1000 & NumHelper(9101) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9101),Var(14) = 0
trigger2 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9101),Var(14) = 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger5 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 0
trigger6 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 0
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger8 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9101),Var(14) = 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 0
trigger13 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9101),Var(14) = 0
trigger14 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 0
trigger15 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 0
trigger16 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9101),Var(14) = 0
trigger17 = (MoveContact || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9101),Var(14) = 0

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) = 0 & command = "c" & Var(5) >= 1000 & NumHelper(9175) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9175),Var(14) = 0
trigger2 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9175),Var(14) = 0
trigger3 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger4 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger5 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 0
trigger6 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 0
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger8 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger9 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9175),Var(14) = 0
trigger10 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 0
trigger11 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 0
trigger12 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 0
trigger13 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9175),Var(14) = 0
trigger14 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 0
trigger15 = (MoveContact || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 0
trigger16 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9175),Var(14) = 0
trigger17 = (MoveContact || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 0

[State -1, Helper]
type = Helper
triggerall = NumHelper(7206) = 0
triggerall = Var(59) = 0 & command = "c" & command = "holdfwd" & Var(5) >= 1000 & Power >= 1000
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = !HitShakeOver || Time = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch2"
ID = 7206
stateno = 7206
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

[State -1, Helper]
type = Helper 
triggerall = NumHelper(7205) = 0 & NumHelper(7206) = 0
triggerall = Var(59) = 0 & command = "c" & command != "holdfwd" & Var(5) >= 1000 & Power >= 1000
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = !HitShakeOver || Time = 1
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

[State -1]
type = ChangeState
value = 7400
triggerall = Var(59) = 0 & (command = "26e" || Var(40) = 7400) & Power >= 2000 & statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger1 = Var(5) >= 1000

[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = Var(59) = 0 & command = "Meta" & Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = MoveContact & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = MoveContact & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveContact & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = MoveContact & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = MoveContact & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = MoveContact & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = MoveContact & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveContact & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = MoveContact & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = MoveContact & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = MoveContact & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = MoveContact & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = MoveContact & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4

[State -1]
type = ChangeState
value = 7000
triggerall = Var(59) = 0 & command = "c" & statetype != A & Var(5) >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))

; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ;
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================


[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) != [12, 49]
triggerall = EnemyNear(Var(50)),StateNo >= 200
trigger1 = Helper(9190),FVar(11) = 0
v = 54 
value = 0
ignorehitpause = 1

;反擊距離
;通用
[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=12 & Var(12) !=22 & Var(12) !=32 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = EnemyNear(Var(50)),Time <= Helper(9190),FVar(11)
;triggerall = P2Dist Y = [Helper(9190),FVar(13), -10]
;triggerall = P2Dist X = [0, Helper(9190),FVar(12)+20]
trigger1 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(6)
trigger2 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(7)
trigger3 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(8)
trigger4 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(9)
trigger5 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(10)
trigger6 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(6)
trigger7 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(7)
trigger8 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(8)
trigger9 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(9)
trigger10 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(10)
v = 54 
value = 1000
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0 & Helper(9190),FVar(13) != 0
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=12 & Var(12) !=22 & Var(12) !=32 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = EnemyNear(Var(50)),Time > Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(6)
trigger2 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(7)
trigger3 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(8)
trigger4 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(9)
trigger5 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(10)
trigger6 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(6)
trigger7 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(7)
trigger8 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(8)
trigger9 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(9)
trigger10 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(10)
v = 54 
value = 1010
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType != C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = EnemyNear(Var(50)),Time <= Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(23)
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType != C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = EnemyNear(Var(50)),Time <= Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(23)
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType != C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = EnemyNear(Var(50)),Time > Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(23)
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType != C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = EnemyNear(Var(50)),Time > Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(23)
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType = C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0
triggerall = EnemyNear(Var(50)),Time <= Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(23)
v = 54 
value = 1050
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType = C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0
triggerall = EnemyNear(Var(50)),Time <= Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(23)
v = 54 
value = 1050
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType = C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = EnemyNear(Var(50)),Time > Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9180),Var(23)
v = 54 
value = 1060
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Helper(9190),FVar(10) > 0 & Helper(9190),FVar(11) > 0
triggerall = Facing != EnemyNear(Var(50)),Facing & EnemyNear(Var(50)),StateType = C & EnemyNear(Var(50)),StateNo > 199
triggerall = Var(12) !=11 & Var(12) !=21 & Var(12) !=31 & Var(12) !=13 & Var(12) !=23 & Var(12) !=33 & Var(12) != [40, 49]
triggerall = EnemyNear(Var(50)),Time > Helper(9190),FVar(11)
trigger1 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger1 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(11)
trigger2 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(12)
trigger3 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger3 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(13)
trigger4 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger4 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(14)
trigger5 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger5 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(15)
trigger6 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger6 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(16)
trigger7 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger7 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(17)
trigger8 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger8 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(18)
trigger9 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger9 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(19)
trigger10 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger10 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(20)
trigger11 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger11 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(21)
trigger12 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger12 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(22)
trigger13 = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
trigger13 = EnemyNear(Var(50)),StateNo = Helper(9185),Var(23)
v = 54 
value = 1060
ignorehitpause = 1

;要被抓了
[State -1, VarSet]
type = VarSet
triggerall = Var(54) = 0 || Var(54) = 801
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
triggerall = Helper(9190),FVar(17) = 1 || EnemyNear(Var(50)),StateNo = [0, 100]
trigger1 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(24))]) & Helper(9180),Fvar(24) > 0
trigger1 = 1000*(Helper(9180),Fvar(24)-Floor(Helper(9180),Fvar(24))) > 2
trigger2 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(25))]) & Helper(9180),Fvar(25) > 0
trigger2 = 1000*(Helper(9180),Fvar(25)-Floor(Helper(9180),Fvar(25))) > 2
trigger3 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(26))]) & Helper(9180),Fvar(26) > 0
trigger3 = 1000*(Helper(9180),Fvar(26)-Floor(Helper(9180),Fvar(26))) > 2
trigger4 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(27))]) & Helper(9180),Fvar(27) > 0
trigger4 = 1000*(Helper(9180),Fvar(27)-Floor(Helper(9180),Fvar(27))) > 2
trigger5 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(28))]) & Helper(9180),Fvar(28) > 0
trigger5 = 1000*(Helper(9180),Fvar(28)-Floor(Helper(9180),Fvar(28))) > 2
trigger6 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(29))]) & Helper(9180),Fvar(29) > 0
trigger6 = 1000*(Helper(9180),Fvar(29)-Floor(Helper(9180),Fvar(29))) > 2
v = 54
value = 800

[State -1, VarSet]
type = VarSet
triggerall = Var(54) = 0 || Var(54) = 801
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
triggerall = Helper(9190),FVar(17) = 1 || EnemyNear(Var(50)),StateNo = [0, 100]
trigger1 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(24))]) & Helper(9185),Fvar(24) > 0
trigger1 = 1000*(Helper(9185),Fvar(24)-Floor(Helper(9185),Fvar(24))) > 2
trigger2 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(25))]) & Helper(9185),Fvar(25) > 0
trigger2 = 1000*(Helper(9185),Fvar(25)-Floor(Helper(9185),Fvar(25))) > 2
trigger3 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(26))]) & Helper(9185),Fvar(26) > 0
trigger3 = 1000*(Helper(9185),Fvar(26)-Floor(Helper(9185),Fvar(26))) > 2
trigger4 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(27))]) & Helper(9185),Fvar(27) > 0
trigger4 = 1000*(Helper(9185),Fvar(27)-Floor(Helper(9185),Fvar(27))) > 2
trigger5 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(28))]) & Helper(9185),Fvar(28) > 0
trigger5 = 1000*(Helper(9185),Fvar(28)-Floor(Helper(9185),Fvar(28))) > 2
trigger6 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(29))]) & Helper(9185),Fvar(29) > 0
trigger6 = 1000*(Helper(9185),Fvar(29)-Floor(Helper(9185),Fvar(29))) > 2
v = 54
value = 800

;1F
[State -1, VarSet]
type = VarSet
triggerall = Var(54) = 0 || Var(54) = 800
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = EnemyNear(Var(50)),ID = Helper(9180),Var(59)
triggerall = Helper(9190),FVar(17) = 1 || EnemyNear(Var(50)),StateNo = [0, 100]
trigger1 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(24))]) & Helper(9180),Fvar(24) > 0
trigger1 = 1000*(Helper(9180),Fvar(24)-Floor(Helper(9180),Fvar(24))) = [1,2]
trigger2 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(25))]) & Helper(9180),Fvar(25) > 0
trigger2 = 1000*(Helper(9180),Fvar(25)-Floor(Helper(9180),Fvar(25))) = [1,2]
trigger3 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(26))]) & Helper(9180),Fvar(26) > 0
trigger3 = 1000*(Helper(9180),Fvar(26)-Floor(Helper(9180),Fvar(26))) = [1,2]
trigger4 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(27))]) & Helper(9180),Fvar(27) > 0
trigger4 = 1000*(Helper(9180),Fvar(27)-Floor(Helper(9180),Fvar(27))) = [1,2]
trigger5 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(28))]) & Helper(9180),Fvar(28) > 0
trigger5 = 1000*(Helper(9180),Fvar(28)-Floor(Helper(9180),Fvar(28))) = [1,2]
trigger6 = (P2Dist X = [-10, 5+Floor(Helper(9180),Fvar(29))]) & Helper(9180),Fvar(29) > 0
trigger6 = 1000*(Helper(9180),Fvar(29)-Floor(Helper(9180),Fvar(29))) = [1,2]
v = 54
value = 801

[State -1, VarSet]
type = VarSet
triggerall = Var(54) = 0 || Var(54) = 800
triggerall = NumHelper(9190) > 0 & NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = EnemyNear(Var(50)),ID = Helper(9185),Var(59)
triggerall = Helper(9190),FVar(17) = 1 || EnemyNear(Var(50)),StateNo = [0, 100]
trigger1 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(24))]) & Helper(9185),Fvar(24) > 0
trigger1 = 1000*(Helper(9185),Fvar(24)-Floor(Helper(9185),Fvar(24))) = [1,2]
trigger2 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(25))]) & Helper(9185),Fvar(25) > 0
trigger2 = 1000*(Helper(9185),Fvar(25)-Floor(Helper(9185),Fvar(25))) = [1,2]
trigger3 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(26))]) & Helper(9185),Fvar(26) > 0
trigger3 = 1000*(Helper(9185),Fvar(26)-Floor(Helper(9185),Fvar(26))) = [1,2]
trigger4 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(27))]) & Helper(9185),Fvar(27) > 0
trigger4 = 1000*(Helper(9185),Fvar(27)-Floor(Helper(9185),Fvar(27))) = [1,2]
trigger5 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(28))]) & Helper(9185),Fvar(28) > 0
trigger5 = 1000*(Helper(9185),Fvar(28)-Floor(Helper(9185),Fvar(28))) = [1,2]
trigger6 = (P2Dist X = [-10, 5+Floor(Helper(9185),Fvar(29))]) & Helper(9185),Fvar(29) > 0
trigger6 = 1000*(Helper(9185),Fvar(29)-Floor(Helper(9185),Fvar(29))) = [1,2]
v = 54
value = 801

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(54) = 800 || Var(54) = 801
triggerall = EnemyNear(Var(50)),ID = Helper(9180),Var(59) & EnemyNear(Var(50)),ID != Helper(9185),Var(59)
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(24))]) & Helper(9180),Fvar(24) > 0
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(25))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(26))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(27))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(28))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(29))])
trigger2 = EnemyNear(Var(50)),StateNo != [0, 100]
trigger2 = Helper(9190),FVar(17) = 0
v = 54
value = 0

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(54) = 800 || Var(54) = 801
triggerall = EnemyNear(Var(50)),ID = Helper(9185),Var(59) & EnemyNear(Var(50)),ID != Helper(9180),Var(59)
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(24))]) & Helper(9185),Fvar(24) > 0
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(25))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(26))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(27))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(28))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(29))])
trigger2 = EnemyNear(Var(50)),StateNo != [0, 100]
trigger2 = Helper(9190),FVar(17) = 0
v = 54
value = 0

[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(54) = 800 || Var(54) = 801 
triggerall = EnemyNear(Var(50)),ID = Helper(9180),Var(59) & EnemyNear(Var(50)),ID = Helper(9185),Var(59)
triggerall = P2MoveType != A
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(24))]) & Helper(9180),Fvar(24) > 0
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(25))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(26))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(27))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(28))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9180),Fvar(29))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(24))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(25))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(26))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(27))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(28))])
trigger1 = (P2Dist X != [-10, 5+Floor(Helper(9185),Fvar(29))])
trigger2 = EnemyNear(Var(50)),StateNo != [0, 100]
trigger2 = Helper(9190),FVar(17) = 0
v = 54
value = 0

;特殊
[State -1, VarSet]
type = VarSet
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(7) = 100 || Var(7) = 115
trigger1 = EnemyNear(Var(50)),StateNo = 7600 & EnemyNear(Var(50)),NumHelper(8480) = 0 & EnemyNear(Var(50)),AnimElem = 25
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = EnemyNear(Var(50)),StateNo = [1000,1002]
v = 54 
value = 1
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = EnemyNear(Var(50)),StateNo = [1025,1027]
v = 54 
value = 2
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = EnemyNear(Var(50)),StateNo = [1050,1052]
v = 54 
value = 3
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = EnemyNear(Var(50)),StateNo = [1075,1078]
v = 54 
value = 4
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(54) = [1, 4]
trigger1 = EnemyNear(Var(50)),StateNo != [1000,1002]
trigger1 = EnemyNear(Var(50)),StateNo != [1025,1078]
trigger1 = EnemyNear(Var(50)),StateNo != [1050,1052]
trigger1 = EnemyNear(Var(50)),StateNo != [1075,1078]
v = 54 
value = 0
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
trigger1 = P2MoveType = H
v = 54 
value = 0
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(54) != 0 & Var(54) != 800 & Var(54) != 801 & Var(54) != [1, 4]
trigger1 = P2MoveType != A
v = 54 
value = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;                               在宣言判斷
;---------------------------------------------------------------------------

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & EnemyNear(Var(50)),Alive & NumHelper(9190) > 0
triggerall = Helper(9190),Var(39) = 0 || (Helper(9190),Var(39) = 1 & Var(57) > 0) || (Helper(9190),Var(39) = 2 & Var(57) > 0)
trigger1 = EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),StateType != A 
trigger1 = MoveType = A & MoveHit & StateNo = [200,699]
trigger2 = EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),StateType != A 
trigger2 = MoveType = A & (StateNo = 420 || StateNo = 240)
trigger3 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger3 = (Var(53) = [7, 21]) & Var(18) >= 2000+EnemyNear(Var(50)),Power 
trigger4 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger4 = (Var(53) = [7, 21]) & Var(18) >= 2000+EnemyNear(Var(50)),Var(18)
trigger5 = P2MoveType = A & (InGuardDist || (EnemyNear(Var(50)),PrevStateNo = [5000,5999]) || (EnemyNear(Var(50)),PrevStateNo = [120,152]))
trigger6 = (Var(54) = [1000,1060]) & P2BodyDist X < 333
v = 57
value = 1000
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & EnemyNear(Var(50)),Alive & Var(57) != -100
trigger1 = Var(53) = 1 & P2MoveType != A & PrevStateNo != 2010
v = 57
value = 200
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & EnemyNear(Var(50)),Alive & Var(57) != -100
trigger1 = Var(53) = 1 & P2MoveType = A & PrevStateNo != 2010
trigger2 = Var(53) = 1 & Helper(9180),Var(31) = [1,4]
v = 57
value = 500
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & EnemyNear(Var(50)),Alive & Var(57) < 300 & Var(57) != -100
trigger1 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger1 = (EnemyNear(Var(50)),Power > 0.4*Powermax & Var(18) < 3000) || (EnemyNear(Var(50)),Power <= 0.5*Powermax & Var(18) >= 3000)
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger2 = (EnemyNear(Var(50)),Var(18) > 2000 & Var(18) < 3000) || (EnemyNear(Var(50)),Var(18) <= 2000 & Var(18) >= 3000)
v = 57
value = 300
ignorehitpause = 1

;宣不贏
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & NumHelper(9190) > 0 & EnemyNear(Var(50)),Alive
triggerall = Helper(9190),Var(39) = 2
trigger1 = (Var(18) < 3000 & EnemyNear(Var(50)),Power >= 0.4*PowerMax) || (Var(18) < 5000 & EnemyNear(Var(50)),Power >= 0.8*PowerMax)
trigger1 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger2 = (Var(18) < 3000 & EnemyNear(Var(50)),Var(18) >= 2000) || (Var(18) < 5000 & EnemyNear(Var(50)),Var(18) >= 4000)
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
v = 57
value = -100
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & NumHelper(9190) > 0 & EnemyNear(Var(50)),Alive
triggerall = Helper(9190),Var(39) = 1
trigger1 = (Var(18) < 3000 & EnemyNear(Var(50)),Power >= 0.4*PowerMax) || (Var(18) < 5000 & EnemyNear(Var(50)),Power >= 0.8*PowerMax)
trigger1 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger2 = (Var(18) < 3000 & EnemyNear(Var(50)),Var(18) >= 2000) || (Var(18) < 5000 & EnemyNear(Var(50)),Var(18) >= 4000)
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
v = 57
value = -1
ignorehitpause = 1

;宣的贏
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & NumHelper(9190) > 0 & EnemyNear(Var(50)),Alive & Var(57) < 0
trigger1 = (Var(18) >= 1000 & EnemyNear(Var(50)),Power < 0.4*PowerMax) || (Var(18) >= 3000 & EnemyNear(Var(50)),Power < 0.8*PowerMax) || Var(18) >= 5000
trigger1 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger2 = (Var(18) >= 3000 & EnemyNear(Var(50)),Var(18) < 4000) || Var(18) >= 5000
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger3 = Helper(9190),Var(39) = 0
v = 57
value = 199
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & NumHelper(9190) > 0 & EnemyNear(Var(50)),Alive
trigger1 = (Var(18) >= 1000 & EnemyNear(Var(50)),Power < 0.4*PowerMax)
trigger1 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger2 = (Var(18) >= 1000 & EnemyNear(Var(50)),Var(18) < 2000)
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger3 = Var(57) = 0
v = 57
value = 1000
ignorehitpause = 1


;---------------------------------------------------------------------------
;                               情境模擬
;---------------------------------------------------------------------------
;帶入用一覽表
;1:=想放砲
;2:=AT連
;3:=起身不亂動
;4:=地板動作
;5:=GT125
;6:=1375
;7:=親子
;8:=打康空連
;9:=宣言平推
;11:=暈A
;12:=暈B
;13:=暈C
;14:=想爆霸?
;15:=1375分支
;16:=非原作連段
;17:=突襲連
;18:=跟你走
;19:=非原作連段2
;20:=惡意的揮空
;21:=1075後續
;22:=點跑抓
;23:=防卡用


;雙打情況
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 2 & MoveType = I & (Var(53) = 0 || Var(53) = 3)
trigger1 = NumPartner > 0
trigger1 = Partner,MoveType = A & P2MoveType = H
trigger1 = P2StateType = S || P2StateType = C
v = 53
value = 2

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3 & MoveType = I & (Var(53) = 0 || Var(53) = 3)
trigger1 = NumEnemy > 0
trigger1 = Partner,MoveType = A & P2MoveType = H
trigger1 = P2StateType = A & EnemyNear(Var(50)),Vel Y != 0
v = 53
value = IfElse((P2StateNo = [6090,6091]),1,8)

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 2 & MoveType = I & (Var(53) = 0 || Var(53) = 3)
trigger1 = NumPartner > 0
trigger1 = P2MoveType = H & Partner,Alive
trigger1 = P2StateType = A & EnemyNear(Var(50)),Vel Y = 0
v = 53 
value = 1
ignorehitpause = 1

;防卡用
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = StateNo = 100 || StateNo = [120,140]
trigger1 = NumEnemy = 1
trigger1 = EnemyNear(Var(50)),Alive = 0
trigger2 = NumEnemy = 2
trigger2 = Enemy(0),Alive = 0 & Enemy(1),Alive = 0
trigger3 = RoundState = 3
v = 53
value = 23
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 23
trigger1 = StateNo = 195
trigger2 = MoveType = H
v = 53
value = 0


;起身不亂動
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = Var(53) = 0
trigger1 = StateNo = 5120
trigger2 = EnemyNear(Var(50)),StateNo = 52
trigger3 = Helper(9190),Var(34) = 1
trigger4 = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque" & P2StateType != A
trigger4 = P2MoveType != H
v = 53
value = 3

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = Var(53) = 3
triggerall = P2StateNo != 52
triggerall = Helper(9190),Var(34) = 0
trigger1 = MoveType = A & P2MoveType = H
trigger2 = MoveType = H
trigger3 = StateNo > 99 & StateNo != 5120 & P2MoveType != A & Helper(9180),Var(31) = 0
trigger4 = StateType = A
trigger5 = ((StateNo = [0,19]) || (StateNo = [130,131])) & Var(56) = 0 & P2MoveType != H
trigger6 = EnemyNear(Var(50)),MoveType != H & (PrevStateNo = [10, 39]) & StateNo = [10, 39]
trigger7 = Anim = 21 & P2MoveType = I
trigger8 = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
trigger8 = P2MoveType = H || (P2StateType = A & P2StateNo < 1000)
trigger9 = Helper(9190),FVar(18) = 1
v = 53
value = 0

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = Var(53) = 3
trigger1 = StateNo = 7500
trigger2 = StateNo = [1100,1176]
v = 53
value = 0

;暈ABC
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = [11, 13]
trigger1 = EnemyNear(Var(50)),MoveType != H
trigger2 = (StateNo = [400, 430]) & MoveHit
v = 53 
value = 0
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 4
trigger1 = (P2StateNo = 5300 || (P2StateNo = 5120 & NumHelper(53010) > 0) || P2StateNo = 6121) & Var(7) = [100,120] 
trigger1 = P2BodyDist X <= 240
trigger2 = (P2StateNo = 5300 || (P2StateNo = 5120 & NumHelper(53010) > 0) || P2StateNo = 6121) & EnemyNear(Var(50)),Const(Size.head.pos.y) <= -212 & Helper(9190),Fvar(22) != -1
trigger2 = P2BodyDist X <= 240
v = 53 
value = 11
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 11
trigger1 = BackEdgeBodyDist <= 100
v = 53 
value = 12
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 4
trigger1 = (P2StateNo = 5300 || (P2StateNo = 5120 & NumHelper(53010) > 0) || P2StateNo = 6121) & Var(7) = [100,120] 
trigger1 = P2BodyDist X = [241, 350]
trigger2 = (P2StateNo = 5300 || (P2StateNo = 5120 & NumHelper(53010) > 0) || P2StateNo = 6121) & EnemyNear(Var(50)),Const(Size.head.pos.y) > -212 & Var(7) != [100,120] 
trigger2 = P2Dist X <= 350
trigger3 = (P2StateNo = 5300 || (P2StateNo = 5120 & NumHelper(53010) > 0) || P2StateNo = 6121) & Helper(9190),Fvar(22) = -1 & Var(7) != [100,120] 
trigger3 = P2Dist X <= 350
v = 53 
value = 12
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = Var(53) = 11
trigger1 = EnemyNear(Var(50)),StateNo = 5300 & StateNo = 52
trigger2 = Var(53) = 12
trigger2 = EnemyNear(Var(50)),StateNo = 5300 & StateNo = 52
trigger3 = StateNo = 616 & MoveHit
trigger3 = EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),StateType != A 
trigger3 = P2BodyDist X <= 240 
trigger4 = EnemyNear(Var(50)),Anim = 5300 & EnemyNear(Var(50)),StateNo != 5300 & Var(53) = 0
trigger4 = P2BodyDist X <= 240 
v = 53 
value = 13
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 4
trigger1 = EnemyNear(Var(50)),StateNo = 5300
trigger1 = P2Dist X > 380
trigger2 = (EnemyNear(Var(50)),StateNo = [5400, 5409]) & StateType != A
trigger2 = P2Dist X <= 380
trigger3 = EnemyNear(Var(50)),StateNo != 5300 & EnemyNear(Var(50)),Anim = 5300
trigger3 = P2Dist X <= 380
trigger4 = EnemyNear(Var(50)),StateNo = 5300 & EnemyNear(Var(50)),Time >= 50
trigger4 = P2Dist X <= 380
v = 53 
value = 13
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 11
trigger1 = StateNo = 625 & AnimElem = 5,>0 & Movecontact = 0
v = 53 
value = 13
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 11
trigger1 = StateNo = 616 & Movecontact
v = 53 
value = 2
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 12
trigger1 = StateNo = 620 & Movecontact
v = 53 
value = 2
ignorehitpause = 1

;想放砲
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(21) >= 800 & Var(53) = 0
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = Var(19) <= 3333 || (Var(19) > 3333 & Random <= 200)
triggerall = NumHelper(9190) > 0
triggerall = Helper(9190),Var(31) != -2
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1 & Helper(9190),Var(31) = 0
triggerall = P2BodyDist X >= 280 & EnemyNear(Var(50)),StateType != L
trigger1 = P2StateType = A & P2MoveType != H & !(EnemyNear(Var(50)),Vel Y = 0 & EnemyNear(Var(50)),Vel X = 0)
trigger2 = EnemyNear(Var(50)),StateType != A
trigger2 = EnemyNear(Var(50)),Vel X < 6
v = 53
value = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(21) >= 800 & Var(53) = 0
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = Var(19) <= 3333 || (Var(19) > 3333 & Random <= 200)
triggerall = NumHelper(9190) > 0
triggerall = Helper(9190),Var(31) != -2
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1 & Helper(9190),Var(31) = 0
trigger1 = PrevStateNo = 810 & P2BodyDist X > 110 & EnemyNear(Var(50)),BackEdgeBodyDist >= 60
trigger1 = P2StateType = A & P2StateNo = [5200,5210]
v = 53
value = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3 & Var(53) = 1
trigger1 = Var(21) <= 0
trigger2 = MoveType = H
trigger3 = StateNo = 1175
trigger4 = Var(39) = 6 || Helper(9190),Var(8) = 2
trigger4 = P2BodyDist X < 200 & P2MoveType != H
trigger5 = NumHelper(9190) > 0
trigger5 = Helper(9190),Var(31) = -2
v = 53
value = 0

;想爆霸
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 9
triggerall = EnemyNear(Var(50)),MoveType = A & (EnemyNear(Var(50)),PrevStateNo = [5000,5999]) & (EnemyNear(Var(50)),PrevStateNo != [5120,5121]) & EnemyNear(Var(50)),StateType != L
;triggerall = EnemyNear(Var(50)),HitDefAttr != SCA,NT,ST,HT,AT
trigger1 = StateNo = 7500 & PrevStateNo = [200,499]
trigger2 = StateNo = [150, 153]
v = 53
value = 14

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 9
triggerall = EnemyNear(Var(50)),MoveType = A & (EnemyNear(Var(50)),PrevStateNo = [150,153]) & EnemyNear(Var(50)),StateType != L
;triggerall = EnemyNear(Var(50)),HitDefAttr != SCA,NT,ST,HT,AT
trigger1 = StateNo = 7500 & PrevStateNo = [200,499]
trigger2 = StateNo = [150, 153]
v = 53
value = 14

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 9
triggerall = EnemyNear(Var(50)),MoveType = A
;triggerall = EnemyNear(Var(50)),HitDefAttr != SCA,NT,ST,HT,AT
triggerall = NumHelper(9190) > 0
triggerall = Helper(9190),FVar(23) > 0
trigger1 = StateNo = 7500 & PrevStateNo = [200,499]
v = 53
value = 14

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 || Var(53) = 9
triggerall = EnemyNear(Var(50)),MoveType = A
triggerall = EnemyNear(Var(50)),HitDefAttr != SCA,NT,ST,HT,AT
trigger1 = StateNo = 100 & Time < 2 & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
v = 53
value = 14

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 14
trigger1 = MoveType = H & StateNo != [120, 153]
trigger2 = P2MoveType = H
trigger3 = StateNo = 7550
trigger4 = P2StateNo < 200
v = 53
value = 0

;宣言平推
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0
trigger1 = StateNo = 7500 & PrevStateNo = [200,499]
trigger1 = P2MoveType != A
v = 53
value = 9

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 9
trigger1 = StateNo = 616 & Movecontact
trigger2 = StateNo = 620 & Movecontact
v = 53 
value = 2
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 9
trigger1 = MoveType = H
trigger2 = MoveType = A & StateType != A
trigger3 = P2StateType = A
trigger4 = P2MoveType = A
trigger5 = StateNo = 7550
trigger6 = StateNo = 1375
v = 53
value = 0

;突襲連
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = StateNo = 7400 & MoveHit
v = 53
value = 17

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 17
trigger1 = StateNo = 1150
trigger2 = EnemyNear(Var(50)),MoveType != H
trigger3 = MoveType = H
trigger4 = StateNo = 2000
v = 53
value = 0

;AT連

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = StateNo = 7100 & MoveContact
trigger2 = (StateNo = [600,699]) & MoveContact & Var(34) = 0 & Var(53) = 0
trigger2 = P2StateType != A & P2StateType != L
v = 53
value = 2

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
trigger1 = StateNo = 7100 & MoveContact
trigger2 = (StateNo = [600,699]) & MoveContact & Var(53) = 0
trigger2 = P2StateType != A & P2StateType != L
v = 53
value = 2

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 2
trigger1 = StateNo = [400, 499]
trigger2 = StateNo = [200, 299]
trigger3 = StateNo = 1375
trigger4 = EnemyNear(Var(50)),StateNo <= 100
v = 53
value = 0

;GT系列

[State -1, VarSet]
type = VarSet

triggerall = Var(59) >= 1
trigger1 = StateNo = 7200
trigger2 = EnemyNear(Var(50)),StateNo = 7290
trigger3 = EnemyNear(Var(50)),StateNo = 7291
v = 53
value = 5

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 5
trigger1 = StateNo = [400, 499]
trigger2 = StateNo = [200, 299]
trigger3 = StateNo = 1100
trigger4 = P2StateNo <= 100
trigger5 = P2StateType = A
v = 53
value = 0

;地板動作
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = Var(53) = 0
triggerall = EnemyNear(Var(50)),Alive
triggerall = (P2MoveType = H & P2StateType = A & FVar(5) = 1 || P2StateType = L)
triggerall = StateType != A & !(NumHelper(53010) > 0 & EnemyNear(Var(50)),Vel Y < 0)
triggerall = Var(8) != 420 & P2BodyDist X <= 160
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 2150
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1950
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1650
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2450
trigger5 = PrevStateNo = [1100, 1199]
trigger5 = EnemyNear(Var(50)),Authorname = "Boomer" || Helper(9190),FVar(26) != -1
trigger6 = P2StateType = L
trigger6 = EnemyNear(Var(50)),Authorname = "Boomer" || Helper(9190),FVar(26) != -1
v = 53
value = 4

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = Var(53) = 0
triggerall = EnemyNear(Var(50)),Alive
trigger1 = P2StateNo = [6110,6113]
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer" || Helper(9190),FVar(26) != -1
v = 53
value = 4

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 4
trigger1 = (PrevStateNo = [410, 430]) & StateNo < 200
trigger2 = EnemyNear(Var(50)),StateType != L & P2MoveType != H
trigger3 = EnemyNear(Var(50)),StateNo = [5201, 5210]
trigger4 = EnemyNear(Var(50)),StateNo = 5120
trigger5 = StateNo = 7415
trigger6 = StateNo = [1000, 1050]
trigger7 = P2MoveType = H & (P2StateNo = 5020 || P2StateNo = 5070)
trigger8 = StateNo = 620
v = 53
value = 0

;1375
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 1
triggerall = Var(53) = 0
triggerall = Fvar(5) != 1
triggerall = EnemyNear(Var(50)),MoveType = H
trigger1 = (StateNo = 1390) & MoveHit
v = 53 
value = 6
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 6
trigger1 = P2MoveType != H
trigger2 = P2StateType != A
trigger3 = MoveType = H
v = 53 
value = 0
ignorehitpause = 1

;1375分支

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 6
triggerall = Fvar(5) != 1
triggerall = EnemyNear(Var(50)),MoveType = H
trigger1 = Var(18) >= 2000 & NumHelper(2050) = 0
trigger2 = Var(18) >= 1000 & (Var(49) = 10 || Var(49) = 20) 
trigger3 = NumHelper(9101) > 0
trigger3 = Helper(9101),Var(19) = 1
trigger4 = NumHelper(9175) > 0
trigger4 = Helper(9175),Var(19) = 1
v = 53 
value = 15
ignorehitpause = 1


[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 15
trigger1 = P2MoveType != H
trigger2 = P2StateType != A
trigger3 = MoveType = H
trigger4 = StateNo = 2000
trigger5 = StateNo = 7550
trigger6 = StateNo = 1175
v = 53 
value = 0
ignorehitpause = 1

;親子
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = StateNo = 2011 & EnemyNear(Var(50)),MoveType = H
v = 53 
value = 7
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 7
trigger1 = Var(56) = 100
trigger2 = P2MoveType != H
trigger3 = MoveType = H
v = 53 
value = 0
ignorehitpause = 1
;persistent =

;打康空連
[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 6 || Var(53) = 8
trigger1 = EnemyNear(Var(50)),StateType != A
trigger2 = EnemyNear(Var(50)),MoveType != H
trigger3 = Fvar(5) = 1
trigger4 = var(56) = 100
trigger5 = StateNo = 1375
trigger6 = P2StateNo = [5200,5210]
trigger7 = StateType = L
v = 53 
value = 0
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0
triggerall = Fvar(34) > 0 & Fvar(5) != 1
triggerall = EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType = A
trigger1 = (StateNo = [600, 626]) & MoveHit
trigger2 = (StateNo = 630) & MoveHit & P2StateNo != [6110,6113]
trigger3 = StateNo = 225 & MoveHit
trigger4 = StateNo = 231 & MoveHit
v = 53 
value = 8
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 7
triggerall = EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType = A
trigger1 = NumHelper(2050) > 0
trigger1 = Helper(2050),Time >= 150
trigger1 = StateNo != [200, 299]
v = 53 
value = 8
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0
triggerall = Fvar(34) > 0 & Fvar(5) != 1
triggerall = EnemyNear(Var(50)),MoveType = H
trigger1 = (StateNo = [1300, 1350]) & MoveHit
trigger2 = (StateNo = [1100, 1150]) & MoveHit
trigger3 = (StateNo = 1176) & MoveHit & HitCount = 1
v = 53 
value = 8
ignorehitpause = 1

;非原作連段
[State -1, VarSet]
type = VarSet
triggerall = Var(59) = 4
triggerall = NumHelper(9175) > 0
triggerall = (Var(48) != 0 & Var(18) >= 2000) || (Var(48) != 0 & Helper(9175),Var(19) = 1) || (Var(21) >= 500 & Var(18) >= 1000)
triggerall = PrevStateNo = 810
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 2150
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1950
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1650
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2450
v = 53 
value = 16
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = VarSet
triggerall = Var(59) = 5
triggerall = NumHelper(9175) > 0
trigger1 = StateNo = 810
trigger1 = AnimElem = 3,= 80
v = 53 
value = 16
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 16
trigger1 = StateNo = 2000
trigger2 = StateNo = 7550
trigger3 = P2MoveType != H
trigger4 = MoveType = H
trigger5 = P2StateType = S
v = 53 
value = 0
ignorehitpause = 1

;非原作連段2
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3 & Random <= Var(57)
triggerall = Var(21) >= 500
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = Var(53) != 7
trigger1 = StateNo = 240 & MoveHit
v = 53 
value = 19
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 19
trigger1 = Var(59) = 3 & StateNo = [1100,1150]
trigger2 = StateNo = [1200,1250]
trigger3 = StateNo = 7550
trigger4 = StateNo = 2000
trigger5 = P2StateNo = [5100,5120]
v = 53 
value = 0
ignorehitpause = 1

;惡意的揮空
[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 0 || Var(53) = 4 || Var(53) = 7 || Var(53) = 8
triggerall = Var(59) >= 4 || (Var(59) = 3 & Var(49) = 19 & Var(18) >= 3000)
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = P2MoveType = H & P2StateType = A
triggerall = NumHelper(9190) > 0
triggerall = StateNo = [200,499] 
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 2150
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1950
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1650
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2450
v = 53
value = 20

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 0 || Var(53) = 7 || Var(53) = 8
triggerall = Var(59) >= 4 || (Var(59) = 3 & Var(49) = 19 & Var(18) >= 3000)
triggerall = StateNo = 1100
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*30+Helper(9190),Fvar(0)*465) = [-240,49]
trigger1 = (NumHelper(2050) = 0 &(P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33) = [0,170]) || ((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33) = [0,170]) || EnemyNear(Var(50)),BackEdgeDist <= 70
trigger1 = P2StateType = A & P2MoveType = H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2StateNo > 200
trigger2 = EnemyNear(Var(50)),AnimTime <= -6
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,170]
v = 53
value = 20

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 0 || Var(53) = 4 || Var(53) = 6 || Var(53) = 7 || Var(53) = 8
triggerall = Var(59) >= 4 || (Var(59) = 3 & Var(49) = 19 & Var(18) >= 3000)
trigger1 = StateNo = 1176 & MoveHit & HitCount > 1
trigger1 = P2BodyDist Y <= -100
trigger1 = EnemyNear(Var(50)),BackEdgeDist <= 72
trigger1 = P2StateType = A & P2MoveType = H
v = 53
value = 20

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 20
trigger1 = MoveType = H
trigger2 = P2StateType != A
trigger3 = P2MoveType != H
trigger4 = StateNo = 7550
trigger5 = StateNo < 200 & PrevStateNo = [1100,1150]
trigger6 = StateNo = 1275
trigger7 = StateNo = 2000
v = 53
value = 0

;1075後續

[State -1, VarSet]
type = VarSet
triggerall = Var(59) = 5
triggerall = NumHelper(8050) > 0
triggerall = Helper(8050),MoveHit & EnemyNear(Var(50)),BackEdgeBodyDist <= 50
trigger1 = P2StateType = A & P2MoveType = H & P2BodyDist X <= 150
v = 53
value = 21

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 21
trigger1 = MoveType = H
trigger2 = P2StateType != A
trigger3 = P2MoveType != H
trigger4 = StateNo = 1275
trigger5 = StateNo = 1125 & MoveHit & PrevStateNo != 1176
trigger6 = StateNo = 1100 & MoveHit & PrevStateNo != 1176
trigger5 = StateNo = 2000
v = 53
value = 0

;跟你走

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 0
trigger1 = P2StateType = A & P2StateNo = [5210,5211]
trigger2 = P2StateType = A & P2MoveType = I & PrevstateNo = [5020,5039]
trigger3 = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque" & P2StateType = A
v = 53 
value = 18
ignorehitpause = 1

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 18
trigger1 = P2StateType != A
trigger2 = MoveType = H
trigger3 = P2MoveType = A
trigger4 = MoveContact
trigger5 = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque" & P2StateType != A
v = 53 
value = 0
ignorehitpause = 1

;點跑抓

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 & EnemyNear(Var(50)),AILevel > 0 & P2StateType != A & P2StateType != L & P2MoveType != A & (P2StateNo != [40,56]) & EnemyNear(Var(50)),PrevStateNo != [5000,5999]
trigger1 = StateNo = 400 & MoveGuarded = 1 & P2StateNo < 200 & (P2StateType = C || (P2StateNo = [120,152]))
trigger1 = Random = [550,700]
trigger2 = NumHelper(9190) > 0
trigger2 = Helper(9190),FVar(16) = 1
trigger2 = StateNo = 400 & MoveHit = 1 & P2MoveType != H & (EnemyNear(Var(50)),AnimTime <= -10 || P2StateNo < 200)
trigger2 = Random = [0,200]
trigger3 = (PrevStateNo = 400 || PrevStateNo = 410 || PrevStateNo = 52) & Time = 1 & P2StateNo <= 101 & EnemyNear(Var(50)),Vel X < 0
trigger3 = Random = [500,600]
v = 53
value = 22

[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(53) = 0 & EnemyNear(Var(50)),AILevel = 0 & P2StateType != A & P2StateType != L & P2MoveType != A & (P2StateNo != [40,56]) & EnemyNear(Var(50)),PrevStateNo != [5000,5999]
trigger1 = StateNo = 400 & MoveGuarded = 1 & P2StateNo < 200 & (P2StateType = C || (P2StateNo = [120,152]))
trigger1 = Random = [500,800]
trigger2 = NumHelper(9190) > 0
trigger2 = Helper(9190),FVar(16) = 1
trigger2 = StateNo = 400 & MoveHit = 1 & P2MoveType != H & (EnemyNear(Var(50)),AnimTime <= -10 || P2StateNo < 200)
trigger2 = Random = [0,200]
trigger3 = (PrevStateNo = 400 || PrevStateNo = 410 || PrevStateNo = 52) & P2StateNo <= 101 & EnemyNear(Var(50)),Vel X < 0
trigger3 = Random = [500,800]
v = 53
value = 22

[State -1, VarSet]
type = VarSet
triggerall = Var(53) = 22
trigger1 = MoveType = H
trigger2 = StateNo = 800
trigger3 = StateNo = 810
trigger4 = EnemyNear(Var(50)),StateType = A
trigger5 = EnemyNear(Var(50)),StateType = L
trigger6 = StateType = A
trigger7 = P2MoveType = A
trigger8 = MoveHit & P2MoveType = H
trigger9 = StateNo = [220,225]
trigger10 = StateNo = 420
v = 53
value = 0

;---------------------------------------------------------------------------
;計分板

;歸零
[State -2, VarSet]
type = VarSet
triggerall = Var(59) >= 1 & StateNo != 195 & (StateNo != [120, 155]) & Var(53) != 7 & Var(53) != 9
triggerall = Var(56) != 120 & Var(56) != 130 & Var(56) != 131
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(53) > 0 & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),Var(36) != 1 & EnemyNear(Var(50)),StateNo != 5120 & EnemyNear(Var(50)),StateNo != 5300 & EnemyNear(Var(50)),Var(36) != 3
trigger2 = EnemyNear(Var(50)),Authorname != "Boomer"
trigger2 = Var(56) > 0 & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5120 & EnemyNear(Var(50)),StateNo != 5300
trigger3 = Var(56) >= 100
trigger4 = Var(53) = 0 & Var(56) != [1,12]
v = 56
value = 0

;起身
[State 9185]
type = VarSet
trigger1 = Var(53) = 3 || Var(53) = 0
trigger1 = StateNo = 5120
v = 56
value = 12
ignorehitpause = 1

[State 9185]
type = VarAdd
trigger1 = Var(53) = 3 || Var(53) = 0
trigger1 = StateType != L & Var(56) = [1,12]
v = 56
value = -1
ignorehitpause = 1

;防禦檢測

[State -2, VarSet]
type = VarSet
triggerall = Var(56) = 120 || Var(56) = 130 || Var(56) = 131
trigger1 = MoveType = A
trigger2 = StateNo != [120, 155]
trigger2 = PrevStateNo != [120, 155]
trigger3 = StateNo = [0,105]
v = 56
value = 0

[State -2, VarSet]
type = VarSet
triggerall = Var(53) != 14
trigger1 = StateType = A & StateNo = [120, 155]
v = 56
value = 120

[State -2, VarSet]
type = VarSet
triggerall = Var(53) != 14 & MoveType = H
triggerall = (StateType = S & StateNo = [120,153]) || (PrevStateNo = [120,153]) 
trigger1 = Anim = 130
trigger2 = Anim = 140
trigger3 = Anim = 150
v = 56
value = 130+1*(StateType = C)

[State -2, VarSet]
type = VarSet
triggerall = Var(53) != 14 & MoveType = H
triggerall = (StateType = C & StateNo = [120,153]) || (PrevStateNo = [120,153])  
trigger1 = Anim = 131
trigger2 = Anim = 141
trigger3 = Anim = 151
v = 56
value = 131-1*(StateType = S)


;打康空連

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 8 & Var(56) > 0
trigger1 = EnemyNear(Var(50)),StateType != A
trigger2 = EnemyNear(Var(50)),MoveType != H
v = 56
value = 0

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 8 & Var(56) = 0
trigger1 = StateNo = 1350
v = 56
value = 100

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 8 & Var(56) = 0
trigger1 = StateType != A & StateNo < 1000
v = 56
value = 10

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 8 & Var(56) = 10
trigger1 = Fvar(5) = 0 & StateNo = [1100, 1150]
trigger1 = Time = 1
v = 56
value = 100

;1375
[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 6
trigger1 = StateNo = 7550
v = 56
value = 20

;親子
[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7
trigger1 = EnemyNear(Var(50)),StateNo = 5120
v = 56
value = 100

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7 & Var(56) != 40 & Var(56) != 55 & Var(56) != 60
trigger1 = StateNo = 1200 & Time = 1
v = 56
value = 30

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7 & Var(56) = 30
trigger1 = StateNo = 1225 & Time = 1
v = 56
value = 40

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7 & Var(56) != 30 & Var(56) != 40 & Var(56) != 55 & Var(56) != 60
trigger1 = StateNo = 1225
v = 56
value = 35

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7 & Var(59) >= 4 & NumHelper(9175) > 0
triggerall = (Var(5) >= 1000 || Helper(9175),Var(14) > 0) & Var(19) >= 1000
triggerall = StateNo = 1225 & Var(56) != 30 & Var(56) != 35 & EnemyNear(Var(50)),Name != "Elque"
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) < 1050
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) < 850
trigger3 = Var(7) = 111
trigger3 = Var(35) < 550
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) < 1350
v = 56
value = 55

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7
triggerall = NumHelper(2070) > 0
trigger1 = Var(53) = 100 & Var(56) < 30
trigger1 = EnemyNear(Var(50)),MoveType != H
trigger2 = Var(53) = 100 & Var(56) < 30 & Random <= 200
trigger2 = Helper(9180),Var(31) > 0
trigger3 = PrevStateNo = 5120 & NumHelper(2050) > 0
trigger3 = Helper(2050),Time <= 140
v = 56
value = 60

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 7
trigger1 = StateNo = 1150
trigger2 = StateNo = 1375 & Var(56) != 55
trigger3 = NumHelper(2050) > 0 & Var(56) = 60
trigger3 = Helper(2050),Time <= 140
v = 56
value = 100

;防禦後衝刺
[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 14
trigger1 = StateNo = [150, 153]
trigger2 = EnemyNear(Var(50)),MoveGuarded
trigger3 = EnemyNear(Var(50)),Vel Y > 0 & P2StateType = A
v = 56
value = 20

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 14
triggerall = StateNo = 100
trigger1 = PrevStateNo = [1100, 1176]
trigger2 = PrevStateNo = [200, 499]
v = 56
value = 20

[State -2, VarSet]
type = VarSet
triggerall = Var(53) = 14
trigger1 = MoveContact
trigger2 = P2StateNo < 200
trigger3 = MoveType = H & StateNo != [120,154]
v = 56
value = 100

;---------------------------------------------------------------------------
;                                 LeveL4 (非原作Boss模式)
;                                 LeveL5 (非手操向Boss模式)
;---------------------------------------------------------------------------

;防卡住
[State -1]
type = ChangeState
value = 195
triggerall = Var(53) = 23 & statetype != A
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100 || StateNo = [120,140]

;對策

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque" & P2StateType = A & P2MoveType != H
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || (stateno = [120,140]) || (StateNo = 7560 & AnimElem = 17,>= 2)
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [60,180]) & P2StateType = A
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-180,-1]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || (stateno = [120,140]) || (StateNo = 7560 & AnimElem = 17,>= 2)
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [-50,60]) & P2StateType = A
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-90,-1]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 4) & statetype != A & Var(18) >= 1000
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) >= 60
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || (stateno = [120,140]) || (StateNo = 7560 & AnimElem = 17,>= 2)
trigger1 = P2StateNo = 1010
trigger1 = EnemyNear(Var(50)),AnimTime <= -12 & EnemyNear(Var(50)),Ctrl = 0 & P2MoveType = A
trigger1 = Facing != EnemyNear(Var(50)),Facing & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [60,220]
trigger2 = stateno = 1100 && animelemtime(6) >= 1 & Var(29) = 3
trigger3 = stateno = 1125 && animelemtime(6) >= 1 & Var(29) = 3
trigger4 = stateno = 1150 && animelemtime(6) >= 1 & Var(29) = 3

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 4) & statetype != A & Var(18) >= 1000
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) <= 60
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-70,-1]
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & Var(29) = 3
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & Var(29) = 3
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & Var(29) = 3

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0 & NumHelper(9175) > 0
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
triggerall = NumHelper(8050) = 0 & Helper(9175),Var(19) > 0
triggerall = P2StateNo != 5040 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
trigger1 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || (stateno = 130 || stateno = 131)
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*33+Helper(9190),Fvar(0)*561) < 0
trigger1 = P2BodyDist X >= 220
trigger1 = P2StateType = A & P2StateNo < 1000 & Vel Y <= 0

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 4 & statetype != A & NumHelper(2050) = 0 & NumHelper(9175) > 0
triggerall = P2MoveType = H & (Helper(9175),Var(19) > 0 || Var(18) >= 2000)
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
trigger1 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger1 = EnemyNear(Var(50)),BackEdgeBodyDist > 40

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 3) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100 || StateNo = [120,140]
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque" & P2StateType != A & P2MoveType != H
triggerall = Helper(9190),Fvar(20) != 1
trigger1 = P2StateNo = 710
trigger2 = P2StateNo = 730
sysvar(1) = Ifelse(BackEdgeBodyDist < 40,1,0)

[State -1]
type = ChangeState
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 3 || (P2MoveType = H & P2StateType = A)) & NumHelper(53010) = 0
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque" & P2StateType != A & P2MoveType != H
trigger1 = StateNo = 40
value = 131

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) = 1 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-250,-1]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [70,220]
triggerall = P2StateType = A & P2MoveType = A
triggerall = Var(53) != 14 & Var(29) != 3
triggerall = Helper(9190),FVar(16) = 0
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveHit
trigger4 = stateno = 1200 && animelemtime(19) >= 1 & MoveHit
trigger5 = stateno = 1225 && animelemtime(21) >= 1 & MoveHit
trigger6 = stateno = 1250 && animelemtime(23) >= 1 & MoveHit
trigger7 = stateno = 1201 && animelemtime(19) >= 1 & MoveHit
trigger8 = stateno = 1226 && animelemtime(21) >= 1 & MoveHit
trigger9 = stateno = 1251 && animelemtime(23) >= 1 & MoveHit

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) = 1 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-70,-1]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,80]
triggerall = P2StateType = A & P2MoveType = A
triggerall = Var(53) != 14 & Var(29) != 3
triggerall = Helper(9190),FVar(16) = 0
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveHit
trigger4 = stateno = 1200 && animelemtime(19) >= 1 & MoveHit
trigger5 = stateno = 1225 && animelemtime(21) >= 1 & MoveHit
trigger6 = stateno = 1250 && animelemtime(23) >= 1 & MoveHit
trigger7 = stateno = 1201 && animelemtime(19) >= 1 & MoveHit
trigger8 = stateno = 1226 && animelemtime(21) >= 1 & MoveHit
trigger9 = stateno = 1251 && animelemtime(23) >= 1 & MoveHit

;自虐對策

;反魔砲
[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & Var(18) >= 1000
triggerall = NumHelper(8050) = 0
trigger1 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer" & Var(7) = 100
trigger1 = EnemyNear(Var(50)),StateNo = 7600 & (EnemyNear(Var(50)),AnimTime = [-60,-22]) & EnemyNear(Var(50)),Ctrl = 0 & P2BodyDist X >= 230
trigger2 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer" & Var(7) = 115
trigger2 = EnemyNear(Var(50)),StateNo = 7600 & (EnemyNear(Var(50)),AnimTime = [-60,-22]) & EnemyNear(Var(50)),Ctrl = 0 & P2BodyDist X >= 230

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100  & P2StateType = A
triggerall = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || (StateNo = [130,131])
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer" & Var(7) = 100
trigger1 = EnemyNear(Var(50)),StateNo = 7600 & (EnemyNear(Var(50)),AnimTime = [-60,-22]) & EnemyNear(Var(50)),Ctrl = 0 & P2BodyDist X < 230
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer" & Var(7) = 115
trigger2 = EnemyNear(Var(50)),StateNo = 7600 & (EnemyNear(Var(50)),AnimTime = [-60,-22]) & EnemyNear(Var(50)),Ctrl = 0 & P2BodyDist X < 230

[State -1]
type = ChangeState
value = 7000
triggerall = Var(59) >= 3 & statetype != A & Var(5) >= 1000
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || stateno = 100 || stateno = 101
triggerall = (Var(19)-Var(18) >= 2000) ||(Var(19) >= 1000 & Var(18) < 1000) || Var(38) >= 500*(1+fvar(38))
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(7) = 100 || Var(7) = 115
trigger1 = P2StateNo = 7600 & (EnemyNear(Var(50)),Time > 150 || PrevStateNo = [150,153])
trigger1 = P2BodyDist X >= 150

;黑戰26對策


[State -1, Run Fwd]
type = ChangeState
value = 400
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || StateNo = 101 || (StateNo = [130,131]) || (stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0) 
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(7) = 115
trigger1 = P2StateNo = 1075 & EnemyNear(Var(50)),Time > 53
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger2 = Var(7) = 115
trigger2 = (P2StateNo = [1000,1050]) & EnemyNear(Var(50)),Time > 32

;羅諾威反擊對策

[State -1]
type = ChangeState
value = 7600
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall = Var(59) >= 1 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
trigger1 = Var(7) = 106
trigger1 = P2StateNo = [1075,1076]
trigger2 = Var(7) = 106
trigger2 = P2BodyDist X >= 200 & P2StateNo = [1000,1074]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall = Var(59) >= 1 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100 & P2BodyDist X >= 120
triggerall = ((Ctrl || (StateNo = [1,39]) || StateNo = 52) || stateno = 131 || stateno = 132)
trigger1 = Var(7) = 106 & P2StateNo = [1000,1001]
trigger2 = Var(7) = 106 & P2StateNo = [1025,1030]
trigger3 = Var(7) = 106 & P2StateNo = [1050,1051]
trigger4 = Var(7) = 106 & P2StateNo = [1075,1076]

[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 60,400,430)
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall = Var(59) >= 1 & statetype != A 
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = Var(7) = 106 & P2StateNo = [1000,1001]
trigger2 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger2 = Var(7) = 106 & P2StateNo = [1025,1030]

[State -1]
type = ChangeState
value = 230
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall = Var(59) >= 1 & statetype != A & P2BodyDist X <= 120
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = Var(7) = 106 & P2StateNo = [1050,1051]

[State -1]
type = ChangeState
value = 800
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall = Var(59) >= 1 & statetype != A & EnemyNear(Var(50)),IsHelper = 0 & P2BodyDist X <= 44
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = Var(7) = 106 & P2StateNo = [1075,1076]

;果凍對策
[State -1, Run Fwd]
type = ChangeState
value = 105
triggerall = Var(59) >= 2 & statetype != A & P2BodyDist X >= 80
triggerall = ((Ctrl || (StateNo = [1,39]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = Var(7) = 107
trigger1 = P2StateNo = 1275 & EnemyNear(Var(50)),Time = [65,69]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 2 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100 & P2BodyDist X >= 80
triggerall = ((Ctrl || (StateNo = [1,39]) || StateNo = 52) || stateno = 131 || stateno = 132)
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(7) = 107
trigger1 = (P2StateNo = [1200,1250]) & EnemyNear(Var(50)),Time < 16
trigger2 = Var(7) = 107
trigger2 = P2StateNo = 1275 & EnemyNear(Var(50)),Time <= 60

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & statetype != A
triggerall = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(7) = 107
trigger1 = P2StateNo = 1200 & EnemyNear(Var(50)),Time > 22 & P2BodyDist X = [150,300]
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger2 = Var(7) = 107
trigger2 = P2StateNo = 1225 & EnemyNear(Var(50)),Time > 22 & P2BodyDist X = [250,400]
trigger3 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger3 = Var(7) = 107
trigger3 = P2StateNo = 1250 & EnemyNear(Var(50)),Time > 22 & P2BodyDist X = [400,550]

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & statetype != A & Var(53) != 3
triggerall = ((Ctrl || (StateNo = [1,39]) || StateNo = 52) || stateno = 131 || stateno = 132)
trigger1 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = Var(7) = 107
trigger1 = P2MoveType != A & EnemyNear(Var(50)),NumHelper(8300) > 0 & EnemyNear(Var(50)),Var(55) = 1 & P2BodyDist X <= 200
trigger2 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger2 = Var(7) = 107
trigger2 = P2MoveType != A & EnemyNear(Var(50)),NumHelper(8330) > 0 & EnemyNear(Var(50)),Var(55) = 1 & P2BodyDist X <= 200
trigger3 = EnemyNear(Var(50)),Authorname = "Boomer"
trigger3 = Var(7) = 107
trigger3 = P2MoveType != A & EnemyNear(Var(50)),NumHelper(8350) > 0 & EnemyNear(Var(50)),Var(55) = 1 & P2BodyDist X <= 200

;非原作連段

[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500 & Random <= Var(57)
triggerall = Var(59) >= 4 & Var(18) >= 1000 & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = Var(53) = 16
triggerall = Var(48) = 0 || Var(18) = [1000,1999]
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 4 & statetype != A
triggerall = Var(48) != 0
triggerall = Var(53) = 16
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 4 & Var(53) = 16 & statetype != A & NumHelper(2050) = 0
triggerall = Var(48) > 0 & P2MoveType = H
trigger1 = stateno = 1100 && animelemtime(7) >= 1 
trigger2 = stateno = 1125 && animelemtime(7) >= 1
trigger3 = stateno = 1150 && animelemtime(7) >= 1

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) >= 4 & Var(53) = 16 & statetype != A & NumHelper(2050) > 0
triggerall = Var(48) > 0 & P2MoveType = H
trigger1 = stateno = 1100 && animelemtime(7) >= 1 
trigger2 = stateno = 1125 && animelemtime(7) >= 1
trigger3 = stateno = 1150 && animelemtime(7) >= 1

;非原作連段2

[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500 & Var(53) = 19 
triggerall = Var(59) >= 3 & Var(18) >= 1000 & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = MoveHit & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 19
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100  & P2StateType = A
triggerall = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || (StateNo = [130,131])
trigger1 = P2BodyDist X > 80

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 19
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
trigger1 = P2StateNo = [6110,6113]
trigger1 = P2BodyDist X <= 120

[State -1]
type = ChangeState
value = 231
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 19
trigger1 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 19
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
trigger1 = P2StateNo != [6110,6113]
trigger1 = P2BodyDist X <= 40

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 19 & P2BodyDist X <= 55
trigger1 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger3 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger4 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 19
trigger1 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & NumHelper(9175) > 0
triggerall = Helper(9175),Var(19) = 1 & Var(48) > 0 & Var(53) = 19
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-90,-1]) || (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190 = [-150,-1])
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveHit

;死前的掙扎
[State -1]
type = ChangeState
value = 7300
triggerall = Var(59) >= 4 & Var(19) >= 3000 & alive
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (stateno = 5000 || (stateno = 5001 & Time < 2) || stateno = 5010 || (stateno = 5011 & Time < 2)) & (Anim = [5000,5029])
triggerall = MoveType = H & HitFall = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000 & P2BodyDist X <= 185
triggerall = GetHitVar(hitshaketime)+EnemyNear(Var(50)),AnimTime <= -20
triggerall = EnemyNear(Var(50)),PrevStateNo > 160
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = 7300
triggerall = Var(59) >= 4 & Var(19) >= 2000 & alive
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (stateno = 5000 || (stateno = 5001 & Time < 2) || stateno = 5010 || (stateno = 5011 & Time < 2)) & (Anim = [5000,5029])
triggerall = MoveType = H & HitFall = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000 & P2BodyDist X <= 185
triggerall = Life <= 100
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = 7300
triggerall = Var(59) = 3 & Var(19) >= 2000 & alive
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (stateno = 5000 || (stateno = 5001 & Time < 2) || stateno = 5010 || (stateno = 5011 & Time < 2)) & (Anim = [5000,5029])
triggerall = MoveType = H & HitFall = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000 & P2BodyDist X <= 185
triggerall = GetHitVar(hitshaketime)+EnemyNear(Var(50)),AnimTime <= -20
triggerall = EnemyNear(Var(50)),PrevStateNo > 160
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = 7300
triggerall = Var(59) = 3 & Var(19) >= 2000 & alive
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (stateno = 5000 || (stateno = 5001 & Time < 2) || stateno = 5010 || (stateno = 5011 & Time < 2)) & (Anim = [5000,5029])
triggerall = MoveType = H & HitFall = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000 & P2BodyDist X <= 185
triggerall = Life <= 100
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = 7400
triggerall = Var(59) >= 3 & (Var(19) >= 3000 || (Var(19) >= 2000 & (EnemyNear(Var(50)),Life = [1,125]))) & alive & (Var(53) = 0 || Var(53) = 25)
triggerall = Helper(9190),FVar(16) = 0
triggerall = StateType != A
triggerall = Var(5) >= 1000
triggerall = EnemyNear(Var(50)),Ctrl = 0 & EnemyNear(Var(50)),StateNo != 5120 & EnemyNear(Var(50)),StateNo != 5110
triggerall = Helper(9190),FVar(16) = 0 & StateNo != 7560 & PrevStateNo != 7560
trigger1 = stateno = 131 || stateno = 132
trigger1 = P2Dist X >= 300 & ((PrevStateNo = [5000,5999]) || (PrevStateNo = [120,159])) & Random <= 350*(LifeMax-Life)/LifeMax
trigger1 = Helper(9180),Var(31) > 0
trigger2 = stateno = 131 || stateno = 132
trigger2 = Var(5) >= 1000
trigger2 = (P2Dist X = [0,300]) & (PrevStateNo = [120,159])
trigger2 = EnemyNear(Var(50)),MoveType = A & Random <= 350*(LifeMax-Life)/LifeMax

[State -1]
type = ChangeState
value = 7400
triggerall = Var(59) >= 4 & (Var(19) >= 3000 || (Var(19) >= 2000 & (EnemyNear(Var(50)),Life = [1,125]))) & alive & Var(53) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = StateType != A
triggerall = Var(5) >= 1000
triggerall = EnemyNear(Var(50)),Ctrl = 0 & EnemyNear(Var(50)),StateType != L
triggerall = P2BodyDist X = [-5,220]
triggerall = Helper(9190),FVar(16) = 0 & StateNo != 7560 & PrevStateNo != 7560 & NumHelper(2050) = 0
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = PrevStateNo = 1176 & EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType = A & Vel X > 0 & (EnemyNear(Var(50)),BackEdgeBodyDist <= 40 || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*30 <= 220))
trigger2 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger2 = PrevStateNo = 1280 & EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),BackEdgeBodyDist <= 40

;設置壓起身
[State -1]
type = ChangeState
value = 7400
triggerall = Var(59) >= 3 & Var(19) >= 3000 & StateType != A
triggerall = Var(5) >= 1000
triggerall = Helper(9190),FVar(16) = 0 & StateNo != 7560 & PrevStateNo != 7560
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || (P2MoveType = A & Var(54) != [800,1060]) || Helper(9190),FVar(19) = 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [130,140]
triggerall = Helper(9190),FVar(18) = 2 || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
trigger1 = PlayerIDExist(Var(45)) || PlayerIDExist(Var(44)) || PlayerIDExist(Var(43)) || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
trigger1 = Random <= 500*(LifeMax-Life)/LifeMax

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 3 & Var(18) >= 1000 & StateType != A
triggerall = Helper(9190),FVar(16) = 0
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || (P2MoveType = A & Var(54) != [800,1060]) || Helper(9190),FVar(19) = 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [130,140]
triggerall = Helper(9190),FVar(18) = 2
triggerall = PlayerIDExist(Var(45)) || PlayerIDExist(Var(44)) || PlayerIDExist(Var(43))
trigger1 = P2StateType = A & Random <= 555
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*45) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger2 = P2StateType = A & Random <= 555
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,210]

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & StateType != A
triggerall = Helper(9190),FVar(16) = 0
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || (P2MoveType = A & Var(54) != [800,1060]) || Helper(9190),FVar(19) = 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [130,140]
triggerall = Helper(9190),FVar(18) = 2
triggerall = PlayerIDExist(Var(45)) || PlayerIDExist(Var(44)) || PlayerIDExist(Var(43))
trigger1 = Random <= 444 & P2BodyDist X <= 220

[State -1]
type = ChangeState
value = 105
triggerall = Var(59) >= 3 & StateType != A
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || (P2MoveType = A & Var(54) != [800,1060]) || Helper(9190),FVar(19) = 1
triggerall = !(EnemyNear(Var(50)),Vel Y = 0 & EnemyNear(Var(50)),Vel X > 4) ;直線突進
triggerall = Helper(9190),Var(37) != -1 ;非遠程法師
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [130,140]
triggerall = Helper(9190),FVar(18) = 2 || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
triggerall = PlayerIDExist(Var(45)) || PlayerIDExist(Var(44)) || PlayerIDExist(Var(43)) || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
trigger1 = Random <= 250

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & StateType != A
triggerall = P2MoveType != H
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || (P2MoveType = A & Var(54) != [800,1060]) || Helper(9190),FVar(19) = 1
triggerall = Helper(9190),FVar(18) = 2 || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
triggerall = PlayerIDExist(Var(45)) || PlayerIDExist(Var(44)) || PlayerIDExist(Var(43)) || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
trigger1 = (stateno = [0,132]) & (StateNo != [40,51])
trigger1 = P2BodyDist X >= 80
sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & StateType != A & Var(56) != [9,12]
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [130,140]
triggerall = P2MoveType != H
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || (P2MoveType = A & Var(54) != [800,1060]) || Helper(9190),FVar(19) = 1
triggerall = Helper(9190),FVar(18) = 2 || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
triggerall = PlayerIDExist(Var(45)) || PlayerIDExist(Var(44)) || PlayerIDExist(Var(43)) || (Helper(9190),FVar(18) = 1 & P2MoveType = A)
trigger1 = Random <= 222

;1075後續(特定)

[State -1]
type = ChangeState
value = 1100
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall = Var(59) = 5 & statetype != A & Var(53) = 21 & Var(48) > 0 
triggerall = NumHelper(9190) > 0
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-280,-200]) & EnemyNear(Var(50)),Vel Y >= 0 

[State -1]
type = ChangeState
value = 1175
triggerall = EnemyNear(Var(50)),Authorname = "Boomer"
triggerall =  Var(59) = 5 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) > 0 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = Var(53) = 21
trigger1 = stateno = 1100 && animelemtime(6) >= 1

;1075後續

[State -1]
type = ChangeState
value = 1100
triggerall = EnemyNear(Var(50)),Authorname != "Boomer"
triggerall = Var(59) = 5 & statetype != A & Var(53) = 21 & Var(48) > 0 
triggerall = NumHelper(9190) > 0
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-295,-180]) & EnemyNear(Var(50)),Vel Y >= 0 

[State -1]
type = ChangeState
value = 1175
triggerall = EnemyNear(Var(50)),Authorname != "Boomer"
triggerall =  Var(59) = 5 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) > 0 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = Var(53) = 21
trigger1 = stateno = 1100 && animelemtime(7) >= 3

[State -1]
type = ChangeState
value = 1125
triggerall = Var(59) = 5 & statetype != A & Var(53) = 21 & Var(48) > 0 
triggerall = NumHelper(9190) > 0
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = PrevStateNo = 1176
trigger2 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*29+Helper(9190),Fvar(0)*435 = [-130,-50]) & EnemyNear(Var(50)),Vel Y >= 0

[State -1]
type = ChangeState
value = IfElse(NumHelper(2050) > 0 || Random <= 150,1275,2000)
triggerall = Var(59) = 5 & statetype != A & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 21
triggerall = P2MoveType = H
trigger1 = stateno = 1125 && animelemtime(6) >= 1


;惡意的揮空
[State -1]
type = ChangeState
value = 1100
triggerall = (Var(59) >= 4 || (Var(59) = 3 & Var(18) >= 3000)) & statetype != A & Var(53) = 20 & Var(48) > 0 
triggerall = P2MoveType = H & P2StateType = A
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = MoveContact & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = MoveContact & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveContact & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = MoveContact & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = MoveContact & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = MoveContact & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = MoveContact & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveContact & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = MoveContact & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = MoveContact & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = MoveContact & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = MoveContact & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 7500
triggerall = (Var(59) >= 4 || (Var(59) = 3 & Var(18) >= 3000)) & statetype != A & Var(53) = 20 & Var(48) = 0 
triggerall = P2MoveType = H & P2StateType = A & Random <= Var(57)
triggerall = Var(21) >= 500 &Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = MoveContact & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = MoveContact & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveContact & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = MoveContact & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = MoveContact & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = MoveContact & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = MoveContact & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveContact & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = MoveContact & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = MoveContact & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = MoveContact & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = MoveContact & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1100
triggerall = (Var(59) >= 4 || (Var(59) = 3 & Var(18) >= 3000)) & statetype != A & Var(53) = 20 & Var(48) > 0 
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = P2MoveType = H & P2StateType = A
trigger1 = StateNo = 7560 & AnimElem = 17,>= 2

[State -1]
type = ChangeState
value = IfElse(NumHelper(2050) = 0,1275,2000)
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 20
triggerall = P2MoveType != A & (Fvar(5) = 1 || NumHelper(53010) > 0)
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = IfElse(NumHelper(2050) = 0,1275,2000)
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9101) > 0
triggerall = (Helper(9101),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 20
triggerall = P2MoveType != A & (Fvar(5) = 1 || NumHelper(53010) > 0)
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = 1100
triggerall = (Var(59) >= 4) & statetype != A & (Var(53) = 0 || Var(53) = 4 || (Var(53) = 8 & Var(56) = 40) || Var(53) = 20) & Var(48) > 0 & Var(18) >= 1000
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*30+Helper(9190),Fvar(0)*465) = [-250,49]
trigger1 = (NumHelper(2050) = 0 & ((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33) = [0,170]) || ((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33) = [0,170]) || EnemyNear(Var(50)),BackEdgeDist <= 70)
trigger1 = P2StateType = A & P2MoveType = H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2StateNo > 200
trigger2 = EnemyNear(Var(50)),AnimTime <= -6
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,170]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52 || (StateNo = [120,140]))
trigger1 = Var(53) = 20 & PrevStateNo = 1176

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1 & NumHelper(9101) > 0
triggerall = (Helper(9101),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 20
triggerall = P2MoveType != A
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1 & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 20
triggerall = P2MoveType != A
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = H

;免費SPC

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1 & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 0
triggerall = (P2BodyDist X >= 150 & P2BodyDist Y <= -160) & P2MoveType != A
trigger1 = stateno = 1100 && animelemtime(13) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(13) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(13) >= 1 & MoveHit
trigger4 = stateno = 1100 && animelemtime(9) >= 1 & MoveContact = 0 & P2MoveType = H
trigger5 = stateno = 1125 && animelemtime(9) >= 1 & MoveContact = 0 & P2MoveType = H
trigger6 = stateno = 1150 && animelemtime(9) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1 & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & P2MoveType != A
triggerall = P2BodyDist X <= 120 & P2StateNo = 5100
trigger1 = stateno = 1200 && animelemtime(19) >= 1
trigger2 = stateno = 1225 && animelemtime(21) >= 1
trigger3 = stateno = 1250 && animelemtime(23) >= 1 
trigger4 = stateno = 1201 && animelemtime(19) >= 1 
trigger5 = stateno = 1226 && animelemtime(21) >= 1
trigger6 = stateno = 1251 && animelemtime(23) >= 1 

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1 & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & Var(53) = 0 & P2MoveType != A
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [0,175]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18 = [0,220]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [0,250]) || EnemyNear(Var(50)),BackEdgeBodyDist <= 40
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-40,-1]) || (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190 = [-100,-1]) || (EnemyNear(Var(50)),BackEdgeBodyDist <= 40 & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190 = [-150,-1]))
trigger1 = stateno = 1100 && animelemtime(12) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(12) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(12) >= 1 & MoveHit
trigger4 = stateno = 1200 && animelemtime(19) >= 1 & MoveHit
trigger5 = stateno = 1225 && animelemtime(21) >= 1 & MoveHit
trigger6 = stateno = 1250 && animelemtime(23) >= 1 & MoveHit
trigger7 = stateno = 1310 && animelemtime(1) >= 1
trigger8 = stateno = 1330 && animelemtime(1) >= 1
trigger9 = stateno = 1360 && animelemtime(1) >= 1
trigger10 = stateno = 1201 && animelemtime(19) >= 1 & P2MoveType = H & P2StateType = A
trigger11 = stateno = 1226 && animelemtime(21) >= 1 & P2MoveType = H & P2StateType = A
trigger12 = stateno = 1251 && animelemtime(23) >= 1 & P2MoveType = H & P2StateType = A
trigger13 = stateno = 1100 && animelemtime(8) >= 0 & MoveContact = 0 & P2MoveType = H
trigger14 = stateno = 1125 && animelemtime(8) >= 0 & MoveContact = 0 & P2MoveType = H
trigger15 = stateno = 1150 && animelemtime(8) >= 0 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0 & P2MoveType != A
triggerall = Var(48) = 1 & Fvar(18) = -500 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = Fvar(18) = -500 & P2Dist Y <= -160 
triggerall = numhelper(8050) = 0
triggerall = NumHelper(2050) > 0 || Var(18) < 2000 & Helper(9175),Var(19) = 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveHit

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & Var(48) = 1 & NumHelper(9175) > 0 & NumHelper(2050) = 0 & P2MoveType != A
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 2000) & Var(48) > 0 & (Var(53) = 0 || Var(53) = 4 || Var(53) = 7 || Var(53) = 8)
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [0,175]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18 = [0,220]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [0,250]) || EnemyNear(Var(50)),BackEdgeBodyDist <= 70
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-120,100]) || (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190 = [-120,100])
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
trigger1 = stateno = 1100 && animelemtime(7) >= 2 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger2 = stateno = 1125 && animelemtime(7) >= 2 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger3 = stateno = 1150 && animelemtime(7) >= 2 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger4 = stateno = 1100 && animelemtime(8) >= 0 & MoveContact = 0 & P2MoveType = H & Var(53) = 8
trigger5 = stateno = 1125 && animelemtime(8) >= 0 & MoveContact = 0 & P2MoveType = H & Var(53) = 8
trigger6 = stateno = 1150 && animelemtime(8) >= 0 & MoveContact = 0 & P2MoveType = H & Var(53) = 8

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) > 0 & Var(48) = 1 & NumHelper(9175) > 0 & P2MoveType != A
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 1000) & Var(48) > 0 & (Var(53) = 0 || Var(53) = 7 || Var(53) = 8)
triggerall = (P2BodyDist X >= 150 & P2BodyDist Y <= -160)
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
trigger1 = stateno = 1100 && animelemtime(7) >= 3 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger2 = stateno = 1125 && animelemtime(7) >= 3 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger3 = stateno = 1150 && animelemtime(7) >= 3 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger4 = stateno = 1100 && animelemtime(8) >= 1 & MoveContact = 0 & P2MoveType = H & Var(53) = 8
trigger5 = stateno = 1125 && animelemtime(8) >= 1 & MoveContact = 0 & P2MoveType = H & Var(53) = 8
trigger6 = stateno = 1150 && animelemtime(8) >= 1 & MoveContact = 0 & P2MoveType = H & Var(53) = 8

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0 & Var(53) != 14 & P2MoveType != A
triggerall = Var(48) > 0 & Fvar(18) = -500 & (Helper(9175),Var(19) = 1 || Var(18) >= 2000)
triggerall = (Var(39) != 6 & Helper(9190),Var(8) != 2)
triggerall = Fvar(18) = -500 & (P2Dist Y > -160 || EnemyNear(Var(50)),BackEdgeDist <= 70)
triggerall = NumHelper(2050) = 0
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
trigger1 = stateno = 1100 && animelemtime(12) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(12) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(12) >= 1 & MoveHit
trigger4 = stateno = 1100 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H
trigger5 = stateno = 1125 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H
trigger6 = stateno = 1150 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) >= 3 & statetype != A & Var(48) = 1 & NumHelper(9175) > 0 & P2MoveType != A & NumHelper(2050) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 1000) & Var(48) > 0 & (Var(53) = 0 || Var(53) = 4 || Var(53) = 7 || Var(53) = 8)
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [0,175]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18 = [0,220]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [0,250]) || EnemyNear(Var(50)),BackEdgeBodyDist <= 70
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*15+Helper(9190),Fvar(0)*120 = [-220,100]) || (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-150,100]) || (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190 = [-150,100])
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
trigger1 = stateno = 1100 && animelemtime(7) >= 3 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger2 = stateno = 1125 && animelemtime(7) >= 3 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger3 = stateno = 1150 && animelemtime(7) >= 3 & MoveContact = 0 & P2MoveType = H & Var(53) != 8
trigger4 = stateno = 1100 && animelemtime(8) >= 1 & MoveContact = 0 & P2MoveType = H & Var(53) = 8
trigger5 = stateno = 1125 && animelemtime(8) >= 1 & MoveContact = 0 & P2MoveType = H & Var(53) = 8
trigger6 = stateno = 1150 && animelemtime(8) >= 1 & MoveContact = 0 & P2MoveType = H & Var(53) = 8

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0 & Var(53) != 14 & P2MoveType != A
triggerall = Var(48) > 0 & Fvar(18) = -500 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = (Var(39) != 6 & Helper(9190),Var(8) != 2)
triggerall = Fvar(18) = -500 & (P2Dist Y > -160 || EnemyNear(Var(50)),BackEdgeDist <= 70)
triggerall = NumHelper(2050) > 0 || (Var(18) < 2000 & Helper(9175),Var(19) = 0)
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
trigger1 = stateno = 1100 && animelemtime(12) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(12) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(12) >= 1 & MoveHit
trigger4 = stateno = 1100 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H
trigger5 = stateno = 1125 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H
trigger6 = stateno = 1150 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0 & Var(53) != 14 & P2MoveType != A
triggerall = Var(48) > 0  & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = NumHelper(2050) > 0 || (Var(18) < 2000 & Helper(9175),Var(19) = 0)
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
trigger1 = stateno = 1100 && animelemtime(13) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(13) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(13) >= 1 & MoveHit
trigger4 = stateno = 1100 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H
trigger5 = stateno = 1125 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H
trigger6 = stateno = 1150 && animelemtime(13) >= 1 & MoveContact = 0 & P2MoveType = H

[State -1]
type = ChangeState
value = IfElse(P2MoveType = A & Vel Y >= 0,1175,1275)
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) > 0 & Var(48) = 1 & NumHelper(9175) > 0
triggerall = (Helper(9175),Var(19) = 1 || Var(18) >= 1000) & Var(48) > 0 & (Var(53) = 0 || Var(53) = 7 || Var(53) = 8)
triggerall = (P2BodyDist X >= 150 & P2BodyDist Y <= -160)
triggerall = Helper(9190),FVar(16) = 0
triggerall = P2StateNo != 5040 || NumHelper(53010) > 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
trigger1 = stateno = 1100 && animelemtime(7) >= 3 & MoveContact = 0
trigger2 = stateno = 1125 && animelemtime(7) >= 3 & MoveContact = 0 
trigger3 = stateno = 1150 && animelemtime(7) >= 3 & MoveContact = 0

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) = 1 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = P2MoveType = A || (P2MoveType = I & Helper(9190),FVar(15) = 0)
triggerall = (EnemyNear(Var(50)),BackEdgeBodyDist >= 60 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [70,250]) || (EnemyNear(Var(50)),BackEdgeBodyDist < 60 & P2BodyDist X = [70,250])
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2StateType != L & P2MoveType != H
triggerall = Var(53) != 14 & Var(29) != 3
triggerall = Helper(9190),FVar(16) = 0
triggerall = !(Helper(9190),FVar(15) = 1 & P2MoveType = I)
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded)& (P2MoveType = A || (P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0))
trigger5 = stateno = 1125 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & (P2MoveType = A || (P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0))
trigger6 = stateno = 1150 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & (P2MoveType = A || (P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0))
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) = 1 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = P2MoveType = A || (P2MoveType = I & Helper(9190),FVar(15) = 0)
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-70,-1]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,70]
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2StateType != L & P2MoveType != H
triggerall = Var(53) != 14 & Var(29) != 3
triggerall = Helper(9190),FVar(16) = 0
triggerall = !(Helper(9190),FVar(15) = 1 & P2MoveType = I)
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & P2MoveType = A
trigger5 = stateno = 1125 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & P2MoveType = A
trigger6 = stateno = 1150 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & P2MoveType = A
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9150) > 0
triggerall = Var(48) = 1 & (Helper(9150),Var(19) = 1 || Var(18) >= 1000)
triggerall = P2MoveType = A || (P2MoveType = I & Helper(9190),FVar(15) = 0)
triggerall = (EnemyNear(Var(50)),BackEdgeBodyDist >= 60 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [70,250]) || (EnemyNear(Var(50)),BackEdgeBodyDist < 60 & P2BodyDist X = [70,250])
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2StateType != L & P2MoveType != H
triggerall = Var(53) != 14 & Var(29) != 3
triggerall = Helper(9190),FVar(16) = 0
triggerall = !(Helper(9190),FVar(15) = 1 & P2MoveType = I)
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded)& (P2MoveType = A || (P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0))
trigger5 = stateno = 1125 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & (P2MoveType = A || (P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0))
trigger6 = stateno = 1150 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & (P2MoveType = A || (P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0))
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9150) > 0
triggerall = Var(48) = 1 & (Helper(9150),Var(19) = 1 || Var(18) >= 1000)
triggerall = P2MoveType = A || (P2MoveType = I & Helper(9190),FVar(15) = 0)
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-70,-1]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,70]
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2StateType != L & P2MoveType != H
triggerall = Var(53) != 14 & Var(29) != 3
triggerall = Helper(9190),FVar(16) = 0
triggerall = !(Helper(9190),FVar(15) = 1 & P2MoveType = I)
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & P2MoveType = A
trigger5 = stateno = 1125 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & P2MoveType = A
trigger6 = stateno = 1150 && animelemtime(8) >= 1 & (MoveHit = 0 || MoveGuarded) & P2MoveType = A
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

;緊急閃避
[State -1]
type = ChangeState
value = 1075
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9101) > 0 & statetype != A
triggerall = Var(48) = 1 & (Helper(9101),Var(19) = 1 || Var(18) >= 1000)
triggerall = Helper(9190),Fvar(16) = 1
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A

[State -1]
type = ChangeState
value = 1075
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9175) > 0 & statetype != A
triggerall = Var(48) = 1 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = Helper(9190),Fvar(16) = 1
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A

[State -1]
type = ChangeState
value = 7600
triggerall =  Var(59) >= 3 & statetype != A & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(48) = 1
triggerall = Helper(9190),Fvar(16) = 1
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A
trigger4 = stateno = 1175 && animelemtime(6) >= 1 & MoveContact = 0 & P2MoveType = A

;高機率升龍

;靠這吃飯

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 4) & statetype != A & Var(53) != 14 & Var(48) > 0 & Var(18) >= 1000
triggerall = Fvar(5) != 1 || P2StateType != A
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = !((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 <= 60) & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91 <= -170))
triggerall = P2StateNo != 5040 & P2StateNo != 5210 & StateNo != 120
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-210,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [50,160]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2MoveType != H
trigger2 = EnemyNear(Var(50)),AnimTime <= -13 & EnemyNear(Var(50)),Ctrl = 0 & P2MoveType = A
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [0,150])
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType = S
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -13 & Var(54) = 800 & P2BodyDist X <= 150

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 4) & statetype != A & Var(18) >= 1000
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-230,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,220]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A 
trigger2 = EnemyNear(Var(50)),AnimTime <= -12 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,210]
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -10 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,200]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 4) & statetype != A & Var(18) >= 1000
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = StateNo = 7560 & AnimElem = 17,>= 2
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = StateNo = 7560 & AnimElem = 17,>= 2
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A
trigger2 = EnemyNear(Var(50)),AnimTime <= -10 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]
trigger3 = StateNo = 7560 & AnimElem = 17,>= 2
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -9 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 4) & statetype != A & Var(18) >= 1000
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55) = [-110,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10 = [-20,80])
trigger1 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 4) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType = S & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -13 & Var(12) != 33 & P2StateNo > 200
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,160]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger2 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger2 = EnemyNear(Var(50)),AnimTime <= -13 & Var(54) = 800
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-40,160]

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 4) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [80,175]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-200,-10]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-100,-10]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-20,80]
trigger2 = P2StateType = A & P2MoveType != H

;;;宣言耗魔
[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) >= 3 & Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = Var(21) >= 800 & NumHelper(9190) > 0 
triggerall = Var(57) = -1 || (Helper(9190),Var(39) = 0 & Random <= 200)
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = MoveGuarded = 1 & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = MoveGuarded = 1 & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = MoveGuarded = 1 & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4
trigger4 = MoveHit = 1 & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & P2StateType = L
trigger5 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger5 = P2MoveType = I & P2BodyDist X >= 150 & Helper(9190),Var(31) != [1,4]
trigger5 = P2BodyDist X - EnemyNear(Var(50)),Vel X*14 >= 60
trigger5 = NumHelper(9101) > 0
trigger5 = Helper(9101),Var(25) = 0
trigger6 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger6 = P2MoveType = I & P2BodyDist X >= 150 & Helper(9190),Var(31) != [1,4]
trigger6 = P2BodyDist X - EnemyNear(Var(50)),Vel X*14 >= 60
trigger6 = NumHelper(9101) = 0

;抵銷
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L
trigger1 = Var(29) = 3 & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger2 = Var(29) = 3 & stateno = 1200 && animelemtime(4) >= 1 && animelemtime(15) <= 1
trigger3 = Var(29) = 3 & stateno = 1225 && animelemtime(4) >= 1 && animelemtime(15) <= 1
trigger4 = Var(29) = 3 & stateno = 1250 && animelemtime(4) >= 1 && animelemtime(15) <= 1
trigger5 = Var(29) = 3 & stateno = 1100 && animelemtime(6) >= 1
trigger6 = Var(29) = 3 & stateno = 1125 && animelemtime(6) >= 1
trigger7 = Var(29) = 3 & stateno = 1150 && animelemtime(6) >= 1
trigger8 = Var(29) = 3 & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = Var(29) = 3 & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = Var(29) = 3 & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger11 = Var(29) = 3 & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger12 = Var(29) = 3 & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = Var(29) = 3 & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger14 = Var(29) = 3 & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger15 = Var(29) = 3 & stateno = 7400 && animelemtime(4) >= 1
trigger16 = Var(29) = 3 & stateno = 1175 && animelemtime(6) >= 1 && animelemtime(10) <= 3 & Var(18) >= 1000
trigger17 = Var(29) = 3 & stateno = 1176 && animelemtime(1) >= 1 && animelemtime(3) <= 3

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 1) & statetype != A & (Var(53) = 14 || Var(53) = 0)
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = stateno = 100 & P2StateType = A & MoveType != H
trigger1 = PrevStateNo = [1100,1150]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-40,160]

;---------------------------------------------------------------------------
;                                 LeveL3 (一般模式)
;---------------------------------------------------------------------------


;未知招式

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 1) & statetype != A & Var(18) >= 1000 & ((Random <= 0.15*Var(18)) || (NumHelper(9175) > 0 & Random <= 0.18*Var(18)))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NT,ST,HT,AT || Var(54) = 800 || (Var(54) = 801 & EnemyNear(Var(50)),AnimTime <= -13) 
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55) = [-110,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10 = [-20,80])
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger2 = EnemyNear(Var(50)),AnimTime <= -10
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A 
trigger3 = EnemyNear(Var(50)),AnimTime <= -12 & Var(12) != 33
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,220]
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-250,-1]
trigger4 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,220]
trigger4 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 3) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NT,ST,HT,AT || Var(54) = 800 || (Var(54) = 801 & EnemyNear(Var(50)),AnimTime <= -13)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType = S & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -13 & Var(12) != 33 & P2StateNo > 200
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,170]
trigger2 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger2 = EnemyNear(Var(50)),AnimTime <= -13
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-40,170]
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [80,185]) & P2StateType = A & P2MoveType != H
trigger3 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-210,-10]
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-100,-10]
trigger4 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-20,80]
trigger4 = P2StateType = A & P2MoveType != H


[State -1]
type = ChangeState
value = 105
triggerall = Var(59) >= 3 & statetype != A & BackEdgeBodyDist >= 40
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NT,ST,HT,AT || (Var(54) = 800 & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time <= 3) || Var(54) = 801 || (Helper(9190),FVar(14) = 1 & P2BodyDist X <= 60)
triggerall = Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time <= 3 || (Helper(9190),Fvar(11) = 0 & EnemyNear(Var(50)),Time <= 4)
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & Vel X = 0 & P2BodyDist X <= 150

;冷戰
[State -1, 1]
type = VarSet
triggerall = Var(59) > 1 & statetype != A & Var(53) != 3
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = (stateno = 130 || stateno = 131)
trigger1 = Time > 10 & P2BodyDist X >= 170
trigger1 = EnemyNear(Var(50)),Vel X = 0 & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),MoveType = A
trigger1 = EnemyNear(Var(50)),PrevStateNo >= 200
sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) > 1 & statetype != A & Var(53) != 3
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = Random <= 50
trigger1 = (stateno = 130 || stateno = 131)
trigger1 = Time > 10 & P2BodyDist X >= 170
trigger1 = EnemyNear(Var(50)),Vel X = 0 & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),MoveType = A
trigger1 = EnemyNear(Var(50)),PrevStateNo >= 200

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) > 1 & statetype != A & Var(53) != 3
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = (stateno = 130 || stateno = 131)
trigger1 = Time > 13 & P2BodyDist X = [80,150]
trigger1 = EnemyNear(Var(50)),Vel X = 0 & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),MoveType = A
trigger1 = EnemyNear(Var(50)),PrevStateNo >= 200

;---------------------------------------------------------------------------
;對手法師

[State -1]
type = ChangeState
value = IfElse((Random =[0,250]),1000,IfElse((Random =[251,611]),1025,1050))
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0 & P2BodyDist X >= 300 & Random <= 250
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || StateNo = [130,131]
triggerall = Helper(9190),Var(37) = -1 ;法師
triggerall = Helper(9190),Var(33) != -1
triggerall = P2StateNo != 5040 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall = (EnemyNear(Var(50)),Vel X = [-6,6]) & (EnemyNear(Var(50)),Vel Y = [-6,6])
trigger1 = PlayerIDExist(Helper(9190),var(45))
trigger1 = PlayerID(Helper(9190),Var(45)),Facing != Facing & (PlayerID(Helper(9190),Var(45)),P2Dist X/PlayerID(Helper(9190),Var(45)),Vel X) >= 28
trigger2 = PlayerIDExist(Helper(9190),var(45)) = 0 & PlayerIDExist(Helper(9190),var(44)) = 0
trigger2 = PlayerID(Helper(9190),Var(44)),Facing != Facing & (PlayerID(Helper(9190),Var(44)),P2Dist X/PlayerID(Helper(9190),Var(44)),Vel X) >= 28
trigger3 = PlayerIDExist(Helper(9190),var(45)) = 0 & PlayerIDExist(Helper(9190),var(44)) = 0 & PlayerIDExist(Helper(9190),var(43))
trigger3 = PlayerID(Helper(9190),Var(43)),Facing != Facing & (PlayerID(Helper(9190),Var(43)),P2Dist X/PlayerID(Helper(9190),Var(43)),Vel X) >= 28

[State -1]
type = ChangeState
value = IfElse((Random =[0,250]),1000,IfElse((Random =[251,611]),1025,1050))
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0 & P2BodyDist X >= 220 & Random <= 35
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || StateNo = [130,131]
triggerall = Helper(9190),Var(37) = -1 ;法師
triggerall = Helper(9190),Var(33) != -1
triggerall = P2StateNo != 5040 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401 & P2StateType != L
triggerall = (EnemyNear(Var(50)),Vel X = [-6,6]) & (EnemyNear(Var(50)),Vel Y = [-6,6])
trigger1 = PlayerIDExist(Helper(9190),var(45))
trigger1 = PlayerID(Helper(9190),Var(45)),Facing != Facing & (PlayerID(Helper(9190),Var(45)),P2Dist X/PlayerID(Helper(9190),Var(45)),Vel X) >= 28
trigger2 = PlayerIDExist(Helper(9190),var(45)) = 0 & PlayerIDExist(Helper(9190),var(44)) = 0
trigger2 = PlayerID(Helper(9190),Var(44)),Facing != Facing & (PlayerID(Helper(9190),Var(44)),P2Dist X/PlayerID(Helper(9190),Var(44)),Vel X) >= 28
trigger3 = PlayerIDExist(Helper(9190),var(45)) = 0 & PlayerIDExist(Helper(9190),var(44)) = 0 & PlayerIDExist(Helper(9190),var(43))
trigger3 = PlayerID(Helper(9190),Var(43)),Facing != Facing & (PlayerID(Helper(9190),Var(43)),P2Dist X/PlayerID(Helper(9190),Var(43)),Vel X) >= 28

[State -1]
type = ChangeState
value = 1075
triggerall = Var(53) = 0 & Var(18) >= 1000
triggerall = Var(59) >= 3 & statetype != A
triggerall = Helper(9190),FVar(15) = 0 & Random <= 80
triggerall = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || StateNo = [130,131]
triggerall = (Helper(9190),FVar(19) = 1 & EnemyNear(Var(50)),AnimTime <= -33) || (P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -33) || (P2MoveType = I & StateNo <= 100) || StateNo = [130,131]
triggerall = Helper(9190),Var(37) = -1 ;法師
trigger1 = PlayerIDExist(Helper(9190),var(45))
trigger1 = PlayerID(Helper(9190),Var(45)),Facing != Facing & (PlayerID(Helper(9190),Var(45)),P2Dist X/PlayerID(Helper(9190),Var(45)),Vel X) >= 33
trigger2 = PlayerIDExist(Helper(9190),var(45)) = 0 & PlayerIDExist(Helper(9190),var(44)) = 0
trigger2 = PlayerID(Helper(9190),Var(44)),Facing != Facing & (PlayerID(Helper(9190),Var(44)),P2Dist X/PlayerID(Helper(9190),Var(44)),Vel X) >= 33
trigger3 = PlayerIDExist(Helper(9190),var(45)) = 0 & PlayerIDExist(Helper(9190),var(44)) = 0 & PlayerIDExist(Helper(9190),var(43))
trigger3 = PlayerID(Helper(9190),Var(43)),Facing != Facing & (PlayerID(Helper(9190),Var(43)),P2Dist X/PlayerID(Helper(9190),Var(43)),Vel X) >= 33

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) >= 3 & statetype = A & Random <= 200 & Var(18) >= 1000
triggerall = Helper(9180),Var(31) > 0
triggerall = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1) & StateNo != 7015 & StateNo != 7315 & StateNo != 7415
triggerall = Helper(9190),Var(37) = -1 ;法師
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [24,30]) & Helper(9190),Fvar(11) < 27
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [240,280]
trigger1 = P2Dist Y = [0,65]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [24,30]) & Helper(9190),Fvar(11) < 27
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [260,321]
trigger2 = P2Dist Y = [66,110]
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [24,30]) & Helper(9190),Fvar(11) < 27
trigger3 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [305,334]
trigger3 = P2Dist Y = [111,200]

;突破飛道
[State -1]
type = ChangeState
value = 7400
triggerall = Var(59) >= 3 & Var(19) >= 3000 & alive & (Var(53) = 3 || PrevStateNo = 5120 || (Var(53) = 0 & Var(56) = [1,12]) || Helper(9190),Fvar(18) = 1)
triggerall = StateType != A
triggerall = Var(5) >= 1000
triggerall = P2MoveType != H & StateNo != 7560 & PrevStateNo != 7560
triggerall = Helper(9190),Var(37) = -1 ;法師
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 1 & Helper(9180),Var(31) > 0
triggerall = (Ctrl || (StateNo = [1,40]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140])
trigger1 = P2BodyDist X > 250 & P2StateType != A

;跳飛道
[State -1, 1]
type = VarSet
triggerall = Var(59) >= 2 & statetype != A
triggerall = Ctrl || (StateNo = [1,41]) || StateNo = 52 || StateNo = 100 || StateNo = [131,140]
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 1
triggerall = Helper(9190),Var(37) = -1 ;法師
trigger1 = P2MoveType != H & P2BodyDist X >= 350
var(4) = -1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 2 & statetype != A
triggerall = Ctrl || (StateNo = [1,41]) || StateNo = 52 || StateNo = 100 || StateNo = [131,140]
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 1
triggerall = Helper(9190),Var(37) = -1 ;法師
trigger1 = P2MoveType != H & P2BodyDist X >= 350
sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 2 & statetype != A & sysvar(1) = 1
triggerall = (PrevStateNo = [120,152]) || PrevStateNo = 52 || (StateNo = 131 & (PrevStateNo = [20,22])) || StateNo = 140
triggerall = Ctrl || (StateNo = [1,40]) || StateNo = 52 || StateNo = 100 || StateNo = [130,140]
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 1 || P2StateNo < 100
triggerall = Helper(9190),Var(37) = -1 ;法師
trigger1 = P2MoveType != H & P2BodyDist X >= 350
trigger1 = EnemyNear(Var(50)),Vel X <= 0 & (Random <= 145 || (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5))
trigger2 = P2MoveType != H & P2BodyDist X >= 350
trigger2 = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5 || P2StateNo < 100)
trigger2 = EnemyNear(Var(50)),Vel X <= 0
trigger3 = P2MoveType != H & P2BodyDist X >= 350
trigger3 = Helper(9180),Var(31) = [0,5]
trigger3 = EnemyNear(Var(50)),Vel X <= 0 & PrevStateNo = [150,152]

;---------------------------------------------------------------------------


;突襲連
[State -1]
type = ChangeState
value = 625
triggerall = Var(59) >= 3 & statetype = A
triggerall = Var(53) = 17
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = StateNo = 7415 & EnemyNear(Var(50)),StateType = A & Time > 1


[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) = 3 & (Var(18) >= 3000 || (Var(18) >= 2000  & EnemyNear(Var(50)),Life < 250))
triggerall = P2StateType = A & P2MoveType = H & Var(53) = 17
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger1 = Var(53) = 17

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = Var(59) >= 3 & statetype != A
trigger1 = stateno = 100 & Time < 4 & P2BodyDist X <= 40 & EnemyNear(Var(50)),BackEdgeBodyDist >= 40
trigger1 = Var(53) = 17 & Fvar(18) != -500

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A
triggerall = P2StateType = A
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || StateNo = 100
trigger1 = Var(53) = 17 & (P2BodyDist X > 40 || EnemyNear(Var(50)),BackEdgeBodyDist < 40)
trigger2 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

;防住後連打
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52 || (StateNo = [120,140]))
trigger1 = Var(53) = 9 & Var(56) = 20

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & StateType != A & P2StateType != A & Var(53) = 9
trigger1 = (stateno = 100 || stateno = 101) & P2BodyDist X <= 50 & Var(56) = 20
trigger2 = stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 200
triggerall = Var(59) >= 3 & StateType != A & P2StateType = A & Var(53) = 9
trigger1 = (stateno = 100 || stateno = 101) & P2BodyDist X <= 50 & Var(56) = 20
trigger2 = stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
;---------------------------------------------------------------------------

;想爆霸?
[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) >= 3 & Var(56) = 0 & statetype != A & Random <= Var(57)
triggerall = (Var(18) > EnemyNear(Var(50)),Power & EnemyNear(Var(50)),Authorname != "Boomer") || (Var(18) >= EnemyNear(Var(50)),Var(18))
triggerall = Var(18) >= 1000  & statetype != A
triggerall = NumHelper(9190) > 0 & Var(21) >= 500
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = EnemyNear(Var(50)),MoveType = A & ((EnemyNear(Var(50)),PrevStateNo = [5000,5999]) & (EnemyNear(Var(50)),PrevStateNo != [5120,5121]) || EnemyNear(Var(50)),PrevStateNo = P2StateNo) & EnemyNear(Var(50)),StateType != L
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(16) = 0
trigger1 = 0
trigger2 = MoveHit & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = MoveHit & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = MoveHit & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = MoveHit & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4

[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) >= 3 & Var(56) = 0 & statetype != A & Random <= Var(57)
triggerall = (Var(18) > EnemyNear(Var(50)),Power & EnemyNear(Var(50)),Authorname != "Boomer") || (Var(18) >= EnemyNear(Var(50)),Var(18))
triggerall = Var(18) >= 1000  & statetype != A
triggerall = NumHelper(9190) > 0 & Var(21) >= 500
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = EnemyNear(Var(50)),MoveType = A & (EnemyNear(Var(50)),PrevStateNo = [150,153]) & EnemyNear(Var(50)),StateType != L
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(16) = 0
trigger1 = 0
trigger2 = MoveGuarded & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = MoveGuarded & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = MoveGuarded & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveGuarded & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveGuarded & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = MoveGuarded & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = MoveGuarded & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = MoveGuarded & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = MoveGuarded & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveGuarded & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = MoveGuarded & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = MoveGuarded & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = MoveGuarded & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4

[State -1]
type = ChangeState
value = 1375
triggerall = EnemyNear(Var(50)),Authorname != "YU-TOHARU" & EnemyNear(Var(50)),Authorname != "my100yen" & EnemyNear(Var(50)),Authorname != "baggy"
triggerall = Var(59) >= 3 & Var(56) = 0 & statetype = A & Var(18) >= 1000 & Var(53) != 19
triggerall = EnemyNear(Var(50)),MoveType = A & (EnemyNear(Var(50)),PrevStateNo = [5000,5999]) & (EnemyNear(Var(50)),PrevStateNo != [5120,5121]) & EnemyNear(Var(50)),StateType != L
triggerall = Helper(9190),FVar(16) = 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger2 = MoveContact & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger3 = MoveContact & stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger4 = MoveContact & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger5 = MoveContact & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger6 = MoveContact & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = MoveContact & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger8 = MoveContact & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger9 = MoveContact & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger10 = MoveContact & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger11 = MoveContact & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0
trigger12 = MoveContact & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & Var(56) = 0 & statetype != A & Var(53) != 14
triggerall = EnemyNear(Var(50)),MoveType = A & ((EnemyNear(Var(50)),PrevStateNo = [5000,5999]) & (EnemyNear(Var(50)),PrevStateNo != [5120,5121]) || EnemyNear(Var(50)),PrevStateNo = P2StateNo) & EnemyNear(Var(50)),StateType != L
triggerall = EnemyNear(Var(50)),MoveType = A
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(16) = 0
triggerall = (EnemyNear(Var(50)),Authorname = "Boomer" & EnemyNear(Var(50)),StateNo = 7300 & EnemyNear(Var(50)),Time > 20) || (EnemyNear(Var(50)),Authorname = "Boomer" & EnemyNear(Var(50)),StateNo != 7300) || EnemyNear(Var(50)),Authorname != "Boomer"
trigger1 = 0
trigger2 = MoveHit & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = MoveHit & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = MoveHit & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & Var(56) = 0 & statetype != A & Var(53) != 14
triggerall = EnemyNear(Var(50)),MoveType = A & (EnemyNear(Var(50)),PrevStateNo = [150,153]) & EnemyNear(Var(50)),StateType != L
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(16) = 0
trigger1 = MoveGuarded & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = MoveGuarded & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger3 = MoveGuarded & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger4 = MoveGuarded & stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = MoveGuarded & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = MoveGuarded & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = MoveGuarded & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger8 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger9 = MoveGuarded & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger10 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger11 = MoveGuarded & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 3 & Var(56) = 0 & statetype != A & Var(18) >= 1000
triggerall = EnemyNear(Var(50)),MoveType = A & ((EnemyNear(Var(50)),PrevStateNo = [5000,5999]) & (EnemyNear(Var(50)),PrevStateNo != [5120,5121]) || EnemyNear(Var(50)),PrevStateNo = P2StateNo) & EnemyNear(Var(50)),StateType != L
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(16) = 0
triggerall = Var(48) = 1
triggerall = (EnemyNear(Var(50)),Authorname = "Boomer" & EnemyNear(Var(50)),StateNo = 7300 & EnemyNear(Var(50)),Time > 20) || (EnemyNear(Var(50)),Authorname = "Boomer" & EnemyNear(Var(50)),StateNo != 7300) || EnemyNear(Var(50)),Authorname != "Boomer"
trigger1 = stateno = 1000 && animelemtime(11) >= 1
trigger2 = stateno = 1025 && animelemtime(11) >= 1
trigger3 = stateno = 1050 && animelemtime(11) >= 1
trigger4 = stateno = 1100 && animelemtime(6) >= 1
trigger5 = stateno = 1125 && animelemtime(6) >= 1
trigger6 = stateno = 1150 && animelemtime(6) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 1
trigger8 = stateno = 1225 && animelemtime(21) >= 1
trigger9 = stateno = 1250 && animelemtime(23) >= 1
trigger10 = stateno = 1310 && animelemtime(1) >= 1
trigger11 = stateno = 1330 && animelemtime(1) >= 1
trigger12 = stateno = 1360 && animelemtime(1) >= 1
trigger13 = stateno = 1201 && animelemtime(19) >= 1
trigger14 = stateno = 1226 && animelemtime(21) >= 1
trigger15 = stateno = 1251 && animelemtime(23) >= 1

[State -1, Run Fwd]
type = ChangeState
value = 400
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = Var(53) = 14 & Var(56) = 20
trigger1 = (EnemyNear(Var(50)),AnimTime = [-13,-6]) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = StateNo != 100 & !((StateNo = [130,131]) & Anim = 100) & stateno != 101
trigger1 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 60
trigger2 = (EnemyNear(Var(50)),AnimTime <= -6) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger2 = StateNo = 100 || ((StateNo = [130,131]) & Anim = 100) || stateno = 101
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 60
trigger3 = StateNo = 100 & P2StateType != A & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
trigger3 = P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5000,5999]

[State -1, Run Fwd]
type = ChangeState
value = 430
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = Var(53) = 14 & Var(56) = 20
trigger1 = (EnemyNear(Var(50)),AnimTime = [-16,-8]) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+2
trigger1 = StateNo != 100 & !((StateNo = [130,131]) & Anim = 100) & stateno != 101
trigger1 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 135
trigger2 = (EnemyNear(Var(50)),AnimTime <= -7) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger2 = StateNo = 100 || ((StateNo = [130,131]) & Anim = 100) || stateno = 101
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 145
trigger3 = StateNo = 100 & P2StateType != A & Time > 3 & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
trigger3 = P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5000,5999]

[State -1, Run Fwd]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = Var(53) = 14 & Var(56) = 20
trigger1 = StateNo = 100 & P2StateType = A & P2BodyDist X <= 40 & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
trigger1 = P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5000,5999]

;---------------------------------------------------------------------------
;宣言反擊

[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) >= 3 & (Var(53) = 0 || Var(53) = 3 || Var(54) = 800 || (P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5200,5211]))
triggerall = Var(18) >= 2000 & Random <= Var(57)
triggerall = Var(21) >= 500 & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = Var(29) != 3 & P2BodyDist X <= 220
triggerall = EnemyNear(Var(50)),AnimTime <= -8 & P2MoveType != H
triggerall = ((Ctrl || (StateNo = [10,40]) || (StateNo = 52 & Time >= 1)) || (stateno = 100 || stateno = 101) || stateno = 130 || stateno = 131)
trigger1 = Var(12) = 0 & (Var(54) = 1000 || Var(54) = 1010  || Var(54) = 1025 || Var(54) = 1030 || Var(54) = 1050 || Var(54) = 1060 || EnemyNear(Var(50)),MoveContact)
trigger2 = (Var(12) = 11 || Var(12) = 21 || Var(12) = 31)
trigger3 = (Var(12) = 12 || Var(12) = 22 || Var(12) = 32)
trigger4 = (Var(12) = 13 || Var(12) = 23 || Var(12) = 33 || Var(12) = 99)
trigger5 = Helper(9190),FVar(14) = 1
trigger6 = Helper(9190),FVar(15) = 1
trigger7 = Helper(9190),FVar(16) = 1
trigger8 = Helper(9190),FVar(17) = 1
trigger9 = Helper(9190),FVar(18) = 1
trigger10 = Helper(9190),FVar(19) = 1

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & (Var(53) = 0 || Var(53) = 3 || Var(54) = 800 || (P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5200,5211]))
triggerall = statetype != A & stateno != 100 & stateno != 101  & P2StateType = A & (EnemyNear(Var(50)),Alive)
triggerall = (stateno = 7560 & animelemtime(17) >= 1)
triggerall = P2BodyDist X/Const(velocity.run.fwd.x) <= 5-1*EnemyNear(Var(50)),AnimTime & P2BodyDist X <= 200
trigger1 = Var(12) = 0 & (Var(54) = 1000 || Var(54) = 1010  || Var(54) = 1025 || Var(54) = 1030 || Var(54) = 1050 || Var(54) = 1060 || EnemyNear(Var(50)),MoveContact)
trigger2 = (Var(12) = 11 || Var(12) = 21 || Var(12) = 31)
trigger3 = (Var(12) = 12 || Var(12) = 22 || Var(12) = 32)
trigger4 = (Var(12) = 13 || Var(12) = 23 || Var(12) = 33)
trigger5 = Helper(9190),FVar(14) = 1
trigger6 = Helper(9190),FVar(15) = 1
trigger7 = Helper(9190),FVar(16) = 1
trigger8 = Helper(9190),FVar(17) = 1
trigger9 = Helper(9190),FVar(18) = 1
trigger10 = Helper(9190),FVar(19) = 1

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 0 & P2StateType != A
triggerall = statetype != A & stateno != 100 & stateno != 101 & (EnemyNear(Var(50)),Alive)
triggerall = (stateno = 7560 & animelemtime(17) >= 1)
trigger1 = EnemyNear(Var(50)),AnimTime <= -7 & P2BodyDist X <= 80 
trigger1 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 6 & Helper(9190),Var(11) > 0
trigger1 = Helper(9190),FVar(19) = 0
trigger2 = EnemyNear(Var(50)),AnimTime <= -8 & P2BodyDist X <= 130
trigger2 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 6 & Helper(9190),Var(11) > 0
trigger2 = Helper(9190),FVar(19) = 0
trigger3 = EnemyNear(Var(50)),AnimTime <= -4 & P2BodyDist X <= 70
trigger3 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 6 & Helper(9190),Var(11) > 0
trigger3 = Helper(9190),FVar(16) = 1
trigger4 = EnemyNear(Var(50)),AnimTime <= -4 & P2BodyDist X <= 70
trigger4 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 6 & Helper(9190),Var(11) > 0
trigger4 = Helper(9190),FVar(19) = 1
trigger5 = EnemyNear(Var(50)),AnimTime <= -4 & P2BodyDist X <= 70
trigger5 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 6 & Helper(9190),Var(11) > 0
trigger5 = Helper(9180),Var(31) > 0

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 0 & P2StateType = A
triggerall = statetype != A & stateno != 100 & stateno != 101 & (EnemyNear(Var(50)),Alive)
triggerall = (stateno = 7560 & animelemtime(17) >= 1)
trigger1 = EnemyNear(Var(50)),AnimTime <= -8 & P2BodyDist X <= 70
trigger1 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 5 & Helper(9190),Var(11) > 0
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*8 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*8+Helper(9190),Fvar(0)*36) = [-100,-1]
trigger2 = EnemyNear(Var(50)),AnimTime <= -8 & P2BodyDist X <= 70
trigger2 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time < 0 & Helper(9190),Var(11) > 0
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*8 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*8+Helper(9190),Fvar(0)*36) = [-100,-1]

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & StateType != A & P2StateType != A & Var(53) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0)  || (StateNo = 7560 & AnimElem = 17,>= 2))
trigger1 = EnemyNear(Var(50)),AnimTime <= -6 & P2BodyDist X <= 50
trigger1 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 6 & Helper(9190),Var(11) > 0

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & StateType != A & P2StateType != A & Var(53) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0)  || (StateNo = 7560 & AnimElem = 17,>= 2))
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = EnemyNear(Var(50)),AnimTime <= -7 & P2BodyDist X <= 120
trigger1 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 7 & Helper(9190),Var(11) > 0

[State -1, Run Fwd]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3
triggerall = statetype != A & P2StateType = A & Var(53) = 0
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0)  || (StateNo = 7560 & AnimElem = 17,>= 2))
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
trigger1 = EnemyNear(Var(50)),AnimTime <= -5 & P2BodyDist X <= 40
trigger1 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time >= 5 & Helper(9190),Var(11) > 0
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*5+Helper(9190),Fvar(0)*10) = [-100,-1]
trigger2 = EnemyNear(Var(50)),AnimTime <= -5 & P2BodyDist X <= 40
trigger2 = Helper(9190),Var(11)-EnemyNear(Var(50)),Time < 0 & Helper(9190),Var(11) > 0
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*5+Helper(9190),Fvar(0)*10) = [-100,-1]

[State -1]
type = ChangeState
value = 800
triggerall = Var(59) >= 3 & StateType != A & EnemyNear(Var(50)),IsHelper = 0 & P2StateType != A & Var(53) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,131])
triggerall = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0)  || (StateNo = 7560 & AnimElem = 17,>= 2))
triggerall = (P2StateNo != [105,106]) & (P2StateNo != [140,154]) & !(P2MoveType = A & PrevStateNo = [5000,5199]) & !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;會抓空的
triggerall = P2BodyDist X <= IfElse((EnemyNear(Var(50)),Authorname = "baggy" & EnemyNear(Var(50)),Name = "Furudo_Erika"),30,40)
trigger1 = EnemyNear(Var(50)),AnimTime <= -1 & P2BodyDist X <= 40
trigger1 = Helper(9190),FVar(16) = 1
trigger2 = EnemyNear(Var(50)),AnimTime <= -1 & P2BodyDist X <= 40
trigger2 = Helper(9190),FVar(19) = 1
trigger3 = EnemyNear(Var(50)),AnimTime <= -1 & P2BodyDist X <= 40
trigger3 = Helper(9190),FVar(19) = 1
trigger3 = Helper(9180),Var(31) > 0
trigger4 = (EnemyNear(Var(50)),AnimTime = [-3,-1]) & P2BodyDist X <= 40
trigger5 = P2MoveType = I & P2BodyDist X <= 35 & Random <= 77
trigger6 = NumHelper(9180) > 0
trigger6 = P2MoveType = I & P2StateNo >= 200 & Helper(9180),Var(31) > 0 & P2BodyDist X <= 35 & Random <= 77

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(18) < 1000
triggerall = Var(53) = 0 || Var(53) = 3 || Var(53) = 4 || Var(54) = 800
triggerall = (stateno = 7560 & animelemtime(17) >= 1) || StateNo = 100
triggerall = P2BodyDist X <= 160
triggerall = EnemyNear(Var(50)),AnimTime = [-18,-13]
triggerall = P2StateType != C
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Var(12) = 0 & (Var(54) = 1000 || Var(54) = 1010  || Var(54) = 1025 || Var(54) = 1030 || Var(54) = 1050 || Var(54) = 1060 || EnemyNear(Var(50)),MoveContact)
trigger2 = (Var(12) = 11 || Var(12) = 21 || Var(12) = 31)
trigger3 = (Var(12) = 12 || Var(12) = 22 || Var(12) = 32)
trigger4 = (Var(12) = 13 || Var(12) = 23 || Var(12) = 33 || Var(12) = 99)
trigger5 = Helper(9190),FVar(14) = 1
trigger6 = Helper(9190),FVar(15) = 1
trigger7 = Helper(9190),FVar(17) = 1
trigger8 = Helper(9190),FVar(18) = 1
trigger9 = Helper(9190),FVar(19) = 1

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9101) > 0
triggerall = Var(18) >= 1000 || Helper(9101),Var(19) > 0
triggerall = Var(53) = 0 || Var(53) = 3 || Var(53) = 4 || Var(54) = 800
triggerall = (stateno = 7560 & animelemtime(17) >= 1) || StateNo = 100
triggerall = P2BodyDist X <= 220
triggerall = P2StateType != C || (P2StateType = C & Vel X = 0)
triggerall = Helper(9190),FVar(21) = 0
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Var(12) = 0 & (Var(54) = 1000 || Var(54) = 1010  || Var(54) = 1025 || Var(54) = 1030 || Var(54) = 1050 || Var(54) = 1060 || EnemyNear(Var(50)),MoveContact)
trigger2 = (Var(12) = 11 || Var(12) = 21 || Var(12) = 31)
trigger3 = (Var(12) = 12 || Var(12) = 22 || Var(12) = 32)
trigger4 = (Var(12) = 13 || Var(12) = 23 || Var(12) = 33 || Var(12) = 99)
trigger5 = Helper(9190),FVar(14) = 1
trigger6 = Helper(9190),FVar(15) = 1
trigger7 = Helper(9190),FVar(17) = 1
trigger8 = Helper(9190),FVar(18) = 1
trigger9 = Helper(9190),FVar(19) = 1

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Var(18) >= 1000 || Helper(9175),Var(19) > 0
triggerall = Var(53) = 0 || Var(53) = 3 || Var(53) = 4 || Var(54) = 800
triggerall = (stateno = 7560 & animelemtime(17) >= 1) || StateNo = 100
triggerall = P2BodyDist X <= 220
triggerall = P2StateType != C || (P2StateType = C & Vel X = 0)
triggerall = Helper(9190),FVar(21) = 0
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Var(12) = 0 & (Var(54) = 1000 || Var(54) = 1010  || Var(54) = 1025 || Var(54) = 1030 || Var(54) = 1050 || Var(54) = 1060 || EnemyNear(Var(50)),MoveContact)
trigger2 = (Var(12) = 11 || Var(12) = 21 || Var(12) = 31)
trigger3 = (Var(12) = 12 || Var(12) = 22 || Var(12) = 32)
trigger4 = (Var(12) = 13 || Var(12) = 23 || Var(12) = 33 || Var(12) = 99)
trigger5 = Helper(9190),FVar(14) = 1
trigger6 = Helper(9190),FVar(15) = 1
trigger7 = Helper(9190),FVar(17) = 1
trigger8 = Helper(9190),FVar(18) = 1
trigger9 = Helper(9190),FVar(19) = 1

;---------------------------------------------------------------------------
;跟你走

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3
triggerall = Var(53) = 18
triggerall = (Ctrl || (StateNo = [1,10]) || StateNo = 52) & StateType != A
trigger1 = P2BodyDist X >= 120
trigger1 = P2MoveType != A

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = Var(59) >= 3
triggerall = Var(53) = 18
triggerall = StateNo = 100
trigger1 = P2BodyDist X <= 75
trigger1 = P2MoveType != A

[State -1, Run Fwd]
type = ChangeState
value = 21
triggerall = Var(59) >= 3 & Var(53) = 18
triggerall = (Ctrl || (StateNo = [1,11]) || StateNo = 52) & StateType != A
triggerall = StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 100 & Anim != 101
triggerall = P2StateType != A|| (P2StateType = A & MoveType != A)
trigger1 = P2BodyDist X = [140,75]
trigger1 = P2MoveType != A

[State -1, Run Back]
type = ChangeState
value = 22
triggerall = Var(59) >= 3 & Var(53) = 18
triggerall = (Ctrl || (StateNo = [1,10]) || StateNo = 52) & StateType != A
triggerall = StateNo != [120, 153]
triggerall = StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 100 & Anim != 101
triggerall = P2StateType != A|| (P2StateType = A & MoveType != A)
trigger1 = P2BodyDist X <= 70
trigger1 = P2MoveType != A

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & Var(53) != 3 & statetype != A
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Var(53) = 18 || Var(53) = 0
triggerall = P2StateNo != 5040 & PrevStateNo = [5200,5211]
trigger1 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [100,169])
trigger1 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [-120,-1]
trigger2 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [165,231])
trigger2 = (P2Dist Y-Vel Y*20-Const(movement.yaccel)*210) = [-120,-1]
trigger3 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [250,319])
trigger3 = (P2Dist Y-Vel Y*25-Const(movement.yaccel)*325) = [-120,-1]
trigger4 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*30 = [320,394])
trigger4 = (P2Dist Y-Vel Y*30-Const(movement.yaccel)*465) = [-120,-1]

trigger5 = P2StateType = A & P2MoveType = A & Var(54) = 1010 & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [270,435]) & Random <= 333
trigger5 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [-120,-1]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 3) & statetype != A & Var(18) >= 1000 & ((Random <= 0.15*Var(18)) || (NumHelper(9175) > 0 & Random <= 0.18*Var(18)))
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Var(53) = 18 || Var(53) = 0
triggerall = P2StateType = A & EnemyNear(Var(50)),PrevStateNo = [5200,5211]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-250,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,220]
trigger1 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 3) & statetype != A & Var(18) >= 1000 & ((Random <= 0.15*Var(18)) || (NumHelper(9175) > 0 & Random <= 0.18*Var(18)))
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Var(53) = 18 || Var(53) = 0
triggerall = P2StateType = A & EnemyNear(Var(50)),PrevStateNo = [5200,5211]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55) = [-110,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10 = [-20,80])
trigger1 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 3) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A) & P2StateType != C
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = Var(53) = 18 || Var(53) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [80,185]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-210,-10]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-100,-10]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-20,80]
trigger2 = P2StateType = A & P2MoveType != H

;---------------------------------------------------------------------------

;點跑抓
[State -1]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 22 & statetype != A
triggerall = Helper(9190),FVar(23) = 0
trigger1 = StateNo = [0,39]
trigger1 = P2MoveType != A & P2StateType != A
trigger1 = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
trigger1 = EnemyNear(Var(50)),GetHitVar(Hittime) - EnemyNear(Var(50)),GetHitVar(CtrlTime) >= 5

[State -1]
type = ChangeState
value = 105
triggerall = Var(59) >= 3 & Var(53) = 22 & statetype != A
trigger1 = StateNo = 100 & P2BodyDist X > 36 & P2StateType != A
trigger1 = (P2MoveType = A & EnemyNear(Var(50)),Vel X <= 4) || (P2MoveType = A & Helper(9180),Var(31) > 0)

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & Var(53) = 22 & statetype != A 
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = Helper(9190),FVar(23) = 0
trigger1 = P2BodyDist X = [27,60]
trigger1 = Random <= 50 & Helper(9190),Fvar(16) = 0 & P2StateType != A
trigger2 = P2BodyDist X = [27,60]
trigger2 = Random <= 200 & Helper(9190),Fvar(16) = 0 & EnemyNear(Var(50)),Vel X != 0 & P2StateType != A

[State -1]
type = ChangeState
value = 800
triggerall = Var(59) >= 3 & Var(53) = 22 & statetype != A & EnemyNear(Var(50)),IsHelper = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9185),FVar(0) <= 0
triggerall = (P2StateNo != [105,106]) & (P2StateNo != [140,154]) & !(P2MoveType = A & PrevStateNo = [5000,5199]) & !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;會抓空的
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2BodyDist X <= IfElse((EnemyNear(Var(50)),Authorname = "baggy" & EnemyNear(Var(50)),Name = "Furudo_Erika"),30,40)
trigger1 = Helper(9190),Fvar(16) = 1 & ((P2BodyDist X-EnemyNear(Var(50)),Vel X = [-15,36]) || (EnemyNear(Var(50)),FrontEdgeBodyDist < 40 & BackEdgeBodyDist < 30))
trigger1 = EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 40
trigger2 = (P2BodyDist X-EnemyNear(Var(50)),Vel X = [-15,36]) || (EnemyNear(Var(50)),FrontEdgeBodyDist < 40 & BackEdgeBodyDist < 30)
trigger2 = EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 40

;---------------------------------------------------------------------------
;暈眩+宣言平推
;Run Back
[State -1, Run Back]
type = ChangeState
value = 22
triggerall = Var(59) >= 3
trigger1 = statetype != A
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52) & (stateno != 100 & stateno != 101)
trigger1 = Var(53) = 11 & (P2Dist X = [0,205])

[State -1, Run Back]
type = ChangeState
value = 21
triggerall = Var(59) >= 3
trigger1 = statetype != A
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52) & (stateno != 100 & stateno != 101)
trigger1 = Var(53) = 11 & P2Dist X >= 218

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) >= 3 & StateType != A
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || stateno = 100
trigger1 = Var(53) = 11 & (P2Dist X = [0,205])

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = Var(53) = 11
trigger2 = Var(53) = 9
sysvar(1) = 1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = Var(53) = 11
trigger2 = Var(53) = 9
var(4) = 0

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A
triggerall = Helper(9190),Fvar(22) != -1 || EnemyNear(Var(50)),Authorname = "Boomer"
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52) & P2StateNo = 5300 & EnemyNear(Var(50)),Time >= 35
trigger1 = Var(53) = 11 & P2Dist X = [195,220]
trigger2 = Helper(9190),Fvar(22) != -1
trigger2 = ((Ctrl || (StateNo = [0,39]) || StateNo = 52)) & P2BodyDist X <= 50 & EnemyNear(Var(50)),BackEdgeBodyDist <= 45
trigger2 = Var(53) = 9 & (EnemyNear(Var(50)),Const(Size.head.pos.y) <= -212 || EnemyNear(Var(50)),Authorname = "Boomer")

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger1 = Var(53) = 9 & P2BodyDist X > 50 

[State -1]
type = ChangeState
value = 101
triggerall = Var(59) >= 3 & statetype != A
trigger1 = Var(53) = 9
trigger1 = stateno = 100 & P2BodyDist X <= 30

[State -1]
type = ChangeState
value = 625
triggerall = Var(59) >= 3 & statetype = A
trigger1 = StateNo != 5210 & Vel X != const(velocity.runjump.fwd.x) & P2StateNo = 5300 & EnemyNear(Var(50)),Time >= 35
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger1 = Var(53) = 11 & Time > 9
trigger2 = StateNo != 5210 & Vel X != const(velocity.runjump.fwd.x)
trigger2 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger2 = Var(53) = 9 & Time > 9

[State -1]
type = ChangeState
value = 616
triggerall = Var(59) >= 3 & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 5 && animelemtime(5) <= 2
trigger1 = Var(53) = 11 || Var(53) = 9

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger1 = Var(53) = 12
trigger2 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger2 = Var(53) = 18 & P2BodyDist X >= 50
trigger3 = (Ctrl || (StateNo = [0,39]) || StateNo = 52 || (StateNo = [120,140]))
trigger3 = Var(53) = 14 & Var(56) = 20

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = Var(53) = 12
sysvar(1) = 0

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || (stateno = 100 || stateno = 101)
trigger1 = Var(53) = 12 & P2BodyDist X <= 115

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) >= 3 & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim = 41
trigger1 = Var(53) = 12
trigger1 = (Pos Y+Vel Y*15+Const(movement.yaccel)*120) = [-70,-1]

;13
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger1 = Var(53) = 13 

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & statetype != A
trigger1 = ((Ctrl || (StateNo = [0,40]) || StateNo = 52) || (stateno = 100 || stateno = 101)) & Time > 20 & P2BodyDist X <= 50
trigger1 = Var(53) = 13
trigger2 = ((Ctrl || (StateNo = [0,39]) || StateNo = 52) || (stateno = 100 || stateno = 101)) & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*4 <= 36
trigger2 = Var(53) = 9

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & statetype != A
trigger1 = Var(53) = 13
trigger1 = ((Ctrl || (StateNo = [0,40]) || StateNo = 52) || (stateno = 100 || stateno = 101)) & (Time > 20 || P2StateNo != 5300) & P2BodyDist X <= 140
trigger2 = ((Ctrl || (StateNo = [0,39]) || StateNo = 52) || ((Time > 10 & stateno = 100) || stateno = 101)) & P2BodyDist X <= 100
trigger2 = Var(53) = 9

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) >= 3 & statetype = A & Var(18) >= 1000
triggerall = Var(53) = 9
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) >= 3 & statetype = A & Var(18) >= 1000
triggerall = Var(53) = 9
trigger1 = MoveContact & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0

;---------------------------------------------------------------------------
;親子
[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(53) = 7 & (EnemyNear(Var(50)),Life < 170*Fvar(15) & EnemyNear(Var(50)),Alive)
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = NumHelper(2050) > 0
trigger1 = Helper(2050),Time < 50

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & stateno != 100 & stateno != 101 
trigger1 = (Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1))
trigger1 = Var(53) = 7 & Var(56) = 0
trigger2 = (Ctrl || (StateNo = [0,39]) || (StateNo = 52 & Time >= 1))
trigger2 = Var(53) = 7 & Var(56) >= 30 & P2dist X >= 90

[State -1]
type = ChangeState
value = 1225
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 7
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(21) >= 300 & Var(48) = 0
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
trigger1 = Var(56) = 0

[State -1]
type = ChangeState
value = 1225
triggerall = Var(59) >= 4 & statetype != A
triggerall = Var(53) = 7 & Var(59) >= 4 & NumHelper(9175) > 0
triggerall = (Var(5) >= 1000 || Helper(9175),Var(14) > 0) & Var(19) >= 1000
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
triggerall = Var(56) = 0 & EnemyNear(Var(50)),Name != "Elque"
triggerall = EnemyNear(Var(50)),BackEdgeBodyDist <= 72
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) < 1050
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) < 850
trigger3 = Var(7) = 111
trigger3 = Var(35) < 550
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) < 1350

[State -1]
type = ChangeState
value = 1225
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 7 & Var(59) >= 4 & NumHelper(9101) > 0
triggerall = (Var(5) >= 1000 || Helper(9101),Var(14) > 0) & Var(19) >= 1000
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
triggerall = Var(56) = 0 & EnemyNear(Var(50)),Name != "Elque"
triggerall = EnemyNear(Var(50)),BackEdgeBodyDist <= 72
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) < 1050
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) < 850
trigger3 = Var(7) = 111
trigger3 = Var(35) < 550
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) < 1350


[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 7
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || stateno = [120,140]
trigger1 = Var(56) != 30 & Var(56) != 35 & Var(56) != 40 & Var(56) != 55 & Var(56) != 60

[State -1]
type = ChangeState
value = 1225
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 7
triggerall = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || stateno = [120,140]
trigger1 = Var(56) = 30

[State -1]
type = ChangeState
value = 230
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) > 0
triggerall = Helper(2050),Time > 140 || P2StateType = A
trigger1 = Var(53) = 7 & (Var(7) = [100,120])
trigger1 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger2 = Var(53) = 7 & Var(56) = 35 & (Var(7) != [100,120]) & P2Dist X <= 95
trigger2 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) 

[State -1]
type = ChangeState
value = 240
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) > 0
trigger1 = Var(53) = 7 & Var(56) = 55
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & NumHelper(9175) > 0
trigger1 = Var(53) = 7 & Var(56) = 55
trigger1 = (MoveContact || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 1

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & Var(5) >= 1000 & NumHelper(9175) > 0
trigger1 = Var(53) = 7 & Var(56) = 55
trigger1 = (MoveContact || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 0

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) >= 3  & statetype = A & NumHelper(9175) > 0
triggerall = Helper(9175),Var(19) = 1 || Var(18) >= 1000
trigger1 = Var(53) = 7 & Var(56) = 55
trigger1 = MoveContact & stateno = 7100 && animelemtime(2) >= 1

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & statetype != A & P2StateType != A & NumHelper(2050) > 0
triggerall = Helper(2050),Time <= 140
trigger1 = Var(53) = 7 & (Var(7) = [100,120])
trigger1 = (MoveContact || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger2 = Var(53) = 7 & Var(56) = 35 & (Var(7) != [100,120]) & P2Dist X <= 95
trigger2 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) 

[State -1]
type = ChangeState
value = 231
triggerall = Var(59) >= 3 & statetype != A
trigger1 = Var(53) = 7 & Var(56) = 35
trigger1 = (MoveContact || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 125,225,220)
triggerall = Var(59) >= 3 & statetype != A
trigger1 = Var(53) = 7 & Var(56) = 35
trigger1 = (MoveContact || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = Var(53) = 7 & Var(56) = 35
trigger2 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 1125
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(53) = 7 & Var(56) = 35 & Var(18) >= 1000 & Var(48) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(53) = 7 & Var(56) = 35
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 3 & statetype != A & Var(18) >= 2000 & Var(49) = 0
triggerall = Var(53) = 7 & Var(56) = 35
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 7 & Var(56) = 35
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

;101
[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(53) = 7 & Var(56) = 60
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = NumHelper(2050) > 0
trigger1 = Helper(2050),Time >= 110

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9101) > 0
triggerall = Helper(9101),Var(19) = 1
triggerall = numhelper(8050) = 0
triggerall = Var(53) = 7 & Var(56) = 60
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Helper(9175),Var(19) = 1
triggerall = numhelper(8050) = 0
triggerall = Var(53) = 7 & Var(56) = 60
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & Var(18) >= 1000
triggerall = numhelper(8050) = 0
triggerall = Var(53) = 7 & Var(56) = 60
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 1050
triggerall = Var(59) >= 3 & statetype != A
triggerall = numhelper(8020) = 0
triggerall = Var(53) = 7 & Var(56) = 60
trigger1 = Ctrl || (StateNo = [0,40]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)

;---------------------------------------------------------------------------
;1375分支

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 15
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100  & P2StateType = A
triggerall = (Ctrl || (StateNo = [0,40]) || StateNo = 52) || (StateNo = [130,131])
trigger1 = EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),Vel Y >= 9 & P2BodyDist X > 120
trigger2 = EnemyNear(Var(50)),MoveType = H & StateNo = 40

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = Var(59) >= 3 & Var(53) = 15
triggerall = statetype != A & StateNo = 100 & P2StateType = A
trigger1 = EnemyNear(Var(50)),MoveType = H & P2BodyDist X <= 100
trigger2 = EnemyNear(Var(50)),Vel Y < 9

[State -1]
type = ChangeState
value = 420
triggerall = Var(59) >= 3 & Var(53) = 15 & statetype != A
triggerall = Ctrl || (StateNo = [1,40]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (P2MoveType != H & P2BodyDist X = [-5,150]) || (P2MoveType = H & P2BodyDist X = [-5,140])
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-70,-1]

[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) >= 3 & Var(53) = 15 & statetype != A & NumHelper(2050) = 0 & Random <= Var(57)
triggerall = Var(18) = [1000,2000]
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 1125
triggerall = Var(59) >= 3 & Var(53) = 15 & statetype != A & NumHelper(9175) > 0
triggerall = Var(56) = 55 & Var(48) > 0 & (Var(18) >= 1000 || Helper(9175),Var(19) = 1)
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 1175
triggerall =  Var(59) >= 3 & statetype != A & NumHelper(9175) > 0
triggerall = Var(48) = 1 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = Helper(9190),FVar(16) = 0
triggerall = Var(53) = 15
trigger1 = stateno = 1100 && animelemtime(10) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(10) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(10) >= 1 & MoveHit

[State -1]
type = ChangeState
value = 1125
triggerall = Var(59) >= 3 & Var(53) = 15 & statetype != A
triggerall = Var(56) = 55
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & Var(53) = 15 & statetype != A & NumHelper(2050) = 0
triggerall = Var(18) >= 2000
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & Var(53) = 15 & NumHelper(9101) > 0 & NumHelper(2050) = 0
triggerall = Helper(9101),Var(19) = 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0))

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & Var(53) = 15 & NumHelper(9175) > 0 & NumHelper(2050) = 0
triggerall = Helper(9175),Var(19) = 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0))

;---------------------------------------------------------------------------
;打康空連+1375+亂舞收尾

;避免亂跳
[State -1, Run Fwd]
type = ChangeState
value = 1
triggerall = Var(59) >= 3 & Var(53) = [6,8]
triggerall = statetype != A & StateNo = 0 & Ctrl
trigger1 = P2StateType = A & MoveType = H

;1375
[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500 & Var(53) = 6 & Random <= Var(57)
triggerall = Var(59) >= 3 & Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*36+Helper(9190),Fvar(0)*666) = [-115,-1]
trigger1 = StateNo != 100 || (StateNo = 100 & Time <= 6)

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & Var(18) >= 2000 & NumHelper(2050) = 0
triggerall = Var(21) < 500 & Var(53) = 6
triggerall = Var(39) != 6
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [0,175]
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190) = [-150,-1]
trigger1 = 1

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & Var(53) = 6 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || (stateno = [120,140]) || (stateno = 7560 & animelemtime(17) >= 1)
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-110,-1]
trigger1 = StateNo != 100 || (StateNo = 100 & Time <= 6)

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 6
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100  & P2StateType = A & (EnemyNear(Var(50)),Alive)
triggerall = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || (StateNo = [130,131]) || (StateNo = 40 & PrevStateNo != 41)
triggerall = EnemyNear(Var(50)),MoveType = H & (EnemyNear(Var(50)),Vel Y >= 7 || Var(56) = 20)
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) < 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) < 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) < 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) < 2100

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = Var(59) >= 3 & Var(53) = 6
triggerall = statetype != A & StateNo = 100 & P2StateType = A & (EnemyNear(Var(50)),Alive)
triggerall = EnemyNear(Var(50)),MoveType = H & P2BodyDist X <= 5
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) < 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) < 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) < 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) < 2100

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 8
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100  & P2StateType = A & (EnemyNear(Var(50)),Alive)
triggerall = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger1 = EnemyNear(Var(50)),MoveType = H

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) = 7
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100  & P2StateType = A & (EnemyNear(Var(50)),Alive)
triggerall = (Ctrl || (StateNo = [0,39]) || StateNo = 52) || (StateNo = [130,131])
trigger1 = EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),Vel Y >= 0

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = Var(59) >= 3 & Var(53) = 7
triggerall = statetype != A & StateNo = 100 & P2StateType = A & (EnemyNear(Var(50)),Alive)
trigger1 = EnemyNear(Var(50)),MoveType = H & P2BodyDist X <= 55

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 7
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = P2StateType = A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2100

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 4 & statetype != A & (Var(53) = 7 || Var(53) = 8)
triggerall = NumHelper(9190) > 0 & Var(48) = 0 & Var(18) >= 1000
triggerall = P2StateType = A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = !((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11 <= 60) & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91 <= -165))
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-250,-1]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,220]
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2100

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 7 || Var(53) = 8)
triggerall = NumHelper(9190) > 0
triggerall = P2StateType = A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = !((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11 <= 60) & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91 <= -165))
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-250,-1]
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,220]
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2100

[State -1]
type = ChangeState
value = 1175
triggerall = Var(59) >= 4 & statetype != A & (Var(53) = 7 || Var(53) = 8)
triggerall = NumHelper(9190) > 0 & Var(48) = 0 & Var(18) >= 1000
triggerall = P2StateType = A
triggerall = !((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11 <= 60) & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91 <= -165))
triggerall = (MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3) || (MoveHit & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3) || (MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3) || (MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3)
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2100

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 7 || Var(53) = 8)
triggerall = NumHelper(9190) > 0
triggerall = P2StateType = A
triggerall = !((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11 <= 60) & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91 <= -165))
triggerall = (MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3) || (MoveHit & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3) || (MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3) || (MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3)
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 1800
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1600
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 1300
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 2100

[State -1]
type = ChangeState
value = 230
triggerall = Var(59) >= 3 & (Var(53) = 6 || Var(53) = 7 || Var(53) = 8) & statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2BodyDist X = [41,135]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*14+Helper(9190),Fvar(0)*105) = [-60,-10]

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & (Var(53) = 6 || Var(53) = 7 || Var(53) = 8) & statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = (P2MoveType != H & P2BodyDist X = [0,150]) || (P2MoveType = H & P2BodyDist X = [0,140])
trigger1 = EnemyNear(Var(50)),Vel Y > 0
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21) = [-70,60]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*5+Helper(9190),Fvar(0)*15) != [-60,0]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*14+Helper(9190),Fvar(0)*105) != [-60,-10]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) != [-110,-1]

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & (Var(53) = 6 || Var(53) = 7 || Var(53) = 8) & statetype != A
triggerall = EnemyNear(Var(50)),StateType != L
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 =  (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*4 = [-40,40]) & EnemyNear(Var(50)),StateType = A
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) = [-70,-1]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*4 = [-20,40]) & EnemyNear(Var(50)),StateType = A & P2MoveType != H
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) = [-70,-1]
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9 = [130,200]) & EnemyNear(Var(50)),StateType = A
trigger3 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*9+Helper(9190),Fvar(0)*45) = [-70,-1]

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & (Var(53) = 6 || Var(53) = 7 || Var(53) = 8) & statetype != A
triggerall = EnemyNear(Var(50)),StateType != L 
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [140,280]) & EnemyNear(Var(50)),StateType = A
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-75,-1]

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) >= 3 & Var(53) = 8 & statetype = A
triggerall = P2BodyDist X >= 140 & FVar(5) = 300 & Var(18) >= 3000
trigger1 = (MoveContact || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger2 = (MoveContact || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger3 = (MoveContact || Var(29) = 3) & stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger4 = (MoveContact || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger5 = (MoveContact || Var(29) = 3) & stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 1350
triggerall = Var(59) >= 3 & Var(53) = 8 & statetype = A
triggerall = P2BodyDist X >= 140 & FVar(5) = 300
trigger1 = (MoveHit || Var(29) = 3) & stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger2 = (MoveHit || Var(29) = 3) & stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2
trigger3 = (MoveHit || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0
trigger4 = (MoveHit || Var(29) = 3) & stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = IfElse(Var(59) >= 4 & Var(18) >= 1000,1175,1200)
triggerall = Var(59) >= 3 & (Var(53) = 6 || Var(53) = 7 || Var(53) = 8) & statetype != A & P2StateType = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3


[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3
trigger1 = Var(53) = 8
sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & p2statetype = A
triggerall = (Var(53) = 7 || Var(53) = 8) & Random <= 100
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 605
triggerall = Var(59) >= 3 & statetype = A
triggerall = (Var(53) = 7 || Var(53) = 8)
trigger1 = StateNo != 5210
trigger1 = ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)
trigger1 = Time > 2
trigger2 = StateNo != 5210
trigger2 = ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)
trigger2 = Time > 2

[State -1]
type = ChangeState
value = 630
triggerall = Var(59) >= 3 & statetype = A
triggerall = (Var(53) = 7 || Var(53) = 8)
trigger1 = Var(34) = 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 605  

;---------------------------------------------------------------------------
;地板動作

;起身壓
[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & ((Var(53) = 4 & NumHelper(53010) = 0) || (StateNo = 100 & P2StateNo = 5120 & NumHelper(53010) = 0))
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040 & Sysvar(1) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(29) = 0
triggerall = (P2StateNo = [5120,5210]) || (PrevStateNo = 5110 & P2StateType != S & P2StateType != C)
trigger1 = (EnemyNear(Var(50)),AnimTime = [-30,-15]) & StateNo != 100
trigger1 = (P2BodyDist X-EnemyNear(Var(50)),Vel X*10) = [-20,150]
trigger2 = (EnemyNear(Var(50)),AnimTime = [-30,-15]) & StateNo = 100 
trigger2 = (P2BodyDist X-EnemyNear(Var(50)),Vel X*10) = [-20,170]
sysvar(1) = 0

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & ((Var(53) = 4 & NumHelper(53010) = 0) || (StateNo = 100 & P2StateNo = 5120 & NumHelper(53010) = 0))
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040 & Sysvar(1) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(29) = 0
triggerall = (P2StateNo = [5120,5210]) || (PrevStateNo = 5110 & P2StateType != S & P2StateType != C)
trigger1 = (EnemyNear(Var(50)),AnimTime = [-30,-15]) & StateNo != 100 & Random <= 100
trigger1 = (P2BodyDist X-EnemyNear(Var(50)),Vel X*10) = [-20,150]
trigger2 = (EnemyNear(Var(50)),AnimTime = [-30,-15]) & StateNo = 100 & Random <= 200
trigger2 = (P2BodyDist X-EnemyNear(Var(50)),Vel X*10) = [-20,170]
trigger3 = (EnemyNear(Var(50)),AnimTime = [-30,-1]) & StateNo = 100
trigger3 = (P2BodyDist X-EnemyNear(Var(50)),Vel X*10) = [-20,40]

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 4 || EnemyNear(Var(50)),PrevStateNo = 5120)
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim = 41
trigger1 = (Pos Y+Vel Y*15+Const(movement.yaccel)*120) = [-70,-1]

;游刃有餘
[State -1]
type = ChangeState
value = 7000
triggerall = Var(59) >= 3 & statetype != A & Var(5) >= 1000
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || stateno = 100 || stateno = 101
triggerall = (Var(19)-Var(18) >= 2000) ||(Var(19) >= 1000 & Var(18) < 1000)
triggerall = Var(53) = 4
trigger1 = P2MoveType = H & P2StateType = A
trigger1 = P2Dist Y <= -120 || EnemyNear(Var(50)),Vel Y <= 0
trigger2 = (PrevStateNo = [1100,1299]) & P2MoveType = H & P2StateType = A
trigger2 = P2BodyDist X >= 120 || (EnemyNear(Var(50)),Vel Y < 0 & (StateNo = [1100,1176]))

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 41 & StateNo != 100 & StateNo != 101 & Anim != 100 & EnemyNear(Var(50)),StateNo != 5120  & PrevStateNo != 420
triggerall = Var(53) = 4
triggerall = P2Dist X <= 500
triggerall = NumHelper(53010) > 0 || (P2StateNo = [6110,6113])
trigger1 = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
trigger1 = P2Dist X > 250 & EnemyNear(Var(50)),HitFall = 1 & EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),Vel Y > 0
trigger2 = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
trigger2 = (P2StateNo = [6110,6113])
trigger3 = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
trigger3 = P2Dist X > 250 & (EnemyNear(Var(50)),StateNo = [5100,5111]) & EnemyNear(Var(50)),MoveType = H
trigger4 = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
trigger4 = P2Dist X > 100 & NumHelper(53010) > 0 & (EnemyNear(Var(50)),StateNo = [5100,5111]) & EnemyNear(Var(50)),MoveType = H

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & statetype != A
;triggerall = Var(53) = 4
trigger1 = stateno = 52
trigger1 = P2BodyDist X <= 40 & (P2StateNo = [6111,6113])

[State -1]
type = ChangeState
value = 411
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 4
triggerall = P2Dist X <= 200 & EnemyNear(Var(50)),StateType = L & EnemyNear(Var(50)),MoveType = H
trigger1 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 4
trigger1 = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger1 = P2BodyDist X <= 130 & P2StateNo = [6110,6113]

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 4
triggerall = Var(8) < 200 & (NumHelper(53010) > 0 || StateNo = 100 || stateno = 7560 || Prevstateno = 7560 || (P2StateNo = [6110,6113]))
trigger1 = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger1 = P2Dist X <= 220 &Var(8) != 420 & Var(8) != 430 & Helper(9190),Fvar(26) != -1 
trigger1 = P2StateNo = 5080 || P2StateNo = 5081 || P2StateNo = 5100 || P2StateNo = 5101 || P2StateNo = 5110 || (P2StateNo = 7625 & P2StateType = L)
trigger2 = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger2 = P2Dist X <= 220 & Var(8) != 420 & Var(8) != 430 
trigger2 = IfElse((EnemyNear(Var(50)),Authorname = "Boomer" || NumHelper(53010) > 0),P2StateNo = 6081 || P2StateNo = 6080 || P2StateNo = 6111 || P2StateNo = 6112 || P2StateNo = 6113 || P2StateNo = 6120,0)
trigger3 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 420
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 4
triggerall = P2BodyDist X <= 200 & EnemyNear(Var(50)),MoveType = H
trigger1 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger2 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger4 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger5 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

;---------------------------------------------------------------------------
;AT空連
[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) >= 3 & statetype = A & Var(18) >= 2000
triggerall = Fvar(5) != 1
trigger1 = MoveHit & stateno = 7100 && animelemtime(2) >= 1 
trigger1 = P2StateType = A

[State -1]
type = ChangeState
value = 230
triggerall = Var(59) >= 3 & statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2StateType = A & Var(53) = 2 & P2BodyDist X <= 40
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*14+Helper(9190),Fvar(0)*105) = [-60,-10]

;---------------------------------------------------------------------------

;搶招專區

;吊反擊
[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & StateType != A & P2StateType != A & Var(53) = 0
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Helper(9190),FVar(23) = 0
triggerall = Helper(9180),Var(40) > 0 || Helper(9185),Var(40) > 0
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2StateType != A & P2MoveType = I & P2StateNo != 40 & P2StateNo < 200 & P2BodyDist X = [85,100]
trigger1 = Random = [51,150]
trigger1 = PrevStateNo != 400

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) >= 3 & StateType != A & P2StateType != A & Var(53) = 0
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Helper(9190),FVar(23) = 0
triggerall = Helper(9180),Var(40) > 0 || Helper(9185),Var(40) > 0 || Helper(9190),FVar(30) = 1
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2StateType != A & P2MoveType = I & P2StateNo != 40 & P2StateNo < 200 & P2BodyDist X = [130,143]
trigger1 = Random = [0,50]
trigger1 = PrevStateNo != 400 & PrevStateNo != 410

;抓漏
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & (Var(53) = 0 || Var(53) = 9) & Random = 40
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100 
triggerall = Helper(9180),Var(31) = 0
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || (StateNo = [130,131])
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(23) = 0
triggerall = Helper(9190),Var(34) = 0
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0
trigger1 = (EnemyNear(Var(50)),AnimTime <= -7) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+2 & (EnemyNear(Var(50)),Time-Helper(9190),Fvar(11) >= 3 || EnemyNear(Var(50)),MoveContact || EnemyNear(Var(50)),AnimTime >= -20)
trigger1 = StateNo != 100 & !((StateNo = [150,153]) & Anim = 100) & stateno != 101 & P2BodyDist X <= 250
trigger1 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 80-10*EnemyNear(Var(50)),AnimTime
trigger2 = (EnemyNear(Var(50)),AnimTime <= -10) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+2 & (EnemyNear(Var(50)),Time-Helper(9190),Fvar(11) >= 3 || EnemyNear(Var(50)),MoveContact || EnemyNear(Var(50)),AnimTime >= -20)
trigger2 = StateNo = 100 || ((PrevStateNo = [150,153]) & Anim = 100) || stateno = 101 & P2BodyDist X <= 250
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 90-10*EnemyNear(Var(50)),AnimTime

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & (Var(53) = 0 || Var(53) = 9 || (Var(53) = 14 & Var(56) = 20))
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100 
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || (StateNo = [130,131])
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0 & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+2
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*(4+0.1*P2BodyDist X) = [-40,40]) & P2StateType = A & P2MoveType != H
trigger1 = P2BodyDist Y+EnemyNear(Var(50)),Vel Y*(4+0.1*P2BodyDist X)+Helper(9190),Fvar(0)*(2+0.05*P2BodyDist X)*(5+0.1*P2BodyDist X) = [-100,-1]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*(14+0.1*P2BodyDist X) = [41,130]) & P2StateType = A & P2MoveType != H
trigger2 = P2BodyDist Y+EnemyNear(Var(50)),Vel Y*(14+0.1*P2BodyDist X)+Helper(9190),Fvar(0)*(7+0.05*P2BodyDist X)*(15+0.1*P2BodyDist X) = [-60,-10]

[State -1, Run Fwd]
type = ChangeState
value = 400
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [120,140])
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(23) = 0
triggerall = (Var(53) != 3 & Helper(9190),Var(34) = 0)  || (Var(53) = 3 & Helper(9190),Var(34) = 1 & Random <= 250)
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0
trigger1 = (EnemyNear(Var(50)),AnimTime = [-13,-6]) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = StateNo != 100 & !((StateNo = [130,140]) & Anim = 100) & stateno != 101
trigger1 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 60
trigger2 = (EnemyNear(Var(50)),AnimTime <= -6) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger2 = StateNo = 100 || ((StateNo = [130,140]) & Anim = 100) || stateno = 101
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 60
trigger3 = StateNo = 100 & P2StateType != A & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
trigger3 = P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5000,5999]

[State -1, Run Fwd]
type = ChangeState
value = 410
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,140])
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Var(53) != 3 & Helper(9190),Var(34) = 0)  || (Var(53) = 3 & Helper(9190),Var(34) = 1 & Random <= 250)
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0
trigger1 = (EnemyNear(Var(50)),AnimTime = [-13,-7]) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+2
trigger1 = StateNo != 100 & !((StateNo = [130,140]) & Anim = 100) & stateno != 101
trigger1 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 80
trigger2 = (EnemyNear(Var(50)),AnimTime <= -6) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger2 = StateNo = 100 || ((StateNo = [130,140]) & Anim = 100) || stateno = 101
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 85

[State -1, Run Fwd]
type = ChangeState
value = 430
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,140])
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Var(53) = 0 & Helper(9190),Var(34) = 0)  || (Var(53) = 3 & Helper(9190),Var(34) = 1 & Random <= 250)
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0
trigger1 = (EnemyNear(Var(50)),AnimTime = [-16,-8]) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+2
trigger1 = StateNo != 100 & !((StateNo = [130,140]) & Anim = 100) & stateno != 101
trigger1 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 135
trigger2 = (EnemyNear(Var(50)),AnimTime <= -7) & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger2 = StateNo = 100 || ((StateNo = [130,140]) & Anim = 100) || stateno = 101
trigger2 = P2StateType != A & P2StateType != L & P2MoveType != H & P2BodyDist X <= 145
trigger3 = StateNo = 100 & P2StateType != A & Time > 3 & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
trigger3 = P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5000,5999]

[State -1, Run Fwd]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,140])
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Var(53) = 0 & Helper(9190),Var(34) = 0)  || (Var(53) = 3 & Helper(9190),Var(34) = 1 & Random <= 250)
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0 & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*4 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) = [-100,-1]
trigger2 = StateNo = 100 & P2StateType = A & P2BodyDist X <= 40 & ((PrevStateNo = [200,499]) || (PrevStateNo = [1100,1299]))
trigger2 = P2MoveType = A & EnemyNear(Var(50)),PrevStateNo = [5000,5999]

[State -1, Run Fwd]
type = ChangeState
value = 230
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,140])
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Var(53) = 0 & Helper(9190),Var(34) = 0)  || (Var(53) = 3 & Helper(9190),Var(34) = 1 & Random <= 250)
triggerall = P2StateNo > 200 & Helper(9190),Fvar(11) > 0 & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = (P2BodyDist X-EnemyNear(Var(50)),Vel X*13 = [41,130]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*14+Helper(9190),Fvar(0)*105) = [-60,-10]

[State -1, Run Fwd]
type = ChangeState
value = 800
triggerall = Var(59) >= 3
triggerall = statetype != A & EnemyNear(Var(50)),IsHelper = 0
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,140])
triggerall = (P2StateNo != [105,106]) & (P2StateNo != [140,154]) & !(P2MoveType = A & PrevStateNo = [5000,5199]) & !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;會抓空的
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9185),FVar(0) <= 0
triggerall = Var(29) != 3 & PrevStateNo != 7100 & PrevStateNo != [200, 499]
triggerall = P2StateNo != 40 & P2StateNo != 105 & P2StateNo != 5120 & P2StateNo != 5200 & P2StateNo != 5201 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall = P2StateNo != [5200,5211]
triggerall = P2StateNo != [140, 153]
triggerall = P2BodyDist X-EnemyNear(Var(50)),AnimTime*EnemyNear(Var(50)),Vel X >= 0
triggerall = (Var(53) = 0 & Helper(9190),Var(34) = 0)  || (Var(53) = 3 & Helper(9190),Var(34) = 1 & Random <= 250)
triggerall = (P2StateType = S & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X = [0,44]) || (P2StateType = C & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X = [0,42])
triggerall = P2StateNo > 200
triggerall = P2BodyDist X <= IfElse((EnemyNear(Var(50)),Authorname = "baggy" & EnemyNear(Var(50)),Name = "Furudo_Erika"),30,50)
trigger1 = (EnemyNear(Var(50)),AnimTime = [-4,0])
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52
trigger1 = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0)) & P2StateType != A & P2StateType != L & P2MoveType = A
trigger2 = EnemyNear(Var(50)),AnimTime <= 0
trigger2 = StateNo = 100 || ((StateNo = [130,140]) & Anim = 100) || StateNo = 101
trigger2 = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0)) & P2StateType != A & P2StateType != L & P2MoveType = A

;---------------------------------------------------------------------------
;換人距離太近

[State -1]
type = ChangeState
value = 625
triggerall = Var(59) >= 3 & statetype = A & P2StateNo != 5300 & (P2MoveType != H || P2StateNo = [120,155])
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = StateNo = 7015 & Pos Y <= -50 & Random <= 388
trigger1 = P2BodyDist X -Var(1) <= 60 & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5300
trigger2 = StateNo = 7315 & Pos Y <= -50 & Random <= 388
trigger2 = P2BodyDist X -Var(1) <= 60 & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5300
trigger3 = StateNo = 7415 & Pos Y <= -50 & Random <= 388
trigger3 = P2BodyDist X -Var(1) <= 60 & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5300

[State -1]
type = ChangeState
value = 615
triggerall = Var(59) >= 3 & statetype = A & P2StateNo != 5300 & (P2MoveType != H || P2StateNo = [120,155])
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = StateNo = 7015 & Pos Y <= -50 & Random <= 388
trigger1 = P2BodyDist X -Var(1) <= 60 & EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5300
trigger2 = StateNo = 7315 & Pos Y <= -50 & Random <= 388
trigger2 = P2BodyDist X -Var(1) <= 60 & EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5300
trigger3 = StateNo = 7415 & Pos Y <= -50 & Random <= 388
trigger3 = P2BodyDist X -Var(1) <= 60 & EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateNo != 5300


;---------------------------------------------------------------------------

;空中連段

[State -1]
type = ChangeState
value = 625
triggerall = Var(59) >= 3 & statetype = A
trigger1 = Var(34) > 0
trigger1 = (MoveContact || Var(29) = 3) & stateno = 605
trigger2 = (MoveGuarded || Var(29) = 3) & stateno = 605

[State -1]
type = ChangeState
value = 616
triggerall = Var(59) >= 3 & statetype = A & P2StateType != C
trigger1 = (MoveContact || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2

[State -1]
type = ChangeState
value = 630
triggerall = Var(59) >= 3 & statetype = A
trigger1 = Var(34) = 0 & Var(53) = 0
trigger1 = MoveHit & stateno = 605 
trigger2 = Var(34) = 0 & Var(53) = 0
trigger2 = (MoveContact || Var(29) = 3) & stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) >= 3  & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 600 
trigger1 = Vel Y != -19.52

[State -1]
type = ChangeState
value = 621
triggerall = Var(59) >= 3 & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 610 

[State -1]
type = ChangeState
value = 611
triggerall = Var(59) >= 3 & statetype = A & P2BodyDist X <= 70
trigger1 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 610
triggerall = Var(59) >= 3 & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger1 = Vel Y = -19.52

;---------------------------------------------------------------------------
;想放砲
[State -1, VarSet]
type = VarSet
triggerall = Var(59) >= 3
triggerall = Var(21) >= 800 & Var(53) = 0
triggerall = Var(59) = 1 & Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Helper(9190),Var(31) != -2 || P2StateType = A 
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = P2BodyDist X >= 200
trigger1 = P2StateType = A & !(P2MoveType != H & EnemyNear(Var(50)),Vel Y = 0 & EnemyNear(Var(50)),Vel X = 0)
trigger2 = P2StateType != A
trigger2 = EnemyNear(Var(50)),Vel X < 6
v = 53
value = 1

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1 & P2BodyDist X <= 300
trigger1 = Var(59) >= 3 & Var(53) = 1 & Var(56) = 0 & statetype != A
trigger1 = BackEdgeBodyDist >= 30 & Time > 1

[State -1]
type = ChangeState
value = 7500
type = VarSet
triggerall = Var(59) >= 3  & Var(56) = 0 & statetype != A & Random <= Var(57)
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = 140
trigger1 = Var(21) >= 800 & Var(53) = 1

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 0 || Var(53) = 1
triggerall = NumHelper(9190) > 0
triggerall = Helper(9190),Var(31) != -2 || (P2StateType = A & P2MoveType != H & !(EnemyNear(Var(50)),Vel Y = 0 & EnemyNear(Var(50)),Vel X = 0))
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2) & Helper(9190),Var(31) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*44) >= 100
triggerall = !(P2MoveType != H & EnemyNear(Var(50)),Pos Y <= -250 & EnemyNear(Var(50)),Vel Y <= -3.5)
triggerall = EnemyNear(Var(50)),Name != "Elque" 
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = Random <= P2Dist X & P2Dist X >= 350 & ((EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateType != L) || (EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L))
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger2 = Random <= P2Dist X & P2Dist X >= 300 & NumHelper(53010) = 0 & ((EnemyNear(Var(50)),StateNo = 5120 & EnemyNear(Var(50)),StateType = L & EnemyNear(Var(50)),AnimTime >= -30) || ((EnemyNear(Var(50)),StateNo = [5200,5201]) & EnemyNear(Var(50)),AnimTime >= -30) || ((EnemyNear(Var(50)),StateNo = [5210,5211]) & EnemyNear(Var(50)),Vel X < 5))
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger3 = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
trigger3 = P2BodyDist X >= 300 & Var(53) = 1 & ((EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateType != L) || (EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L))
trigger4 = stateno = 7560 & animelemtime(17) >= 1
trigger4 = P2BodyDist X >= 300 & Var(53) = 1 & ((EnemyNear(Var(50)),MoveType != H & EnemyNear(Var(50)),StateType != L) || (EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateType != A & EnemyNear(Var(50)),StateType != L))
trigger5 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger5 = NumHelper(2050) > 0 & Var(53) = 0
trigger5 = Helper(2050),Time < 150 & PrevStateNo = [5000,6120]
trigger6 = stateno = 7560 & animelemtime(17) >= 1
trigger6 = P2BodyDist X >= 100 & Var(53) = 1 & P2StateNo = [5200,5210]

;雙打
[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = Var(53) = 0 || Var(53) = 1
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2) & Helper(9190),Var(31) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2MoveType = H & P2StateType = A & EnemyNear(Var(50)),Vel Y = 0 & EnemyNear(Var(50)),Pos Y >= -165
trigger1 = NumPartner > 0
trigger1 = Partner,Alive & Partner,MoveType != H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger2 = P2MoveType = H & P2StateType = A & (P2StateNo = 6011 || P2StateNo = [6090,6091])
trigger2 = NumPartner > 0
trigger2 = Partner,MoveType = A

;---------------------------------------------------------------------------
;迴避

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100 || StateNo = [120,140]
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
trigger1 = Random <= 200 & BackEdgeBodyDist >= 50
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 = [100,150]) & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 >= Helper(9190),Fvar(12)
trigger1 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
sysvar(1) = IfElse(Random<=667,1,0)

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100 || StateNo = [120,140]
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
triggerall = BackEdgeBodyDist < 50
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 = [100,150]) & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 >= Helper(9190),Fvar(12)
trigger1 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 <= 100) & Helper(9190),Fvar(11) > 3
trigger2 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
var(4) = -1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100 || StateNo = [120,140]
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
trigger1 = Random <= 200
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 = [100,150]) & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 >= Helper(9190),Fvar(12)
trigger1 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 <= 100) & Helper(9190),Fvar(11) > 3
trigger2 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
trigger3 = BackEdgeBodyDist < 50
sysvar(1) = 1

[State -1]
type = ChangeState
triggerall = (Var(53) != 3 & Var(53) != 14) || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) >= 3 & Statetype != A
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
triggerall = (Random <= 750 & Helper(9190),Var(32) <= 0) || (Random <= 335 & Helper(9190),Var(32) = 1) || (Random <= 175 & Helper(9190),Var(32) = 2) || (Random <= 10 & Helper(9190),Var(32) = 3)
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100 || StateNo = [120,140]
triggerall = Var(54) != 1010 & Var(54) != 1030 & Var(54) != 1060
trigger1 = Random <= 200 & BackEdgeBodyDist < 50
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 = [100,150]) & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 >= Helper(9190),Fvar(12)
trigger1 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 <= 100) & Helper(9190),Fvar(11) > 3
trigger2 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
trigger3 = Random <= 200 & BackEdgeBodyDist >= 50
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*24 = [100,150]) & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*5 >= Helper(9190),Fvar(12)
trigger3 = P2StateType = C & P2StateNo > 200 & P2MoveType != H & EnemyNear(Var(50)),Ctrl = 0
value = 41

;空中起手

;大跳起手
[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = NumHelper(53010) = 0
trigger1 = P2MoveType != H & P2BodyDist X = [280,400]
var(4) = -1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = NumHelper(53010) = 0
trigger1 = P2MoveType != H & P2BodyDist X = [280,400]
sysvar(1) = 1

[State -1]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9180),Var(31) = 0
triggerall = NumHelper(53010) = 0 & Random <= 100
triggerall = (Random <= 750 & Helper(9190),Var(32) <= 0) || (Random <= 335 & Helper(9190),Var(32) = 1) || (Random <= 175 & Helper(9190),Var(32) = 2) || (Random <= 10 & Helper(9190),Var(32) = 3)
trigger1 = P2MoveType != H & P2BodyDist X = [300,440]

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = NumHelper(53010) = 0 & (Random <= 100 || StateNo = 100)
triggerall = (Random <= 750 & Helper(9190),Var(32) <= 0) || (Random <= 175 & Helper(9190),Var(32) = 1) || (Random <= 175 & Helper(9190),Var(32) = 2) || (Random <= 10 & Helper(9190),Var(32) = 3)
trigger1 = P2MoveType != H & P2BodyDist X = [280,400]
trigger1 = Random <= 100 || StateNo = 100 
trigger2 = P2MoveType != H & P2BodyDist X = [280,400]
trigger2 = (Random <= 200 || StateNo = 100) & Helper(9190),FVar(19) = 1

;壓制用
[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = NumHelper(53010) = 0 & Random <= 211
trigger1 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-12, -9]) & StateNo != 100
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [140,180]
trigger2 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-20, -13]) & StateNo = 100
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [220,280]
trigger3 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-20, -13]) & StateNo = 100
trigger3 = P2BodyDist X <= 280 & EnemyNear(Var(50)),BackEdgeBodyDist <= 72
sysvar(1) = 1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = NumHelper(53010) = 0 & Random <= 100
triggerall = BackEdgeBodyDist >= 45
trigger1 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-19, -13]) & StateNo != 100
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [0,120]
trigger2 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-20, -13]) & (StateNo = 100 & Time < 8)
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [0,140]
sysvar(1) = 0

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & (Var(53) = 0 || Var(53) = 4) & NumHelper(53010) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || StateNo = 100
triggerall = P2StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = BackEdgeBodyDist > 40 & NumHelper(53010) = 0
triggerall = (P2MoveType != I & Random <= 20) || (Random <= 100 & P2StateType = A) || (Random <= 300 & Helper(9190),Var(32) <= 0) || (Random <= 100 & Helper(9190),Var(32) = 1) || (Random <= 50 & Helper(9190),Var(32) = 2) || (Random <= 3 & Helper(9190),Var(32) = 3)
trigger1 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-19, -13]) & StateNo != 100
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [140,180]
trigger2 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-20, -13]) & StateNo = 100
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [220,280]
trigger3 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-20, -13]) & StateNo = 100
trigger3 = P2BodyDist X <= 280 & EnemyNear(Var(50)),BackEdgeBodyDist <= 72

trigger4 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-12, -9]) & StateNo != 100
trigger4 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [0,120]
trigger5 = P2StateNo = 5120 & (EnemyNear(Var(50)),AnimTime = [-20, -13]) & (StateNo = 100 & Time < 8)
trigger5 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [0,140]

[State -2, Run]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0 & Random <= 200
triggerall = EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0 
trigger1 = P2StateType = A & P2MoveType = I & Var(4) = -1
trigger1 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18) = [60,190]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171+19.52*18-Const(movement.yaccel)*171) = [-130,130]
trigger2 = P2StateType = A & P2MoveType = I & Var(4) = -1
trigger2 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18) = [60,190]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171+19.52*18-Const(movement.yaccel)*171) = [-130,130]
var(4) = -1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010) || (P2MoveType = A & EnemyNear(Var(50)),Time < 12 & Helper(9190),Fvar(11) > 12)
triggerall = BackEdgeBodyDist >= 45
trigger1 = P2StateType = A & P2MoveType = I & Var(4) != -1 & Random <= 50
trigger1 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18) = [60,190]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171-Const(velocity.runjump.y)*18-Const(movement.yaccel)*171) = [-130,130]
trigger2 = P2StateType = A & P2MoveType = I & Var(4) != -1 & Random <= 50
trigger2 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*198) = [60,190]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171-Const(velocity.runjump.y)*18-Const(movement.yaccel)*171) = [-130,130]

trigger3 = P2StateType = A & P2MoveType = I & Var(4) = -1 & Random <= 70
trigger3 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*17) = [60,190]
trigger3 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*153+19.52*18-Const(movement.yaccel)*171) = [-130,130]
trigger4 = P2StateType = A & P2MoveType = I & Var(4) = -1 & Random <= 70
trigger4 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18) = [60,190]
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171+19.52*18-Const(movement.yaccel)*171) = [-130,130]
sysvar(1) = 0

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = EnemyNear(Var(50)),MoveType != H & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010) || (P2MoveType = A & EnemyNear(Var(50)),Time < 12 & Helper(9190),Fvar(11) > 12)
triggerall = BackEdgeBodyDist >= 45
trigger1 = P2StateType = S
trigger1 = P2BodyDist X <= 195 & Random = [0,300]  
trigger2 = (P2StateType = C || Helper(9190),FVar(20) = 1)
trigger2 = P2BodyDist X <= 195 & Random = [0,300] 
sysvar(1) = 0

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = EnemyNear(Var(50)),MoveType != H & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2MoveType = I
trigger1 = P2StateType = S
trigger1 = (P2BodyDist X = [170, 195]) & Random = [301,999]  
trigger2 = P2StateType = C
trigger2 = (P2BodyDist X = [170, 195]) & Random = [301,999] 
trigger3 = P2StateType = S
trigger3 = P2BodyDist X >= 196
trigger4 = (P2StateType = C || Helper(9190),FVar(20) = 1)
trigger4 = P2BodyDist X >= 196 
sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = (Ctrl || (StateNo = [1,39]) || StateNo = 52 || (StateNo = 100 & PrevStateNo != [220,225])) 
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010) || (P2MoveType = A & EnemyNear(Var(50)),Time < 12 & Helper(9190),Fvar(11) > 12)
triggerall = (P2MoveType != I & Random <= 30) || (Random <= 200 & P2StateType = A) || (Random <= 666 & Helper(9190),Var(32) <= 0) || (Random <= 250 & Helper(9190),Var(32) = 1) || (Random <= 150 & Helper(9190),Var(32) = 2) || (Random <= 10 & Helper(9190),Var(32) = 3)
triggerall = BackEdgeBodyDist >= 45
trigger1 = P2StateType = S & PrevStateNo < 200 & P2MoveType != H
trigger1 = P2BodyDist X <= 210 & Random <= 35
trigger2 = (P2StateType = C || Helper(9190),FVar(20) = 1) & PrevStateNo < 200 & P2MoveType != H
trigger2 = P2BodyDist X <= 210 & Random <= 75

trigger3 = P2StateType = A & Var(4) != -1 & Random <= 50
trigger3 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18) = [60,190]
trigger3 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171-Const(velocity.runjump.y)*18-Const(movement.yaccel)*171) = [-130,130]
trigger3 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*18-Helper(9190),Fvar(0)*171) < 0

trigger4 = P2StateType = A & Var(4) != -1 & Random <= 50
trigger4 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*198) = [60,190]
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171-Const(velocity.runjump.y)*18-Const(movement.yaccel)*171) = [-130,130]
trigger4 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*18-Helper(9190),Fvar(0)*171) < 0

trigger5 = P2StateType = A & Var(4) = -1 & Random <= 70
trigger5 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*17) = [60,190]
trigger5 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*153+19.52*18-Const(movement.yaccel)*171) = [-130,130]
trigger5 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*18-Helper(9190),Fvar(0)*171) < 0
trigger6 = P2StateType = A & Var(4) = -1 & Random <= 70
trigger6 = (P2BodyDist X-Vel X*18-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18) = [60,190]
trigger6 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*18+Helper(9190),Fvar(0)*171+19.52*18-Const(movement.yaccel)*171) = [-130,130]
trigger6 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*18-Helper(9190),Fvar(0)*171) < 0

[State -1]
type = ChangeState
value = 610
triggerall = Var(59) >= 3 & statetype = A
triggerall = Fvar(5) != 1 & P2StateNo != 5040 & P2StateNo != 5200
triggerall = P2StateType = A
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010) || (P2MoveType = A & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time < 0 & Helper(9190),Fvar(11) > 0)
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger1 = (P2BodyDist X-Vel X*7-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*7) = [101,160]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*7+Helper(9190),Fvar(0)*28-Vel Y*7-Const(movement.yaccel)*28) = [-80,80]
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl & (Random = [0,100])
trigger2 = (P2BodyDist X-Vel X*7-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*7) = [101,200]
trigger2 = (P2BodyDist Y-Vel Y*7-Const(movement.yaccel)*28) = [-30,30]
trigger3 = StateNo != 5210
trigger3 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger3 = EnemyNear(Var(50)),StateType = A & PrevStateNo = 225
trigger4 = StateNo != 5210
trigger4 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger4 = EnemyNear(Var(50)),MoveType = H
trigger4 = P2BodyDist X <= 100 & EnemyNear(Var(50)),BackEdgeBodyDist <= 50

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) >= 3 & statetype = A
triggerall = Fvar(5) != 1 & P2StateNo != 5040 & P2StateNo != 5200
triggerall = P2StateType = A
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010)
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger1 = (P2BodyDist X-Vel X*15-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [60,200]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*15+Helper(9190),Fvar(0)*105-Vel Y*15-Const(movement.yaccel)*120) = [-130,130]
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl & Random <= 200
trigger2 = (P2BodyDist X-Vel X*15-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [60,200]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*15+Helper(9190),Fvar(0)*105-Vel Y*15-Const(movement.yaccel)*120) = [-130,130]

[State -1]
type = ChangeState
value = 620
triggerall = Var(59) >= 3 & statetype = A & Var(53) = 0
triggerall = Fvar(5) != 1 & P2StateNo != 5040 & P2StateNo != 5200
triggerall = P2StateType != L & P2MoveType != H
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
trigger1 = StateNo != 5210 & Vel Y <= 2
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger1 = (P2BodyDist X-Vel X*15-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [-100,190]
trigger1 = (Pos Y+Vel Y*15+Const(movement.yaccel)*120) = [-70,-1]
trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl & Random <= 200
trigger2 = (P2BodyDist X-Vel X*15-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [-100,190]
trigger2 = (Pos Y+Vel Y*15+Const(movement.yaccel)*120) = [-70,-1]

[State -2, Run]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0 & Random <= 200
triggerall = (Ctrl || (StateNo = [1,39]) || StateNo = 52 || (StateNo = 100)) 
triggerall = EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0 
trigger1 = (P2BodyDist X-Vel X*9-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9) = [20,100]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21+19.52*6-Const(movement.yaccel)*21) = [-60,80]

trigger2 = (P2BodyDist X-Vel X*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [20,100]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*12+Helper(9190),Fvar(0)*78+19.52*12-Const(movement.yaccel)*78) = [-80,90]
var(4) = -1

[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = (Ctrl || (StateNo = [1,39]) || StateNo = 52 || (StateNo = 100 & PrevStateNo != [220,225]))
triggerall = EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType != H & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2MoveType = I
trigger1 = (P2BodyDist X-Const(velocity.jump.fwd.x)*9-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9) = [20,100]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21-Const(velocity.runjump.y)*6-Const(movement.yaccel)*21) = [-60,80]

trigger2 = (P2BodyDist X-Const(velocity.jump.fwd.x)*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [20,100]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*12+Helper(9190),Fvar(0)*78-Const(velocity.runjump.y)*12-Const(movement.yaccel)*78) = [-80,90]

trigger3 = (P2BodyDist X-Const(velocity.jump.fwd.x)*9-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9) = [20,100]
trigger3 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21+19.52*6-Const(movement.yaccel)*21) = [-60,80]

trigger4 = (P2BodyDist X-Const(velocity.jump.fwd.x)*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [20,100]
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*12+Helper(9190),Fvar(0)*78+19.52*12-Const(movement.yaccel)*78) = [-80,90]

sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = (Ctrl || (StateNo = [1,39]) || StateNo = 52 || (StateNo = 100 & PrevStateNo != [220,225]))
triggerall = Fvar(5) != 1 & EnemyNear(Var(50)),StateNo != 5040
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010) || (P2MoveType = A & EnemyNear(Var(50)),Time < 10 & Helper(9190),Fvar(11) > 10)
triggerall = (P2MoveType != I & Random <= 70) || (Random <= 300 & P2StateType = A) || (Random <= 666 & Helper(9190),Var(32) <= 0) || (Random <= 500 & Helper(9190),Var(32) = 1) || (Random <= 250 & Helper(9190),Var(32) = 2) || (Random <= 10 & Helper(9190),Var(32) = 3)
trigger1 = (P2BodyDist X-Const(velocity.jump.fwd.x)*9-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9) = [20,100]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21-Const(velocity.runjump.y)*6-Const(movement.yaccel)*21) = [-60,80]
trigger1 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*6-Helper(9190),Fvar(0)*21) < 0

trigger2 = (P2BodyDist X-Const(velocity.jump.fwd.x)*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [20,100]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*12+Helper(9190),Fvar(0)*78-Const(velocity.runjump.y)*12-Const(movement.yaccel)*78) = [-80,90]
trigger2 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*12-Helper(9190),Fvar(0)*78) < 0

trigger3 = (P2BodyDist X-Const(velocity.jump.fwd.x)*9-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9) = [20,100]
trigger3 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21+19.52*6-Const(movement.yaccel)*21) = [-60,80]
trigger3 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*6-Helper(9190),Fvar(0)*21) < 0

trigger4 = (P2BodyDist X-Const(velocity.jump.fwd.x)*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [20,100]
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*12+Helper(9190),Fvar(0)*78+19.52*12-Const(movement.yaccel)*78) = [-80,90]
trigger4 = (EnemyNear(Var(50)),Pos Y-EnemyNear(Var(50)),Vel Y*12-Helper(9190),Fvar(0)*78) < 0

[State -1]
type = ChangeState
value = 605
triggerall = Var(59) >= 3 & statetype = A
triggerall = Fvar(5) != 1 & P2StateNo != 5040 & P2StateNo != 5200
triggerall = P2StateType = A
triggerall = P2MoveType = I || (P2MoveType = A & Var(54) = 1010) || (P2MoveType = A & EnemyNear(Var(50)),Time < 7 & Helper(9190),Fvar(11) > 7)
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = StateNo != 5210 
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim != 41
trigger1 = (P2BodyDist X-Vel X*6-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*6) = [20,100]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*6+Helper(9190),Fvar(0)*21-Vel Y*6-Const(movement.yaccel)*21) = [-60,80]
trigger1 = P2MoveType = I || (P2MoveType = A & Var(53) = 1010) || (Helper(9190),Fvar(11) != 0 & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time > 6)

[State -1]
type = ChangeState
value = 615
triggerall = Var(59) >= 3 & statetype = A
triggerall = Fvar(5) != 1 & P2StateNo != 5040 & P2StateNo != 5200
triggerall = P2StateType = A
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = StateNo != 5210 
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim != 41
trigger1 = (P2BodyDist X-Vel X*9-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*9) = [20,100]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*9+Helper(9190),Fvar(0)*45-Vel Y*9-Const(movement.yaccel)*45) = [-80,90]
trigger1 = P2MoveType = I || (P2MoveType = A & Var(53) = 1010)


[State -1]
type = ChangeState
value = 625
triggerall = Var(59) >= 3  & statetype = A & Var(53) = 0
triggerall = Fvar(5) != 1 & P2StateNo != 5040 & P2StateNo != 5200
triggerall = P2StateType != A & P2StateType != L & Vel Y < -2
triggerall = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim != 41
trigger1 = P2StateType = C || P2StateType = S
trigger1 = (P2BodyDist X-Vel X*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [-70,120]
trigger1 = (Pos Y+Vel Y*12+Const(movement.yaccel)*78) = [-70,1]
trigger2 = P2StateType = S
trigger2 = (P2BodyDist X-Vel X*12-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*12) = [-70,120]
trigger2 = (Pos Y+Vel Y*12+Const(movement.yaccel)*78) = [-155,130]

trigger3 = P2StateType = C || P2StateType = S
trigger3 = (P2BodyDist X = [-70,120]) & EnemyNear(Var(50)),BackEdgeBodyDist <= 30
trigger3 = (Pos Y+Vel Y*12+Const(movement.yaccel)*78) = [-70,1]


;111~200 301~345 t= 38
;66~110 281~300 t=34
;0~65 250~280 t=31

[State -1]
type = ChangeState
value = 1375
triggerall = Var(59) >= 3 & statetype = A & Random <= 250 & Var(18) >= 4000
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = P2StateType != A
triggerall = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [280,331]
trigger1 = P2Dist Y = [0,65]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [300,361]
trigger2 = P2Dist Y = [66,110]
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger3 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [345,396]
trigger3 = P2Dist Y = [111,200]

[State -1]
type = ChangeState
value = 1300
triggerall = Var(59) >= 3 & statetype = A & Random <= 100
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [111,222]
trigger1 = P2Dist Y = [0,65]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [126,237]
trigger2 = P2Dist Y = [66,110]
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger3 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [141,252]
trigger3 = P2Dist Y = [111,200]

[State -1]
type = ChangeState
value = 1325
triggerall = Var(59) >= 3 & statetype = A & Random <= 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [195,306]
trigger1 = P2Dist Y = [0,65]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [214,325]
trigger2 = P2Dist Y = [66,110]
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger3 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [239,350]
trigger3 = P2Dist Y = [111,200]

[State -1]
type = ChangeState
value = 1350
triggerall = Var(59) >= 3 & statetype = A & Random <= 400
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = EnemyNear(Var(50)),Name != "Elque"
triggerall = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 & Time > 1)
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [280,391]
trigger1 = P2Dist Y = [0,65]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [300,411]
trigger2 = P2Dist Y = [66,110]
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -25 & (Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time != [22,28]) & Helper(9190),Fvar(11) < 25
trigger3 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [345,456]
trigger3 = P2Dist Y = [111,200]

;---------------------------------------------------------------------------

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = EnemyNear(Var(50)),Alive
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
trigger1 = P2BodyDist X <= 30 & P2StateType = L
trigger2 = P2BodyDist X <= 50 & P2StateNo = 5040 & EnemyNear(Var(50)),MoveType = I & EnemyNear(Var(50)),Ctrl = 0
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190) <= -50 & Random <= 75
trigger3 = P2BodyDist X <= 80 & (P2StateNo = [5200,5201])

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = EnemyNear(Var(50)),Alive
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = !(EnemyNear(Var(50)),AnimTime > -16 & P2StateNo = 5120) & !(EnemyNear(Var(50)),AnimTime > -10 & (P2StateNo = [5200,5201]))
trigger1 = P2BodyDist X <= 30 & P2StateType = L
trigger2 = P2BodyDist X <= 50 & P2StateNo = 5040 & EnemyNear(Var(50)),MoveType = I & EnemyNear(Var(50)),Ctrl = 0
trigger2 = P2Dist Y <= -120
trigger3 = P2BodyDist X <= 80 & (P2StateNo = [5200,5201])

;連段用跑步
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
triggerall = Helper(9180),Var(31) = 0
triggerall = (Ctrl || (StateNo = [0,40]) || StateNo = 52 || (StateNo = [120,140]))
trigger1 = StateNo = 40 & P2StateType != A & P2MoveType = H & NumHelper(2050) = 0 & PrevStateNo != 41
trigger1 = Var(53) = 0 || Var(53) = 2 || Var(53) = 5

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
triggerall = Helper(9180),Var(31) = 0
triggerall = (Ctrl || (StateNo = [0,40]) || StateNo = 52 || (StateNo = [120,140]))
trigger1 = Var(53) = 2 & P2BodyDist X >= 40 & P2StateType != A & P2StateNo != [120, 153]
trigger2 = Var(53) = 2 & P2StateType = A & P2BodyDist X >= 20
trigger3 = Var(53) = 2 & P2StateType != A & StateNo = 40
trigger4 = Var(53) = 5 & P2BodyDist X >= 40 & P2StateType != A
trigger5 = Var(53) = 5 & P2StateType != A & StateNo = 40

[State -1, Run Fwd]
type = ChangeState
value = 400
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = Ctrl || (StateNo = [1,40]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = Var(53) = 2 & P2StateType != A & P2StateType != L & P2BodyDist X <= 35 & Time > 1
trigger2 = Var(53) = 5 & P2StateType != A & P2StateType != L & P2BodyDist X <= 35 & Time > 1
trigger2 = P2MoveType = H & P2StateNo != [120, 153]
trigger3 = (PrevStateNo = [220, 225]) & ((StateNo = 100) || StateNo = 101)  & P2StateType != A & P2StateType != L & P2BodyDist X <= 33 

[State -1, Run Fwd]
type = ChangeState
value = 430
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = Ctrl || (StateNo = [1,40]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = Var(53) = 2 & P2StateType != A & P2StateType != L & P2BodyDist X <= 90 & Time > 1
trigger1 = P2MoveType = H & P2StateNo != [120, 153]
trigger2 = Var(53) = 5 & P2StateType != A & P2StateType != L & P2BodyDist X <= 90 & Time > 1
trigger2 = P2MoveType = H & P2StateNo != [120, 153]
trigger3 = (PrevStateNo = [220, 225]) & ((StateNo = 100 & Time > 1) || StateNo = 101) & P2StateType != A & P2StateType != L & P2BodyDist X <= 95
trigger3 = P2MoveType = H & P2StateNo != [120, 153]

[State -1, Run Fwd]
type = ChangeState
value = 410
triggerall = Var(59) >= 3
triggerall = statetype != A
triggerall = Ctrl || (StateNo = [1,40]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = Var(5) >= 1000
trigger1 = Var(53) = 2 & P2StateType != A & P2StateType != L & P2BodyDist X <= 95 & Time > 2
trigger1 = P2MoveType = H & P2StateNo = [120, 153]
trigger2 = Var(53) = 5 & P2StateType != A & P2StateType != L & P2BodyDist X <= 95 & Time > 2
trigger2 = P2MoveType = H & P2StateNo = [120, 153]
trigger3 = (PrevStateNo = [220, 225]) & ((StateNo = 100 & Time > 2) || StateNo = 101) & P2StateType != A & P2StateType != L & P2BodyDist X <= 95
trigger3 = P2MoveType = H & P2StateNo = [120, 153]

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & (Var(18)-Var(19) > 3000 || Var(19) < 1000 || Var(53) = 26)
trigger1 = MoveContact & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5
trigger1 = Var(5) >= 1000 & P2StateType != A & P2StateType != L & P2BodyDist X <= 160
trigger2 = MoveContact & stateno = 225 && animelemtime(3) >= 0 && animelemtime(4) <= 8
trigger2 = Var(5) >= 1000 & P2StateType != A & P2StateType != L

[State -1, Run Fwd]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & (Var(18)-Var(19) > 3000 || Var(19) < 1000 || Var(53) = 26)
triggerall =  NumHelper(9101) > 0
triggerall = Helper(9101),Var(14) > 0
trigger1 = MoveContact & stateno = 220 && animelemtime(6) >= 0 && animelemtime(8) <= 0
trigger1 = Var(5) >= 1000 & P2StateType != A & P2StateType != L

[State -1, Run Fwd]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & (Var(18)-Var(19) > 3000 || Var(19) < 1000 || Var(53) = 26)
triggerall =  NumHelper(9101) > 0
triggerall = Helper(9101),Var(14) = 0
trigger1 = MoveContact & stateno = 220 && animelemtime(6) >= 0 && animelemtime(8) <= 0
trigger1 = Var(5) >= 1000 & P2StateType != A & P2StateType != L & P2BodyDist X > 160

;省魔
[State -1]
type = ChangeState
value = 420
triggerall = Var(59) = 3 & statetype != A & P2MoveType != A & NumHelper(9101) > 0
triggerall = Helper(9101),Var(19) = 1
triggerall = NumHelper(2050) = 0
trigger1 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 2 & P2StateType != A & P2BodyDist X > 175
trigger2 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger3 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger4 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = C || (P2StateType = L & Helper(9190),Fvar(26) = 2))
trigger5 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A & P2BodyDist X <= 110
trigger6 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A
trigger7 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & P2StateType = C
trigger8 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & P2StateType = L & Helper(9190),Fvar(26) = 2
trigger9 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 1 & P2StateType = L & Helper(9190),Fvar(26) = 2
trigger10 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X > 175

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) = 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A & NumHelper(9101) > 0
triggerall = Helper(9101),Var(19) = 1
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

;AT

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) = 3 & NumHelper(9101) > 0 & P2MoveType != A
triggerall = Helper(9101),Var(14) > 0
triggerall = P2StateType != A & P2StateType != L & Random <= 300
trigger1 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5
trigger3 = (MoveGuarded || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 5
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10
trigger5 = (MoveGuarded || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveGuarded || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 1 
trigger7 = (MoveGuarded || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 1 
trigger8 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200
trigger9 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200


[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) = 3 & NumHelper(9101) > 0 & P2MoveType != A
triggerall = Helper(9101),Var(14) > 0
triggerall = P2StateType != L
trigger1 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType != A
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & P2BodyDist X <= 100 & P2StateType != A
trigger3 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType != A & P2StateType = A & Fvar(34) > 0 & Fvar(5) != 1
trigger3 = EnemyNear(Var(50)),BackEdgeBodyDist <= 60

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) = 3 & NumHelper(9101) > 0 & P2MoveType != A
triggerall = Helper(9101),Var(14) > 0
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger1 = P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5
trigger2 = P2StateType != L

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) = 3 & Var(5) >= 1000 & NumHelper(9101) > 0 & P2MoveType != A
triggerall = Helper(9101),Var(14) = 0
triggerall = (Var(18) < 3000 & Var(19) >= 1000) || (Var(18) < 4000  & Var(19) >= 4000) || Var(35) > 1700
triggerall = P2StateType != A & P2StateType != L
trigger1 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger1 = (Random = [0,100])
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 
trigger3 = (MoveGuarded || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 5
trigger3 = (Random = [50,200])
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10
trigger4 = (Random = [50,200])
trigger5 = (MoveGuarded || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Random <= 350
trigger6 = (MoveGuarded || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 1 & Random <= 350
trigger7 = (MoveGuarded || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 1 & Random <= 250
trigger8 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200
trigger9 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) = 3 & Var(5) >= 1000 & NumHelper(9101) > 0 & P2MoveType != A
triggerall = Helper(9101),Var(14) = 0
triggerall = P2StateType != L
trigger1 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType != A
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & P2BodyDist X <= 100 & P2StateType != A
trigger3 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType = A & Fvar(34) > 0 & Fvar(5) != 1
trigger3 = EnemyNear(Var(50)),BackEdgeBodyDist <= 60

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) = 3 & Var(5) >= 1000 & NumHelper(9101) > 0 
triggerall = Helper(9101),Var(14) = 0
triggerall = (Var(18) < 3000 & Var(19) >= 1000) || (Var(18) < 4000  & Var(19) >= 4000) || Var(35) > 1700
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger1 = P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5
trigger2 = P2StateType != L
trigger2 = (Var(39) != 6 & Helper(9190),Var(8) != 2)

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & NumHelper(9175) > 0 & P2MoveType != A
triggerall = Helper(9175),Var(14) > 0
triggerall = P2StateType != A & P2StateType != L & Random <= 300
trigger1 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5
trigger3 = (MoveGuarded || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 5
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10
trigger5 = (MoveGuarded || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveGuarded || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 1 
trigger7 = (MoveGuarded || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 1 
trigger8 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4
trigger8 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200
trigger9 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200


[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & NumHelper(9175) > 0 & P2MoveType != A
triggerall = Helper(9175),Var(14) > 0
triggerall = P2StateType != L
trigger1 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType != A
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & P2BodyDist X <= 100 & P2StateType != A
trigger3 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType = A & Fvar(34) > 0 & Fvar(5) != 1
trigger3 = EnemyNear(Var(50)),BackEdgeBodyDist <= 60

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & NumHelper(9175) > 0 & P2MoveType != A
triggerall = Helper(9175),Var(14) > 0
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger1 = P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5
trigger2 = P2StateType != L

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & NumHelper(9175) > 0 & P2MoveType != A
triggerall = Helper(9175),Var(14) = 0
triggerall = (Var(18) < 3000 & Var(19) >= 1000) || (Var(18) < 4000  & Var(19) >= 4000) || Var(35) > 1700
triggerall = P2StateType != A & P2StateType != L
trigger1 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger1 = (Random = [0,100])
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 
trigger3 = (MoveGuarded || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 5
trigger3 = (Random = [50,200])
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10
trigger4 = (Random = [50,200])
trigger5 = (MoveGuarded || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Random <= 350
trigger6 = (MoveGuarded || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 1 & Random <= 350
trigger7 = (MoveGuarded || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 1 & Random <= 250
trigger8 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200
trigger9 = (MoveContact || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X >= 110 & Random <= 200

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & Var(5) >= 1000 & NumHelper(9175) > 0 & P2MoveType != A
triggerall = Helper(9175),Var(14) = 0
triggerall = P2StateType != L
trigger1 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType != A
trigger2 = (MoveContact || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & P2BodyDist X <= 100 & P2StateType != A
trigger3 = MoveHit & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & P2StateType = A & Fvar(34) > 0 & Fvar(5) != 1
trigger3 = EnemyNear(Var(50)),BackEdgeBodyDist <= 60

[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & Var(5) >= 1000 & NumHelper(9175) > 0 
triggerall = Helper(9175),Var(14) = 0
triggerall = (Var(18) < 3000 & Var(19) >= 1000) || (Var(18) < 4000  & Var(19) >= 4000) || Var(35) > 1700
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8
trigger1 = P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5
trigger2 = P2StateType != L
trigger2 = (Var(39) != 6 & Helper(9190),Var(8) != 2)

;高端AT法
[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & NumHelper(9101) > 0
triggerall = Random <= 450 & P2StateType != L & P2StateType != A
triggerall = ((Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)) || Life >= 700
trigger1 = (MoveReversed || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9101),Var(14) = 1
trigger2 = (MoveReversed || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9101),Var(14) = 1
trigger3 = (MoveReversed || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger4 = (MoveReversed || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger5 = (MoveReversed || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 1
trigger6 = (MoveReversed || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 1
trigger7 = (MoveReversed || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger8 = (MoveReversed || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 1
trigger9 = (MoveReversed || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9101),Var(14) = 1
trigger10 = (MoveReversed || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 1
trigger11 = (MoveReversed || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 1
trigger12 = (MoveReversed || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 1
trigger13 = (MoveReversed || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9101),Var(14) = 1
trigger14 = (MoveReversed || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 1
trigger15 = (MoveReversed || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 1
trigger16 = (MoveReversed || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9101),Var(14) = 1
trigger17 = (MoveReversed || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9101),Var(14) = 1


[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & Var(5) >= 1000 & NumHelper(9101) > 0
triggerall = Random <= 450 & P2StateType != L & P2StateType != A & Helper(9101),Var(14) = 0
triggerall = ((Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)) || Life >= 700
trigger1 = (MoveReversed || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9101),Var(14) = 0
trigger2 = (MoveReversed || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9101),Var(14) = 0
trigger3 = (MoveReversed || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger4 = (MoveReversed || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger5 = (MoveReversed || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 0
trigger6 = (MoveReversed || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9101),Var(14) = 0
trigger7 = (MoveReversed || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger8 = (MoveReversed || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9101),Var(14) = 0
trigger9 = (MoveReversed || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9101),Var(14) = 0
trigger10 = (MoveReversed || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 0
trigger11 = (MoveReversed || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9101),Var(14) = 0
trigger12 = (MoveReversed || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 0
trigger13 = (MoveReversed || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9101),Var(14) = 0
trigger14 = (MoveReversed || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 0
trigger15 = (MoveReversed || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9101),Var(14) = 0
trigger16 = (MoveReversed || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9101),Var(14) = 0
trigger17 = (MoveReversed || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9101),Var(14) = 0

[State -1]
type = ChangeState
value = 7150
triggerall = Var(59) >= 3 & NumHelper(9175) > 0
triggerall = Random <= 450 & P2StateType != L & P2StateType != A
triggerall = ((Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)) || Life >= 700
trigger1 = (MoveReversed || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9175),Var(14) = 1
trigger2 = (MoveReversed || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9175),Var(14) = 1
trigger3 = (MoveReversed || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger4 = (MoveReversed || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger5 = (MoveReversed || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 1
trigger6 = (MoveReversed || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 1
trigger7 = (MoveReversed || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger8 = (MoveReversed || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 1
trigger9 = (MoveReversed || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9175),Var(14) = 1
trigger10 = (MoveReversed || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 1
trigger11 = (MoveReversed || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 1
trigger12 = (MoveReversed || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 1
trigger13 = (MoveReversed || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9175),Var(14) = 1
trigger14 = (MoveReversed || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 1
trigger15 = (MoveReversed || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 1
trigger16 = (MoveReversed || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9175),Var(14) = 1
trigger17 = (MoveReversed || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 1


[State -1]
type = ChangeState
value = 7100
triggerall = Var(59) >= 3 & Var(5) >= 1000 & NumHelper(9175) > 0
triggerall = Random <= 450 & P2StateType != L & P2StateType != A & Helper(9175),Var(14) = 0
triggerall = ((Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)) || Life >= 700
trigger1 = (MoveReversed || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(2) <= 5 & Helper(9175),Var(14) = 0
trigger2 = (MoveReversed || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(2) <= 6 & Helper(9175),Var(14) = 0
trigger3 = (MoveReversed || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger4 = (MoveReversed || Var(29) = 3) & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger5 = (MoveReversed || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 0
trigger6 = (MoveReversed || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(4) <= 7 & Helper(9175),Var(14) = 0
trigger7 = (MoveReversed || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger8 = (MoveReversed || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Helper(9175),Var(14) = 0
trigger9 = (MoveReversed || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(3) <= 5 & Helper(9175),Var(14) = 0
trigger10 = (MoveReversed || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 0
trigger11 = (MoveReversed || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 6 & Helper(9175),Var(14) = 0
trigger12 = (MoveReversed || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 0
trigger13 = (MoveReversed || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9175),Var(14) = 0
trigger14 = (MoveReversed || Var(29) = 3) & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 0
trigger15 = (MoveReversed || Var(29) = 3) & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 10 & Helper(9175),Var(14) = 0
trigger16 = (MoveReversed || Var(29) = 3) & stateno = 420 && animelemtime(4) >= 1 && animelemtime(4) <= 5 & Helper(9175),Var(14) = 0
trigger17 = (MoveReversed || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 0

;平推宣言
[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) = 3  & Var(56) = 0 & statetype != A & Random <= Var(57)
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0 & Var(21) >= 500
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = (Var(18) >= 1000 & Var(19) < 1000) || Var(5) <=1000
triggerall = FVar(15) != 0.5 || (FVar(15) = 0.5 & EnemyNear(Var(50)),Life <= 444 & EnemyNear(Var(50)),Alive) || (FVar(15) = 0.5 & FrontEdgeDist >= 120)
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != L & P2StateType != A
trigger2 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 2 & P2StateType != L & P2StateType != A
trigger3 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType != L& P2StateType != A
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 1 & P2StateType != L& P2StateType != A

[State -1]
type = ChangeState
value = 7500
triggerall = (Var(59) >= 4 || (Var(59) = 3 & Var(18) >=3000))  & Var(56) = 0 & statetype != A & Random <= Var(57)
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0 & Var(21) >= 500
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = (Var(18) >= 1000 & Var(19) < 1000) || Var(5) <=1000
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != L & P2StateType != A
trigger2 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 2 & P2StateType != L & P2StateType != A
trigger3 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType != L& P2StateType != A
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 1 & P2StateType != L& P2StateType != A

;高端GT法
[State -1, Helper]
type = Helper
triggerall = NumHelper(7206) = 0
triggerall = Var(59) >= 3 & Var(5) >= 1000 & Power >= 2000 
triggerall = EnemyNear(Var(50)),Alive & Var(19) >= 2000
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = !HitShakeOver || Time = 1
triggerall = EnemyNear(Var(50)),StateType != A & PrevStateNo = [150, 153]
triggerall = IfElse(Power>=4000,Random <= 125*7,Random <= 125*4)
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch2"
ID = 7206
stateno = 7206
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

[State -1, Helper]
type = Helper
triggerall = NumHelper(7206) = 0
triggerall = Var(59) >= 3 & Var(5) >= 1000 & Power >= 1000 & Life < 300
triggerall = EnemyNear(Var(50)),Alive & Var(19) >= 2000
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = !HitShakeOver || Time = 1
triggerall = EnemyNear(Var(50)),StateType != A & PrevStateNo = [150, 153]
triggerall = Random <= 125*4
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch2"
ID = 7206
stateno = 7206
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

[State -1, Helper]
type = Helper
triggerall = NumHelper(7206) = 0
triggerall = Var(59) >= 3 & Var(5) >= 1000 & Power >= 1000
triggerall = EnemyNear(Var(50)),Alive & EnemyNear(Var(50)),Life <= 125
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = !HitShakeOver || Time = 1
triggerall = EnemyNear(Var(50)),StateType != A & PrevStateNo = [150, 153]
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch2"
ID = 7206
stateno = 7206
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

;SPC

[State -1]
type = ChangeState
value = 1125
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A
triggerall = Var(48) > 0 & Var(53) = 0
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & P2StateType = A
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1
triggerall = Var(18) >= 2000 & Var(48) > 0 & Var(53) != 8
triggerall = FVar(15) != 0.5 || (FVar(15) = 0.5 & EnemyNear(Var(50)),Life <= 444 & EnemyNear(Var(50)),Alive)
triggerall = (P2BodyDist X >= 150 & P2BodyDist Y <= -160)
trigger1 = stateno = 1100 && animelemtime(13) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(13) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(13) >= 1 & MoveHit

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1
triggerall = Var(18) >= 2000 & Var(48) > 0
triggerall = FVar(15) != 0.5 || (FVar(15) = 0.5 & EnemyNear(Var(50)),Life <= 444 & EnemyNear(Var(50)),Alive)
triggerall = P2BodyDist X <= 120 & P2StateNo = 5100
trigger1 = stateno = 1200 && animelemtime(19) >= 1
trigger2 = stateno = 1225 && animelemtime(21) >= 1
trigger3 = stateno = 1250 && animelemtime(23) >= 1 
trigger4 = stateno = 1201 && animelemtime(19) >= 1 
trigger5 = stateno = 1226 && animelemtime(21) >= 1
trigger6 = stateno = 1251 && animelemtime(23) >= 1 

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & Var(48) = 1
triggerall = Var(18) >= 2000 & Var(48) > 0 & Var(53) != 8
triggerall = FVar(15) != 0.5 || (FVar(15) = 0.5 & EnemyNear(Var(50)),Life <= 444 & EnemyNear(Var(50)),Alive)
triggerall = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [0,175]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*18 = [0,220]) || (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [0,250]) || EnemyNear(Var(50)),BackEdgeBodyDist <= 40
triggerall = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*25+Helper(9190),Fvar(0)*325 = [-40,-1]) || (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190 = [-100,-1])
trigger1 = stateno = 1100 && animelemtime(12) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(12) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(12) >= 1 & MoveHit
trigger4 = stateno = 1200 && animelemtime(19) >= 1 & MoveHit
trigger5 = stateno = 1225 && animelemtime(21) >= 1 & MoveHit
trigger6 = stateno = 1250 && animelemtime(23) >= 1 & MoveHit
trigger7 = stateno = 1310 && animelemtime(1) >= 1
trigger8 = stateno = 1330 && animelemtime(1) >= 1
trigger9 = stateno = 1360 && animelemtime(1) >= 1
trigger10 = stateno = 1201 && animelemtime(19) >= 1 & P2MoveType = H & P2StateType = A
trigger11 = stateno = 1226 && animelemtime(21) >= 1 & P2MoveType = H & P2StateType = A
trigger12 = stateno = 1251 && animelemtime(23) >= 1 & P2MoveType = H & P2StateType = A

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) = 3 & statetype != A & Var(53) != 8
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(48) = 1 
triggerall = Var(53) = 0
trigger1 = stateno = 1000 && animelemtime(11) >= 1 & Helper(8020),MoveContact & P2StateType != L & P2BodyDist X >= 320
trigger2 = stateno = 1025 && animelemtime(11) >= 1 & Helper(8020),MoveContact & P2StateType != L & P2BodyDist X >= 320
trigger3 = stateno = 1050 && animelemtime(11) >= 1 & Helper(8020),MoveContact & P2StateType != L & P2BodyDist X >= 320
trigger4 = stateno = 1310 && animelemtime(1) >= 1 & P2BodyDist X >= 130
trigger4 = (Random <= 300 & P2StateNo = [120,150]) || (Random <= 150 & P2StateNo < 200)
trigger5 = stateno = 1330 && animelemtime(1) >= 1 & P2BodyDist X >= 130
trigger5 = (Random <= 300 & P2StateNo = [120,150]) || (Random <= 150 & P2StateNo < 200)
trigger6 = stateno = 1360 && animelemtime(1) >= 1 & P2BodyDist X >= 130
trigger6 = (Random <= 300 & P2StateNo = [120,150]) || (Random <= 150 & P2StateNo < 200)
trigger7 = stateno = 1075 && animelemtime(23) >= 1 & Helper(8080),MoveContact & P2StateType != A & P2StateType != L & P2BodyDist X >= 320 
trigger8 = stateno = 1176 && animelemtime(1) >= 1 & (FrontEdgeBodyDist >= 80 || NumHelper(53010) > 0)
trigger8 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]
trigger9 = (FVar(15) = 0.5 & EnemyNear(Var(50)),Life > 444) || Var(18) < 2000 || NumHelper(2050) > 0
trigger9 = stateno = 1100 && animelemtime(6) >= 1 
trigger9 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]
trigger10 = (FVar(15) = 0.5 & EnemyNear(Var(50)),Life > 444) || Var(18) < 2000 || NumHelper(2050) > 0
trigger10 = stateno = 1125 && animelemtime(6) >= 1
trigger10 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]
trigger11 = (FVar(15) = 0.5 & EnemyNear(Var(50)),Life > 444) || Var(18) < 2000 || NumHelper(2050) > 0
trigger11 = stateno = 1150 && animelemtime(6) >= 1
trigger11 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 4 & statetype != A & Var(53) != 8 & NumHelper(9175) > 0
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(48) = 1 
triggerall = Var(53) = 0
trigger1 = stateno = 1000 && animelemtime(11) >= 1 & Helper(8020),MoveContact & P2StateType != L & P2BodyDist X >= 320
trigger2 = stateno = 1025 && animelemtime(11) >= 1 & Helper(8020),MoveContact & P2StateType != L & P2BodyDist X >= 320
trigger3 = stateno = 1050 && animelemtime(11) >= 1 & Helper(8020),MoveContact & P2StateType != L & P2BodyDist X >= 320
trigger4 = stateno = 1310 && animelemtime(1) >= 1 & P2BodyDist X >= 130
trigger4 = (Random <= 300 & P2StateNo = [120,150]) || (Random <= 150 & P2StateNo < 200)
trigger5 = stateno = 1330 && animelemtime(1) >= 1 & P2BodyDist X >= 130
trigger5 = (Random <= 300 & P2StateNo = [120,150]) || (Random <= 150 & P2StateNo < 200)
trigger6 = stateno = 1360 && animelemtime(1) >= 1 & P2BodyDist X >= 130
trigger6 = (Random <= 300 & P2StateNo = [120,150]) || (Random <= 150 & P2StateNo < 200)
trigger7 = stateno = 1075 && animelemtime(23) >= 1 & Helper(8080),MoveContact & P2StateType != A & P2StateType != L & P2BodyDist X >= 320 
trigger8 = stateno = 1176 && animelemtime(1) >= 1 & (FrontEdgeBodyDist >= 80 || NumHelper(53010) > 0)
trigger8 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]
trigger9 = (FVar(15) = 0.5 & EnemyNear(Var(50)),Life > 444) || Var(18) < 2000 || NumHelper(2050) > 0
trigger9 = stateno = 1100 && animelemtime(6) >= 1 & Helper(9175),Var(19) = 0
trigger9 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]
trigger10 = (FVar(15) = 0.5 & EnemyNear(Var(50)),Life > 444) || Var(18) < 2000 || NumHelper(2050) > 0
trigger10 = stateno = 1125 && animelemtime(6) >= 1 & Helper(9175),Var(19) = 0
trigger10 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]
trigger11 = (FVar(15) = 0.5 & EnemyNear(Var(50)),Life > 444) || Var(18) < 2000 || NumHelper(2050) > 0
trigger11 = stateno = 1150 && animelemtime(6) >= 1 & Helper(9175),Var(19) = 0
trigger11 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-135,-1]

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9175) > 0 & (Var(53) != 8 || Var(53) = 8 & Fvar(5) = 1)
triggerall = Var(48) = 1 & Fvar(18) != -500 & (Helper(9175),Var(19) = 1 || Var(18) >= 1000)
triggerall = (Var(39) != 6 & Helper(9190),Var(8) != 2) & (Var(53) = 0 || Var(53) = 7)
triggerall = numhelper(8050) = 0 & P2BodyDist Y >= -60
triggerall = NumHelper(2150) > 0 || P2BodyDist Y < -156
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveHit

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & NumHelper(9101) > 0 & (Var(53) != 8 || Var(53) = 8 & Fvar(5) = 1)
triggerall = Var(48) = 1 & Fvar(18) != -500 & (Var(18) = [1000,1999])
triggerall = (Var(39) != 6 & Helper(9190),Var(8) != 2)
triggerall = numhelper(8050) = 0
trigger1 = stateno = 1100 && animelemtime(6) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(6) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(6) >= 1 & MoveHit

[State -1]
type = ChangeState
value = 1275
triggerall = Var(59) >= 3 & statetype != A & (Var(18) = [1000,1999]) & (Var(53) != 8 || Var(53) = 8 & Fvar(5) = 1)
triggerall = Var(48) = 1 & Fvar(18) != -500
triggerall = (Var(39) != 6 & Helper(9190),Var(8) != 2) & Var(53) = 0
trigger1 = stateno = 1100 && animelemtime(13) >= 1 & MoveHit
trigger2 = stateno = 1125 && animelemtime(13) >= 1 & MoveHit
trigger3 = stateno = 1150 && animelemtime(13) >= 1 & MoveHit

;地面起手

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & Var(18) >= 3000 & Var(53) = 0
triggerall = NumHelper(8050) = 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),Var(33) != -1
triggerall =(Random <= 1000 & Helper(9190),Var(33) = 0) || (Random <= 500 & Helper(9190),Var(33) = -1) || (Random <= 250 & Helper(9190),Var(33) = -2) || (Random <= 125 & Helper(9190),Var(33) = -3)
triggerall = (EnemyNear(Var(50)),Vel X = [-6,6]) & (EnemyNear(Var(50)),Vel Y = [-6,6])
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
trigger1 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || (stateno = 130 || stateno = 131)
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*33+Helper(9190),Fvar(0)*561) < 0
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= 260 & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= Helper(9190),Fvar(12)
trigger1 = P2StateType = A & Helper(9190),FVar(19) = 0
trigger2 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || (stateno = 130 || stateno = 131)
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*33+Helper(9190),Fvar(0)*561) < 0
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= 260 & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= Helper(9190),Fvar(12)
trigger2 = P2StateType != A & P2StateType != L & EnemyNear(Var(50)),Time-Helper(9190),Fvar(11) >= 3 & EnemyNear(Var(50)),AnimTime <= -33
trigger2 = P2BodyDist X >= 150
trigger3 = P2StateType != L & P2MoveType != H & Helper(9190),FVar(16) = 1
trigger3 = P2BodyDist X >= 200

[State -1]
type = ChangeState
value = 1075
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0 & NumHelper(9175) > 0
triggerall = NumHelper(8050) = 0 & Helper(9175),Var(19) > 0
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),Var(33) != -1
triggerall = P2StateNo != 5040 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall =(Random <= 1000 & Helper(9190),Var(33) = 0) || (Random <= 500 & Helper(9190),Var(33) = -1) || (Random <= 250 & Helper(9190),Var(33) = -2) || (Random <= 125 & Helper(9190),Var(33) = -3)
triggerall = (EnemyNear(Var(50)),Vel X = [-6,6]) & (EnemyNear(Var(50)),Vel Y = [-6,6])
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
trigger1 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || (stateno = 130 || stateno = 131)
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*33+Helper(9190),Fvar(0)*561) < 0
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= 260 & P2BodyDist X >= 200 & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= Helper(9190),Fvar(12)
trigger1 = P2StateType = A & Helper(9190),FVar(19) = 0
trigger2 = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || (stateno = 130 || stateno = 131)
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*33+Helper(9190),Fvar(0)*561) < 0
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= 260 & P2BodyDist X >= 200 & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= Helper(9190),Fvar(12)
trigger2 = P2StateType != A & P2StateType != L & EnemyNear(Var(50)),Time-Helper(9190),Fvar(11) >= 3 & EnemyNear(Var(50)),AnimTime <= -33
trigger3 = P2StateType != L & P2MoveType != H & Helper(9190),FVar(16) = 1
trigger3 = P2BodyDist X >= 200

[State -1]
type = ChangeState
value = IfElse((Random =[0,250]),1000,IfElse((Random =[251,611]),1025,1050))
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = Fvar(5) != 1 & P2StateType != L
triggerall = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101)
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0 || (Helper(9190),FVar(19) = 1 & Helper(9190),FVar(11)-EnemyNear(Var(50)),Time >= 30)
triggerall = Helper(9190),Var(33) != -1
triggerall = P2StateNo != 5040 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall = (Random <= 750 & Helper(9190),Var(33) = 0) || (Random <= 500 & Helper(9190),Var(33) = -1) || (Random <= 250 & Helper(9190),Var(33) = -2) || (Random <= 125 & Helper(9190),Var(33) = -3)
triggerall = (EnemyNear(Var(50)),Vel X = [-6,6]) & (EnemyNear(Var(50)),Vel Y = [-6,6])
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
trigger1 = P2StateType != C & P2MoveType != H & (P2StateNo < 200 || P2StateNo = [5050,5211]) & Random <= 350
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= 220
trigger1 = P2BodyDist X >= 220 & P2BodyDist X-EnemyNear(Var(50)),Const(velocity.run.fwd.x)*33 >= 145 
trigger2 = P2StateType != C & P2MoveType = I &  Random <= 150
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*33 >= 220
trigger2 = P2BodyDist X >= 220 & P2BodyDist X-EnemyNear(Var(50)),Const(velocity.run.fwd.x)*33 >= 145 
trigger3 = P2MoveType != H & (Helper(9190),FVar(16) = 1 || (Helper(9180),Var(31) = 5 & P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Ctrl = 0 & EnemyNear(Var(50)),AnimTime <= -20))
trigger3 = P2BodyDist X >= 200 || (P2BodyDist X >= 40 & EnemyNear(Var(50)),AnimTime <= -20) 

[State -1]
type = ChangeState
value = IfElse((Random =[0,250]),1000,IfElse((Random =[251,611]),1025,1050))
triggerall = Var(59) >= 3 & statetype != A & Var(53) = 0
triggerall = Fvar(5) != 1 & P2StateType != L
triggerall = Ctrl || (StateNo = [10,39]) || (StateNo = 52 & Time >= 1) || (stateno = 100 || stateno = 101) || StateNo = [130,131]
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0 || (Helper(9190),FVar(19) = 1 & Helper(9190),FVar(11)-EnemyNear(Var(50)),Time >= 30)
triggerall = Helper(9190),Var(33) != -1
triggerall = (Random <= 1000 & Helper(9190),Var(33) = 0) || (Random <= 500 & Helper(9190),Var(33) = -1) || (Random <= 250 & Helper(9190),Var(33) = -2) || (Random <= 125 & Helper(9190),Var(33) = -3)
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
trigger1 = P2StateType = A & EnemyNear(Var(50)),Vel X = 0 & EnemyNear(Var(50)),Vel Y = 0 & EnemyNear(Var(50)),Time > 3 & EnemyNear(Var(50)),AnimTime <= -22
trigger1 = P2MoveType != H & P2StateNo > 200 & EnemyNear(Var(50)),Ctrl = 0 & (P2BodyDist X >= 200 || EnemyNear(Var(50)),Pos Y <= -65)
trigger2 = Helper(9190),Var(36) = -1 & P2MoveType = I & P2StateType != L & P2BodyDist X >= 100

[State -1]
type = ChangeState
value = 1225
triggerall = Var(59) >= 3 & Var(53) != 3 & statetype != A
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2StateNo != 105
triggerall = P2StateNo != [5200,5211] 
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*34 = [300,394])
trigger1 = EnemyNear(Var(50)),AnimTime <= -36 & EnemyNear(Var(50)),MoveContact & Random <= 175
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*39 = [370,469])
trigger2 = EnemyNear(Var(50)),AnimTime <= -41 & EnemyNear(Var(50)),MoveContact & Random <= 150
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*44 = [460,544])
trigger3 = EnemyNear(Var(50)),AnimTime <= -46 & EnemyNear(Var(50)),MoveContact & Random <= 125
trigger4 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*34 = [300,394])
trigger4 = ((P2Dist Y-Vel Y*34-Const(movement.yaccel)*595) = [-150,-50]) & Random <= 100
trigger5 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*39 = [370,469])
trigger5 = (P2Dist Y-Vel Y*20-Const(movement.yaccel)*190) < -50 & Random <= 100
trigger5 = (P2Dist Y-Vel Y*25-Const(movement.yaccel)*325) < -50
trigger5 = (P2Dist Y-Vel Y*34-Const(movement.yaccel)*595) < -50
trigger5 = (P2Dist Y-Vel Y*39-Const(movement.yaccel)*780) = [-150,-50]
trigger6 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*44 = [460,544])
trigger6 = (P2Dist Y-Vel Y*20-Const(movement.yaccel)*190) < -50 & Random <= 100
trigger6 = (P2Dist Y-Vel Y*25-Const(movement.yaccel)*325) < -50
trigger6 = (P2Dist Y-Vel Y*34-Const(movement.yaccel)*595) < -50
trigger6 = (P2Dist Y-Vel Y*39-Const(movement.yaccel)*780) < -50
trigger6 = (P2Dist Y-Vel Y*44-Const(movement.yaccel)*990) = [-150,-50]

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & Var(53) != 3 & statetype != A
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2StateNo != [5200,5211] 
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
trigger1 = 0
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [165,231])
trigger2 = EnemyNear(Var(50)),AnimTime <= -22 & EnemyNear(Var(50)),MoveContact & Random <= 80
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [250,319])
trigger3 = EnemyNear(Var(50)),AnimTime <= -27 & EnemyNear(Var(50)),MoveContact & Random <= 80
trigger4 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*30 = [320,394])
trigger4 = EnemyNear(Var(50)),AnimTime <= -32 & EnemyNear(Var(50)),MoveContact & Random <= 80

trigger5 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [100,169])
trigger5 = (P2Dist Y-Vel Y*10-Const(movement.yaccel)*55) < -50 & Random <= 150
trigger5 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [-150,-50]
trigger6 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*20 = [165,231])
trigger6 = (P2Dist Y-Vel Y*10-Const(movement.yaccel)*55) < -50 & Random <= 150
trigger6 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) < -50
trigger6 = (P2Dist Y-Vel Y*20-Const(movement.yaccel)*210) = [-150,-50]
trigger7 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*25 = [250,319])
trigger7 = (P2Dist Y-Vel Y*10-Const(movement.yaccel)*55) < -50 & Random <= 150
trigger7 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) < -50
trigger7 = (P2Dist Y-Vel Y*20-Const(movement.yaccel)*210) < -50
trigger7 = (P2Dist Y-Vel Y*25-Const(movement.yaccel)*325) = [-150,-50]
trigger8 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*30 = [320,394])
trigger8 = (P2Dist Y-Vel Y*10-Const(movement.yaccel)*55) < -50 & Random <= 150
trigger8 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) < -50
trigger8 = (P2Dist Y-Vel Y*20-Const(movement.yaccel)*210) < -50
trigger8 = (P2Dist Y-Vel Y*25-Const(movement.yaccel)*325) < -50
trigger8 = (P2Dist Y-Vel Y*30-Const(movement.yaccel)*465) = [-150,-50]

trigger9 = P2StateType = A & P2MoveType = A & Var(54) = 1010 & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [270,435]) & Random <= 333
trigger9 = (P2Dist Y-Vel Y*10-Const(movement.yaccel)*55) < -50 & Random <= 150
trigger9 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [-150,-50]

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & Var(53) = 0 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Helper(9190),Fvar(23) = 0
triggerall = Helper(9185),Fvar(0) <= 12
triggerall = P2StateNo != 5120 & P2StateNo != [5200,5211]
triggerall = Var(59) = 3 || (Var(59) >= 3 & Random <= 650)
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & P2BodyDist X <= 45 
trigger1 = (P2MoveType = I & Random = [1,279])  || (StateNo = 100 & Random <= 300)
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 45
trigger2 = (EnemyNear(Var(50)),AnimTime = [-9,-5]) & EnemyNear(Var(50)),MoveContact
trigger3 = stateno = 100
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 45
trigger3 = EnemyNear(Var(50)),MoveContact & EnemyNear(Var(50)),AnimTime <= -5 & Random <= 200
trigger4 = EnemyNear(Var(50)),P2BodyDist X <-30 & P2BodyDist X > 30 & (P2MoveType = A || Helper(9190),Fvar(19) = 1)
trigger4 = EnemyNear(Var(50)),AnimTime = [-10,-5]
trigger5 = P2StateType = A & P2BodyDist X <= 45 & P2MoveType != H
trigger5 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*5+Helper(9190),Fvar(0)*15) > 0
trigger6 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),MoveContact 
trigger6 = EnemyNear(Var(50)),Facing = Facing & P2BodyDist X = [0,45]

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) >= 3 & Var(53) = 0 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Helper(9185),Fvar(0) <= 12
triggerall = P2StateNo != 5120 & P2StateNo != [5200,5211]
triggerall = Var(59) = 3 || (Var(59) >= 3 & Random <= 550)
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [80,110])
trigger1 = (P2MoveType = I & Random = [200,350])  || (StateNo = 100 & Random <= 150)
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 95
trigger2 = EnemyNear(Var(50)),MoveContact & EnemyNear(Var(50)),AnimTime <= -8 & Random <= 100
trigger3 = EnemyNear(Var(50)),P2BodyDist X <-30 & P2BodyDist X > 30 & (P2MoveType = A || Helper(9190),Fvar(19) = 1)
trigger3 = EnemyNear(Var(50)),AnimTime = [-12,-6]

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & Var(53) = 0 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Helper(9190),FVar(28) != 1
triggerall = Helper(9185),Fvar(0) <= 12
triggerall = P2StateNo != 5120 & P2StateNo != [5200,5211]
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = Var(59) = 3 || (Var(59) >= 3 & Random <= 450)
trigger1 = P2StateType != A & P2StateType != L  & (P2BodyDist X = [70,155]) 
trigger1 = (P2MoveType = I & Random = [381,421])  || (StateNo = 100 & Random <= 80)
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X = [70,145]
trigger2 = EnemyNear(Var(50)),MoveContact & EnemyNear(Var(50)),AnimTime <= -10 & Random <= 100+150*(stateno = 100)
trigger3 = EnemyNear(Var(50)),P2BodyDist X <-30 & P2BodyDist X > 30 & (P2MoveType = A || Helper(9190),Fvar(19) = 1)
trigger3 = EnemyNear(Var(50)),MoveContact & EnemyNear(Var(50)),AnimTime = [-13,-7]
trigger4 = P2StateType = A & P2BodyDist X <= 100 & P2MoveType != H
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*7+Helper(9190),Fvar(0)*28) > 0
trigger4 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) <= 0
trigger5 = P2StateType != A & P2StateType != L & P2MoveType = A & EnemyNear(Var(50)),MoveContact 
trigger5 = EnemyNear(Var(50)),Facing = Facing & P2BodyDist X = [0,100]
trigger5 = EnemyNear(Var(50)),AnimTime = [-12,-6]

[State -1]
type = ChangeState
value = 230
triggerall = Var(59) = 3 & Var(53) = 0 & statetype != A & PrevStateNo < 200
triggerall = Helper(9180),var(31) = 0
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Helper(9190),Fvar(19) = 0
triggerall = Helper(9190),FVar(28) != 1
triggerall = Helper(9185),Fvar(0) <= 12
triggerall = P2StateNo != 5120 & P2StateNo != [5200,5211]
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X-EnemyNear(Var(50)),Vel X*13 = [100,125]) 
trigger1 = (P2MoveType = I & Random = [541,575])  || (StateNo = 100 & Random <= 20)

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & Var(53) = 0 & statetype != A & PrevStateNo < 200
triggerall = Helper(9180),var(31) = 0
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Helper(9190),Fvar(19) = 0
triggerall = Helper(9190),FVar(28) != 1
triggerall = Helper(9185),Fvar(0) <= 12
triggerall = P2StateNo != 5120 & P2StateNo != [5200,5211]
triggerall = Var(59) = 3 || (Var(59) >= 3 & Random <= 350)
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [80,120]) 
trigger1 = (P2MoveType = I & Random = [576,670])  || (StateNo = 100 & Random <= 230)

[State -1, Run Fwd]
type = ChangeState
value = 800
triggerall = Var(59) >= 3 & Var(53) != 3 & Var(53) != 14 & Var(53) != [11,13]
triggerall = statetype != A & EnemyNear(Var(50)),IsHelper = 0
triggerall = (stateno = 7560 & animelemtime(17) >= 1) || Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (P2StateType = S & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X = [-15,44]) || (P2StateType = C & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X = [-15,42])  
triggerall = P2MoveType != H & EnemyNear(Var(50)),Vel Y = 0
triggerall = Var(29) != 3 & PrevStateNo != 7100 & PrevStateNo != [200, 499]
triggerall = P2StateNo != 40 & P2StateNo != 105 & P2StateNo != 5120 & P2StateNo != 5200 & P2StateNo != 5201 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall = P2StateNo != [5200,5211]
triggerall = P2StateNo != [140, 153]
triggerall = P2BodyDist X-EnemyNear(Var(50)),AnimTime*EnemyNear(Var(50)),Vel X >= 0
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9185),FVar(0) <= 0
triggerall = (P2StateNo != [105,106]) & (P2StateNo != [140,154]) & !(P2MoveType = A & PrevStateNo = [5000,5199]) & !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;會抓空的
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2BodyDist X <= IfElse((EnemyNear(Var(50)),Authorname = "baggy" & EnemyNear(Var(50)),Name = "Furudo_Erika"),30,50)
trigger1 = EnemyNear(Var(50)),AnimTime <= -1 & Helper(9190),Fvar(15) = 0
trigger1 = EnemyNear(Var(50)),StateNo > 200 & Helper(9190),Fvar(11) > 0
trigger1 = Helper(9190),Fvar(11) -EnemyNear(Var(50)),Time > 1
trigger2 = P2MoveType = I & (EnemyNear(Var(50)),Ctrl = 0 || EnemyNear(Var(50)),StateNo < 199)
trigger3 = EnemyNear(Var(50)),P2BodyDist X < -5 & P2BodyDist X > 5 & (P2MoveType = A || Helper(9190),Fvar(19) = 1)
trigger3 = EnemyNear(Var(50)),AnimTime <= -5

[State -1, Run Fwd]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & Var(53) != 3
triggerall = statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) || StateNo = 100 || (StateNo = [130,140])
triggerall = Helper(9180),var(31) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0 & P2BodyDist X <= 40
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & EnemyNear(Var(50)),AnimTime <= -30 & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 5);疑似空中超殺
triggerall = !(P2StateType = A & P2MoveType = A & EnemyNear(Var(50)),MoveContact = 0 & P2StateNo = EnemyNear(Var(50)),PrevStateNo & P2StateNo > 1000 & EnemyNear(Var(50)),Vel X > 0);空中持續判定
trigger1 = P2StateNo > 200 & Helper(9190),Fvar(11) > 0 & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*4 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) = [-90,-1]
trigger2 = EnemyNear(Var(50)),Time <= -5 & Random <= 222
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*4 = [-40,40]) & P2StateType = A & P2MoveType != H
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*4+Helper(9190),Fvar(0)*10) = [-90,-1]

;靠這吃飯

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 3) & statetype != A & Var(18) >= 2000 & ((Random <= 0.15*Var(18)) || (NumHelper(9175) > 0 & Random <= 0.18*Var(18)))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A 
trigger2 = EnemyNear(Var(50)),AnimTime <= -12 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,210]
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -10 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,200]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 3) & statetype != A & Var(18) >= 2000 & ((Random <= 0.15*Var(18)) || (NumHelper(9175) > 0 & Random <= 0.18*Var(18)))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = StateNo = 7560 & AnimElem = 17,>= 2
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = StateNo = 7560 & AnimElem = 17,>= 2
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A
trigger2 = EnemyNear(Var(50)),AnimTime <= -10 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]
trigger3 = StateNo = 7560 & AnimElem = 17,>= 2
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -9 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) >= 3) & statetype != A & Var(18) >= 2000 & ((Random <= 0.15*Var(18)) || (NumHelper(9175) > 0 & Random <= 0.18*Var(18)))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55) = [-110,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10 = [-20,80])
trigger1 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 3) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType = S & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -13 & Var(12) != 33 & P2StateNo > 200
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,160]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger2 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger2 = EnemyNear(Var(50)),AnimTime <= -13 & Var(54) = 800
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-40,160]

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) >= 3) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
triggerall = !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [80,175]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-200,-10]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-100,-10]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-20,80]
trigger2 = P2StateType = A & P2MoveType != H

;平推
;防禦線

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) >= 3 & statetype != A & P2StateType != A
trigger1 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & (P2BodyDist X = [0,15])
trigger2 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & (P2BodyDist X = [16,35])
trigger3 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & (P2BodyDist X = [36,60])
trigger4 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & (P2BodyDist X = [61,80]) & Random <= 222

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & statetype != A
triggerall = P2StateType = A & P2BodyDist X <= 40 & Random <= 50
trigger1 = MoveGuarded & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 1 & P2StateType = A
trigger2 = MoveGuarded & stateno = 205 && animelemtime(2) >= 1 && animelemtime(3) <= 1 & P2StateType = A
trigger3 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 0 & P2StateType = A

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) >= 3 & statetype != A & P2StateType != A
trigger1 = (MoveGuarded || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & (P2BodyDist X = [36,55]) & Random <= 200
trigger2 = (MoveGuarded || Var(29) = 3) & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & P2BodyDist X >= 56

[State -1]
type = ChangeState
value = 411
triggerall = Var(59) >= 3 & statetype != A & P2StateType != A
trigger1 = MoveGuarded & stateno = 230 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2BodyDist X < 90

[State -1]
type = ChangeState
value = 240
triggerall = Var(59) >= 3 & statetype != A & (P2BodyDist X = [110,140]) & P2StateType != A & P2StateType != L
triggerall = Helper(9190),Fvar(14) = 0
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Helper(9190),Fvar(17) = 0
triggerall = (EnemyNear(Var(50)),Ailevel > 0 & Random = [90,115]) || (EnemyNear(Var(50)),Ailevel = 0 & Random = [0,150])
trigger1 = MoveGuarded & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 2
trigger2 = MoveGuarded & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 2
trigger3 = MoveGuarded & stateno = 410 && animelemtime(3) >= 1 && animelemtime(3) <= 2
trigger4 = MoveGuarded & stateno = 411 && animelemtime(3) >= 1 && animelemtime(3) <= 2
trigger5 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(3) <= 2
trigger6 = MoveGuarded & stateno = 431 && animelemtime(3) >= 1 && animelemtime(3) <= 2
trigger7 = MoveGuarded & stateno = 231 && animelemtime(4) >= 1 && animelemtime(4) <= 2

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),216,211)
triggerall = Var(59) >= 3 & statetype != A
trigger1 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2BodyDist X = [-90,115]) & Random <= 175
trigger2 = MoveGuarded & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & P2BodyDist X >= 70

[State -1]
type = ChangeState
value = 231
triggerall = Var(59) >= 3 & statetype != A
trigger1 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & P2BodyDist X > 115
trigger2 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2BodyDist X = [-90,115]) & Var(5) < 1000
trigger3 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2BodyDist X = [-90,115]) & Var(5) >= 1000 & Random <= 100

[State -1]
type = ChangeState
value = 240
triggerall = Var(59) >= 3 & statetype != A & (Var(5) < 1000 || (Var(5) >= 1000 & Random <= 222)) & P2StateType != A
trigger1 = MoveGuarded & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2BodyDist X <= 60
trigger2 = MoveGuarded & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2BodyDist X <= 60
trigger3 = MoveGuarded & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 
trigger4 = MoveGuarded & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1
trigger5 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & Random <= 444
trigger6 = MoveGuarded & stateno = 431 && animelemtime(3) >= 1 && animelemtime(4) <= 1
trigger7 = MoveGuarded & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Random <= 75
trigger8 = MoveGuarded & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Random <= 100

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = Var(59) >= 3 & statetype != A
trigger1 = MoveGuarded & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A & P2BodyDist X <= 60
trigger2 = MoveGuarded & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A & P2BodyDist X <= 60
trigger3 = MoveGuarded & stateno = 230 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A
trigger4 = MoveGuarded & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & (P2StateType = A || P2StateType = S)
trigger5 = MoveGuarded & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = A || P2StateType = S)
trigger6 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = A || P2StateType = S)
trigger7 = MoveGuarded & stateno = 431 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = A || P2StateType = S)
trigger8 = MoveGuarded & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X <= 120 & Var(5) >= 1000
trigger9 = MoveGuarded & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X <= 120 & Var(5) >= 1000

[State -1]
type = ChangeState
value = 420
triggerall = Var(59) >= 3 & statetype != A
trigger1 = MoveGuarded & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType != A
trigger2 = MoveGuarded & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType != A
trigger3 = MoveGuarded & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = C || (P2StateType = L & Helper(9190),Fvar(26) = 2))
trigger4 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A & P2BodyDist X <= 110 & Random <= 50
trigger5 = MoveGuarded & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A
trigger6 = MoveGuarded & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & P2StateType != A & Var(5) >= 1000
trigger7 = MoveGuarded & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & P2StateType != A & Var(5) >= 1000
trigger8 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 1 & P2StateType != A & Var(5) >= 1000

[State -1]
type = ChangeState
value = IfElse((Random =[0,250]),1000,IfElse((Random =[251,611]),1025,1050))
triggerall = Var(59) >= 3 & statetype != A
triggerall = numhelper(8020) = 0
trigger1 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger2 = MoveGuarded & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Random <= 15
trigger3 = MoveGuarded & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Random <= 30

;攻擊線

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = P2StateType = S || P2StateType = C
trigger1 = MoveHit & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger2 = MoveHit & stateno = 205 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger3 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 0

[State -1]
type = ChangeState
value = 231
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = P2StateType != L
trigger1 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1
trigger2 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = P2StateType = L
trigger1 = MoveHit & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger2 = MoveHit & stateno = 205 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger3 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 0

[State -1]
type = ChangeState
value = 411
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = P2StateType = L
trigger1 = MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = L

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),216,211)
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = P2StateType = A
trigger1 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1 
trigger2 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = P2StateType = A
trigger1 = MoveHit & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger2 = MoveHit & stateno = 205 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger3 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 0

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
trigger1 = MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A & P2BodyDist X <= 60
trigger2 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A & P2BodyDist X <= 60
trigger3 = MoveHit & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & (P2StateType = S || P2StateType = C) & P2BodyDist X <= 60
trigger4 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & (P2StateType = S || P2StateType = C) & P2BodyDist X <= 60
trigger5 = MoveHit & stateno = 230 && animelemtime(4) >= 1 && animelemtime(5) <= 1
trigger6 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = S & P2BodyDist X <= 95
trigger7 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = A || P2StateType = S)
trigger8 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = A || P2StateType = S)
trigger9 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = A || P2StateType = S)
trigger10 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X <= 170 & P2StateType != A
trigger11 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X <= 170 & P2StateType != A

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
trigger1 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X > 55 & P2StateType = A
trigger2 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X > 55 & P2StateType = A

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A & NumHelper(9101) > 0
triggerall = (Var(18) >= 3000 || (Var(18) >= 2000 & Var(39) = 6) || (Var(18) >= 2000 & EnemyNear(Var(50)),Life = [1,250]))
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A
trigger2 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A & NumHelper(9175) > 0
triggerall = (Var(18) >= 2000 || Helper(9175),Var(19) > 0)
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A
trigger2 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A

[State -1]
type = ChangeState
value = IfElse(Var(18) < 1000,1150,1175)
triggerall = EnemyNear(Var(50)),Authorname = "yuki" & EnemyNear(Var(50)),Name = "Elque"
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
trigger1 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 2 & P2StateType != A & P2BodyDist X > 175
trigger2 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger3 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger4 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = C)
trigger5 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A & P2BodyDist X <= 110
trigger6 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A
trigger7 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & P2StateType = C
trigger8 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X > 175

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = NumHelper(2050) > 0
triggerall = Helper(2050),Time < 160
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A & P2BodyDist X <= 110

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = NumHelper(2050) > 0
triggerall = Helper(2050),Time < 160
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A & P2BodyDist X > 110
trigger2 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A

[State -1]
type = ChangeState
value = 420
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = NumHelper(2050) > 0
triggerall = Helper(2050),Time >= 160
trigger1 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 2 & P2StateType != A & P2BodyDist X > 175
trigger2 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger3 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger4 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = C || (P2StateType = L & Helper(9190),Fvar(26) = 2 & 0))
trigger5 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A & P2BodyDist X <= 110
trigger6 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A
trigger7 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & P2StateType = C
trigger8 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & P2StateType = L & Helper(9190),Fvar(26) = 2 & 0
trigger9 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 1 & P2StateType = L & Helper(9190),Fvar(26) = 2 & 0
trigger10 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X > 175
trigger11 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = S & P2BodyDist X > 95

[State -1]
type = ChangeState
value = 420
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = NumHelper(2050) = 0
trigger1 = MoveHit & stateno = 211 && animelemtime(4) >= 1 && animelemtime(4) <= 2 & P2StateType != A & P2BodyDist X > 175
trigger2 = MoveHit & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger3 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & P2StateType = C
trigger4 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & (P2StateType = C || (P2StateType = L & Helper(9190),Fvar(26) = 2 & 0))
trigger5 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType != A & P2BodyDist X <= 110
trigger6 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 1 & P2StateType != A
trigger7 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & P2StateType = C
trigger8 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(4) <= 1 & P2StateType = L & Helper(9190),Fvar(26) = 2 & 0
trigger9 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 1 & P2StateType = L & Helper(9190),Fvar(26) = 2 & 0
trigger10 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & P2BodyDist X > 175
trigger11 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = S & P2BodyDist X > 95

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A & NumHelper(9101) > 0
triggerall = Helper(9101),Var(19) = 1
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A & NumHelper(9175) > 0
triggerall = Helper(9175),Var(19) = 1
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 2000
triggerall = Var(59) >= 3 & statetype != A & NumHelper(2050) = 0 & P2MoveType != A
triggerall = (Var(18) >= 3000 || (Var(18) >= 2000 & Var(39) = 6))
triggerall = FVar(15) != 0.5 || (FVar(15) = 0.5 & EnemyNear(Var(50)),Life <= 444 & EnemyNear(Var(50)),Alive) || NumHelper(9175) > 0
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & P2StateType != A & P2StateType != L
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 7500
triggerall = Var(59) >= 3  & Var(56) = 0 & statetype != A & Random <= Var(57)
triggerall = Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0 & Var(21) >= 500
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType != L& P2StateType != A

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0 & P2MoveType != A
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = Var(53) = 0 || Var(53) = 1
trigger1 = stateno = 7560 & animelemtime(17) >= 1
trigger1 = (P2StateNo = 5070 || P2StateNo = 5071 || P2StateNo = 6090 || P2StateNo = 6091)
trigger2 = stateno = 7560 & animelemtime(17) >= 1
trigger2 = P2StateType = A & NumHelper(8080) > 0

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0 & P2MoveType != A
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = EnemyNear(Var(50)),BackEdgeDist <= 100 & ((Helper(9180),Var(0) >= -380 & Facing = 1 & TeamSide = 1) || (Helper(9185),Var(0) <= 380 & Facing = -1 & TeamSide = 1) || (Helper(9180),Var(0) >= -380 & Facing = -1 & TeamSide = 2) || (Helper(9185),Var(0) <= 380 & Facing = 1 & TeamSide = 2))
triggerall = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L
trigger1 = Var(7) != 104 & Var(7) != 107 & Var(7) != 111 & Var(7) != 114 & Var(7) != 116 & Var(7) != 117
trigger1 = Var(35) >= 1510
trigger2 = Var(7) = 104 || Var(7) = 107 || Var(7) = 117
trigger2 = Var(35) >= 1310
trigger3 = Var(7) = 111
trigger3 = Var(35) >= 910
trigger4 = Var(7) = 114 || Var(7) = 116
trigger4 = Var(35) >= 1810
trigger5 = NumHelper(9101) > 0
trigger5 = Var(35) >= 200 & Helper(9101),Var(11) = 1

[State -1]
type = ChangeState
value = 7600
triggerall = Var(59) >= 3 & statetype != A
triggerall = NumHelper(9190) > 0 & P2MoveType != A
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = ((Helper(9180),Var(0) < -380 & Facing = 1 & TeamSide = 1) || (Helper(9185),Var(0) > 380 & Facing = -1 & TeamSide = 1) || (Helper(9180),Var(0) < -380 & Facing = -1 & TeamSide = 2) || (Helper(9185),Var(0) > 380 & Facing = 1 & TeamSide = 2))
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A & Random<= 250 & NumHelper(2050) < 0
triggerall = P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66 <= -100
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & P2StateType = A
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L
trigger3 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType = A
trigger4 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = NumHelper(53010) = 0 & Var(35) < 1790 & Var(48) = 0 & (Random <= 200 || Fvar(15) = 0.5)
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & P2StateType = A
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L
trigger3 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType = A
trigger4 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A

[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
triggerall = !((P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11 <= 60) & (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91 <= -165))
trigger1 = MoveHit & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & P2StateType = A
trigger2 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(5) <= 0 & P2StateType != L
trigger3 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(7) <= 1 & P2StateType = A & P2BodyDist X <= 125
trigger4 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 1 & P2StateType = A

[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) >= 3 & statetype != A & P2MoveType != A
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3

;上推
[State -1, 1]
type = VarSet
triggerall = Var(59) >= 3 & statetype != A & p2statetype = A
trigger1 = (MoveGuarded || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger2 = (MoveGuarded || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger3 = (MoveGuarded || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger5 = (MoveGuarded || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger6 = (MoveGuarded || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveGuarded || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 1
trigger8 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Var(53) = 0
sysvar(1) = 0

[State -1]
type = ChangeState
value = 41
triggerall = Var(59) >= 3 & statetype != A & p2statetype = A
trigger1 = (MoveGuarded || Var(29) = 3) & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger2 = (MoveGuarded || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(3) <= 1
trigger3 = (MoveGuarded || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger4 = (MoveGuarded || Var(29) = 3) & stateno = 216 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger5 = (MoveGuarded || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger6 = (MoveGuarded || Var(29) = 3) & stateno = 231 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveGuarded || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 1
trigger8 = MoveHit & stateno = 210 && animelemtime(4) >= 1 && animelemtime(4) <= 4 & Var(53) = 0

[State -1]
type = ChangeState
value = 600
triggerall = Var(59) >= 3 & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger1 = EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateNo =  [120,153]

[State -1]
type = ChangeState
value = 605
triggerall = Var(59) >= 3 & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger1 = EnemyNear(Var(50)),StateType = A & EnemyNear(Var(50)),MoveType = H & EnemyNear(Var(50)),StateNo =  [120,153]

;對手背對
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & NumHelper(9190) > 0 & (PrevStateNo != [5000,6999]) & (PrevStateNo != [120,154])
triggerall = StateNo != 100 & PrevStateNo != 100 & StateType != A
triggerall = EnemyNear(Var(50)),P2BodyDist X < -60 & P2BodyDist X > 60
triggerall = (P2BodyDist X <= 200 & (EnemyNear(Var(50)),AnimTime = [-21,-8])) || (P2BodyDist X <= 300 & (EnemyNear(Var(50)),AnimTime = [-33,-11]))
triggerall = Helper(9190),Fvar(15) = 0
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 
trigger1 = P2StateNo >= 200 & P2MoveType = A & P2Dist Y >= -120 & P2StateType != L
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 
trigger2 = P2StateNo >= 200 & P2MoveType != H & Helper(9190),Fvar(19) = 1
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 
trigger3 = P2StateNo >= 200 & P2MoveType != H & Helper(9190),Fvar(16) = 1 & P2StateType != A & P2StateType != L

;衝衝衝
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & Var(53) != 3 & Var(53) != [11, 13]
triggerall = statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100 
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(23) = 0
triggerall = Helper(9190),Var(34) = 0
triggerall = !(P2MoveType = A & EnemyNear(Var(50)),Time <= 5)
trigger1 = StateNo = 52 
trigger1 = P2MoveType = H & P2StateNo != [120,153]
trigger2 = Helper(9190),Var(19) = 0
trigger2 = EnemyNear(Var(50)),PrevStateNo < 200 & P2StateType = A & P2StateNo = 5210
trigger2 = P2BodyDist X > 200 & Random = [101,200]
trigger3 = EnemyNear(Var(50)),MoveContact & P2StateType = S & P2BodyDist X <= 230 & Helper(9190),Fvar(11) <= 20 & EnemyNear(Var(50)),AnimTime = [-13,-9]
trigger4 = EnemyNear(Var(50)),MoveContact & P2StateType = C & P2BodyDist X <= 230 & Helper(9190),Fvar(11) <= 20 & EnemyNear(Var(50)),AnimTime = [-13,-9]
trigger5 = EnemyNear(Var(50)),MoveContact & P2StateType = A & P2BodyDist X <= 230 & P2StateType != A & EnemyNear(Var(50)),AnimTime = [-14,-8]
trigger6 = PrevStateNo = 105 & P2BodyDist X <= 220 & P2MoveType = A & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11) & EnemyNear(Var(50)),AnimTime = [-13,-9]

;跳跳忍者

[State -1]
type = ChangeState
triggerall = Var(53) != 19 || (Var(53) = 19 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) >= 2 & StateNo = 100 & Statetype != A
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1  || ((Helper(9180),Var(31) = [2,4]) & P2StateNo >= 200 & P2MoveType != H)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(20) != -1
trigger1 = Helper(9180),Var(31) > 0
value = 41

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Ctrl || (StateNo = [1,39])
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing
triggerall = Var(59) >= 3 & Var(53) != 3
triggerall = BackEdgeBodyDist >= 60 & EnemyNear(Var(50)),StateNo > 199
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Var(54) = [1000, 1060]
trigger1 = EnemyNear(Var(50)),AnimTime <= -12
trigger1 = Helper(9190),Fvar(11) > 0 & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time = [1,10]
trigger1 = P2Dist X = [0,(Helper(9190),Fvar(12)+15)]
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9190),Var(10) & EnemyNear(Var(50)),AnimTime <= -12
trigger2 = Helper(9190),Fvar(11) > 0 & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time = [1,10]
trigger2 = P2BodyDist X = [0,150]

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120, 131]
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing
triggerall = Var(59) >= 3 & Var(53) != 3
triggerall = BackEdgeBodyDist >= 60 & P2StateNo > 199 & EnemyNear(Var(50)),PrevStateNo <= 199
trigger1 = Var(54) = 801 & EnemyNear(Var(50)),Time <= 5
trigger1 = EnemyNear(Var(50)),HitDefAttr = SCA,NT,ST,HT,AT
trigger2 = Var(54) = 800
trigger2 = Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time = [0,5]

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = StateNo = 52 || stateno = 100 || stateno = 101
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing
triggerall = Helper(9190),Var(31) != 1
triggerall = Var(59) >= 3 & Var(53) != 3
triggerall = BackEdgeBodyDist >= 40 & EnemyNear(Var(50)),StateNo > 199
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Var(54) = [1000, 1060]
trigger1 = EnemyNear(Var(50)),AnimTime <= -6
trigger1 = Helper(9190),Fvar(11) > 0 & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time = [1,10]
trigger1 = P2Dist X = [0,(Helper(9190),Fvar(12)+15)]
trigger2 = EnemyNear(Var(50)),StateNo = Helper(9190),Var(10) & EnemyNear(Var(50)),AnimTime <= -6
trigger2 = Helper(9190),Fvar(11) > 0 & Helper(9190),Fvar(11)-EnemyNear(Var(50)),Time = [1,10]
trigger2 = P2BodyDist X = [0,150]

;普換
[State -1]
type = ChangeState
value = 7000
triggerall = (Var(59) >= 3) & Var(53) = 0 & statetype != A & Var(5) >= 1000
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
triggerall = (Var(19)-Var(18) >=2000) || (Var(19) >= 1000 & Var(18) < 1000) || Var(38) >= 800*(1+fvar(38))
trigger1 = P2BodyDist X >= 350 & P2MoveType != A & Random <= 50 & Helper(9190),Var(37) != -1 ;非法師
trigger1 = P2StateType = A || P2StateType = L
trigger1 = PrevStateNo != [5000,5999]
trigger1 = Helper(9180),Var(31) = 0
trigger2 = P2BodyDist X >= 350 & P2MoveType != A
trigger2 = P2StateType = S || P2StateType = C & Random <= 50 & Helper(9190),Var(37) != -1 ;非法師
trigger2 = PrevStateNo != [5000,5999]
trigger2 = Helper(9180),Var(31) = 0
trigger3 = (PrevStateNo = [1100,1299]) & P2MoveType = H & P2StateType = A
trigger3 = P2BodyDist X >= 120 || (EnemyNear(Var(50)),Vel Y < 0 & (StateNo = [1100,1176]))

;---------------------------------------------------------------------------
;                                 LeveL1 (Hard電腦)
;                                 LeveL2 (Hard電腦(Boss))
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;地板動作

[State -1]
type = ChangeState
value = 410
triggerall = (Var(59) = [1, 2]) & statetype != A & Helper(9190),Fvar(26) != -1
triggerall = Var(53) = 4
triggerall = Var(8) < 200
trigger1 = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger1 = P2Dist X <= 200 &Var(8) != 420 & Var(8) != 430 
trigger1 = P2StateNo = 5080 || P2StateNo = 5081 || P2StateNo = 5100 || P2StateNo = 5101 || P2StateNo = 5110 || (P2StateNo = 7625 & P2StateType = L)
trigger2 = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger2 = P2Dist X <= 200 &Var(8) != 420 & Var(8) != 430 
trigger2 = IfElse((EnemyNear(Var(50)),Authorname = "Boomer" || NumHelper(53010) > 0),P2StateNo = 6081 || P2StateNo = 6080 || P2StateNo = 6112 || P2StateNo = 6113 || P2StateNo = 6120,0)

trigger3 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 410
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = Var(53) = 4
trigger1 = Ctrl || (StateNo = [10,39]) || StateNo = 52 || (stateno = 100 || stateno = 101)
trigger1 = P2BodyDist X <= 40 & (P2StateNo = [6111,6113]) & EnemyNear(Var(50)),MoveType = H

[State -1]
type = ChangeState
value = 420
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = Var(53) = 4
triggerall = P2BodyDist X <= 180 & EnemyNear(Var(50)),MoveType = H
trigger1 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger2 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger4 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger5 = MoveHit & stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

;---------------------------------------------------------------------------

;超稀有連段

[State -1]
type = ChangeState
value = 2000
triggerall = (Var(59) = [1, 2]) & statetype != A & Var(18) >= 3000 & NumHelper(2050) = 0
triggerall = Var(21) < 500 & Var(53) = 6
triggerall = Var(39) != 6
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [0,160]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*20+Helper(9190),Fvar(0)*190) = [-150,-1]

[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500 & Var(53) = 6
triggerall = (Var(59) = [1, 2]) & Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*36+Helper(9190),Fvar(0)*666) = [-115,-1]

[State -1]
type = ChangeState
value = 7600
triggerall = (Var(59) = [1, 2]) & Var(53) = 6 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2) & StateNo != 7600
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || (stateno = [120,140]) || stateno = 7560 & animelemtime(17) >= 1
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*35+Helper(9190),Fvar(0)*630) = [-110,-1]

;裸放上位
[State -1]
type = ChangeState
value = 7500
triggerall = (Var(59) = [1, 2]) & Var(53) = 0 & statetype != A
triggerall = Var(18) >= 3000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9185),FVar(0) <= 0
triggerall = P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2BodyDist X >= 200 & EnemyNear(Var(50)),AnimTime <= -35 & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = Var(21) >= 500 & P2StateType != A & P2StateType != L & P2MoveType = A
trigger2 = P2BodyDist X >= 200 & EnemyNear(Var(50)),AnimTime <= -35
trigger2 = Var(21) >= 500 & P2StateType != A & P2StateType != L & P2MoveType = I & P2StateNo > 200

[State -1]
type = ChangeState
value = 7600
triggerall = (Var(59) = [1, 2]) & Var(53) = 0 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401 & StateNo != 7600
triggerall = (stateno = 7560 & animelemtime(17) >= 1) || Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2BodyDist X >= 200 & EnemyNear(Var(50)),AnimTime <= -32 & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)
trigger1 = P2StateType != A & (P2StateType != L || P2StateNo = 5120) & P2MoveType = A
trigger2 = P2BodyDist X >= 200 & EnemyNear(Var(50)),AnimTime <= -32
trigger2 = P2StateType != A & (P2StateType != L || P2StateNo = 5120) & P2MoveType = I & P2StateNo > 200
trigger3 = P2BodyDist X >= 200 & EnemyNear(Var(50)),AnimTime <= -32
trigger3 = P2StateType = A
trigger3 = (P2Dist Y-Vel Y*32-Const(movement.yaccel)*528) <= -1
trigger3 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*32 >= 180

[State -1]
type = ChangeState
value = 7600
triggerall = (Var(59) = [1, 2]) & Var(53) = 0 & statetype != A
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401 & StateNo != 7600
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2BodyDist X >= 300 & P2MoveType = I & Random <= 333
trigger1 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*32 >= 180
trigger2 = P2BodyDist X >= 300 & P2StateNo = 5120 & EnemyNear(Var(50)),AnimTime > -9
trigger2 = P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*32 >= 180

;起手

[State -1]
type = ChangeState
value = 2000
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & Var(18) >= 3000
triggerall = Helper(9180),var(31) = 0
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = EnemyNear(Var(50)),Time > Helper(9190),Fvar(11)+7 & (P2BodyDist X = [160,280]) & EnemyNear(Var(50)),AnimTime <= -21 & Random <= 300
trigger1 = Helper(9190),Fvar(11) != 0 & P2StateType != A & P2MoveType = A
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = Helper(9190),Fvar(11)- EnemyNear(Var(50)),Time >= 26 & EnemyNear(Var(50)),Time >= 2  & Helper(9190),Fvar(19) > 0 & (P2BodyDist X = [160,280])
trigger2 = Helper(9190),Fvar(11) != 0 & P2StateType != A & P2MoveType = A & Random <= 300

[State -1]
type = ChangeState
value = 1075
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & (Var(18) >= 2000 || (NumHelper(9175) > 0 & Random <= 175))
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
trigger1 = P2StateType = S & P2BodyDist X >= 270 & Random <= 90 & EnemyNear(Var(50)),StateNo > 200 & EnemyNear(Var(50)),AnimTime <= -24
trigger1 = Helper(9190),Fvar(12) < 270
trigger2 = P2StateType = S & Helper(9190),FVar(16) = 1

[State -1]
type = ChangeState
value = 1200
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [365,435]) & Random <= 350
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X = [365,435])
trigger2 = EnemyNear(Var(50)),AnimTime <= -20 & EnemyNear(Var(50)),MoveContact
trigger3 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [230,435]) & Random <= 350
trigger3 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [-120,-1]
trigger4 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [365,435]) & PrevStateNo = 1000
trigger5 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [365,435]) & PrevStateNo = 1000 & Random <= 333

[State -1]
type = ChangeState
value = 1000
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0 || (Helper(9190),FVar(19) = 1 & Helper(9190),FVar(11)-EnemyNear(Var(50)),Time >= 30)
triggerall = P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
trigger1 = P2StateType != L & (P2StateNo < 200 || P2StateNo = [5040,5211]) & P2BodyDist X >= 340 & Random <= 200
trigger2 = P2StateType != L & P2MoveType = A & P2BodyDist X >= 300 & Random <= 70
trigger2 = Var(54) = 1030 || Var(54) = 1060
trigger3 = P2StateType != L & P2MoveType != H & Helper(9190),FVar(16) = 1
trigger4 = P2StateType != L  & P2BodyDist X >= 240 & P2StateNo < 200 & P2StateNo != 100 & EnemyNear(Var(50)),Vel X < 5 & Random <= 100
trigger5 = P2StateType != L  & P2BodyDist X >= 240 & P2StateNo < 200 & P2StateNo != 100 & EnemyNear(Var(50)),Vel X < 5 & PrevStateNo = 1000 & Random <= 100
trigger5 = Time < 3
trigger6 = P2MoveType = I & P2StateNo >= 200 & Random <= 50 & EnemyNear(Var(50)),AnimTIme <= -20

[State -1]
type = ChangeState
value = 1275
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & ((Var(18) >= 2000 & Random <= 45) || (NumHelper(9175) > 0 & Random <= 75))
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [350,435]) & Random <= 100
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X = [350,435])
trigger2 = EnemyNear(Var(50)),AnimTime <= -20 & EnemyNear(Var(50)),MoveContact
trigger3 = P2StateType = A & P2MoveType = I & P2StateNo != 105 & (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15 = [230,435]) & Random <= 100
trigger3 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [-120,-1]

[State -1]
type = ChangeState
value = 1000
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A
triggerall = Fvar(5) != 1
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [365,435]) & Random <= 150
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & (P2BodyDist X = [365,435]) & Random <= 150

[State -1]
type = ChangeState
value = 400
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & P2BodyDist X <= 40 & Random = [1,150]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 40
trigger2 = (EnemyNear(Var(50)),AnimTime = [-9,-5]) & EnemyNear(Var(50)),MoveContact

[State -1]
type = ChangeState
value = 410
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [80,110]) & Random = [151,325]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 180
trigger2 = (EnemyNear(Var(50)),AnimTime = [-22,-11]) & EnemyNear(Var(50)),MoveContact & Random = [1,333]

[State -1]
type = ChangeState
value = 430
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [70,120]) & Random = [326,499]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 125
trigger2 = (EnemyNear(Var(50)),AnimTime = [-18,-13]) & EnemyNear(Var(50)),MoveContact

[State -1]
type = ChangeState
value = 420
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [95,180]) & Random = [500,552]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 95
trigger2 = (EnemyNear(Var(50)),AnimTime = [-22,-12]) & EnemyNear(Var(50)),MoveContact

[State -1]
type = ChangeState
value = 230
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X-EnemyNear(Var(50)),Vel X*13 = [60,95]) & Random = [553,635]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 95
trigger2 = (EnemyNear(Var(50)),AnimTime = [-19,-14]) & EnemyNear(Var(50)),MoveContact

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = (Var(59) = [1, 2]) & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [70,140]) & Random = [636,726]

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [70,160]) & Random = [727,760]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 160
trigger2 = (EnemyNear(Var(50)),AnimTime = [-25,-14]) & EnemyNear(Var(50)),MoveContact

[State -1]
type = ChangeState
value = 240
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & PrevStateNo < 200
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & (P2BodyDist X = [90,160]) & Random = [761,801]

[State -1, Run Fwd]
type = ChangeState
value = 800
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & Var(53) != 14
triggerall = statetype != A & EnemyNear(Var(50)),IsHelper = 0
triggerall = (stateno = 7560 & animelemtime(17) >= 1) || Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
triggerall = (P2StateType = S & P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X = [-15,48]) || (P2StateType = C & P2BodyDist X = [-15,42])  
triggerall = P2MoveType != H & EnemyNear(Var(50)),Vel Y = 0
triggerall = Var(29) != 3 & PrevStateNo != 7100 & PrevStateNo != [200, 499]
triggerall = P2StateNo != 40 & P2StateNo != 105 & P2StateNo != 5120 & P2StateNo != 5200 & P2StateNo != 5201 & P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
triggerall = P2StateNo != [5200,5211]
triggerall = P2StateNo != [140, 153]
triggerall = P2BodyDist X-EnemyNear(Var(50)),AnimTime*EnemyNear(Var(50)),Vel X >= 0
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9185),FVar(0) <= 0
triggerall = (P2StateNo != [105,106]) & (P2StateNo != [140,154]) & !(P2MoveType = A & PrevStateNo = [5000,5199]) & !(P2MoveType = I & P2StateType != A & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;會抓空的
triggerall = !(P2MoveType = I & P2StateNo >= 200 & EnemyNear(Var(50)),Vel X > 4) ;翻滾OR無敵位移
triggerall = P2BodyDist X <= IfElse((EnemyNear(Var(50)),Authorname = "baggy" & EnemyNear(Var(50)),Name = "Furudo_Erika"),30,50)
trigger1 = EnemyNear(Var(50)),AnimTime <= -1 & Helper(9190),Fvar(15) = 0
trigger1 = EnemyNear(Var(50)),StateNo > 200 & Helper(9190),Fvar(11) > 0
trigger1 = Helper(9190),Fvar(11) -EnemyNear(Var(50)),Time > 1
trigger2 = P2MoveType = I & (EnemyNear(Var(50)),Ctrl = 0 || EnemyNear(Var(50)),StateNo < 199)

;靠這吃飯

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) = 1) & statetype != A & Var(18) >= 1000 & ((Random <= 0.06*Var(18)) || (NumHelper(9175) > 0 & Random <= 45))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A 
trigger2 = EnemyNear(Var(50)),AnimTime <= -12 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,210]
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -10 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,200]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) = 1) & statetype != A & Var(18) >= 1000 & ((Random <= 0.06*Var(18)) || (NumHelper(9175) > 0 & Random <= 45))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = StateNo = 7560 & AnimElem = 17,>= 2
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = StateNo = 7560 & AnimElem = 17,>= 2
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A
trigger2 = EnemyNear(Var(50)),AnimTime <= -10 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]
trigger3 = StateNo = 7560 & AnimElem = 17,>= 2
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -11 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) = 1) & statetype != A & Var(18) >= 1000 & ((Random <= 0.06*Var(18)) || (NumHelper(9175) > 0 & Random <= 45))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55) = [-110,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10 = [-20,80])
trigger1 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) = 1) & statetype != A & Var(18) >= 1000 & ((Random <= 0.06*Var(18)) || (NumHelper(9175) > 0 & Random <= 45))
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType = S & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -13 & Var(12) != 33 & P2StateNo > 200
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,160]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger2 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger2 = EnemyNear(Var(50)),AnimTime <= -13 & Var(54) = 800
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-40,160]

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) = 1) & statetype != A & Var(18) >= 1000 & ((Random <= 0.06*Var(18)) || (NumHelper(9175) > 0 & Random <= 45))
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [80,175]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-200,-10]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-100,-10]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-20,80]
trigger2 = P2StateType = A & P2MoveType != H


[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) = 2) & statetype != A & Var(18) >= 1000 & ((Random <= 0.07*Var(18)) || (NumHelper(9175) > 0 & Random <= 100))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A 
trigger2 = EnemyNear(Var(50)),AnimTime <= -12 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [0,210]
trigger3 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -10 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,200]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) = 2) & statetype != A & Var(18) >= 1000 & ((Random <= 0.07*Var(18)) || (NumHelper(9175) > 0 & Random <= 100))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = StateNo = 7560 & AnimElem = 17,>= 2
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*11+Helper(9190),Fvar(0)*66) = [-240,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [80,210]
trigger1 = P2StateType = A & P2MoveType != H
trigger2 = StateNo = 7560 & AnimElem = 17,>= 2
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A
trigger2 = EnemyNear(Var(50)),AnimTime <= -10 & Var(12) != 33
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]
trigger3 = StateNo = 7560 & AnimElem = 17,>= 2
trigger3 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger3 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger3 = EnemyNear(Var(50)),AnimTime <= -9 & Var(54) = 800
trigger3 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*11) = [-20,210]

[State -1]
type = ChangeState
value = 1175
triggerall = (Var(59) = 2) & statetype != A & Var(18) >= 1000 & ((Random <= 0.07*Var(18)) || (NumHelper(9175) > 0 & Random <= 100))
triggerall = (Fvar(5) != 1 || P2StateType != A) & Var(53) != 14
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55) = [-110,-1]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10 = [-20,80])
trigger1 = P2StateType = A & P2MoveType != H

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) = 2) & statetype != A & Var(18) >= 1000 & ((Random <= 0.1*Var(18)) || (NumHelper(9175) > 0 & Random <= 100))
triggerall = (Var(59) >= 3) & statetype != A & Var(53) != 14
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateType = S & P2MoveType = A & EnemyNear(Var(50)),AnimTime <= -13 & Var(12) != 33 & P2StateNo > 200
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [0,160]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = Helper(9190),FVar(15) = 0 & P2MoveType != H & P2StateType != A & P2StateType != L
trigger2 = (Helper(9190),FVar(14) > 0) || (Helper(9190),FVar(17) > 0 & P2StateNo > 200) 
trigger2 = EnemyNear(Var(50)),AnimTime <= -13 & Var(54) = 800
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-40,160]

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) = 2) & statetype != A & Var(18) >= 1000 & ((Random <= 0.1*Var(18)) || (NumHelper(9175) > 0 & Random <= 100))
triggerall = (Fvar(5) != 1 || P2StateType != A)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(21) = 0
triggerall = Helper(9190),FVar(25) = 0
triggerall = !(P2StateNo < 200 & StateType != A & StateType != L)
triggerall = (P2StateNo != [100,105]) & (P2StateNo != [130,153]) & P2StateNo != 5040 & P2StateNo != [5200,5210]
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13 = [80,175]) & P2StateType = A & P2MoveType != H
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-200,-10]
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*13+Helper(9190),Fvar(0)*91) = [-100,-10]
trigger2 = (P2BodyDist X-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-20,80]
trigger2 = P2StateType = A & P2MoveType != H

;跳

[State -1, 1]
type = VarSet
triggerall = (Var(59) = [1, 2])
trigger1 = P2BodyDist X >= 190
trigger2 = sysvar(1) != -1
var(4) = -1

[State -1, 1]
type = VarSet
triggerall = (Var(59) = [1, 2])
trigger1 = StateNo != [40,50]
trigger1 = P2BodyDist X < 190 & Var(4) = -1
trigger1 = StateNo != 100 & sysvar(1) != -1
var(4) = 0

[State -1, 1]
type = VarSet
triggerall = (Var(59) = [1, 2])
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52 || StateNo = 100)
trigger1 = P2BodyDist X = [131,200]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I
trigger2 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger2 = P2BodyDist X = [120,130]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = I & Random <= 250
trigger3 = P2BodyDist X >= 200
sysvar(1) = 1

[State -1, 1]
type = VarSet
triggerall = (Var(59) = [1, 2])
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52 || StateNo = 100)
trigger1 = P2BodyDist X = [60,130]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I
sysvar(1) = 1

[State -1]
type = ChangeState
value = 41
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),Fvar(15) = 0
triggerall = Helper(9190),Fvar(16) = 0
trigger1 = (Ctrl || (StateNo = [0,39]) || StateNo = 52 )
trigger1 = P2BodyDist X = [120,200]
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = I & Random <= 80
trigger2 = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger2 = P2BodyDist X = [60,130]
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = I & Random <= 150

[State -1, 1]
type = VarSet
triggerall = Var(59) = 2 & statetype != A & Var(53) = 0
triggerall = (Ctrl || (StateNo = [0,40]) || StateNo = 52 || (StateNo = 100)) 
triggerall = EnemyNear(Var(50)),StateType != A & (EnemyNear(Var(50)),MoveType != A || (EnemyNear(Var(50)),Time < Helper(9190),FVar(11) = 0))
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = P2BodyDist X = [101,160]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55-Const(Velocity.Jump.y)*10-Const(movement.yaccel)*55) = [-30,30]
sysvar(1) = 0

[State -1]
type = ChangeState
value = 41
triggerall = (Var(59) = [1, 2]) & Var(53) != 3 & statetype != A & Var(53) = 0 & Random <= 333
triggerall = (Ctrl || (StateNo = [1,39]) || StateNo = 52) & Anim != 100
triggerall = EnemyNear(Var(50)),StateType = A & Var(54) != 1000 & EnemyNear(Var(50)),StateNo != 105 & P2MoveType != H
triggerall = (Helper(9180),Var(31) = 0 || Helper(9180),Var(31) = 5)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = P2BodyDist X <= 240
trigger1 = P2BodyDist X = [101,160]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55-Const(Velocity.Jump.y)*10-Const(movement.yaccel)*55) = [-30,30]


;空中
[State -1]
type = ChangeState
value = 615
triggerall = (Var(59) = [1, 2]) & statetype = A & P2StateType = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger1 = (P2BodyDist X-Vel X*10-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [-15,125]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55-Const(Velocity.Jump.y)*10-Const(movement.yaccel)*55) = [-40,90]
trigger2 = StateNo = 5210 & Vel X != 0 & ctrl
trigger2 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*10+Helper(9190),Fvar(0)*55-Const(Velocity.Jump.y)*10-Const(movement.yaccel)*55) = [-40,90]
trigger2 = (P2BodyDist X-Vel X*10-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*10) = [-15,125]

[State -1]
type = ChangeState
value = 630
triggerall = (Var(59) = [1, 2]) & statetype = A
trigger1 = (StateNo = 7015 || StateNo = 7315 || StateNo = 7415) & Random <= 150
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger1 = (P2BodyDist X-Vel X*13-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-45,220]
trigger1 = P2MoveType != H & P2StateNo != 5300 & Time < 3

[State -1]
type = ChangeState
value = 625
triggerall = (Var(59) = [1, 2]) & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger1 = P2StateType != L
trigger1 = (Time >= 21 & StateNo = 50) || (Pos Y >= -150 & Vel X > 0 & (StateNo = [120,140]))
trigger1 = StateNo = 50 || (StateNo = [120,140])
trigger1 = ((P2BodyDist X-Vel X*13-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-45,130]) || FrontEdgeBodyDist <= 130
trigger2 = StateNo = 5210 & Vel X != 0 & Pos Y >= -150 & Vel X > 0
trigger2 = ctrl
trigger2 = P2StateType != A & P2StateType != L
trigger2 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [0,80]
trigger2 = ((P2BodyDist X-Vel X*13-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-45,130]) || FrontEdgeBodyDist <= 130

trigger3 = (StateNo = 7015 || StateNo = 7315 || StateNo = 7415) & P2StateNo != 5300 & Time > 6
trigger3 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 & Time > 1)) & Anim != 41
trigger3 = ((P2BodyDist X-Vel X*13-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*13) = [-45,130]) || FrontEdgeBodyDist <= 130

[State -1]
type = ChangeState
value = 620
triggerall = (Var(59) = [1, 2]) & statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger1 = P2StateType != L
trigger1 = (Time >= 21 & StateNo = 50) || (Pos Y >= -150 & Vel X > 0 & (StateNo = [120,140]))
trigger1 = StateNo = 50 || (StateNo = [120,140])
trigger1 = StateNo = 50 || (StateNo = [120,140])
trigger1 = (P2BodyDist X-Vel X*15-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [-15,160]
trigger2 = StateNo = 5210 & Vel X = 0 & Pos Y >= -150 & Vel X > 0
trigger2 = ctrl
trigger2 = P2StateType != A & P2StateType != L
trigger2 = (P2Dist Y-Vel Y*15-Const(movement.yaccel)*120) = [0,70]
trigger2 = (P2BodyDist X-Vel X*15-IfElse(Facing != EnemyNear(Var(50)),Facing,1,-1)*EnemyNear(Var(50)),Vel X*15) = [-15,160]

[State -1]
type = ChangeState
value = 1300
triggerall = (Var(59) = [1, 2]) & statetype = A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0 & Random <= 100
trigger2 = (MoveGuarded || Var(29) = 3) & stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2 & Random <= 100

[State -1]
type = ChangeState
value = 610
triggerall = (Var(59) = [1, 2]) & statetype = A
triggerall = EnemyNear(Var(50)),StateType = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) & Anim = 41
trigger1 = (P2BodyDist X-Vel X*7) = [0,160]
trigger1 = (P2BodyDist Y+EnemyNear(Var(50)),Vel Y*7+Helper(9190),Fvar(0)*28-Vel Y*7-Const(movement.yaccel)*28) = [-30,30]

trigger2 = StateNo = 5210 & Vel X = 0
trigger2 = ctrl & (Random = [0,100])
trigger2 = (P2BodyDist X-Vel X*7) = [0,200]
trigger2 = (P2BodyDist Y-Vel Y*7-Const(movement.yaccel)*28) = [-30,30]
trigger3 = (MoveContact || Var(29) = 3) & stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-35,35]),205,200)
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = P2StateNo = 5300 || P2StateNo = 5400 || P2StateNo = 5401
trigger1 = P2BodyDist X <= 10
trigger2 = Var(53) = 2 & P2StateType = S & P2MoveType = H & P2StateNo != [120,153]
trigger2 = P2BodyDist X <= 10 & EnemyNear(Var(50)),BackEdgeBodyDist < 40 & Fvar(15) != 0.5

;立回
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (Var(59) = [1, 2]) & Var(53) != 3
triggerall = StateNo != 100 & PrevStateNo != 100 & StateType != A
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = P2MoveType != A & P2StateType != L
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 
triggerall = !(P2StateNo = 7500 & P2StateType != A & P2MoveType = I)
triggerall = !(P2StateNo = 7400 & P2StateType != A & P2MoveType = I)
triggerall = !(P2BodyDist X < 150 & P2MoveType = I)
triggerall = !(StateNo = 0 & Time <= 6)
triggerall = Random >= 200
trigger1 = EnemyNear(Var(50)),PrevStateNo < 200 & P2StateType != A
trigger1 = P2BodyDist X >= 120 & Random = [0,300]
trigger2 = EnemyNear(Var(50)),PrevStateNo < 200 & P2StateType = A & P2StateNo = 5210
trigger2 = P2BodyDist X > 120 & Random = [301,500]
trigger3 = PrevStateNo = 105 & P2BodyDist X <= 230 & P2MoveType = A & EnemyNear(Var(50)),Time > Helper(9190),Fvar(11) & EnemyNear(Var(50)),AnimTime = [-11,-7]
trigger4 = P2BodyDist X > 150 & P2StateType = A & P2MoveType = I & Random = [351,477]
trigger5 = (PrevStateNo = [200, 430]) & P2StateType != A
trigger5 = Random <= 500
trigger6 = (StateNo = [20,22]) & Vel X > 0 & P2MoveType != H
trigger7 = (P2StateNo = 5300 || EnemyNear(Var(50)),Anim = 5300) & Time > 6

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (Var(59) = [1, 2]) & Var(53) != 3
triggerall = StateNo != 100 & PrevStateNo != 100 & StateType != A
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = P2MoveType != A & P2StateType != L
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 
triggerall = !(P2StateNo = 7500 & P2StateType != A & P2MoveType = I)
triggerall = !(P2StateNo = 7400 & P2StateType != A & P2MoveType = I)
triggerall = !(P2BodyDist X < 150 & P2MoveType = I)
triggerall = !(StateNo = 0 & Time <= 6)
triggerall = Random >= 200
trigger1 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 100
trigger1 = (EnemyNear(Var(50)),AnimTime = [-18,-4]) & EnemyNear(Var(50)),MoveContact
trigger2 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 250
trigger2 = (EnemyNear(Var(50)),AnimTime = [-35,-14]) & EnemyNear(Var(50)),MoveContact
trigger3 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 180
trigger3 = (EnemyNear(Var(50)),AnimTime = [-25,-16]) & EnemyNear(Var(50)),MoveContact
trigger4 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 150
trigger4 = (EnemyNear(Var(50)),AnimTime = [-35,-15]) & EnemyNear(Var(50)),MoveContact
trigger5 = P2StateType != A & P2StateType != L & P2MoveType = A & P2BodyDist X <= 150
trigger5 = (EnemyNear(Var(50)),AnimTime = [-25,-17]) & EnemyNear(Var(50)),MoveContact

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2])
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131]))) & StateType != A & NumHelper(53000) = 0
triggerall = P2StateNo != 5300 & P2StateNo != 5400 & P2StateNo != 5401
trigger1 = P2StateNo = 7500 & P2StateType != A & P2MoveType = I
trigger2 = P2StateNo = 7400 & P2StateType != A & P2MoveType = I
trigger3 = P2BodyDist X < 0

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Ctrl || (StateNo = [10,39]) || StateNo = 52 || stateno = 100 || stateno = 101
triggerall = StateType != A & Facing != EnemyNear(Var(50)),Facing
triggerall = Helper(9190),Var(31) != 1
triggerall = (Var(59) = [1, 2]) & Var(53) != 3
triggerall = BackEdgeBodyDist >= 100 & EnemyNear(Var(50)),StateNo > 199
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(16) = 0
triggerall = Helper(9190),FVar(17) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = P2StateNo = 5120 & P2BodyDist X <= 60 & BackEdgeBodyDist > 50
trigger1 = EnemyNear(Var(50)),AnimTime = [-20, -7]

[State -1]
type = ChangeState
value = 7000
triggerall = (Var(59) = [1, 2]) & statetype != A & Var(5) >= 1000
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
triggerall = (Var(19) > Var(18) & Var(18) < 3000) || (Var(19) >= 1000 & Var(18) < 1000)
trigger1 = P2BodyDist X >= 250 & P2MoveType != A
trigger1 = P2StateType = A || P2StateType = L
trigger1 = PrevStateNo != [5000,5999]
trigger1 = Helper(9180),Var(31) = 0
trigger2 = P2BodyDist X >= 250 & P2MoveType != A
trigger2 = P2StateType = S || P2StateType = C & Random <= 70
trigger2 = PrevStateNo != [5000,5999]
trigger2 = Helper(9180),Var(31) = 0
trigger3 = (PrevStateNo = [1100,1176]) & P2MoveType = H & P2StateType = A
trigger4 = (PrevStateNo = 1280) & P2MoveType = H & P2StateType = A & P2BodyDist X >= 120

[State -1]
type = ChangeState
value = 7000
triggerall = (Var(59) = [1, 2]) & statetype != A & Var(5) >= 1000
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = NumHelper(2050) > 0 & P2MoveType = H & P2StateType = S & Random <= 250
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = (P2StateNo = 5300 || (P2StateNo = 5120 & NumHelper(53010) > 0)) & EnemyNear(Var(50)),Time <= 30 & Random <= 250

[State -1]
type = ChangeState
value = 7300
triggerall = (Var(59) = [1, 2]) & Var(19) >= 2000 & alive & Life <= 500
triggerall = (stateno = 5000 || (stateno = 5001 & Time < 2) || stateno = 5010 || (stateno = 5011 & Time < 2)) & (Anim = [5000,5029])
triggerall = MoveType = H & HitFall = 0
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000 & P2BodyDist X <= 185
triggerall = GetHitVar(hitshaketime)+EnemyNear(Var(50)),AnimTime <= -22
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = 7400
triggerall = (Var(59) = [1, 2]) & Var(19) >= 2000 & alive & Life <= 150
triggerall = StateType != A
triggerall = Var(5) >= 1000
triggerall = EnemyNear(Var(50)),Ctrl = 0 & EnemyNear(Var(50)),StateType != L
triggerall = P2BodyDist X >= 0
triggerall = Helper(9190),FVar(16) = 0 & StateNo != 7560 & PrevStateNo != 7560
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = P2Dist X >= 300 & ((PrevStateNo = [5000,5999]) || (PrevStateNo = [120,159])) & Random <= 200
trigger1 = Helper(9180),Var(31) > 0
trigger2 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger2 = Var(5) >= 1000
trigger2 = (P2Dist X = [0,300]) & (PrevStateNo = [120,159])
trigger3 = EnemyNear(Var(50)),MoveType = A & Random <= 400
trigger3 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger3 = Var(5) >= 1000
trigger3 = (P2Dist X = [0,300]) & EnemyNear(Var(50)),AnimTime < -6 
trigger3 = EnemyNear(Var(50)),MoveType = A & Random <= 100
trigger4 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger4 = EnemyNear(Var(50)),Alive & P2BodyDist X <= 300
trigger4 = (P2MoveType = H & P2StateType = A & FVar(5) = 1 || P2StateType = L)
trigger4 = PrevStateNo != [400,499]
trigger4 = Var(53) = 0

[State -1]
type = ChangeState
value = 7400
triggerall = (Var(59) = [1, 2]) & Var(19) >= 2000 & alive & RoundNo > 1 & NumHelper(9190) > 0
triggerall = StateType != A
triggerall = Var(5) >= 1000
triggerall = EnemyNear(Var(50)),Ctrl = 0 & EnemyNear(Var(50)),StateType != L
triggerall = P2BodyDist X >= 0
triggerall = Helper(9190),FVar(16) = 0 & StateNo != 7560 & PrevStateNo != 7560
trigger1 = ((Ctrl || (StateNo = [1,40]) || StateNo = 52) || stateno = 100 || stateno = 101 || stateno = 131 || stateno = 132)
trigger1 = Helper(9190),Time < 480 & Random <= 5 & P2BodyDist X <= 250

[State -1, Helper]
type = Helper
triggerall = NumHelper(7206) = 0 & StateType != A
triggerall = (Var(59) = [1,2]) & Var(5) >= 1000 & Power >= 1000 
triggerall = Var(19) >= 1000
triggerall = EnemyNear(Var(50)),HitDefAttr = SCA,NA,SA
triggerall = !HitShakeOver || Time = 1
triggerall = EnemyNear(Var(50)),StateType != A & PrevStateNo = [150, 153]
triggerall = Random <= 100+0.08*Var(19)
triggerall = Helper(9180),Var(31) = 0
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(19) = 0
trigger1 = StateNo = 150
trigger2 = StateNo = 152
helpertype = normal
name = "Guard Touch2"
ID = 7206
stateno = 7206
pos = -30,0
postype = p2
facing = -1
keyctrl = 0
ownpal = 0
ignorehitpause = 1

[State -1, Run Fwd]
type = ChangeState
value = IfElse((P2BodyDist X <= 40 & Var(53) = 2),410,430)
triggerall = (Var(59) = [1, 2])
triggerall = statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = Var(53) = 2 & P2StateType != A & P2StateType != L & P2BodyDist X <= 60
trigger1 = P2MoveType = H & P2StateNo != [120, 153]
trigger2 = Var(53) = 5 & P2StateType != A & P2StateType != L & P2BodyDist X <= 60
trigger2 = P2MoveType = H & P2StateNo != [120, 153]

[State -1, Run Fwd]
type = ChangeState
value = 400
triggerall = (Var(59) = [1, 2])
triggerall = statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = Var(53) = 2 & P2StateType != A & P2StateType != L & P2BodyDist X <= 30 & Random <= 180
trigger1 = P2MoveType != H || (P2StateNo = [120, 153])

[State -1, Run Fwd]
type = ChangeState
value = 410
triggerall = (Var(59) = [1, 2])
triggerall = statetype != A
triggerall = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = Var(53) = 2 & P2StateType != A & P2StateType != L & P2BodyDist X <= 70
trigger1 = P2MoveType != H || (P2StateNo != [120, 153])

;連段用跑步
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(53) != 3
triggerall = (Var(59) = [1, 2]) & statetype != A & StateNo != 100 & StateNo != 101 & Anim != 100
triggerall = (Ctrl || (StateNo = [0,39]) || StateNo = 52)
trigger1 = Var(53) = 2 & P2BodyDist X >= 40 & P2StateType != A 
trigger2 = Var(53) = 2 & P2StateType = A & P2BodyDist X >= 90
trigger3 = P2BodyDist X >= 120 & (P2StateNo = 5300 || P2StateNo = 5400 || P2StateNo = 5401)
trigger4 = Var(53) = 5 & P2BodyDist X >= 40 & P2StateType != A 


[State -1]
type = ChangeState
value = 7150
triggerall = (Var(59) = [1, 2]) & Var(5) >= 1000 & NumHelper(9101) > 0
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 1
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9101),Var(14) = 1
trigger3 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 1
trigger3 = Random <= 200
trigger4 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & Helper(9101),Var(14) = 1 
trigger4 = P2BodyDist X > 60 & Random <= 45
trigger5 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9101),Var(14) = 1 
trigger5 = Random <= 50 & P2StateType != L
trigger6 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & Helper(9101),Var(14) = 1
trigger6 = Random <= 200 & P2StateType != L
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 & Helper(9101),Var(14) = 1
trigger7 = Random <= 70
trigger8 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9101),Var(14) = 1
trigger8 = Random <= 70 & P2StateType != L

[State -1]
type = ChangeState
value = 7150
triggerall = (Var(59) = [1, 2]) & Var(5) >= 1000 & NumHelper(9175) > 0
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 1
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9175),Var(14) = 1
trigger3 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 1
trigger3 = Random <= 200
trigger4 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & Helper(9175),Var(14) = 1 
trigger4 = P2BodyDist X > 60 & Random <= 45
trigger5 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9175),Var(14) = 1 
trigger5 = Random <= 50 & P2StateType != L
trigger6 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & Helper(9175),Var(14) = 1
trigger6 = Random <= 200 & P2StateType != L
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 1
trigger7 = Random <= 70
trigger8 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9175),Var(14) = 1
trigger8 = Random <= 70 & P2StateType != L

[State -1]
type = ChangeState
value = 7100
triggerall = (Var(59) = [1, 2]) & Var(5) >= 1000 & NumHelper(9101) > 0 & Random <= 250
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 0
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9101),Var(14) = 0
trigger3 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9101),Var(14) = 0
trigger4 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & Helper(9101),Var(14) = 0 
trigger4 = P2BodyDist X > 60 & Random <= 45
trigger5 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9101),Var(14) = 0 
trigger5 = Random <= 50 & P2StateType != L
trigger6 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & Helper(9101),Var(14) = 0
trigger6 = Random <= 200 & P2StateType != L
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 & Helper(9101),Var(14) = 0
trigger7 = Random <= 70
trigger8 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9101),Var(14) = 0
trigger8 = Random <= 70 & P2StateType != L

[State -1]
type = ChangeState
value = 7100
triggerall = (Var(59) = [1, 2]) & Var(5) >= 1000 & NumHelper(9175) > 0 & Random <= 250
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 0
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(3) >= 1 && animelemtime(4) <= 8 & Helper(9175),Var(14) = 0
trigger3 = MoveGuarded & stateno = 220 && animelemtime(6) >= 1 && animelemtime(6) <= 5 & Helper(9175),Var(14) = 0
trigger4 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & Helper(9175),Var(14) = 0 
trigger4 = P2BodyDist X > 60 & Random <= 45
trigger5 = (MoveContact || Var(29) = 3) & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9175),Var(14) = 0 
trigger5 = Random <= 50 & P2StateType != L
trigger6 = MoveGuarded & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & Helper(9175),Var(14) = 0
trigger6 = Random <= 200 & P2StateType != L
trigger7 = (MoveContact || Var(29) = 3) & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 & Helper(9175),Var(14) = 0
trigger7 = Random <= 70
trigger8 = MoveGuarded & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Helper(9175),Var(14) = 0
trigger8 = Random <= 70 & P2StateType != L

;平推
[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = (Var(59) = [1, 2]) & Var(18) >= 1000  & statetype != A & (P2StateNo != [7500,7549]) & (P2StateNo != [7560,7569])
triggerall = NumHelper(9190) > 0
triggerall = Var(39) != 6 & Helper(9190),Var(8) = 1
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & P2StateType != L & Var(18) >= 3000
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = NumHelper(2050) > 0 & P2MoveType = H & P2StateType = S
trigger2 = Helper(2050),Time <= 110

[State -1]
type = ChangeState
value = 400
triggerall = (Var(59) = [1, 2]) & statetype != A
trigger1 = MoveGuarded & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & P2BodyDist X <= 60
trigger2 = (MoveContact || Var(29) = 3) & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1 & P2StateType != A

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-40,40]),215,210)
triggerall = (Var(59) = [1, 2]) & statetype != A
trigger1 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & P2BodyDist X <= 65 & PrevStateNo = [200,205] 

[State -1]
type = ChangeState
value = 410
triggerall = (Var(59) = [1, 2]) & statetype != A & P2StateType != A
trigger1 = MoveHit & stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 & PrevStateNo != [200,205] 
trigger2 = MoveHit & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2 & P2StateType != A
trigger3 = MoveHit & stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1 & P2StateType != A

[State -1]
type = ChangeState
value = 411
triggerall = (Var(59) = [1, 2]) & statetype != A & P2StateType != A
trigger1 = (MoveContact || Var(29) = 3) & stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 & PrevStateNo >= 200
trigger2 = (MoveContact || Var(29) = 3) & stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 231
triggerall = (Var(59) = [1, 2]) & statetype != A & P2StateType != A
trigger1 = MoveHit & stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = IfElse((P2BodyDist X = [-55,55]),225,220)
triggerall = (Var(59) = [1, 2]) & statetype != A & P2StateType != L
trigger1 = MoveHit & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger2 = (MoveContact || Var(29) = 3) & stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Var(5) >= 1000 & P2BodyDist X > 55
trigger4 = MoveContact & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 & Var(5) < 150 & P2BodyDist X > 55

[State -1]
type = ChangeState
value = 420
triggerall = (Var(59) = [1, 2]) & statetype != A & P2StateType != A & P2StateType != L
trigger1 = MoveHit & stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger2 = MoveHit & stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger3 = MoveHit & stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = 2000
triggerall = (Var(59) = [1, 2]) & statetype != A & Var(18) >= 3000 & NumHelper(2050) = 0
trigger1 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger1 = (PrevStateNo = 7560 || (PrevStateNo <= 40 & NumHelper(9200) > 0))
trigger2 = stateno = 7560 & animelemtime(17) >= 1

[State -1]
type = ChangeState
value = 7600
triggerall = (Var(59) = [1, 2]) & statetype != A & StateNo != 7600
triggerall = NumHelper(9190) > 0
triggerall = (Var(39) = 6 || Helper(9190),Var(8) = 2)
triggerall = P2StateNo != 5300
trigger1 = stateno = 7560 & animelemtime(17) >= 1 & Var(18) < 3000
trigger2 = Ctrl || (StateNo = [1,39]) || StateNo = 52 || stateno = 100 || stateno = 101 || stateno = [120,140]
trigger2 = NumHelper(2050) > 0 & P2MoveType = H & P2StateType = S
trigger2 = Helper(2050),Time < 150
trigger3 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 & P2StateType != L

[State -1]
type = ChangeState
value = 1150
triggerall = (Var(59) = [1, 2]) & statetype != A & P2StateType != L
trigger1 = MoveHit & stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 1275
triggerall = (Var(59) = 1) & statetype != A & (Var(18) >= 2000 || NumHelper(9175) > 0)
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & Random <= 200
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Random <= 200
trigger3 = (Var(39) != 6 & Helper(9190),Var(8) != 2) & PrevStateNo = 2011
trigger3 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & Random <= 333
trigger4 = MoveHit & stateno = 225 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Random <= 333

[State -1]
type = ChangeState
value = 1275
triggerall = (Var(59) = 2) & statetype != A & (Var(18) >= 2000 || NumHelper(9175) > 0)
trigger1 = (MoveContact || Var(29) = 3) & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & Random <= 100
trigger2 = (MoveContact || Var(29) = 3) & stateno = 225 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Random <= 100
trigger3 = (Var(39) != 6 & Helper(9190),Var(8) != 2) & PrevStateNo = 2011
trigger4 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 & Random <= 500
trigger5 = MoveHit & stateno = 225 && animelemtime(5) >= 1 && animelemtime(6) <= 3 & Random <= 500

[State -1]
type = ChangeState
value = 1200
triggerall = (Var(59) = [1, 2]) & statetype != A
trigger1 = MoveHit & stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = MoveHit & stateno = 225 && animelemtime(5) >= 1 && animelemtime(6) <= 3

;迷之剎車
[State -1]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131])))
trigger1 = NumEnemy
trigger1 = Enemy,Authorname = "Boomer" & Enemy,StateNo = 7510 & Enemy,Time <= 12
trigger2 = NumEnemy >= 2
trigger2 = Enemy(1),Authorname = "Boomer" & Enemy(1),StateNo = 7510 & Enemy(1),Time <= 12
trigger3 = NumEnemy
trigger3 = Enemy,Authorname = "Boomer" & Enemy,StateNo = 7530 & Enemy,Time <= 12
trigger4 = NumEnemy >= 2
trigger4 = Enemy(1),Authorname = "Boomer" & Enemy(1),StateNo = 7530 & Enemy(1),Time <= 12

[State -1]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131])))
trigger1=numenemy&&!numpartner
trigger1=Enemy,var(56)=19861004&&Enemy,Authorname="YU-TOHARU"&&(Enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))

trigger5=numenemy&&!numpartner
trigger5=enemy,Authorname="my100yen"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger6=numenemy&&numpartner
trigger6=enemy,Authorname="my100yen"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger7=numenemy>=2&&!numpartner
trigger7=enemy(1),Authorname="my100yen"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger8=numenemy>=2&&numpartner
trigger8=enemy(1),Authorname="my100yen"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))

[State -1]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131])))
trigger1=numenemy&&!numpartner
trigger1=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,name="Lucifer"&&enemy,Authorname="Tokey"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),name="Lucifer"&&enemy(1),Authorname="Tokey"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))

[State -1]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131])))
trigger1=numenemy
trigger1=enemynear,name="Rosa_Ushiromiya"&&enemynear,Authorname="barai"&&enemynear,stateno=2910&&enemynear,time=2

[State -1]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131])))
Trigger1=NumEnemy&&!NumPartner
Trigger1=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&(Enemy,StateNo=2910||Enemy,StateNo=2930)&&Enemy,StateTime=2
Trigger2=NumEnemy>=2&&!NumPartner
Trigger2=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&(Enemy(1),StateNo=2910||Enemy(1),StateNo=2930)&&Enemy(1),StateTime=2
Trigger3=NumEnemy&&NumPartner
Trigger3=Enemy,Name="Dlanor A. Knox"&&Enemy,AuthorName="Shiroto"&&(Enemy,StateNo=2910||Enemy,StateNo=2930)&&Enemy,StateTime=2
Trigger3=ID<Partner,ID||(ID>Partner,ID&&Partner,NumExplod(19864)=0&&Partner,Numexplod(19865)=0)
Trigger4=NumEnemy>=2&&NumPartner
Trigger4=Enemy(1),Name="Dlanor A. Knox"&&Enemy(1),AuthorName="Shiroto"&&(Enemy(1),StateNo=2910||Enemy(1),StateNo=2930)&&Enemy(1),StateTime=2
Trigger4=ID<Partner,ID||(ID>Partner,ID&&Partner,NumExplod(19864)=0&&Partner,Numexplod(19865)=0)

[State -1]
type = ChangeState
value = 101
triggerall = (Var(59) = [1, 2]) & statetype != A
triggerall = (StateNo = 100 || (Anim = 100 & (StateNo = [120,131])))
trigger1=numenemy
trigger1=(enemynear,name="oyashirorika"||enemynear,name="trapsatoko"||enemynear,name="Furudo_erika")&&enemynear,Authorname="baggy"&&enemynear,stateno=2910&&enemynear,time=2
trigger2=enemy,AuthorName="flowrallia"&&enemy,var(56)=19861004&&(enemy,stateno=3001||enemy,stateno=3003)&&enemy,time=2
trigger3=NumEnemy=2
trigger3=Enemy(1),AuthorName="flowrallia"&&Enemy(1),var(56)=19861004&&(Enemy(1),stateno=3001||Enemy(1),stateno=3003)&&Enemy(1),time=2



;-|該防不能防|--------------------------------------------------------

[State -1]
type = ChangeState
triggerall = Var(53) = 0 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) >= 3 & Statetype != A
triggerall = StateNo = 100 & ((PrevStateNo != [200,1999]) || Helper(9190),Fvar(15) > 0)
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1  || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & P2MoveType != H)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(20) != -1
trigger1 = Helper(9180),Var(31) > 0
value = 41

[State -1]
type = ChangeState
triggerall = Var(53) = 0 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) >= 3 & Statetype != A
triggerall = StateNo = 100 & ((PrevStateNo != [200,1999]) || Helper(9190),Fvar(15) > 0)
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1  || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & P2MoveType != H)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(20) != -1
trigger1 = Helper(9190),Fvar(20) = 1
trigger2 = (Var(12) = [11, 13])
trigger3 = P2StateType = A
trigger4 = Var(54) = 1000
value = 41

[State -1]
type = ChangeState
triggerall = Var(53) = 0 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) >= 3  & Statetype != A
triggerall = StateNo = 100 & ((PrevStateNo != [200,1999]) || Helper(9190),Fvar(15) > 0)
triggerall = InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1  || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & P2MoveType != H)
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
trigger1 = (Var(12) != [11, 13]) & P2StateType != A
trigger2 = Var(54) = 1025 & (Var(12) != [11, 13])
trigger3 = Var(54) = 1050 & (Var(12) != [11, 13])
trigger4 = Helper(9190),FVar(15) = 1
trigger5 = Helper(9190),FVar(16) = 1
trigger6 = Helper(9190),FVar(18) = 1
trigger7 = Helper(9190),FVar(19) = 1
trigger8 = Helper(9190),FVar(20) = -1
value = 41

;-|防禦|--------------------------------------------------------

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 101
triggerall = StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
trigger1 = (Var(12) != [11, 13]) & ((P2StateType != A & Helper(9180),Var(31) != 1) || (P2StateType = C & P2MoveType = A & Var(54) != 1060))
trigger2 = Var(54) = 1025 & (Var(12) != [11, 13])
trigger3 = Var(54) = 1050 & (Var(12) != [11, 13])
trigger4 = Helper(9190),FVar(15) = 1
trigger5 = Helper(9190),FVar(16) = 1
trigger6 = Helper(9190),FVar(18) >= 1
trigger7 = Helper(9190),FVar(19) = 1
trigger8 = Helper(9190),FVar(20) = -1
trigger9 = Helper(9180),Var(31) = 2 & P2StateType != A
trigger10 = Helper(9180),Var(31) = 3 & !(P2StateType = A & P2MoveType = A & Var(54) != 1010)
trigger11 = Helper(9180),Var(31) = 4 & P2StateType != A
value = IfElse(((Var(12) = [11, 13]) || (P2StateType != C & Var(12) != [31, 33]) || Helper(9190),FVar(18) >= 1),130,131)

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 101
triggerall = StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),Fvar(20) != 1
trigger1 = (Var(12) = [31, 33])
trigger2 = Helper(9190),Fvar(20) = -1
trigger3 = P2StateType = C & Var(12) != [11, 13]
trigger4 = Helper(9180),Var(31) = 2 & P2StateType = C
trigger5 = Helper(9180),Var(31) = 3 & !(P2StateType = A & P2MoveType = A & Var(54) != 1010)
trigger6 = Helper(9180),Var(31) = 4 & P2StateType != A
value = 131

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 101
triggerall = StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(20) != -1
trigger1 = (Var(12) = [11, 13])
trigger2 = Helper(9190),Fvar(20) = 1
trigger3 = ((P2StateType = A & Helper(9180),Var(31) != 3) || (P2StateType = A & P2MoveType = A & Var(54) != 1010)) & Var(12) != [31, 33]
trigger4 = Var(54) = 1000 & Var(12) != [31, 33]
trigger5 = Helper(9180),Var(31) = 1 & !(P2StateType = C & P2MoveType = A & Var(54) != 1060)
trigger6 = Helper(9180),Var(31) = 2 & P2StateType = A
trigger7 = Helper(9180),Var(31) = 4 & P2StateType = A
value = 130

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0
triggerall = Statetype = A & StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 101
triggerall = StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52)
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
trigger1 = 1
value = 120

[State -1]
type = ChangeState
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & (StateNo = [150,151]) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = StateNo != [130,131]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(20) != -1
triggerall = Var(12) != [11, 13]
triggerall = HitOver
trigger1 = ((P2StateType != A & Helper(9180),Var(31) != 1) || (P2StateType = C & P2MoveType = A & Var(54) != 1060))
trigger1 = Helper(9190),Fvar(20) = 0
trigger2 = Helper(9190),Fvar(20) = -1
trigger3 = Var(12) = [31, 33]
trigger4 = Helper(9180),Var(31) = 2 & P2StateType = C
trigger5 = Helper(9180),Var(31) = 3 & !(P2StateType = A & P2MoveType = A & Var(54) != 1010)
trigger6 = Helper(9180),Var(31) = 4 & P2StateType != A
value = 131

[State -1]
type = ChangeState
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & (StateNo = [152,153]) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = StateNo != [130,131]
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(20) != -1
triggerall = Var(12) != [31, 33]
triggerall = HitOver
trigger1 = ((P2StateType = A & Helper(9180),Var(31) != 3) || (P2StateType = A & P2MoveType = A & Var(54) != 1010))
trigger1 = Helper(9190),Fvar(20) != -1
trigger2 = Helper(9190),Fvar(20) = 1
trigger3 = Var(12) = [11, 13]
trigger4 = Helper(9180),Var(31) = 1 & !(P2StateType = C & P2MoveType = A & Var(54) != 1060)
trigger5 = Helper(9180),Var(31) = 2 & P2StateType != C
trigger6 = Helper(9180),Var(31) = 4 & P2StateType = A
value = 130

[State -1]
type = ChangeState
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & (StateNo = [150,151]) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(20) != -1
triggerall = Var(12) != [11, 13]
triggerall = HitOver = 0 & HitShakeOver
trigger1 = ((P2StateType != A & Helper(9180),Var(31) != 1) || (P2StateType = C & P2MoveType = A & Var(54) != 1060))
trigger1 = Helper(9190),Fvar(20) = 0
trigger2 = Helper(9190),Fvar(20) = -1
trigger3 = Var(12) = [31, 33]
trigger4 = Helper(9180),Var(31) = 2 & P2StateType = C & Helper(9190),Fvar(20) != 1
trigger5 = Helper(9180),Var(31) = 3 & !(P2StateType = A & P2MoveType = A & Var(54) != 1010)
trigger6 = Helper(9180),Var(31) = 4 & P2StateType = C & Helper(9190),Fvar(20) != 1
value = 153

[State -1]
type = ChangeState
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & (StateNo = [152,153]) & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(20) != -1
triggerall = Var(12) != [31, 33]
triggerall = HitOver = 0 & HitShakeOver
trigger1 = ((P2StateType = A & Helper(9180),Var(31) != 3) || (P2StateType = A & P2MoveType = A & Var(54) != 1010))
trigger1 = Helper(9190),Fvar(20) != -1
trigger2 = Helper(9190),Fvar(20) = 1
trigger3 = Var(12) = [11, 13]
trigger4 = Helper(9180),Var(31) = 1 & !(P2StateType = C & P2MoveType = A & Var(54) != 1060) 
trigger5 = Helper(9180),Var(31) = 2 & P2StateType != C & Helper(9190),Fvar(20) != -1 & P2StateType != C
trigger6 = Helper(9180),Var(31) = 4 & P2StateType != C & Helper(9190),Fvar(20) != -1 & P2StateType != C
value = 151

;-|紗音|--------------------------------------------------------

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = FVar(22) = 1
triggerall = Var(59) > 0 & StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52 || StateNo = 100 || StateNo = 101)  & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),Fvar(20) != 1
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
trigger1 = (Var(12) != [11, 13]) & ((P2StateType != A & Helper(9180),Var(31) != 1) || (P2StateType = C & P2MoveType = A & Var(54) != 1060))
trigger2 = Var(54) = 1025 & (Var(12) != [11, 13])
trigger3 = Var(54) = 1050 & (Var(12) != [11, 13])
trigger4 = Helper(9190),FVar(15) = 1
trigger5 = Helper(9190),FVar(16) = 1
trigger6 = Helper(9190),FVar(18) = 1
trigger7 = Helper(9190),FVar(19) = 1
trigger8 = Helper(9190),FVar(20) = -1
value = IfElse(((Var(12) = [11, 13]) || (P2StateType != C & Var(12) != [31, 33])),130,131)

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = FVar(22) = 1
triggerall = Var(59) > 0 & StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52 || StateNo = 100 || StateNo = 101)  & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),Fvar(20) != 1
trigger1 = (Var(12) = [31, 33])
trigger2 = Helper(9190),Fvar(20) = -1
trigger3 = P2StateType = C & Var(12) != [11, 13]
trigger4 = Helper(9180),Var(31) = 2 & P2StateType = C
trigger5 = Helper(9180),Var(31) = 3 & !(P2StateType = A & P2MoveType = A & Var(54) != 1010)
trigger6 = Helper(9180),Var(31) = 4 & P2StateType != A
value = 131

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = FVar(22) = 1
triggerall = Var(59) > 0 & StateNo != [130,131]
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52 || StateNo = 100 || StateNo = 101)  & Statetype != A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
triggerall = Helper(9190),FVar(14) = 0
triggerall = Helper(9190),FVar(18) = 0
triggerall = Helper(9190),FVar(20) != -1
trigger1 = (Var(12) = [11, 13])
trigger2 = Helper(9190),Fvar(20) = 1
trigger3 = ((P2StateType = A & Helper(9180),Var(31) != 3) || (P2StateType = A & P2MoveType = A & Var(54) != 1010)) & Var(12) != [31, 33]
trigger4 = Var(54) = 1000 & Var(12) != [31, 33]
trigger5 = Helper(9180),Var(31) = 1 & !(P2StateType = C & P2MoveType = A & Var(54) != 1060) 
trigger6 = Helper(9180),Var(31) = 2 & P2StateType != C
trigger7 = Helper(9180),Var(31) = 4 & P2StateType = A
value = 130

[State -1]
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = NumHelper(9180) > 0 & NumHelper(9185) > 0
triggerall = Var(59) > 0 & StateNo != [130,131]
triggerall = FVar(22) = 1
triggerall = (Ctrl || (StateNo = [10,39]) || StateNo = 52) & Statetype = A
triggerall = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1 || (Helper(9180),Var(31) = 4 & P2StateNo >= 200 & (P2StateNo != [5000,5999])  & P2MoveType != H) || (Helper(9180),Var(31) = 5  & P2MoveType = A)
trigger1 = Helper(9180),Var(31) > 0
trigger2 = P2MoveType = A
value = 120

[State 100]
type = CtrlSet
triggerall = Var(59) > 0
triggerall = (StateNo= 120 || StateNo= 130 || StateNo= 131) & Time > 10
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Var(53) != 3
triggerall = EnemyNear(Var(50)),AnimTime >= -8 & EnemyNear(Var(50)),PrevStateNo = P2StateNo
trigger1 = Helper(9190),FVar(11) >= 10
trigger2 = Helper(9190),FVar(12) < P2Dist X
trigger3 = Helper(9190),FVar(11) = 0
value = 1

[State 100]
type = CtrlSet
triggerall = Var(59) > 0
triggerall = (StateNo= 120 || StateNo= 130 || StateNo= 131)
trigger1 = Helper(9190),FVar(14) = 1
trigger2 = Helper(9190),FVar(18) = 1
value = 1

[State 100]
type = CtrlSet
triggerall = Var(59) > 0
triggerall = (StateNo= 120 || StateNo= 130 || StateNo= 131)
triggerall = Helper(9190),FVar(15) = 0
triggerall = Var(53) != 3
triggerall = (Helper(9180),Var(31) = 0 || (Helper(9180),Var(31) = 5 & Time > 6 & !InGuardDist & Helper(9190),InGuardDist = 0))
triggerall = FVar(22) = 1
trigger1 = 1
value = 1

[State 100]
type = CtrlSet
triggerall = Var(59) > 0
triggerall = StateNo= [120,132]
triggerall = FVar(22) = 1
trigger1 = Anim = [0,100]
value = 1

[State 100]
type = CtrlSet
triggerall = Var(59) > 1
triggerall = (StateNo= 120 || StateNo= 130 || StateNo= 131) & Time > 8
triggerall = Helper(9190),FVar(15) = 0
triggerall = Helper(9190),FVar(19) = 0
triggerall = Var(53) != 3
triggerall = EnemyNear(Var(50)),AnimTime >= -8 & EnemyNear(Var(50)),PrevStateNo = P2StateNo
trigger1 = Helper(9190),FVar(11) >= 10
trigger2 = Helper(9190),FVar(12) < P2Dist X
trigger3 = Helper(9190),FVar(11) = 0
value = 1

[State 100]
type = CtrlSet
triggerall = Var(59) > 0
triggerall = (StateNo= 120 || StateNo= 130 || StateNo= 131) & (Time > 4 || Anim = [0,101])
triggerall = Helper(9190),FVar(15) = 0
triggerall = Var(53) != 3
triggerall = (Helper(9180),Var(31) = 0 || (Helper(9180),Var(31) = 5 & Time > 6 & !InGuardDist & Helper(9190),InGuardDist = 0))
triggerall = FVar(22) = 1
trigger1 = 1
value = 1

;-| Walk |--------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) >= 3 & StateType != A
triggerall = (Ctrl || (StateNo = [10,11]) || StateNo = 52)
triggerall = StateNo != [120, 155]
triggerall = StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 100 & Anim != 101
triggerall = P2StateType != A|| (P2StateType = A & MoveType != A)
triggerall = FVar(22) = 1 & Random <= 50 & P2StateType != L
triggerall = Helper(9190),Var(46) = 0 ;強制防禦檢測
triggerall = (P2StateNo != [5200,5210]) & !(P2MoveType = H & P2StateType = A) ;避免貼對手
trigger1 = Var(53) = 0 & StateNo != 22
trigger1 = Var(53) = 0 & P2StateNo != 100 & P2BodyDist X >= 90
trigger2 = Var(53) = 0 & StateNo = 22 & BackEdgeBodyDist <= 10
trigger2 = Var(53) = 0 & P2StateNo != 100 & P2BodyDist X >= 90

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = Var(59) >= 1 & Var(59) != 2 & StateType != A & PrevStateNo != 101
triggerall = (StateNo = 100 & Time > 6) || (MoveType != H & Anim = 100 & Time > 6 & StateNo = [120, 155])
triggerall = (P2StateType != A & P2StateNo < 200) || (P2StateType = A & MoveType != A)
triggerall = FVar(22) = 1 & (P2MoveType != H || P2BodyDist X < 0)
trigger1 = Var(53) = 0 & P2StateNo != 100 & P2BodyDist X < 70
trigger2 = StateNo = 40 & PrevStateNo = 100
trigger3 = Var(53) = 0 & P2StateType = L & P2BodyDist X <= 150
trigger4 = (P2StateNo = [5200,5210]) & P2BodyDist X < 120 & Var(53) = 0
trigger5 = P2MoveType = H & P2StateType = A & Var(53) = 0 & P2BodyDist X < 100

[State -1, Run Fwd]
type = ChangeState
value = 0
triggerall = Var(59) >= 1 & StateType != A
triggerall = StateNo != [120, 153]
triggerall = StateNo = 21 & Time > 3
trigger1 = P2BodyDist X <= 60 & P2StateNo = 0
trigger2 = P2BodyDist X <= 60 & P2StateType = C & P2StateNo < 200
trigger3 = P2BodyDist X <= 60 & P2StateNo = [20,29]
trigger4 = P2BodyDist X > 300 & StateNo = 22 & Time > 15 & Var(53) != 1
ctrl = 1

[State -1, Run Fwd]
type = ChangeState
value = 21
triggerall = Var(59) >= 1 & StateType != A
triggerall = FrontEdgeBodyDist >= 35
triggerall = (Ctrl || (StateNo = [1,22]) || StateNo = 52)
triggerall = StateNo != [120, 155]
triggerall = StateNo != 21 & StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 21 & Anim != 100 & Anim != 101
triggerall = P2StateType != A|| (P2StateType = A & MoveType != A)
triggerall = Helper(9180),Var(31) != 4
triggerall = Helper(9190),Var(46) = 0 ;強制防禦檢測
triggerall = (P2StateNo != [5200,5210]) & !(P2MoveType = H & P2StateType = A) ;避免貼對手
triggerall = !((Var(59) = [1,2]) & StateNo = 0 & Time <= 6)
triggerall = !((Var(59) = [1,2]) & Random <= 200+800*(P2MoveType = H))
trigger1 = (Ctrl || (StateNo = [1,11]) || StateNo = 52)
trigger1 = statetype != A
trigger1 = Var(53) = 0 & StateNo != 22
trigger1 = Var(53) = 0 & P2StateNo != 100 & P2BodyDist X >= 70
trigger2 = statetype != A
trigger2 = Var(53) = 0 & StateNo = 22 & (BackEdgeBodyDist <= 30 || Time > 7)
trigger2 = P2StateNo != 100 & P2BodyDist X >= 70
trigger3 = Var(53) != 1 & StateNo = 22 & P2BodyDist X >= 150
trigger4 = (Ctrl || (StateNo = [10,11]) || StateNo = 52) || StateNo = 130 || StateNo = 131
trigger4 = Helper(9180),Var(31) = 5  & P2MoveType = A
trigger4 = !(InGuardDist || (P2BodyDist X < 0 && P2MoveType = A) || Helper(9190),InGuardDist || Helper(9190),Var(46) = 1)

[State -1, Run Back]
type = ChangeState
value = 22
triggerall = Var(59) >= 1 & StateType != A & Var(59) != 2
triggerall = BackEdgeBodyDist >= 45
triggerall = (Ctrl || (StateNo = [1,19]) || StateNo = 52) 
triggerall = StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 100 & Anim != 101
triggerall = P2StateType != A|| (P2StateType = A & MoveType != A)
triggerall = Helper(9180),Var(31) != 4
triggerall = !((Var(59) = [1,2]) & StateNo = 0 & Time <= 6)
triggerall = !((Var(59) = [1,2]) & Random <= 800)
trigger1 = Var(53) = 0 & P2StateNo = 100
trigger2 = statetype != A
trigger2 = Var(53) = 0 & StateNo = 21
trigger2 = (P2BodyDist X <= 80 & P2StateType = L)
trigger3 = StateNo = 40 & PrevStateNo = 0
trigger4 = (Var(53) = 0 || Var(53) = 3 || Var(53) = 4) & P2StateNo = [5200,5210]
trigger4 = P2BodyDist X <= 135
trigger5 = (P2StateNo = [5200,5210]) & P2BodyDist X < 90 & Var(53) = 0
trigger6 = P2MoveType = H & P2StateType = A & Var(53) = 0 & P2BodyDist X < 60

;-| 受身 |--------------------------------------------------------

[State -1, 5050]; Recover in mid air
type = ChangeState
triggerall = Var(53) != 14 || (Var(53) = 14 & Var(56) != 20)
triggerall = Var(59) >= 1 
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
triggerall = ((EnemyNear(Var(50)),Authorname = "Boomer" & Var(36) != 3) || EnemyNear(Var(50)),Authorname != "Boomer") & Var(37) = 0
trigger1 = (StateNo = 5050 || StateNo = 5071 || StateNo = 5081 || StateNo = 6011) & Random <= Helper(9190),Var(35)*0.6
trigger2 = (StateNo = 5050 || StateNo = 5071 || StateNo = 5081 || StateNo = 6011) & P2BodyDist Y >= 0 & P2StateType = A & Random <= Helper(9190),Var(35)
value = IfElse(pos y >=-25,5201,5210) ;Air get-hit (fall recovery in air)

[State -1, 6050]; Recover in mid air
type = ChangeState
triggerall = Var(59) >= 1
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
triggerall = ((EnemyNear(Var(50)),Authorname = "Boomer" & Var(36) != 3) || EnemyNear(Var(50)),Authorname != "Boomer") & Var(37) = 0
trigger1 = Var(59) >= 1 & StateNo = 6050 & Random <= Helper(9190),Var(35)*0.6+50*IfElse(P2MoveType=A,1,0)
value = IfElse(pos y >=-25,5201,5210) ;Air get-hit (fall recovery in air)