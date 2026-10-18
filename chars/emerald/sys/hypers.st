;---------------------------------------------------------------------------
;Wicked Rush
[Statedef 2500]
type = S
movetype = A
physics = N
anim = 2500
ctrl = 0
velset = 0,0
poweradd = -2500
sprpriority = 3

[State 2500, S-Pause]
type = SuperPause
trigger1 = !animelemtime(1)
time = 60
movetime = 60
anim = -1
sound = -1
darken = 1
ignorehitpause = 1

[State 2500, NHB]
type = NotHitBy
trigger1 = !animelemtime(1)
value = SCA
time = 65
ignorehitpause = 1

[State 2500, VelS-3]
type = VelAdd
trigger1 = !animelemtime(2)
x = 6

[State 2500, Vel]
type = VelSet
trigger1 = !animelemtime(3)
trigger2 = frontedgebodydist <= 0
trigger3 = moveguarded
x = 0

[State 2500, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6025
ID = 6025
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 2
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2500, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6019
ID = 6019
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2500, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6200
ID = 6200
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2500, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2500, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2500, BG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 4000
ID = 4000
pos = 0,0
postype = back
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2500, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6000,(1+random%2)
volumescale = 255

[State 2500, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6100,5
volumescale = 255

[State 2500, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6100,10
volumescale = 255

[State 2500, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S100,0
volumescale = 255

[State 2500, After]
type = AfterImage
trigger1 = !animelemtime(2)
time = 60
timegap = 1
framegap = 1
length = 10
PalBright = 1,1,1
PalContrast = 0,150,0
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 2500, hit]
type = HitDef
trigger1 = !numtarget
trigger1 = !time
attr = S,HT
damage = 0,0
hitflag = M-
guardflag = M
priority = 6,Miss
numhits = 1
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = s800,(random%2)
guardsound = s120,(random%2)
ground.type = Low
ground.velocity = 0,0
air.velocity = 0,0
p1facing = 1
p2facing = 1
p1stateno = 2501
p2stateno = 2505
fall = 1
fall.recover = 0
kill = 0

[State 2500, end]
type = selfstate
trigger1 = !animtime
trigger2 = moveguarded
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2501]
type = S
movetype = A
physics = S
anim = 2501
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2501, Assert]
type = AssertSpecial
trigger1 = !ishelper
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 2501, width]
type = width
trigger1 = !ishelper
edge = 50,50

[State 2501, bind]
type = TargetBind
trigger1 = animelemtime(1)>0 && animelemtime(55)<0
pos = 50,0

[State 2501, AIT]
type = AfterImageTime
trigger1 = !time
time = 0

[State 2501, BG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !time
anim = 6030
ID = 6030
pos = -10,-10
postype = back
scale = 1.1,1.1
bindtime = -1
sprpriority = -3
removetime = 360
ownpal = 1
trans = default
ignorehitpause = 1

[State 2501, hit]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 13
trigger4 = animelem = 20
trigger5 = animelem = 26
trigger6 = animelem = 28
trigger7 = animelem = 30
trigger8 = animelem = 39
trigger9 = animelem = 41
trigger10 = animelem = 50
trigger11 = animelem = 52
attr = S,HA
damage = 15,5
animtype = hard
hitflag = MAF
guardflag = M
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -20+(random%5),-70+(random%7)
hitsound = S200,(random%4)
guardsound = S120,(random%2)
pausetime = 3,3
getpower = 15,5
ground.type = High
ground.hittime = 20
ground.slidetime = 25
ground.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 2505+(random%2)
fall.recover = 0
forcestand = 1
kill = 0
envshake.time = 10
envshake.ampl = 5
envshake.freq = 50

[State 2501, hit]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 9
trigger3 = animelem = 18
trigger4 = animelem = 22
trigger5 = animelem = 34
trigger6 = animelem = 36
trigger7 = animelem = 44
trigger8 = animelem = 46
attr = S,HA
damage = 20,10
animtype = hard
hitflag = MAF
guardflag = M
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -20+(random%5),-80+(random%6)
hitsound = S200,(4+random%4)
guardsound = S120,(random%2)
pausetime = 4,4
getpower = 20,10
ground.type = High
ground.hittime = 20
ground.slidetime = 25
ground.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 2505+(random%2)
fall.recover = 0
forcestand = 1
kill = 0
envshake.time = 10
envshake.ampl = 5
envshake.freq = 50

[State 2501, hit]
type = HitDef
trigger1 = animelem = 47
attr = S,HA
damage = 35,15
animtype = hard
hitflag = MAF
guardflag = M
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -20+(random%5),-35+(random%6)
hitsound = S1,8
guardsound = S120,(random%2)
pausetime = 5,5
getpower = 35,15
ground.type = Low
ground.hittime = 20
ground.slidetime = 25
ground.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 2505+(random%2)
fall.recover = 0
forcestand = 1
kill = 0
envshake.time = 10
envshake.ampl = 5
envshake.freq = 50

[State 2501, Effect]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(56)
anim = 4111
ID = 4111
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
trans = add

[State 2501, voice]
type = PlaySnd
trigger1 = !animelemtime(55)
value = S1800,0
volumescale = 255

[State 2501, hit]
type = HitDef
trigger1 = animelem = 56
attr = S,HA
damage = 50,35
animtype = Up
hitflag = MAF
guardflag = M
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -20+(random%5),-82
hitsound = S200,4
guardsound = S120,(random%2)
pausetime = 10,10
getpower = 50,35
ground.type = High
ground.hittime = 20
ground.slidetime = 25
ground.velocity = -3,-10
air.velocity = -3,-10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
kill = 0
envshake.time = 10
envshake.ampl = 20
envshake.freq = 75
envshake.phase = 75

[State 2501, change]
type = selfstate
trigger1 = !animtime
value = 2502
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 2502]
type = A
movetype = A
physics = N
anim = 2502
ctrl = 0
sprpriority = 2

