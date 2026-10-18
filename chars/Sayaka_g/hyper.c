
;===========================================================================
;†††hypers†††
;===========================================================================
;■愛を込めてスフォルツァンド
[statedef 3000]
type = s
movetype = a
physics = s
anim = 3000
velset = 0,0
ctrl = 0

[state -, varadd];＊愛を込めてスフォルツァンド、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state 3000, nothitby]
type = nothitby
trigger1 = animelemtime(6) < 11
value = sca,aa
ignorehitpause = 1

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,3000+(random<500)
channel = 0
lowpriority = 1

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 40
anim = s32500
pos = -36,-33
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 3000, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 13000+var(40)
id = 13000
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 3000, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(150*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 10,10
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-65
hitsound = s1,10
guardsound = s2,1
ground.velocity = 0,ifelse(var(14)<=0,-7.5,-5)
guard.velocity = -4
air.velocity = 0,ifelse(var(14)<=0,-7.5,-3)
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 3000, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3000) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;■愛を込めてスフォルツァンド
[statedef 3001]
type = s
movetype = a
physics = s
anim = 3000
velset = 0,0
ctrl = 0

[state -, varadd];＊愛を込めてスフォルツァンド、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state 3000, nothitby]
type = nothitby
trigger1 = animelemtime(6) < 11
value = sca,aa
ignorehitpause = 1

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,3000+(random<500)
channel = 0
lowpriority = 1

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 40
anim = s32600
pos = -36,-33
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -2000

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 3000, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 13000+var(40)
id = 13000
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 3000, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype  = diagup
ground.type = high
priority = 6,hit
sprpriority = 1
damage = floor(225*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 10,25
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-65
hitsound = s1,10
guardsound = s2,1
ground.velocity = -3,ifelse(var(14)<=0,-10,-8)
guard.velocity = -4
air.velocity = -3,ifelse(var(14)<=0,-10,-8)
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 3000, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3000) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;■愛を込めてスフォルツァンド
[statedef 3002]
type = s
movetype = a
physics = s
anim = 3000
velset = 0,0
ctrl = 0

[state -, varadd];＊愛を込めてスフォルツァンド、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state 3000, nothitby]
type = nothitby
trigger1 = animelemtime(6) < 11
value = sca,aa
ignorehitpause = 1

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,3000+(random<500)
channel = 0
lowpriority = 1

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 40
anim = s32700
pos = -36,-33
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 3000, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 13000+var(40)
id = 13000
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 3000, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype  = diagup
ground.type = high
priority = 7,hit
sprpriority = 1
damage = floor(320*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 10,30
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-65
hitsound = s1,10
guardsound = s2,1
ground.velocity = -7,ifelse(var(14)<=0,-14,-10)
guard.velocity = -4
air.velocity = -7,ifelse(var(14)<=0,-14,-10)
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 3000, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3000) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;===========================================================================
;■正義を胸にアリオーソ
[statedef 3100]
type = s
movetype = a
physics = s
anim = 3100
velset = 0,0
ctrl = 0

[state -, varadd];＊正義を胸にアリオーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state 3100, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3100, width]
type = width
trigger1 = 1
player = 60,0
ignorehitpause = 1

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -10

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -30

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -20

[state 3100, superpause]
type = superpause
trigger1 = animelemtime(5) = 0
time = 40
anim = s32500
pos = 7,-41
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3100, stopsnd]
type = stopsnd
trigger1 = animelemtime(6) = 0
channel = 0

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 9,3100
channel = 1
lowpriority = 0

[state 3100, velset]
type = velset
trigger1 = animelemtime(6) >= 0
x = 25

[state 3100, varset]
type = varset
trigger1 = 1
var(20) = 90

[state 3100, changestate]
type = changestate
trigger1 = animtime = 0
value = 3110
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ・突進
[statedef 3110]
type    = s
movetype= a
physics = s

[state 3110, varadd]
type = varadd
trigger1 = var(20) > 0
var(20) = -1

[state 3110, changeanim]
type = changeanim
trigger1 = anim != 3110
value = 3110
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
trigger1 = alive = 1
attr = sca,aa,ap,at
stateno = 3190
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
trigger1 = var(20) <= 0
trigger2 = alive = 0
attr = sca,aa,ap,at
stateno = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110, velset]
type = velset
trigger1 = 1
x = 20

[state 3110, hitdef]
type = hitdef
triggerall = var(20) > 20
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(3) = 0
trigger3 = animelemtime(5) = 0
attr = s,ha
hitflag = maf
guardflag = m
affectteam = e
animtype  = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(12*fvar(1)),4
getpower = 0,0
givepower = 20,5
ground.hittime  = 30
air.hittime = 60
guard.ctrltime = 20
ground.slidetime = 30
pausetime = 10,10
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-50
hitsound = s1,8
guardsound = s2,1
ground.velocity = -35+(frontedgedist<=60)*10
guard.velocity = -7
air.velocity = -5,-1.2
air.fall = 1
guard.cornerpush.veloff = -10
fall.recovertime = 30
envshake.time = 16
envshake.freq = 40
envshake.ampl = 5
kill = 0
guard.kill = 0
fall.kill = 0

[state 3110, hitdef]
type = hitdef
trigger1 = var(20) = 10
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(66*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 12,12
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = 0,-50
hitsound = s1,9
guardsound = s2,1
ground.velocity = -10,-4
guard.velocity = -4
air.velocity = -10,-2
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3110, varset]
type = varset
trigger1 = var(20) <= 10
var(24) = 1

[state 3110, helper]
type = helper
trigger1 = var(20) <= 10
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3110, helper]
type = helper
triggerall = var(20) <= 10
triggerall = movehit = 1
trigger1 = numtarget(3110) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3110, changestate]
type = changestate
trigger1 = var(20) <= 0
value = 3150
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ・終了
[statedef 3150]
type = s
movetype = i
physics = s
anim = 3150
ctrl = 0

[state 3150, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;===========================================================================
;■正義を胸にアリオーソ
[statedef 3101]
type = s
movetype = a
physics = s
anim = 3100
velset = 0,0
ctrl = 0

[state -, varadd];＊正義を胸にアリオーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state 3100, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3100, width]
type = width
trigger1 = 1
player = 60,0
ignorehitpause = 1

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -10

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -30

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -20

[state 3100, superpause]
type = superpause
trigger1 = animelemtime(5) = 0
time = 40
anim = s32600
pos = 7,-41
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -2000

[state 3100, stopsnd]
type = stopsnd
trigger1 = animelemtime(6) = 0
channel = 0

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 9,3100
channel = 1
lowpriority = 0

[state 3100, velset]
type = velset
trigger1 = animelemtime(6) >= 0
x = 25

[state 3100, varset]
type = varset
trigger1 = 1
var(20) = 90

[state 3100, changestate]
type = changestate
trigger1 = animtime = 0
value = 3111
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ・突進
[statedef 3111]
type    = s
movetype= a
physics = s

[state 3110, varadd]
type = varadd
trigger1 = var(20) > 0
var(20) = -1

[state 3110, changeanim]
type = changeanim
trigger1 = anim != 3110
value = 3110
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
trigger1 = alive = 1
attr = sca,aa,ap,at
stateno = 3190
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
trigger1 = var(20) <= 0
trigger2 = alive = 0
attr = sca,aa,ap,at
stateno = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110, velset]
type = velset
trigger1 = 1
x = 20

[state 3110, hitdef]
type = hitdef
triggerall = var(20) > 15
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
trigger3 = animelemtime(3) = 0
trigger4 = animelemtime(4) = 0
trigger5 = animelemtime(5) = 0
trigger6 = animelemtime(6) = 0
attr = s,ha
hitflag = maf
guardflag = m
affectteam = e
animtype  = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(12*fvar(1)),4
getpower = 0,0
givepower = 20,5
ground.hittime  = 30
air.hittime = 60
guard.ctrltime = 20
ground.slidetime = 30
pausetime = 8,8
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-50
hitsound = s1,8
guardsound = s2,1
ground.velocity = -35+(frontedgedist<=60)*10
guard.velocity = -7
air.velocity = -5,-1.2
air.fall = 1
guard.cornerpush.veloff = -10
fall.recovertime = 30
envshake.time = 16
envshake.freq = 40
envshake.ampl = 5
kill = 0
guard.kill = 0
fall.kill = 0

[state 3110, hitdef]
type = hitdef
trigger1 = var(20) = 10
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(66*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 12,12
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = 0,-50
hitsound = s1,9
guardsound = s2,1
ground.velocity = -10,-4
guard.velocity = -4
air.velocity = -10,-2
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3110, varset]
type = varset
trigger1 = var(20) <= 10
var(24) = 1

[state 3110, helper]
type = helper
trigger1 = var(20) <= 10
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3110, helper]
type = helper
triggerall = var(20) <= 10
triggerall = movehit = 1
trigger1 = numtarget(3110) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3110, changestate]
type = changestate
trigger1 = var(20) <= 0
value = 3150

;===========================================================================
;■正義を胸にアリオーソ
[statedef 3102]
type = s
movetype = a
physics = s
anim = 3100
velset = 0,0
ctrl = 0

[state -, varadd];＊正義を胸にアリオーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state 3100, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3100, width]
type = width
trigger1 = 1
player = 60,0
ignorehitpause = 1

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -10

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -30

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -20

[state 3100, superpause]
type = superpause
trigger1 = animelemtime(5) = 0
time = 40
anim = s32700
pos = 7,-41
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3100, stopsnd]
type = stopsnd
trigger1 = animelemtime(6) = 0
channel = 0

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 9,3100
channel = 1
lowpriority = 0

[state 3100, velset]
type = velset
trigger1 = animelemtime(6) >= 0
x = 25

[state 3100, varset]
type = varset
trigger1 = 1
var(20) = 135

[state 3100, changestate]
type = changestate
trigger1 = animtime = 0
value = 3112
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ・突進
[statedef 3112]
type    = s
movetype= a
physics = s

[state 3110, varadd]
type = varadd
trigger1 = var(20) > 0
var(20) = -1

[state 3110, changeanim]
type = changeanim
trigger1 = anim != 3110
value = 3110
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
trigger1 = alive = 1
attr = sca,aa,ap,at
stateno = 3190
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
trigger1 = var(20) <= 0
trigger2 = alive = 0
attr = sca,aa,ap,at
stateno = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110, velset]
type = velset
trigger1 = 1
x = 20

[state 3110, hitdef]
type = hitdef
triggerall = var(20) > 8
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
trigger3 = animelemtime(3) = 0
trigger4 = animelemtime(4) = 0
trigger5 = animelemtime(5) = 0
trigger6 = animelemtime(6) = 0
attr = s,ha
hitflag = maf
guardflag = m
affectteam = e
animtype  = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(12*fvar(1)),4
getpower = 0,0
givepower = 20,5
ground.hittime  = 30
air.hittime = 60
guard.ctrltime = 20
ground.slidetime = 30
pausetime = 5,5
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-50
hitsound = s1,8
guardsound = s2,1
ground.velocity = -35+(frontedgedist<=60)*10
guard.velocity = -7
air.velocity = -5,-1.2
air.fall = 1
guard.cornerpush.veloff = -10
fall.recovertime = 30
envshake.time = 16
envshake.freq = 40
envshake.ampl = 5
kill = 0
guard.kill = 0
fall.kill = 0

[state 3110, hitdef]
type = hitdef
trigger1 = var(20) = 5
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(66*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 12,12
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = 0,-50
hitsound = s1,9
guardsound = s2,1
ground.velocity = -10,-4
guard.velocity = -4
air.velocity = -10,-2
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3110, varset]
type = varset
trigger1 = var(20) <= 5
var(24) = 1

[state 3110, helper]
type = helper
trigger1 = var(20) <= 5
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3110, helper]
type = helper
triggerall = var(20) <= 5
triggerall = movehit = 1
trigger1 = numtarget(3110) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3110, changestate]
type = changestate
trigger1 = var(20) <= 0
value = 3150
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ・ダメージ
[statedef 3190]
type = u
movetype = h
physics = u
ctrl = 0

[state 3190, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 3190,hitoverride]
type = hitoverride
trigger1 = var(20) > 0
attr = sca,aa,ap,at
stateno = 3190
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3190,hitoverride]
type = hitoverride
trigger1 = var(20) <= 0
trigger2 = alive = 0
attr = sca,aa,ap,at
stateno = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3190, changeanim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)
ignorehitpause = 1

[state 3190, palfx]
type = palfx
trigger1 = 1
time = 10
add = 250,0,0
ignorehitpause = 1

[state 3190, turn]
type = turn
trigger1 = p2dist x < 0

[state 3190, changestate]
type = changestate
trigger1 = alive = 1
trigger1 = time > 0
value = 3110
ignorehitpause = 1

[state 3190, changestate]
type = changestate
trigger1 = alive = 0
value = 5050
ignorehitpause = 1


;===========================================================================
;■勇気を乗せてグランディオーソ
[statedef 3200]
type = a
movetype = a
physics = n
ctrl = 0
velset = 0,0

[state -, varadd];＊勇気を乗せてグランディオーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 45
persistent = 0

