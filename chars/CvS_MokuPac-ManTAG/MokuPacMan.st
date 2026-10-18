;========================
;S.G.S. GUARDED
[Statedef 4012]
physics=N
velset=0,0
anim=9741

[State 4012, bgpalfx]
type=bgpalfx
trigger1=!time
time=20
add=-255,-128,-64
sinadd=255,128,64,80
persistent=0
[State 4012, palfx]
type=palfx
trigger1=!time
time=24
sinadd=-255,-255,-255,96

[State 4012, thunder]
type=explod
trigger1=!time
anim=4012
ID=4012
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
supermovetime=30
ownpal=1

[State 4012, circle]
type=explod
trigger1=!time
anim=7501
ID=4013
sprpriority=5
postype=p1
removetime=20
supermovetime=30

[State 4012, shrink]
type=modifyexplod
trigger1=numexplod(4013)
ID=4013
scale=.2+(.09*time),.2+(.09*time)

[State 4012, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1

[State 4012, end]
type=destroyself
trigger1=time>=24

;========================
;DIZZY FX
[Statedef 3033]
physics=N
velset=0,0
anim=9741
sprpriority=4

[State 3033, assert]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1

[State 3033, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)

[State 3033, snd]
type=playsnd
trigger1=enemynear,stateno=5300
value=0,ifelse(random<500,5300,5301)
persistent=0

[State 3033, end]
type=destroyself
trigger1=enemynear,ctrl
trigger1=(enemynear,movetype!=H)&&(enemynear,stateno!=5300)

;========================
;FIRE RED
[Statedef 7180]
physics=N
velset=0,0
anim=9741
sprpriority=4

[State 7180, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 7180, flames]
type=explod
trigger1=1
anim=7180
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
scale=.5,.5
ownpal=1

[State 7180, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)

[State 7180, end]
type=destroyself
trigger1=time>=120
trigger2=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)


;SHARED
[Statedef 7181]
physics=N
velset=0,0
anim=9741
sprpriority=4

[State 7181, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 7181, flames]
type=explod
trigger1=1
anim=7181
ID=7181
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
removetime=-2
scale=.5,.5
ownpal=1

[State 7181, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7181, end]
type=destroyself
trigger1=time>=120
trigger2=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)

;========================
;POWER CHARGE
[Statedef 7240]
type=S
anim=7240
velset=0,0
ctrl=0

[State 7240, Bind]
type=bindtoroot
trigger1= (root,stateno=740) && (root,anim=740)
pos=-10,0

[State 7240, Snd]
type=playsnd
trigger1= !time
value=740,0
channel=0

[State 7240, Aura]
type=explod
trigger1= !numexplod(7242)
ID=7242
anim=7242
sprpriority=3
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1

[State 7240, FX]
type=modifyexplod
trigger1= numexplod(7242) && (root,power<3000)
ID=7242
scale=.5,.1+.4*(root,power/3000.0)

[State 7240, FX]
type=modifyexplod
trigger1= numexplod(7242) && (root,power>=3000)
ID=7242
scale=.5,.5

[State 7240, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7240, End]
type=stopsnd
trigger1= (root,stateno!=740) || (root,anim!=740) || (root,movetype=H)
channel=0

[State 7240, End]
type=removeexplod
trigger1= (root,stateno!=740) || (root,anim!=740) || (root,movetype=H)

[State 7240, End]
type=destroyself
trigger1= (root,stateno!=740) || (root,anim!=740) || (root,movetype=H)

;PARTICLES
[Statedef 7243]
type=S
anim=9741
velset=0,0
ctrl=0

[State 7243, Bind]
type=bindtoroot
trigger1= !(time%4)
pos=ceil(-90+(random/6.25)),ceil(20-(random/6.25))

[State 7243, Particle]
type=explod
trigger1= (time%4)=1
anim=7243
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel=((rootdist x-10)/16.0),((rootdist y-60)/16.0)
scale=ifelse(random<500,.5,-.5),ifelse(random<500,.5,-.5)
removetime=16
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 7243, End]
type=removeexplod
trigger1= (root,stateno!=740) || (root,anim!=740) || (root,movetype=H)

[State 7243, End]
type=destroyself
trigger1= (root,stateno!=740) || (root,anim!=740) || (root,movetype=H)


;========================
;ORIGINAL COMBO CHARGE
[Statedef 7260]
physics=N
velset=0,0
anim=9741

[State 7260, bgpalfx]
type=bgpalfx
trigger1=!time
time=30
add=-255,-255,-128
sinadd=255,255,128,120

[State 7260, palfx]
type=palfx
trigger1=time=20
time=11
sinadd=-255,-255,-255,40
persistent=0

[State 7260, main]
type=explod
trigger1=!time
anim=7260
ID=7260
sprpriority=3
postype=p1
removetime=20
supermovetime=300

