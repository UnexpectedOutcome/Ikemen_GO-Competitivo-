;====================================================
;================FX==================================
;====================================================
;Auxiliar de cámara lenta
[Statedef 999]
type    = U
physics = N
velset = 0,0
anim = 999
ctrl = 0
sprpriority = 3

[State 999, Cámara lenta]
type = Pause
trigger1 = time = [0,15]
time = 1
movetime = 0


[State 999, DestroySelf]
type = DestroySelf
trigger1 = time = 16


;===============================================================================
;-------------------------------------------------------------------------------
; MBAA Ex Blue
;-------------------------------------------------------------------------------
[StateDef 6010,MBAA Ex Blue]
Physics = N
Anim  = 8505
sprpriority = 3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State -1]
Type     = NotHitBy
Trigger1 = 1
Value    = SCA
Time     = 1

;sChrge
[State -1]
Type     = PlaySnd
Trigger1 = Time = 0
Value    = S8,1
volumescale=300

[State -1]
Type     = DestroySelf
Trigger1 = animtime = 0
;---------------------------------------------------------------------

; Heat Ring 1
[Statedef 6220];1520
type    = S
movetype= I
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
anim = 6330
sprpriority = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random%360

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 45

[State 0, VarSet]
type = VarAdd
trigger1 = time > 0
v = 11
value = 6

[State 0, AngleDraw]
type = AngleDraw
trigger1=1
value = floor(var(10)-var(11))
scale=-1.4*cos(var(11)*pi/180),-1.4*cos(var(11)*pi/180)


[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(11)>=180
;---------------------------------------------------------------------------
; Heat Ring 2
[Statedef 6230];1521
type    = S
movetype= I
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
anim = 6330
sprpriority = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = 270

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 110

[State 0, VarSet]
type = VarAdd
trigger1 = time > 0
v = 11
value = 4

[State 0, AngleDraw]
type = AngleDraw
trigger1=1
value = var(10)
scale=-1.7*cos(var(11)*pi/180),-0.5*cos(var(11)*pi/180)


[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(11)>=180
;---------------------------------------------------------------------------
; Heat Ring 3
[Statedef 6240];1522
type    = S
movetype= I
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
anim = 6330
sprpriority = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = 170+random%20

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 110

[State 0, VarSet]
type = VarAdd
trigger1 = time > 0
v = 11
value = 4

[State 0, AngleDraw]
type = AngleDraw
trigger1=1
value = var(10)
scale=-1.2*cos(var(11)*pi/180),-0.4*cos(var(11)*pi/180)


[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(11)>=180
;---------------------------------------------------------------------------

;===============================================================================
; HitSpark - Hands - Light
;===============================================================================
[StateDef 8000, Hands - Light]
Physics = N
Anim    = 16000
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks"
ID = 8005
stateno = 8005
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 1

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.5

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -64

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),1.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0

;===============================================================================
; HitSpark - Hands - Medium
;===============================================================================
[StateDef 8001, Hands - Medium]
Physics = N
Anim    = 16000
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks"
ID = 8006
stateno = 8006
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 2

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.75

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),2.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0
;===============================================================================
; HitSpark - Hands - Hard
;===============================================================================
[StateDef 8002, Hands - Hard]
Physics = N
Anim    = 16000
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks Lv 1"
ID = 8005
stateno = 8005
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 1

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Part2"
ID = 8012
stateno = 8012
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height = var(10)

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.75

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),1.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0
;===============================================================================
; HitSpark - Hands - Hard 2
;===============================================================================
[StateDef 8012, Hands - Hard 2]
Physics = N
Anim    = 16000
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 1

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.height)+90-20+random%40

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.75

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),1.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0
;===============================================================================
; HitSpark - Hands - SP
;===============================================================================
[StateDef 8003, Hands - SP]
Physics = N
Anim    = 16000
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 2

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

[State 0, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal
name = "Sparks"
ID = 8008
stateno = 8008
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height=-var(10)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Part2"
ID = 8013
stateno = 8013
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height = var(10)

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 1

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>9
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5)*1.5,2.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0

;===============================================================================
; HitSpark - Hands - SP 2
;===============================================================================
[StateDef 8013, Hands - SP 2]
Physics = N
Anim    = 16000
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 2

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.height)+90-20+random%40

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks"
ID = 8008
stateno = 8008
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height=-var(10)

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 1

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),4.0/(fvar(5)*fvar(5))

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0

;===============================================================================
; HitSparks - Hands - Small
;===============================================================================
[StateDef 8005, Hands - Small]
Physics = N
Anim    = 6120;+random%2
sprpriority=5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale=0.5,0.5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

;===============================================================================
; HitSparks - Hands - Medium
;===============================================================================
[StateDef 8006, Hands - Medium]
Physics = N
Anim    = 9999
sprpriority=5

;--------------REPEAT ZONE--------------
;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8020
stateno = 8020
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=1

;===============================================================================
; HitSparks - Hands - Special
;===============================================================================
[StateDef 8007, Hands - Special]
Physics = N
Anim    = 9999
sprpriority=5

