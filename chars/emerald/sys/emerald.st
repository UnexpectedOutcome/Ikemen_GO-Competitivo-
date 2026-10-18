;---------------------------------------------------------------------------
;Standing Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0
velset = 0,0
sprpriority = 2

[State 200, snd]
type = PlaySnd
trigger1 = !time
value = S300,(random%3)

[State 200, hit]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 30,10
animtype = Light
priority = 3,Hit
hitflag = MAF
guardflag = MA
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-76
hitsound = S200,(random%3)
guardsound = S120,(random%2)
pausetime = 10,12
getpower = 30,30
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.animtype = Back
air.velocity = -1.4,-3
airguard.velocity = -1.9,-0.8
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

[State 200, self]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Punch
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
velset = 0,0
sprpriority = 2

[State 210, snd]
type = PlaySnd
trigger1 = !time
value = S300,(random%3)

[State 210, hit]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 40,10
animtype = Medium
priority = 3,Hit
hitflag = MAF
guardflag = MA
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-76
hitsound = S200,(random%3)
guardsound = S120,(random%2)
pausetime = 10,12
getpower = 40,40
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.type = High
air.animtype = Back
air.velocity = -1.4,-3
airguard.velocity = -1.9,-0.8
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

[State 210, self]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Uppercut
[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
ctrl = 0
velset = 0,0
sprpriority = 2

[State 220, vel]
type = velset
trigger1 = animelem=2
x = 1*const(velocity.run.fwd.x)

[State 220, vel]
type = velset
trigger1 = animelem = 7
x = 0

[State 220, snd]
type = PlaySnd
trigger1 = !time
value = S300,9
volumescale = 255

[State 220, voice]
type = PlaySnd
trigger1 = !time
value = S1800,0
volumescale = 255

[State 220, hit]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 80,20
animtype = Up
priority = 5,Hit
hitflag = MAF
guardflag = MA
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = 8,-94
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 6,12
getpower = 60,60
ground.type = high
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-15.3
ground.cornerpush.veloff = 0
guard.velocity = -8
guard.cornerpush.veloff = 0
airguard.velocity = -8,-1
air.type = high
air.hittime = 20
air.velocity = -1,-13
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
envshake.time = 8
envshake.ampl = 4

[State 220, launch]
type = SelfState
triggerall = (movehit)
trigger1 = command = "holdup"
trigger2 = Var(59)
value = 221
ctrl = 1

[State 220, self]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Launch with target
[Statedef 221]
type = A
physics = N
anim = 221
ctrl = 0
velset = 0,-12

[State 221, snd]
type = PlaySnd
trigger1 = !time
value = S41,0

[State 221, vel]
type = Velset
trigger1 = Var(59) && (prevstateno=410||prevstateno=220)
x = 6

[State 221, width]
type = Width
trigger1 = !ishelper
player = -25,-25

[State 221, turn]
type=turn
triggerall=numenemy
trigger1=enemynear(numenemy>1&&enemynear,alive=0),facing=-facing
trigger1=frontedgedist<enemynear(numenemy>1&&enemynear,alive=0),backedgedist
trigger2=enemynear(numenemy>1&&enemynear,alive=0),facing=facing
trigger2=frontedgedist<enemynear(numenemy>1&&enemynear,alive=0),frontedgedist
ignorehitpause = 1

[state 221, self]
type = SelfState
trigger1 = Time >= 2
value = 222
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 222]
type = A
physics = N
ctrl = 1

[State 222, anim]
type = ChangeAnim
trigger1 = prevstateno !=221 && !time
value = 50

[State 222, vel]
type = VelAdd
triggerall = (prevstateno != [600,640])&& (Time < 20)
trigger1 = Command = "holdback" && Vel X > -2.2
x = -2

[State 222, vel]
type = VelAdd
triggerall = (prevstateno != [600,640])&& (Time < 20)
trigger1 = Command = "holdfwd" && Vel X < 2.2
x = 2

[State 222, vel]
type = VelAdd
trigger1 = (Time > 20) && (Command = "holdback") && (Vel X > -1.5)
trigger2 = (prevstateno = [600,640])&&(Time > 0) && (Command = "holdback") && (Vel X > -1.5)
x = -1

[State 222, vel]
type = VelAdd
trigger1 = (Time > 20) &&(Command = "holdfwd") && (Vel X < 1.5)
trigger2 = (prevstateno = [600,640])&&(Time > 0) &&(Command = "holdfwd") && (Vel X < 1.5)
x = 1

[state 222, vel]
type = VelAdd
trigger1 = (prevstateno != [600,640])&& (Time > 5) && (time < 24)
trigger2 = (prevstateno != [600,640])&& (Time > 30)
y = 0.4

[state 222, vel]
type = VelAdd
trigger1 = (prevstateno != [600,640])&&(Time > 24) && (time < 30)
y = 0.1

