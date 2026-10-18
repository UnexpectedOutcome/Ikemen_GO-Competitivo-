;================================
; Helper States
;================================

;---------------
; Universal Projectile Destruction
[Statedef 999]
type = A
physics = N
movetype = I
anim = 1998 ; your blank animation
velset = 0, 0
ctrl = 0
movehitpersist = 1

[State 1112, nothitby]
type = nothitby
trigger1 = ishelper
time = 1
value = SCA
ignorehitpause = 1

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1112, End]
type = destroyself
triggerall = ishelper
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target, time <= 1 && !(target, hitshakeover)
ignorehitpause = 1

;-----------------------
; Spellcard Name Effect
[Statedef 20000]
velset = 0,0
anim = 1998

[State 20000, VS]
type = varset
trigger1 = time = 0
var(20) = cond((root,stateno!=[3000,3010])&&(root,var(57)>0||root,var(19)>=1),1,0)
[State 20000, VS]
type = varset
trigger1 = time = 0
var(21) = cond((root,stateno=[3000,3010]),1,0)

[State 20000, VS]
type = varset
trigger1 = time = 0
var(10) = root,stateno

[State Screen Scretch?]
type = VarSet
trigger1 = 1
fvar(0) = 320/320.0
[State friction coefficient (for text scaling and vertical movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(1) = 0.75
[State friction coefficient 2 (for text horizontal movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(2) = 0.75
[State friction coefficient 3 (for text final vertical movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(3) = 0.85


[State 10000, Explod]
type = Explod
trigger1 = Time = 0
pos = 0,0
Anim = 20015+ifelse(teamside=1,0,1)
postype = left
ownpal = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermove = 1
ontop = 1
ID = 20011
[State 10000, Explod]
type = Explod
trigger1 = Time = 0
Anim = 2090+ifelse(teamside=1,0,1)+100*(root,stateno = 2100)+200*(root,stateno=2200)+300*(root,stateno=2300)+1000*(root,stateno=3000)+1200*(root,stateno=3005)+1100*(root,stateno=3010)+2000*(root,stateno=4000||root,stateno=4010)
pos = 0,0
postype = left
ownpal = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermove = 1
ontop = 1
ID = 20010

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20010
pos = ifelse(teamside = 2,0,floor(320/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside = 2,-1,1)),250-floor((1-fvar(1)**(time))*85)+20*var(20)
postype = left
facing = 1
bindtime = -1
scale = (.25+8.75*(fvar(1)**(time)))*0.85*cond(root,stateno=2200,1.0,1.0),(.25+8.75*(fvar(1)**(time)))*0.85

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20010
pos = ifelse(teamside = 2,0,floor(320/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside = 2,-1,1)),250-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)+20*var(20)
postype = left
facing = 1
bindtime = -1
scale = (.25+8.75*(fvar(1)**(time)))*0.85*cond(root,stateno=2200,1.0,1.0),(.25+8.75*(fvar(1)**(time)))*0.85

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20011
pos = ifelse(teamside = 2,0,floor(320/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside = 2,-1,1)),250-floor((1-fvar(1)**(time))*85)+20*var(20)
postype = left
facing = 1
bindtime = -1
scale = (4*(.25+8.75*(fvar(1)**(time))))*0.85*cond(root,stateno=2200,1.0,1.0),(4*(.25+8.75*(fvar(1)**(time))))*0.85

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20011
pos = ifelse(teamside = 2,0,floor(320/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside = 2,-1,1)),250-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)+20*var(20)
postype = left
facing = 1
bindtime = -1
scale = (4*(.25+8.75*(fvar(1)**(time))))*0.85*cond(root,stateno=2200,1.0,1.0),(4*(.25+8.75*(fvar(1)**(time))))*0.85

[State Sas]
type = VarAdd
trigger1 = var(0)>=1
var(0) = 1

[State Sas]
type = VarSet
triggerall = var(0)<=0
;trigger1 = var(10)!=2000
trigger1 = root,stateno != [2000,2010] ;Level 1-1
trigger1 = root,stateno != [2100,2199] ;Level 1-2
trigger1 = root,stateno != [2200,2210] ;Level 1-3
trigger1 = root,stateno != [2300,2399] ;Level 1-4
trigger1 = root,stateno != [3000,3099] ;Spell Trance
trigger1 = root,stateno != [3100,3199] ;Spell Overdrive
trigger1 = root,stateno != [4000,4099] ;Last Word
trigger1 = root,var(57)<=0 || var(20)=1
trigger2 = var(21)=1 && root,stateno=4000
trigger3 = var(10)=2000 && ((root,stateno=[2100,4999])||(root,stateno!=2000 && root,var(24)<=0)||(root,stateno=2000 && time>1 && root,time<=1))
trigger4 = var(10)=2100 && ((root,stateno=[2000,2099])||(root,stateno=[2200,4999])||(root,stateno!=2100 && root,var(24)<=0)||(root,stateno=2100 && time>1 && root,time<=1))
var(0) = 1

[State Zoom Out]
type = ModifyExplod
trigger1 = var(0)>0
ID = 20010
trans = addalpha
alpha = ceil(256*(1-var(0)/30.0)),ceil(256*(var(0)/30.0))
[State Zoom Out]
type = ModifyExplod
trigger1 = var(0)>0
ID = 20011
trans = addalpha
alpha = ceil(256*(1-var(0)/30.0)),256
[State ass]
type = RemoveExplod
trigger1 = var(0)>=30
id = 20010
[State ass]
type = RemoveExplod
trigger1 = var(0)>=30
id = 20011
[State thend]
type = DestroySelf
trigger1 = var(0)>=30

;-----------------------
; Palette Selector
; The following state utilizes pieces of code from Flawless's X-Costume selector
; with modifications by RicePigeon.
[Statedef 20002]
velset = 0,0
anim = 20002
sprpriority = 8

[State 20002, REX]
type = removeexplod
trigger1 = 1
id = 20020
ignorehitpause = 1

[State 20002, VS]
type = varset
trigger1 = time = 0
var(10) = 1+(random%3)

[State 20002, AD]
type = angledraw
trigger1 = 1
scale = 0.333,0.333;0.25,0.25
ignorehitpause = 1

[State 20002, VS]
type = varset
trigger1 = time = 0
var(5) = 18;12 ;MAXIMUM # OF PALETTES

[State 12345, PosSet]
type = PosSet
trigger1 =!time 
x = floor(root,pos x);root,facing*-90
y = floor(root,pos y)-25-5;25
ignorehitpause = 1
 
[State 12345, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
flag3=nobardisplay
ignorehitpause = 1

[State 12345, Reset]
type=varset
trigger1=!time
var(0)=200

[State 12345, Pal]
type=varset
trigger1=!time
var(1)=root,palno

[State 12345, Varset]
type=varset
trigger1=var(1)<1||var(1)>var(5) ; last palette
var(1)=1+(var(1)<1)*(var(5)-1) ; subtract -1 from your last palette


[State 12345, Varset]
type=varset
trigger1=var(10)<1||var(10)>2 ; last Groove
var(10)=1+(var(10)<1) ; subtract -1 from your last palette


[State 12345, PlaySnd]
type = PlaySnd
trigger1 =fvar(39)=2 
value = S12345,0
volumescale = 100
channel = 20

[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(20002)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=root,AILevel
trigger2=time>=60
value = S20002,1
volumescale = 100
channel = 20
persistent =0 
 
[State 12345, Countdown]
type = VarAdd
trigger1 =1 
var(0)=-1

[State 12345, Countdown]
type = VarAdd
trigger1=!var(2)&&var(0)<150
;trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
;trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
trigger1=root,command="up"||root,command="down"||root,command="back"||root,command="fwd"
;trigger1=root,command="up"||root,command="down"||root,command="back"||root,command="fwd"
var(0)=25

[State 12345, Countdown]
type = VarAdd
trigger1=!var(2)&&var(0)<150
trigger1=var(20)>30||var(21)>30||var(22)>30||var(23)>30
var(0)=25
persistent=5
 
;[State 12345, PlaySnd]
;type = Changeanim
;triggerall=ishelper(20002) && !var(2)
;trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
;value = ifelse((root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1),20004,20005)


[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(20002) && !var(2)
;trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
trigger1=root,command="up"||root,command="down"||root,command="back"||root,command="fwd"
value = S20002,0
volumescale = 100
channel = 20
;persistent =0

[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(20002) && !var(2)
;trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
trigger1=var(20)>30||var(21)>30||var(22)>30||var(23)>30
value = S20002,0
volumescale = 100
channel = 20
persistent=5

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
;trigger1=root,command="holdback"||root,command="holdfwd"
;var(1)=1-(root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2
trigger1=root,command="back"||root,command="fwd"
var(1)=1-(root,command="back"&&facing=1||root,command="fwd"&&facing=-1)*2

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
trigger1=var(20)>30||var(21)>30
var(1)=1-(var(20)>30&&facing=1||var(21)>30&&facing=-1)*2
persistent = 5

[State 12345, Varadd]
type=varset;add
trigger1=!var(2)
;trigger1=root,command="holdup"||root,command="holddown"
;var(10)=1;-(root,command="holddown")*2
trigger1=root,command="up"||root,command="down"
var(10)=cond(var(10)=1,2,1);1-(root,command="up")*2

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
trigger1=(var(22)>30)||(var(23)>30)
var(10)=1
persistent = 5


[State 12345, Varadd]
type=varadd
;trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!fvar(39)||fvar(39)
trigger1=(root,command="up"||root,command="down"||root,command="back"||root,command="fwd")&&!fvar(39)||fvar(39)
var(2)=1

[State 12345, Varadd]
type=varadd
;trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!fvar(39)||fvar(39)
trigger1=(var(20)>30||var(21)>30||var(22)>30||var(23)>30)&&!fvar(39)||fvar(39)
var(2)=1
persistent=5
 
[State 12345, Varset]
type=varset
trigger1=!time||var(2)>=1;6;17
var(2)=0

[State 12345, Varset]
type=varadd
trigger1=root,command="holdback"
var(20)=1
[State 12345, Varset]
type=varadd
trigger1=root,command="holdfwd"
var(21)=1
[State 12345, Varset]
type=varadd
trigger1=root,command="holdup"
var(22)=1
[State 12345, Varset]
type=varadd
trigger1=root,command="holddown"
var(23)=1

[State 12345, Varset]
type=varset
trigger1=root,command!="holdback"
var(20)=0
[State 12345, Varset]
type=varset
trigger1=root,command!="holdfwd"
var(21)=0
[State 12345, Varset]
type=varset
trigger1=root,command!="holdup"
var(22)=0
[State 12345, Varset]
type=varset
trigger1=root,command!="holddown"
var(23)=0
 
[State 181, EXPLOD]
type = explod
trigger1 = 1
anim = 20009;+var(10)
removetime = 24
id = 20020
postype = left;p1
pos = 60+floor(320-120)*(teamside!=1),floor(screenpos y)+25+5
;pos = -50,-90
scale = 0.5,0.5
ownpal = 0
sprpriority = 5
removeongethit = 1
ignorehitpause = 0

[State 181, EXPLOD]
type = explod
trigger1 = 1
anim = 20020+ifelse(teamside=1,0,1)+0*(var(10)=1)+2*(var(10)>=2);+4*(var(10)=3)
removetime = 24
id = 20020
;postype = p1
;pos = 0,-100
postype = left;p1
pos = 6+floor(320-12)*(teamside!=1),floor(screenpos y)+25+5
scale = 0.4,0.4
ownpal = 0
trans = addalpha
alpha = 256,0
sprpriority = 5
removeongethit = 1
ignorehitpause = 0

[State 181, EXPLOD]
type = explod
triggerall=ishelper(20002)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=root,AILevel
trigger2=time>=60
persistent = 0
anim = 20003
removetime = 24
postype = p1
;space = stage ;;MUGEN 1.1 ONLY
pos = 0,0
scale = 0.333,0.333
;pos = pos x + camerapos x + 25*facing,pos y - 75 ;;MUGEN 1.1 ONLY
;facing = facing ;;MUGEN 1.1 ONLY
ownpal = 0
sprpriority = 5
;bindid = playerid ;;MUGEN 1.1 ONLY
removeongethit = 1
ignorehitpause = 0

[State 12345, End]
type=changestate;destroyself
triggerall=ishelper(20002)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=root,AILevel
trigger2=time>=60
value = 20003

;-----------------------
; Palette Selector End
[Statedef 20003]
velset = 0,0
anim = 1998
sprpriority = 8

[State 20003, Zeeky]
type = destroyself
trigger1 = time>=30


;-----------------------
; Spellcard Use Effect
[Statedef 1999]
anim = 1999
velset = 0,0
sprpriority = 3;-1

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_Name"
id = 1998
stateno = 20000
pos = 0,-floor(pos y)
postype = left
ownpal = 1
facing = 1
pausemovetime = 9999999
supermovetime = 9999999

[State 4000, Superportrait]
type = explod
trigger1 = time = 0
id = 4000
removetime = 60
;scale = 0.5,0.5
anim = 3998
pos = floor(const240p(320/2.0)),floor(const240p(2.0*240/7.0))
postype = back
bindtime = -1
ownpal = 1
sprpriority = -1
scale = const240p(0.5*0.8),const240p(0.5*0.8)
removeongethit = 1
ignorehitpause = 1
pausemovetime = 60
supermovetime = 60

[State 4000, Superportrait]
type = explod
trigger1 = time = 0
id = 3997
removetime = 60
;scale = 0.5,0.5
anim = 3997
pos = floor(const240p(320/2.0)),floor(const240p(2.0*240/7.0))
postype = back
bindtime = -1
ownpal = 1
sprpriority = -3
scale = const240p(1.0*0.8),const240p(1.0*0.8)
removeongethit = 1
ignorehitpause = 1
pausemovetime = 60
supermovetime = 60
[State 4000, Superportrait]
type = explod
trigger1 = time = 0
id = 4000
removetime = 60
;scale = 0.5,0.5
anim = 3996
pos = floor(const240p(320/2.0)),floor(const240p(2.0*240/7.0))
postype = back
bindtime = -1
ownpal = 1
sprpriority = -3
scale = const240p(0.5*0.8),const240p(0.5*0.8)
removeongethit = 1
ignorehitpause = 1
pausemovetime = 60
supermovetime = 60
[State 4000, Superportrait]
type = explod
trigger1 = time = 0
id = 4000
removetime = 60
;scale = 0.5,0.5
anim = 3996
pos = floor(const240p(320/2.0+512)),floor(const240p(2.0*240/7.0))
postype = back
bindtime = -1
ownpal = 1
sprpriority = -3
scale = const240p(0.5*0.8),const240p(0.5*0.8)
removeongethit = 1
ignorehitpause = 1
pausemovetime = 60
supermovetime = 60

[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(4000)
trigger1 = time < 7;10
id = 4000
scale = const240p(0.5*0.8),const240p(0.5*0.8*time/7.0);const240p(0.5*time/10.0)
ignorehitpause = 1
[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(4000)
trigger1 = time >= 7 && time<=53;0
id = 4000
scale = const240p(0.5*0.8),const240p(0.5*0.8)
ignorehitpause = 1
[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(4000)
trigger1 = time > 53;0
id = 4000
scale = const240p(0.5*0.8),const240p(0.5-0.5*(time-53)/7.0)*0.8;const240p(0.5-0.5*(time-40)/10.0)
ignorehitpause = 1

[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(3997)
trigger1 = time < 7
id = 3997
scale = const240p(1.0)*0.8,const240p(1.0*time/7.0)*0.8;const240p(1.0*time/10.0)
ignorehitpause = 1
[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(3997)
trigger1 = time >= 7 && time<=53
id = 3997
scale = const240p(1.0)*0.8,const240p(1.0)*0.8
ignorehitpause = 1
[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(3997)
trigger1 = time > 53
id = 3997
scale = const240p(1.0)*0.8,const240p(1.0-1.0*(time-53)/7.0)*0.8;const240p(1.0-1.0*(time-40)/10.0)
ignorehitpause = 1

[State 1999, CA]
type = changeanim
trigger1 = time = 0
value = cond(ishelper(1999),1999,cond(ishelper(2999),2999,cond(ishelper(3999),3999,cond(ishelper(4999),4999,1998))))

;[State 700, AD]
;type = angledraw
;trigger1 = 1
;value = 3.0*time*ifelse(ishelper(999),2.0,1.0)
;scale = ifelse(ishelper(999),0.35,0.7)+(time*ifelse(ishelper(999),0.2,0.1)),ifelse(ishelper(999),0.35,0.7)+(time*ifelse(ishelper(999),0.2,0.1))
[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = 0.5+0.15*var(0),0.5+0.15*var(0)

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70

;-----------------------
; Dash FX
[Statedef 10100]
physics = N
velset = 0,0
anim = 10101
sprpriority = 5

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 10100, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(10110)
trigger1 = (var(10):=90)||1
trigger2 = ishelper(10111)
trigger2 = (var(10):=45)||1
trigger3 = ishelper(10112)
trigger3 = (var(10):=135)||1
trigger4 = ishelper(10115)
trigger4 = (var(10):=-90)||1
trigger5 = ishelper(10116)
trigger5 = (var(10):=-45)||1
trigger6 = ishelper(10117)
trigger6 = (var(10):=-135)||1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/10.0),256

[State 700, AD]
type = angledraw
trigger1 = 1
value = var(10)
scale = 0.7+(0.1*time),0.7+(0.1*time)

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 10

;-----------------------
; Type-B Graze Effect
[Statedef 10101]
physics = N
velset = 0,0
anim = 10103
sprpriority = 5

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 10101, BTR]
Type = bindtoroot
Trigger1 = 1
pos = 0,0
ignorehitpause = 1

[State 10101, Null All Proj]
Type = ReversalDef
Trigger1 = 1
Reversal.Attr = SCA,AP
NumHits = 0

[State 10101, Graze Effect]
type = Explod
trigger1 = movehit = 1
trigger1 = (fvar(0):=(random/50.0))||1
trigger1 = (fvar(1):=(2.0*random/1000.0))||1
trigger1 = (fvar(2):=((333.0+random)/1333.0))||1
anim = 10104
id = 10104
pos = 0,-50
vel = fvar(0)*Cos(fvar(1)*pi),fvar(0)*Sin(fvar(1)*pi)
scale = fvar(2),fvar(2)
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 10101, Graze Effect]
type = Explod
trigger1 = movehit = 1
trigger1 = (fvar(0):=(random/50.0))||1
trigger1 = (fvar(1):=(2.0*random/1000.0))||1
trigger1 = (fvar(2):=((333.0+random)/1333.0))||1
anim = 10104
id = 10104
pos = 0,-50
vel = fvar(0)*Cos(fvar(1)*pi),fvar(0)*Sin(fvar(1)*pi)
scale = fvar(2),fvar(2)
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 10101, Graze Effect]
type = Explod
trigger1 = movehit = 1
trigger1 = (fvar(0):=(random/50.0))||1
trigger1 = (fvar(1):=(2.0*random/1000.0))||1
trigger1 = (fvar(2):=((333.0+random)/1333.0))||1
anim = 10104
id = 10104
pos = 0,-50
vel = fvar(0)*Cos(fvar(1)*pi),fvar(0)*Sin(fvar(1)*pi)
scale = fvar(2),fvar(2)
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 10101, Add Spirit]
type = parentvaradd
trigger1 = movehit=1
trigger1 = root,var(52)=2 ;Type-B only
trigger1 = root,var(57)<=0 ;No Spell Rage
var(54) = 10
[State -2, Spirit Gauge Limited]
type = parentvarset
trigger1 = root,var(54)>ceil(root,lifemax*0.9);950 Life * 0.9
var(54) = ceil(root,lifemax*0.9)

[State 10101, PSND]
Type = PlaySnd
Trigger1 = MoveHit = 1
Value = 100,2
Channel = 3

[State 10101, Zeeky]
type = destroyself
trigger1 = ishelper(10101)
trigger1 = root,stateno!=100
trigger2 = ishelper(10111)
trigger2 = root,stateno!=110 || (root,animelemtime(12)>=0)
trigger3 = root,var(52)!=2 ;In an alignment other than Type-B

;-----------------------
; Darkness Effect
[Statedef 701]
anim = 1998
velset = 0,0

[state 701, VS]
type = null
trigger1 = var(0) < 192
trigger1 = var(0):= 6*time

[State 701, BGPFX]
type = bgpalfx
trigger1 = time < 32
time = 1
mul = 256-var(0),256-var(0),256-var(0)

[State 701, BGPFX]
type = bgpalfx
trigger1 = time >= 32
time = 1
mul = 64,64,64

[state 701, CS]
type = changestate
trigger1 = (root,stateno != [2000,2999])
trigger1 = (root,stateno != [3000,3299])
trigger1 = (root,stateno != [4000,4001])
trigger2 = root,stateno = 2001
trigger3 = (root,stateno = 4001)
value = 702

;-----------------------
; Darkness Effect - Fade back in
[Statedef 702]
anim = 1998
velset = 0,0

[state 701, VS]
type = null
trigger1 = 1
trigger1 = var(0):= var(0)-(6*time)

[State 701, BGPFX]
type = bgpalfx
trigger1 = 1
time = 1
mul = 256-var(0),256-var(0),256-var(0)

[state 701, CS]
type = destroyself
trigger1 = var(0) <= 0

;-----------------------
; AI Tree Helper
[Statedef 20010]
velset = 0,0
anim = 1998
sprpriority = 8
; Variable Usage
; Var(0) = RNG
; Var(1) = Next state for Root to enter
; Var(2) = Cooldown until next value of Var(1) is passed to Root
; Var(3) = Maximum number of possible state options available

[State 20010, TURN]
type = turn
trigger1 = facing != root,facing
ignorehitpause = 1

[State 20010, RAND]
type = varset
trigger1 = 1
var(0) = random

[State 20010, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,0
ignorehitpause = 1

;===================
; AI TREE STARTS HERE
;===================

[State 20010, Ground Idle]
type = null;
triggerall = root,AILEVEL > 0 && var(2)=0
;triggerall = random<100*(((root,AILEVEL)**2)/64.0)
triggerall = root,statetype != A
triggerall = root,ctrl  || root,stateno = 100 || root,stateno = 105
;triggerall = !(root,inguarddist)
triggerall = enemynear(0),statetype != A
triggerall = (var(3):=16)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=200+200*(random%2=0))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=210+200*(random%2=0))||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=215)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=220+200*(random%2=0))||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=225)||1
trigger5 = var(2):=11-root,AILevel
trigger6 = floor(var(3)*var(0)/1000.0)=5
trigger6 = (var(1):=800)||1
trigger6 = var(2):=11-root,AILevel
trigger7 = floor(var(3)*var(0)/1000.0)=6
trigger7 = (var(1):=801)||1
trigger7 = var(2):=11-root,AILevel
trigger8 = floor(var(3)*var(0)/1000.0)=7
trigger8 = (var(1):=1000+(random%3))||1
trigger8 = var(2):=11-root,AILevel
trigger9 = floor(var(3)*var(0)/1000.0)=8
trigger9 = (var(1):=1100+(random%3))||1
trigger9 = var(2):=11-root,AILevel
trigger10 = floor(var(3)*var(0)/1000.0)=9
trigger10 = (var(1):=1200+(random%3))||1
trigger10 = var(2):=11-root,AILevel
trigger11 = floor(var(3)*var(0)/1000.0)=10
trigger11 = (var(1):=1300+(random%3))||1
trigger11 = var(2):=11-root,AILevel
trigger12 = floor(var(3)*var(0)/1000.0)=11
trigger12 = (var(1):=2000)||1
trigger12 = var(2):=11-root,AILevel
trigger13 = floor(var(3)*var(0)/1000.0)=12
trigger13 = (var(1):=2100)||1
trigger13 = var(2):=11-root,AILevel
trigger14 = floor(var(3)*var(0)/1000.0)=13
trigger14 = (var(1):=4000)||1
trigger14 = var(2):=11-root,AILevel
trigger15 = floor(var(3)*var(0)/1000.0)=14
trigger15 = (var(1):=100)||1
trigger15 = var(2):=11-root,AILevel
trigger16 = floor(var(3)*var(0)/1000.0)=15
trigger16 = (var(1):=105)||1
trigger16 = var(2):=11-root,AILevel

[State 20010, Ground Idle]
type = null;
triggerall = root,AILEVEL > 0 && var(2)=0
;triggerall = random<100*(((root,AILEVEL)**2)/64.0)
triggerall = root,statetype = A
triggerall = root,ctrl || root,stateno = 110 || root,stateno = 115
triggerall = (var(3):=7)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=600)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=610)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=620)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=625)||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=2000)||1
trigger5 = var(2):=11-root,AILevel
trigger6 = floor(var(3)*var(0)/1000.0)=5
trigger6 = (var(1):=100)||1
trigger6 = var(2):=11-root,AILevel
trigger7 = floor(var(3)*var(0)/1000.0)=6
trigger7 = (var(1):=105)||1
trigger7 = var(2):=11-root,AILevel

[State 20010, Light]
type = null;
triggerall = root,AILEVEL > 0 && var(2)=0
;triggerall = random<100*(((root,AILEVEL)**2)/64.0)
triggerall = root,statetype = A
triggerall = root,stateno = 200 || root,stateno = 400
triggerall = (var(3):=7)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=200+200*(random%2=0))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=210+200*(random%2=0))||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=215)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=220+200*(random%2=0))||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=225)||1
trigger5 = var(2):=11-root,AILevel

