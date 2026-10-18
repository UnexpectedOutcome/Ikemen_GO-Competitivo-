;===========================================================================
;†††helpers†††
;===========================================================================
;■汎用バインド
[statedef 10000]
anim = 1
sprpriority = 5

[state 10000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 10000, changeanim]
type = changeanim
trigger1 = animexist(root,anim+10000)
value = root,anim+10000
elem = root,animelemno(0)
ignorehitpause = 1

[state 10000, bindtoroot]
type = bindtoroot
trigger1 = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 10000, destroyself]
type = destroyself
trigger1 = root,anim != anim-10000
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■平沢唯１
[statedef 6100]
type = a
movetype = i
physics = n
anim = 6110
velset = 0,0
sprpriority = 4

[state 6100, playsnd]
type = playsnd
trigger1 = time = 20
value = 9,100
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6100, changestate]
type = changestate
trigger1 = time = 100
value = 6110
;---------------------------------------------------------------------------
[statedef 6110]
type = a
movetype = i
physics = n
anim = 6115

[state 6110, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,400
pan = -160
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6110, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
value = 9,101
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6110, changestate]
type = changestate
trigger1 = animtime = 0
value = 6111
;---------------------------------------------------------------------------
[statedef 6111]
type = a
movetype = i
physics = n
anim = 6117

[state 6111, changestate]
type = changestate
trigger1 = time = 60
value = 6115
;---------------------------------------------------------------------------
[statedef 6115]
type = a
movetype = i
physics = n
anim = 6176

[state 6115, turn]
type = turn
trigger1 = time = 0

[state 6115, velset]
type = velset
trigger1 = time = 0
x = 2.8

[state 6115, parentvarset]
type = parentvarset
trigger1 = time = 0
var(5) = 1

[state 6115, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;===========================================================================
;■平沢唯２
[statedef 6120]
type = a
movetype = i
physics = n
velset = 3,0
sprpriority = 0

[state 6120, changeanim]
type = changeanim
trigger1 = time = 0
value = 6175
elem = 4

[state 6120, playsnd]
type = playsnd
trigger1 = rootdist x >= 145
trigger1 = rootdist x < 150
value = 9,120
channel = 1
lowpriority = 1
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6120, changestate]
type = changestate
trigger1 = rootdist x <= floor(const(size.xscale)*40)
value = 6121
;---------------------------------------------------------------------------
[statedef 6121]
type = a
movetype = i
physics = n
anim = 6120
velset = 0,0

[state 6121, null]
type = null
trigger1 = 1
;===========================================================================
;■平沢唯３
[statedef 6130]
type = a
movetype = i
physics = n
anim = 6130
sprpriority = 1

[state 6130, posset]
type = posset
trigger1 = numhelper(7200) = 1
x = helper(7200),pos x
y = helper(7200),pos y-floor(const(size.yscale)*27)

[state 6130, playsnd]
type = playsnd
trigger1 = time = 120
value = 9,130+(random<500)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6130, destroyself]
type = destroyself
trigger1 = frontedgedist < -300
trigger2 = numhelper(7200) != 1
;===========================================================================
;■平沢唯４
[statedef 6140]
type = a
movetype = i
physics = n
anim = 6140
velset = 0,0
sprpriority = 4

[state 6140, playsnd]
type = playsnd
trigger1 = time = 120
value = 9,140
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6140, changestate]
type = changestate
trigger1 = time = 120
value = 6141
;---------------------------------------------------------------------------
[statedef 6141]
type = a
movetype = i
physics = n
anim = 6141

[state 6141, parentvarset]
type = parentvarset
trigger1 = time = 60
var(5) = 1

[state 6141, changestate]
type = changestate
trigger1 = root,var(5) = 2
value = 6149
;===========================================================================
;■平沢唯５
[statedef 6143]
type = a
movetype = i
physics = n
anim = 6143
velset = 0,0
sprpriority = 4

[state 6143, playsnd]
type = playsnd
trigger1 = time = 20
value = 8,2

[state 6325, helper]
type = helper
trigger1 = time = 20
helpertype = normal
name = "lightning"
id = 32310
stateno = 32310
pos = 0,0
postype = left
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
supermovetime = 900
pausemovetime = 900

[state 6143, changestate]
type = changestate
trigger1 = time = 60
value = 6144
;---------------------------------------------------------------------------
[statedef 6144]
type = a
movetype = i
physics = n
anim = 6144

[state 6144, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,141
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6144, changestate]
type = changestate
trigger1 = time = 100
value = 6145
;---------------------------------------------------------------------------
[statedef 6145]
type = a
movetype = i
physics = n
anim = 6145

[state 6145, changestate]
type = changestate
trigger1 = root,var(5) = 2
value = 6149
;---------------------------------------------------------------------------
[statedef 6149]
type = a
movetype = i
physics = n
anim = 6149

[state 6149, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 6149, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 6149, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,7

[state 6149, playsnd]
type = playsnd
trigger1 = time = 10
value = 9,142
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6149, destroyself]
type = destroyself
trigger1 = pos y > 300
;===========================================================================
;■平沢唯６
[statedef 6150]
type = a
movetype = i
physics = n
anim = 6150
sprpriority = 4