[state 3200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "grandioso1"
var(7) = 1

[state 3200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "grandioso2"
var(7) = 2

[state 3200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "grandioso3"
var(7) = 3

[state 3200, changeanim]
type = changeanim
trigger1 = time <= 1
value = 1100+(var(7)=2)*30+(var(7)=3)*60

[state 3200, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(4) = 0
time = 40+var(38)*40
anim = s32700
pos = 11+(var(7)=2)*3+(var(7)=3)*6,-38-(var(7)=2)*12-(var(7)=3)*32
sound = s2,100
movetime = 0
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3200, playsnd]
type = playsnd
trigger1 = var(38) = 1
trigger1 = animelemtime(4) = 0
value = 9,3210
channel = 0
ignorehitpause = 1
persistent = 0

[state 3200, explod]
type = explod
trigger1 = var(38) = 1
trigger1 = animelemtime(4) = 0
postype = back
anim = 30000
sprpriority = -3
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, explod]
type = explod
trigger1 = var(38) = 1
trigger1 = var(40) = 1
trigger1 = animelemtime(4) = 0
postype = back
anim = 32000
sprpriority = -5
supermovetime = 999
removetime = 60
removeongethit = 1
scale = 1,1
pos = 0,0

[state 3200, posfreeze]
type = posfreeze
trigger1 = 1

[state 3200, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 3210+(var(7)=2)*10+(var(7)=3)*20
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・対地斬り
[statedef 3210]
type    = a
movetype= a
physics = n
anim = 1110

[state 3210, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 3210, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3210, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3210, posadd]
type = posadd
trigger1 = time = 0
y = -45

[state 3210, velset]
type = velset
trigger1 = time = 0
x = 25
y = 25

[state 3210, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3210, hitdef]
type = hitdef
trigger1 = time = 0
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(70*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,100
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3
guard.velocity = -4
air.velocity = -10,-2
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.1
kill = 0
guard.kill = 1

[state 3210, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3210, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3210) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3210, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3210, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3210, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11110
id = 11110
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3210, changestate]
type = changestate
trigger1 = movehit = 1
value = 3240

[state 3210, changestate]
type = changestate
trigger1 = pos y >= 20
value = 1090
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・水平斬り
[statedef 3220]
type    = a
movetype= a
physics = n
anim = 1010

[state 3220, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 3220, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3220, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3220, posadd]
type = posadd
trigger1 = time = 0
y = -45

[state 3220, velset]
type = velset
trigger1 = time = 0
x = 70

[state 3220, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3220, hitdef]
type = hitdef
trigger1 = time = 0
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(70*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,100
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3
guard.velocity = -4
air.velocity = -10,-2
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.1
kill = 0
guard.kill = 1

[state 3220, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3220, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3220) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3220, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11010
id = 11010
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3220, changestate]
type = changestate
trigger1 = movehit = 1
value = 3240

[state 3220, changestate]
type = changestate
trigger1 = !movehit
trigger1 = time >= 10
value = 1090
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・対空斬り
[statedef 3230]
type    = a
movetype= a
physics = n
anim = 1040

[state 3230, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 3230, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3230, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3230, posadd]
type = posadd
trigger1 = time = 0
y = -45

[state 3230, velset]
type = velset
trigger1 = time = 0
x = 25
y = -25

[state 3230, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3230, hitdef]
type = hitdef
trigger1 = time = 0
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(70*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,100
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3
guard.velocity = -4
air.velocity = -10,-2
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.1
kill = 0
guard.kill = 1

[state 3230, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3230, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3230) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3230, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3230, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3230, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11040
id = 11040
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3230, changestate]
type = changestate
trigger1 = movehit = 1
value = 3240

[state 3230, changestate]
type = changestate
trigger1 = pos y >= 20
value = 1020

[state 3230, changestate]
type = changestate
trigger1 = !movehit
trigger1 = time >= 6
value = 1091
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・追撃１・水平
[statedef 3240]
type    = a
movetype= a
physics = n
anim = 1010
velset = 0,0

[state 3240, varset]
type = varset
trigger1 = 1
var(24) = 0

[state 3240, varset]
type = varset
trigger1 = time = 10
var(18) = 0

[state 3240, varset]
type = varset
trigger1 = time = 10
var(19) = 0

[state 3240, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3240, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3240, assertspecial]
type = assertspecial
trigger1 = time < 30
flag = invisible
ignorehitpause = 1

[state 3240, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3240, posadd]
type = posadd
trigger1 = time = 0
x = -350

[state 3240, posadd]
type = posadd
trigger1 = var(15) = 0
trigger1 = time = 0
y = -50

[state 3240, posset]
type = posset
trigger1 = var(15) != 0
trigger1 = time = 0
y = var(17)+playerid(var(15)),const(size.mid.pos.y)

[state 3240, velset]
type = velset
trigger1 = time = 30
x = 70

[state 3240, playsnd]
type = playsnd
trigger1 = time = 30
value = 2,15

[state 3240, hitdef]
type = hitdef
trigger1 = time = 30
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(40*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3240, helper]
type = helper
trigger1 = movehit = 3
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3240, helper]
type = helper
triggerall = movehit = 3
trigger1 = numtarget(3240) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3240, helper]
type = helper
trigger1 = time = 30
helpertype = normal
name = "blue wave"
stateno = 11010
id = 11010
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, varset]
type = varset
trigger1 = palno = 12
trigger1 = command = "gokuzan"
var(32) = 1

[state 3240, changestate]
type = changestate
trigger1 = time >= 40
value = 3250
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・追撃２・垂直上昇
[statedef 3250]
type    = a
movetype= a
physics = n
anim = 3200
velset = 0,0

[state 3250, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3250, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3250, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = invisible
ignorehitpause = 1

[state 3250, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3250, posadd]
type = posadd
trigger1 = time = 0
y = 350

[state 3250, posset]
type = posset
trigger1 = var(15) != 0
x = var(16)

[state 3250, velset]
type = velset
trigger1 = time = 10
y = -70

[state 3250, playsnd]
type = playsnd
trigger1 = time = 10
value = 2,15

[state 3250, hitdef]
type = hitdef
trigger1 = time = 10
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(40*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -20,-100
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3250, helper]
type = helper
trigger1 = movehit = 3
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3250, helper]
type = helper
triggerall = movehit = 3
trigger1 = numtarget(3250) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3250, helper]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blue wave"
stateno = 11140
id = 11140
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, varset]
type = varset
trigger1 = palno = 12
trigger1 = command = "gokuzan"
var(32) = 1

[state 3250, changestate]
type = changestate
trigger1 = time >= 20
value = 3260
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・追撃３・斜め下降
[statedef 3260]
type    = a
movetype= a
physics = n
anim = 1110
velset = 0,0

[state 3260, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3260, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3260, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = invisible
ignorehitpause = 1

[state 3260, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3260, posset]
type = posset
trigger1 = var(15) = 0
trigger1 = time = 0
x = var(16)-(facing*350)
y = var(17)-400

[state 3260, posset]
type = posset
trigger1 = var(15) != 0
trigger1 = time = 0
x = var(16)-(facing*350)
y = var(17)+playerid(var(15)),const(size.mid.pos.y)-350

[state 3260, velset]
type = velset
trigger1 = time = 10
x = 50
y = 50

[state 3260, playsnd]
type = playsnd
trigger1 = time = 10
value = 2,15

[state 3260, hitdef]
type = hitdef
trigger1 = time = 10
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(40*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,50
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3260, helper]
type = helper
trigger1 = movehit = 3
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3260, helper]
type = helper
triggerall = movehit = 3
trigger1 = numtarget(3260) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3260, helper]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blue wave"
stateno = 11110
id = 11110
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, varset]
type = varset
trigger1 = palno = 12
trigger1 = command = "gokuzan"
var(32) = 1

[state 3260, changestate]
type = changestate
trigger1 = time >= 20
value = 3270
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・追撃４・斜め上昇
[statedef 3270]
type    = a
movetype= a
physics = n
anim = 1040
velset = 0,0

[state 3270, varset]
type = varset
trigger1 = 1
var(24) = 3

[state 3270, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3270, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3270, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = invisible
ignorehitpause = 1

[state 3270, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3270, posset]
type = posset
trigger1 = time = 0
trigger1 = var(15) = 0
x = var(16)-(facing*350)
y = var(17)+300

[state 3270, posset]
type = posset
trigger1 = time = 0
trigger1 = var(15) != 0
x = var(16)-(facing*350)
y = var(17)+playerid(var(15)),const(size.mid.pos.y)+350

[state 3270, velset]
type = velset
trigger1 = time = 10
x = 50
y = -50

[state 3270, playsnd]
type = playsnd
trigger1 = time = 10
value = 2,15

[state 3270, hitdef]
type = hitdef
trigger1 = time = 10
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(40*fvar(1)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 200
air.hittime = 200
guard.ctrltime = 70
ground.slidetime = 70
pausetime = 0,80
sparkno = s6300+random%4
guard.sparkno = 40
sparkxy = -30,-50
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3270, helper]
type = helper
trigger1 = movehit = 3
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3270, helper]
type = helper
triggerall = movehit = 3
trigger1 = numtarget(3270) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3270, helper]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blue wave"
stateno = 11040
id = 11040
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, varset]
type = varset
trigger1 = palno = 12
trigger1 = command = "gokuzan"
var(32) = 1

[state 3270, changestate]
type = changestate
trigger1 = time >= 20
value = ifelse(var(32)=1,3520,3280)
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・追撃５・垂直下降フィニッシュ
[statedef 3280]
type    = a
movetype= a
physics = n
anim = 3210
velset = 0,0

[state 3280, varset]
type = varset
trigger1 = 1
var(24) = 3

[state 3280, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3280, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3280, assertspecial]
type = assertspecial
trigger1 = time < 70
flag = invisible
ignorehitpause = 1

[state 3280, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3280, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,3200
channel = 0

[state 3280, posadd]
type = posadd
trigger1 = time = 0
y = -350

[state 3280, posset]
type = posset
trigger1 = var(15) != 0
x = var(16)

[state 3280, velset]
type = velset
trigger1 = time = 70
y = 70

[state 3280, playsnd]
type = playsnd
trigger1 = time = 70
value = 2,15

[state 3280, hitdef]
type = hitdef
trigger1 = time = 70
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = trip
priority = 5,hit
sprpriority = 1
damage = 120,10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s20001+(var(40)=1)*10
guard.sparkno = 40
sparkxy = -50,100
hitsound = s5,0
guardsound = s2,1
ground.velocity = -8,-4
guard.velocity = -4
air.velocity = -8,-4
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3280, helper]
type = helper
trigger1 = movehit = 3
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, helper]
type = helper
triggerall = movehit = 3
trigger1 = numtarget(3280) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, helper]
type = helper
trigger1 = time = 70
helpertype = normal
name = "blue wave"
stateno = 11170
id = 11170
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, bgpalfx]
type = bgpalfx
trigger1 = movehit = 1
time = 15
add = 256,256,256

[state 3280, changestate]
type = changestate
trigger1 = time >= 80
value = 3290
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・終了
[statedef 3290]
type    = a
movetype= i
physics = n
velset = 0,0

[state 3290, screenbound]
type = screenbound
trigger1 = time < 60
value = 0
movecamera = 0,0

[state 3290, assertspecial]
type = assertspecial
trigger1 = time < 50
flag = invisible
ignorehitpause = 1

[state 3290, bgpalfx]
type = bgpalfx
trigger1 = time = 30
trigger2 = time = 34
time = 2
add = 256,256,256

[state 3290, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3290, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3290, posset]
type = posset
trigger1 = time = 50
y = -10

[state 3290, changeanim]
type = changeanim
trigger1 = time = 50
value = 41

[state 3290, palfx]
type = palfx
trigger1 = time = 50
time = 12
add = 256,256,256

[state 3290, velset]
type = velset
trigger1 = time = 50
y = -5

[state 3290, statetypeset]
type = statetypeset
trigger1 = time = 50
physics = a

;===========================================================================
;■君想うテンペストーソ
[statedef 3300]
type = s
movetype = a
physics = s
anim = 3300
velset = 0,0
ctrl = 0

[state -, varadd];＊君想うテンペストーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 18
persistent = 0

[state 3300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6600
id = 6600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6610
id = 6610
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, superpause]
type = superpause
trigger1 = prevstateno != [1200,1220]
trigger1 = animelemtime(7) = 0
time = 40
anim = s32500
pos = -3,-49
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3300, superpause]
type = superpause
trigger1 = prevstateno = [1200,1220]
trigger1 = animelemtime(1) = 0
time = 70
anim = s32500
pos = -3,-49
sound = s2,100
movetime = 70
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3300, changestate]
type = changestate
trigger1 = animtime = 0
value = 3330
;---------------------------------------------------------------------------
;■君想うテンペストーソ・投擲
[statedef 3330]
type = s
movetype = a
physics = s
anim = 3330
ctrl = 0

[state 3330, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = sca,aa
ignorehitpause = 1

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6600

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6610

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6601
id = 6601
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6611
id = 6611
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,10

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
trigger3 = animelemtime(3) = 0
trigger4 = animelemtime(4) = 0
trigger5 = animelemtime(5) = 0
trigger6 = animelemtime(6) = 0
trigger7 = animelemtime(7) = 0
trigger8 = animelemtime(8) = 0
trigger9 = animelemtime(9) = 0
trigger10 = animelemtime(10) = 0
trigger11 = animelemtime(11) = 0
trigger12 = animelemtime(12) = 0
trigger13 = animelemtime(13) = 0
trigger14 = animelemtime(14) = 0
trigger15 = animelemtime(15) = 0
value = 0,4

[state 3330, helper]
type = helper
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(11) = 0
helpertype = normal
name = "hyper magical sword 1"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*60),-floor(const(size.yscale)*40)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(12) = 0
helpertype = normal
name = "hyper magical sword 2"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*28),-floor(const(size.yscale)*46)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(8) = 0
trigger3 = animelemtime(13) = 0
helpertype = normal
name = "hyper magical sword 3"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*74),-floor(const(size.yscale)*30)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(9) = 0
trigger3 = animelemtime(14) = 0
helpertype = normal
name = "hyper magical sword 4"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*52),-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*71),-floor(const(size.yscale)*14)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6550
id = 6550
pos = -floor(const(size.xscale)*3),-floor(const(size.yscale)*51)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, changestate]
type = changestate
trigger1 = animtime = 0
value = 3350

;===========================================================================
;■君想うテンペストーソL2
[statedef 3301]
type = s
movetype = a
physics = s
anim = 3300
velset = 0,0
ctrl = 0

[state -, varadd];＊君想うテンペストーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 18
persistent = 0

[state 3300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6600
id = 6600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6610
id = 6610
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, superpause]
type = superpause
trigger1 = prevstateno != [1200,1220]
trigger1 = animelemtime(7) = 0
time = 40
anim = s32600
pos = -3,-49
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -2000

[state 3300, superpause]
type = superpause
trigger1 = prevstateno = [1200,1220]
trigger1 = animelemtime(1) = 0
time = 70
anim = s32600
pos = -3,-49
sound = s2,100
movetime = 70
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -2000

[state 3300, changestate]
type = changestate
trigger1 = animtime = 0
value = 3331
;---------------------------------------------------------------------------
;■君想うテンペストーソ・投擲
[statedef 3331]
type = s
movetype = a
physics = s
anim = 3331
ctrl = 0

[state 3330, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = sca,aa
ignorehitpause = 1

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6600

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6610

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6601
id = 6601
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6611
id = 6611
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,10

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
trigger3 = animelemtime(3) = 0
trigger4 = animelemtime(4) = 0
trigger5 = animelemtime(5) = 0
trigger6 = animelemtime(6) = 0
trigger7 = animelemtime(7) = 0
trigger8 = animelemtime(8) = 0
trigger9 = animelemtime(9) = 0
trigger10 = animelemtime(10) = 0
trigger11 = animelemtime(11) = 0
trigger12 = animelemtime(12) = 0
trigger13 = animelemtime(13) = 0
trigger14 = animelemtime(14) = 0
trigger15 = animelemtime(15) = 0
trigger16 = animelemtime(16) = 0
trigger17 = animelemtime(17) = 0
trigger18 = animelemtime(18) = 0
trigger19 = animelemtime(19) = 0
trigger20 = animelemtime(20) = 0
trigger21 = animelemtime(21) = 0
trigger22 = animelemtime(22) = 0
trigger23 = animelemtime(23) = 0
trigger24 = animelemtime(24) = 0
trigger25 = animelemtime(25) = 0
value = 0,4

[state 3330, helper]
type = helper
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(11) = 0
trigger4 = animelemtime(16) = 0
trigger5 = animelemtime(21) = 0
helpertype = normal
name = "hyper magical sword 1"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*60),-floor(const(size.yscale)*40)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(12) = 0
trigger4 = animelemtime(17) = 0
trigger5 = animelemtime(22) = 0
helpertype = normal
name = "hyper magical sword 2"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*28),-floor(const(size.yscale)*46)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(8) = 0
trigger3 = animelemtime(13) = 0
trigger4 = animelemtime(18) = 0
trigger5 = animelemtime(23) = 0
helpertype = normal
name = "hyper magical sword 3"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*74),-floor(const(size.yscale)*30)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(9) = 0
trigger3 = animelemtime(14) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(24) = 0
helpertype = normal
name = "hyper magical sword 4"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*52),-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(20) = 0
trigger5 = animelemtime(25) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*71),-floor(const(size.yscale)*14)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(20) = 0
trigger5 = animelemtime(25) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6550
id = 6550
pos = -floor(const(size.xscale)*3),-floor(const(size.yscale)*51)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, changestate]
type = changestate
trigger1 = animtime = 0
value = 3350

;===========================================================================
;■君想うテンペストーソL3
[statedef 3302]
type = s
movetype = a
physics = s
anim = 3300
velset = 0,0
ctrl = 0

[state -, varadd];＊君想うテンペストーソ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 18
persistent = 0

