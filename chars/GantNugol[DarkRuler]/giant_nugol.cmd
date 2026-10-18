;-|AI Motion|-------------------------------------------------------------------
[Command]
Name = "AI_1"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s
time = 1

[Command]
Name = "AI_2"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[Command]
Name = "AI_3"
Command = U,D,U, a+x+y+z
time = 1

[Command]
Name = "AI_4"
Command = U,D,U, a+c+y+b
time = 1

[Command]
Name = "AI_5"
Command = U,D,U, a+b+z+x
time = 1

[Command]
Name = "AI_6"
Command = U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
Name = "AI_7"
Command = D,D,D,D,D,D,D,D,D,D,D
time = 1

[Command]
Name = "AI_8"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 1

[Command]
Name = "AI_9"
Command = D,F,U,B, a+b+c+x+y+z
time = 1

[Command]
Name = "AI_10"
Command = D,U,U,D, a+b+c+x+y+z
time = 1

[Command]
Name = "AI_11"
Command = D,F,F,B, a+b+c+x+y+z
time = 1

[Command]
Name = "AI_12"
Command = B,B,B,B,B,B,B,B,B,B,B
time = 1

[Command]
Name = "AI_13"
Command = a,a,a,a,a,a,a,a,a,a,a
time = 1

[Command]
Name = "AI_14"
Command = b,b,b,b,b,b,b,b,b,b,b,b
time = 1

[Command]
Name = "AI_15"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 1

[Command]
Name = "AI_16"
Command = DFB, a+b+c+x+y+z
time = 1

[Command]
Name = "AI_17"
Command = DUB, a+b+c+x+y+z
time = 1

[Command]
Name = "AI_18"
Command = D,D,B,B,F,s+s+s+s
time = 1

[Command]
Name = "AI_19"
Command = D,F,B,U, a+b+c+x+y+z
time = 1

[Command]
Name = "AI_20"
Command = D,U,F,F,B,B, a+b+c+x+y+z
time = 1
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
[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
Trigger1 = Command = "AI_1"
Trigger2 = Command = "AI_2"
Trigger3 = Command = "AI_3"
Trigger4 = Command = "AI_4"
Trigger5 = Command = "AI_5"
Trigger6 = Command = "AI_6"
Trigger7 = Command = "AI_7"
Trigger8 = Command = "AI_8"
Trigger9 = Command = "AI_9"
Trigger10 = Command = "AI_10"
Trigger11 = Command = "AI_11"
Trigger12 = Command = "AI_12"
Trigger13 = Command = "AI_13"
Trigger14 = Command = "AI_14"
Trigger15 = Command = "AI_15"
Trigger16 = Command = "AI_16"
Trigger17 = Command = "AI_17"
Trigger18 = Command = "AI_18"
Trigger19 = Command = "AI_19"
Trigger20 = Command = "AI_20"
v = 59
value = 1
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Growing Ball
[State -1, Growing Ball]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Spawn a babynugol
[State -1, Spawn a babynugol]
type = ChangeState
value = 1500
triggerall = command = "b"
triggerall = NumHelper(1550) < 6
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Nugol Spin(moving)
[State -1, Nugol Spin(moving)]
type = ChangeState
value = 1160
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Spawn a babynugol(Much)
[State -1, Spawn a babynugol(Much)]
type = ChangeState
value = 2550
triggerall = command = "x"
triggerall = NumHelper(1550) < 6
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Nugol Eating
[State -1, Nugol Eating]
type = ChangeState
value = 1900
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = NumHelper(1550) > 0
triggerall = Var(12) = 1
triggerall = helper,stateno != 1550
triggerall = helper,stateno != 1570
triggerall = helper,stateno != 1571
triggerall = helper,stateno != 1670
triggerall = helper,stateno != 1671
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Growing Ball(Triple)
[State -1, Growing Ball(Triple)]
type = ChangeState
value = 2050
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Nugol Spin(standing)
[State -1, Nugol Spin(standing)]
type = ChangeState
value = 960
triggerall = command = "start"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