[State 20010, Medium]
type = null;
triggerall = root,AILEVEL > 0 && var(2)=0
;triggerall = random<100*(((root,AILEVEL)**2)/64.0)
triggerall = root,statetype = A
triggerall = root,stateno = 210 || root,stateno = 410
triggerall = (var(3):=7)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=220)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=225)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=420)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=1000+(random%3))||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=1100+(random%3))||1
trigger5 = var(2):=11-root,AILevel
trigger6 = floor(var(3)*var(0)/1000.0)=5
trigger6 = (var(1):=1200+(random%3))||1
trigger6 = var(2):=11-root,AILevel
trigger7 = floor(var(3)*var(0)/1000.0)=6
trigger7 = (var(1):=1300+(random%3))||1
trigger7 = var(2):=11-root,AILevel

[State 20010, Medium]
type = null;
triggerall = root,AILEVEL > 0 && var(2)=0
;triggerall = random<100*(((root,AILEVEL)**2)/64.0)
triggerall = root,statetype = A
triggerall = root,stateno = 215 || root,stateno = 220 || root,stateno = 225; || root,stateno = 410
triggerall = (var(3):=4)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=1000+(random%3))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=1100+(random%3))||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=1200+(random%3))||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=1300+(random%3))||1
trigger4 = var(2):=11-root,AILevel

