;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = z;y
z = c;z
a = y;a
b = b
c = a;c
s = b;s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "2626c"
command = ~D,DF,F,D,DF,F,y
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
name = "26e"
command = ~D,DF,F,c
time = 30

[Command]
name = "Meta"
command = z

[Command]
name = "Meta"
command = x+y+a

[Command]
name = "6426a"
command = ~F,B,D,DF,F,x
time = 30

[Command]
name = "6426a"
command = ~F,B,DB,D,DF,x
time = 30

[Command]
name = "6426b"
command = ~F,B,D,DF,F,a
time = 30

[Command]
name = "6426b"
command = ~F,B,DB,D,DF,a
time = 30

;-| Special Motions |------------------------------------------------------
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

;[Command]
;name = "623a+b"
;command = ~F,D,DF,b

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

;[Command]
;name = "24a+b"
;command = ~D, DB, B, b

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

;[Command]
;name = "26a+b"
;command = D, DF, F, b
;time = 15

[Command]
name = "26a+b"
command = D, DF, F, x+a
time = 15

[Command]
name = "26a"
command = D, DF, F, x
time = 15

[Command]
name = "26b"
command = D, DF, F, a
time = 15

[Command]
name = "26c"
command = D, DF, F, y
time = 15

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
value = 7601
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = AIlevel = 0 && command = "6426a" && statetype != A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = stateno = 7560 && animelemtime(17) >= 1

[State -1]
type = ChangeState
value = 7601
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = AIlevel = 0 && command = "6426a" && statetype != A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = stateno = 7560 && animelemtime(17) >= 1

[State -1]
type = ChangeState
value = 7601
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = AIlevel = 0 && command = "6426a" && statetype != A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 7601
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = AIlevel = 0 && command = "6426a" && statetype != A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = Var(48) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = ifelse(NumHelper(7770) = 0 && NumHelper(7771) = 0, 7600, 7603)
triggerall = AIlevel = 0 && command = "6426c" && statetype != A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = stateno = 7560 && animelemtime(17) >= 1

[State -1]
type = ChangeState
value = ifelse(NumHelper(7770) = 0 && NumHelper(7771) = 0, 7600, 7603)
triggerall = AIlevel = 0 && command = "6426c" && statetype != A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = stateno = 7560 && animelemtime(17) >= 1

[State -1]
type = ChangeState
value = ifelse(NumHelper(7770) = 0 && NumHelper(7771) = 0, 7600, 7603)
triggerall = AIlevel = 0 && command = "6426c" && statetype != A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = ifelse(NumHelper(7770) = 0 && NumHelper(7771) = 0, 7600, 7603)
triggerall = AIlevel = 0 && command = "6426c" && statetype != A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = Var(48) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 7602
triggerall = AIlevel = 0 && command = "6426b" && statetype != A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = stateno = 7560 && animelemtime(17) >= 1

[State -1]
type = ChangeState
value = 7602
triggerall = AIlevel = 0 && command = "6426b" && statetype != A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = stateno = 7560 && animelemtime(17) >= 1

[State -1]
type = ChangeState
value = 7602
triggerall = AIlevel = 0 && command = "6426b" && statetype != A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 7602
triggerall = AIlevel = 0 && command = "6426b" && statetype != A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = Var(48) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 7604
triggerall = AIlevel = 0 && command = "6426c" && statetype = A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 7604
triggerall = AIlevel = 0 && command = "6426c" && statetype = A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 7604
triggerall = AIlevel = 0 && command = "6426c" && statetype = A
triggerall = NumPartner > 0
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) = 1
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 7604
triggerall = AIlevel = 0 && command = "6426c" && statetype = A
triggerall = NumPartner = 0
triggerall = Var(39) = 6
triggerall = Var(48) = 1
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 2000
triggerall = AIlevel = 0 && command = "2626c" && statetype != A && Power >= 2000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 2000
triggerall = AIlevel = 0 && command = "2626c" && statetype != A && NumHelper > 0 
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && Helper,Var(19) = 1
trigger2 = MoveContact && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && Helper,Var(19) = 1
trigger3 = MoveContact && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && Helper,Var(19) = 1
trigger4 = MoveContact && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3 && Helper,Var(19) = 1
trigger5 = MoveContact && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3 && Helper,Var(19) = 1
trigger6 = MoveContact && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
trigger7 = MoveContact && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger8 = MoveContact && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0 && Helper,Var(19) = 1
trigger9 = MoveContact && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger10 = MoveContact && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger11 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && Helper,Var(19) = 1
trigger12 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger13 = MoveContact && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0 && Helper,Var(19) = 1
trigger14 = MoveContact && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0 && Helper,Var(19) = 1
trigger15 = MoveContact && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0 && Helper,Var(19) = 1
trigger16 = MoveContact && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0 && Helper,Var(19) = 1

[State -1]
type = ChangeState
value = 2000
triggerall = AIlevel = 0 && command = "2626c" && statetype != A
triggerall = Var(48) = 1
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 1475
triggerall = AIlevel = 0 && command = "26a+b" && statetype = A && Power >= 1000
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1475
triggerall = AIlevel = 0 && command = "26a+b" && statetype = A && NumHelper > 0 
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && Helper,Var(19) = 1
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0 && Helper,Var(19) = 1
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4 && Helper,Var(19) = 1
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4 && Helper,Var(19) = 1
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4 && Helper,Var(19) = 1
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4 && Helper,Var(19) = 1
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4 && Helper,Var(19) = 1

[State -1]
type = ChangeState
value = 1450
triggerall = AIlevel = 0 && command = "26c" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1425
triggerall = AIlevel = 0 && command = "26b" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1400
triggerall = AIlevel = 0 && command = "26a" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1375
triggerall = AIlevel = 0 && command = "24a+b" && statetype = A && Power >= 1000
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1375
triggerall = AIlevel = 0 && command = "24a+b" && statetype = A && NumHelper > 0 
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && Helper,Var(19) = 1
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0 && Helper,Var(19) = 1
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4 && Helper,Var(19) = 1
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4 && Helper,Var(19) = 1
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4 && Helper,Var(19) = 1
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4 && Helper,Var(19) = 1
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4 && Helper,Var(19) = 1

[State -1]
type = ChangeState
value = 1350
triggerall = AIlevel = 0 && command = "24c" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1325
triggerall = AIlevel = 0 && command = "24b" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1300
triggerall = AIlevel = 0 && command = "24a" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) || (stateno = 7410 && Time > 1)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 ;&& animelemtime(4) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 611 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 615 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 616 && animelemtime(5) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger9 = (MoveContact || Var(29) = 3) && stateno = 621 && animelemtime(7) >= 1 && animelemtime(8) <= 4
trigger10 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger11 = (MoveContact || Var(29) = 3) && stateno = 626 && animelemtime(7) >= 1 && animelemtime(9) <= 4
trigger12 = (MoveContact || Var(29) = 3) && stateno = 233 && animelemtime(4) >= 1 && animelemtime(5) <= 4

[State -1]
type = ChangeState
value = 1275
triggerall = AIlevel = 0 && command = "24a+b" && statetype != A && Power >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1275
triggerall = AIlevel = 0 && command = "24a+b" && statetype != A && NumHelper > 0 
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && Helper,Var(19) = 1
trigger2 = MoveContact && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && Helper,Var(19) = 1
trigger3 = MoveContact && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && Helper,Var(19) = 1
trigger4 = MoveContact && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3 && Helper,Var(19) = 1
trigger5 = MoveContact && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3 && Helper,Var(19) = 1
trigger6 = MoveContact && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
trigger7 = MoveContact && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger8 = MoveContact && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0 && Helper,Var(19) = 1
trigger9 = MoveContact && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger10 = MoveContact && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger11 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && Helper,Var(19) = 1
trigger12 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger13 = MoveContact && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0 && Helper,Var(19) = 1
trigger14 = MoveContact && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0 && Helper,Var(19) = 1
trigger15 = MoveContact && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0 && Helper,Var(19) = 1
trigger16 = MoveContact && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0 && Helper,Var(19) = 1

[State -1]
type = ChangeState
value = 1275
triggerall = AIlevel = 0 && command = "24a+b" && statetype != A && NumHelper > 0 
triggerall = Var(48) = 1
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 1250
triggerall = AIlevel = 0 && command = "24c" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1225
triggerall = AIlevel = 0 && command = "24b" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1200
triggerall = AIlevel = 0 && command = "24a" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1175
triggerall = AIlevel = 0 && command = "623a+b" && statetype != A && Power >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1175
triggerall = AIlevel = 0 && command = "623a+b" && statetype != A && Power >= 1000
triggerall = Var(48) = 1
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 1175
triggerall = AIlevel = 0 && command = "623a+b" && statetype != A && NumHelper > 0 
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && Helper,Var(19) = 1
trigger2 = MoveContact && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && Helper,Var(19) = 1
trigger3 = MoveContact && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && Helper,Var(19) = 1
trigger4 = MoveContact && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3 && Helper,Var(19) = 1
trigger5 = MoveContact && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3 && Helper,Var(19) = 1
trigger6 = MoveContact && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
trigger7 = MoveContact && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && Helper,Var(19) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && Helper,Var(19) = 1
trigger8 = MoveContact && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0 && Helper,Var(19) = 1
trigger9 = MoveContact && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger10 = MoveContact && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger11 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && Helper,Var(19) = 1
trigger12 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 && Helper,Var(19) = 1
trigger13 = MoveContact && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0 && Helper,Var(19) = 1
trigger14 = MoveContact && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0 && Helper,Var(19) = 1
trigger15 = MoveContact && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0 && Helper,Var(19) = 1
trigger16 = MoveContact && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0 && Helper,Var(19) = 1

[State -1]
type = ChangeState
value = 1150
triggerall = AIlevel = 0 && command = "623c" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1125
triggerall = AIlevel = 0 && command = "623b" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1100
triggerall = AIlevel = 0 && command = "623a" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel = 0 && command = "26a+b" && statetype != A && Power >= 1000
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = (MoveContact || Var(29) = 3) && stateno = 243 && animelemtime(4) >= 1 && animelemtime(8) <= 0

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel = 0 && command = "26a+b" && statetype != A && NumHelper > 0 
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && Helper,Var(19) = 1
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0
trigger17 = (MoveContact || Var(29) = 3) && stateno = 243 && animelemtime(4) >= 1 && animelemtime(8) <= 0

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel = 0 && command = "26a+b" && statetype != A && NumHelper > 0 
triggerall = Var(48) = 1
trigger1 = stateno = 1000 && animelemtime(6) >= 1
trigger2 = stateno = 1025 && animelemtime(6) >= 1
trigger3 = stateno = 1050 && animelemtime(6) >= 1
trigger4 = stateno = 1100 && animelemtime(7) >= 1
trigger5 = stateno = 1125 && animelemtime(7) >= 1
trigger6 = stateno = 1150 && animelemtime(7) >= 1
trigger7 = stateno = 1200 && animelemtime(19) >= 3
trigger8 = stateno = 1225 && animelemtime(19) >= 3
trigger9 = stateno = 1250 && animelemtime(19) >= 3
;trigger10 = stateno = 1310 && animelemtime(1) >= 1
;trigger11 = stateno = 1330 && animelemtime(1) >= 1
;trigger12 = stateno = 1360 && animelemtime(1) >= 1
;trigger13 = stateno = 1201 && animelemtime(11) >= 1
;trigger14 = stateno = 1226 && animelemtime(13) >= 1
;trigger15 = stateno = 1251 && animelemtime(15) >= 1

[State -1]
type = ChangeState
value = 1050
triggerall = AIlevel = 0 && command = "26c" && statetype != A
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1025
triggerall = AIlevel = 0 && command = "26b" && statetype != A
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 1000
triggerall = AIlevel = 0 && command = "26a" && statetype != A
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger16 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

;===========================================================================

[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = AIlevel = 0 && command = "Meta" && power >= 1000  && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6
triggerall = NumPartner > 0
triggerall = Partner,Var(39) != 6
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = MoveContact && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger3 = MoveContact && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger4 = MoveContact && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger5 = MoveContact && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger6 = MoveContact && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger7 = MoveContact && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger8 = MoveContact && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger9 = MoveContact && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger10 = MoveContact && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger11 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger12 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger13 = MoveContact && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger14 = MoveContact && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger15 = MoveContact && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger16 = MoveContact && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1

[State -1]
type = ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = AIlevel = 0 && command = "Meta" && power >= 1000 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6
triggerall = NumPartner = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = MoveContact && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger3 = MoveContact && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger4 = MoveContact && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger5 = MoveContact && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger6 = MoveContact && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger7 = MoveContact && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger8 = MoveContact && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger9 = MoveContact && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger10 = MoveContact && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger11 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger12 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger13 = MoveContact && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger14 = MoveContact && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger15 = MoveContact && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger16 = MoveContact && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1

[State -1]
type = ChangeState
value = 800
triggerall = AIlevel = 0 && command = "BC" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))

[State -1]
type = ChangeState
value = 600
triggerall = AIlevel = 0 && command = "x" && statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Vel X = 0 ;Anim = 41
trigger2 = StateNo = 5210 && Vel X = 0
trigger2 = ctrl

[State -1]
type = ChangeState
value = 605
triggerall = AIlevel = 0 && command = "x" && statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && Vel X != 0 ;Anim != 41
trigger2 = StateNo = 5210 && Vel X != 0
trigger2 = ctrl


[State -1]
type = ChangeState
value = 611
triggerall = AIlevel = 0 && command = "a" && statetype = A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 620 && animelemtime(7) >= 1 && animelemtime(9) <= 0
trigger2 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(7) >= 1 && animelemtime(10) <= 0


[State -1]
type = ChangeState
value = 610
triggerall = AIlevel = 0 && command = "a" && statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) ;&& Anim = 41
trigger2 = StateNo = 5210 ;&& Vel X = 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(6) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 && animelemtime(5) <= 0


[State -1]
type = null;ChangeState
value = 616
triggerall = AIlevel = 0 && command = "a" && statetype = A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2

[State -1]
type = null;ChangeState
value = 615
triggerall = AIlevel = 0 && command = "a" && statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && Anim != 41
trigger2 = StateNo = 5210 && Vel X != 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 

[State -1]
type = null;ChangeState
value = 630
triggerall = AIlevel = 0 && command = "y" && command = "holddown" && statetype = A
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 600 
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605 
trigger4 = (MoveContact || Var(29) = 3) && stateno = 610 
trigger5 = (MoveContact || Var(29) = 3) && stateno = 615 

[State -1]
type = ChangeState
value = 621
triggerall = AIlevel = 0 && command = "y" && statetype = A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 610 && animelemtime(5) >= 1 && animelemtime(7) <= 0 

[State -1]
type = ChangeState
value = 620
triggerall = AIlevel = 0 && command = "y" && statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Vel X = 0 ;Anim = 41
trigger2 = StateNo = 5210 && Vel X = 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) && stateno = 600 && animelemtime(3) >= 1 && animelemtime(6) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 605 && animelemtime(3) >= 1 && animelemtime(5) <= 0

[State -1]
type = ChangeState
value = 626
triggerall = AIlevel = 0 && command = "y" && statetype = A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 610 

