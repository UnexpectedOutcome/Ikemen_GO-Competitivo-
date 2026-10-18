
;====================<MAIN STATE>====================
[Statedef 0]
type=A
physics=N
movetype=I
anim=0
ctrl=0
[State 0, safety]
type=changestate
trigger1=ishelper(1000)
value=1080

[State 0, Thugs]
type=helper
trigger1=roundstate=2
trigger1=numenemy&&numhelper<16
trigger1=var(3)<(numenemy*(roundsexisted+1))
helpertype=player
stateno=1000
ID=1000
name="Thug"
postype=left
ownpal=1

[State 0, ctrl]
type=ctrlset
trigger1=1
value=roundstate>=3
[State 0, sts]
type=statetypeset
trigger1=roundstate>=3
statetype=S
[State 0, dead]
type=changestate
trigger1=!alive
value=5150


;====================<APPEAR>====================
[Statedef 1000]
type=S
physics=S
movetype=I
anim=0
ctrl=0
velset=0,0

[State 1000, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=1070
ignorehitpause=1
[State 1000, hitby]
type=hitby
trigger1=1
value=SCA,AA,AP
time=-1
ignorehitpause=1

[State 1000, thug count]
type=parentvaradd
trigger1=!time
var(3)=1

[State 1000, type]
type=varset
trigger1=1
var(0)=(random%4)
[State 1000, lifemax]
type=varset
trigger1=1
var(1)=root,var(4)

[State 1000, life display]
type=parentvarset
trigger1=1
var(5)=var(1)

[State 1000, bound]
type=screenbound
trigger1=0
value=0
movecamera=0,0

[State 1000, pos]
type=posset
trigger1=numenemy
x=ifelse(enemy,pos x<0,ifelse(random<750,-250,250),ifelse(random<750,250,-250))
y=0
[State 1000, turn]
type=turn
trigger1=frontedgedist<backedgedist

[State 1000, done]
type=changestate
trigger1=var(0)=0||var(0)=1
value=ifelse(random<500,1005,1016)
[State 1000, done]
type=changestate
trigger1=var(0)=2||var(0)=3
value=1016


;====================<JUMP IN>====================
[Statedef 1005]
type=A
physics=N
movetype=I
anim=1005+100*var(0)
velset=0,0

[State 1005, vel]
type=veladd
trigger1=1
y=.465
[State 1005, vel]
type=velset
trigger1=!time
x=4.3125
y=-11.16

[State 1005, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=1006

;-----Land-----
[Statedef 1006]
type=S
physics=S
movetype=I
anim=1006+100*var(0)
velset=0,0
[State 1006, end]
type=changestate
trigger1=!animtime
value=1010


;====================<STANDING>====================
[Statedef 1010]
type=S
physics=S
movetype=I
anim=1010+100*var(0)
velset=0,0

[State 1010, pos]
type=posset
trigger1=!time
y=0
[State 1010, turn]
type=turn
trigger1=p2dist x<0

[State 1000, bound]
type=varset
trigger1=1
var(2)=1

[State 1010, punk attack]
type=changestate
trigger1=var(0)=0||var(0)=1
trigger1=roundstate=2&&random<50
trigger1=p2bodydist x<=30&&p2movetype!=H
value=ifelse(random<333,1022,ifelse(random<500,1021,1020))

[State 1010, fat attack]
type=changestate
trigger1=var(0)=2||var(0)=3
trigger1=roundstate=2&&random<50
trigger1=p2bodydist x<=30&&p2movetype!=H
value=ifelse(random<500,1221,1220)

[State 1010, walk]
type=changestate
trigger1=roundstate=2&&random<50
trigger1=p2bodydist x>30
value=1015+(random<333)


;====================<WALKING>====================
[Statedef 1015]
type=S
physics=N
movetype=I
anim=1015+100*var(0)
velset=0,0

[State 1015, turn]
type=turn
trigger1=p2dist x<0

[State 1015, vel]
type=velset
trigger1=1
x=3

[State 1015, end]
type=changestate
trigger1=roundstate!=2
trigger2=p2bodydist x<=30
value=1010


;-----Run-----
[Statedef 1016]
type=S
physics=N
movetype=I
anim=1016+100*var(0)
velset=0,0

[State 1016, vel]
type=velset
trigger1=var(0)=0||var(0)=1
x=8.5
[State 1016, vel]
type=velset
trigger1=var(0)=2||var(0)=3
x=5.5

[State 1016, end]
type=changestate
trigger1=roundstate!=2
trigger2=time>=21||p2dist x<0
value=1010


;====================<ATTACK>====================
;-----Punk Weak Punch-----
[Statedef 1020]
type=S
physics=S
movetype=A
anim=1020+100*var(0)
velset=0,0
sprpriority=1
facep2=1

[State 1020, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA
hitflag=MAF
guardflag=MA
priority=2,Hit
damage=14,0
getpower=0,0
givepower=50,50
pausetime=9,9
guard.pausetime=9,9
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=7
ground.slidetime=7
guard.hittime=9
air.hittime=0
airguard.ctrltime=16
ground.velocity=-8,0
guard.velocity=-12
air.velocity=-4.16,-9.7
airguard.velocity=-7.5,-1.5
ground.cornerpush.veloff=-12
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
yaccel=.5
fall=0
fall.recover=1
fall.recovertime=0
sparkno=0
guard.sparkno=40
sparkxy=-10,-80
hitsound=5,0
guardsound=6,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
volume = 800

[State 1020, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I
[State 1020, end]
type=changestate
trigger1=!animtime
value=1010


;-----Punk Strong Punch-----
[Statedef 1021]
type=S
physics=S
movetype=A
anim=1021+100*var(0)
velset=0,0
sprpriority=1
facep2=1

[State 1021, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA
hitflag=MAF
guardflag=MA
priority=2,Hit
damage=23,0
getpower=0,0
givepower=50,50
pausetime=14,14
guard.pausetime=14,14
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=7
ground.slidetime=7
guard.hittime=9
air.hittime=0
airguard.ctrltime=16
ground.velocity=-8,0
guard.velocity=-12
air.velocity=-4.16,-9.7
airguard.velocity=-7.5,-1.5
ground.cornerpush.veloff=-12
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
yaccel=.5
fall=0
fall.recover=1
fall.recovertime=0
sparkno=0
guard.sparkno=40
sparkxy=-10,-55
hitsound=5,1
guardsound=6,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
volume = 800

[State 1021, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I
[State 1021, end]
type=changestate
trigger1=!animtime
value=1010


;-----Punk Kick-----
[Statedef 1022]
type=S
physics=S
movetype=A
anim=1022+100*var(0)
velset=0,0
sprpriority=1
facep2=1

[State 1022, hit]
type=hitdef
trigger1=animelem=5
attr=C,NA
hitflag=MAF
guardflag=L
priority=2,Hit
damage=20,0
getpower=0,0
givepower=50,50
pausetime=14,14
guard.pausetime=14,14
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Trip
air.type=Trip
ground.hittime=7
ground.slidetime=7
guard.hittime=9
air.hittime=0
airguard.ctrltime=16
ground.velocity=-3.33,-6
guard.velocity=-12
air.velocity=-3.33,-6
airguard.velocity=-7.5,-1.5
ground.cornerpush.veloff=-12
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
yaccel=.5
fall=1
fall.recover=0
sparkno=0
guard.sparkno=40
sparkxy=-10,-8
hitsound=5,1
guardsound=6,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
volume = 800

[State 1022, sts]
type=statetypeset
trigger1=animelemtime(6)>=0
movetype=I
[State 1022, end]
type=changestate
trigger1=!animtime
value=1010


;-----Fat Ass Weak Punch-----
[Statedef 1220]
type=S
physics=S
movetype=A
anim=1020+100*var(0)
velset=0,0
sprpriority=1
facep2=1

[State 1220, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA
hitflag=MAF
guardflag=MA
priority=2,Hit
damage=40,0
getpower=0,0
givepower=50,50
pausetime=9,9
guard.pausetime=9,9
animtype=Heavy
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=7
ground.slidetime=7
guard.hittime=9
air.hittime=0
airguard.ctrltime=16
ground.velocity=-8,0
guard.velocity=-12
air.velocity=-4.16,-9.7
airguard.velocity=-7.5,-1.5
ground.cornerpush.veloff=-12
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
yaccel=.5
fall=0
fall.recover=1
fall.recovertime=0
sparkno=0
guard.sparkno=40
sparkxy=-10,-62
hitsound=5,0
guardsound=6,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,6
volume = 800

[State 1220, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I
[State 1220, end]
type=changestate
trigger1=!animtime
value=1010


;-----Fat Ass Strong Punch-----
[Statedef 1221]
type=S
physics=S
movetype=A
anim=1021+100*var(0)
velset=0,0
sprpriority=1
facep2=1

[State 1221, hit]
type=hitdef
trigger1=animelem=2
attr=S,NA
hitflag=MAF
guardflag=MA
priority=2,Hit
damage=50,0
getpower=0,0
givepower=50,50
pausetime=14,14
guard.pausetime=14,14
animtype=Heavy
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=7
ground.slidetime=7
guard.hittime=9
air.hittime=0
airguard.ctrltime=16
ground.velocity=-8,0
guard.velocity=-12
air.velocity=-4.16,-9.7
airguard.velocity=-7.5,-1.5
ground.cornerpush.veloff=-12
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
yaccel=.5
fall=0
fall.recover=1
fall.recovertime=0
sparkno=0
guard.sparkno=40
sparkxy=-10,-68
hitsound=5,1
guardsound=6,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,7
volume = 800

[State 1221, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I
[State 1221, end]
type=changestate
trigger1=!animtime
value=1010


;====================<GET HIT>====================
[Statedef 1070]
type=U
physics=N
movetype=H
velset=0,0
facep2=1
[State 1070, life]
type=lifeset
trigger1=1
value=lifemax

[State 1070, anim]
type=changeanim
trigger1=!time
value=1070+5*(gethitvar(groundtype)=2)+100*var(0)

[State 1070, anim]
type=changeanim
trigger1=1
value=anim

[State 1070, damaged]
type=varadd
trigger1=gethitvar(damage)
var(1)=-gethitvar(damage)
persistent=0
[State 1070, life display]
type=parentvarset
trigger1=gethitvar(damage)
var(5)=var(1)
persistent=0

[State 1070, end]
type=changestate
trigger1=var(1)<=0
trigger2=statetype=A||gethitvar(yvel)||gethitvar(fall)
value=1080

[State 1070, end]
type=changestate
trigger1=hitshakeover
value=1071


;-----Sliding-----
[Statedef 1071]
type=S
physics=S
movetype=H
velset=0,0
[State 1071, life]
type=lifeset
trigger1=1
value=lifemax

[State 1071, anim]
type=changeanim
trigger1=!time
value=anim+1

[State 1071, vel]
type=hitvelset
trigger1=!time
x=1
y=1

[State 1071, end]
type=changestate
trigger1=hitover
value=1010


;-----Falling-----
[Statedef 1080]
type=A
physics=N
movetype=H
anim=0
velset=0,0
[State 1080, life]
type=lifeset
trigger1=1
value=lifemax

[State 1080, nothitby]
type=nothitby
trigger1=1
value=SCA,AA,AP,AT
time=-1
ignorehitpause=1

[State 1080, thug count]
type=parentvaradd
trigger1=!time
var(3)=-1
[State 1080, score]
type=parentvaradd
trigger1=!time
trigger1=roundstate=2
var(1)=1

[State 1080, snd]
type=playsnd
trigger1=!time
trigger1=var(1)<=0
value=0,1
channel=1

[State 1080, helper]
type=helper
trigger1=!time
helpertype=normal
stateno=1090
ID=1090
name="KO Thug"
postype=p1
ownpal=1

[State 1080, end]
type=destroyself
trigger1=time


;-----Falling-----
[Statedef 1090]
type=A
physics=N
movetype=H
anim=0
velset=0,0
[State 1090, nothitby]
type=nothitby
trigger1=1
value=SCA,AA,AP,AT
time=-1
ignorehitpause=1

[State 1090, anim]
type=varset
trigger1=!time
trigger1=playerIDexist(parent,ID)
var(0)=parent,var(0)
[State 1090, anim]
type=changeanim
trigger1=!time
value=1090+100*var(0)

[State 1090, grav]
type=veladd
trigger1=1
y=.6
[State 1090, vel]
type=velset
trigger1=!time
x=-1
y=-12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
volume = 800

[State 1090, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>=0
value=1091


;-----Hit Ground-----
[Statedef 1091]
type=L
movetype=H
physics=N
anim=1091+100*var(0)
velset=0,0
[State 1091, life]
type=lifeset
trigger1=1
value=lifemax

[State 1091, pos]
type=posset
trigger1=!time
y=0

[State 1091, vel]
type=veladd
trigger1=1
y=.4
[State 1091, vel]
type=velset
trigger1=!time
x=-2.5
y=-5

[State 1091, end]
trigger1=vel y>0
trigger1=pos y>=0
type=changestate
value=1092


;-----Dead-----
[Statedef 1092]
type=L
movetype=H
physics=N
anim=1092+100*var(0)
velset=0,0
[State 1092, life]
type=lifeset
trigger1=1
value=lifemax

[State 1092, pos]
type=posset
trigger1=!time
y=0

[State 1092, shake]
type=envshake
trigger1=!time
time=10
ampl=2

[State 1092, snd]
type=playsnd
trigger1=!time
value=f7,0
[State 1092, fx]
type=gamemakeanim
trigger1=!time
value=60
pos=0,0
under=1

[State 1092, fade]
type=trans
trigger1=time=[120,150]
trans=addalpha
alpha=256-ceil(8.53*(time-120)),ceil(8.53*(time-120))
[State 1092, gone]
type=destroyself
trigger1=time>=150


;====================<DEAD>====================
[Statedef 5150]
type=A
movetype=H
physics=N
anim=0
[State 5150, override]
type=changestate
trigger1=ishelper
value=1080
[State 5150, hurt]
type=lifeadd
trigger1=!time
value=-life
kill=1


;==========<COMMON ERASE>==========
[Statedef 10]
[State 10, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)
[Statedef 11]
[State 11, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)
[Statedef 12]
[State 12, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)

[Statedef 20]
[State 20, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)

[Statedef 40]
[State 40, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)
[Statedef 50]
[State 50, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)
[Statedef 51]
[State 51, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)
[Statedef 52]
[State 52, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)

[Statedef 45]
[State 45, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)

[Statedef 100]
[State 100, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)
[Statedef 105]
[State 105, end]
type=changestate
trigger1=1
value=ifelse(ishelper(1000),1080,0)


;==========<Initialize>==========
[Statedef 5900]
type=A
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
value=0
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
fvalue=0

[State 5900, reset score]
type=varset
trigger1=1
var(1)=0
[State 5900, reset thugs]
type=varset
trigger1=1
var(3)=0

[State 5900,end]
type=changestate
trigger1=1
value=5901


;====================<INTRO>====================
;-----Wait-----
[Statedef 189]
type=S
physics=N
movetype=I
ctrl=0
velset=0,0
[State 189, intro]
type=assertspecial
trigger1=1
flag=intro
flag2=nomusic

[State 189, end]
type=changestate
trigger1=numenemy
trigger1=enemy,stateno=0
trigger2=time>=300
value=190


;-----Message-----
[Statedef 190]
type=S
physics=N
movetype=I
ctrl=0
velset=0,0
[State 190, intro]
type=assertspecial
trigger1=1
flag=intro
flag2=nomusic

;[State 190, bg]
type=envcolor
trigger1=1
value=255,255,255
[State 190, snd]
type=playsnd
trigger1=time=5&&roundno=1
value=0,0
channel=1
[State 190, text]
type=explod
trigger1=!time&&roundno=1
anim=190
ID=190
sprpriority=3
postype=left
pos=160,120
bindtime=-1
removetime=-1
ontop=1
ownpal=1

[State 190, end]
type=removeexplod
trigger1=time>=240
trigger1=numexplod(190)
ID=190
[State 190, end]
type=changestate
trigger1=time>=240
value=191

;-----Wait-----
[Statedef 191]
type=A
physics=N
movetype=I
anim=0
ctrl=0
[State 191, end]
type=changestate
trigger1=ctrl
value=0


;====================<TIME OVER>====================
[Statedef 170]
physics=N
movetype=I
ctrl=1
[State 170, end]
type=changestate
trigger1=1
value=5150

[Statedef 175]
physics=N
movetype=I
ctrl=1
[State 175, end]
type=changestate
trigger1=1
value=5150


;====================<WIN>====================
[Statedef 180]
physics=N
movetype=I
ctrl=0
[State 180, null]
type=null
trigger1=0


;====================<DISPLAY>====================
[Statedef 500]
movetype=I
physics=N
sprpriority=-3
[State 500, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
ignorehitpause=1

[State 500, assert]
type=assertspecial
trigger1=!numpartner
flag=nobardisplay
[State 500, assert]
type=assertspecial
triggerall=numpartner
trigger1=partner,name="Strength Training"&&partner,authorname="Phantom.of.the.Server"
trigger2=partner,name="Duck Hunt"&&partner,authorname="Phantom.of.the.Server"
flag=nobardisplay

[State 500, 100]
type=varset
trigger1=root,var(1)=[1,998]
var(10)=floor(root,var(1)*.01)
[State 500, 10]
type=varset
trigger1=root,var(1)=[1,998]
var(11)=floor(root,var(1)*.1)-(var(10)*10)
[State 500, 1]
type=varset
trigger1=root,var(1)=[1,998]
var(12)=root,var(1)-(var(11)*10)-(var(10)*100)

[State 500, min]
type=varrangeset
trigger1=root,var(1)<=0
first=10
last=12
value=0
[State 500, max]
type=varrangeset
trigger1=root,var(1)>=999
first=10
last=12
value=9

[State 500, 100]
type=explod
trigger1=1
anim=510+var(10)
ID=510
sprpriority=16
postype=left
pos=ifelse(teamside=1,216,56),16
bindtime=-1
removetime=1
pausemovetime=-1
supermovetime=-1
[State 500, 10]
type=explod
trigger1=1
anim=510+var(11)
ID=510
sprpriority=16
postype=left
pos=ifelse(teamside=1,232,72),16
bindtime=-1
removetime=1
pausemovetime=-1
supermovetime=-1
[State 500, 1]
type=explod
trigger1=1
anim=510+var(12)
ID=510
sprpriority=16
postype=left
pos=ifelse(teamside=1,248,88),16
bindtime=-1
removetime=1
pausemovetime=-1
supermovetime=-1

[State 500, 10]
type=varset
trigger1=root,var(2)=(0,99)
var(20)=floor(root,var(2)*.1)
[State 500, 1]
type=varset
trigger1=root,var(2)=(0,99)
var(21)=root,var(2)-(var(20)*10)

[State 500, min]
type=varrangeset
trigger1=root,var(2)<=0
first=20
last=21
value=0
[State 500, max]
type=varrangeset
trigger1=root,var(2)>=99
first=20
last=21
value=9

[State 500, board]
type=explod
trigger1=!numexplod(500)
anim=500
ID=500
sprpriority=15
postype=left
pos=144,8
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1

[State 500, 10]
type=explod
trigger1=1
anim=520+var(20)
ID=520
sprpriority=16
postype=left
pos=147,10
bindtime=-1
removetime=1
pausemovetime=-1
supermovetime=-1
[State 500, 1]
type=explod
trigger1=1
anim=520+var(21)
ID=520
sprpriority=16
postype=left
pos=162,10
bindtime=-1
removetime=1
pausemovetime=-1
supermovetime=-1

[State 500, lifebar]
type=explod
trigger1=!numexplod(550)
anim=550
ID=550
sprpriority=15
postype=left
pos=ifelse(teamside=1,142,177),17
facing=ifelse(teamside=1,-1,1)
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
[State 500, lifebar]
type=explod
trigger1=!numexplod(551)
anim=551
ID=551
sprpriority=16
postype=left
pos=ifelse(teamside=1,142,177),17
facing=ifelse(teamside=1,-1,1)
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1

[State 500, lifebar scale]
type=modifyexplod
trigger1=numexplod(551)
ID=551
scale=root,var(5)/(root,var(4)*1.0),1

[State 500, lifebar scale]
type=modifyexplod
trigger1=numexplod(551)
trigger1=root,var(5)<=0
ID=551
scale=0,1
[State 500, lifebar scale]
type=modifyexplod
trigger1=numexplod(551)
trigger1=root,var(5)>=1000
ID=551
scale=1,1


;====================<ERASE HITS>====================
[Statedef 5000]
movetype=H
[State 5000, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5001]
movetype=H
[State 5001, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5002]
movetype=H
[State 5002, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5010]
movetype=H
[State 5010, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5020]
movetype=H
[State 5020, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5030]
movetype=H
[State 5030, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5050]
movetype=H
[State 5050, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5070]
movetype=H
[State 5070, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5080]
movetype=H
[State 5080, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)
[Statedef 5100]
movetype=H
[State 5100, override]
type=changestate
trigger1=1
value=ifelse(ishelper,1080,0)


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[Statedef -2]

[State -2, NotHitBy]
type=nothitby
trigger1=!ishelper
time=-1
value=SCA,AA,AP,AT
ignorehitpause=1
[State -2, Life]
type=lifeset
trigger1=!ishelper
trigger1=roundstate>=3&&life>1
value=1

[State -2, No Push]
type=playerpush
trigger1=!ishelper
value=0

[State -2, Not Bound]
type=screenbound
trigger1=!ishelper
trigger1=roundstate>=2
value=0
movecamera=0,0
[State -2, Pos]
type=posset
trigger1=!ishelper
trigger1=roundstate>=2&&numenemy
x=640*(enemy,facing)
y=0

[State -2, Anim]
type=changeanim
trigger1=!ishelper
value=0

[State -2, Asserts]
type=assertspecial
trigger1=!ishelper
flag=timerfreeze
flag2=nobardisplay
flag3=nokoslow

[State -2, Time]
type=varadd
trigger1=!ishelper
trigger1=roundstate=2
fvar(1)=-.016666666666666666666666666666667
[State -2, Time]
type=varset
trigger1=!ishelper
trigger1=fvar(1)=(-1,0]
fvar(1)=0
[State -2, Time]
type=varset
trigger1=!ishelper
var(2)=ceil(fvar(1))

[State -2, Display]
type=helper
trigger1=!ishelper
trigger1=!numhelper(500)
trigger1=roundstate>=2||stateno=191
helpertype=normal
stateno=500
ID=500
name="Display"
postype=left
pos=160,0
pausemovetime=2147483647
supermovetime=2147483647
ownpal=1

[State -2, Helpers ScreenBound]
type=screenbound
trigger1=ishelper(1000)
value=var(2)
movecamera=var(2),0

[State -2, Debug]
type=displaytoclipboard
trigger1=!ishelper
text="Score=%d Time=%f"
params=var(1), fvar(1)
ignorehitpause=1
