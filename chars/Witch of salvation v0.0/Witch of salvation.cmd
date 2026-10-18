;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
;-| Single Button |---------------------------------------------------------

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

[command]
name = "SPECIAL 1"
command = ~D,DF,F,a
time = 15

[command]
name = "SPECIAL 15"
command = ~D,DB,B,a
time = 15

[command]
name = "SPECIAL 2"
command = ~D,DF,F,b
time = 15

[command]
name = "SPECIAL 25"
command = ~D,DB,B,b
time = 15

[command]
name = "SPECIAL 3"
command = ~D,DF,F,c
time = 15

[command]
name = "SUPERS"
command = x
time = 15

[command]
name = "SUPERS2"
command = y
time = 15

[Command]
name = "start"
command = /$s
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

[Statedef -1]

;=================================
[State -1, ]
type = ChangeState
value = 21000
triggerall = var(59) = 0
triggerall = command = "SPECIAL 1"
;Triggerall = power >= 1000
;trigger1 = ctrl
trigger1 = 1

[State -1, ]
type = ChangeState
value = 51000
triggerall = var(59) = 0
triggerall = command = "SPECIAL 15"
;Triggerall = power >= 1000
;trigger1 = ctrl
trigger1 = 1

[State -1, ]
type = ChangeState
value = 31000
triggerall = var(59) = 0
triggerall = command = "SPECIAL 2"
;Triggerall = power >= 1000
;trigger1 = ctrl
trigger1 = 1

[State -1, ]
type = ChangeState
value = 52000
triggerall = var(59) = 0
triggerall = command = "SPECIAL 25"
;Triggerall = power >= 1000
;trigger1 = ctrl
trigger1 = 1

[State -1, ]
type = ChangeState
value = 41000
triggerall = var(59) = 0
triggerall = command = "SPECIAL 3"
;Triggerall = power >= 1000
;trigger1 = ctrl
trigger1 = 1

[State -1, ]
type = ChangeState
value = 990900
triggerall = var(59) = 0
triggerall = command = "SUPERS"
;Triggerall = power < 2999
;trigger1 = ctrl
;Trigger2 = var(3) >= 3000
trigger1 = 1

[State -1, ]
type = ChangeState
value = 1000900
triggerall = var(59) = 0
triggerall = command = "SUPERS2"
;Triggerall = power > 3000
;trigger1 = ctrl
;Trigger2 = var(3) >= 3000
trigger1 = 1

[State -1, Atake]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
;trigger1 = ctrl
trigger1 = 1

[State -1, Atake]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
;trigger1 = ctrl
trigger1 = 1

[State -1, Atake]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = 1

;==========================AI=================================================
;-------------------------------------------------------------------------------
; Activar IA
;-------------------------------------------------------------------------------
;===========================================================================

