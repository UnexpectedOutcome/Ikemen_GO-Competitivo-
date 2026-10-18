[Command]
name = "2QCF_a"
command = ~F, B, D, F, a
time = 20

[Command]
name = "2QCF_b"
command = ~F, B, D, F, b
time = 20

[Command]
name = "uppercut_xy"
command = ~F, D, DF, x+y

[Command]
name = "DU"
command = D, $U

[Command]
name = "DU_xy"
command = ~30$D, U, x+y
time = 10

[Command]
name = "DU_a"
command = ~30$D, $U, a
time = 10

[Command]
name = "DU_b"
command = ~30$D, $U, b
time = 10

[Command]
name = "DU_x"
command = ~30$D, U, x
time = 10

[Command]
name = "DU_y"
command = ~30$D, U, y
time = 10

[Command]
name = "BF_xy"
command = ~30$B, F, x+y
time = 10

[Command]
name = "BF_x"
command = ~30$B, F, x
time = 10

[Command]
name = "BF_y"
command = ~30$B, F, y
time = 10

[Command]
name = "rapid_x"
command = x, x, x
time = 18

[Command]
name = "rapid_y"
command = y, y, y
time = 18

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15

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
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = D, D
time = 10

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /F,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
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
[Statedef -1]
;--------------------------AI-----------------------------------------------
[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 195
triggerall = statetype != a
triggerall = var(20) = 5
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
trigger1 = p2stateno = 5110
value = 195
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 7020
trigger1 = ctrl = 1
trigger1 = stateno = 0
trigger1 = prevstateno != 105
trigger2 = stateno = 7021
trigger2 = time > 20
value = 7020
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 7021
triggerall = stateno = 0
trigger1 = prevstateno = 105
trigger1 = p2movetype != a
trigger2 = prevstateno = 195
value = 7021
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 130
triggerall = stateno = 0 || stateno = 7020 || stateno = 7021
trigger1 = prevstateno = 105
trigger1 = p2movetype = a
value = 131
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 105
trigger1 = stateno = 7020
trigger1 = p2movetype = a
trigger1 = p2bodydist x > 99
value = 105
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 200
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2bodydist x < 20
trigger1 = p2stateno != 20
trigger1 = p2stateno != 11
value = 200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 800
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = power < 2000
value = 800
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 3299
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = power > 1999
value = 3299
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 200
trigger1 = MoveHit
value = 230
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 200
trigger1 = MoveGuarded
value = 430
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = MoveHit
trigger2 = stateno = 430
trigger2 = MoveHit
value = 210
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = MoveHit
trigger2 = stateno = 210
trigger2 = MoveHit
value = 240
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 210
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = MoveHit
trigger2 = stateno = 430
trigger2 = MoveHit
trigger3 = p2stateno = 50
trigger3 = p2bodydist x < 30
trigger3 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 410
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 8040
triggerall = statetype != a
trigger1 = stateno = 410
trigger1 = MoveHit
value = 8040
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 630
triggerall = statetype = a
trigger1 = stateno = 8050
value = 630
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 640
triggerall = statetype = a
trigger1 = stateno = 630
trigger1 = MoveHit
value = 610
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 1100
triggerall = statetype != a
trigger1 = stateno = 240
trigger1 = MoveHit
trigger2 = stateno = 210
trigger2 = MoveHit
value = 1100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 1101
triggerall = statetype != a
triggerall = power < 1000
trigger1 = stateno = 1100
trigger1 = MoveHit
value = 1101
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 1102
triggerall = statetype != a
triggerall = power < 1000
trigger1 = stateno = 1101
trigger1 = MoveHit
value = 1102
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = stateno != 1301
triggerall = statetype != a
trigger1 = stateno = 240
trigger1 = MoveHit
trigger2 = stateno = 210
trigger2 = MoveHit
trigger3 = p2movetype = a
trigger3 = p2bodydist x < 60
trigger3 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 1301
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = stateno != 1410
triggerall = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x < 150
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 1400
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = power > 999
triggerall = stateno != 3300
triggerall = statetype != a
trigger1 = stateno = 1301
trigger1 = MoveHit
trigger1 = statetype != a
trigger2 = stateno = 1100
trigger2 = MoveHit
trigger2 = time > 20
trigger2 = time < 25
trigger3 = stateno = 3100
trigger3 = MoveHit
trigger3 = time > 20
trigger3 = time < 25
trigger4 = p2movetype = a
trigger4 = p2bodydist x < 60
trigger4 = ctrl = 1 || stateno = 7020 || stateno = 7021
trigger5 = stateno = 1302
trigger5 = p2movetype = h
trigger6 = stateno = 1101
trigger6 = MoveHit
value = 3300
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = power > 999
triggerall = stateno != 3100
triggerall = statetype != a
trigger1 = stateno = 1301
trigger1 = MoveHit
trigger1 = statetype != a
trigger2 = stateno = 1100
trigger2 = MoveHit
trigger2 = time > 20
trigger2 = time < 25
trigger3 = stateno = 1302
trigger3 = p2movetype = h
trigger4 = stateno = 1101
trigger4 = MoveHit
value = 3100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = power > 999
triggerall = stateno != 3100
triggerall = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x < 99
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
trigger2 = stateno = 1302
trigger2 = p2movetype = h
trigger3 = stateno = 1100
trigger3 = MoveHit
trigger4 = stateno = 1101
trigger4 = MoveHit
trigger5 = stateno = 3100
trigger5 = MoveHit
value = 3200
ctrl = 0

;---------------------Verificacoes necessarias------------------------------
[state -1, afterimage]
type = afterimagetime
trigger1 = stateno < 100
trigger2 = movetype = h
trigger3 = stateno > 106 && stateno != 1400 && stateno != 1410
trigger3 = stateno < 3000 && stateno != 1400 && stateno != 1410
trigger4 = stateno > 4000
trigger4 = stateno < 8050
value = 0

[state -1, Finish]
type = Helper
trigger1 = winko = 1
trigger1 = numhelper(9999) = 0
ignorehitpause = 1
pos = 0, 0
postype = back
ID = 9999
stateno = 9999
helpertype = normal
keyctrl = 1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State -1, snd]
type = PlaySnd
triggerall = var(20) > 5
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
value = 5000, 0