[State 2501, Assert]
type = AssertSpecial
trigger1 = animelemtime(1)>0&&animelemtime(16)<0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 2502, Pos]
type = PosSet
trigger1 = !time
x = enemynear,pos X-50*(facing)
y = enemynear,pos Y-20

[State 2502, Width]
type = Width
trigger1 = !ishelper
edge = 40,40

[State 2502, Effect]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !time
anim = 4100
ID = 4101
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 100
sprpriority = 5
ownpal = 1
trans = add

[State 2502, BG-Break]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(17)
anim = 6031
ID = 6031
pos = -10,-10
postype = back
scale = 1.1,1.1
bindtime = -1
sprpriority = -2
removetime = -2
ownpal = 1
trans = none
ignorehitpause = 1

[State 2502, Remove]
type = RemoveExplod
trigger1 = !animelemtime(17)
id = 4101

[State 2502, Remove]
type = RemoveExplod
trigger1 = !animelemtime(17)
id = 6030

[State 2502, snd]
type = PlaySnd
trigger1 = !animelemtime(17)
value = S6100,17
volumescale = 255

[State 2502, voice]
type = PlaySnd
trigger1 = !animelemtime(17)
value = S1800,1
volumescale = 255

[State 2502, Hit]
type = Hitdef
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
trigger7 = animelem = 8
trigger8 = animelem = 9
trigger9 = animelem = 10
trigger10 = animelem = 11
trigger11 = animelem = 12
trigger12 = animelem = 13
trigger13 = animelem = 14
trigger14 = animelem = 15
trigger15 = animelem = 16
attr = A,HA
damage = 10,5
animtype = Hard
hitflag = MAF
guardflag = M
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -10,-70
hitsound = S200,5
guardsound = S120,(random%2)
pausetime = 5,10
getpower = 5,5
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -6,-8
ground.cornerpush.veloff = 0
guard.velocity = -10
guard.pausetime = 8,20
air.animtype = Back
air.velocity = -6,-10
airguard.velocity = -4,-5
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 4
envshake.freq = 85

[State 2502, Hit]
type = Hitdef
trigger1 = animelem = 17
attr = A,HA
damage = 50,25
animtype = up
hitflag = MAF
guardflag = M
guard.pausetime = 10,40
sparkno = s6000+(random%4)
guard.sparkno = S6005
sparkxy = -10,-60
hitsound = S200,9
guardsound = S120,(random%2)
pausetime = 30,35
getpower = 50,25
ground.type = High
ground.slidetime = 20
ground.hittime = 22
ground.velocity = -15,18
ground.cornerpush.veloff = 0
guard.velocity = -10
air.animtype = Back
air.velocity = -15,18
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 30
envshake.ampl = 10
envshake.freq = 120

[State 2502, self]
type = SelfState
trigger1 = !animtime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 2505]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = -2

[State 2505, pos]
type = posset
trigger1 = !ishelper
y = 0

[State 2505, width]
type = Width
triggerall = !ishelper
trigger1 = time >= 0
edge = 60,0
ignorehitpause = 1
persistent = 1

[State 2505, anim]
type= Changeanim2
triggerall = !ishelper
trigger1 = !time
value= 2505

