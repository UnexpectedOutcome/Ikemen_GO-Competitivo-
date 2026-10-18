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
command.time = 15
command.buffer.time = 1

;-| AI |--------------------------------------------------------
[Command]
Name = "AI_00"
Command = U, U, D, D, B, F, B, F, b, a
Time = 0

[Command]
Name = "AI_01"
Command = U, U, D, D, B, F, B, F, a, a
Time = 0

[Command]
Name = "AI_02"
Command = U, U, D, D, B, F, B, F, b, b
Time = 0

[Command]
Name = "AI_03"
Command = U, U, D, D, B, F, B, F, c, c
Time = 0

[Command]
Name = "AI_04"
Command = U, U, D, D, B, F, B, F, x, x
Time = 0

[Command]
Name = "AI_05"
Command = U, U, D, D, B, F, B, F, y, y
Time = 0

[Command]
Name = "AI_06"
Command = U, U, D, D, B, F, B, F, z, z
Time = 0

[Command]
Name = "AI_07"
Command = U, U, D, D, B, F, B, F, s, s
Time = 0

[Command]
Name = "AI_08"
Command = U, U, D, D, B, F, B, F, a, b
Time = 0

[Command]
Name = "AI_09"
Command = U, U, D, D, B, F, B, F, a, c
Time = 0

[Command]
Name = "AI_10"
Command = U, U, D, D, B, F, B, F, a, x
Time = 0

[Command]
Name = "AI_11"
Command = U, U, D, D, B, F, B, F, a, y
Time = 0

[Command]
Name = "AI_12"
Command = U, U, D, D, B, F, B, F, a, z
Time = 0

[Command]
Name = "AI_13"
Command = U, U, D, D, B, F, B, F, a, s
Time = 0

[Command]
Name = "AI_14"
Command = U, U, D, D, B, F, B, F, b, c
Time = 0

[Command]
Name = "AI_15"
Command = U, U, D, D, B, F, B, F, b, x
Time = 0

[Command]
Name = "AI_16"
Command = U, U, D, D, B, F, B, F, b, y
Time = 0

[Command]
Name = "AI_17"
Command = U, U, D, D, B, F, B, F, b, z
Time = 0

[Command]
Name = "AI_18"
Command = U, U, D, D, B, F, B, F, b, s
Time = 0

[Command]
Name = "AI_19"
Command = U, U, D, D, B, F, B, F, c, a
Time = 0

[Command]
Name = "AI_20"
Command = U, U, D, D, B, F, B, F, c, b
Time = 0

[Command]
Name = "AI_21"
Command = U, U, D, D, B, F, B, F, c, x
Time = 0

[Command]
Name = "AI_22"
Command = U, U, D, D, B, F, B, F, c, y
Time = 0

[Command]
Name = "AI_23"
Command = U, U, D, D, B, F, B, F, c, z
Time = 0

[Command]
Name = "AI_24"
Command = U, U, D, D, B, F, B, F, c, s
Time = 0

[Command]
Name = "AI_25"
Command = U, U, D, D, B, F, B, F, s, a
Time = 0

[Command]
Name = "AI_26"
Command = U, U, D, D, B, F, B, F, s, b
Time = 0

[Command]
Name = "AI_27"
Command = U, U, D, D, B, F, B, F, s, c
Time = 0

[Command]
Name = "AI_28"
Command = U, U, D, D, B, F, B, F, s, x
Time = 0

[Command]
Name = "AI_29"
Command = U, U, D, D, B, F, B, F, s, y
Time = 0

[Command]
Name = "AI_30"
Command = U, U, D, D, B, F, B, F, s, z
Time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "MAX Daburu"
command = ~D, DF, F, D, DF, F, z
time = 40

[Command]
name = "MAX Daburu"
command = ~D, DF, F, D, DF, F, x+y
time = 40

[Command]
name = "MAX Boushi"
command = ~D, DF, F, D, DF, F, c
time = 40

[Command]
name = "MAX Boushi"
command = ~D, DF, F, D, DF, F, a+b
time = 40

[Command]
name = "Daburu"
command = ~D, DF, F, D, DF, F, x
time = 40

[Command]
name = "Daburu"
command = ~D, DF, F, D, DF, F, y
time = 40

[Command]
name = "Boushi"
command = ~D, DF, F, D, DF, F, a
time = 40