[State -1]
type = ChangeState
value = 625
triggerall = AIlevel = 0 && command = "y" && statetype = A
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116) || (stateno = 7410 && Time > 1)) && Vel X != 0 ;Anim != 41
trigger2 = StateNo = 5210 && Vel X != 0
trigger2 = ctrl
trigger3 = (MoveContact || Var(29) = 3) && stateno = 605

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel = 0 && command = "x" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = stateno = 200 && animelemtime(4) >= 2 && animelemtime(7) <= 0
trigger3 = stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 103,205,200)
triggerall = AIlevel = 0 && command = "x" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = stateno = 200 && animelemtime(4) >= 2 && animelemtime(7) <= 0
trigger3 = stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0

[State -1]
type = ChangeState
value = 431
triggerall = AIlevel = 0 && command = "a" && command = "holddown" && command = "holdfwd" && statetype != A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger2 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger3 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3

[State -1]
type = ChangeState
value = 430
triggerall = AIlevel = 0 && command = "y" && command = "holddown" && command = "holdfwd" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger8 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
;trigger9 = (MoveContact || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3

[State -1]
type = null;ChangeState
value = 231
triggerall = AIlevel = 0 && command = "a" && command != "holddown" && command = "holdfwd" && statetype != A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger2 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = 230
triggerall = AIlevel = 0 && command = "a" && command != "holddown" && command = "holdfwd" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger5 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3


[State -1]
type = ChangeState
value = 411
triggerall = AIlevel = 0 && command = "a" && command = "holddown" && statetype != A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger2 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger3 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3


[State -1]
type = ChangeState
value = 410
triggerall = AIlevel = 0 && command = "a" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger5 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3


[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 108,216,211)
triggerall = AIlevel = 0 && command = "a" && command != "holddown" && statetype != A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
;trigger2 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3



[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 108,215,210)
triggerall = AIlevel = 0 && command = "a" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0


[State -1]
type = Null;ChangeState
value = 250
triggerall = AIlevel = 0 && command = "y" && command != "holddown" && command = "holdfwd" && statetype != A
trigger1 = ctrl || (stateno = 100 || stateno = 101)
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = (MoveContact || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = 240
triggerall = AIlevel = 0 && command = "y" && command != "holddown" && command = "holdfwd" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger8 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
;trigger9 = (MoveContact || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
;trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = ChangeState
value = 420
triggerall = AIlevel = 0 && command = "y" && command = "holddown" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger8 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
;trigger9 = (MoveContact || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3

[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 125,225,220)
triggerall = AIlevel = 0 && command = "y" && command != "holddown" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger8 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
;trigger9 = (MoveContact || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger9 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
;trigger13 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger14 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3

;===========================================================================
[State -1]
type = ChangeState
value = 40
triggerall = AIlevel = 0 && command = "holdup" && statetype != A && p2statetype = A
trigger1 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger2 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger4 = (MoveContact || Var(29) = 3) && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3
trigger5 = (MoveContact || Var(29) = 3) && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger6 = (MoveContact || Var(29) = 3) && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3
;trigger7 = (MoveContact || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0
trigger8 = (MoveContact || Var(29) = 3) && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger9 = (MoveContact || Var(29) = 3) && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3
trigger10 = (MoveContact || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger11 = (MoveContact || Var(29) = 3) && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger12 = (MoveContact || Var(29) = 3) && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger13 = (MoveContact || Var(29) = 3) && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0
trigger14 = (MoveContact || Var(29) = 3) && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0
trigger15 = (MoveContact || Var(29) = 3) && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0

[State -1]
type = ChangeState
value = 45
triggerall = AIlevel = 0 && command = "holdup" && statetype = A && Var(31) > 0
trigger1 = (MoveContact || Var(29) = 3) && stateno = 600 
trigger2 = (MoveContact || Var(29) = 3) && stateno = 605 
trigger3 = (MoveContact || Var(29) = 3) && stateno = 610 
trigger4 = (MoveContact || Var(29) = 3) && stateno = 611
trigger5 = (MoveContact || Var(29) = 3) && stateno = 615 
trigger6 = (MoveContact || Var(29) = 3) && stateno = 616
trigger7 = (MoveContact || Var(29) = 3) && stateno = 620 
trigger8 = (MoveContact || Var(29) = 3) && stateno = 621 
trigger9 = (MoveContact || Var(29) = 3) && stateno = 625 
trigger10 = (MoveContact || Var(29) = 3) && stateno = 626 
trigger11 = (MoveContact || Var(29) = 3) && stateno = 630 

;Run Fwd
[State -1, Run Fwd]
type = null;ChangeState
value = 100
triggerall = AIlevel = 0 && command = "FF" && statetype != A
trigger1 = 0
trigger2 = Var(29) = 3 && stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = Var(29) = 3 && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = Var(29) = 3 && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = Var(29) = 3 && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = Var(29) = 3 && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = Var(29) = 3 && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = Var(29) = 3 && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = Var(29) = 3 && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = Var(29) = 3 && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = Var(29) = 3 && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = Var(29) = 3 && stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = Var(29) = 3 && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = Var(29) = 3 && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = Var(29) = 3 && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = Var(29) = 3 && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = Var(29) = 3 && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = Var(29) = 3 && stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4
trigger19 = Var(29) = 3 && stateno = 1100 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger20 = Var(29) = 3 && stateno = 1125 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger21 = Var(29) = 3 && stateno = 1150 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger22 = Var(29) = 3 && stateno = 1200 && animelemtime(4) >= 1 && animelemtime(11) <= 1
trigger23 = Var(29) = 3 && stateno = 1225 && animelemtime(4) >= 1 && animelemtime(13) <= 1
trigger24 = Var(29) = 3 && stateno = 1250 && animelemtime(4) >= 1 && animelemtime(15) <= 1
trigger25 = Var(29) = 3 && stateno = 1175 && animelemtime(6) >= 1 && animelemtime(10) <= 3
trigger26 = Var(29) = 3 && stateno = 1201 && animelemtime(4) >= 1 && animelemtime(11) <= 1
trigger27 = Var(29) = 3 && stateno = 1226 && animelemtime(4) >= 1 && animelemtime(13) <= 1
trigger28 = Var(29) = 3 && stateno = 1251 && animelemtime(4) >= 1 && animelemtime(15) <= 1



[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = AIlevel = 0 && command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = AIlevel = 0 && command = "FF2"
trigger2 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = Var(5) >= 1000
trigger3 = AIlevel = 0 && command = "FF2"
trigger3 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3
trigger3 = Var(5) >= 1000

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = Var(31) > 0
triggerall = AIlevel = 0 && command = "FF" && statetype = A && Pos Y <= -70
trigger1 = ctrl 
trigger2 = stateno = 115 || stateno = 116

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = AIlevel = 0 && command = "BB"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 101 || stateno = 106
ctrl = 0

;Run Back
[State -1, Run Back]
type = ChangeState
value = 115
triggerall = Var(31) > 0
triggerall = AIlevel = 0 && command = "BB" && statetype = A && Pos Y <= -70
trigger1 = ctrl 
trigger2 = stateno = 110 || stateno = 111

[State -1]
type = ChangeState
value = 195
triggerall = AIlevel = 0 && command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 || stateno = 101)

[State -1]
type = ChangeState
value = 7300
triggerall = AIlevel = 0 && command = "c" && Power >= 2000 && alive
triggerall = (stateno = 5000 || (stateno = 5001 && Time < 2) || stateno = 5010 || (stateno = 5011 && Time < 2)) && (Anim = [5000,5029])
triggerall = MoveType = H && HitFall = 0
triggerall = EnemyNear,HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000
trigger1 = StateType = S
trigger2 = StateType = C

[State -1]
type = ChangeState
value = IfElse(StateType = S,7150,IfElse(StateType = A,7152,7151))
triggerall = AIlevel = 0 && command = "c" && Var(5) >= 1000 ;&& NumHelper > 0
trigger1 = MoveContact && stateno = 200 && animelemtime(4) >= 1 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger2 = MoveContact && stateno = 205 && animelemtime(3) >= 1 && animelemtime(5) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger3 = MoveContact && stateno = 210 && animelemtime(6) >= 1 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger4 = MoveContact && stateno = 211 && animelemtime(6) >= 1 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger5 = MoveContact && stateno = 215 && animelemtime(3) >= 1 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger6 = MoveContact && stateno = 216 && animelemtime(3) >= 1 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger7 = MoveContact && stateno = 400 && animelemtime(3) >= 1 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger8 = MoveContact && stateno = 410 && animelemtime(5) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger9 = MoveContact && stateno = 411 && animelemtime(5) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger10 = MoveContact && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger11 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger12 = MoveContact && stateno = 430 && animelemtime(5) >= 1 && animelemtime(9) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger13 = MoveContact && stateno = 431 && animelemtime(5) >= 1 && animelemtime(9) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger14 = MoveContact && stateno = 420 && animelemtime(8) >= 1 && animelemtime(11) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger15 = MoveContact && stateno = 240 && animelemtime(8) >= 1 && animelemtime(10) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1

[State -1]
type = ChangeState
value = 7400
triggerall = AIlevel = 0 && command = "26e" && Power >= 2000 && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger1 = Var(5) >= 1000

[State 7300, end]
type = ChangeState
value = 7226 ;0
triggerall = AIlevel = 0 && command = "c" && Power >= 1000 && statetype != A
trigger1 = Var(5) >= 1000
trigger1 = stateno = [150,153]
trigger1 = p2movetype = A
ctrl = 0 ;1

[State -1]
type = ChangeState
value = 7222
triggerall = AIlevel = 0 && command = "c" && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101))
trigger1 = Var(5) >= 1000



; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ; ;
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================

[State -1, AI ON]
Type = null;VarSet
TriggerAll = AIlevel < 1
TriggerAll = RoundState=2
Trigger1 = AILevel>0
v = 59
value= 1
Ignorehitpause=1

[State -1, AI OFF]
Type= null;VarSet
triggerall = StateNo != 1 && AIlevel != 10
Trigger1 = AIlevel > 0 
Trigger1 = RoundState!=2
Trigger2 = !IsHelper 
Trigger2 = AILevel=0
v= 59
value= 0  

[State -1, VarSet]
type = null;VarSet
trigger1 = AIlevel != 0 && roundstate = 2 && RoundState = 3
trigger2 = AIlevel != 0 && roundstate = 2 && StateNo = 5120 && Var(35) >= 2150
v = 59   ;fv = 10
value = 999
ignorehitpause = 1
;persistent =

[State -1, VarSet]
type = null;VarSet
trigger1 = AIlevel = 999 && StateNo = 5300
v = 59   ;fv = 10
value = 1
ignorehitpause = 1
;persistent =

;---------------------------------------------------------------------------
;反擊距離

;戰人
[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 100 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 600
trigger1 = (P2Dist X = [-5, 150]) && EnemyNear,Pos Y >= -155
trigger2 = EnemyNear,StateNo = 605 && EnemyNear,AnimElemTime(3) <=10
trigger2 = (P2Dist X = [-5, 150]) && EnemyNear,Pos Y >= -155
trigger3 = (EnemyNear,StateNo = [610, 611]) && EnemyNear,AnimElemTime(3) <=9
trigger3 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -185
trigger4 = (EnemyNear,StateNo = [615, 616]) && EnemyNear,AnimElemTime(4) <=9
trigger4 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -185
trigger5 = (EnemyNear,StateNo = [620, 621]) && EnemyNear,AnimElemTime(7) <=3
trigger5 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -200
trigger6 = (EnemyNear,StateNo = [625, 626]) && EnemyNear,AnimElemTime(4) <=6
trigger6 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -200
trigger7 = EnemyNear,StateNo = [1300, 1399]
trigger7 = (P2Dist X = [-5, 200]) && (EnemyNear,Pos Y = [-200,-70])
v = 54 
value = 1000
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 100 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 605 && EnemyNear,AnimElemTime(4) >= 0
trigger1 = (P2Dist X = [-5, 150]) && EnemyNear,Pos Y >= -155
trigger2 = (EnemyNear,StateNo = [610, 611]) && EnemyNear,AnimElemTime(4) >=0
trigger2 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -185
trigger3 = (EnemyNear,StateNo = [615, 616]) && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -185
trigger4 = (EnemyNear,StateNo = [620, 621]) && EnemyNear,AnimElemTime(8) >=0
trigger4 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -200
trigger5 = (EnemyNear,StateNo = [625, 626]) && EnemyNear,AnimElemTime(5) >=0
trigger5 = (P2Dist X = [-5, 220]) && EnemyNear,Pos Y >= -200
v = 54 
value = 1010
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 100 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 200 && EnemyNear,AnimElemTime(2) <=5
trigger1 = (P2Dist X = [-5, 165])
trigger2 = EnemyNear,StateNo = 205 && EnemyNear,AnimElemTime(2) <=6
trigger2 = (P2Dist X = [-5, 165])
trigger3 = (EnemyNear,StateNo = [210, 211]) && EnemyNear,AnimElemTime(4) <=4
trigger3 = (P2Dist X = [-5, 250])
trigger4 = (EnemyNear,StateNo = [215, 216]) && EnemyNear,AnimElemTime(4) <=7
trigger4 = (P2Dist X = [-5, 250])
trigger5 = (EnemyNear,StateNo = [220, 221]) && EnemyNear,AnimElemTime(6) <=5
trigger5 = (P2Dist X = [-5, 260])
trigger6 = (EnemyNear,StateNo = [225, 226]) && EnemyNear,AnimElemTime(4) <=8
trigger6 = (P2Dist X = [-5, 260])
trigger7 = (EnemyNear,StateNo = [230, 231]) && EnemyNear,AnimElemTime(4) <=4
trigger7 = (P2Dist X = [-5, 305])
trigger8 = (EnemyNear,StateNo = [251, 253]) && EnemyNear,AnimElemTime(1) <=3
trigger8 = (P2Dist X = [-5, 230])
trigger9 = (EnemyNear,StateNo = [1100, 1174]) && EnemyNear,AnimElemTime(6) <=3
trigger9 = (P2Dist X = [-5, 240])
trigger10 = (EnemyNear,StateNo = [1175, 1199]) && EnemyNear,AnimElemTime(9) <=3
trigger10 = (P2Dist X = [-5, 240])
trigger11 = (EnemyNear,StateNo = [1200, 1274]) && EnemyNear,AnimElemTime(5) <=3
trigger11 = (P2Dist X = [-5, 350])
trigger12 = (EnemyNear,StateNo = [1275, 1279]) && EnemyNear,AnimElemTime(13) <=3
trigger12 = (P2Dist X = [-5, 350])
trigger13 = EnemyNear,StateNo = 2000
trigger13 = (P2Dist X = [-5, 500])
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 100 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 200 && EnemyNear,AnimElemTime(3) >=0
trigger1 = (P2Dist X = [-5, 165])
trigger2 = EnemyNear,StateNo = 205 && EnemyNear,AnimElemTime(3) >=0
trigger2 = (P2Dist X = [-5, 165])
trigger3 = (EnemyNear,StateNo = [210, 211]) && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 250])
trigger4 = (EnemyNear,StateNo = [215, 216]) && EnemyNear,AnimElemTime(5) >=0
trigger4 = (P2Dist X = [-5, 250])
trigger5 = (EnemyNear,StateNo = [220, 221]) && EnemyNear,AnimElemTime(7) >=0
trigger5 = (P2Dist X = [-5, 260])
trigger6 = (EnemyNear,StateNo = [225, 226]) && EnemyNear,AnimElemTime(5) >=0
trigger6 = (P2Dist X = [-5, 260])
trigger7 = (EnemyNear,StateNo = [230, 231]) && EnemyNear,AnimElemTime(5) >=0
trigger7 = (P2Dist X = [-5, 305])
trigger8 = (EnemyNear,StateNo = [251, 253]) && EnemyNear,AnimElemTime(2) >=0
trigger8 = (P2Dist X = [-5, 230])
trigger9 = (EnemyNear,StateNo = [1100, 1174]) && EnemyNear,AnimElemTime(7) >=0
trigger9 = (P2Dist X = [-5, 240])
trigger10 = (EnemyNear,StateNo = [1175, 1199]) && EnemyNear,AnimElemTime(10) >=0
trigger10 = (P2Dist X = [-5, 240])
trigger11 = (EnemyNear,StateNo = [1200, 1274]) && EnemyNear,AnimElemTime(6) >=0
trigger11 = (P2Dist X = [-5, 350])
trigger12 = (EnemyNear,StateNo = [1275, 1279]) && EnemyNear,AnimElemTime(14) >=0
trigger12 = (P2Dist X = [-5, 350])
trigger13 = EnemyNear,StateNo = 2001
trigger13 = (P2Dist X = [-5, 500])
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 100 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 400 && EnemyNear,AnimElemTime(3) <=5
trigger1 = (P2Dist X = [-5, 120])
trigger2 = (EnemyNear,StateNo = [410, 419]) && EnemyNear,AnimElemTime(3) <=6
trigger2 = (P2Dist X = [-5, 170])
trigger3 = EnemyNear,StateNo = 420 && EnemyNear,AnimElemTime(4) <=5
trigger3 = (P2Dist X = [-5, 250])
trigger4 = (EnemyNear,StateNo = [430, 439]) && EnemyNear,AnimElemTime(3) <=10
trigger4 = (P2Dist X = [-5, 230])
v = 54 
value = 1050
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 100 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 400 && EnemyNear,AnimElemTime(4) >=0
trigger1 = (P2Dist X = [-5, 120])
trigger2 = (EnemyNear,StateNo = [410, 419]) && EnemyNear,AnimElemTime(4) >=0
trigger2 = (P2Dist X = [-5, 170])
trigger3 = EnemyNear,StateNo = 420 && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 250])
trigger4 = (EnemyNear,StateNo = [430, 439]) && EnemyNear,AnimElemTime(4) >=0
trigger4 = (P2Dist X = [-5, 230])
v = 54 
value = 1060
ignorehitpause = 1

;路西法
[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 600 && EnemyNear,AnimElemTime(2) <=10
trigger1 = (P2Dist X = [-5, 135]) && EnemyNear,Pos Y >= -125
trigger2 = EnemyNear,StateNo = 605 && EnemyNear,AnimElemTime(3) <=8
trigger2 = (P2Dist X = [-5, 155]) && EnemyNear,Pos Y >= -200
trigger3 = EnemyNear,StateNo = 610 && EnemyNear,AnimElemTime(4) <=4
trigger3 = (P2Dist X = [-5, 156]) && EnemyNear,Pos Y >= -150
trigger4 = (EnemyNear,StateNo = [615, 616]) && EnemyNear,AnimElemTime(5) <=4
trigger4 = (P2Dist X = [-5, 150]) && EnemyNear,Pos Y >= -165
trigger5 = EnemyNear,StateNo = 620 && EnemyNear,AnimElemTime(5) <=4
trigger5 = (P2Dist X = [-10, 150]) && EnemyNear,Pos Y >= -200
trigger6 = (EnemyNear,StateNo = [1300, 1301])
trigger6 = (P2Dist X = [-10, 130]) && EnemyNear,Pos Y >= -100
trigger7 = (EnemyNear,StateNo = [1325, 1326]) && EnemyNear,Fvar(11) < 3
trigger7 = (P2Dist X = [-10, 160]) && EnemyNear,Pos Y >= -100
trigger8 = (EnemyNear,StateNo = [1350, 1351]) && EnemyNear,Fvar(11) < 3
trigger8 = (P2Dist X = [-10, 190]) && EnemyNear,Pos Y >= -100
trigger9 = (EnemyNear,StateNo = [1375, 1376])
trigger9 = (P2Dist X = [-10, 190]) && EnemyNear,Pos Y >= -100
v = 54 
value = 1000

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = (EnemyNear,StateNo = [625, 626]) && EnemyNear,AnimElemTime(4) <=3
trigger1 = (P2Dist X = [-80, 195]) && EnemyNear,Pos Y >= -200
v = 54 
value = 1000

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 600 && EnemyNear,AnimElemTime(3) >=0
trigger1 = (P2Dist X = [-5, 135]) && EnemyNear,Pos Y >= -125
trigger2 = EnemyNear,StateNo = 605 && EnemyNear,AnimElemTime(4) >=0
trigger2 = (P2Dist X = [-5, 155]) && EnemyNear,Pos Y >= -200
trigger3 = EnemyNear,StateNo = 610 && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 156]) && EnemyNear,Pos Y >= -150
trigger4 = (EnemyNear,StateNo = [615, 616]) && EnemyNear,AnimElemTime(6) >=0
trigger4 = (P2Dist X = [-5, 150]) && EnemyNear,Pos Y >= -165
trigger5 = EnemyNear,StateNo = 620 && EnemyNear,AnimElemTime(6) >=0
trigger5 = (P2Dist X = [-10, 150]) && EnemyNear,Pos Y >= -200
trigger6 = (EnemyNear,StateNo = [625, 626]) && EnemyNear,AnimElemTime(5) >=0
trigger6 = (P2Dist X = [-80, 195]) && EnemyNear,Pos Y >= -200
trigger7 = (EnemyNear,StateNo = [1300, 1351]) && EnemyNear,Fvar(11) >= 3
trigger7 = (P2Dist X = [-10, 190])
v = 54 
value = 1010
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 200 && EnemyNear,AnimElemTime(2) <=5
trigger1 = (P2Dist X = [-5, 180])
trigger2 = EnemyNear,StateNo = 230 && EnemyNear,AnimElemTime(3) <=3
trigger2 = (P2Dist X = [-5, 130])
trigger3 = (EnemyNear,StateNo = [210, 211]) && EnemyNear,AnimElemTime(4) <=4
trigger3 = (P2Dist X = [-5, 275])
trigger4 = (EnemyNear,StateNo = [215, 216]) && EnemyNear,AnimElemTime(4) <=5
trigger4 = (P2Dist X = [-5, 185])
trigger5 = (EnemyNear,StateNo = [220, 221]) && EnemyNear,AnimElemTime(5) <=12
trigger5 = (P2Dist X = [-5, 295])
trigger6 = EnemyNear,StateNo = 225
trigger6 = (P2Dist X = [-5, 150])
trigger7 = EnemyNear,StateNo = 226 && EnemyNear,AnimElemTime(2) <=5
trigger7 = (P2Dist X = [-5, 180])
trigger8 = EnemyNear,StateNo = 240 && EnemyNear,AnimElemTime(5) <=10
trigger8 = (P2Dist X = [-5, 240])
trigger9 = EnemyNear,StateNo = 1000 && EnemyNear,AnimElemTime(6) <=4
trigger9 = (P2Dist X = [-5, 260])
trigger10 = EnemyNear,StateNo = 1025 && EnemyNear,AnimElemTime(6) <=4
trigger10 = (P2Dist X = [-5, 320])
trigger11 = EnemyNear,StateNo = 1050 && EnemyNear,AnimElemTime(6) <=4
trigger11 = (P2Dist X = [-5, 350])
trigger12 = (EnemyNear,StateNo = 1010 || EnemyNear,StateNo = 1030 || EnemyNear,StateNo = 1060)
trigger12 = (P2Dist X = [-5, 220])
trigger13 = (EnemyNear,StateNo = 1011 || EnemyNear,StateNo = 1031 || EnemyNear,StateNo = 1061) && EnemyNear,AnimElemTime(2) <=2
trigger13 = (P2Dist X = [-5, 220])
trigger14 = (EnemyNear,StateNo = 1020 || EnemyNear,StateNo = 1040 || EnemyNear,StateNo = 1070) && EnemyNear,AnimElemTime(4) <=15
trigger14 = (P2Dist X = [-5, 190])
trigger15 = EnemyNear,StateNo = 1075
trigger15 = (P2Dist X = [-5, 190])
trigger16 = EnemyNear,StateNo = 1076 && EnemyNear,AnimElemTime(1) <=15
trigger16 = (P2Dist X = [-5, 190])
trigger17 = (EnemyNear,StateNo = 1210 || EnemyNear,StateNo = 1230 || EnemyNear,StateNo = 1260)
trigger17 = (P2Dist X = [-5, 280])
trigger18 = (EnemyNear,StateNo = [1280, 1281])
trigger18 = (P2Dist X = [-5, 450])
trigger19 = EnemyNear,StateNo = 2000
trigger19 = (P2Dist X = [-5, 500])
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = (EnemyNear,StateNo = 1110 || EnemyNear,StateNo = 1130 || EnemyNear,StateNo = 1160)  && EnemyNear,AnimElemTime(7) <=2
trigger1 = (P2Dist X = [-100, 235])
trigger2 = EnemyNear,StateNo = 1180 && EnemyNear,AnimElemTime(10) <=7
trigger2 = (P2Dist X = [-100, 350])
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 200 && EnemyNear,AnimElemTime(3) >=0
trigger1 = (P2Dist X = [-5, 180])
trigger2 = EnemyNear,StateNo = 230 && EnemyNear,AnimElemTime(4) >=0
trigger2 = (P2Dist X = [-5, 130])
trigger3 = (EnemyNear,StateNo = [210, 211]) && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 275])
trigger4 = (EnemyNear,StateNo = [215, 216]) && EnemyNear,AnimElemTime(5) >=0
trigger4 = (P2Dist X = [-5, 185])
trigger5 = (EnemyNear,StateNo = [220, 221]) && EnemyNear,AnimElemTime(6) >=0
trigger5 = (P2Dist X = [-5, 295])
trigger6 = EnemyNear,StateNo = 226 && EnemyNear,AnimElemTime(3) >=0
trigger6 = (P2Dist X = [-5, 180])
trigger7 = EnemyNear,StateNo = 240 && EnemyNear,AnimElemTime(6) >=0
trigger7 = (P2Dist X = [-5, 240])
trigger8 = EnemyNear,StateNo = 1000 && EnemyNear,AnimElemTime(7) >=0
trigger8 = (P2Dist X = [-5, 260])
trigger9 = EnemyNear,StateNo = 1025 && EnemyNear,AnimElemTime(7) >=0
trigger9 = (P2Dist X = [-5, 320])
trigger10 = EnemyNear,StateNo = 1050 && EnemyNear,AnimElemTime(7) >=0
trigger10 = (P2Dist X = [-5, 350])
trigger11 = (EnemyNear,StateNo = 1011 || EnemyNear,StateNo = 1031 || EnemyNear,StateNo = 1061) && EnemyNear,AnimElemTime(3) >=0
trigger11 = (P2Dist X = [-5, 220])
trigger12 = (EnemyNear,StateNo = 1020 || EnemyNear,StateNo = 1040 || EnemyNear,StateNo = 1070) && EnemyNear,AnimElemTime(5) >=0
trigger12 = (P2Dist X = [-5, 190])
trigger13 = EnemyNear,StateNo = 1076 && EnemyNear,AnimElemTime(2) >=0
trigger13 = (P2Dist X = [-5, 190])
trigger14 = (EnemyNear,StateNo = 1110 || EnemyNear,StateNo = 1130 || EnemyNear,StateNo = 1160)  && EnemyNear,AnimElemTime(8) >=0
trigger14 = (P2Dist X = [-5, 235])
trigger15 = EnemyNear,StateNo = 1180 && EnemyNear,AnimElemTime(11) >=0
trigger15 = (P2Dist X = [-100, 350])
trigger16 = EnemyNear,StateNo = 2001
trigger16 = (P2Dist X = [-5, 500])
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 400 && EnemyNear,AnimElemTime(3) <=5
trigger1 = (P2Dist X = [-5, 150])
trigger2 = (EnemyNear,StateNo = [410, 419]) && EnemyNear,AnimElemTime(4) <=5
trigger2 = (P2Dist X = [-5, 240])
trigger3 = EnemyNear,StateNo = 420 && EnemyNear,AnimElemTime(12) <=3
trigger3 = (P2Dist X = [-5, 300])
trigger4 = (EnemyNear,StateNo = [430, 439]) && EnemyNear,AnimElemTime(5) <=8
trigger4 = (P2Dist X = [-5, 170])
v = 54 
value = 1050
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 400 && EnemyNear,AnimElemTime(4) >=0
trigger1 = (P2Dist X = [-5, 150])
trigger2 = (EnemyNear,StateNo = [410, 419]) && EnemyNear,AnimElemTime(5) >=0
trigger2 = (P2Dist X = [-5, 240])
trigger3 = EnemyNear,StateNo = 420 && EnemyNear,AnimElemTime(13) >=0
trigger3 = (P2Dist X = [-5, 300])
trigger4 = (EnemyNear,StateNo = [430, 439]) && EnemyNear,AnimElemTime(6) >=0
trigger4 = (P2Dist X = [-5, 170])
v = 54 
value = 1060
ignorehitpause = 1

