
;-| Algunas cosas |--------------------------------------------------------

[remap]
	x = x
	y = y
	z = z
	a = a
	b = b
	c = c
	s = s

[defaults]
	command.time = 15
	command.buffer.time = 1

;-| Hyper Ataques |--------------------------------------------------------


;----| AI |--------------------------------------------------------
[Command]
Name = "AI0"
Command = a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI1"
Command = b,b,b,b,b,b,b,b,
Time = 0
[Command]
Name = "AI2"
Command = c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI3"
Command = x,x,x,x,x,x,x,
Time = 0
[Command]
Name = "AI4"
Command = y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI5"
Command = z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI6"
Command = s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI7"
Command = F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI8"
Command = D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI9"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0
[Command]
Name = "AI10"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 0
[Command]
Name = "AI11"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI12"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI13"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI14"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI15"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI16"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI17"
Command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
Time = 0
[Command]
Name = "AI18"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI19"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 0
[Command]
Name = "AI20"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI21"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI22"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI23"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI24"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI25"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI26"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI27"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0
[Command]
Name = "AI28"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 0
[Command]
Name = "AI29"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI30"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0

[Command]
	name = "pd1"
	command = ~D, B, D, B, a
	time = 26

[Command]
	name = "pd2"
	command = ~D, B, D, B, b
	time = 26

[Command]
	name = "pl1"
	command = ~D, F, D, F, a
	time = 26

[Command]
	name = "pl2"
	command = ~D, F, D, F, b
	time = 26

[command]
	name = "5k"
	command = ~D, F, a+b
	time = 26

[Command]
	name = "ks1"
	command = ~D, F, D, F, x
	time = 26

[command]
	name = "ks"
	command = ~D, F, D, F, y
	time = 26

[command]
	name = "ksp"
	command = ~D, F, x+y
	time = 26

;-| Ataques Especiales |---------------------------------------------------

[Command]
	name = "1000"
	command = ~D, F, x
	time = 15

[Command]
	name = "1050"
	command = ~D, F, y
	time = 15

[Command]
	name = "1100"
	command = ~D, B, x
	time = 15

[Command]
	name = "1150"
	command = ~D, B, y
	time = 15
	
	[Command]
	name = "1200"
	command = ~F, D, DF, a
	time = 22

[Command]
	name = "1250"
	command = ~F, D, DF, b
	time = 22

[Command]
	name = "1300"
	command = ~D, B, a
	time = 15


[Command]
	name = "1350"
	command = ~D, B, b
	time = 15
	

[Command]
	name = "1700"
	command = ~B, F, x
	time = 15
	
	[Command]
	name = "regilete_b"
	command = ~B, F, b
	time = 15


[Command]
	name = "patalear"
	command = ~D, F, a+b
	time = 15


[command]
	name = "kicka"
	command = ~D, U, a
	time = 15

[command]
	name = "kickb"
	command = ~D, U, b
	time = 15

[Command]
	name = "pataditas_a"
	command = ~a, a, a
	time = 55
	
	[Command]
	name = "pataditas_a"
	command = ~D, F, a
	time = 20


[Command]
	name = "pataditas_b"
	command = ~b, b, b
	time = 55
	
	[Command]
	name = "pataditas_b"
	command = ~D, F, b
	time = 20

;-| Combinacion de 2/3 botones |-------------------------------------------

[Command]
	name = "longjump"
	command = D, $U
	time = 18

[command]
	name = "recovery"
	command = x+a
	time = 1

[command]
	name = "recovery"
	command = z
	time = 1

[command]
	name = "ab"
	command = y+b
	time = 1

[command]
	name = "ab"
	command = c
	time = 1

;-| Doble Tapi |-----------------------------------------------------------

[Command]
	name = "FF"
	command = F, F
	time = 10

[Command]
	name = "BB"
	command = B, B
	time = 10

;-| Direccion + Boton |----------------------------------------------------

[Command]
	name = "down_a"
	command = /$D,a
	time = 1
	
[Command]
	name = "down_b"
	command = /$D,b
	time = 1

;-| Un solo Boton |--------------------------------------------------------

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

;-| Direccion |------------------------------------------------------------

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

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------

[State -1, ComboSet0]
	type = varset
	trigger1 = var(41)
	var(41)=0
	
	[State -1, ComboSet0]
	type = varset
	trigger1 = var(42)
	var(42)=0
	
	;AI
[State -1]
type = VarSet
var(25) = 1
triggerall = Var(25) = 0
triggerall = alive
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"

