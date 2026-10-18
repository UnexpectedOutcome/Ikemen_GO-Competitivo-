;---------------------------------------------------------------------------
; Burning Attack - Start
[statedef 3000]
type = s
movetype = a
anim = 3000
ctrl = 0
velset = 0,0
facep2 = 1
poweradd = -1000
sprpriority = 3

[State SuperPause]
type = SuperPause
trigger1 = !time
time = 40
movetime = 40
anim = -1
sound = s3000,0
darken = 1
unhittable = 1

[State charge fx helper]
type = Helper
trigger1 = !time
name = "Super-Charge"
ID = 6810
stateno = 6810
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
postype = p1
ownpal = 1
supermovetime = 999
Pausemovetime = 999

[state voice]
type = playsnd
trigger1 = !time
value = s0,3000
channel = 0

[state changeanim]
type = changeanim
trigger1 = anim = 3000
trigger1 = time = 14
value = 3001

[state end]
type = changestate
trigger1 = time >= 43
value = 3002

;---------------------------------------------------------------------------
; Burning Attack - Fire
[statedef 3002]
type = u
movetype = u
anim = 3002
sprpriority = 3

[State Beam Hitbox Helper]
type = Helper
trigger1 = !time
name = "Beam HitBox"
ID = 3010
stateno = 3010
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
postype = p1
facing = 1
ownpal = 1
size.xscale = .75
size.yscale = .75

[state Beam Head Helper]
type = helper
trigger1 = !time
name = "Beam Head"
id = 3015
stateno = 3015
pos = floor(const(size.xscale)*40), floor(const(size.yscale)*-90)
postype = p1
facing = 1
ownpal = 1
size.xscale = .75
size.yscale = .75

[state Beam Tail Helper]
type = helper
trigger1 = !time
name = "Beam Tail"
id = 3020
stateno = 3020
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
postype = p1
facing = 1
ownpal = 1
size.xscale = .75
size.yscale = .75

[State hand explod]
type = Explod
trigger1 = !time
anim = 7900
ID = 7900
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
bindtime = -1
removetime = -1
scale = .2, .25
sprpriority = 4
ownpal = 1
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State dust]
type = Explod
trigger1 = !time
anim = 9912
ID = 9912
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 4
ownpal = 1

[state sfx]
type = playsnd
trigger1 = !time
value = s3000,1
channel = 4

[State Modify hand]
type = ModifyExplod
triggerall = numexplod(7900)
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3011
ID = 7900
scale = .2, ifelse(.25-(helper(3010),time*.025)>0, .25-(helper(3010),time*.025), 0)

[state end]
type = changestate
trigger1 = time >= 200
trigger2 = time && !numhelper(3010)
value = 3003

;---------------------------------------------------------------------------
; Burning Attack - End
[statedef 3003]
type = u
movetype = i
anim = 3003
sprpriority = 1

[state removeexplod]
type = removeexplod
trigger1 = numexplod(7900)
id = 7900

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Burning Attack - Beam HitBox Helper
[statedef 3010]
type = s
movetype = a
physics = n
sprpriority = 4

[State BindToParent]
type = BindToParent
trigger1 = 1
pos = floor(parent,const(size.xscale)*25), floor(parent,const(size.yscale)*-90)
ignorehitpause = 1

[state destroyself]
type = destroyself
trigger1 = parent, stateno != 3002

[state anim]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
value = 7801

[state freeze]
type = changeanim
trigger1 = movecontact
value = anim
elem = (animelemno(0))-1

[state reset hitcount]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(8) = 8

[state update hitcount]
type = varadd
trigger1 = !time
trigger1 = prevstateno
var(8) = -1

[state reset pausetime]
type = varset
trigger1 = !time
var(9) = ifelse(prevstateno=3012||!prevstateno, 0, 8)

[state update pausetime]
type = varadd
trigger1 = var(9)
var(9) = -1

[state reset time var]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(13) = 0

[state update time var]
type = varadd
trigger1 = time
var(13) = 1

