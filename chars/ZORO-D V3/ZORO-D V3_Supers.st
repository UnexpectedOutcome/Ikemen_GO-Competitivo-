;====================================================
;================SUPERS==============================
;====================================================

;===============================================================================
[StateDef 3000, DAISEN SEKAI - Busoshoku]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3000
sprpriority = 2
poweradd=-4000

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 0
time =106
movetime=106
anim = -1
sound = -1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 0
trigger1 = time%5=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 100, Explod haki]
type = Explod
trigger1 = animelem=11
anim = 6331
ID = 6331
pos = 0,-35
postype = p1
bindtime = 1
removetime = -2
scale = 0.8,0.8
sprpriority = 4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "Ring 1"
ID = 6220
stateno =  6220
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "Ring 2"
ID =  6230
stateno = 6230
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "Ring 3"
ID =  6240
stateno = 6240
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = animelem=11
anim = 6050
ID = 6050
pos = 20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing=-1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = animelem=11
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time>60 && time <73
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State -3, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "floor I"
ID = 5633
stateno = 5633
pos = 0,-3
postype = p1
facing = 1
ownpal = 1
supermovetime =9999
pausemovetime =9999
ignorehitpause =1
persistent=0

[State 3000,EnvShake]
type = EnvShake
trigger1 =  animelem=11
time = 20
freq = 120
ampl = 5
phase = 120

[State 1000, EnvColor]
type = EnvColor
triggerall =  animelem=11
trigger1 = 1
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem=14
helpertype = normal
name = "haki"
ID = 3014
stateno =3014
pos =-31,-42
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, Helper]
type = Helper
trigger1 = animelem=14
helpertype = normal
name = "haki"
ID = 3014
stateno =3014
pos =27,-42
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, Helper]
type = Helper
trigger1 = animelem=14
helpertype = normal
name = "haki"
ID = 3014
stateno = 3014
pos =34,-37
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=8
value = S4,114

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=11
value = S8,16
volumescale=270

[State 699, end]
type = ChangeState
trigger1 = AnimTime = 0
value =3001
ctrl = 0

;-------------------------------------------------------------------------------
;--------------------------------------------------------------------------------
[Statedef 3001,--- start/attack 1]
type = S
movetype=A
physics = S
velset = 0,0
ctrl = 0
anim = 3001

[State 3000, SuperPause]
type = SuperPause
trigger1 = time=0
time = 90
movetime = 90
anim = -1
sound = -1
pos = 0,0
darken =0
unhittable = 1
p2defmul = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000,EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -2
phase = 50

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 34
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 34
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal
name = "haki"
ID = 3010
stateno =3010
pos =-31,-42
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal
name = "haki"
ID = 3010
stateno =3010
pos =27,-42
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal
name = "haki"
ID = 3010
stateno =3010
pos =34,-37
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3250, Atracción]
type = Helper
triggerall = time > 80
trigger1 = time %10 = 0 
helpertype = Normal
name=  "Atracción"
id = 3006
stateno = 3006
pos = 200,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1
;
[State 60, ring]
type = Explod
triggerall = time >=75
trigger1 = time%30 = 0
anim = 7137
ID =  7137
pos = 25,-35
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 0.28, 0.36
sprpriority = ifelse(random%2,3,ifelse(random%2,5,ifelse(random%2,4,ifelse(random%2,1,-1))))
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
;
[State 60, Explod atras]
type = Explod
triggerall = time > 85
trigger1 = time%20 = 0
anim = 7136
ID =  7136
pos = 9,2
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 0.3, 0.3
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time>85
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1
;
[State 3100, 1]
type = HitDef
triggerall = hitcount < 3
trigger1 = movehit=0
trigger2 = movehit>1
attr = S, HA
animtype  = medium
damage    = 10,8
guardflag = MA
priority = 7,hit
pausetime = ifelse((hitcount > 0 && hitcount < 2),13,11),ifelse((hitcount > 0 && hitcount < 2),13,11)
guard.pausetime=8,20
sparkno = -1;s6000
guard.sparkno = -1;s7000
sparkxy = -25,-25
hitsound   = S3,21
guardsound = S3,25
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,0
air.velocity = -6,-5.5
fall = 0
kill=0
envshake.freq = ifelse((hitcount > 0 && hitcount < 2),20,40)
envshake.time = 15
p2stateno=5862
getpower = 0,0

[State 0, TargetBind]
type = TargetBind
trigger1 = movecontact=1
time = 1
pos = 5,0
persistent=0

[State 200, Spark guard]
type = Explod
triggerall = Numexplod(4080) = 0
trigger1 = !Movehit && movecontact
anim = 4080
ID = 4080
pos = -5, 0-45+random%20
postype = p2
facing = -1
sprpriority = 20
removetime = -2
bindtime = -1
ownpal = 1
scale = 0.7,0.7
removeongethit = 1
ontop = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 1

[State 0, Helper]
type = Helper
triggerall = Numexplod(8200) = 0
trigger1 = moveguarded=1 && numenemy
helpertype =normal
name = "sparkGuard"
ID = 8200
stateno = ifelse(random>500,8200,8201)
pos = 20,-35
postype = p2
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1
persistent =0

[State 0, Helper spark]
type = Helper
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8001 
stateno =IfElse(Random <= 499,8001,8101)
pos = 5-10+random%20, -30-10+random%20
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale =  IfElse(Random <= 499,.5,.9)
size.yscale =  IfElse(Random <= 499,.5,.9)

[State 200, Spark blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random%2,7160,ifelse(random%2,7161,7162))
ID = 7160
pos = 5-10+random%20, -40-10+random%20
postype = p2
facing = IfElse(Random <= 499,1,-1);-1
sprpriority = IfElse(Random <= 499,3,5)
removetime = -2
bindtime = -1
ownpal = 1
scale = IfElse(Random <= 499,.5,.6),IfElse(Random <= 499,.5,.6)
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

[State 200, floor blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = 7165
ID = 7165
pos = 0,floor(pos y=0)
postype = p2
facing = 1
sprpriority = 2
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.3
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S4,77
channel=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 87
value = S4,105
channel=0

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 85
trigger1 = time%6 = 0
value = S1,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 85
trigger1 = time%6 = 0
value = S3,0

[State 700,Rush attack 2]
type = ChangeState
triggerall = !AIlevel || AIlevel
trigger1 = time >=76 && movecontact
trigger2 = time >=150 && !movecontact
value = 3002

;-------------------------------------------------------------------------------
[Statedef 3002,--- attack 2]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3002

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 7137

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, VelSet]
type = VelSet
trigger1 = time= 4 ||time=8 ||time=12 ||time=16 || time=20
x = 20

[State 0, VelAdd]
type = VelAdd
trigger1 =  1
x = 5

[State 0, VelAdd]
type = Veladd
trigger1 = movehit = 1
x = -1

[State 3002, ring black]
type = Explod
trigger1 = time%45 =0 
anim = 7137
ID =  71137
pos = 42,-28
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 0.28, 0.36
sprpriority = ifelse(random%2,3,ifelse(random%2,5,ifelse(random%2,4,ifelse(random%2,1,-1))))
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 0;9999
pausemovetime =0;9999

[State 60, Explod atras]
type = Explod
;triggerall = time > 85
trigger1 = time%10 = 0
anim = 7136
ID =  7136
pos = 35,2
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime =9999
pausemovetime = 9999
scale = 0.3, 0.3
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3100, 1]
type = HitDef
trigger1 = movehit=0
trigger2 = movehit>1
attr = S, HA
animtype  = medium
damage    = 8,6
guardflag = ;MA
pausetime = ifelse((hitcount > 0 && hitcount < 6),10,ifelse((hitcount > 6 && hitcount < 12),7,ifelse((hitcount > 12 && hitcount < 18),4,ifelse((hitcount > 18 && hitcount < 24),1,1))))   ,  ifelse((hitcount > 0 && hitcount < 6),10,ifelse((hitcount > 6 && hitcount < 12),7,ifelse((hitcount > 12 && hitcount < 18),4,ifelse((hitcount > 18 && hitcount < 24),1,1)))) 
priority = 7,hit
sparkno = -1;s6000
guard.sparkno = -1;s7000
sparkxy = -25,-25
hitsound   = S3,21
guardsound = S3,25
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,0
air.velocity = -6,-5.5
fall = 0
kill=0
envshake.freq = ifelse((hitcount > 0 && hitcount < 6),20,ifelse((hitcount > 6 && hitcount < 12),90,ifelse((hitcount > 12 && hitcount < 18),140,ifelse((hitcount > 18 && hitcount < 24),200,200)))) 
envshake.time = 15
envshake.phase = ifelse((hitcount > 0 && hitcount < 6),20,ifelse((hitcount > 6 && hitcount < 12),90,ifelse((hitcount > 12 && hitcount < 18),140,ifelse((hitcount > 18 && hitcount < 24),200,200)))) 

p2stateno=5862
getpower = 0,0

[State 0, TargetBind]
type = TargetBind
trigger1 = movecontact=1
time = 1
pos = 5,0
persistent=0

[State 0, Helper spark]
type = Helper
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8001
stateno =IfElse(Random <= 499,8001,8101)
pos = 5-10+random%20, -30-10+random%20
postype = p2
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1
size.xscale = IfElse(Random <= 499,.5,.9)
size.yscale = IfElse(Random <= 499,.5,.9)

[State 200, Spark blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random%2,7160,ifelse(random%2,7161,7162))
ID = 7160
pos = 5-10+random%20, -40-10+random%20
postype = p2
facing = IfElse(Random <= 499,1,-1);-1
sprpriority = IfElse(Random <= 499,3,5)
removetime = -2
bindtime = -1
ownpal = 1
scale = IfElse(Random <= 499,.5,.6),IfElse(Random <= 499,.5,.6)
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

[State 200, floor blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = 7165
ID = 7165
pos = 0,floor(pos y=0)
postype = p2
facing = 1
sprpriority = 2
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.3
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

;-------rush-FX-------------
[State 0, Explod smallRocks] 
type = Explod
trigger1 = time <50
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 60, Arena Grande atras]
type = Explod
trigger1 = time=0
anim = 7129
ID =  7129
pos = 50,-7
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .8, .8
sprpriority = 3
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1
;
[State 60, Explod atras]
type = Explod
trigger1 = time%3 = 0
anim = 7102
ID =  7102
pos = -10,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = 0.6, 0.6
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 100, Explod]
type = Explod
trigger1 = time = 5
anim = 6050
ID = 6050
pos = 0,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time = 5
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time = 5
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time>=5 && time <14
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)
;-------rush-FX-------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time%6 = 0
value = S1,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time%6 = 0
value = S3,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S8,14

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S0,4

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 40
trigger1 = time%6 = 0
value = S1,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  hitcount = 10
value = S4,106
channel=0
ignorehitpause=1

[State 700, attack 3]
type = ChangeState
triggerall = !AIlevel || AIlevel
trigger1 =  hitcount >=25
value = 3003
ctrl = 0

[State 700, off]
type = ChangeState
triggerall =  !AIlevel ||  AIlevel
trigger1 = time >=15 && !movecontact
trigger2 = time >=50 && (!movehit  && !p2movetype=H)
value = 3007


;-------------------------------------------------------------------------------
[Statedef 3003,--- attack 3]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3003

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1;
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State -1]
Type = AfterImage
Trigger1 = time = 0
Time =25
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 2
framegap = 2
trans = add
length =25
ignorehitpause=1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time = [2, 4]
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 5
x = 90

[State 60, Explod atras]
type = Explod
;triggerall = time > 85
trigger1 = time%10 = 0
anim = 7136
ID =  7136
pos = 35,2
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 0.3, 0.3
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 230, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 1 || animelem = 2
attr = S, NA
priority = 7,hit
animtype  = hard
damage    = 240
guardflag =
pausetime = 0,150
sparkno = -1;s6000
guard.sparkno = -1;s7000
sparkxy = -25,-25
hitsound   = S3,15
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
kill=0
getpower = 0,0
;hitonce=1
;numhits=0

;-------rush-FX-------------
[State 100, Explod]
type = Explod
trigger1 = time = 5
anim = 6050
ID = 6050
pos = 0,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time = 5
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time = 5
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time>4 && time <30
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time>4 && time < 10
trigger1 = time%1=0
anim = 7140
ID = 7140
pos = 20,floor(pos y)
vel = 0, 0
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 3000, Rush - FX]
type = Explod
triggerall = time>4 && time < 10
trigger1 = time%1=0
anim = 809
ID = 809
pos = 0,-25
sprpriority = -2
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.9,0.9
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1

[State 0, Explod]
type = Explod
trigger1 = time>4 && time <10
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)
;-------rush-FX-------------

[State 60, Corte FX]
type = Explod
trigger1 = time = 3
anim = 819;
ID =  819
pos = 50,-28
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime =18
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
triggerall = Numhelper(8103) = 0
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8103
stateno =ifelse(random>500,8103,8003)
pos = 0, -25
postype = p2
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1