[state 222, vel]
type = VelAdd
trigger1 =(prevstateno = [600,640]) && (Time > 0)
y = 0.45

[State 222, width]
type = Width
trigger1 = !ishelper
player = -25,-25

[State 222, turn]
type=turn
triggerall=numenemy
trigger1=enemynear(numenemy>1&&enemynear,alive=0),facing=-facing
trigger1=frontedgedist<enemynear(numenemy>1&&enemynear,alive=0),backedgedist
trigger2=enemynear(numenemy>1&&enemynear,alive=0),facing=facing
trigger2=frontedgedist<enemynear(numenemy>1&&enemynear,alive=0),frontedgedist
ignorehitpause = 1

[state 222, self]
type = SelfState
trigger1 = Pos Y >= 1
value = 50

;---------------------------------------------------------------------------
;Standing Light Kick
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
ctrl = 0
velset = 0,0
sprpriority = 2

[State 230, snd]
type = PlaySnd
trigger1 = !Time
value = S300,(6+random%2)

[State 230, hit]
type = HitDef
trigger1 = !Time
attr = S,NA
damage = 40,20
animtype = Light
priority = 3,Hit
hitflag = MAF
guardflag = M
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-74
hitsound = S200,(5+random%3)
guardsound = S120,(random%2)
pausetime = 10,12
getpower = 60,60
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -3.5,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0
envshake.time = 8
envshake.ampl = 4

[State 230, 3]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick
[Statedef 240]
type = S
movetype = A
physics = S
anim = 240
ctrl = 0
velset = 0,0
sprpriority = 2

[State 240, snd]
type = PlaySnd
trigger1 = !Time
value = S300,8

[State 240, hit]
type = HitDef
trigger1 = !Time
attr = S,NA
damage = 50,20
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = M
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-75
hitsound = S200,(5+random%3)
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 80,80
ground.type = Low
ground.slidetime = 25
ground.hittime = 20
ground.velocity = -5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2.5,-4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0
envshake.time = 8
envshake.ampl = 4