;--------------REPEAT ZONE--------------
;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8021
stateno = 8021
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;===============================================================================
; HitSparks - Hands - Line
;===============================================================================
[StateDef 8008, Hands - Line]
Physics = N
Anim    = 9999
sprpriority=5

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.height)

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16000
ID = 16000
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16000
ID = 16000
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16000
ID = 16000
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16000
ID = 16000
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16000
ID = 16000
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16000
ID = 16000
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 6
ID = 16000
scale=0.25-(time-6)*0.01,0.25-(time-6)*0.01
trans=addalpha
alpha=256-(time-6)*10,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 25
id = 16000

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 25

;===============================================================================
; HitSpark - Hands - Medium
;===============================================================================
[StateDef 8020, Hands - Medium]
Physics = N
Anim    = 16001
sprpriority=5

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 255.0

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = floor(fvar(5)),256

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.ground.back)

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = const(size.height)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  -var(10)-90
scale =  0.07,0.5+var(15)*0.1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1.2*var(15)*cos(var(10)*(pi/180.0))
y = 1.2*var(15)*sin(var(10)*(pi/180.0))


[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = -40.0/var(15)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(5)<=0

;===============================================================================
; HitSpark - Hands - Hard
;===============================================================================
[StateDef 8021, Hands - Hard]
Physics = N
Anim    = 16001
sprpriority=5

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 255.0

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = floor(fvar(5)),256

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.ground.back)

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = const(size.height)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  -var(10)-90
scale =  0.03+fvar(5)/2560.0,0.8+var(15)*0.1+fvar(5)/256.0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1.2*var(15)*cos(var(10)*(pi/180.0))
y = 1.2*var(15)*sin(var(10)*(pi/180.0))

[State 0, VarAdd]
type = VarAdd
trigger1 = time > 0
fv = 5
value = -40.0/var(15)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(5)<=0
;===============================================================================
; HitSpark - Sword - Light
;===============================================================================
[StateDef 8100, Sword - Light]
Physics = N
Anim    = 16005
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks"
ID = 8105
stateno = 8105
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 1

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.5

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -64

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),1.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0

;===============================================================================
; HitSpark - Sword - Medium
;===============================================================================
[StateDef 8101, Sword - Medium]
Physics = N
Anim    = 16005
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks"
ID = 8106
stateno = 8106
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 2

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.75

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -40

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5)*1.5,2.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0
;===============================================================================
; HitSpark - Sword - Hard
;===============================================================================
[StateDef 8102, Sword - Hard]
Physics = N
Anim    = 16005
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks Lv 1"
ID = 8105
stateno = 8105
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 1

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Part2"
ID = 8112
stateno = 8112
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height = var(10)

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.75

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),1.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0
;===============================================================================
; HitSpark - Sword - Hard 2
;===============================================================================
[StateDef 8112, Sword - Hard 2]
Physics = N
Anim    = 16005
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 1

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.height)+90-20+random%40

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 0.75

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),1.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0
;===============================================================================
; HitSpark - Sword - SP
;===============================================================================
[StateDef 8103, Sword - SP]
Physics = N
Anim    = 16005
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 2

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

[State 0, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal
name = "Sparks"
ID = 8108
stateno = 8108
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height=-var(10)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Part2"
ID = 8113
stateno = 8113
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height = var(10)

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 1

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>9
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5)*1.5,2.0/fvar(5)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0

;===============================================================================
; HitSpark - Sword - SP 2
;===============================================================================
[StateDef 8113, Sword - SP 2]
Physics = N
Anim    = 16005
sprpriority=6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Scale
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 2

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 6
value = 255

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.height)+90-20+random%40

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Sparks"
ID = 8108
stateno = 8108
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.height=-var(10)

;Scale Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = 1

;Alpha Add
[State 0, VarAdd]
type = VarAdd
trigger1 = time>6
v = 6
value = -50

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale = fvar(5),4.0/(fvar(5)*fvar(5))

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(6), 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(6)<=0

;===============================================================================
; HitSparks - Sword - Small
;===============================================================================
[StateDef 8105, Sword - Small]
Physics = N
Anim    = 6120;+random%2
sprpriority=5

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 2
add = 0,0,256
mul = 256,256,256

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(10)
scale=0.5,0.5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0

;===============================================================================
; HitSparks - Sword - Medium
;===============================================================================
[StateDef 8106, Sword - Medium]
Physics = N
Anim    = 9999
sprpriority=5

;--------------REPEAT ZONE--------------
;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 1+random % 3

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8120
stateno = 8120
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=1

;===============================================================================
; HitSparks - Sword - Special
;===============================================================================
[StateDef 8107, Sword - Special]
Physics = N
Anim    = 9999
sprpriority=5

;--------------REPEAT ZONE--------------
;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

;Temp Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = random % 360

;Temp Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 11
value = 3+random % 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Spark"
ID = 8121
stateno = 8121
pos = 0,0
postype = p1
supermovetime = 9999
pausemovetime = 9999
size.ground.back=var(10)
size.height=var(11)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;===============================================================================
; HitSparks - Sword - Line
;===============================================================================
[StateDef 8108, Sword - Line]
Physics = N
Anim    = 9999
sprpriority=5

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.height)

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16005
ID = 16005
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16005
ID = 16005
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16005
ID = 16005
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16005
ID = 16005
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16005
ID = 16005
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = -2.5+random/200.0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 16005
ID = 16005
pos = 0,0
postype = p1
bindtime = 1
vel = fvar(5)*cos(var(10)*pi/180.0),fvar(5)*sin(var(10)*pi/180.0)
removetime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 0.25,0.25
sprpriority = 4

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 6
ID = 16005
scale=0.25-(time-6)*0.01,0.25-(time-6)*0.01
trans=addalpha
alpha=256-(time-6)*10,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 25
id = 16005

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 25