[State 0, Explod]
type = Explod
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random>=500,6182,6183)
ID = 6182
pos = 0,145
postype = front
facing = -facing
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7164
ID = 7160
pos = 6,-30
postype = p2
facing = -1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime =9999
pausemovetime =9999
ignorehitpause  = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1=movehit=1 && p2movetype=H
helpertype = normal
name = "Slice random"
ID = 200
stateno = IfElse(Random <= 499,40003,40004)
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S3,10

[State 0, rush]
type = PlaySnd
trigger1 = time = 5
value = S2,18

[State 200, final attack]
type = ChangeState
triggerall = movehit &&  p2movetype = H
trigger1 = AnimTime = 0
value = 3004
ctrl = 0

[State 200, off]
type = ChangeState
triggerall = !movehit
trigger1 = time=50
value = 3204;
ctrl = 0
;


;-------------------------------------------------------------------------------
[Statedef 3004,--- final attack]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3004

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 7136
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3011
stateno =3011
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.38
size.yscale=.54

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3012 
stateno =3012
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.38
size.yscale=.38

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3013
stateno =3013
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.38
size.yscale=.38

;------------------
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Effects"
ID = 3008
stateno =3008
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = time = 90
helpertype = normal
name = "Arc Slice"
ID = 3009
stateno = 3009
pos = floor(target,screenpos x),floor(target,pos y)
postype = left
facing = 1
ownpal = 1

[State 3000, Cámara lenta]
type = Pause
trigger1 = time = [20, 25]
time = 2
movetime = 0

[State 0, off]
type = changestate
trigger1 = time = 125
value = 3005
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3005,--- off]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3005

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time=0
time = 0
ignorehitpause = 1
persistent = 1

[State 3003, End]
type = ChangeState
trigger1 = animtime = 0
value	= 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 3006,--- Atracción]
anim = 3006
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1
sprpriority = 2
velset = -9