[state 3300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6600
id = 6600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6610
id = 6610
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, superpause]
type = superpause
trigger1 = prevstateno != [1200,1220]
trigger1 = animelemtime(7) = 0
time = 40
anim = s32700
pos = -3,-49
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3300, superpause]
type = superpause
trigger1 = prevstateno = [1200,1220]
trigger1 = animelemtime(1) = 0
time = 70
anim = s32700
pos = -3,-49
sound = s2,100
movetime = 70
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3300, changestate]
type = changestate
trigger1 = animtime = 0
value = 3332
;---------------------------------------------------------------------------
;■君想うテンペストーソ・投擲
[statedef 3332]
type = s
movetype = a
physics = s
anim = 3332
ctrl = 0

[state 3330, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = sca,aa
ignorehitpause = 1

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6600

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6610

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6601
id = 6601
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6611
id = 6611
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,10

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
trigger3 = animelemtime(3) = 0
trigger4 = animelemtime(4) = 0
trigger5 = animelemtime(5) = 0
trigger6 = animelemtime(6) = 0
trigger7 = animelemtime(7) = 0
trigger8 = animelemtime(8) = 0
trigger9 = animelemtime(9) = 0
trigger10 = animelemtime(10) = 0
trigger11 = animelemtime(11) = 0
trigger12 = animelemtime(12) = 0
trigger13 = animelemtime(13) = 0
trigger14 = animelemtime(14) = 0
trigger15 = animelemtime(15) = 0
trigger11 = animelemtime(11) = 0
trigger12 = animelemtime(12) = 0
trigger13 = animelemtime(13) = 0
trigger14 = animelemtime(14) = 0
trigger15 = animelemtime(15) = 0
trigger16 = animelemtime(16) = 0
trigger17 = animelemtime(17) = 0
trigger18 = animelemtime(18) = 0
trigger19 = animelemtime(19) = 0
trigger20 = animelemtime(20) = 0
trigger21 = animelemtime(21) = 0
trigger22 = animelemtime(22) = 0
trigger23 = animelemtime(23) = 0
trigger24 = animelemtime(24) = 0
trigger25 = animelemtime(25) = 0
trigger26 = animelemtime(26) = 0
trigger27 = animelemtime(27) = 0
trigger28 = animelemtime(28) = 0
trigger29 = animelemtime(29) = 0
trigger30 = animelemtime(30) = 0
trigger31 = animelemtime(31) = 0
trigger32 = animelemtime(32) = 0
trigger33 = animelemtime(33) = 0
trigger34 = animelemtime(34) = 0
trigger35 = animelemtime(35) = 0
value = 0,4

[state 3330, helper]
type = helper
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(11) = 0
trigger4 = animelemtime(16) = 0
trigger5 = animelemtime(21) = 0
trigger6 = animelemtime(26) = 0
trigger7 = animelemtime(31) = 0
helpertype = normal
name = "hyper magical sword 1"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*60),-floor(const(size.yscale)*40)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(12) = 0
trigger4 = animelemtime(17) = 0
trigger5 = animelemtime(22) = 0
trigger6 = animelemtime(27) = 0
trigger7 = animelemtime(32) = 0
helpertype = normal
name = "hyper magical sword 2"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*28),-floor(const(size.yscale)*46)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(8) = 0
trigger3 = animelemtime(13) = 0
trigger4 = animelemtime(18) = 0
trigger5 = animelemtime(23) = 0
trigger6 = animelemtime(28) = 0
trigger7 = animelemtime(33) = 0
helpertype = normal
name = "hyper magical sword 3"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*74),-floor(const(size.yscale)*30)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(9) = 0
trigger3 = animelemtime(14) = 0
trigger4 = animelemtime(19) = 0
trigger5 = animelemtime(24) = 0
trigger6 = animelemtime(29) = 0
trigger7 = animelemtime(34) = 0
helpertype = normal
name = "hyper magical sword 4"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*52),-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(20) = 0
trigger5 = animelemtime(25) = 0
trigger6 = animelemtime(30) = 0
trigger7 = animelemtime(35) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6550
id = 6550
pos = floor(const(size.xscale)*71),-floor(const(size.yscale)*14)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(20) = 0
trigger5 = animelemtime(25) = 0
trigger6 = animelemtime(30) = 0
trigger7 = animelemtime(35) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6550
id = 6550
pos = -floor(const(size.xscale)*3),-floor(const(size.yscale)*51)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, changestate]
type = changestate
trigger1 = animtime = 0
value = 3350

;---------------------------------------------------------------------------
;■君想うテンペストーソ・終了
[statedef 3350]
type = s
movetype = i
physics = s
anim = 3350
ctrl = 0

[state 3350, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■暴力暗殺
[statedef 3400]
type = s
physics = s
anim = 3400
velset = 0,0
ctrl = 0
poweradd = 0

[state 3400, statetypeset]
type = statetypeset
trigger1 = animelemtime(2) < 0
movetype = i

[state 3400, statetypeset]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = a

[state 3400, poweradd]
type = poweradd
trigger1 = time = 0
value = -4000

[state 3400, palfx]
type = palfx
trigger1 = time = 0
time = 70
sinadd = -200,-200,-200,140

[state 3400, playsnd]
type = playsnd
trigger1 = time = 0
value = 3,0

[state 3400, reversaldef]
type = reversaldef
trigger1 = 1
reversal.attr = sca,aa;,at
pausetime = 10,10
p1stateno = 3410
p2stateno = 3490
id=3400

[state 3400, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■暴力暗殺・鍔迫り合い
[statedef 3410]
type = s
movetype = a
physics = s
anim = 3410
ctrl = 0

[state 3000, helper]
type = varset
triggerall = alive
triggerall = power >= 5000
triggerall = var(51) = 0
triggerall = Life <= Const(Data.Life)/2
triggerall = var(40) >= 1
trigger1 = var(50) = 0
trigger1 = command = "JingennoTachi"
trigger2 = var(50) >= 1
trigger2 = random < 250
v = 30
value = 1
ignorehitpause = 1

[state 3410, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[state 3410, targetfacing]
type = targetfacing
trigger1 = time = 0
value = -1
id = 3400

[state 3410, assertspecial]
type = assertspecial
trigger1 = time > 130
flag = nofg
ignorehitpause = 1

[state 3410, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 130
add = var(21),var(22),var(23)

[state 3410, width]
type = width
trigger1 = 1
player = 60,0
edge = 160,0

[state 3410, helper]
type = helper
trigger1 = time = 3
helpertype = normal
name = "search & bind"
id = 7500
stateno = 7500
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3410, envshake]
type = envshake
trigger1 = time = 70
time = 200
freq = 60
ampl = -4
phase = 4

[state 3410, palfx]
type = palfx
trigger1 = time > 40
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3410, helper]
type = helper
trigger1 = time = 55
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.18"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*40)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.18*const(size.xscale)
size.yscale = 0.18*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 60
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.23"
stateno = 21501
id = 21501
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.23*const(size.xscale)
size.yscale = 0.23*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 75
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.3"
stateno = 21500
id = 21500
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*85)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.3*const(size.xscale)
size.yscale = 0.3*const(size.yscale)

[state 3410, changeanim]
type = changeanim
trigger1 = time = 120
value = 3415
ignorehitpause = 1

[state 3410, explod]
type = explod
trigger1 = time = 120
anim = 23400
id = 23400
pos = ceil(p2dist x)/2,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 3410, explod]
type = explod
trigger1 = time = 120
anim = 23401
id = 23401
pos = ceil(p2dist x)/2,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 3410, gamemakeanim]
type = gamemakeanim
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
value = 2
pos = 70,-60
random = 10

[state 3410, playsnd]
type = playsnd
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
value = 6,40

[state 3410, playsnd]
type = playsnd
trigger1 = time = 40
value = 3,4

[state 3410, playsnd]
type = playsnd
trigger1 = time = 80
value = 6,41

[state 3410, playsnd]
type = playsnd
trigger1 = time = 170
value = 9,3400
channel = 0
;lowpriority = 1

[state 3410, changestate]
type = changestate
trigger1 = time = 240
value = ifelse(var(30),3415,3420)

[state 3410, changestate]
type = changestate
trigger1 = numtarget(3400) = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3408]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
poweradd = 0
velset = 0,0