;===============================================================================
; HitSpark - Sword - Medium
;===============================================================================
[StateDef 8120, Sword - Medium]
Physics = N
Anim    = 16006
sprpriority=5

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 255.0

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = floor(fvar(5)),256

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.ground.back)

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = const(size.height)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  -var(10)-90
scale =  0.07,0.5+var(15)*0.1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1.2*var(15)*cos(var(10)*(pi/180.0))
y = 1.2*var(15)*sin(var(10)*(pi/180.0))


[State 0, VarAdd]
type = VarAdd
trigger1 = time>0
fv = 5
value = -40.0/var(15)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(5)<=0

;===============================================================================
; HitSpark - Sword - Hard
;===============================================================================
[StateDef 8121, Sword - Hard]
Physics = N
Anim    = 16006
sprpriority=5

;Alpha
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fv = 5
value = 255.0

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = floor(fvar(5)),256

;Angle
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = const(size.ground.back)

;Speed
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = const(size.height)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =  -var(10)-90
scale =  0.03+fvar(5)/2560.0,0.8+var(15)*0.1+fvar(5)/256.0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1.2*var(15)*cos(var(10)*(pi/180.0))
y = 1.2*var(15)*sin(var(10)*(pi/180.0))

[State 0, VarAdd]
type = VarAdd
trigger1 = time > 0
fv = 5
value = -40.0/var(15)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(5)<=0


;---------------------------------------------------------------------------------------
[Statedef 8200,--- guardSparkBlue]
type    = U
movetype = H
physics = N
velset = 0,0
anim = 998
ctrl = 0
sprpriority = 3

[State 0, Explod] 
	type=explod
	trigger1=!time
	anim=4090;6660 ; <MASK>
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=4
	ownpal=1
	scale=-0.5,1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
[State 0, Explod]
	type=explod
	trigger1=!time
	anim=4091;6611;2;
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=5
	ownpal=1
	scale=-0.5,1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
;---
[State 0, Explod] 
	type=explod
	trigger1=!time
	anim=4094;6621;2;
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=6
	ownpal=1
	scale=-0.5,1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
[State 0, Explod] 
	type=explod
	trigger1=!time
	anim=4093;6620
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=7
	ownpal=1
	scale=0.3,0.8
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
;
[State 0, palfx] 
	type=palfx
	trigger1=!time
	add = -100,120,120;ifelse(sysvar(0)=2,-100,120),ifelse(sysvar(0)=2,120,-50),ifelse(sysvar(0)=2,120,-100)
	time=5


[State 0,EnvShake]
type = EnvShake
trigger1 = time =0
time = 15
freq = 90
ampl = -2
phase = 90


[State 0, ScreenBound]
type = ScreenBound
triggerall = time > 0
trigger1 = 1
movecamera = 1,1
value	= 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = -17
y = -5


;---

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,2
volumescale = 300


[State 0, DestroySelf]
type = DestroySelf
trigger1 =time>25;18



;-----------------------------------------------------------------------------
[Statedef 8201,--- guardSparkRed]
type    = U
movetype = H
physics = N
velset = 0,0
anim = 998
ctrl = 0
sprpriority = 3

[State 0, Explod] 
	type=explod
	trigger1=!time
	anim=4090;6660 ; <MASK>
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=4
	ownpal=1
	scale=-0.5,1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
[State 0, Explod]
	type=explod
	trigger1=!time
	anim=4092;6612;
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=5
	ownpal=1
	scale=-0.5,1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
;---
[State 0, Explod] 
	type=explod
	trigger1=!time
	anim=4095;6622;
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=6
	ownpal=1
	scale=-0.5,1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1
[State 0, Explod] 
	type=explod
	trigger1=!time
	anim=4093;6620
	postype=p1
	pos=0,0;const(size.mid.pos.x)+const(size.ground.front), const(size.mid.pos.y)
	sprpriority=7
	ownpal=1
	scale=0.3,0.8
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1


[state 0, palfx] ;[.05b]
	type=palfx
	trigger1=!time
	add = 120,-50,-100;
	time=5


[State 0,EnvShake]
type = EnvShake
trigger1 = time =0
time = 15
freq = 90
ampl = -2
phase = 90


[State 0, ScreenBound]
type = ScreenBound
triggerall = time > 0
trigger1 = 1
movecamera = 1,1
value	= 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = -17
y = -5


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S7,2
volumescale = 300


[State 0, DestroySelf]
type = DestroySelf
trigger1 =time>18



;-----------------------------------------------------------------------------
[Statedef 8202,--- helper zoom]
type    = U
movetype = H
physics = N
velset = 0,0
anim = 998
ctrl = 0
sprpriority = 3


[State 0,EnvShake]
type = EnvShake
trigger1 = time =0
time = 15
freq = 90
ampl = -2
phase = 90


[State 0, ScreenBound]
type = ScreenBound
triggerall = time > 0
trigger1 = 1
movecamera = 1,0
value	= 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = -5
y = -2