[State 3104, playerpush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 =1
x = -.2
y = 0

[STate 3104: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3104, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno = 3001) && parent,movehit
trigger2 = time = 50
trigger3 = parent, stateno != 3001


;-------------------------------------------------------------------------------
[Statedef 3007,--- off]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3007

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time=0
time = 0
ignorehitpause = 1
persistent = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 7136

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 71137
;
[State 3003, End]
type = ChangeState
trigger1 = animtime = 0
value	= 0
ctrl = 1


;-------------------------------------------------------------------------------
[Statedef 3008,--- Additional Effects]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 9999
sprpriority = 7

[State 0, AssertSpecial]
type = AssertSpecial
triggerall=parent,stateno!=3112
trigger1 =time<180
flag = nobardisplay
flag2 = nomusic
supermove=9999
pausemove=9999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = 0
time = 4
add = 200,200,200
mul = 256,256,256
color=0

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time>4
trigger1 = time<100
trigger2 = time>=120
trigger2 = time<180
time = 2
color=0

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time>=100
trigger1 = time<120
time = 2
mul = 128,128,128
color=0

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time>=180
time = 2
color=ifelse((time-180)*15<256,(time-180)*15,256)

[State 0, Pause]
type = Pause
trigger1 = time > 106
trigger1 = time < 180
trigger1 = WinKO=0
time = 3
movetime = 3
ignorehitpause = 1
persistent=5

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time=200


;----------------------------------------------------------------------------------
[Statedef 3009,--- Arc Slice]
type = S
movetype = A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7

[State 200, 1]
type = HitDef
trigger1 = time = 6
attr = S, HA
damage = 150,0
animtype  = Up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S3,22
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -9
air.type = Low
air.velocity = 0,-6
air.hittime = 12
yaccel=.8
hitonce=1
numhits=0
fall=1
fall.recover=0
p2stateno=5800
getpower = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 6
freq = 15
ampl = 40
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 6
time = 20
freq = 110
ampl = -7
phase = 90

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 26
time = 20
freq = 110
ampl = -4
phase = 90

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 3
helpertype = normal
name = "HitSpark"
ID = 8101
stateno = 8101
pos = 0, -30
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=2
size.yscale=2

[State 0, Helper]
type = Helper
trigger1 = time = 6
helpertype = normal
name = "HitSpark"
ID = 8103
stateno = 8103
pos = 0, -30
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=3
size.yscale=3

[State 200, Spark blood]
type = Explod
trigger1 = time = 6
anim = 7163
ID = 7163
pos = 25, 14
postype = p2
facing = 1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime = 0
pausemovetime=0
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =6
value = S8,23
volumescale=330
ignorehitpause=1

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 0
trigger2 = time = 3
trigger3 = time = 6
value = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time = 0
trigger2 = time = 3
trigger3 = time = 6
time = 2
add = 200,200,200
mul = 256,256,256
ignorehitpause=1

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 10


;--------------------------------------------------------------------
[Statedef 3010,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  90

[State 0, DestroySelf]
type = DestroySelf
trigger1=time>=80  || (parent, stateno != 3001 )


;-------------------------------------------------------------------------------
[Statedef 3011,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  75

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing = -1
pos = -6,-23
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =(parent, stateno != 3004 )


;-------------------------------------------------------------------------------
[Statedef 3012,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  45

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing = -1
pos = 30,-12;
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =(parent, stateno != 3004 )


;-------------------------------------------------------------------------------
[Statedef 3013,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -135

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =-1
pos =3,-50
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =(parent, stateno != 3004 )


;-------------------------------------------------------------------------------
[Statedef 3014,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  90

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3000 )
;--------------------------------------------------------------------------------


;===============================================================================
;===============================================================================
[StateDef 3100, ASHURA bandana]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3100
poweradd = 0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 699, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3101,--- start]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3101
poweradd = -3000
sprpriority = 2

[State 100, SuperPause]
type = SuperPause
trigger1 =time=0
time = 131
movetime = 131
anim = -1
sound =-1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = time%9=0
trigger1 = time>=34 
value = 3,1,1
time = 5
under = 1
ignorehitpause=1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 34
time =1
add = -80,-80,-80

[State 3000: EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -2
phase = 50

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
FLAG = nomusic

[State -3, AfterImage]
type = AfterImage
trigger1 = time = 10
time = 100
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

[State 60, Helper ashura]
type = Helper
trigger1=time=25
helpertype = normal
name = "Ashura ghost"
ID = 3105
stateno = 3105
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal =1
supermovetime=9999
pausemovetime=9999

;blue fire
[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 8503
ID = 8503
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime=9999
pausemovetime=9999
scale = 0.6,0.5
sprpriority = 5
ownpal = 1

;imagen ashura--------------
[State 4, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3150
ID = 31500
pos = 4,6
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime= 128;-2
scale = 1,1
removeongethit = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause  = 1

[State 4, PlaySnd ]
type = PlaySnd
trigger1 = time=0
value = S3,7


[State 4, PlaySnd - Ashura Eff]
type = PlaySnd
trigger1 = time=20
value = S4,108
channel=0

[State 4, PlaySnd ]
type = PlaySnd
trigger1 = time= 123
value = S3,7

;cambio de estado-----
[State 700, attack]
type = ChangeState
trigger1=animtime=0
value = 3102
ctrl = 0

;-------------------------------------------------------------------------------
[StateDef 3102,--- rush attack]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3102

[State 0, NotHitBy]
type = NotHitBy
trigger1 =  1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 55

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Add"
ID = 3106
stateno =3106
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3150

[State 2, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8503

[State -3, AfterImage]
type = AfterImage
trigger1 = time =4
time = 30
length = 4
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

;------rush---------------
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10

[State 0, Trans]
type = Trans
trigger1 = time = [4, 8]
trans = addalpha
alpha = (time-21)*32, 256-(time-21)*32
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time = [6, 16]
x = 28

[State 702, VelAdd]
type = Veladd
trigger1 = time = [6, 16]
x = 0.6

[State 2750, PlayerPush]
type = PlayerPush
trigger1 = time = [9, 16]
value = 0
ignorehitpause = 1

[State 702, VelAdd]
type = Veladd
triggerall = vel x > 0
trigger1 = animelem = 6
x = -0.05
;------rush---------------


[State 702, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = S, HA
priority = 7,hit
animtype  = hard
damage    = 200
guardflag = ;MA
pausetime = 5,17
sparkno = -1
guard.sparkno = -1;s7000
sparkxy = -20,-30
hitsound   = S2,1
guardsound = S3,13
ground.type = low
ground.hittime  = 30
ground.velocity = -6.5,-4
air.velocity =-6.5,-4
envshake.freq = 150
envshake.time = 70
fall = 1
kill=0
fall.recover =0
getpower=0

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7164
ID = 7160
pos = -6,-36
postype = p2
facing = -1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime =9999
pausemovetime =9999
ignorehitpause  = 1
persistent = 0

[State 0, Helper]
type = Helper
triggerall = Numhelper(8107) = 0
trigger1 = movehit=1 && p2movetype=H
helpertype = normal
name = "HitSpark"
ID =8107
stateno = ifelse(random>500,8107,8007)
pos = 45, -24
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1

;----rush-FX----------
[State 100, Explod]
type = Explod
trigger1 = time=0
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time <30
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time>5 && time <18
trigger1 = time%1=0
anim = 7140
ID = 7140
pos = 20,floor(pos y)
vel = 0, 0
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 3000, Rush - FX]
type = Explod
triggerall = time>6 && time <18
trigger1 = time%1=0
anim = 809
ID = 809
pos = 0,-25
sprpriority = -2
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.9,0.9
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1

[State 0, Explod]
type = Explod
trigger1 = time>5 && time <18
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

;----rush-FX----------
[State 60, Corte FX]
type = Explod
trigger1 = animelem=4
anim = 807;
ID =  807
pos = 50,-36
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime =-2
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = movehit = 1  && p2movetype=H
anim = ifelse(random>=500,6182,6183)
ID = 6182
pos = 0,145
postype = front
facing = -facing
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,24

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2,16

;---------------------
[State 0, varset]
type=varset
triggerall= AILevel || !AILevel
trigger1 = movehit=1 && p2movetype=H
var(35) = 8
;--------------------

[State -1, Ashura Ichibugin attack 2]
type = ChangeState
trigger1 = var(35)=1
value = 3103

[State 0, ChangeState-fail]
type = ChangeState
triggerall = time>=50
trigger1= !movehit 
trigger2= (movehit && !p2movetype=H)
value = 3104


;-------------------------------------------------------------------------------
[Statedef 3103,--- attack 2]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3103

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
trigger1 = time>0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 703, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = hard
damage    = 220
hitflag =MAF
priority = 7,hit
guardflag = ;MA
pausetime =0,0
sparkno = -1;s6000
guard.sparkno = -1;s7000
sparkxy = -25,-25
hitsound   = S3,23
ground.type = high
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -13,-8
air.velocity = -8,-7
fall =1
yaccel=.9
p2stateNo=5650
fall.recover =0
getpower=0

envshake.time = 100
envshake.ampl = -4
envshake.freq = 120
envshake.phase = 110

[State 0, Helper]
type = Helper
triggerall = Numhelper(8107) = 0
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8107
stateno =ifelse(random>500,8107,8007)
pos = 0, -25
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7163
ID = 7163
pos = 25, 14
postype = p2
facing = 1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime = 0
pausemovetime=0
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit=1  && p2movetype=H
value = S8,23
volumescale=350
ignorehitpause=1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

;ashura efectos-----------
[State 0, fire]
type = Explod
trigger1 = animelem = 1
anim = 8503
ID = 8503
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime=9999
pausemovetime=9999
scale = 0.6,0.5
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 4, imagen ashura]
type = Explod
trigger1 = animelem = 2
anim = 3150
ID = 31500
pos = 3,6
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
sprpriority = -1
bindtime = -1;
removetime= 69;-
scale = 1,1
removeongethit = 1
supermovetime=9999
pausemovetime=9999

;cortes FX---------------------------
;
[State 60, Corte Vertical adelante]
type = Explod
trigger1 = AnimElem = 3
anim = 827
ID =  827
pos = 50,-30
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 0.5,0.5
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 60, Corte Vertical atras]
type = Explod
trigger1 = AnimElem = 3
anim = 827
ID =  827
pos = -50,-30
postype = p1  
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 0.5,0.5
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;
[State 60, Corte horizontal adelante]
type = Explod
trigger1 = AnimElem = 3
anim =828
ID =  828
pos = 30,-30
postype = p1 
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 0.3,0.3
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 60, Corte horizontal atras]
type = Explod
trigger1 = AnimElem = 3
anim = 828
ID =  828
pos = -30,-30
postype = p1  
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 0.3,0.3
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0]
type = Helper
trigger1 = Animelem = 3
helpertype = Normal
name = "Slasher"
id = 2405
pos =20,-20
postype = p1
facing = 1
stateno = 2405
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 0.5
size.yscale = 0.5
;cortes FX--------------------

[State -3, Helper]
type = Helper
trigger1 = animelem=3
helpertype = normal
name = "floor III"
ID = 5653
stateno = 5653
pos = 0,-4
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
persistent=0

[State 0, Helper]
type = Helper
trigger1 = movehit=1 && p2movetype=H
helpertype = normal
name = "Slice Ashura"
ID = 200
stateno = 40001
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State -3, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 95
length = 15
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
trans = add

[State 0, Pause]
type = Pause
trigger1 = time > 33
trigger1 = time < 73
trigger1 = WinKO=0
time = 3
movetime = 3
ignorehitpause = 1
persistent=5

[State 10, RemoveExplod]
type = RemoveExplod
trigger1 = (AnimElem = 5)
id = 3150

[State 10, RemoveExplod]
type = RemoveExplod
trigger1 = (AnimElem = 5)
id = 8503

[State 60, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3,25

[State 10, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S4,100
channel=0

[State 703, end]
type = ChangeState
trigger1 = animtime = 0
value = 3104
ctrl = 0


;-------------------------------------------------------------------------------
[Statedef 3104,--- off/end]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3104
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time=0
time = 0
ignorehitpause = 1
persistent = 1

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3150

[State 2, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8503

[State 2, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,33

[State 704, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------------
[StateDef 3105,--- ghost]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3105
sprpriority = 1


[State 3105, DestroySelf]
type = DestroySelf
trigger1 = animtime=0 || parent, stateno!=3101


;-------------------------------------------------------------------------------
[Statedef 3106,--- fade fx]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3


[state 6000, BG,Background]
type = BGpalfx
trigger1 = time = 0
add=0,0,0
sinadd = -256,-256,-256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 15
add=-256,-256,-256
time = 35
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 50
add=-256,-256,-256
sinadd = 256,256,256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 1650, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3102
;-------------------------------------------------------------------------------



;===============================================================================
;===============================================================================
[StateDef 3200, KOKUJOU - kimono out]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 699, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 0
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[Statedef 3201,--- start]
type    = S
movetype= A
physics = C
juggle  = 5
poweradd= -2500
ctrl = 0
anim = 3201

[State 3000:EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -2
phase = 50

[State 100, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 108
movetime = 108
anim = -1
sound = -1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 34 && Time < 155
time =1
add = -80,-80,-80

[State 3000, Cámara lenta]
type = Pause
trigger1 = time = [30, 45]
time = 1
movetime = 0

[State 0, PalFX]
Type = PalFX
trigger1 = Time > 45 && Time < 108
time = 1
ADD = 0,25+Floor(Sin(Time/15.0*PI)*25),80+Floor(Sin(Time/15.0*PI)*80)

[State 0, Helper]
type = Helper
trigger1 = Time=50
name = "Particles"
stateno = 3206
id=3206
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 60,Dragón]
type = Explod
trigger1 = time = 50
anim =825
ID =  825
pos = 0,-64
accel =0,0
vel=0,-.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 0.9,0.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

;blue fire
[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 8503
ID = 8503
pos = 0,2
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 66
removeongethit = 1
supermovetime=9999
pausemovetime=9999
scale = 0.5,0.38;1,1
sprpriority = 5
ownpal = 1

[State 100, Explod]
type = Explod
trigger1 = time = 50
anim = 6050
ID = 6050
pos = 20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing=-1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = time = 50
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999


[State 1100, 1]
type = PlaySnd
trigger1 = time = 0
value = S4,71
channel=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S3,7

[State 0, drago]
type = PlaySnd
trigger1 = time=50
value = S8,15

[State 1, PlaySnd]
type = PlaySnd
trigger1 = time=48
value = S4,88
channel=0

[State 200, END]
type = ChangeState
trigger1=time>108
value = 3202
ctrl = 0


;-------------------------------------------------------------------------------
[Statedef 3202,--- attack]
type    = S
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 3202

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 0
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, EnvShake]
type = EnvShake
trigger1 = time%10=0
time = 10
freq = 130
ampl = -6
;phase = 90
ignorehitpause = 1

[State 100, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 8
movetime = 8
anim = -1
sound = -1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State -1]
Type = AfterImage
Trigger1 = animelem = 1
Time =25
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

[State 3250, Atracción]
type = Helper
triggerall = time >=  15
trigger1 = time %10 = 0
helpertype = Normal
name=  "Atracción"
id = 3205
pos = 160,0
postype	= p1
facing = 1
stateno	= 3205
keyctrl	= 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 3250, Atracción]
type = Helper
triggerall = time >=  15
trigger1 = time %10 = 0
helpertype = Normal
name=  "Atracción"
id = 3205
pos = -160,0
postype	= p1
facing = -1
stateno	= 3205
keyctrl	= 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 230, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 3
attr = S, HA
animtype  = hard
damage    = 0,0
guardflag = MA
priority = 7,hit
pausetime = 0,10
sparkno = -1;s6000
guard.sparkno = -1;s7000
sparkxy = -25,-25
hitsound   = S3,21
guardsound = S3,6
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
getpower=0

[State 200, Spark guard]
type = Explod
triggerall = Numexplod(4080) = 0
trigger1 = !Movehit && movecontact
anim = 4080
ID = 4080
pos = 9,-35
postype = p2
facing = -1
sprpriority = 20
removetime = -2
bindtime = -1
ownpal = 1
scale = 0.6,0.6
removeongethit = 1
ontop = 0
ignorehitpause  = 1
persistent = 0
supermovetime =9999
pausemovetime =9999

[State 0, Helper]
type = Helper
triggerall = Numhelper(8101) = 0
trigger1 = Movehit = 1 && p2movetype=H
helpertype = normal
name = "HitSpark"
ID = 8101
stateno =ifelse(random>500,8101,8001)
pos = 50-10+random%20, 0-30+random%20
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1
size.xscale = .3
size.yscale = .3

;tornado
;--------------------
[State 10, Explod ground]
type = Explod
trigger1 = time = 0
anim = 7115
ID = 7115
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
scale = .6,.4
sprpriority = 25
removetime=-1
ontop=0
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem=25
id = 7115

[State 0, Explod ]
type = Explod
trigger1 = time= 15
anim = 7118
ID = 7118
pos = -100,33
postype = p1
facing = -1
vfacing = 1
bindtime = -1
scale=1,.7
removetime=-1
ontop=0
removeongethit = 1
sprpriority = 20
;;
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time <= 80
id = 7118

[State -3, Helper]
type = Helper
triggerall = time>=15
trigger1 = (time%30 = 0) && time <= 80
helpertype = normal
name = "floor II"
ID = 5643
stateno = 5643
pos = 0,-4
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = time = 80
anim = 7144
ID = 7144
pos = 0,1
postype = p1
bindtime = 1
removetime = -2
scale = 0.2,0.2
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause=1


[State 1000: helper tornado]
type = Helper
trigger1 = time=15
helpertype = Normal
name = "tornado"
id = 3203
pos =-25,16
postype = p1
facing = 1
stateno	= 3203
keyctrl	= 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1.2
size.yscale = 1

[State 1000: helper tornado]
type = Helper
trigger1 = time=15
helpertype = Normal
name = "tornado"
id = 3203
pos =25,16
postype = p1
facing = -1
stateno	= 3203
keyctrl	= 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1.2
size.yscale = 1

[State 0, Explod bigRocks] 
type = Explod
trigger1 =  time >= 15 && time <= 75
trigger1 = time%4=0
anim = 7145
id = 7145
postype = p1
pos = 90,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.17,.07),IfElse(Random <= 499,.17,.07)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 0, Explod bigRocks] 
type = Explod
trigger1 = time >= 15 && time <= 80
trigger1 = time%4=0
anim = 7145
id = 7145
postype = p1
pos = -90,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = -Random/(-120),-Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.17,.07),IfElse(Random <= 499,.17,.07)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time >= 15 && time <= 80
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3,31

[State 0, PlaySnd rocks]
type = PlaySnd
trigger1=time >= 15 && time <= 80
trigger1=time%20=0
value = S7,4;

;espada viento
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 ||    animelem = 3
value = S2,0

[State 1, PlaySnd]
type = PlaySnd
trigger1=time >= 15 && time <= 65
trigger1=time%5=0
value = S2,10

[State 1, PlaySnd]
type = PlaySnd
trigger1=time>=17 && time <= 85
trigger1=time%4=0
value = S7,1

[State 200, END]
type = ChangeState
trigger1=animtime=0
value = 3005
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3203,--- helper tornado]
type = S
movetype = A
physics = S
ctrl = 0
anim =7117
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 10, Explod ground]
type = Explod
trigger1 = time = 0
anim = 7116
ID = 7116
pos = 0,-320
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
scale = .75,.44
sprpriority = 25
removetime=-1
ontop=0
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = parent,animelem=23 || parent,stateNo!=3202
id =  7116

[State 803, 1]
type = HitDef
triggerall = hitcount < 19
trigger1 = movehit=0
trigger2 = movehit>7
attr = S, HA
guardflag=
damage =18
animtype = up
hitflag = MAFD
priority = 7, Hit
pausetime =0,0
sparkno = -1
sparkxy = -floor(p2dist x), floor(p2dist y)-25
hitsound = S3,21
guard.sparkno = s7000
ground.type = low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0,-2.5
air.velocity =0,-1.8
airguard.velocity = 0,-2.5
air.type = high
yaccel=.5
air.hittime = 20
fall.damage =38
fall=1
fall.recover = 0
p2stateNo = 5840
p2facing = 1
getpower=0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 2

[State 0, Helper]
type = Helper
trigger1 = movehit=1 && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8101
stateno =ifelse(random>500,8101,8001)
pos = 5-10+random%20, -30-10+random%20
postype = p2
facing = IfElse(Random <= 499,1,-1);1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale = IfElse(Random < 500,.7,.9)
size.yscale = IfElse(Random < 500,.7,.9)

[State 200, Spark blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random%2,7160,ifelse(random%2,7161,7162))
ID = 7160
pos = 5-10+random%20, -40-20+random%20
postype = p2
facing = 1
sprpriority =  IfElse(Random <= 499,1,2)
removetime = -2
bindtime = -1
ownpal = 1
scale = IfElse(Random <= 499,.5,.6),IfElse(Random <= 499,.5,.6)
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,animelem=23 || parent,stateNo!=3202


;===============================================================================

[Statedef 3204,--- off]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3204

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =time=0
time = 0
ignorehitpause = 1
persistent = 1

[State 3003, End]
type = ChangeState
trigger1 = animtime = 0
value	= 0
ctrl = 1


;-------------------------------------------------------------------------------
[Statedef 3205,--- Atracción]
anim = 3006
ctrl= 0
juggle	= 0
facep2	= 0
hitdefpersist= 1
movehitpersist= 1
hitcountpersist= 1
sprpriority= 2
velset = -9

[State 3104, playerpush]
type=PlayerPush
trigger1=1
value=1
ignorehitpause=1

[State 0, VelAdd]
type = VelAdd
trigger1 =1
x = -.2
y = 0

[STate 3104: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3104, DestroySelf]
type = DestroySelf
trigger1 = time>10;
trigger2 = parent, stateno != 3202

;------------------------------------------------------------------------
[StateDef 3206,--- particles]
type = S
movetype = I
physics = S
juggle = 4
poweradd = 0
ctrl = 0
velset = 0,0
anim = 9999

[State 0, GeralSet]
type = Null
trigger1 = Var(41):= 0+Random%32
trigger1 = Var(42):= (1+Random%4)*-1
trigger1 = Var(43):= 2+Random%20
trigger1 = Var(44):= Ceil(0+Random%5 * Cond(Random<500,1,-1))

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 6019
postype = p1
pos = Var(41), 0
vel = Var(44), Var(2)
accel = -var(44)*0.025, 0
scale = (Var(43)*0.0125), (Var(43)*0.0125)
Removetime = -2
SprPriority = 15
supermovetime = 9999
pausemovetime = 9999

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = Root, Pos Y - Random%110

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Root,stateno!=3201
trigger2 = NumHelper(3206)>1

;-------------------------------------------------------------------------------



;======================================================================
;=======================================================================
[Statedef 3310, HIRYUU KAEN - jump]
type    = S
physics = N
velset = 0,0
anim =1902
ctrl = 0
sprpriority = 2
poweradd = -2000

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 702, off]
type = ChangeState
trigger1 = animtime=0
value = 3311
ctrl = 0


;===============================================================================
[Statedef 3311,--- jump]
type  = A
movetype = I
physics = C
anim = 41
velset = 0,-14
ctrl = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist= 0
sprpriority  = 2
;---------------

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[state 60, VelSetFwd]
type = VelSet
triggerall = !AIlevel
trigger1 = command = "holdfwd"
x = 3

[state 60, VelSetBack]
type = VelSet
trigger1 = command = "holdback"
x = -3

[state 60, VelAdd]
type = VelAdd
trigger1 = Time > 10
x  = 0
y  = .40
;---------------

[State -3, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "floor III"
ID = 5653
stateno = 5653
pos = 0,-4
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4,39
channel=0

[State 60, PlaySnd]
type = PlaySnd
trigger1 =  time = 1
value = S0,5
channel = -1

[State 50, 3]
type = Changeanim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value =  Anim + 3

[State 50, attack]
type = Changestate
triggerall = !AIlevel
trigger1=command !="hold_a"  && time > 20
trigger2=time > 85
value = 3300

;AI
[state 60, attack]
type = ChangeState
triggerall = AIlevel
trigger1 =  (time = 84) && (P2bodydist x < 150 && P2bodydist x > 0)
trigger2 =  (time = 78) && (P2bodydist x < 300 && P2bodydist x >= 150)
trigger3 =  (time = 72) && (P2bodydist x < 450 && P2bodydist x >= 300)
trigger4 =  (time = 66) && (P2bodydist x < 600 && P2bodydist x >= 450)

trigger5 = time > 85
value=3300

[State 50, off]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;=================================================================
;===============================================================================
[Statedef 3300,--- start]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 3300

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 50
movetime = 50
anim = -1
sound = -1
pos = 32,-80
darken = 0
unhittable = 1
p2defmul = 1

[State 3000:EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -2
phase = 50

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 34
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 34
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 3000, Cámara lenta]
type = Pause
trigger1 = time = [70, 85]
time = 1
movetime = 0

[State 0, PlaySnd - Hiryuu]
type = PlaySnd
trigger1 = time =0
value = S4,40
channel=0

[State 3001, End]
type = ChangeState
trigger1 = time = 50
value	= 3301
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3301,--- attack]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 3301
sprpriority = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1;
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PalFX]
Type = PalFX
trigger1 = 1
time = 1
ADD = 0,25+Floor(Sin(Time/15.0*PI)*25),80+Floor(Sin(Time/15.0*PI)*80)

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 15;10
y = 9;7

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  50
ignorehitpause=1

[State 3150:Dragon I]
type = Helper
trigger1 = time = 0
helpertype = Normal
name = "Dragon I"
id = 3303
pos = 20,-30
postype	= p1
facing = 1
stateno	= 3303
keyctrl	= 0
ownpal = 1
supermovetime= 0
pausemovetime= 0
size.xscale = .9
size.yscale = .9

[State 3150: Explosión Dragon]
type = Helper
trigger1 = time = 0
helpertype = Normal
name = "Explosión Dragon"
id = 3304
pos = 0,-35
postype	= p1
facing = 1
stateno	= 3304
keyctrl	= 0
ownpal = 1
supermovetime= 0
pausemovetime= 0
size.xscale =.9
size.yscale = .9

[State 210, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = AnimElem = 1
attr = A, HA
priority = 7,hit
animtype  = hard
damage    =260,60
guardflag = ;MA
hitflag =MAFD
pausetime = 0,5
sparkno = -1
guard.sparkno = s7000
sparkxy = -30,10
hitsound   = S3,27
ground.slidetime = 12
fall = 1
ground.type = low
ground.hittime  = 25
ground.velocity = -4,12
air.velocity = -4,12
fall.recover = 0
getpower=0

envshake.time = 100
envshake.ampl = -4
envshake.freq = 120
envshake.phase = 110

p2stateno=5630

[State 1000, Spark]
type = Explod
triggerall = Numexplod(10093) = 0
trigger1 = movehit = 1  && p2movetype=H
anim = 10093
ID = 10093
postype = p2
pos = 4,-34
sprpriority = 25
removetime = -2
facing = -1
bindtime = -1
ownpal = 1
scale = 0.3,0.3
removeongethit = 1
ontop = 0
supermovetime= 9999
pausemovetime= 9999
ignorehitpause = 1

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7163
ID = 7163
pos = -25, 14
postype = p2
facing = -1
sprpriority = 3;IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime= 9999
pausemovetime= 9999
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit=1  && p2movetype=H
value = S8,23
volumescale=320
ignorehitpause=1

[State 3308:Blue fire hit]
type = Helper
trigger1 = movecontact=1 && moveguarded;
trigger2=  movehit = 1  && p2movetype=H
helpertype = Normal
name = "Blue fire-hit"
id = 3308
pos = 0,-50
postype	= p2
facing	= 1
stateno	= 3308
keyctrl	= 0
ownpal	= 1
supermovetime= 9999
pausemovetime= 9999
size.xscale = 1
size.yscale = 1

[State 3250: helper camara lenta]
type = Helper
triggerall = Numhelper(999) < 1
trigger1 = movehit = 1
helpertype = Normal
id = 999
pos = 0,0
postype	= p1
facing = 1
stateno	= 999
keyctrl	= 0
ownpal = 1
supermovetime= 9999
pausemovetime= 9999
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd - Hiryuu]
type = PlaySnd
trigger1 = time = 0
value = S4,41
channel=0

[State 0, rush]
type = PlaySnd
trigger1 = time = 0
value = S8,9
channel=3

[State 0, drago]
type = PlaySnd
trigger1 = time =0
value = S8,15

[State 3001, End]
type = ChangeState
trigger1 = Pos y >= 0
value = 3302
ctrl = 0


;-------------------------------------------------------------------------------
[Statedef 3302,--- terminación]
type = S
physics = S
ctrl = 0
anim = 3302

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PalFX]
Type = PalFX
trigger1 =  time < 15
time = 1
ADD = 0,25+Floor(Sin(Time/15.0*PI)*25),80+Floor(Sin(Time/15.0*PI)*80)

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time = [0, 10]
value = 0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [0, 10]
x = 18
y = 0

[State 60, blue fire]
type = Explod
triggerall = time < 15
trigger1 = Time%1 = 0
anim = 6037
ID =  6037
pos = 30-(random%40),0-(random%20)
postype = p1 
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 0.2, 0.2
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time <15
trigger1 = time%2=0
anim = 7140
ID = 7140
pos = 10,0
vel = 0, 0
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
facing=-1

[State 4000, Explod]
type = Explod
trigger1 = animelem = 2
anim = 8506
ID = 8506
pos =6,-15
postype = p1
removetime = -2
scale = .1,.1
ownpal = 1
supermovetime = 9999
pausemovetime=9999
sprpriority = 3
removeOnGetHit = 1

[State 0,envaina]
type = PlaySnd
trigger1 = animelem = 2
value = S3,33
volumescale=300

[State 3001, off]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 3303,--- dragon I]
type = S
physics = S
ctrl = 0
anim = 870
sprpriority = 5

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -28

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos =30,15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod - blue fire]
type = Explod
trigger1 = time%1 = 0
anim =6037
ID = 6037
pos = 20-(random%40),0-(random%20)
postype = p1 
facing = 1
vfacing = 1
bindtime = 1
vel = -0.2,-0.1
removetime = -2
scale = .2,.2
sprpriority = 3
supermovetime = 0
pausemovetime = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 3001, End]
type = ChangeState
trigger1 = parent, stateno = 3302
trigger2 = parent, stateno = 3306
value	= 3305
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3301

