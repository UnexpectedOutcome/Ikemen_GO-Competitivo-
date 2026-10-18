;===========================================================================
;†††common override†††
;===========================================================================
;===========================================================================
;-| common actions |--------------------------------------------------------
;===========================================================================
;■ニュートラル
[statedef 0]
type = s
physics = s

[state 0, changeanim]
type = changeanim
triggerall = var(27) = 0
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 0

[state 0, changeanim]
type = changeanim
trigger1 = var(27) = 1
elem = 11
value = 3470
ignorehitpause = 1

[state 0, palfx]
type = palfx
trigger1 = var(27) = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 0, assertspecial]
type = assertspecial
trigger1 = var(27) = 1
flag = noautoturn

[state 0, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 0, velset]
type = velset
trigger1 = time = 0
y = 0

[state 0, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 0, changestate]
type = changestate
trigger1 = !alive
value = 5050
;---------------------------------------------------------------------------
;■歩行
[statedef 20]
type    = s
physics = s

[state 20, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 20, velset]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[state 20, velset]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[state 20, changeanim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 20

[state 20, changeanim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 21
;---------------------------------------------------------------------------
;■歩行(ai)
[statedef 21]
type    = s
physics = s
ctrl = 0

[state 21, velset]
type = velset
trigger1 = time = 0
trigger1 = random = [0,699]
trigger2 = anim = 20
x = const(velocity.walk.fwd.x)

[state 21, velset]
type = velset
trigger1 = time = 0
trigger1 = random = [700,999]
trigger2 = anim = 21
x = const(velocity.walk.back.x)

[state 21, changeanim]
type = changeanim
triggerall = vel x >= 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 20

[state 21, changeanim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 21

[state 21, changestate]
type = changestate
trigger1 = p2movetype = a
trigger2 = roundstate != 2
trigger2 = time > 200
trigger3 = p2dist x < 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ジャンプスタート
[statedef 40]
type    = s
physics = s
anim = 40
ctrl = 0

[state 40, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 40, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 40, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 40, varset]
type = varset
trigger1 = command = "holdfwd"
sysvar(1) = 1

[state 40, varset]
type = varset
trigger1 = command = "holdback"
sysvar(1) = -1

[state 40, velset]
type = velset
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 40, velset]
type = velset
trigger1 = animtime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[state 40, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■ジャンプスタート(ai)
[statedef 41]
type    = s
physics = s
anim = 40
ctrl = 0

[state 41, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 41, varset]
type = varset
trigger1 = time = 0
trigger2 = var(53) = 2
sysvar(1) = 0

[state 41, varset]
type = varset
trigger1 = var(53) = 0
trigger1 = random = [0,699]
trigger2 = var(53) != 0
trigger2 = var(53) != 2
sysvar(1) = 1

[state 41, varset]
type = varset
trigger1 = var(53) = 0
trigger1 = random = [950,999]
sysvar(1) = -1

[state 41, velset]
type = velset
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 41, velset]
type = velset
trigger1 = animtime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[state 41, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■エアジャンプ
[statedef 45]
type    = a
physics = n
ctrl = 0
velset = 0,0

[state 45, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "magic circle jump"
stateno = 20040
id = 20040
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 45, changeanim]
type = changeanim
trigger1 = selfanimexist(44)
value = 44

[state 45, changeanim]
type = changeanim
trigger1 = !selfanimexist(44)
value = 41

[state 45, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 45, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = var(53) = 0
trigger2 = random = [0,699]
trigger3 = var(53) != 0
sysvar(1) = 1

[state 45, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = var(53) = 0
trigger2 = random = [950,999]
sysvar(1) = -1

[state 45, velset]
type = velset
trigger1 = time = 2
x = ifelse(sysvar(1)=0,const(velocity.airjump.neu.x),ifelse(sysvar(1)=1,const(velocity.airjump.fwd.x),const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[state 45, changestate]
type = changestate
trigger1 = time = 2
value = ifelse(var(9)=1,63,50)
ctrl = 1
;---------------------------------------------------------------------------
;■ジャンプアップ
[statedef 50]
type    = a
physics = a

[state 50, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 50, changeanim]
type = changeanim
trigger1 = time = 0
value = ifelse((vel x)=0,41,ifelse((vel x)>0,42,43))
elem = (prevstateno=[110,115])*3

[state 50, changeanim]
type = changeanim
trigger1 = vel y > -2
trigger1 = selfanimexist(anim + 3)
persistent = 0
value = anim + 3
;---------------------------------------------------------------------------
;■スーパージャンプ
[statedef 60]
type = a
movetype = i
physics = a
ctrl = 0

[state 60, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "magic circle jump"
stateno = 20040
id = 20040
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 60, varset]
type = varset
trigger1 = 1
var(10) = 1

[state 60, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "sjump-n"
var(7) = 0

[state 60, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "sjump-f"
var(7) = 1

[state 60, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "sjump-b"
var(7) = -1

[state 60, afterimage]
type = afterimage
trigger1 = time = 0
time = 20
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 60, changeanim]
type = changeanim
trigger1 = time = 0
value = 41;+(var(7)=1)+(var(7)=-1)*2
persistent = 0

[state 60, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 60, velset]
type = velset
trigger1 = time = 0
x = var(7)*3
y = -17

[state 60, changestate]
type = changestate
trigger1 = time = 2
value = 63
;---------------------------------------------------------------------------
[statedef 63]
type = a
movetype = i
physics = a
ctrl = 1

[state 63, changeanim]
type = changeanim
trigger1 = anim != 41
trigger1 = anim != 43
trigger1 = anim != 63
value = ifelse(prevstateno=465,43,63)
persistent = 0

[state 63, turn]
type = turn
trigger1 = p2dist x < 0

[state 63, veladd]
type = veladd
trigger1 = command = "holdfwd"
x = 0.1

[state 63, veladd]
type = veladd
trigger1 = command = "holdback"
x = -0.1
;---------------------------------------------------------------------------
;■エアロダイブ・ターン
[statedef 80]
type = a
movetype = i
physics = a
anim = 80
poweradd = 20
velset = 0,0
ctrl = 0

[state 80, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "aero1"
var(7) = 0

[state 80, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "aero2"
var(7) = 3

[state 80, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "aero3"
var(7) = 15

[state 80, posfreeze]
type = posfreeze
trigger1 = 1

[state 80, helper]
type = helper
trigger1 = time = 0
trigger2 = time = 3
trigger3 = time = 6
helpertype = normal
name = "magic circle aero"
stateno = 21700
id = 21700
pos = -floor(const(size.xscale)*30),-floor(const(size.yscale)*90)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5*const(size.xscale)
size.yscale = 0.5*const(size.yscale)

[state 80, changestate]
type = changestate
trigger1 = animtime = 0
value = 81
;---------------------------------------------------------------------------
;■エアロダイブ・ブースト
[statedef 81]
type = a
physics = a
anim = 81
velset = 10+var(7),13

[state 81, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 81, ctrlset]
type = ctrlset
trigger1 = time = 1
value = 1
;---------------------------------------------------------------------------
;■ダッシュ
[statedef 100]
type    = s
physics = s
anim = 100

[state 100, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 100, assertspecial]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 100, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)+(prevstateno=901)*2

[state 100, ctrlset]
type = ctrlset
trigger1 = prevstateno = 197
value = 1

[state 100, changestate]
type = changestate
trigger1 = command != "holdfwd"
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ダッシュ(ai)
[statedef 101]
type    = s
physics = s
ctrl = 0

[state 101, assertspecial]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 101, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 101, changeanim]
type = changeanim
trigger1 = anim != 100
value = 100

[state 101, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)

[state 101, changestate]
type = changestate
trigger1 = time >= 100
trigger2 = p2movetype = a
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■バックステップ
[statedef 105]
type    = a
physics = a
anim = 105
ctrl = 0

[state 105, assertspecial]
type = assertspecial
trigger1 = 1
flag = noairguard

[state 105, nothitby]
type = nothitby
trigger1 = 1
time = 2
value = sca,aa

[state 105, varset]
type = varset
trigger1 = 1
var(10) = 0

[state 105, velset]
type = velset
trigger1 = time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[state 105, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 106
;---------------------------------------------------------------------------
;■空中ダッシュ
[statedef 110]
type    = a
physics = n
anim = 110

[state 110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noairguard
flag2 = noautoturn

[state 110, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "magic circle air"
stateno = 20110
id = 20110
pos = 0,-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 110, velset]
type = velset
trigger1 = time = 0
x = 8+(prevstateno=901)*12
y = 0

[state 110, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 110, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 110, changestate]
type = changestate
trigger1 = time >= 20
value = ifelse(var(9)=1,63,50)
;---------------------------------------------------------------------------
;■空中バックダッシュ
[statedef 115]
type    = a
physics = n
anim = 115

[state 115, assertspecial]
type = assertspecial
trigger1 = 1
flag = noairguard
flag2 = noautoturn

[state 115, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "magic circle air"
stateno = 20110
id = 20110
pos = 0,-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 115, velset]
type = velset
trigger1 = time = 0
x = -8
y = 0

[state 115, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 115, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 115, changestate]
type = changestate
trigger1 = time >= 20
value = ifelse(var(9)=1,63,50)
;===========================================================================
;■guard (start)
[statedef 120]
type = u
physics = u

[state 120, ctrlset]
type = ctrlset
trigger1 = var(50) = 0
value = 1

[state 120, changeanim]
type = changeanim
trigger1 = time = 0
value = 120 + (statetype = c) + (statetype = a)*2

[state 120, changeanim]
type = changeanim
triggerall = var(50) != 0
trigger1 = time = 10
trigger2 = prevstateno = [120,155]
value = 130 + (statetype = c) + (statetype = a)*2

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
physics = s

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
physics = c

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
physics = a

[state 120, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 120, statetypeset]
type = statetypeset
triggerall = statetype = c
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 120, changestate]
type = changestate
trigger1 = animtime = 0
value = 130 + (statetype = c) + (statetype = a)*2

[state 120, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■stand guard (guarding)
[statedef 130]
type    = s
physics = s

[state 130, changeanim]
type = changeanim
trigger1 = anim != 130
value = 130

[state 130, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2statetype = s
trigger3 = p2bodydist x > 100
value = 131

[state 130, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■crouch guard (guarding)
[statedef 131]
type    = c
physics = c

[state 131, changeanim]
type = changeanim
trigger1 = anim != 131
value = 131

[state 131, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
value = 130

[state 131, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■air guard (guarding)
[statedef 132]
type    = a
physics = n

[state 132,  changeanim]
type = changeanim
trigger1 = anim != 132
value = 132

[state 132, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 132, varset]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 132, velset]
type = velset
trigger1 = sysvar(0)
y = 0

[state 132, posset]
type = posset
trigger1 = sysvar(0)
y = 0

[state 132, changestate]
type = changestate
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
value = 130

[state 132, changestate]
type = changestate
trigger1 = sysvar(0)
value = 52

[state 132, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■guard (end)
[statedef 140]
type = u
physics = u
ctrl = 1

[state 140, changeanim]
type = changeanim
trigger1 = time = 0
value = 140 + (statetype = c) + (statetype = a)*2

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
physics = s

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
physics = c

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
physics = a

[state 140, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 140, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;■sguardhit (shaking)
[statedef 150]
type    = s
movetype= h
physics = n
velset = 0,0

[state 150, changeanim]
type = changeanim
trigger1 = 1
value = 150

[state 150, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 150, changestate]
type = changestate
trigger1 = var(50) != 0
trigger1 = hitshakeover
value = 151 + 2*(p2statetype = c || p2bodydist x > 100)

[state 150, statetypeset]
type = statetypeset
triggerall = statetype = s 
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 150, statetypeset]
type = statetypeset
triggerall = statetype = c
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;■sguardhit2 (knocked back)
[statedef 151]
type    = s
movetype= h
physics = s
anim = 150

[state 151, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 151, velset]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 151, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 151, statetypeset]
type = statetypeset
triggerall = statetype = s 
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 151, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 151, changestate]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1
;---------------------------------------------------------------------------
;■cguardhit (shaking)
[statedef 152]
type    = c
movetype= h
physics = n
velset = 0,0

[state 152, changeanim]
type = changeanim
trigger1 = 1
value = 151

[state 152, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 152, changestate]
type = changestate
trigger1 = var(50) != 0
trigger1 = hitshakeover
value = 153

[state 152, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 152, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;■cguardhit2 (knocked back)
[statedef 153]
type    = c
movetype= h
physics = c
anim = 151

[state 153, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 153, velset]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 153, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 153, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 153, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 153, changestate]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1
;---------------------------------------------------------------------------
;■aguardhit (shaking)
[statedef 154]
type    = a
movetype= h
physics = n
velset = 0,0

[state 154, changeanim]
type = changeanim
trigger1 = 1
value = 152

[state 154, changestate]
type = changestate
trigger1 = hitshakeover
value = 155
;---------------------------------------------------------------------------
;■aguardhit2 (knocked away)
[statedef 155]
type    = a
movetype= h
physics = n
anim = 152

[state 155, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 155, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 155, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 155, varset]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 155, velset]
type = velset
trigger1 = sysvar(0)
y = 0

[state 155, posset]
type = posset
trigger1 = sysvar(0)
y = 0

[state 155, changestate]
type = changestate
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
value = 130

[state 155, changestate]
type = changestate
trigger1 = sysvar(0)
value = 52
;===========================================================================
;■hita_fall (knocked up, falling)
[statedef 5050]
type    = a
movetype= h
physics = n

[state 5050, changeanim]
type = changeanim
trigger1 = animtime = 0
trigger1 = anim = 5035
trigger2 = time = 0
trigger2 = anim != 5035
trigger2 = (anim != [5051, 5059]) && (anim != [5061, 5069])
trigger2 = anim != 5090
value = 5050

[state 5050, changeanim]
type = changeanim
trigger1 = anim = [5050,5059]
trigger1 = vel y >= ifelse(anim = 5050, 1, -2)
trigger1 = selfanimexist(anim+10)
value = anim+10
persistent = 0

[state 5050, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5050, changestate]
type = changestate
triggerall = vel y > 0
triggerall = pos y >= -20
triggerall = alive
triggerall = canrecover
trigger1 = var(50) = 0
trigger1 = command = "recovery"
trigger2 = var(50) != 0
trigger2 = 10*var(50);50
value = 5200

[state 5050, changestate]
type = changestate
triggerall = vel y > -1
triggerall = alive
triggerall = canrecover
trigger1 = var(50) = 0
trigger1 = command = "recovery"
trigger2 = var(50) != 0
trigger2 = 10*var(50);50
value = 5210

[state 5050, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100
;---------------------------------------------------------------------------
;■hit_airfallrecover
[statedef 5210]
type    = a
movetype= i
physics = n
anim = 5210
ctrl = 0

[state 5210, palfx]
type = palfx
trigger1 = time = 0
time = 3
add = 128,128,128

[state 5210, posfreeze]
type = posfreeze
trigger1 = time = 0
value = 4

[state 5210, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < -20

[state 5210, velmul] 
type = velmul
trigger1 = time = 4
x = .8
y = .8

[state 5210, veladd]
type = veladd
trigger1 = time = 4
y = -4.5

[state 5210, velmul] 
type = velmul
trigger1 = time = 4
trigger1 = vel y > 0
y = .5

[state 5210, veladd]
type = veladd
trigger1 = time = 4
trigger1 = vel y > -3
y = -2

[state 5210, veladd]
type = veladd
trigger1 = time = 4
trigger1 = vel y > -2
y = -1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = 20*var(50);100
y = 1.5

[state 5210, velmul]
type = velmul
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = 10*var(50);50
x = 1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = 10*var(50);50
x = -1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdup"
trigger2 = var(50) != 0
trigger2 = 1*var(50);5
y = -2

[state 5210, nothitby]
type = nothitby
trigger1 = time = 0
value = sca
time = 15

[state 5210, ctrlset]
type = ctrlset
trigger1 = time = 20
value = 1

[state 5210, veladd]
type = veladd
trigger1 = time >= 4
y = .35

[state 5210, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
;■hit_airfallrecover
[statedef 5255]
type    = a
movetype= i
physics = n
anim = 5210
ctrl = 0

[state 5210, palfx]
type = lifeset
trigger1 = time = 0
value = 500
absolute = 1

[state 5210, palfx]
type = palfx
trigger1 = time = 0
time = 3
add = 128,128,128

[state 5210, posfreeze]
type = posfreeze
trigger1 = time = 0
value = 4

[state 5210, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < -20

[state 5210, velmul] 
type = velmul
trigger1 = time = 4
x = .8
y = .8

[state 5210, veladd]
type = veladd
trigger1 = time = 4
y = -4.5

[state 5210, velmul] 
type = velmul
trigger1 = time = 4
trigger1 = vel y > 0
y = .5

[state 5210, veladd]
type = veladd
trigger1 = time = 4
trigger1 = vel y > -3
y = -2

[state 5210, veladd]
type = veladd
trigger1 = time = 4
trigger1 = vel y > -2
y = -1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = 20*var(50);100
y = 1.5

[state 5210, velmul]
type = velmul
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = 10*var(50);50
x = 1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = 10*var(50);50
x = -1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdup"
trigger2 = var(50) != 0
trigger2 = 1*var(50);5
y = -2

[state 5210, nothitby]
type = nothitby
trigger1 = 1
value = sca

[state 5210, nothitby]
type = playerpush
trigger1 = 1
value = 0

[state 5210, ctrlset]
type = ctrlset
trigger1 = time = 20
value = 1

[state 5210, veladd]
type = veladd
trigger1 = time >= 4
y = .35

[state 5210, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1

;===========================================================================
;■勝利
[statedef 180]
type = s
velset = 0,0

[state 180, posset]
type = posset
trigger1 = time = 0
y = 0

[state 180, assertspecial]
type = assertspecial
trigger1 = var(27) = 1
flag = noautoturn

[state 180, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 180, changestate]
type = changestate
trigger1 = var(27)= 1
value = 680

[state 180, changestate]
type = changestate
triggerall = matchover
trigger1 = prevstateno = 3630
trigger1 = var(53)= 2
value = 667

[state 180, changestate]
type = changestate
triggerall = matchover
trigger1 = var(53)= 1
value = 666

[state 180, changestate]
type = changestate
triggerall = matchover
trigger1 = partner,name = "Madoka Kaname"  
trigger1 = partner,stateno = [3905,3906]
trigger2 = prevstateno = 3630
trigger3 = !partner,alive  
trigger3 = partner,name = "Madoka Kaname" || partner,name = "Tomoe Mami"
trigger4 = palno = 12
value = 649

[state 180, changestate]
type = changestate
trigger1 = var(40) = 1
trigger2 = prevstateno = 3630
trigger3 = partner,name = "Madoka Kaname"  
trigger3 = partner,stateno = [3905,3906]
trigger4 = !partner,alive  
trigger4 = partner,name = "Madoka Kaname" || partner,name = "Tomoe Mami"
trigger5 = palno = 12
trigger6 = var(53)= 1 
value = 640

[State -2, ChangeState]
type = ChangeState
trigger1 = roundno < 3
trigger1 = palno = [1,11]
trigger1 = partner,palno = [1,11]
trigger1 = matchover
trigger1 = partner,alive  
trigger1 = partner,name = "Madoka Kaname"
trigger1 = !var(40)
trigger1 = !partner,var(40)
value = 677

[state 180, changestate]
type = changestate
trigger1 = matchover
value = 690

[state 180, changestate]
type = changestate
trigger1 = var(3) = lifemax
value = 670

[state 180, changestate]
type = changestate
trigger1 = time = 0
value = 630
;---------------------------------------------------------------------------
;■勝利１（悩殺！さやかちゃん）
[statedef 630]
ctrl = 0
anim = 630

[state 630, varset]
type = varset
trigger1 = matchno = 1
trigger1 = roundno = 1
trigger1 = teamside != 2
trigger1 = numenemy > 0
trigger1 = enemy,ishometeam = 1
var(7) = 1

[state 630, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 1,4

[state 630, varrandom]
type = varrandom
trigger1 = var(12) = 400
trigger2 = var(12) = 600
v = 6
range = 0,1

[state 630, playsnd]
type = playsnd
triggerall = animelemtime(4) = 0
triggerall = numpartner = 1
triggerall = partner,alive = 1
trigger1 = var(12) = 400
trigger2 = var(12) = 600
value = 10,40+20*(var(12)=600)+var(6)
channel = 0

[state 630, varrandom]
type = varrandom
trigger1 = var(12) = 500
v = 6
range = 0,2

[state 630, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger1 = numpartner = 1
trigger1 = partner,alive = 1
trigger1 = var(12) = 500
value = 10,50+var(6)
channel = 0

[state 630, playsnd]
type = playsnd
triggerall = animelemtime(4) = 0
trigger1 = var(12) != [400,699]
trigger2 = numpartner = 1
trigger2 = partner,alive = 0
trigger2 = var(12) = [400,699]
value = 10,ifelse(var(7)=1,10,var(5))
channel = 0

[state 630, assertspecial]
type = assertspecial
trigger1 = time < 200
flag = roundnotover
;---------------------------------------------------------------------------
;■勝利２（欝だ死のう）
[statedef 640]
ctrl = 0
anim = ifelse(matchover,5500,640)

[state 640, assertspecial]
type = assertspecial
trigger1 = anim = 640
trigger1 = time < 200
trigger2 = anim = 5500
trigger2 = time < 600
flag = roundnotover

[state 640, posadd]
type = posadd
triggerall = anim = 640
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = -10

;---------------------------------------------------------------------------
;■勝利２（欝だ死のう）
[statedef 666]
ctrl = 0
anim = 645

[state 640, assertspecial]
type = assertspecial
trigger1 = time >= 400
flag = nomusic
flag2 = nobardisplay

[state 640, assertspecial]
type = assertspecial
trigger1 = time < 1800
flag = roundnotover

[state 630, playsnd]
type = playsnd
trigger1 = time = 400
value = 11,34
channel = 15
volume = 255

[state 640, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = -10
;---------------------------------------------------------------------------
;■勝利２（欝だ死のう）
[statedef 667]
ctrl = 0
anim = 1

[state 3000, nothitby]
type = assertspecial
trigger1 = 1
flag = invisible

[state 640, assertspecial]
type = assertspecial
trigger1 = time < 1800
flag = roundnotover

;===========================================================================
;■へちょ化
[statedef 677]
type = S
physics = S
velset = 0,0
ctrl = 0
anim = 197

[state 197, varrandom]
type = nothitby
trigger1 = 1
value = SCA

[state 197, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,11

[state 197, explod]
type = explod
trigger1 = time = 0
anim = 31000
id = 31000
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[State -2, ChangeState]
type = AssertSpecial
trigger1 = time < 2000
flag = roundnotover

[State -2, ChangeState]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nomusic
;---------------------------------------------------------------------------
;■勝利２（欝だ死のう）
[statedef 649]
ctrl = 0
anim = 645

[state 3000, nothitby]
type = assertspecial
trigger1 = matchover
trigger1 = enemynear,name = "Oktavia Von Seckendorff" || enemy,name = "Oktavia Von Seckendorff"
flag = invisible

[state 630, playsnd]
type = changeanim
trigger1 = enemynear,name = "Rare Akuma" || enemynear,name = "Dai Gouki"
trigger1 = time = 0
value = 640

[state 630, playsnd]
type = changeanim
trigger1 = enemynear,name = "Rare Akuma" || enemynear,name = "Dai Gouki"
trigger1 = time = 400
value = 670

[state 640, assertspecial]
type = assertspecial
trigger1 = enemynear,name != "Rare Akuma" && enemynear,name != "Dai Gouki"
trigger1 = time < 600
flag = roundnotover

[state 640, assertspecial]
type = assertspecial
trigger1 = enemynear,name = "Rare Akuma" || enemynear,name = "Dai Gouki"
trigger1 = time < 1800
flag = roundnotover

[state 630, playsnd]
type = playsnd
trigger1 = enemynear,name = "Rare Akuma" || enemynear,name = "Dai Gouki"
trigger1 = time = 400
value = 6666,1
channel = 15
volume = 255

[state 640, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = -10

;---------------------------------------------------------------------------
;■勝利・パーフェクト
[statedef 670]
ctrl = 0
anim = 670+(facing=-1)

[state 670, assertspecial]
type = assertspecial
trigger1 = time < 270
flag = roundnotover

[state 670, varset]
type = varset
trigger1 = matchno = 1
trigger1 = roundno = 1
trigger1 = teamside != 2
trigger1 = numenemy > 0
trigger1 = enemy,ishometeam = 1
var(7) = 1

[state 670, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 11,13

[state 670, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 10,ifelse(var(7)=1,10,var(5))
channel = 0

[state 670, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -10
;---------------------------------------------------------------------------
;■惨殺勝利
[statedef 680]
ctrl = 0

[state 680, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover
flag2 = noautoturn

[state 680, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 680, changeanim]
type = changeanim
trigger1 = 1
elem = 11
value = 3470
ignorehitpause = 1

[state 680, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,3430
channel = 0

[state 680, changestate]
type = changestate
trigger1 = time = 1
value = 681
;---------------------------------------------------------------------------
;■惨殺勝利・狂い斬り
[statedef 681]
type = s
movetype = a
physics = s
anim = 3460
ctrl = 0

[state 681, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover
flag2 = noautoturn

[state 681, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 681, varadd]
type = varadd
trigger1 = time = 1
var(7) = 1
persistent = 0

[state 681, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 7,9

[state 681, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = 0,8

[state 681, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(9) = 0
value = 0,5

[state 681, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 1,var(5)

[state 681, explod]
type = explod
triggerall = var(39) != 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
anim = 29000
id = 29000
pos = ifelse(frontedgedist<50,floor(const(size.xscale)*35),floor(const(size.xscale)*75)),0
postype = p1
random = 30, 0
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0

[state 681, envshake]
type = envshake
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
time = 20
freq = 60
ampl = -4
phase = 4

[state 681, targetstate]
type = targetstate
triggerall = numtarget(3400) > 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 3496

[state 681, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(7)>=4,682,681)
;---------------------------------------------------------------------------
;■惨殺勝利・狂い斬りフィニッシュ
[statedef 682]
type = s
movetype = a
physics = s
anim = 3470
ctrl = 0

[state 682, assertspecial]
type = assertspecial
trigger1 = time < 270
trigger1 = numhelper(3499) = 0
trigger2 = time < 1800
trigger2 = numhelper(3499) >= 1
flag = roundnotover

[state 682, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 682, changeanim]
type = changeanim
trigger1 = time < 10
value = 3470
ignorehitpause = 1

[state 682, changeanim]
type = changeanim
trigger1 = time > 200
trigger1 = animelemtime(11) > 0
elem = 11
value = 3470
ignorehitpause = 1

[state 682, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 682, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 30
value = 0,6

[state 682, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 1,10

[state 682, envshake]
type = envshake
trigger1 = animelemtime(6) = 0
time = 60
freq = 70
ampl = -4
phase = 4

[state 682, explod]
type = explod
triggerall = var(39) != 0
trigger1 = animelemtime(6) = 0
anim = 29000
id = 29000
pos = ifelse(frontedgedist<50,floor(const(size.xscale)*35),floor(const(size.xscale)*75)),0
postype = p1
random = 30,0
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0

[state 682, targetstate]
type = targetstate
triggerall = numtarget(3400) > 0
trigger1 = animelemtime(6) = 0
value = 3497
;---------------------------------------------------------------------------
;■勝利・決着（変身解除）
[statedef 690]
type = s
ctrl = 0
anim = 600

[state 690, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 690 helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "magica release"
stateno = 10000
id = 10600
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 690, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 4,1

[state 690, veladd]
type = veladd
trigger1 = animelemtime(2) > 0
y = -0.005

[state 690, changestate]
type = changestate
trigger1 = animtime = 0
value = 695
;---------------------------------------------------------------------------
[statedef 695]
type = a
physics = n
anim = 610

[state 695, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 695, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 695, changestate]
type = changestate
trigger1 = pos y >= -1
value = 698
;---------------------------------------------------------------------------
[statedef 698]
type    = s
physics = s
ctrl = 0
anim = 620

[state 698, assertspecial]
type = assertspecial
trigger1 = time < 250
flag = roundnotover

[state 698, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 10,ifelse(var(40)=0,17,18)
channel = 0

[state 698, velset]
type = velset
trigger1 = time = 0
y = 0

[state 698, posset]
type = posset
trigger1 = time = 0
y = 0
;===========================================================================
;■イントロ
[statedef 190]
type = s
ctrl = 0
anim = 1

[state 190, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [677,678]
value = 879

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [671,672]
value = 882

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [683,684]
value = 884

[State 180, 1]
type = ChangeState
trigger1 = time = 1
trigger1 = var(11) = [688,689]
value = ifelse(random%2,889,888)

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 888
value = 895

[State 180, 1]
type = ChangeState
trigger1 = time = 1
trigger1 = var(11) = [691,692]
value = ifelse(numpartner,10897,897)

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [666,667]
value = 899

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [300,301]
value = 830+(random<500)

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [320,321]
value = 832

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [330,331]
value = 833

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [390,391]
value = 839

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [400,401]
value = 840

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 400
value = 845

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 500
value = ifelse(random%2,855,856)

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 600
value = 865

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [800,801]
value = 880

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = [800,801]
value = 880

[state 190, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,5

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(5) < 3
trigger1 = numpartner
value = 870+(random<500)

[state 190, changestate]
type = changestate
trigger1 = time = 1
value = 800+var(5)
;===========================================================================
;■イントロ＃０ 『魔法少女さやかちゃんの登場だよ！』
[statedef 800]
type = s
anim = 870

[state 800, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 800, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,20
channel = 0

[state 800, changeanim]
type = changeanim
trigger1 = time = 60
value = 871

[state 800, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 250
value = 870

[state 800, changeanim]
type = changeanim
trigger1 = time = 100
value = 872

[state 800, changestate]
type = changestate
trigger1 = time = 270
value = 808
;===========================================================================
;■イントロ＃１ 『やってやりますか！』
[statedef 801]
type = s
anim = 870

[state 801, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 801, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,21
channel = 0

[state 801, changeanim]
type = changeanim
trigger1 = time = 60
value = 871

[state 801, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 230
value = 870

[state 801, changeanim]
type = changeanim
trigger1 = time = 125
value = 872

[state 801, changestate]
type = changestate
trigger1 = time = 270
value = 808
;===========================================================================
;■イントロ＃２ 『お前なんかに何が分かる！』
[statedef 802]
type = s
anim = 800

[state 802, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 802, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,22
channel = 0

[state 802, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 802, changeanim]
type = changeanim
trigger1 = time = 140
value = 800

[state 802, changestate]
type = changestate
trigger1 = time = 165
value = 808
;===========================================================================
;■イントロ＃３ 『これは・・私の戦いなんだ！』
[statedef 803]
type = s
anim = 800

[state 803, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 803, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,23
channel = 0

[state 803, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 120
value = 802

[state 803, changeanim]
type = changeanim
trigger1 = time = 90
value = 801

[state 803, changeanim]
type = changeanim
trigger1 = time = 100
trigger2 = time = 200
value = 800

[state 803, changestate]
type = changestate
trigger1 = time = 225
value = 808
;===========================================================================
;■イントロ＃４ 『あたしだけは自分のために魔法を使ったりしない！』
[statedef 804]
type = s
anim = 800

[state 804, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 804, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,24
channel = 0

[state 804, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 804, changeanim]
type = changeanim
trigger1 = time = 260
value = 800

[state 804, changestate]
type = changestate
trigger1 = time = 285
value = 808
;===========================================================================
;■イントロ＃５ 『もし魔女より悪い人間が居れば、私は戦うよ！』
[statedef 805]
type = s
anim = 800

[state 805, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 805, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,25
channel = 0

[state 805, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 200
value = 802

[state 805, changeanim]
type = changeanim
trigger1 = time = 170
value = 801

[state 805, changeanim]
type = changeanim
trigger1 = time = 180
trigger2 = time = 280
value = 800

[state 805, changestate]
type = changestate
trigger1 = time = 305
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『今度は何を企んでるのさ！』（vs暁美ほむら１）
[statedef 830]
type = s
anim = 830

[state 830, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 830, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,30
channel = 0

[state 830, changeanim]
type = changeanim
trigger1 = time = 80
value = 831

[state 830, changeanim]
type = changeanim
trigger1 = time = 85
trigger2 = time = 210
value = 832

[state 830, changeanim]
type = changeanim
trigger1 = time = 100
value = 833

[state 830, changeanim]
type = changeanim
trigger1 = time = 240
value = 835

[state 830, changestate]
type = changestate
trigger1 = anim = 835
trigger1 = animtime = 0
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『遅かったじゃない、転校生！』（vs暁美ほむら２）
[statedef 831]
type = s
anim = 830

[state 831, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 831, playsnd]
type = playsnd
trigger1 = time = 30
value = 10,31
channel = 0

[state 831, changeanim]
type = changeanim
trigger1 = time = 80
value = 831

[state 831, changeanim]
type = changeanim
trigger1 = time = 85
trigger2 = time = 155
trigger3 = time = 195
value = 832

[state 831, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 160
value = 833

[state 831, changeanim]
type = changeanim
trigger1 = time = 240
value = 835

[state 831, changestate]
type = changestate
trigger1 = anim = 835
trigger1 = animtime = 0
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『今度は何を企んでるのさ！』（vs Rei）
[statedef 832]
type = s
anim = 830

[state 830, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 830, playsnd]
type = playsnd
trigger1 = time = 300
value = 10,30
channel = 0

[state 830, changeanim]
type = changeanim
trigger1 = time = 280
value = 831

[state 830, changeanim]
type = changeanim
trigger1 = time = 285
trigger2 = time = 410
value = 832

[state 830, changeanim]
type = changeanim
trigger1 = time = 300
value = 833

[state 830, changeanim]
type = changeanim
trigger1 = time = 440
value = 835

[state 830, changestate]
type = changestate
trigger1 = anim = 835
trigger1 = animtime = 0
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『今度は何を企んでるのさ！』（vs Qb）
[statedef 833]
type = s
anim = 830

[state 830, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 830, playsnd]
type = playsnd
trigger1 = time = 100
value = 11,29
channel = 0

[state 830, changeanim]
type = changeanim
trigger1 = time = 80
value = 831

[state 830, changeanim]
type = changeanim
trigger1 = time = 85
trigger2 = time = 210
value = 832

[state 830, changeanim]
type = changeanim
trigger1 = time = 100
value = 833

[state 830, changeanim]
type = changeanim
trigger1 = time = 240
value = 835

[state 830, changestate]
type = changestate
trigger1 = anim = 835
trigger1 = animtime = 0
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『サニーデイライフ』（vsほむら＆フレンズ）
[statedef 839]
type = s
anim = 0

[state 839, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 839, changeanim]
type = changeanim
trigger1 = time = 120
value = 839

[state 839, playsnd]
type = playsnd
trigger1 = time = 120
value = 10,39
channel = 0

[state 839, changestate]
type = changestate
trigger1 = anim = 839
trigger1 = animtime = 0
value = 0
;===========================================================================
;■イントロ＃ｅｘ 『・・まどか？』（vs鹿目まどか）
[statedef 840]
type = s
anim = 800

[state 840, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 840, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,42
channel = 0

[state 840, changeanim]
type = changeanim
trigger1 = time = 62
value = 802

[state 840, changeanim]
type = changeanim
trigger1 = time = 100
value = 800

[state 840, changestate]
type = changestate
trigger1 = time = 160
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『まどか、頼んだよ！』（パートナー：鹿目まどか）
[statedef 845]
type = s
anim = 870

[state 845, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 845, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,43
channel = 0

[state 845, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 105
value = 872

[state 845, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 155
value = 870

[state 845, changestate]
type = changestate
trigger1 = time = 170
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『あたしが仕留めます！』（パートナー：巴マミ１）
[statedef 855]
type = s
anim = 870

[state 855, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 855, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,53
channel = 0

[state 855, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 130
value = 872

[state 855, changeanim]
type = changeanim
trigger1 = time = 110
trigger2 = time = 190
value = 870

[state 855, changestate]
type = changestate
trigger1 = time = 210
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『マミさん、お願いします！』（パートナー：巴マミ２）
[statedef 856]
type = s
anim = 800

[state 856, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 856, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,54
channel = 0

[state 856, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 802

[state 856, changeanim]
type = changeanim
trigger1 = time = 80
value = 801

[state 856, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 160
value = 800

[state 856, changestate]
type = changestate
trigger1 = time = 200
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『杏子、頼んだよ！』（パートナー：佐倉杏子）
[statedef 865]
type = s
anim = 870

[state 865, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 865, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,62
channel = 0

[state 865, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 105
value = 872

[state 865, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 155
value = 870

[state 865, changestate]
type = changestate
trigger1 = time = 170
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『まかせて！』（サイマルモード１）
[statedef 870]
type = s
anim = 870

[state 870, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 870, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,70
channel = 0

[state 870, changeanim]
type = changeanim
trigger1 = time = 60
value = 872

[state 870, changeanim]
type = changeanim
trigger1 = time = 105
value = 870

[state 870, changestate]
type = changestate
trigger1 = time = 110
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『お互い頑張ろうね！』（サイマルモード２）
[statedef 871]
type = s
anim = 870

[state 871, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 871, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,71
channel = 0

[state 871, changeanim]
type = changeanim
trigger1 = time = 60
value = 872

[state 871, changeanim]
type = changeanim
trigger1 = time = 125
value = 870

[state 871, changestate]
type = changestate
trigger1 = time = 135
value = 808
;===========================================================================
;■イントロ＃ｅｘ 『さやかの唄』（vs沙耶）
[statedef 880]
type = s
anim = 880

[state 880, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 880, playsnd]
type = playsnd
trigger1 = time = 30
value = 10,80
channel = 0

[state 880, changestate]
type = changestate
trigger1 = time = 200
value = 885
;===========================================================================
[statedef 885]
type = s
physics = n
anim = 885

[state 885, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 885, changestate]
type = changestate
trigger1 = animtime = 0
value = 810
;===========================================================================
;■イントロ＃ｅｘ 『?????』
[statedef 895]
type = s
anim = 192

[state 856, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[state -2, helper]
type = helper
trigger1 = time = 250
helpertype = normal
name = "dark"
pos = -160,0
postype = front
facing = facing
id = 15001
stateno = 15001
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = time = 250
time = 200
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state 856, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
;===========================================================================
;■イントロ＃ｅｘ 『?????』
[statedef 899]
type = s
anim = 191

[state 856, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 856, playsnd]
type = playsnd
trigger1 = time = 900
value = 11,24
volume = 255
channel = 0

;[state 856, changeanim]
;type = changeanim
;trigger1 = time = 60
;trigger2 = time = 110
;value = 802

;[state 856, changeanim]
;type = changeanim
;trigger1 = time = 80
;value = 801

;[state 856, changeanim]
;type = changeanim
;trigger1 = time = 95
;trigger2 = time = 160
;value = 800

[state 856, changestate]
type = changestate
trigger1 = animtime = 0
value = 0

;===========================================================================
;■イントロ＃ｅｘ 『?????』
[statedef 879]
type = s
anim = 198

[state 856, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 191, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 0
value = s6666,2
channel = 12

[State 193, 音を鳴らす]
type = StopSnd
trigger1 = Time = 1967
channel = 12

[state 856, assertspecial]
type = posadd
trigger1 = time = 0
x = 90

[state 856, playsnd]
type = playsnd
trigger1 = time = 2000
value = 10,19
volume = 255
channel = 0

[state -2, helper]
type = helper
trigger1 = animelemtime(8) = 900 
helpertype = normal
name = "dark"
pos = -160,0
postype = front
facing = facing
id = 15001
stateno = 15001
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = animelemtime(8) = 900 
time = 200
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state 3410, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 900 
value = 11,25
volume = 255
channel = 0

[state 856, changestate]
type = changestate
trigger1 = animtime = 0
value = 10879
;---------------------------------------------------------------------------
;■暴力暗殺・鍔迫り合い
[statedef 10879]
type = s
anim = 3410

[state 3410, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay
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
value = 3416
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

[State -2, ????]
type = HitOverRide
trigger1 = anim = 3416
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
stateno = 11879
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999

[state 3410, changestate]
type = changestate
trigger1 = time = 300
value = 0
;---------------------------------------------------------------------------
[Statedef 11879]
type    = A
movetype= I
physics = N
anim = 5050
velset = 0,0
sprpriority = 3

[state 856, assertspecial]
type = posadd
trigger1 = time = [0,40]
x = -2

[State 820, 1]
type = ChangeAnim
Trigger1 = anim = 5050
Trigger1 = Time >= 50
value = 5210

[State 820, 1]
type = NotHitBy
Trigger1 = time = 0
value = SCA

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoMusic
flag3 = NoBarDisplay

[State 4001, 6]
type = PlaySnd
trigger1 = Time = 0
value = 11,0
volume = 999
channel = 0

[state a]
type = velset
trigger1 = time = 0
y = -20

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = 0.5

[State 821, 3] 
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 12879
;---------------------------------------------------------------------------
[Statedef 12879]
type    = S
movetype= I
physics = S
anim = 11198
velset = 0,0
sprpriority = 3

[State 820, 1]
type = NotHitBy
Trigger1 = time = 0
value = SCA

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoMusic
flag3 = NoBarDisplay

[State 4001, 6]
type = PlaySnd
trigger1 = Time = 365
value = 9,11
volume = 999
channel = 0

[state a]
type = posset
trigger1 = time = 0
y = 0

[State 821, 1]
type = VelSet
Trigger1 = 1
x = 0
y = 0

[state 3410, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
;===========================================================================
;■イントロ＃ｅｘ 『?????』
[statedef 882]
type = s
anim = 10193

[state 856, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 191, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 0
value = s6666,2
channel = 12

[State 193, 音を鳴らす]
type = StopSnd
trigger1 = Time = 2100
channel = 12

[state 856, playsnd]
type = playsnd
trigger1 = time = 2175
value = 10,19
volume = 255
channel = 0

[state -2, helper]
type = helper
trigger1 = animelemtime(8) = 300 
helpertype = normal
name = "dark"
pos = -160,0
postype = front
facing = facing
id = 15001
stateno = 15001
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = animelemtime(8) = 300 
time = 200
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state 3410, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 300 
value = 11,25
volume = 255
channel = 0

[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 11
trigger2 = animelem = 19
value = 0,6
volume = 255

[state 3240, hitdef]
type = Projectile
trigger1 = animelem = 19
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
guardflag = 
kill = 0
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

[state 856, changestate]
type = changestate
trigger1 = animtime = 0
value = 12879

[Statedef 884]
type = S
ctrl = 0
anim = 668
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = NotHitBy
trigger1 = RoundState = 0
value = SCA

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoBarDisplay
flag3 = nomusic

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 17
;value = S5,7
;channel = 5

[State 181, GAO]
type = PlaySnd
trigger1 = Time = 220
value = s11,39
volume = 255

[State 181, GAO]
type = PlaySnd
trigger1 = Time = 680
value = s11,40
volume = 255

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;===========================================================================
[Statedef 888]
type = S
ctrl = 0
anim = 9741
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = changeanim
trigger1 = palno = [1,11]
trigger1 = time = 1750
value = 197

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = changeanim
trigger1 = palno = 12
trigger1 = time = 1850
value = 11299

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3 = nomusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 197
trigger1 = animelem = 1
value = S90,9
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 197
trigger1 = animelem = 13
value = S100,4
channel = 9

[State 1500, 2]
type = helper
trigger1 = time = 0
id = 10197
stateno = 10197
pos = 0, 0
postype = p1
bindtime = 1
ownpal = 1
name = "Dib, Put that -talisman- down or else..."
size.xscale = 2.2
size.yscale = 2.2

[State 1500, 2]
type = helper
trigger1 = time = 1450
id = 15001
stateno = 15002
pos = 8, -15
postype = p1
bindtime = 1
ownpal = 1
name = "OH OH TOO LATE!!!"

[state 197, playsnd]
type = playsnd
trigger1 = anim = 197
trigger1 = time = 2000
value = 2,11

[state 197, explod]
type = explod
trigger1 = anim = 197
trigger1 = time = 2000
anim = 31000
id = 31000
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 197, bgpalfx]
type = bgpalfx
trigger1 = anim = 197
trigger1 = time = 2000
time = 6
add = var(21),var(22),var(23)

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = time = 2000
trigger1 = anim = 197
trigger2 = animtime = 0
trigger2 = anim = 11299
animtime = 0
value = 0
;---------------------------------------------------------------------------
[Statedef 10197]
type = S
ctrl = 0
anim = 10197
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 10198
time = 1
forceair = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 50
anim = 10196
id = 10196
pos = 8,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = 0.5,0.5
sprpriority = 10
shadow = 0,0,0

[State 0, Explod]
type = removeExplod
trigger1 = time = 1790
id = 10196

[State 191, 3] ;Change to stand state when done
type = Destroyself
trigger1 = time = 1800

;[State 191, 3] ;Change to stand state when done
;type = ChangeState
;trigger1 = root,anim = 197
;trigger1 = root,animelem = 14
;value = 10198
;===========================================================================
[Statedef 889]
type = S
ctrl = 0
anim = 666
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3 = nomusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = S11,36
channel = 5
volume = 255

[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 7
trigger2 = animelem = 14
value = 0,6
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 10196
pos = 28, -30
postype = p2 
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 500
scale = 0.5,0.5
sprpriority = 10
shadow = 0,0,0
ownpal = 1

[state -2, helper]
type = helper
trigger1 = palno = 12
trigger1 = time = 450
helpertype = normal
name = "dark"
pos = -160,0
postype = front
facing = facing
id = 15001
stateno = 15001
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = palno = 12
trigger1 = time = 450
time = 200
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state 3240, hitdef]
type = Projectile
trigger1 = animelem = 14
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
guardflag = 
kill = 0
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

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0           ;;;animtime = 0
value = 0

;===========================================================================
[Statedef 897]
type = S
ctrl = 0
anim = 667
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3 = nomusic

[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 6
value = 0,6
volume = 255

[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 7
value = 1,10
volume = 255

[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 18
value = 10,22
volume = 255

[state 3300, explod]
type = explod
trigger1 = animelem = 7
id = 11000
anim = 6300+random%4
pos = 60,-70
postype = p1
facing = 1
removetime = -2
sprpriority = 20
ownpal = 1
removeongethit = 1
supermovetime = 900
pausemovetime = 900

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0           ;;;animtime = 0
value = 0

;===========================================================================
[Statedef 10897]
type = S
ctrl = 0
anim = 10667
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3 = nomusic

[state 3410, playsnd]
type = playsnd
trigger1 = animelem = 2
value = 11,24
volume = 255

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0           ;;;animtime = 0
value = 0

;===========================================================================
[statedef 808]
type = s
physics = n
anim = 805

[state 808, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 808, changestate]
type = changestate
trigger1 = animtime = 0
value = 810
;===========================================================================
[statedef 810]
type = a
physics = n
anim = 810

[state 810, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 810 helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "gem-flash"
stateno = 10000
id = 10800
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 810, helper]
type = helper
trigger1 = time = 76
helpertype = normal
name = "magic circle 0.4"
stateno = 21501
id = 21501
pos = 0,-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.4*const(size.xscale)
size.yscale = 0.4*const(size.yscale)

[state 810, helper]
type = helper
trigger1 = time = 90
helpertype = normal
name = "magic circle 0.6"
stateno = 21500
id = 21500
pos = floor(const(size.xscale)*7),-floor(const(size.yscale)*65)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.6*const(size.xscale)
size.yscale = 0.6*const(size.yscale)

[state 810, helper]
type = helper
trigger1 = time = 78
helpertype = normal
name = "magic circle 0.3"
stateno = 21500
id = 21500
pos = floor(const(size.xscale)*44),-floor(const(size.yscale)*55)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.3*const(size.xscale)
size.yscale = 0.3*const(size.yscale)

[state 810, helper]
type = helper
trigger1 = time = 83
helpertype = normal
name = "magic circle 0.15"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*16),-floor(const(size.yscale)*19)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.15*const(size.xscale)
size.yscale = 0.15*const(size.yscale)

[state 810, helper]
type = helper
trigger1 = time = 85
helpertype = normal
name = "magic circle 0.2"
stateno = 21501
id = 21501
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*120)
postype = p1
facing = facing
ownpal = 1
supermovetime = 900
pausemovetime = 900
size.xscale = 0.2*const(size.xscale)
size.yscale = 0.2*const(size.yscale)

[state 810, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 4,0

[state 810, veladd]
type = veladd
trigger1 = animelemtime(3) > 0
y = -0.005

[state 810, changestate]
type = changestate
trigger1 = animtime = 0
value = 820
;---------------------------------------------------------------------------
[statedef 820]
type = a
physics = n
anim = 820

[state 820, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 820, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 820, changestate]
type = changestate
trigger1 = pos y >= -1
value = 829
;---------------------------------------------------------------------------
[statedef 829]
type = s
physics = s
ctrl = 0
anim = 47

[state 829, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 829, velset]
type = velset
trigger1 = time = 0
y = 0

[state 829, posset]
type = posset
trigger1 = time = 0
y = 0

[state 829, changestate]
type = changestate
trigger1 = time = 20
value = 0
;---------------------------------------------------------------------------
;■ダウン
[statedef 5110]
type    = l
movetype= h
physics = n

[state 5110, screenbound]
type = screenbound
trigger1 = authorname != "otz-kai" && name != "miki sayaka"
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5110, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5110, changeanim]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 5110, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 5110, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 5110, hitfalldamage]
type = hitfalldamage
trigger1 = time = 0

[state 5110, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5110, varset]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[state 5110, playsnd]
type = playsnd
trigger1 = authorname = "otz-kai" && name = "miki sayaka"
trigger1 = time = 0
trigger1 = !sysvar(0)
value = f7,(sysvar(1)>5)+(sysvar(1)>14)

[state 5110, gamemakeanim]
type = gamemakeanim
trigger1 = authorname = "otz-kai" && name = "miki sayaka"
trigger1 = time = 0
trigger1 = !sysvar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0,0
under = sysvar(1) <= 14

[state 5110, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5110, changeanim]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[state 5110, changeanim]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
value = 5110

[state 5110, changestate]
type = changestate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
trigger3 = anim = [5110,5119]
value = 5150

[state 5110, varset]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 5110, velmul]
type = velmul
trigger1 = 1
x = 0.85
;===========================================================================
;■ファイナルダウン
[statedef 5150]
type = l
movetype= h
physics = n
sprpriority = -3

[state 5150, screenbound]
type = screenbound
trigger1 = authorname != "otz-kai" && name != "miki sayaka"
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5150, assertspecial]
type = assertspecial
trigger1 = matchover
trigger1 = authorname = "otz-kai" && name = "miki sayaka"
flag = roundnotover

[state 5150, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5150, changeanim]
type = changeanim
triggerall = time = 0
triggerall = selfanimexist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !selfanimexist(5140 + (anim % 10))
value = 5140

[state 5150, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = selfanimexist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[state 5150, changeanim]
type = changeanim
persistent = 0
trigger1 = matchover = 1
trigger1 = anim = [5140,5149]
trigger1 = selfanimexist(anim+10)
value = anim+10

[state 5150, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = anim != [5140,5159]
trigger1 = anim != [5110,5119]
value = 5110

[state 5150, velmul]
type = velmul
trigger1 = 1
x = 0.85

[state 5150, velset]
type = velset
trigger1 = vel x < 0.05
persistent = 0
x = 0

[state 5150, changestate]
type = changestate
trigger1 = authorname = "otz-kai" && name = "miki sayaka"
trigger1 = matchover
trigger1 = roundstate > 3
trigger1 = time > 60
value = 5155
;===========================================================================
;■ファイナルダウン・変身解除
[statedef 5155]
type = l
anim = 5155
sprpriority = -3

[state 5155, assertspecial]
type = assertspecial
trigger1 = time < 200
flag = roundnotover

[state 5155, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5155, changeanim]
type = changeanim
trigger1 = time = 0
value = 5150

[state 5155, playsnd]
type = playsnd
trigger1 = time = 41
value = 4,2

[state 5155, changeanim]
type = changeanim
trigger1 = time = 45
value = 5155

[state 5155, explod]
type = explod
trigger1 = time = 0
anim = 15155
id = 15155
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
;===========================================================================
;-| initialize |--------------------------------------------------------
;===========================================================================
;■初期化
[statedef 5900]
type = s

[state 5900, varrangeset]
type = varrangeset
trigger1 = roundsexisted = 0
value = 0

[state 5900, varrangeset]
type = varrangeset
trigger1 = roundsexisted = 0
fvalue = 0
;---------------------------------------------------------------------------
;■敵コード取得
[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "splatter rick"
trigger1 = enemy(0),palno = [1,6]
var(11) = 10

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "otz-kai" && enemy(1),name = "splatter rick"
trigger1 = enemy(1),palno = [1,6]
var(11) = 11

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "splatter rick"
trigger1 = enemy(0),palno = [7,12]
var(11) = 15

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "otz-kai" && enemy(1),name = "splatter rick"
trigger1 = enemy(1),palno = [7,12]
var(11) = 16

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "kamen rider kaixa"
var(11) = 20

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "otz-kai" && enemy(1),name = "kamen rider kaixa"
var(11) = 21

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "aznyael"
var(11) = 100

[state 5900, varset]
type = null;varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "otz-kai" && enemy(1),name = "aznyael"
var(11) = 101

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "miki sayaka"
var(11) = 110

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "otz-kai" && enemy(1),name = "miki sayaka"
var(11) = 111

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "ms mami"
trigger2 = enemy(1),name = "Tomoe Mami"
var(11) = 120

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "otz-kai" && enemy(1),name = "ms mami"
trigger2 = enemy(1),name = "Tomoe Mami"
var(11) = 121

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "akemi-homura"
var(11) = 300

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "akemi-homura"
var(11) = 301

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "REI"
trigger2 = enemy(0),name = "Kyoko_Sakura" || enemy(0),name = "Kyoko_Sakura"
var(11) = 320

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "REI"
trigger2 = enemy(1),name = "Kyoko_Sakura" || enemy(1),name = "Kyoko_Sakura"
var(11) = 321

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "QB"
var(11) = 330

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(0),name = "QB"
var(11) = 331

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "homura & friends"
var(11) = 390

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "homura & friends"
var(11) = 391

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "kaname madoka"
trigger2 = enemy(0),name = "madoka kaname"
trigger3 = enemy(0),name = "kaname-madoka"
trigger4 = enemy(0),name = "madoka3"
var(11) = 400

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "kaname madoka"
trigger2 = enemy(1),name = "madoka kaname"
trigger3 = enemy(1),name = "kaname-madoka"
trigger4 = enemy(1),name = "madoka3"
var(11) = 401

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "Tomoe Mami"
trigger2 = enemy(0),name = "mami tomoe"
trigger3 = enemy(0),name = "tomoe-mami"
var(11) = 500

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "Tomoe Mami"
trigger2 = enemy(1),name = "mami tomoe"
trigger3 = enemy(1),name = "tomoe-mami"
var(11) = 501

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "sakura kyouko" || enemy(0),name = "sakura kyoko"
trigger2 = enemy(0),name = "kyouko sakura" || enemy(0),name = "kyoko sakura"
trigger3 = enemy(0),name = "Kyoko_Sakura" || enemy(0),name = "Kyoko_Sakura"
var(11) = 600

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "Kyoko_Sakura"  || enemy(1),name = "Kyoko_Sakura"
trigger2 = enemy(1),name = "Kyouko Sakura" || enemy(1),name = "Kyoko Sakura"
trigger3 = enemy(1),name = "sakura-kyouko" || enemy(1),name = "sakura-kyoko"
var(11) = 601

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),name = "Oktavia Von Seckendorff" || enemy(0),name = "Oktavia Von Seckendorff"
var(11) = 666

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),name = "Oktavia Von Seckendorff" || enemy(1),name = "Oktavia Von Seckendorff"
var(11) = 667

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 0
;triggerall = NumPartner = 0
;trigger1 = enemy(0),name = "Lucy Diclonius by Crucifix" || enemy(0),name = "Lucy Diclonius by Crucifix"
;var(11) = 671

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 1
;triggerall = NumPartner = 0
;trigger1 = enemy(1),name = "Lucy Diclonius by Crucifix" || enemy(1),name = "Lucy Diclonius by Crucifix"
;var(11) = 672

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 0
;triggerall = NumPartner = 0
;trigger1 = enemy(0),name = "yujiro" || enemy(0),name = "yujiro"
;var(11) = 677

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 1
;triggerall = NumPartner = 0
;trigger1 = enemy(1),name = "yujiro" || enemy(1),name = "yujiro"
;var(11) = 678

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
;triggerall = NumPartner = 0
trigger1 = enemy(0),authorname = "Heroes" && enemy(0),name = "RAOH"
var(11) = 683

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
;triggerall = NumPartner = 0
trigger1 = enemy(1),authorname = "Heroes" && enemy(1),name = "RAOH"
var(11) = 684

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 0
;trigger1 = enemy(0),name = "Invader Zim" || enemy(0),name = "Invader Zim"
;trigger2 = enemy(0),name = "Zim" || enemy(0),name = "Zim"
;var(11) = 688

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 1
;trigger1 = enemy(1),name = "Invader Zim" || enemy(1),name = "Invader Zim"
;trigger2 = enemy(1),name = "Zim" || enemy(1),name = "Zim"
;var(11) = 689

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 0
;trigger1 = enemy(0),name = "Haruhi Suzumiya" || enemy(0),name = "Haruhi Suzumiya"
;trigger2 = enemy(0),name = "Suzumiya Haruhi" || enemy(0),name = "Suzumiya Haruhi"
;var(11) = 691

;[state 5900, varset]
;type = varset
;triggerall = var(11) = 0
;triggerall = numenemy > 1
;trigger1 = enemy(1),name = "Haruhi Suzumiya" || enemy(1),name = "Haruhi Suzumiya"
;trigger2 = enemy(1),name = "Suzumiya Haruhi" || enemy(1),name = "Suzumiya Haruhi"
;var(11) = 692

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy(0),authorname = "kayui uma" && enemy(0),name = "saya"
var(11) = 800

[state 5900, varset]
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 1
trigger1 = enemy(1),authorname = "kayui uma" && enemy(1),name = "saya"
var(11) = 801

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = palno = 12
var(11) = 888
;---------------------------------------------------------------------------
;■味方コード取得
[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,authorname = "otz-kai" && partner,name = "ms mami"
var(12) = 120

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "kaname madoka"
trigger2 = partner,name = "madoka kaname"
trigger3 = partner,name = "kaname-madoka"
trigger4 = partner,name = "madoka3"
var(12) = 400

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "Tomoe Mami"
trigger2 = partner,name = "mami tomoe"
trigger3 = partner,name = "tomoe-mami"
var(12) = 500

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "sakura kyouko" || partner,name = "sakura kyoko"
trigger2 = partner,name = "kyouko sakura" || partner,name = "kyoko sakura"
trigger3 = partner,name = "sakura-kyouko" || partner,name = "sakura-kyoko"
trigger4 = partner,name = "Kyoko_Sakura" || partner,name = "Kyoko_Sakura" 
var(12) = 600

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "REI"
var(12) = 650
;---------------------------------------------------------------------------
;■パレット定数
[state 5900, color x]
type = null
trigger1 =  palno = 4
trigger1 = var(21) := 30
trigger1 = var(22) := 60
trigger1 = var(23) := 120

[state 5900, color y]
type = null
trigger1 =  palno = 5
trigger1 = var(21) := 30
trigger1 = var(22) := 60
trigger1 = var(23) := 120

[state 5900, color z]
type = null
trigger1 =  palno = 6
trigger1 = var(21) := 30
trigger1 = var(22) := 60
trigger1 = var(23) := 120

[state 5900, color a]
type = null
trigger1 =  palno = 1
trigger1 = var(21) := 30
trigger1 = var(22) := 70
trigger1 = var(23) := 90

[state 5900, color b]
type = null
trigger1 =  palno = 2
trigger1 = var(21) := 30
trigger1 = var(22) := 70
trigger1 = var(23) := 90

[state 5900, color c]
type = null
trigger1 =  palno = 3
trigger1 = var(21) := 30
trigger1 = var(22) := 70
trigger1 = var(23) := 90

[state 5900, color s+x]
type = null
trigger1 =  palno = 10
trigger1 = var(21) := 240
trigger1 = var(22) := 120
trigger1 = var(23) := 90

[state 5900, color s+y]
type = null
trigger1 =  palno = 11
trigger1 = var(21) := 10
trigger1 = var(22) := 10
trigger1 = var(23) := 10

[state 5900, color s+z]
type = null
trigger1 =  palno = 12
trigger1 = var(21) := 200
trigger1 = var(22) := 200
trigger1 = var(23) := 20

[state 5900, color s+a]
type = null
trigger1 =  palno = 7
trigger1 = var(21) := 170
trigger1 = var(22) := 170
trigger1 = var(23) := 40

[state 5900, color s+b]
type = null
trigger1 =  palno = 8
trigger1 = var(21) := 210
trigger1 = var(22) := 150
trigger1 = var(23) := 210

[state 5900, color s+c]
type = null
trigger1 =  palno = 9
trigger1 = var(21) := 200
trigger1 = var(22) := 20
trigger1 = var(23) := 20
;---------------------------------------------------------------------------
[state 5900, changestate]
type = changestate
trigger1 = roundno = 1
trigger2 = roundsexisted = 0
trigger2 = teammode = turns
trigger2 = roundno > 0
value = 190