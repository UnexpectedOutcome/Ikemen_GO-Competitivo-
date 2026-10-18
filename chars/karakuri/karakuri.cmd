; Karakuri's CMD file.
; Last edited 10/07/00 PST
; Player.cmd was used as a base.

;-| Super Motions |--------------------------------------------------------
; None!
;-| Special Motions |------------------------------------------------------
;------------------
; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z


;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c


time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]

;===========================================================================
;---[ Running (Which has been changed to walking with this Char) ]----------
; Run Forward
[State -1]
type = null;ChangeState
value = 20
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = null;ChangeState
value = 21
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---[ Special Attacks]------------------------------------------------------
; Flame Thrower
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Flame Thrower
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Flame Thrower
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Machine Gun
[State -1]
type = ChangeState
value = 1005
triggerall = command = "QCB_x"
triggerall = command != "holddown"
trigger1 = Numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

; Machine Gun
[State -1]
type = ChangeState
value = 1005
triggerall = command = "QCB_y"
triggerall = command != "holddown"
trigger1 = Numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

; Machine Gun
[State -1]
type = ChangeState
value = 1005
triggerall = command = "QCB_z"
triggerall = command != "holddown"
trigger1 = Numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

; Arm Swing
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCB_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Arm Swing
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Arm Swing
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCB_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; High Arm Swing
[State -1]
type = ChangeState
value = 1020
triggerall = command = "uppercut_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; High Arm Swing
[State -1]
type = ChangeState
value = 1020
triggerall = command = "uppercut_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; High Arm Swing
[State -1]
type = ChangeState
value = 1020
triggerall = command = "uppercut_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Grab n' Blast
[State -1]
type = ChangeState
value = 1030
triggerall = command = "QCF_a"
triggerall = p2bodydist X <= 100 && p2movetype != H
triggerall = power >=1000
trigger1 = statetype = S
trigger1 = ctrl = 1

; Lil Karakuri Striker
[State -1]
type = ChangeState
value = 1040
triggerall = NumHelper(9010) = 0
triggerall = command = "QCF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;---[ Basic Attacks ]-------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 20

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Z
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 600
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 600
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 610
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