;-------------------------------------------------------------------------------
[Statedef 3304,--- explosión]
type = S
physics = S
ctrl = 0
anim = 6072
sprpriority = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -35

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------------------------
[Statedef 3305,--- dragon II]
type = S
physics = S
ctrl = 0
anim = 871
sprpriority = 5

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[Statedef 3308,--- blue fire hit]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 3308
ctrl = 0
sprpriority = 4

[State 1420]
type = posadd
trigger1 = 1
x = p2dist X-1
y = p2bodydist Y-20

[State 1650, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1465, 2]
type = HitDef
triggerall = p2movetype != H
trigger1 = time>150
trigger1 = time%100 = 0
attr = SCA, AA
damage  = 30, 10
guardflag = HA
animtype = medium
priority = 4, dodge
pausetime = 0,20
sparkno = -1
sparkxy = 0,0
guard.sparkno = -1
hitsound   =  S8,7
guardsound = -1
ground.type = high;low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = 0
guard.velocity = 0
Fall = 0
getpower=0

[State 0, Explod - blue fire]
type = Explod
trigger1 = time=0
anim =6037
ID = 6037
pos = 0,-30
postype = p2
facing = IfElse(Random <= 499,1,-1)
vfacing = 1
bindtime = -1
accel = 0,0
random = 0,0
removetime = 40
scale =IfElse(Random <= 499,.1,.05),IfElse(Random <= 499,.2,.15)
sprpriority = 30
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1
;
[State 0, Explod - blue fire]
type = Explod
trigger1 = time=40
anim =6037
ID = 6037
pos = 0,-15
postype = p2
facing = IfElse(Random <= 499,1,-1)
vfacing = 1
bindtime = -1
accel = 0,0
random = 0,0
removetime = -1
scale = IfElse(Random <= 499,.1,.05),IfElse(Random <= 499,.2,.15)
sprpriority = 30
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 0, Explod - blue fire]
type = Explod
trigger1 = time>150
trigger1 = time%100 = 0
anim =6037
ID = 6037
pos = 0,-Random%EnemyNear,Const(size.height) ;-3-3+random%20,-10-40+random%20
postype = p2
facing = IfElse(Random <= 499,1,-1)
vfacing = 1
bindtime = -1
accel = 0,0
random = 0,0
removetime = -1
scale = IfElse(Random <= 499,.1,.05),IfElse(Random <= 499,.2,.15)
sprpriority = 30
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 1000, Spark]
type = Explod
triggerall = Numexplod(7015) = 0
trigger1 = movehit = 1  && p2movetype=H
anim = 7015
ID = 7015
postype = p1
pos = 0, 25-35+random%20;-2-2+random%20
sprpriority = 20
removetime = -2
facing = IfElse(Random <= 499,1,-1)
bindtime = 1
ownpal = 1
scale = 0.4,0.4
removeongethit = 1
ontop = 0
supermovetime 	= 999
ignorehitpause  = 1
;
[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
trigger2 =  time = 225
channel = 12
value = S8,8

[State 10, StopSnd]
type = StopSnd
trigger1 = parent,life=0
channel = 12


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>=500
trigger2 = parent,life=0
id = 6037

[State 1650, DestroySelf]
type = DestroySelf
trigger1 = time >= 500
trigger2 = parent,life=0

;-----------------------------------------------------------------------



;===============================================================================
;===============================================================================
[StateDef 3400, RENGOKU  - Start]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3400
sprpriority = 2
poweradd = -2500

[State 100, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 103
movetime=103
anim = -1
sound = -1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State 3000, Cámara lenta]
type = Pause
trigger1 = time = [0, 47]
time = 1
movetime = 0

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********

[State 0, Helper]
type = Helper
trigger1 = time >= 0 & timemod = 15,0
helpertype = normal ;player
name = "AfterImage2Charge"
ID = 50033
stateno = 50033
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
[State 0, Veladd] 
type = Veladd
trigger1 = 1
x = -1.5
[State 0, VelSet]
type = VelSet
trigger1 = vel x < 0.05
x = 0
ignorehitpause = 1
[State 0, VelSet]
type = VelSet
trigger1 = 1
y = 0
ignorehitpause = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = time >= 4 & timemod = 10,0
time = 5
freq = 90
ampl = -4
phase = 10
ignorehitpause = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 34
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 200, Viento Rashomon]
type = Explod
trigger1 =  animelem = 1
anim = 7111
ID = 7111111
postype = P1
pos = 30,10
facing = -1
sprpriority = 10
removetime = -1
bindtime = 1
ownpal = 1
scale = .33,.33
removeongethit = 1
ontop =0
supermovetime 	= 999
ignorehitpause  = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3,7

[State 200, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4,71
channel= 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =45
value = S4,95
channel=0

[State 900, onigiri Icombo]
type = ChangeState
trigger1 = time=100
value = 3402


;-------------------------------------------------------------------------------
;===============================================================================
[Statedef 3402,--- attack]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3402

[State 0, EnvShake]
type = EnvShake
trigger1 = time%8=0
time = 7
freq = 120
ampl = -4
;phase = 90
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Add"
ID = 3403
stateno =3403
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State -3, AfterImage]
type = AfterImage
trigger1 = time =4
time = 34
length = 4
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

;------rush---------------
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10

[State 0, Trans]
type = Trans
trigger1 = time = [4, 8]
trans = addalpha
alpha = (time-21)*32, 256-(time-21)*32
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time = [6, 16]
x = 30

[State 702, VelAdd]
type = Veladd
trigger1 = time = [6, 16]
x = 0.6

[State 2750, PlayerPush]
type = PlayerPush
trigger1 = time = [9, 16]
value = 0
ignorehitpause = 1

[State 702, VelAdd]
type = Veladd
triggerall = vel x > 0
trigger1 = animelem = 6
x = -0.05
;------rush---------------

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
trigger1 = time>60 && time <=130
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

;-------rush-FX-------------
[State 100, Explod]
type = Explod
trigger1 = time=0
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 3000, Rush - FX]
type = Explod
triggerall = time>5 && time <19
trigger1 = time%1=0
anim = 809
ID = 809
pos = 0,-25
sprpriority = -1
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.9,0.9
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time>5 && time <20
trigger1 = time%1=0
anim = 7140
ID = 7140
pos = 20,floor(pos y)
vel = 0, 0
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 0, Explod]
type = Explod
trigger1 = time>=5 && time <20
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

[State 0, wind]
type = Explod
triggerall = time>5 && time <23
trigger1 = time%3=0
anim = 7118
ID =  7118
pos = 30,floor(pos y)+28
postype = p1
facing = 1
vfacing = 1
bindtime = 1
sprpriority = 5
scale=0.65,0.65

[State 0,floor]
type = Explod
trigger1 = time>5 && time <21
trigger1 = time%1=0
anim = 7144
ID = 7144
pos = 0,floor(pos y)
postype = p1
bindtime = 1
removetime =90
scale = 0.2,0.2
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time <30
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 0, Explod bigRocks] 
type = Explod
triggerall = time>5 && time <28
trigger1 = time%3=0
anim = 7145
id = 7145
postype = p1
pos = 60,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.17,.07),IfElse(Random <= 499,.17,.07)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1
;-------rush-FX-------------

