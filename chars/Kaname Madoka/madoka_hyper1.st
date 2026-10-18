;============================================================
;因果の糸
;============================================================
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= ifelse(var(51) = 0, -2000,0)
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 5

[State 3100,0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3100,1]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -2000

;一応最初にリセット
[State 3100,2]
type = VarSet
trigger1 = time = 0
trigger1 = var(51) = 0
v = 27
value = 0

;ダメージ用判定
[State 3100,3]
type = varset
trigger1 = time = 0
trigger1 = Var(51) = 1
trigger1 = Var(52) <= 3
v = 27
value = var(52);上昇する前の因果レベルを指定

;因果律の増加
[State 3100,4]
type = varadd
trigger1 = time = 0
trigger1 = Var(51) = 1;マギカモードの時のみ
trigger1 = var(52) < 3;最大は3まで
v = 52
value = 1

[State 3100,5]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 2500
id = 3000
postype = p1
pos = 0, 0
sprpriority = 2
supermove = 200
bindtime = -1
removetime =97
scale = 1,1

[State 3100,6]
type = Explod
trigger1 = Animelem = 19;time(19) = 0
persistent = 0
anim = 3010
id = 3010
postype = p1
pos = 0, 0
sprpriority = -1
supermove = 200
bindtime = -1
removetime = 24
scale = 1,1

[State 3100,7]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s250,11

;スーパーエフェクト処理
[State 3100,8]
type = SuperPause
trigger1 = Animelemtime(1) = 0
time = 80;150
movetime = 80;150
pos = -5, -48

[State 3100,Nothit]
type = Nothitby
Trigger1 = time = 0
value = SCA
time=100

[State 3100,s1];暗転音
type = PlaySnd
trigger1 = Animelemtime(1) = 0
value = s7, 6

[State 3100,After];残像
type = AfterImage
trigger1 = time = 0
time = 125
TimeGap  = 1
FrameGap = 4

[State 3100,Env]
type = Envcolor
trigger1 = Animelemtime(1) = 0
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1
ownpal = 1

[State 3100,8]
type = Varset
trigger1 = time = 0
var(20) = 0

[State 3100,9]
type = VarAdd
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) <= 60
trigger1 = var(20) < 50
var(20) = 2

[State 3100,s9-1]
type = Explod
triggerall = numexplod(4001) = 0
;trigger1 = Var(20) <= 50
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) < 60
anim = 4001;ifelse(var(20) > 10 ,2021 ,2020)
id = 4001
postype = back
pos = 120,0;245
sprpriority = 1
vel = 0,0
bindtime = 1
removetime = 100
supermove = 1
supermovetime = 99999
scale = 0.50,0.50;1.0 - (Var(20)*.01), 1.0 - (var(20)*.01)
ownpal = 1

;スーパーエフェクト終了

;歯車展開
[State 3100,1]
type = helper
trigger1 = Animelem = 2
trigger1 = numhelper(3120) = 0
helpertype = normal
neme = "Haguruma"
ID = 3120
pos = 175,-70
postype = left
stateno = 3120
keyctrl = 0
persistent = 0
supermovetime = 200

[State 3100,s10]
type = Explod
trigger1 = time = 30
trigger1 = numexplod(3100) = 0
persistent = 0
anim = 3110
id = 3100
postype = p1;back
pos = 0, 0
sprpriority = 7
supermove = 1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
ownpal = 1
shadow = 0,0,0

[State 3100,3]
type = ChangeState
trigger1 = time = 100
;trigger1 = AnimTime = 0
value = 3101

