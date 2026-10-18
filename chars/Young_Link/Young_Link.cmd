;===========================================================================
;Marvel vs. Capcom - Eternity of Heroes - Commands Template
;by REDHOT, Acey & eSkRo
;===========================================================================

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;Deku Nut
[Command]
name = "Deku_Nut"
command = ~F, DF, F, x+y

[Command]
name = "Deku_Nut"
command = ~F, DF, F, x+z

[Command]
name = "Deku_Nut"
command = ~F, DF, F, y+z

;Triforce Slash

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

;Super Spin Attack

[Command]
name = "Hyper5"
command = ~D, DB, B, x+y

[Command]
name = "Hyper5"
command = ~D, DB, B, x+z

[Command]
name = "Hyper5"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------

;Fire Arrow

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b

[Command]
name = "Hyper2"
command = ~D, DF, F, b+c

[Command]
name = "Hyper2"
command = ~D, DF, F, a+c

;---------------------------------------------------------------------------

;Unused for now

[Command]
name = "Hyper3"
command = ~D, DB, B, a+b

[Command]
name = "Hyper3"
command = ~D, DB, B, b+c

[Command]
name = "Hyper3"
command = ~D, DB, B, a+c

;---------------------------------------------------------------------------

;Hylain Finale

[Command]
name = "Hyper4"
command = ~D, DF, F, z+c

;---------------------------------------------------------------------------

;Megaton Hammer

[Command]
name = "HammerX"
command = ~F, DF, F, x

[Command]
name = "HammerY"
command = ~F, DF, F, y

[Command]
name = "HammerZ"
command = ~F, DF, F, z

;Boomerang

[Command]
name = "SpecialX"
command = ~D, DF, F, x

[Command]
name = "SpecialY"
command = ~D, DF, F, y

[Command]
name = "SpecialZ"
command = ~D, DF, F, z

;-------------------------------------------------------------------------
;Hero's Bow

[Command]
name = "SpecialA"
command = ~D,DF,F,a

[Command]
name = "SpecialB"
command = ~D,DF,F,b

[Command]
name = "SpecialC"
command = ~D,DF,F,c

;-------------------------------------------------------------------------
;Spin Attack

[Command]
name = "Special3X"
command = ~D,DB,B,x

[Command]
name = "Special3Y"
command = ~D,DB,B,y

[Command]
name = "Special3Z"
command = ~D,DB,B,z

;-------------------------------------------------------------------------

[command]
name = "Tele1"
command = ~F, DF, F,a
time = 15

[command]
name = "Tele2"
command = ~B, DB, B,a
time = 15

[command]
name = "Tele3"
command = ~F, DF, F,b
time = 15

[command]
name = "Tele4"
command = ~B, DB, B,b
time = 15

[command]
name = "Tele5"
command = ~F, DF, F,c
time = 15

[command]
name = "Tele6"
command = ~B, DB, B,c
time = 15

;Hookshot

[Command]
name = "Special4X"
command = ~D,DB,B,a

[Command]
name = "Special4Y"
command = ~D,DB,B,b

[Command]
name = "Special4Z"
command = ~D,DB,B,c



;-------------------------------------------------------------------------
;Bomb

[Command]
name = "Bomb1"
command = x+a
time = 0

;-------------------------------------------------------------------------

;Rapid Stab

[Command]
name = "Rapid Stab"
command = x,x,x,x
time = 30

[Command]
name = "Rapid Stab"
command = y,y,y,y
time = 30

[Command]
name = "Rapid Stab"
command = z,z,z,z
time = 30
;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c
;---------------------------------------------------------------------------
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
;2/3 button combination
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5

;---------------------------------------------------------------------------------------------
;Dir + button
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
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------------------------
;One button
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
name = "s"
command = s
time = 1

;---------------------------------------------------------------------------------------------
;Hold button
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[command]
name = "Power_Up"
command = y+b
time = 1

;---------------------------------------------------------------------------------------------
;Hold dir
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
name = "SJ"
command = $D, $U

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1


;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

[State -1, powercharge]
type=null
value=740
trigger1=var(59)<=0&&!var(33)&&roundstate=2&&command="holdb"&&command="holdy"&&statetype!=A&&power<powermax&&ctrl&&!var(20)
;-----------------------------

[State -1, sparry]
type=null
triggerall=var(59)<=0&&roundstate=2&&statetype=S
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||((stateno=700||stateno=701)&&time>=8)
trigger1=var(21):=1
attr=SA,AA,AP
stateno=700
slot=0
time=8

[State -1, cparry]
type=null
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(statetype=S&&command="down")||(statetype=C&&command="fwd")&&command!="back"&&command!="up"
trigger1=ctrl||((stateno=700||stateno=701)&&time>=8)
trigger1=var(21):=2
attr=C,AA,AP
stateno=701
slot=0
time=8

