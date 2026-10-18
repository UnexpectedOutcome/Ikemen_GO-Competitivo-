;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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

;-| ULTIMATE |-------------------------------------------------------

[command]
name = "ULTIMATE"
command = x
time = 30

;-| SUPERS |-------------------------------------------------------

[command]
name = "SUPER1"
command = y
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
command = y+z ; con el botÃƒÆ’Ã‚Â³n A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1
;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 90
trigger1 = command = "Super Jump"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;ULTIMATE:
;===========================================================================
;Tails Gun Wave Final
[State -1, Tails Gun Wave Final]
type = ChangeState
triggerall = var(2) = 0
value = 3000
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl

;Tails Gun Wave Final
[State -1, Tails Gun Wave Final]
type = ChangeState
triggerall = var(2) = 2
value = 3100
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl

;Tails Gun Wave Final
[State -1, Tails Gun Wave Final]
type = ChangeState
triggerall = var(2) = 3
value = 3100
Triggerall = power >= 3000
triggerall = command = "ULTIMATE"
Triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;SUPERS:
;===========================================================================
;---------------------------------------------------------------------------
; Tornado
[State -1, Tornado]
type = ChangeState
triggerall = var(2) = 0
value = 1600
Triggerall = power >= 2000
triggerall = command = "SUPER1"
trigger1 = ctrl
;-| Specials |-------------------------------------------------------
;Super Tails Combo
[State -1, Super Tails Combo]
type = ChangeState
triggerall = var(2) = 2
value = 21000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super Tails Combo
[State -1, Super Tails Combo]
type = ChangeState
triggerall = var(2) = 3
value = 21000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Tails Tornado
[State -1, Super Tails Tornado]
type = ChangeState
triggerall = var(2) = 2
value = 22000
Triggerall = power >= 1500
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Tails Tornado
[State -1, Super Tails Tornado]
type = ChangeState
triggerall = var(2) = 3
value = 22000
Triggerall = power >= 1500
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Blast TP
[State -1,  Blast TP]
type = ChangeState
triggerall = var(2) = 2
value = 21200
Triggerall = power >= 1500
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Blast TP
[State -1, Blast TP]
type = ChangeState
triggerall = var(2) = 3
value = 21200
Triggerall = power >= 1500
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Tails Proton Wave
[State -1, Super Tails Proton Wave]
type = ChangeState
triggerall = var(2) = 2
value = 21300
triggerall = power >= 2000
triggerall = command = "SPECIAL 4"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Super Tails Proton Wave
[State -1, Super Tails Proton Wave]
type = ChangeState
triggerall = var(2) = 3
value = 21300
triggerall = power >= 2000
triggerall = command = "SPECIAL 4"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Tails Gun Wave
[State -1, Tails Gun Wave]
type = ChangeState
triggerall = var(2) = 2
value = 21400
triggerall = power >= 2000
triggerall = command = "SPECIAL 5"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Tails Gun Wave Air
[State -1, Tails Gun Wave Air]
type = ChangeState
triggerall = var(2) = 2
value = 21404
triggerall = power >= 2000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Tails Gun Wave
[State -1, Tails Gun Wave]
type = ChangeState
triggerall = var(2) = 3
value = 21400
triggerall = power >= 2000
triggerall = command = "SPECIAL 5"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Tails Gun Wave Air
[State -1, Tails Gun Wave Air]
type = ChangeState
triggerall = var(2) = 3
value = 21404
triggerall = power >= 2000
triggerall = command = "SPECIAL 5"
Triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Blast Ball
[State -1, Blast Ball]
type = ChangeState
triggerall = var(2) = 2
value = 21500
triggerall = power >= 2000
triggerall = command = "SPECIAL 6"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;Blast Ball
[State -1, Blast Ball]
type = ChangeState
triggerall = var(2) = 3
value = 21500
triggerall = power >= 2000
triggerall = command = "SPECIAL 6"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;Tails Combo
[State -1, Tails Combo]
type = ChangeState
triggerall = var(2) = 0
value = 1000
Triggerall = power >= 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Thunder Gun
[State -1, Thunder Gun]
type = ChangeState
triggerall = var(2) = 0
value = 1100
Triggerall = power >= 1000
triggerall = command = "SPECIAL 2"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Canon Combo
[State -1, Canon Combo]
type = ChangeState
triggerall = var(2) = 0
value = 1200
Triggerall = power >= 1000
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Tornado
[State -1, Tornado]
type = ChangeState
triggerall = var(2) = 0
value = 1300
triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Super Gun Wave
[State -1, Super Gun Wave]
type = ChangeState
triggerall = var(2) = 0
value = 1400
triggerall = power >= 1500
triggerall = command = "SPECIAL 5"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Tails Sudden Storm
[State -1, Tails Sudden Storm]
type = ChangeState
triggerall = var(2) = 0
value = 1500
triggerall = power >= 2000
triggerall = command = "SPECIAL 6"
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
; Hop & Air backwards/forwards 1
[State -1, Hop & Air backwards/forwards 1]
type = ChangeState
triggerall = var(2) = 0
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = stateno != 106
value = ifelse(pos y >= 0,100,105)
trigger1 = command = "FF"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Hop & Air backwards/forwards 2
[State -1, Hop & Air backwards/forwards 2]
type = ChangeState
triggerall = var(2) = 0
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = stateno != 106
value = ifelse(pos y >= 0,101,106)
trigger1 = command = "BB"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar adelante
[State -1, Voar adelante]
type = ChangeState
triggerall = var(2) > 1
triggerall = var(4) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar atras
[State -1, Voar atras]
type = ChangeState
triggerall = var(2) > 1
triggerall = var(4) = 0
value = 101
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar adelante
[State -1, Voar adelante]
type = ChangeState
triggerall = var(2) = 3
triggerall = var(4) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar atras
[State -1, Voar atras]
type = ChangeState
triggerall = var(2) = 3
triggerall = var(4) = 0
value = 101
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar adelante
[State -1, Voar adelante]
type = ChangeState
triggerall = var(2) = 2
triggerall = var(4) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar atras
[State -1, Voar atras]
type = ChangeState
triggerall = var(2) = 2
triggerall = var(4) = 0
value = 101
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar adelante
[State -1, Voar adelante]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(4) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Voar atras
[State -1, Voar atras]
type = ChangeState
triggerall = var(2) = 1
triggerall = var(4) = 0
value = 101
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power < 3000
value = 500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 2
Triggerall = power < 3000
value = 2500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = var(2) = 3
Triggerall = power < 3000
value = 2500
triggerall = command != "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl
;===========================
;NORMAL
;----------------

