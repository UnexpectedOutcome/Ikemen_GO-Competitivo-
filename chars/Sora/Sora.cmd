;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper1a"
command = ~B, DB, D, DF, F, a
time = 35

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D, DB, B, x+y

[Command]
name = "Hyper2"
command = ~D, DB, B, x+z

[Command]
name = "Hyper2"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Hyper3

[Command]
name = "Hyper3"
command = ~D, DF, F, a+b
time = 35

[Command]
name = "Hyper3"
command = ~D, DF, F, a+c
time = 35

[Command]
name = "Hyper3"
command = ~D, DF, F, b+c
time = 35


;---------------------------------------------------------------------------
;Hyper4

[Command]
name = "Hyper4"
command = ~D, DB, B, a+b

[Command]
name = "Hyper4"
command = ~D, DB, B, a+c

[Command]
name = "Hyper4"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Specail1

[Command]
name = "Special1x"
command = ~D,DF,F, x
time = 35

[Command]
name = "Special1y"
command = ~D,DF,F, y

[Command]
name = "Special1z"
command = ~D,DF,F,z

;-------------------------------------------------------------------------
;Special2

[Command]
name = "Special2x"
command = ~D,DB,B, x

[Command]
name = "Special2y"
command = ~D,DB,B, y

[Command]
name = "Special2z"
command = ~D,DB,B, z

;-------------------------------------------------------------------------
;Special3

[Command]
name = "Special3a"
command = ~D,DF,F, a

[Command]
name = "Special3b"
command = ~D,DF,F, b
time = 35

[Command]
name = "Special3c"
command = ~D,DF,F, c

;---------------------------------------------------------------------------
;Specail4

[Command]
name = "Special4a"
command = ~D,DB,B, a

[Command]
name = "Special4b"
command = ~D,DB,B, b
time = 35

[Command]
name = "Special4c"
command = ~D,DB,B, c

;---------------------------------------------------------------------------
;Special5

[Command]
name = "Dragon Punchx"
command = ~F,D,DF, x

;---------------------------------------------------------------------------
;Shortcut

[Command]
name = "holdz"
command = /z


;---------------------------------------------------------------------------
;Double_Tap

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

[Command]
name = "ZZ"
command = z, z
time = 20

;---------------------------------------------------------------------------
;2/3 button combination

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 5

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
name = "QuickDash"
command = a+b
time = 5

[Command]
name = "QuickRunBack"
command = /$B,a+b
time = 5

[Command]
name = "GummiShip"
command = z+c
time = 5


;---------------------------------------------------------------------------
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
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

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "DF_x"
command = /$DF,x
time = 1


;---------------------------------------------------------------------------
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

[Command]
name = "yy"
command = y, y
time = 25

[Command]
name = "x+y+a+b"
command = x+y+a+b
time = 25

;---------------------------------------------------------------------------
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
name = "shortcut"
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

;---------------------------------------------------------------------------
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

[Statedef -1]

;[State -1, Attack Cancels}
;type = changestate
;value = 1
;trigger1 = ctrl
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 230 && (movecontact || animelemtime(9) >= 1))
;trigger9 = (stateno = 240 && animelemtime(7) >= 1)
;trigger10 = (stateno = 250 && animelemtime(5) >= 1)
;trigger16 = (stateno = 270 && animelemtime(10) >= 2)
;trigger12 = (stateno = 280 && animelemtime(15) >= 1)
;trigger17 = (stateno = 300 && animelemtime(8) >= 1)
;trigger18 = (stateno = 310 && animelemtime(8) >= 1)
;trigger19 = (stateno = 320 && animelemtime(8) >= 2)
;trigger20 = (stateno = 340 && animelemtime(11) >= 1)
;trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger22 = (stateno = 411 && animelemtime(4) >= 1)
;trigger22 = (stateno = 510 && (movecontact || animelemtime(20) >= 1))
;trigger23 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
;trigger24 = (stateno = 600 && animelemtime(7) >= 1)
;trigger25 = (stateno = 610 && animelemtime(4) >= 1)
;trigger26 = (stateno = 620 && animelemtime(7) >= 1)
;trigger27 = (stateno = 630 && animelemtime(14) >= 2)
;trigger28 = (stateno = 640 && animelemtime(5) >= 1)
;trigger28 = (stateno = 650 && animelemtime(15) >= 1)
;trigger29 = (stateno = 680 && animelemtime(15) >= 1)
;trigger30 = (stateno = 700 && animelemtime(7) >= 1)
;trigger31 = (stateno = 710 && animelemtime(4) >= 1)
;trigger32 = (stateno = 720 && animelemtime(7) >= 1)
;trigger33 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
;trigger34 = (stateno = 920 && animelemtime(17) >= 1)
;trigger35 = (stateno = 1400 && animelemtime(6) >= 1)
;trigger36 = (stateno = 1410 && animelemtime(6) >= 1)
;trigger11 = (stateno = 1610)
;trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger13 = (stateno = 1620)
;trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))

[State -1, Ground Combo Block]
type = changestate
value = 30
triggerall = command = "a" && statetype = S && hitover = 1 && (stateno != 30)
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = command != "x+y+a+b"
triggerall = command != "b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(6) >= 2)
trigger6 = (stateno = 210 && animelemtime(7) >= 2)
trigger7 = (stateno = 220 && animelemtime(6) >= 2)
trigger8 = (stateno = 230 && animelemtime(10) >= 2)
trigger9 = (stateno = 240 && animelemtime(6) >= 1)
trigger10 = (stateno = 250 && animelemtime(4) >= 1)
trigger11 = (stateno = 1610)
trigger12 = (stateno = 1750 && animelemtime(8) >= 1)
trigger13 = (stateno = 1620)
trigger14 = (stateno = 1760 && animelemtime(8) >= 1)
trigger15 = (stateno = 1770 && animelemtime(8) >= 1)
trigger16 = (stateno = 270 && animelemtime(10) >= 1)
trigger17 = (stateno = 300 && animelemtime(6) >= 2)
trigger18 = (stateno = 310 && animelemtime(7) >= 2)
trigger19 = (stateno = 320 && animelemtime(6) >= 2)
trigger20 = (stateno = 340 && animelemtime(8) >= 2)
trigger21 = (stateno = 360 && animelemtime(4) >= 1)
trigger22 = (stateno = 510 && animelemtime(21) >= 1)
trigger23 = (stateno = 520 && animelemtime(11) >= 1)
trigger24 = (stateno = 1400 && animelemtime(3) >= 1)
trigger25 = (stateno = 1410 && animelemtime(3) >= 1)

[State -1, Air Combo Block]
type = changestate
value = 35
triggerall = command = "a" && statetype = A && hitover = 1 && (stateno != 35)
triggerall = command != "x+y+a+b"
triggerall = command != "b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 280 && animelemtime(10) >= 2)
trigger6 = (stateno = 600 && animelemtime(5) >= 1)
trigger7 = (stateno = 610 && animelemtime(3) >= 1)
trigger8 = (stateno = 620 && animelemtime(5) >= 1)
trigger9 = (stateno = 630 && animelemtime(9) >= 1)
trigger10 = (stateno = 650 && animelemtime(15) >= 1)
trigger11 = (stateno = 670 && animelemtime(10) >= 1)
trigger12 = (stateno = 680 && animelemtime(10) >= 2)
trigger13 = (stateno = 700 && animelemtime(5) >= 1)
trigger14 = (stateno = 710 && animelemtime(3) >= 1)
trigger15 = (stateno = 720 && animelemtime(5) >= 1)
trigger16 = (stateno = 920 && animelemtime(18) >= 1)
trigger17 = (stateno = 1400 && animelemtime(3) >= 1)
trigger18 = (stateno = 1410 && animelemtime(3) >= 1)

[State -1, Air Dash Back]
type = changestate
value = 105
triggerall = (stateno != 105 && stateno != [5000,5210])
triggerall = command = "QuickDash"
triggerall = command = "holdback"
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = [150,153])
trigger6 = (stateno = 200 && animelemtime(6) >= 2)
trigger7 = (stateno = 210 && animelemtime(7) >= 2)
trigger8 = (stateno = 220 && animelemtime(6) >= 2)
trigger9 = (stateno = 230 && animelemtime(10) >= 2)
trigger10 = (stateno = 240 && animelemtime(6) >= 1)
trigger11 = (stateno = 250 && animelemtime(4) >= 1)
trigger12 = (stateno = 1610)
trigger13 = (stateno = 1750 && animelemtime(8) >= 1)
trigger14 = (stateno = 1620)
trigger15 = (stateno = 1760 && animelemtime(8) >= 1)
trigger16 = (stateno = 1770 && animelemtime(8) >= 1)
trigger17 = (stateno = 270 && animelemtime(10) >= 1)
trigger18 = (stateno = 280 && animelemtime(10) >= 2)
trigger19 = (stateno = 300 && animelemtime(6) >= 2)
trigger20 = (stateno = 310 && animelemtime(7) >= 2)
trigger21 = (stateno = 320 && animelemtime(6) >= 2)
trigger22 = (stateno = 340 && animelemtime(8) >= 2)
trigger23 = (stateno = 360 && animelemtime(4) >= 1)
trigger24 = (stateno = 411 && animelemtime(5) >= 1)
trigger25 = (stateno = 510 && animelemtime(21) >= 1)
trigger26 = (stateno = 520 && animelemtime(11) >= 1)
trigger27 = (stateno = 600 && animelemtime(5) >= 1)
trigger28 = (stateno = 610 && animelemtime(3) >= 1)
trigger29 = (stateno = 620 && animelemtime(5) >= 1)
trigger30 = (stateno = 630 && animelemtime(9) >= 1)
trigger31 = (stateno = 650 && animelemtime(15) >= 1)
trigger32 = (stateno = 670 && animelemtime(10) >= 1)
trigger33 = (stateno = 680 && animelemtime(10) >= 2)
trigger34 = (stateno = 700 && animelemtime(5) >= 1)
trigger35 = (stateno = 710 && animelemtime(3) >= 1)
trigger36 = (stateno = 720 && animelemtime(5) >= 1)
trigger37 = (stateno = 920 && animelemtime(18) >= 1)
trigger38 = (stateno = 1400 && animelemtime(3) >= 1)
trigger39 = (stateno = 1410 && animelemtime(3) >= 1)