;羅諾威

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 600 && EnemyNear,AnimElemTime(2) <=5
trigger1 = (P2Dist X = [-5, 145]) && EnemyNear,Pos Y >= -130
trigger2 = EnemyNear,StateNo = 605 && EnemyNear,AnimElemTime(2) <=5
trigger2 = (P2Dist X = [-5, 145]) && EnemyNear,Pos Y >= -130
trigger3 = (EnemyNear,StateNo = [610,619]) && EnemyNear,AnimElemTime(8) <=3
trigger3 = (P2Dist X = [-5, 155]) && EnemyNear,Pos Y >= -140
trigger4 = (EnemyNear,StateNo = [620,621]) && EnemyNear,AnimElemTime(6) <=7
trigger4 = (P2Dist X = [-5, 180]) && EnemyNear,Pos Y >= -125
trigger5 = (EnemyNear,StateNo = [625,629]) && EnemyNear,AnimElemTime(7) <=3
trigger5 = (P2Dist X = [-5, 180]) && EnemyNear,Pos Y >= -155
v = 54 
value = 1000

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 104 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 600 && EnemyNear,AnimElemTime(3) >=0
trigger1 = (P2Dist X = [-5, 145]) && EnemyNear,Pos Y >= -130
trigger2 = EnemyNear,StateNo = 605 && EnemyNear,AnimElemTime(3) >=0
trigger2 = (P2Dist X = [-5, 145]) && EnemyNear,Pos Y >= -130
trigger3 = (EnemyNear,StateNo = [610,619]) && EnemyNear,AnimElemTime(9) >=0
trigger3 = (P2Dist X = [-5, 155]) && EnemyNear,Pos Y >= -140
trigger4 = (EnemyNear,StateNo = [620,621]) && EnemyNear,AnimElemTime(7) >=0
trigger4 = (P2Dist X = [-5, 180]) && EnemyNear,Pos Y >= -125
trigger5 = (EnemyNear,StateNo = [625,629]) && EnemyNear,AnimElemTime(8) >=0
trigger5 = (P2Dist X = [-5, 180]) && EnemyNear,Pos Y >= -155
v = 54 
value = 1010
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 106 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 200 && EnemyNear,AnimElemTime(5) <=4
trigger1 = (P2Dist X = [-5, 190])
trigger2 = EnemyNear,StateNo = 230 && EnemyNear,AnimElemTime(3) <=4
trigger2 = (P2Dist X = [-5, 190])
trigger3 = (EnemyNear,StateNo = [210, 211]) && EnemyNear,AnimElemTime(4) <=5
trigger3 = (P2Dist X = [-5, 210])
trigger4 = (EnemyNear,StateNo = [215, 216]) && EnemyNear,AnimElemTime(4) <=5
trigger4 = (P2Dist X = [-5, 140])
trigger5 = (EnemyNear,StateNo = [220, 221]) && EnemyNear,AnimElemTime(6) <=10
trigger5 = (P2Dist X = [-5, 270])
trigger6 = (EnemyNear,StateNo = [225, 226]) && EnemyNear,AnimElemTime(4) <=7
trigger6 = (P2Dist X = [-5, 200])
trigger7 = EnemyNear,StateNo = 1011 && EnemyNear,AnimElemTime(7) <=4
trigger7 = (P2Dist X = [-5, 200])
trigger8 = EnemyNear,StateNo = 1031 && EnemyNear,AnimElemTime(4) <=6
trigger8 = (P2Dist X = [-5, 200])
trigger9 = EnemyNear,StateNo = 1051 && EnemyNear,AnimElemTime(4) <=6
trigger9 = (P2Dist X = [-5, 200])
trigger10 = EnemyNear,StateNo = 1100 
trigger10 = (P2Dist X = [-5, 200])
trigger11 = EnemyNear,StateNo = 1101 && EnemyNear,AnimElemTime(1) <=4 
trigger11 = (P2Dist X = [-5, 200])
trigger12 = EnemyNear,StateNo = 2000
trigger12 = (P2Dist X = [-5, 500])
trigger13 = EnemyNear,StateNo = 7600
trigger13 = (P2Dist X = [-5, 500])
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 106 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 200 && EnemyNear,AnimElemTime(6) >=0
trigger1 = (P2Dist X = [-5, 190])
trigger2 = EnemyNear,StateNo = 230 && EnemyNear,AnimElemTime(4) >=0
trigger2 = (P2Dist X = [-5, 190])
trigger3 = (EnemyNear,StateNo = [210, 211]) && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 210])
trigger4 = (EnemyNear,StateNo = [215, 216]) && EnemyNear,AnimElemTime(5) >=0
trigger4 = (P2Dist X = [-5, 140])
trigger5 = (EnemyNear,StateNo = [220, 221]) && EnemyNear,AnimElemTime(7) >=0
trigger5 = (P2Dist X = [-5, 270])
trigger6 = (EnemyNear,StateNo = [225, 226]) && EnemyNear,AnimElemTime(5) >=0
trigger6 = (P2Dist X = [-5, 200])
trigger7 = EnemyNear,StateNo = 1011 && EnemyNear,AnimElemTime(8) >=0
trigger7 = (P2Dist X = [-5, 200])
trigger8 = EnemyNear,StateNo = 1031 && EnemyNear,AnimElemTime(5) >=0
trigger8 = (P2Dist X = [-5, 200])
trigger9 = EnemyNear,StateNo = 1051 && EnemyNear,AnimElemTime(5) >=0
trigger9 = (P2Dist X = [-5, 200])
trigger10 = EnemyNear,StateNo = 1101 && EnemyNear,AnimElemTime(2) >=0 
trigger10 = (P2Dist X = [-5, 200])
trigger11 = EnemyNear,StateNo = 1200 && EnemyNear,AnimElemTime(7) <=0 
trigger11 = (P2Dist X = [-5, 200])
trigger12 = EnemyNear,StateNo = 1225 && EnemyNear,AnimElemTime(10) <=0 
trigger12 = (P2Dist X = [-5, 200])
trigger13 = EnemyNear,StateNo = 1250 && EnemyNear,AnimElemTime(13) <=0 
trigger13 = (P2Dist X = [-5, 200])
trigger14 = EnemyNear,StateNo = 1275 && EnemyNear,AnimElemTime(16) <=0 
trigger14 = (P2Dist X = [-5, 200])
trigger15 = EnemyNear,StateNo = 2001
trigger15 = (P2Dist X = [-5, 500])
trigger16 = EnemyNear,StateNo = 7601
trigger16 = (P2Dist X = [-5, 500])
trigger17 = EnemyNear,StateNo = 7606
trigger17 = (P2Dist X = [-5, 500])
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 106 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 400 && EnemyNear,AnimElemTime(3) <=4
trigger1 = (P2Dist X = [-5, 150])
trigger2 = (EnemyNear,StateNo = [410, 419]) && EnemyNear,AnimElemTime(4) <=3
trigger2 = (P2Dist X = [-5, 160])
trigger3 = (EnemyNear,StateNo = [420, 421]) && EnemyNear,AnimElemTime(4) <=3
trigger3 = (P2Dist X = [-5, 215])
v = 54 
value = 1050
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = Var(7) = 106 && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 400 && EnemyNear,AnimElemTime(4) >=0
trigger1 = (P2Dist X = [-5, 150])
trigger2 = (EnemyNear,StateNo = [410, 419]) && EnemyNear,AnimElemTime(5) >=0
trigger2 = (P2Dist X = [-5, 160])
trigger3 = (EnemyNear,StateNo = [420, 421]) && EnemyNear,AnimElemTime(5) >=0
trigger3 = (P2Dist X = [-5, 215])
v = 54 
value = 1060
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = StateType != A
triggerall = EnemyNear,Vel X >= 0
triggerall = (Var(7) = [100,120]) && EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = 7300
trigger1 = (P2Dist X = [-5, 300])
trigger2 = EnemyNear,StateNo = 7400
trigger2 = (P2Dist X = [-5, 600])
v = 54 
value = 1075
ignorehitpause = 1