;---------------------------------------------------------------------------
; Down + A
[State -1,Down + A]
type=ChangeState
value = 260
triggerall = power >= 250
triggerall = var(3) = 0
triggerall = var(2) = 0
triggerall = Command = "a"
triggerall = Command = "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A
[State -1, A]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 200
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B Tails Bot
[State -1,Down + B Tails Bot]
type=ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 370
triggerall = numhelper(372) = 0
triggerall = numhelper(373) = 0
triggerall = numhelper(374) = 0
triggerall = numhelper(376) = 0
triggerall = numhelper(377) = 0
triggerall = numhelper(378) = 0
triggerall = power >= 300
triggerall = Command = "b"
triggerall = Command = "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; B
[State -1, B]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 300
triggerall = command = "b"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + C - Ring Bombs Throw
[State -1,Down + C - Ring Bombs Throw]
type=ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 480
triggerall = numhelper(485) = 0
triggerall = numhelper(486) = 0
triggerall = numhelper(487) = 0
triggerall = numhelper(488) = 0
triggerall = numhelper(489) = 0
triggerall = power >= 300
triggerall = Command = "c"
triggerall = Command = "holddown"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 0
value = 400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; A air
[State -1, A air]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + B Tails Bot - Air
[State -1, Down + B Tails Bot - Air]
Type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
Value = 615
triggerall = numhelper(372) = 0
triggerall = numhelper(373) = 0
triggerall = numhelper(374) = 0
triggerall = numhelper(376) = 0
triggerall = numhelper(377) = 0
triggerall = numhelper(378) = 0
triggerall = power >= 300
Triggerall = Command = "b"
Triggerall = command = "holddown"
Triggerall = StateType = A
Trigger1 = Ctrl
;---------------------------------------------------------------------------
; B air
[State -1, B air]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Down + C Ring Bombs Throw - Air
[State -1, Down + C Ring Bombs Throw - Air]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 640
triggerall = power >= 300
triggerall = command = "c"
Triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; C air
[State -1, C air]
type = ChangeState
triggerall = var(3) = 0
triggerall = var(2) = 0
value = 620
triggerall = power >= 200
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------