[State 3550, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[state 3550, 1]
type = Nothitby
trigger1 = 1
value = SCA

[state 3550, 9]
type = changeanim
trigger1 = time = 0 
value = 5002

[state 3550, 9]
type = selfstate
trigger1 = pos y >= 0 && vel y > 0 && time > 5
value = 5030

[state 3550, 9]
type = ChangeState
trigger1 = time > 250
value = 3409
;---------------------------------------------------------------------------
[Statedef 3409]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
poweradd = 0
velset = 0,0
anim = 3409

[State 3550, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[state 3550, 1]
type = Nothitby
trigger1 = 1
value = SCA

[State 1200, Reversal]
type = ReversalDef
trigger1 = Time >= 0
attr = S, HA
reversal.attr = SCA, NA, SA ,HA ,NT ,ST, HT
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1facing = 1
p1stateno = 3410
p2stateno = 3490
id=3400

[state 3550, 9]
type = changestate
trigger1 = time = 300
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■暴力暗殺・反撃
[statedef 3415]
type = s
movetype = a
physics = s
velset = 0,0
anim = 3420
ctrl = 0

[state 3000, helper]
type = posset
trigger1 = time = 0
y = 0

[state 3000, helper]
type = varset
trigger1 = time = 0
v = 51
value = 1

[state 3420, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3420, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3420, bgpalfx]
type = bgpalfx
trigger1 = animelemtime(3) >= 0
time = 1
add = 200,-100,-100

[state 3420, pause]
type = pause
trigger1 = animelemtime(4) > 0
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3420, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,5

[state 3420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 1,10

[state 3420, width]
type = width
trigger1 = 1
player = 30,0

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 35

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 25

[state 3420, posadd]
type = posadd
trigger1 = animtime = 0
x = -20

[state 3420, targetstate]
type = targetstate
trigger1 = prevstateno = 3410
trigger1 = numtarget(3400) > 0
trigger1 = animelemtime(3) = 0
value = 3491

[state 3420, changestate]
type = changestate
trigger1 = animelem = 5
value = 3610
;---------------------------------------------------------------------------
;■暴力暗殺・反撃
[statedef 3420]
type = s
movetype = a
physics = s
anim = 3420
ctrl = 0

[state 3420, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3420, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3420, bgpalfx]
type = bgpalfx
trigger1 = animelemtime(3) >= 0
time = 1
add = 200,-100,-100

[state 3420, pause]
type = pause
trigger1 = animelemtime(4) > 0
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3420, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,5

[state 3420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 1,10

[state 3420, width]
type = width
trigger1 = 1
player = 30,0

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 35

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = 25

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -20

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -20

[state 3420, posadd]
type = posadd
trigger1 = animtime = 0
x = -20

[state 3420, targetstate]
type = targetstate
trigger1 = numtarget(3400) > 0
trigger1 = animelemtime(3) = 0
value = 3491

[state 3420, changestate]
type = changestate
trigger1 = numtarget(3400) = 0
value = 0
ctrl = 1

[state 3420, changestate]
type = changestate
trigger1 = animtime = 0
value = 3430
;---------------------------------------------------------------------------
;■暴力暗殺・クラウチングスタート
[statedef 3430]
type = s
movetype = i
physics = s
anim = 3430
ctrl = 0

[state 3430, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg

[state 3430, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3430, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3430, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3430, changestate]
type = changestate
trigger1 = animtime = 0
value = 3440
;---------------------------------------------------------------------------
;■暴力暗殺・ダッシュ
[statedef 3440]
type = s
movetype = i
physics = s
anim = 3440
ctrl = 0

[state 3440, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3440, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3440, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3440, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3440, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)*2

[state 3440, changestate]
type = changestate
trigger1 = var(25) = [-100,100]
trigger2 = time > 80
value = 3450
;---------------------------------------------------------------------------
;■暴力暗殺・ジャンプスタート
[statedef 3450]
type = s
movetype = i
physics = s
anim = 3450
ctrl = 0

[state 3450, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3450, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3450, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3450, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3450, changestate]
type = changestate
trigger1 = animtime = 0
value = 3451
;---------------------------------------------------------------------------
;■暴力暗殺・ジャンプ
[statedef 3451]
type = a
movetype = i
physics = n
anim = 3451
ctrl = 0

[state 3451, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3491, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3451, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3451, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3451, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3451, velset]
type = velset
trigger1 = time = 0
x = 4
y = -7

[state 3451, veladd]
type = veladd
trigger1 = time > 10
y = const(movement.yaccel)

[state 3451, changestate]
type = changestate
trigger1 = time = 40
value = 3455
;---------------------------------------------------------------------------
;■暴力暗殺・ジャンプ斬り
[statedef 3455]
type = a
movetype = a
physics = n
anim = 3455
ctrl = 0

[state 3455, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3455, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3455, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3455, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3455, veladd]
type = veladd
trigger1 = 1
x = 1

[state 3455, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)*2

[state 3455, playsnd]
type = playsnd
trigger1 = time = 0
value = 0,5

[state 3455, playsnd]
type = playsnd
trigger1 = time = 1
value = 1,10

[state 3455, envshake]
type = envshake
trigger1 = time = 1
time = 40
freq = 60
ampl = -4
phase = 4

[state 3455, gamemakeanim]
type = gamemakeanim
trigger1 = time = 0
value = 2
pos = 70,-40
random = 10

[state 3455, targetstate]
type = targetstate
trigger1 = numtarget(3400) > 0
trigger1 = time = 0
value = 3492

[state 3455, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3459
;---------------------------------------------------------------------------
;■暴力暗殺・着地
[statedef 3459]
type = s
movetype = i
physics = s
anim = 3459
velset = 0,0
ctrl = 0

[state 3459, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3459, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg

[state 3459, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3459, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3459, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 3459, changestate]
type = changestate
trigger1 = animtime = 0
value = 3460
;---------------------------------------------------------------------------
;■暴力暗殺・狂い斬り
[statedef 3460]
type = s
movetype = a
physics = s
anim = 3460
ctrl = 0

[state 3460, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3460, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3460, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3460, varadd]
type = varadd
trigger1 = time = 1
var(7) = 1
persistent = 0

[state 3460, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 7,9

[state 3460, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = 0,8

[state 3460, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(9) = 0
value = 0,5

[state 3460, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 1,var(5)

[state 3460, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 9,3410+var(6)
channel = 0
lowpriority = 1

[state 3460, explod]
type = explod
triggerall = var(39) != 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
anim = 29000
id = 29000
pos = ifelse(frontedgedist<50,-floor(const(size.xscale)*50),0),0
postype = p2
random = 30,0
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0;1

[state 3460, envshake]
type = envshake
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
time = 20
freq = 60
ampl = -4
phase = 4

[state 3460, targetbind]
type = targetbind
triggerall = numtarget(3400) > 0
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
time = 1
id = 3400
pos = 40,0

[state 3460, targetstate]
type = targetstate
triggerall = numtarget(3400) > 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 3496

[state 3460, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(7)>=3,3470,3460)
;---------------------------------------------------------------------------
;■暴力暗殺・狂い斬りフィニッシュ
[statedef 3470]
type = s
movetype = a
physics = s
anim = 3470
ctrl = 0

[state 3470, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3470, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3470, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3470, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3470, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,3420
channel = 0
;lowpriority = 1

[state 3470, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 30
value = 0,6

[state 3470, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 1,10

[state 3470, envshake]
type = envshake
trigger1 = animelemtime(6) = 0
time = 60
freq = 70
ampl = -4
phase = 4

[state 3470, explod]
type = explod
triggerall = var(39) != 0
trigger1 = animelemtime(6) = 0
anim = 29000
id = 29000
pos = ifelse(frontedgedist<50,-floor(const(size.xscale)*50),0),0
random = 30,0
postype = p2
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0;1

[state 3470, varset]
type = varset
trigger1 = target(3400),alive = 0
trigger1 = var(39) = 2
trigger1 = matchover
var(27) = 1

[State 0, Helper]
type = Helper
trigger1 = var(33) = 0
trigger1 = win
trigger1 = !numhelper(3499)
trigger1 = matchover
helpertype = normal
name = "AWESOME"
ID = 3499
stateno = 3499
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[state 3470, targetstate]
type = targetstate
triggerall = numtarget(3400) > 0
trigger1 = animelemtime(6) = 0
value = 3497

[state 3470, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■暴力暗殺・やられ１・鍔迫り合い
[statedef 3490]
type = s
movetype = h
physics = n
ctrl = 0

[state 3490, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3490, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3490, palfx]
type = palfx
trigger1 = time > 40
trigger1 = time <= 100
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3490, palfx]
type = palfx
trigger1 = time > 100
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3490, width]
type = width
trigger1 = 1
player = 30,0
edge = 0,100

[state 3490, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3490, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 3490, velset]
type = velset
trigger1 = 1
x = 0
y = 0

[state 3490, changeanim]
type = changeanim
trigger1 = 1
elem = animelemno(0)
value = anim
ignorehitpause = 1

[state 3490, selfstate]
type = selfstate
trigger1 = time > 300
trigger1 = !gethitvar(isbound)
value = 5120
;---------------------------------------------------------------------------
;■暴力暗殺・やられ２・吹き飛び大
[statedef 3491]
type = a
movetype = h
physics = n
ctrl = 0

[state 3491, lifeadd]
type = lifeadd
trigger1 = time = 0
value = -ceil(lifemax*0.1)
absolute = 1
kill = 0

[state 3491, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3491, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3491, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3491, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3491, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3491, changeanim]
type = changeanim
trigger1 = time = 0
value = 5030
ignorehitpause = 1

[state 3491, changeanim]
type = changeanim
trigger1 = anim = 5030
trigger1 = animtime = 0
trigger1 = selfanimexist(5035) = 1
value = 5035
ignorehitpause = 1

[state 3491, changeanim]
type = changeanim
trigger1 = anim = 5035
trigger1 = animtime = 0
trigger2 = anim = 5030
trigger2 = animtime = 0
trigger2 = selfanimexist(5035) != 1
value = 5050
ignorehitpause = 1

[state 3491, gamemakeanim]
type = gamemakeanim
trigger1 = time = 0
value = 2
pos = const(size.mid.pos.x),const(size.mid.pos.y)
random = 10

[state 3491, velset]
type = velset
trigger1 = time = 0
x = -15
y = -7

[state 3491, veladd]
type = velset
trigger1 = time > 10
y = 0.4
;---------------------------------------------------------------------------
;■暴力暗殺・やられ３・叩き落とされる
[statedef 3492]
type = a
movetype = h
physics = n
ctrl = 0
anim = 5030

[state 3492, lifeadd]
type = lifeadd
trigger1 = time = 0
value = -ceil(lifemax*0.1)
absolute = 1
kill = 0

[state 3492, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3492, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3492, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3492, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3492, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3492, velset]
type = velset
trigger1 = time = 0
x = -2
y = 16

[state 3492, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3493
;---------------------------------------------------------------------------
;■暴力暗殺・やられ４・激突
[statedef 3493]
type    = l
movetype= h
physics = n
anim = 5100

[state 3493, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3493, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3493, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3493, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3493, posset]
type = posset
trigger1 = time = 0
y = 0

[state 3493, velset]
type = velset
trigger1 = time = 0
;x = 0
y = 0

[state 3493, velmul]
type = velmul
trigger1 = time = 0
x = 0.75

[state 3493, gamemakeanim]
type = gamemakeanim
trigger1 = time = 1
value = 62
pos = 0,0

[state 3493, playsnd]
type = playsnd
trigger1 = time = 1
value = f7,2

[state 3493, posfreeze]
type = posfreeze
trigger1 = 1

[state 3493, changestate]
type = changestate
trigger1 = animtime = 0
value = 3494
;---------------------------------------------------------------------------
;■暴力暗殺・やられ５・フォールバウンド
[statedef 3494]
type    = l
movetype= h
physics = n
anim = 5160

[state 3494, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3494, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3494, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3494, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3494, veladd]
type = veladd
trigger1 = time = 0
y = -4

[state 3494, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 3494, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3495
;---------------------------------------------------------------------------
;■暴力暗殺・やられ６・ニュートラルダウン
[statedef 3495]
type    = l
movetype= h
physics = n
anim = 5110
velset = 0,0

[state 3495, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3495, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3495, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3495, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3495, posset]
type = posset
trigger1 = 1
y = 0
;---------------------------------------------------------------------------
;■暴力暗殺・やられ７・苦しむ
[statedef 3496]
type    = l
movetype= h
physics = n
anim = 5080

[state 3496, lifeadd]
type = lifeadd
trigger1 = time = 0
value = -ceil(lifemax*0.05)
absolute = 1
kill = 0

[state 3496, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3496, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3496, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3496, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3496, posset]
type = posset
trigger1 = 1
y = 0

[state 3496, changestate]
type = changestate
trigger1 = animtime = 0
trigger2 = time >= 12
value = 3495
;---------------------------------------------------------------------------
;■暴力暗殺・やられ８・フィニッシュやられ
[statedef 3497]
type    = l
movetype= h
physics = n
anim = 5080
velset = 0,0

[state 3497, lifeadd]
type = lifeadd
trigger1 = time = 0
value = -ceil(lifemax*0.1)
absolute = 1

[state 3497, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger2 = numenemy > 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3497, palfx]
type = palfx
trigger1 = time < 80
time = 900
add = -200,-200,-200
ignorehitpause = 1

[state 3497, palfx]
type = palfx
trigger1 = alive = 1
trigger1 = time = 80
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3497, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3497, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3497, posset]
type = posset
trigger1 = 1
y = 0

[state 3497, changeanim]
type = changeanim
trigger1 = anim = 5080
trigger1 = animtime = 0
trigger2 = time >= 24
value = 5110
ignorehitpause = 1

[state 3497, selfstate]
type = selfstate
trigger1 = alive = 1
trigger1 = time = 80
value = 5110

[state 3497, changestate]
type = changestate
trigger1 = time = 80
value = 5110

;---------------------------------------------------------------------------
; BONK
[Statedef 3499]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 1
ctrl = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 180
freq = 255
ampl = -15

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3491
ID = 3931
pos = 0,0
postype = left
bindtime = 1
random = 0,0
removetime = -1
supermovetime = 180
pausemovetime = 180
scale = 0.5,0.5
sprpriority = -5
;ownpal = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3492
ID = 3932
pos = 0,0
postype = left
bindtime = 1
random = 0,0
removetime = -1
supermovetime = 180
pausemovetime = 180
scale = 0.5,0.5
sprpriority = -2
;ownpal = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3490
ID = 3930
pos = 160,120
postype = left
bindtime = 1
random = 0,0
removetime = -1
supermovetime = 120
pausemovetime = 120
scale = 1,1
sprpriority = -1
;ownpal = 0
ignorehitpause = 1
[State PFX R]
type = VarRandom
trigger1 = numexplod(3930)
v = 0
range = 2,300
[State PFX G]
type = VarRandom
trigger1 = numexplod(3930)
v = 1
range = 2,300
[State PFX B]
type = VarRandom
trigger1 = numexplod(3930)
v = 2
range = 2,300
[State PFX C]
type = VarRandom
trigger1 = numexplod(3930)
v = 3
range = 2,250
[State PFX C]
type = VarRandom
trigger1 = numexplod(3930)
v = 4
range = -100,100
[State PFX C]
type = VarRandom
trigger1 = numexplod(3930)
v = 5
range = -100,100
[State 0, VarSet]
type = VarSet
trigger1 = numexplod(3930)
fvar(4) = var(4)
[State 0, VarSet]
type = VarSet
trigger1 = numexplod(3930)
fvar(5) = var(5)
[State 0, AllPalFX]
type = AllPalFX
trigger1 = numexplod(3930)
time = 2
mul = var(0),var(1),var(2)
invertall = ifelse(random<500,0,1)
color = var(3)
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3930)
ID = 3930
pos = 160,120
postype = left
bindtime = 1
random = 30,30
supermovetime = 120
pausemovetime = 120
scale = fvar(4)/100,fvar(5)/100
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S6666,3
volume = 255
loop = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nomusic
flag3 = nobardisplay
ignorehitpause = 1
;===========================================================================
;■無名の斬極
[Statedef 3500]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1000

;[state -, varadd];＊勇気を乗せてグランディオーソ、の業
;type = varadd
;trigger1 = var(40) = 0
;trigger1 = time = 1
;var(49) = 45
;persistent = 0

[state 3200, varset]
type = varset
trigger1 = 1
var(7) = 1

;[state 3200, changeanim]
;type = changeanim
;trigger1 = time <= 1
;value = 1130

[state 3200, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(5) = 0
time = 40+var(38)*40
anim = s32800
pos = 11+(var(7)=2)*3+(var(7)=3)*6,-38-(var(7)=2)*12-(var(7)=3)*32
sound = s2,100
movetime = 0
darken = 1;var(40)!=1
unhittable = 1
p2defmul = 1
poweradd = -5000

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 9,3220
channel = 0
ignorehitpause = 1
persistent = 0

[state 3200, explod]
type = explod
trigger1 = animelemtime(5) = 0
postype = back
anim = 30010
sprpriority = -3
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, explod]
type = explod
trigger1 = animelemtime(5) = 0
postype = back
anim = 32000
sprpriority = -5
supermovetime = 999
removetime = 60
removeongethit = 1
scale = 1,1
pos = 0,0

[state 3200, posfreeze]
type = posfreeze
trigger1 = 1

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 3510

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 3509]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5210, 3]
type = playerpush
trigger1 = 1
value = 0

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = time = 21
value = 3501
;===========================================================================
;■無名の斬極
[Statedef 3501]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1130

;[state -, varadd];＊勇気を乗せてグランディオーソ、の業
;type = varadd
;trigger1 = var(40) = 0
;trigger1 = time = 1
;var(49) = 45
;persistent = 0

[state 3200, varset]
type = varset
trigger1 = 1
var(7) = 2

;[state 3200, changeanim]
;type = changeanim
;trigger1 = time <= 1
;value = 1130

[state 3200, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(4) = 0
time = 40+var(38)*40
anim = s32800
pos = 11+(var(7)=2)*3+(var(7)=3)*6,-38-(var(7)=2)*12-(var(7)=3)*32
sound = s2,100
movetime = 0
darken = 1;var(40)!=1
unhittable = 1
p2defmul = 1
poweradd = -5000

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,3220
channel = 0
ignorehitpause = 1
persistent = 0

[state 3200, explod]
type = explod
trigger1 = animelemtime(4) = 0
postype = back
anim = 30010
sprpriority = -3
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, explod]
type = explod
trigger1 = animelemtime(4) = 0
postype = back
anim = 32000
sprpriority = -5
supermovetime = 999
removetime = 60
removeongethit = 1
scale = 1,1
pos = 0,0

[state 3200, posfreeze]
type = posfreeze
trigger1 = 1

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 3510
;---------------------------------------------------------------------------
;■無名の斬極
[statedef 3510]
type    = a
movetype= a
physics = n
anim = 3990

[state 3200, superpause]
type = Pause
trigger1 = time = 0
time = 10
movetime = 10

[State 6020, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[state 3220, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3220, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3220, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3200, explod]
type = explod
trigger1 = time = 0
postype = p1
anim = 1010
sprpriority = -5
supermovetime = 999
pausemovetime = 999
removetime = 10
removeongethit = 1
scale = 1,1
pos = 0,-50
vel = 70,0

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3220, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11010
id = 11010
pos = 0,-50
postype = p1
facing = 1
ownpal = 1
supermovetime = 99
pausemovetime = 99
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3210, changestate]
type = changestate
trigger1 = time >= 10
value = 3545
;===========================================================================
;■無名の斬極
[Statedef 3520]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1

[state 3200, varset]
type = varset
trigger1 = 1
var(7) = 1

[state 3200, varset]
type = varset
trigger1 = 1
var(32) = 0

[state 3200, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3200, nothitby]
type = posset
trigger1 = 1
x = 0
y = 0

[state 3200, superpause]
type = superpause
trigger1 = time = 0
time = 75
anim = -1
pos = 11+(var(7)=2)*3+(var(7)=3)*6,-38-(var(7)=2)*12-(var(7)=3)*32
sound = s2,100
movetime = 75
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -5000

[state 3200, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,3220
channel = 0
ignorehitpause = 1
persistent = 0

[state 3200, explod]
type = explod
trigger1 = time = 0
postype = p2
anim = 32800
sprpriority = 9
supermovetime = 999
removetime = -2
removeongethit = 1
pos = 0,-50
bindtime = -1

[state 3200, explod]
type = explod
trigger1 = time = 0
postype = back
anim = 30010
sprpriority = -3
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0
bindtime = -1

[state 3200, explod]
type = explod
trigger1 = time = 0
postype = back
anim = 32000
sprpriority = -5
supermovetime = 999
removetime = 60
removeongethit = 1
scale = 1,1
pos = 0,0
bindtime = -1

[state 3200, posfreeze]
type = posfreeze
trigger1 = 1

[state 3200, changestate]
type = changestate
trigger1 = time = 75
value = 3525
;---------------------------------------------------------------------------
;■無名の斬極
[statedef 3525]
type    = a
movetype= a
physics = n
anim = 1

[state 3200, superpause]
type = Pause
trigger1 = time = 0
time = 10
movetime = 10

[State 6020, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[state 3220, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3220, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1


[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3210, changestate]
type = changestate
trigger1 = time >= 10
value = 3545


;---------------------------------------------------------------------------
;■無名の斬極・追撃１
[statedef 3545]
type    = a
movetype= a
physics = n
anim = 3990
velset = 0,0

[State 6020, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[state 3240, varset]
type = varset
trigger1 = 1
var(24) = 10

[state 3240, varset]
type = varset
trigger1 = time = 10
var(18) = 0

[state 3240, varset]
type = varset
trigger1 = time = 10
var(19) = 0

[state 3240, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3240, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3240, assertspecial]
type = assertspecial
trigger1 = time < 30
flag = invisible
ignorehitpause = 1

[state 3240, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3200, superpause]
type = Pause
trigger1 = time = 0
time = 30
movetime = 30

[state 3240, playsnd]
type = playsnd
trigger1 = time = [30,130]
trigger1 = timemod = 10,0
value = 2,15
channel = 7
volume = 255

[state 3240, playsnd]
type = playsnd
trigger1 = time = [135,250]
trigger1 = timemod = 5,0
value = 2,15
channel = 7
volume = 255
freqmul = 1.25

[state 3240, playsnd]
type = playsnd
trigger1 = time = [253,400]
trigger1 = timemod = 3,0
value = 2,15
channel = 7
volume = 255
freqmul = 1.50

[state 3240, hitdef]
type = Projectile
trigger1 = time = [35,135]
trigger1 = timemod = 10,0
trigger2 = time = [140,255]
trigger2 = timemod = 5,0
trigger3 = time = [258,405]
trigger3 = timemod = 3,0
ownpal = 1
projID = 3299
projanim = 3999
projremove = 0
projremovetime = 1
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p2
velocity = 0,0
offset = 0,0
Attr = A,HA
hitflag = MAFDLH
guardflag = MA
affectteam = e
animtype = up
ground.type = low
priority = 7,hit
sprpriority = 1
damage = 5+random%5,0
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,250
sparkno = s1
guard.sparkno = s1
sparkxy = 0+(floor(p2bodydist X)),-60+(floor(p2bodydist Y))
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0
p2stateno = 3570

[state 3300, explod]
type = explod
trigger1 = projhit3299 = 1
id = 11000
anim = 26300+random%4
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1

[state 3300, explod]
type = explod
trigger1 = projguarded3299 = 1
id = 11000
anim = f40
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1

[state 3240, playsnd]
type = varadd
triggerall = palno = [1,11]
triggerall = var(50) != 0
triggerall = time = [35,405]
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
v = 31
value = 8

[state 3240, playsnd]
type = varadd
triggerall = palno = [1,11]
triggerall = var(50) >= 1
triggerall = time = [35,405]
trigger1 = timemod = 25,0 && var(50) = 1
trigger2 = timemod = 20,0 && var(50) = 2
trigger3 = timemod = 15,0 && var(50) = 3
trigger4 = timemod = 10,0 && var(50) = 4
trigger5 = timemod = 5,0 && var(50) >= 5
v = 31
value = 8

[state 3240, playsnd]
type = varset
trigger1 = palno = 12
v = 31
value = 300

[state 3300, explod]
type = explod
trigger1 = time = [35,130]
trigger1 = timemod = 40,0
trigger2 = time = [140,250]
trigger2 = timemod = 20,0
trigger3 = time = [253,400]
trigger3 = timemod = 12,0
id = 11000
anim = ifelse(random%2,11030,11031)
pos = 160,120
postype = left
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = [35,130]
trigger1 = timemod = 40,10
trigger2 = time = [140,250]
trigger2 = timemod = 20,5
trigger3 = time = [253,400]
trigger3 = timemod = 12,3
id = 11000
anim = ifelse(random%2,11060,11061)
pos = 160,120
postype = left
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = [35,130]
trigger1 = timemod = 40,20
trigger2 = time = [140,250]
trigger2 = timemod = 20,10
trigger3 = time = [253,400]
trigger3 = timemod = 12,6
id = 11000
anim = ifelse(random%2,11130,11131)
pos = 160,120
postype = left
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = [35,130]
trigger1 = timemod = 40,30
trigger2 = time = [140,250]
trigger2 = timemod = 20,15
trigger3 = time = [253,400]
trigger3 = timemod = 12,9
id = 11000
anim = ifelse(random%2,11160,11161)
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3240, helper]
type = helper
trigger1 = projhit3299 = 1
helpertype = normal
name = "kirakira1"
id = 20000
stateno = 20000
pos = 0,-50
postype = p2
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3240, helper]
type = helper
triggerall = projhit3299 = 1
trigger1 = numtarget(3240) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira2"
id = 20001
stateno = 20001
pos = 0,-50
postype = p2
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 4020, Rasetsu]
type = Helper
trigger1 = time = [35,405]
trigger1 = timemod = 10,0
helpertype = normal
name = "Kishin Raimei"
ID = 3580
pos = ceil(P2Dist X + var(48)),ceil(P2Dist Y - var(47))
ownpal = 1
stateno = 3580

[State 4020, Rasetsu]
type = Helper
trigger1 = time = [145,405]
trigger1 = timemod = 10,0
helpertype = normal
name = "Kishin Raimei"
ID = 3580
pos = ceil(P2Dist X + var(48)),ceil(P2Dist Y - var(47))
ownpal = 1
stateno = 3580

[State 4020, Rasetsu]
type = Helper
trigger1 = time = [255,405]
trigger1 = timemod = 10,0
helpertype = normal
name = "Kishin Raimei"
ID = 3580
pos = ceil(P2Dist X + var(48)),ceil(P2Dist Y - var(47))
ownpal = 1
stateno = 3580

[State 17500, VarSet]
type = VarRandom
trigger1 = 1
v = 46
range = 0,180

[State 17500, VarSet]
type = VarRandom
trigger1 = 1
v = 47
range = 20,100

[State 17500, VarSet]
type = VarRandom
trigger1 = 1
v = 48
range = -50,50

[state 3240, changestate]
type = changestate
trigger1 = time >= 408
value = 3555
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・追撃５・垂直下降フィニッシュ
[statedef 3555]
type    = a
movetype= a
physics = n
anim = 3990
velset = 0,0

[State 6020, BGPalFX]
type = BGPalFX
trigger1 = 1
color = 0
invertall = 1
time = 1
ignorehitpause = 1

[state 3280, varset]
type = varset
trigger1 = 1
var(24) = 13

[state 3280, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3280, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3280, assertspecial]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[state 3280, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3280, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,3200
channel = 0

[state 3280, posadd]
type = posadd
trigger1 = time = 0
y = -350

[state 3280, posset]
type = posset
trigger1 = var(15) != 0
x = var(16)

[state 3280, velset]
type = velset
trigger1 = time = 70
y = 70

[state 3280, playsnd]
type = playsnd
trigger1 = time = 75
value = 2,15

[state 3240, hitdef]
type = Projectile
trigger1 = var(31) < 200
trigger1 = time = 75
ownpal = 1
projID = 3299
projanim = 3999
projremove = 0
projremovetime = 1
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p2
velocity = 0,0
offset = 0,0
attr = a,ha
hitflag = MAFDLH
guardflag = ma
affectteam = e
animtype = up
ground.type = trip
priority = 7,hit
sprpriority = 9
damage = 300+var(31),1
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s26300+random%4
guard.sparkno = 40
sparkxy = 0+(floor(p2bodydist X)),-60+(floor(p2bodydist Y))
hitsound = s5,0
guardsound = s2,1
ground.velocity = -8,-4
guard.velocity = -4
air.velocity = -8,-4
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35
p2stateno = 3571

[state 3240, hitdef]
type = Projectile
trigger1 = var(31) >= 200
trigger1 = time = 75
ownpal = 1
projID = 3299
projanim = 3999
projremove = 0
projremovetime = 1
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p2
velocity = 0,0
offset = 0,0
attr = a,ha
hitflag = MAFDLH
guardflag = M
animtype = up
ground.type = trip
priority = 7,hit
sprpriority = 9
damage = ceil(0.5*enemy,const(data.life))*enemy,const(data.defence)/100, 5
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s20001+(var(40))*10
guard.sparkno = 40
sparkxy = 0+(floor(p2bodydist X)),-60+(floor(p2bodydist Y))
hitsound = s5,0
guardsound = s2,1
ground.velocity = -8,-4
guard.velocity = -4
air.velocity = -8,-4
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35
p2stateno = 3571

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11030
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11031
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11060
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11061
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11130
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11131
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11160
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = time = 70
id = 11000
anim = 11161
pos = 160,120
postype = left
bindtime = -1
facing = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3280, helper]
type = helper
trigger1 = movehit = 3
trigger2 = projhit3299 = 1
helpertype = normal
name = "kirakira2"
id = 20000
stateno = 20000
pos = 0,0
postype = p2
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, helper]
type = helper
triggerall = projhit3299 = 1
trigger1 = numtarget(3280) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira1"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, helper]
type = helper
trigger1 = var(31) >= 200
trigger1 = time = 75
helpertype = normal
name = "blue wave"
stateno = 3582
id = 3580
pos = 0,-50
postype = p2
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, bgpalfx]
type = bgpalfx
trigger1 = projhit3299 = 1
time = 15
add = 256,256,256

[state 3280, changestate]
type = changestate
trigger1 = time >= 150
value = ifelse(!alive,3566,3560)

;■勇気を乗せてグランディオーソ・追撃５・垂直下降フィニッシュ
[statedef 3550]
type    = a
movetype= a
physics = n
anim = 3210
velset = 0,0

[state 3280, varset]
type = varset
trigger1 = 1
var(24) = 3

[state 3280, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3280, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3280, assertspecial]
type = assertspecial
trigger1 = time < 70
flag = invisible
ignorehitpause = 1

[state 3280, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3280, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,3200
channel = 0

[state 3280, posadd]
type = posadd
trigger1 = time = 0
y = -350

[state 3280, posset]
type = posset
trigger1 = var(15) != 0
x = var(16)

[state 3280, velset]
type = velset
trigger1 = time = 70
y = 70

[state 3280, playsnd]
type = playsnd
trigger1 = time = 70
value = 2,15

[state 3280, hitdef]
type = hitdef
trigger1 = time = 70
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = trip
priority = 5,hit
sprpriority = 1
damage = 120,10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s20001+(var(40)=1)*10
guard.sparkno = 40
sparkxy = -50,100
hitsound = s5,0
guardsound = s2,1
ground.velocity = -8,-4
guard.velocity = -4
air.velocity = -8,-4
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3280, helper]
type = helper
trigger1 = movehit = 3
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, helper]
type = helper
triggerall = movehit = 3
trigger1 = numtarget(3280) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, helper]
type = helper
trigger1 = time = 70
helpertype = normal
name = "blue wave"
stateno = 11170
id = 11170
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, bgpalfx]
type = bgpalfx
trigger1 = movehit = 1
time = 15
add = 256,256,256

[state 3280, changestate]
type = changestate
trigger1 = time >= 80
value = 3560
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ・終了
[statedef 3560]
type    = a
movetype= i
physics = n
velset = 0,0

[state 3240, playsnd]
type = varset
trigger1 = 1
v = 31
value = 0

[state 3290, screenbound]
type = screenbound
trigger1 = time < 60
value = 0
movecamera = 0,0

[state 3290, assertspecial]
type = assertspecial
trigger1 = time < 50
flag = invisible
ignorehitpause = 1

[state 3290, bgpalfx]
type = bgpalfx
trigger1 = time = 30
trigger2 = time = 34
time = 2
add = 256,256,256

[state 3290, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3290, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3290, posset]
type = posset
trigger1 = time = 50
y = -10

[state 3290, changeanim]
type = changeanim
trigger1 = time = 50
value = 41

[state 3290, palfx]
type = palfx
trigger1 = time = 50
time = 12
add = 256,256,256

[state 3290, velset]
type = velset
trigger1 = time = 50
y = -5

[state 3290, statetypeset]
type = statetypeset
trigger1 = time = 50
physics = a

;---------------------------------------------------------------------------
[Statedef 3566]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 5050
sprpriority = 3

[State 820, 1]
type = NotHitBy
Trigger1 = time = 0
value = SCA

[State 1830]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[state a]
type = posset
trigger1 = time = 0
y = -500

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = 1

[State 821, 3] 
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 
;---------------------------------------------------------------------------
[Statedef 3570]
type = A
movetype = H
physics = N
ctrl = 0

[State 35973, 0]
type = Destroyself
trigger1 = ishelper
trigger2 = ishelper = 1

[State 35973, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 5750

[State 35973, 0]
type = ChangeAnim2
trigger1 = time >= 80
trigger1 = Anim = 5750
value = 5751

[State 35973, 2]
type = VelSet
trigger1 = time = 0
trigger2 = Anim = 5751
trigger2 = Animelemtime(6) >= 0
trigger2 = Pos Y >= 0
x = 0
y = 0

[State 35973, 3]
type = NotHitBy
trigger1 = 1
value = ,NP,SP,HP,NT,ST,HT

[State 35973, 3]
type = VelSet
trigger1 = time >= 80
x = -6
y = -20*Const(movement.yaccel)

[State 35973, 4]
type = VelAdd
trigger1 = time > 80
y = Const(movement.yaccel)

[State 35973, 3]
type = lifeSet
trigger1 = life <= 1
value = 1

[State 35973, 3]
type = defencemulSet
trigger1 = 1
value = 1

[State 35973, 3]
type = lifeadd
trigger1 = 1
value = 0

[State 35973, 5]
type = PosSet
trigger1 = Anim = 5751
trigger1 = Animelemtime(6) >= 0
trigger1 = Pos Y >= 0
y = 0

[State 35973, 6]
type = SelfState
trigger1 = Anim = 5751
trigger1 = Animelemtime(6) >= 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
[Statedef 3571]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 3

[State 35973, 0]
type = Destroyself
trigger1 = ishelper
trigger2 = ishelper = 1

[State 35973, 3]
type = defencemulSet
trigger1 = 1
value = 1

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 5050

[State 820, 1]
type = NotHitBy
Trigger1 = time = 0
value = SCA

[State 35973, 3]
type = lifeSet
trigger1 = life <= 1
value = 0

[State 35973, 3]
type = lifeadd
trigger1 = 1
value = 0

[State 1830]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[state a]
type = velset
trigger1 = time = 0
y = -100

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = 1

[State 821, 3] 
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 
;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3580]
type = S
movetype = A
physics = S
anim = 4525
ctrl = 0
sprpriority = 9

[State 2015,]
type = null;;Explod
trigger1 = Time = 0
anim = 2621
ID = 2621
pos = 0,0
postype = p1
removetime = 10
pausemovetime = 0
sprpriority = 16
ontop = 0
ownpal = 1
scale = 0.5,0.5

[State 2015,]
type = null;;Explod
trigger1 = Time = 0
anim = 2622
ID = 2622
pos = 0,0
postype = p1
removetime = 15
pausemovetime = 0
sprpriority = 16
ontop = 0
ownpal = 1
scale = 0.1,0.1

[State 2015,]
type = null;;ModifyExplod
trigger1 = 1
ID = 2621
scale = 0.5-time*0.01, 0.5-time*.05

[State 2015,]
type = null;;ModifyExplod
trigger1 = 1
ID = 2622
scale = 0.1+time*0.1, 0.1+time*0.1

[State 17501, 消失処理]
type = PalFX
trigger1 = 1
time = -1
mul = 240-time*12, 240-time*12, 240-time*12

[State 17501, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 17501, 角度変更]
type = AngleDraw
trigger1 = 1
scale = 6,0.2-(time*0.01)

[State 17501, 角度変更]
type = AngleSet
trigger1 = 1
value = 0+random%180
persistent = 0

[State 17501, 透過処理]
type = Trans
trigger1 = 1
trans = sub

[State 17501, 終了]
type = DestroySelf
trigger1 = time = 20

;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3582]
type = S
movetype = A
physics = S
anim = 1
ctrl = 0
sprpriority = 9

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3520
ID = 3520
pos = 160,120
postype = left
removetime = -2 
pausemovetime = 0
sprpriority = -1
ontop = 0
ownpal = 1
scale = 0.5,0.5
bindtime = -1

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3515
ID = 3515
pos = 160,120
postype = left
removetime = -2 
pausemovetime = 0
sprpriority = 10
ontop = 0
ownpal = 1
bindtime = -1

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3516
ID = 3516
pos = 160,120
postype = left
removetime = -2 
pausemovetime = 0
sprpriority = 10
ontop = 0
ownpal = 1
bindtime = -1

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3510
ID = 3510
pos = 160,120
postype = left
removetime = -2
pausemovetime = 0
sprpriority = 16
ontop = 0
ownpal = 1
bindtime = -1

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3510
ID = 3510
pos = 160,120
facing = -1
postype = left
removetime = -2
pausemovetime = 0
sprpriority = 16
ontop = 0
ownpal = 1
bindtime = -1

[state 3000, playsnd]
type = playsnd
trigger1 = Time = 0
value = 18,2
channel = 10
volume = 255
freqmul = 0.75

[state 3000, playsnd]
type = playsnd
trigger1 = Time = 0
value = 18,3
channel = 14
volume = 255
freqmul = 0.75

[State 17501, 終了]
type = DestroySelf
trigger1 = time = 30

;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3585]
type = S
movetype = A
physics = S
anim = 1
ctrl = 0
sprpriority = 9

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3520
ID = 3520
pos = 0,0
postype = p1
removetime = -2 
sprpriority = 90
ontop = 0
ownpal = 1
supermovetime = 900
pausemovetime = 900

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3520
ID = 3520
pos = 0,0
postype = p1
facing = -1
removetime = -2 
sprpriority = 90
ontop = 0
ownpal = 1
supermovetime = 900
pausemovetime = 900

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3521
ID = 3520
pos = 0,0
postype = p1
removetime = -2 
sprpriority = 90
ontop = 0
ownpal = 1
supermovetime = 900
pausemovetime = 900

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3522
ID = 3520
pos = 0,0
postype = p1
removetime = -2 
sprpriority = 90
ontop = 0
ownpal = 1
supermovetime = 900
pausemovetime = 900

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3510
ID = 3510
pos = 0,0
postype = p1
removetime = -2
sprpriority = 99
ontop = 0
ownpal = 1
supermovetime = 900
pausemovetime = 900

[State 2015,]
type = Explod
trigger1 = Time = 0
anim = 3510
ID = 3510
pos = 0,0
facing = -1
postype = p1
removetime = -2
sprpriority = 99
ontop = 0
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3000, playsnd]
type = playsnd
trigger1 = Time = 0
value = 18,2
channel = 10
volume = 255
freqmul = 0.75

[state 3000, playsnd]
type = playsnd
trigger1 = Time = 0
value = 18,3
channel = 14
volume = 255
freqmul = 0.75

[State 17501, 終了]
type = DestroySelf
trigger1 = time = 30

;===========================================================================
;†††hypers†††
;===========================================================================
;■????????????????????????????
[Statedef 3600]
type = s
movetype = a
physics = s
anim = 3601
velset = 0,0
ctrl = 0

[state 3410, assertspecial]
type = assertspecial
trigger1 = time >= 0
flag = nofg
flag2 = nobg
ignorehitpause = 1

[state -, varadd];＊愛を込めてスフォルツァンド、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = time = 1
var(49) = 15
persistent = 0

[state -, varadd]
type = varadd
trigger1 = var(51) = 0
trigger1 = time = 0
var(51) = 1
persistent = 0

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3000, playsnd]
type = playsnd
trigger1 = time = 0
value = 8500,3
volume = 255

[state 3000, playsnd]
type = playsnd
trigger1 = time = 0
value = 8500,1
volume = 255

[state 3000, superpause]
type = superpause
trigger1 = time = 0
time = 150
anim = s32900
pos = 0,-55
sound = s8500,2
movetime = 150
darken = 0
unhittable = 1
p2defmul = 1
poweradd = -9000

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 3602
;---------------------------------------------------------------------------
;■暴力暗殺・鍔迫り合い
[statedef 3602]
type = S
movetype = I
physics = S
velset = 0,0
anim = 3410
ctrl = 0

[state -, varadd]
type = pause
trigger1 = time = 0
time = 240
movetime = 240

[state -, varadd]
type = varadd
trigger1 = var(51) = 0
trigger1 = time = 0
var(51) = 1
persistent = 0

[state 3410, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[state 3410, turn]
type = posset
trigger1 = 1
y = 0

[state 3410, assertspecial]
type = assertspecial
trigger1 = time > 130
flag = nofg
ignorehitpause = 1

[state 3410, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 130
add = var(21),var(22),var(23)

[state 3410, width]
type = width
trigger1 = 1
player = 60,0
edge = 160,0

[state 3410, helper]
type = helper
trigger1 = time = 3
helpertype = normal
name = "search & bind"
id = 7500
stateno = 7500
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3410, envshake]
type = envshake
trigger1 = time = 70
time = 200
freq = 60
ampl = -4
phase = 4

[state 3410, palfx]
type = palfx
trigger1 = time > 40
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3410, helper]
type = helper
trigger1 = time = 55
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.18"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*40)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.18*const(size.xscale)
size.yscale = 0.18*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 60
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.23"
stateno = 21501
id = 21501
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.23*const(size.xscale)
size.yscale = 0.23*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 75
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.3"
stateno = 21500
id = 21500
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*85)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.3*const(size.xscale)
size.yscale = 0.3*const(size.yscale)

[state 3410, changeanim]
type = changeanim
trigger1 = time = 120
value = 3415
ignorehitpause = 1

[state 3410, gamemakeanim]
type = null;;;gamemakeanim
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
value = 2
pos = 70,-60
random = 10

[state 3410, playsnd]
type = playsnd
trigger1 = anim = 3410
trigger1 = animelemtime(2) = 0
value = 0,6

[state 3410, playsnd]
type = playsnd
trigger1 = time = 40
value = 3,4

[state 3410, playsnd]
type = playsnd
trigger1 = time = 80
value = 6,41

[state 3410, playsnd]
type = playsnd
trigger1 = time = 170
value = 9,3400
channel = 0
;lowpriority = 1

[state 3410, changestate]
type = changestate
trigger1 = time = 240
value = 3608
;===========================================================================
;†††hypers†††
;===========================================================================
;■????????????????????????????
[Statedef 3603]
type = S
movetype = I
physics = S
anim = 3602
velset = 0,0
ctrl = 0

[state 3420, pause]
type = pause
trigger1 = animelemtime(2) > 0
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = N         ;A,C,S,N

[State 0, StateTypeSet]
type = velset
trigger1 = time = 4
x = 1
y = -20

[State 0, StateTypeSet]
type = veladd
trigger1 = time >= 4
y = -0.5

[state 3000, changestate]
type = changestate
trigger1 = time >= 100
value = 3604
;===========================================================================
;†††hypers†††
;===========================================================================
;■????????????????????????????
[Statedef 3604]
type = A
movetype = A
physics = N
anim = 3603
velset = 0,0
ctrl = 0

[State 9]
type = posset
trigger1 = time = 0
x = enemy,pos x -0
y = enemy,pos y -800

[State 0, StateTypeSet]
type = velset
trigger1 = time = 0
x = 0
y = 15

[State 0, StateTypeSet]
type = veladd
trigger1 = time >= 0
y = 0.5

[state 3240, hitdef]
type = Projectile
trigger1 = time = 0
ownpal = 1
projID = 3699
projanim = 3605
projremove = 1
projremovetime = 80
projpriority = 888
projheightbound = -999,0
projedgebound = 999
projstagebound = 999
postype = p1
velocity = 0,15
accel = 0,0.5
offset = 0,0
Attr = A,HA
hitflag = MAFDLH
guardflag = L
affectteam = e
animtype = up
ground.type = low
priority = 7,hit
sprpriority = 1
damage = ifelse(random%2,2,5),0
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,250
sparkno = s1
guard.sparkno = s1
sparkxy = 0+(floor(p2bodydist X)),-60+(floor(p2bodydist Y))
hitsound = s1,10
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0
p2stateno = 3570

[state 3300, explod]
type = explod
trigger1 = projhit3699 = 1
id = 11000
anim = 26300+random%4
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1

[state 3300, explod]
type = explod
trigger1 = projguarded3699 = 1
id = 11000
anim = f40
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1

[state 3000, changestate]
type = changestate
trigger1 = vel y >=0 && pos y > 0
value = 3605
;===========================================================================
;†††hypers†††
;===========================================================================
;■????????????????????????????
[Statedef 3605]
type = S
movetype = A
physics = S
anim = 3604
velset = 0,0
ctrl = 0

[state 3410, explod]
type = nothitby
trigger1 = 1
value = SCA

[state 3410, explod]
type = explod
trigger1 = time = 0
anim = 3625
id = 3625
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 10
ownpal = 1

[State 0, StateTypeSet]
type = posset
trigger1 = time = 0
y = 0

[state 3240, hitdef]
type = Projectile
trigger1 = time = 0
ownpal = 1
projID = 3699
projanim = 3605
projremove = 0
projremovetime = 3
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p1
velocity = 0,0
offset = 0,0
Attr = A,HA
hitflag = MAFDLH
guardflag = L
affectteam = e
animtype = up
ground.type = low
priority = 7,hit
sprpriority = 1
damage = ifelse(random%2,2,5),0
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,250
sparkno = s1
guard.sparkno = s1
sparkxy = 0+(floor(p2bodydist X)),-60+(floor(p2bodydist Y))
hitsound = s1,10
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0
p2stateno = 3570

[state 3300, explod]
type = explod
trigger1 = projhit3699 = 1
id = 11000
anim = 26300+random%4
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1

[state 3300, explod]
type = explod
trigger1 = projguarded3699 = 1
id = 11000
anim = f40
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1

[state 3000, helper]
type = varset
trigger1 = projhit3699 = 1
trigger2 = movehit = 1
v = 30
value = 1
ignorehitpause = 1

[state 3000, nothitby]
type = nothitby
trigger1 = var(30) = 1
value = SCA
ignorehitpause = 1

[state 3000, helper]
type = changestate
triggerall = animelem = 3
trigger1 = var(30) = 1
trigger1 = palno = [1,11]
trigger2 = palno = 12
value = 3610
ignorehitpause = 1

[state 3000, helper]
type = targetstate
trigger1 = projhit3699 = 1
value = 3570

[state 3000, helper]
type = helper
trigger1 = projhit3699 = 1
trigger2 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
triggerall = projhit3699 = 1 || movehit = 1
trigger1 = numtarget(3000) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = varset
trigger1 = animtime = 0
v = 30
value = 0
ignorehitpause = 1

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;===========================================================================
;†††hypers†††
;===========================================================================
;■????????????????????????????
[Statedef 3608]
type = S
movetype = A
physics = S
anim = 3600
velset = 0,0
ctrl = 0

[state 3410, explod]
type = nothitby
trigger1 = 1
value = SCA

[state 3410, explod]
type = explod
trigger1 = animelem = 3
anim = 3625
id = 3625
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 20
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3410, explod]
type = explod
trigger1 = animelem = 3
anim = 23400
id = 23400
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = const(size.xscale),const(size.yscale)
sprpriority = 25
ownpal = 1

[state 3410, explod]
type = explod
trigger1 = animelem = 3
anim = 23401
id = 23401
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1


[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 4
value = 0,6
volume = 255
freqmul = 0.75

[State 0, StateTypeSet]
type = posset
trigger1 = time = 0
y = 0

[state 3240, hitdef]
type = Projectile
trigger1 = animelem = 4
ownpal = 1
projID = 3699
projanim = 3606
projremove = 0
projremovetime = 8
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p1
velocity = 0,0
offset = 0,0
attr = S,HA
hitflag = MAFDLH
guardflag = MA
affectteam = e
animtype = up
ground.type = low
priority = 7,hit
sprpriority = 1
damage = 1+random%200,0
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,250
sparkno = s1
guard.sparkno = s1
sparkxy = 0+(floor(p2bodydist X)),-60+(floor(p2bodydist Y))
hitsound = s1,10
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0
p2stateno = 3570

[state 3280, helper]
type = helper
trigger1 = projcontact3699 = 1
helpertype = normal
name = "blue wave"
stateno = 3585
id = 3580
pos = 0,-50
postype = p2
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
supermovetime = 900
pausemovetime = 900
persistent = 0

[state 3300, explod]
type = explod
trigger1 = projhit3699 = 1
id = 11000
anim = 26300+random%4
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1
supermovetime = 900
pausemovetime = 900

[state 3300, explod]
type = explod
trigger1 = projguarded3699 = 1
id = 11000
anim = f40
pos = -20+random%40,0-random%80
postype = p2
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1
supermovetime = 900
pausemovetime = 900

[state 3000, helper]
type = varset
trigger1 = projhit3699 = 1
trigger2 = movehit = 1
v = 30
value = 1
ignorehitpause = 1

[state 3000, nothitby]
type = nothitby
trigger1 = var(30) = 1
value = SCA
ignorehitpause = 1

[state 3000, helper]
type = targetstate
trigger1 = projhit3699 = 1
value = 3570

[state 3000, helper]
type = helper
trigger1 = projhit3699 = 1
trigger2 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
triggerall = projhit3699 = 1 || movehit = 1
trigger1 = numtarget(3000) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = changestate
triggerall = animelem = 7
trigger1 = var(30) = 1
trigger1 = palno = [1,11]
trigger2 = palno = 12
value = 3610
ignorehitpause = 1

[state 3000, helper]
type = varset
trigger1 = animtime = 0
v = 30
value = 0
ignorehitpause = 1

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 3694]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5210, 3]
type = playerpush
trigger1 = 1
value = 0

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3695
;---------------------------------------------------------------------------
;■暴力暗殺・鍔迫り合い
[statedef 3695]
type = S
movetype = I
physics = S
velset = 0,0
anim = 3410
ctrl = 0

[state -, varadd]
type = pause
trigger1 = time = 0
time = 240
movetime = 240

[state -, varadd]
type = varadd
trigger1 = var(51) = 0
trigger1 = time = 0
var(51) = 1
persistent = 0

[state 3410, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[state 3410, turn]
type = posset
trigger1 = 1
y = 0

[state 3410, assertspecial]
type = assertspecial
trigger1 = time > 130
flag = nofg
ignorehitpause = 1

[state 3410, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 130
add = var(21),var(22),var(23)

[state 3410, width]
type = width
trigger1 = 1
player = 60,0
edge = 160,0

[state 3410, helper]
type = helper
trigger1 = time = 3
helpertype = normal
name = "search & bind"
id = 7500
stateno = 7500
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3410, envshake]
type = envshake
trigger1 = time = 70
time = 200
freq = 60
ampl = -4
phase = 4

[state 3410, palfx]
type = palfx
trigger1 = time > 40
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3410, helper]
type = helper
trigger1 = time = 55
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.18"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*40)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.18*const(size.xscale)
size.yscale = 0.18*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 60
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.23"
stateno = 21501
id = 21501
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.23*const(size.xscale)
size.yscale = 0.23*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 75
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.3"
stateno = 21500
id = 21500
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*85)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.3*const(size.xscale)
size.yscale = 0.3*const(size.yscale)

