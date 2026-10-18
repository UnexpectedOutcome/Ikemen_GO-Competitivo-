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

;-| Supers |-------------------------------------------------------

[command]
name = "SUPER1"
command = ~x
time = 30

;-| Specials |-------------------------------------------------------
[command]
name = "SPECIAL 1"
command = ~D,DF,F,a
time = 15

[command]
name = "SPECIAL 2"
command = ~D,DB,B,a
time = 15

[command]
name = "SPECIAL 3"
command = ~D,DF,F,b
time = 15

[command]
name = "SPECIAL 4"
command = ~D,DB,B,b
time = 15

[command]
name = "SPECIAL 5"
command = ~D,DF,F,c
time = 15

[command]
name = "SPECIAL 6"
command = ~D,DB,B,c
time = 15

[command]
name = "SPECIAL 7"
command = ~B,DB,D,DF,F,a
time = 30

[command]
name = "SPECIAL 8"
command = ~F,DF,D,DB,B,a
time = 30

[command]
name = "SPECIAL 9"
command = ~B,DB,D,DF,F,b
time = 30

[command]
name = "SPECIAL 10"
command = ~F,DF,D,DB,B,b
time = 30

[command]
name = "SPECIAL 11"
command = ~B,DB,D,DF,F,c
time = 30

[command]
name = "SPECIAL 12"
command = ~F,DF,D,DB,B,c
time = 30

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
command = y+z ; con el botA+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1
;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------
; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 70
value = 60
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 70
value = 70
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
;SUPERS:
;===========================================================================
;Super
[State -1]
type = ChangeState
value = 2000
triggerall = command = "x"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 3000
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;SPECIALS:
;===========================================================================
;grab
[State -1]
type = ChangeState
value = 1000+var(12)
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
Triggerall = p2dist x >= 100
Triggerall = stateno !=310 
Triggerall = power > 1000
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;grab -2
[State -1]
type = ChangeState
value = 1020
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
Triggerall = p2dist x < 100
Triggerall = stateno !=310 
Triggerall = power > 1000
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;weapon gatlin
[State -1]
type = ChangeState
value = 1050+var(12)
triggerall = command ="SPECIAL 1"
Triggerall = stateno !=310 
Triggerall = statetype != A
Triggerall = power > 500
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;jet punch
[State -1]
type = ChangeState
value = 1100+var(12)
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 1000
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;breaking punch
[State -1]
type = ChangeState
value = 1150+var(12)
triggerall = command =  "SPECIAL 4"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 1000
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;elephant gun
[State -1]
type = ChangeState
value = 1200+var(12)
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 1500
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;elephant axe
[State -1]
type = ChangeState
value = 1250+var(12)
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
Triggerall = stateno !=310
Triggerall = power > 1500
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;Transfrom - Tri
[State -1]
type = ChangeState
value = 1300
triggerall = command = "y"
Triggerall = statetype != A
Triggerall = stateno !=310 
triggerall = var(12) = 0
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;Transfrom - Pun
[State -1]
type = ChangeState
value = 1301
triggerall = command = "y"
triggerall = var(12) = 10000
Triggerall = statetype != A
Triggerall = stateno !=310 
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;Haki On
[State -1]
type = ChangeState
value = 1360
triggerall = var(7) = 0
triggerall = var(9) > 400
triggerall = command = "z"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 500
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;Donut clap
[State -1]
type = ChangeState
value = 2100
triggerall = command = "holddown"
triggerall = command = "c"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 100
trigger1 = ctrl
trigger2 = movecontact

;===========================================================================
;Donut punch
[State -1]
type = ChangeState
value = 2150
triggerall = command = "holddown"
triggerall = command = "b"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 100
trigger1 = ctrl
trigger2 = movecontact
;===========================================================================
;muliti kick
[State -1]
type = ChangeState
value = 2200
triggerall = command = "holddown"
triggerall = command = "a"
Triggerall = statetype != A
Triggerall = stateno !=310 
Triggerall = power > 100
trigger1 = ctrl
trigger2 = movecontact


;===========================================================================
;--------------------------------Ataques Normales---------------------------
;---------------------------------------------------------------------------
; A
[State -1, A]
type = ChangeState
value = 200
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
value = 300
triggerall = command = "b"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
value = 400
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 500
triggerall = command = "s"
trigger1 = power < 6000
Triggerall = movetype != H
Triggerall = movetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A Aire
[State -1, A Aire]
type = ChangeState
value = 600
triggerall = var(12) != 10000 
triggerall = command = "a"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B Aire
[State -1, B Aire]
type = ChangeState
value = 610
triggerall = var(12) != 10000
triggerall = command = "b"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C Aire
[State -1, C Aire]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = command != "holddown"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C Aire multikick
[State -1, C Aire]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = pos y < -20
triggerall = var(12) = 10000
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B Aire 
[State -1, C Aire]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = pos y < 0
triggerall = var(12) = 10000
Triggerall = statetype = A
trigger1 = ctrl