[State HitDef]
type = HitDef
trigger1 = var(8) > 1
trigger1 = !var(9)
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = hard
damage = floor(parent, fvar(39)*30),7
pausetime = 0,8
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8001)
sparkxy = 0,0
hitsound = S1000,1
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
yaccel = .58
ground.velocity = -3,-4
air.velocity = -3,-4
ground.cornerpush.veloff = 0
fall = 0
getpower = 0,0
givepower = 30,30
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[State HitDef]
type = HitDef
trigger1 = var(8) = 1
trigger1 = !var(9)
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = hard
damage = floor(parent, fvar(39)*60),7
pausetime = 0,8
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8001)
sparkxy = 0,0
hitsound = S1000,1
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
yaccel = .58
ground.velocity = -7,-7
air.velocity = -7,-7
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[State Hit Sparks]
type = Helper
triggerall = MoveContact = 1
triggerall = prevstateno != 3012
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(3) = 8010 || var(3) = 8011 || var(3) = 8012 || var(3) = 8013 || var(3) = 8014
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(6) = 8000 || var(6) = 8001
stateNo = ifElse(MoveGuarded, var(6), var(3))
ID = 8000
name = "Spark"
postype = p1
pos = floor((enemynear,pos x + (enemynear,const(size.ground.back)*facing) - pos x)*facing),0
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state update damage dampener]
Type=Parentvarset
Trigger1=movehit=1
fvar(39)=parent,fvar(39)*.9

