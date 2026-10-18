;---------------------------------------------------------------------------
;Dance, water, Dance!
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
hitcountpersist = 1
poweradd = 45
facep2 = 1
velset = 0,0

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
pos = 39,-63
anim = S860
sound = S1, 42
poweradd = -1000
darken = 0
endcmdbuftime = 10

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super Spark"
ID = 3900
stateno = 3900
pos = 39,-63
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super BG"
ID = 3901
stateno = 3901
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(3910) = 0
helpertype = normal
name = "Super Sliders"
ID = 3910
stateno = 3910
pos = 0,0
postype = p1
ownpal = 1
size.xscale = 0.52
size.yscale = 0.52
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1


[State 3000, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3000, 1]
type = playsnd
trigger1 = time = 0
value = 1, 37
channel = 0

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "can"
pos = 48,-80
stateno = 3001
id = 3001
ownpal = 1
pausemovetime = 34

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "can"
pos = 50,-78
stateno = 3002
id = 3001
ownpal = 1
pausemovetime = 34

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "can"
pos = 52,-80
stateno = 3003
id = 3001
ownpal = 1
pausemovetime = 34

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "molotov"
pos = 50,-80
stateno = 3004
id = 3004
ownpal = 1
pausemovetime = 34

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "molotov"
pos = 50,-80
stateno = 3006
id = 3004
ownpal = 1
pausemovetime = 34

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "brick"
pos = 50,-80
stateno = 3009
id = 3007
ownpal = 1
pausemovetime = 34