;-------------------------------------
;糸の展開
[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 5

[State 3100,0]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s250,12

[State 3101,0]
type = RemoveExplod
trigger1 = time = 0
id = 3100

[State 3100,s10]
type = null;Explod
trigger1 = time = 0
trigger1 = numexplod(3101) = 0
persistent = 0
anim = 3111
id = 3101
postype = p1;back
pos = 0, 0
sprpriority = -1
supermove = 1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
ownpal = 1

[State 3000,1]
type = null;Explod
trigger1 = time = 0
persistent = 0
anim = 3011
id = 3011
postype = p1
pos = 0, 0
sprpriority = 1
supermove = 200
bindtime = -1
removetime = 20
scale = 1,1

[State 3101,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3101,1]
type = Nothitby
Trigger1 = 1
value = SCA
time=1

[State 3101,2]
type = helper
trigger1 = time = 0
helpertype = normal
neme = "String Lv1"
ID = 3110
pos = 0,0
postype = p1
stateno = 3110
keyctrl = 0
persistent = 0
supermovetime = 200
size.shadowoffset = -1

;魔法陣みたいなもの
[State 3000,1]
type = null;Explod
trigger1 = Animelem = 15
persistent = 0
anim = 3015
id = 3015
postype = p1
pos = -50, 10
sprpriority = 1
supermove = 200
bindtime = -1
removetime = 32
scale = 1,1

[State 3001,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3102

;糸が広がり、収束まで
[Statedef 3102]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
velset = 0,0
anim = 3102
ctrl = 0
sprpriority = 5

[State 3102,0]
type = RemoveExplod
trigger1 = time = 0
id = 3101

[State 3102,2]
type = null;Helper
trigger1 = Animelemtime(1) = 0
helpertype = normal
neme = "Mahoujin00"
ID = 3015
pos = 150,-205
postype = p1
stateno = 3015
keyctrl = 0
persistent = 0
size.xscale = .4;.5
size.yscale = .4;.5
supermovetime = 200

[State 3100,1]
type = null;Explod
trigger1 = time = 0
persistent = 0
anim = 3016
id = 3016
postype = p1
pos = -50, 10
sprpriority = 1
supermove = 200
bindtime = -1
removetime = 16
scale = 1,1

[State 3102,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = s3000,0

[State 3102,1]
type = null;helper
trigger1 = Animelem = 8
helpertype = normal
neme = "MadokaBeam!"
ID = 3010
pos = -50,10
postype = p1
stateno = 3010
keyctrl = 0
persistent = 0
supermovetime = 200

[State 3102,2]
type = null;Helper
trigger1 = Animelemtime(1) = 50
helpertype = normal
neme = "Stand"
ID = 3010
pos = -50,-255
postype = p1
stateno = 3010
keyctrl = 0
persistent = 0
size.xscale = .5
size.yscale = .5
supermovetime = 200

[State 3102,3]
type = ChangeState
trigger1 = time >= (100+var(27)*50);AnimTime = 0
trigger1 = numhelper(3110) = 0
value = 3103
ctrl = 1

[Statedef 3103]
type    = S
movetype= A
physics = S
anim = 3103
ctrl = 0
sprpriority = 5

[State 3103,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;運命の糸
[Statedef 3110]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = 3111
ctrl = 0
sprpriority = 6

;アニメのずれ防止
;リンクさせているはずですが微妙にずれるようです。
[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 1
value = 3111
elem = 1

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 2
value = 3111
elem = 2

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 3
value = 3111
elem = 3

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 4
value = 3111
elem = 4

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 5
value = 3111
elem = 5

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 6
value = 3111
elem = 6

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 7
value = 3111
elem = 7

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 8
value = 3111
elem = 8

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 9
value = 3111
elem = 9

[State 3110,0]
type = ChangeAnim
trigger1 = root,stateno = 3101
trigger1 = root,Animelem = 10
value = 3111
elem = 10

[State 3110,***]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 0


[State 3110,0]
type = BindToRoot
trigger1 = 1;helper(3110),time = 0
time = -1
pos = 0,0

[State 3110,0] 
type = velset
trigger1 = helper(3110),time >= 0
x = 0

[State 3110,1] 
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
trigger10 = animelem = 10
attr = S, HA;HP
animtype  = Hard
damage    = 10, 2
priority  = 5
sprpriority = 6
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

[State 3110,2]
type = null;Explod
triggerall = numexplod(1001) = 0
trigger1 = movehit = 1
anim = 351
id = 1001
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
;ontop = 1
supermove = 100
pausemovetime = 100
shadow = 0,0,0
bindtime = -1
sprpriority = 4
removetime = 14
ignorehitpause = 1

[State 3110,4]
type = ChangeState
trigger1 = animtime = 0
trigger2 = root,Stateno = 3102
value = 3111


;---------------------------------------------------------------------------
;広がる波動
[Statedef 3111]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 0
anim = (3112+(root,var(27)))
ctrl = 0
sprpriority = 6

[State 3111,***]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 0

[State 3111,0]
type = BindToRoot
trigger1 = 1;helper(3110),time = 0
time = 1
pos = 0,0

[State 3011,0] 
type = velset
trigger1 = helper(3110),time >= 0
x = 0
y = 0

[State 3111,1] 
type = HitDef
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(3) = 0
trigger3 = animelemtime(9) = 0
attr = S, HA;HP
animtype  = Hard
damage    = ifelse((root,var(51)=0),95,(40+(root,var(27))*1)), 2
priority  = 5
guardflag = MA
pausetime = 8,30
sparkxy = 0,0
sprpriority = 6
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -3,-4
air.velocity = -2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

[State 3111,2]
type = null;Explod
triggerall = numexplod(1001) = 0
trigger1 = movehit = 1
anim = 351
id = 1001
postype = p1
pos = 0,0
vel = 0,0
ownpal = 0
;ontop = 1
supermove = 100
pausemovetime = 100
shadow = 0,0,0
bindtime = -1
sprpriority = 4
removetime = 14
ignorehitpause = 1

[State 3111,4]
type = DestroySelf
trigger1 = time = (80+(root,var(27)*50))
trigger2 = helper(3110),movetype = h

;---------------------------------------------------------------------------
;歯車
[Statedef 3120]
type    = S
movetype= A
physics = N
anim = 3120
ctrl = 0
sprpriority = -3;-2

[State 3120,0] 
type = velset
trigger1 = helper(3120),time >= 0
x = 0
y = 0

[State 3120, 3]
type = AngleAdd
trigger1 = time > 50
value = -.9;-1

[State 3120, 7]
type = AngleDraw
trigger1 = time > 50

[State 3120,1]
type = null;Explod
trigger1 = time = 0
persistent = 0
anim = 3016
id = 3016
postype = p1
pos = -50, 10
sprpriority = 4
supermove = 200
bindtime = -1
removetime = 16
scale = 1,1

[State 3120,-5-helper3137]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3137) = 0
helpertype = normal
neme = "Back_Haguruma"
ID = 3137
pos = 0,20
postype = p1
stateno = 3137
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

[State 3120,2-helper3125]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3125) = 0
helpertype = normal
neme = "mojiban"
ID = 3125
pos = 0,0
postype = p1
stateno = 3125
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

[State 3120,2-helper3127]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3127) = 0
helpertype = normal
neme = "Haguruma2"
ID = 3127
pos = 110,35
postype = p1
stateno = 3127
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

[State 3120,2-helper3129]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3129) = 0
helpertype = normal
neme = "Haguruma3"
ID = 3129
pos = 90,-10
postype = p1
stateno = 3129
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

;＠●●●
[State 3120,2-helper3131]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3133) = 0
helpertype = normal
neme = "Haguruma5"
ID = 3133
pos = -130,0
postype = p1
stateno = 3133
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