[state 6150, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,2

[state 6150, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(6) = 0
trigger3 = time = 0
value = 9,150+var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6150, changestate]
type = changestate
trigger1 = root,anim = 250
trigger1 = root,animelemtime(4) = 0
value = 6155
;---------------------------------------------------------------------------
[statedef 6155]
type = a
anim = 6155

[state 6155, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(3) = 0
trigger3 = animelemtime(6) = 0
value = 8,4

[state 6155, changestate]
type = changestate
trigger1 = animtime = 0
value = 6157
;---------------------------------------------------------------------------
[statedef 6157]
type = a
anim = 6157

[state 6157, changestate]
type = changestate
trigger1 = time = 160
value = 6159
;---------------------------------------------------------------------------
[statedef 6159]
type = a

[state 6159, turn]
type = turn
trigger1 = time = 0

[state 6159, changeanim]
type = changeanim
trigger1 = time = 0
value = 6178

[state 6159, velset]
type = velset
trigger1 = time = 0
x = 2.8

[state 6159, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;===========================================================================
;■平沢唯７
[statedef 6160]
type = a
movetype = i
physics = n
anim = 6160
sprpriority = 4

[state 6160, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 1
aspan = 1
value = 9,10
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6160, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 1
aspan = 1
value = 9,11
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6160, changestate]
type = changestate
trigger1 = time = 550
value = 6166
;---------------------------------------------------------------------------
[statedef 6165]
type = a
movetype = i
physics = n
anim = 6165
sprpriority = 4

[state 6165, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6165, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 8,3

[state 6165, changestate]
type = changestate
trigger1 = animtime = 0
value = 6160
;---------------------------------------------------------------------------
[statedef 6166]
type = a
movetype = i
physics = n
anim = 6166
sprpriority = 4

[state 6166, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6166, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■ゆいぐるみ
[statedef 6180]
type = a
movetype = i
physics = n
anim = 6180
velset = 0,0
sprpriority = 4

[state 6180, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,110
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6180, changestate]
type = changestate
trigger1 = time = 150
value = 6181
;---------------------------------------------------------------------------
[statedef 6181]
type = a
movetype = i
physics = n
anim = 6181
sprpriority = 4

[state 6181, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 6182
id = 6182
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 2
ownpal = 1

[state 6181, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6188
id = 6188
pos = floor(const(size.xscale)*19),-floor(const(size.yscale)*86)
postype = p1
facing = 1
bindtime = -1
removetime = -1
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[state 6181, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6188
id = 6188
pos = floor(const(size.xscale)*62),-floor(const(size.yscale)*116)
postype = p1
facing = 1
bindtime = -1
removetime = -1
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[state 6181, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6188
id = 6188
pos = floor(const(size.xscale)*90),-floor(const(size.yscale)*77)
postype = p1
facing = 1
bindtime = -1
removetime = -1
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[state 6181, removeexplod]
type = removeexplod
trigger1 = animelemtime(5) = 0
id = 6182

[state 6181, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 10
value = 9,111
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6181, removeexplod]
type = removeexplod
trigger1 = time = 350
id = 6188

[state 6181, changestate]
type = changestate
trigger1 = time = 350
value = 6183
;---------------------------------------------------------------------------
[statedef 6183]
type = a
movetype = i
physics = n
anim = 6183
sprpriority = 4

[state 6183, changestate]
type = changestate
trigger1 = animtime = 0
value = 6185
;---------------------------------------------------------------------------
[statedef 6185]
type = a
movetype = i
physics = n
anim = 6185
sprpriority = 4

[state 6185, velmul]
type = velmul
trigger1 = 1
x = 0.9

[state 6185, velset]
type = velset
trigger1 = time%60 = 0
x = const(size.xscale)*4

[state 6185, velset]
type = velset
trigger1 = time%60 = 30
x = -const(size.xscale)*4

[state 6185, changestate]
type = changestate
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6310
trigger1 = helper(6300),animelemtime(6) = 0
value = 6189
;---------------------------------------------------------------------------
[statedef 6189]
type = a
movetype = i
physics = n
anim = 6189
velset = 0,0
sprpriority = 4

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(1) >= 0
trigger1 = helper(6300),animelemtime(2) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*8)
y = helper(6300),pos y-floor(const(size.yscale)*67)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(2) >= 0
trigger1 = helper(6300),animelemtime(3) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*8)
y = helper(6300),pos y-floor(const(size.yscale)*66)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(3) >= 0
trigger1 = helper(6300),animelemtime(4) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*8)
y = helper(6300),pos y-floor(const(size.yscale)*65)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(4) >= 0
trigger1 = helper(6300),animelemtime(5) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*8)
y = helper(6300),pos y-floor(const(size.yscale)*66)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(5) >= 0
trigger1 = helper(6300),animelemtime(6) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*7)
y = helper(6300),pos y-floor(const(size.yscale)*67)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(6) >= 0
trigger1 = helper(6300),animelemtime(7) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*6)
y = helper(6300),pos y-floor(const(size.yscale)*66)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(7) >= 0
trigger1 = helper(6300),animelemtime(8) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*6)
y = helper(6300),pos y-floor(const(size.yscale)*65)

[state 6189, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(8) >= 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*7)
y = helper(6300),pos y-floor(const(size.yscale)*66)

[state 6189, destroyself]
type = destroyself
trigger1 = numhelper(6300) = 0
ignorehitpause = 1
;===========================================================================
;■田井中律１
[statedef 6200]
type = a
movetype = i
physics = n
anim = 6210
velset = 7,-4
sprpriority = 2

[state 6200, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 6200, changestate]
type = changestate
trigger1 = pos y >= -5
value = 6211
;---------------------------------------------------------------------------
[statedef 6211]
type = a
movetype = i
physics = n
anim = 6211
velset = 0,0

[state 6211, posset]
type = posset
trigger1 = 1
y = 0

[state 6211, playsnd]
type = playsnd
trigger1 = time = 0
value = 8,3

[state 6211, playsnd]
type = playsnd
trigger1 = time = 6
value = 9,200
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6211, changestate]
type = changestate
trigger1 = animtime = 0
value = 6212
;---------------------------------------------------------------------------
[statedef 6212]
type = a
movetype = i
physics = n
anim = 6212

[state 6212, changestate]
type = changestate
trigger1 = time = 60
value = 6213
;---------------------------------------------------------------------------
[statedef 6213]
type = a
movetype = i
physics = n
anim = 6213

[state 6213, changestate]
type = changestate
trigger1 = time = 100
value = 6215
;---------------------------------------------------------------------------
[statedef 6215]
type = a
movetype = i
physics = n
anim = 6215
sprpriority = 4

[state 6215, posadd]
type = posadd
trigger1 = time = 0
x = 15

[state 6215, sprpriority]
type = sprpriority
trigger1 = roundstate = 4
value = 3

[state 6215, explod]
type = explod
trigger1 = gametime%768 = 0
anim = 6219
id = 6219
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 6215, destroyself]
type = destroyself
trigger1 = root,var(40) = 0
ignorehitpause = 1
;===========================================================================
;■田井中律２
[statedef 6250]
type = a
movetype = i
physics = n
anim = 6250
sprpriority = 4

[state 6250, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,3

[state 6250, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(6) = 0
trigger3 = time = 0
value = 9,250+var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6250, changestate]
type = changestate
trigger1 = root,anim = 250
trigger1 = root,animelemtime(4) = 0
value = 6255
;---------------------------------------------------------------------------
;■スタンバイ
[statedef 6251]
type = a
movetype = i
physics = n
anim = 6200
sprpriority = 4

[state 6251, changestate]
type = changestate
trigger1 = time >= 133
value = 6252
;---------------------------------------------------------------------------
[statedef 6252]
type = a
movetype = i
physics = n
anim = 6252
sprpriority = 4

[state 6252, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,201
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6252, changestate]
type = changestate
trigger1 = time >= 200
value = 6250
;---------------------------------------------------------------------------
[statedef 6255]
type = a
anim = 6255
sprpriority = 5

[state 6255, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(3) = 0
trigger3 = animelemtime(6) = 0
value = 8,4

[state 6255, changestate]
type = changestate
trigger1 = animtime = 0
value = 6257
;---------------------------------------------------------------------------
[statedef 6257]
type = a
anim = 6257

[state 6257, posadd]
type = posadd
trigger1 = time = 0
x = 30

[state 6257, changestate]
type = changestate
trigger1 = time = 150
value = 6259
;---------------------------------------------------------------------------
[statedef 6259]
type = a

[state 6259, turn]
type = turn
trigger1 = time = 0

[state 6259, changeanim]
type = changeanim
trigger1 = time = 0
value = 6275

[state 6259, velset]
type = velset
trigger1 = time = 0
x = 3

[state 6259, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,0
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6259, playsnd]
type = playsnd
trigger1 = time = 80
value = 9,1
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6259, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;===========================================================================
;■田井中律３
[statedef 6260]
type = a
movetype = i
physics = n
anim = 6260
sprpriority = 4

[state 6260, changestate]
type = changestate
trigger1 = time = 550
value = 6266
;---------------------------------------------------------------------------
[statedef 6265]
type = a
movetype = i
physics = n
anim = 6265
sprpriority = 4

[state 6265, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6265, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 8,3

[state 6265, changestate]
type = changestate
trigger1 = animtime = 0
value = 6260
;---------------------------------------------------------------------------
[statedef 6266]
type = a
movetype = i
physics = n
anim = 6266
sprpriority = 4

[state 6266, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6266, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■りつぐるみ
[statedef 6280]
type = a
movetype = i
physics = n
anim = 6280
velset = 0,0
sprpriority = 3

[state 6280, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,210
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6280, changestate]
type = changestate
trigger1 = time = 150
value = 6281
;---------------------------------------------------------------------------
[statedef 6281]
type = a
movetype = i
physics = n
anim = 6281
sprpriority = 3

[state 6281, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 6282
id = 6282
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 6281, removeexplod]
type = removeexplod
trigger1 = time = 350
id = 6282

[state 6281, changestate]
type = changestate
trigger1 = time = 350
value = 6283
;---------------------------------------------------------------------------
[statedef 6283]
type = a
movetype = i
physics = n
anim = 6283
sprpriority = 3

[state 6283, changestate]
type = changestate
trigger1 = animtime = 0
value = 6285
;---------------------------------------------------------------------------
[statedef 6285]
type = a
movetype = i
physics = n
anim = 6285
sprpriority = 3

[state 6285, velmul]
type = velmul
trigger1 = 1
x = 0.9

[state 6285, velset]
type = velset
trigger1 = time%60 = 0
x = const(size.xscale)*4

[state 6285, velset]
type = velset
trigger1 = time%60 = 30
x = -const(size.xscale)*4

[state 6285, changestate]
type = changestate
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6310
trigger1 = helper(6300),animelemtime(6) = 0
value = 6289
;---------------------------------------------------------------------------
[statedef 6289]
type = a
movetype = i
physics = n
anim = 6289
velset = 0,0
sprpriority = 3

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(1) >= 0
trigger1 = helper(6300),animelemtime(2) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*7)
y = helper(6300),pos y-floor(const(size.yscale)*49)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(2) >= 0
trigger1 = helper(6300),animelemtime(3) < 0
x = helper(6300),pos x
y = helper(6300),pos y-floor(const(size.yscale)*48)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(3) >= 0
trigger1 = helper(6300),animelemtime(4) < 0
x = helper(6300),pos x
y = helper(6300),pos y-floor(const(size.yscale)*47)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(4) >= 0
trigger1 = helper(6300),animelemtime(5) < 0
x = helper(6300),pos x-floor(const(size.xscale)*7)
y = helper(6300),pos y-floor(const(size.yscale)*48)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(5) >= 0
trigger1 = helper(6300),animelemtime(6) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*14)
y = helper(6300),pos y-floor(const(size.yscale)*46)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(6) >= 0
trigger1 = helper(6300),animelemtime(7) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*19)
y = helper(6300),pos y-floor(const(size.yscale)*47)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(7) >= 0
trigger1 = helper(6300),animelemtime(8) < 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*19)
y = helper(6300),pos y-floor(const(size.yscale)*46)

