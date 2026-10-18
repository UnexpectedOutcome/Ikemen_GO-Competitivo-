; DASH_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
CTRL = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = ChangeState
trigger1 = command = "c"  || command = "cd"
value = 241

[State 100, 2]
type = MakeDust
trigger1 = AnimElem = 1, >= 0
pos = 5, 0
spacing = 4

[State 100, 3]
type = ChangeState
trigger1 = time = 30
value = 102

[Statedef 102]
type    = S
physics = S

[State 102, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


; DASH_BACK
[Statedef 105]
type    = S
physics = N
ctrl = 0
anim = 105

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)

[State 105, 2]
type = MakeDust
trigger1 = AnimElem = 1, >= 0
pos = 20, 0
spacing = 4

[State 105, 3]
type = ChangeState
trigger1 = time = 30
value = 102

[State 105, 4]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 8