;一般反擊
[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=12 && Var(12) !=22 && Var(12) !=32 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
trigger1 = EnemyNear,StateNo = Helper(9190),Var(10)
trigger1 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(10))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(11)
trigger2 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(11))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(12)
trigger3 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(12))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(13)
trigger4 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(13))
trigger5 = EnemyNear,StateNo = Helper(9190),Var(14)
trigger5 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(14))
v = 54 
value = 1000
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=12 && Var(12) !=22 && Var(12) !=32 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
trigger1 = EnemyNear,StateNo = Helper(9190),Var(10)
trigger1 = EnemyNear,Time > Ceil(Helper(9190),Fvar(10))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(11)
trigger2 = EnemyNear,Time > Ceil(Helper(9190),Fvar(11))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(12)
trigger3 = EnemyNear,Time > Ceil(Helper(9190),Fvar(12))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(13)
trigger4 = EnemyNear,Time > Ceil(Helper(9190),Fvar(13))
trigger5 = EnemyNear,StateNo = Helper(9190),Var(14)
trigger5 = EnemyNear,Time > Ceil(Helper(9190),Fvar(14))
v = 54 
value = 1010
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
trigger1 = EnemyNear,StateNo = Helper(9190),Var(15)
trigger1 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(15))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(16)
trigger2 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(16))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(17)
trigger3 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(17))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(18)
trigger4 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(18))
trigger5 = EnemyNear,StateNo = Helper(9190),Var(19)
trigger5 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(19))
trigger6 = EnemyNear,StateNo = Helper(9190),Var(20)
trigger6 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(20))
v = 54 
value = 1025
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
trigger1 = EnemyNear,StateNo = Helper(9190),Var(15)
trigger1 = EnemyNear,Time > Ceil(Helper(9190),Fvar(15))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(16)
trigger2 = EnemyNear,Time > Ceil(Helper(9190),Fvar(16))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(17)
trigger3 = EnemyNear,Time > Ceil(Helper(9190),Fvar(17))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(18)
trigger4 = EnemyNear,Time > Ceil(Helper(9190),Fvar(18))
trigger5 = EnemyNear,StateNo = Helper(9190),Var(19)
trigger5 = EnemyNear,Time > Ceil(Helper(9190),Fvar(19))
trigger6 = EnemyNear,StateNo = Helper(9190),Var(20)
trigger6 = EnemyNear,Time > Ceil(Helper(9190),Fvar(20))
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
trigger1 = EnemyNear,StateNo = Helper(9190),Var(31)
trigger1 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(31))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(32)
trigger2 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(32))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(33)
trigger3 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(33))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(34)
trigger4 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(34))
trigger5 = EnemyNear,StateNo = Helper(9190),Var(35)
trigger5 = EnemyNear,Time <= Ceil(Helper(9190),Fvar(35))
v = 54 
value = 1050
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
trigger1 = EnemyNear,StateNo = Helper(9190),Var(31)
trigger1 = EnemyNear,Time > Ceil(Helper(9190),Fvar(31))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(32)
trigger2 = EnemyNear,Time > Ceil(Helper(9190),Fvar(32))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(33)
trigger3 = EnemyNear,Time > Ceil(Helper(9190),Fvar(33))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(34)
trigger4 = EnemyNear,Time > Ceil(Helper(9190),Fvar(34))
trigger5 = EnemyNear,StateNo = Helper(9190),Var(35)
trigger5 = EnemyNear,Time > Ceil(Helper(9190),Fvar(35))
v = 54 
value = 1060
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
triggerall = EnemyNear,StateType = A
trigger1 = EnemyNear,StateNo = Helper(9190),Var(21)
trigger1 = EnemyNear,Time > Ceil(Helper(9190),Fvar(21))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(22)
trigger2 = EnemyNear,Time > Ceil(Helper(9190),Fvar(22))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(23)
trigger3 = EnemyNear,Time > Ceil(Helper(9190),Fvar(23))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(24)
trigger4 = EnemyNear,Time > Ceil(Helper(9190),Fvar(24))
v = 54 
value = 1010
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
triggerall = EnemyNear,StateType = S
trigger1 = EnemyNear,StateNo = Helper(9190),Var(21)
trigger1 = EnemyNear,Time > Ceil(Helper(9190),Fvar(21))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(22)
trigger2 = EnemyNear,Time > Ceil(Helper(9190),Fvar(22))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(23)
trigger3 = EnemyNear,Time > Ceil(Helper(9190),Fvar(23))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(24)
trigger4 = EnemyNear,Time > Ceil(Helper(9190),Fvar(24))
v = 54 
value = 1030
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = NumHelper(9190) > 0
triggerall = StateType != A && Facing != EnemyNear,Facing
triggerall = Var(7) != 100 && Var(7) != 104 && Var(7) != 106
triggerall = Var(12) !=11 && Var(12) !=21 && Var(12) !=31 && Var(12) !=13 && Var(12) !=23 && Var(12) !=33 && Var(12) != [40, 49]
triggerall = EnemyNear,StateType = C
trigger1 = EnemyNear,StateNo = Helper(9190),Var(21)
trigger1 = EnemyNear,Time > Ceil(Helper(9190),Fvar(21))
trigger2 = EnemyNear,StateNo = Helper(9190),Var(22)
trigger2 = EnemyNear,Time > Ceil(Helper(9190),Fvar(22))
trigger3 = EnemyNear,StateNo = Helper(9190),Var(23)
trigger3 = EnemyNear,Time > Ceil(Helper(9190),Fvar(23))
trigger4 = EnemyNear,StateNo = Helper(9190),Var(24)
trigger4 = EnemyNear,Time > Ceil(Helper(9190),Fvar(24))
v = 54 
value = 1060
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = [1000,1002]
v = 54 
value = 1
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = [1025,1027]
v = 54 
value = 2
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = [1050,1052]
v = 54 
value = 3
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
trigger1 = Var(7) = 106
trigger1 = EnemyNear,Authorname = "Boomer"
trigger1 = EnemyNear,StateNo = [1075,1078]
v = 54 
value = 4
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = Var(54) = [1, 4]
trigger1 = EnemyNear,StateNo != [1000,1002]
trigger1 = EnemyNear,StateNo != [1025,1078]
trigger1 = EnemyNear,StateNo != [1050,1052]
trigger1 = EnemyNear,StateNo != [1075,1078]
v = 54 
value = 0
ignorehitpause = 1

[State -1, VarSet]
type = null;VarSet
triggerall = Var(54) != 0 && Var(54) != [1, 4]
trigger1 = EnemyNear,MoveType = H
trigger2 = EnemyNear,MoveType != A
v = 54 
value = 0
ignorehitpause = 1

;---------------------------------------------------------

;-| 2 |--------------------------------------------------------

[State -1]
type = null;ChangeState
value = IfElse(StateType = S,7150,IfElse(StateType = A,7152,7151))
triggerall = AIlevel != 0 && roundstate = 2 && NumHelper > 0
trigger1 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger1 = NumHelper(9101) > 0
trigger1 = Helper(9101),Var(14) = 1
trigger2 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger2 = NumHelper(9150) > 0
trigger2 = Helper(9150),Var(14) = 1
trigger3 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger3 = NumHelper(9175) > 0
trigger3 = Helper(9175),Var(14) = 1
trigger4 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger4 = NumHelper(9103) > 0
trigger4 = Helper(9103),Var(14) = 1
trigger5 = (MoveContact) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger5 = NumHelper(9101) > 0
trigger5 = Helper(9101),Var(14) = 1
trigger6 = (MoveContact) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger6 = NumHelper(9150) > 0
trigger6 = Helper(9150),Var(14) = 1
trigger7 = (MoveContact) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger7 = NumHelper(9175) > 0
trigger7 = Helper(9175),Var(14) = 1
trigger8 = (MoveContact) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger8 = NumHelper(9103) > 0
trigger8 = Helper(9103),Var(14) = 1

[State -1, Run Fwd]
type = null;ChangeState
value = 100
triggerall = AIlevel != 0 && roundstate = 2 && StateType != A && StateNo != 100 && StateNo != 101
trigger1 = MoveHit && stateno = 220 && animelemtime(6) >= 0 && animelemtime(8) <= 0 && P2Bodydist X <= 230 && P2StateType != A
trigger1 = Var(5) >= 1000
trigger2 = MoveHit && stateno = 225 && animelemtime(3) >= 0 && animelemtime(6) <= 0 && P2Bodydist X <= 230 && P2StateType != A
trigger2 = Var(5) >= 1000
persistent = 0

[State -1, Run Fwd]
type = null;ChangeState
value = 100
triggerall = AIlevel != 0 && roundstate = 2 && StateType != A && StateNo != 100 && StateNo != 101  && Var(54) != 1000 && Var(54) != 1025 && Var(54) != 1050 && Var(54) != 1075
trigger1 = PrevStateNo = 7560 && Ctrl && P2MoveType = H && P2StateType = S && P2StateType != L && Random <= 180
trigger2 = Ctrl  && (P2BodyDist x = [0,65]) && (P2StateNo = [120,159])& Random <= 30
trigger3 = PrevStateNo = 400 && MoveGuarded && P2BodyDist x <= 150 && Ctrl && Random <= 150
trigger4 = P2StateNo = 5300 && P2Bodydist X >= 180 && Ctrl && MoveType = I && Random <= 50
trigger5 = Ctrl && P2BodyDist x <= 200 && P2StateType != A && P2StateType != L && P2MoveType != A && Random <= 150
trigger6 = Ctrl && P2StateType != A && P2MoveType = H && (PrevStateNo = [7150,7151])
trigger7 = Ctrl && P2BodyDist x > 200 && P2StateType != L && P2MoveType != A && Var(39) != 6 && Random <= 150
trigger8 = (ctrl || (stateno = 100 || stateno = 101) || (stateno = 52 && Time >= 1)) && P2StateType != A && P2MoveType = H && PrevStateNo = 620
persistent = 0