;＠●●●
[State 3120,2-helper3131]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3131) = 0
helpertype = normal
neme = "Haguruma4"
ID = 3131
pos = -95,25
postype = p1
stateno = 3131
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

;時間針
[State 3120,Hour hand]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3154) = 0
helpertype = normal
neme = "Hour hand"
ID = 3154
pos = 0,0
postype = p1;この場合のp1はメイン歯車本体を指します。
stateno = 3154
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

;分針
[State 3120,Minute hand]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3152) = 0
helpertype = normal
neme = "Minute hand"
ID = 3152
pos = 0,0
postype = p1;この場合のp1はメイン歯車本体を指します。
stateno = 3152
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

;秒針
[State 3120,Second hand]
type = Helper
trigger1 = helper(3120),time = 0
trigger1 = numhelper(3150) = 0
helpertype = normal
neme = "Second hand"
ID = 3150
pos = 0,0
postype = p1;この場合のp1はメイン歯車本体を指します。
stateno = 3150
ownpal = 1
keyctrl = 0
persistent = 0
size.xscale = 1
size.yscale = 1
supermovetime = 200

[State 3120,2]
type = null;Helper
trigger1 = Animelemtime(1) = 50
helpertype = normal
neme = "Stand"
ID = 3010
pos = -50,-255
postype = p1
stateno = 3010
keyctrl = 0
persistent = 0
size.xscale = .5
size.yscale = .5
supermovetime = 200


