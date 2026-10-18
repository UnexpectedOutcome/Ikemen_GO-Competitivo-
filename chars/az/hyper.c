;===========================================================================
;†††hypers†††
;===========================================================================
;■炎の剣
[statedef 3000]
type = c
movetype = a
physics = c
anim = 3000
ctrl = 0

[state 3000, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,4
ignorehitpause = 1

[state 3000, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = 40,280
ignorehitpause = 1

[state 3000, nothitby]
type = nothitby
trigger1 = animelemtime(6) < 0
value = sca,aa
ignorehitpause = 1

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(3) = 0
time = 40
anim = s32500
pos = -floor(const(size.xscale)*4),-floor(const(size.yscale)*104)
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
poweradd = -1000

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 6,0

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(8) = 0
trigger5 = animelemtime(9) = 0
value = 6,1

[state 3000, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(8) = 0
trigger5 = animelemtime(9) = 0
id = 3000
attr = s,ha
hitflag = maf
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(20*fvar(1)),4
getpower = 0,0
givepower = 20,5
ground.hittime  = 16
air.hittime = 20
guard.ctrltime = 8
ground.slidetime = 15
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*60)
hitsound = s6,2
guardsound = s2,1
ground.velocity = -6
guard.velocity = -9
air.velocity = -4,-2
fall.recovertime = 80
guard.cornerpush.veloff = -20

[state 3000, targetdrop]
type = null;targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3000
ignorehitpause = 1

[state 3000, targetstate]
type = targetstate
trigger1 = numtarget(3000) > 0
trigger1 = movehit = 1
value = 5697;5025
ignorehitpause = 1

[state 3000, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(9) = 0
helpertype = normal
name = "fire slash"
id = 31000
stateno = 31000
pos = var(6),-60
postype = back
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(8) = 0
helpertype = normal
name = "fire slash"
id = 31000
stateno = 31000
pos = var(6),-60
postype = back
facing = -1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ディラックの海
[statedef 3100]
type = c
movetype = a
physics = c
anim = 3100
ctrl = 0

[state 3100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3100, nothitby]
type = nothitby
trigger1 = animelemtime(7) < 0
value2 = sca,aa
ignorehitpause = 1

[state 3100, nothitby]
type = nothitby
trigger1 = 1
value =  ,ap
ignorehitpause = 1

[state 3100, superpause]
type = superpause
trigger1 = animelemtime(3) = 0
time = 60
anim = s32500
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*33)
sound = s2,100
movetime = 60
darken = 1
unhittable = 0
poweradd = -1000

[state 3100, hitdef]
type = hitdef
trigger1 = numenemy = 1
trigger1 = enemy,stateno != 140
trigger1 = animelemtime(8) = 0
trigger2 = numenemy != 1
trigger2 = animelemtime(8) = 0
id = 3100
attr = c, ht
hitflag = m-
priority = 3, miss
sparkno = -1
getpower = 0,0
hitsound = s6,14
guard.dist = 0

[state 3100, playsnd]
type = playsnd
trigger1 = time = 0
value = 6,10

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 6,13

[state 3100, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3100
ignorehitpause = 1

[state 3100, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = movehit
id = 3100
value = 3105
ignorehitpause = 1

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
value = 6,11

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(9) = 0
value = 6,12

[state 3100, changestate]
type = changestate
trigger1 = animtime = 0
value = 12
ctrl = 1
;---------------------------------------------------------------------------
[statedef 3105]
type    = a
movetype= h
physics = n
sprpriority = 0

[state 3105, destroyself]
type = destroyself
trigger1 = ishelper

[state 3105, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3105, palfx]
type = palfx
trigger1 = 1
time = 1
invertall = 1

[state 3105, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 300
sinadd = -256,-256,-256,100

[state 3105, lifeadd]
type = lifeadd
trigger1 = time%3 = 0
value = -ceil(lifemax*0.001)
absolute = 1

[state 3105, velset]
type = velset
trigger1 = time = 0
x = 0

[state 3105, veladd]
type = veladd
trigger1 = time > 3
y = 10

[state 3105, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 3105

[state 3105, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 3105, changestate]
type = changestate
trigger1 = pos y >= 300
trigger2 = time > 60
value = 3106
;---------------------------------------------------------------------------
[statedef 3106]
type    = a
movetype= h
sprpriority = 0

[state 3106, palfx]
type = palfx
trigger1 = 1
time = 1
invertall = 1

[state 3106, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 300
sinadd = 256,256,256,100

[state 3106, lifeadd]
type = lifeadd
trigger1 = time <= 100
trigger1 = time%2 = 0
value = -ceil(lifemax*0.001)
absolute = 1

[state 3106, posset]
type = posset
trigger1 = time = 0
y = -3000

[state 3106, velset]
type = velset
trigger1 = time = 0
y = 80

[state 3106, veladd]
type = veladd
trigger1 = time > 10
y = const(movement.yaccel)*5

[state 3106, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 3106

[state 3106, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 3106, changestate]
type = changestate
trigger1 = pos y >= -20
value = 3107
;---------------------------------------------------------------------------
[statedef 3107]
type    = l
movetype= h
physics = n
anim = 5100
sprpriority = 0

[state 3107, palfx]
type = palfx
trigger1 = time = 0
time = 60
sinadd = -256,-256,-256,120

[state 3107, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 60
invertall = 1

[state 3107, posset]
type = posset
trigger1 = time = 0
y = 0

[state 3107, velset]
type = velset
trigger1 = time = 0
y = 0

[state 3107, posfreeze]
type = posfreeze
trigger1 = 1

[state 3107, playsnd]
type = playsnd
trigger1 = time = 0
value = f7,2

[state 3107, envshake]
type = envshake
trigger1 = time = 0
time = 32
freq = 120
ampl = -4
phase = 0

[state 3107, lifeadd]
type = lifeadd
trigger1 = time = 0
value = -ceil(lifemax*0.1)
absolute = 1

[state 3107, selfstate]
type = selfstate
trigger1 = animtime = 0
value = 5101
;---------------------------------------------------------------------------
;■デウス・エクス・マキナ
[statedef 3200]
type = s
movetype = a
physics = s
anim = 3200
ctrl = 0

[state 3200, nothitby]
type = nothitby
trigger1 = time <= 16
value = sca,aa
ignorehitpause = 1

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 45
anim = s32500
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*45)
sound = s2,100
movetime = 45
darken = 1
unhittable = 1
poweradd = -2000

[state 3200, helper]
type = helper
trigger1 = animelemtime(6) = 1
helpertype = normal
name = "deus ex machina"
id = 31200
stateno = 31200
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 12
ctrl = 1
;---------------------------------------------------------------------------
;■生命の樹
[statedef 3300]
type = s
movetype = i
physics = s
anim = 2000
ctrl = 0

[state 3300, playsnd]
type = playsnd
trigger1 = time = 0
value = 6,30

[state 3300, superpause]
type = superpause
trigger1 = time = 0
time = 30
anim = s32500
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*57)
sound = s2,100
movetime = 30
darken = 1
unhittable = 1
poweradd = -2000

[state 3300, playsnd]
type = playsnd
trigger1 = time = 60
value = 6,31

[state 3300, helper]
type = helper
trigger1 = time = 60
helpertype = normal
name = "tree of life"
id = 32700
stateno = 32700
pos = 160,120
postype = left
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3300, varadd]
type = varadd
trigger1 = time = 60
var(0) = 1500
ignorehitpause = 0

[state 3300, changestate]
type = changestate
trigger1 = time = 100
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ディア・ロガエス
[statedef 3400]
type = c
movetype = a
physics = c
anim = 3400
ctrl = 0

[state 3400, assertspecial]
type = assertspecial
trigger1 = animelemtime(8) > 0
flag = nomusic
ignorehitpause = 1

[state 3400, nothitby]
type = nothitby
trigger1 = animelemtime(8) < 0
value = sca,aa
ignorehitpause = 1

[state 3400, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
value = 13,0
channel = 13
aspan = 1
ignorehitpause = 1

[state 3400, superpause]
type = superpause
trigger1 = animelemtime(8) = 0
time = 60
anim = s32500
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*33)
sound = s3,2
movetime = 60
darken = 1
unhittable = 1
poweradd = -3000

[state 3400, pause]
type = pause
trigger1 = animelemtime(8) >= 0
trigger1 = gametime%4 = 0 
time = 2
movetime = 2

[state 3400, helper]
type = helper
trigger1 = time = 60
trigger2 = time = 120
trigger3 = time = 250
trigger4 = time = 300
trigger5 = time = 400
trigger6 = time = 430
trigger7 = time = 470
trigger8 = time = 520
trigger9 = time = 600
helpertype = normal
name = "psycho wave"
id = 31400
stateno = 31400+(time=600)
pos = 160,120
postype = left
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3400, helper]
type = helper
trigger1 = numhelper(30110) = 0
helpertype = normal
name = "barrier"
stateno = 30110
id = 30110
pos = 0, 0
postype = p1
facing = -1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3400, helper]
type = helper
trigger1 = time = 60
helpertype = normal
name = "shining1"
stateno = 31450
id = 31450
pos = 160, -180
postype = back
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3400, helper]
type = helper
trigger1 = time = 60
helpertype = normal
name = "shining2"
stateno = 31455
id = 31455
pos = 160, -180
postype = back
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3400, changestate]
type = changestate
trigger1 = time = 600
value = 12
ctrl = 1
;---------------------------------------------------------------------------
;■キティコールハザード
[statedef 3500]
type = c
movetype = a
physics = c
anim = 3500
ctrl = 0

[state 3500, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 1,3
ignorehitpause = 1

[state 3500, nothitby]
type = nothitby
trigger1 = animelemtime(5) < 0
value = sca,aa
ignorehitpause = 1

[state 3500, playsnd]
type = playsnd
trigger1 = time = 1
value = 12,0
channel = 9

[state 3500, superpause]
type = superpause
trigger1 = animelemtime(4) = 0
time = 60
anim = s32500
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*33)
sound = s2,100
movetime = 60
darken = 1
unhittable = 1
poweradd = -1000

[state 3500, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 10,1
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3500, helper]
type = helper
trigger1 = animelemtime(10) = 0
trigger2 = animelemtime(13) = 0
helpertype = normal
name = "chibi-nyan"
stateno = 7003
id = 7000
pos = -var(1)*2, 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animelemtime(12) = 10
helpertype = normal
name = "yukkuri-aznyan"
stateno = 7403
id = 7400
pos = -100, 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animelemtime(12) = 5
helpertype = normal
name = "lemon-alien"
stateno = 7300
id = 7300
pos = -100, 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animelemtime(12) = 10
helpertype = normal
name = "mushioyaji"
stateno = 7330
id = 7330
pos = -100, 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animelemtime(12) = 15
helpertype = normal
name = "kero"
stateno = 7360
id = 7360
pos = -100, 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animelemtime(12) = 10
helpertype = normal
name = "aznyan-mk2"
stateno = 7250
id = 7250
pos = -100, 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animtime = 0
trigger1 = var(5) = 1
helpertype = normal
name = "kitty-chch"
stateno = 7101
id = 7100
pos = -var(1), 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animtime = 0
trigger1 = var(5) = 2
helpertype = normal
name = "kitty-shiron"
stateno = 7131
id = 7130
pos = -var(1), 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, helper]
type = helper
trigger1 = animtime = 0
trigger1 = var(5) = 3
helpertype = normal
name = "kitty-lili"
stateno = 7161
id = 7160
pos = -var(1), 0
postype = back
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3500, changestate]
type = changestate
trigger1 = animtime = 0
value = 12
ctrl = 1
;---------------------------------------------------------------------------
;■最後の晩餐
[statedef 3900]
type = s
movetype = a
physics = s
anim = 3900
ctrl = 0
velset = 0,0