[State -1, Run Fwd]
type = null;ChangeState
value = 100
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = EnemyNear,Ctrl = 0
trigger1 = 0
trigger2 = Var(29) = 3 && stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2
trigger3 = Var(29) = 3 && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1
trigger4 = Var(29) = 3 && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = Var(29) = 3 && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger6 = Var(29) = 3 && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger7 = Var(29) = 3 && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger8 = Var(29) = 3 && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger9 = Var(29) = 3 && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger10 = Var(29) = 3 && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0
trigger11 = Var(29) = 3 && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger12 = Var(29) = 3 && stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger13 = Var(29) = 3 && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger14 = Var(29) = 3 && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger15 = Var(29) = 3 && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger16 = Var(29) = 3 && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger17 = Var(29) = 3 && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger18 = Var(29) = 3 && stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4
trigger19 = Var(29) = 3 && stateno = 1100 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger20 = Var(29) = 3 && stateno = 1125 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger21 = Var(29) = 3 && stateno = 1150 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger22 = Var(29) = 3 && stateno = 1200 && animelemtime(4) >= 1 && animelemtime(11) <= 1
trigger23 = Var(29) = 3 && stateno = 1225 && animelemtime(4) >= 1 && animelemtime(13) <= 1
trigger24 = Var(29) = 3 && stateno = 1250 && animelemtime(4) >= 1 && animelemtime(15) <= 1
trigger25 = Var(29) = 3 && stateno = 1175 && animelemtime(6) >= 1 && animelemtime(10) <= 3
trigger26 = Var(29) = 3 && stateno = 1201 && animelemtime(4) >= 1 && animelemtime(11) <= 1
trigger27 = Var(29) = 3 && stateno = 1226 && animelemtime(4) >= 1 && animelemtime(13) <= 1
trigger28 = Var(29) = 3 && stateno = 1251 && animelemtime(4) >= 1 && animelemtime(15) <= 1


[State -1]
type = null;ChangeState
value = 105
triggerall = AIlevel != 0 && roundstate = 2 && StateType = S && (ctrl || stateno = 101 || stateno = 106)
trigger1 = (P2StateNo = [5200,5210]) && P2Bodydist X <= 75 && Random <= 50
trigger2 = P2Bodydist X <= 75 && P2MoveType = A && EnemyNear,Vel X <= 0 && Random <= 50
trigger3 = (P2Bodydist X = [80,200]) && P2Bodydist Y <= -60 && P2StateType = A && P2MoveType = A && Random <= 50
trigger4 = (P2Bodydist X = [75,150]) && P2StateType != A && P2MoveType = A && EnemyNear,Vel X <= 0 && Random <= 50
trigger5 = (P2Bodydist X = [0,100]) && P2StateType = L && PrevStateNo = 420 && Random <= 200
persistent = 0

[State -1]
type = null;ChangeState
value = 195
triggerall = AIlevel != 0 && roundstate = 2 && StateType != A
triggerall = RoundState = 3
trigger1 = ctrl || (stateno = 100 || stateno = 101)
persistent = 0

[State -1]
type = null;ChangeState
value = 7300
triggerall = AIlevel != 0 && roundstate = 2 && (statetype = S || statetype = C) && alive && Power >= 2000
trigger1 = (stateno = 5000 || (stateno = 5001 && Time < 2) || stateno = 5010 || (stateno = 5011 && Time < 2)) && (Anim = [5000,5029])
trigger1 = MoveType = H && HitFall = 0
trigger1 = EnemyNear,HitDefAttr = SCA,NA,SA
trigger1 = Var(5) >= 1000
trigger1 = (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && (P2StateNo != [600,609]) && Random <= 20 && GetHitVar(HitCount) > 3 

[State -1]
type = null;ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = AIlevel != 0 && roundstate = 2 && power >= 1000 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner = 0
trigger1 = Ctrl && PrevStateNo = 1391 && P2StateType != S && P2StateType != C && P2MoveType = H
trigger2 = MoveHit && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(21) = 700 && Random <= 200
trigger3 = NumHelper(9175) = 1
trigger3 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && power >= 2000 && Var(54) != [1000,1080]
trigger3 = EnemyNear,AnimTime <= -12 && EnemyNear,StateType != A
trigger4 = NumHelper(9175) = 1
trigger4 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && power >= 2000 && Var(54) != [1000,1080]
trigger4 = EnemyNear,StateType != A
trigger5 = NumHelper(9175) = 1
trigger5 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X > 300 && P2MoveType = A && power >= 1000 && Var(54) != [1000,1080]
trigger5= EnemyNear,AnimTime <= -12 || EnemyNear,StateType != A
trigger6 = NumHelper(9175) = 1
trigger6 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 240 && power >= 2000 && Var(54) = [1000,1080]
trigger6 = EnemyNear,AnimTime <= -10 && EnemyNear,StateType != A
trigger7 = NumHelper(9175) = 1
trigger7 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 240 && power >= 2000 && Var(54) = [1000,1080]
trigger7 = EnemyNear,StateType != A
trigger8 = NumHelper(9175) = 1
trigger8 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X > 300 && power >= 1000 && Var(54) = [1000,1080]
trigger8= EnemyNear,AnimTime <= -10 || EnemyNear,StateType != A

[State -1]
type = null;ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = AIlevel != 0 && roundstate = 2 && power >= 1000 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner > 0
triggerall = Partner,Var(39) != 6
trigger1 = Ctrl && PrevStateNo = 1391 && P2StateType != S && P2StateType != C && P2MoveType = H
trigger2 = MoveHit && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(21) = 700 && Random <= 200
trigger3 = NumHelper(9175) = 1
trigger3 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && power >= 2000 && Var(54) != [1000,1080]
trigger3 = EnemyNear,AnimTime <= -12 && EnemyNear,StateType != A
trigger4 = NumHelper(9175) = 1
trigger4 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && power >= 2000 && Var(54) != [1000,1080]
trigger4 = EnemyNear,StateType != A
trigger5 = NumHelper(9175) = 1
trigger5 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X > 300 && P2MoveType = A && power >= 1000 && Var(54) != [1000,1080]
trigger5= EnemyNear,AnimTime <= -12 || EnemyNear,StateType != A
trigger6 = NumHelper(9175) = 1
trigger6 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 240 && power >= 2000 && Var(54) = [1000,1080]
trigger6 = EnemyNear,AnimTime <= -10 && EnemyNear,StateType != A
trigger7 = NumHelper(9175) = 1
trigger7 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 240 && power >= 2000 && Var(54) = [1000,1080]
trigger7 = EnemyNear,StateType != A
trigger8 = NumHelper(9175) = 1
trigger8 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X > 300 && power >= 1000 && Var(54) = [1000,1080]
trigger8= EnemyNear,AnimTime <= -10 || EnemyNear,StateType != A

;-| 3 |--------------------------------------------------------
;-| 4 |--------------------------------------------------------


[State -1]
type = null;ChangeState
value = 40
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && p2statetype = A 
trigger1 = (MoveContact) && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 88
trigger2 = (MoveContact) && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 88
trigger3 = (MoveContact) && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 88
trigger4 = (MoveContact) && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 88
trigger5 = (MoveContact) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 88
trigger6 = (MoveContact) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 88
trigger7 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2BodyDist X <= 108
trigger8 = (MoveContact) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Power < 2000

;直跳
[State -1]
type = null;ChangeState
value = 41
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A 
trigger1 = (Ctrl || (StateNo = 100 && Random <= 200))
trigger1 = (P2StateNo = [5200,5219]) && (P2BodyDist X = [100,200]) && Random <= 30
trigger2 = (Ctrl || (StateNo = 100 && Random <= 200))
trigger2 = (P2StateNo = [120,159]) && Power <= 1000 && P2StateType != A && P2BodyDist X <= 180 && Random <= 50
trigger3 = (Ctrl || (StateNo = 100 && Random <= 200))
trigger3 = P2StateNo = 20 && Enemy,Vel X <= 0 && P2BodyDist X <= 150 && Random <= 70
trigger4 = (Ctrl || (StateNo = 100 && Random <= 200))
trigger4 = P2StateType = C && P2BodyDist X <= 200 && Random <= 120
trigger5 = (Ctrl || (StateNo = 100 && Random <= 200))
trigger5 = EnemyNear,StateType = A && EnemyNear,Vel X > 0 && P2BodyDist X <= 230 && Random <= 150

;前跳+後跳
[State -1]
type = null;ChangeState
value = 41
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A 
trigger1 = (Ctrl || StateNo = 100) 
trigger1 = EnemyNear,StateType = A && P2BodyDist X <= 200 && Enemy,Vel Y < 0 && Random <= 150
trigger2 = Ctrl 
trigger2 = EnemyNear,StateType = S && EnemyNear,MoveType != H && P2BodyDist X >= 200 && Random <= 100
trigger3 = (Ctrl || StateNo = 100) 
trigger3 = (Enemy, NumProj > 0 || Enemy, NumHelper > 0) && P2BodyDist X >= 180 && Random <= 20

[State -1, 1]
type = null;VarSet
triggerall = AIlevel != 0
triggerall = (StateNo = 40 || StateNo = 41) && Time = 1
trigger1 = P2StateNo = [5200,5219]
trigger2 = (P2StateNo = [120,159]) && Power <= 1000 && P2StateType != A && P2BodyDist X <= 180
trigger3 = P2StateNo = 20 && Enemy,Vel X <= 0 && P2BodyDist X <= 150
trigger4 = P2StateType = C && P2BodyDist X <= 200
trigger5 = EnemyNear,StateType = A && EnemyNear,Vel X > 0 && P2BodyDist X <= 200
sysvar(1) = 0

[State -1, 2]
type = VarSet
triggerall = AIlevel != 0
triggerall = (StateNo = 40 || StateNo = 41) && Time = 1
trigger1 = P2StateType = A && P2MoveType = H
trigger2 = (Enemy, NumProj > 0 || Enemy, NumHelper > 0)
sysvar(1) = 1

[State -1, 3]
type = null;VarSet
triggerall = AIlevel != 0
triggerall = Var(4) != 1
triggerall = (StateNo = 40 || StateNo = 41) && Time = 1
trigger1 = P2StateType = C && P2BodyDist X <= 200 && P2StateType != A
sysvar(1) = -1

[State -1]
type = null;ChangeState
value = 1375
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Power >= 1000 && Pos Y >= -230 && Var(54) != 1 && Var(54) != 4
trigger1 = ctrl && P2BodyDist X <= 300 && EnemyNear,MoveType = H && EnemyNear,StateNo = 5070 && RanDom <= 900
trigger2 = ctrl && P2BodyDist X <= 300 && EnemyNear,MoveType = H && EnemyNear,StateType = S && RanDom <= 900
trigger2 = (EnemyNear,StateNo != [120,159]) && EnemyNear,StateNo != 5300 && EnemyNear,StateNo != 5400
trigger2 = PrevStateNo != [600,699]

[State -1]
type = null;ChangeState
value = 605
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && P2StateType = A && Var(54) != 1 && Var(54) != 4
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim != 41
trigger1 = P2Bodydist X <= 150 && P2Bodydist Y <= 0 && Random <= 75 && Anim = 42
trigger2 = StateNo != 5210
trigger2 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim != 41
trigger2 = P2Bodydist X <= 100 && P2Bodydist Y <= 0 && Random <= 50 && Anim = 43
trigger3 = StateNo = 5210 && Vel X != 0
trigger3 = ctrl
trigger3 = P2Bodydist X <= 150 && P2Bodydist Y <= 0

[State -1]
type = null;ChangeState
value = 611
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A
trigger1 = MoveGuarded && stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0 && Random <= 50

[State -1]
type = null;ChangeState
value = 610
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim = 41
trigger1 = P2Bodydist X <= 230 && P2StateType = A && Random <= 350
trigger2 = StateNo != 5210
trigger2 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim = 41
trigger2 = P2Bodydist X <= 230 && P2MoveType = H
trigger3 = StateNo = 5210 && Vel X = 0
trigger3 = P2Bodydist X <= 230 && P2StateType = A && Random <= 350

[State -1]
type = null;ChangeState
value = 616
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A 
trigger1 = (MoveContact) && stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2

[State -1]
type = null;ChangeState
value = 615
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim != 41
trigger1 = P2Bodydist X <= 200 && P2Bodydist Y <= 0 && Random <= 100 && Anim = 42
trigger2 = StateNo != 5210
trigger2 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim != 41
trigger2 = P2Bodydist X <= 150 && P2Bodydist Y <= 0 && Random <= 100 && Anim = 43
trigger3 = StateNo != 5210
trigger3 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim != 41
trigger3 = P2Bodydist X <= 130 && P2Bodydist Y > 0 && P2StateType = A && Anim = 42
trigger4 = MoveGuarded && stateno = 605 
trigger5 = StateNo = 50 && Anim = 42 && Time > 20 && Random <= 300
trigger5 = P2StateType = C
trigger6 = StateNo = 5210 && Vel X > 0
trigger6 = P2Bodydist X <= 200 && P2Bodydist Y <= 0 && Random <= 100
trigger7 = StateNo = 5210 && Vel X < 0
trigger7 = P2Bodydist X <= 150 && P2Bodydist Y <= 0 && Random <= 100
trigger8 = StateNo = 5210 && Vel X > 0
trigger8 = P2Bodydist X <= 130 && P2Bodydist Y > 0 && P2StateType = A

[State -1]
type = null;ChangeState
value = 630
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116))
trigger1 = P2Bodydist X <= 150 && Random <= 50 && P2StateType = A
trigger2 = (MoveHit || Var(29) = 3) && stateno = 605 

[State -1]
type = null;ChangeState
value = 621
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A
trigger1 = (MoveHit || Var(29) = 3) && stateno = 610 && P2StateType = A

[State -1]
type = null;ChangeState
value = 620
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = StateNo != 5210
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim = 41
trigger1 = P2Bodydist X <= 200 && Vel Y > 0 && Pos Y >= -195 && Random <= 300
trigger2 = StateNo != 5210
trigger2 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && Anim = 41
trigger2 = P2StateType = A && Random <= 500
trigger3 = StateNo = 5210 && Vel X = 0
trigger3 = ctrl
trigger3 = P2Bodydist X <= 200 && Vel Y > 0 && Pos Y >= -195 && Random <= 300
trigger4 = StateNo = 5210 && Vel X = 0
trigger4 = ctrl
trigger4 = P2StateType = A && Random <= 500

[State -1]
type = null;ChangeState
value = 626
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A
trigger1 = (MoveHit || Var(29) = 3) && stateno = 615 && P2StateType = A