[State -1, Air Dash Forward]
type = changestate
value = 107
triggerall = (stateno != 107 && stateno != [5000,5210])
triggerall = command = "QuickDash"
triggerall = command = "holdfwd"
triggerall = command != "x+y+a+b"
triggerall = command != "holdback"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = [150,153])
trigger6 = (stateno = 200 && animelemtime(6) >= 2)
trigger7 = (stateno = 210 && animelemtime(7) >= 2)
trigger8 = (stateno = 220 && animelemtime(6) >= 2)
trigger9 = (stateno = 230 && animelemtime(10) >= 2)
trigger10 = (stateno = 240 && animelemtime(6) >= 1)
trigger11 = (stateno = 250 && animelemtime(4) >= 1)
trigger12 = (stateno = 1610)
trigger13 = (stateno = 1750 && animelemtime(8) >= 1)
trigger14 = (stateno = 1620)
trigger15 = (stateno = 1760 && animelemtime(8) >= 1)
trigger16 = (stateno = 1770 && animelemtime(8) >= 1)
trigger17 = (stateno = 270 && animelemtime(10) >= 1)
trigger18 = (stateno = 280 && animelemtime(10) >= 2)
trigger19 = (stateno = 300 && animelemtime(6) >= 2)
trigger20 = (stateno = 310 && animelemtime(7) >= 2)
trigger21 = (stateno = 320 && animelemtime(6) >= 2)
trigger22 = (stateno = 340 && animelemtime(8) >= 2)
trigger23 = (stateno = 360 && animelemtime(4) >= 1)
trigger24 = (stateno = 411 && animelemtime(5) >= 1)
trigger25 = (stateno = 510 && animelemtime(21) >= 1)
trigger26 = (stateno = 520 && animelemtime(11) >= 1)
trigger27 = (stateno = 600 && animelemtime(5) >= 1)
trigger28 = (stateno = 610 && animelemtime(3) >= 1)
trigger29 = (stateno = 620 && animelemtime(5) >= 1)
trigger30 = (stateno = 630 && animelemtime(9) >= 1)
trigger31 = (stateno = 650 && animelemtime(15) >= 1)
trigger32 = (stateno = 670 && animelemtime(10) >= 1)
trigger33 = (stateno = 680 && animelemtime(10) >= 2)
trigger34 = (stateno = 700 && animelemtime(5) >= 1)
trigger35 = (stateno = 710 && animelemtime(3) >= 1)
trigger36 = (stateno = 720 && animelemtime(5) >= 1)
trigger37 = (stateno = 920 && animelemtime(18) >= 1)
trigger38 = (stateno = 1400 && animelemtime(3) >= 1)
trigger39 = (stateno = 1410 && animelemtime(3) >= 1)

[State -1, Airstep]
type = changestate
value = 110
triggerall = (stateno != 110 && stateno != 111 && stateno != [5000,5210])
triggerall = command = "QuickDash"
triggerall = command != "holdfwd"
triggerall = command != "x+y+a+b"
triggerall = command != "holdback"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = [150,153])
trigger6 = (stateno = 200 && animelemtime(6) >= 2)
trigger7 = (stateno = 210 && animelemtime(7) >= 2)
trigger8 = (stateno = 220 && animelemtime(6) >= 2)
trigger9 = (stateno = 230 && (movecontact || animelemtime(10) >= 2))
trigger10 = (stateno = 240 && animelemtime(6) >= 1)
trigger11 = (stateno = 250 && animelemtime(4) >= 1)
trigger12 = (stateno = 1610)
trigger13 = (stateno = 1750 && animelemtime(8) >= 1)
trigger14 = (stateno = 1620)
trigger15 = (stateno = 1760 && animelemtime(8) >= 1)
trigger16 = (stateno = 1770 && animelemtime(8) >= 1)
trigger17 = (stateno = 270 && animelemtime(10) >= 1)
trigger18 = (stateno = 280 && animelemtime(10) >= 2)
trigger19 = (stateno = 300 && animelemtime(6) >= 2)
trigger20 = (stateno = 310 && animelemtime(7) >= 2)
trigger21 = (stateno = 320 && animelemtime(6) >= 2)
trigger22 = (stateno = 340 && animelemtime(8) >= 2)
trigger23 = (stateno = 360 && animelemtime(4) >= 1)
trigger24 = (stateno = 411 && (movecontact || animelemtime(5) >= 1))
trigger25 = (stateno = 510 && (movecontact || animelemtime(21) >= 1))
trigger26 = (stateno = 520 && (movecontact || animelemtime(11) >= 1))
trigger27 = (stateno = 630 && animelemtime(9) >= 1)
trigger28 = (stateno = 650 && animelemtime(15) >= 1)
trigger29 = (stateno = 670 && animelemtime(10) >= 1)
trigger30 = (stateno = 680 && animelemtime(10) >= 2)
trigger31 = (stateno = 700 && animelemtime(5) >= 1)
trigger32 = (stateno = 710 && animelemtime(3) >= 1)
trigger33 = (stateno = 720 && animelemtime(5) >= 1)
trigger34 = (stateno = 920 && animelemtime(18) >= 1)
trigger35 = (stateno = 1400 && animelemtime(3) >= 1)
trigger36 = (stateno = 1410 && animelemtime(3) >= 1)

[state -1, Ground Combo 1]
type = changestate
value = 200
triggerall = command = "x" && (statetype = S) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 3
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 240 && animelemtime(7) >= 1)
trigger6 = (stateno = 250 && animelemtime(5) >= 1)
trigger7 = (stateno = 1610)
trigger8 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger9 = (stateno = 1620)
trigger10 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger11 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 270 && animelemtime(10) >= 2)
trigger13 = (stateno = 320 && animelemtime(8) >= 2)
trigger14 = (stateno = 340 && animelemtime(11) >= 1)
trigger15 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger16 = (stateno = 1400 && animelemtime(5) >= 1)
trigger17 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Ground Combo 2]
type = ChangeState
value = 210
triggerall = command = "x" && (statetype = S) 
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 3
trigger1 = (stateno = 200 && animelemtime(8) >= 1)
trigger2 = (stateno = 300 && animelemtime(8) >= 1)

[State -1, Ground Combo 3]
type = changestate
value = 220
triggerall = command = "x" && statetype = S
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 3
triggerall = stateno != 220
trigger1 = (stateno = 210 && animelemtime(8) >= 1)
trigger2 = (stateno = 310 && animelemtime(8) >= 1)

[State -1, Ground Combo Finisher]
type = changestate
value = 230
triggerall = command = "x" && (statetype = S) 
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(22) < 4
triggerall = stateno != 230
trigger1 = (stateno = 200 && animelemtime(8) >= 1 && var(19) >= 3)
trigger2 = (stateno = 210 && animelemtime(8) >= 1 && var(19) >= 3)
trigger3 = (stateno = 220 && animelemtime(8) >= 2 && var(19) >= 3)
trigger4 = (stateno = 240 && animelemtime(7) >= 1 && var(19) >= 3)
trigger5 = (stateno = 250 && animelemtime(5) >= 1 && var(19) >= 3)
trigger6 = (stateno = 1610 && var(19) >= 3)
trigger7 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1) && var(19) >= 3)
trigger8 = (stateno = 1620 && var(19) >= 3)
trigger9 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1) && var(19) >= 3)
trigger10 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1) && var(19) >= 3)
trigger11 = (stateno = 270 && animelemtime(10) >= 2 && var(19) >= 3)
trigger12 = (stateno = 300 && animelemtime(8) >= 1 && var(19) >= 3)
trigger13 = (stateno = 310 && animelemtime(8) >= 1 && var(19) >= 3)
trigger14 = (stateno = 320 && animelemtime(8) >= 2 && var(19) >= 3)
trigger15 = (stateno = 340 && animelemtime(11) >= 1 && var(19) >= 3)
trigger16 = (stateno = 360 && (movecontact || animelemtime(5) >= 1) && var(19) >= 3)
trigger17 = (stateno = 510 && animelemtime(20) >= 1)
trigger18 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
trigger19 = (stateno = 1400 && animelemtime(5) >= 1 && var(19) >= 3)
trigger20 = (stateno = 1410 && animelemtime(5) >= 1 && var(19) >= 3)

[State -1, Switch to Ground Combo Finisher]
type = changestate
value = 230
triggerall = statetype != A
triggerall = command = "x" || command = "down_x" || command = "fwd_x" || command = "Special2x" || command = "Dragon Punchx" || command = "down_y" || command = "Special2y" 
triggerall = command != "x+y+a+b"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(22) < 4
triggerall = stateno != 230
trigger1 = (stateno = 200 && animelemtime(8) >= 1 && var(19) >= 6)
trigger2 = (stateno = 210 && animelemtime(8) >= 1 && var(19) >= 6)
trigger3 = (stateno = 220 && animelemtime(8) >= 2 && var(19) >= 6)
trigger4 = (stateno = 240 && animelemtime(7) >= 1 && var(19) >= 6)
trigger5 = (stateno = 250 && animelemtime(5) >= 1 && var(19) >= 6)
trigger6 = (stateno = 1610 && var(19) >= 6)
trigger7 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1) && var(19) >= 6)
trigger8 = (stateno = 1620 && var(19) >= 6)
trigger9 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1) && var(19) >= 6)
trigger10 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1) && var(19) >= 6)
trigger11 = (stateno = 270 && animelemtime(10) >= 2 && var(19) >= 6)
trigger12 = (stateno = 300 && animelemtime(8) >= 1 && var(19) >= 6)
trigger13 = (stateno = 310 && animelemtime(8) >= 1 && var(19) >= 6)
trigger14 = (stateno = 320 && animelemtime(8) >= 2 && var(19) >= 6)
trigger15 = (stateno = 340 && animelemtime(11) >= 1 && var(19) >= 6)
trigger16 = (stateno = 360 && (movecontact || animelemtime(5) >= 1) && var(19) >= 6)
trigger17 = (stateno = 510 && animelemtime(20) >= 1)
trigger18 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
trigger19 = (stateno = 1400 && animelemtime(5) >= 1 && var(19) >= 6)
trigger20 = (stateno = 1410 && animelemtime(5) >= 1 && var(19) >= 6)

