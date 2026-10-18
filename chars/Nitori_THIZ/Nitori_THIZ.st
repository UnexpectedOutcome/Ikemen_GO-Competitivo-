;---------------------------------------------------------------------------
; Lose
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, ASS]
type = assertspecial
trigger1 = time<180
flag = roundnotover

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, Generic Win Quote]
type = victoryquote
trigger1 = Time = 0
value = 1+(random%2)

[State 180, Marisa IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Marisa_THIZ"
value = 3
[State 180, Reimu IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Reimu_THIZ"
value = 4
[State 180, Sakuya IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Sakuya_THIZ"
value = 5
[State 180, Yukari IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Yukari_THIZ"
value = 6
[State 180, Tenshi IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Tenshi_THIZ"
value = 7
[State 180, Reisen IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Reisen_THIZ"
value = 8
[State 180, Iku IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Iku_THIZ"
value = 9
[State 180, Meiling IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Meiling_THIZ"
value = 10
[State 180, Youmu IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Youmu_THIZ"
value = 11
[State 180, Yuuka IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Yuuka_THIZ"
value = 12

;Season 2
[State 180, Aya IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Aya_THIZ"
value = 13
[State 180, Momiji IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Momiji_THIZ"
value = 14
[State 180, Sanae IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Sanae_THIZ"
value = 15
[State 180, Suwako IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Suwako_THIZ"
value = 16
[State 180, Sumireko IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Sumireko_THIZ"
value = 17

[State 180, Nitori IZ Win Quote]
type = victoryquote
triggerall = numenemy && time = 0
trigger1 = enemy,name = "Nitori_THIZ"
value = 18

[State 180, Reset Generic Win Quote]
type = victoryquote
trigger1 = time = 0
trigger1 = random%2=0
value = 1+(random%2)

;===========================
;SPECIAL CONDITION WINQUOTES
;===========================
;[State 180, Win by 3D Printer Gun KO]
;type = victoryquote
;trigger1 = var(20)=1
;value = 70

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose
[Statedef 181]
type = S
ctrl = 0
anim = 18100;+10;*(random%2)
velset = 0,0

[State 181, ASS]
type = assertspecial
trigger1 = time<180
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, PSND]
type = playsnd
triggerall = anim = 18100
trigger1 = animelemtime(6)=0
trigger2 = animelemtime(6)=30
trigger3 = animelemtime(6)=60
trigger4 = animelemtime(6)=90
trigger5 = animelemtime(6)=120
value = 18100,10

[State 2000, Spellcard Effect]
type = helper
triggerall = anim = 18100
trigger1 = animelemtime(6)=0
trigger2 = animelemtime(6)=30
trigger3 = animelemtime(6)=60
trigger4 = animelemtime(6)=90
trigger5 = animelemtime(6)=120
helpertype = normal
name = "Firework"
id = 20180
stateno = 20180
pos = 0,-80
postype = p1
ownpal = 1
facing = 1
size.xscale = 0.4
size.yscale = 0.4

[State 181, PSND]
type = playsnd
triggerall = anim=18110
trigger1 = animelemtime(4)=0
trigger2 = animelemtime(7)=0
value = 18110,10
channel = 1

;---------------------------------------------------------------------------
; Win Fireworks
[Statedef 20180]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 18101
ctrl = 0
sprpriority = 5

[State 0, AngleSet]
type = varset
trigger1 = time = 0
var(1)=90+30-floor(61.0*random/1000.0)

[State 0, VelSet]
type = VelSet
trigger1 = 1 
x = 7.0*cos(var(1)*pi/180.0)
y = -7.0*sin(var(1)*pi/180.0)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20180, CS]
type = changestate
trigger1 = time>=14
value = 20181

[State 1315, AD]
type = angledraw
trigger1 = 1
value = var(1)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Win Fireworks
[Statedef 20181]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 18102
ctrl = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 18100,11

[State 1315, Trans]
type = trans
trigger1 = time <= 40
trans = addalpha
alpha = 256-64*(time%4<2),256
ignorehitpause = 1
[State 1315, Trans]
type = trans
trigger1 = time > 40
trans = addalpha
alpha = 256-floor(256.0*(time-40)/20.0),256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20180, CS]
type = destroyself
trigger1 = time>=60

[State 1315, AD]
type = angledraw
trigger1 = 1
scale = ifelse(time<=25,0.5+0.06*time,2.0+0.005*(time-25)),ifelse(time<=25,0.5+0.06*time,2.0+0.005*(time-25))
ignorehitpause = 1

;---------------------------------------------------------------------------
; Pre-intro
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191;+10*(random%3)

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 191]
type = S
ctrl = 0
anim = 1998
velset = 0,0

[State 191, VS]
type = varset
trigger1 = time = 0
var(10) = floor(2.0*random/1000.0)

[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=0
value = 19000
[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=1
value = 19010

[State 191, PSND]
type = playsnd
trigger1 = anim = 19000
trigger1 = animelemtime(3)=0||animelemtime(8)=0||animelemtime(13)=0
value = 19000,10
;[State 191, PSND]
;type = playsnd
;trigger1 = anim = 19000
;trigger1 = animelemtime(7) = 0
;value = 0,2

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
triggerall = animtime=0
trigger1 = anim = 19000
trigger2 = anim = 19010
;trigger3 = anim = 19020
value = 0

[State 2000, Spellcard Effect]
type = helper
triggerall = anim = 19010
trigger1 = time=0
helpertype = normal
name = "Kappaship"
id = 19010
stateno = 19010
pos = 0,-70-60
postype = p1
ownpal = 1
facing = 1

[State 0, Offset]
type = Offset
triggerall = anim = 19010
trigger1 = time=0
trigger2 = time>0
trigger2 = animelemno(0)=[1,3]
x = 0
y = -70+floor(5.0*sin(2.0*time*pi/180.0))-60+cond(time<=60,time,60)

[State 0, Offset]
type = Offset
triggerall = anim = 19010
trigger1 = animelemno(0)=[4,8]
x = 0
y = -70-floor(6.0*animelemtime(4))+floor(0.5*(animelemtime(4)**2))


;---------------------------------------------------------------------------
; Intro Kappaship
[Statedef 19010]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 19011
ctrl = 0
sprpriority = -1

[State 0, VelSet]
type = Veladd
trigger1 = animelemtime(2)>=0
y = -0.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = 2000,11

[State 0, Offset]
type = Offset
trigger1 = animelemno(0)=1
y = 0+floor(5.0*sin(2.0*time*pi/180.0))
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20180, CS]
type = Destroyself
trigger1 = animelemtime(2)>=90

[State 0, BindToRoot]
type = BindToRoot
trigger1 = animelemno(0)=1
pos = 0,-70-60+cond(time<=60,time,60)
ignorehitpause = 1

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 19500;+10*(random%2=0)
velset = 0,0
movetype = I
physics = S
sprpriority = 0

[State 181, Psnd]
type = playsnd
trigger1 = animelemtime(5)=0
value = 0,2

[State 181, Training Mode Spirit Refill]
type = playsnd
trigger1 = animelemtime(5)=0;time = 0
trigger1 = var(10)=2
;trigger1 = var(54)<ceil(lifemax*0.9)
value = 4,3

[State -2, Battery Gauge Increase]
type = varset
trigger1 = animelemtime(5)=0;time = 0
trigger1 = var(10)=2
fvar(15)=1000.0

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = animelemtime(5)=0;time = 0
trigger1 = var(10)=2
trigger1 = var(54)<ceil(lifemax*0.9)
var(54) = ceil(lifemax*0.45)

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------
; WallPort
[Statedef 117]
type    = S
physics = S
ctrl = 0
anim = 105
sprpriority = 1

[State 105, STS]
Type = StateTypeSet
Trigger1 = AnimElemTime(2) = 0
StateType = A
Physics = N

[State 105, INVUL]
type = nothitby
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 300, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 105, 1]
type = VelSet
trigger1 = animelemtime(2) = 0;2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

;[State 105, Grav]
;type = VelAdd
;trigger1 = AnimElemTime(3) >= 0
;trigger1 = Pos Y < 0
;y = .5

[State 100, Snd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = 117,10
persistent = 0

;[State 100, Snd]
;type = PlaySnd
;trigger1 = animelemtime(2) = 0
;trigger1 = random % 2 = 0
;value = 181,3
;channel = 0
;persistent = 0

[State 105, 3]
type = ChangeState
trigger1 = time > 15
value = 118

;-------------------------
; WallPort - Part 2
[Statedef 118]
type    = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 301, PS]
type = posset
trigger1 = time = 0
x = 205*facing
y = -1

[State 1001, T]
type = turn
trigger1 = time = 0

[State 106, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.walk.fwd.x)
y = const(velocity.run.back.y)

[State 301, VA]
type = veladd
trigger1 = 1
y = 0.25

[State 301, SB]
type = screenbound
trigger1 = 1
value = 0

[State 105, 3]
type = ChangeState
trigger1 = time > 0;2
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