[State -1]
type = null;ChangeState
value = 625
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = StateNo != 5210
trigger1 = StateNo = 50 && P2Bodydist X <= 250  && Vel X > 0 && Pos Y >= -190 && EnemyNear,Const(size.head.pos.y) > 110
trigger1 = P2StateType = S && Random <= 300
trigger2 = StateNo != 5210
trigger2 = StateNo = 50 && Anim = 42 && P2Bodydist X <= 250 && Time > 12  && EnemyNear,Const(size.head.pos.y) <= 110
trigger2 = P2MoveType != H && P2StateType = S && Random <= 300
trigger3 = StateNo = 5210 && Vel X != 0
trigger3 = Ctrl && P2Bodydist X <= 250  && Vel X > 0 && Pos Y >= -190 && EnemyNear,Const(size.head.pos.y) > 110
trigger3 = P2StateType = S && Random <= 300
trigger4 = StateNo = 5210 && Vel X != 0
trigger4 = Ctrl && P2Bodydist X <= 250  && Vel X > 0 && Pos Y >= -190 && EnemyNear,Const(size.head.pos.y) > 110
trigger4 = P2Bodydist X <= 250 && Time > 12  && EnemyNear,Const(size.head.pos.y) <= 110
trigger4 = P2MoveType != H && P2StateType = S && Random <= 300

;-| 5 |--------------------------------------------------------

[State -1]
type = null;ChangeState
value = 1250
;triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2BodyDist X < 70
;triggerall = NumProj = 0
trigger1 = ctrl && (P2StateType = A || P2MoveType = I) && Random <= 77 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
;trigger1 = Ctrl && PrevStateNo = 1391 && P2StateType != S && P2StateType != C && P2MoveType = H

[State -1]
type = null;ChangeState
value = ifelse(NumHelper(7770) = 1 && NumHelper(7771) = 1, 7603, 7600)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = NumPartner = 0 
triggerall = Var(39) = 6
triggerall = Var(48) = 1
trigger1 = MoveHit && stateno = 1100 && animelemtime(8) >= 1
trigger2 = MoveHit && stateno = 1125 && animelemtime(8) >= 1
trigger3 = MoveHit && stateno = 1150 && animelemtime(8) >= 1
trigger4 = stateno = 1310 && animelemtime(1) >= 1
trigger5 = stateno = 1330 && animelemtime(1) >= 1
trigger6 = stateno = 1360 && animelemtime(1) >= 1
trigger7 = stateno = 1075 && animelemtime(12) >= 1
trigger8 = MoveHit && stateno = 1175 && animelemtime(10) >= 1
trigger9 = stateno = 2010 && Anim = 2010 && animelemtime(36) >= 0

[State -1]
type = null;ChangeState
value = ifelse(NumHelper(7770) = 1 && NumHelper(7771) = 1, 7603, 7600)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = NumPartner > 0 
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) = 1
trigger1 = MoveHit && stateno = 1100 && animelemtime(8) >= 1
trigger2 = MoveHit && stateno = 1125 && animelemtime(8) >= 1
trigger3 = MoveHit && stateno = 1150 && animelemtime(8) >= 1
trigger4 = stateno = 1310 && animelemtime(1) >= 1
trigger5 = stateno = 1330 && animelemtime(1) >= 1
trigger6 = stateno = 1360 && animelemtime(1) >= 1
trigger7 = stateno = 1075 && animelemtime(12) >= 1
trigger8 = MoveHit && stateno = 1175 && animelemtime(10) >= 1
trigger9 = stateno = 2010 && Anim = 2010 && animelemtime(36) >= 0

[State -1]
type = null;ChangeState
value = Ifelse(NumHelper(9175) = 1 && Power >= 1000,1175,1150)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = Var(39) = 6
triggerall = NumHelper(9175) = 1
trigger1 = Ctrl && PrevStateNo = 7560 && P2StateType = A && P2MoveType = H
trigger2 = StateNo = 7560 && animelemtime(17) >= 1 && P2StateType = A && P2MoveType = H

[State -1]
type = null;ChangeState
value = ifelse(NumHelper(7770) = 1 && NumHelper(7771) = 1, 7603, 7600)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = Var(39) = 6 && NumPartner = 0
triggerall = Var(48) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X >= 400 && P2StateType != S && Random <= 350
trigger2 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1
trigger3 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger4 = stateno = 7560 && Time >= 44 && P2MoveType = H && P2StateType = A
trigger5 = Ctrl && P2MoveType = A && P2BodyDist X >= 450 && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && (P2StateNo != [600,609])
trigger6 = Ctrl && PrevStateNo = 7560 && P2StateType = A && P2MoveType = H
trigger7 = StateNo = 7560 && Time >= 44 && P2StateType = A && P2MoveType = H
trigger8 = Ctrl && PrevStateNo = 2010 && P2StateType = A && P2MoveType = H && BackEdgeBodyDist <= 120
trigger9 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X >= 300 && P2MoveType != A && Random <= 350

[State -1]
type = null;ChangeState
value = ifelse(NumHelper(7770) = 1 && NumHelper(7771) = 1, 7603, 7600)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = NumPartner > 0
triggerall = Partner,Var(39) = 6
triggerall = Var(48) = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X >= 400 && P2StateType != S && Random <= 350
trigger2 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1
trigger3 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger4 = stateno = 7560 && Time >= 44 && P2MoveType = H && P2StateType = A
trigger5 = Ctrl && P2MoveType = A && P2BodyDist X >= 450 && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && (P2StateNo != [600,609])
trigger6 = Ctrl && PrevStateNo = 7560 && P2StateType = A && P2MoveType = H
trigger7 = StateNo = 7560 && Time >= 44 && P2StateType = A && P2MoveType = H
trigger8 = Ctrl && PrevStateNo = 2010 && P2StateType = A && P2MoveType = H && BackEdgeBodyDist <= 120
trigger9 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X >= 300 && P2MoveType != A && Random <= 350

[State -1]
type = null;ChangeState
value = 2000
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 2000 && BackEdgeDist <= 350
triggerall = NumPartner = 0 
triggerall = Var(39) = 6
triggerall = Var(48) > 0
trigger1 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger2 = MoveHit && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1
trigger3 = stateno = 7560 && animelemtime(17) >= 1 && P2MoveType = H && P2StateType = A && EnemyNear, Pos Y >= -250

[State -1]
type = null;ChangeState
value = 2000
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 2000 && BackEdgeDist <= 350
triggerall = NumPartner > 0 
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) > 0
trigger1 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger2 = MoveHit && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1
trigger3 = stateno = 7560 && animelemtime(17) >= 1 && P2MoveType = H && P2StateType = A && EnemyNear, Pos Y >= -250

[State -1]
type = null;ChangeState
value = 1175
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000 && Var(54) != 2 && Var(54) != 4 && Var(54) != [1000,1080]
triggerall = NumHelper(9175) = 1
trigger1 = StateNo = 7560 && Time > 44 && P2BodyDist X <= 250
trigger1 = EnemyNear,AnimTime <= -8 && EnemyNear, StateType != A
trigger2 = StateNo = 7560 && Time > 44 && P2BodyDist X <= 250
trigger2 = EnemyNear, StateType = A && EnemyNear,Pos Y <= -170

[State -1]
type = null;ChangeState
value = 1175
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000 && Var(54) != 2 && Var(54) != 4 && Var(54) != [1000,1080]
triggerall = NumHelper(9175) = 1
trigger1 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2MoveType = A
trigger2 = stateno = 7560 && Time > 44 && P2MoveType = H && P2StateType = A && EnemyNear, Pos Y >= -180
trigger3 = ctrl && PrevStateNo = 7560 && P2BodyDist X <= 230 && P2MoveType = A
trigger3 = EnemyNear,AnimTime <= -10
trigger4 = StateNo = 7560 && Time > 44 && P2MoveType = A && P2BodyDist X <= 220 && Random <= 950
trigger4 = EnemyNear,AnimTime <= -10 && EnemyNear, StateType != A
trigger5 = StateNo = 7560 && Time > 44 && P2MoveType = A && P2BodyDist X <= 220 && Random <= 950
trigger5 = EnemyNear, StateType = A
trigger6 = Var(48) = 0
trigger6 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger6 =  Var(21) < 700
trigger7 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1

[State -1]
type = null;ChangeState
value = 1150
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2BodyDist X < 150 && P2BodyDist X >= 70
triggerall = NumProj = 0
trigger1 = ctrl && (P2StateType = A || P2MoveType = I) && Random <= 67 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
;triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
;triggerall = NumPartner = 0 
;triggerall = Var(39) = 6
;triggerall = Var(48) > 0
;trigger1 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && ;P2StateType != L
;trigger2 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1
;trigger3 = stateno = 7560 && Time > 44 && P2MoveType = H && P2StateType = A && EnemyNear, Pos Y >= -250

[State -1]
type = null;ChangeState
value = 1150
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = NumPartner > 0 
triggerall = (Var(39) = 6 || Partner,Var(39) = 6)
triggerall = Var(48) > 0
trigger1 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger2 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && Var(34) = 1
trigger3 = stateno = 7560 && Time > 44 && P2MoveType = H && P2StateType = A && EnemyNear, Pos Y >= -250

[State -1]
type = null;ChangeState
value = 2000
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = stateno = 7560 && Time > 44 && P2MoveType = H && P2StateType = A && Helper,Var(19) = 1
trigger2 = NumHelper(9150) = 1
trigger2 = Helper(9150),Var(19) = 1
trigger2 = MoveHit && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger3 = NumHelper(9101) = 1
trigger3 = Helper(9101),Var(19) = 1
trigger3 = MoveHit && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger4 = NumHelper(9175) = 1
trigger4 = Helper(9175),Var(19) = 1
trigger4 = MoveHit && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger5 = NumHelper(9103) = 1
trigger5 = Helper(9103),Var(19) = 1
trigger5 = MoveHit && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger6 = NumHelper(9150) = 1
trigger6 = Helper(9150),Var(19) = 1
trigger6 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger6 = P2StateType = A
trigger7 = NumHelper(9101) = 1
trigger7 = Helper(9101),Var(19) = 1
trigger7 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger7 = P2StateType = A
trigger8 = NumHelper(9175) = 1
trigger8 = Helper(9175),Var(19) = 1
trigger8 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger8 = P2StateType = A
trigger9 = NumHelper(9103) = 1
trigger9 = Helper(9103),Var(19) = 1
trigger9 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0
trigger9 = P2StateType = A

[State -1]
type = null;ChangeState
value = 1175
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000 && Var(54) = [1000,1060]
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 230 && P2MoveType = A && Random <= 200
trigger1 = EnemyNear,AnimTime <= -8 && EnemyNear, StateType != A
trigger2 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 260 && P2MoveType = A && Random <= 200
trigger2 = EnemyNear, StateType = A && EnemyNear,Pos Y <= -170
trigger3 = ctrl && PrevStateNo = 7560 && P2BodyDist X <= 200 && P2MoveType = A
trigger3 = EnemyNear,AnimTime <= -8

[State -1]
type = null;ChangeState
value = 1175
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000 && Var(54) != 2 && Var(54) != 4 && Var(54) != [1000,1080]
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && Random <= 200
trigger1 = EnemyNear,AnimTime <= -10 && EnemyNear, StateType != A
trigger2 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && Random <= 200
trigger2 = EnemyNear, StateType = A
trigger3 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && Random <= 500
trigger3 = NumPartner > 0 
trigger3 = Var(39) = 6 || Partner,Var(39) = 6
trigger3 = EnemyNear,AnimTime <= -10 && EnemyNear, StateType != A
trigger4 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 220 && P2MoveType = A && Random <= 500
trigger4 = NumPartner > 0 
trigger4 = Var(39) = 6 || Partner,Var(39) = 6
trigger4 = EnemyNear, StateType = A
trigger5 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 200 && P2MoveType = A && Random <= 500
trigger5 = NumPartner = 0 
trigger5 = Var(39) = 6
trigger5 = EnemyNear,AnimTime <= -10 && EnemyNear, StateType != A
trigger6 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 200 && P2MoveType = A && Random <= 500
trigger6 = NumPartner = 0 
trigger6 = Var(39) = 6
trigger6 = EnemyNear, StateType = A
trigger7 = (MoveContact) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2MoveType = A
trigger8 = (MoveContact) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && P2MoveType = A
trigger9 = ctrl && PrevStateNo = 7560 && P2BodyDist X <= 200 && P2MoveType = A
trigger9 = EnemyNear,AnimTime <= -10
trigger10 = Ctrl && PrevStateNo = 1391 && P2StateType != S && P2StateType != C && P2MoveType = H && P2BodyDist Y <= -700
trigger10 = EnemyNear,AnimTime <= -10
trigger11 = MoveGuarded && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && Random <= 150

;-|起身防禦|--------------------------------------------------------

[State -1]
type = null;ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && Var(55) = 5120
triggerall = Statetype = A
triggerall = Ctrl
trigger1 = (Enemy, NumProj > 0 || Enemy, NumHelper > Helper(9190),Var(26))
trigger1 = InGuardDist && EnemyNear,StateType = C
value = 132

[State -1]
type = ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && random <= 21 ;Var(55) = 5120 && StateNo != 100
triggerall = Statetype != A && (EnemyNear,StateType != S && EnemyNear,StateType != A)
triggerall = Ctrl
trigger1 = InGuardDist && EnemyNear,MoveType = A
trigger2 = P2BodyDist X < 0 && EnemyNear,MoveType = A
value = 131
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && random <= 21 ; Var(55) = 5120 && StateNo != 100
triggerall = Statetype != A && (EnemyNear,StateType = S || EnemyNear,StateType = A)
triggerall = Ctrl
trigger1 = InGuardDist && EnemyNear,MoveType = A 
trigger2 = P2BodyDist X < 0 && EnemyNear,MoveType = A
value = 130
ignorehitpause = 1
persistent = 0

[State -1]
type = null;ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && Var(55) = 5120
triggerall = Statetype = A
triggerall = Ctrl
trigger1 = InGuardDist && EnemyNear,MoveType = A && EnemyNear,StateType != C  
trigger2 = P2BodyDist X < 0 && EnemyNear,MoveType = A
value = 132

;-|一般防禦|--------------------------------------------------------

[State -2,SHANNON]
type = ChangeState
triggerall = AIlevel != 0
triggerall = (StateNo = [0,39]) || (StateNo = [100,104])
triggerall = Statetype != L && Statetype != A && inguarddist && EnemyNear,MoveType = A
triggerall = NumHelper > 0	
trigger1 = NumHelper(9150) = 1 
trigger1 = Helper(9150),Var(12) = 1
trigger2 = NumHelper(9101) = 1
trigger2 = Helper(9101),Var(12) = 1
trigger3 = NumHelper(9175) = 1
trigger3 = Helper(9175),Var(12) = 1
trigger4 = NumHelper(9103) = 1
trigger4 = Helper(9103),Var(12) = 1
value = 130

[State -2,SHANNON]
type = null;ChangeState
triggerall = AIlevel != 0
triggerall = (StateNo = [41,59]) || (StateNo = [110,119])
triggerall = Statetype = A && inguarddist && EnemyNear,MoveType = A
triggerall = NumHelper > 0	
trigger1 = NumHelper(9150) = 1 
trigger1 = Helper(9150),Var(12) = 1
trigger2 = NumHelper(9101) = 1
trigger2 = Helper(9101),Var(12) = 1
trigger3 = NumHelper(9175) = 1
trigger3 = Helper(9175),Var(12) = 1
trigger4 = NumHelper(9103) = 1
trigger4 = Helper(9175),Var(12) = 1
value = 132

[State -1]
type = null;ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && StateNo != 100 && StateNo != 101
triggerall = Statetype = A
triggerall = (Ctrl || (StateNo = [10,39]) || (StateNo = 52 && Time >= 1))
trigger1 = (Enemy, NumProj > 0 || Enemy, NumHelper > Helper(9190),Var(26))
trigger1 = InGuardDist
value = 132