[state 3410, changeanim]
type = changeanim
trigger1 = time = 120
value = 3415
ignorehitpause = 1

[state 3410, explod]
type = explod
trigger1 = time = 120
anim = 23400
id = 23400
pos = ceil(p2dist x)/2,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 3410, explod]
type = explod
trigger1 = time = 120
anim = 23401
id = 23401
pos = ceil(p2dist x)/2,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 3410, gamemakeanim]
type = gamemakeanim
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
value = 2
pos = 70,-60
random = 10

[state 3410, playsnd]
type = playsnd
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
value = 6,40

[state 3410, playsnd]
type = playsnd
trigger1 = time = 40
value = 3,4

[state 3410, playsnd]
type = playsnd
trigger1 = time = 80
value = 6,41

[state 3410, playsnd]
type = playsnd
trigger1 = time = 170
value = 9,3400
channel = 0
;lowpriority = 1

[state 3410, changestate]
type = changestate
trigger1 = time = 240
value = 3415


;■愛を込めてスフォルツァンド
[Statedef 3610]
type = s
movetype = a
physics = s
anim = 3610
velset = 0,0
ctrl = 0

[state 3000, helper]
type = powerset
trigger1 = 1
value = 0

[state 3000, helper]
type = varset
trigger1 = time = 0
v = 30
value = 0
ignorehitpause = 1