[State 60, Corte FX]
type = Explod
trigger1 = animelem=5
anim = 807
ID =  807 
pos = 50,-50 
postype = p1  
facing = 1
vfacing = 1
bindtime = -1
removetime =-2
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 60, Corte FX]
type = Explod
trigger1 = animelem=7
anim = 807
ID =  807 
pos = 50,-27
postype = p1  
facing = 1
vfacing = 1
bindtime = -1
removetime =-2
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 904, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 4 || animelem = 5 || animelem = 6
attr = S, HA
priority = 7,hit
damage = 310
guardflag = ;MA
animtype = hard
hitflag = MAF
pausetime = 0,0
sparkno = -1
hitsound = S3,27
ground.type = low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 2,-10
air.velocity = 1.8,-8
air.type = low
fall = 1
air.hittime = 12
envshake.time = 50
envshake.ampl = 5
fall.xvelocity =  -2
fall.yvelocity = -8
fall.envshake.time = 30
fall.envshake.freq = 60
fall.envshake.ampl =  -10
fall.envshake.phase = 0
down.bounce =1
fall.damage = 40
p2stateno=5803
fall.recover =0
getpower=0

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 0, Helper]
type = Helper
triggerall = Numhelper(8103) = 0
trigger1 = movehit = 1 && p2movetype=H
helpertype = normal
name = "HitSpark"
ID = 8103
stateno =ifelse(random>500,8103,8003)
pos = 5,-30
postype = p2
facing = 1
ownpal = 1
supermovetime =9999
pausemovetime =9999
ignorehitpause=1

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7164
ID = 7160
pos = -6,-36
postype = p2
facing = -1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime =9999
pausemovetime =9999
ignorehitpause  = 1
persistent = 0

[State 0, Explod]
type = Explod
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random>=500,6182,6183)
ID = 6182
pos = 0,145
postype = front
facing = -facing
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 0, Helper]
type = Helper
trigger1=movehit=1 && p2movetype=H
helpertype = normal
name = "Slice Rengoku"
ID = 200
stateno = 40004
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Explod]
type = Explod
trigger1 = movehit = 1 && p2movetype=H
anim = 7052
ID =  7052
pos = 0,-30
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
sprpriority = 4
scale = .4,.4
removetime = -1
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  time=100
id =  7052

[State 3250: camara lenta helper]
type = Helper
triggerall = Numhelper(999) < 1
trigger1 = movehit = 1 && p2movetype=H
helpertype = Normal
id = 999
pos = 0,0
postype = p1
facing = 1
stateno = 999
keyctrl= 0
ownpal= 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd rocks]
type = PlaySnd
trigger1 = time=0
value = S7,4

;rafaga
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S2,9

;golpe
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 ||animelem = 2 || animelem = 3  || animelem = 4
value = S3,27

;onig
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S4,90
channel=0

;fin
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S8,13


[State 200, hit]
type = ChangeState
triggerall = movehit && p2movetype = H
trigger1 = time>=130
value = 3204

[State 200, off]
type = ChangeState
triggerall = time>=50
trigger1= !movehit 
trigger2= (movehit && !p2movetype=H)
value = 3204


;-------------------------------------------------------------------------------
[Statedef 3403,--- fadeFx]
type    = S
movetype = H
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3

[state 6000, BG,Background]
type = BGpalfx
trigger1 = time = 0
add=0,0,0
sinadd = -256,-256,-256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 15
add=-256,-256,-256
time = 35
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 50
add=-256,-256,-256
sinadd = 256,256,256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 1650, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3402

;-------------------------------------------------------------------------------

[StateDef 3410,--- kimono out]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 699, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3400
ctrl = 0
;-------------------------------------------------------------------------------




;===============================================================================
;===============================================================================
[Statedef 3500, ROKUDOU - Start]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 3500
poweradd = -3000

[State 100, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 83
movetime = 83
anim = -1
sound = -1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State 0, EnvColor]
type = EnvColor
trigger1 = time%9=0
trigger1 = time>=34 
value = 3,1,1
time = 5
under = 1
ignorehitpause=1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time >= 34
time =1
add = -80,-80,-80

[State 3000:EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -4
phase = 50

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S4,81
channel=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time=57
value = S3,31


[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time=70
value = S2,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time=70
value = S2,7

[State 3001, End]
type = ChangeState
trigger1 = time >=  75
value = 3501
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3501,--- attack]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3501

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Add"
ID = 3504
stateno =3504
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State -3, AfterImage]
type = AfterImage
trigger1 = time =4
time = 30
length = 4
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

;------rush---------------
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10

[State 0, Trans]
type = Trans
trigger1 = time = [4, 8]
trans = addalpha
alpha = (time-21)*32, 256-(time-21)*32
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time = [6, 16]
x = 28;34

[State 702, VelAdd]
type = Veladd
trigger1 = time = [6, 16]
x = 0.6

[State 2750, PlayerPush]
type = PlayerPush
trigger1 = time = [9, 16]
value = 0
ignorehitpause = 1

[State 702, VelAdd]
type = Veladd
triggerall = vel x > 0
trigger1 = animelem = 6
x = -0.05
;------rush---------------

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
trigger1 = time>60 && time <=130
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

;-------rush-FX-------------
[State 100, Explod]
type = Explod
trigger1 = time=0
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time <30
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time>5 && time < 18
trigger1 = time%1=0
anim = 7140
ID = 7140
pos = 20,floor(pos y)
vel = 0, 0
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 3000, Rush - FX]
type = Explod
triggerall = time>5 && time < 18
trigger1 = time%1=0
anim = 809
ID = 809
pos = 0,-25
sprpriority = -2
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.9,0.9
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1

[State 0, Explod]
type = Explod
trigger1 = time>5 && time <18
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)
;-------rush-FX-------------

[State 200, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 4 || animelem = 5
attr = S, HA
damage = 260
animtype  = Hard
guardflag =
hitflag = MAF
priority = 7, Hit
pausetime = 0, 100
sparkno = -1
guard.sparkno = -1;s6160
hitsound = -1
ground.type = low
ground.slidetime = 5
ground.hittime  =25
ground.velocity = 0,0
air.velocity = 0,0
airguard.velocity = -3,-2
air.type = low;High
air.hittime = 25
envshake.time = 12
envshake.freq = 150
envshake.ampl = 4*ifelse(random<500,1,-1)
envshake.phase = 90
id=5
fall=0
fall.recover = 0
getpower=0

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7164
ID = 7160
pos = -6,-36
postype = p2
facing = -1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime =9999
pausemovetime =9999
ignorehitpause  = 1
persistent = 0

[State 0, Helper]
type = Helper
triggerall = Numhelper(8103) = 0
trigger1 = movehit = 1 && p2movetype=H
helpertype = normal
name = "HitSpark"
ID = 8103
stateno =ifelse(random>500,8103,8003)
pos = 5,-30
postype = p2
facing = 1
ownpal = 1
supermovetime =9999
pausemovetime =9999
ignorehitpause=1

[State 60, Corte FX]
type = Explod
trigger1 = animelem=4
anim = 807;
ID =  807
pos = 50,-26
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime =20
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random>=500,6182,6183)
ID = 6182
pos = 0,145
postype = front
facing = -facing
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 0, Helper]
type = Helper
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
trigger1 = target,GetHitVar(chainid)=5
helpertype = normal
name = "cortes"
ID = 3503
stateno = 3503
pos =  0,80
postype = p2
facing = 1
ownpal = 1
size.xscale = .8
size.yscale = 1.2
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State 0, Helper]
type = Helper
trigger1=movehit=1   && p2movetype=H
helpertype = normal
name = "Slice Rokudou"
ID = 200
stateno = 40002
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

;rfaga
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value =S2,16

[State 200, hit]
type = ChangeState
triggerall = movehit && p2movetype = H
trigger1 = time>=130
value = 3204

[State 200, off]
type = ChangeState
triggerall = time>=50
trigger1= !movehit 
trigger2= (movehit && !p2movetype=H)
value = 3204


;---------------------------------------------------------------------------
[Statedef 3503,--- cortes helper]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 7051
ctrl = 0
sprpriority = 5;3

[State 1000, ScreenBound]
type = ScreenBound
trigger1 = time > 0
movecamera = 1,1
value	= 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -278

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
; 
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
; 
[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 7050
ID =  7050
pos = -75,0;40
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
sprpriority = 4
scale = .5,.8;
removetime = -1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 7050
ID =  7050
pos = -35,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
sprpriority = 4
scale =.5,.8; .5,1
removetime = -1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 7050
ID =  7050
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
sprpriority = 4
scale = .5,.8
removetime = -1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 7050
ID =  7050
pos = 35,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
sprpriority = 4
scale = .5,.8
removetime = -1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 7050
ID =  7050
pos = 70,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
sprpriority = 4
scale = .5,.8
removetime = -1
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  parent,stateno!=3501
id =  7050

[State 0, PlaySnd]
type = PlaySnd
triggerall = time <=15
trigger1 = time%6=0
value =  S3,21


[State 1650, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3501
;-------------------------------------------------------------------------------
[Statedef 3504,--- fx]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3


[state 6000, BG,Background]
type = BGpalfx
trigger1 = time = 0
add=0,0,0
sinadd = -256,-256,-256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 15
add=-256,-256,-256
time = 35
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 50
add=-256,-256,-256
sinadd = 256,256,256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 1650, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3501

;-------------------------------------------------------------------------------
[StateDef 3510,--- kimono out]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 699, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3500
ctrl = 0
;-------------------------------------------------------------------------------



;===============================================================================
;===============================================================================
[Statedef 3600, SHISHI SONSON - start]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim =3600
poweradd = -2500
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Add"
ID = 3606
stateno =3606
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 3000: EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -2
phase = 50

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State -3, AfterImage]
type = AfterImage
trigger1 = time = 11
time = 30
length = 10
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

[State 100, ghost]
type = Explod
trigger1 = time=16
anim = 3605
id = 3605
pos = 0,0
postype	= p1
facing = 1
bindtime = -1
sprpriority = -3
removetime = -2
ontop = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 0, SuperPause]
type = SuperPause
trigger1 = animelem = 3,>=0
trigger1 = animelem = 12,<0
time =4
anim = -1
sound = -1
pos = 0,0
move = 0
movetime =0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[state 6000, BG]
type = BGpalfx
trigger1 = time = 0
add=0,0,0
sinadd = -256,-256,-256, 60
time =7
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 7
add=-256,-256,-256
time = 6
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999
;
[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time >= 13
trigger1 = Time < 33
Time = 5
color = (time-13)*8
supermovetime=9999
pausemovetime=9999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time >= 33
trigger1 = Time < 53
Time = 5
color = 160+(time-33)*4
supermovetime=9999
pausemovetime=9999
;
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S4,35
channel=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S8,3

[State 0, changestate attack]
type = changestate
trigger1 = time>=70
value =3601
ctrl = 0



;-------------------------------------------------------------------------------
[Statedef 3601,--- attack]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim =3601

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Add"
ID = 3607
stateno =3607
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State -3, AfterImage]
type = AfterImage
trigger1 = time =4
time = 30
length = 4
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add


;------rush---------------
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10

[State 0, Trans]
type = Trans
trigger1 = time = [4, 8]
trans = addalpha
alpha = (time-21)*32, 256-(time-21)*32
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time = [6, 16]
x = 28

[State 702, VelAdd]
type = Veladd
trigger1 = time = [6, 16]
x = 0.6

[State 2750, PlayerPush]
type = PlayerPush
trigger1 = time = [9, 16]
value = 0
ignorehitpause = 1

[State 702, VelAdd]
type = Veladd
triggerall = vel x > 0
trigger1 = animelem = 6
x = -0.05
;------rush---------------

[State 200, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 4 || animelem = 5 
attr = S, HA
damage = 120
animtype  = Hard
guardflag =; MA
hitflag = MAF
priority = 7, Hit
pausetime = 0,200
sparkno = -1
guard.sparkno = s6160
sparkxy = -10, -30
hitsound = S3,24
ground.type = low
ground.slidetime = 5
ground.hittime  = 0
ground.velocity = 0, 0
airguard.velocity = -3,--2
air.velocity = 0, 0
air.hittime = 0
envshake.time = 12
envshake.freq = 150
envshake.ampl = 4*ifelse(random<500,1,-1)
envshake.phase = 90
fall=0
p2facing = 1
kill=0
getpower=0

[State 0, Helper]
type = Helper
triggerall = Numhelper(8113) = 0
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8113
stateno =ifelse(random>500,8113,8013)
pos = 0, -25
postype = p2
facing = 1
ownpal = 1
supermovetime =9999
pausemovetime =9999
ignorehitpause=1

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7164
ID = 7160
pos = 9,-30
postype = p2
facing = -1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = .45,.45
removeongethit = 1
ontop = 0
supermovetime =9999
pausemovetime =9999
ignorehitpause  = 1
persistent = 0

;-------rush-FX-------------
[State 100, Explod]
type = Explod
trigger1 = time=2
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=2
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=2
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time <30
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time>5 && time <18
trigger1 = time%1=0
anim = 7140
ID = 7140
pos = 20,floor(pos y)
vel = 0, 0
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 3000, Rush - FX]
type = Explod
triggerall = time>5 && time <18
trigger1 = time%1=0
anim = 809
ID = 809
pos = 0,-25
sprpriority = -2
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.9,0.9
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1