[State 240, 3]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Standing Hard Kick
[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
ctrl = 0
velset = 0,0
sprpriority = 2

[State 250, snd]
type = PlaySnd
trigger1 = !time
value = S300,(4+random%2)

[State 250, hit]
type = HitDef
trigger1 = animelem=2
attr = S,NA
damage = 40,20
animtype = Hard
priority = 5,Hit
hitflag = MAF
guardflag = M
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-90
hitsound = S200,3
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 50,50
ground.type = High
ground.slidetime = 10
ground.hittime = 25
ground.velocity = -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2.2,-3.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 3
envshake.freq = 75
fall.recover = 0

[State 250, hit]
type = HitDef
trigger1 = animelem=3
attr = S,NA
damage = 40,20
animtype = Hard
priority = 4,Hit
hitflag = MAF
guardflag = M
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-60
hitsound = S200,5
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 50,50
ground.type = Low
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = -2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2.2,-3.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 3
envshake.freq = 75
fall.recover = 0

[State 250, hit]
type = HitDef
trigger1 = animelem=4
attr = S,NA
damage = 20,10
animtype = Hard
priority = 3,Hit
hitflag = MAF
guardflag = M
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-25
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 12,16
getpower = 50,50
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2.2,-3.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 75
fall.recover = 0

[State 250, self]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
ctrl = 0
velset = 0,0
sprpriority = 2

[State 400, snd]
type = PlaySnd
trigger1 = !time
value = S300,(random%3)

[State 400, hit]
type = HitDef
trigger1 = !time
attr = C,NA
damage = 30,15
priority = 3,Hit
animtype = Light
hitflag = MAF
guardflag = L
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-42
hitsound = S200,(random%3)
guardsound = S120,(random%2)
pausetime = 10,12
getpower = 30,30
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3
ground.cornerpush.veloff = 0
guard.velocity = -4
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -1.5,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

[State 400, self]
type = SelfState
trigger1 = !AnimTime
value = 11+(command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Uppercut
[Statedef 410]
type = C
movetype = A
physics = C
anim = 410
ctrl = 0
velset = 0,0
sprpriority = 2

[State 410, pos]
type = posadd
trigger1 = time<5
x = 4.5

[State 410, snd]
type = PlaySnd
trigger1 = !time
value = S300,9

[State 410, voice]
type = PlaySnd
trigger1 = !time
value = S1800,0
volumescale = 255

[State 410, hit]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 70,35
animtype = Up
priority = 5,Hit
hitflag = MAF
guardflag = M
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -8,-50
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 10,12
getpower = 80,80
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1,-15.3
ground.cornerpush.veloff = 0
guard.velocity = -8
guard.cornerpush.veloff = 0
air.type = High
air.velocity = -1,-14
air.hittime = 30
airguard.velocity = -8,-1
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall =1
fall.recover = 0
envshake.time = 8
envshake.ampl = 4

[State 410, launch]
type = SelfState
triggerall = (movehit)
trigger1 = command = "holdup"
trigger2 = Var(59)
value = 221
ctrl = 1

[State 410, 5]
type = SelfState
trigger1 = !AnimTime
value = 11+(command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[Statedef 420]
type = C
movetype = A
physics = C
anim = 420
ctrl = 0
velset = 0,0
sprpriority = 2

[State 420, snd]
type = PlaySnd
trigger1 = !time
value = S300,(6+random%2)

[State 420, hit]
type = HitDef
trigger1 = !Time
attr = C,NA
damage = 40,20
animtype = Light
priority = 3,Hit
hitflag = MAFD
guardflag = L
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-10
hitsound = S200,(5+random%3)
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 40,40
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
ground.cornerpush.veloff = 0
guard.velocity = -5
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.velocity = -5,0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

[State 420, self]
type = SelfState
trigger1 = !AnimTime
value = 11+(command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium kick
[Statedef 430]
type = C
movetype = A
physics = C
anim = 430
ctrl = 0
velset = 0,0
sprpriority = 2

[State 430, snd]
type = PlaySnd
trigger1 = !Time
value = S300,8

[State 430, hit]
type = HitDef
trigger1 = !Time
attr = C,NA
damage = 50,25
animtype = Medium
priority = 4,Hit
hitflag = MAFD
guardflag = L
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-55
hitsound = S200,(5+random%3)
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 60,60
ground.type = Low
ground.slidetime = 8
ground.hittime = 10
ground.velocity = -3
ground.cornerpush.veloff = 0
guard.velocity = -5
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.velocity = -5,0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

[State 430, self]
type = SelfState
trigger1 = !AnimTime
value = 11+(command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Hard Kick
[Statedef 440]
type = C
movetype = A
physics = C
anim = 440
ctrl = 0
velset = 0,0
sprpriority = 2

[State 440, snd]
type = PlaySnd
trigger1 = !Time
value = S300,3

[State 440, hit]
type = HitDef
trigger1 = !Time
attr = C,NA
damage = 80,30
animtype = DiagUp
priority = 5,Hit
hitflag = MAFD
guardflag = L
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -5,-10
hitsound = S200,8
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 80,80
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3.5,-8.2
ground.cornerpush.veloff = 0
guard.velocity = -5
guard.cornerpush.veloff = 0
air.velocity = -3,-7
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 5
envshake.freq = 75

[State 440, self]
type = SelfState
trigger1 = !AnimTime
value = 11+(command != "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type = A
movetype = A
physics = A
anim = 600
ctrl = 0
sprpriority = 2

[State 600, snd]
type = PlaySnd
trigger1 = !Time
value = S300,(random%3)

[State 600, hit]
type = HitDef
trigger1 = !Time
attr = A,NA
damage = 30,15
animtype = Light
priority = 3,Hit
hitflag = MAF
guardflag = H
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-55
hitsound = S200,(random%3)
guardsound = S120,(random%2)
pausetime = 7,9
getpower = 30,30
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -1.3,-3
air.cornerpush.veloff = 0
airguard.velocity = -2,-2
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 0
fall.recover = 0

;---------------------------------------------------------------------------
;Jump Uppercut
[Statedef 610]
type = A
movetype = A
physics = A
anim = 610
ctrl = 0
sprpriority = 2

[State 610, hit]
type = PlaySnd
trigger1 = !Time
value = S300,9

[State 610, voice]
type = PlaySnd
trigger1 = !time
value = S1800,0
volumescale = 255

[State 610, hit]
type = HitDef
trigger1 = !Time
attr = A,NA
damage = 70,35
animtype = Hard
priority = 4,Hit
hitflag = MAF
guardflag = H
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-55
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 60,60
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -3,-4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

;---------------------------------------------------------------------------
;Jump Light Kick
[Statedef 620]
type = A
movetype = A
physics = A
anim = 620
ctrl = 0
sprpriority = 2

[State 620, snd]
type = PlaySnd
trigger1 = !Time
value = S300,(6+random%2)

[State 620, hit]
type = HitDef
trigger1 = !Time
attr = A,NA
damage = 40,20
animtype = Light
priority = 3,Hit
hitflag = MAF
guardflag = H
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -5,-35
hitsound = S200,(5+random%3)
guardsound = S120,(random%2)
pausetime = 8,10
getpower = 40,40
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 630]
type = A
movetype = A
physics = A
anim = 630
ctrl = 0
sprpriority = 2

[State 630, snd]
type = PlaySnd
trigger1 = !Time
value = S300,8

[State 630, hit]
type = HitDef
trigger1 = !Time
attr = A,NA
damage = 50,20
animtype = Medium
priority = 4,Hit
hitflag = MAF
guardflag = H
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -5,-35
hitsound = S200,(5+random%3)
guardsound = S120,(random%2)
pausetime = 8,10
getpower = 60,60
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.animtype = Back
air.velocity = -2,-3
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
air.fall = 1
fall.recover = 0

;---------------------------------------------------------------------------
;Jump Flip Kick
[Statedef 640]
type = A
movetype = A
physics = A
anim = 640
ctrl = 0
sprpriority = 2

[State 640, snd]
type = PlaySnd
trigger1 = !Time
value = S300,8

[State 640, effect]
type = Explod
triggerall = PlayerIDExist(ID)
triggerall = !ishelper
trigger1 = !time
anim = 4100
id = 4100
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = add
removeongethit = 1

[State 640, hit]
type = HitDef
trigger1 = !Time
attr = A,NA
damage = 60,30
animtype = Up
priority = 5,Hit
hitflag = MAF
guardflag = H
sparkno = S6000+(random%4)
guard.sparkno = s6005
sparkxy = -10,-40
hitsound = S200,8
guardsound = S120,(random%2)
pausetime = 12,14
getpower = 80,80
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -5.5,-7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -6
air.velocity = -6,-4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.recover = 0
fall = 1

;---------------------------------------------------------------------------
;Stomp
[Statedef 700]
type = S
movetype = A
physics = S
anim = 700
ctrl = 0
velset = 0,0

[State 700, hit]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 50,25
priority = 4,Hit
hitflag = FD
guardflag = MA
sparkno = S6000+(random%4)
guard.sparkno = -1
sparkxy = 0,0
hitsound = s200,7
guardsound = S120,(random%2)
pausetime = 14,15
getpower = 70,70
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5.5,-4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.velocity = -7,0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0

[State 700, self]
type = SelfState
trigger1 = !AnimTime
value = 105
ctrl = 0

;---------------------------------------------------------------------------
;Throw
[Statedef 800]
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 2

[State 800, Hit]
type = HitDef
trigger1 = enemy,movetype != H && enemy,statetype != A
trigger1 = !time
attr = S,NT
animtype = Hard
priority = 1,Miss
hitflag = M-
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound= -1
p1facing = 1
p2facing = 1
p1stateno = 801
p2stateno = 802
numhits = 0
guard.dist = 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 22
ground.velocity = -3,-8
air.velocity = -3,-8
air.animtype = back
air.cornerpush.veloff = 0
air.fall = 0
fall = 1
fall.recover = 0

[State 800, self]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 801]
type = S
movetype = A
physics = N
anim = 801
ctrl = 0
velset = 0,0

[State 801, width]
type = width
trigger1 = !ishelper
edge = 30,30

[State 801, bind]
type = TargetBind
trigger1 = animelemtime(1)>0 && animelemtime(22)<0
pos = 42,0

[State 801, snd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 10
trigger4 = animelem = 14
trigger5 = animelem = 18
value = S300,(random%3)

[State 801, snd]
type = PlaySnd
trigger1 = animelem = 23
value = S300,8

[State 801, voice]
type = PlaySnd
trigger1 = animelem = 23
value = S1800,1

[State 801, hit]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 10
trigger4 = animelem = 14
trigger5 = animelem = 18
attr = S,HA
damage = 20,10
animtype = hard
priority = 7,Hit
hitflag = MAF
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -10,-75
hitsound = S200,(random%4)
guardsound = S120,(random%2)
pausetime = 2,2
getpower = 20,10
ground.type = High
ground.hittime = 20
ground.slidetime = 20
ground.velocity = 0,0
p2facing = 1
p2stateno = 802
forcestand = 1
kill = 0

[State 801, hit]
type = HitDef
trigger1 = animelem = 23
attr = S,HA
damage = 50,25
animtype = Back
priority = 7,hit
hitflag = MAF
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -20,-82
hitsound = S200,9
guardsound = S120,(random%2)
pausetime = 20,10
getpower = 50,25
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -7,-5
air.velocity = -6.2,-6.5
p2facing = 1
fall = 1
fall.recover = 0
fall.yvelocity = -4.5
envshake.time = 18
envshake.ampl = 6
yaccel = 0.35

[State 801, self]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 802]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = -2

[State 802, pos]
type = posset
trigger1 = !ishelper
y = 0

[State 802, width]
type = Width
triggerall = !ishelper
trigger1 = time >= 0
edge = 30,0
ignorehitpause = 1
persistent = 1

[State 802, anim]
type= Changeanim2
triggerall = !ishelper
trigger1 = !time
value= 802

[State 802, self]
type = SelfState
trigger1 = !animtime
value = 5100