[State 0, PalFXWiz]
type = AllPalFX
trigger1 = Time = [0,63]
time = 1
Add = 256-(time*4),256-(time*4),256-(time*4)
color = 256
ignorehitpause = 1

[State 0, PalFXWiz]
type = BGPalFX
trigger1 = Time = [0,127]
time = 1
Add = 0+(time*2),0+(time*2),0+(time*2)
color = 256-(time*2)
ignorehitpause = 1

[State 0, PalFXWiz]
type = BGPalFX
trigger1 = Time >= 128
time = 1
Add = 256,256,256
color = 0
ignorehitpause = 1

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

;;
[state 3410, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[state 3410, targetfacing]
type = targetfacing
trigger1 = time = 0
value = -1
id = 3400

[state 3410, helper]
type = helper
trigger1 = time = 3
helpertype = normal
name = "search & bind"
id = 7500
stateno = 7500
pos = 0,0
postype = p2
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3410, envshake]
type = envshake
trigger1 = time = 70
time = 200
freq = 60
ampl = -4
phase = 4

[state 3410, palfx]
type = palfx
trigger1 = time > 40
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3410, helper]
type = helper
trigger1 = time = 55
helpertype = normal
name = "magic circle 0.18"
stateno = 21520
id = 21520
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*40)
postype = p2
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.2*const(size.xscale)
size.yscale = 0.2*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 60
helpertype = normal
name = "magic circle 0.23"
stateno = 21525
id = 21525
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*60)
postype = p2
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.25*const(size.xscale)
size.yscale = 0.25*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 75
helpertype = normal
name = "magic circle 0.3"
stateno = 21520
id = 21520
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*85)
postype = p2
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.35*const(size.xscale)
size.yscale = 0.35*const(size.yscale)