[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,stateNo!=3202;time>18

;-----------------------------------------------------------------------------
[Statedef 8203,--- helper zoom]
type    = U
movetype = H
physics = N
velset = 0,0
anim = 998
ctrl = 0
sprpriority = 3


[State 0,EnvShake]
type = EnvShake
trigger1 = time =0
time = 15
freq = 90
ampl = -2
phase = 90


[State 0, ScreenBound]
type = ScreenBound
triggerall = time > 0
trigger1 = 1
movecamera = 1,0
value	= 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 5
y = 2


[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,stateNo!=3202;time>18



;-----------------------------------------------------------------------------

;-----------------------------------------------------------------------------
;==========================================================================
;Dai Butsu Giri 
;==========================================================================
[Statedef 40000]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 6030;6190
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 0
value = random%360

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(0)
scale=1.5,0.7

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 6
freq = 15
ampl = 80
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 6
time = 20
freq = 110
ampl = -9
phase = 90


[State 0, BGPalFX]
type = BGPalFX
trigger1 = time<=4
time = 2
add = 128,128,128
mul = 256,256,256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time>4
trigger1 = time<20
time = 2
mul = 256-time*7,256-time*7,256-time*7

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time>=20
trigger1 = time < 120
time = 2
mul =128,128,128

[State 0, AllPalFX]
type = BGPalFX
trigger1 = time%3=0
time = 2
add = -50,-50,-50
mul = 256,256,256
color=128

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;----------------------------------------------------------------


;==========================================================================
;Slice Ashura
;==========================================================================
[Statedef 40001]
type = S
movetype = A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7

;***********------"mugshot hit"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50004) 
trigger1 = time=0
helpertype = normal
name = "mugshot"
ID = 50004
stateno = 50004
pos = 0,0
postype = p1 
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot hit"-----------**********


[State 0, cortes multiples II]
type = Explod
trigger1 = time = 0
anim = 6250
ID = 50
pos = 0,-10
postype = back;left
facing =1
vfacing = 1
bindtime = 1
removetime = -2
scale = .9,.6
sprpriority = 11
ontop = 0
ownpal = 1


[State 0, circle I]
type = Explod
trigger1 = time = 0
anim = 6220
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1

[State 0, circle II]
type = Explod
trigger1 = time = 15
anim = 6230
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1
;
[State 0, corte diagonal]
type = Explod
trigger1 = time = 20
anim = 6210
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale =1,1
sprpriority = 10
ontop = 0
ownpal = 1
;

;-------------------------
[State 3000, CÃ¡mara lenta]
type = Pause
trigger1 = time = [27, 30]
time =2
movetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time%3=0
trigger1 = time <=10
value = S2,6
channel=6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 13
value = S3,13
channel=6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S8,4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 7
freq = 13
ampl = 10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 7
freq = 13
ampl = -10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 7
freq = 13
ampl = 20
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 27
time = 7
freq = 13
ampl = 20
phase = 180


[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 30

;==========================================================================
;Slice Rokudou
;==========================================================================
[Statedef 40002]
type = S
movetype = A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7


;***********------"mugshot hit"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50004) 
trigger1 = time = 0
helpertype = normal ;player
name = "mugshot"
ID = 50004
stateno = 50004
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot hit"-----------**********


[State 0,  cortes multiple]
type = Explod
trigger1 = time = 0
anim = 6240
ID = 50
pos = 0,0
postype = left
facing =1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 11
ontop = 0
ownpal = 1

[State 0, circle I]
type = Explod
trigger1 = time = 0
anim = 6220
ID = 50
pos = 0,240
postype =front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1
;
[State 0, circle II]
type = Explod
trigger1 = time = 11
anim = 6230
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1
 
[State 0, corte diagonal]
type = Explod
trigger1 = time = 20
anim = 6210
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 10
ontop = 0
ownpal = 1
;;
[State 0, corte doble]
type = Explod
trigger1 = time = 20
anim = 6080
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 10
ontop = 0
ownpal = 1

;-------------------------
[State 3000, Camara lenta]
type = Pause
trigger1 = time = [27, 30]
time =2
movetime = 0

[State 0, Explotion]
type = Explod
trigger1 = time = 27
anim = 8505
ID =8505
pos = 0,-30
postype =p2
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
scale = .9,.9
sprpriority = 15
ontop = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999
;ignorehitpause=1

[State 200, 1]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 60, 0
animtype  = hard;Up
guardflag =
hitflag = MAF
priority = 7, Hit
pausetime = 0, 27
sparkno = -1
sparkxy = 0, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -6
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity =0,-6
air.hittime = 12
hitonce=1
numhits=0
fall=1
fall.recover=0
kill=0
getpower=0
; 
[State 200, 1]
type = HitDef
trigger1 = time = 27
attr = S, HA
getpower=0
damage = 110, 0
animtype  = hard;Up
guardflag =
hitflag = MAF
priority = 7, Hit
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0, -6
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = 0,-6
air.hittime = 12
hitonce=1
numhits=2
fall=1
fall.recover=0
p2stateno=5803
kill=1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 7
freq = 130
ampl = 10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 7
freq = 130
ampl = -10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 7
freq = 130
ampl = 50
phase = 180
; 
[State 0, EnvShake]
type = EnvShake
trigger1 = time = 27
time = 30
freq = 110
ampl = -7
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S3,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time%3=0
trigger1 = time <=27
value = S2,6
channel=6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 27
value = S3,13
channel=6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 27
value = S8,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time=29
value = S4,78
channel = 0


[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 30

;-------------------------------------------------------------------------------


;==========================================================================
;Slice Daishinkan
;==========================================================================
[Statedef 40003]
type = S
movetype = A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7

;***********------"mugshot hit"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50004) 
trigger1 = time = 0
helpertype = normal ;player
name = "mugshot"
ID = 50004
stateno = 50004
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot hit"-----------**********

[State 0,  cortes multiple]
type = Explod
trigger1 = time = 0
anim = 6240
ID = 50
pos = 0,0
postype = back;left
facing =1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 11
ontop = 0
ownpal = 1

[State 0, circle I]
type = Explod
trigger1 = time = 0
anim = 6220
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1
 
[State 0, circle II]
type = Explod
trigger1 = time = 15;11
anim = 6230
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1

[State 0, corte diagonal]
type = Explod
trigger1 = time = 20;13
anim = 6210
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale =1,1
sprpriority = 10
ontop = 0
ownpal = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20;13
value = S8,4


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 7
freq = 13
ampl = 10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 7
freq = 13
ampl = -10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 7
freq = 13
ampl = 50
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 27
time = 30
freq = 110
ampl = -7
phase = 90

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 30

;-------------------------------------------------------------------------------

;==========================================================================
;Slice Rengoku
;==========================================================================
[Statedef 40004]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7

;***********------"mugshot hit"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50004) 
trigger1 = time = 0
helpertype = normal ;player
name = "mugshot"
ID = 50004
stateno = 50004
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot hit"-----------**********