[State -1, aparry]
type=null
triggerall=var(59)<=0&&roundstate=2&&statetype=A
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=702
trigger1=ctrl||(stateno=702&&time>=8)
trigger1=var(21):=3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=8

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;-----------------------------

[State -1, Deku Nut]
type = ChangeState
value = 3400
triggerall = command = "Deku_Nut"
triggerall = power >= 2000
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

[State -1, Fire Arrow]
type = ChangeState
value = 3100
triggerall = command = "Hyper2" && Palno <= 6
triggerall = power >= 1000 
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
;-----------------------------

[State -1, Triforce Slash]
type = ChangeState
value = 3000
triggerall = command = "Hyper1" && Palno <= 6
triggerall = power >= 3000
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

[State -1, Darkness Slash]
type = ChangeState
value = 4000
triggerall = command = "Hyper1" && Palno > 6
triggerall = power >= 3000
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

;-----------------------------

[State -1, Unused]
type = Null
value = 3200
triggerall = command = "Hyper3"
triggerall = power >= 1000
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Unused]
type = changestate
value = 3300
triggerall = command = "Hyper4"
triggerall = power >= 2000
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Super Spin Attack]
type = Changestate
value = 3200
triggerall = command = "Hyper5"
triggerall = power >= 1000
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

[State -1, Super Spin Attack In Air]
type = Changestate
value = 3200
triggerall = command = "Hyper5"
triggerall = power >= 1000
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c
;-----------------------------

[State -1, Teleport]
type = ChangeState
value = 1900
triggerall = command = "Tele1" && Palno > 6
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c

[State -1, Teleport]
type = ChangeState
value = 1901
triggerall = command = "Tele2" && Palno > 6
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c

[State -1, Teleport]
type = ChangeState
value = 1902
triggerall = command = "Tele3" && Palno > 6
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c

[State -1, Teleport]
type = ChangeState
value = 1903
triggerall = command = "Tele4" && Palno > 6
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c

[State -1, Teleport]
type = ChangeState
value = 1904
triggerall = command = "Tele5" && Palno > 6
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c

[State -1, Teleport]
type = ChangeState
value = 1905
triggerall = command = "Tele6" && Palno > 6
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c

[State -1, Megaton Hammer]
type = ChangeState
value = 1700
triggerall = command = "HammerX"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Megaton Hammer]
type = ChangeState
value = 1710
triggerall = command = "HammerY"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Megaton Hammer]
type = ChangeState
value = 1720
triggerall = command = "HammerZ"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

;-----------------------------

[State -1, Boomerang]
type = ChangeState
value = 1000
triggerall = command = "SpecialX"
triggerall = NumHelper(1001) = 0
triggerall = var(26) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Boomerang]
type = ChangeState
value = 1010
triggerall = command = "SpecialY"
triggerall = NumHelper(1001) = 0
triggerall = var(26) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Boomerang]
type = ChangeState
value = 1020
triggerall = command = "SpecialZ"
triggerall = NumHelper(1001) = 0
triggerall = var(26) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

;-----------------------------

[State -1, Spin Attack S]
type = ChangeState
value = 1030
triggerall = command = "Special3X"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Spin Attack S]
type = ChangeState
value = 1031
triggerall = command = "Special3Y"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Spin Attack S]
type = ChangeState
value = 1032
triggerall = command = "Special3Z"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!

;-----------------------------

[State -1, Spin Attack A]
type = ChangeState
value = 1040
triggerall = command = "Special3X"
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c
[State -1, Spin Attack A]
type = ChangeState
value = 1041
triggerall = command = "Special3Y"
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c
[State -1, Spin Attack A]
type = ChangeState
value = 1042
triggerall = command = "Special3Z"
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c

[State -1, Sword Dive A]
type = ChangeState
value = 1800
triggerall = command = "SpecialA" && palno > 6
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c
[State -1, Sword Dive B]
type = ChangeState
value = 1810
triggerall = command = "SpecialB" && palno > 6
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c
[State -1, Sword Dive C]
type = ChangeState
value = 1820
triggerall = command = "SpecialC" && palno > 6
trigger1 = (Statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact)   ;Stand_x
trigger3 = (stateno = 610) && (movecontact)   ;Stand_y
trigger4 = (stateno = 620) && (movecontact)   ;Stand_z
trigger5 = (stateno = 630) && (movecontact)   ;Stand_a
trigger6 = (stateno = 640) && (movecontact)   ;Stand_b
trigger7 = (stateno = 650) && (movecontact)   ;Stand_c

;-----------------------------

[State -1, Ground Pound]
type = ChangeState
value = 1600
triggerall = (command = "down_a")
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 641) && (movecontact)   ;jump_b
trigger4 = (stateno = 600) && (movecontact)   ;jump_x
trigger5 = (stateno = 610) && (movecontact)   ;jump_y
trigger6 = (stateno = 620) && (movecontact)   ;jump_z
trigger7 = (stateno = 651) && (movecontact)   ;jump_c