[State 20010, Specials ]
type = null;
triggerall = root,AILEVEL > 0 && var(2)=0
;triggerall = random<100*(((root,AILEVEL)**2)/64.0)
triggerall = root,statetype = A
triggerall = root,stateno = [1000,1999]
triggerall = (var(3):=3)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=2000)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=2100)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=4000)||1
trigger3 = var(2):=11-root,AILevel





;===================
; AI TREE STOPS HERE
;===================

[State 20010, PVS]
type = parentvarset
trigger1 = var(2)=11-root,AILevel
trigger2 = var(2)=10-root,AILevel
var(58) = var(1)
;persistent = 0

[State 20010, VA]
type = varadd
trigger1 = var(2)>0
var(2) = -1

[State 20010, PVS]
type = parentvarset
trigger1 = var(2)<=0
var(58) = 0

[State 20010, Zeeky]
type = destroyself
trigger1 = root,AILEVEL <= 0
trigger2 = root,roundstate != 2

;------------------------------
; Spirit Gauge Counter
[StateDef 30000]
Type = A
MoveType = I
Physics = N
SprPriority = 0
anim = 1998
velset = 0,0

[State 30000, Type A start with 100% Spirit]
type = parentvarset
trigger1 = time = 0
trigger1 = root,roundsexisted = 0
trigger1 = root,var(52)=1
var(54) = ceil(root,lifemax*0.9)

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,5