[State -1 , ComboSet1]
	type = varset
	triggerall = RoundState = 2
	triggerall = !var(41)
	triggerall = MoveContact
	trigger1 = StateNo = 200 && animelem = 2, >= 0
	trigger2 = StateNo = 205 && animelem = 2, >= 0
		trigger3 = StateNo = 445 && animelem = 8, > 0
	trigger4 = StateNo = 215 && animelem = 3, >= 0
	trigger5 = StateNo = 230 && animelem = 3, > 0
	trigger6 = StateNo = 235 && animelem = 2, >= 0
		trigger7 = StateNo = 255 && animelem = 6, > 0
	trigger8 = StateNo = 245 && animelem = 3, >= 0
	trigger9 = StateNo = 400 && animelem = 2, >= 0
	trigger10 = StateNo = 410 && animelem = 3, >=0
	trigger11 = StateNo = 430 && animelem = 2, >= 0
	trigger12 = StateNo = 440 && animelem = 3, > 0
	trigger13 = StateNo = 460 && animelem = 2, >= 0
	trigger14 = StateNo = 461 && animelem = 1, >= 0
	trigger15 = StateNo = 290 && animelem = 5, >= 0
	var(41) = 1
	
	
	[State -1 , ComboSet1]
	type = varset
	triggerall = RoundState = 2
	triggerall = !var(42)
	triggerall = Movehit
	trigger1 = StateNo = 1353 && time = 36
	var(42) = 1

;---------------------------------------------------------------------------
; Hyper Ataques
;---------------------------------------------------------------------------