[State 0, Explod]
type = Explod
trigger1 = time>5 && time <18
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

;-------rush-FX-------------

[State 0, Explod]
type = Explod
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random>=500,6182,6183)
ID = 6182
pos = 0,145
postype = front
facing = -facing
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;***********------"mugshot hit"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50004) 
trigger1 = movehit = 1  && p2movetype=H
helpertype = normal ;player
name = "mugshot"
ID = 50004
stateno = 50004
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot hit"-----------**********

;estela
[State 3000, PlaySnd - Shishi Sonson]
type = PlaySnd
trigger1 = time = 0 
value = S2,4

;espada
[State 3000, PlaySnd - Shishi Sonson]
type = PlaySnd
trigger1 = time =   0 
value = S3,25

[State 0, changestate-final attack]
type = changestate
trigger1 = movehit && p2movetype=H
trigger1 = time>=50
value = 3602
ctrl = 0

[State 0, ChangeState-fail]
type = ChangeState
triggerall = time>=50 
trigger1= !movehit 
trigger2= (movehit && !p2movetype=H)
value = 3604
ctrl = 0


;-------------------------------------------------------------------------------
[StateDef 3602,--- final attack]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3602

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 5850
ID = -1

[State 0, Helper]
type = Helper
trigger1 = time < 90
trigger1 = time%7=0
helpertype = normal
name = "HitSpark"
ID = 8101
stateno =ifelse(random>500,8101,8001)
pos = -20+random%40, -25-20+random%40
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale = IfElse(Random < 500,.75,.95)
size.yscale = IfElse(Random < 500,.75,.95)

[State 200, Spark blood]
type = Explod
triggerall=time<90
trigger1 = time%10=0
anim = ifelse(random%2,7160,ifelse(random%2,7161,7162))
ID = 7160
pos = 7-7+random%20, -20-10+random%20
postype = p2
facing = IfElse(Random <= 499,1,-1);1
sprpriority =  IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = IfElse(Random <= 499,.5,.6),IfElse(Random <= 499,.5,.6)
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time <90
trigger1 = time%7=0
value = S2,6
channel = 4
ignorehitpause=1

[State 0, EnvShake]
type = EnvShake
trigger1 = time < 90
trigger1 = time%7=0
time = 5
freq = 60
ampl = -3

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time < 90
trigger1 = time%7=0
value = -10
ID = -1
kill = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = time < 90
trigger1 = time%7=0
value = 1

[State 0, Helper]
type = Helper
trigger1= time = 155 
helpertype = normal
name = "slice"
ID = 3603
stateno = 3603
pos = 0, -20
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State 4000, Explod]
type = Explod
trigger1 = time=127
anim = 8506
ID = 8506
pos =2,-24
postype = p1
removetime = -2
scale = .2,.2
ownpal = 1
supermovetime = 9999
pausemovetime=9999
sprpriority = 3
removeOnGetHit = 1

;envaina
[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=127
value = S3,33
volumescale=300

[State 0, PlaySnd - Shi-Shishi Sonson]
type = PlaySnd
trigger1 = time=0
value = S4,37
channel=0

[State 1210, off]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------------------------------------------------------------------
[Statedef 3603,--- slice]
type = S
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3603
sprpriority = 3

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000, 1]
type = HitDef
trigger1 =time= 0
attr = S, HA
animtype  = Hard
damage    = 100,40
priority = 7, Hit
guardflag =
pausetime = 0,8
sparkno = -1;S6111
guard.sparkno = s7000
sparkxy = -5, -31
hitsound = -1
ground.type = low
ground.slidetime = 30
guard.slidetime = 10
ground.hittime = 30
guard.hittime = 1
air.hittime = 30
ground.velocity = 0, -9
air.velocity = 0, -8
fall = 1
p2stateno=5801
fall.recover =0
getpower=0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 15
freq = 80
ampl = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,22
channel = 4
ignorehitpause=1

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal
name = "HitSpark"
ID = 8103
stateno =ifelse(random>500,8103,8003)
pos = 5,-35
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=2
size.yscale=2

[State 200, Spark blood]
type = Explod
trigger1 = time = 0
anim = 7163
ID = 7163
pos = 25, 14
postype = p2
facing = 1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime = 0
pausemovetime=0
ignorehitpause  = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S8,23
volumescale=350
ignorehitpause=1

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 2

;-------------------------------------------------------------------------------
[StateDef 3604,--- end fail]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3604

;envaina
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,33

[State 0, changestate]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 3606,--- helper start ]
type    = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 9999
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nomusic
supermove=9999
pausemove=9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3600 

;---------------------------------------------------------------------------
[Statedef 3607,--- fadeFx]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3

[state 6000, BG,Background]
type = BGpalfx
trigger1 = time = 0
add=0,0,0
sinadd = -256,-256,-256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 15
add=-256,-256,-256
time = 35
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 50
add=-256,-256,-256
sinadd = 256,256,256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 1650, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3601

;-------------------------------------------------------------------------------
[StateDef 3608,--- end]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3602

;envaina
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3,33

[State 0, changestate]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------



;===============================================================================
;===============================================================================
[Statedef 3700, DAISHINKAN - start]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim =3700

[State 100, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 140
movetime =140
anim = -1
sound = -1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 34
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
trigger1 = Time > 34
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State 3000: EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -4
phase = 50

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(6073)=0
trigger1 = time=34
anim = 6073
ID = 6073
pos = 27,-32
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = .56,.07
removetime = -1
scale = .3,.3
supermovetime = 9999
pausemovetime=9999
sprpriority = 4
ownpal = 1
removeongethit = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time=92
id = 6073

[State 0, Helper]
type = Helper
trigger1 = time=0
helpertype = normal
name = "haki"
ID = 3720
stateno =3720
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.58

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=34
value = S8,11

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=80
value = S4,34
channel=0

[State 0, changestate rush]
type = changestate
trigger1 =time=140
value = 3701
ctrl = 0


;-------------------------------------------------------------------------------
[Statedef 3701,--- rush]
type = S
movetype =I
physics = S
velset = 0,0
ctrl = 0
anim =3701

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time=0
time = 10
movetime = 10
anim = -1
sound = -1
pos = 0,0
darken =0
unhittable = 1
p2defmul = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 20, 1]
type = VelSet
trigger1 =  time>0
x = const(velocity.run.fwd.x)

;-------air---------
[State 200, hit]
type = ChangeState
triggerall=!AIlevel
triggerall=1
trigger1=command = "holdup"
value = 40
;ctrl = 1
;------------------


[State 100, Explod]
type = Explod
trigger1 = time =0
anim = 6050
ID = 6050
pos = -25,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 60, Explod atras]
type = Explod
trigger1 = Animelem = 3 || Animelem = 7
anim = 7102
ID =  7102
pos = 0,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime =0
scale = 0.4, 0.4
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1]
Type = AfterImage
Trigger1 = animelem = 1
Time = -1
Trans = Add
Length = 10
TimeGap = 1
FrameGap = 1
PalBright = 0 , 0 , 0
PalContrast = 240 , 240 , 0
PalAdd = 0 , 0 , 0
PalMul = .75 , .75 , 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=0  ||time=15 || time=30|| time=45|| time=60  || time=75|| time=90|| time=105  || time=120
value = S0,3
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time>120
value = S8,5

;cambio de estado---------------------------
[State 700, attack]
type = ChangeState
triggerall=!AIlevel
trigger1 = command = "y" && time<=120
value = 3702

;cambio de estado---------------------------
[State 700,  off]
type = ChangeState
triggerall=!AIlevel
trigger1 = time>120
value = 203

;IA
[State 0, attack]
type = changestate
triggerall=AIlevel
trigger1 =p2bodydist x<=35 && time<=120
value = 3702
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3702,--- attack]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim =3702

[State 0, SuperPause]
type = SuperPause
trigger1 = time=0
time = 14
anim = -1
sound = -1
pos = 0,0
movetime = 14
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, Gravity]
type = Gravity
trigger1 =pos Y < 0

[State 0, PosSet]
type = PosSet
trigger1 = pos Y >-5
y = -10

[State 100, Explod]
type = Explod
triggerall = pos Y >= -10
trigger1 = time=0
anim = 6050
ID = 6050
pos = 0,floor(pos y =0)
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1
facing = 1

[State 200, 1]
type = HitDef
triggerall=hitcount<1
trigger1 = animelem = 3 || animelem = 4 || animelem = 5  
attr = S, HA
damage = 500
animtype  = Hard
guardflag =; MA
hitflag = MAF
priority = 7, Hit
pausetime = 0,0;200
sparkno = -1
guard.sparkno = s6160
sparkxy = -10, -30
hitsound = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 0;25
ground.velocity = 0,0
airguard.velocity =0,0
air.velocity = 0, 0
air.hittime = 0;25
kill=1
fall=1
p2stateno=5810
fall.recover =0
getpower = 0,0

palfx.time = 200
Palfx.Mul =  0,0,0
Palfx.Add = 0,0,0
Palfx.SinAdd = 30,10,10,9
palfx.color = 256

[State 0, Helper]
type = Helper
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "Spark"
ID = 3706
stateno = 3706
pos = 0,-80
postype = p2
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State 0, Helper]
type = Helper
triggerall = Numhelper(8103) = 0
trigger1 = movehit = 1 && p2movetype=H
helpertype = normal
name = "HitSpark"
ID = 8103
stateno =ifelse(random>500,8103,8003)
pos = 5,-40
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State 0, Helper]
type = Helper
trigger1=movehit=1 && p2movetype=H
helpertype = normal
name = "Slice Daishinkan"
ID = 200
stateno = 40003
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7163
ID = 7163
pos = 25, 14
postype = p2
facing = 1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime = 0
pausemovetime=9999
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit=1  && p2movetype=H
value = S8,23
volumescale=350
ignorehitpause=1

[State 200, Spark blood2]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 6200
ID = 6200
pos = 3, -35
postype = p2
facing = -1
sprpriority = 41;IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .4,.4
removeongethit = 1
ontop = 0
supermovetime = 0
pausemovetime=9999
ignorehitpause  = 1


[State 0, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Corte FX]
type = Explod
trigger1 = time=14
anim = 818
ID = 818
pos = 66,-12
postype = p1
bindtime = -1
removetime =18
scale = .9,.7
sprpriority = 4
ownpal = 1
facing = 1
vfacing = 1
ontop = 0
shadow = 0,0,0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0

[State 3250: helper camara lenta]
type = Helper
triggerall = Numhelper(3711) < 1
trigger1 = movehit=1  && p2movetype=H
helpertype = Normal
id = 3711
pos = 0,0
postype	= p1
facing = 1
stateno	= 3711
keyctrl	= 0
ownpal = 1
supermovetime = 0
pausemovetime=0
size.xscale = 1
size.yscale = 1
ignorehitpause=1

[State 0, Helper]
type = Helper
trigger1 =  movehit=1  && p2movetype=H
helpertype = normal
name = "no music"
ID = 3708
stateno =3708
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "haki"
ID = 3725
stateno =3725
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.58

[State -3, Helper]
type = Helper
triggerall =pos Y =-10
trigger1 =animelem=5
helpertype = normal
name = "floor III"
ID = 5653
stateno = 5653
pos = 65,10
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
persistent=0

[State 0,floor]
type = Explod
triggerall =pos Y =-10
trigger1 = animelem=5 && (movehit=1  && p2movetype=H)
anim = 7144
ID = 7144
pos = 65,7
postype = p1
bindtime = 1
removetime =-1
scale = 0.2,0.2
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 0, Explod viento]
type = Explod
triggerall =time<48
triggerall =pos Y =-10
trigger1 =animelem=5 || animelem=6 || animelem=7
anim = 7136
ID = 7136
pos =60,5
postype = p1  
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .7,.7
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause =1

[State 0, Helper]
type = Helper
triggerall=movehit  && p2movetype=H
trigger1= time=84
helpertype =normal
name = "estela"
ID = 3703
stateno = 3703
pos = 0,10
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1
size.xscale = 1
size.yscale = 1
;
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =animelem=7
time = 0
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall=movehit && p2movetype=H
trigger1 = time= 26
value = S4,38
channel=0

[State 0, PlaySnd corte]
type = PlaySnd
trigger1 = animelem =3
value = S3,28
volumescale = 280

[State 0, ChangeState-fail]
type = ChangeState
triggerall =!movehit ||  p2statetype=L
trigger1= time=74
value = 203
ctrl = 0

[State 0, changestate-off]
type = changestate
triggerall=movehit && p2movetype=H
trigger1 = time=210
value = 203
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3703,--- helper estela]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 7134
ctrl = 0
sprpriority = 3