[State 30000, Life Meter Tracker]
type = varset
trigger1 = root,life>0
trigger1 = root,life < var(40)
var(41) = var(40) - (root,life)

[State 30000, Life Meter Tracker]
type = varset
trigger1 = root,life>0
var(40) = root,life

[State 30000, Spirit Gauge Add - Type a]
type = parentvaradd
trigger1 = var(41)>0
trigger1 = root,var(52)=1 ;Type A only
trigger1 = !(root,var(57)>0)
var(54) = ceil(var(41)*0.5)

[State 30000, PVA]
type = varset
trigger1 = var(41)>0
var(41) = 0

[State 24000, VS]
type = varset
trigger1 = var(56)!=(root,var(54))
var(56) = root,var(54)

[State 24000, VS]
type = varset
trigger1 = var(56)<0
var(56) = 0

[State 24000, VS]
type = varset
trigger1 = 1
var(57) = ceil(root,lifemax*0.9)

[State 24000, VS]
type = varset
trigger1 = 1
var(58) = floor(100.0*var(56)/var(57))

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
id = 30033
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
id = 30032
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
id = 30031

[State 21000, Explod]
type = explod
trigger1 = numexplod(30000)=0
anim = 30000
id = 30000
scale = 1.0,0.75
pos = 16*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(320/1.0)),40+160+5;10;204
postype = left
facing = ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 21000, Explod]
type = explod
trigger1 = numexplod(30001)=0
anim = 30001
id = 30001
scale = 1.0,0.75
pos = 16*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(320/1.0)),40+160+5;10;204
postype = left
facing = ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 21000, Explod]
type = explod
trigger1 = numexplod(30002)=0
anim = 30020+cond(teamside=1,0,1)+2*(root,var(52)=2)+4*(root,var(52)=3)
id = 30002
scale = 0.25,0.25
pos = 16*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(320/1.0)),30+160+5;10;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999


