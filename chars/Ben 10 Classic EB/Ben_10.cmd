;-| Default Values |-------------------------------------------------------

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
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
command = ~D,DF,F,D,DF,F,a+b
time = 30

[command]
name = "SPECIAL 8"
command = ~D,DF,F,x
time = 15

[command]
name = "SPECIAL 9"
command = ~D,DB,B,x
time = 15

[command]
name = "SPECIAL 10"
command = ~D,DF,F,y
time = 15

[command]
name = "SPECIAL 11"
command = ~D,DB,B,y
time = 15

[command]
name = "SPECIAL 12"
command = ~D,DF,F,z
time = 15

[command]
name = "SPECIAL 13"
command = ~D,DB,B,z
time = 15

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Defaults]

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

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
name = "start"
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


[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0



[Statedef -1]
;---------------------------------------------------------------------------
[State -3, AI???????]
type=helper
TriggerAll=RoundState<2||(RoundState=2&&ctrl)
Trigger1=!NumHelper(96600)
Trigger1=alive
Trigger1=var(59)<=0
helpertype=normal
name="AI"
stateno=96600
ID=96600
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0
;---------------------------------------------------------------------------
[State -3, ?????????????]
type=changestate
Trigger1= ishelper
trigger1= ishelper(96600)
Trigger1= stateno!=96600
value=96600
;---------------------------------------------------------------------------
[State -1, AI??]
Type = VarSet
TriggerAll = !Var(59)
TriggerAll= RoundState<2 || (RoundState=2&&ctrl)
triggerall = enemynear,life > 0
Trigger1 = Command = "AI0"
Trigger2 = Command = "AI1"
Trigger3 = Command = "AI2"
Trigger4 = Command = "AI3"
Trigger5 = Command = "AI4"
Trigger6 = Command = "AI5"
Trigger7 = Command = "AI6"
Trigger8 = Command = "AI7"
Trigger9 = Command = "AI8"
Trigger10 = Command = "AI9"
Trigger11 = Command = "AI10"
Trigger12 = Command = "AI11"
Trigger13 = Command = "AI12"
Trigger14 = Command = "AI13"
Trigger15 = Command = "AI14"
Trigger16 = Command = "AI15"
Trigger17 = Command = "AI16"
Trigger18 = Command = "AI17"
Trigger19 = Command = "AI18"
Trigger20 = Command = "AI19"
Trigger21 = Command = "AI20"
Trigger22 = Command = "AI21"
Trigger23 = Command = "AI22"
Trigger24 = Command = "AI23"
Trigger25 = Command = "AI24"
Trigger26 = Command = "AI25"
Trigger27 = Command = "AI26"
Trigger28 = Command = "AI27"
Trigger29 = Command = "AI28"
Trigger30 = Command = "AI29"
Trigger31 = Command = "AI30"
Trigger32 = Command = "AI31"
Trigger33 = Command = "AI32"
Trigger34 = Command = "AI33"
Trigger35 = Command = "AI34"
Trigger36 = Command = "AI35"
Trigger37 = Command = "AI36"
Trigger38 = Command = "AI37"
Trigger39 = Command = "AI38"
Trigger40 = var(59)=0
Trigger40 = numhelper(96600)
Trigger40 = helper(96600),var(59)>0
trigger41 = ctrl
trigger41 = var(58) = 1 
trigger42 = ctrl
trigger42 = var(58) = 2
trigger42 = PalNo >= 2
Trigger43 = NumHelper(30000) != 0
Trigger43 = Helper(30000),var(59)
ignorehitpause = 1
var(59)=1
;---------------------------------------------------------------------------
[State -1, SPECIAL 7]
type = ChangeState
value = 30017
triggerall =  !var(59) && command = "SPECIAL 7"
trigger1 = (statetype != A) && ctrl
triggerall = power >= 3000
;---------------------------------------------------------------------------
[State -1, SPECIAL 1]
type = ChangeState
value = 6017
triggerall = command = "SPECIAL 1"
trigger1 = (statetype != A) && ctrl
triggerall = power >= 1000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 2]
type = ChangeState
value = 7017
triggerall = command = "SPECIAL 2"
trigger1 = (statetype != A) && ctrl
triggerall = power >= 2000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 3]
type = ChangeState
value = 8017
triggerall = command = "SPECIAL 3"
trigger1 = (statetype != A) && ctrl
triggerall = power >= 2000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 4]
type = ChangeState
value = 9017
Triggerall = !var(59) && command = "SPECIAL 4"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 5]
type = ChangeState
value = 10017
Triggerall = !var(59) && command = "SPECIAL 5"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 6]
type = ChangeState
value = 20017
Triggerall = !var(59) && command = "SPECIAL 6"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 8]
type = ChangeState
value = 40017
Triggerall = !var(59) && command = "SPECIAL 8"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 9]
type = ChangeState
value = 50017
Triggerall = !var(59) && command = "SPECIAL 9"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 10]
type = ChangeState
value = 60017
Triggerall = !var(59) && command = "SPECIAL 10"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 11]
type = ChangeState
value = 70017
Triggerall = !var(59) && command = "SPECIAL 11"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 12]
type = ChangeState
value = 80017
Triggerall = !var(59) && command = "SPECIAL 12"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL 13]
type = ChangeState
value = 90017
Triggerall = !var(59) && command = "SPECIAL 13"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;FF
[State -1, FF]
type = ChangeState
value = 100
Triggerall = !var(59) && command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;BB
[State -1, BB]
type = ChangeState
value = 105
Triggerall = !var(59) && command = "BB"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;start
[State -1, start]
type = ChangeState
value = 195
triggerall = power < 7000
trigger1 = command = "hold_s"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = (statetype = s) && ctrl
triggerall = var(47) = 0
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = (statetype = s) && ctrl
triggerall = var(47) = 0
;---------------------------------------------------------------------------
;a por abajo
[State -1, a por abajo]
type = ChangeState
value = 300
Triggerall = !var(59) && command = "a"
trigger1 = statetype = c
trigger1 = ctrl
;---------------------------------------------------------------------------
;b por abajo
[State -1, b por abajo]
type = ChangeState
value = 310
Triggerall = !var(59) && command = "b"
trigger1 = statetype = c
trigger1 = ctrl
;---------------------------------------------------------------------------
; AI
[State -1, SPECIAL 1]
type = ChangeState
value = 6017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 90
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 2]
type = ChangeState
value = 7017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = A && p2statetype != L
trigger1 = p2bodydist x <= 50
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 3]
type = ChangeState
value = 8017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x = (50,200)
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 4]
type = ChangeState
value = 9017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 90
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 5]
type = ChangeState
value = 10017
Triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x >= 60
trigger1 = ctrl && random <10
;---------------------------------------------------------------------------
[State -1, SPECIAL 6]
type = ChangeState
value = 20017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 7]
type = ChangeState
value = 30017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 8]
type = ChangeState
value = 40017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 9]
type = ChangeState
value = 50017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 9]
type = ChangeState
value = 60017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 8]
type = ChangeState
value = 70017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 8]
type = ChangeState
value = 80017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
[State -1, SPECIAL 8]
type = ChangeState
value = 90017
triggerall = roundstate = 2
Triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = p2statetype = S && p2statetype != C
trigger1 = p2bodydist x <= 60
trigger1 = ctrl && random <50
;---------------------------------------------------------------------------
;‹Ù‹}‰ñ”ð‘O
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)
triggerall = p2movetype = A && p2bodydist x <= 15
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = (150,151)
;---------------------------------------------------------------------------
;Run Forward
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(59)
triggerall = enemynear,statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 150
;---------------------------------------------------------------------------
[State -1, RUN]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = Random <= 10
triggerall = RoundState = 2  && Alive
triggerall = statetype = S
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 10
;---------------------------------------------------------------------------
[State -1,d]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = roundstate = 2  && Alive
triggerall = statetype = S
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = !inguarddist
trigger1 = p2bodydist x >= 240
trigger1 = random <= 10
trigger4 = enemynear,statetype = A && enemynear,movetype = H
;---------------------------------------------------------------------------
;???????
[State -1,bs]
Type = ChangeState
value = 105
triggerall = var(59)
triggerall = roundstate = 2  && Alive
triggerall = statetype = S
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 105
triggerall = prevstateno != 105
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != S
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= 10
trigger2 = enemynear,statetype = L
trigger2 = p2bodydist x <= 40
trigger2 = random <= 10
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = roundstate = 2
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 201
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 200) && time > 5
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 202
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <200
trigger2 = (stateno = 201) && time > 5
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <700
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 211
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall= p2bodydist x <= 50
trigger1 = ctrl && random <700
trigger2 = (stateno = 210) && time > 5
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 212
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall= p2bodydist x <= 50
trigger1 = ctrl && random <700
trigger2 = (stateno = 211) && time > 5
;---------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <700
;---------------------------------------------------------------------------
[State -1, b]
type = ChangeState
value = 310
triggerall = var(59)
triggerall = enemynear,movetype != A
triggerall = roundstate = 2
triggerall = StateType = S
triggerall = p2statetype = S && p2statetype != C
triggerall = p2bodydist x <= 50
trigger1 = ctrl && random <700
;---------------------------------------------------------------------------