[State 3120,4]
type = Changestate
trigger1 = helper,time >= 200
value = 3121

;歯車その１消滅
[Statedef 3121]
type    = S
movetype= A
physics = N
anim = 3121
ctrl = 0
sprpriority = -3;-2

[State 3121,0] 
type = velset
trigger1 = helper(3120),time >= 0
x = 0
y = 0

[State 3121,4]
type = DestroySelf
trigger1 = helper(3120),movetype = h
trigger2 = animtime = 0





;文字盤
[Statedef 3125]
type    = S
movetype= A
physics = N
anim = 3125
ctrl = 0
sprpriority = -2;-1

[State 3125,0] 
type = velset
trigger1 = helper(3125),time >= 0
x = 0
y = 0

[State 3125,4]
type = Changestate
trigger1 = helper(3125),time >= 200
value = 3126

;歯車その１消滅
[Statedef 3126]
type    = S
movetype= A
physics = N
anim = 3126
ctrl = 0
sprpriority = -2;-1

[State 3126,0] 
type = velset
trigger1 = helper(3125),time >= 0
x = 0
y = 0

[State 3126,4]
type = DestroySelf
trigger1 = helper(3125),movetype = h
trigger2 = animtime = 0


;歯車その２
[Statedef 3127]
type    = S
movetype= A
physics = N
anim = 3127
ctrl = 0
sprpriority = -3;-2

[State 3127,0] 
type = velset
trigger1 = helper(3127),time >= 0
x = 0
y = 0

[State 3127,1]
type = AngleAdd
trigger1 = time > 50
value = 1.1

[State 3127,2]
type = AngleDraw
trigger1 = time > 50

[State 3127,3]
type = Changestate
trigger1 = helper(3127),time >= 200
value = 3128

;歯車その１消滅
[Statedef 3128]
type    = S
movetype= A
physics = N
anim = 3128
ctrl = 0
sprpriority = -3;-2

[State 3128,0] 
type = velset
trigger1 = helper(3127),time >= 0
x = 0
y = 0

[State 3128,1]
type = DestroySelf
trigger1 = helper(3127),movetype = h
trigger2 = animtime = 0


;歯車その３
[Statedef 3129]
type    = S
movetype= A
physics = N
anim = 3129
ctrl = 0
sprpriority = -3;-2

[State 3129,00]
type = Palfx
trigger1 = Animtime != 0
add = -40,-40,-40
sinadd = 10, 10, 10
time = 1

[State 3129,0] 
type = velset
trigger1 = helper(3129),time >= 0
x = 0
y = 0

[State 3129,1]
type = AngleAdd
trigger1 = time > 50
value = -1.5

[State 3129,2]
type = AngleDraw
trigger1 = time > 50