[State 21000, Explod]
type = explod
trigger1 = numexplod(30033)=0
anim = cond(var(58)<100,1998,30011)
id = 30033
scale = 0.5,0.5
pos = cond(teamside=1,50,-62)+ifelse(teamside=1,0,floor(320/1.0)),200+8;10;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999
[State 21000, Explod]
type = explod
trigger1 = numexplod(30032)=0
anim = cond(var(58)<10,1998,30010+(floor(var(58)/10)%10))
id = 30032
scale = 0.5,0.5
pos = cond(teamside=1,54,-58)+ifelse(teamside=1,0,floor(320/1.0)),200+8;10;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999
[State 21000, Explod]
type = explod
trigger1 = numexplod(30031)=0
anim = 30010+(var(58)%10)
id = 30031
scale = 0.5,0.5
pos = cond(teamside=1,58,-54)+ifelse(teamside=1,0,floor(320/1.0)),200+8;10;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999


[State 21000, Explod]
type = explod
trigger1 = numexplod(30030)=0
anim = 30030
id = 30030
scale = 0.5,0.5
pos = cond(teamside=1,62,-50)+ifelse(teamside=1,0,floor(320/1.0)),200+8;10;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(30001)=1
ID = 30001
scale = (1.0*var(56)/ceil(root,lifemax*0.9)),0.75
ignorehitpause =1