[state 3900, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3900, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 6,91

[state 3900, superpause]
type = superpause
trigger1 = animelemtime(4) = 0
time = 48
anim = -1
sound = s6,90
movetime = 48
darken = 1
unhittable = 1
poweradd = -3000

[state 3900, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 32500
postype = p1
pos = floor(const(size.xscale)*20),-floor(const(size.yscale)*32)
supermovetime = 60
sprpriority = 4
ownpal = 1

[state 3900, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 32500
postype = p1
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*40)
supermovetime = 60
sprpriority = 4
ownpal = 1

[state 3900, changestate]
type = changestate
trigger1 = animtime = 0
value = 3910
;---------------------------------------------------------------------------
[statedef 3910]
type = s
movetype = a
physics = s
anim = 3910
ctrl = 0
velset = 0,0

[state 3910, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3910, statetypeset]
type = statetypeset
trigger1 = animelemtime(3) = 0
statetype = a
physics = n

[state 3910, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 3900
attr = a,ht
hitflag = af
priority = 5, miss
sparkno = -1
guard.dist = 0
hitonce = 0

[state 3910, targetdrop]
type = null;targetdrop
trigger1 = numtarget
;trigger1 = movehit
excludeid = 3900
keepone = 1
ignorehitpause = 1

[state 3910, targetstate]
type = targetstate
trigger1 = numtarget
value = 3980
id = 3900

[state 3910, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3910, targetbind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0,0
id = 3900

[state 3910, targetbind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = floor(const(size.xscale)*8),-floor(const(size.yscale)*79)
id = 3900

[state 3910, targetbind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0
pos = floor(const(size.xscale)*58),-floor(const(size.yscale)*159)
id = 3900

[state 3910, changestate]
type = changestate
trigger1 = animtime = 0
value = 3920
;---------------------------------------------------------------------------
[statedef 3920]
type = a
movetype = a
physics = n
anim = 3920
ctrl = 0
velset = 12,-45

[state 3920, nothitby]
type = nothitby
trigger1 = anim = 3920
trigger2 = numtarget
value = sca,aa
ignorehitpause = 1

[state 3920, veladd]
type = veladd
trigger1 = time > 6
y = const(movement.yaccel)*5

[state 3920, hitdef]
type = hitdef
trigger1 = time = 0
attr = a, ht
hitflag = af
priority = 5, miss
sparkno = -1
guard.dist = 0
id = 3900

[state 3920, targetstate]
type = targetstate
trigger1 = numtarget
value = 3980
id = 3900

[state 3920, targetbind]
type = targetbind
trigger1 = numtarget
trigger1 = vel y < 0
pos = floor(const(size.xscale)*26),-floor(const(size.yscale)*112)
id = 3900

[state 3920, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3920, targetbind]
type = targetbind
trigger1 = numtarget
trigger1 = vel y >= 0
pos = 0,0
id = 3900

[state 3920, changeanim]
type = changeanim
trigger1 = anim = 3920
trigger1 = vel y > 0
value = 3930

[state 3920, changestate]
type = changestate
trigger1 = pos y > -5
trigger1 = vel y > 0
value = 3940
;---------------------------------------------------------------------------
[statedef 3940]
type = s
movetype = a
physics = s
anim = 3940
ctrl = 0
velset = 0,0

[state 3940, nothitby]
type = nothitby
trigger1 = numtarget
value = sca,aa
ignorehitpause = 1

[state 3940, posset]
type = posset
trigger1 = time = 0
y = 0

[state 3940, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3940, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3940, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 2,5

[state 3940, changestate]
type = changestate
trigger1 = numtarget
trigger1 = target,stateno = 3980
trigger1 = animtime = 0
value = 3941

[state 3940, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 3941]
type = a
movetype = a
physics = n
anim = 3930
ctrl = 0
velset = -7.5,-9

[state 3941, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3941, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3941, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3941, veladd]
type = veladd
trigger1 = time > 6
y = const(movement.yaccel)*5

[state 3941, changestate]
type = changestate
trigger1 = pos y > -1
trigger1 = vel y > 0
value = 3942
;---------------------------------------------------------------------------
[statedef 3942]
type = s
movetype = a
physics = s
anim = 3942
ctrl = 0
velset = 0,0

[state 3942, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3942, posset]
type = posset
trigger1 = time = 0
y = 0

[state 3942, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3942, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3942, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) = 0
value = 3981
id = 3900

[state 3942, helper]
type = helper
trigger1 = numtarget
trigger1 = animelemtime(2) = 0
trigger1 = target,selfanimexist(7943) != 1
name = "taiyaki"
id = 3990
stateno = 3991
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
size.height = 0

[state 3942, helper]
type = helper
trigger1 = var(39) != 0
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6160
stateno = 6165
postype = left
facing = 1
pos = 100,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 3942, helper]
type = helper
trigger1 = var(39) != 0
trigger1 = time = 0
trigger1 = numhelper(6200) = 0
helpertype = normal
name = "tainaka_ritsu"
id = 6260
stateno = 6265
postype = left
facing = -1
pos = 220,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 3942, helper]
type = helper
trigger1 = var(39) != 0
trigger1 = time = 0
helpertype = normal
name = "akiyama_mio"
id = 6360
stateno = 6365
postype = left
facing = 1
pos = 280,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 3942, helper]
type = helper
trigger1 = var(39) != 0
trigger1 = time = 0
helpertype = normal
name = "kotobuki_tsumugi"
id = 6460
stateno = 6465
postype = left
facing = -1
pos = 40,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 3942, helper]
type = helper
trigger1 = var(39) != 0
trigger1 = time = 0
trigger1 = numhelper(6200) = 1
helpertype = normal
name = "suzuki_jun"
id = 6760
stateno = 6765
postype = left
facing = -1
pos = 220,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 3942, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 2,5

[state 3942, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 8,5

[state 3942, changestate]
type = changestate
trigger1 = animtime = 0
value = 3950
;---------------------------------------------------------------------------
[statedef 3950]
type = s
movetype = a
physics = s
anim = 3950
ctrl = 0
velset = 0,0

[state 3950, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3950, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3950, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(2) = 0
value = 3982
id = 3900

[state 3950, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(7) = 2
value = 3983
id = 3900

[state 3950, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(11) = 0
value = 2,5

[state 3950, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
value = 0,3

[state 3950, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 2
value = 1,11

[state 3950, hitadd]
type = hitadd
trigger1 = animelemtime(7) = 0
value = 1

[state 3950, explod]
type = explod
trigger1 = animelemtime(7) = 0
anim = 25002
id = 25000
pos = floor(const(size.xscale)*22),floor(const(size.yscale)*7)
postype = p1
random = 10, 10
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3950, changestate]
type = changestate
trigger1 = animtime = 0
value = 3951
;---------------------------------------------------------------------------
[statedef 3951]
type = s
movetype = a
physics = s
anim = 3951
ctrl = 0
velset = 0,0

[state 3951, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3951, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3951, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 7,1

[state 3951, changestate]
type = changestate
trigger1 = animtime = 0
value = 3960
;---------------------------------------------------------------------------
[statedef 3960]
type = s
movetype = a
physics = s
anim = 3960
ctrl = 0
velset = 0,0

[state 3960, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3960, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3960, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = time = 10
value = 3984
id = 3900

[state 3960, lifeadd]
type = lifeadd
trigger1 = numtarget
trigger1 = time >= 10
trigger1 = time%10 = 0
value = ceil(target,lifemax*0.01)
absolute = 1

[state 3960, lifeadd]
type = lifeadd
trigger1 = numtarget
trigger1 = time >= 10
trigger1 = time%25 = 0
value = ceil(target,lifemax*0.01)
absolute = 1

[state 3960, hitadd]
type = hitadd
trigger1 = time >= 10
trigger1 = time%10 = 0
value = 1

[state 3960, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,6

[state 3960, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 7,0
channel = 1
loop = 1

[state 3960, playsnd]
type = playsnd
trigger1 = time%30 = 0
value = 7,var(5)
channel = 3

[state 3960, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 7,7
channel = 3

[state 3960, changestate]
type = changestate
trigger1 = time = 240
value = 3970
;---------------------------------------------------------------------------
[statedef 3970]
type = s
movetype = a
physics = s
anim = 3970
ctrl = 0
velset = 0,0

[state 3970, stopsnd]
type = stopsnd
trigger1 = time = 1
channel = 3

[state 3970, targetbind]
type = targetbind
trigger1 = numtarget
pos = 0,0
id = 3900

[state 3970, targetfacing]
type = targetfacing
trigger1 = numtarget
value = 1
id = 3900

[state 3970, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = time = 0
value = 3985
id = 3900

[state 3970, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
value = 10,2
channel = 1;猛獣声をストップ
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3970, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 8,5

[state 3970, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 3980]
type    = a
movetype= h
physics = n
sprpriority = 1

[state 3980, destroyself]
type = destroyself
trigger1 = ishelper

[state 3980, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 3980

[state 3980, selfstate]
type = selfstate
trigger1 = !gethitvar(isbound)
value = 5110
;---------------------------------------------------------------------------
[statedef 3981]
type    = a
movetype= h
physics = n
sprpriority = 1

[state 3981, palfx]
type = palfx
trigger1 = time = 0
time = 20
add = 256,256,256

[state 3981, changeanim]
type = changeanim
trigger1 = selfanimexist(7943) = 1
value = 7943

[state 3981, changeanim2]
type = changeanim2
trigger1 = selfanimexist(7943) != 1
value = 1
;---------------------------------------------------------------------------
[statedef 3982]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3982, changeanim]
type = changeanim
trigger1 = selfanimexist(7943) = 1
value = 7943

[state 3982, changeanim2]
type = changeanim2
trigger1 = selfanimexist(7943) != 1
value = 1
;---------------------------------------------------------------------------
[statedef 3983]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3983, changeanim]
type = changeanim
trigger1 = selfanimexist(7943) = 1
trigger1 = time < 10
value = 7943
elem = 2

[state 3983, changeanim]
type = changeanim
trigger1 = selfanimexist(7943) = 1
trigger1 = time >= 10
value = 7943

[state 3983, changeanim2]
type = changeanim2
trigger1 = selfanimexist(7943) != 1
value = 1

[state 3983, lifeadd]
type = lifeadd
triggerall = numenemy > 0
triggerall = enemy(0),name = "aznyael"
trigger1 = time = 1
value = -ceil((lifemax*0.07)*(enemy(0),const(data.attack)*0.01))*floor((enemy(0),fvar(27)=1.0)*3.0+1.0);◆
kill = 1
absolute = 1

[state 3983, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "aznyael"
trigger1 = time = 1
value = -ceil((lifemax*0.07)*(enemy(1),const(data.attack)*0.01))*floor((enemy(1),fvar(27)=1.0)*3.0+1.0);◆
kill = 1
absolute = 1

[state 3983, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "aznyael"
trigger1 = time = 1
value = -ceil((lifemax*0.07)*(enemy(2),const(data.attack)*0.01))*floor((enemy(2),fvar(27)=1.0)*3.0+1.0);◆
kill = 1
absolute = 1

[state 3983, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "aznyael"
trigger1 = time = 1
value = -ceil((lifemax*0.07)*(enemy(3),const(data.attack)*0.01))*floor((enemy(3),fvar(27)=1.0)*3.0+1.0);◆
kill = 1
absolute = 1

[state 3983, playsnd]
type = playsnd
triggerall = alive = 0
trigger1 = time = 1
value = 11,0
;---------------------------------------------------------------------------
[statedef 3984]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3984, changeanim]
type = changeanim
trigger1 = selfanimexist(7943) = 1
trigger1 = time = 0
value = 7943

[state 3984, lifeadd]
type = lifeadd
triggerall = numenemy > 0
triggerall = enemy(0),name = "aznyael"
trigger1 = time%10 = 0
trigger2 = time%100 = 0
value = -ceil((lifemax*0.01)*(enemy(0),const(data.attack)*0.01))*floor((enemy(0),fvar(27)=1.0)*(3.0+(time>200)*100)+1.0);◆
kill = 1
absolute = 1

[state 3984, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "aznyael"
trigger1 = time%10 = 0
trigger2 = time%100 = 0
value = -ceil((lifemax*0.01)*(enemy(1),const(data.attack)*0.01))*floor((enemy(1),fvar(27)=1.0)*(3.0+(time>200)*100)+1.0);◆
kill = 1
absolute = 1

[state 3984, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "aznyael"
trigger1 = time%10 = 0
trigger2 = time%100 = 0
value = -ceil((lifemax*0.01)*(enemy(2),const(data.attack)*0.01))*floor((enemy(2),fvar(27)=1.0)*(3.0+(time>200)*100)+1.0);◆
kill = 1
absolute = 1

[state 3984, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "aznyael"
trigger1 = time%10 = 0
trigger2 = time%100 = 0
value = -ceil((lifemax*0.01)*(enemy(3),const(data.attack)*0.01))*floor((enemy(3),fvar(27)=1.0)*(3.0+(time>200)*100)+1.0);◆
kill = 1
absolute = 1

[state 3984, playsnd]
type = playsnd
triggerall = alive = 0
trigger1 = time%15 = 0
value = 11,0

[state 3984, changeanim2]
type = changeanim2
trigger1 = selfanimexist(7943) != 1
value = 1
;---------------------------------------------------------------------------
[statedef 3985]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3985, changeanim]
type = changeanim
trigger1 = selfanimexist(7943) = 1
value = 7943

[state 3985, changeanim2]
type = changeanim2
trigger1 = selfanimexist(7943) != 1
value = 1

[state 3985, palfx]
type = palfx
trigger1 = !gethitvar(isbound)
time = 20
add = 256,256,256

[state 3985, selfstate]
type = selfstate
trigger1 = !gethitvar(isbound)
value = 5110
;---------------------------------------------------------------------------
[statedef 3991]
type    = a
movetype= h
physics = n
sprpriority = 1

[state 3991, bindtoroot]
type = bindtoroot
trigger1 = 1

[state 3991, palfx]
type = palfx
trigger1 = time = 0
time = 20
add = 256,256,256

[state 3991, changeanim]
type = changeanim
trigger1 = 1
value = 7944

[state 3991, changestate]
type = changestate
trigger1 = root,stateno = 3950
trigger1 = root,animelemtime(2) = 0
value = 3992
;---------------------------------------------------------------------------
[statedef 3992]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3992, bindtoroot]
type = bindtoroot
trigger1 = 1

[state 3992, changeanim]
type = changeanim
trigger1 = 1
value = 7944

[state 3992, changestate]
type = changestate
trigger1 = root,stateno = 3950
trigger1 = root,animelemtime(7) = 2
value = 3993
;---------------------------------------------------------------------------
[statedef 3993]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3993, bindtoroot]
type = bindtoroot
trigger1 = 1

[state 3993, changeanim]
type = changeanim
trigger1 = time < 10
value = 7944
elem = 2

[state 3993, changeanim]
type = changeanim
trigger1 = time >= 10
value = 7944

[state 3993, changestate]
type = changestate
trigger1 = root,stateno = 3960
trigger1 = root,time = 10
value = 3994
;---------------------------------------------------------------------------
[statedef 3994]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3994, bindtoroot]
type = bindtoroot
trigger1 = 1

[state 3994, changeanim]
type = changeanim
trigger1 = time = 0
value = 7944

[state 3994, changestate]
type = changestate
trigger1 = root,stateno = 3970
value = 3995
;---------------------------------------------------------------------------
[statedef 3995]
type    = l
movetype= h
physics = n
sprpriority = -2

[state 3995, bindtoroot]
type = bindtoroot
trigger1 = 1

[state 3995, changeanim]
type = changeanim
trigger1 = 1
value = 7944

[state 3995, destroyself]
type = destroyself
trigger1 = root,stateno = 0
