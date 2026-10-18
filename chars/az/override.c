;===========================================================================
;†††common override†††
;===========================================================================
;■ニュートラル
[statedef 0]
type = s
physics = s

[state 0, selfstate]
type = selfstate
trigger1 = !(authorname = "otz-kai")
trigger1 = prevstateno != 0
value = 0

[state 0, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 0, changeanim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 0

[state 0, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 0, velset]
type = velset
trigger1 = time = 0
y = 0

[state 0, changestate]
type = changestate
trigger1 = !alive
value = 5050
;---------------------------------------------------------------------------
;■しゃがみ開始
[statedef 10]
type    = c
physics = c

[state 10, changeanim]
type = changeanim
triggerall = anim != [10,11]
trigger1 = anim != 195
value = 10

[state 10, changeanim]
type = changeanim
triggerall = anim != [10,11]
trigger1 = anim = 195
trigger1 = animtime = 0
value = 11

[state 10, velmul]
type = velmul
trigger1 = time = 0
x = .75

[state 10, selfstate]
type = selfstate
trigger1 = animtime = 0
trigger2 = anim = 11
value = 11
;---------------------------------------------------------------------------
;■しゃがみ
[statedef 11]
type    = c
physics = c

[state 11, changeanim]
type = changeanim
triggerall = anim != 11
triggerall = anim != 6
trigger1 = anim != 195
trigger2 = anim = 195
trigger2 = animtime = 0
value = 11

[state 11, changeanim]
type = changeanim
trigger1 = anim = 6 && animtime = 0
value = 11
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
trigger2 = var(53) = 1
sysvar(1) = 0

[state 41, varset]
type = varset
trigger1 = var(53) = 0
trigger1 = random = [0,699]
trigger2 = var(53) != 0
trigger2 = var(53) != 1
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
value = 50
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
;■ジャンプダウン
[statedef 51]
type    = a
physics = a

[state 51, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = prevstateno = 140
value = 44
;---------------------------------------------------------------------------
;■ジャンプ着地
[statedef 52]
type    = s
physics = s
ctrl = 0
anim = 47

[state 52, velset]
type = velset
trigger1 = 1
y = 0

[state 52, posset]
type = posset
trigger1 = 1
y = 0

[state 52, ctrlset]
type = ctrlset
trigger1 = prevstateno != 5025
trigger1 = time = 3
value = 1

[state 52, selfstate]
type = selfstate
trigger1 = animtime = 0
trigger2 = prevstateno = 5025
trigger2 = time = 3
value = 0
ctrl = 1
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
flag2 = noautoturn

[state 100, varset]
type = varset
trigger1 = time = 0
var(30) = 5

[state 100, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)

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
flag2 = noautoturn

[state 101, varset]
type = varset
trigger1 = time = 0
var(30) = 15

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

[state 105, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 105, nothitby]
type = nothitby
trigger1 = 1
time = 2
value = sca,aa
ignorehitpause = 1

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

[state 5050, selfstate]
type = selfstate
triggerall = vel y > 0
triggerall = pos y >= -20
triggerall = alive
triggerall = canrecover
trigger1 = !(authorname = "otz-kai")
trigger1 = (command = "x") || (command = "y") || (command = "z") || (command = "a") || (command = "b") || (command = "c") || (name = "recovery") || (name = "training")
trigger2 = (authorname = "otz-kai") && (var(50) = 0)
trigger2 = command = "recovery"
trigger3 = (authorname = "otz-kai") && (var(50) != 0)
trigger3 = random <= 50*var(50)
value = 5200

[state 5050, selfstate]
type = selfstate
triggerall = vel y > -1
triggerall = alive
triggerall = canrecover
trigger1 = !(authorname = "otz-kai")
trigger1 = (command = "x") || (command = "y") || (command = "z") || (command = "a") || (command = "b") || (command = "c") || (name = "recovery") || (name = "training")
trigger2 = (authorname = "otz-kai") && (var(50) = 0)
trigger2 = command = "recovery"
trigger3 = (authorname = "otz-kai") && (var(50) != 0)
trigger3 = random <= 50*var(50)
value = 5210

[state 5050, selfstate]
type = selfstate
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
time = 20
add = 128,128,128

[state 5210, nothitby]
type = nothitby
trigger1 = time = 0
value = sca
time = 20

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
trigger2 = p2dist x > 120
y = 1.5

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdup"
trigger2 = var(50) != 0
trigger2 = p2dist x < 120
y = -2

[state 5210, velmul]
type = velmul
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = backedgedist < 100
x = 1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = backedgedist > 200
x = -1

[state 5210, ctrlset]
type = ctrlset
trigger1 = time = 20
value = 1

[state 5210, veladd]
type = veladd
trigger1 = time >= 4
y = .35

[state 5210, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1
;===========================================================================
;■ヒットシェイク地上カスタム
[statedef 5005]
type    = s
movetype= h
physics = n
velset = 0,0

[state 5005, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(groundtype) = 1),5000,5010) + gethitvar(animtype)

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5005, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5005, statetypeset]
type = statetypeset
trigger1 = time = 0
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = pos y != 0
statetype = a

[state 5005, changestate]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5006

[state 5005, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;---------------------------------------------------------------------------
[statedef 5006]
type    = s
movetype= h
physics = s

[state 5006, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 5006, changeanim]
type = changeanim
trigger1 = animtime = 0
value = 5005 + gethitvar(animtype) + (gethitvar(groundtype)=2)*10

[state 5006, velmul]
type = velmul
trigger1 = time >= gethitvar(slidetime)
x = .6

[state 5006, velset]
type = velset
trigger1 = hitover
x = 0

[state 5006, defencemulset]
type = defencemulset
trigger1 = hitover
value = 1

[state 5006, selfstate]
type = selfstate
trigger1 = hitover
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ヒットシェイク空中カスタム
[statedef 5025]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5025, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5025, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5025, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;---------------------------------------------------------------------------
[statedef 5030]
type    = a
movetype= h
physics = n
ctrl = 0

[state 5030, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5030, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5030, selfstate]
type = selfstate
triggerall = !hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5040

[state 5030, changestate]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5050

[state 5030, changestate]
type = changestate
trigger1 = animtime = 0
value = 5035
;---------------------------------------------------------------------------
[statedef 5035]
type    = a
movetype= h
physics = n

[state 5035, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051,5059]
trigger1 = anim != 5090
value = 5035

[state 5035, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5035, selfstate]
type = selfstate
triggerall = !hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
trigger3 = time = 0
trigger3 = anim != 5035
trigger4 = hitover || (authorname = "otz-kai")
trigger4 = animtime = 0
value = 5040

[state 5035, changestate]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = animtime = 0
trigger3 = vel y > 0
trigger3 = pos y >= 10
trigger4 = time = 0
trigger4 = anim != 5035
value = 5050
;---------------------------------------------------------------------------
;■復帰（不時着用）
[statedef 5040]
type    = a
movetype= h
physics = n

[state 5040, selfstate]
type = selfstate
trigger1 = !alive
value = 5050

[state 5040, changeanim]
type = changeanim
trigger1 = animtime = 0
trigger1 = anim != 5040
trigger2 = time = 0
trigger2 = anim != 5035
value = 5040

[state 5040, ctrlset]
type = ctrlset
trigger1 = hitover
value = 1

[state 5040, statetypeset]
type = statetypeset
trigger1 = hitover
movetype = i

[state 5040, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5040, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
;---------------------------------------------------------------------------
;■ヒットシェイクトリップカスタム
[statedef 5075]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5075, changeanim ]
type = changeanim 
trigger1 = 1
value = 5070

[state 5075, changestate]
type = changestate
trigger1 = hitshakeover
value = 5076
;---------------------------------------------------------------------------
[statedef 5076]
type    = a
movetype= h
physics = n

[state 5076, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5076, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5076, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 15
value = 5110
;---------------------------------------------------------------------------
;■地面激突
[statedef 5100]
type    = l
movetype= h
physics = n

[state 5100, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5100, velset]
type = velset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[state 5100, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5100, varset]
type = varset
trigger1 = time = 0
sysvar(1) = floor(vel y)

[state 5100, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !selfanimexist(5100 + (anim % 10))
value = 5100

[state 5100, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = selfanimexist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[state 5100, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5100, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5100, velmul]
type = velmul
trigger1 = time = 0
x = 0.75

[state 5100, selfstate]
type = selfstate
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
value = 5110

[state 5100, gamemakeanim]
type = gamemakeanim
trigger1 = time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[state 5100, hitfalldamage]
type = hitfalldamage
trigger1 = time = 3

[state 5100, playsnd]
type = playsnd
trigger1 = time = 1
value = f7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 5100, posfreeze]
type = posfreeze
trigger1 = 1

[state 5100, selfstate]
type = selfstate
trigger1 = animtime = 0
trigger2 = time > 20
value = 5101
;===========================================================================
;■起き上がり
[statedef 5120]
type    = l
movetype= i
physics = n

[state 5120, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !selfanimexist(5120 + (anim % 10))
value = 5120

[state 5120, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = selfanimexist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[state 5120, velset]
type = velset
trigger1 = time = 0
x = 0

[state 5120, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5120, hitfallset]
type = hitfallset
trigger1 = animtime = 0
value = 1

[state 5120, nothitby]
type = nothitby
trigger1 = animtime = 0
value = , nt,st,ht
time = 2

[state 5120, nothitby]
type = nothitby
trigger1 = animtime = 0
value2 = sca
time = 1

[state 5120, changestate]
type = changestate
trigger1 = var(7) != 0
trigger1 = animtime = 0
value = var(7)

[state 5120, changestate]
type = changestate
trigger1 = var(7) = 0
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■感電やられ
[statedef 5696]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5696, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(7696)
value = 7696

[state 5696, palfx]
type = palfx
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
time = gethitvar(hittime)+gethitvar(hitshaketime)
add = 25,75,125
ignorehitpause = 1

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5696, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5696, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;---------------------------------------------------------------------------
;■黒焦げやられ
[statedef 5697]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5697, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(7697)
value = 7697

[state 5697, palfx]
type = palfx
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
time = gethitvar(hittime)+gethitvar(hitshaketime)
add = -100,-125,-125
ignorehitpause = 1

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5697, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5697, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;===========================================================================
;■タイムオーバー
[statedef 170]
type = s
ctrl = 0
anim = 690

[state 170, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1
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
trigger1 = 1
flag = roundnotover

[state 180, changestate]
type = changestate
trigger1 = var(3) <= lifemax/10
value = 605

[state 180, changestate]
type = changestate
trigger1 = prevstateno != [180,182]	
trigger1 = backedgedist <= 20
value = 181

[state 180, changestate]
type = changestate
trigger1 = prevstateno != [180,182]		
trigger1 = frontedgedist <= 20
value = 182

[state 180, changestate]
type = changestate
trigger1 = var(39) < 2
value = 610

[state 180, changestate]
type = changestate
trigger1 = matchover
value = 690

[state 180, changestate]
type = changestate
trigger1 = var(3) = lifemax
value = 600

[state 180, changestate]
type = changestate
trigger1 = time = 0
value = 610
;---------------------------------------------------------------------------
;■バミリ
[statedef 181]
type = s
ctrl = 0
anim = 20
velset = 3,0

[state 181, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 181, changestate]
type = changestate
trigger1 = pos x = [-100,100]
value = 180
;---------------------------------------------------------------------------
;■バミリ
[statedef 182]
type = s
ctrl = 0
anim = 21
velset = -3,0

[state 182, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 182, changestate]
type = changestate
trigger1 = pos x = [-100,100]
value = 180
;---------------------------------------------------------------------------
;■パーフェクト勝利（トンちゃん、宇宙へ）
[statedef 600]
type = s
ctrl = 0
anim = 180
velset = 0,0

[state 600, assertspecial]
type = assertspecial
trigger1 = time < 550
flag = roundnotover

[state 600, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "tonchan"
id = 7200
stateno = 7200
postype = p1
facing = 1
pos = -350,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 600, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6130
stateno = 6130
postype = p1
facing = 1
pos = -350,-floor(const(size.yscale)*27)
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 600, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_ui"
id = 6620
stateno = 6620
postype = p1
facing = 1
pos = -350,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 600, helper]
type = helper
trigger1 = time = 180
trigger1 = numhelper(7100) = 0
helpertype = normal
name = "kitty-chch"
id = 7100
stateno = 7101
postype = p1
facing = 1
pos = -360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 600, helper]
type = helper
trigger1 = time = 200
trigger1 = numhelper(7130) = 0
helpertype = normal
name = "kitty-shiron"
id = 7130
stateno = 7130
postype = p1
facing = 1
pos = -400,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 600, helper]
type = helper
trigger1 = time = 220
trigger1 = numhelper(7160) = 0
helpertype = normal
name = "kitty-lili"
id = 7160
stateno = 7161
postype = p1
facing = 1
pos = -360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1
;---------------------------------------------------------------------------
;■スプレンディッド勝利（羽化）
[statedef 605]
type = s
ctrl = 0
anim = 605
velset = 0,0

[state 605, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 605, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 11,100

[state 605, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 20600
id = 20600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
ownpal = 0
sprpriority = -2

[state 605, explod]
type = explod
trigger1 = animelemtime(7) = 20
anim = 20601
id = 20601
pos = 0,0
postype = p1
facing = 1
bindtime = -1
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
ownpal = 0
sprpriority = -1

[state 605, explod]
type = explod
trigger1 = animelemtime(7) = 0
anim = 25900
id = 25900
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
ownpal = 0
sprpriority = -3
;---------------------------------------------------------------------------
;■勝利１（ねこ集会）
[statedef 610]
type = s
ctrl = 0
anim = 180
velset = 0,0

[state 610, assertspecial]
type = assertspecial
trigger1 = time < 450
flag = roundnotover

[state 610, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(7100) = 0
helpertype = normal
name = "kitty-chch"
id = 7100
stateno = 7100
postype = p1
facing = 1
pos = -360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 610, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(7130) = 0
helpertype = normal
name = "kitty-shiron"
id = 7130
stateno = 7130
postype = p1
facing = -1
pos = 360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 610, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(7160) = 0
helpertype = normal
name = "kitty-lili"
id = 7160
stateno = 7160
postype = p1
facing = -1
pos = 360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1
;---------------------------------------------------------------------------
;■勝利・決着（平沢サンド）
[statedef 690]
type = s
ctrl = 0
velset = 0,0

[state 690, changeanim]
type = changeanim
trigger1 = anim != 0
value = 0

[state 690, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 690, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6120
stateno = 6120
postype = p1
facing = 1
pos = -300,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 690, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_ui"
id = 6600
stateno = 6600
postype = p1
facing = -1
pos = 300,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 690, changestate]
type = changestate
trigger1 = time = 60
value = 691
;---------------------------------------------------------------------------
[statedef 691]
type = s
ctrl = 0
anim = 690

[state 691, assertspecial]
type = assertspecial
trigger1 = time <= 350
flag = roundnotover

[state 691, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(7100) = 0
helpertype = normal
name = "kitty-chch"
id = 7100
stateno = 7100
postype = p1
facing = 1
pos = -360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 691, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(7130) = 0
helpertype = normal
name = "kitty-shiron"
id = 7130
stateno = 7130
postype = p1
facing = -1
pos = 360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 691, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(7160) = 0
helpertype = normal
name = "kitty-lili"
id = 7160
stateno = 7160
postype = p1
facing = -1
pos = 360,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1
;===========================================================================
;■イントロ
[statedef 190]
type = s
ctrl = 0
anim = 0

[state 190, varset]
type = varset
trigger1 = roundsexisted = 0
var(40) = 0

[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(39) < 3
trigger2 = roundno > 1
value = 800

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 200
value = 920

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 300
value = 930

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 500
value = 950

[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(1) = [0,9]
trigger2 = var(39) < 4
trigger2 = var(1) = [40,59]
value = 800

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(1) = [10,29]
value = 810

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(1) = [30,39]
value = 820

[state 190, changestate]
type = changestate
trigger1 = var(39) = 4
trigger1 = time = 1
trigger1 = var(1) = [40,59]
value = 830

[state 190, changestate]
type = changestate
trigger1 = var(39) = 4
trigger1 = var(1) = [60,79]
trigger1 = time = 1
value = 840

[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(1) = [80-(20*(var(39)<4)),99]
value = 850
;---------------------------------------------------------------------------
;■＃０ 汎用イントロ
[statedef 800]
type = s
ctrl = 0
anim = 0

[state 800, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 800, playsnd]
type = playsnd
trigger1 = time = 10
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 800, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
;---------------------------------------------------------------------------
;■＃１ 唯のうんたん活殺拳！
[statedef 810]
type = a
ctrl = 0
anim = 44

[state 810, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 810, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 810, posset]
type = posset
trigger1 = var(5) = 0
y = -900

[state 810, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6100
stateno = 6100
postype = p1
facing = 1
pos = 0,900
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 810, veladd]
type = veladd
trigger1 = var(5) = 1
y = const(movement.yaccel)

[state 810, playsnd]
type = playsnd
trigger1 = pos y = -900
trigger1 = var(5) = 1
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 810, varset]
type = varset
trigger1 = pos y > -10
var(5) = 2

[state 810, changestate]
type = changestate
trigger1 = pos y > -5
value = 811
;---------------------------------------------------------------------------
;□汎用着地
[statedef 811]
type    = s
physics = s
ctrl = 0
anim = 47

[state 811, playsnd]
type = playsnd
trigger1 = time = 1
value = 2,5

[state 811, velset]
type = velset
trigger1 = time = 0
y = 0

[state 811, posset]
type = posset
trigger1 = time = 0
y = 0

[state 811, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
;---------------------------------------------------------------------------
;■＃２ 優しいおばあちゃん！
[statedef 820]
type = s
ctrl = 0
anim = 11

[state 820, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 820, playsnd]
type = playsnd
trigger1 = time = 10
trigger2 = time = 64
value = 10,1
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 820, changeanim]
type = changeanim
trigger1 = time = 10
value = 195
elem = 1

[state 820, changeanim]
type = changeanim
trigger1 = time > 100
trigger1 = anim = 195
trigger1 = animtime = 0
value = 11

[state 820, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "ichimonji_tomi"
id = 6900
stateno = 6900
postype = p1
facing = -1
pos = 100,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 820, playsnd]
type = playsnd
trigger1 = time = 450
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 820, changestate]
type = changestate
trigger1 = time = 450
value = 12
;---------------------------------------------------------------------------
;■＃３ 律唯でげきだん！
[statedef 830]
type = s
ctrl = 0
anim = 11

[state 830, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 830, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = -10,10
ignorehitpause = 1

[state 830, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = -30,30
ignorehitpause = 1

[state 830, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 830, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6180
stateno = 6180
postype = p1
facing = 1
pos = floor(const(size.xscale)*20),0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 830, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "tainaka_ritsu"
id = 6280
stateno = 6280
postype = p1
facing = -1
pos = floor(const(size.xscale)*100),0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 830, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "kotobuki_tsumugi"
id = 6400
stateno = 6400
postype = p1
facing = -1
pos = floor(const(size.xscale)*200),0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 830, helper]
type = helper
trigger1 = numhelper(6180) = 1
trigger1 = numhelper(6300) = 0
trigger1 = helper(6180),stateno = 6185
trigger1 = helper(6180),time = 200
helpertype = normal
name = "akiyama_mio"
id = 6300
stateno = 6300
postype = p1
facing = 1
pos = -floor(const(size.xscale)*120),0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 830, playsnd]
type = playsnd
trigger1 = numhelper(6180) = 1
trigger1 = helper(6180),stateno = 6185
trigger1 = helper(6180),time = 1
value = 9,112
aspan = 1
channel = 2
loop = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 830, changeanim]
type = changeanim
triggerall = numhelper(6300) = 1
triggerall = anim != 830
trigger1 = helper(6300),stateno = 6300
trigger1 = helper(6300),time = 60
trigger2 = helper(6300),stateno = 6310
value = 830

[state 830, playsnd]
type = playsnd
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6310
trigger1 = helper(6300),animelemtime(4) = 0
value = 9,300
aspan = 1
channel = 2
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 830, explod]
type = explod
trigger1 = time%2 = 0
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6310
trigger1 = helper(6300),animelemtime(4) >= 2
trigger1 = helper(6300),animelemtime(6) < 46
anim = 8000
id = 8000
pos = var(5),var(6)
postype = left
facing = 1
removetime = 2
supermovetime = 900
pausemovetime = 900
scale = 1,1
ontop = 1
ownpal = 1

[state 830, explod]
type = explod
trigger1 = time%2 = 0
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6310
trigger1 = helper(6300),animelemtime(6) = 46
anim = 8000
id = 8000
pos = 1,1
postype = left
facing = 1
removetime = 60
supermovetime = 900
pausemovetime = 900
scale = 1,1
ontop = 1
ownpal = 1

[state 830, changestate]
type = changestate
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6315
trigger1 = helper(6300),time > 100
value = 831
;---------------------------------------------------------------------------
[statedef 831]
type    = s
physics = s
ctrl = 0
anim = 831

[state 831, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 831, changestate]
type = changestate
trigger1 = animtime = 0
value = 12
;---------------------------------------------------------------------------
;■＃４ みんなでうんたん！
[statedef 840]
type = s
ctrl = 0
anim = 11

[state 840, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 840, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6150
stateno = 6150
postype = p1
facing = 1
pos = 120,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 840, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "tainaka_ritsu"
id = 6250
stateno = 6251
postype = p1
facing = 1
pos = 60,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 840, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "akiyama_mio"
id = 6350
stateno = 6351
postype = p1
facing = -1
pos = 180,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 840, helper]
type = helper
trigger1 = time = 500
helpertype = normal
name = "kotobuki_tsumugi"
id = 6420
stateno = 6420
postype = p1
facing = 1
pos = -240,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 840, changestate]
type = changestate
trigger1 = time = 850
value = 841
;---------------------------------------------------------------------------
[statedef 841]
type = s
anim = 250

[state 841, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 841, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,2

[state 841, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 1,13

[state 841, envshake]
type = envshake
trigger1 = animelemtime(5) = 0
time = 20
freq = 100
ampl = 10
phase = 50

[state 841, changestate]
type = changestate
trigger1 = animtime = 0
value = 842
;---------------------------------------------------------------------------
[statedef 842]
type = s
ctrl = 0
anim = 11

[state 842, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 842, playsnd]
type = playsnd
trigger1 = time = 200
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 842, changestate]
type = changestate
trigger1 = time = 200
value = 12
;---------------------------------------------------------------------------
;■＃５ 律澪でひっさつ！
[statedef 850]
type = s
ctrl = 0
anim = 11

[state 850, varset]
type = varset
trigger1 = 1
var(40) = 1

[state 850, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 850, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "tainaka_ritsu"
id = 6200
stateno = 6200
postype = p1
facing = 1
pos = -160,-80
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 850, helper]
type = helper
trigger1 = time = 100
helpertype = normal
name = "akiyama_mio"
id = 6320
stateno = 6320
postype = p1
facing = -1
pos = 320,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 850, changeanim]
type = changeanim
trigger1 = time = 100
value = 830

[state 850, changestate]
type = changestate
trigger1 = time = 450
value = 831
;---------------------------------------------------------------------------
;■＃番外編 しずかの妖怪大作戦！
[statedef 920]
type = a
ctrl = 0
anim = 44

[state 920, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 920, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 920, posset]
type = posset
trigger1 = var(5) = 0
y = -900

[state 920, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "kinoshita_shizuka"
id = 6500
stateno = 6500
postype = p1
facing = 1
pos = -20,900
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 920, veladd]
type = veladd
trigger1 = var(5) = 1
y = const(movement.yaccel)

[state 920, playsnd]
type = playsnd
trigger1 = pos y = -900
trigger1 = var(5) = 1
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 920, varset]
type = varset
trigger1 = pos y > -10
var(5) = 2

[state 920, changestate]
type = changestate
trigger1 = pos y > -5
value = 811
;---------------------------------------------------------------------------
;■＃番外編 ギー太！マイラブ
[statedef 930]
type = a
ctrl = 0
anim = 44

[state 930, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 930, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 930, posset]
type = posset
trigger1 = var(5) = 0
y = -900

[state 930, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6140
stateno = 6140
postype = p1
facing = 1
pos = 0,900
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 930, veladd]
type = veladd
trigger1 = var(5) = 1
y = const(movement.yaccel)

[state 930, playsnd]
type = playsnd
trigger1 = pos y = -900
trigger1 = var(5) = 1
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 930, varset]
type = varset
trigger1 = pos y > -10
var(5) = 2

[state 930, changestate]
type = changestate
trigger1 = pos y > -5
value = 811
;---------------------------------------------------------------------------
;■＃番外編 ムギ唯で台湾からの刺客！
[statedef 950]
type = a
ctrl = 0
anim = 44

[state 950, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[state 950, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 950, posset]
type = posset
trigger1 = var(5) = 0
y = -900

[state 950, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "hirasawa_yui"
id = 6143
stateno = 6143
postype = p1
facing = 1
pos = 40,900
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 840, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "kotobuki_tsumugi"
id = 6440
stateno = 6440
postype = p1
facing = 1
pos = -40,900
scale = const(size.xscale),const(size.yscale)
ownpal = 1

[state 950, veladd]
type = veladd
trigger1 = var(5) = 1
y = const(movement.yaccel)

[state 950, playsnd]
type = playsnd
trigger1 = pos y = -900
trigger1 = var(5) = 1
value = 10,0
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 950, varset]
type = varset
trigger1 = pos y > -10
var(5) = 2

[state 950, changestate]
type = changestate
trigger1 = pos y > -5
value = 811
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
[state 5900, varset];『妖怪属性のみなさん』先頭のみ
type = varset
triggerall = var(11) = 0
triggerall = numenemy > 0
trigger1 = enemy,authorname = "stinger" && enemy,name = "d4miku"
trigger2 = enemy,authorname = "souken" && enemy,name = "gurospooo"
trigger3 = enemy,authorname = "souken" && enemy,name = "jinmen"
trigger4 = enemy,authorname = "andres borghi"
trigger5 = enemy,authorname = "ex-inferis & on-off" && enemy,name = "raveex"
trigger6 = enemy,authorname = "phantom.of.the.server" && enemy,name = "shining force 2 kraken"
trigger7 = enemy,authorname = "kayui uma" && enemy,name = "saya"
trigger8 = enemy,name = "nrvnqsr_chaos" || enemy,name = "nero chaos"
trigger9 = enemy,name = "gen_an" || enemy,name = "gen-an shiranui"
trigger10 = enemy,name = "kusaregedo"
trigger11 = enemy,name = "anita"
trigger12 = enemy,name = "demitri" || enemy,name = "demitri maximoff" || enemy,name = "demitri-ex" || enemy,name = "demitri(ds)"
trigger13 = enemy,name = "morrigan" || enemy,name = "morrigan aensland"
trigger14 = enemy,name = "gallon" || enemy,name = "jon talbain"
trigger15 = enemy,name = "felicia" || enemy,name = "cvsfelicia"
trigger16 = enemy,name = "bishamon" || enemy,name = "oboro bishamon"
trigger17 = enemy,name = "victor"
trigger18 = enemy,name = "sasquatch"
trigger19 = enemy,name = "aulbath" || enemy,name = "rikuo"
trigger20 = enemy,name = "anakaris" || enemy,name = "cvsanakaris"
trigger21 = enemy,name = "lei-lei" || enemy,name = "hsien-ko"
trigger22 = enemy,name = "lilith" || enemy,name = "lilith aensland"
trigger23 = enemy,name = "q-bee"
trigger24 = enemy,name = "jedah" || enemy,name = "jedah dohma"
trigger25 = enemy,name = "kongou"
trigger26 = enemy,name = "luan" || enemy,name = "lavia"
trigger27 = enemy,name = "nool" || enemy,name = "hydron"
trigger28 = enemy,authorname = "kozeni" && enemy,name = "eo"
trigger29 = enemy,authorname = "kozeni" && enemy,name = "watern"
trigger30 = enemy,name = "zappa"
var(11) = 200

[state 5900, varset];『かっこいいギタリスト』
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "zabel" || enemy(0),name = "lord raptor" || enemy(0),name = "i-no" || enemy(0),name = "yoma komatsu"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "zabel" || enemy(1),name = "lord raptor" || enemy(1),name = "i-no" || enemy(1),name = "yoma komatsu"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "zabel" || enemy(2),name = "lord raptor" || enemy(2),name = "i-no" || enemy(2),name = "yoma komatsu"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "zabel" || enemy(3),name = "lord raptor" || enemy(3),name = "i-no" || enemy(3),name = "yoma komatsu"
var(11) = 300

[state 5900, varset];『唯センパイ』
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "hirasawa_yui "
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "hirasawa_yui "
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "hirasawa_yui "
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "hirasawa_yui "
var(11) = 500
;---------------------------------------------------------------------------
[state 5900, changestate]
type = changestate
trigger1 = roundno = 1
trigger2 = teammode = turns
trigger2 = roundsexisted = 0
trigger3 = var(11) != 0
trigger3 = numenemy
trigger3 = enemy,roundsexisted = 0
value = 190