[State 3000,EnvShake]
type = EnvShake
trigger1 = time =0
time = 90
freq = 80
ampl = -2
phase = 90

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 1000, ScreenBound]
type = ScreenBound
triggerall = time > 0
trigger1 = p2movetype = H 
movecamera = 1,0
value	= 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 16
y = 0

[State 3000, Corte Rush - FX]
type = Explod
triggerall = time <90
trigger1 = time%2=0
anim = 809
ID = 809
pos = 50,3
vel = 0, 0
sprpriority = 1
removetime = -2
bindtime = 1
ownpal = 1
scale = .6,.3
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time <90
trigger1 = time%2=0
anim = 7140
ID = 7140
pos = 0,5
vel = 0, 0
sprpriority = 2
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 0, Explod bigRocks] 
type = Explod
triggerall = time <90
trigger1 = time%3=0
anim = 7145
id = 7145
postype = p1
pos = 90,0
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.17,.07),IfElse(Random <= 499,.17,.07)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 0,floor]
type = Explod
triggerall = time <90
trigger1 = time%1=0
anim = 7144
ID = 7144
pos = 70,6
postype = p1
bindtime = 1
removetime =90
scale = 0.14,0.14
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause=1

; Wall Slam1
[State -3, Helper]
type = Helper
triggerall = numhelper(3704)=0
TriggerAll = FrontEdgeDist <= 0
Trigger1 = 1
helpertype =normal
name = "wall"
ID = 3704
stateno = 3704
pos = floor(target,screenpos x+10*target,facing),floor(target,pos y-10);-30
postype = p1
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime=9999
pausemovetime=9999
ignorehitpause=1

[State -1]
Type = Width
Trigger1 = 1
Edge = 0,-Const(Size.Air.Back)
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,4

[State 0, DestroySelf]
type = DestroySelf
trigger1 =FrontEdgeDist <= 0

;-------------------------------------------------------------------------------
[Statedef 3704,--- helper Wall ]
Type     = A
MoveType = H
Physics  = N
Ctrl     = 0
anim     = 99999
VelSet   = 0,0

[State 1000, ScreenBound]
type = ScreenBound
trigger1 =  time > 0
movecamera = 1,0
value	= 0

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7123
ID = 7123
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.4,0.4
sprpriority = -5
ownpal = 1

[State 0, Explod]
Type = Explod
trigger1=time=0
Anim = 7132
ID = 7132
Ownpal = 1
sprpriority =10
PosType = p1
facing=1
Scale = 0.7,0.7
removetime = -2
Pos =20,0
Scale = 1,1
SprPriority = -2

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 7124
ID = 7124
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 7131
ID = 7131
pos = 0,5
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.4,0.4
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 35014
ID = 35014
pos = 0,5
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.4,0.4
sprpriority = -5
ownpal = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 70
freq = 100
ampl = -2
phase = 100

[State 213, Sound]
type = PlaySnd
trigger1 = Time = 0
value = S7,0

[State 213, Sound]
type = PlaySnd
trigger1 = Time = 0
value = S7,5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=88


;-------------------------------------------------------------------------------
[Statedef 3706,--- helper spark]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 6030
ctrl = 0
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -90

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno=!7102 

;-------------------------------------------------------------------------------
[Statedef 3708,--- Helper start ]
type    = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 9999
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
supermove=9999
pausemove=9999


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  parent,stateno!=3702
;-------------------------------------------------------------------------------
[Statedef 3710,--- buso]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim =3710
poweradd = -3500
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 0
time =106
movetime=106
anim = -1
sound = -1
pos = 0,0
darken = 0;1
unhittable = 1
p2defmul = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 0
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 100, Explod]
type = Explod
trigger1 = animelem=6
anim = 6331
ID = 6331
pos = 0,-35
postype = p1
bindtime = 1
removetime = -2
scale = 0.8,0.8
sprpriority = 4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=6
helpertype = normal
name = "Ring 1"
ID = 6220
stateno =  6220
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=6
helpertype = normal
name = "Ring 2"
ID =  6230
stateno = 6230
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=6
helpertype = normal
name = "Ring 3"
ID =  6240
stateno = 6240
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = animelem=6
anim = 6050
ID = 6050
pos = 20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing=-1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = animelem=6
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time>54&& time <70
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State -3, Helper]
type = Helper
trigger1 = animelem=6
helpertype = normal
name = "floor I"
ID = 5633
stateno = 5633
pos = 0,-3
postype = p1
facing = 1
ownpal = 1
supermovetime =9999
pausemovetime =9999
ignorehitpause =1
persistent=0

[State 3000,EnvShake]
type = EnvShake
trigger1 =  animelem=6
time = 20
freq = 120
ampl = 5
phase = 120

[State 1000, EnvColor]
type = EnvColor
triggerall =  animelem=6
trigger1 = 1
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal
name = "haki"
ID = 3721
stateno =3721
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.58

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1
value = S3,33

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=2
value = S1,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=2
value = S3,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=3
value = S4,114

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=6
value = S8,16
volumescale=270

[State 0, changestate rush]
type = changestate
trigger1 =time=106
value = 3700;
ctrl = 0


;-------------------------------------------------------------------------------
[Statedef 3711,--- cámara lenta]
type    = S
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3

[State 999, Cámara lenta]
type = Pause
trigger1 = time = [0,50]
time = 2
movetime = 0

[State 999, DestroySelf]
type = DestroySelf
trigger1 = time = 50

;---------------------------------------------------------------------------
[Statedef 3720,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  100

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing = -1
pos = 0,-39
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 =(parent, stateno != 3700 )


;-------------------------------------------------------------------------------
[Statedef 3721,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  100

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing = -1
pos = 0,-39
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =(parent, stateno != 3710 )

;-------------------------------------------------------------------------------
[Statedef 3725,--- haki attack]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  104

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing = -1
pos = 13,-10
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =(parent, stateno != 3702 )
;-------------------------------------------------------------------------------




;=================================================================
;=================================================================
[StateDef 3800, MAKYUUSEN - Busoshoku]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -4000
sprpriority = 2

[State 0, LifeSet]
type = LifeSet
triggerall =life>50
trigger1 = time=0
value = 50

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 0
time =106
movetime=106
anim = -1
sound = -1
pos = 0,0
darken = 0;1
unhittable = 1
p2defmul = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 0
time =1
add = -80,-80,-80

[State 0, AllPalFX]
type = BGPalFX
trigger1 = Time > 0
trigger1 = time%5=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 100, Explod]
type = Explod
trigger1 = animelem=11
anim = 6331
ID = 6331
pos = 0,-35
postype = p1
bindtime = 1
removetime = -2
scale = 0.8,0.8
sprpriority = 4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "Ring 1"
ID = 6220
stateno =  6220
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "Ring 2"
ID =  6230
stateno = 6230
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "Ring 3"
ID =  6240
stateno = 6240
pos = -1,-35
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = animelem=11
anim = 6050
ID = 6050
pos = 20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing=-1
supermovetime=9999
pausemovetime=9999

[State 100, Explod]
type = Explod
trigger1 = animelem=11
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = -4
ownpal = 1
facing = 1
supermovetime=9999
pausemovetime=9999

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time>60 && time <73
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State -3, Helper]
type = Helper
trigger1 = animelem=11
helpertype = normal
name = "floor I"
ID = 5633
stateno = 5633
pos = 0,-3
postype = p1
facing = 1
ownpal = 1
supermovetime =9999
pausemovetime =9999
ignorehitpause =1
persistent=0

[State 3000,EnvShake]
type = EnvShake
trigger1 =  animelem=11
time = 20
freq = 120
ampl = 5
phase = 120

[State 1000, EnvColor]
type = EnvColor
triggerall =  animelem=11
trigger1 = 1
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = animelem=14
helpertype = normal
name = "haki"
ID = 3810
stateno =3810
pos =-31,-42
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, Helper]
type = Helper
trigger1 = animelem=14
helpertype = normal
name = "haki"
ID = 3810
stateno =3810
pos =27,-42
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, Helper]
type = Helper
trigger1 = animelem=14
helpertype = normal
name = "haki"
ID = 3810
stateno = 3810
pos =34,-37
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.72

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=8
value = S4,114

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=11
value = S8,16
volumescale=270

[State 699, end]
type = ChangeState
trigger1 = AnimTime = 0
value =3801 
ctrl = 0
;-------------------------------------------------------------------------------


;-------------------------------------------------------------------------------
[Statedef 3801,--- start]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3801

[State 100, SuperPause]
type = SuperPause
trigger1 =time=0
time = 290;
movetime = 290;
persistent=1
anim = -1
sound =-1
pos = 0,0
darken = 0
unhittable = 1
p2defmul = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = time%9=0
trigger1 = time>=34
value = 3,1,1
time = 5
under = 1
ignorehitpause=1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time > 34
time =1
add = -80,-80,-80

[State 3000: EnvShake]
type = EnvShake
trigger1 = (AnimElem = 1)
time = 20
freq = 120
ampl = -2
phase = 50

;***********------"mugshot"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50003) 
trigger1 = !time
helpertype = normal ;player
name = "mugshot"
ID = 50003
stateno = 50003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot"-----------**********


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
FLAG = nomusic

[State -3, AfterImage]
type = AfterImage
trigger1 = time = 20
time = 100
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

[State 60, Helper ashura]
type = Helper
trigger1=time=35
helpertype = normal
name = "Ashura ghost"
ID = 3809
stateno = 3809
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal =1
supermovetime=9999
pausemovetime=9999

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 10016
ID = 8503
pos = 0,2
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime=9999
pausemovetime=9999
scale = .3,.3
sprpriority = 5
ownpal = 1

;imagen ashura--------------
[State 4, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3150
ID = 31500
pos = 4,6
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime= 230
scale = 1,1
removeongethit = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause  = 1

[State 4, PlaySnd - Ashura fx]
type = PlaySnd
trigger1 = time=20
value = S4,101
channel=0

[State 4, PlaySnd -fx]
type = PlaySnd
trigger1 = animelem=10
value = S8,24
volumescale=660

[State 700, attack]
type = ChangeState
trigger1=time=269
value = 3802
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3802,--- attack]
type = A
movetype = A
physics = N
velset = 9,0
ctrl = 0
anim = 3802

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 31500

[State 2, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8503

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -5

[State -3, AfterImage]
type = AfterImage
trigger1 = time = 4
time = -1
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
length = 15
trans = add
ignorehitpause=1

[State 210, 1]
type = HitDef
trigger1 = animelem=1 ||animelem=3||animelem=5 || animelem=7 ||animelem=9||animelem=11 ||animelem=13||animelem=15 || animelem=17 ||animelem=19||animelem=21||animelem=23 || animelem=25 ||animelem=27
attr = A, HA
animtype = hard
damage = 25,20
guardflag = MA
priority = 7,hit
;pausetime =  ifelse(hitcount<2,9,ifelse(hitcount<5,6,ifelse(hitcount<9,3,1)))  ,  ifelse(hitcount<2,9,ifelse(hitcount<5,6,ifelse(hitcount<9,3,1)))
pausetime =ifelse(hitcount < 2,9,ifelse(hitcount < 5,6,1)),10
guard.pausetime=2,35
sparkno = -1
guard.sparkno = -1;s7000
sparkxy = -20,-30
hitsound = S3,12
guardsound = S3,25
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -3,-6
air.velocity = -3,-4
fall = 0
p2stateno = 5862
;envshake.freq =  ifelse(hitcount < 2,30,ifelse(hitcount < 5,70,ifelse(hitcount <9,100,160)))
;envshake.ampl =  ifelse(hitcount < 2,-4,ifelse(hitcount < 5,-8,ifelse(hitcount <9,-10,-14)))
envshake.freq = ifelse(hitcount < 2,30,ifelse(hitcount < 5,50,90));30
envshake.ampl =  ifelse(hitcount < 2,-4,ifelse(hitcount < 4,-6,ifelse(hitcount <7,-8,-8)))
envshake.time = 15

envshake.time = 10
kill = 0
fall.recover =0
getpower = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = movecontact=1
time = 1
pos = 5,0

[State 0, Helper]
type = Helper
triggerall = Numexplod(8200) = 0
trigger1 = moveguarded=1 && numenemy
helpertype =normal
name = "sparkGuard"
ID = 8200
stateno = ifelse(random>500,8200,8201)
pos = 20-5+random%20, -37-10+random%20
postype = p2
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1

[State 0, Helper spark]
type = Helper
;triggerall = Numhelper(8101) = 0
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8001;8101
stateno =IfElse(Random < 500,8001,8101)
pos = 5-10+random%20, -30-10+random%20
postype = p2
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1
size.xscale = IfElse(Random < 500,.5,.9)
size.yscale = IfElse(Random < 500,.5,.9)


[State 200, Spark blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random%2,7160,ifelse(random%2,7161,7162))
ID = 7160
pos = 5-10+random%20, -Random%EnemyNear,Const(size.height);5-10+random%20,10-40+random%20
postype = p2
facing = IfElse(Random <= 499,1,-1);1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = IfElse(Random <= 499,.6,.7),IfElse(Random <= 499,.6,.7)
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0

[State 200, floor blood]
type = Explod
trigger1 = movehit  && p2movetype=H
trigger1 = target,time=0
anim = 7165
ID = 7165
pos = 0,floor(pos y=0)
postype = p2
facing = 1
sprpriority = 2
supermove = 1
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.3
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
;persistent = 0


;-------rush-FX-------------
[State 100, Explod]
type = Explod
trigger1 = time=0
anim = 6050
ID = 6050
pos = 0,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -44,-47
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -40,-20
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 60, Arena Grande atras]
type = Explod
trigger1 = time=0
anim = 7129
ID =  7129
pos = 50,-7
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime =9999
scale = .8, .8
sprpriority = 3
ontop = 0
;shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 60, Arena Grande atras]
type = Explod
triggerall=time<100
trigger1 = time%8 = 0
anim = 7102
ID =  7102
pos = 50,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 0.5, 0.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 0, Explod viento]
type = Explod
trigger1 = time%9 = 0
anim = 7136
ID = 7136
pos =30,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 9999
pausemovetime=9999
scale = .5,.5
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause =1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time>0
anim = 7145
id = 7145
postype = p1
pos = 35,0
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 3000, corte - FX]
type = Explod
triggerall=time<135
trigger1 = time%6 = 0
anim = 818
ID = 818
pos = 10,-10
facing = 1
vfacing = 1
sprpriority = 1
removetime = 25;-2
bindtime = 1
ownpal = 1
scale = 0.3,0.65
removeongethit = 1
ontop = 0
ignorehitpause  = 1
supermovetime = 0;9999
pausemovetime =0;9999
;
[State 3000, corte - FX]
type = Explod
triggerall=time<133
trigger1 = time%6 = 5
anim = 818
ID = 818
pos = 10,-70
facing = -1
vfacing = -1
sprpriority = 20
removetime = 25;-2
bindtime = 1
ownpal = 1
scale = 0.3,0.65
removeongethit = 1
ontop = 0
ignorehitpause  = 1
supermovetime = 0;9999
pausemovetime =0;9999


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S0,4