[State HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP

[state hitoverride]
type = hitoverride
trigger1 = 1
attr = sca, np, sp, hp
stateno = ifelse(!var(8), 3011, 3012)

[state again]
type = changestate
trigger1 = movecontact = 1
value = stateno

[state end]
type = changestate
trigger1 = var(13) >= 80
trigger2 = !var(8)
value = 3011

;---------------------------------------------------------------------------
; Burning Attack - Beam HitBox Die
[statedef 3011]
type = u
movetype = i
sprpriority = 4
anim = 1

[state destroy]
type = destroyself
trigger1 = time >= 10
trigger2 = parent, stateno != 3002

;---------------------------------------------------------------------------
; Burning Attack - Beam HitBox Hitoverride
[statedef 3012]
type = u
movetype = i
sprpriority = 4

[state nothiby]
type = nothitby
trigger1 = 1
value = sca

[state changeanim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0) - 1

[state destroyself]
type = destroyself
trigger1 = movereversed
trigger2 = parent, stateno != 3002

[state end]
type = changestate
trigger1 = time > 3
value = 3010

;---------------------------------------------------------------------------
; Burning Attack - Beam Head Helper
[statedef 3015]
type = s
movetype = i
physics = n
anim = 1
sprpriority = 4

[state velset]
type = velset
trigger1 = numhelper(3010)
x = ifelse(helper(3010),stateno=3010&&helper(3010),time<2, 2,20)

[state velset]
type = velset
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3012
x = 0

[State Beam Head explod]
type = Explod
trigger1 = !time
anim = 7800
ID = 7800
pos = 0,0
bindtime = -1
removetime = -1
scale = .7, .7
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[state removeexplod]
type = removeexplod
triggerall = numexplod(7800)
trigger1 = parent, stateno != 3002
id = 7800

[state destroyself]
type = destroyself
trigger1 = parent, stateno != 3002
trigger2 = !numhelper(3010)

[state end]
type = changestate
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3011
value = 3016

;---------------------------------------------------------------------------
; Burning Attack - Beam Head Die
[statedef 3016]
type = u
movetype = i
sprpriority = 4

[state velset]
type = velset
trigger1 = !time
x = vel x * .35

[State ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(7800)
ID = 7800
scale = .7, ifelse(.7-(time*.07)>0, .7-(time*.07), 0)
ignorehitpause = 1

[state removeexplod]
type = removeexplod
triggerall = numexplod(7800)
trigger1 = time >= 10
trigger2 = parent, stateno != 3002
id = 7800
ignorehitpause = 1

[state destroy]
type = destroyself
trigger1 = time >= 10
trigger2 = parent, stateno != 3002
trigger3 = !numhelper(3010)

;---------------------------------------------------------------------------
; Burning Attack - Beam Tail Helper
[statedef 3020]
type = s
movetype = a
physics = n
anim = 7602
sprpriority = 4

[state noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[state vel x]
type = varset
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
var(10) = ifelse(helper(3010),stateno=3010&&helper(3010),time<2, 2,20)*facing

[state posset]
type = posset
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
x = (helper(3015),pos x + helper(3010),pos x + var(10))*.5
ignorehitpause = 1

[State AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State AngleDraw]
type = AngleDraw
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
value = -abs(helper(3015),pos x - helper(3010),pos x)*.000005
scale = abs(helper(3015),pos x - helper(3010),pos x)*.133, .4+(sin(time*10)*.03)
ignorehitpause = 1

[state destroyself]
type = destroyself
trigger1 = parent, stateno != 3002
trigger2 = !numhelper(3010)

[state end]
type = changestate
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3011
value = 3021

;---------------------------------------------------------------------------
; Burning Attack - Beam Tail Helper Die
[statedef 3021]
type = u
movetype = i
sprpriority = 4

[state noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[state posset]
type = posset
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
x = (helper(3015),pos x + helper(3010),pos x + var(10))*.5
ignorehitpause = 1

[state angledraw]
type = angledraw
trigger1 = !time
scale = 1,1

[State AngleDraw]
type = AngleDraw
trigger1 = time
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
value = -abs(helper(3015),pos x - helper(3010),pos x)*.000005
scale = abs(helper(3015),pos x - helper(3010),pos x)*.133, ifelse(.25-(time*.025)>0, .25-(time*.025), 0)
ignorehitpause = 1

[state destroy]
type = destroyself
trigger1 = time >= 10
trigger2 = parent, stateno != 3002
trigger3 = !numhelper(3010)

;---------------------------------------------------------------------------
; Shining Sword - Start
[statedef 3100]
type = s
movetype = a
anim = 3100
ctrl = 0
velset = 0,0
facep2 = 1
poweradd = -1000
sprpriority = 3

[state cancel corner push]
type = varset
trigger1 = !time
fvar(5) = 0

[State SuperPause]
type = SuperPause
trigger1 = !time
time = 40
movetime = 40
anim = -1
sound = s3000,0
darken = 1
unhittable = 1

[State charge fx helper]
type = Helper
trigger1 = !time
name = "Super-Charge"
ID = 6810
stateno = 6810
pos = floor(const(size.xscale)*22), floor(const(size.yscale)*-63)
postype = p1
ownpal = 1
supermovetime = 999
Pausemovetime = 999

[state voice]
type = playsnd
trigger1 = !time
value = s0,3100
channel = 0

[state end]
type = changestate
trigger1 = time >= 40
value = 3101

;---------------------------------------------------------------------------
; Shining Sword - Jump
[statedef 3101]
type = u
movetype = u
anim = 3101
sprpriority = 3

[state nothitby]
type = nothitby
trigger1 = animelemtime(2) < 0
value = sca,na

[State dust]
type = Explod
trigger1 = !time
anim = 9912
ID = 9912
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 4
ownpal = 1

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = 9
y = -5

[state jump sfx]
type = null;playsnd
trigger1 = !animelemtime(2)
value = s100,0

[state typeset]
type = statetypeset
trigger1 = !animelemtime(2)
statetype = a
physics = n

[state gravity]
type = veladd
trigger1 = statetype = a
y = .46

[State HitDef]
type = HitDef
Triggerall=!movecontact
Triggerall=!movereversed
trigger1 = animelemtime(2) >= 0 
attr = a,ha
hitflag = MAF
guardflag = MA
sparkno = -1
guard.sparkno = -1 + 0*(var(6) := 8000)
sparkxy = var(4):=60, var(5):=-54
hitsound = S1,0
guardsound = S6,0
pausetime = 1,1
guard.pausetime = 13,13
numhits = 0
getpower = 0,0
givepower = 0,0
p1stateno = 3103

[state land] ;miss
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3102

;---------------------------------------------------------------------------
; Shining Sword - Land/Miss
[statedef 3102]
type = s
movetype = i
physics = s
anim = 3102

[state velset]
type = velset
trigger1 = !time
y = 0

[state posset]
type = posset
trigger1 = !time
y = 0

[state friction]
type = velmul
trigger1 = abs(vel x) > 0
x = .85

[state stop x]
type = velset
trigger1 = abs(vel x) = [0,.5]
x = 0

[state sheathe snd]
type = playsnd
trigger1 = !animelemtime(5)
value = s700,1

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shining Sword - Hit
[statedef 3103]
type = u
movetype = u
physics = n

[state targetdrop]
type = targetdrop
triggerall = !time && numtarget
trigger1 = target, ishelper
trigger2 = numtarget > 1
keepone = 1

[state safe]
type = changestate
trigger1 = !time && !numtarget
value = 3102

[state targetstate]
type = targetstate
trigger1 = !time && numtarget
value = 3150

[state changeanim]
type = changeanim
trigger1 = !time
value = 3103

[state targetfacing]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[state velset]
type = velset
trigger1 = !time
x = 0
y = 0

[state posset]
type = posset
trigger1 = !time && numtarget
y = ifelse(pos y < target, pos y, target, pos y, pos y)

[state posset safe]
type = posset
trigger1 = !time
trigger1 = pos y > 0
y = 0

[State TargetBind]
type = TargetBind
trigger1 = numtarget
trigger1 = target, stateno != 3152
pos = floor(const(size.xscale)*70),0

[state first slash sfx]
type = playsnd
trigger1 = anim = 3103
trigger1 = !animelemtime(1)
value = s1200,0

[state first slash hit sfx]
type = playsnd
trigger1 = anim = 3103
trigger1 = !animelemtime(2)
value = s5,5

[State EnvShake]
type = EnvShake
trigger1 = anim = 3103
trigger1 = !animelemtime(2)
time = 15
freq = 100
ampl = 5

[State remove life first hit]
type = TargetLifeAdd
triggerall = numtarget
trigger1 = anim = 3103
trigger1 = !animelemtime(2) 
value = floor(-100*fvar(39))
kill = 0

[state power add first hit]
type = targetpoweradd
triggerall = numtarget
trigger1 = anim = 3103
trigger1 = !animelemtime(2)
value = 40

[state remove life multiple hits]
type = targetlifeadd
triggerall = numtarget
trigger1 = anim = [3104,3106]
trigger1 = !animelemtime(2)
value = floor(-15*fvar(39))
kill = 0

[state power add multiple hits]
type = targetpoweradd
triggerall = numtarget
trigger1 = anim = [3104,3106]
trigger1 = !animelemtime(2)
value = 10

[state hitadd]
type = hitadd
trigger1 = anim = 3103
trigger1 = !animelemtime(2)
trigger2 = anim = [3104,3106]
trigger2 = !animelemtime(2)
trigger3 = anim = 3107
trigger3 = animelemtime(6) = 3
value = 1

[state changeanim]
type = changeanim
trigger1 = anim = 3103
trigger1 = !animtime
value = ifelse(random%2, 3104, 3106)

[state changeanim]
type = changeanim
trigger1 = hitcount < 7
trigger1 = anim = [3104,3106]
trigger1 = !animtime
value = ifelse(anim=3104, 3105+random%2, ifelse(anim=3105, ifelse(random%2,3104,3106), 3104+random%2))

[state changeanim]
type = changeanim
trigger1 = hitcount = 7
trigger1 = anim = 3106
trigger1 = !animtime
value = 3104+random%2

[state changeanim]
type = changeanim
trigger1 = hitcount = 8
trigger1 = anim != 3106
trigger1 = !animtime
value = 3106

[state swing sfx]
type = playsnd
trigger1 = anim = [3104,3106]
trigger1 = !animelemtime(1)
value = s4,2+random%2

[state hit sfx]
type = playsnd
trigger1 = anim = [3104,3106]
trigger1 = !animelemtime(2)
value = s5,2+random%2

[State Hit Spark]
type = Helper
trigger1 = anim = 3103
trigger1 = !animelemtime(2)
trigger2 = anim = [3104,3106]
trigger2 = !animelemtime(2)
trigger3 = anim = 3107
trigger3 = animelemtime(6) = 3
stateno = 8012
ID = 8000
name = "Spark"
postype = P1
pos = ifelse(anim=3107,floor(80*const(size.xscale)),floor(70*const(size.xscale))), ifelse(anim=3107,floor(-95*const(size.xscale)),floor(-72*const(size.xscale)))
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State TargetState]
type = TargetState
trigger1 = NumTarget
trigger1 = anim = [3104,3106]
trigger1 = !animelemtime(2)
value = ifelse(anim=3106, 3151,3150)

[state changeanim]
type = changeanim
trigger1 = hitcount = 9
trigger1 = anim != 3107 && anim != 3108
trigger1 = !animtime
value = 3107

[state hand fx]
type = Helper
trigger1 = anim = 3107
trigger1 = !animelemtime(6)
name = "Hand FX"
ID = 7700
stateno = 7700 
pos = floor(44*const(size.xscale)), floor(-100*const(size.yscale))
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state blast sfx]
type = playsnd
trigger1 = anim = 3107
trigger1 = animelemtime(6) = 1
value = s3100,0

[State EnvShake]
type = EnvShake
trigger1 = anim = 3107
trigger1 = animelemtime(6) = 3
time = 10
freq = 70
ampl = 5

[state targetlifeadd]
type = targetlifeadd
trigger1 = anim = 3107
trigger1 = animelemtime(6) = 3
value = floor(-64*fvar(39))
kill = 1

[state targetpoweradd]
type = targetpoweradd
trigger1 = anim = 3107
trigger1 = animelemtime(6) = 3
value = 26

[state update damage dampener]
type = varset
trigger1 = anim = [3104,3106]
trigger1 = !animelemtime(2)
trigger2 = anim = 3107
trigger2 = animelemtime(6) = 3
fvar(39)=fvar(39)*.92

[state targetstate]
type = targetstate
trigger1 = anim = 3107
trigger1 = animelemtime(6) = 3
value = 3152

[state changeanim]
type = changeanim
trigger1 = anim = 3107
trigger1 = animelemtime(6) > 0
trigger1 = !numhelper(7700)
value = 3108

[State TargetDrop]
type = TargetDrop
trigger1 = numtarget
trigger1 = target, stateno = 3152

[state end]
type = changestate
trigger1 = anim = 3108
trigger1 = !animtime
value = 50
ctrl = 0
;value = ifelse(pos y < 0, 50, 0)
;ctrl = ifelse(pos y < 0, 0, 1)

;---------------------------------------------------------------------------
; Shining Sword - Target slash down
[statedef 3150]
type = a
movetype = h
physics = n
sprpriority = -1
velset = 0,0

[state changeanim2]
type = changeanim2
trigger1 = !time
value = 3150

[State PosAdd]
type = PosAdd
trigger1 = 1
x = sin(time*4)

[state safe]
type = SelfState
trigger1 = !gethitvar(isbound)
trigger2 = time > 50
value = 5050

;---------------------------------------------------------------------------
; Shining Sword - Target slash up
[statedef 3151]
type = a
movetype = h
physics = n
sprpriority = -1
velset = 0,0

[state changeanim2]
type = changeanim2
trigger1 = !time
value = 3151

[State PosAdd]
type = PosAdd
trigger1 = 1
x = sin(time*4)

[state safe]
type = SelfState
trigger1 = !gethitvar(isbound)
trigger2 = time > 50
value = 5050

;---------------------------------------------------------------------------
; Shining Sword - Target launched
[statedef 3152]
type = a
movetype = h
physics = n
sprpriority = -1
velset = -6.4,-8

[state changeanim]
type = changeanim
trigger1 = !time
value = 5061

[state gravity]
type = veladd
trigger1 = 1
y = .5

[state selfstate]
type = selfstate
trigger1 = pos y > 0
trigger1 = pos y > -vel y
value = 5100

;---------------------------------------------------------------------------
; Shining Sword - Helper hand fx
[statedef 7700]
type = s
physics = n
anim = 7700
sprpriority = 4

[state noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State Trans]
type = Trans
trigger1 = 1
trans = add

[state scaling]
type = angledraw
trigger1 = 1
scale = 1, ifelse(sin(time*.25) >=0, sin(time*.25), 0)

[state destroy]
type = destroyself
trigger1 = parent, stateno != 3103
trigger2 = parent, anim != 3107
trigger3 = parent, movetype = h
trigger4 = time
trigger4 = sin(time*.25) < 0