[Command]
name = "Boushi"
command = ~D, DF, F, D, DF, F, b
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "Kishin_x"
command = ~D, DB, B, x

[Command]
name = "Kishin_y"
command = ~D, DB, B, y

[Command]
name = "Godan_a"
command = ~D, DB, B, a

[Command]
name = "Godan_b"
command = ~D, DB, B, b

[Command]
name = "Surasshu_x"
command = ~D, DF, F, x

[Command]
name = "Surasshu_y"
command = ~D, DF, F, y

[Command]
name = "Boushi_a"
command = ~D, DF, F, a

[Command]
name = "Boushi_b"
command = ~D, DF, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = z
time = 5

[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "QC"
command = a+b
time = 5

[Command]
name = "QC"
command = x+y
time = 5

[Command]
name = "XB"
command = x+b
time = 5

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

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
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

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;MAX Kishin No Boushi
[State -1]
type = ChangeState
value = 3600
triggerall = Var(59) != 1
triggerall = Command = "MAX Boushi" && power >= 2000 && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = (stateno = 1200) && movecontact
trigger7 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;MAX Daburu Surasshu Atakku
[State -1]
type = ChangeState
value = 3500
triggerall = Var(59) != 1 && Numhelper(3505) <=0
triggerall = Command = "MAX Daburu" && power >= 2000 && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = (stateno = 1200) && movecontact
trigger7 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;Kishin No Boushi
[State -1]
type = ChangeState
value = 3100
triggerall = Var(59) != 1
triggerall = Command = "Boushi" && power >= 1000 && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = (stateno = 1200) && movecontact
trigger7 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;Daburu Surasshu Atakku
[State -1]
type = ChangeState
value = 3000
triggerall = Var(59) != 1 && Numhelper(3505) <=0
triggerall = Command = "Daburu" && power >= 1000 && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = (stateno = 1200) && movecontact
trigger7 = stateno = 230 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Kishin No Tetsudai
[State -1]
type = ChangeState
value = 1300
triggerall = Var(59) != 1 && Numhelper(1302) <=0
triggerall = Command = "Kishin_x" && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)

[State -1]
type = ChangeState
value = 1310
triggerall = Var(59) != 1 && roundstate = 2
triggerall = Command = "Kishin_y" && Numhelper(1302) <=0
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)

;---------------------------------------------------------------------------
;Godan-Kikku
[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) != 1 && roundstate = 2
triggerall = Command = "Godan_a"
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = stateno = 230 && movecontact

[State -1]
type = ChangeState
value = 1210
triggerall = Var(59) != 1 && roundstate = 2
triggerall = Command = "Godan_b"
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;Boushi Otoshi
[State -1]
type = ChangeState
value = 1100
triggerall = Var(59) != 1
triggerall = Command = "Boushi_a" && NumProjID(1105) <=0 && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = stateno = 230 && movecontact

[State -1]
type = ChangeState
value = 1100
triggerall = Var(59) != 1
triggerall = Command = "Boushi_b" && NumProjID(1105) <=0 && roundstate = 2
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;Surasshu Atakku
[State -1]
type = ChangeState
value = 1000
triggerall = Var(59) != 1 && Numhelper(3505) <=0
triggerall = roundstate = 2
triggerall = Command = "Surasshu_x" && NumProjID(1010) <=0 && NumProjID(1015) <=0
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = stateno = 230 && movecontact

[State -1]
type = ChangeState
value = 1010
triggerall = Var(59) != 1 && Numhelper(3505) <=0
triggerall = roundstate = 2
triggerall = Command = "Surasshu_y" && NumProjID(1010) <=0 && NumProjID(1015) <=0
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && AnimElemTime(11) >= 0 && movecontact
trigger4 = ((stateno = [255,257]) || stateno = 910) && movecontact
trigger5 = (stateno = 700) && (AnimElemTime(5) >= 3 || movecontact)
trigger6 = stateno = 230 && movecontact

;===========================================================================
[State -1]
type = ChangeState
value = 950
triggerall = Var(59) != 1 && roundstate = 2
trigger1 = command = "start" && command = "holddown"
trigger1 = power < 3000 && statetype != A && ctrl

[State -1]
type = ChangeState
value = 955
triggerall = Var(59) != 1 && roundstate = 2
trigger1 = command = "hold_x" && command = "hold_y" && command = "hold_a"
trigger1 = power < 3000 && statetype != A && ctrl

