;==========================================================
; The following States are taken from Judgespear & Warner's
; MvC Peter Griffin's super jump states
;==========================================================

;==================================================
;
; SUPER JUMP
;
;===============================================


[Statedef 10230]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
facep2 = 1

[State 10230, NOTHITBY]
type = nothitby
trigger1 = 1
value = , NT, ST, HT

[State 10230, Superjump Sound]
type = playsnd
trigger1 = Time = 0
value = 0,24
;value = 5,0

[State 10230, AfterImage]
type = AfterImage
trigger1 = Time = 0
trigger1 = var(20) = 0
time = 30
TimeGap  = 1
FrameGap = 5
lenght = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65

[State 10230, 11]
type = VelSet
trigger1 = AnimTime = 0
x = Const(velocity.jump.fwd.x)
y = Const(velocity.jump.y) - 4

[State 10230, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;==================================================
;
; SUPER JUMP STRAIGHT UP
;
;===============================================


[Statedef 10231]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
facep2 = 1

[State 10231, NOTHITBY]
type = nothitby
trigger1 = 1
value = , NT, ST, HT

[State 10231, Superjump Sound]
type = playsnd
trigger1 = Time = 0
value = 0,24
;value = 5,0

[State 10231, Give Player control]
type = ctrlset
trigger1 = Time = 20
value = 1


[State 10231, AfterImage]
type = AfterImage
trigger1 = Time = 0
trigger1 = var(20) = 0
time = 30
TimeGap  = 1
FrameGap = 5
length = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65

[State 10231, 11]
type = VelSet
trigger1 = AnimTime = 0
x = Const(velocity.jump.neu.x)
y = Const(velocity.jump.y) - 4

[State 10231, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;==================================================
;
; SUPER JUMP FORWARD
;
;===============================================


[Statedef 10232]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
facep2 = 1

[State 10232, NOTHITBY]
type = nothitby
trigger1 = 1
value = , NT, ST, HT

[State 10232, Superjump Sound]
type = playsnd
trigger1 = Time = 0
value = 0,24
;value = 5,0

[State 10232, Give Player control]
type = ctrlset
trigger1 = Time = 20
value = 1


[State 10232, AfterImage]
type = AfterImage
trigger1 = Time = 0
trigger1 = var(20) = 0
time = 30
TimeGap  = 1
FrameGap = 5
length = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65

[State 10232, 11]
type = VelSet
trigger1 = AnimTime = 0
x = Const(velocity.jump.fwd.x)
y = Const(velocity.jump.y) - 4

[State 10232, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;==================================================
;
; SUPER JUMP FORWARD
;
;===============================================


[Statedef 10233]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
facep2 = 1

[State 10233, NOTHITBY]
type = nothitby
trigger1 = 1
value = , NT, ST, HT

[State 10233, Superjump Sound]
type = playsnd
trigger1 = Time = 0
value = 0,24
;value = 5,0

[State 10233, Give Player control]
type = ctrlset
trigger1 = Time = 20
value = 1


[State 10233, AfterImage]
type = AfterImage
trigger1 = Time = 0
trigger1 = var(20) = 0
time = 30
TimeGap  = 1
FrameGap = 5
length = 7
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65

[State 10233, 11]
type = VelSet
trigger1 = AnimTime = 0
x = Const(velocity.jump.back.x)
y = Const(velocity.jump.y) - 4

[State 10233, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