[State 3000, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

;-------------------------------------------------------------------------------
;Can
[Statedef 3001]
type = A
movetype = A
physics = N
anim = 1005
sprpriority = 1
id = 1005
;velset = 0.5,-6+random%2
ctrl = 0
hitcountpersist = 1

[State 1005, 2]
type = nothitby
trigger1 = 1
value =  SCA, NA, SA, HA, NT, ST, HT

[State 0, Default VelSet]
type = VelSet
trigger1 = time = 0
x = 0.5
y = -6.5;+random%2
ignorehitpause = 1

[State 0, Default Values]
type = Null
trigger1 = time = [0,1]
trigger1 = prevstateno = 0
trigger1 = (var(10):=25)
trigger1 = (var(11):=25)
trigger1 = (var(12):=0)
trigger1 = (var(30):=1)
trigger1 = (fvar(10):=-1)
trigger1 = (fvar(11):=-4)
ignorehitpause = 1

[State 1005,LOL REDIRECT]
type = Changestate
trigger1 = 1
value = 1001
;-------------------------------------------------------------------------------
;Can
[Statedef 3002]
type = A
movetype = A
physics = N
anim = 1005
sprpriority = 1
id = 1005
;velset = 1.75+random%1,-6+random%2
ctrl = 0
hitcountpersist = 1

[State 1005, 2]
type = nothitby
trigger1 = 1
value =  SCA, NA, SA, HA, NT, ST, HT

[State 0, Default VelSet]
type = VelSet
trigger1 = time = 0
x = 1.75
y = -6.8;+random%2
ignorehitpause = 1

[State 0, Default Values]
type = Null
trigger1 = time = [0,1]
trigger1 = prevstateno = 0
trigger1 = (var(10):=25)
trigger1 = (var(11):=25)
trigger1 = (var(12):=0)
trigger1 = (var(30):=1)
trigger1 = (fvar(10):=-1)
trigger1 = (fvar(11):=-4)
ignorehitpause = 1

[State 1005,LOL REDIRECT]
type = Changestate
trigger1 = 1
value = 1001

;-------------------------------------------------------------------------------
;Can
[Statedef 3003]
type = A
movetype = A
physics = N
anim = 1005
sprpriority = 1
id = 1005
;velset = 3+random%1,-6+random%2
ctrl = 0
hitcountpersist = 1

[State 1005, 2]
type = nothitby
trigger1 = 1
value =  SCA, NA, SA, HA, NT, ST, HT

[State 0, Default VelSet]
type = VelSet
trigger1 = time = 0
x = 3
y = -7.5;+random%2
ignorehitpause = 1

[State 0, Default Values]
type = Null
trigger1 = time = [0,1]
trigger1 = prevstateno = 0
trigger1 = (var(10):=25)
trigger1 = (var(11):=25)
trigger1 = (var(12):=0)
trigger1 = (var(30):=1)
trigger1 = (fvar(10):=-1)
trigger1 = (fvar(11):=-4)
ignorehitpause = 1

[State 1005,LOL REDIRECT]
type = Changestate
trigger1 = 1
value = 1001
;-----------------------------------------------------------------------------
; Molotov
[Statedef 3004]
type = A
movetype = A
physics = N
anim = 1025
sprpriority = 1
id = 1005
velset = 1,-6
ctrl = 0
hitcountpersist = 1

[State 1005, 2]
type = nothitby
trigger1 = 1
value =  SCA, NA, SA, HA, NT, ST, HT

[State 0, Default VelSet]
type = VelSet
trigger1 = time = 0
x = 1
y = -6.6;+random%2
ignorehitpause = 1

;[State 0, Default Values]
;type = Null
;trigger1 = time = [0,1]
;trigger1 = prevstateno = 0
;trigger1 = (var(10):=30)
;trigger1 = (var(11):=20)
;trigger1 = (var(12):=0)
;trigger1 = (fvar(10):=-1)
;trigger1 = (fvar(11):=-4)
;ignorehitpause = 1

[State 1005,LOL REDIRECT]
type = Changestate
trigger1 = 1
value = 1025

;-----------------------------------------------------------------------------
; Molotov
[Statedef 3006]
type = A
movetype = A
physics = N
anim = 1025
sprpriority = 1
id = 1005
;velset = 2.5,-6
ctrl = 0
hitcountpersist = 1

[State 1005, 2]
type = nothitby
trigger1 = 1
value =  SCA, NA, SA, HA, NT, ST, HT

[State 0, Default VelSet]
type = VelSet
trigger1 = time = 0
x = 2.5
y = -6.6;+random%2
ignorehitpause = 1

;[State 0, Default Values]
;type = Null
;trigger1 = time = [0,1]
;trigger1 = prevstateno = 0
;trigger1 = (var(10):=30)
;trigger1 = (var(11):=20)
;trigger1 = (var(12):=0)
;trigger1 = (fvar(10):=-1)
;trigger1 = (fvar(11):=-4)
;ignorehitpause = 1

[State 1005,LOL REDIRECT]
type = Changestate
trigger1 = 1
value = 1025

;-------------------------------------------------------------
; Brick
[Statedef 3009]
type = A
movetype = A
physics = N
anim = 1045
sprpriority = 1
id = 1045
;velset = 1.5+random%1,-6+random%3
ctrl = 0
hitcountpersist = 1

[State 1005, 2]
type = nothitby
trigger1 = 1
value =  SCA, NA, SA, HA, NT, ST, HT

[State 0, Default VelSet]
type = VelSet
trigger1 = time = 0
x = 1.5
y = -6;+random%2
ignorehitpause = 1

;[State 0, Default Values]
;type = Null
;trigger1 = time = [0,1]
;trigger1 = prevstateno = 0
;trigger1 = (var(10):=30)
;trigger1 = (var(11):=20)
;trigger1 = (var(12):=0)
;trigger1 = (fvar(10):=-1)
;trigger1 = (fvar(11):=-4)
;ignorehitpause = 1

[State 1005,LOL REDIRECT]
type = Changestate
trigger1 = 1
value = 1045
;-------------------------------------------------
;Pachiki
[Statedef 3020]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3029
sprpriority = 2
facep2 = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super Spark"
ID = 3900
stateno = 3900
pos = 6, -57
priority = 7, miss
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super BG"
ID = 3901
stateno = 3901
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(3910) = 0
helpertype = normal
name = "Super Sliders"
ID = 3910
stateno = 3910
pos = 0,0
postype = p1
ownpal = 1
size.xscale = 0.52
size.yscale = 0.52
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
pos = 6, -57
anim = S860
sound = S1, 42
poweradd = -1000
darken = 0
endcmdbuftime = 10

[State 800, stuff]
type = nothitby
trigger1 = Animelem = 1 || Animelem = 2 || animelem = 3
value = SCA

[State 0, FUCK]
type = PlaySnd
trigger1 = animelem = 4
value = S1,23
channel = 0

[State 800, 1]
type = HitDef
Trigger1 = animelem = 2
trigger1 = p2stateno != 40
attr = S, HT
hitflag = M-
priority = 2, Miss
sparkno = S801
guard.sparkno = -1
sparkxy = 0,-60
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3021
;p2stateno = 3030
guard.dist = 0
fall = 1
fall.recover = 0
[State 800, 1]
type = HitDef
Trigger1 = animelem = 3
trigger1 = p2stateno != 40
attr = S, HT
hitflag = M
guardflag = L
priority = 2, Miss
sparkno = S801
guard.sparkno = -1
sparkxy = 0,-60
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3021
;p2stateno = 3030
guard.dist = 0
fall = 1
fall.recover = 0
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I
ignorehitpause = 1


[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Ball Throw - Throw Opponent
[Statedef 3021]
type    = S
movetype= A
physics = S
anim = 3020
velset = 0,0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3030

[State 3021]
type = changeanim
trigger1 = !var(55)
trigger1 = command = "z"
trigger1 = Animelemtime(2) >=0 && Animelemtime(7)<-2
value = 3020
elem = 8

[State 3021]
type = palfx
trigger1 = Animelemtime(7) = -2
add = 50,100,150
time = 4

[State 3021]
type = palfx
trigger1 = Animelemtime(7) = 2
add= 255,100,-255
time = 2

[State 3021]
type = changestate
triggerall = Animelemtime(7) >= -2 && Animelemtime(7) < 2
trigger1 = !var(55)
trigger1 = command = "z"
trigger2 = var(55)
trigger2 = random < 90
value = 3022

[State 3021]
type = changestate
triggerall = Animelemtime(7) = [2,4]
trigger1 = !var(55)
trigger1 = command = "z"
trigger2 = var(55)
value = 3023

[State 830]
type = playsnd
trigger1 = Time = 0
value = 1,33

[State 830]
type = playsnd
trigger1 = Time = 3
value = 0,0

[State 830, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = 61, -94

[State 810, Bind 2]
type = TargetBind
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
pos = 59, -95

[State 810, Bind 3]
type = TargetBind
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
pos = 43, -105

[State 810, Bind 4]
type = TargetBind
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(5) < 0
pos = 28, -110

[State 810, Bind 5]
type = TargetBind
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
pos = 19, -106

[State 810, Bind 6]
type = TargetBind
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0
pos = 11, -101

[State 810, Bind 7]
type = TargetBind
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(8) < 0
pos = 11, -99

[State 830, Bind 1]
type = TargetBind
trigger1 = animelem = 8
pos = 78, 0
time = 3

[State 830, Playsnd]
type = Playsnd
trigger1 = AnimElem = 8
value = S1,47

[State 1027, fire]
type = explod
trigger1 = AnimElem = 8
pos = 60,-70
anim = 800
id = 1028
removetime = -2
sprpriority = 2

[State 830, Width 2-11]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(1) < 30
edge = 60,0

[State 830]
type = playerpush
trigger1 = 1
value = 0

[State 830]
type = envshake
trigger1 = AnimElem = 8
time = 8
freq = 200
ampl = -4

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 8
value = 1

[State 830, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 8
;value = floor(-100 * ifelse((target,gethitvar(hitcount) = [1,3]),1,ifelse((target,gethitvar(hitcount) = [4,5]),.7,ifelse((target,gethitvar(hitcount) =[6,7]),.5,ifelse((target,gethitvar(hitcount) >= 8),.3,0)))))
;value = floor(-100 * (1-ifelse(fvar(13)/13>.7,.7,fvar(13)/13)+(.25*numhelper(3045)) ) )
value = floor(-100 * (fvar(13)+(.15*numhelper(3045)) ) )

[State 830, Throw 11]
type = TargetState
trigger1 = AnimElem = 8
value = 3035

[State 830]
type = velset
trigger1 = 1
x = 0

[State 830, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Good But Not Perfect
[Statedef 3022]
type    = S
movetype= A
physics = S
anim = 3021
velset = 0,0

[State 0, Dat Damage]
type = VarSet
trigger1 = time = 0
var(0) = ifelse(var(53)=1,-280,ifelse(var(53)=2,-320,ifelse(var(53)=3,-360,-240)))
;[State 0, Pluss]
;type = VarAdd
;trigger1 = time = 0
;trigger1 = target,gethitvar(hitcount) > 1
;var(0) = 0 - (target,gethitvar(hitcount)) * 5

[State 3022]
type = playsnd
trigger1 = Time = 0
value = 1,43

[State 810, Bind 7]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = 11, -99

[State 830, Playsnd]
type = Playsnd
trigger1 = AnimElem = 1
value = 1,52
channel = 0

;[State 830]
;type = Explod
;trigger1 = Time = 0
;pos = -45,-70
;anim = 867
;ownpal = 1
;removetime = -2
;sprpriority = 2
[State 0, Helper]
type = Helper
trigger1 = time = 0
name = "The Swirl"
ID = 3029
stateno = 3029
pos = -45,-70
postype = p1
ownpal = 1
supermovetime = 65535

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 2
value = 1

[State 830]
type = envshake
trigger1 = AnimElem = 2
time = 15
freq = 50
ampl = -30

[State 830, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 78, 0
time = 3

[State 830, Playsnd]
type = Playsnd
trigger1 = AnimElem = 2
value = S1,5

[State 1027, Whack!]
type = explod
trigger1 = AnimElem = 2
pos = 64,-70
anim = 801
id = 801
removetime = -2
sprpriority = 4
scale = 1,1
supermovetime = 65535
[State 1027, fire]
type = explod
trigger1 = AnimElem = 2
pos = 64,-70
anim = 4000
id = 1028
removetime = -2
sprpriority = 2
scale = 1,1
supermovetime = 65535
[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "YES"
ID = 3025
stateno = 3025
pos = 64,-70
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535


[State 830, Width 2-11]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(1) < 30
edge = 60,0

[State 830]
type = playerpush
trigger1 = 1
value = 0

[State 830, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 2
;value = ifelse(var(34)=1,-300,ifelse(var(34)=2,-350,ifelse(var(34)=3,-400,-275)))
;value = floor(var(0) * ifelse((target,gethitvar(hitcount) = [1,3]),1,ifelse((target,gethitvar(hitcount) = [4,5]),.7,ifelse((target,gethitvar(hitcount) =[6,7]),.5,ifelse((target,gethitvar(hitcount) >= 8),.3,0)))))
;value = floor(var(0) * (1-ifelse(fvar(13)/13>.7,.7,fvar(13)/13)+(.25*numhelper(3045))) )
value = floor(var(0) * (fvar(13)+(.15*numhelper(3045)) ) )

[State 830, Throw 11]
type = TargetState
trigger1 = AnimElem = 2
value = 3031

[State 830]
type = velset
trigger1 = 1
x = 0

[State 830, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;GO TO HELL!!
[Statedef 3023]
type    = S
movetype= A
physics = S
anim = 3023
velset = 0,0

[State 0, PalFXWiz]
type = PalFX
trigger1 = animelemtime(2) < 0
time = 2
add= 255,100,-255

[State 0, Dat Damage]
type = VarSet
trigger1 = time = 0
var(0) = ifelse(var(53)=1,-350,ifelse(var(53)=2,-400,ifelse(var(53)=3,-450,-300)))
;[State 0, Pluss]
;type = VarAdd
;trigger1 = time = 0
;trigger1 = target,gethitvar(hitcount) > 1
;var(0) = 0 - (target,gethitvar(hitcount)) * 8

[State 3022]
type = playsnd
trigger1 = Time = 0
value = 1,43

[State 810, Bind 7]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = 11, -99

[State 830, Playsnd]
type = Playsnd
trigger1 = AnimElem = 1
value = 1,40
channel = 0

;[State 830]
;type = Explod
;trigger1 = Time = 0
;pos = -45,-70
;anim = 867
;ownpal = 1
;removetime = -2
;sprpriority = 2
[State 0, Helper]
type = Helper
trigger1 = time = 0
name = "The Swirl"
ID = 3029
stateno = 3029
pos = -45,-70
postype = p1
ownpal = 1
supermovetime = 65535

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 2
value = 1

[State 830]
type = envshake
trigger1 = AnimElem = 2
time = 15
freq = 60
ampl = -60

[State 830, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 78, 0
time = 3

[State 830, Playsnd]
type = Playsnd
trigger1 = AnimElem = 2
value = S1,47

[State 1027, Whack!]
type = explod
trigger1 = AnimElem = 2
pos = 64,-70
anim = 801
id = 801
removetime = -2
sprpriority = 4
scale = 1,1
supermovetime = 65535
[State 1027, fire]
type = explod
trigger1 = AnimElem = 2
pos = 64,-70
anim = 4000
id = 1028
removetime = -2
sprpriority = 2
scale = 1,1
supermovetime = 65535
[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "YES"
ID = 3025
stateno = 3026
pos = 64,-70
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535

[State 830, Width 2-11]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(1) < 30
edge = 60,0

[State 830]
type = playerpush
trigger1 = 1
value = 0

[State 830, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 2
;value = ifelse(var(34)=1,-300,ifelse(var(34)=2,-350,ifelse(var(34)=3,-400,-275)))
;value = floor(var(0) * ifelse((target,gethitvar(hitcount) = [1,3]),1,ifelse((target,gethitvar(hitcount) = [4,5]),.7,ifelse((target,gethitvar(hitcount) =[6,7]),.5,ifelse((target,gethitvar(hitcount) >= 8),.3,0)))))
;value = floor(var(0) * (1-ifelse(fvar(13)/13>.7,.7,fvar(13)/13)+(.25*numhelper(3045))) )
value = floor(var(0) * (fvar(13)+(.15*numhelper(3045)) ) )
;absolute = 1

[State 830, Throw 11]
type = TargetState
trigger1 = AnimElem = 2
value = 3031

[State 830]
type = velset
trigger1 = 1
x = 0

[State 830, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; YES
[Statedef 3025]
type    = S
movetype= I
physics = N
anim = 9741
velset = 0,0
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(0) = -13
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
fvar(0) = 0.2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 865
ID = 1511
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 6
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 865
ID = 1512
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 5
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(1511)
ID = 1511
scale = .5+(fvar(0)/5),.5+(fvar(0)/5)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(1512)
ID = 1512
scale = 1+(fvar(0)/10),1+(fvar(0)/10)
[State 0, PalFX]
type = PalFX
trigger1 = time != 0
time = 3
add = var(0),var(0),var(0)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) < -250

; YEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHH
[Statedef 3026]
type    = S
movetype= I
physics = N
anim = 9741
velset = 0,0
ctrl = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "SPARKS"
ID = 3027
stateno = 3027
pos = 0,0
postype = p1
facing = ifelse(random<500,1,-1)
ownpal = 1
ignorehitpause = 1
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "SPARKS"
ID = 3027
stateno = 3027
pos = 0,0
postype = p1
facing = ifelse(random<500,1,-1)
ownpal = 1
ignorehitpause = 1
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "SPARKS"
ID = 3027
stateno = 3027
pos = 0,0
postype = p1
facing = ifelse(random<500,1,-1)
ownpal = 1
ignorehitpause = 1
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "SPARKS"
ID = 3027
stateno = 3027
pos = 0,0
postype = p1
facing = ifelse(random<500,1,-1)
ownpal = 1
ignorehitpause = 1
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "SPARKS"
ID = 3027
stateno = 3027
pos = 0,0
postype = p1
facing = ifelse(random<500,1,-1)
ownpal = 1
ignorehitpause = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(0) = -13
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
fvar(0) = 0.2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 865
ID = 1511
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 6
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 865
ID = 1512
bindtime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 5
ontop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 869
ID = 1513
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = .4,.4
sprpriority = 100
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(1511)
ID = 1511
scale = 1+(fvar(0)/0.9),1+(fvar(0)/0.9)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(1512)
ID = 1512
scale = 1+(fvar(0)/3),1+(fvar(0)/3)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(1513)
ID = 1513
scale = 0.4+(fvar(0)/0.3),0.4+(fvar(0)/0.3)
[State 0, PalFX]
type = PalFX
trigger1 = time != 0
time = 3
add = var(0),var(0),var(0)
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(1513)
trigger1 = var(0) < -250
id = 1513

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) < -250

; El Twilighto
[Statedef 3027]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 873
sprpriority = 9

;[State 0, VarSet]
;type = VarSet
;trigger1 = time = 0
;var(0) = ifelse(random<500,1,2)
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 873
;elem = var(0)
elem = 1
[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 1
range = -40,-5
[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 2
range = -30,30
[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 3
range = 1,4
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = var(1)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = var(2)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(3) = var(3)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = (fvar(1)/10)
y = (fvar(2)/10)
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
fvar(10) = 0 - (fvar(3)/100)
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+fvar(10),1+fvar(10)
[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(10) <= -1


;---------------------------------------------------------------------------
;Thrown by Ball Throw
[Statedef 3030]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 831, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3030

[State 810, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
trigger1 = name = "Gill"
trigger1 = facing = -1
value = 13030;+(facing=-1)*100000

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;OUCH!
[Statedef 3031]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = 15

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5101),5101,5100)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 62
pos = 0, 0
under = 0

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 3032

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; MY
[Statedef 3032]
type    = L
movetype= H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5101, 3]
type = VelSet
trigger1 = Time = 0
x = 0
y = -14

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .97

[State 5101, 6] ;Hit ground
trigger1 = vel y >= 0
trigger1 = Vel Y + pos y >= 0
type = SelfState
value = 5110

;---------------------------------------------------------------------------
; ow
[Statedef 3035]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = 15

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5101),5101,5100)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 62
pos = 0, 0
under = 0

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = SelfState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

; Swirly Thing
[Statedef 3029]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 867
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, ]
type = VarSet
trigger1 = 1
fvar(0) = time
ignorehitpause = 1
[State 0, ]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, ]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1
scale = 2-(fvar(0)/50),2-(fvar(0)/50)
[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = 1
time = 1
add = 0-(time*5),0-(time*5),0-(time*5)
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Crack
[Statedef 3040]
type = S
movetype = A
physics = S
anim = 3040
ctrl = 0
hitcountpersist = 1
poweradd = 45
facep2 = 1
velset = 0,0

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
time = 60
movetime = 60
pos = 39,-63
anim = S860
sound = S1, 42
poweradd = -1000
darken = 0
endcmdbuftime = 10

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super Spark"
ID = 3900
stateno = 3900
pos = 39,-63
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super BG"
ID = 3901
stateno = 3901
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(3910) = 0
helpertype = normal
name = "Super Sliders"
ID = 3910
stateno = 3910
pos = 0,0
postype = p1
ownpal = 1
size.xscale = 0.52
size.yscale = 0.52
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 3000, 1]
type = playsnd
trigger1 = animelem = 3
value = 2, 8
channel = 0

[State 3000, 1]
type = playsnd
trigger1 = animelem = 4
value = 1, 59+random%3
channel = 0

[State 3000, 1]
type = Helper
trigger1 = Animelem = 4
name = "Bonus Dunk"
pos = 0,0
stateno = 3045
id = 3045
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 3000, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Drunk on Power
[Statedef 3045]
type = S
movetype = I
physics = N
sprpriority = 30

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(7) = ((parent,movetype=H) && (parent,anim != [5000,5200])  && (parent,anim != [120,169]))
ignorehitpause = 1


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(30) = 1
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(30) = -0.0027
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(31) = (cos(gametime*.08)*0.2)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1
[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifelse(var(7),9741,parent,anim)
elem = ifelse(var(7),1,parent,animelemno(0))
[State 0, Turn]
type = Turn
trigger1 = facing!=parent,facing
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.13+(fvar(31)*fvar(30)),1.13+(fvar(31)*fvar(30))
[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = ceil(50*(fvar(30))),ceil(100*(fvar(30))),ceil(200*(fvar(30)))
mul = 56+ceil(200*(fvar(30))),56+ceil(200*(fvar(30))),56+ceil(200*(fvar(30)))
color = 0
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = parentdist x
y = parentdist y+4+((20*fvar(31))*fvar(30))

[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(30)<=0



;---------------------------------------------------------------------------
;Toss'N'Burn
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
ctrl = 0
hitcountpersist = 1
poweradd = 45
facep2 = 1
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3105
trigger1 = animelemtime(2) < 0
x = 1
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3105
trigger1 = animelemtime(2) = 0
x = 0
[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3105
x = 2
persistent = 0

[State 1100]
type = helper
trigger1 = anim = 3100
trigger1 = Animelemtime(8) = -1
name = "aura"
pos = 6, 0
stateno = 3103
ownpal = 1
size.xscale = 2
size.yscale = 2

[State 195, LOL]
type = HitDef
trigger1 = anim = 3105
trigger1 = AnimElem = 2
attr = S, HA
hitflag = MAFD
guardflag = L
animtype = light
damage = 15
pausetime = 0,0
sparkno = S808
guard.sparkno = S806
sparkxy = -10,-10
hitsound = S1,1
guardsound = S2,4
ground.type = trip
air.type = low
ground.slidetime = 20
ground.hittime = 15
ground.velocity = -2.3,-7.9
air.velocity = -2.7,-7.9
guard.velocity = -8.5
getpower = 0
givepower = 0
fall = 1
fall.recovertime = 40
yaccel = fvar(12) + 0.25

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3100
trigger1 = time = 0
value = S1,19
channel = 0

[State 3000, Super A]
type = SuperPause
trigger1 = time = 0
pos = 39,-63
anim = S860
sound = S1, 57
poweradd = -2000
darken = 0
time = 54
movetime = 54

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super Spark"
ID = 3900
stateno = 3900
pos = 39,-63
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
[State Super Spark]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(3910) = 0
helpertype = normal
name = "Super Sliders"
ID = 3910
stateno = 3910
pos = 0,0
postype = p1
ownpal = 1
size.xscale = 0.52
size.yscale = 0.52
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
;[State BBBreak BG]
;type = Helper
;trigger1 = time = 7
;trigger1 = numhelper(3912) = 0
;helpertype = normal
;name = "BREAK"
;ID = 3912
;stateno = 3912
;pos = 0,0
;postype = p1
;ownpal = 1
;supermovetime = 65535
;pausemovetime = 65535
;ignorehitpause = 1


[State 3000, 1]
type = Helper
triggerall = anim = 3100
trigger1 = Animelem = 2
trigger2 = Animelem = 3
trigger3 = Animelem = 4
name = "molotov"
pos = 50,-80
stateno = 3101
id = 3101
ownpal = 1
supermovetime = 50
pausemovetime = 50

[State 3000, 2]
type = PlaySnd
trigger1 = anim = 3100
trigger1 = AnimElem = 2
value = 1,8

[State 3000, 0]
type = ChangeAnim
trigger1 = anim = 3100
trigger1 = AnimTime = 0
value = 0
[State 3000, 0]
type = ChangeAnim
trigger1 = time >= 142
trigger2 = anim = 0
trigger2 = (enemynear,stateno = [5100,5110]) || ((enemynear, pos y >= -64) && (enemynear, vel y >= 0))
value = 3105
persistent = 0
[State 3000, 0]
type = ChangeState
trigger1 = anim = 3105
trigger1 = AnimTime = 0
trigger2 = anim = 0
trigger2 = p2movetype != H
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
; var(5) - time
; var(4) - angle
; var(30) - from a super?
; fvar(5) - gravy
; BBB Molotov
[Statedef 3101]
type = A
movetype = A
physics = N
anim = 1025
sprpriority = 1
;velset = 1,-6
ctrl = 0
hitcountpersist = 1

[State 1025, afterimages]
type = afterimage
trigger1 = Time = 0
time = -1
length = 4
framegap = 1
trans = add
paladd = 25,5,5
palmul = .75,.45,.45

[State 0, VarAdd]
type = VarAdd
trigger1 = Time >= 0 && Pos Y < 0
var(4) = floor(0 - (vel x * 2) - abs(vel y))

[State 0, LOL ABK]
type = VelMul
trigger1 = 1
x = 0.98
;ignorehitpause =
[State 1001, Damage Dampender]
type = AttackMulSet
trigger1 = EnemyNear, gethitvar(hitcount) > 0
value =  ifelse((enemynear,gethitvar(hitcount) = [1,3]),1,ifelse((enemynear,gethitvar(hitcount) = [4,5]),.7,ifelse((enemynear,gethitvar(hitcount) =[6,7]),.5,ifelse((enemynear,gethitvar(hitcount) >= 8),.3,0))))
ignorehitpause = 1

[State 1025]
type = velset
trigger1 = Time = 0
;x = 1
x = 1.1
y = -4.8 - (parent,Animelemno(0))
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(5) = ifelse((parent,animelemno(0)=3),0.27,ifelse((parent,animelemno(0)=4),0.25,0.29))

[State 1025, 1]
type = Helper
trigger1 = time = 0
name = "wick"
pos = 0,1
stateno = 1026
id = 1026
ownpal = 1
pausemovetime = 55
supermovetime = 100

[State 1025, Grabbity]
type = veladd
trigger1 = 1
y = fvar(5)

[State 1025, AngleDraw]
type = AngleDraw
trigger1 = 1
;scale = 0.75, 0.75
[State 1025, test!]
type = AngleSet
trigger1 = 1
value = var(4)

[State 1025]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 192,64

[State 1025, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1025,0]
type = Posset
trigger1 = pos y >= 0
y = 0

[State 1025, 0]
type = velset
trigger1 = pos y >= 0
y = 0
x = 0

[State 1025, 0]
type = Changestate
trigger1 = time >= 53; + var(5)
value = 3102

; YES
[Statedef 3102]
type    = A
movetype= A
physics = N
anim = 3102
velset = 0,0
ctrl = 0
sprpriority = 10

[State 1025, 0]
type = Helper
trigger1 = time=0 && NumHelper(1029) <= 10
name = "glass"
ID = 1029
pos = 0+random%6, -1
stateno = 1029
ownpal = 1

[State 1025, 0]
type = Helper
trigger1 = time=0 && NumHelper(1029) <= 10
name = "glass"
ID = 1029
pos = 0+random%6, -1
stateno = 1029
ownpal = 1

[State 1025, 0]
type = Helper
trigger1 = time=0 && NumHelper(1029) <= 10
name = "glass"
ID = 1029
pos = 0+random%6, -1
stateno = 1029
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 220
ampl = -3

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 42
length = 8
palcolor = 200
paladd = 5,2,0
palmul = .84,.80,.60
timegap = 1
framegap = 1
trans = add

[State 1001, Damage Dampender]
type = AttackMulSet
trigger1 = numenemy
;value =  ifelse((enemynear,gethitvar(hitcount) = [1,3]),1,ifelse((enemynear,gethitvar(hitcount) = [4,5]),.7,ifelse((enemynear,gethitvar(hitcount) =[6,7]),.5,ifelse((enemynear,gethitvar(hitcount) >= 8),.3,0))))
;value = ifelse(p2movetype!=H||(p2stateno=[120,169]),1,1-ifelse((parent,fvar(13)/13>.7),.7,(parent,fvar(13)/13)) ) +(.2*numhelper(3045))
value = (parent,fvar(13))+(.2*numhelper(3045))
ignorehitpause = 1
[State ProRation]
type = ParentVarSet
trigger1 = movehit = 1
fvar(13) = (parent,fvar(13)) * 0.85
ignorehitpause = 1
persistent = 0

[State 1027, EH I'm hit]
type = HitDef
trigger1 = Time = 0
attr = S,HP
hitflag = MAFD
guardflag = M
animtype = up
priority = 4,hit
damage = 95
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = -0,-6.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -0,-6.5
getpower = 0
yaccel = 0.4
givepower = 40
fall = 1
fall.recover = 0
air.fall = 1
down.velocity = 0,-12
down.hittime = 16
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,55

[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
var(0) = -12
[State 0, VarAdd]
type = VarAdd
trigger1 = time != 0
fvar(0) = 0.05

[State 0, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0
ignorehitpause = 1
[State 0, AngleAdd]
type = AngleAdd
trigger1 = time
value = 8
ignorehitpause = 1
[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .5+fvar(0),.5+fvar(0)
[State 0, PalFX]
type = PalFX
trigger1 = time != 0
time = 3
add = var(0),var(0),var(0)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) < -250

;-------------------------------------------------------------------
;TOBE ORA afterimage
[Statedef 3103]
type = A
movetype = I
physics = N
anim = 3103
sprpriority = 1
velset = 2.5,0
ctrl = 0
hitcountpersist = 1

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0-(time*8),0-(time*8),0-(time*8)
color = 256-(time*8)
ignorehitpause = 1

[State 1245]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1245, trans]
type = trans
trigger1 = 1
trans = add

[State 0, VelMul]
type = VelMul
trigger1 = !(parent,HitPauseTime)
x = 0.9
ignorehitpause = 1

[State 1025, 0]
type = Destroyself
trigger1 = animtime = 0
trigger2 = parent,movetype = H

;---------------------------------------------------------------------------
; Who are you?
[Statedef 3300]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
hitcountpersist = 1
poweradd = 45
facep2 = 1
velset = 0,0

[State DUN DUN DUNNNNNNNNNNN]
type = PlaySnd
trigger1 = time = 0
value = S1,54

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 1
pos = 39,-63
anim = S860
sound = S1, 42
poweradd = -3000
darken = 0
movetime = 10

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super Spark"
ID = 3900
stateno = 3900
pos = 39,-63
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super BG"
ID = 3901
stateno = 3901
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Super Spark]
type = Helper
trigger1 = time = 0
trigger1 = numhelper(3910) = 0
helpertype = normal
name = "Super Sliders"
ID = 3910
stateno = 3910
pos = 0,0
postype = p1
ownpal = 1
size.xscale = 0.52
size.yscale = 0.52
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 3000, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3000, 1]
type = playsnd
trigger1 = time = 0
value = 1, 37
channel = 0

[State 3000, 1]
type = Helper
trigger1 = Animelem = 2
name = "Gabriella Newell"
pos = 50,-80
stateno = 3305
id = 3305
ownpal = 1
pausemovetime = 34

[State 3000, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

;-------------------------------------------------------------
; I'M GABE NEWELL
[Statedef 3305]
type = A
movetype = A
physics = N
anim = ifelse(random<=650,3305,3301+random%2)
sprpriority = 1
;velset = 1.5,-6
ctrl = 0
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3305
trigger1 = time = 0
value = S666,ifelse((parent,command="holdstart"),666,665)
channel = 0
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3302
trigger1 = time = 0
value = S666,666
channel = 0
ignorehitpause = 1

[State 1025]
type = velset
trigger1 = Time = 0
;x = 1
x = 2.2
y = -7.4

[State 400, Heavy Weapons Lady]
type = HitDef
trigger1 = !movecontact
animtype = hard
attr = A, HA
damage = 125
hitflag = A
guardflag = H
priority = 7
pausetime = 12,12
sparkno = S809
guard.sparkno = S806
sparkxy = -5,0
hitsound   = S1,5
guardsound = S2,4
ground.type = High
ground.slidetime = 50
ground.hittime  = 20
ground.velocity = -2,8
guard.velocity = -5
air.velocity = -2,8
fall = 1
fall.recover = 0
air.hittime = 20
getpower = 0
kill = 0
yaccel = fvar(12)

[State 1005, Wallbounce BONK]
type = playsnd
trigger1 = frontedgedist <= -12
trigger1 = vel x > 0
trigger2 = backedgedist <= -12
trigger2 = vel x < 0
value = 1,48
;persistent = 0
[State 1005, Wallbounce Hitspark]
type = explod
trigger1 = frontedgedist <= -12
trigger1 = vel x > 0
trigger2 = backedgedist <= -12
trigger2 = vel x < 0
anim = 800
;persistent = 0
ontop = 1
[State 1005, Wallbounce Split/Second Velocity]
type = Velmul
trigger1 = frontedgedist <= -12
trigger1 = vel x > 0
trigger2 = backedgedist <= -12
trigger2 = vel x < 0
x = -0.5
;y = ifelse(vel y>=0,-1.1,1.0)
;persistent = 0

[State 1025]
type = playerpush
trigger1 = 1
value = 0

[State 1025, Grabbity]
type = veladd
trigger1 = 1
y = 0.5

[State 1025, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = ifelse(anim=3305,1,0.5),ifelse(anim=3305,1,0.5)
[State 1025, AngleDraw]
type = AngleSet
trigger1 = time = 0
value = 15
[State 1025, test!]
type = AngleAdd
trigger1 = 1
value = ifelse(anim=3305,-1,-3)

[State 1025, afterimages]
type = afterimage
trigger1 = Time = 0
time = -1
length = 4
framegap = 1
trans = add

[State 1025, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1025,0]
type = Posset
trigger1 = pos y >= 0
y = 0

[State 1025, 0]
type = velset
trigger1 = pos y >= 0
y = 0
x = 0

[State 1025, 0]
type = ChangeState
;trigger1 = time = 34
trigger1 = vel y > 0
trigger1 = pos y >= -24
value = 3306

;-------------------------------------------------------------
; Do you pretend to be Ringo?
; 52-48
; var(20) - you?
; var(21) - me?
; fvar(20) - enemy's width
; fvar(21) - wut
[Statedef 3306]
type = A
movetype = A
physics = N
anim = 3306
sprpriority = -150
;id = 1046
velset = 0,0
ctrl = 0
juggle = 0

[State ASTRAL FINISH]
type = Helper
triggerall = !numhelper(3330)
trigger1 = movehit
trigger1 = winko
trigger1 = enemynear,pos y >= 1234
helpertype = normal
name = "ASTRAL FINISH"
ID = 3330
stateno = 3330
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
triggerall = roundstate = [2,3]
trigger1 = numenemy
fvar(20) = ((enemynear, const(size.ground.front))+(enemynear, const(size.ground.back)))/4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 255
ampl = -12

[State 1025, playsnd]
type = Playsnd
trigger1 = time = 0
value = 1,3
channel = 0
[State 1025, playsnd]
type = Playsnd
trigger1 = time = 0
value = 1,47
[State 1025, playsnd]
type = Playsnd
trigger1 = time = 0
value = 1,5
freqmul = 0.5

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time = 0
time = 0
ignorehitpause = 1

[State 1120]
type = explod
trigger1 = Time = 0
id = 803
anim = 803
pos = 0,0-floor(pos y / 2)
scale = 2, 2
sprpriority = 2
ignorehitpause = 1
persistent = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 1027, EH I'm hit]
type = HitDef
trigger1 = roundstate = [2,3]
trigger1 = movetype = A
trigger1 = var(20) && !var(21)
attr = A,HT
hitflag = MAFD
guardflag =
hitonce = 0
guard.dist = 0
animtype = up
priority = 1,miss
damage = 0,0
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = 0,-3
ground.cornerpush.veloff = 0
air.velocity = 0,-3
getpower = 0
givepower = 0
yaccel = parent,fvar(12) + 0.09
fall = 1
fall.recover = 0
down.velocity = -3,-7.8
down.hittime = 16
p2stateno = 3310
id = 3300
nochainid = 3300
sprpriority = -150
affectteam = E
;mindist = -60,-32
;maxdist = 60,666
[State 1027, EH I'm hit]
type = HitDef
trigger1 = roundstate = [2,3]
trigger1 = movetype = A
trigger1 = !var(20) && var(21)
attr = A,HT
hitflag = MAFD
guardflag =
hitonce = 0
guard.dist = 0
animtype = up
priority = 1,miss
damage = 0,0
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = 0,-3
ground.cornerpush.veloff = 0
air.velocity = 0,-3
getpower = 0
givepower = 0
yaccel = parent,fvar(12) + 0.09
fall = 1
fall.recover = 0
down.velocity = -3,-7.8
down.hittime = 16
p2stateno = 3310
id = 3300
nochainid = 3300
sprpriority = -150
affectteam = F
mindist = -60,-32
maxdist = 60,666
[State 1027, EH I'm hit]
type = HitDef
trigger1 = roundstate = [2,3]
trigger1 = movetype = A
trigger1 = var(20) && var(21)
attr = A,HT
hitflag = MAFD
guardflag =
hitonce = 0
guard.dist = 0
animtype = up
priority = 1,miss
damage = 0,0
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = low
ground.slidetime = 8
ground.hittime = 20
ground.velocity = 0,-3
ground.cornerpush.veloff = 0
air.velocity = 0,-3
getpower = 0
givepower = 0
yaccel = parent,fvar(12) + 0.09
fall = 1
fall.recover = 0
down.velocity = -3,-7.8
down.hittime = 16
p2stateno = 3310
id = 3300
nochainid = 3300
sprpriority = -150
affectteam = B
mindist = -60,-32
maxdist = 60,666
[State 0, VarSet]
type = VarSet
trigger1 = roundstate = [2,3]
var(20) = (p2dist x = [-52+fvar(20),52-fvar(20)])
[State 0, VarSet]
type = VarSet
trigger1 = roundstate = [2,3]
var(21) = parentdist x = [-40,40]
[State 0, TargetState]
type = TargetState
;triggerall =
trigger1 = numtarget(3300)
trigger1 = target(3300),pos x != [pos x-52,pos x+52]
trigger1 = target(3300),pos y = [2,32]
trigger1 = target(3300),stateno=3310
value = 3312
ID = 3300
ignorehitpause = 1
[State 0, StateTypeSet]
type = StateTypeSet
triggerall = movetype = I
triggerall = roundstate = [2,3]
trigger1 = var(20) || var(21)
movetype = A
ignorehitpause = 1
[State 0, StateTypeSet]
type = StateTypeSet
triggerall = movetype = A
trigger1 = !var(20) && !var(21)
trigger2 = roundstate != [2,3]
movetype = I
ignorehitpause = 1


[State 1025, 0]
type = Helper
triggerall = NumHelper(1047) <= 7
trigger1 = time = 0
name = "cement"
ID = 1047
pos = 0+random%6, -1
stateno = 3307
ownpal = 1
persistent = 0

[State 1025, 0]
type = Helper
triggerall = NumHelper(1047) <= 7
trigger1 = time = 0
name = "cement"
ID = 1047
pos = 0+random%6, 1
stateno = 3307
ownpal = 1
persistent = 0

[State 1025, 0]
type = Helper
triggerall = NumHelper(1047) <= 7
trigger1 = time = 0
name = "cement"
ID = 1047
pos = 0+random%6, 2
stateno = 3307
ownpal = 1
persistent = 0

[State 1025, 0]
type = Helper
triggerall = NumHelper(1047) <= 7
trigger1 = time = 0
name = "cement"
ID = 1047
pos = 0+random%6, -2
stateno = 3307
ownpal = 1
persistent = 0

[State 1025, 0]
type = Helper
triggerall = NumHelper(1047) <= 7
trigger1 = time = 0
name = "cement"
ID = 1047
pos = 0+random%6, 3
stateno = 3307
ownpal = 1
persistent = 0

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = numtarget(3300)
text = "%f vs %f"
params = pos x,(target(3300),pos x)
ignorehitpause = 1



;----------------------------------------------------------------------------
; YES I DO
[Statedef 3307]
type = A
movetype = A
physics = N
anim = 1046+random%4
sprpriority = 1
id = 1047
velset = 0,-8
ctrl = 0
hitcountpersist = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = pos y >= 0
flag = noshadow

[State 0, Better]
type = VarRandom
trigger1 = time = 0
v = 0
range = -50,50
ignorehitpause = 1
[State 0, Randomization]
type = VarSet
trigger1 = time = 0
fvar(0) = var(0)
[State 0, Better]
type = VarRandom
trigger1 = time = 0
v = 1
range = -100,-50
ignorehitpause = 1
[State 0, Randomization]
type = VarSet
trigger1 = time = 0
fvar(1) = var(1)
[State 0, People]
type = VelSet
trigger1 = time = 0
x = fvar(0)/10
y = fvar(1)/10

[State 0, VelMul]
type = VelMul
trigger1 = vel y + pos y >= 0
x = 0.8

[State 1025]
type = playerpush
trigger1 = 1
value = 0

[State 1025, Grabbity]
type = veladd
trigger1 = 1
y = 0.4

[State 0, AngleSet]
type = AngleSet
trigger1 = time = 0
value = random%350
[State 1025, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 3,3
[State 1025, test!]
type = AngleAdd
trigger1 = 1
value = 0-(vel x * 2)

[State 1025, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Crusty]
type = Explod
trigger1 = pos y + vel y = [2,20]
trigger1 = parentdist x != [-54,54]
anim = F120
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 65
pausemovetime = 65
scale = 3,3
sprpriority = 4
;ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I

[State 1026]
type = Destroyself
trigger1 = pos y + vel y = [2,32]
trigger1 = parentdist x != [-46,46]
trigger2 = screenpos y >= 320


;----------------------------------------------------------------------------
; HOPY SHIT
[Statedef 3310]
type = A
movetype = H
physics = N
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = screenpos y >= 350
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = alive
value = S11,0
channel = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = anim != [41,46]
trigger1 = (anim != [5030,5210]) || (anim = 5080) || (anim = 5100) || (anim = 5170)
value = 5070
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = animelemno(0) = 1
trigger1 = time < 10
value = 5070
ignorehitpause = 1
[State 0, PosFreeze]
type = PosFreeze
trigger1 = anim = 5070
trigger1 = animelemno(0) = 1
trigger1 = time < 10
value = 1

[State 0, VelAdd]
type = VelMul
trigger1 = anim != 5070
trigger2 = animelemno(0) != 1
trigger3 = time >= 10
x = 0.9

[State 0, VelAdd]
type = VelAdd
trigger1 = anim != 5070
trigger2 = animelemno(0) != 1
trigger3 = time >= 10
y = 0.48

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = vel y + pos y >= 0
flag = noshadow
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 666
value = 3311
ctrl = 0

;----------------------------------------------------------------------------
; DEATH
[Statedef 3311]
type = A
movetype = H
physics = N
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 255
ampl = -2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F5,4
volume = -64
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F7,2
volume = -64
freqmul = 1.0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = F7,2
volume = -96
freqmul = 0.75

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokosnd
flag2 = nokoslow
ignorehitpause = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -65535
kill = 1
absolute = 1
ignorehitpause = 1
[State 0, LifeSet]
type = LifeSet
trigger1 = time = 0
value = 0
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 0
y = 99999
ignorehitpause = 1
[State 0, SelfState]
type = SelfState
trigger1 = time
value = 5150

;----------------------------------------------------------------------------
; NOPE
[Statedef 3312]
type = L
movetype = H
physics = N
ctrl = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
[State 0, SelfState]
type = SelfState
trigger1 = time = 0
value = 5100

;----------------------------------------------------------------------------
; CONGRATULATIONS!
[Statedef 3330]
type = S
movetype = I
physics = N
ctrl = 0
anim = 9741

[State 0, Helper]
type = Helper
trigger1 = time = 4
helpertype = normal
name = "FLASH"
ID = 3333
stateno = 3333
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State voice]
type = PlaySnd
trigger1 = time = 1
value = S1,56
abspan = 0
volume = 255

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1.7
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 0
trigger1 = time
fvar(0) = -0.1
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 1
trigger1 = time
fvar(0) = 0.0001
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 0
trigger1 = fvar(0) <= 0.3
var(0) = 1

;[State 0, VarSet]
;type = VarSet
;trigger1 = time = 0
;var(10) = 325
[State 0, VarSet]
type = VarAdd
triggerall = var(11) = 0
trigger1 = time
var(10) = 15
[State 0, VarSet]
type = VarSet
trigger1 = var(11) = 0
trigger1 = var(10) >= 325
var(11) = 1
[State 0, VarSet]
type = VarAdd
triggerall = var(11) = 1
trigger1 = time
trigger1 = var(10) > 255
trigger2 = time >= 160
var(10) = -5
[State 0, VarAdd]
type = VarAdd
trigger1 = time >= 160
fvar(5) = 0.5

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3331
ID = 3331
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0),fvar(0)
sprpriority = 855
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3330
ID = 3330
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0),fvar(0)
sprpriority = 858
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 160
anim = 3330
ID = 3332
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0),fvar(0)
sprpriority = 858
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3330)
ID = 3330
pos = 160-ceil(fvar(5)),120
postype = left
bindtime = -1
removetime = -1
scale = fvar(0),fvar(0)
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3332)
ID = 3332
pos = 160+ceil(fvar(5)),120
postype = left
bindtime = -1
removetime = -1
scale = fvar(0),fvar(0)
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3331)
ID = 3331
pos = 160,120
postype = left
bindtime = -1
removetime = -1
scale = fvar(0)+(fvar(5)/400),fvar(0)
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = var(10),var(10),var(10)
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3330)
trigger1 = time >= 160
trigger1 = var(10) <= 0
id = 3330
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3331)
trigger1 = time >= 160
trigger1 = var(10) <= 0
id = 3331
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3332)
trigger1 = time >= 160
trigger1 = var(10) <= 0
id = 3332

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 160
trigger1 = var(10) <= 0


;----------------------------------------------------------------------------
; FLASH!
[Statedef 3333]
type = S
movetype = I
physics = N
ctrl = 0
anim = 9741

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1.7
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 0
trigger1 = time
fvar(0) = -0.1
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 1
trigger1 = time
fvar(0) = 0.0001
[State 0, VarSet]
type = VarAdd
triggerall = var(0) = 0
trigger1 = time
var(10) = 9
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 1
var(10) = 300
persistent = 0
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 1
var(10) = -5
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 0
trigger1 = fvar(0) <= 0.3
var(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 1
fvar(0) = 0.577
persistent = 0


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3330
ID = 3333
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0),fvar(0)
sprpriority = 860
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(0) = 1
trigger1 = numexplod(3333)
id = 3333
ignorehitpause = 1
persistent = 0
[State 0, Explod]
type = Explod
trigger1 = var(0) = 1
trigger1 = !numexplod(3333)
anim = 3333
ID = 3333
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0),fvar(0)
sprpriority = 860
ontop = 1
ownpal = 0
ignorehitpause = 1
persistent = 0
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3333)
ID = 3333
pos = 160,120
postype = left
bindtime = -1
removetime = -1
scale = fvar(0),fvar(0)
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = var(10),var(10),var(10)
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3333)
trigger1 = var(0) = 1
trigger1 = var(10) <= 0
id = 3333

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) = 1
trigger1 = var(10) <= 0