[State -1]
type = ChangeState
value = 900
triggerall = Var(59) != 1
triggerall = command = "QC" && roundstate = 2
trigger1 = StateType != A && (ctrl || (Stateno = [100,101]))

[State -1]
type = ChangeState
value = 910
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "x" || command = "y" || command = "a" || command = "b"
trigger1 = (stateno = 900 && AnimElemTime(3) >= 0)

[State -1]
type = ChangeState
value = 750
triggerall = Var(59) != 1 && statetype != A && roundstate = 2
triggerall = Command = "QC" && power >= 1000
trigger1 = (stateno = [200,3999])
trigger1 = (stateno != [1500,1999]) && (stateno != 3000)
trigger1 = movecontact = [1,2]

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 85
triggerall = Var(59) != 1 && roundstate = 2
triggerall = Command = "recovery" && power >= 1000
trigger1 = (stateno = [200,440]) && (stateno != 240 && (stateno != [255,257]))
trigger1 = movecontact
trigger2 = stateno = 240 && movecontact

[State -1]
type = ChangeState
value = 80
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = Command = "recovery" && Command != "holdback" || Command = "recovery" && Command = "holdfwd"
trigger1 = StateType != A && Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = (stateno = [150,153]) && power >= 1000

[State -1]
type = ChangeState
value = 90
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = Command = "recovery" && Command = "holdback"
trigger1 = StateType != A && Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = (stateno = [150,153]) && power >= 1000

;---------------------------------------------------------------------------
;CD Attacks
[State -1]
type = ChangeState
value = 700
triggerall = Var(59) != 1
triggerall = (command = "c" || command = "CD") && roundstate = 2
trigger1 = statetype != A && (ctrl || (Stateno = [100,101]))

[State -1]
type = ChangeState
value = 710
triggerall = Var(59) != 1
triggerall = (command = "c" || command = "CD") && roundstate = 2
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 720
triggerall = Var(59) != 1
triggerall = (command = "c" || command = "CD") && roundstate = 2
trigger1 = (stateno = [150,153]) && (power >= 1000)

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) != 1
trigger1 = command = "FF" && statetype = S && ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) != 1
trigger1 = command = "BB" && statetype = S && ctrl

[State -1]
type = ChangeState
value = 800
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 7 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 850
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "b" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 7 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;===========================================================================
;---------------------------------------------------------------------------
;SamSho Stance
[State -1]
type = ChangeState
value = 250
triggerall = Var(59) != 1 && roundstate = 2
triggerall = Command = "XB"
trigger1 = statetype = S && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;Normal Attacks
[State -1]
type = ChangeState
value = 200
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "x" && command != "holddown"
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 400 && time >= 4

[State -1]
type = ChangeState
value = 210
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "y" && command != "holddown"
triggerall = P2Bodydist X <= 15
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 10

[State -1]
type = ChangeState
value = 215
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "y" && command != "holddown"
triggerall = P2Bodydist X > 15
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 10

[State -1]
type = ChangeState
value = 230
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2Bodydist X <= 22
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 10

[State -1]
type = ChangeState
value = 235
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2Bodydist X > 22
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 10

[State -1]
type = ChangeState
value = 240
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "b" && command != "holddown"
triggerall = P2Bodydist X <= 15
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 10

[State -1]
type = ChangeState
value = 245
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "b" && command != "holddown"
triggerall = P2Bodydist X > 15
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 200 && time > 10

[State -1]
type = ChangeState
value = 400
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "x" && command = "holddown"
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 400 && time >= 7
trigger3 = stateno = 430 && (time >= 10 || (movecontact && time >= 8))

[State -1]
type = ChangeState
value = 410
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "y" && command = "holddown"
trigger1 = ctrl || (stateno = 100 && time >= 5)

[State -1]
type = ChangeState
value = 430
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "a" && command = "holddown"
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 430 && time >= 9

[State -1]
type = ChangeState
value = 440
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = statetype != A && command = "b" && command = "holddown"
trigger1 = ctrl || (stateno = 100 && time >= 5)

[State -1]
type = ChangeState
value = 600
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 610
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1]
type = ChangeState
value = 630
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

[State -1]
type = ChangeState
value = 640
triggerall = Var(59) != 1
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = Var(59) != 1
triggerall = command = "start" && Var(59) != 1
trigger1 = statetype != A && ctrl