[state 6289, posset]
type = posset
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),animelemtime(8) >= 0
x = helper(6300),pos x-facing*floor(const(size.xscale)*14)
y = helper(6300),pos y-floor(const(size.yscale)*46)

[state 6289, destroyself]
type = destroyself
trigger1 = numhelper(6300) = 0
ignorehitpause = 1
;===========================================================================
;■秋山澪１
[statedef 6300]
type = a
movetype = i
physics = n
anim = 6370
velset = 2,0
sprpriority = 2

[state 6300, changestate]
type = changestate
trigger1 = rootdist x <= -floor(const(size.xscale)*60)
value = 6310
;---------------------------------------------------------------------------
[statedef 6310]
type = a
movetype = i
physics = n
anim = 6310
velset = 0,0
sprpriority = 2

[state 6310, changestate]
type = changestate
trigger1 = animelemtime(6) = 80
value = 6315
;---------------------------------------------------------------------------
[statedef 6315]
type = a
movetype = i
physics = n
anim = 6371
sprpriority = 2

[state 6315, turn]
type = turn
trigger1 = time = 0

[state 6315, velset]
type = velset
trigger1 = time = 0
x = 2

[state 6315, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
trigger1 = time > 120
ignorehitpause = 1
;===========================================================================
;■秋山澪２
[statedef 6320]
type = a
movetype = i
physics = n
anim = 6320
velset = 6,0
sprpriority = 3

[state 6320, afterimage]
type = afterimage
trigger1 = time = 0
time = 64
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 6320, playsnd]
type = playsnd
trigger1 = time = 10
value = 8,10

[state 6320, changestate]
type = changestate
trigger1 = rootdist x <= 70
value = 6323
;---------------------------------------------------------------------------
[statedef 6323]
type = a
movetype = i
physics = n
anim = 6323
velset = 0,0

[state 6323, playsnd]
type = playsnd
trigger1 = time = 0
value = 1,6

[state 6323, changestate]
type = changestate
trigger1 = time = 20
value = 6324
;---------------------------------------------------------------------------
[statedef 6324]
type = a
movetype = a
physics = n

[state 6324, envcolor]
type = envcolor
trigger1 = 1
value = 200, 200, 200
time = 1

[state 6324, explod]
type = explod
trigger1 = time%4 = 0
anim = 25002
pos = 0,-floor(const(size.yscale)*60)
postype = p1
random = 60, 60
supermovetime = 900
pausemovetime = 900
ontop = 1
ownpal = 1

[state 6324, playsnd]
type = playsnd
trigger1 = time%4 = 0
value = 1,2

[state 6324, envshake]
type = envshake
trigger1 = time%4 = 0
time = 20
freq = 100
ampl = 10
phase = 50

[state 6324, changestate]
type = changestate
trigger1 = time = 80
value = 6325
;---------------------------------------------------------------------------
[statedef 6325]
type = a
movetype = i
physics = n
anim = 6325
sprpriority = 5

[state 6325, playsnd]
type = playsnd
trigger1 = time = 0
value = 8,11

[state 6325, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "samurai-moji"
id = 32300
stateno = 32300
pos = 0,0
postype = left
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
supermovetime = 900
pausemovetime = 900

[state 6325, changestate]
type = changestate
trigger1 = time = 200
value = 6326
;---------------------------------------------------------------------------
[statedef 6326]
type = a
movetype = i
physics = n
anim = 6320
velset = 6,0
sprpriority = 3

[state 6326, afterimage]
type = afterimage
trigger1 = time = 0
time = 64
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 6326, playsnd]
type = playsnd
trigger1 = time = 10
value = 8,10