[State 0, PlaySnd]
type = PlaySnd
trigger1= time>0
trigger1 = time%10=0
value = S3,0

[State 210, 2]
type = PlaySnd
trigger1 = time>4
trigger1 = time%10=0
value = S2,2

[State 200, attack - 2]
type = ChangeState
trigger1 = movecontact && animtime=0
value = 3803
ctrl = 0

[State 200, off]
type = ChangeState
trigger1 = !movecontact && time>=45
value = 3807
ctrl = 0

;-------------------------------------------------------------------------------
[StateDef 3803,--- rush]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3803

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Add"
ID = 3805
stateno =3805
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 1
pos = 5,0

[State 1, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 1, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3150

[State 2, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8503

[State -3, AfterImage]
type = AfterImage
trigger1 = time =4
time = 30
length = 4
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 1
trans = add

;------rush---------------
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10

[State 0, Trans]
type = Trans
trigger1 = time = [4, 8]
trans = addalpha
alpha = (time-21)*32, 256-(time-21)*32
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time = [6, 16]
x = 28

[State 702, VelAdd]
type = Veladd
trigger1 = time = [6, 16]
x = 0.6

[State 2750, PlayerPush]
type = PlayerPush
trigger1 = time = [9, 16]
value = 0
ignorehitpause = 1

[State 702, VelAdd]
type = Veladd
triggerall = vel x > 0
trigger1 = animelem = 6
x = -0.05
;------rush---------------

[State 702, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = AnimElem = 4 || AnimElem = 5
attr = S, HA
priority = 7,hit
animtype  = hard
damage    = 230
guardflag =
pausetime = 0,150
sparkno = -1;s6000
guard.sparkno = -1;s7000
sparkxy = -25,-25
hitsound   = S3,15
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
kill=0
hitonce=1
numhits=0
fall.recover =0
getpower=0

[State 0, Helper]
type = Helper
triggerall = Numhelper(8107) = 0
triggerall = movehit=1  && p2movetype=H
trigger1 = target,time=0
helpertype = normal
name = "HitSpark"
ID = 8107
stateno =ifelse(random>500,8107,8007)
pos = 45, -24
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1

[State 200, Spark blood]
type = Explod
trigger1 = movehit=1  && p2movetype=H
anim = 7164
ID = 7160
pos = 5,-28
postype = p2
facing = -1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = -1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime =9999
pausemovetime =9999
ignorehitpause  = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1=movehit=1 && p2movetype=H
helpertype = normal
name = "Slice"
ID = 200
stateno = 40005
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 55

;----rush-FX----------
[State 100, Explod]
type = Explod
trigger1 = time=0
anim = 6050
ID = 6050
pos = -20,-5
postype = p1
bindtime = 1
removetime = -2
scale = 0.25,0.25
sprpriority = 4
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -44,-35
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 100, Dash]
type = Explod
trigger1 = time=0
anim = 6005
id = 6005
pos = -40,-8
postype	= p1
facing = 1
vfacing	= 1
bindtime = -1
sprpriority = 3
vel = 0,0
removetime = -2
accel = 0,0
scale  = .25,.25
ontop = 0
ownpal = 1

[State 0, Explod smallRocks] 
type = Explod
trigger1 = time <30
anim = 7145
id = 7145
postype = p1
pos = 35,floor(pos y)
facing = ifelse(random%2,1,-1)
vel = Random/(-120),Random/(-120)
accel = 0,.5
scale = IfElse(Random <= 499,.02,.01),IfElse(Random <= 499,.02,.01)
sprpriority = ifelse(random%2,3,ifelse(random%2,27,ifelse(random%2,25,ifelse(random%2,10,-1))))
pausemovetime = 9999
supermovetime = 9999
removeongethit = 1

[State 3000, polvo Rush - FX]
type = Explod
triggerall = time>5 && time <18
trigger1 = time%1=0
anim = 7140
ID = 7140
pos = 20,floor(pos y)
vel = 0, 0
sprpriority = 4
supermove = 1
removetime = -2
bindtime = 1
ownpal = 1
scale = .3,.2
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1
facing=-1

[State 3000, Rush - FX]
type = Explod
triggerall = time>6 && time <18
trigger1 = time%1=0
anim = 809
ID = 809
pos = 0,-25
sprpriority = -2
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.9,0.9
removeongethit = 1
ontop = 0
supermovetime = 999
ignorehitpause  = 1

[State 0, Explod]
type = Explod
trigger1 = time>6 && time <18
anim = 6019
ID = 6019
pos=0,-20
vel =-3,0
Random=40,40
bindtime = 1
sprpriority = 11
RemoveTime = -2
ownpal = 1
scale = 0.1,.1

[State 0, Explod]
type = Explod
trigger1 = Time<7
anim = 6021
ID = 6021
pos=0,-20
vel =-2,0
Random=40,40
bindtime = 1
sprpriority = -5+Random%11
RemoveTime = -2
ownpal = 1
scale = 0.1+((Random/1500.0)*0.3),0.3*(0.1-Time/10.0)

;----rush-FX----------

[State 60, Corte FX]
type = Explod
trigger1 = animelem=4
anim = 819
ID =  819
pos = 50,-36
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime =-2
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 60, Corte FX]
type = Explod
trigger1 = animelem=6
anim = 819
ID =  819
pos = 50,-27
postype = p1 
facing = 1
vfacing = 1
bindtime = -1
removetime =-2
supermovetime = 9999
pausemovetime = 9999
scale = .9,.9
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = movehit = 1  && p2movetype=H
trigger1 = target,time=0
anim = ifelse(random>=500,6182,6183)
ID = 6182
pos = 0,145
postype = front
facing = -facing
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,24

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2,16

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit && p2movetype=H
trigger1 =time%3=0
value = S3,13

[State -1, Ashura Ichibugin attack 2]
type = ChangeState
trigger1 = movehit  && p2movetype=H
trigger1 = AnimTime = 0
value = 3804

[State 0, ChangeState-fail]
type = ChangeState
triggerall = !movehit
trigger1=time = 50
value = 3104
ctrl = 0

;-------------------------------------------------------------------------------



;-------------------------------------------------------------------------------
[Statedef 3804,--- final attack]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3804

;--------haki--------------
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3811
stateno =3811
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.62

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3816
stateno =3816
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.45

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3812
stateno =3812
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.62

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3817
stateno =3817
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3813
stateno =3813
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.50

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3814
stateno =3814
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.45

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3815
stateno =3815
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.45

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3818
stateno =3818
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "haki"
ID = 3819
stateno =3819
pos =0,0
postype = p1
facing = -1
ownpal = 1
supermovetime=9999
pausemovetime=9999
size.xscale=.35
size.yscale=.3


;--------haki--------------
;------------------
[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Effects"
ID = 3008
stateno =3008
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999

[State 0, Helper]
type = Helper
trigger1 = time = 90
helpertype = normal
name = "Arc Slice"
ID = 3806
stateno = 3806
pos = floor(target,screenpos x),floor(target,pos y)
postype = left
facing = 1
ownpal = 1

[State 3000, Cámara lenta]
type = Pause
trigger1 = time = [20, 25]
time = 2
movetime = 0

;imagen ashura--------------
[State 4, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3150
ID = 31500
pos = 9,26
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime= 125
scale = 1,1
removeongethit = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S4,104
channel=0

[State 0, off]
type = changestate
trigger1 = time >= 125
value = 3005
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3805,--- fade fx]
type    = A
movetype = H
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3

[state 6000, BG,Background]
type = BGpalfx
trigger1 = time = 0
add=0,0,0
sinadd = -256,-256,-256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 15
add=-256,-256,-256
time = 35
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state 6000, BG]
type = BGpalfx
trigger1 = time = 50
add=-256,-256,-256
sinadd = 256,256,256, 60
time = 15
invertall = 0
persistent = 0
ignorehitpause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999


[State 1650, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3803


;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[Statedef 3806,--- Arc Slice]
type = S
movetype = A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7

[State 200, 1]
type = HitDef
trigger1 = time = 6
attr = S, HA
damage = 170;,0
animtype  = Up
;guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S3,22
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -14;-11
air.velocity =0,-12;-9
air.type = Low
air.hittime = 12
yaccel=.8
hitonce=1
numhits=0
fall=1
fall.recover=0
p2stateno=5800
getpower=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 6
freq = 15
ampl = 40
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 6
time = 20
freq = 110
ampl = -7
phase = 90

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 26
time = 20
freq = 110
ampl = -4
phase = 90

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 3
helpertype = normal
name = "HitSpark"
ID = 8101
stateno = 8101
pos = 0, -30
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=2.0
size.yscale=2.0

[State 0, Helper]
type = Helper
trigger1 = time = 6
helpertype = normal
name = "HitSpark"
ID = 8103
stateno = 8103
pos = 0, -30
postype = p2
facing = 1
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=3.0
size.yscale=3.0

[State 200, Spark blood]
type = Explod
trigger1 = time = 6
anim = 7163
ID = 7163
pos = 25, 14
postype = p2
facing = 1
sprpriority = IfElse(Random <= 499,3,4)
removetime = -2
bindtime = 1
ownpal = 1
scale = .5,.5
removeongethit = 1
ontop = 0
supermovetime = 0
pausemovetime=0
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=6
value = S8,23
volumescale=330
ignorehitpause=1

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 0
trigger2 = time = 3
trigger3 = time = 6
value = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time = 0
trigger2 = time = 3
trigger3 = time = 6
time = 2
add = 200,200,200
mul = 256,256,256
ignorehitpause=1

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 10


;--------------------------------------------------------------------------------
[Statedef 3807,--- off fail]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3807

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PosAdd]
type = Posset
trigger1 = time = 0
y = 0

;-------RUN--------------
[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 7

[State 0, VelMul]
type = VelMul
trigger1 = time > 0
x = 0.85
;-----------------------

[State 101, PlaySnd]
type =  PlaySnd
trigger1 = Animelem = 1
value =S1,4
persistent = 0

[State 101, Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprpriority = 3
postype = p1
pos = 20, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime=0
value = 3005
ctrl = 0

;----------------------------------------------------------
[StateDef 3809,--- ghost]
type = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3809
sprpriority = 1


[State 3105, DestroySelf]
type = DestroySelf
trigger1 = animtime=0 || parent, stateno!=3801


;--------------------------------------------------------------------
[Statedef 3810,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  90

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3800)

;-------------------------------------------------------------------------------
[Statedef 3811,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  90

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =1
pos  = 30,-28
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[Statedef 3812,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  100

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =1
pos  = 44,-19
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
[Statedef 3813,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  75

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =-1
pos  = -10,-22
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
[Statedef 3814,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  221

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =-1
pos  = -8,-54
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------

[Statedef 3815,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -138

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =1
pos  = 13,-37
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------

[Statedef 3816,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  175

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =-1
pos  = -8,-34
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------

[Statedef 3817,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  50

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =-1
pos  = 6,-21
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------

[Statedef 3818,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -75

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =-1
pos  = 6,-44
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------
[Statedef 3819,--- haki]
type = S
physics = S
ctrl = 0
anim = 817
sprpriority = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 0
value =  -60

[State 0, BindToParent]
type = BindToParent
trigger1 =1
time = 1
facing =1
pos  = 6,-45
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1=(parent, stateno != 3804)
;-------------------------------------------------------------------------------

;end!!!!!!!!!