[State -1, Round Break]
type = changestate
value = 240
triggerall = command = "down_x" && (statetype = C || statetype = S)
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 250 && animelemtime(5) >= 1)
trigger9 = (stateno = 1610)
trigger10 = (stateno = 1620)
trigger11 = (stateno = 1750 && (movecontact || time >= 22))
trigger12 = (stateno = 1760 && (movecontact || time >= 22))
trigger13 = (stateno = 1770 && (movecontact || time >= 22))
trigger14 = (stateno = 270 && animelemtime(10) >= 2)
trigger15 = (stateno = 300 && animelemtime(8) >= 1)
trigger16 = (stateno = 310 && animelemtime(8) >= 1)
trigger17 = (stateno = 320 && animelemtime(8) >= 2)
trigger18 = (stateno = 340 && animelemtime(11) >= 1)
trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
trigger21 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Slapshot]
type = changestate
value = 250
triggerall = command = "fwd_x" && statetype != A
triggerall = command != "x+y+a+b"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "Dragon Punchx" 
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 1610)
trigger10 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger11 = (stateno = 1620)
trigger12 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger13 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 270 && animelemtime(10) >= 2)
trigger15 = (stateno = 300 && animelemtime(8) >= 1)
trigger16 = (stateno = 310 && animelemtime(8) >= 1)
trigger17 = (stateno = 320 && animelemtime(8) >= 2)
trigger18 = (stateno = 340 && animelemtime(11) >= 1)
trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
trigger21 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Flash Step, Ground]
type = changestate
value = 270
triggerall = command = "Special2x" && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 300 && animelemtime(8) >= 1)
trigger16 = (stateno = 310 && animelemtime(8) >= 1)
trigger17 = (stateno = 320 && animelemtime(8) >= 2)
trigger18 = (stateno = 340 && animelemtime(11) >= 1)
trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
trigger21 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Aerial Sweep, Ground]
type = changestate
value = 280
triggerall = command = "Dragon Punchx" && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 270 && animelemtime(10) >= 2)
trigger16 = (stateno = 300 && animelemtime(8) >= 1)
trigger17 = (stateno = 310 && animelemtime(8) >= 1)
trigger18 = (stateno = 320 && animelemtime(8) >= 2)
trigger19 = (stateno = 340 && animelemtime(11) >= 1)
trigger20 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger21 = (stateno = 600 && (movecontact || animelemtime(7) >= 1))
trigger22 = (stateno = 610 && (movecontact || animelemtime(4) >= 1))
trigger23 = (stateno = 620 && (movecontact || animelemtime(7) >= 1))
trigger24 = (stateno = 650 && (movecontact || animelemtime(15) >= 1))
trigger25 = (stateno = 670 && animelemtime(10) >= 2)
trigger26 = (stateno = 700 && (movecontact || animelemtime(7) >= 1))
trigger27 = (stateno = 710 && (movecontact || animelemtime(4) >= 1))
trigger28 = (stateno = 720 && (movecontact || animelemtime(7) >= 1))
trigger29 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
trigger30 = (stateno = 1400 && animelemtime(5) >= 1)
trigger31 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Ground Combo Plus 1]
type = Changestate
value = 300
triggerall = command = "y" && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 220 && animelemtime(8) >= 2)
trigger6 = (stateno = 240 && animelemtime(7) >= 1)
trigger7 = (stateno = 250 && animelemtime(5) >= 1)
trigger8 = (stateno = 1610)
trigger9 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger10 = (stateno = 1620)
trigger11 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger13 = (stateno = 270 && animelemtime(10) >= 2)
trigger14 = (stateno = 320 && animelemtime(8) >= 2)
trigger15 = (stateno = 340 && animelemtime(11) >= 1)
trigger16 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger17 = (stateno = 1400 && animelemtime(5) >= 1)
trigger18 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Ground Combo Plus 2]
type = Changestate
value = 310
triggerall = command = "y" && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = (stateno = 200 && animelemtime(8) >= 1)
trigger2 = (stateno = 300 && animelemtime(8) >= 1)

[State -1, Ground Combo Plus 3]
type = changestate
value = 320
triggerall = command = "y" && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = (stateno = 210 && animelemtime(8) >= 1)
trigger2 = (stateno = 310 && animelemtime(8) >= 1)

[State -1, Upper Slash]
type = changestate
value = 340
triggerall = command = "down_y" && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 270 && animelemtime(10) >= 2)
trigger16 = (stateno = 300 && animelemtime(8) >= 1)
trigger17 = (stateno = 310 && animelemtime(8) >= 1)
trigger18 = (stateno = 320 && animelemtime(8) >= 2)
trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
trigger21 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Sliding Dash, Ground]
type = changestate
value = 360
triggerall = command = "Special2y" 
triggerall = statetype != A
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(19) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 270 && animelemtime(10) >= 2)
trigger16 = (stateno = 300 && animelemtime(8) >= 1)
trigger17 = (stateno = 310 && animelemtime(8) >= 1)
trigger18 = (stateno = 320 && animelemtime(8) >= 2)
trigger19 = (stateno = 340 && animelemtime(11) >= 1)
trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
trigger21 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Finishing Leap]
type = changestate
value = 410
triggerall = command = "down_a" && stateno != 410 && prevstateno != 411
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(22) < 4
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 230 && (movecontact || animelemtime(9) >= 1))
trigger9 = (stateno = 240 && animelemtime(7) >= 1)
trigger10 = (stateno = 250 && animelemtime(5) >= 1)
trigger11 = (stateno = 1610)
trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger13 = (stateno = 1620)
trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger16 = (stateno = 270 && animelemtime(10) >= 2)
trigger17 = (stateno = 300 && animelemtime(8) >= 1)
trigger18 = (stateno = 310 && animelemtime(8) >= 1)
trigger19 = (stateno = 320 && animelemtime(8) >= 2)
trigger20 = (stateno = 340 && animelemtime(11) >= 1)
trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger22 = (stateno = 510 && (movecontact || animelemtime(20) >= 1))
trigger23 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
trigger24 = (stateno = 600 && animelemtime(7) >= 1)
trigger25 = (stateno = 610 && animelemtime(4) >= 1)
trigger26 = (stateno = 620 && animelemtime(7) >= 1)
trigger27 = (stateno = 630 && animelemtime(14) >= 2)
trigger28 = (stateno = 640 && animelemtime(5) >= 1)
trigger29 = (stateno = 650 && animelemtime(15) >= 1)
trigger30 = (stateno = 680 && animelemtime(15) >= 1)
trigger31 = (stateno = 700 && animelemtime(7) >= 1)
trigger32 = (stateno = 710 && animelemtime(4) >= 1)
trigger33 = (stateno = 720 && animelemtime(7) >= 1)
trigger34 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
trigger35 = (stateno = 920 && animelemtime(17) >= 1)
trigger36 = (stateno = 1400 && animelemtime(5) >= 1)
trigger37 = (stateno = 1410 && animelemtime(5) >= 1)

[State -1, Explosion]
type = changestate
value = 510
triggerall = command = "Special3b" && stateno != 510 && (statetype != A) 
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(22) < 4
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 230 && animelemtime(9) >= 1)
trigger9 = (stateno = 240 && animelemtime(7) >= 1)
trigger10 = (stateno = 250 && animelemtime(5) >= 1)
trigger11 = (stateno = 1610)
trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger13 = (stateno = 1620)
trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger16 = (stateno = 270 && animelemtime(10) >= 2)
trigger17 = (stateno = 300 && animelemtime(8) >= 1)
trigger18 = (stateno = 310 && animelemtime(8) >= 1)
trigger19 = (stateno = 320 && animelemtime(8) >= 2)
trigger20 = (stateno = 340 && animelemtime(11) >= 1)
trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger22 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
trigger23 = (stateno = 1400 && animelemtime(5) >= 1)
trigger24 = (stateno = 1410 && animelemtime(6) >= 1)

[State -1, Guard Break]
type = changestate
value = 520	
triggerall = command = "Special4b" && stateno != 520 && (statetype != A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = var(17) = 0
triggerall = var(59) = 0
triggerall = var(22) < 4
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 230 && (movecontact || animelemtime(9) >= 1))
trigger9 = (stateno = 240 && animelemtime(7) >= 1)
trigger10 = (stateno = 250 && animelemtime(5) >= 1)
trigger11 = (stateno = 1610)
trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger13 = (stateno = 1620)
trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger16 = (stateno = 270 && animelemtime(10) >= 2)
trigger17 = (stateno = 300 && animelemtime(8) >= 1)
trigger18 = (stateno = 310 && animelemtime(8) >= 1)
trigger19 = (stateno = 320 && animelemtime(8) >= 2)
trigger20 = (stateno = 340 && animelemtime(11) >= 1)
trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger22 = (stateno = 510 && (movecontact || animelemtime(20) >= 1))
trigger23 = (stateno = 1400 && animelemtime(6) >= 1)
trigger24 = (stateno = 1410 && animelemtime(6) >= 1)

[State -1, Air Combo 1]
type = changestate
value = 600
triggerall = command = "x" && (stateno != 600) && statetype = A
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 3
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 280 && animelemtime(15) >= 1)
trigger3 = (stateno = 650 && (movecontact || animelemtime(15) >= 1))
trigger4 = (stateno = 670 && animelemtime(10) >= 2)
trigger5 = (stateno = 680 && animelemtime(15) >= 1)
trigger6 = (stateno = 720 && (movecontact || animelemtime(7) >= 1))
trigger7 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, Air Combo 2]
type = changestate
value = 610
triggerall = command = "x" && statetype = A
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 3
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = (stateno = 600 && animelemtime(7) >= 1)
trigger2 = (stateno = 700 && animelemtime(7) >= 1)

[State -1, Air Combo 3]
type = changestate
value = 620
triggerall = command = "x" && statetype = A
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = command != "Special2x"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 3
triggerall = stateno != 620
trigger1 = (stateno = 610 && animelemtime(4) >= 1)
trigger2 = (stateno = 710 && animelemtime(4) >= 1)

;[state -1, Air Combo Finisher]
;type = changestate
;value = 630
;triggerall = command = "x" && statetype = A && stateno = 620
;triggerall = command != "x+y+a+b"
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
;triggerall = command != "holdup"
;triggerall = command != "holddown"
;triggerall = var(59) = 0
;triggerall = var(17) = 0
;trigger1 = (time >= 16)

[State -1, Air Combo Finisher]
type = changestate
value = 630
triggerall = command = "x" && (statetype = A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(22) < 4
triggerall = stateno != 630
trigger1 = (stateno = 280 && animelemtime(15) >= 1 && var(20) >= 3)
trigger2 = (stateno = 411 && animelemtime(4) >= 1)
trigger3 = (stateno = 600 && animelemtime(7) >= 1 && var(20) >= 3)
trigger4 = (stateno = 610 && animelemtime(4) >= 1 && var(20) >= 3)
trigger5 = (stateno = 620 && animelemtime(7) >= 1 && var(20) >= 3)
trigger6 = (stateno = 640 && animelemtime(5) >= 1)
trigger7 = (stateno = 650 && animelemtime(15) >= 1 && var(20) >= 3)
trigger8 = (stateno = 1610 && var(20) >= 3)
trigger9 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1) && var(20) >= 3)
trigger10 = (stateno = 1620 && var(20) >= 3)
trigger11 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1) && var(20) >= 3)
trigger12 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1) && var(20) >= 3)
trigger13 = (stateno = 670 && animelemtime(10) >= 2 && var(20) >= 3)
trigger14 = (stateno = 680 && animelemtime(15) >= 1 && var(20) >= 3)
trigger15 = (stateno = 700 && animelemtime(7) >= 1 && var(20) >= 3)
trigger16 = (stateno = 710 && animelemtime(4) >= 1 && var(20) >= 3)
trigger17 = (stateno = 720 && animelemtime(7) >= 1 && var(20) >= 3)
trigger18 = (stateno = 760 && (movecontact || animelemtime(5) >= 1) && var(20) >= 3)
trigger19 = (stateno = 920 && animelemtime(17) >= 3)
trigger20 = (stateno = 1400 && animelemtime(6) >= 1 && var(20) >= 3)
trigger21 = (stateno = 1410 && animelemtime(6) >= 1 && var(20) >= 3)