[state -1, remove]
type = removeexplod
trigger1 = stateno != 1000
id = 2010

[state -1, remove]
type = removeexplod
trigger1 = stateno != 1000
id = 2011

[state -1, remove]
type = removeexplod
trigger1 = stateno != 1000
id = 2012

[state -1, remove]
type = removeexplod
trigger1 = stateno != 1000
id = 2013

[state -1, remove]
type = removeexplod
trigger1 = stateno != 1000
id = 2014

[state -1, remove]
type = removeexplod
trigger1 = stateno != 1000
id = 2015

[state -1, remove]
type = removeexplod
trigger1 = stateno != 3100
id = 3010

[state -1, remove]
type = removeexplod
trigger1 = stateno != 3100
id = 3011

[state -1, remove]
type = removeexplod
trigger1 = stateno != 3100
id = 3012

[state -1, remove]
type = removeexplod
trigger1 = stateno != 3100
id = 3013

[state -1, remove]
type = removeexplod
trigger1 = stateno != 3100
id = 3014

[state -1, remove]
type = removeexplod
trigger1 = stateno != 3100
id = 3015
;----------------variaveis------------------
[State -1, var]
type = Varrandom
trigger1 = roundstate = 2
v = 20
range = 0, 8

[state -1, varcombo]
type = varset
trigger1 = stateno = 8040
trigger1 = prevstateno = 410
v = 30
value = 0

[state -1, varcombo]
type = varset
trigger1 = stateno = 50
trigger2 = stateno = 40
v = 30
value = 2

[state -1, varset1]
type = varset
trigger1 = command = "2QCF_a"
v = 40
value = 8

[state -1, varset2]
type = varset
trigger1 = command = "2QCF_b"
v = 40
value = 9

;----------superpulo---------------
[State -1, superpulo]
type = ChangeState
value = 8040
triggerall = command = "DU"
trigger1 = stateno = 40
;=============supers===============
[state -1, special]
type = changestate
value = 3299
triggerall = command = "2QCF_a" || command = "2QCF_b" 
triggerall = power > 1999
triggerall = p2stateno != 5120
triggerall = p2statetype != a
triggerall = statetype != A
triggerall = ishelper = 0
triggerall = p2movetype != h
triggerall = p2bodydist x < 55
trigger1 = ctrl
trigger2 = stateno >= 150
trigger2 = stateno < 154
trigger3 = stateno = 1000
trigger3 = MoveContact
trigger4 = stateno = 1100
trigger4 = MoveContact
trigger5 = stateno = 1101
trigger5 = MoveContact
trigger6 = stateno = 1102
trigger6 = MoveContact
trigger7 = stateno = 1302
trigger7 = p2movetype = h
trigger8 = stateno = 3100
trigger8 = MoveContact

;------------------------
[state -1, joelhada EX]
type = changestate
value = 3300
triggerall = command = "DU_xy"
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 240
trigger8 = MoveContact
trigger9 = stateno = 250
trigger9 = MoveContact
trigger10 = stateno = 40
trigger11 = stateno >= 150
trigger11 = stateno < 154
trigger12 = stateno = 8040
trigger13 = stateno = 1000
trigger13 = MoveContact
trigger14 = stateno = 1100
trigger14 = MoveContact
trigger15 = stateno = 1101
trigger15 = MoveContact
trigger16 = stateno = 1102
trigger16 = MoveContact
trigger17 = stateno = 1302
trigger17 = p2movetype = h
trigger18 = stateno = 3100
trigger18 = MoveContact

;------------------------
[state -1, magia EX]
type = changestate
value = 3200
triggerall = command = "BF_xy"
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 240
trigger8 = MoveContact
trigger9 = stateno = 250
trigger9 = MoveContact
trigger10 = stateno >= 150
trigger10 = stateno < 154
trigger11 = stateno = 1000
trigger11 = MoveContact
trigger12 = stateno = 1100
trigger12 = MoveContact
trigger13 = stateno = 1101
trigger13 = MoveContact
trigger14 = stateno = 1102
trigger14 = MoveContact
trigger15 = stateno = 1302
trigger15 = p2movetype = h
trigger16 = stateno = 3100
trigger16 = MoveContact