[State 0, Type-a]
type = palfx
trigger1 = (root,var(52))=1
add = 256,0,0
mul = 256,0,0
time = -1
ignorehitpause =1
[State 0, Type-ß]
type = palfx
trigger1 = (root,var(52))>=2
add = 256,256,0
mul = 256,256,0
time = -1
ignorehitpause =1

;------------------------------
; Time Counter
[StateDef 30010]
Type = A
MoveType = I
Physics = N
SprPriority = 0
anim = 1998
velset = 0,0

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,5

[State 24000, VS]
type = varset
trigger1 = var(56)!=(root,var(57))
var(56) = root,var(57)
[State 24000, VS]
type = varset
trigger1 = time=0
var(55) = root,var(57)

[State 21000, Explod]
type = explod
trigger1 = numexplod(30000)=0
anim = 30000
id = 30000
scale = 1.0*0.667,0.75*0.667
pos = -29*ifelse(root,facing=1,1,-1),5
postype = p1
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 21000, Explod]
type = explod
trigger1 = numexplod(30001)=0
anim = 30001
id = 30001
scale = 1.0*0.667,0.75*0.667
pos = -29*ifelse(root,facing=1,1,-1),5
postype = p1
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(30001)=1
ID = 30001
scale = 1.0*(1.0*var(56)/var(55))*0.667,0.75*0.667
ignorehitpause =1
[State 0, Type C]
type = palfx
trigger1 = 1
add = 256-256*ishelper(23005),256,0
mul = 256-256*ishelper(23005),256,0
time = -1
ignorehitpause =1