[State 2505, self]
type = SelfState
triggerall = !ishelper
trigger1 = !animtime
value = 5100

;---------------------------------------------------------------------------
;Enemy
[Statedef 2506]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = -2

[State 2506, pos]
type = posset
trigger1 = !ishelper
y = 0

[State 2506, width]
type = Width
triggerall = !ishelper
trigger1 = time >= 0
edge = 60,0
ignorehitpause = 1
persistent = 1

[State 2506, anim]
type= Changeanim2
triggerall = !ishelper
trigger1 = !time
value = 2506

[State 2506, self]
type = SelfState
triggerall = !ishelper
trigger1 = !animtime
value = 5100

;---------------------------------------------------------------------------
;Emerald Dragon
[Statedef 2600]
type = S
movetype = A
physics = N
anim = 2600
ctrl = 0
velset = 0,0
poweradd = -3000
sprpriority = 2

[State 2600, S-Pause]
type = SuperPause
trigger1 = !AnimElemTime(1)
time = 120
anim = -1
sound = -1
darken = 1
ignorehitpause = 1

[State 2600, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6025
ID = 6025
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 2
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6019
ID = 6019
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6200
ID = 6200
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, BG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 4000
ID = 4000
pos = 0,0
postype = back
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, Dragon]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(2)
anim = 7000
id = 7000
pos = 0,200
postype = back
bindtime = 1
sprpriority = 214748364
ontop = 1
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2600, voice]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S180,5
volumescale = 255