;------------------------
[state -1, sequencia EX]
type = changestate
value = 3100
triggerall = command = "uppercut_xy"
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 240
trigger8 = MoveContact
trigger9 = stateno = 250
trigger9 = MoveContact
trigger10 = stateno >= 150
trigger10 = stateno < 154
trigger11 = stateno = 1000
trigger11 = MoveContact
trigger12 = stateno = 1100
trigger12 = MoveContact
trigger13 = stateno = 1101
trigger13 = MoveContact
trigger14 = stateno = 1102
trigger14 = MoveContact
trigger15 = stateno = 1302
trigger15 = p2movetype = h

;------------------------
[state -1, joelhada]
type = changestate
value = 1301
triggerall = command = "DU_y"
triggerall = statetype != a
trigger1 = stateno = 40
trigger2 = ctrl = 1
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 430
trigger6 = MoveContact
trigger7 = stateno = 205
trigger7 = MoveContact
trigger8 = stateno = 210
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact
trigger10 = stateno = 250
trigger10 = MoveContact
trigger11 = stateno = 8040
;------------------------
[state -1, joelhada]
type = changestate
value = 1300
triggerall = command = "DU_x"
triggerall = statetype != a
trigger1 = stateno = 40
trigger2 = ctrl = 1
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 430
trigger6 = MoveContact
trigger7 = stateno = 205
trigger7 = MoveContact
trigger8 = stateno = 210
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact
trigger10 = stateno = 250
trigger10 = MoveContact
trigger11 = stateno = 8040
;------------------------
[state -1, pulo]
type = changestate
value = 1400
triggerall = command = "DU_b"
triggerall = statetype != a
trigger1 = stateno = 40
trigger2 = ctrl = 1
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 430
trigger6 = MoveContact
trigger7 = stateno = 205
trigger7 = MoveContact
trigger8 = stateno = 210
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact
trigger10 = stateno = 250
trigger10 = MoveContact
trigger11 = stateno = 8040
;------------------------
[state -1, pulo]
type = changestate
value = 1410
triggerall = command = "DU_a"
triggerall = statetype != a
trigger1 = stateno = 40
trigger2 = ctrl = 1
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 430
trigger6 = MoveContact
trigger7 = stateno = 205
trigger7 = MoveContact
trigger8 = stateno = 210
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact
trigger10 = stateno = 250
trigger10 = MoveContact
trigger11 = stateno = 8040
;------------------------
[state -1, cotovelada 3]
type = changestate
value = 1102
triggerall = command = "QCB_x" || command = "QCB_y"
triggerall = stateno = 1101
trigger1 = MoveContact
trigger2 = time > 21
;------------------------
[state -1, cotovelada 2]
type = changestate
value = 1101
triggerall = command = "QCB_x" || command = "QCB_y"
triggerall = stateno = 1100
trigger1 = MoveContact
trigger2 = time > 21
;------------------------
[state -1, cotovelada 1]
type = changestate
value = 1100
triggerall = command = "QCB_x" || command = "QCB_y"
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 240
trigger8 = MoveContact
trigger9 = stateno = 250
trigger9 = MoveContact
;------------------------
[state -1, magia forte]
type = changestate
value = 1201
triggerall = command = "BF_y"
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 240
trigger8 = MoveContact
trigger9 = stateno = 250
trigger9 = MoveContact
;------------------------
[state -1, magia fraca]
type = changestate
value = 1200
triggerall = command = "BF_x"
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 240
trigger8 = MoveContact
trigger9 = stateno = 250
trigger9 = MoveContact
;------------------------
[state -1, rapid punch]
type = changestate
value = 1000
triggerall = command = "rapid_x" || command = "rapid_y"
triggerall = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 1000
trigger3 = time > 53
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact
trigger8 = stateno = 205
trigger8 = MoveContact
trigger9 = stateno = 210
trigger9 = MoveContact
trigger10 = stateno = 240
trigger10 = MoveContact
trigger11 = stateno = 250
trigger11 = MoveContact
;---------------------------------------------------------------------------
[State -1, rolando no chao]
type = ChangeState
value = 169
triggerall = stateno = 5110
triggerall = alive = 1
trigger1 = command = "recovery"

;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, arremesso 1]
type = ChangeState
value = 800
triggerall = p2stateno != 5120
triggerall = p2statetype != a
triggerall = statetype != A
triggerall = ctrl
triggerall = ishelper = 0
triggerall = command = "fwd_y" || command = "back_y"
triggerall = p2movetype != h
triggerall = stateno != 100
trigger1 = p2bodydist x < 26
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "back_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 205
trigger4 = MoveContact
;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = MoveContact
;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 205
trigger4 = MoveContact
;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 205
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact
trigger4 = stateno = 610
trigger4 = MoveContact