[State -1, Patadotas LV1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3100
	triggerall = command = "pd1"
	triggerall = Power >= 1000
	trigger1 = statetype != A && (Ctrl || Var(41))
	
	[State -1, nage]
type = ChangeState
triggerall = var(25) != 1 
 value =  805
triggerall = command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 20 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 20 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;丂俲搳偘
[State -1, nage]
type = ChangeState
triggerall = var(25) != 1 
 value =  805
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 20 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 20 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

[State -1, Patadotas LV2]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3100
	triggerall = command = "pd2"
	triggerall = Power >= 2000
	trigger1 = statetype != A && (Ctrl || Var(41))

[State -1, Kikoushou LV1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3000
	triggerall = !NumProjID(3500)
	triggerall = command = "ks1"
	triggerall = Power >= 1000
	trigger1 = statetype != A && (Ctrl || Var(41))

[State -1, Kikoushou]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3000
	triggerall = command = "ks"
	triggerall = Power >= 2000
	trigger1 = statetype != A && (Ctrl || Var(41))

[State -1, Pataleando LV1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3100
	triggerall = command = "pl1"
	triggerall = Power >= 1000
	trigger1 = statetype != A && (Ctrl || Var(41))

[State -1, Pataleando LV2]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3100
	triggerall = command = "pl2"
	triggerall = Power >= 2000
	trigger1 = statetype != A && (Ctrl || Var(41))

[State -1, 5 Kanjis]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  3700
	triggerall = command = "5k"
	triggerall = power >= 2000
	triggerall = pos Y <= -18
	trigger1 = statetype = A && (ctrl || var(41))	
	trigger2 = stateno = [600,699]
	trigger2 = movecontact

;---------------------------------------------------------------------------
; Ataques Especiales
;---------------------------------------------------------------------------

[State -1, Hadouken debil]
	type = ChangeState
	triggerall = command = "1000"
	trigger1 = statetype != A && (ctrl || stateno = 100 || var(41))
	triggerall = var(25) != 1
 value =  1000

[State -1, Hadouken fuerte]
	type = ChangeState
	triggerall = var(25) != 1
 value =  1050
	triggerall = command = "1050"
	trigger1 = !NumProj || Var(10) && Time > 6
	trigger1 = statetype != A && (ctrl || var(41))
	

[State -1, Agarre]
	type = ChangeState
	triggerall = command = "1100"
	trigger1 = statetype != A && (ctrl || stateno = 100 || var(41))
	triggerall = var(25) != 1 
 value =  1100
 
 [State -1, Agarre]
	type = ChangeState
	triggerall = command = "1150"
	trigger1 = statetype != A && (ctrl || stateno = 100 || var(41))
	triggerall = var(25) != 1
 value =  1150
 
 [State -1, Patadas debil]
	type = ChangeState
	triggerall = command = "1200"
	trigger1 = statetype != A && (ctrl || stateno = 100 || stateno = 40 || var(41))
	triggerall = var(25) != 1
         value =  1200

[State -1, Girar debil]
	type = ChangeState
	triggerall = command = "1300"
	trigger1 = statetype != A && (ctrl || stateno = 100 || var(41))
	triggerall = var(25) != 1 
 value =  1300

 
 [State -1, Hadouken debil]
	type = ChangeState
	triggerall = command = "1000"
	trigger1 = statetype = A && ctrl
	triggerall = var(25) != 1
 value =  1400




[State -1, Regilete]
	type = ChangeState
	triggerall = command = "1700" || command = "regilete_b"
	trigger1 = statetype != A && (ctrl || stateno = 40 || stateno = 100 || var(41))
	triggerall = var(25) != 1 
 value =  1700

[State -1, Pataditas clasicas]
	type = ChangeState
	triggerall = command = "pataditas_a"
	trigger1 = statetype != A && (ctrl || stateno = 100 || var(41))
	triggerall = var(25) != 1 
 value =  1300
	

;---------------------------------------------------------------------------
; Movimientos basicos
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Rebote

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  48
	triggerall = StateType = A && ctrl && BackEdgeDist  < 3
	trigger1 = command = "holdfwd" && command = "holdup"

;---------------------------------------------------------------------------
; Correr adelante

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  100
	trigger1 = command = "FF"
	trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Correr atraz

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  105
	trigger1 = command = "BB"
	trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Rodar

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  Ifelse(command="holdback",90,80)
	triggerall = command = "recovery" 
	trigger1 = statetype = S && Ctrl

;---------------------------------------------------------------------------
; Rodar saliendo de guardia

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  Ifelse(command = "holdback", 160, 165)
	triggerall = command = "recovery"
	triggerall = Power >= 1000
	trigger1 = StateNo = 150 || StateNo = 152
	ctrl = 0
	

[State 0, PosSet]
type = PosSet
;triggerall = roundstate = 2
trigger1 = stateno = 0
;trigger2 = stateno = [5000,5029]
y = 0


;---------------------------------------------------------------------------
; Agarrar

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  850
	triggerall = command = "y" && (command = "holdfwd" || command = "holdback")
	trigger1 = statetype = S && Ctrl
	trigger1 = stateno != 100
	trigger1 = p2bodydist x < 7
	trigger1 = (p2statetype != a) && (p2movetype != h)

;---------------------------------------------------------------------------
; Ataques basicos
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Patada debil hacia adelante

;[State -1]
;	type = ChangeState
;	triggerall = var(25) != 1 
; value =  250
;	triggerall = command = "a" && command != "holddown" && command = "holdfwd"
;	trigger1 = statetype = s && (Ctrl || stateno = 100)
;	trigger2 = stateno = 200 && animelem = 2, > 0
;	trigger3 = stateno = 205 && animelem = 2, > 0
;	trigger4 = stateno = 215 && animelem = 3, > 0
;	trigger5 = stateno = 235 && animelem = 2, > 0
;	trigger6 = stateno = 245 && animelem = 4, > 0
;	trigger7 = stateno = 430 && animelem = 3, > 0
;	trigger8 = stateno = 445 && animelem = 8, > 1

;---------------------------------------------------------------------------
; Patada fuerte hacia adelante

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  270
	triggerall = command = "x" && command != "holddown" && command = "holdfwd"
	trigger1 = statetype = s && (Ctrl || stateno = 100)
	trigger2 = stateno = 200 && animelem = 2, > 0
	trigger3 = stateno = 205 && animelem = 2, > 0
	trigger4 = stateno = 215 && animelem = 3, > 0
	trigger5 = stateno = 235 && animelem = 2, > 0
	trigger6 = stateno = 245 && animelem = 4, > 0

;---------------------------------------------------------------------------
; Pu駉 debil parada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  200
	triggerall = command = "x"
	triggerall = command != "holddown"
	trigger1 = statetype = S && ctrl
	trigger2 = MoveContact
	trigger2 = (stateno = 200 || stateno = 205 || stateno = 235) && time > 4

;---------------------------------------------------------------------------
; Pu駉 fuerte parada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value = 210
	triggerall = command = "a"
	triggerall = command != "holddown"
	trigger1 = statetype = S && ctrl
	trigger2 = (stateno = 205 || stateno = 230) && time > 5

;---------------------------------------------------------------------------
; Patada debil parada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  230
	triggerall = command = "y"
	triggerall = command != "holddown"
	trigger1 = statetype = S && ctrl
	trigger2 = stateno = 200 && animelem = 2, > 0

;---------------------------------------------------------------------------
; Patada fuerte parada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  Ifelse(p2bodydist x < 20, 246, 240)
	triggerall = command = "b"
	triggerall = command != "holddown"
	trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Burla

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  195
	triggerall = command = "s"
	trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; Pu駉 debil sentada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  400
	triggerall = command = "x"
	triggerall = command = "holddown"
	trigger1 = statetype = C && ctrl
	trigger2 = MoveContact && StateNo = 400

;---------------------------------------------------------------------------
; Pu駉 fuerte sentada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  430
	triggerall = command = "a"
	triggerall = command = "holddown"
	trigger1 = statetype = C && ctrl
	trigger2 = (stateno = 400) || (stateno = 430)
	trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; Patada debil sentada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  410
	triggerall = command = "y"
	triggerall = command = "holddown"
	trigger1 = (statetype = C && ctrl) || stateno = 100
	trigger2 = (stateno = 400) || (stateno = 430)
	trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; Patada fuerte sentada

[State -1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  440
	triggerall = command = "b"
	triggerall = command = "holddown"
	trigger1 = (statetype = C && ctrl) || stateno = 100
	trigger2 = (stateno = 400) || (stateno = 430)|| (stateno = 445)
	trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; Pu駉 debil saltando, moviendose en el mismo lugar

;---------------------------------------------------------------------------
; Pu駉 fuerte saltando, moviendose en el mismo lugar
; y continuacion del salto hacia adelante


;---------------------------------------------------------------------------
; Patada debil saltando, moviendose en el mismo lugar

[State -1]
	type = changestate
	triggerall = var(25) != 1 
 value =  610
	triggerall = (command = "a")
	trigger1 = statetype = a && ctrl
	

[State -1]
	type = changestate
	triggerall = var(25) != 1
 value =  600
	triggerall = (command = "x")
	trigger1 = statetype = a && ctrl
	

[State -1]
	type = changestate
	triggerall = var(25) != 1
 value =  620
	triggerall = (command = "y")
	trigger1 = statetype = a && ctrl

;---------------------------------------------------------------------------
; Patada fuerte saltando, moviendose en el mismo lugar

[State -1]
	type = changestate
	triggerall = var(25) != 1 
 value =  630
	triggerall = (command = "b")
	trigger1 = statetype = a && ctrl

;---------------------------------------------------------------------------
;A.I. [var(51)] esto no funciona adecuadamente, en si no sirve (-_-
;---------------------------------------------------------------------------

[State -1, 1]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  Ifelse(P2bodydist X < 26, 630, 640)
	triggerall = var(51) = 1
	trigger1 = stateno = 8200 && AnimTime = 0
	trigger1 = random > Life
	trigger2 = StateNo = 0 && Random < 500
	trigger2 = PrevStateNo = 215
	trigger2 = P2MoveType = A && p2bodydist y < 42

[State -1, 3]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  ifelse(P2BodyDist X <= 80,41,42)
	triggerall = Var(51) = 1 && Random < 333
	trigger1 = (StateType != A) && (StateType != L) && (Enemy, MoveType = A) && (Enemy, StateType != A) && (enemy, NumProj >= 1) && StateNo != 40
	trigger1 = Ctrl

[State -1, 4]
	type = VarSet
	triggerall = Var(51) = 1 
	trigger1 = StateNo = [41,44]
	sysvar(1) = ifelse(p2bodydist x <= 80,0,Ifelse(Random<750,1,0))

[state -1, 5]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  Ifelse(EnemyNear,StateType = C,131,130)
	triggerall = Var(51) = 1
	triggerall = Random <= ifelse (StateType = A, 100, 800) && Ctrl
	trigger1 = StateType != A && (Enemy, HitDefAttr = SCA, AA, SA ,HA ,AP, SP, HP)
	trigger1 = MoveType = I && ((EnemyNear, MoveType = A  && P2BodyDist X <= 50) || (Enemy, NumProj >= 1)) && Ctrl

[State -1, 6]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  Ifelse(Random<250, 610, Ifelse(Vel X, 640, 650))
	triggerall = var(51) = 1
	triggerall = random < 410
	triggerall = Vel Y > 0
	trigger1 = p2bodydist x <= 42
	trigger1 = statetype = A && Ctrl

[State -1, 7]
	type = ChangeState
	triggerall = var(25) != 1 
 value =   Ifelse(Random<250, 210, Ifelse(P2BodyDist X < 18, 245, 240))
	triggerall = Var(51) = 1 && StateType != A && Ctrl
	triggerall = Random < 380 && P2StateType != L
	trigger1 = p2bodydist x <= 35

[State -1, 8]
	type = ChangeState
	triggerall = var(25) != 1 
 value =  250
	triggerall = Var(51) = 1 && Random < 500
	triggerall = StateType != A
	trigger1 = (StateNo = 210 || StateNo = 245) && MoveContact
	trigger2 = Random < 75 
	trigger2 = Var(41) && StateNo != 250

;[fin del archivo]






;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ai\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



[state -3]
type = varset
triggerall = var(25)
triggerall = numenemy=2
trigger1 = !enemynear,alive
var(47) = 1
ignorehitpause = 1

;===============================================================================
;=====================================直接攻击====================================
;===============================================================================


;防空：
[state -3,fangkong]
type = changestate
value = 1200
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2statetype=A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = (p2bodydist x=[0,30]) && enemynear(var(47)),vel x=0 || (p2bodydist x=[15,40]) && enemynear(var(47)),vel x>0
triggerall = p2movetype!=H
trigger1 = enemynear(var(47)),vel y>0
trigger1 = enemynear(var(47)),pos y=[-100,-20]
trigger1 = random <= 300   ;概率
trigger2 = enemynear(var(47)),vel y<0
trigger2 = enemynear(var(47)),pos y>=-20
trigger2 = random <= 300   ;概率


;近距离直攻
[state -3,1000]
type = changestate
value = 1300
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2statetype!= A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
trigger1 = p2bodydist x=[15,40]    ;距离
trigger1 = p2movetype!=A && random<=133
trigger2 = prevstateno = 410
trigger2 = random <= 200
trigger2 = movecontact
trigger3 = prevstateno = 210
trigger3 = random <= 200
trigger3 = movecontact


;地面中距离突击
[state -3,tuji]
type = changestate
value = 1000
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2stateno!=[5030,5999]
triggerall = statetype!=A
triggerall = p2statetype!= A
triggerall = p2statetype!= C
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
triggerall = p2bodydist x=[21,60]
trigger1 = p2movetype!=A && random<=233
;trigger2 = p2movetype =A && p2stateno<1000 && random<=333

;地面中距离突击
[state -3,tuji]
type = changestate
value = 270
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2stateno!=[5030,5999]
triggerall = statetype!=A
triggerall = p2statetype!= A
triggerall = p2statetype!= C
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
triggerall = p2bodydist x=[50,90]
trigger1 = p2movetype!=A && random>=733

;地面中距离突击
[state -3,tuji]
type = changestate
value = 1050
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2stateno!=[5030,5999]
triggerall = statetype!=A
triggerall = p2statetype!= A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
triggerall = p2bodydist x=[60,150]
trigger1 = p2movetype!=A && random<=333
;trigger2 = p2movetype =A && p2stateno<1000 && random<=233


;地面中距离突击
[state -3,tuji]
type = changestate
value = 1000
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2stateno!=[5030,5999]
triggerall = statetype!=A
triggerall = p2statetype!= C
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
triggerall = p2bodydist x=[40,100]
trigger1 = p2movetype!=A && random<=103
;trigger2 = p2movetype =A && p2stateno<1000 && random<=433

;地面中距离突击
[state -3,tuji]
type = changestate
value = 1100
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2stateno!=[5030,5999]
triggerall = statetype!=A
triggerall = p2statetype!= C
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
triggerall = p2bodydist x=[40,130]
trigger1 = p2movetype!=A && random = [103,300]
trigger2 = p2movetype =A && p2stateno<1000 && random = [333,600]



;地面远距离突击
[state -3,tuji]
type = changestate
value = 1700
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2stateno!=[5030,5999]
triggerall = statetype!=A
triggerall = p2dist y = [-60,0]
triggerall = p2statetype!= C
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
trigger1 = p2bodydist x>=90
trigger1 = p2movetype!=A && random >= 503
trigger2 = p2movetype =A && p2stateno<1000 && random>=333 && p2bodydist x>=50
trigger2 = p2bodydist x>=150


;远距离大招
[state -3,dazhaotuji]
type = changestate
value = 3000
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = power >= 1000
triggerall = p2bodydist x=[40,150]
trigger1 = p2movetype!=A && random<=353
trigger1 = ctrl && power < 2000
trigger2 = p2movetype =A && p2stateno<1000 && random<=453 && p2bodydist x>=40
trigger2 = ctrl  && power < 2000
trigger3 = prevstateno = 210
trigger3 = movehit && random<=50
trigger4 = prevstateno = 410
trigger4 = movehit && random<=50
trigger5 = p2movetype =A && p2stateno<1000 && random=953 && p2bodydist x>=40
trigger5 = ctrl && power >= 2000
trigger1 = p2movetype!=A && random<=353
trigger1 = ctrl && power >= 2000


;空中攻击
[state -3,]
type = changestate
value = 640
triggerall = var(25)
triggerall = statetype=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x<=60
triggerall = random <= 500
trigger1 = vel y>0 && p2dist y=[0,80]
trigger2 = vel y<0 && p2dist y=[-60,0]

;空中攻击
[state -3,]
type = changestate
value = 1400
triggerall = var(25)
triggerall = statetype=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x<=60
triggerall = random <= 500
trigger1 = vel y>0 && p2dist y=[0,80]
trigger2 = vel y<0 && p2dist y=[-60,0]


;===============================================================================
;=====================================连招=====================================
;===============================================================================

[state -3,lianzhaoxiao1]
type = changestate
value = 1701
triggerall = var(25)
triggerall = statetype != A
triggerall = stateno = 1700
triggerall = time = 28
trigger1 = p2stateno = [5000,5099] ;&& random<=350   ;movehit还是contact
trigger2 = p2bodydist x> 70
trigger2 = p2dist y= [-60,0]
trigger2 = p2statetype != C
;triggerall = p2bodydist x>=55  ;距离


[state -3,lianzhaoxiao2]
type = changestate
value = 1702
triggerall = var(25)
triggerall = statetype != A
trigger1 = p2stateno = [5000,5099] ;&& random<=350   ;movehit还是contact
;triggerall = p2bodydist x>=55  ;距离
triggerall = stateno = 1701
triggerall = time = 23
trigger1 = p2stateno = [5000,5099] ;&& random<=350   ;movehit还是contact
trigger2 = p2bodydist x> 70
trigger2 = p2dist y= [-60,0]
trigger2 = p2statetype != C


[state -3,lianzhaoxiao3]
type = changestate
value = 1000
triggerall = var(25)
;triggerall = statetype != A
triggerall = movehit && random<=200   ;movehit还是contact
;triggerall = p2bodydist x<=70  ;距离
triggerall = power < 1000
trigger1 = stateno = 200  ;近重拳
trigger2 = stateno = 210  ;下重拳
trigger3 = stateno = 230
trigger4 = stateno = 240
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 440
trigger9 = stateno = 1100
trigger9 = time >= 30
trigger10 = stateno = 270
trigger11 = stateno = 246

[state -3,lianzhaoxiao4]
type = changestate
value = 1300
triggerall = var(25)
triggerall = statetype != A
triggerall = movehit && random =[200,400]   ;movehit还是contact
;triggerall = p2bodydist x<=70  ;距离
triggerall = power < 1000
trigger1 = stateno = 200  ;近重拳
trigger2 = stateno = 210  ;下重拳
trigger3 = stateno = 230
trigger4 = stateno = 240
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 440
trigger9 = stateno = 270
trigger10 = stateno = 246

[state -3,lianzhaoxiao5]
type = changestate
value = 1200
triggerall = var(25)
triggerall = statetype != A
triggerall = movecontact && random =[400,600]   ;movehit还是contact
;triggerall = p2bodydist x<=70  ;距离
triggerall = power < 1000
trigger1 = stateno = 200  ;近重拳
trigger2 = stateno = 210  ;下重拳
trigger3 = stateno = 230
trigger4 = stateno = 240
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 440
trigger9 = stateno = 270
trigger10 = stateno = 246

[state -3,lianzhaoxiao6]
type = changestate
value = 1300
triggerall = var(25)
;triggerall = statetype != A
triggerall = movehit && random =[401,999]   ;movehit还是contact
;triggerall = p2bodydist x<=70  ;距离
triggerall = power >= 1000
trigger1 = stateno = 200  ;近重拳
trigger2 = stateno = 210  ;下重拳
trigger3 = stateno = 230
trigger4 = stateno = 240
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 440
trigger9 = stateno = 270

[state -3,lianzhaoxiao6]
type = changestate
value = 3000
triggerall = var(25)
;triggerall = statetype != A
triggerall = movehit && random =[1,400]   ;movehit还是contact
;triggerall = p2bodydist x<=70  ;距离
triggerall = power >= 1000
trigger1 = stateno = 200  ;近重拳
trigger2 = stateno = 210  ;下重拳
trigger3 = stateno = 230
trigger4 = stateno = 240
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 440
trigger9 = stateno = 270
trigger10 = stateno = 246
trigger11 = stateno = 1100
trigger11 = time >= 30
trigger12 = stateno = 1300
trigger12 = time = [13,20]

[state -3,lianzhaoxiao6]
type = changestate
value = 3000
triggerall = var(25)
;triggerall = statetype != A
;triggerall = movehit && random =[1,400]   ;movehit还是contact
;triggerall = p2bodydist x<=70  ;距离
triggerall = power >= 1000
trigger1 = stateno = 1100
trigger1 = time >= 30
trigger2 = stateno = 1300
trigger2 = time = [13,20]

;===============================================================================
;=====================================小破招====================================
;===============================================================================

;下轻拳脚
[state -3,xiaqingquan]
type = changestate
value = 400     ;修改
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201
triggerall = ctrl
triggerall = p2bodydist x =[10,50]
trigger1 = p2stateno=100 || p2stateno=52|| p2stateno=20
trigger1 = random<=333       ;攻击前行概率
trigger2 = p2movetype=H
trigger2 = random<=333
trigger3 = p2movetype=I && p2stateno<200 && random<=200
trigger4 = p2movetype=A && p2stateno>=1000 && random<=13 && enemynear(var(47)),time>8
trigger5 = p2movetype !=A
trigger5 = random<=333

;扫堂腿
[state -3,caotangtui]
type = changestate
value = 440
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2statetype!=A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L   ;高智商开启
triggerall = ctrl
triggerall = p2bodydist x =[15,60]
trigger1 = p2stateno=100 || p2stateno=52|| p2stateno=20
trigger1 = random<=233           ;攻击前行概率
trigger2 = p2movetype=H
trigger3 = p2movetype=I && random<=200 ;攻击闲逛概率
trigger4 = p2movetype=A && p2stateno<1000 && random<=10 ;对抗小招概率
trigger5 = p2movetype=A && p2stateno>=1000 && random<=13 && enemynear(var(47)),time>8 ;对抗中招概率

;下轻拳脚
[state -3,xiaqingquan]
type = changestate
value = 210     ;修改
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x =[0,15]
trigger1 = p2stateno=100 || p2stateno=52|| p2stateno=20
trigger1 = random<=333       ;攻击前行概率
trigger2 = p2movetype=H
trigger2 = random<=333
trigger3 = p2movetype=I && p2stateno<200 && random<=200
trigger4 = p2movetype=A && p2stateno>=1000 && random<=13 && enemynear(var(47)),time>8
trigger5 = p2movetype !=A
trigger5 = random<=333

;下轻拳脚
[state -3,xiaqingquan]
type = changestate
value = 430     ;修改
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x =[10,50]
trigger1 = p2stateno=100 || p2stateno=52|| p2stateno=20
trigger1 = random<=333       ;攻击前行概率
trigger2 = p2movetype=H
trigger2 = random<=333
trigger3 = p2movetype=I && p2stateno<200 && random<=200
trigger4 = p2movetype=A && p2stateno>=1000 && random<=13 && enemynear(var(47)),time>8
trigger5 = p2movetype !=A
trigger5 = random<=333

;下重拳
[state -3,420,xiazhongquan]
type = changestate
value = 410
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x =[15,40]  ;距离
trigger1 = p2stateno=100 || p2stateno=52|| p2stateno=20  ;攻击前行概率
trigger1 = random<=333
trigger2 = p2movetype=I && p2stateno>=200
trigger3 = p2movetype=A && p2stateno<1000 && random<=50  ;对抗对方攻击
trigger4 = p2movetype=I && p2stateno<200 && random<=200   ;对方闲逛攻击概率

;近重腿
[state -3,jinzhongquan]
type = changestate
value = 246
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = p2statetype!=A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x<=15
trigger1 = p2stateno=100 || p2stateno=52 && random<=333
trigger2 = p2movetype=I && p2stateno>=200
trigger3 = p2movetype=A && p2stateno<1000 && random<=200
trigger4 = p2movetype=I && p2stateno<200 && random<=200
trigger5 = p2movetype=A && p2stateno>=1000 && random<=53 && enemynear(var(47)),time>8



;空中重腿
[state -3,kongzhongji]
type = changestate
value = 640
triggerall = var(25)
triggerall = !vel x
triggerall = statetype=A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x<=60
trigger1 = vel y>0
trigger1 = p2dist y=[0,80]
trigger1 = random<=300
trigger2 = vel y<0
trigger2 = p2dist y=[-60,0]
trigger2 = random<=200

;空中超重击
[state -3,kongzhongtui]
type = changestate
value = 305
triggerall = var(25)
triggerall = !vel x
triggerall = statetype=A
triggerall = p2stateno!=5120 && p2stateno!=5200 && p2stateno!=5201 && p2statetype!=L
triggerall = ctrl
triggerall = p2bodydist x<=60
trigger1 = vel y>0
trigger1 = p2dist y=[0,70]
trigger1 = random<=300
trigger2 = vel y<0
trigger2 = p2dist y=[-60,0]
trigger2 = random<=100



;===============================================================================
;=====================================移动======================================
;===============================================================================
;向前走
[state -3,walkfoward]
type = changestate
value = 20
triggerall = var(25)
;;triggerall = !var(35)
triggerall = statetype!=A
triggerall = ctrl
triggerall = stateno!=100 && stateno!=20
triggerall = prevstateno!=100
triggerall = enemynear(var(47)),numproj<=1
trigger1 = p2bodydist x >=40 && p2movetype!=A && (p2stateno=[0,4999]) &&random<= 200 ;前行概率



;急冲
[state -3,dash]
type = changestate
value = 100
triggerall = var(25)
;triggerall = !var(35)
triggerall = statetype!=A
triggerall = ctrl
triggerall = p2statetype!=L
triggerall = stateno!=40
triggerall = stateno!=100 && stateno!=20
triggerall = p2stateno!=5120
triggerall = !enemynear(var(47)),numproj
triggerall = p2stateno!=[5030,5999]
trigger1 = p2bodydist x >=40
trigger1 = p2movetype=H
trigger1 = p2stateno!=[120,159]
trigger1 = random<=100 ;对方被攻击时急冲概率
trigger2 = p2bodydist x >=40
trigger2 = p2movetype=I
trigger2 = random<=100   ;对方游荡时急冲概率

;前闪
[state -3,duckfoward]
type = changestate
value = 80
triggerall = var(25)
;triggerall = !var(35)
triggerall = p2statetype!=L && p2statetype!=A
triggerall = statetype!=A
triggerall = p2stateno!=[5030,5999]
triggerall = stateno!=[150,151]
triggerall = ctrl|| stateno = 100 || stateno = 101 || stateno = 120 || stateno = 130 || stateno = 140
triggerall = p2stateno != [2000,4999]
trigger1 = (p2stateno=[0,699]) && (p2bodydist x=[30,70])
trigger1 = p2movetype=A && p2statetype!=A && random<=150                  ;近距离被攻击闪躲
trigger1 = p2stateno != [0,1000)
trigger2 = enemynear(var(47)),numproj && p2movetype=A && p2dist x<=100 && random<=160            ;前闪躲波
trigger3 = enemynear(var(47)),numproj && p2movetype=A && p2dist x>100 && random<=60          ;前闪躲波(远距离)
trigger4 = p2movetype=A && p2stateno<1000 && random<=100 && p2bodydist x=[100,200]
trigger5 = enemynear(var(47)),animtime > 28
trigger5 = p2movetype=A
trigger5 = p2bodydist x=[10,60]
trigger5 = random<=960
trigger6 = enemynear(var(47)),animtime > 28
trigger6 = p2bodydist x=[61,130]
trigger6 = random<=360
trigger6 = p2movetype=A
trigger6 = !enemynear(var(47)),numproj

;后闪
[State -3,duckbackward]
Type = ChangeState
Value = 90
triggerall = var(25)
triggerall = statetype != A
triggerall = ctrl|| stateno = 100 || stateno = 101 || stateno = 120 || stateno = 130 || stateno = 140
triggerall = Backedgebodydist > 100
triggerall = p2stateno != [2000,5122]
triggerall = enemynear(var(47)),numproj=0
triggerall = p2movetype = A
trigger1 = P2bodyDist X = [-50,50]
trigger1 = random <= 255    ;近距离被攻击后闪概率
trigger1 = p2stateno != [0,1000)
trigger2 = P2bodyDist X = [51,100]
trigger2 = random <= 140  ;远距离被攻击后闪概率
trigger2 = p2stateno != [0,1000)


;跳
[state -3,jump]
type = changestate
value = 40
triggerall = var(25)
;triggerall = !var(35)
triggerall = ctrl
triggerall = statetype!=A
trigger1 = p2stateno=52 && (p2dist x=[0,40]) && random<=100
trigger2 = (p2bodydist x=[80,130]) && random<=60 && p2movetype!=A && p2statetype!=A && p2statetype!=L  ;跳概率与距离
trigger3 = (p2bodydist x=[0,80]) && (p2stateno=[0,699])&& p2movetype=A && random<=180 && p2statetype=C  ;对方小招攻击跳概率
trigger4 = backedgedist<=50 && p2stateno=5120 && (p2bodydist x=[0,30])

;防御
[state -3,guard]
type = changestate
value = 120
triggerall = var(25)
;triggerall = !var(35)
triggerall = ctrl
triggerall = statetype!=A
triggerall = p2stateno != [0,1000)
trigger1 = p2bodydist x<=80 && p2dist y>=-100
trigger1 = p2statetype=A && enemynear(var(47)),vel y>=0 && p2movetype=A && random<=400 ;防对方突击概率
trigger2 = enemynear(var(47)),numproj>0
trigger2 = inguarddist && random<=500   ;防波概率
trigger3 = (p2bodydist x=[0,40]) && p2movetype=A && random<=150  ;放近距离小招概率
trigger3 = inguarddist
trigger4 = p2movetype= A && p2bodydist x<=60 && p2statetype != L
trigger5 = (p2stateno = [2000,4999]) && (p2statetype != L) && random<=999     ;防大招概率
trigger6 = p2bodydist x<=80 && p2dist y>=-100
trigger6 = p2statetype=A && enemynear(var(47)),vel y>=0 && p2movetype=A && random<=350 ;防远距离突击概率
trigger7 = p2movetype = A
trigger7 = (p2bodydist x=[15,50])
trigger7 = random <= 250
trigger7 = p2stateno <1000


;蹲防
[state -3,lowguard]
type = changestate
value = 121
triggerall = var(25)
;triggerall = !var(35)
triggerall = ctrl
triggerall = statetype!=A
triggerall = p2statetype = L
trigger1 = p2movetype = A
trigger1 = (p2bodydist x=[15,100])
trigger1 = random <= 400  ;防攻下盘概率
trigger2 = (p2stateno = [2000,4999]) && random<=900


;蹲防
[state -3,lowguard]
type = changestate
value = 122
triggerall = var(25)
;triggerall = !var(35)
triggerall = ctrl
triggerall = statetype =A
triggerall = p2statetype != L
trigger1 = p2movetype = A
trigger1 = (p2bodydist x=[15,100])
trigger1 = random <= 500
trigger1 = p2stateno = [1000,2000)
trigger2 = (p2stateno = [2000,4999]) && random<=900
trigger3 = p2movetype = A
trigger3 = (p2bodydist x=[15,50])
trigger3 = random <= 50
trigger3 = p2stateno <1000