;===========================
;Super Tails
;----------------
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 2
value = 2200
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl
; A
[State -1, A]
type = ChangeState
triggerall = var(2) = 3
value = 2200
triggerall = command = "a"
Triggerall = statetype != A
trigger1 = ctrl

; Down + B
[State -1,Down + A]
type=ChangeState
value = 2370
triggerall = power >= 800
triggerall = var(2) = 2
triggerall = Command = "b"
triggerall = Command = "holddown"
Triggerall = statetype != A
trigger1 = ctrl

; Down + B
[State -1,Down + A]
type=ChangeState
value = 2370
triggerall = power >= 800
triggerall = var(2) = 3
triggerall = Command = "b"
triggerall = Command = "holddown"
Triggerall = statetype != A
trigger1 = ctrl

; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 2
value = 2300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl
; B
[State -1, B]
type = ChangeState
triggerall = var(2) = 3
value = 2300
triggerall = command = "b"
triggerall = command != "holddown"
Triggerall = statetype != A
trigger1 = ctrl

; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 2
value = 2400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl
; C
[State -1, C]
type = ChangeState
triggerall = var(2) = 3
value = 2400
triggerall = power >= 500
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl

; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 2
value = 2610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
; B air
[State -1, B air]
type = ChangeState
triggerall = var(2) = 3
value = 2611
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 2
value = 2600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
; A air
[State -1, A air]
type = ChangeState
triggerall = var(2) = 3
value = 2600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; C Aire
[State -1, C Aire]
type = ChangeState
Triggerall = numhelper(11405) = 0
value = 2620
triggerall = var(2) = 2
triggerall = power >= 200
triggerall = command = "c"
Triggerall = statetype = A
trigger1 = ctrl
; C Aire
[State -1, C Aire]
type = ChangeState
Triggerall = numhelper(11405) = 0
value = 2620
triggerall = var(2) = 3
triggerall = power >= 200
triggerall = command = "c"
Triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Transforms:
;---------------------------------------------------------------------------

[State -1, Super Tails transform]
type = ChangeState
triggerall = stateno != 800
triggerall = var(2) = 0
triggerall = var(3) = 0
triggerall = power >= 1500
triggerall = ailevel = 0
value = 800
triggerall = command = "z"
Triggerall = statetype != A
trigger1 = ctrl
; Super Mecha Sonic turn off
[State -1, Super Tails turn off]
type = ChangeState
triggerall = stateno != 810
triggerall = var(2) = 2
triggerall = ailevel = 0
value = 810
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

;-------------
; Ultra Tails transform
[State -1, Ultra Tails transform]
type = ChangeState
triggerall = var(2) = 0
triggerall = power >= 2000
triggerall = ailevel = 0
triggerall = stateno != 803
value = 803
triggerall = command = "holddown"
triggerall = command = "z"
Triggerall = statetype != A
trigger1 = ctrl
; Ultra Tails transform
[State -1, Ultra Tails transform]
type = ChangeState
triggerall = stateno != 803
triggerall = var(2) = 2
triggerall = power >= 500
triggerall = ailevel = 0
value = 803
triggerall = command = "z"
Triggerall = statetype != A
trigger1 = ctrl
; Ultra Ultra turn off
[State -1, Super Tails turn off]
type = ChangeState
triggerall = stateno != 810
triggerall = var(2) = 3
triggerall = ailevel = 0
value = 810
triggerall = command = "holddown"
triggerall = command = "s"
Triggerall = statetype != A
trigger1 = ctrl

;-------------