[State -1, Switch to Air Combo Finisher]
type = changestate
value = 630
triggerall = statetype = A
triggerall = command = "x" || command = "fwd_x" || command = "Special2x" || command = "Dragon Punchx" || command = "Special2y"
triggerall = command != "x+y+a+b"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(22) < 4
triggerall = stateno != 630
trigger1 = (stateno = 280 && animelemtime(15) >= 1 && var(20) >= 6)
trigger2 = (stateno = 411 && animelemtime(4) >= 1)
trigger3 = (stateno = 600 && animelemtime(7) >= 1 && var(20) >= 6)
trigger4 = (stateno = 610 && animelemtime(4) >= 1 && var(20) >= 6)
trigger5 = (stateno = 620 && animelemtime(7) >= 1 && var(20) >= 6)
trigger6 = (stateno = 640 && animelemtime(5) >= 1)
trigger7 = (stateno = 650 && animelemtime(15) >= 1 && var(20) >= 6)
trigger8 = (stateno = 1610 && var(20) >= 6)
trigger9 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1) && var(20) >= 6)
trigger10 = (stateno = 1620 && var(20) >= 6)
trigger11 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1) && var(20) >= 6)
trigger12 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1) && var(20) >= 6)
trigger13 = (stateno = 670 && animelemtime(10) >= 2 && var(20) >= 6)
trigger14 = (stateno = 680 && animelemtime(15) >= 1 && var(20) >= 6)
trigger15 = (stateno = 700 && animelemtime(7) >= 1 && var(20) >= 6)
trigger16 = (stateno = 710 && animelemtime(4) >= 1 && var(20) >= 6)
trigger17 = (stateno = 720 && animelemtime(7) >= 1 && var(20) >= 6)
trigger18 = (stateno = 760 && (movecontact || animelemtime(5) >= 1) && var(20) >= 6)
trigger19 = (stateno = 920 && animelemtime(17) >= 3)
trigger20 = (stateno = 1400 && animelemtime(6) >= 1 && var(20) >= 6)
trigger21 = (stateno = 1410 && animelemtime(6) >= 1 && var(20) >= 6)

[state -1, Groundbreaker]
type = changestate
value = 640
triggerall = command = "down_b" && statetype = A && (stateno != 640)
triggerall = command != "x+y+a+b"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = command != "Dragon Punchx" 
triggerall = var(17) = 0
triggerall = var(22) < 4
trigger1 = ctrl
trigger2 = (stateno = 280 && animelemtime(15) >= 1)
trigger3 = (stateno = 600 && animelemtime(7) >= 1)
trigger4 = (stateno = 610 && animelemtime(4) >= 1)
trigger5 = (stateno = 620 && animelemtime(7) >= 1)
trigger6 = (stateno = 630 && animelemtime(14) >= 2)
trigger7 = (stateno = 650 && animelemtime(15) >= 1)
trigger8 = (stateno = 670 && animelemtime(10) >= 2)
trigger9 = (stateno = 680 && animelemtime(15) >= 1)
trigger10 = (stateno = 700 && animelemtime(7) >= 1)
trigger11 = (stateno = 710 && animelemtime(4) >= 1)
trigger12 = (stateno = 720 && animelemtime(7) >= 1)
trigger13 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
trigger14 = (stateno = 920 && animelemtime(17) >= 1)

[state -1, Horizontal Slash]
type = changestate
value = 650
triggerall = command = "fwd_x" && statetype = A && (stateno != 650)
triggerall = command != "x+y+a+b"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = command != "Dragon Punchx" 
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = ctrl
trigger2 = (stateno = 280 && animelemtime(15) >= 1)
trigger3 = (stateno = 600 && animelemtime(7) >= 1)
trigger4 = (stateno = 610 && animelemtime(4) >= 1)
trigger5 = (stateno = 620 && animelemtime(7) >= 1)
trigger6 = (stateno = 670 && animelemtime(10) >= 2)
trigger7 = (stateno = 680 && animelemtime(15) >= 1)
trigger8 = (stateno = 700 && animelemtime(7) >= 1)
trigger9 = (stateno = 710 && animelemtime(4) >= 1)
trigger10 = (stateno = 720 && animelemtime(7) >= 1)
trigger11 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, Flash Step, Air]
type = changestate
value = 670
triggerall = command = "Special2x" && (statetype = A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = ctrl
trigger2 = (stateno = 280 && animelemtime(15) >= 1)
trigger3 = (stateno = 600 && animelemtime(7) >= 1)
trigger4 = (stateno = 610 && animelemtime(4) >= 1)
trigger5 = (stateno = 620 && animelemtime(7) >= 1)
trigger6 = (stateno = 650 && animelemtime(15) >= 1)
trigger7 = (stateno = 680 && animelemtime(15) >= 1)
trigger8 = (stateno = 700 && animelemtime(7) >= 1)
trigger9 = (stateno = 710 && animelemtime(4) >= 1)
trigger10 = (stateno = 720 && animelemtime(7) >= 1)
trigger11 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, Aerial Sweep, Air]
type = changestate
value = 680
triggerall = command = "Dragon Punchx" && (statetype = A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(8) >= 2)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 270 && animelemtime(10) >= 2)
trigger16 = (stateno = 280 && animelemtime(15) >= 1)
trigger17 = (stateno = 300 && animelemtime(8) >= 1)
trigger18 = (stateno = 310 && animelemtime(8) >= 1)
trigger19 = (stateno = 320 && animelemtime(8) >= 2)
trigger20 = (stateno = 340 && animelemtime(11) >= 1)
trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger22 = (stateno = 600 && (movecontact || animelemtime(7) >= 1))
trigger23 = (stateno = 610 && (movecontact || animelemtime(4) >= 1))
trigger24 = (stateno = 620 && (movecontact || animelemtime(7) >= 1))
trigger25 = (stateno = 650 && (movecontact || animelemtime(15) >= 1))
trigger26 = (stateno = 670 && animelemtime(10) >= 2)
trigger27 = (stateno = 700 && (movecontact || animelemtime(7) >= 1))
trigger28 = (stateno = 710 && (movecontact || animelemtime(4) >= 1))
trigger29 = (stateno = 720 && (movecontact || animelemtime(7) >= 1))
trigger30 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
trigger31 = (stateno = 1400 && animelemtime(6) >= 1)
trigger32 = (stateno = 1410 && animelemtime(6) >= 1)

;[State -1, Throw 1 - Upper Slash]
;type = changestate
;value = 800
;triggerall = var(59) = 0
;triggerall = P2StateType = S && statetype = S && command = "fwd_y" && p2bodydist X < 35
;trigger1 = ctrl
;trigger2 = (stateno = 1610)
;trigger3 = (stateno = 105)
;trigger4 = (stateno = 107)

;[State -1, Throw 2 - Fierce Finisher]
;type = changestate
;value = 820
;triggerall = var(59) = 0
;triggerall = P2StateType = S && statetype = S && command = "back_y" && p2bodydist X < 35
;trigger1 = ctrl
;trigger2 = (stateno = 1610)
;trigger3 = (stateno = 105)
;trigger4 = (stateno = 107)

[State -1, Air Combo Plus 1]
type = changestate
value = 700
triggerall = command = "y" && statetype = A && (stateno != 680)
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = ctrl
trigger2 = (stateno = 280 && animelemtime(15) >= 1)
trigger3 = (stateno = 620 && (movecontact || animelemtime(7) >= 1))
trigger4 = (stateno = 650 && (movecontact || animelemtime(15) >= 1))
trigger5 = (stateno = 670 && animelemtime(10) >= 2)
trigger6 = (stateno = 680 && animelemtime(15) >= 1)
trigger7 = (stateno = 720 && (movecontact || animelemtime(7) >= 1))
trigger8 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, Air Combo Plus 2]
type = changestate
value = 710
triggerall = command = "y" && statetype = A
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = (stateno = 700 && time >= 20)
trigger2 = (stateno = 600 && animelemtime(7) >= 1)

[State -1, Air Combo Plus 3]
type = changestate
value = 720
triggerall = command = "y" && (statetype = A)
triggerall = command != "x+y+a+b"
triggerall = command != "holddown" 
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holdfwd"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = (stateno = 610 && animelemtime(4) >= 1)
trigger2 = (stateno = 710 && animelemtime(4) >= 1)

[State -1, Sliding Dash, Air]
type = changestate
value = 760
triggerall = command = "Special2y" 
triggerall = statetype = A
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = var(59) = 0
triggerall = var(17) = 0
triggerall = var(20) < 6
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 280 && animelemtime(15) >= 1)
trigger6 = (stateno = 600 && animelemtime(7) >= 1)
trigger7 = (stateno = 610 && animelemtime(4) >= 1)
trigger8 = (stateno = 620 && animelemtime(7) >= 1)
trigger9 = (stateno = 650 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 670 && animelemtime(10) >= 2)
trigger16 = (stateno = 680 && animelemtime(15) >= 1)
trigger17 = (stateno = 700 && animelemtime(7) >= 1)
trigger18 = (stateno = 710 && animelemtime(4) >= 1)
trigger19 = (stateno = 720 && animelemtime(7) >= 1)
trigger20 = (stateno = 740 && animelemtime(11) >= 1)
trigger21 = (stateno = 1400 && animelemtime(6) >= 1)
trigger22 = (stateno = 1410 && animelemtime(6) >= 1)

[State -1, Aerial Finish]
type = changestate
value = 920
triggerall = command = "Special4b" && stateno != 520 && (statetype = A) 
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = var(17) = 0
triggerall = var(59) = 0
triggerall = var(22) < 4
trigger1 = ctrl
trigger2 = (stateno = 280 && animelemtime(15) >= 1)
trigger3 = (stateno = 411 && animelemtime(4) >= 1)
trigger4 = (stateno = 600 && animelemtime(7) >= 1)
trigger5 = (stateno = 610 && animelemtime(4) >= 1)
trigger6 = (stateno = 620 && animelemtime(7) >= 1)
trigger7 = (stateno = 630 && animelemtime(14) >= 2)
trigger8 = (stateno = 640 && animelemtime(5) >= 1)
trigger9 = (stateno = 650 && animelemtime(15) >= 1)
trigger10 = (stateno = 670 && animelemtime(10) >= 2)
trigger11 = (stateno = 680 && animelemtime(15) >= 1)
trigger12 = (stateno = 700 && animelemtime(7) >= 1)
trigger13 = (stateno = 710 && animelemtime(4) >= 1)
trigger14 = (stateno = 720 && animelemtime(7) >= 1)
trigger15 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, Firaga]
type = changestate
value = 1400
triggerall = command != "x+y+a+b"
triggerall = command = "x"
triggerall = (statetype != A) 
triggerall = power >= 300
triggerall = var(17) = 1
triggerall = var(19) < 6
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(11) >= 1)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 270 && animelemtime(10) >= 2)
trigger16 = (stateno = 300 && animelemtime(8) >= 1)
trigger17 = (stateno = 310 && animelemtime(8) >= 1)
trigger18 = (stateno = 320 && animelemtime(11) >= 1)
trigger19 = (stateno = 340 && animelemtime(11) >= 1)
trigger20 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger21 = (stateno = 1400 && animelemtime(6) >= 1)
trigger22 = (stateno = 1410 && animelemtime(6) >= 1)