[State 0, circle II]
type = Explod
trigger1 = time = 15
anim = 6230
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 7
freq = 13
ampl = 15
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 7
freq = 13
ampl = -15
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 7
freq = 13
ampl = 25
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 27
time = 7
freq = 13
ampl = 25
phase = 180

[State 0, Explod]
type = Explod
trigger1 = time = 20
anim = 6210
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale =1,1
sprpriority = 10
ontop = 0
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20;13
value = S8,4


[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time=30
;----------------------------------------------------------------

;==========================================================================
;Slice Makyuusen
;==========================================================================
[Statedef 40005]
type = S
movetype = A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 3009
sprpriority = 7

;***********------"mugshot hit"-----------**********
[State 0, Helper]
type = Helper
triggerall = !numhelper(50004) 
trigger1 = time=0
helpertype = normal
name = "mugshot"
ID = 50004
stateno = 50004
pos = 0,0
postype = p1 
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
;***********------"mugshot hit"-----------**********

[State 0, cortes multiples II]
type = Explod
trigger1 = time = 0
anim = 6250
ID = 50
pos = 0,-10
postype = back;left
facing =1
vfacing = 1
bindtime = 1
removetime = -2
scale = .9,.6
sprpriority = 11
ontop = 0
ownpal = 1

[State 0, circle I]
type = Explod
trigger1 = time = 0
anim = 6220
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1

[State 0, circle II]
type = Explod
trigger1 = time = 15
anim = 6230
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.9,1
sprpriority = 10
ontop = 0
ownpal = 1

;
[State 0, corte doble]
type = Explod
trigger1 = time = 20
anim = 6080
ID = 50
pos = 0,240
postype = front
facing = -facing
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 10
ontop = 0
ownpal = 1


;-------------------------
[State 3000, CÃ¡mara lenta]
type = Pause
trigger1 = time = [27, 30]
time =2
movetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time%3=0
trigger1 = time <=10
value = S2,6
channel=6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 13
value = S3,13
channel=6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S8,4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 7
freq = 13
ampl = 10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 7
freq = 13
ampl = -10
phase = 270

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 7
freq = 13
ampl = 20
phase = 180

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 27
time = 7
freq = 13
ampl = 20
phase = 180

[State 30010, DestroySelf]
type = DestroySelf
trigger1 = time = 30





;====================================================================================================
;Mugshot
;====================================================================================================
[Statedef 50003]
movetype = I
anim = 99999
sprpriority = 1
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = !time 
anim = 23005
ID = 23005
pos = 0,-30
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 100,100
sprpriority = -100
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
removeongethit = 0
ignorehitpause = 1


[State 0, Explod]
type = Explod
triggerall = numexplod(30000) = 0
trigger1 = !time
anim =ifelse(random%2,23002,ifelse(random%2,23001,23004));ifelse(random<=500,23002,23001)
ID = 30000
pos = 0,0
postype = back
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = 0.5,0.5
sprpriority = -40
ownpal = 1
ignorehitpause = 1
vel = 0,0

;----------------player--------------------------------------------
[State 0, Explod]
type = Explod
triggerall = numexplod(10001) = 0
trigger1 = !time
anim = ifelse(root,stateno=3001,9024,ifelse(root,stateno=3101,9010,ifelse(root,stateno=3300,9027,ifelse(root,stateno=3600,99999,ifelse(root,stateno=3700,9017,ifelse(root,stateno=1100,9030,ifelse(root,stateno=1300,9033,ifelse(root,stateno=1400,9032,ifelse(root,stateno=1600,9037,ifelse(root,stateno=1800,9031,ifelse(root,stateno=2300,9036,ifelse(root,stateno=2400,9038,ifelse(root,stateno=3801,9015,9014)))))))))))))
ID = 10001
pos = -30,200
postype = back
bindtime = 9999
removetime = 9999
pausemovetime = 9999
supermovetime = 9999
scale = 0.5,0.5
sprpriority = -50
ownpal = 0
ignorehitpause = 1
vel = 1,0

;----POWER-------------------- 
[State 4000, Explod]
type = Explod
triggerall=root,stateno=[3000,4000]
triggerall = numexplod(100550)=0
trigger1 = !time 
anim = ifelse(random%2,8550,ifelse(random%2,8551,8552))
ID = 100550
pos =(ifelse(root,stateno=3300,3,0)),(ifelse(root,stateno=3300,-28,-35))
postype = p1
removetime = -2
scale = .8,.8
ownpal = 1
supermovetime = 9999
pausemovetime=9999
sprpriority = 3
removeOnGetHit = 1
;---------------------------------------------------------------

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 20
ID = 10001
ownpal = 1
trans = addalpha
alpha = 0+(time*13),256
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 0, PalFXWiz]
type = PalFX
triggerall = !time
trigger1 = random>=1&&random<150
time = 40
mul = random%360,random%360,random%360
invertall = 0
color = 256

