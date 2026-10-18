;-----------------------------------------------------------;
;				MEga bomb Toad				;
;-----------------------------------------------------------;
;
[StateDef 4000]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 1014
poweradd = -1000
ctrl = 0                         ;Set ctrl (Def: no change)

[State 2002, 1]
type = SuperPause
trigger1 = animelem = 4
time = 30
anim = -1
darken = 1
unhittable = 1

[State 4000, 4]
type = Explod
trigger1 = animelem = 4
anim = 170
id = 170
pos = 8, -89
postype = p1
facing = 1
sprpriority = 2
ownpal = 0
supermove = 33
removetime = 33

[State 2030, 1]
type = Envcolor
trigger1 = animelem = 4
Time = 33
value = 0, 0,0
under = -4

[State 4000, 4]
type = Explod
trigger1 = animelem = 4
anim = 173
id = 173
pos = 8, -89
postype = p1
facing = 1
sprpriority = -2
ownpal = 0
supermove = 33
removetime = 33

[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 2,5
channel = 3

[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,8
channel = 2
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,8
channel = 2

;bomba
[State 1002, hits]
type = helper
trigger1 = animelem = 5
ID = 10
postype = p1
pos = 0, 0
stateno = 2004
sprpriority = 5
bindtime = -1

[State 4000, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------
;no ar
;bomb air
[Statedef 4001]
type    = A
movetype= A
physics = A
anim = 1001
poweradd = -1000
ctrl = 0

[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,5
channel = 3

[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,8
channel = 2
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,8
channel = 2

[State 2030, 1]
type = Envcolor
trigger1 = animelem = 2
Time = 33
value = 0, 0,0
under = -4

[State 4002, 1]
type = superPause
trigger1 = animelem = 2
time = 30
anim = -1
darken = 1
unhittable = 1

[State 4000, 4]
type = Explod
trigger1 = animelem = 2
anim = 170
id = 170
pos = -8, -110
postype = p1
facing = 1
sprpriority = 2
ownpal = 0
supermove = 33
removetime = 33

[State 4000, 4]
type = Explod
trigger1 = animelem = 2
anim = 173
id = 173
pos = -8, -110
postype = p1
facing = 1
sprpriority = -2
ownpal = 0
supermove = 33
removetime = 33

[State 1002, hits]
type = helper
trigger1 = animelem = 3
ID = 10
postype = p1
pos = 0, 0
stateno = 2003
sprpriority = 5
bindtime = -1

[State 4001, 4]
type = ChangeState
trigger1 = Pos Y = 5
value = 50
ctrl = 1
;-------------------------------
;helpers mega bomb ar
;helpers bomb

[Statedef 2003]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1011
sprpriority = 0

[State 2003, 2]
type = VelSet
trigger1 = time > 1
x = 12
y = 8

[State 2003,1]
type = AfterImage
trigger1 = time = 1
time = 50
trans = add1
timegap = 1
framegap = 1
length = 8
palcontrast = 208,208,248 
palbright = 5,16,54

[State 2003, 5]
type = changestate
trigger1 = pos y >= 0
value = 2004

[State 2004, Destroy]
type = destroyself
trigger1 = movecontact = 1
;-----------
[Statedef 2004]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1020
sprpriority = 3

[State 2004, 1]
type = PlaySnd
trigger1 = Time = 0
value = 8,0
[State 2004, 1]
type = PlaySnd
trigger1 = Time = 0
value = 8,0


[State 2004, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 2004, 2]
type = HitDef
trigger1 = AnimElem >= 1 
attr = A, HP
damage    = 100, 0
animtype  = Medium
guardflag = MA
pausetime = 0,0
sparkno = S-1
guard.sparkno = S2
sparkxy = 10,-36
hitsound   = S-1
guardsound = S-1
ground.type = High
air.animtype = Back
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -9, -7 
air.velocity = -7.5,-4.2
fall = 1
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 3300, 1]
type = envshake
trigger1 = time = 0
time = 60

[State 2004, Destroy]
type = destroyself
trigger1 = animtime = 0
;-----------------------------------------------------------;
;				MEga paper fire				;
;-----------------------------------------------------------;
;
[StateDef 4010]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 1030
poweradd = -1000
ctrl = 0                         ;Set ctrl (Def: no change)

[State 4010, 1]
type = SuperPause
trigger1 = animelem = 2
time = 30
anim = -1
darken = 1
unhittable = 1

[State 4010, 4]
type = Explod
trigger1 = animelem = 2
anim = 171
id = 171
pos = -20, -50
postype = p1
facing = 1
sprpriority = 2
ownpal = 0
supermove = 33
removetime = 33

[State 4010, 1]
type = Envcolor
trigger1 = animelem = 2
Time = 33
value = 0, 0,0
under = -4

[State 4010, 4]
type = Explod
trigger1 = animelem = 2
anim = 174
id = 174
pos = -20, -50
postype = p1
facing = 1
sprpriority = -2
ownpal = 0
supermove = 33
removetime = 33

[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,6
channel = 3

[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,8
channel = 2
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,8
channel = 2

[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,9
channel = 4
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,9
channel = 4

[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,7
channel = 3
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,7
channel = 3

[State 400, 1]
type = HitDef
;trigger1 = AnimElem = 8
trigger1 = AnimElem = 9
;trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
;trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
attr = S, NA
damage = 70, 30
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 10,15
sparkno = S303
guard.sparkno = S2
sparkxy = 0,-25
hitsound = S4,1
guardsound = S5,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -4, -7.8
airguard.velocity = -4.9,-7.8     
air.velocity = -4.3,-7
fall = 1 
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 4010, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------;
;				MEga Toad Fire				;
;-----------------------------------------------------------;
;
[StateDef 4020]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 184
poweradd = -1000
ctrl = 0               
;-----------
[State 4020, 1]
type = SuperPause
trigger1 = animelem = 2
time = 30
anim = -1
darken = 1
unhittable = 1

[State 4020, 4]
type = Explod
trigger1 = animelem = 2
anim = 170
id = 170
pos = -27, -40
postype = p1
facing = 1
sprpriority = 2
ownpal = 0
supermove = 33
removetime = 33

[State 4020, 4]
type = Explod
trigger1 = animelem = 2
anim = 170
id = 170
pos = 27, -40
postype = p1
facing = 1
sprpriority = 2
ownpal = 0
supermove = 33
removetime = 33

[State 4020, 1]
type = Envcolor
trigger1 = animelem = 2
Time = 33
value = 0, 0,0
under = -4

[State 4020, 4]
type = Explod
trigger1 = animelem = 2
anim = 174
id = 174
pos = -20, -50
postype = p1
facing = 1
sprpriority = -2
ownpal = 0
supermove = 33
removetime = 33

[State 4020, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,6
channel = 3

[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,8
channel = 2
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,8
channel = 2
;----------------------
[State 4020, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,4
channel = 2

[State 4020, 2]
type = Explod
trigger1 = animelem = 6
anim = 199
pos = 0,0
postype = p1
sprpriority = 1
removetime = 28
supermove = 1
bindtime = 1
;-----------------
[State 4020, 3]
type = changestate
trigger1 = animtime = 0
value = 4021
ctrl = 1
;--------------------------
[StateDef 4021]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 1040
ctrl = 0                         ;Set ctrl (Def: no change)

[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,7
channel = 3
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,7
channel = 3

[State 4020, 1]
type = PlaySnd
trigger1 = animtime = 0
value = 2,4
channel = 2

[State 4020, 2]
type = Explod
trigger1 = animtime = 0
anim = 199
pos = 0,0
postype = p1
sprpriority = 1
removetime = 28
supermove = 1
bindtime = 1

[State 1002, hits]
type = helper
trigger1 = animelem = 7
ID = 10
postype = p1
pos = 110, 0
stateno = 4022
sprpriority = 5
bindtime = -1


[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,7
channel = 4
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,7
channel = 4
[State 4010, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,4
channel = 2
[State 4000, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 2,4
channel = 2

[State 4021, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------
;helper MTF
[Statedef 4022]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1041
sprpriority = 3


[State 4022, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 4022, 2]
type = HitDef
trigger1 = AnimElem >= 1 
attr = A, HP
damage    = 50, 20
animtype  = Medium
guardflag = MA
pausetime = 0,0
sparkno = S-1
guard.sparkno = S2
sparkxy = 10,-36
hitsound   = S-1
guardsound = S-1
ground.type = High
air.animtype = Back
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -5, -7 
air.velocity = -6.5,-4.2
fall = 1
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 1002, hits]
type = helper
trigger1 = animelem = 7
ID = 10
postype = p1
pos = 50, 0
stateno = 4023
sprpriority = 5
bindtime = -1

[State 4022, Destroy]
type = destroyself
trigger1 = animtime = 0
;;------
[Statedef 4023]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1041
sprpriority = 3


[State 4023, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 4023, 2]
type = HitDef
trigger1 = AnimElem >= 1 
attr = A, HP
damage    = 50, 20
animtype  = Medium
guardflag = MA
pausetime = 0,0
sparkno = S-1
guard.sparkno = S2
sparkxy = 10,-36
hitsound   = S-1
guardsound = S-1
ground.type = High
air.animtype = Back
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -5, -7 
air.velocity = -6.5,-4.2
fall = 1
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 1002, hits]
type = helper
trigger1 = animelem = 7
ID = 10
postype = p1
pos = 50, 0
stateno = 4024
sprpriority = 5
bindtime = -1

[State 4023, Destroy]
type = destroyself
trigger1 = animtime = 0
;;------
[Statedef 4024]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1041
sprpriority = 3


[State 4024, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 4024, 2]
type = HitDef
trigger1 = AnimElem >= 1 
attr = A, HP
damage    = 50, 20
animtype  = Medium
guardflag = MA
pausetime = 0,0
sparkno = S-1
guard.sparkno = S2
sparkxy = 10,-36
hitsound   = S-1
guardsound = S-1
ground.type = High
air.animtype = Back
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -5, -7 
air.velocity = -6.5,-4.2
fall = 1
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 1002, hits]
type = helper
trigger1 = animelem = 7
ID = 10
postype = p1
pos = 50, 0
stateno = 4025
sprpriority = 5
bindtime = -1

[State 4024, Destroy]
type = destroyself
trigger1 = animtime = 0
;;------
[Statedef 4025]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1041
sprpriority = 3


[State 4025, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 4025, 2]
type = HitDef
trigger1 = AnimElem >= 1 
attr = A, HP
damage    = 50, 20
animtype  = Medium
guardflag = MA
pausetime = 0,0
sparkno = S-1
guard.sparkno = S2
sparkxy = 10,-36
hitsound   = S-1
guardsound = S-1
ground.type = High
air.animtype = Back
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -5, -7 
air.velocity = -6.5,-4.2
fall = 1
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 1002, hits]
type = helper
trigger1 = animelem = 7
ID = 10
postype = p1
pos = 50, 0
stateno = 4026
sprpriority = 5
bindtime = -1

[State 4025, Destroy]
type = destroyself
trigger1 = animtime = 0
;;------
[Statedef 4026]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1041
sprpriority = 3


[State 4026, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 4026, 2]
type = HitDef
trigger1 = AnimElem >= 1 
attr = A, HP
damage    = 50, 20
animtype  = Medium
guardflag = MA
pausetime = 0,0
sparkno = S-1
guard.sparkno = S2
sparkxy = 10,-36
hitsound   = S-1
guardsound = S-1
ground.type = High
air.animtype = Back
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -5, -7 
air.velocity = -6.5,-4.2
fall = 1
palfx.time = 80
palfx.add = 0,0,0
palfx.mul = 255,255,0
palfx.sinadd     = 0,30,40,40
palfx.color      = 0
palfx.invertall  = 1    

[State 4026, Destroy]
type = destroyself
trigger1 = animtime = 0