[State -1, Blizzaga]
type = changestate
value = 1410
triggerall = command != "x+y+a+b"
triggerall = command = "y"
triggerall = (statetype != A) 
triggerall = power >= 300
triggerall = var(17) = 1
triggerall = var(19) < 6
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = (stateno = 105)
trigger3 = (stateno = 107)
trigger4 = (stateno = 111)
trigger5 = (stateno = 200 && animelemtime(8) >= 1)
trigger6 = (stateno = 210 && animelemtime(8) >= 1)
trigger7 = (stateno = 220 && animelemtime(11) >= 1)
trigger8 = (stateno = 240 && animelemtime(7) >= 1)
trigger9 = (stateno = 250 && animelemtime(5) >= 1)
trigger10 = (stateno = 1610)
trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
trigger12 = (stateno = 1620)
trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
trigger15 = (stateno = 270 && animelemtime(10) >= 2)
trigger16 = (stateno = 300 && animelemtime(8) >= 1)
trigger17 = (stateno = 310 && animelemtime(8) >= 1)
trigger18 = (stateno = 320 && animelemtime(11) >= 1)
trigger19 = (stateno = 340 && animelemtime(11) >= 1)
trigger20 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
trigger21 = (stateno = 1400 && animelemtime(6) >= 1)
trigger22 = (stateno = 1410 && animelemtime(6) >= 1)

[State -1, Counterguard - Medium (Ground)]
type = changestate
value = 1750
triggerall = command = "up_a" && statetype = S
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = (stateno = 1610)

[State -1, Counterguard - Heavy (Ground)]
type = changestate
value = 1760
triggerall = command = "up_a" && statetype = S
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = (stateno = 1620)

[State -1, Counterguard - Light (Ground)]
type = changestate
value = 1770
triggerall = command = "up_a" && statetype = S
triggerall = command != "x+y+a+b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(17) = 0
trigger1 = (stateno = 30)


[State -1, Empty Magic]
type = playsnd
value = S100,175
triggerall = var(17) = 1
triggerall = command != "x+y+a+b"
trigger1 = command = "x" 
trigger1 = NumExplod(1304) = 1
trigger2 = command = "y" 
trigger2 = NumExplod(1306) = 1

;[State -1, Gummiship]
;type = changestate
;value = 3000
;trigger1 = command = "c" && command = "shortcut" && power >= 1000 && var(14) = 0 && var(59) = 0
;trigger1 = roundstate = 2
;trigger1 = stateno != [5000,7999]


;[State -1, Level Up]
;type = changestate
;value = 3100
;triggerall = (roundstate = 2) && var(59) = 0
;triggerall = hitover = 1
;trigger1 = (command = "x+y+a+b") && power/30.6 > var(21)
;trigger1 = var(21) > 0
;trigger1 = var(21) < 99

;[State -1, Level Up +2]
;type = changestate
;value = 3101
;triggerall = (roundstate = 2) && var(59) = 0
;trigger1 = command = "x+y+a+b" && (power >= 2000 && power < 3000) && fvar(15) <= 0.5

;[State -1, Level Up +3]
;type = changestate
;value = 3102
;triggerall = (roundstate = 2) && var(59) = 0
;trigger1 = command = "x+y+a+b" && power >= 3000 && fvar(15) < 1.5

;[State -1, AfterImage]
;type = AfterImage
;trigger1 = time = 0
;trigger1 = power <= 1000
;trigger1 = power >= 30.6
;time = 20
;length = 20
;trans = add1
;PalContrast = 50,50,150



;===========================================================================
;Artificial Intelligence
;===========================================================================

[State -1, AI Activation] 
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset ;varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = Var(59) = 1
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
triggerall = random <= 749
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Backward Recovery Roll]
type = ChangeState
value = 895
triggerall =  Var(59) = 1
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
triggerall = random <= 749
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Guard Push]
type = ChangeState
value = 890
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
triggerall = random <= 749
trigger1 = StateNo = [150,153]
;trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