[State 3129,4]
type = Changestate
trigger1 = helper(3129),time >= 200
value = 3130

;歯車その１消滅
[Statedef 3130]
type    = S
movetype= A
physics = N
anim = 3130
ctrl = 0
sprpriority = -3;-2

[State 3130,0] 
type = velset
trigger1 = helper(3129),time >= 0
x = 0
y = 0

[State 3130,1]
type = DestroySelf
trigger1 = helper(3129),movetype = h
trigger2 = animtime = 0


;歯車その４
[Statedef 3131]
type    = S
movetype= A
physics = N
anim = 3131
ctrl = 0
sprpriority = -3;-2

[State 3131,00]
type = Palfx
trigger1 = Animtime != 0
add = 20,20,20
sinadd = 10, 10, 10
time = 1

[State 3131,0] 
type = velset
trigger1 = helper(3131),time >= 0
x = 0
y = 0

[State 3131,1]
type = AngleAdd
trigger1 = time > 50
trigger1 = timemod = 5,0
value = 2.5

[State 3131,2]
type = AngleDraw
trigger1 = time > 50

[State 3131,4]
type = Changestate
trigger1 = helper(3131),time >= 200
value = 3132

;歯車その１消滅
[Statedef 3132]
type    = S
movetype= A
physics = N
anim = 3132
ctrl = 0
sprpriority = -3;-2

[State 3132,0] 
type = velset
trigger1 = helper(3131),time >= 0
x = 0
y = 0

[State 3132,1]
type = DestroySelf
trigger1 = helper(3131),movetype = h
trigger2 = animtime = 0


;歯車その５
[Statedef 3133]
type    = S
movetype= A
physics = N
anim = 3133
ctrl = 0
sprpriority = -3;-2

[State 3133,00]
type = null;Palfx
trigger1 = Animtime != 0
add = 20,20,20
sinadd = 10, 10, 10
time = 1

[State 3133,0] 
type = velset
trigger1 = helper(3133),time >= 0
x = 0
y = 0

[State 3133,1]
type = AngleAdd
trigger1 = time > 50
;trigger1 = timemod = 5,0
value = -1.5

[State 3133,2]
type = AngleDraw
trigger1 = time > 50

[State 3133,3]
type = Changestate
trigger1 = helper(3133),time >= 200
value = 3134

;歯車その１消滅
[Statedef 3134]
type    = S
movetype= A
physics = N
anim = 3134
ctrl = 0
sprpriority = -3;-2

[State 3134,0] 
type = velset
trigger1 = helper(3133),time >= 0
x = 0
y = 0

[State 3134,1]
type = DestroySelf
trigger1 = helper(3133),movetype = h
trigger2 = animtime = 0



;歯車その７(一番後ろの歯車)
[Statedef 3137]
type    = S
movetype= A
physics = N
anim = 3137
ctrl = 0
sprpriority = -5

[State 3137,00]
type = Palfx
trigger1 = Animtime != 0
add = 40,40,40
sinadd = 10, 10, 10
time = 1

[State 3137,0] 
type = velset
trigger1 = helper(3137),time >= 0
x = 0
y = 0

[State 3137,1]
type = AngleAdd
trigger1 = time > 50
value = -.2

[State 3137,2]
type = AngleDraw
trigger1 = time > 50

[State 3137,3]
type = Changestate
trigger1 = helper(3137),time >= 200
value = 3138

;歯車その７消滅
[Statedef 3138]
type    = S
movetype= A
physics = N
anim = 3138
ctrl = 0
sprpriority = -5

[State 3138,0] 
type = velset
trigger1 = helper(3137),time >= 0
x = 0
y = 0

[State 3138,1]
type = DestroySelf
trigger1 = helper(3137),movetype = h
trigger2 = animtime = 0


;秒針
[Statedef 3150]
type    = S
movetype= A
physics = N
anim = 3150
ctrl = 0
sprpriority = -1;1