[State 21000, REX]
type = removeexplod
trigger1 = root,var(57)<=0
;trigger2 = root,stateno = [4200,4299]
id = 30000

[State 21000, REX]
type = removeexplod
trigger1 = root,var(57)<=0
;trigger2 = root,stateno = [4200,4299]
id = 30001

[State 21000, REX]
type = destroyself
trigger1 = root,var(57)<=0
;trigger2 = root,stateno = [4200,4299]

;========================<EXPLODSIVE BUFFERING HELPER>=============================
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1998
velSet = 0,0
ctrl = 0
     
[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1

;=====================================================
; Invalid Combo Helper
[StateDef 27944]
type = A
physics = N
moveType = I
anim = 1998
velSet = 0,0
ctrl = 0
;var(0) - Elapsed time measurement after hit (for Invalid)
;var(2) - helper attack or hit flag (for invalid display)
;var(59) - Flag (0=Default, 1=Invalid)

[State -2, Varset]
type = varset
triggerall = var(2)=0
trigger1 = root,var(35)>0
; PROJECTILE CONTROLLER IDS GO HERE:
; trigger2 = root,projhittime(22100)=1 ;Forgotten Ritual
var(2)=1

[State -2, Varset]
type = varset
triggerall = time=0
triggerall = var(59)=0
trigger1 = root,numexplod(27944)=0
trigger1 = numenemy
trigger1 = p2statetype=A
trigger1 = root,movehit=0
trigger1 = EnemyNear(0),CanRecover
trigger1 = (p2stateno != [120,155]) && (p2stateno!=[250,262]) && (p2stateno!=[450,451])
trigger1 = p2stateno!=350
var(59)=1

[State -2, Varset]
type = varset
triggerall = var(0)=0 && var(59)=1
trigger1 = root,movehit=1
trigger1 = numenemy
trigger1 = p2statetype=A
trigger1 = enemynear(0),hitshakeover
trigger2 = var(2)!=0
var(0)=1

[State -2, Counterhit Explod]
type = Explod
triggerall = numexplod(7944)=0
trigger1 = var(59)=1
trigger1 = var(0)>0
anim = 7944+1*(root,teamside!=1)
ID = 7944
pos = ifelse(teamside=1,0,320),120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 999999999
supermovetime = 999999999
sprpriority = 999
scale = 0.5,0.5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State -2, Counterhit Explod]
type = Explod
triggerall = numexplod(7945)=0
triggerall = numexplod(7944)=1
;trigger1 = var(59)=1
;trigger1 = var(0)>0
triggerall = numenemy
trigger1 = enemynear(0),stateno=5150 || enemynear(0),alive=0
trigger2 = p2movetype!=H && p2stateno!=5120
trigger3 = enemynear(0),ctrl = 1
anim = 7946+1*(root,teamside!=1)
ID = 7945
pos = ifelse(teamside=1,0,320),120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 999999999
supermovetime = 999999999
sprpriority = 999
scale = 0.5,0.5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State -2, REX]
type = removeexplod
triggerall = numenemy
trigger1 = enemynear(0),stateno=5150 || enemynear(0),alive=0
trigger2 = p2movetype!=H && p2stateno!=5120
trigger3 = enemynear(0),ctrl = 1
id = 7944
ignorehitpause = 1

[State -2, Timer]
type = varadd
trigger1 = var(0)>0
trigger1 = var(59)=1
var(0)=1

[State -2, Destroyself]
type = destroyself
trigger1 = var(59)=1
trigger1 = var(0)=0 || var(0)>101
trigger1 = numenemy
trigger1 = (p2movetype!=H && p2stateno!=5120)||(enemynear(0),ctrl = 1)||(enemynear(0),stateno=5150 || enemynear(0),alive=0)
trigger2 = var(59)=0
trigger2 = time>=1