[State 0, Scale]
type = VarAdd
trigger1 = Time >= 20
fv = 1
value = 0.025
ignorehitpause = 1

[State 0, Alpha]
type = VarAdd
trigger1 = Time >= 20
fv = 2
value = 17
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 20
ID = 10001
trans = addalpha
scale = 0.5+FVar(1),0.5+FVar(1)
alpha = 256-FVar(2),FVar(2)
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>=33;29
id = 10001
ignorehitpause = 1

[State 4, PlaySnd - power]
type = PlaySnd
triggerall = root,stateno = [3000,4000]
trigger1 = time=0
value = 8, ifelse(random%2,20,ifelse(random%2,21,22))

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 34;30

;================================================================



;==========================================================================
;Mugshot Hit
;==========================================================================
[Statedef 50004]
movetype = I
anim = 99999
sprpriority = 1
ctrl = 0


[State 0, Explod];black
type = Explod
trigger1 = !time 
anim = 23005
ID = 23005
pos = 0,-30
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 100,100
sprpriority = -100
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
removeongethit = 0
ignorehitpause = 1


[State 0, Explod]
type = Explod
triggerall = numexplod(30000) = 0
trigger1 = !time
anim =ifelse(random%2,23002,ifelse(random%2,23001,23004));ifelse(random<=500,23002,23001)
ID = 30000
pos = 0,0
postype = back
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = 0.5,0.5
sprpriority = -40
ownpal = 1
ignorehitpause = 1
vel = 0,0


[State 0, Explod]
type = Explod
triggerall = numexplod(10001) = 0
trigger1 = !time
anim =  ifelse(root,stateno=1201,9035,ifelse(root,stateno=1501,9034,ifelse(root,stateno=3003,9019,ifelse(root,stateno=3103,9016,ifelse(root,stateno=3601,9013,ifelse(root,stateno=3702,9011,ifelse(root,stateno=3501,9019,ifelse(root,stateno=3803,9039,ifelse((root,stateno=1702|| root,stateno=3402),9012,9014)))))))))
ID = 10001
pos = -30,200
postype = back
bindtime = 9999
removetime = 9999
pausemovetime = 9999
supermovetime = 9999
scale = 0.5,0.5
sprpriority = -50
ownpal = 0
ignorehitpause = 1
vel = 1,0

[State 0, PalFXWiz]
type = PalFX
triggerall = !time
trigger1 = random>=1&&random<150
time = 40
mul = random%360,random%360,random%360
invertall = 0
color = 256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 20
ID = 10001
ownpal = 1
trans = addalpha
alpha = 0+(time*13),256
ignorehitpause = 1
pausemovetime = 999999999
supermovetime = 999999999

[State 0, Scale]
type = VarAdd
trigger1 = Time >= 20
fv = 1
value = 0.025
ignorehitpause = 1

[State 0, Alpha]
type = VarAdd
trigger1 = Time >= 20
fv = 2
value = 17
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 20
ID = 10001
trans = addalpha
scale = 0.5+FVar(1),0.5+FVar(1)
alpha = 256-FVar(2),FVar(2)
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>=33;29
id = 10001
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 34;30
;
;;================================================================

;AfterImageFX1
[Statedef 50030]
movetype = I
anim = 9999
sprpriority = 10
ctrl = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 50
add = 0,50,240
mul = 120,224,150
sinadd = 85,55,110,10
invertall = 0
color = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(time*11)*.005,1+(time*11)*.005
value = root,fvar(20)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*13),256

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28
;----------------------------------------------------
;AfterImageFX1
[Statedef 50031]
movetype = I
anim = 9999
sprpriority = 10
ctrl = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 28
add = -104,-104,47
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 1
color = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*5)*.005,1-(time*5)*.005
value = root,fvar(20)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*13),256

[State 0, BindToParent]
type = BindToroot
trigger1 = !time
time = 1
facing = 1
pos = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -1
y = 0
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28
;--------------------------------------------------
;AfterImageFX1
[Statedef 50032]
movetype = I
anim = 9999
sprpriority = 10
ctrl = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 28
add = -104,-104,47
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 1
color = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*5)*.005,1-(time*5)*.005
value = root,fvar(20)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*13),256