;--|-AI Defense-|-----------------------------------------------------------
[State -1, AI Stand Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1, AI Crouch Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1, AI Air Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

;--|-AI Combos-|------------------------------------------------------------

;Var Set to Random

[State -1, AI Var Set]
type = Varset
trigger1 = 1
v = 58
value = random

;------------------------------Starters---------------------------------------

[State -1, AI Airstep Starter]
type = ChangeState
value = 110
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (p2dist y > 40)
triggerall = p2statetype != L
trigger1 = Ctrl

[State -1, AI Air Dash Back Starter]
type = ChangeState
value = 105
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (p2dist x <= 110)
triggerall = p2statetype = L
trigger1 = Ctrl

[State -1, AI Ground Combo Block Projectiles]
type = ChangeState
value = 30
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (statetype != A)
trigger1 = Ctrl && hitdefattr = SCA,NP
trigger2 = Ctrl && hitdefattr = SCA,SP
trigger3 = Ctrl && hitdefattr = SCA,HP

[State -1, AI Ground Combo Block Normal Attacks]
type = ChangeState
value = 30
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (statetype != A)
triggerall = (p2dist x <= 110)
triggerall = (p2dist y <= 100)
triggerall = p2movetype = A
trigger1 = Ctrl

[State -1, AI Ground Chain Starter 1]
type = ChangeState
value = IfElse(var(58) <= 499, 250, 280)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 1
triggerall = var(22) < 1
triggerall = (statetype != A)
triggerall = (p2dist x <= 80)
triggerall = (p2dist y <= 40)
triggerall = p2statetype != L
trigger1 = Ctrl

[State -1, AI Ground Chain Starter 2]
type = ChangeState
value = IfElse(var(58) <= 99, 200, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 300, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 529, 300, (IfElse(var(58) <= 559, 270, (IfElse(var(58) <= 589, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 1
triggerall = var(22) < 1
triggerall = (statetype != A)
triggerall = (p2dist x <= 120)
triggerall = (p2dist x > 80)
triggerall = (p2dist y <= 40)
triggerall = p2statetype != L
trigger1 = Ctrl

[State -1, AI Ground Chain Starter 3]
type = ChangeState
value = IfElse(var(58) <= 166, 360, (IfElse(var(58) <= 332, 270, (IfElse(var(58) <= 498, 270, (IfElse(var(58) <= 664, 520, IfElse(var(58) <= 830, 1400, 1410))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 1
triggerall = var(22) < 1
triggerall = (statetype != A)
triggerall = (p2dist x > 120)
triggerall = (p2dist y <= 40)
triggerall = p2statetype != L
trigger1 = Ctrl

[State -1, AI Air Chain Starter 1]
type = ChangeState
value = IfElse(var(58) <= 124, 600, (IfElse(var(58) <= 248, 700, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 700, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 899, 670, 680)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 1
triggerall = var(22) < 1
triggerall = (statetype = A)
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 40)
triggerall = p2statetype != L
trigger1 = Ctrl

[State -1, AI Air Chain Starter 2]
type = ChangeState
value = IfElse(var(58) <= 499, 670, 760)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 1
triggerall = var(22) < 1
triggerall = (statetype = A)
triggerall = (p2dist y <= 40)
triggerall = (p2dist x > 120)
triggerall = p2statetype != L
trigger1 = Ctrl


;-----------------------------------------Chain Attacks---------------------------------------------

[State -1, AI Chain Attacks, Airstep]
type = ChangeState
value = IfElse(var(58) <= 124, 600, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 700, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 410)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (statetype = A)
triggerall = (p2dist x <= 120) && (p2dist y <= 100)
triggerall = p2statetype != L
trigger1 = (stateno = 111 && animelemtime(8) >= 3)

[State -1, AI Chain Combos (Ground Combo 1)]
type = Changestate
value = IfElse(var(58) <= 99, 210, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 310, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 310, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 3
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 200 && animelemtime(8) >= 1)

[State -1, AI Chain Finishers (Ground Combo 1)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 200 && animelemtime(8) >= 1)

[State -1, AI Chain Combos (Ground Combo 2)]
type = Changestate
value = IfElse(var(58) <= 99, 220, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 320, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 320, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 3
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 210 && animelemtime(IfElse(random <= 499, 8, 12)) >= 1)

[State -1, AI Chain Finishers (Ground Combo 2)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 210 && animelemtime(IfElse(random <= 499, 8, 12)) >= 1)

[State -1, AI Chain Combos (Ground Combo 3)]
type = Changestate
value = IfElse(var(58) <= 99, 230, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 300, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 280, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 220 && animelemtime(11) >= 2)

[State -1, AI Chain Finishers (Ground Combo 3)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 220 && animelemtime(11) >= 2)

[State -1, AI Chain Finishers (Ground Combo Finisher)]
type = Changestate
value = IfElse(var(58) <= 499, 410, 520)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 230 && animelemtime(12) >= 1)

[State -1, AI Chain Combos (Round Break)]
type = Changestate
value = IfElse(var(58) <= 49, 410, (IfElse(var(58) <= 99, 520, (IfElse(var(58) <= 299, 280, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 300, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 240 && animelemtime(7) >= 1)

[State -1, AI Chain Finishers (Round Break)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 240 && animelemtime(7) >= 1)

[State -1, AI Chain Combos (Slapshot)]
type = Changestate
value = IfElse(var(58) <= 99, 200, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 300, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 280, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 250 && animelemtime(7) >= 1)

[State -1, AI Chain Finishers (Slapshot)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 250 && animelemtime(7) >= 1)

[State -1, AI Chain Combos (Flash Step, Ground)]
type = Changestate
value = IfElse(var(58) <= 99, 200, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 300, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 250, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 280, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 270 && animelemtime(10) >= 2)

[State -1, AI Chain Finishers (Flash Step, Ground)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 270 && animelemtime(10) >= 2)

[State -1, AI Chain Combos (Aerial Sweep, Ground)]
type = Changestate
value = IfElse(var(58) <= 124, 600, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 760, (IfElse(var(58) <= 899, 700, (IfElse(var(58) <= 949, 920, 410)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 280 && animelemtime(15) >= 1)

[State -1, AI Chain Combos (Ground Combo Plus 1)]
type = Changestate
value = IfElse(var(58) <= 99, 310, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 310, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 310, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 300 && animelemtime(8) >= 1)

[State -1, AI Chain Finishers (Ground Combo Plus 1)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 300 && animelemtime(8) >= 1)

[State -1, AI Chain Combos (Ground Combo Plus 2)]
type = Changestate
value = IfElse(var(58) <= 99, 320, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 320, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 280, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 310 && animelemtime(IfElse(random <= 499, 8, 12)) >= 1)

[State -1, AI Chain Finishers (Ground Combo Plus 2)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 310 && animelemtime(IfElse(random <= 499, 8, 12)) >= 1)


[State -1, AI Chain Combos (Ground Combo Plus 3)]
type = Changestate
value = IfElse(var(58) <= 99, 300, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 360, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 280, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 320 && animelemtime(11) >= 2)

[State -1, AI Chain Finishers (Ground Combo Plus 3)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 320 && animelemtime(11) >= 2)

[State -1, AI Chain Combos (Upper Slash)]
type = Changestate
value = IfElse(var(58) <= 332, 280, (IfElse(var(58) <= 667, 410, 510)))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 340 && animelemtime(13) >= 1)

[State -1, AI Chain Finishers (Upper Slash)]
type = Changestate
value = IfElse(var(58) <= 499, 410, 510)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 340 && animelemtime(13) >= 1)

[State -1, AI Chain Combos (Sliding Dash, Ground)]
type = Changestate
value = IfElse(var(58) <= 99, 210, (IfElse(var(58) <= 199, 240, (IfElse(var(58) <= 299, 310, (IfElse(var(58) <= 399, 340, (IfElse(var(58) <= 499, 270, (IfElse(var(58) <= 549, 410, (IfElse(var(58) <= 699, 280, (IfElse(var(58) <= 749, 520, IfElse(var(58) <= 899, 1400, 1410))))))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))

[State -1, AI Chain Finishers (Sliding Dash, Ground)]
type = Changestate
value = IfElse(var(58) <= 249, 230,(IfElse(var(58) <= 499, 410,(IfElse(var(58) <= 749, 510,520)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) >= 6
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))

[State -1, AI Chain Finishers (Finishing Leap)]
type = Changestate
value = IfElse(var(58) <= 332, 630, (IfElse(var(58) <= 667, 920, 640)))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 80)
triggerall = p2statetype != L
trigger1 = (stateno = 411 && animelemtime(5) >= 1)

[State -1, AI Chain Finishers (Explosion)]
type = Changestate
value = IfElse(var(58) <= 499, 410, 110)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 510 && animelemtime(22) >= 1)

[State -1, AI Chain Finishers (Guard Break)]
type = Changestate
value = IfElse(var(58) <= 249, 230, (IfElse(var(58) <= 499,410,(IfElse(var(58) <= 749, 510, 110)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (statetype != A) 
triggerall = (p2dist x <= 120)
triggerall = p2statetype != L
trigger1 = (stateno = 520 && animelemtime(11) >= 1)

[State -1, AI Chain Combos (Air Combo 1)]
type = Changestate
value = IfElse(var(58) <= 124, 610, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 710, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 3
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 600 && animelemtime(9) >= 1)

[State -1, AI Chain Finishers (Air Combo 1)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 600 && animelemtime(9) >= 1)

[State -1, AI Chain Combos (Air Combo 2)]
type = Changestate
value = IfElse(var(58) <= 124, 620, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 720, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920,720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 3
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 610 && animelemtime(6) >= 1)

[State -1, AI Chain Finishers (Air Combo 2)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 610 && animelemtime(6) >= 1)

[State -1, AI Chain Combos (Air Combo 3)]
type = Changestate
value = IfElse(var(58) <= 124, 700, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 630, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 620 && animelemtime(9) >= 1)

[State -1, AI Chain Finishers (Air Combo 3)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 620 && animelemtime(9) >= 1)

[State -1, AI Chain Finishers (Air Combo Finisher)]
type = Changestate
value = IfElse(var(58) <= 332, 640, (IfElse(var(58) <= 667, 410, 920)))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 630 && animelemtime(16) >= 2)

[State -1, AI Chain Finishers (Groundbreaker)]
type = Changestate
value = 410
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
trigger1 = (stateno = 640 && animelemtime(7) >= 1)

[State -1, AI Chain Combos (Horizontal Slash)]
type = Changestate
value = IfElse(var(58) <= 124, 600, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 670, (IfElse(var(58) <= 620, 630, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 650 && animelemtime(17) >= 1)

[State -1, AI Chain Finishers (Horizontal Slash)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 650 && animelemtime(17) >= 1)

[State -1, AI Chain Combos (Flash Step, Air)]
type = Changestate
value = IfElse(var(58) <= 124, 600, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 680, (IfElse(var(58) <= 620, 630, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 670 && animelemtime(10) >= 2)

[State -1, AI Chain Finishers (Flash Step, Air)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 670 && animelemtime(10) >= 2)

[State -1, AI Chain Combos (Aerial Sweep, Air)]
type = Changestate
value = IfElse(var(58) <= 124, 600, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 700, (IfElse(var(58) <= 620, 630, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 680 && animelemtime(15) >= 1)

[State -1, AI Chain Finishers (Aerial Sweep, Air)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 680 && animelemtime(15) >= 1)

[State -1, AI Chain Combos (Air Combo Plus 1)]
type = Changestate
value = IfElse(var(58) <= 124, 710, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 610, (IfElse(var(58) <= 620, 630, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 700 && animelemtime(9) >= 1)

[State -1, AI Chain Finishers (Air Combo Plus 1)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 700 && animelemtime(9) >= 1)

[State -1, AI Chain Combos (Air Combo Plus 2)]
type = Changestate
value = IfElse(var(58) <= 124, 720, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 620, (IfElse(var(58) <= 620, 630, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 710 && animelemtime(6) >= 1)

[State -1, AI Chain Finishers (Air Combo Plus 2)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 710 && animelemtime(6) >= 1)

[State -1, AI Chain Combos (Air Combo Plus 3)]
type = Changestate
value = IfElse(var(58) <= 124, 700, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 630, (IfElse(var(58) <= 620, 680, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 720 && animelemtime(16) >= 2)

[State -1, AI Chain Finishers (Air Combo Plus 3)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 720 && animelemtime(16) >= 2)

[State -1, AI Chain Combos (Sliding Dash, Air)]
type = Changestate
value = IfElse(var(58) <= 124, 700, (IfElse(var(58) <= 248, 640, (IfElse(var(58) <= 372, 650, (IfElse(var(58) <= 496, 630, (IfElse(var(58) <= 620, 600, (IfElse(var(58) <= 744, 760, (IfElse(var(58) <= 868, 920, 720)))))))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) < 6
triggerall = var(22) < 1
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, AI Chain Finishers (Sliding Dash, Air)]
type = Changestate
value = IfElse(var(58) <= 249, 410, (IfElse(var(58) <= 499, 630, (IfElse(var(58) <= 749, 640, 920)))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(20) >= 6
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))

[State -1, AI Chain Finishers (Aerial Finish)]
type = Changestate
value = IfElse(var(58) <= 332, 630, (IfElse(var(58) <= 667, 410, 640)))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(22) < 4
triggerall = (statetype = A) 
triggerall = (p2dist x <= 120)
triggerall = (p2dist y <= 60)
triggerall = p2statetype != L
trigger1 = (stateno = 920 && animelemtime(18) >= 1)

[State -1, AI Chain Combos (Firaga)]
type = Changestate
value = IfElse(var(58) <= 99, 110,(IfElse(var(58) <= 599, 1410, (IfElse(var(58) <= 699, 110, (IfElse(var(58) <= 799, 520, IfElse(var(58) <= 899, 1400, 1410))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = power >= 300
triggerall = (statetype != A) 
triggerall = p2statetype != L
trigger1 = (stateno = 1400 && animelemtime(8) >= 1)

[State -1, AI Chain Combos (Blizzaga)]
type = Changestate
value = IfElse(var(58) <= 99, 110,(IfElse(var(58) <= 599, 1410, (IfElse(var(58) <= 699, 110, (IfElse(var(58) <= 799, 520, IfElse(var(58) <= 899, 1400, 1410))))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = power >= 300
triggerall = (statetype != A) 
triggerall = p2statetype != L
trigger1 = (stateno = 1410 && animelemtime(8) >= 1)

[State -1, AI Chain Defense (Ground Combo Block, Normal Timing Hit)]
type = Changestate
value = IfElse(var(58) <= 99, 110,(IfElse(var(58) <= 599, 105, (IfElse(var(58) <= 699, 110, (IfElse(var(58) <= 799, 240, 1750)))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = p2movetype = A
trigger1 = (stateno = 1610 && animelemtime(1) >= 27)

[State -1, AI Chain Defense (Ground Combo Block, Perfect Timing Hit)]
type = Changestate
value = IfElse(var(58) <= 199, 110,(IfElse(var(58) <= 299, 105, (IfElse(var(58) <= 399, 270, (IfElse(var(58) <= 499, 240, 1760)))))))
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = var(19) < 6
triggerall = var(22) < 1
triggerall = (statetype != A) 
triggerall = p2movetype = A
trigger1 = (stateno = 1620 && animelemtime(1) >= 27)

;[State -1, Attack Cancels}
;type = changestate
;value = 1
;trigger1 = ctrl
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 230 && (movecontact || animelemtime(9) >= 1))
;trigger9 = (stateno = 240 && animelemtime(7) >= 1)
;trigger10 = (stateno = 250 && animelemtime(5) >= 1)
;trigger16 = (stateno = 270 && animelemtime(10) >= 2)
;trigger12 = (stateno = 280 && animelemtime(15) >= 1)
;trigger17 = (stateno = 300 && animelemtime(8) >= 1)
;trigger18 = (stateno = 310 && animelemtime(8) >= 1)
;trigger19 = (stateno = 320 && animelemtime(8) >= 2)
;trigger20 = (stateno = 340 && animelemtime(11) >= 1)
;trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger22 = (stateno = 411 && animelemtime(4) >= 1)
;trigger22 = (stateno = 510 && (movecontact || animelemtime(20) >= 1))
;trigger23 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
;trigger24 = (stateno = 600 && animelemtime(7) >= 1)
;trigger25 = (stateno = 610 && animelemtime(4) >= 1)
;trigger26 = (stateno = 620 && animelemtime(7) >= 1)
;trigger27 = (stateno = 630 && animelemtime(14) >= 2)
;trigger28 = (stateno = 640 && animelemtime(5) >= 1)
;trigger28 = (stateno = 650 && animelemtime(15) >= 1)
;trigger29 = (stateno = 680 && animelemtime(15) >= 1)
;trigger30 = (stateno = 700 && animelemtime(7) >= 1)
;trigger31 = (stateno = 710 && animelemtime(4) >= 1)
;trigger32 = (stateno = 720 && animelemtime(7) >= 1)
;trigger33 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
;trigger34 = (stateno = 920 && animelemtime(17) >= 1)
;trigger35 = (stateno = 1400 && animelemtime(6) >= 1)
;trigger36 = (stateno = 1410 && animelemtime(6) >= 1)
;trigger11 = (stateno = 1610)
;trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger13 = (stateno = 1620)
;trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))

;[State -1, AI Ground Combo 1]
;type = ChangeState
;value = 200
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (p2dist x <= 120)
;triggerall = (p2dist x > 80)
;triggerall = (statetype != A)
;triggerall = var(19) < 3
;trigger1 = (stateno = 105)
;trigger2 = (stateno = 107)
;trigger3 = (stateno = 111)
;trigger4 = (stateno = 240 && animelemtime(7) >= 1)
;trigger5 = (stateno = 250 && animelemtime(5) >= 1)
;trigger6 = (stateno = 1610)
;trigger7 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger8 = (stateno = 1620)
;trigger9 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger10 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger11 = (stateno = 270 && animelemtime(10) >= 2)
;trigger12 = (stateno = 320 && animelemtime(8) >= 2)
;trigger13 = (stateno = 340 && animelemtime(11) >= 1)
;trigger14 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger15 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger16 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, AI Ground Combo 2]
;type = ChangeState
;value = 210
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 200 && animelemtime(8) >= 1)
;
;[State -1, AI Ground Combo 1]
;type = ChangeState
;value = 220
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 210 && animelemtime(IfElse(random <= 499, 8, 12)) >= 1)
;
;[State -1, AI Ground Combo 3]
;type = Changestate
;value = 220
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 210 && animelemtime(8) >= 1)
;
;[State -1, AI Ground Combo Plus 1]
;type = ChangeState
;value = 300
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 220 && animelemtime(12) >= 2)
;
;[State -1, AI Ground Combo Plus 2]
;type = ChangeState
;value = 310
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 300 && animelemtime(8) >= 1)
;
;[State -1, AI Ground Combo Plus 3]
;type = Changestate
;value = 320
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 310 && animelemtime(8) >= 1)
;trigger1 = random%999 >= 0 && random%999 <= 499
;trigger2 = (stateno = 310 && animelemtime(12) >= 1)
;trigger2 = random%999 >= 500 && random%999 <= 999
;
;[State -1, AI Ground Combo Finisher]
;type = changestate
;value = 230
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 320 && animelemtime(12) >= 2)
;
;[State -1, AI Guard Break]
;type = Changestate
;value = 520
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 230 && (animelemtime(9) >= 1))
;
;[State -1, AI Explosion]
;type = changestate
;value = 510
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 520 && (animelemtime(8) >= 1))
;
;[State -1, AI Airstep]
;type = changestate
;value = 110
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 510 && animelemtime(24) >= 1)
;
;[State -1, AI Air Combo 1]
;type = changestate
;value = 600
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;triggerall = p2statetype = A
;trigger1 = stateno = 111
;
;[State -1, AI Air Combo 2]
;type = changestate
;value = 610
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 600 && animelemtime(9) >= 1)
;
;[State -1, AI Air Combo 3]
;type = changestate
;value = 620
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 610 && animelemtime(6) >= 1)
;
;[State -1, AI Air Combo Plus 1]
;type = changestate
;value = 700
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 620 && (animelemtime(9) >= 1))
;
;[State -1, AI Air Combo Plus 2]
;type = changestate
;value = 710
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 700 && animelemtime(9) >= 1)
;
;[State -1, AI Air Combo Plus 3]
;type = changestate
;value = 720
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 710 && animelemtime(6) >= 1)
;
;[State -1, AI Air Combo Finisher]
;type = changestate
;value = 630
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 720 && animelemtime(9) >= 1)
;
;[State -1, AI Aerial Finish]
;type = changestate
;value = 920
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 630 && animelemtime(14) >= 2)


;-------------------------------------------------------------------------------
;Standing Chain 2 (Short Distance)

;[State -1, AI Slapshot]
;type = ChangeState
;value = 250
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;;triggerall = (p2dist x <= 80)
;triggerall = p2statetype = S
;trigger1 = Ctrl
;trigger1 = random >= 250 && random <= 499
;
;[State -1, AI Ground Combo 2]
;type = ChangeState
;value = 210
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 250 && animelemtime(5) >= 1)
;
;[State -1, AI Ground Combo 3]
;type = Changestate
;value = 220
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 210 && animelemtime(8) >= 1)
;trigger1 = random <= 499
;trigger2 = (stateno = 210 && animelemtime(12) >= 1)
;
;[State -1, AI Ground Combo Plus 1]
;type = ChangeState
;value = 300
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 220 && animelemtime(12) >= 2)
;
;[State -1, AI Ground Combo Plus 2]
;type = ChangeState
;value = 310
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 300 && animelemtime(8) >= 1)
;
;[State -1, AI Ground Combo Plus 3]
;type = Changestate
;value = 320
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 310 && animelemtime(8) >= 1)
;trigger1 = random <= 499
;trigger2 = (stateno = 310 && animelemtime(12) >= 1)
;
;[State -1, AI Ground Combo Finisher]
;type = changestate
;value = 230
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 320 && animelemtime(12) >= 2)
;
;[State -1, AI Guard Break]
;type = Changestate
;value = 520
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 230 && (animelemtime(9) >= 1))
;
;[State -1, AI Explosion]
;type = changestate
;value = 510
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 520 && (animelemtime(8) >= 1))
;
;[State -1, AI Airstep]
;type = changestate
;value = 110
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;trigger1 = (stateno = 510 && animelemtime(24) >= 1)
;
;[State -1, AI Air Combo 1]
;type = changestate
;value = 600
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;triggerall = p2statetype = A
;trigger1 = stateno = 111
;
;[State -1, AI Air Combo 2]
;type = changestate
;value = 610
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 600 && animelemtime(9) >= 1)
;
;[State -1, AI Air Combo 3]
;type = changestate
;value = 620
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 610 && animelemtime(6) >= 1)
;
;[State -1, AI Air Combo Plus 1]
;type = changestate
;value = 700
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 620 && (animelemtime(9) >= 1))
;
;[State -1, AI Air Combo Plus 2]
;type = changestate
;value = 710
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 700 && animelemtime(9) >= 1)
;
;[State -1, AI Air Combo Plus 3]
;type = changestate
;value = 720
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 710 && animelemtime(6) >= 1)
;
;[State -1, AI Air Combo Finisher]
;type = changestate
;value = 630
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 720 && animelemtime(9) >= 1)
;
;[State -1, AI Aerial Finish]
;type = changestate
;value = 920
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A)
;trigger1 = (stateno = 630 && animelemtime(14) >= 2)

;[State -1, Round Break]
;type = ChangeState
;value = 240
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;triggerall = (p2bodydist x <= 120)
;triggerall = var(19) < 6
;trigger1 = (ctrl) && (random >= 333) && (random <= 666)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 250 && animelemtime(5) >= 1)
;trigger9 = (stateno = 1610)
;trigger10 = (stateno = 1620)
;trigger11 = (stateno = 1750 && (movecontact || time >= 22))
;trigger12 = (stateno = 1760 && (movecontact || time >= 22))
;trigger13 = (stateno = 1770 && (movecontact || time >= 22))
;trigger14 = (stateno = 270 && animelemtime(10) >= 2)
;trigger15 = (stateno = 300 && animelemtime(8) >= 1)
;trigger16 = (stateno = 310 && animelemtime(8) >= 1)
;trigger17 = (stateno = 320 && animelemtime(8) >= 2)
;trigger18 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger19 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger20 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Slapshot]
;type = changestate
;value = 250
;triggerall = (roundstate = 2) && (var(59) != 0) 
;triggerall = (statetype != A)
;triggerall = (p2bodydist x <= 80)
;triggerall = var(19) < 6
;trigger1 = (ctrl) && (random >= 333) && (random <= 666)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 1610)
;trigger10 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger11 = (stateno = 1620)
;trigger12 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger13 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 270 && animelemtime(10) >= 2)
;trigger15 = (stateno = 300 && animelemtime(8) >= 1)
;trigger16 = (stateno = 310 && animelemtime(8) >= 1)
;trigger17 = (stateno = 320 && animelemtime(8) >= 2)
;trigger18 = (stateno = 340 && animelemtime(11) >= 1)
;trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger21 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Flash Step, Ground]
;type = changestate
;value = 270
;triggerall = (roundstate = 2) && (var(59) != 0) 
;triggerall = (statetype != A)
;triggerall = (p2bodydist x <= 200)
;triggerall = var(19) < 6
;trigger1 = ctrl
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 250 && animelemtime(5) >= 1)
;trigger10 = (stateno = 1610)
;trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger12 = (stateno = 1620)
;trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 300 && animelemtime(8) >= 1)
;trigger16 = (stateno = 310 && animelemtime(8) >= 1)
;trigger17 = (stateno = 320 && animelemtime(8) >= 2)
;trigger18 = (stateno = 340 && animelemtime(11) >= 1)
;trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger21 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Aerial Sweep Combo]
;type = Changestate
;value = 280
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;triggerall = (p2bodydist x <= 80) && (p2bodydist y <= -80)
;triggerall = var(19) < 6
;trigger1 = (ctrl) && (random <= 332)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 250 && animelemtime(5) >= 1)
;trigger10 = (stateno = 1610)
;trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger12 = (stateno = 1620)
;trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 270 && animelemtime(10) >= 2)
;trigger16 = (stateno = 300 && animelemtime(8) >= 1)
;trigger17 = (stateno = 310 && animelemtime(8) >= 1)
;trigger18 = (stateno = 320 && animelemtime(8) >= 2)
;trigger19 = (stateno = 340 && animelemtime(11) >= 1)
;trigger20 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger21 = (stateno = 600 && (movecontact || animelemtime(7) >= 1))
;trigger22 = (stateno = 610 && (movecontact || animelemtime(4) >= 1))
;trigger23 = (stateno = 620 && (movecontact || animelemtime(7) >= 1))
;trigger24 = (stateno = 650 && (movecontact || animelemtime(15) >= 1))
;trigger25 = (stateno = 670 && animelemtime(10) >= 2)
;trigger26 = (stateno = 700 && (movecontact || animelemtime(7) >= 1))
;trigger27 = (stateno = 710 && (movecontact || animelemtime(4) >= 1))
;trigger28 = (stateno = 720 && (movecontact || animelemtime(7) >= 1))
;trigger29 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
;trigger30 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger31 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Upward Slash Chain]
;type = Changestate
;value = 340
;triggerall = (roundstate = 2) && (var(59) != 0) 
;triggerall = (statetype != A)
;triggerall = (p2bodydist x <= 80)
;triggerall = var(19) < 6
;trigger1 = (Ctrl) && (random >= 667)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 250 && animelemtime(5) >= 1)
;trigger10 = (stateno = 1610)
;trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger12 = (stateno = 1620)
;trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 270 && animelemtime(10) >= 2)
;trigger16 = (stateno = 300 && animelemtime(8) >= 1)
;trigger17 = (stateno = 310 && animelemtime(8) >= 1)
;trigger18 = (stateno = 320 && animelemtime(8) >= 2)
;trigger19 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger21 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Sliding Dash Combo]
;type = ChangeState
;value = 360
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;triggerall = (p2bodydist x > 200)
;triggerall = var(19) < 6
;trigger1 = (Ctrl) && (random <= 332)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 250 && animelemtime(5) >= 1)
;trigger10 = (stateno = 1610)
;trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger12 = (stateno = 1620)
;trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 270 && animelemtime(10) >= 2)
;trigger16 = (stateno = 300 && animelemtime(8) >= 1)
;trigger17 = (stateno = 310 && animelemtime(8) >= 1)
;trigger18 = (stateno = 320 && animelemtime(8) >= 2)
;trigger19 = (stateno = 340 && animelemtime(11) >= 1)
;trigger20 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger21 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Firaga]
;type = changestate
;value = 1400
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;triggerall = (p2bodydist x > 200)
;triggerall = var(19) < 6
;trigger1 = (Ctrl) && (random >= 333) && (random <= 666)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(11) >= 1)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 250 && animelemtime(5) >= 1)
;trigger10 = (stateno = 1610)
;trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger12 = (stateno = 1620)
;trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 270 && animelemtime(10) >= 2)
;trigger16 = (stateno = 300 && animelemtime(8) >= 1)
;trigger17 = (stateno = 310 && animelemtime(8) >= 1)
;trigger18 = (stateno = 320 && animelemtime(11) >= 1)
;trigger19 = (stateno = 340 && animelemtime(11) >= 1)
;trigger20 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger21 = (stateno = 1400 && animelemtime(6) >= 1)
;trigger22 = (stateno = 1410 && animelemtime(6) >= 1)
;
;[State -1, Blizzaga]
;type = changestate
;value = 1410
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype != A)
;triggerall = (p2bodydist x > 200)
;triggerall = var(19) < 6
;trigger1 = (Ctrl) && (random >= 667)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(11) >= 1)
;trigger8 = (stateno = 240 && animelemtime(7) >= 1)
;trigger9 = (stateno = 250 && animelemtime(5) >= 1)
;trigger10 = (stateno = 1610)
;trigger11 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger12 = (stateno = 1620)
;trigger13 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger14 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 270 && animelemtime(10) >= 2)
;trigger16 = (stateno = 300 && animelemtime(8) >= 1)
;trigger17 = (stateno = 310 && animelemtime(8) >= 1)
;trigger18 = (stateno = 320 && animelemtime(11) >= 1)
;trigger19 = (stateno = 340 && animelemtime(11) >= 1)
;trigger20 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger21 = (stateno = 1400 && animelemtime(6) >= 1)
;trigger22 = (stateno = 1410 && animelemtime(6) >= 1)
;
;;End Standing Chain
;
;;---------------------------------------------------------------------------
;
;;Finisher Chain
;
;[State -1, Finishing Leap Combo]
;type = Changestate
;value = 410
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = var(17) = 0
;triggerall = var(22) < 4
;triggerall = (p2bodydist x <= 120)
;trigger1 = Ctrl && (random <= 499)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 230 && (movecontact || animelemtime(9) >= 1))
;trigger9 = (stateno = 240 && animelemtime(7) >= 1)
;trigger10 = (stateno = 250 && animelemtime(5) >= 1)
;trigger11 = (stateno = 1610)
;trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger13 = (stateno = 1620)
;trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger16 = (stateno = 270 && animelemtime(10) >= 2)
;trigger17 = (stateno = 300 && animelemtime(8) >= 1)
;trigger18 = (stateno = 310 && animelemtime(8) >= 1)
;trigger19 = (stateno = 320 && animelemtime(8) >= 2)
;trigger20 = (stateno = 340 && animelemtime(11) >= 1)
;trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger22 = (stateno = 510 && (movecontact || animelemtime(20) >= 1))
;trigger23 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
;trigger24 = (stateno = 600 && animelemtime(7) >= 1)
;trigger25 = (stateno = 610 && animelemtime(4) >= 1)
;trigger26 = (stateno = 620 && animelemtime(7) >= 1)
;trigger27 = (stateno = 630 && animelemtime(14) >= 2)
;trigger28 = (stateno = 640 && animelemtime(5) >= 1)
;trigger29 = (stateno = 650 && animelemtime(15) >= 1)
;trigger30 = (stateno = 680 && animelemtime(15) >= 1)
;trigger31 = (stateno = 700 && animelemtime(7) >= 1)
;trigger32 = (stateno = 710 && animelemtime(4) >= 1)
;trigger33 = (stateno = 720 && animelemtime(7) >= 1)
;trigger34 = (stateno = 760 && (movecontact || animelemtime(5) >= 1))
;trigger35 = (stateno = 920 && animelemtime(17) >= 1)
;trigger36 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger37 = (stateno = 1410 && animelemtime(5) >= 1)
;
;[State -1, Explosion Combo]
;type = changestate
;value = 510
;triggerall = (statetype != A) 
;triggerall = var(59) != 0
;triggerall = var(17) = 0
;triggerall = var(22) < 4
;trigger1 = ctrl && (random <= 499)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 230 && animelemtime(9) >= 1)
;trigger9 = (stateno = 240 && animelemtime(7) >= 1)
;trigger10 = (stateno = 250 && animelemtime(5) >= 1)
;trigger11 = (stateno = 1610)
;trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger13 = (stateno = 1620)
;trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger16 = (stateno = 270 && animelemtime(10) >= 2)
;trigger17 = (stateno = 300 && animelemtime(8) >= 1)
;trigger18 = (stateno = 310 && animelemtime(8) >= 1)
;trigger19 = (stateno = 320 && animelemtime(8) >= 2)
;trigger20 = (stateno = 340 && animelemtime(11) >= 1)
;trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger22 = (stateno = 520 && (movecontact || animelemtime(8) >= 1))
;trigger23 = (stateno = 1400 && animelemtime(5) >= 1)
;trigger24 = (stateno = 1410 && animelemtime(6) >= 1)
;
;[State -1, Guard Break Combo]
;type = Changestate
;value = 520
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = statetype = S
;triggerall = (p2bodydist x <= 80)
;triggerall = (statetype != A) 
;triggerall = var(17) = 0
;triggerall = var(59) != 0
;triggerall = var(22) < 4
;trigger1 = ctrl && (random <= 499)
;trigger2 = (stateno = 105)
;trigger3 = (stateno = 107)
;trigger4 = (stateno = 111)
;trigger5 = (stateno = 200 && animelemtime(8) >= 1)
;trigger6 = (stateno = 210 && animelemtime(8) >= 1)
;trigger7 = (stateno = 220 && animelemtime(8) >= 2)
;trigger8 = (stateno = 230 && (movecontact || animelemtime(9) >= 1))
;trigger9 = (stateno = 240 && animelemtime(7) >= 1)
;trigger10 = (stateno = 250 && animelemtime(5) >= 1)
;trigger11 = (stateno = 1610)
;trigger12 = (stateno = 1750 && (movecontact || animelemtime(8) >= 1))
;trigger13 = (stateno = 1620)
;trigger14 = (stateno = 1760 && (movecontact || animelemtime(8) >= 1))
;trigger15 = (stateno = 1770 && (movecontact || animelemtime(8) >= 1))
;trigger16 = (stateno = 270 && animelemtime(10) >= 2)
;trigger17 = (stateno = 300 && animelemtime(8) >= 1)
;trigger18 = (stateno = 310 && animelemtime(8) >= 1)
;trigger19 = (stateno = 320 && animelemtime(8) >= 2)
;trigger20 = (stateno = 340 && animelemtime(11) >= 1)
;trigger21 = (stateno = 360 && (movecontact || animelemtime(5) >= 1))
;trigger22 = (stateno = 510 && (movecontact || animelemtime(20) >= 1))
;trigger23 = (stateno = 1400 && animelemtime(6) >= 1)
;trigger24 = (stateno = 1410 && animelemtime(6) >= 1)