[State 7260, sphere]
type=explod
trigger1=!time
anim=7500
ID=7261
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7260, circle]
type=explod
trigger1=time=20
anim=7501
ID=7262
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7260
scale=2-(.1*time),2-(.1*time)

[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7261
scale=.017*time,.017*time
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=time>=20
ID=7262
scale=.1+(.1*(time-20)),.1+(.1*(time-20))

[State 7260, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 7260, bound]
type=screenbound
trigger1=1
value=0

[State 7260, safety]
type=removeexplod
trigger1=time>=30
[State 6110, end]
type=destroyself
trigger1=time>=30

;========================
;SUPERCHARGE
[Statedef 7500]
physics=N
velset=0,0
anim=9741

[State 7500, var]
type=parentvarset
trigger1=time&&root,var(20)>0
var(20)=-1

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=5
time=40
invertall=1
add=100,100,100
sinadd=-710,-710,-355,160

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=40&&root,var(10)=5
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=6
time=48
invertall=1
add=100,100,100
sinadd=-710,-710,-355,192

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=48&&root,var(10)=6
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=7
time=55
invertall=1
add=100,100,100
sinadd=-710,-710,-355,220

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=55&&root,var(10)=7
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, fade]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160

[State 7500, fade]
type=palfx
trigger1=time=40
time=-1
add=-255,-255,-255

[State 7500, spiral]
type=helper
trigger1=!time&&root,var(10)>=6
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
supermovetime=300
ownpal=1

[State 7500, portrait]
type=helper
trigger1=!time&&root,var(10)=7
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 7500, main]
type=explod
trigger1=!time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=35
supermovetime=300
ownpal=1

[State 7500, circle]
type=explod
trigger1=!time
anim=7501
ID=7501
sprpriority=5
postype=p1
removetime=43
supermovetime=300

[State 7500, circle]
type=explod
trigger1=!time
anim=7502
ID=75021
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, circle]
type=explod
trigger1=time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, circle]
type=explod
trigger1=time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, circle]
type=explod
trigger1=time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, circle]
type=explod
trigger1=time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=5
ID=7500
scale=1.5-(.033*time),1.5-(.033*time)

[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=6
ID=7500
scale=1.5-(.028*time),1.5-(.028*time)

[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 7500, safety]
type=removeexplod
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61

[State 7500, end]
type=destroyself
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61

;========================
;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = 8525
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525
ID=21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, 120
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, 120
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, 120
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), 120
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), 120
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40

;========================
;COUNTER F.X.
[Statedef 7400]
physics=N
velset=0,0
anim=9741

[State 7400, superchargebgpalfx]
type=allpalfx
trigger1=!time
time=5
add=255,255,255
sinadd=-255,-255,-255,20

[State 7400, slow]
type=pause
trigger1=time<5
time=2

[State 7400, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1

[State 7400, end]
type=destroyself
trigger1=root,movetype!=A

;========================
;SUPER FINISH
[Statedef 7600]
type=A
velset=0,0
anim=9741

[State 7600, Bind]
type=posset
trigger1= 1
x=0
y=ceil(pos y-screenpos y)+120

[State 7600, Snd]
type=playsnd
trigger1= !time
value=7600,0

[State 7600, BG PalFX]
type=bgpalfx
trigger1= time<10
time=1
mul=0,0,0

[State 7600, BG PalFX]
type=bgpalfx
trigger1= time=[10,20]
time=1
mul=(time-10)*25,(time-10)*25,(time-10)*25

[State 7600, MvC]
type=explod
trigger1= !time
anim=7601
ID=7601
ontop=1
postype=left
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1

[State 7600, Fade]
type=modifyexplod
trigger1= numexplod(7601)
ID=7601
trans=addalpha
alpha=ifelse(time<10,256,ceil(256-(time-10)*25.6)),256

[State 7600, Circle]
type=explod
trigger1= !time
anim=7600
ID=7600
sprpriority=-255
postype=left
pos=160,120
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1

[State 7600, Scale]
type=modifyexplod
trigger1= numexplod(7600)
ID=7600
scale=(.25*time),(.25*time)
trans=addalpha
alpha=ceil(256-12.8*time),256

[State 7600, Safety]
type=removeexplod
trigger1= time>20 && numexplod
trigger2= roundstate<3

[State 7600, nobars]
type=assertspecial
trigger1= time<=20
flag=nobardisplay
flag2=noFG
flag3=globalnoshadow

[State 7600, End]
type=destroyself
trigger1= roundstate<3

;========================
;CAMERA CONTROL
[Statedef 7650]
physics=N
velset=0,0
anim=9741

[State 7650, bound]
type=screenbound
trigger1=1
value=0
movecamera=1,1

[State 7650, end]
type=destroyself
trigger1=roundstate=2