[state 6326, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;===========================================================================
;■秋山澪３
[statedef 6350]
type = a
movetype = i
physics = n
anim = 6350
sprpriority = 4

[state 6350, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,1

[state 6350, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
trigger2 = time = 0
value = 9,350
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6350, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,351
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6350, changestate]
type = changestate
trigger1 = root,anim = 250
trigger1 = root,animelemtime(4) = 0
value = 6355
;===========================================================================
;■秋山澪４
[statedef 6360]
type = a
movetype = i
physics = n
anim = 6360
sprpriority = 4

[state 6360, changestate]
type = changestate
trigger1 = time = 550
value = 6366
;---------------------------------------------------------------------------
[statedef 6365]
type = a
movetype = i
physics = n
anim = 6365
sprpriority = 4

[state 6365, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6365, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 8,3

[state 6365, changestate]
type = changestate
trigger1 = animtime = 0
value = 6360
;---------------------------------------------------------------------------
[statedef 6366]
type = a
movetype = i
physics = n
anim = 6366
sprpriority = 4

[state 6366, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6366, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;---------------------------------------------------------------------------
;■スタンバイ
[statedef 6351]
type = a
movetype = i
physics = n
anim = 6300
sprpriority = 4

[state 6351, changeanim]
type = changeanim
trigger1 = anim != 6351
trigger1 = time >= 140
value = 6351

[state 6351, changestate]
type = changestate
trigger1 = time >= 420
value = 6352
;---------------------------------------------------------------------------
[statedef 6352]
type = a
movetype = i
physics = n
anim = 6352
sprpriority = 4

[state 6352, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,302
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6352, changestate]
type = changestate
trigger1 = time >= 255
value = 6350
;---------------------------------------------------------------------------
[statedef 6355]
type = a
anim = 6355

[state 6355, turn]
type = turn
trigger1 = time = 0

[state 6355, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(3) = 0
trigger3 = animelemtime(6) = 0
value = 8,4

[state 6355, changestate]
type = changestate
trigger1 = animtime = 0
value = 6357
;---------------------------------------------------------------------------
[statedef 6357]
type = a
anim = 6357

[state 6357, posadd]
type = posadd
trigger1 = time = 0
x = -120

[state 6357, changestate]
type = changestate
trigger1 = time = 160
value = 6359
;---------------------------------------------------------------------------
[statedef 6359]
type = a

[state 6359, turn]
type = turn
trigger1 = time = 0

[state 6359, changeanim]
type = changeanim
trigger1 = time = 0
value = 6375

[state 6359, velset]
type = velset
trigger1 = time = 0
x = 1.8

[state 6359, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;===========================================================================
;■琴吹紬１
[statedef 6400]
type = a
movetype = i
physics = n
anim = 6410
sprpriority = 3

[state 6400, changeanim]
type = changeanim
trigger1 = time = 420
value = 6412

[state 6400, changestate]
type = changestate
trigger1 = anim = 6412
trigger1 = animtime = 0
value = 6401
;---------------------------------------------------------------------------
[statedef 6401]
type = a
movetype = i
physics = n
anim = 6411
sprpriority = 3

[state 6401, changeanim]
type = changeanim
trigger1 = time = 720
value = 6413

[state 6401, changestate]
type = null;changestate
trigger1 = anim = 6413
trigger1 = animtime = 0
value = 6400

[state 6401, changestate]
type = changestate
trigger1 = numhelper(6300) = 1
trigger1 = helper(6300),stateno = 6315
trigger1 = helper(6300),time = 20
value = 6402
;---------------------------------------------------------------------------
[statedef 6402]
type = a
movetype = i
physics = n
anim = 6470
sprpriority = 2

[state 6402, velset]
type = velset
trigger1 = time = 0
x = 1.2

[state 6402, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;===========================================================================
;■琴吹紬２
[statedef 6420]
type = a
movetype = i
physics = n
anim = 6470
velset = 1.2,0
sprpriority = 4

[state 6420, changestate]
type = changestate
trigger1 = rootdist x <= 50
value = 6421
;---------------------------------------------------------------------------
[statedef 6421]
type = a
movetype = i
physics = n
anim = 6411
velset = 0,0
sprpriority = 3

[state 6421, changestate]
type = changestate
trigger1 = time = 300
value = 6422
;---------------------------------------------------------------------------
[statedef 6422]
type = a
movetype = i
physics = n
anim = 6420
sprpriority = 3

[state 6422, changeanim]
type = changeanim
trigger1 = anim = 6420
trigger1 = animtime = 0
trigger2 = time = 100
value = 6421

[state 6422, changeanim]
type = changeanim
trigger1 = time = 30
value = 6422

[state 6422, playsnd]
type = playsnd
trigger1 = time = 30
value = 9,400
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6422, changestate]
type = changestate
trigger1 = time = 200
value = 6425
;---------------------------------------------------------------------------
[statedef 6425]
type = a
movetype = i
physics = n
anim = 6425

[state 6425, turn]
type = turn
trigger1 = time = 0

[state 6425, changestate]
type = changestate
trigger1 = animtime = 0
value = 6426
;---------------------------------------------------------------------------
[statedef 6426]
type = a
movetype = i
physics = n
anim = 6470
sprpriority = 2

[state 6426, velset]
type = velset
trigger1 = time = 0
x = 1.2

[state 6426, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;===========================================================================
;■琴吹紬３
[statedef 6440]
type = a
movetype = i
physics = n
anim = 6440
sprpriority = 4

[state 6440, changestate]
type = changestate
trigger1 = time = 110
value = 6441
;---------------------------------------------------------------------------
[statedef 6441]
type = a
movetype = i
physics = n
anim = 6441
sprpriority = 4

[state 6441, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,440
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6441, changestate]
type = changestate
trigger1 = animtime = 0
value = 6443
;---------------------------------------------------------------------------
[statedef 6443]
type = a
movetype = i
physics = n
anim = 6443
sprpriority = 4

[state 6442, changestate]
type = changestate
trigger1 = time = 55
value = 6444
;---------------------------------------------------------------------------
[statedef 6444]
type = a
movetype = i
physics = n
anim = 6444
sprpriority = 4

[state 6444, changestate]
type = changestate
trigger1 = animtime = 0
value = 6445
;---------------------------------------------------------------------------
[statedef 6445]
type = a
movetype = i
physics = n
anim = 6446
sprpriority = 4

[state 6441, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,441
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6445, changeanim]
type = changeanim
trigger1 = time = 60
value = 6445

[state 6445, parentvarset]
type = parentvarset
trigger1 = time = 50
var(5) = 1

[state 6145, changestate]
type = changestate
trigger1 = root,var(5) = 2
value = 6449
;---------------------------------------------------------------------------
[statedef 6449]
type = a
movetype = i
physics = n
anim = 6449

[state 6449, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 6449, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 6449, playsnd]
type = playsnd
trigger1 = time = 20
value = 9,442
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6449, destroyself]
type = destroyself
trigger1 = pos y > 300
;===========================================================================
;■琴吹紬４
[statedef 6460]
type = a
movetype = i
physics = n
anim = 6460
sprpriority = 4

[state 6460, changestate]
type = changestate
trigger1 = time = 550
value = 6466
;---------------------------------------------------------------------------
[statedef 6465]
type = a
movetype = i
physics = n
anim = 6465
sprpriority = 4

[state 6465, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6465, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 8,3

[state 6465, changestate]
type = changestate
trigger1 = animtime = 0
value = 6460
;---------------------------------------------------------------------------
[statedef 6466]
type = a
movetype = i
physics = n
anim = 6466
sprpriority = 4

[state 6466, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6466, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■木下しずか
[statedef 6500]
type = a
movetype = i
physics = n
anim = 6500
velset = 0,0
sprpriority = 4

[state 6500, changeanim]
type = changeanim
trigger1 = time = 20
value = 6501

[state 6500, playsnd]
type = playsnd
trigger1 = time = 20
value = 9,520
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6500, changestate]
type = changestate
trigger1 = time = 260
value = 6505
;---------------------------------------------------------------------------
[statedef 6505]
type = a
movetype = i
physics = n
anim = 6505

[state 6505, playsnd]
type = playsnd
trigger1 = time = 9
value = 12,1

[state 6505, parentvarset]
type = parentvarset
trigger1 = animtime = 0
var(5) = 1

[state 6505, changestate]
type = changestate
trigger1 = animtime = 0
value = 6507
;---------------------------------------------------------------------------
[statedef 6507]
type = a
movetype = i
physics = n
anim = 6507

[state 6507, changestate]
type = changestate
trigger1 = root,var(5) = 2
value = 6508
;---------------------------------------------------------------------------
[statedef 6508]
type = a
movetype = i
physics = n
anim = 6508

[state 6508, changeanim]
type = changeanim
trigger1 = time = 20
value = 6508

[state 6508, playsnd]
type = playsnd
trigger1 = time = 20
value = 9,500
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6508, changestate]
type = changestate
trigger1 = time = 70
value = 6510
;---------------------------------------------------------------------------
[statedef 6510]
type = a
movetype = i
physics = n
anim = 6510

[state 6510, turn]
type = turn
trigger1 = time = 0

[state 6510, changestate]
type = changestate
trigger1 = animtime = 0
value = 6520
;---------------------------------------------------------------------------
[statedef 6520]
type = a
movetype = i
physics = n
anim = 6520

[state 6520, helper]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
name = "m-oyaji"
stateno = 6590
id = 6590
pos = floor(const(size.xscale)*6),-floor(const(size.yscale)*92)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 6520, changestate]
type = changestate
trigger1 = animtime = 0
value = 6530
;---------------------------------------------------------------------------
[statedef 6530]
type = a
movetype = i
physics = n
anim = 6575
velset = 2,0

[state 6530, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
;■しずかパパ
[statedef 6590]
type = a
movetype = i
physics = n
anim = 6590
velset = 0,-1
sprpriority = 5

[state 6590, veladd]
type = veladd
trigger1 = 1
y = 0.3

[state 6590, destroyself]
type = destroyself
trigger1 = pos y > -60
;===========================================================================
;■平沢憂
[statedef 6600]
type = a
movetype = i
physics = n
anim = 6675
velset = 3,0
sprpriority = 0

[state 6600, playsnd]
type = playsnd
trigger1 = rootdist x > 115
trigger1 = rootdist x <= 120
value = 9,610
channel = 1
lowpriority = 1
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6600, changestate]
type = changestate
trigger1 = rootdist x <= floor(const(size.xscale)*38)
value = 6610
;---------------------------------------------------------------------------
[statedef 6610]
type = a
movetype = i
physics = n
anim = 6610
velset = 0,0

[state 6610, null]
type = null
trigger1 = 1
;===========================================================================
;■平沢憂２
[statedef 6620]
type = a
movetype = i
physics = n
anim = 6676
velset =0,0
sprpriority = 0

[state 6620, assertspecial]
type = assertspecial
trigger1 = time < 200
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 6620, velset]
type = velset
trigger1 = time = 200
x = 3

[state 6620, playsnd]
type = playsnd
trigger1 = time = 280
value = 9,600
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6620, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;===========================================================================
;■鈴木純
[statedef 6760]
type = a
movetype = i
physics = n
anim = 6760
sprpriority = 4

[state 6760, changestate]
type = changestate
trigger1 = time = 550
value = 6761
;---------------------------------------------------------------------------
[statedef 6761]
type = a
movetype = i
physics = n
anim = 6761
sprpriority = 4

[state 6761, playsnd]
type = playsnd
trigger1 = time = 10
value = 8,6

[state 6761, explod]
type = explod
trigger1 = time = 10
anim = 6763
id = 6763
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 60
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 6761, changestate]
type = changestate
trigger1 = time = 80
value = 6766
;---------------------------------------------------------------------------
[statedef 6765]
type = a
movetype = i
physics = n
anim = 6765
sprpriority = 4

[state 6765, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6765, playsnd]
type = playsnd
trigger1 = animtime = 0
value = 8,3

[state 6765, changestate]
type = changestate
trigger1 = animtime = 0
value = 6760
;---------------------------------------------------------------------------
[statedef 6766]
type = a
movetype = i
physics = n
anim = 6766
sprpriority = 4

[state 6766, playsnd]
type = playsnd
trigger1 = time = 1
value = 8,4

[state 6766, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■一文字とみ
[statedef 6900]
type = a
movetype = i
physics = n
anim = 6900
velset = 0,0
sprpriority = 4

[state 6900, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 6900, changeanim]
type = changeanim
trigger1 = time = 120
value = 6901

[state 6900, changeanim]
type = changeanim
trigger1 = time = 360
value = 6900

[state 6900, playsnd]
type = playsnd
trigger1 = time = 120
value = 9,900
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 6900, changestate]
type = changestate
trigger1 = time = 400
value = 6905
;---------------------------------------------------------------------------
[statedef 6905]
type = a
movetype = i
physics = n
anim = 6905

[state 6905, changestate]
type = changestate
trigger1 = animtime = 0
value = 6910
;---------------------------------------------------------------------------
[statedef 6910]
type = a
movetype = i
physics = n
anim = 6970
velset = 0.6,0

[state 6910, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;===========================================================================
;★キティコールアタック
;===========================================================================
;■ちびあずにゃん
[statedef 7000]
type = a
movetype = i
physics = n
anim = 7000
velset = 0,0
sprpriority = 5

[state 7000, bindtoroot]
type = bindtoroot
trigger1 = root,animelemtime(2) >= 0
trigger1 = root,animelemtime(3) < 0
time = 1
facing = 1
pos = floor(const(size.xscale)*116),-floor(const(size.yscale)*124)
ignorehitpause = 1

[state 7000, bindtoroot]
type = bindtoroot
trigger1 = root,animelemtime(3) >= 0
trigger1 = root,animelemtime(4) < 0
time = 1
facing = 1
pos = floor(const(size.xscale)*57),0
ignorehitpause = 1

[state 7000, posset]
type = posset
trigger1 = root,animelemtime(4) >= 0
y = 0

[state 7000, playsnd]
type = playsnd
trigger1 = time = 10
value = 10,100
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7000, destroyself]
type = destroyself
trigger1 = time < 10
trigger1 = root,movetype = h

[state 7000, changestate]
type = changestate
trigger1 = time = 20
trigger1 = random < 700
value = 7010

[state 7000, changestate]
type = changestate
trigger1 = time = 20
value = 7015
;===========================================================================
;■ちびあずにゃん・キティコールハザード
[statedef 7003]
type = a
movetype = i
physics = n
anim = 7000
velset = 0,0
sprpriority = 5

[state 7003, playsnd]
type = playsnd
trigger1 = time = 70
value = 10,100
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7003, changestate]
type = changestate
trigger1 = time = 70
trigger1 = random < 100
value = 7010

[state 7003, changestate]
type = changestate
trigger1 = time = 70
value = 7015
;---------------------------------------------------------------------------
[statedef 7010]
type = a
movetype = a
physics = n
anim = 7070
velset = 1.5,0

[state 7010, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 7010, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 7090
time = -1

[state 7010, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 1
trigger2 = animelemtime(5) = 1
value = 2,5
channel = 2

[state 7010, hitdef]
type = hitdef
trigger1 = time =1
id = 7010
attr = s,sp
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = root,floor(40*fvar(1)),8
getpower = 10,8
givepower = 8,5
ground.hittime  = 12
air.hittime = 12
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*16)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -6
air.velocity = -1.4,-3
fall.recovertime = 30

[state 7010, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7010
ignorehitpause = 1

[state 7010, targetstate]
type = targetstate
trigger1 = numtarget(7010) > 0
trigger1 = target(7010),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7010, changestate]
type = changestate
trigger1 = moveguarded
value = 7090

[state 7010, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7015]
type = a
movetype = a
physics = n
anim = 7075
velset = 7,0

[state 7015, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 7015, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 7090
time = -1

[state 7015, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 1
trigger2 = animelemtime(5) = 1
value = 2,5
channel = 2

[state 7015, hitdef]
type = hitdef
trigger1 = time =1
id = 7015
attr = s,sp
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = root,floor(65*fvar(1)),12
getpower = 10,8
givepower = 8,5
ground.hittime  = 12
air.hittime = 12
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*16)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -6
air.velocity = -1.4,-3
fall.recovertime = 30

[state 7015, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7015
ignorehitpause = 1

[state 7015, targetstate]
type = targetstate
trigger1 = numtarget(7015) > 0
trigger1 = target(7015),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7015, changestate]
type = changestate
trigger1 = moveguarded
value = 7090

[state 7015, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7090]
type = a
movetype = h
physics = n
anim = 7090

[state 7090, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 7090, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 7090, playsnd]
type = playsnd
trigger1 = time = 10
value = 10,109
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7090, destroyself]
type = destroyself
trigger1 = pos y > 100
;===========================================================================
;■れもん星人
[statedef 7300]
type = a
movetype = i
physics = n
anim = 7300
velset = 0,0
sprpriority = 4

[state 7300, changestate]
type = changestate
trigger1 = time = 25
value = 7305
;---------------------------------------------------------------------------
[statedef 7305]
type = a
movetype = a
physics = n
anim = 7305
velset = 1.7,0

[state 7305, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 7305, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 7309
time = -1

[state 7305, hitdef]
type = hitdef
trigger1 = time =1
id = 7305
attr = s,sp
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = root,floor(16*fvar(1)),4
getpower = 10,8
givepower = 8,5
ground.hittime  = 12
air.hittime = 12
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*16)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -6
air.velocity = -1.4,-3
fall.recovertime = 30

[state 7305, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7305
ignorehitpause = 1

[state 7305, targetstate]
type = targetstate
trigger1 = numtarget(7305) > 0
trigger1 = target(7305),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7305, changestate]
type = changestate
trigger1 = movecontact
value = 7309

[state 7305, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7309]
type = a
movetype = h
physics = n
anim = 7309
sprpriority = 5

[state 7309, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 7309, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 7309, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,800
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7309, destroyself]
type = destroyself
trigger1 = pos y > 100
;===========================================================================
;■むしおやじ
[statedef 7330]
type = a
movetype = i
physics = n
anim = 7330
velset = 0,0
sprpriority = 4

[state 7330, changestate]
type = changestate
trigger1 = time = 10
value = 7335
;---------------------------------------------------------------------------
[statedef 7335]
type = a
movetype = a
physics = n
anim = 7335
velset = 1.2,0

[state 7335, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 7335, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 7339
time = -1

[state 7335, hitdef]
type = hitdef
trigger1 = time =1
id = 7335
attr = s,sp
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = root,floor(12*fvar(1)),4
getpower = 10,8
givepower = 8,5
ground.hittime  = 18
air.hittime = 18
guard.ctrltime = 12
ground.slidetime = 18
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*16)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -6
air.velocity = -1.4,-3
fall.recovertime = 30

[state 7335, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7335
ignorehitpause = 1

[state 7335, targetstate]
type = targetstate
trigger1 = numtarget(7335) > 0
trigger1 = target(7335),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7335, changestate]
type = changestate
trigger1 = movecontact
value = 7339

[state 7335, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7339]
type = a
movetype = h
physics = n
anim = 7330
sprpriority = 5

[state 7339, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 7339, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 7339, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,801
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7339, destroyself]
type = destroyself
trigger1 = pos y > 100
;===========================================================================
;■ケロ
[statedef 7360]
type = a
movetype = i
physics = n
anim = 7360
velset = 0,0
sprpriority = 4

[state 7360, changestate]
type = changestate
trigger1 = time = 35
value = 7365
;---------------------------------------------------------------------------
[statedef 7365]
type = a
movetype = a
physics = n
anim = 7365
velset = 3.3,0

[state 7365, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 7365, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 7369
time = -1

[state 7365, hitdef]
type = hitdef
trigger1 = time =1
id = 7365
attr = s,sp
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = root,floor(24*fvar(1)),4
getpower = 10,8
givepower = 8,5
ground.hittime  = 14
air.hittime = 14
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*16)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -6
air.velocity = -1.4,-3
fall.recovertime = 30

[state 7365, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7365
ignorehitpause = 1

[state 7365, targetstate]
type = targetstate
trigger1 = numtarget(7365) > 0
trigger1 = target(7365),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7365, changestate]
type = changestate
trigger1 = movecontact
value = 7369

[state 7365, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7369]
type = a
movetype = h
physics = n
anim = 7360
sprpriority = 5

[state 7369, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 7369, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 7369, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,802
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7369, destroyself]
type = destroyself
trigger1 = pos y > 100
;===========================================================================
;■ゆっくりあずにゃん
[statedef 7400]
type = a
movetype = i
physics = n
anim = 7400
velset = 0,0
sprpriority = 3

[state 7400, bindtoroot]
type = bindtoroot
trigger1 = root,animelemtime(2) >= 0
trigger1 = root,animelemtime(3) < 0
time = 1
facing = 1
pos = floor(const(size.xscale)*116),-floor(const(size.yscale)*124)
ignorehitpause = 1

[state 7400, bindtoroot]
type = bindtoroot
trigger1 = root,animelemtime(3) >= 0
trigger1 = root,animelemtime(4) < 0
time = 1
facing = 1
pos = floor(const(size.xscale)*57),0
ignorehitpause = 1

[state 7400, posset]
type = posset
trigger1 = root,animelemtime(4) >= 0
y = 0

[state 7400, playsnd]
type = playsnd
trigger1 = time = 10
value = 10,110
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7400, destroyself]
type = destroyself
trigger1 = time < 10
trigger1 = root,movetype = h

[state 7400, changestate]
type = changestate
trigger1 = time = 20
value = 7405
;===========================================================================
;■ゆっくりあずにゃん・キティコールハザード
[statedef 7403]
type = a
movetype = i
physics = n
anim = 7400
velset = 0,0
sprpriority = 3

[state 7403, playsnd]
type = playsnd
trigger1 = time = 10
value = 10,110
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7403, changestate]
type = changestate
trigger1 = time = 20
value = 7405
;---------------------------------------------------------------------------
[statedef 7405]
type = a
movetype = a
physics = n
anim = 7405
velset = 0.8,0

[state 7405, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 7405, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 7409
time = -1

[state 7405, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 1
value = 8,8
channel = 2

[state 7405, hitdef]
type = hitdef
trigger1 = time =1
id = 7405
attr = s,sp
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = root,floor(35*fvar(1)),5
getpower = 10,8
givepower = 8,5
ground.hittime  = 12
air.hittime = 12
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*16)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -6
air.velocity = -1.4,-3
fall.recovertime = 30

[state 7405, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7405
ignorehitpause = 1

[state 7405, targetstate]
type = targetstate
trigger1 = numtarget(7405) > 0
trigger1 = target(7405),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7405, changestate]
type = changestate
trigger1 = movecontact
value = 7409

[state 7405, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7409]
type = a
movetype = h
physics = n

[state 7409, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 7409, velset]
type = velset
trigger1 = time = 0
x = -2
y = -1.8

[state 7409, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 1,9

[state 7409, playsnd]
type = playsnd
trigger1 = time = 10
value = 10,110+var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7409, destroyself]
type = destroyself
trigger1 = pos y > 100
;---------------------------------------------------------------------------
;■チーチ
[statedef 7100]
type = a
movetype = i
physics = n
anim = 7110
velset = 1.7,0
sprpriority = 5

[state 7100, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7100, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7100, changestate]
type = changestate
trigger1 = rootdist x <= floor(const(size.xscale)*25)
value = 7105
;---------------------------------------------------------------------------
;■チーチ２
[statedef 7101]
type = a
movetype = i
physics = n
anim = 7110
velset = 1.7+(roundstate=2)*1.2,0
sprpriority = 5

[state 7101, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7101, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7101, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7105]
type = a
movetype = i
physics = n
anim = 7105
velset = 0,0
sprpriority = 4

[state 7105, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7105, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7105, changestate]
type = changestate
trigger1 = random < 500
value = 7110

[state 7105, changestate]
type = changestate
trigger1 = random >= 500
value = 7120
;---------------------------------------------------------------------------
[statedef 7110]
type = a
movetype = i
physics = n
anim = 7100
sprpriority = 4

[state 7110, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7110, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)
;---------------------------------------------------------------------------
[statedef 7120]
type = a
movetype = i
physics = n
anim = 7120
sprpriority = 4

[state 7120, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7120, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)
;===========================================================================
;■シロン
[statedef 7130]
type = a
movetype = i
physics = n
anim = 7140
velset = 2,0
sprpriority = 5

[state 7130, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7130, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7130, changestate]
type = changestate
trigger1 = rootdist x <= floor(const(size.xscale)*50)-matchover*floor(const(size.xscale)*5)
value = 7135
;===========================================================================
;■シロン２
[statedef 7131]
type = a
movetype = i
physics = n
anim = 7140
velset = 2+(roundstate=2)*1.2,0
sprpriority = 5

[state 7131, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7131, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7131, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7135]
type = a
movetype = i
physics = n
anim = 7135
velset = 0,0
sprpriority = 4

[state 7135, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7135, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7135, changestate]
type = changestate
trigger1 = random < 500
value = 7140

[state 7135, changestate]
type = changestate
trigger1 = random >= 500
value = 7150
;---------------------------------------------------------------------------
[statedef 7140]
type = a
movetype = i
physics = n
anim = 7130
sprpriority = 4

[state 7140, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7140, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)
;---------------------------------------------------------------------------
[statedef 7150]
type = a
movetype = i
physics = n
anim = 7150
sprpriority = 4

[state 7150, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7150, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)
;===========================================================================
;■リリ
[statedef 7160]
type = a
movetype = i
physics = n
anim = 7170
velset = 1.3,0
sprpriority = 5

[state 7160, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7160, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7160, changestate]
type = changestate
trigger1 = rootdist x <= floor(const(size.xscale)*70)+matchover*floor(const(size.xscale)*5)
value = 7165
;===========================================================================
;■リリ２
[statedef 7161]
type = a
movetype = i
physics = n
anim = 7170
velset = 1.3+(roundstate=2)*1.2
sprpriority = 5

[state 7161, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7161, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7161, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
ignorehitpause = 1
;---------------------------------------------------------------------------
[statedef 7165]
type = a
movetype = i
physics = n
anim = 7165
velset = 0,0
sprpriority = 4

[state 7165, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7165, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7165, changestate]
type = changestate
trigger1 = random < 500
value = 7170

[state 7165, changestate]
type = changestate
trigger1 = random >= 500
value = 7180
;---------------------------------------------------------------------------
[statedef 7170]
type = a
movetype = i
physics = n
anim = 7160
velset = 0,0
sprpriority = 4

[state 7170, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7170, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)
;---------------------------------------------------------------------------
[statedef 7180]
type = a
movetype = i
physics = n
anim = 7180
velset = 0,0
sprpriority = 4

[state 7180, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7180, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)
;===========================================================================
;■トンちゃん
[statedef 7200]
type = a
movetype = i
physics = n
anim = 7200
velset = 0,0
sprpriority = 0

[state 7200, veladd]
type = veladd
trigger1 = 1
x = 0.02
y = -0.006

[state 7200, playsnd]
type = playsnd
trigger1 = time = 10
value = 8,0

[state 7200, playsnd]
type = playsnd
trigger1 = time =120
value = 8,1

[state 7200, destroyself]
type = destroyself
trigger1 = frontedgedist < -120
ignorehitpause = 1
;---------------------------------------------------------------------------;===========================================================================
;■あずにゃん２号
[statedef 7250]
type = a
movetype = i
physics = n
anim = 7250
velset = 0,0
sprpriority = 5

[state 7250, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7250, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7250, changestate]
type = changestate
trigger1 = time = 20
value = 7255
;---------------------------------------------------------------------------
[statedef 7255]
type = a
movetype = i
physics = n
anim = 7255
velset = 0,0

[state 7255, changestate]
type = changestate
trigger1 = animtime
value = 7270
;---------------------------------------------------------------------------
[statedef 7270]
type = a
movetype = i
physics = n
anim = 7270
velset = 3.8,0

[state 7270, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,22

[state 7270, playsnd]
type = playsnd
trigger1 = time%60 = 0
value = 14,var(1)
freqmul = ifelse((root,var(33)),2-const(size.xscale),1)

[state 7270, destroyself]
type = destroyself
trigger1 = frontedgedist < -60
;===========================================================================
;■エンジェルレイ
[statedef 30000]
type = a
movetype = a
physics = n
anim = 30000
velset = 0,0
sprpriority = 5

[state 30000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 30000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 30000, varset]
type = varset
trigger1 = time < 3
fvar(2) = root,fvar(2)

[state 30000, varrandom];◆
type = varrandom
trigger1 = root,fvar(26) = 1.0
v = 1
range = -100,100

[state 30000, posset]
type = posset
triggerall = roundstate != 2
triggerall = time <= 10
trigger1 = numenemy
x = (enemynear(0),pos x)+var(1)

[state 30000, posset]
type = posset
triggerall = roundstate = 2
triggerall = time <= 10
trigger1 = numenemy = 1
trigger2 = numenemy > 1
trigger2 = enemynear(0),alive = 1
x = (enemynear(0),pos x)+var(1)

[state 30000, posset]
type = posset
triggerall = roundstate = 2
trigger1 = time <= 10
trigger1 = numenemy > 1
trigger1 = enemynear(0),alive = 0
x = (enemynear(1),pos x)+var(1)

[state 30000, posset]
type = posset
triggerall = roundstate = 2
trigger1 = time <= 10
trigger1 = numenemy > 2
trigger1 = enemynear(0),alive = 0
trigger1 = enemynear(1),alive = 0
x = (enemynear(2),pos x)+var(1)

[state 30000, posset]
type = posset
triggerall = roundstate = 2
trigger1 = time <= 10
trigger1 = numenemy > 3
trigger1 = enemynear(0),alive = 0
trigger1 = enemynear(1),alive = 0
trigger1 = enemynear(2),alive = 0
x = (enemynear(3),pos x)+var(1)

[state 30000, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 30000
attr = a,sp
hitflag = mafd
guardflag = m
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = ifelse(!root,var(15),120,floor(120*fvar(2))),10
getpower = 120,60
givepower = 20,5
ground.hittime = 50
guard.hittime = 45
guard.ctrltime = 45
ground.slidetime = 20
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-floor(const(size.yscale)*140)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -2,-24.5
guard.velocity = -4
air.velocity = -2,-15
down.velocity = 0,0
yaccel = 0.47+((fvar(2)<0.6)*0.53)
envshake.time = 16
envshake.freq = 120
envshake.ampl = 7
palfx.time = 160
palfx.add = 250,100,250
fall.recover = 0
fall.recovertime = 900

[state 30000, targetdrop]
type = null;targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 30000
ignorehitpause = 1

[state 30000, targetstate]
type = targetstate
trigger1 = numtarget(30000) > 0
trigger1 = target(30000),statetype != l
trigger1 = movehit = 1
value = 5075				;trip補正無しでtripルートへ
ignorehitpause = 1

[state 30000, varset]
type = varset
trigger1 = numtarget(30000) > 0
var(15) = target(30000),id
ignorehitpause = 1

[state 30000,  parentvarset]
type = parentvarset
trigger1 = movehit
var(15) = var(15)

[state 30000,  parentvarset]
type = parentvarset
trigger1 = (p2statetype = s) || (p2statetype = c)
trigger1 = movehit
var(8) = 1
ignorehitpause = 1

[state 30000,  parentvarset]		;□AI用
type = parentvarset
triggerall = var(50) != 0
trigger1 = p2statetype = l
trigger1 = movehit
trigger2 = moveguarded
var(53) = 0
ignorehitpause = 1

[state 30000,  parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = fvar(2) >= 0.6
fvar(2) = -0.2

[state 30000, envshake]
type = envshake
trigger1 = animelemtime(2) = 0
time = 40
freq = 140
ampl = 10
phase = 70

[state 30000, bgpalfx]
type = bgpalfx
trigger1 = animelemtime(2) = 0
time = 8
add = 256,256,256

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 5,0

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(12) = 0
trigger1 = random = [0,333]
value = 5,10

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(12) = 0
trigger1 = random = [334,666]
value = 5,11

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(12) = 0
trigger1 = random = [667,999]
value = 5,12

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(22) = 0
trigger1 = random = [0,333]
value = 5,20

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(22) = 0
trigger1 = random = [334,666]
value = 5,21

[state 30000, playsnd]
type = playsnd
trigger1 = animelemtime(22) = 0
trigger1 = random = [667,999]
value = 5,22

[state 30000, statetypeset]
type = statetypeset
trigger1 = moveguarded >= 30
trigger2 = time > 180
movetype = i

[state 30000, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■ａｔフィールド・プッシャー
[statedef 30100]
type = a
movetype = i
physics = n
anim = 30100
velset = 0,0
sprpriority = 4

[state 30100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 30100, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 30100, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1
ignorehitpause = 1

[state 30100, playerpush]
type = playerpush
trigger1 = 1
value = 1
ignorehitpause = 1

[state 30100, veladd]
type = veladd
trigger1 = 1
x = 3
ignorehitpause = 1

[state 30100, destroyself]
type = destroyself
trigger1 = time = 100
ignorehitpause = 1
;===========================================================================
;■ａｔフィールド・バリア
[statedef 30110]
type = a
movetype = i
physics = n
anim = 30110
velset = 0,0
sprpriority = 4

[state 30110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 30110, nothitby]
type = nothitby
trigger1 = 1
value = ,aa,at
ignorehitpause = 1

[state 30110, bindtoroot]
type = bindtoroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 30110, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 30111
time = -1
ignorehitpause = 1

[state 30110, destroyself]
type = destroyself
triggerall = fvar(24) != 1	;◆
trigger1 = time = 180
ignorehitpause = 1
;===========================================================================
[statedef 30111]
movetype = i

[state 30111, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 30111, nothitby]
type = nothitby
trigger1 = 1
value = ,aa,at

[state 30111, bindtoroot]
type = bindtoroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 30111, playsnd]
type = playsnd
trigger1 = time = 1
value = 3,0
channel = 1
ignorehitpause = 1

[state 30111, explod]
type = explod
trigger1 = time = 1
trigger1 = numexplod(20000) = 0
anim = 20000
id = 20000
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*57)
postype = p1
facing = 1
bindtime = -1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[state 30111, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 30111
time = -1
ignorehitpause = 1

[state 30111, changestate]
type = changestate
trigger1 = time = 1
value = 30110
ignorehitpause = 1
;===========================================================================
;■炎の剣
[statedef 31000]
type = a
movetype = a
physics = n
anim = 31000+root,var(5)
velset = 0,0
sprpriority = 5

[state 31000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 31000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,4

[state 31000, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 31000
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = back
ground.type = high
priority = 2,hit
sprpriority = 1
damage = root,floor(30*fvar(1)),5
getpower = 0,0
givepower = 20,5
ground.hittime = 30
air.hittime = 30
guard.ctrltime = 10
pausetime = 0,4
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*60)
hitsound = s1,12
guardsound = s2,1
ground.velocity = 2,-5
guard.velocity = -1
air.velocity = 2,-5
down.velocity = 0,0
envshake.time = 60
envshake.freq = 60
envshake.ampl = -4
;palfx.time = 120
;palfx.add = -200,-250,-250
fall = 1
fall.recovertime = 30

[state 31000, targetdrop]
type = null;targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 31000
ignorehitpause = 1

[state 31000, targetstate]
type = targetstate
trigger1 = numtarget(31000) > 0
trigger1 = target(31000),statetype != l
trigger1 = movehit = 1
value = 5697;5025
ignorehitpause = 1

[state 31000, varset]
type = varset
trigger1 = numtarget = 1
var(15) = target,id

[state 31000, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 31000, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 31000, changestate]
type = changestate
trigger1 = movehit
trigger1 = animtime = 0
ignorehitpause = 1
value = 31090

[state 31000, destroyself]
type = destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[statedef 31090]
type = a
movetype = i
physics = n
anim = 1
velset = 0,0
sprpriority = 5

[state 31090, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
;flag2 = invisible
ignorehitpause = 1

[state 31090, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 31090, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 31090, posset]
type = posset
trigger1 = 1
trigger1 = playeridexist(var(15))
x = var(16)
y = var(17)-60

[state 31090, explod]
type = explod
trigger1 = time = 10
trigger2 = time = 30
trigger3 = time = 50
id = 9950
anim = 9950
pos = 0,0
random = 80,80
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[state 31090, explod]
type = explod
trigger1 = time = 20
trigger2 = time = 40
trigger3 = time = 60
id = 9951
anim = 9951
pos = 0,0
id = 9951
random = 80,80
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[state 31090, destroyself]
type = destroyself
trigger1 = time >= 100
;===========================================================================
;■デウス・エクス・マキナ
[statedef 31200]
type = a
movetype = a
physics = n
anim = 31200
velset = 0,0
sprpriority = 4

[state 31200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31200, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 31200, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 31200, varset]
type = varset
trigger1 = numenemy
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 31200, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 31200, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 31200, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 6,20

[state 31200, hitdef]
type = hitdef
trigger1 = animelemtime(6) = 0
id = 31200
attr = a,hp
hitflag = maf
guardflag = m
affectteam = e
animtype = back
ground.type = trip
priority = 5,hit
sprpriority = 3
damage = 160,10
getpower = 0,0
givepower = 40,5
ground.hittime = 200
air.hittime = 200
guard.ctrltime = 16
ground.slidetime = 16
pausetime = 0,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s6,21
guardsound = s2,1
ground.velocity = -2,-2
guard.velocity = -4
air.velocity = -2,-1.6
air.fall = 1
fall.recover = 0

[state 31200, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 31200
ignorehitpause = 1

[state 31200, targetstate]
type = targetstate
trigger1 = numtarget(31200) > 0
trigger1 = movehit = 1
value = 5696;5075
ignorehitpause = 1

[state 31200, playsnd]
type = playsnd
trigger1 = movehit = 1
value = 6,22
persistent = 0

[state 31200, helper]
type = helper
trigger1 = animtime = 0
trigger1 = movehit
helpertype = normal
name = "deus ex machina"
id = 31220
stateno = 31220
pos = 0,0
postype = p1
facing = 1
ownpal = 1
bindtime = -1
supermovetime = 900
pausemovetime = 900
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 31200, changestate]
type = changestate
trigger1 = animtime = 0
trigger1 = movehit
value = 31210

[state 31200, destroyself]
type = destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[statedef 31210]
type = a
movetype = a
physics = n
anim = 31210
sprpriority = 4

[state 31210, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31210, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 31210, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 31210, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 31210, posset]
type = posset
trigger1 = playeridexist(var(15))
x = var(16) 
y = var(17)+(playerid(var(15)),const(size.mid.pos.y))

[state 31210, playsnd]
type = playsnd
trigger1 = time = 140
value = 6,23
channel = 1
loop = 1
ignorehitpause = 1

[state 31210, hitdef]
type = hitdef
trigger1 = time%80 = 0
trigger1 = random <= 333
trigger1 = (root,movetype != h) || (root,stateno = [120,155])
id = 31210
attr = a,hp
hitflag = mafd
guardflag = ma
affectteam = e
animtype = back
ground.type = trip
priority = 5,hit
sprpriority = 3
damage = 30,0
getpower = 0,0
givepower = 10,0
ground.hittime = 6
air.hittime = 6
guard.ctrltime = 4
ground.slidetime = 4
pausetime = 0,2
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s6,40
guardsound = s2,1
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -2,-1
air.fall = 1
fall.recovertime = 20
;palfx.time = 30
;palfx.add = -80,-160,-160

[state 31210, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 31210
ignorehitpause = 1

[state 31210, targetstate]
type = targetstate
trigger1 = numtarget(31210) > 0
trigger1 = movehit = 1
value = 5696;5075
ignorehitpause = 1

[state 31210, envshake]
type = envshake
trigger1 = movehit = 1
time = 6
freq = 100
ampl = -20
phase = 24
ignorehitpause = 1

[state 31210, bgpalfx]
type = bgpalfx
trigger1 = movehit = 1
time = 6
add = 256,-256,-256
ignorehitpause = 1

[state 31210, playsnd]
type = playsnd
trigger1 = time = 950
trigger2 = roundstate = 3
value = 6,24
persistent = 0

[state 31210, stopsnd]
type = stopsnd
trigger1 = time = 960
trigger2 = roundstate = 4
trigger3 = roundstate = 3
trigger3 = root,stateno = [3900,3999]
trigger3 = root,time > 60
channel = 1

[state 31210, destroyself]
type = destroyself
trigger1 = time = 960
trigger2 = roundstate = 4
trigger3 = roundstate = 3
trigger3 = root,stateno = [3900,3999]
trigger3 = root,time > 60
;---------------------------------------------------------------------------
[statedef 31220]
type = a
movetype = i
physics = n
anim = 31220
sprpriority = 5

[state 31220, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31220, posset]
type = posset
trigger1 = numhelper(31200)
x = parent,pos x
y = parent,pos y

[state 31220, destroyself]
type = destroyself
trigger1 = time = 930
trigger2 = roundstate = 3
;===========================================================================
;■ディア・ロガエス
[statedef 31400]
type = a
movetype = a
physics = n
anim = 31400
velset = 0,0
sprpriority = 5

[state 31400, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31400, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 31400, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 31400, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,50

[state 31400, hitdef]
type = hitdef
trigger1 = time = 1
id = 31400
attr = a,hp
hitflag = maf
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 3
damage = 35,5
getpower = 0,0
givepower = -100,5
ground.hittime = 300
air.hittime = 100
guard.ctrltime = 12
ground.slidetime = 120
pausetime = 0,30
guard.pausetime = 0,3
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*60)
hitsound = s6,40
guardsound = s2,0
ground.velocity = 0,0
guard.velocity = -15
air.velocity = 0,-3
yaccel = 0.2
air.fall = 1
fall.recover = 0
kill = 0
guard.kill = 0
fall.kill = 0

[state 31400, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 31400
ignorehitpause = 1

[state 31400, targetstate]
type = targetstate
trigger1 = numtarget(31400) > 0
trigger1 = target(31400),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 31400, explod]
type = explod
trigger1 = movehit = 1
trigger2 = movehit = 4
trigger3 = movehit = 7
trigger4 = movehit = 10
trigger5 = movehit = 13
anim = 32400+var(1)
pos = 0,0
postype = left
sprpriority = 5
ontop = 1
ownpal = 1
id = 32400
bindtime = -1
pausemovetime = 900
supermovetime = 900
scale = 1,1

[state 31400, destroyself]
type = destroyself
trigger1 = time = 300
trigger2 = root,movetype = h
;---------------------------------------------------------------------------
[statedef 31401]
type = a
movetype = a
physics = n
anim = 31400
velset = 0,0
sprpriority = 5

[state 31401, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31401, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 31401, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 31401, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,50

[state 31401, varrandom]
type = varrandom
trigger1 = 1
v = 2
range = 51,55

[state 31401, hitdef]
type = hitdef
trigger1 = time = 1
id = 31401
attr = a,hp
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 5,hit
sprpriority = 3
damage = 50,10
getpower = 0,0
givepower = -200,5
ground.hittime = 300
air.hittime = 100
guard.ctrltime = 14
ground.slidetime = 120
pausetime = 0,10
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*60)
hitsound = s6,40
guardsound = s2,0
ground.velocity = 0,-6
guard.velocity = -15
air.velocity = 0,-3
down.velocity = 0,0
fall = 1
fall.recover = 0

[state 31401, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 31401
ignorehitpause = 1

[state 31401, targetstate]
type = targetstate
trigger1 = numtarget(31401) > 0
trigger1 = target(31401),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 31401, explod]
type = explod
trigger1 = movehit = 1
trigger2 = movehit = 4
trigger3 = movehit = 10
anim = 32400+var(1)
pos = 0,0
postype = left
sprpriority = 5
ontop = 1
ownpal = 1
id = 32400
bindtime = -1
pausemovetime = 900
supermovetime = 900
scale = 1,1

[state 31401, explod]
type = explod
trigger1 = movehit = 7
anim = 32400+var(2)
pos = 0,0
postype = left
sprpriority = 5
ontop = 1
ownpal = 1
id = 32400
bindtime = -1
pausemovetime = 900
supermovetime = 900
scale = 1,1

[state 31401, explod]
type = explod
trigger1 = movehit = 13
anim = 32456
pos = 0,0
postype = left
sprpriority = 5
ontop = 1
ownpal = 1
id = 32400
bindtime = -1
pausemovetime = 900
supermovetime = 900
scale = 1,1

[state 31401, destroyself]
type = destroyself
trigger1 = time = 100
trigger2 = root,movetype = h
;---------------------------------------------------------------------------
[statedef 31450]
anim = 23400
sprpriority = 4

[state 31450, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31450, changeanim]
type = changeanim
triggerall = anim != 23401
trigger1 = time >= 650
value = 23401

[state 31450, destroyself]
type = destroyself
trigger1 = anim = 23401
trigger1 = animtime = 0
trigger2 = root,movetype = h
;---------------------------------------------------------------------------
[statedef 31455]
anim = 23410
sprpriority = 4

[state 31455, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 31455, changeanim]
type = changeanim
trigger1 = anim != 23411
trigger1 = time >= 650
value = 23411

[state 31455, destroyself]
type = destroyself
trigger1 = anim = 23411
trigger1 = animtime = 0
trigger2 = root,movetype = h
;===========================================================================
;■サムライ文字
[statedef 32300]
anim = 32300
movetype = i
sprpriority = 4

[state 32300, posset]
type = posset
trigger1 = 1
y = -root,screenpos y

[state 32300, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 32300, assertspecial]
type = assertspecial
trigger1 = time <= 20
flag = nofg
flag2 = globalnoshadow
ignorehitpause = 1

[state 32300, trans]
type = trans
trigger1 = time > 20
trans = addalpha
alpha = 256-time*2, time

[state 32300, destroyself]
type = destroyself
trigger1 = time = 200
;===========================================================================
;■ニュータイプ交感
[statedef 32310]
anim = 32310
movetype = i
sprpriority = -5

[state 32310, posset]
type = posset
trigger1 = 1
y = -900-root,screenpos y

[state 32310, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 32310, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
flag2 = globalnoshadow
ignorehitpause = 1

[state 32310, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■セフィロトの樹
[statedef 32700]
anim = 1
movetype = i

[state 32700, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 32700, explod]
type = explod
trigger1 = time = 10
anim = 32700
id = 32700
pos = 160,120
postype = left
facing = 1
removetime = -2
bindtime = -1
supermovetime = 900
pausemovetime = 900
scale = 1,1
ontop = 1

[state 32700, modifyexplod]
type = modifyexplod
trigger1 = time > 10
id = 32700
scale = 1-(0.005*time),1-(0.005*time)

[state 32700, destroyself]
type = destroyself
trigger1 = time = 120
;===========================================================================
[statedef 65000]
movetype = i

[state 65000, stopsnd]
type = stopsnd
trigger1 = 1
channel = 1

[state 65000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 65000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 65000, destroyself]
type = destroyself
trigger1 = time = 100