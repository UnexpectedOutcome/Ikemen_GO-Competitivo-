;===============================================================================
;-------------------------------Comandos----------------------------------------
;===============================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Command]
name = "Super Jump"
command = ~D,U
time = 10

;-| Default Values |-------------------------------------------------------
[command]
name = "Suiton Suiryudan no Jutsu"
command = ~D,DF,F,a
time = 15

[command]
name = "Katon Gokakyu no Jutsu"
command = ~D,DB,B,a
time = 15

[command]
name = "Raikiri"
command = ~D,DF,F,b
time = 15

[command]
name = "Doton Tsuiga no Jutsu"
command = ~D,DB,B,b
time = 15

[command]
name = "Kakashi no Taijutsu"
command = ~D,DF,F,c
time = 15

[command]
name = "Sennen Goroshi"
command = ~D,DB,B,c
time = 15

[Defaults]

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
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
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1
;-| Hold Button |--------------------------------------------------------------
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
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
[Command]
name = "AI Prueba"
command = y+z ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1
;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------
; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = stateno != 60 && stateno != 2060
triggerall = stateno != 70 && stateno != 2070
value = ifelse(var(2) = 1,2060,60)
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = stateno != 60 && stateno != 2060
triggerall = stateno != 70 && stateno != 2070
value = ifelse(var(2) = 1,2070,70)
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 80
trigger1 = command = "Super Jump"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;--------------------------------Ataques Supers-----------------------------
;---------------------------------------------------------------------------
; Mangekyo Sharingan
[State -1, Mangekyo Sharingan]
type = ChangeState
Triggerall = var(3) >= 250
Triggerall = var(2) = 0 && var(4) = 0
value = 2190
triggerall = command = "holddown"
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Mangekyo Sharingan Fin
[State -1, Mangekyo Sharingan Fin]
type = ChangeState
Triggerall = var(2) = 1
value = 2191
triggerall = command = "holddown"
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Kamui
[State -1, Kamui]
type = ChangeState
Triggerall = power >= 2000
value = 3000
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
trigger15 = time >= 80 && (stateno = 2700)
trigger16 = time >= 210 && (stateno = 2750)
trigger17 = time >= 95 && (stateno = 2870)
trigger18 = time >= 75 && (stateno = 2900)
trigger19 = time >= 110 && (stateno = 2970) || time > 31 && numhelper(1050) = 0 && stateno = 1000
;---------------------------------------------------------------------------
; Raikiri So Raising
[State -1, Raikiri So Raising]
type = ChangeState
Triggerall = power >= 2500
value = 3100
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
trigger15 = time >= 80 && (stateno = 2700)
trigger16 = time >= 210 && (stateno = 2750)
trigger17 = time >= 95 && (stateno = 2870)
trigger18 = time >= 75 && (stateno = 2900)
trigger19 = time >= 110 && (stateno = 2970) || time > 31 && numhelper(1050) = 0 && stateno = 1000
;---------------------------------------------------------------------------
; Kakashi Festival
[State -1, Kakashi Festival]
type = ChangeState
Triggerall = numhelper(3250) = 0
Triggerall = power >= 3000
value = 3200
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
trigger15 = time >= 80 && (stateno = 2700)
trigger16 = time >= 210 && (stateno = 2750)
trigger17 = time >= 95 && (stateno = 2870)
trigger18 = time >= 75 && (stateno = 2900)
trigger19 = time >= 110 && (stateno = 2970) || time > 31 && numhelper(1050) = 0 && stateno = 1000
;===========================================================================
;--------------------------------Ataques Especiales-------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Suiton Suiryudan no Jutsu
[State -1, Suiton Suiryudan no Jutsu]
type = ChangeState
triggerall = var(2) = 0
Triggerall = numhelper(1050) = 0
Triggerall = power >= 1000
value = 1000
triggerall = command = "Suiton Suiryudan no Jutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Katon Gokakyu no Jutsu
[State -1, Katon Gokakyu no Jutsu]
type = ChangeState
triggerall = var(2) = 0
Triggerall = numhelper(1150) = 0
Triggerall = numhelper(1190) = 0
Triggerall = power >= 1000
value = 1100
triggerall = command = "Katon Gokakyu no Jutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Katon Gokakyu no Jutsu Aire
[State -1, Katon Gokakyu no Jutsu Aire]
type = ChangeState
triggerall = var(2) = 0
Triggerall = numhelper(1150) = 0
Triggerall = numhelper(1190) = 0
Triggerall = power >= 1000
value = 1180
triggerall = command = "Katon Gokakyu no Jutsu"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600||stateno = 610||stateno = 430||stateno = 1410)
trigger3 = time >= 35 && (stateno = 220)
trigger4 = time >= 10 && (stateno = 621)
trigger5 = time >= 47 && (stateno = 1180)
;---------------------------------------------------------------------------
; Raikiri
[State -1, Raikiri]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 1000
value = 1200
triggerall = command = "Raikiri"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Doton Tsuiga no Jutsu
[State -1, Doton Tsuiga no Jutsu]
type = ChangeState
triggerall = var(2) = 0
Triggerall = numhelper(1350) = 0
Triggerall = power >= 1000
value = 1300
triggerall = command = "Doton Tsuiga no Jutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Kakashi no Taijutsu
[State -1, Kakashi no Taijutsu]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 1000
value = 1400
triggerall = command = "Kakashi no Taijutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Sennen Goroshi
[State -1, Sennen Goroshi]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 1000
value = 1500
triggerall = command = "Sennen Goroshi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 10000 && (stateno = 1501)
trigger6 = time >= 75 && (stateno = 1100)
trigger7 = time >= 90 && (stateno = 1200)
trigger8 = time >= 48 && (stateno = 1400||stateno = 1501)
trigger9 = time >= 85 && (stateno = 1500)
trigger10 = time >= 55 && (stateno = 1502)
trigger11 = time >= 80 && (stateno = 1000)
trigger12 = time >= 40 && (stateno = 3001)
trigger13 = time >= 50 && (stateno = 3100)
trigger14 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Kamui Protection
[State -1, Kamui Protection]
type = ChangeState
Triggerall = var(4) = 0
triggerall = var(2) = 1
Triggerall = power >= 500
value = 2700
triggerall = command = "Sennen Goroshi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 80 && (stateno = 2700)
trigger6 = time >= 210 && (stateno = 2750)
trigger7 = time >= 95 && (stateno = 2870)
trigger8 = time >= 75 && (stateno = 2900)
trigger9 = time >= 100 && (stateno = 2970)
trigger10 = time >= 40 && (stateno = 3001)
trigger11 = time >= 50 && (stateno = 3100)
trigger12 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Suiton Daibakufu no Jutsu
[State -1, Suiton Daibakufu no Jutsu]
type = ChangeState
triggerall = var(2) = 1
Triggerall = numhelper(2770) = 0
Triggerall = power >= 1500
value = 2750
triggerall = command = "Suiton Suiryudan no Jutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 80 && (stateno = 2700)
trigger6 = time >= 210 && (stateno = 2750)
trigger7 = time >= 95 && (stateno = 2870)
trigger8 = time >= 75 && (stateno = 2900)
trigger9 = time >= 100 && (stateno = 2970)
trigger10 = time >= 40 && (stateno = 3001)
trigger11 = time >= 50 && (stateno = 3100)
trigger12 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Raiden
[State -1, Raiden]
type = ChangeState
triggerall = var(2) = 1
Triggerall = power >= 1000
value = 2800
triggerall = command = "Raikiri"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 80 && (stateno = 2700)
trigger6 = time >= 210 && (stateno = 2750)
trigger7 = time >= 95 && (stateno = 2870)
trigger8 = time >= 75 && (stateno = 2900)
trigger9 = time >= 100 && (stateno = 2970)
trigger10 = time >= 40 && (stateno = 3001)
trigger11 = time >= 50 && (stateno = 3100)
trigger12 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Raiju Hashiri no Jutsu
[State -1, Raiju Hashiri no Jutsu]
type = ChangeState
triggerall = var(2) = 1
Triggerall = numhelper(2890) = 0
Triggerall = power >= 1000
value = 2870
triggerall = command = "Doton Tsuiga no Jutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 80 && (stateno = 2700)
trigger6 = time >= 210 && (stateno = 2750)
trigger7 = time >= 95 && (stateno = 2870)
trigger8 = time >= 75 && (stateno = 2900)
trigger9 = time >= 100 && (stateno = 2970)
trigger10 = time >= 40 && (stateno = 3001)
trigger11 = time >= 50 && (stateno = 3100)
trigger12 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Genjutsu Sharingan
[State -1, Genjutsu Sharingan]
type = ChangeState
Triggerall = numhelper(2950) = 0
triggerall = var(2) = 1
Triggerall = power >= 500
value = 2900
triggerall = command = "Kakashi no Taijutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 80 && (stateno = 2700)
trigger6 = time >= 210 && (stateno = 2750)
trigger7 = time >= 95 && (stateno = 2870)
trigger8 = time >= 75 && (stateno = 2900)
trigger9 = time >= 100 && (stateno = 2970)
trigger10 = time >= 40 && (stateno = 3001)
trigger11 = time >= 50 && (stateno = 3100)
trigger12 = time >= 95 && (stateno = 3200)
;---------------------------------------------------------------------------
; Amaterasu
[State -1, Amaterasu]
type = ChangeState
triggerall = var(2) = 1
Triggerall = numhelper(2990) = 0
Triggerall = power >= 1000
value = 2970
triggerall = command = "Katon Gokakyu no Jutsu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200||stateno = 210||stateno = 300||stateno = 310||stateno = 400||stateno = 410)
trigger3 = time >= 25 && (stateno = 215||stateno = 420)
trigger4 = time >= 30 && (stateno = 320)
trigger5 = time >= 80 && (stateno = 2700)
trigger6 = time >= 210 && (stateno = 2750)
trigger7 = time >= 95 && (stateno = 2870)
trigger8 = time >= 75 && (stateno = 2900)
trigger9 = time >= 100 && (stateno = 2970)
trigger10 = time >= 40 && (stateno = 3001)
trigger11 = time >= 50 && (stateno = 3100)
trigger12 = time >= 95 && (stateno = 3200)
;===========================================================================
;--------------------------------Ataques Normales---------------------------
;---------------------------------------------------------------------------
; Combo 1
[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time >= 10000 && (stateno = 1501)
trigger3 = time >= 75 && (stateno = 1100)
trigger4 = time >= 90 && (stateno = 1200)
trigger5 = time >= 48 && (stateno = 1501)
trigger6 = time >= 85 && (stateno = 1500)
trigger7 = time >= 55 && (stateno = 1502)
trigger8 = time >= 80 && (stateno = 1000)
trigger9 = time >= 40 && (stateno = 3001)
trigger10 = time >= 50 && (stateno = 3100)
trigger11 = time >= 95 && (stateno = 3200)
trigger12 = time >= 80 && (stateno = 2700)
trigger13 = time >= 210 && (stateno = 2750)
trigger14 = time >= 95 && (stateno = 2870)
trigger15 = time >= 75 && (stateno = 2900)
trigger16 = time >= 110 && (stateno = 2970) || time > 31 && numhelper(1050) = 0 && stateno = 1000
;---------------------------------------------------------------------------
; Combo 2
[State -1, Combo 2]
type = ChangeState
value = 300
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time >= 10000 && (stateno = 1501)
trigger3 = time >= 75 && (stateno = 1100)
trigger4 = time >= 90 && (stateno = 1200)
trigger5 = time >= 48 && (stateno = 1501)
trigger6 = time >= 85 && (stateno = 1500)
trigger7 = time >= 55 && (stateno = 1502)
trigger8 = time >= 80 && (stateno = 1000)
trigger9 = time >= 40 && (stateno = 3001)
trigger10 = time >= 50 && (stateno = 3100)
trigger11 = time >= 95 && (stateno = 3200)
trigger12 = time >= 80 && (stateno = 2700)
trigger13 = time >= 210 && (stateno = 2750)
trigger14 = time >= 95 && (stateno = 2870)
trigger15 = time >= 75 && (stateno = 2900)
trigger16 = time >= 110 && (stateno = 2970) || time > 31 && numhelper(1050) = 0 && stateno = 1000
;---------------------------------------------------------------------------
; Combo 3
[State -1, Combo 3]
type = ChangeState
value = 400
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time >= 10000 && (stateno = 1501)
trigger3 = time >= 75 && (stateno = 1100)
trigger4 = time >= 90 && (stateno = 1200)
trigger5 = time >= 48 && (stateno = 1501)
trigger6 = time >= 85 && (stateno = 1500)
trigger7 = time >= 55 && (stateno = 1502)
trigger8 = time >= 80 && (stateno = 1000)
trigger9 = time >= 40 && (stateno = 3001)
trigger10 = time >= 50 && (stateno = 3100)
trigger11 = time >= 95 && (stateno = 3200)
trigger12 = time >= 80 && (stateno = 2700)
trigger13 = time >= 210 && (stateno = 2750)
trigger14 = time >= 95 && (stateno = 2870)
trigger15 = time >= 75 && (stateno = 2900)
trigger16 = time >= 110 && (stateno = 2970) || time > 31 && numhelper(1050) = 0 && stateno = 1000
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
Triggerall = power < 3000
value = 500
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Susanoo Perfecto
[State -1, Susanoo Perfecto]
type = ChangeState
Triggerall = var(5) = 0
Triggerall = life < lifemax /2
Triggerall = power = 3000
value = 550
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Combo Aire
[State -1, Combo Aire]
type = ChangeState
value = 600
triggerall = command = "a"||command = "b"||command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 1410)
trigger3 = time >= 10 && (stateno = 621)
trigger4 = time >= 47 && (stateno = 1180)
;-------------------------------------------------------------------------------
; Activar IA
;-------------------------------------------------------------------------------
[State -2, Activar IA]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