;---------------------------------------------------------------------------
;Start Air Chain

;[State -1, Air Chain Combo]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (stateno != 300) && (stateno != 302)
;triggerall = prevstateno != 300
;triggerall = prevstateno != 302
;trigger1 = (stateno = 320 && time >= 25)
;ignorehitpause = 0
;value = 300
;
;[State -1, Air Chain Combo]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (statetype = A) && prevstateno != 600
;triggerall = (stateno != 600) && (p2bodydist x <= 25) && (p2bodydist y <= 50)
;trigger1 = (stateno = 250 && time >=30)
;trigger2 = (stateno = 302 && time >=10)
;trigger3 = Ctrl
;value = 600
;ignorehitpause = 0
;
;[State -1, Air Chain Combo]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0) && prevstateno != 610
;triggerall = (statetype = A) && (stateno != 610)
;trigger1 = (stateno = 600 && animelemtime(7) >= 1)
;value = 610
;ignorehitpause = 0
;
;[State -1, Air Chain Combo]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = AILevel >= 3 && prevstateno != 620
;triggerall = statetype = A
;triggerall = (stateno != 620)
;trigger1 = (stateno = 610 && animelemtime(4) >= 1)
;value = 620
;ignorehitpause = 0
;
;[State -1, Air Chain Combo]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = AILevel >= 3 && prevstateno != 630
;triggerall = statetype = A
;triggerall = (stateno != 630)
;trigger1 = (stateno = 620 && animelemtime(7) >= 1)
;value = 630
;ignorehitpause = 0
;
;;End Air Chain
;;===========================================================================
;
;;===========================================================================
;;AI Level Up
;
;;[State -1, AI Level Up +1]
;;type = ChangeState
;;triggerall = (roundstate = 2) && (var(59) != 0)
;;triggerall = (power >= 1000 && power < 2000) && fvar(15) = 0
;;trigger1 = P2Life >= 750
;;trigger1 = life <= 500
;;trigger2 = P2Life >= 500
;;trigger2 = life <= 250
;;value = Strength VarSet
;;persistent = 0
;;
;;[State -1, AI Level Up +2]
;;type = ChangeState
;;triggerall = (roundstate = 2) && (var(59) != 0)
;;triggerall = (power >= 2000 && power < 3000) && fvar(15) <= 0.5
;;trigger1 = P2Life >= 750
;;trigger1 = life <= 500
;;trigger2 = P2Life >= 500
;;trigger2 = life <= 250
;;value = 3101
;;persistent = 0
;;
;;[State -1, AI Level Up +3]
;;type = ChangeState
;;triggerall = (roundstate = 2) && (var(59) != 0)
;;triggerall = power >= 3000 && fvar(15) < 1.5
;;trigger1 = P2Life >= 750
;;trigger1 = life <= 500
;;trigger2 = P2Life >= 500
;;trigger2 = life <= 250
;;value = 3102
;;persistent = 0
;
;
;;Commands
;;===========================================================================
;
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;
;;AI Commands
;;--------------------------------------------------------------------------
;
;[State -1, Dash Forward]
;type = ChangeState
;value = 100
;triggerall = var(59) != 0 
;triggerall = StateType = S
;triggerall = (Ctrl) && (StateNo != 100)
;trigger1 = Command = "FF"
;
;[State -1, Jump Back]
;type = ChangeState
;value = 105
;triggerall = var(59) != 0
;triggerall = StateType = S
;triggerall = (Ctrl) && (StateNo != 105)
;trigger1 = Command = "BB"
;
;[State -1, Air Dash Fwd]
;type = ChangeState
;value = 107
;triggerall = var(59) != 0
;triggerall = StateType = S
;triggerall = (Ctrl) && (StateNo != 107)
;trigger1 = Command = "QuickDash"
;trigger1 = Command = "holdfwd"
;trigger1 = command != "x+y+a+b"
;trigger1 = command != "holdback"
;
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = var(59) != 0
;triggerall = Command = "s"
;triggerall = Command != "holddown"
;triggerall = stateno != 100
;trigger1 = (StateType = S) && (Ctrl)


;--------------------------------------------------------------------------

;--------------------------------------------------------------------------

;--------------------------------------------------------------------------

;--------------------------------------------------------------------------

[State -1, Guard Push Stand]
type = ChangeState
value = 880
triggerall = !Var(59)
triggerall = command != "x+y+a+b"
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push Crouch]
type = ChangeState
value = 881
triggerall = !Var(59)
triggerall = command != "x+y+a+b"
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push Jump]
type = ChangeState
value = 882
triggerall = !Var(59)
triggerall = command != "x+y+a+b"
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !Var(59)
trigger1 = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = Command = "holdup"
trigger2 = stateno = 420 && movehit
trigger3 = command = "holdup"
trigger3 = stateno = 810 && movehit