[State -1]
type = ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && StateNo != 100 && StateNo != 101
triggerall = Statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || (StateNo = 52 && Time >= 1))
trigger1 = InGuardDist && EnemyNear,MoveType = A && EnemyNear,StateType = C && (Var(12) != [11, 13]) && (Var(12) != [21, 23])
trigger2 = P2Dist X < -5 && EnemyNear,MoveType = A && EnemyNear,StateType = C && (Var(12) != [11, 13]) && (Var(12) != [21, 23])
trigger3 = InGuardDist && EnemyNear,MoveType = A && (Var(12) = [31, 33])
trigger4 = P2Dist X < -5 && EnemyNear,MoveType = A && (Var(12) = [31, 33])
value = 131

[State -1]
type = ChangeState
triggerall = AIlevel != 0 && roundstate = 2 && StateNo != 100 && StateNo != 101
triggerall = Statetype != A
triggerall = (Ctrl || (StateNo = [10,39]) || (StateNo = 52 && Time >= 1))
trigger1 = InGuardDist && EnemyNear,MoveType = A && EnemyNear,StateType != C && (Var(12) != [31, 33])
trigger2 = P2Dist X < -5 && EnemyNear,MoveType = A && EnemyNear,StateType != C && (Var(12) != [31, 33])
trigger3 = InGuardDist && EnemyNear,MoveType = A && (Var(12) = [11, 13]) || (Var(12) = [21, 23])
trigger4 = P2Dist X < -5 && EnemyNear,MoveType = A && (Var(12) = [11, 13]) || (Var(12) = [21, 23])
value = 130

[State -1]
type = null;ChangeState
triggerall = AIlevel != 0
triggerall = Statetype = A
triggerall = (Ctrl || (StateNo = [10,39]) || (StateNo = 52 && Time >= 1))
trigger1 = InGuardDist 
trigger1 = EnemyNear,MoveType = A && EnemyNear,StateType != C  
trigger2 = P2Dist X < -5 && EnemyNear,MoveType = A
value = 132

;-|一般打擊|--------------------------------------------------------
[State -1]
type = null;ChangeState
value = 400
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != L && Var(54) != 3 && Var(54) != 4
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && (P2BodyDist x = [0,65]) && (EnemyNear,MoveType = A && EnemyNear,AnimTime <= -7 && Random <= 300 || Random <= 100)
trigger2 = stateno = 400 && animelemtime(4) >= 2 && animelemtime(5) <= 0 && (P2BodyDist x = [20,57]) && P2StateType != A
trigger3 = (MoveContact) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && P2BodyDist x <= 60 && P2StateType != A
trigger4 = (ctrl || (stateno = 100 || stateno = 101)) && (P2BodyDist x = [0,65]) && (PrevStateNo = [120,159]) && P2MoveType = A
trigger5 = Ctrl && PrevStateNo = 810 && P2StateType = A && P2MoveType = H && P2BodyDist x <= 60
trigger6 = (ctrl || (stateno = 100 || stateno = 101) || (stateno = 52 && Time >= 1)) 
trigger6 = P2BodyDist x <= 68 && EnemyNear,StateType != A && EnemyNear,MoveType = H && PrevStateNo = 616

[State -1]
type = null;ChangeState
value = IfElse(P2Dist X <= 103,205,200)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2StateType = A && (P2BodyDist x = [0,65]) && Random <= 100
trigger2 = (MoveContact) && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1 && (P2BodyDist x = [26,100])

[State -1]
type = null;ChangeState
value = 410
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != A  && Var(54) != 3 && Var(54) != 4
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2StateType = S && P2BodyDist x <= 70 && Random <= 30
trigger2 = MoveGuarded && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && P2BodyDist x <= 65 && Random <= 300 
trigger3 = (ctrl || (stateno = 100 || stateno = 101)) && P2StateType = L && P2BodyDist x <= 70 && P2StateNo != 5120
trigger4 = (ctrl || (stateno = 100 || stateno = 101) || (stateno = 52 && Time >= 1)) && P2StateType != A && P2MoveType = H && PrevStateNo = 615
trigger5 = (ctrl || (stateno = 100 || stateno = 101) || (stateno = 52 && Time >= 1)) && P2StateType != A && P2MoveType = H && PrevStateNo = 625
trigger6 = (ctrl || (stateno = 100 || stateno = 101) || (stateno = 52 && Time >= 1)) 
trigger6 = P2BodyDist x > 60 && EnemyNear,StateType != A && EnemyNear,MoveType = H && PrevStateNo = 616

[State -1]
type = null;ChangeState
value = 411
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != A
trigger1 = MoveGuarded && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 80 && Random <= 500
trigger2 = MoveGuarded && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && Random <= 500

[State -1]
type = null;ChangeState
value = 431
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != A
trigger1 = (MoveHit || Var(29) = 3) && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 120

[State -1]
type = null;ChangeState
value = 231
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = (MoveHit || Var(29) = 3) && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2StateType != L
trigger2 = (MoveContact) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3

[State -1]
type = null;ChangeState
value = 230
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = Ctrl && PrevStateNo = 7560 && P2StateType != S && P2StateType != C && P2MoveType = H && Power >= 1000 && P2BodyDist x <= 100 && Random <= 150