[State 0, BindToParent]
type = BindToroot
trigger1 = !time
time = 1
facing = 1
pos = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 1
y = 0
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28
;------------------------------------------
;AfterImageFX2
[Statedef 50033]
movetype = I
anim = 9999
sprpriority = 1
ctrl = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = root,fvar(35)+(time*5)*.001,1+(time*5)*.001
value = root,fvar(20)
ignorehitpause = 1

[State 0, afterimage]
type = AfterImage
trigger1 = 1
time = 10
length = 30
TimeGap = 2
FrameGap = 2
Trans = add
PalColor = 0
PalContrast = 100,0,0
PalBright = 0,-80,-80
paladd = 10,-50,-50
persistent = 0


;[State -1]
;Type = AfterImage
;Trigger1 = 1
;Time =25
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
;timegap = 1
;framegap = 1
;trans = add


[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = time < 20
trans = addalpha
alpha = 128,128

[State 0, Trans]
type = Trans
trigger1 = time = [20,28]
trans = addalpha
alpha = 128-(time-20)*16,128+(time-20)*16

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;========================
;AfterImageFX3
[Statedef 50034]
movetype = I
anim = 9999
sprpriority = 1
ctrl = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 70
add = 0,-200,-200
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, afterimage]
type = AfterImage
trigger1 = 1
time = 70
FrameGap = 2
length = 4;30
PalContrast = 100,0,0
PalBright = 0,-80,-80
TimeGap = 2
PalColor = 0
Trans = add
persistent = 0
paladd = 10,-50,-50

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.2-(time*7)*.001,1.2-(time*7)*.001

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = ifelse(time<=25,0+(time*20),256-(time*25)),256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 50

;===========================
;AfterImageFX4
[Statedef 50035]
movetype = I
anim = 9999
sprpriority = 1
ctrl = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, afterimage]
type = AfterImage
trigger1 = 1
time = 10
FrameGap = 2
length = 30
PalContrast = 60,60,60
PalBright = 0,0,0
TimeGap = 2
PalColor = 0
Trans = sub
persistent = 0
paladd = 0,0,0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = root,fvar(35)+(time*1)*.001,root,fvar(21)+(time*1)*.001
value = root,fvar(20)
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 30,30,30
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = time < 20
trans = addalpha
alpha = 128,128

[State 0, Trans]
type = Trans
trigger1 = time = [20,28]
trans = addalpha
alpha = 128-(time-20)*16,128+(time-20)*16

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28
;

;==============================
;AfterImageFX5
[Statedef 50036]
movetype = I
anim = 9999
sprpriority = 10
ctrl = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 50
invertall = 1;ifelse(root,stateno=1009,0,1)
color = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, AngleDraw in]
type = AngleDraw
trigger1 = 1;root,stateno=1003
scale = 3.3-(time*11)*.01,3.3-(time*11)*.01
value = root,fvar(20)

;[State 0, AngleDraw out]
;type = AngleDraw
;trigger1 = 1;root,stateno=1004||root,stateno!=1004&root,stateno!=1003
;scale = 1+(time*11)*.01,1+(time*11)*.01
;value = root,fvar(20)

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*13),256

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;=========================
;AfterImageFX6
[Statedef 50037]
movetype = I
anim = 9999
sprpriority = 1
ctrl = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,50,240
mul = 120,224,150
sinadd = 0,0,0,10
invertall = 0
color = 0

;[State 0, AngleDraw]
;type = AngleDraw
;trigger1 = 1
;scale = 1+(time*1)*.003,1+(time*1)*.003
;value = root,fvar(20)
;ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(time*1)*.005,1+(time*1)*.005
value = root,fvar(20)
ignorehitpause = 1