[State 2600, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6000,(1+random%2)
volumescale = 255

[State 2600, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S1600,0
volumescale = 255

[State 2600, snd]
type = PlaySnd
trigger1 = !animelemtime(6)
value = S4000,0
volumescale = 255

[State 2600, snd]
type = PlaySnd
trigger1 = !animelemtime(7)
value = S4000,3
volumescale = 255

[State 2600, snd]
type = PlaySnd
trigger1 = !animelemtime(7)
value = S4000,4
volumescale = 255

[State 2600, proj]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 7001
projanim = 7001
projhits = 1
projremovetime= 54
projremove = 0
projpriority = 2147483647
projsprpriority = 2147483647
postype = back
offset = 30,-140
velocity = 0,0
attr = S,HP
damage = 250,100
animtype = Hard
hitflag = MAFD
guardflag = M
sparkno = S7002
guard.sparkno = S7002
sparkxy = 200,200
pausetime = 0,12
getpower = 50,50
givepower = -100,-100
hitsound = S4000,2
guardsound = S4000,2
ground.type = Low
ground.velocity = -2,-5.5
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
air.animtype = back
air.velocity = -2.5,-5.5
airguard.velocity = -3.5,-5.5
air.fall = 1
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
Palfx.color = 0
palfx.invertall = 1

[State 2600, end]
type = SelfState
trigger1 = !animtime
value = 2601
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2601]
type = S
movetype = I
physics = N
anim = 2601
ctrl = 0
velset = 0,0
sprpriority = 2

[State 2601, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6020
ID = 6020
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 2
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2601, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6200
ID = 6200
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2601, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2601, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2601, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6000,(1+random%2)
volumescale = 255

[State 2601, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S1600,0
volumescale = 255

[State 2601, end]
type = SelfState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Dark Energy Ray
[Statedef 2800]
type = S
movetype = A
physics = N
anim = 2800
ctrl = 0
velset = 0,0
poweradd = -4000
sprpriority = 3

[State 2800, assert]
type = AssertSpecial
trigger1 = !ishelper
flag = timerfreeze
flag2 = noFG
ignorehitpause = 1

[State 2800, S-Pause]
type = SuperPause
trigger1 = !AnimElemTime(1)
time = 60
movetime = 60
anim = -1
sound = -1
darken = 1
ignorehitpause = 1

[State 2800, push]
type = PlayerPush
trigger1 = !ishelper
value = 0
ignorehitpause = 1

[State 2800, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6025
ID = 6025
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 2
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2800, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6019
ID = 6019
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2800, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6200
ID = 6200
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2800, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2800, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2800, BG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 4000
ID = 4000
pos = 0,0
postype = back
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 2800, dust]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(2)
anim = 6043
id = 6043
pos = 0,3
postype = p1
scale = 0.5,0.5
bindtime = -1
removetime = 200
sprpriority = 1
ownpal = 1
trans = add

[State 2800, ray]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(2)
anim = 6130
id = 6130
pos = 45,-77
postype = p1
bindtime = -1
removetime = 200
sprpriority = 2147483647
ownpal = 1
trans = sub

[State 2800, ray]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(2)
anim = 6140
id = 6140
pos = 40,-77
postype = p1
bindtime = -1
removetime = 200
sprpriority = 2147483647
ownpal = 1
trans = sub

[State 2800, ring]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(2)
anim = 6170
id = 6170
pos = 40,-77
postype = p1
scale = 0.2,0.7
bindtime = -1
removetime = 200
sprpriority = 2147483647
ownpal = 1
trans = sub

[State 2800, voice]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S3000,0
volumescale = 255

[State 2800, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6000,(1+random%2)
volumescale = 255

[State 2800, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6100,5
volumescale = 255

[State 2800, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6100,10
volumescale = 255

[State 2800, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S6100,12
volumescale = 255

[State 2800, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S6100,13
volumescale = 255

[State 2800, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S6100,14
volumescale = 255

[State 2800, shake]
type = EnvShake
trigger1 = time > 60
trigger1 = time <= 260
trigger1 = (GameTime%3)
time = 5
ampl = -3
freq = 95
phase = 95

[State 2800, proj]
type = Projectile
trigger1 = time > 60
trigger1 = time <= 260
trigger1 = (GameTime%3)
projid = 10000
projanim = 10000
projhitanim = -1
projremanim = -1
projpriority = 2147483647
projsprpriority = 2147483647
projremove = 1
projremovetime = 5
postype = p1
offset = 45,-77
velocity = 0,0
attr = S,HA
damage = Ceil(0.005*enemy,Const(data.life)),Ceil(0.002*enemy,Const(data.life))
animtype = diagup
hitflag = MAFD
guardflag =
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
pausetime = 2,4
getpower = 0,0
givepower = -Ceil(0.01*enemy,Const(data.life)),-Ceil(0.004*enemy,Const(data.life))
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -6,-6.5
air.velocity = -6,-6.5
air.fall = 1
fall = 1
fall.recover = 0

[State 2800, end]
type = SelfState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Time Warp
[Statedef 3000]
type = S
movetype = I
physics = S
anim = 3000
ctrl = 0
velset = 0,0
poweradd = -5000
sprpriority = 3

[State 3000, S-Pause]
type = SuperPause
trigger1 = !animelemtime(1)
time = 60
movetime = 60
anim = -1
sound = -1
darken = 1
ignorehitpause = 1

[State 3000, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6025
ID = 6025
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 2
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3000, hyper]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6019
ID = 6019
pos = 0,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3000, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6200
ID = 6200
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3000, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3000, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 6210
ID = 6210
pos = 0,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3000, BG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = !animelemtime(1)
anim = 4000
ID = 4000
pos = 0,0
postype = back
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3000, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6000,(1+random%2)
volumescale = 255

[State 3000, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6100,5
volumescale = 255

[State 3000, snd]
type = PlaySnd
trigger1 = !animelemtime(1)
value = S6100,8
volumescale = 255

[State 3000, NHB]
type = NotHitBy
trigger1 = !ishelper
value = SCA,AT,AP
time = 1
ignorehitpause = 1

[State 3000, Reversal]
type = ReversalDef
trigger1 = !ishelper
reversal.attr = SCA,AA,AT
pausetime = 0,0
sparkno = -1
hitsound = S6000,10
ignorehitpause = 1

[State 3000, target]
type = TargetState
trigger1 = numtarget
trigger1 = !target,ishelper
trigger1 = target,stateno!=3005
value = 3005

[State 3000, drop]
type = TargetDrop
trigger1 = numtarget
trigger1 = target,ishelper
ignorehitpause = 1

[State 3000, end]
type = SelfState
trigger1 = numtarget
trigger1 = !target,ishelper
trigger1 = target,stateno=3005
trigger1 = target,movetype=H
value = 3001
ctrl = 0

[State 3000, end]
type = SelfState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3001]
type = S
movetype = I
physics = N
anim = 3001
ctrl = 0
velset = 0,0
sprpriority = 3

[State 3001, Asserts]
type = AssertSpecial
trigger1 = time>=30
flag = noFG
flag2 = noBG
flag3 = nobardisplay
ignorehitpause = 1

[State 3001, Pos]
type = PosSet
trigger1 = !time
x = enemynear,pos X-100*(facing)
y = 0

[State 3001, APFX]
type = AllPalFX
trigger1 = !time
time = 30
sinadd = 255,255,255,120
invertall = 0

[State 3001, Var]
type = VarSet
trigger1 = !time
var(10) = 1
ignorehitpause = 1

[State 3001, orb]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=30
anim = 6120
ID = 6120
pos = 110,0
postype = p1
bindtime = 1
scale = 0.4,0.4
removetime = -1
sprpriority = 20
ownpal = 1
trans = sub
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, FG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=30
anim = 8000
ID = 8000
pos = 0,0
postype = back
bindtime = -1
removetime = -1
sprpriority = -1
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, BG]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=30
anim = 8001
ID = 8001
pos = 0,0
postype = back
bindtime = -1
removetime = -1
sprpriority = -5
ownpal = 1
trans = none
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, into]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=30
anim = 6150
ID = 6150
pos = 110,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 30
ontop = 1
ownpal = 1
trans = sub
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, energy]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=30
anim = 6015
ID = 6015
pos = 110,-75
postype = p1
bindtime = 1
removetime = -1
sprpriority = 1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, energy-gone]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=340
anim = 6016
ID = 6016
pos = 110,-75
postype = p1
bindtime = 1
removetime = -2
sprpriority = 1
ownpal = 1
trans = add
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, orb-gone]
type = Explod
triggerall = PlayerIDExist(ID)
trigger1 = animelemtime(1)=420
anim = 6121
ID = 6121
pos = 110,30
postype = p1
bindtime = 1
scale = 0.4,0.4
removetime = -2
sprpriority = 20
ownpal = 1
trans = sub
supermovetime=2147483647
pausemovetime=2147483647
ignorehitpause = 1

[State 3001, Remove]
type = RemoveExplod
trigger1 = animelemtime(1)=340
id = 6015

[State 3001, Remove]
type = RemoveExplod
trigger1 = animelemtime(1)=420
id = 6120

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=30
value = S6000,4
loop = 1
channel = 4

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=30
value = S6100,4
loop = 1
channel = 5

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=60
value = S3100,0
volumescale = 255

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=200
value = S3100,1
volumescale = 255

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=340
value = S6100,11
channel = 4

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=340
value = S6100,16
channel = 5

[State 3001, snd]
type = PlaySnd
trigger1 = animelemtime(1)=390
value = S6000,7

[State 3001, snd]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S3100,2
volumescale = 255

[State 3001, end]
type = SelfState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Enemy
[Statedef 3005]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3005, Anim]
type = ChangeAnim2
triggerall = !ishelper
trigger1 = !time
value = 3002

[State 3005, Pos]
type = PoSset
trigger1 = !time
x = 30
y = -30

[State 3005, Turn]
type = Turn
trigger1 = facing = enemy,facing
ignorehitpause = 1

[State 3005, Screen]
type = ScreenBound
trigger1 = !ishelper
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 3005, Destroy]
type = DestroySelf
trigger1 = ishelper
ignorehitpause = 1

[State 3005, Remove]
type = RemoveExplod
trigger1 = !time
ignorehitpause = 1

[State 3005, AIT]
type = AfterImageTime
trigger1 = !time
time = 1
ignorehitpause = 1

[State 3005, Anim]
type = ChangeAnim2
triggerall = !ishelper
trigger1 = time = 350
value = 3003

[State 3005, Shrink]
type = AngleDraw
triggerall = !ishelper
trigger1 = time=[350,390]
scale = 1.0-((time-350)*0.02),1.0-((time-350)*0.02)

[State 3005, Vel]
type = VelSet
triggerall = !ishelper
trigger1 = time=[350,390]
x = -0.1
y = -1

[State 3005, After]
type = AfterImage
triggerall = !ishelper
trigger1 = time = 350
time = 40
length = 20
trans = sub
ignorehitpause = 1

[State 3005, Change]
type = ChangeState
triggerall = !ishelper
trigger1 = time >= 390
value = 3006
ctrl = 0

;---------------------------------------------------------------------------
;Enemy
[Statedef 3006]
type = S
movetype = H
physics = N
ctrl = 0
sprpriority = -5

[State 3006, Asserts]
type = AssertSpecial
triggerall = !ishelper
trigger1 = !alive
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 3006, Angle]
type = AngleDraw
triggerall = !ishelper
trigger1 = alive
scale = 0.1,0.1

[state 3006, Pos]
type = posset
triggerall = !ishelper
trigger1 = !alive
y = 9999

[State 3006, Dead]
type = LifeSet
triggerall = !ishelper
trigger1 = !time
value = 0
ignorehitpause = 1

[State 3006, Self]
type = SelfState
triggerall = !ishelper
trigger1 = !alive
value = 5150
ctrl = 0