[state 3410, explod]
type = explod
trigger1 = time = 240
anim = 23400
id = 23400
pos = ceil(p2dist x)/2,0
postype = p2
facing = 1
bindtime = 1
removetime = -2
supermove = 1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3410, explod]
type = explod
trigger1 = time = 240
anim = 23401
id = 23401
pos = ceil(p2dist x)/2,0
postype = p2
facing = 1
bindtime = 1
removetime = -2
supermove = 1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3410, playsnd]
type = playsnd
trigger1 = time = 40
value = 3,4

[state 3410, playsnd]
type = playsnd
trigger1 = time = 80
value = 6,41

[state 3410, playsnd]
type = null;;playsnd
trigger1 = time = 170
value = 9,3400
channel = 0
;lowpriority = 1
;;;
[state 3000, nothitby]
type = assertspecial
trigger1 = 1
flag = noKOSlow
flag2 = nokosnd
flag3 = nomusic

[state 3000, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,105
volume = 255
channel = 0

[state 3000, superpause]
type = Pause
trigger1 = Time = 0
time = 320
movetime = 320

;[state 3000, playsnd]
;type = playsnd
;trigger1 = animelemtime(4) = 0
;value = 0,6

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 251
helpertype = normal
name = "Kishin Raimei"
postype = p2
ID = 3580
pos = 0,-50
ownpal = 1
stateno = 3580

[state 3000, playsnd]
type = playsnd
trigger1 = time = 251
value = 18,0
volume = 255
channel = 9

[state 3000, playsnd]
type = playsnd
trigger1 = time = 271
value = 18,1
volume = 255
channel = 10

[state 3000, playsnd]
type = playsnd
trigger1 = time = 271
value = 1,10
volume = 255
channel = 11
freqmul = 0.5

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
postype = p2
ID = 3681
pos = 0,-50
ownpal = 1
stateno = 3681
supermovetime = 9999
pausemovetime = 9999

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
postype = p2
ID = 3680
pos = 0,-50
ownpal = 1
stateno = 3680
supermovetime = 9999
pausemovetime = 9999

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
postype = p2
ID = 3680
pos = 0,-50
ownpal = 1
stateno = 3680
supermovetime = 9999
pausemovetime = 9999

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
postype = p2
ID = 3680
pos = 0,-50
ownpal = 1
stateno = 3680
supermovetime = 9999
pausemovetime = 9999

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
postype = p2
ID = 3680
pos = 0,-50
ownpal = 1
stateno = 3680
supermovetime = 9999
pausemovetime = 9999

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
ID = 3680
postype = p2
pos = 0,-50
ownpal = 1
stateno = 3680
supermovetime = 9999
pausemovetime = 9999

[State 4020, Rasetsu]
type = Helper
trigger1 = time = 271
helpertype = normal
name = "Kishin Raimei"
ID = 3680
postype = p2
pos = 0,-50
ownpal = 1
stateno = 3680
supermovetime = 9999
pausemovetime = 9999

[state 3240, hitdef]
type = Projectile
trigger1 = time >= 320
trigger1 = timemod = 2,0
ownpal = 1
projID = 3299
projanim = 3999
projremove = 0
projremovetime = 1
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p1
velocity = 0,0
offset = 0,0
Attr = S,HA
hitflag = MAFPD
guardflag = 
affectteam = B
animtype = up
ground.type = high
priority = 7,hit
sprpriority = 1
damage = ceil(enemynear,lifemax*9)*enemy,const(data.defence)/100, ceil(enemynear,lifemax*9)*enemy,const(data.defence)/100 
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,250
sparkno = s1
numhits = 0
guard.sparkno = 40
sparkxy = -30,0
hitsound = -1
guardsound = -1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
p2stateno = 3650

[state 3240, hitdef]
type = Projectile
trigger1 = time >= 320
trigger1 = timemod = 2,1
ownpal = 1
projID = 3299
projanim = 3999
projremove = 0
projremovetime = 1
projheightbound = -999,999
projedgebound = 999
projstagebound = 999
postype = p2
velocity = 0,0
offset = 0,0
Attr = A,HP
hitflag = MAFPD
guardflag = 
affectteam = B
animtype = up
ground.type = high
priority = 7,hit
sprpriority = 1
damage = 500+random%499,500+random%499
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,250
sparkno = s1
numhits = 0
guard.sparkno = 40
sparkxy = -30,0
hitsound = -1
guardsound = -1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
p2stateno = 3650


[State -2, TargetState]
type = TargetState
trigger1 = projcontact3299 = 1
trigger2 = time >= 300
value = 3650
ignorehitpause = 1
persistent = 1

[State -2, LifeAdd]
type = TargetLifeAdd
trigger1 = projcontact3299 = 1
trigger2 = time >= 300
value = Ceil(-9*enemy,Const(data.life))
absolute = 1
ignorehitpause = 1
persistent = 1

;====
[State 4001, 11]
type = Helper
trigger1 = time >= 301
trigger1 = !numhelper(3670)
trigger1 = win
helpertype = normal
name = "Effect"
ID = 3670
stateno = 3670
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[state 3000, changestate]
type = changestate
trigger1 = numhelper(3681) = 0
trigger1 = time = [500,1099]
value = 3620

[state 3000, changestate]
type = changestate
trigger1 = time >= 1100
value = ifelse(palno=12,3645,3640)

;■愛を込めてスフォルツァンド
[Statedef 3620]
type = S
movetype = I
physics = S
anim = 3610
velset = 0,0
ctrl = 0

[state 3000, nothitby]
type = assertspecial
trigger1 = 1
flag = nomusic

[state 3000, nothitby]
type = assertspecial
trigger1 = matchover
trigger1 = enemynear,name = "Oktavia Von Seckendorff" || enemy,name = "Oktavia Von Seckendorff"
flag = invisible

[state 3470, varset]
type = varset
trigger1 = !var(27)
trigger1 = enemynear,name = "Oktavia Von Seckendorff" || enemy,name = "Oktavia Von Seckendorff"
trigger1 = matchover
var(27) = 2

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3000, changestate]
type = changeanim
trigger1 = anim = 3610
trigger1 = numhelper(3681) = 0
trigger1 = time >= 100
value = 3620

[state 3000, changestate]
type = changestate
trigger1 = anim = 3620
trigger1 = animtime = 0
value = ifelse(win,3630,0)
ctrl = ifelse(win,0,1)

;■愛を込めてスフォルツァンド
[Statedef 3630]
type = S
movetype = I
physics = S
anim = 0
velset = 0,0
ctrl = 1

[state 3470, varset]
type = varset
trigger1 = !var(27)
trigger1 = enemynear,name = "Oktavia Von Seckendorff" || enemy,name = "Oktavia Von Seckendorff"
trigger1 = matchover
var(27) = 2

[state 3000, nothitby]
type = ctrlset
trigger1 = time = 50
value = 1

[state 3000, nothitby]
type = assertspecial
trigger1 = 1
flag = nomusic

[state 3000, nothitby]
type = assertspecial
trigger1 = matchover
trigger1 = enemynear,name = "Oktavia Von Seckendorff" || enemy,name = "Oktavia Von Seckendorff"
flag = invisible

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

;■愛を込めてスフォルツァンド
[Statedef 3640]
type = S
movetype = I
physics = S
anim = 1
velset = 0,0
ctrl = 0

[State 1]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = NoBarDisplay
flag3 = NoKOSnd

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 1]
type = ChangeState
trigger1 = time = 1
value = 3659

;■愛を込めてスフォルツァンド
[Statedef 3645]
type = S
movetype = I
physics = S
anim = 3610
velset = 0,0
ctrl = 0

[state 3000, nothitby]
type = assertspecial
trigger1 = 1
flag = nomusic

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = sca
ignorehitpause = 1

[state 3000, changestate]
type = changeanim
trigger1 = anim = 3610
trigger1 = numhelper(3681) = 0
trigger1 = time >= 100
value = 3620

[state 3000, changestate]
type = changestate
trigger1 = anim = 3620
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3680]
type = S
movetype = A
physics = S
anim = 4525
ctrl = 0
sprpriority = 9

[State 17501, 消失処理]
type = PalFX
trigger1 = 1
time = -1
mul = 0+time*3, 0+time*3, 0+time*3

[State 17501, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 17501, 角度変更]
type = AngleDraw
trigger1 = 1
scale = 6,0.05+(time*0.05)

[State 17501, 角度変更]
type = AngleSet
trigger1 = 1
value = 0+random%180
persistent = 0

[State 17501, 透過処理]
type = Trans
trigger1 = 1
trans = sub

;;----
[State 17501, 終了]
type = DestroySelf
trigger1 = time = 85
;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3681]
type = S
movetype = A
physics = S
anim = 4525
ctrl = 0
sprpriority = 9

[state 3000, playsnd]
type = playsnd
trigger1 = time = 0
value = 18,5
volume = 255
channel = 12
freqmul = 0.5

[state 3000, playsnd]
type = playsnd
trigger1 = time = 0
value = 18,6
volume = 255
channel = 13
freqmul = 1.5

[State 17501, 消失処理]
type = PalFX
trigger1 = 1
time = -1
mul = 0+time*3, 0+time*3, 0+time*3

[State 17501, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 17501, 角度変更]
type = AngleDraw
trigger1 = 1
scale = 6,0.05+(time*0.05)

[State 17501, 角度変更]
type = AngleSet
trigger1 = 1
value = 0+random%180
persistent = 0

[State 17501, 透過処理]
type = Trans
trigger1 = 1
trans = sub
;*********************************** 中心
[State 2102, エフェクト]
type = Explod
trigger1 = NumExplod(3671) = 0
trigger1 = Time = 0
anim = 3660
postype = p1
pos = 0,0
sprpriority = -1
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3671