[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = time < 20
trans = addalpha
alpha = 128,128

[State 0, Trans]
type = Trans
trigger1 = time = [20,28]
trans = addalpha
alpha = 128-(time-20)*16,128+(time-20)*16

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;===============
;AfterImageFX7
[Statedef 50038]
movetype = I
anim = 9999
sprpriority = 5
ctrl = 0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = root,var(10)=1&timemod=11,0;ifelse(random%2,timemod=15,0, ifelse(random%2,timemod=30,0,ifelse(random%2,timemod=35,0,timemod=25,0)))
;value = S16,9
;volumescale = 1
;channel = 15
;ignorehitpause = 1
;freqmul = 5.0


[State 0, AngleDraw]
Type = AngleDraw
trigger1 = 1
value = root,fvar(20)
scale = root,fvar(35),root,fvar(21)
ignorehitpause = 1

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(13),256;ifelse(root,var(25)=1&root,var(10)=0,0,var(13)),256

[State 0, VarAdd]
type = Varset
trigger1 = time%2
v = 13     
value = 1+sin(gametime*0.05)*156
ignorehitpause =1 

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;===================
;AfterImageFX8
[Statedef 50039]
movetype = I
anim = 9999
sprpriority = 5
ctrl = 0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = root,var(10)=1&timemod=11,0;ifelse(random%2,timemod=15,0, ifelse(random%2,timemod=30,0,ifelse(random%2,timemod=35,0,timemod=25,0)))
;value = S16,9
;volumescale = 1
;channel = 15
;ignorehitpause = 1
;freqmul = 5.0

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 240,50,0
mul = 250,224,120
sinadd = 0,0,0,10
invertall = ifelse(random%2,0,1)
color = 0


[State 0, AngleDraw]
Type = AngleDraw
trigger1 = 1
value = root,fvar(20)
scale = root,fvar(35),root,fvar(21)
ignorehitpause = 1

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = var(13),256;ifelse(root,var(25)=1&root,var(10)=0,0,var(13)),256

[State 0, VarAdd]
type = Varset
trigger1 = time%2
v = 13     
value = 1+sin(gametime*0.05)*156
ignorehitpause =1 

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;=====================
;AfterImageFX9
[Statedef 50040]
movetype = I
anim = 9999
sprpriority = 1
ctrl = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
invertall = 0
color = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(time*1)*.003,1+(time*1)*.003
value = root,fvar(20)
ignorehitpause = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = time < 20
trans = addalpha
alpha = 256,256

[State 0, Trans]
type = Trans
trigger1 = time = [20,40]
trans = addalpha
alpha = 256-(time-20)*16,256+(time-20)*16

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 40



;======================
;AfterImageFX10
[Statedef 50041]
movetype = I
anim = 9999
sprpriority = 1
ctrl = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(time*5)*.001,1+(time*5)*.001
value = root,fvar(20)
ignorehitpause = 1

[State 0, afterimage]
type = AfterImage
trigger1 = 1
time = 10
FrameGap = 2
length = 30
PalContrast = 100,0,0
PalBright = 0,-80,-80
TimeGap = 2
PalColor = 0
Trans = add
persistent = 0
paladd = 10,-50,-50

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = time < 20
trans = addalpha
alpha = 128,128

[State 0, Trans]
type = Trans
trigger1 = time = [20,28]
trans = addalpha
alpha = 128-(time-20)*16,128+(time-20)*16

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;========================
;AfterImageFX11
[Statedef 50042]
movetype = I
anim = 9999
sprpriority = 5
ctrl = 0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = root,var(10)=1&timemod=11,0;ifelse(random%2,timemod=15,0, ifelse(random%2,timemod=30,0,ifelse(random%2,timemod=35,0,timemod=25,0)))
;value = S16,9
;volumescale = 1
;channel = 15
;ignorehitpause = 1
;freqmul = 5.0

[State 0, afterimage]
type = AfterImage
trigger1 = 1
time = 70
FrameGap = 2
length = 3
PalContrast = 100,0,0
PalBright = 0,-80,-80
paladd = 7,-200,-200 ; -0,-200,-200 ;10,-50,-50;
TimeGap = 2
PalColor = 0
Trans = add
persistent = 0

[State 0, AngleDraw]
Type = AngleDraw
trigger1 = 1
value = root,fvar(20)
scale = root,fvar(35),root,fvar(21)
ignorehitpause = 1

[State 0, Offset]
type = Offset
trigger1 = 1
x = root,fvar(22)
y = root,fvar(23)
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, anim]
type = changeanim
trigger1 = selfanimexist(root,anim)
value = (root,anim)
elem = (root,animelemno(0))

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 0,256;ifelse(root,var(25)=1&root,var(10)=0,0,var(13)),256

;[State 0, VarAdd]
;type = Varset
;trigger1 = time%2
;v = 13     
;value = 1+sin(gametime*0.05)*156
;ignorehitpause =1 

[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 28


;-------------------------------------------------------------------------------
;AfterImageFX12
[StateDef 50043]
Type = S
MoveType = I
Physics = N
SprPriority = 10 * !(GameTime%2)
Anim = 9999

[State 0, Null]
Type = Null
Trigger1 = Var(0) := (Var(0)+12)
IgnoreHitPause = 1

[State 0, Null]
Type = Null
Trigger1 = !Time
Trigger1 = Var(1) := Root, Anim
Trigger1 = Var(2) := Root, AnimElemNo(0)
IgnoreHitPause = 1

[State 0, ChangeAnim]
Type = ChangeAnim
Trigger1 = 1
Value = Var(1)
Elem = Var(2)

[State 0, NotHitBy]
Type = NotHitBy
Trigger1 = !Time
Value = SCA
Time = -1
IgnoreHitPause = 1
Persistent = 1

[State 0, AngleDraw]
Type = AngleDraw
Trigger1 = 1
Scale = 1 + Time*0.008,1 + Time*0.008
IgnoreHitPause = 1

[State 0, VelSet]
Type = VelSet
Trigger1 = 1
X = -(Cos(GameTime/25.0*PI)*1) * Cond(!(Const(Size.Head.Pos.X)), 0, (Const(Size.Head.Pos.X)))
Y = (Sin(GameTime/45.0*PI)*1)*0.8 * Cond(!(Const(Size.Head.Pos.Y)), 0, (Const(Size.Head.Pos.Y)))
IgnoreHitPause = 1

[State 0, PosAdd]
Type = PosAdd
Trigger1 = 1
Y = -1
IgnoreHitPause = 1

[State 0, PalFX]
Type = PalFX
Trigger1 = 1
Time = 1
Add = -255 * (Const(Size.Height) = 1), -128 * (Const(Size.Height) = 1 || Const(Size.Height) = 2), -255 * (Const(Size.Height) = 2)
Color = 0 + 256 * (Const(Size.Height) != 1 && Const(Size.Height) != 2)
IgnoreHitPause = 1

[State 0, Trans]
Type = Trans
Trigger1 = 1
Trans = AddAlpha
Alpha = 192-Var(0),256

[State 0, DestroySelf]
Type = DestroySelf
Trigger1 = Var(0) >= 192
IgnoreHitPause = 1

;-------------------------------------------------------------------------------