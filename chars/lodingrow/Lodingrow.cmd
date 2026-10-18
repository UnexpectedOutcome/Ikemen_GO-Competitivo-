;-| CPU Commands |--------------------------------------------------------
[command]
name = "AIFlag_0"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[command]
name = "AIFlag_1"
command = b,b,b,b,b,b,s,s,s,s,s,s
time = 0

[command]
name = "AIFlag_2"
command = a,a,a,a,a,a,a,U,U,U,U
time = 0

[command]
name = "AIFlag_3"
command = D,D,D,D,U,U,U,U
time = 0

[command]
name = "AIFlag_4"
command = s,s,s,s,U,U,U,U
time = 0

[command]
name = "AIFlag_5"
command = c,c,c,c,U,U,U,U
time = 0

[command]
name = "AIFlag_6"
command = b,b,b,b,b,c,c,c,c,U,U,U,U
time = 0
;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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
name = "recovery";Required (do not remove)
command = x+y
time = 1

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

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 2500
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 2500
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Slash
[State -1, Slash1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
;---------------------------------------------------------------------------
;Spike Niddle
[State -1, Spike Niddle]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = numhelper(550) < 5
triggerall = stateno = 2500
trigger1 = statetype = C
;----------------------------------------------------------------------------------
;Under the spike
[State -1, Under the spike]
type = ChangeState
value = 2310
triggerall = command = "start"
triggerall = stateno != 2500
triggerall = stateno != 2310
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Seed Explosion
[State -1, Seed Explosion]
type = ChangeState
value = 1100
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = numhelper(1150) < 4
triggerall = stateno = 2500
trigger1 = statetype = C
;---------------------------------------------------------------------------
;Spike Niddle
[State -1, Spike Niddle]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = numhelper(550) < 5
triggerall = power >= 1000
triggerall = stateno = 2500
trigger1 = statetype = C
;---------------------------------------------------------------------------
;change standing
[State -1, change standing]
type = ChangeState
value = 2900
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno = 2500
trigger1 = statetype = C