[State 3150,0] 
type = velset
trigger1 = helper(3150),time >= 0
x = 0
y = 0

[State 3150,1]
type = AngleAdd
trigger1 = time > 50
trigger1 = timemod = 15,0
value = -2.5

[State 3150,2]
type = AngleDraw
trigger1 = time > 50

[State 3150,3]
type = Changestate
trigger1 = helper(3150),time >= 200
value = 3151

;秒針消滅
[Statedef 3151]
type    = S
movetype= A
physics = N
anim = 3151
ctrl = 0
sprpriority = -2

[State 3151,0] 
type = velset
trigger1 = helper(3150),time >= 0
x = 0
y = 0

[State 3151,1]
type = DestroySelf
trigger1 = helper(3150),movetype = h
trigger2 = animtime = 0


;分針
[Statedef 3152]
type    = S
movetype= A
physics = N
anim = 3152
ctrl = 0
sprpriority = -1;1

[State 3152,0] 
type = velset
trigger1 = helper(3152),time >= 0
x = 0
y = 0

[State 3150,1]
type = AngleAdd
trigger1 = time > 50
trigger1 = timemod = 600,0
value = -2

[State 3152,2]
type = AngleDraw
trigger1 = time > 50

[State 3152,3]
type = Changestate
trigger1 = helper(3152),time >= 200
value = 3153

;分針消滅
[Statedef 3153]
type    = S
movetype= A
physics = N
anim = 3153
ctrl = 0
sprpriority = -2

[State 3153,0] 
type = velset
trigger1 = helper(3152),time >= 0
x = 0
y = 0

[State 3153,1]
type = DestroySelf
trigger1 = helper(3152),movetype = h
trigger2 = animtime = 0


;時針
[Statedef 3154]
type    = S
movetype= A
physics = N
anim = 3154
ctrl = 0
sprpriority = -1;1

[State 3154,0] 
type = velset
trigger1 = helper(3154),time >= 0
x = 0
y = 0

[State 3154,3]
type = Changestate
trigger1 = helper(3154),time >= 200
value = 3155

;時針消滅
[Statedef 3155]
type    = S
movetype= A
physics = N
anim = 3155
ctrl = 0
sprpriority = -2

[State 3155,0] 
type = velset
trigger1 = helper(3154),time >= 0
x = 0
y = 0

[State 3155,1]
type = DestroySelf
trigger1 = helper(3154),movetype = h
trigger2 = animtime = 0










;模倣技（Ｌｖ２）
;暗転カットインは無し
;ただの模倣であるため因果レベルの恩恵は受けないし、因果レベルの増減とは無関係。
;============================================================
;仁美の腹パン
;============================================================
[Statedef 3250]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= ifelse(var(51) = 0, -2000,0)
velset = 0,0
anim = 3250
ctrl = 0
sprpriority = 2

[State 3250,0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3250,1]
type = Varadd
trigger1 = time = 0
trigger1 = Var(51) = 1
v = 55
value = -2000

[State 3100,5]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 2500
id = 3000
postype = p1
pos = 0, 0
sprpriority = 2
supermove = 200
bindtime = -1
removetime =97
scale = 1,1

[State 3100,6]
type = Explod
trigger1 = Animelem = 19;time(19) = 0
persistent = 0
anim = 3010
id = 3010
postype = p1
pos = 0, 0
sprpriority = -1
supermove = 200
bindtime = -1
removetime = 24
scale = 1,1

[State 3100,7]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = s250,11

;スーパーエフェクト処理
[State 3100,8]
type = SuperPause
trigger1 = Animelemtime(1) = 0
time = 80;150
movetime = 80;150
pos = -5, -48

[State 3100,Nothit]
type = Nothitby
Trigger1 = time = 0
value = SCA
time=100

[State 3100,s1];暗転音
type = PlaySnd
trigger1 = Animelemtime(1) = 0
value = s7, 6

