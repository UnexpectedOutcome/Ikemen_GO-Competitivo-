;---------------------------------------------------------------------------¦
;                                  INTRO                                    ¦
;---------------------------------------------------------------------------¦
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 09
range = 4

[State 190, 1]
type = ChangeState
triggerall = Var(09) = 0 
trigger1 = Time = 0
value = 191

[State 190, 1]
type = ChangeState
triggerall = Var(09) = 1
trigger1 = Time = 0
value = 192

[State 190, 1]
type = ChangeState
triggerall = Var(09) = 2
trigger1 = Time = 0
value = 193

[State 190, 1]
type = ChangeState
triggerall = Var(09) = 3
trigger1 = Time = 0
value = 194

[State 190, 1]
type = ChangeState
triggerall = Var(09) = 4
trigger1 = Time = 0
value = 195

[State 190, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
;---------------------------------------------------------------
;intro1
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 191, 1]
type = playsnd
trigger1 = animelem = 3
value = 0,3

[State 191, 1]
type = Changeanim
trigger1 = Time = 0
value = 190

[State 190, 1]
type = ChangeState
trigger1 = animTime = 0
value = 199
;-------------------------------------------------------
;intro2
[Statedef 192]
type = S
ctrl = 0
velset = 0,0

[State 192, 1]
type = playsnd
trigger1 = animelem = 9
value = 0,2
channel = 2

[State 192, 1]
type = playsnd
trigger1 = animelem = 1
value = 2,4
channel = 1

[State 192, 1]
type = Changeanim
trigger1 = Time = 0
value = 191

[State 2030, 2]
type = Explod
trigger1 = time = 0
anim = 199
pos = 0,0
postype = p1
sprpriority = 1
removetime = 28
supermove = 1
bindtime = 1

[State 192, 1]
type = ChangeState
trigger1 = animTime = 0
value = 199
;---------------------------
;intro3
[Statedef 193]
type = S
ctrl = 0
velset = 0,0

[State 193, 1]
type = Changeanim
trigger1 = Time = 0
value = 192

[State 193, 1]
type = ChangeState
trigger1 = animTime = 0
value = 199
;---------------------------
;intro4
[Statedef 194]
type = S
ctrl = 0
velset = 0,0

[State 194, 1]
type = playsnd
trigger1 = animelem = 3
value = 0,9

[State 194, 1]
type = Changeanim
trigger1 = Time = 0
value = 193

[State 194, 1]
type = ChangeState
trigger1 = animTime = 0
value = 199
;--------------------------------------------------
;intro5
[Statedef 195]
type = S
ctrl = 0
velset = 0,0

[State 400, 1]
type = turn
trigger1 = Time = 0

[State 400, 1]
type = Posset
Triggerall = Facing = -1
trigger1 = Time = 0
y = -130
x= 300

[State 400, 1]
type = Posset
Triggerall = Facing = 1
trigger1 = Time = 0
y = -130
x= -300

[State 400, 1]
type = velset
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
x = 4
y = -5

[State 400, 1]
type = velset
trigger1 = animelem = 5
trigger2 = animelem = 6
x = 4
y = 5

[State 400, 1]
type = velset
trigger1 = animelem = 7
x = 4
y = 6

[State 400, 1]
type = velset
trigger1 = time = 69
x = -9

[State 195, 1]
type = Changeanim
trigger1 = Time = 0
value = 194

[State 400, 1]
type = turn
trigger1 = animelem = 7

[State 195, 1]
type = ChangeState
trigger1 = time = 71
value = 199
;--------------------------------------------------------------------------------
[Statedef 199]
type = S
ctrl = 0
velset = 0,0
anim = 0

[State 195, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------¦
;                            WIN poses
;---------------------------------------------------------------------------¦
[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 08
range = 4

[State 180, 3
type = ChangeState
trigger1 = Var(08) = 0
value = 181

[State 180, 3]
type = ChangeState
trigger1 = Var(08) = 1
value = 182

[State 180, 3]
type = ChangeState
trigger1 = Var(08) = 2
value = 183

[State 180, 3]
type = ChangeState
trigger1 = Var(08) = 3
value = 184

[State 180, 3]
type = ChangeState
trigger1 = Var(10) = 4
value = 186
;--------------------------------------------------------------
; WIN1 
[Statedef 181]
type = S
ctrl = 0
velset = 0,0,0

[State 181, 1]
type = changeanim
trigger1 = time = 0
value = 180

[State 1122, 2]
type = playsnd
trigger1 = animelem = 1
value = 0,6

[State 181, 0]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;---------------------------------------------------------
; WIN2 
[Statedef 182]
type = S
ctrl = 0
velset = 0,0,0

[State 185, 1]
type = changeanim
trigger1 = time = 0
value = 181

[State 1122, 2]
type = playsnd
trigger1 = animelem = 2
value = 0,1

[State 185, 0]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover

[State 185, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;----------------------------------
; WIN3
[Statedef 183]
type = S
ctrl = 0
velset = 0,0,0

[State 183, 1]
type = changeanim
trigger1 = time = 0
value = 182

[State 1122, 2]
type = playsnd
trigger1 = time = 2
value = 0,5

[State 183, 0]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover

[State 183, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1
;----------------------------------
; WIN4
[Statedef 184]
type = S
ctrl = 0
velset = 0,0,0

[State 184, 1]
type = changeanim
trigger1 = time = 0
value = 183

[State 1122, 2]
type = playsnd
trigger1 = animelem = 2
value = 0,11

[State 184, 0]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover

[State 184, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
;----------------------------------
; WIN5
[Statedef 186]
type = S
ctrl = 0
velset = 0,0,0

[State 185, 1]
type = changeanim
trigger1 = time = 0
value = 184

[State 1122, 2]
type = playsnd
trigger1 = animelem = 6
value = 2,4

[State 2030, 2]
type = Explod
trigger1 = animelem = 6
anim = 199
pos = 0,0
postype = p1
sprpriority = 1
removetime = 28
supermove = 1
bindtime = 1

[State 185, 0]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover

[State 185, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