[State 2102, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.1+(floor(Time)*0.04),0.1+(floor(Time)*0.04)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3671

[State 2102, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 64)
ID = 3671

;*********************************** 中心
[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3661
postype = p1
pos = 0,0
sprpriority = -1
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3672

[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3661
postype = p1
pos = 0,0
facing = -1
sprpriority = -1
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3672

[State 2102, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.04+(floor(Time)*0.04),0.1+(floor(Time)*0.04)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3672

[State 2102, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 85)
ID = 3672

;*********************************** 中心
[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3662
postype = p1
pos = 0,0
sprpriority = -1
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3673

[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3662
postype = p1
pos = 0,0
vfacing = -1
sprpriority = -1
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3673

[State 2102, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.04+(floor(Time)*0.04),0.1+(floor(Time)*0.04)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3673

[State 2102, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 85)
ID = 3673
;*********************************** 粒子２
[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3663
postype = p1
pos = 0,0
sprpriority = 7
ownpal = 0
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3674

[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3663
facing = -1
postype = p1
pos = 0,0
sprpriority = 99
ownpal = 0
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3674

[State 2102, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.04+(floor(Time)*0.04),0.04+(floor(Time)*0.04)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3674

[State 2102, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 85)
ID = 3674

;*********************************** 粒子２
[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3664
facing = -1
postype = p1
pos = 0,0
sprpriority = 99
ownpal = 0
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3675

[State 2102, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3664
vfacing = -1
postype = p1
pos = 0,0
sprpriority = 99
ownpal = 0
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3675

[State 2102, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.04+(floor(Time)*0.04),0.04+(floor(Time)*0.04)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3675

[State 2102, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 85)
ID = 3675

;*********************************
[State 2103, エフェクト]
type = Explod
trigger1 = NumExplod(3678) = 0 
trigger1 = Time = 0
anim = 3665
vfacing = -1
postype = p1
pos = 0,0
sprpriority = 99
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3678

[State 2103, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.04+(floor(Time)*0.04),0.01+(floor(Time)*0.04)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3678

[State 2103, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 85)
ID = 3678

;*********************************
[State 2103, エフェクト]
type = Explod
trigger1 = NumExplod(3679) = 0 
trigger1 = Time = 0
anim = 3666
postype = p1
pos = 0,0
sprpriority = 99
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ID = 3679

[State 2103, エフェクト操作]
type = ModifyExplod
trigger1 = Time = [0,85]
scale = 0.03+(floor(Time)*0.03),0.01+(floor(Time)*0.03)
supermovetime = 99999999
pausemovetime = 99999999
ID = 3679

[State 2103, エフェクトを消す]
type = RemoveExplod
trigger1 = (Time >= 85)
ID = 3679
;*********************************

[State 10291, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

;*********************************
[State 4003, 4]
type = ChangeState
trigger1 = Time = 85
value = 3682
;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3682]
type = S
movetype = A
physics = S
anim = 3999
ctrl = 0
sprpriority = 10

[State 2103, エフェクト]
type = Explod
trigger1 = Time = 0
trigger1 = NumExplod(3692) = 0
anim = 32000
postype = left
pos = 0,0
removetime = -1
sprpriority = 95
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
scale = 5,5
ID = 3692

[state 3410, assertspecial]
type = assertspecial
trigger1 = time >= 0
flag = nofg
flag2 = nobg
ignorehitpause = 1

[State 12500, DON'T TRY TO BREAK IT]
type = HitOverRide
trigger1 = time >= 1
time = 999
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3682
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999

[State 9998, 1]
type = ReversalDef
trigger1 = time >= 1
reversal.attr = SCA, NA, SA, HA, NT, ST, HT, NP, SP, HP
pausetime = 0, 1
priority = 7, Hit
sparkno = -1
numhits = 0
p1stateno = 3682
p2stateno = 3651

;*********************************
[State 4003, 4]
type = ChangeState
trigger1 = winko
trigger1 = Time >= 40
trigger2 = !winko
trigger2 = root,stateno = [3640,3645]
value = 3683
;---------------------------------------------------------------------------
; 鬼神雷鳴 （エフェクト）
[Statedef 3683]
type = S
movetype = A
physics = S
anim = 4520
ctrl = 0
sprpriority = 10

[State 2103, エフェクト]
type = RemoveExplod
trigger1 = Time = 0
ID = 3692

[state 3000, playsnd]
type = playsnd
trigger1 = time = 0
trigger2 = time = 150
value = 18,4
volume = 255

[state 3000, playsnd]
type = playsnd
trigger1 = time = 200
value = 18,7
volume = 255

[State 2103, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3630
postype = left
pos = 0,0
sprpriority = 99
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
ontop = 1
ID = 3688

[State 2103, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 32000
postype = left
pos = 0,0
removetime = 210
sprpriority = 95
ownpal = 1
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
IgnoreHitPause = 1
scale = 5,5
ID = 3688

[State 17501, 終了]
type = DestroySelf
trigger1 = time = 200
;---------------------------------------------------------------------------
;やられステート2
[Statedef 3670]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -1
anim = 3990

[State 3001, 10]
type = AssertSpecial
trigger1 = p2name != "Nanaya-Satsujinki" && p4name != "Nanaya-Satsujinki"
trigger1 = winko
flag = nomusic
flag2 = noshadow

[State 4003, 0]
type = PlaySnd
trigger1 = p2name != "Nanaya-Satsujinki" && p4name != "Nanaya-Satsujinki"
trigger1 = winko
value = s6666,0 ;;f9696,7 ;;
volume = 255
loop = 1
persistent = 0
channel = 15

[State 4003, 0]
type = null;;;PlaySnd
trigger1 = winko
value = s100,3
volume = 255
persistent = 0

[State 4003, 4]
type = ChangeState
trigger1 = root,stateno = 667
trigger1 = root,time = 150 
trigger2 = root,stateno = 666
trigger2 = root,time = 400 
value = 3671

[State 4003, 0]
type = DestroySelf
trigger1 = time >= 60
trigger1 = !win
;---------------------------------------------------------------------------
;やられステート2
[Statedef 3671]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -1
anim = 3990

[State 3001, 10]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noshadow

[State 4003, 0]
type = PlaySnd
trigger1 = time = 0
value = s6666,1
volume = 255
loop = 1
persistent = 0
channel = 15

[State 4003, 0]
type = DestroySelf
trigger1 = time >= 60
trigger1 = !win
;---------------------------------------------------------------------------
;やられステート2
[Statedef 3650]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = -1

[State 4003, 3]
type = LifeAdd
trigger1 = name != "Rare Akuma" && name != "Dai Gouki"
value = -9999
absolute = 1

[State 4003, 3]
type = LifeSet
trigger1 = name != "Rare Akuma" && name != "Dai Gouki"
value = 0

[State 4003, 0]
type = DestroySelf
trigger1 = ishelper
trigger2 = ishelper = 1

[State 4003, 0]
type = ChangeAnim2
trigger1 = !selfanimexist(5050)
trigger1 = time = 0
value = 5752

[State 4003, 0]
type = ChangeAnim
trigger1 = selfanimexist(5050)
trigger1 = time = 0
value = 5050

[State 4003, 0]
type = ChangeState
triggerall = !alive
trigger1 = name = "Haruhi Suzumiya"
trigger2 = name = "Nagato Yuki"
trigger3 = name = "Yuki Nagato"
trigger4 = name = "asakura ryouko"
trigger5 = name = "Ryoko Asakura"
trigger6 = name = "Mikuru Asahina"
trigger7 = name = "asahina mikuru"
trigger8 = name = "koizumi itsuki"
trigger9 = name = "kyon"
trigger10 = name = "tsuruya-san"
trigger11 = name = "Shana"
trigger12 = name = "rena_lv5"
trigger13 = name = "Maebara_keiichi"
trigger14 = name = "kotonoha katsura"
trigger15 = name = "Saionzi Sekai"
trigger16 = name = "Setsuna of SD"
trigger17 = name = "Kino Makoto"
trigger18 = name = "Takano_Miyo"
trigger19 = name = "tsuruya-san"
trigger20 = name = "Hojo Satoko"
trigger21 = name = "Sonozaki_Mion"
trigger22 = name = "Ryoko Asakura"
trigger23 = name = "Sonozaki_Shion"
trigger24 = name = "Chie_Rumiko"
trigger25 = name = "furude_rika"
trigger26 = name = "hanyu"
trigger27 = name = "Lucy Diclonius by Crucifix"
trigger28 = name = "ryougishiki"
trigger29 = name = "Battler"
trigger30 = name = "beatrice"
trigger31 = name = "to-ri"
value = 3656

[State 1830]
type = ScreenBound
trigger1 = !alive
value = 0
movecamera = 0,0

[State 4003, 1]
type = VelSet
trigger1 = time = 0
x = ifelse(alive,-7.9,-14)
y = ifelse(alive,-9.8,-18)

[State 4003, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 4003, 4]
type = SelfState
trigger1 = alive
trigger1 = Pos Y >= 10
trigger1 = Vel Y > 0
value = 5100

[State 4003, 4]
type = ChangeState
trigger1 = !alive
trigger1 = Time = 60
value = 3658
;---------------------------------------------------------------------------
[Statedef 3656]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1300, やられヘルパーを出す]
type = null;;;Helper
trigger1=name="to-ri"
trigger1=stateno=5050
trigger1=time=30
helpertype = player
Persistent = 0
name = "uboxa"
stateno = 243
pos = 160,-140
postype = back
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
ID = 1800

[State 1830]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1830]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5750

[State 820, 1]
type = lifeset
Trigger1 = 1
value = 0

[State 1830]
type = ChangeState
trigger1 = Time = 30
value = 3657
;---------------------------------------------------------------------------
[Statedef 3657]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1830]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1830]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5750

[State 820, 1]
type = lifeset
Trigger1 = 1
value = 0

[State 0, PalFXWiz]
type = AllPalFX
trigger1 = Time = [0,63]
time = 1
add = 0+(time*8),0-(time*8),0-(time*8)
mul = 256+(time*8),256-(time*8),256-(time*8)
color = 256-(time*8)
ignorehitpause = 1

[State 0, PalFXWiz]
type = AllPalFX
trigger1 = Time >= 32
time = 1
add = 256,-256,-256
mul = 512,0,0
color = 0
ignorehitpause = 1

[State 1830]
type = ChangeState
trigger1 = Time = 35
value = 3658
;---------------------------------------------------------------------------
;;Finish....
[Statedef 3658]
type    = S
movetype= H
physics = N
velset = 0,0

[State 0, PalFXWiz]
type = AllPalFX
trigger1 = prevstateno = 3657
trigger1 = Time = [0,32]
time = 1
add = 256-(time*8),-256+(time*8),-256+(time*8)
mul = 512-(time*8),0+(time*8),0+(time*8)
color = 0+(time*8)
ignorehitpause = 1

[State 1830]
type = PosSet
trigger1 = time = 0
y = 999

[State 1830]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 820, 1]
type = lifeset
Trigger1 = 1
value = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5750

[state a]
type = SelfState
trigger1 = prevstateno = 3657
trigger1 = time = 32
trigger2 = prevstateno = 3650
trigger2 = time = 1
value = 5150

;---------------------------------------------------------------------------
;;Finish....
[Statedef 3659]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1830]
type = PosSet
trigger1 = time = 0
y = 999

[State 1830]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 820, 1]
type = lifeset
Trigger1 = 1
value = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5750

[state a]
type = SelfState
trigger1 = time = 1
value = 5150
;---------------------------------------------------------------------------
;びたん
[Statedef 243]
type = S
ctrl = 0
anim = 243
SprPriority=-2

[State 1120, Afterimage]
type = DestroySelf
trigger1 = time = 0


;===========================================================================
;■
[statedef 3800]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 197

[state 3200, superpause]
type = superpause
trigger1 = time = 0
time = 60
anim = s32800
pos = 11,-20
sound = s2,100
movetime = 60
darken = 0
unhittable = 1
p2defmul = 1
poweradd = -5000

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = SCA
ignorehitpause = 1

[state 3000, nothitby]
type = assertspecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = noshadow

;====
[State 4001, 11]
type = Helper
trigger1 = time = 60
trigger1 = !numhelper(3810)
helpertype = normal
name = "Effect"
ID = 3810
stateno = 3810
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[state 197, changestate]
type = changestate
trigger1 = time > 350
value = 0
ctrl = 1
;===========================================================================
;■
[statedef 3810]
type = s
movetype = a
physics = s
velset = 0,0
ctrl = 0
anim = 3810
sprpriority = 19

[State 4003, 0]
type = PlaySnd
trigger1 = time = 0
value = s2,2
volume = 255
channel = 11

[State 4003, 0]
type = EnvShake
trigger1 = animelemtime(20) = 0
time = 200
freq = 120
ampl = -6
phase = 200
ignorehitpause = 1
persistent = 1

[State 3400]
type = Projectile
trigger1 = animelemtime(20) = [5,190]
trigger1 = Gametime%5 = 0
projanim = 3815
projid = 3888
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 1
projremove = 0
projhits = 1
projmisstime = 1
projheightbound = -500,500
projedgebound = 500
projstagebound = 500
offset = 0, 0
attr = S, HA
animtype = Hard
damage = floor(20*root,fvar(1)),2
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,10
sparkno = -1 ;;;S7003
guard.sparkno = -1 ;;;;S7007
sparkxy = 15 + (floor(p2bodydist X)),-45 + (floor(p2bodydist Y))
hitsound = S1, 5
guardsound = S2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 15
ground.velocity = 0,-10
air.velocity = 0,-10
airguard.velocity = -3,-4
guard.velocity = -2
priority = 7
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff    = 0
guard.cornerpush.veloff  = 0
airguard.cornerpush.veloff= 0
p2stateno = 3816
p2facing = 1

[State 3400]
type = Projectile
trigger1 = animelemtime(20) = 195
projanim = 3815
projid = 3889
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 2
projremove = 0
projhits = 1
projmisstime = 1
projheightbound = -500,500
projedgebound = 500
projstagebound = 500
offset = 0, 0
attr = S, HA
animtype = Hard
damage = floor(100*root,fvar(1)),20
hitflag = MAFP
guardflag = MA
pausetime = 0,10
sparkno = -1 ;;;S7003
guard.sparkno = -1 ;;;;S7007
sparkxy = 15 + (floor(p2bodydist X)),-45 + (floor(p2bodydist Y))
hitsound = S1, 2
guardsound = S2, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 15
ground.velocity = 0,-15
air.velocity = 0,-15
airguard.velocity = -3,-4
guard.velocity = -10
sprpriority = 2 
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff    = 0
guard.cornerpush.veloff  = 0
airguard.cornerpush.veloff= 0
p2stateno = 3818
p2facing = 1

[state 197, changestate]
type = destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;連続ヒット
[Statedef 3816]
type = A
movetype = H
physics = N
ctrl = 0

[State 4216, 0]
type = ChangeAnim2
trigger1 = Vel Y <= 0
value = 5652

[State 4216, 1]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 4216, 2]
type = VelAdd
trigger1 = 1
y = 0

[State 4216, 3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4216, 4]
type = ChangeState
trigger1 = time >= 4
value = 3418
;---------------------------------------------------------------------------
;強打ち上げ
[Statedef 3817]
type = A
movetype = H
physics = N
ctrl = 0

[State 4217, 0]
type = ChangeAnim2
trigger1 = Vel Y <= 0
value = 5652

[State 4217, 1]
type = VelSet
trigger1 = time = 0
x = 0
y = -50*Const(movement.yaccel)

[State 4217, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 4217, 3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4217, 4]
type = SelfState
trigger1 = time >= 30
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
;中打ち上げ
[Statedef 3818]
type = A
movetype = H
physics = N
ctrl = 0

[State 4218, 0]
type = ChangeAnim2
trigger1 = Vel Y <= 0
value = 5652

[State 4218, 1]
type = VelSet
trigger1 = time = 0
x = 0
y = -36*Const(movement.yaccel)

[State 4218, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 4218, 3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4218, 4]
type = SelfState
trigger1 = time >= 30
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
;リザレクション(開始)
[Statedef 3851]
Type = S
MoveType = I
phySics = S
Anim = 3990
Ctrl = 0
velset = 0,0
SprPriority = -1

[State 2250]
Type = posset
Trigger1 = time = 0
y = 0

[State 2250]
Type = lifeset
Trigger1 = life < 400
value = ifelse(life<200,200,400)

[State 2250]
Type = ChangeState
trigger1 = p2name = "Giygas" || p4name = "Giygas" || enemynear,name = "Giygas"
trigger1 = enemynear,stateno = 0
trigger2 = time >= 1200
value = 3852
;---------------------------------------------------------------------------
;リザレクション(開始)
[Statedef 3852]
Type = S
MoveType = I
phySics = S
Anim = 3636
Ctrl = 0
velset = 0,0
SprPriority = 5

[state 3000, explod]
type = explod
trigger1 = time = 0
anim = 3635
id = 3630
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -2
sprpriority = 99
ownpal = 1
ontop = 1
supermovetime = 99999999
pausemovetime = 99999999

[State 2250]
Type = posset
Trigger1 = time = 0
y = 0

[State 2250]
Type = lifeset
Trigger1 = life < 400
value = ifelse(life<200,200,400)

[State 2250]
Type = poweradd
Trigger1 = time = 0
value = -1000
;-------------------[サウンド]
[State 2250]
Type = PlaySnd
Trigger1 = time = 1
value = 18,7
volume = 255
;-------------------[無敵]
[State 2250]
Type = NotHitBy
Trigger1 = 1
value = SCA
;-------------------[押し合い判定]
[State 2250]
Type = PlayerPush
Trigger1 = 1
value = 0
igNoreHitPause = 1
;-------------------[時間停止]
[State 2250]
Type = SuperPause
Trigger1 = time = 0
Time=60
Anim = -1
Sound = s18,7
MoveTime = 60
darken = 0
unHittable = 0
ignoreHitPause = 1
;-------------------[残像]
[State 2250]
Type = ChangeState
Trigger1 = AnimTime = 0
value = 0
Ctrl = 1


;やられステート2
[Statedef 3651]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -1
;anim = 5752

[State 11116,]
type = lifeadd
trigger1 = name != "Rare Akuma"
value = -9999
absolute = 1
ignorehitpause = 1

[State 4003, 3]
type = LifeSet
trigger1 = name != "Rare Akuma"
value = 0
ignorehitpause = 1

[State 4003, 0]
type = DestroySelf
trigger1 = ishelper
trigger2 = ishelper = 1

[State 4003, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 5752

[State 1830]
type = ScreenBound
trigger1 = !alive
value = 0
movecamera = 0,0

[State 4003, 1]
type = VelSet
trigger1 = time = 0
x = ifelse(alive,-7.9,-14)
y = ifelse(alive,-9.8,-18)

[State 4003, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 4003, 4]
type = SelfState
trigger1 = alive
trigger1 = Pos Y >= 10
trigger1 = Vel Y > 0
value = 5100
;;
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1


[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
[State 11116,]
type = null
trigger1 = name != "Akemi-Homura"
trigger2 = name != "miki sayaka"
trigger3 = name != "Mami Tomoe"
trigger4 = name != "Sakura Kyouko"
trigger5 = name != "Madoka Kaname"
trigger6 = name != "kyubei"
ignorehitpause = 1
;;
[State 4003, 4]
type = ChangeState
trigger1 = !alive
trigger1 = Time = 60
value = 3658