[State -1, Ground Pound]
type = ChangeState
value = 1610
triggerall = (command = "down_b")
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 641) && (movecontact)   ;jump_b
trigger4 = (stateno = 600) && (movecontact)   ;jump_x
trigger5 = (stateno = 610) && (movecontact)   ;jump_y
trigger6 = (stateno = 620) && (movecontact)   ;jump_z
trigger7 = (stateno = 651) && (movecontact)   ;jump_c

[State -1, Ground Pound]
type = ChangeState
value = 1600
triggerall = (command = "down_c")
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 641) && (movecontact)   ;jump_b
trigger4 = (stateno = 600) && (movecontact)   ;jump_x
trigger5 = (stateno = 610) && (movecontact)   ;jump_y
trigger6 = (stateno = 620) && (movecontact)   ;jump_z
trigger7 = (stateno = 651) && (movecontact)   ;jump_c

[State -1, Rapid Slash]
type = ChangeState
value = 1090
triggerall = command = "Rapid Stab"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
;-----------------------------

[State -1, Arrow]
type = ChangeState
value = 1200
triggerall = command = "SpecialA"
triggerall = NumHelper(1200) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Arrow]
type = ChangeState
value = 1200
triggerall = command = "SpecialB"
triggerall = NumHelper(1200) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Arrow]
type = ChangeState
value = 1204
triggerall = command = "SpecialC"
triggerall = NumHelper(1200) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, HookShot]
type = ChangeState
value = 1300
triggerall = command = "Special4X"
triggerall = p2stateno != 820
triggerall = p2stateno != 821
triggerall = p2stateno != 822
triggerall = p2stateno != 823
triggerall = p2stateno != 824
triggerall = p2stateno != 825
triggerall = p2stateno != 826
triggerall = p2stateno != 1503
triggerall = p2stateno != 1503
triggerall = var(26) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, HookShot]
type = ChangeState
value = 1307
triggerall = command = "Special4Y"
triggerall = p2stateno != 820
triggerall = p2stateno != 821
triggerall = p2stateno != 822
triggerall = p2stateno != 823
triggerall = p2stateno != 824
triggerall = p2stateno != 825
triggerall = p2stateno != 826
triggerall = p2stateno != 1503
triggerall = p2stateno != 1503
triggerall = var(26) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, HookShot]
type = ChangeState
value = 1308
triggerall = command = "Special4Z"
triggerall = p2stateno != 820
triggerall = p2stateno != 821
triggerall = p2stateno != 822
triggerall = p2stateno != 823
triggerall = p2stateno != 824
triggerall = p2stateno != 825
triggerall = p2stateno != 826
triggerall = p2stateno != 1503
triggerall = p2stateno != 1503
triggerall = var(26) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
[State -1, Bomb]
type = ChangeState
value = 1080
triggerall = command = "Bomb1"
triggerall = NumHelper(1080) = 0
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = stateno = 100   ;Dash Fwd!
;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, Y]
type = ChangeState
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------

[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 211) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3
trigger7 = (StateNo = 241) && (Movecontact) && time > 3
 
;-----------------------------

[State -1, C]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)

;-----------------------------

[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------

[State -1, A agachado]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)

;-----------------------------

;[State -1, s]
;type = ChangeState
;value = 195
;triggerall = Command = "s"
;triggerall = Command != "holddown"
;triggerall = stateno != 100
;trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)

;-----------------------------

[State -1, B]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, B agachado]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)

;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;------------------------------------------------------------------------

[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;----------------------------- Recovery Roll -------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Near Foward Recovery Roll

[State -1]
type = VarSet
triggerall = command = "ac_f_roll_n"
triggerall = alive = 1
triggerall = life > 0
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 1

[State -1]
type = ChangeState
value = 831
triggerall = Var(30) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Foward Recovery Roll

[State -1]
type = VarSet
triggerall = command = "ac_f_roll_m"
triggerall = alive = 1
triggerall = life > 0
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 2

[State -1]
type = ChangeState
value = 832
triggerall = Var(30) = 2
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Foward Recovery Roll

[State -1]
type = VarSet
triggerall = command = "ac_f_roll_f"
triggerall = alive = 1
triggerall = life > 0
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 3

[State -1]
type = ChangeState
value = 840
triggerall = Var(30) = 3
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Near Backward Recovery Roll

[State -1]
type = VarSet
triggerall = command = "ac_sweep_b_roll_n"
triggerall = alive = 1
triggerall = life > 0
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 4

[State -1]
type = ChangeState
value = 850
triggerall = Var(30) = 4
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[State -1]
type = VarSet
triggerall = command = "ac_sweep_b_roll_m"
triggerall = alive = 1
triggerall = life > 0
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 5

[State -1]
type = ChangeState
value = 855
triggerall = Var(30) = 5
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Backward Recovery Roll

[State -1]
type = VarSet
triggerall = command = "ac_sweep_b_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 6

[State -1]
type = ChangeState
value = 860
triggerall = Var(30) = 6
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

