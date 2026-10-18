; RUN_FWD
[Statedef 100]
type    = S
physics = S
sprpriority = 1

[State 100, 1]
type = changeanim
trigger1 = time = 0
value = 100

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2]
type = veladd
trigger1 = time > 0
x = 2

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101

[State 100, 5]
type = makedust
trigger1 = time > 0
pos = -20,0
pos2 = -40,0 

;---------------------------------------------------------------------------
; RUN_Fwrd (land)
[Statedef 101]
type    = S
physics = S
ctrl = 0
anim = 105

[State 101, 1]
type = VelSet
trigger1 = Time = 0
x = 5

[State 101, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 101, 4]
type = ChangeState
trigger1 = Time = 10
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = S
ctrl = 0
anim = 105

[State 105, 3]
type = ChangeState
trigger1 = time = 3
value = 106
;--------------------------
[Statedef 106]
type    = A
physics = A
ctrl = 0
anim = 106

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = -5
y = -5

[State 106, 2]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 106, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 107

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 107]
type    = S
physics = S
ctrl = 0
anim = 47

[State 107, 1]
type = Playsnd
trigger1 = Time = 0
value = 4,2
volume = 255

[State 107, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 107, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 107, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 107, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1
;---------------------------------------------------------------------------