[State -1]
type = null;ChangeState
value = IfElse(P2Dist X <= 108,215,210)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Var(54) != 3 && Var(54) != 4
trigger1 = ctrl  && (P2BodyDist X = [100,160]) && P2MoveType != H && Random <= 30 && Var(54) != [1000,1080]
trigger2 = ctrl  && (P2BodyDist X = [100,160]) && Enemy,AnimTime <= -8 && Var(54) = [1025,1060]
trigger3 = (MoveContact) && stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2 && (P2BodyDist X = [70,160])
trigger4 = (MoveContact) && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1 && (P2BodyDist X = [70,160])
trigger5 = (MoveHit || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && P2StateType = A

[State -1]
type = null;ChangeState
value = 240
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != A
trigger1 = MoveGuarded && stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2 && P2BodyDist x <= 65 && Random <= 85 
trigger2 = MoveGuarded && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1 && P2BodyDist x <= 65 && Random <= 85 
trigger3 = MoveGuarded && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 160 && Random <= 50 
trigger4 = MoveGuarded && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 160 && Random <= 50 
trigger5 = MoveGuarded && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 108 && Random <= 300 
trigger6 = MoveGuarded && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 108 && Random <= 300 
trigger7 = MoveGuarded && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && P2BodyDist x <= 95 && Random <= 60 
trigger8 = MoveGuarded && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2BodyDist x <= 80 && Random <= 60
trigger9 = MoveGuarded && stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2BodyDist x <= 80 && Random <= 60 

[State -1]
type = null;ChangeState
value = IfElse(P2Dist X <= 125,225,220)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2BodyDist x <= 162
trigger1 = (MoveHit || Var(29) = 3) && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 120
trigger2 = (MoveHit || Var(29) = 3) && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X <= 120
trigger3 = (MoveHit || Var(29) = 3) && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger4 = (MoveHit || Var(29) = 3) && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger5 = (MoveHit || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2StateType != C
trigger6 = (MoveHit || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2StateType != C
trigger7 = (MoveHit || Var(29) = 3) && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2StateType != L
trigger8 = (MoveHit || Var(29) = 3) && stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger9 = (MoveHit || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger10 = (MoveHit || Var(29) = 3) && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3
trigger11 = (MoveContact) && stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 2 && P2StateType = A 
trigger12 = (MoveContact) && stateno = 205 && animelemtime(2) >= 1 && animelemtime(4) <= 1 && P2StateType = A 
trigger13 = (MoveContact) && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && P2StateType = A 
trigger14 = MoveGuarded && stateno = 215 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2StateType = A && (P2BodyDist X = [70,125])
trigger15 = MoveGuarded && stateno = 216 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2StateType = A && (P2BodyDist X = [70,125])

[State -1]
type = null;ChangeState
value = 420
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != A && Var(54) != 3 && Var(54) != 4
trigger1 = (ctrl || (stateno = 100 || stateno = 101) && Time > 7) && (P2BodyDist X = [90,165]) && P2MoveType != I && P2StateType != A && P2StateType != L && Random <= 50 && Var(54) != [1000,1080]
trigger2 = (MoveContact) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger3 = (MoveContact) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3
trigger4 = (MoveHit || Var(29) = 3) && stateno = 410 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2StateType = L
trigger5 = (MoveHit || Var(29) = 3) && stateno = 411 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2BodyDist x >= 130
trigger6 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger7 = (MoveHit || Var(29) = 3) && stateno = 430 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2StateType = C
trigger8 = (MoveHit || Var(29) = 3) && stateno = 431 && animelemtime(3) >= 1 && animelemtime(5) <= 3 && P2StateType = C
trigger9 = MoveGuarded && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && P2StateType = S && Random <= 150
trigger10 = MoveGuarded && stateno = 400 && animelemtime(3) >= 1 && animelemtime(5) <= 0 && P2BodyDist x <= 150 && Random <= 25
trigger11 = MoveGuarded && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist x <= 160 && Random <= 150
trigger12 = MoveGuarded && stateno = 211 && animelemtime(4) >= 1 && animelemtime(5) <= 3 && Random <= 25
trigger13 = (MoveHit || Var(29) = 3) && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X >= 110 && P2BodyDist x <= 150
trigger14 = (MoveHit || Var(29) = 3) && stateno = 230 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2StateType = C
trigger15 = (MoveHit || Var(29) = 3) && stateno = 231 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2StateType = C
trigger16 = (ctrl || (stateno = 100 || stateno = 101) && Time > 7) && (P2BodyDist X = [90,175]) && (Var(54) = 1030 || Var(54) = 1060)

;P2Dist X = [60,80]
;P2Dist Y = [120,140]
[State -1]
type = null;ChangeState
value = ifelse(random <= 499, 1450, 1350)
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A ;&& P2BodyDist X < 70
triggerall = stateno = 50 && time >= 13 ;NumProj = 0
trigger1 = ctrl ;&& (P2StateType = A || P2MoveType = I) && Random > 77 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger1 = P2Dist X != [60,80]
trigger1 = P2Dist Y != [120,140]
;triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2StateType != A && P2StateType != L && P2BodyDist X <= 26 && P2MoveType != H && (Enemy,PrevStateNo != [5100,5299]) && PrevStateNo != 410 && PrevStateNo != 800
;trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && (PrevStateNo != [200,899]) && (P2StateNo != [120,159]) && (PrevStateNo != [120,159]) 
;trigger1 = EnemyNear,GetHitVar(HitCount) = 0
persistent = 0

;---------------------------------------------------------

[State -1]
type = null;ChangeState
value = 1050
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && (P2BodyDist X = [230,400])
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
trigger1 = ctrl && (P2StateType = A || P2MoveType = I) && Random <= 10

[State -1]
type = null;ChangeState
value = 1075
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000
triggerall = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner = 0
trigger1 = Ctrl && P2MoveType = A && P2BodyDist X >= 410 && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && (P2StateNo != [600,609]) && Var(54) = 0
trigger2 = (MoveHit || Var(29) = 3) && stateno = 1100 && animelemtime(8) >= 1 && Var(48) = 1
trigger3 = (MoveHit || Var(29) = 3) && stateno = 1125 && animelemtime(8) >= 1 && Var(48) = 1
trigger4 = (MoveHit || Var(29) = 3) && stateno = 1150 && animelemtime(8) >= 1 && Var(48) = 1
trigger5 = (MoveHit || Var(29) = 3) && stateno = 1310 && animelemtime(1) >= 1 && Var(48) = 1
trigger6 = (MoveHit || Var(29) = 3) && stateno = 1330 && animelemtime(1) >= 1 && Var(48) = 1
trigger7 = (MoveHit || Var(29) = 3) && stateno = 1360 && animelemtime(1) >= 1 && Var(48) = 1
trigger8 = ctrl && (Var(54) = [1,4]) && (P2Dist X = [110,420])
trigger9 = ctrl && (Var(54) = [1000,1080]) && P2Dist X >= 350 && EnemyNear,AnimTime <= -24 && Random <= 100

[State -1]
type = null;ChangeState
value = 1075
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000
triggerall = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner > 0
triggerall = Partner,Var(39) != 6
trigger1 = Ctrl && P2MoveType = A && P2BodyDist X >= 450 && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && (P2StateNo != [600,609])
trigger2 = ctrl && (Var(54) = [1,4]) && (P2Dist X = [110,420])
trigger3 = ctrl && (Var(54) = [1000,1080]) && P2Dist X >= 350 && EnemyNear,AnimTime <= -24 && Random <= 100

[State -1]
type = null;ChangeState
value = 1150
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && (P2BodyDist X = [150,220]) && P2MoveType != H && P2StateType = A && Random <= 50
trigger2 = (MoveHit || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2StateType = A
trigger3 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && P2StateType = A && P2BodyDist X <= 150
trigger4 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L && Power < 1000
trigger5 = (MoveHit || Var(29) = 3) && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L && Power >= 1000 && Random <= 150

[State -1]
type = null;ChangeState
value = 1200
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && (P2BodyDist X = [170,300]) && P2MoveType != H && Enemy,Ctrl = 0 && P2StateType != L && Random <= 30
trigger2 = (MoveHit || Var(29) = 3) && stateno = 210 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X >= 120
trigger3 = (MoveHit || Var(29) = 3) && stateno = 211 && animelemtime(4) >= 1 && animelemtime(6) <= 3 && P2BodyDist X >= 120
trigger4 = (MoveHit || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2StateType = A
trigger5 = (MoveHit || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2StateType != A
trigger6 = (MoveHit || Var(29) = 3) && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3 && P2StateType = A && P2BodyDist X >= 150
trigger7 = Ctrl && PrevStateNo = 1310 && P2StateType = A && P2MoveType = H && Var(34) = 2 && Enemy,GetHitVar(HitCount) < 2
trigger8 = Ctrl && PrevStateNo = 1330 && P2StateType = A && P2MoveType = H && Var(34) = 2 && Enemy,GetHitVar(HitCount) < 2
trigger9 = Ctrl && PrevStateNo = 1360 && P2StateType = A && P2MoveType = H && Var(34) = 2 && Enemy,GetHitVar(HitCount) < 2
trigger10 = Ctrl && PrevStateNo = 1000 && P2StateType = A && (P2BodyDist X = [90,300]) && Random <= 150
trigger11 = Ctrl && PrevStateNo = 1025 && P2StateType = A && (P2BodyDist X = [90,300]) && Random <= 150
trigger15 = Ctrl && PrevStateNo = 1050 && P2StateType = A && (P2BodyDist X = [90,300]) && Random <= 150

[State -1]
type = null;ChangeState
value = 1375
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Power >= 1000 && Pos Y >= -230 && Var(54) != 1 && Var(54) != 4
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && (P2BodyDist X = [150,500]) && P2MoveType = A && P2StateType != A && (P2StateNo = [1000,3999]) && RanDom <= 300
trigger2 = (MoveHit || Var(29) = 3) && stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0 && P2StateType != A && Vel Y < 0
trigger3 = (MoveHit || Var(29) = 3) && stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0 && P2StateType != A && Vel Y < 0
trigger4 = (MoveHit || Var(29) = 3) && stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && P2StateType = A && Var(34) = 2 && Enemy,GetHitVar(HitCount) < 2
trigger5 = (MoveHit || Var(29) = 3) && stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0 && P2StateType = A && Var(34) = 2 && Enemy,GetHitVar(HitCount) < 2

[State -1]
type = null;ChangeState
value = 1350
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && (P2BodyDist X = [250,500]) && P2MoveType != H && P2StateType != L && (P2StateNo != [0,39]) && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && RanDom <= 10
trigger2 = (MoveHit || Var(29) = 3) && stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && P2StateType = A && P2BodyDist Y >= 0
trigger3 = (MoveHit || Var(29) = 3) && stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && P2StateType = A && P2BodyDist Y >= 0
trigger4 = (MoveHit || Var(29) = 3) && stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger5 = (MoveHit || Var(29) = 3) && stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0

[State -1]
type = null;ChangeState
value = 1325
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && (P2BodyDist X = [150,400]) && P2MoveType != H && P2StateType != L && (P2StateNo != [0,39]) && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && RanDom <= 20
trigger2 = (MoveHit || Var(29) = 3) && stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && P2StateType = A && P2BodyDist Y >= 0
trigger3 = (MoveHit || Var(29) = 3) && stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && P2StateType = A && P2BodyDist Y >= 0
trigger4 = (MoveHit || Var(29) = 3) && stateno = 620 && animelemtime(6) >= 1 && animelemtime(7) <= 0 && P2StateType != A && Random <= 75
trigger5 = (MoveHit || Var(29) = 3) && stateno = 621 && animelemtime(6) >= 1 && animelemtime(7) <= 0 && P2StateType != A 
trigger6 = (MoveHit || Var(29) = 3) && stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger7 = (MoveHit || Var(29) = 3) && stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0

[State -1]
type = null;ChangeState
value = 1300
triggerall = AIlevel != 0 && roundstate = 2 && statetype = A && Var(54) != 1 && Var(54) != 4
trigger1 = (ctrl || (stateno = 110 || stateno = 111) || (stateno = 115 || stateno = 116)) && (P2BodyDist X = [100,250]) && P2MoveType != H && P2StateType != L && (P2StateNo != [0,39]) && (P2StateNo != [200,209]) && (P2StateNo != [400,409]) && RanDom <= 30
trigger2 = MoveGuarded && stateno = 600 && animelemtime(3) >= 1 && animelemtime(4) <= 0 && P2StateType != A && Random <= 75
trigger3 = MoveGuarded && stateno = 605 && animelemtime(3) >= 1 && animelemtime(4) <= 0 && P2StateType != A && Random <= 75
trigger4 = MoveGuarded && stateno = 610 && animelemtime(3) >= 1 && animelemtime(4) <= 2 && Random <= 75
trigger5 = MoveGuarded && stateno = 611 && animelemtime(3) >= 1 && animelemtime(4) <= 2 && Random <= 75
trigger6 = MoveGuarded && stateno = 615 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && Random <= 75
trigger7 = MoveGuarded && stateno = 616 && animelemtime(4) >= 1 && animelemtime(5) <= 2 && Random <= 75
trigger8 = (MoveContact) && stateno = 625 && animelemtime(4) >= 1 && animelemtime(5) <= 2
trigger9 = (MoveContact) && stateno = 626 && animelemtime(4) >= 1 && animelemtime(5) <= 0

[State -1]
type = null;ChangeState
value = 1275
triggerall = Var(21) < 700
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000
trigger1 = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner = 0
trigger1 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger2 = (MoveHit || Var(29) = 3) && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3 && P2StateType = A && P2BodyDist X >= 130

[State -1]
type = null;ChangeState
value = 1275
triggerall = Var(21) < 700
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power >= 1000 && NumPartner > 0
trigger1 = Var(39) != 6 && Enemy,Var(39) != 6
trigger1 = Partner,Var(39) != 6
trigger1 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L

[State -1]
type = null;ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = AIlevel != 0 && roundstate = 2 && power >= 1000 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner = 0
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 200 && P2MoveType = A && Random <= 50 && power >= 2000 && Var(54) != [1000,1080]
trigger2 = MoveHit && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger3 = MoveHit && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger4 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger5 = MoveGuarded && stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4 && Random <= 50
trigger6 = MoveGuarded && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && Power >= 4000 && Random <= 300
trigger7 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 230 && power >= 2000 && Var(54) = [1000,1080]

[State -1]
type = null;ChangeState
value = 7500
triggerall = Var(21) >= 500
triggerall = AIlevel != 0 && roundstate = 2 && power >= 1000 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6 && NumPartner > 0
triggerall = Partner,Var(39) != 6
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 200 && P2MoveType = A && Random <= 50 && power >= 2000 && Var(54) != [1000,1080]
trigger2 = MoveHit && stateno = 220 && animelemtime(6) >= 1 && animelemtime(9) <= 3
trigger3 = MoveHit && stateno = 225 && animelemtime(3) >= 1 && animelemtime(6) <= 3
trigger4 = MoveHit && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && P2StateType != L
trigger5 = MoveGuarded && stateno = 240 && animelemtime(5) >= 1 && animelemtime(8) <= 4 && Random <= 50
trigger6 = MoveGuarded && stateno = 420 && animelemtime(4) >= 1 && animelemtime(7) <= 0 && Power >= 4000 && Random <= 300
trigger7 = (ctrl || (stateno = 100 || stateno = 101)) && P2BodyDist X <= 230 && power >= 2000 && Var(54) = [1000,1080]
ignorehitpause = 1
persistent = 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;bore;;;;;;;;;;;;;;;;;;;;

[State -1]
type = ChangeState
value = 430
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A ;&& P2Dist x = [300,320]
triggerall = P2StateType != A
triggerall = p2stateno != [5110,5120]
trigger1 = (MoveContact) && stateno = 220 && animelemtime(6) >= 2 && animelemtime(9) <= 3 && random <= 999
trigger2 = (MoveContact) && stateno = 225 && animelemtime(4) >= 2 && animelemtime(7) <= 3 && random <= 999
trigger3 = (MoveContact) && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3 && random <= 999
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(random <= 500, 240, 242)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2Dist x = [260,280]
triggerall = P2StateType != A
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && random <= 220 
trigger2 = (MoveContact) && stateno = 210 && animelemtime(6) >= 2 && animelemtime(8) <= 3
trigger3 = (MoveContact) && stateno = 211 && animelemtime(6) >= 2 && animelemtime(8) <= 3
trigger4 = (MoveContact) && stateno = 215 && animelemtime(3) >= 2 && animelemtime(5) <= 3
trigger5 = (MoveContact) && stateno = 216 && animelemtime(3) >= 2 && animelemtime(5) <= 3
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 125,ifelse(P2StateType = S, 420, 225), ifelse(P2StateType = S, 430, 220))
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2Dist x = [70,160]
triggerall = P2StateType != A
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && random <= 920 
trigger2 = (MoveContact) && stateno = 210 && animelemtime(6) >= 2 && animelemtime(8) <= 3
trigger3 = (MoveContact) && stateno = 211 && animelemtime(6) >= 2 && animelemtime(8) <= 3
trigger4 = (MoveContact) && stateno = 215 && animelemtime(3) >= 2 && animelemtime(5) <= 3
trigger5 = (MoveContact) && stateno = 216 && animelemtime(3) >= 2 && animelemtime(5) <= 3
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 1075
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power < 1000
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
triggerall = fvar(28) = 1
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && (P2MoveType != A) && Random <= 277 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 1275
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power < 1000
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
triggerall = fvar(28) = 1
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && (P2MoveType != A) && Random > 277 && Random <= 577 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(power >= 2000, 1075, 1050)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A ;&& Power < 1000
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && (P2MoveType != A) && Random <= 277 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(fvar(28) = 1, 1075, 1050)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power < 1000
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && (P2MoveType != A) && Random <= 277 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(power >= 2000, ifelse(random <= 411, 2000, 1275), 1250)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && fvar(28) = 0
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && (P2MoveType != A) && Random > 277 && Random <= 577 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(fvar(28) = 1, ifelse(random <= 411, 2000, 1275), 1250)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power < 1000
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
triggerall = p2stateno != [5110,5120]
trigger1 = ctrl && (P2MoveType != A) && Random > 277 && Random <= 577 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = null;ChangeState
value = 1025
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Power < 1000
triggerall = numhelper(8020) = 0 && numhelper(8021) = 0 && numhelper(8022) = 0
trigger1 = ctrl && (P2MoveType != A) && Random <= 277 && P2Dist x >= 280 ;&& (P2BodyDist X = [160,350]) && Var(54) = 0
trigger2 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3
trigger3 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 400
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2Dist x = [70,103]
triggerall = P2StateType = S && p2stateno != [5110,5120] ;&& P2StateType != L
trigger1 = ctrl && random <= 300;
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 410
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2Dist x = [70,103]
triggerall = P2StateType = S && p2stateno != [5110,5120] ;&& P2StateType != L
trigger1 = ctrl && random <= 200;
trigger2 = (MoveContact || Var(29) = 3) && stateno = 200 && animelemtime(4) >= 2 && animelemtime(7) <= 0
trigger3 = (MoveContact || Var(29) = 3) && stateno = 205 && animelemtime(3) >= 2 && animelemtime(5) <= 0
trigger4 = (MoveContact || Var(29) = 3) && stateno = 400 && animelemtime(3) >= 2 && animelemtime(7) <= 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = IfElse(P2Dist X <= 103,205,200)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2Dist x = [70,103]
triggerall = P2StateType = C ;&& P2StateType != L
trigger1 = ctrl && random <= 850;
trigger1 = p2stateno != [5110,5120]
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(random > 500, 105, 800)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && P2Dist x < 70
trigger1 = ctrl && (P2StateType != A && p2movetype = I) && Random <= 888
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(Random <= 350, 1125, 1150)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && (P2Dist x = [150,220]) && P2MoveType != H && P2StateType = A && Random <= 750
ctrl = 0
ignorehitpause = 1
persistent = 0


[State 1175, end]
type = ChangeState
value = ifelse(NumHelper(7770) = 0 && NumHelper(7771) = 0, 7600, ifelse(random <= 59, 7602, 7603))
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = enemynear, var(39) = 0
triggerall = p2stateno != 2020
trigger1 = ctrl && random <= 150;
trigger1 = Var(21) >= 500
trigger1 = (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
trigger1 = Var(39) = 6 || Enemy,Var(39) = 6
trigger1 = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger2 = (prevstateno = [1000,1150]) || (ctrl && random <= 850);
trigger2 = Var(21) >= 500
trigger2 = (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
trigger2 = Var(39) = 6 || Enemy,Var(39) = 6
trigger2 = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger3 = (prevstateno = [200,430]) || (ctrl && random <= 850);
trigger3 = Var(21) >= 500
trigger3 = (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
trigger3 = Var(39) = 6 || Enemy,Var(39) = 6
trigger3 = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State 1175, end]
type = ChangeState
value = ifelse(NumHelper(7770) = 0 && NumHelper(7771) = 0, 7600, ifelse(random <= 59, 7602, 7603))
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = enemynear, var(39) = 0
triggerall = p2stateno != 2020
trigger1 = (MoveContact) && stateno = 220 && animelemtime(6) >= 2 && animelemtime(9) <= 3 && random <= 950;
trigger1 = Var(21) >= 500
trigger1 = (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
trigger1 = Var(39) = 6 || Enemy,Var(39) = 6
trigger1 = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
trigger2 = (MoveContact) && stateno = 225 && animelemtime(4) >= 2 && animelemtime(7) <= 3 && random <= 950;
trigger2 = Var(21) >= 500
trigger2 = (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
trigger2 = Var(39) = 6 || Enemy,Var(39) = 6
trigger2 = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
;trigger3 = (MoveContact) && stateno = 430 && animelemtime(5) >= 2 && animelemtime(9) <= 0 && random <= 950;
;trigger3 = Var(21) >= 500
;trigger3 = (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
;trigger3 = Var(39) = 6 || Enemy,Var(39) = 6
;trigger3 = NumHelper(7210) = 0 && NumHelper(7211) = 0 && NumHelper(7212) = 0 && NumHelper(7213) = 0 && NumHelper(7214) = 0 && NumHelper(7215) = 0 && NumHelper(7216) = 0 && NumHelper(7217) = 0 && NumHelper(7218) = 0 && NumHelper(7219) = 0 && NumHelper(7220) = 0
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 195
triggerall = NumHelper(7770) = 1 && NumHelper(7771) = 1
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569]) && NumHelper(7770) != 0
trigger1 = prevstateno = [1000,1275]
trigger1 = p2movetype = H
trigger1 = stateno != 195
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = ifelse(life <= 500, 7500, 2000)
triggerall = NumHelper(7770) != 1 && NumHelper(7771) != 1
triggerall = Var(21) >= 500 && power >= 2000
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && (P2StateNo != [7500,7549]) && (P2StateNo != [7560,7569])
triggerall = Var(39) != 6 && Enemy,Var(39) != 6
trigger1 = (ctrl || (stateno = 100 || stateno = 101)) && (random <= 499)
trigger2 = MoveContact && stateno = 200 && animelemtime(4) >= 2 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger3 = MoveContact && stateno = 205 && animelemtime(3) >= 2 && animelemtime(5) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger4 = MoveContact && stateno = 210 && animelemtime(6) >= 2 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger5 = MoveContact && stateno = 211 && animelemtime(6) >= 2 && animelemtime(8) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger6 = MoveContact && stateno = 215 && animelemtime(3) >= 2 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger7 = MoveContact && stateno = 216 && animelemtime(3) >= 2 && animelemtime(5) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
;trigger7 = MoveContact && stateno = 230 && animelemtime(4) >= 2 && animelemtime(6) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger8 = MoveContact && stateno = 400 && animelemtime(3) >= 2 && animelemtime(7) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger9 = MoveContact && stateno = 410 && animelemtime(5) >= 2 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger10 = MoveContact && stateno = 411 && animelemtime(5) >= 2 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger11 = MoveContact && stateno = 220 && animelemtime(6) >= 2 && animelemtime(9) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger12 = MoveContact && stateno = 225 && animelemtime(4) >= 2 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger13 = MoveContact && stateno = 420 && animelemtime(8) >= 2 && animelemtime(11) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
trigger14 = MoveContact && stateno = 240 && animelemtime(8) >= 2 && animelemtime(10) <= 0 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 7300
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A
triggerall = (stateno = 5000 || (stateno = 5001 && Time < 2) || stateno = 5010 || (stateno = 5011 && Time < 2)) && (Anim = [5000,5029])
triggerall = MoveType = H && HitFall = 0
triggerall = EnemyNear,HitDefAttr = SCA,NA,SA
triggerall = Var(5) >= 1000 && Power >= 2000
trigger1 = StateType = S && life <= 250
trigger2 = StateType = C && life <= 250
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = IfElse(StateType = S,7150,IfElse(StateType = A,7152,7151))
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A && Var(5) >= 1000 ;&& NumHelper > 0 
trigger1 = MoveContact && stateno = 225 && animelemtime(4) >= 1 && animelemtime(7) <= 3 ;&& Helper,Var(19) = 1 ;Helper,Var(14) = 1

[State -1]
type = ChangeState
value = ifelse(Power >= 2000, 7400, 7222)
triggerall = AIlevel != 0 && roundstate = 2 && statetype != A 
trigger1 = p2stateno = [5110,5120]
trigger1 = Var(5) >= 1000 && ctrl
ctrl = 0
ignorehitpause = 1
persistent = 0