[State 3100,After];残像
type = AfterImage
trigger1 = time = 0
time = 125
TimeGap  = 1
FrameGap = 4

[State 3100,Env]
type = Envcolor
trigger1 = Animelemtime(1) = 0
persistent = 0
ignorehitpause = 1
value = 0, 0, 0
time = 70
under = 1
supermove = 1
ownpal = 1

[State 3100,8]
type = Varset
trigger1 = time = 0
var(20) = 0

[State 3100,9]
type = VarAdd
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) <= 60
trigger1 = var(20) < 50
var(20) = 2

[State 3100,s9-1]
type = null;Explod
triggerall = numexplod(4001) = 0
;trigger1 = Var(20) <= 50
trigger1 = Animelemtime(1) >= 0
trigger1 = Animelemtime(1) < 60
anim = 4001;ifelse(var(20) > 10 ,2021 ,2020)
id = 4001
postype = back
pos = 120,0;245
sprpriority = 1
vel = 0,0
bindtime = 1
removetime = 100
supermove = 1
supermovetime = 99999
scale = 0.50,0.50;1.0 - (Var(20)*.01), 1.0 - (var(20)*.01)
ownpal = 1

;スーパーエフェクト終了

[State 3100,s10]
type = null;Explod
trigger1 = time = 30
trigger1 = numexplod(3100) = 0
persistent = 0
anim = 3110
id = 3100
postype = p1;back
pos = 0, 0
sprpriority = 7
supermove = 1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
ownpal = 1
shadow = 0,0,0

[State 3100,3]
type = ChangeState
trigger1 = time = 100
;trigger1 = AnimTime = 0
value = 3251

[Statedef 3251]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 0
velset = 0,0
;anim = 3251
ctrl = 0
sprpriority = 2

[State 3251]
type = Posadd
trigger1 = time = 0
x = 15

[State 3110,1] 
type = HitDef
trigger1 = animelem = 2
attr = S, HA
animtype  = Hard
damage    = 100, 20
priority  = 5
sprpriority = 2
hitflag = MAFD
guardflag = MA
pausetime = 40,45
sparkxy = 0,0
hitsound   = s5,5
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = 0,0;-3,-4
air.velocity = 0,0;-2.5,-3
sparkno = 3;s300
fall = 1
air.recover = 0

[State 3251,0]
type = TargetState
trigger1 = movehit = 1
value = 3255

[State 800,***]
type = TargetBind
trigger1 = numenemy
trigger1 = enemy,stateno = 3255
pos = 20,-50
time = 1

[State 3251,0]
type = TargetState
trigger1 = numenemy
trigger1 = enemy,stateno = 3255
trigger1 = animelemtime(6) >= 45
value = 3256

[State 3251,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;腹パン　投げられ
[Statedef 3255]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 3

;腹パンやられがある場合
[state 3981, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(9881) = 1
trigger1 = time = 0
value = 9881

;無い場合の汎用動作
[State 3255, 1]
type = ChangeAnim2
trigger1 = selfanimexist(9881) != 1
Trigger1 = Time = 0
value = 3255

[State 3255, 0]
type = Lifeadd
trigger1 = animelem = 4
value = -200

[State 3255,0]
type = HitFallSet
trigger1 = time = 0
value = 1

[State 3255, 4] ;保険
type = SelfState
trigger1 = time > 200
value = 5100 ;Hit ground

[Statedef 3256]
type    = S
movetype= H
physics = S
velset = 0,0
poweradd = 40
sprpriority = 3

[State 3255, 1]
type = ChangeAnim2
;trigger1 = selfanimexist(8005) != 1
Trigger1 = Time = 0
value = 3256

[State 3256,0]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3256,0]
type = PosSet
trigger1 = time = 0
y = 0

[State 3256,2]
type = null;ChangeState
triggerall = time > 5
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 3256,4]
type = SelfState
trigger1 = animtime = 0
;trigger1 = time >= 60
value = 5100
ctrl = 1