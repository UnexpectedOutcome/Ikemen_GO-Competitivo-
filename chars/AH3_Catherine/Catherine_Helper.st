;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;汎用ヘルパー管理ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ガードキャンセルエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7950]
Physics     = N
Anim        = 7950
SprPriority = 9

[State 7950]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(0), 256

[State 7950]
type     = VarAdd
Trigger1 = time > 15
var(0)   = 10


[State 7950]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[state a]
type     = AngleDraw
trigger1 = 1
scale    = 1, 1

[State 7950]
type     = BindtoParent
trigger1 = 1
time     = -1
facing   = 1
pos      = 20, -60
ignorehitpause = 1

[State 7950]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = (root,Movetype = H)&&(root,StateNo !=955)




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 相殺エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7955]
Physics     = N
Anim        = 7955
SprPriority = 6

[state a]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 7955, 画面背景]
Type     = BGpalfx
trigger1 = time <= 8
time     = 1
mul      = 256-(time*16),256-(time*16),256-(time*16)

[State 7955, 画面背景]
Type     = BGpalfx
trigger1 = time = [9,16]
time     = 1
mul      = time*16,time*16,time*16

[State 7955]
Type     = AngleDraw
Trigger1 = 1
value    = 0
scale    = 2, 2

[State 7955]
Type     = PlaySnd
Trigger1 = !Time
value    = s60, 0+(random%4)
persistent     = 0
;---------------------------------------------[透過設定]

[state 7955, 変数]
Type     = VarAdd
Trigger1 = !time
var(2)   = 256

[state 7955, 変数]
Type     = VarAdd
Trigger1 = time >= 4 
var(2)   = -16

[State 7955, 透過]
Type     = trans
trigger1 = 1
Trans    = addalpha
alpha    = var(2), 256

;--------------------------------[追加エフェクト]

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(30)  = Random%120

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(31)  = Var(30) +120

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(32)  = Var(31) +120

[state 7955, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 10
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7956
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

[state 7025, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 20
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7956
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

[state 7025, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 30
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7956
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

;--------------------------------[追加エフェクト]

[State 7925]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 相殺エフェクト 拡散部分
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 7956]
Physics     = N
Anim        = 7956
SprPriority = 5

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(10)
var(30)  = parent,var(30)

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(20)
var(30)  = parent,var(31)

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(30)
var(30)  = parent,var(32)

[state a, 透過]
type     = Trans
trigger1 = 1
trans    = add

[state a]
type     = AngleDraw
trigger1 = 1
value    = var(30)
scale    = 2, 2

[state a]
type     = Destroyself
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Aa2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7001]
Physics     = N
Anim        = 7021
SprPriority = 9

[State 7001, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
Alpha    = 256-var(2),256

[State 7001, 透過]
type     = Varadd
Trigger1 = 1
var(2)   = 15

[State 7001]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 7001]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7001]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.35+fvar(0) ,0.35+fvar(0)

[State 7001]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7001, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7005
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.3, 0.3
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
removetime  = 11

[State 7001, サークル]
type       = null;Explod
trigger1   = time = 0
anim       = 7022
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
removetime  = 11

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 0.35+0.015*(time), 0.35+0.015*(time)

[State a]
type     = VarAdd
trigger1 = time =[1, 5]
fvar(0)  = 0.05

[State a]
type     = VarAdd
trigger1 = time > 5
fvar(0)  = -0.05

[State 7001]
Type     = DestroySelf
Trigger1 = Time > 12

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Aa
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7000]
Physics     = N
Anim        = 7000
SprPriority = 9

[State 7000, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7000]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 7000]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7000]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75 ,0.75

[State 7000]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7000]
Type     = DestroySelf
Trigger1 = animTime =0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Ab
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7005]
Physics     = N
Anim        = 7005
SprPriority = 9

[State 7005, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7005]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 7005]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7005]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.5 ,0.5

[State 7005]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7005, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7022
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
removetime  = 12

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 0.5+0.015*(time), 0.5+0.015*(time)

[State 7001, 透過]
type     = Varadd
Trigger1 = 1
var(2)   = 18

;--------------------------------[終了]

[State 7005]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Ac
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7010]
Physics     = N
Anim        = 7010
SprPriority = 9

[State 7010, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7010]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 7010]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7010]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75 ,0.75

[State 7010]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7005, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7022
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
removetime  = 12

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 0.75+0.015*(time), 0.75+0.015*(time)

[State 7001, 透過]
type     = Varadd
Trigger1 = 1
var(2)   = 18

;--------------------------------[終了]

[State 7010]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Ac (吹っ飛ばし属性)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7011]
Physics     = N
Anim        = 7020
SprPriority = 9

[State 7011, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7011]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------[角度設定]

[State 7011, 通常]
type     = Varset
Trigger1 = !time
var(0)   = 0

[State 7011] ;JB
type     = Varset
Trigger1 = IsHelper(610)
var(0)   = -135

[State 7011] ;JC
type     = Varset
Trigger1 = IsHelper(620)
var(0)   = -100

[State 7011] ;E
type     = Varset
Trigger1 = IsHelper(310)
var(0)   = 90

[State 7011] ;ヒップ
type     = Varset
Trigger1 = IsHelper(1300)
var(0)   = -90

[State 7011]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7011]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75, 0.75

;-------------------------------

[State 7011, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7021
ID         = 1
postype    = P1
pos        = 20, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 0.75+0.015*(time), 0.75+0.015*(time)

[State a];エフェクト管理2
type     = Varadd
trigger1 = 1
var(1)   = 18

[State 7011, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7010
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.75, 0.75
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

;--------------------------------[終了]

[State 7011]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / E攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7020]
Physics     = N
Anim        = 7020
SprPriority = 9

[State 7020, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7020]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------[角度設定]

[State 7020, 通常]
type     = Varset
Trigger1 = !time
var(0)   = 0

[State 7020, 90] ;2Eなど
type     = Varset
Trigger1 = IsHelper(310)
var(0)   = 90

[State 7020, 90] ;JEなど
type     = Varset
Trigger1 = IsHelper(320)
var(0)   = -90

[State 7020, 90] ;JEなど
type     = Varset
Trigger1 = IsHelper(1300)
var(0)   = -90

[State 7020]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7020]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.25, 1.25

;-------------------------------

[State 7020, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7021
ID         = 1
postype    = P1
pos        = 20, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 0.75+0.015*(time), 0.75+0.015*(time)

[State a];エフェクト管理2
type     = Varadd
trigger1 = 1
var(1)   = 18

[state 7020, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 10
name       = "Effect"
pos        = 0, 0
postype    = p1
stateno    = 7010
helpertype = normal
keyctrl    = 0 
ownpal     = 1
persistent     = 0
ignorehitpause = 1

[state 7020, ヘルパー]
type       = Helper
trigger1   = time = 0
id         = 10
name       = "Effect"
pos        = 0, 0
postype    = p1
stateno    = 7021
helpertype = normal
keyctrl    = 0 
ownpal     = 1
persistent     = 0
ignorehitpause = 1

;--------------------------------[終了]

[State 7020]
Type     = DestroySelf
Trigger1 = animTime =0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ヒットスパーク 打撃追加エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 7021]
Physics     = N
Anim        = 7025
SprPriority = 5

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
var(0)  = (parent,var(0))

[state a]
type     = Trans
Trigger1 = 1
trans    = addalpha
alpha    = 256 - (15*time), 256

;-------------------------------[角度設定]

[State 7021]
Type     = AngleDraw
Trigger1 = 1
value    = var(0)
Scale    = 1+0.05*(time), 1-0.05*(time)

;--------------------------------[終了]

[State 7021]
Type     = DestroySelf
Trigger1 = Time > 14



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / 斬撃1
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7025]
Physics     = N
Anim        = 7035
SprPriority = 9

[State 7025, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(20),256

[State 7025]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 7025]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7025]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.5+(time*0.02) ,0.5-(time*0.04)

[State 7025]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7025, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7036
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 0.65-0.05*(time), 0.65-0.05*(time)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [3,6]
var(1)   = 45

;--------------------------------[追加エフェクト]

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(30)  = Random%120

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(31)  = Var(30) +120

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(32)  = Var(31) +120

[state 7025, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 10
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7026
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

[state 7025, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 20
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7026
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

[state 7025, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 30
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7026
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

;--------------------------------[追加エフェクト]

[State 7025]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ヒットスパーク 拡散部分
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 7026]
Physics     = N
Anim        = 7032
SprPriority = 5

[state a]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(10) || IsHelper(11) || IsHelper(12)
var(30)  = parent,var(30)

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(20) || IsHelper(21) || IsHelper(22)
var(30)  = parent,var(31)

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(30) || IsHelper(31) || IsHelper(31)
var(30)  = parent,var(32)

[state a]
type     = Trans
trigger1 = IsHelper(10) || IsHelper(20) || IsHelper(30)
Trigger1 = var(1) := 5
trans    = addalpha
alpha    = 256 - (12*time), 256

[state a]
type     = Trans
trigger1 = IsHelper(11) || IsHelper(21) || IsHelper(31)
Trigger1 = var(1) := 6
trans    = addalpha
alpha    = 256 - (13*time), 256

[state a]
type     = Trans
trigger1 = IsHelper(12) || IsHelper(22) || IsHelper(32)
Trigger1 = var(1) := 7
trans    = addalpha
alpha    = 256 - (13*time), 256

[state a]
type     = AngleDraw
trigger1 = IsHelper(10) || IsHelper(20) || IsHelper(30)
value    = Var(30)
scale    = 0.25, 0.125

[state a]
type     = AngleDraw
trigger1 = IsHelper(11) || IsHelper(21) || IsHelper(31)
value    = Var(30)
scale    = 0.35, 0.125

[state a]
type     = AngleDraw
trigger1 = IsHelper(12) || IsHelper(22) || IsHelper(32)
value    = Var(30)
scale    = 0.5*1.1, 0.25*1.1

[state a]
type     = Velset
trigger1 = time = 0
x = var(1) * Cos(var(30)*pi/180)
y = -var(1)  * Sin(var(30)*pi/180)

[state a]
type     = Destroyself
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / 斬撃2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7030]
Physics     = N
Anim        = 7030
SprPriority = 9

[State 7030, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7030]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 7030]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 7030]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.85+(time*0.04) ,0.85-(time*0.047)

[State 7030]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7030, サークル]
type       = Explod
trigger1   = time = 2
anim       = 7031
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 1-0.035*(time), 1-0.035*(time)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [6,10]
var(1)   = 25

;--------------------------------[追加エフェクト]

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(30)  = Random%120

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(31)  = Var(30) +120

[State a, 角度設定]
type     = Varset
Trigger1 = !time
var(32)  = Var(31) +120

[state 7030, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 12
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7031
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

[state 7030, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 22
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7031
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

[state 7030, ヘルパー]  ;線エフェクト
type       = Helper
trigger1   = time = 0
id         = 32
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7031
helpertype = normal
keyctrl    = 0 
ownpal     = 0
persistent     = 0
ignorehitpause = 1

;--------------------------------[追加エフェクト]

[State 7030]
Type     = DestroySelf
Trigger1 = animTime =0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ヒットスパーク 拡散部分
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 7031]
Physics     = N
Anim        = 7032
SprPriority = 5

[state a]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(10) || IsHelper(11) || IsHelper(12)
var(30)  = parent,var(30)

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(20) || IsHelper(21) || IsHelper(22)
var(30)  = parent,var(31)

[state a];親から引き継ぐ
type     = Varset
trigger1 = !time
Trigger1 = IsHelper(30) || IsHelper(31) || IsHelper(31)
var(30)  = parent,var(32)

[state a]
type     = Trans
trigger1 = IsHelper(10) || IsHelper(20) || IsHelper(30)
Trigger1 = var(1) := 5
trans    = addalpha
alpha    = 256 - (12*time), 256

[state a]
type     = Trans
trigger1 = IsHelper(11) || IsHelper(21) || IsHelper(31)
Trigger1 = var(1) := 6
trans    = addalpha
alpha    = 256 - (13*time), 256

[state a]
type     = Trans
trigger1 = IsHelper(12) || IsHelper(22) || IsHelper(32)
Trigger1 = var(1) := 7
trans    = addalpha
alpha    = 256 - (13*time), 256

[state a]
type     = AngleDraw
trigger1 = IsHelper(10) || IsHelper(20) || IsHelper(30)
value    = Var(30)
scale    = 0.25, 0.125

[state a]
type     = AngleDraw
trigger1 = IsHelper(11) || IsHelper(21) || IsHelper(31)
value    = Var(30)
scale    = 0.35, 0.125

[state a]
type     = AngleDraw
trigger1 = IsHelper(12) || IsHelper(22) || IsHelper(32)
value    = Var(30)
scale    = 0.5*1.1, 0.25*1.1

[state a]
type     = Velset
trigger1 = time = 0
x = var(1) * Cos(var(30)*pi/180)
y = -var(1)  * Sin(var(30)*pi/180)

[state a]
type     = Destroyself
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ガードエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 7100]
Physics     = N
Anim        = 7100
SprPriority = 9

[State 7100]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7100]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7021]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75, 0.75

[State 7100]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;相手ガードクラッシュエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7110]
Physics     = N
Anim        = 7111
SprPriority = 9

[State 7110, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7110
ID         = 1
postype    = P1
pos        = 20, 0
random     = 0, 0
facing     = -1
scale      = 0.75, 0.75
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

[State 7110]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(2), 256

[State 7100]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[state a]
type     = AngleDraw
trigger1 = 1
scale    = 0.25, 0.5+(time*0.05)

[State a]
type     = VarAdd
Trigger1 = time > 10
var(2)   = 18

[State 7110]
Type     = DestroySelf
Trigger1 = var(2) >= 256



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 投げ抜け
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7055]
Physics     = N
Anim        = 7056
SprPriority = 9

[State 7055, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 256-(time*18),256

[State 7055]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.125+(time*0.01) ,0.5+(time*0.01)

[State 7055]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7055, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7055
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1

;--------------------------------[終了]

[State 7055]
Type     = DestroySelf
Trigger1 = animTime =0




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ダウンエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7200]
Physics     = N
Anim        = 7200
SprPriority = -1

[State 7200]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7200]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(2), 256

[State a]
type     = VarAdd
Trigger1 = time > 10
var(2)   = 17

[State a]
type     = VarSet
Trigger1 = !time
fvar(0)  = 0.1

[State a]
type     = VarSet
Trigger1 = !time
fvar(1)  = 0.05

[State a]
type     = VarAdd
Trigger1 = time
fvar(0)  = 0.1

[State a]
type     = VarAdd
Trigger1 = time
fvar(1)  = 0.025

[state a]
type     = AngleDraw
trigger1 = 1
scale    = fvar(0), fvar(1)

;-------------------------------------------[追加エフェクト]

[State 7200, サークル]
type       = Explod
trigger1   = time = 0
anim       = 7205
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
facing     = -1
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = -1
bindtime       = -1
removeongethit = 1

[State a]
type     = VarSet
Trigger1 = !time
fvar(2)  = 0.5

[State a]
type     = VarSet
Trigger1 = !time
fvar(3)  = 0.25

[State a]
type     = VarAdd
Trigger1 = time
fvar(0)  = -0.025

[State a]
type     = VarAdd
Trigger1 = time
fvar(1)  = -0.0125

[State 7200, エフェクト]
type       = ModifyExplod
trigger1   = 1
ID         = 1
scale      = fvar(2),fvar(3)
Trans      = AddAlpha
Alpha      = 256-var(2), 256

;----------------------------------------------

[State 7110]
Type     = DestroySelf
Trigger1 = var(2) >= 256





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 受け身エフェクト / 地上
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 7500]
Physics     = N
Anim        = 7500
SprPriority = -1

[State 7500]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7500]
Type     = DestroySelf
Trigger1 = Animtime = 0

[State 7500]
type     = Posset
trigger1 = !time
Y        = 0

;---------------------[透過]

[state a]
type     = Trans
trigger1 = 1
trans    = add

[state a]
type     = Angledraw
trigger1 = 1
scale    = 1.5, 0.25


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 受け身エフェクト / 空中
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 7510]
Physics     = N
Anim        = 7500
SprPriority = 8

[State 7510]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7510]
Type     = DestroySelf
Trigger1 = Animtime = 0

;---------------------[透過]

[state a]
type     = Trans
trigger1 = 1
trans    = add

[state a]
type     = Angledraw
trigger1 = 1
scale    = 1, 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ジャンプエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8040]
Physics     = N
Anim        = 8040
SprPriority = 5

[State 8040]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8040, 接地]
type     = PosSet
trigger1 = 1
Y = 0

[state 8040, エフェクト]
type     = Explod
trigger1 = !Time
anim     = 8045
sprpriority = 3
pos      = 0,0
Scale    = 0.5, 0.5
id       = 8040
bindtime = -1

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(8040) = 1
ID       = 8040
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 0.5+0.05*(time), 0.5+0.05*(time)

[State 8040, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75-(time * 0.05) , 0.75+(time * 0.01)

;-------------------------------------------------[透過設定]
[State 8040, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8040, 透過用変数]
type     = Varset
trigger1 = !Time
var(2)   = 0

[State 8040, 透過用変数]
type     = VarAdd
trigger1 = 1
var(2)   = 17

[State 8040, 透過用変数]
type     = VarAdd
trigger1 = 1
var(1)   = 32

[State 8040, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Var(2) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ジャンプエフェクト2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8041]
Physics     = N
Anim        = 8041
SprPriority = 5

[State 8041]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8041, 接地]
type     = PosSet
trigger1 = 1
Y = 0

[state 8041, エフェクト]
type     = Explod
trigger1 = Time = 2
anim     = 8042
sprpriority = 3
pos      = 0, 10
Scale    = 0.5, 0.5
id       = 8042
bindtime = -1

[state 8041, エフェクト]
type     = Explod
trigger1 = Time = 2
anim     = 8043
sprpriority = 1
pos      = 0, 0
Scale    = 1, 1
id       = 8043
bindtime = -1

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(8042) = 1
ID       = 8042
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 0.4+0.05*(time), 0.4+0.05*(time)

[State 8040, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.2+(time * 0.05) , 0.2+(time * 0.05)

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(8043) = 1
ID       = 8043
Trans    = Addalpha
alpha    = 256-var(1), 256

;-------------------------------------------------[透過設定]

[State 8040, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8040, 透過用変数]
type     = Varset
trigger1 = !Time
var(2)   = 0

[State 8040, 透過用変数]
type     = VarAdd
trigger1 = 1
var(2)   = 25

[State 8040, 透過用変数]
type     = VarAdd
trigger1 = 1
var(1)   = 31

[State 8040, ヘルパー終了]
Type     = DestroySelf
Trigger1 = time > 10



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 壁に叩きつけられエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8045]
Physics     = N
Anim        = 8047
SprPriority = 5

[State 8045]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State -3]  ;吹っ飛び激突
Type     = Helper
Trigger1 = !time
StateNo  = 8046
PosType  = P1
Pos      = 0, 0
Ownpal   = 1
ID       = 8046

[State 8045, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Value    = -90
Scale    = 1.5+(time * 0.05) , 1.5+(time * 0.05)

;-------------------------------------------------[透過設定]
[State 8045, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8045, 透過用変数]
type     = Varset
trigger1 = !Time
V = 2
Value = 0

[State 8045, 透過用変数]
type     = VarAdd
trigger1 = 1
var(2)   = 17

[State 8045, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Var(2) >= 256
Trigger2 = Time > 15


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 壁に叩きつけられエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8046]
Physics     = N
Anim        = 8046
SprPriority = 5

[State 8045, 効果音]
Type       = PlaySnd
Trigger1   = !Time
Value      = s52, 2

[State 8046]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8046, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Value    = -90
Scale    = 1.5+(time * 0.05) , 1.5+(time * 0.065)

;-------------------------------------------------[透過設定]
[State 8046, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8045, 透過用変数]
type     = Varset
trigger1 = !Time
V = 2
Value = 0

[State 8045, 透過用変数]
type     = VarAdd
trigger1 = 1
var(2)   = 17

[State 8045, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Var(2) >= 256
Trigger2 = Time > 15


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 地面に叩きつけられエフェクトA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8047]
Physics     = N
Anim        = 8047
SprPriority = 5

[State 8047]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State -3]  ;吹っ飛び激突
Type     = Helper
Trigger1 = !time
StateNo  = 8048
PosType  = P1
Pos      = 0, 0
Ownpal   = 1
ID       = 8048

[State 8047, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75+(time * 0.075) , 0.5+(time * 0.05)

;-------------------------------------------------[透過設定]

[State 8047, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8047, 透過用変数]
type     = Varset
trigger1 = !Time
var(2)   = 0

[State 8047, 透過用変数]
type     = VarAdd
trigger1 = Time > 10
var(2)   = 15

[State 8047, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Var(2) >= 256
Trigger2 = Time > 20


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 地面に叩きつけられエフェクトB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8048]
Physics     = N
Anim        = 8046
SprPriority = 5

[State 8048, 効果音]
Type       = PlaySnd
Trigger1   = !Time
Value      = s52, 2

[State 8048]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8048, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.0-(time * 0.075) , 1.5+(time * 0.075)

;-------------------------------------------------[透過設定]
[State 8048, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8048, 透過用変数]
type     = Varset
trigger1 = !Time
var(2)   = 0

[State 8048, 透過用変数]
type     = VarAdd
trigger1 = Time > 10
var(2)   = 17

[State 8048, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Var(2) >= 256
Trigger2 = Time > 15



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [helper] カウンターヒットエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8500]
Physics     = N
Anim        = 8500
SprPriority = 8

[state 8500, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA
time     = 1

[State 8500, 影消し]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8500, 効果音] ;カウンターヒット
Type     = PlaySnd
Trigger1 = !time
value    = s3, 0

;-------------------------------------------------[透過設定]
[State 8500]
Type     = Varadd
Trigger1 = 1
var(1)   = 13

[State 8500, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(1),256

;-------------------------------------------------[サイズ設定]
[State 8500, 乱数]
Type     = VarRandom
Trigger1 = !Time
V        = 0
Range    = 0,359

[State 8500]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 8500]
Type     = AngleDraw
Trigger1 = 1
Scale    = 3+(Time*0.5), 3+(Time*0.5)

;-------------------------------------------------[終了]
[State 8500, ヘルパー消滅]
Type     = DestroySelf
Trigger1 = var(1) > 255
trigger2 = Time > 23


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ニュートラルホーミングエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 8900]
Physics     = N
Anim        = 8901
SprPriority = 9

[State 8900, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(20),256

[State 8900]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 8900]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 8900]
Type     = AngleDraw
Trigger1 = 1
Scale    = fvar(0) ,fvar(0)

[State 8900]
Type     = VarSet
Trigger1 = !Time
fvar(0)  = 0.5

[State 8900]
Type     = VarAdd
Trigger1 = Time < 5
fvar(0)  = 0.025

[State 8900]
Type     = VarAdd
Trigger1 = Time = [5, 10]
fvar(0)  = -0.06

[State a];エフェクト管理2
type     = Varadd
trigger1 = time > 5
var(20)   = 45

[State 8900]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8900, ガードキャンセル]
type     = BindtoRoot
trigger1 = (Ishelper(8901))&&(Root,StateNo = 960)
time     = 1
pos      = 0, -65
ignorehitpause = 1

;------------------------------------------[追加エフェクト]

[State 8900, サークル]
type       = Explod
trigger1   = time = 0
anim       = 8900 + ((IsHelper(8901))*5)
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 0.5+0.05*(time), 0.55+0.05*(time)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time > 5
var(1)   = 45

[state 8900, ヘルパー]
type       = Helper
trigger1   = time = 0
id         = 10 + (IsHelper(8901))
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 8901
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[state 8900, ヘルパー]
type       = Helper
trigger1   = time = 0
id         = 20 + (IsHelper(8901))
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 8901
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

;--------------------------------[終了]

[State 8900]
Type     = DestroySelf
Trigger1 = Time > 10


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ニュートラルホーミング / 魔法陣
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 8901]
Physics     = N
Anim        = 8902
SprPriority = 8

[State 8901, キャンセル版]
type     = ChangeAnim
trigger1 = !time
Trigger1 = IsHelper(11) || IsHelper(21)
value    = 8907

[State 8901, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(20),256

[State 8901]
Type     = AngleSet
Trigger1 = 1
Value    = 0+((IsHelper(10))*90)+((IsHelper(11))*90)

[State 8901]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.5+0.02*(time) ,0.5+0.02*(time)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time > 4
var(20)  = 30

[State 8901]
type     = BindtoParent
trigger1 = 1
time     = -1
pos      = 0, 0
ignorehitpause = 1

;--------------------------------[終了]

[State 8900]
Type     = DestroySelf
Trigger1 = Time >= 10


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ホーミングエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 8910]
Physics     = N
Anim        = 8920
SprPriority = 5

;--------------------------------------[透過処理]

[State 8910, 変数]
Type     = Varadd
Trigger1 = time >= 7
var(1)   = 25

[State 8910]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(1),256

;--------------------------------------[角度処理]

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 905
value    = 45

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 906
value    = 0

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 907
value    = -45

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 908
value    = -70

[state a]
type     = angledraw
trigger1 = 1
scale    = 1, 1

;--------------------------------------[終了]

[State 8910]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8910]
Type     = DestroySelf
Trigger1 = var(1) >= 256




;━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] エクステンドフォース / エフェクト管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 13400]
Physics     = N
Anim        = 9999
SprPriority = 9

[State 7010]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7010, 外周]
type       = Explod
trigger1   = time = 0
anim       = 13405
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Add
Scale    = 0.8+0.025*(time), 0.8+0.025*(time)

[state 13400, ヘルパー]  ;エフェクト
type       = Helper
trigger1   = time = 0
id         = 10
name       = "Efect"
pos        = 0, 0
postype    = p1
stateno    = 13401
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[state 13400, ヘルパー]  ;エフェクト
type       = Helper
trigger1   = time = 0
id         = 11
name       = "Efect"
pos        = 0, 0
postype    = p1
stateno    = 13402
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[state 13400, ヘルパー]  ;エフェクト
type       = Helper
trigger1   = time = 0
id         = 10
name       = "Efect"
pos        = 0, 0
postype    = p1
stateno    = 13403
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

;--------------------------------[終了]

[State 13400]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = root,Movetype = H



;━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] エクステンドフォース / エフェクトA
;━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 13401]
Physics     = N
Anim        = 13400
SprPriority = 9

[State 13401]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 13401, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(2), 256

[State 13401]
type     = varadd
trigger1 = Time > 5
var(2)   = 30


[State 13401]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 13401]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 13401]
Type     = AngleDraw
Trigger1 = 1
Scale    = fvar(1) ,fvar(1)

[State a]
type     = VarSet
Trigger1 = !Time
fvar(1)  = 0.75

[State a]
type     = VarAdd
Trigger1 = Time = [0, 5]
fvar(1)  = 0.01

[State a]
type     = VarAdd
Trigger1 = Time > 5
fvar(1)  = -0.1

;--------------------------------[終了]

[State 13401]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = root,Movetype = H


;━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] エクステンドフォース / エフェクトB
;━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 13402]
Physics     = N
Anim        = 13401
SprPriority = 9

[State 13402]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 13402, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(2), 256

[State 13402]
type     = varadd
trigger1 = 1
var(2)   = 21

[State 13402]
Type     = AngleSet
Trigger1 = 1
Value    = 45

[State 13402]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.25 ,1.25

;--------------------------------[終了]

[State 13402]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = root,Movetype = H


;━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] エクステンドフォース / エフェクトC
;━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 13403]
Physics     = N
Anim        = 13402
SprPriority = 9

[State 13403]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 13403, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-var(2), 256

[State 13403]
type     = varadd
trigger1 = Time > 5
var(2)   = 30

[State 13403]
Type     = VarRandom
Trigger1 = Time = 0
V        = 0
Range    = 0,359

[State 13403]
Type     = AngleSet
Trigger1 = 1
Value    = Var(0)

[State 13403]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.85+(time*0.15) ,0.5-(time*0.05)

;--------------------------------[終了]

[State 13401]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = root,Movetype = H



;━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] エクステンドフォース / トランザムヘルパー
;━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 13407]
Physics     = N
Anim        = 13407
SprPriority = -1

[state 13407]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State 13407, 無敵]
type     = NotHitBy
trigger1 = 1
value    = SCA, AA, AT, AP  ;互換確保

[state 13407]
type     = varadd
trigger1 = 1
var(1)   = 8

[state 13470]
type     = Varset
trigger1 = time = 0
fvar(10) = random * 0.001

[state 13470]
type     = varset
trigger1 = time = 0
fvar(11) = random * 0.001

[state 10020]
type = velset
trigger1 = 1
x = -1-fvar(10)+fvar(1)*0.01

[state 10020]
type = velset
trigger1 = root, statetype = A
y = 1+fvar(11)+var(1)*0.01

[state 10020]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 290-var(1), 256

[state 10020]
type = angleset
trigger1 = time = 0
value = 0

[State 10020]
type = AngleAdd
trigger1 = time = 0
trigger1 = root, statetype = A
value =  -45

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 905
value    = 45

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 906
value    = 0

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 907
value    = -45

[state a]
type     = Angleset
trigger1 = !time && root,Anim = 908
value    = -70

[State 10020]
type       = AngleDraw
trigger1   = 1
scale      = 0.7+var(1)*0.005, 0.7+var(1)*0.005

[State 10020]
type       = AngleDraw
trigger1   = root, stateno= [45, 51]
trigger2   = (root,stateno=100)||(root,stateno=105)||(root,stateno=110)||(root,stateno=115)
trigger3   = (root,stateno=910)||(root,stateno=930)||(root,stateno=940)||(root,stateno=950)||(root,stateno=960)
scale      = 0.65+var(1)*0.005, 0.65+var(1)*0.005


[state 10020]
type = destroyself
trigger1 = time = 18








;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 超必殺技エフェクト (ミサイル-45F)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8800]
Physics     = N
Anim        = 9999
SprPriority = 4

[State 8800, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

[State a, 終了フラグ]
type     = Varset
Trigger1 = root,Movetype = H
Trigger2 = Time = 45
var(59)  = 1

;-------------------------------------------------[暗転処理]

[State 8880, 変数] ;暗転用
type     = VarAdd
trigger1 = (Time <= 10)
var(50)  = 25

[state 8880, 変数] ;暗転用
type     = VarSet
trigger1 = var(50) > 256
var(50)  = 256

[State 8880, フェードアウト処理]
Type     = BGPalFx
Trigger1 = 1
Time     = 1
Mul      = 256-Var(50),256-Var(50),256-Var(50)

[State 8880, 変数] ;暗転用
type     = VarAdd
trigger1 = var(59) = 1
Trigger1 = var(50) > 0
var(50)  = -14

;---------------------------------------------------[エフェクト1]

[State 8800, ライン]
type       = Explod
trigger1   = time = 0
anim       = 8800
ID         = 0
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1 ,1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removetime     = 20
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(0) = 1
ID       = 0
Scale    = 10, 1.0-fvar(0)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [5,20]
fvar(0)  = 0.06

;---------------------------------------------------[エフェクト2]

[State 8800, サークル]
type       = Explod
trigger1   = time = 5
anim       = 8802
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 3, 3
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 2.5-0.05*(time-5), 2.5-0.05*(time-5)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [6,13]
var(1)   = 16

[State 8800, サークル2]
type       = Explod
trigger1   = time = 12
anim       = 8803
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 1.5+0.05*(time-12), 1.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13,24]
var(2)   = 16

;---------------------------------------------------[エフェクト3]

[State 8800, 黄色1]
type       = Explod
trigger1   = time = 5
anim       = 8804
ID         = 3
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(3) = 1
ID       = 3
Scale    = 0.75-0.025*(time-5), 0.75-0.025*(time-5)

[State 8800, 黄色2]
type       = Explod
trigger1   = time = 12
anim       = 8805
ID         = 4
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(4) = 1
ID       = 4
Trans    = Addalpha
alpha    = 256-var(4), 256
Scale    = 0.5+0.05*(time-12), 0.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13, 23]
var(4)   = 20

[State 8800, 黄色3]
type       = Explod
trigger1   = time = 16
anim       = 8806
ID         = 5
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.75, 0.75
vel        = 0, 0
sprpriority    = 7
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

;---------------------------------------------------[エフェクト4]

[State 8800, エフェクト] ;霊撃エフェクトA
Type       = Helper
Trigger1   = Time = 14
Pos        = 0, 0
PosType    = P1
ID         = 8810
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, エフェクト] ;霊撃エフェクトB
Type       = Helper
Trigger1   = Time = 18
Pos        = 0, 0
PosType    = P1
ID         = 8811
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, エフェクト] ;背景
Type       = Helper
Trigger1   = Time = 0
Pos        = 0, 0
PosType    = P1
ID         = 49
StateNo    = 8820
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, ヘルパー消滅]
Type     = DestroySelf
trigger1 = time >= 44 + (18)
Trigger2 = (var(59)=1) && (var(50)<=0)



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 超必殺技エフェクト (ラリアット-30F)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8801]
Physics     = N
Anim        = 9999
SprPriority = 4

[State 8801, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

[State a, 終了フラグ]
type     = Varset
Trigger1 = root,Movetype = H
Trigger2 = Time = 30
var(59)  = 1

;-------------------------------------------------[暗転処理]

[State 8881, 変数] ;暗転用
type     = VarAdd
trigger1 = (Time <= 10)
var(50)  = 25

[state 8881, 変数] ;暗転用
type     = VarSet
trigger1 = var(50) > 256
Trigger2 = root,StateNo = 2101
var(50)  = 256

[State 8881, フェードアウト処理]
Type     = BGPalFx
Trigger1 = 1
Time     = 1
Mul      = 256-Var(50),256-Var(50),256-Var(50)

[State 8880, 変数] ;暗転用
type       = VarAdd
TriggerAll = root,StateNo != 2101
trigger1   = var(59) = 1
Trigger1   = var(50) > 0
var(50)    = -14

;---------------------------------------------------[エフェクト1]

[State 8801, ライン]
type       = Explod
trigger1   = time = 0
anim       = 8801
ID         = 0
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1 ,1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removetime     = 20
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(0) = 1
ID       = 0
Scale    = 1.0-fvar(0),10

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [5,20]
fvar(0)  = 0.06

;---------------------------------------------------[エフェクト2]

[State 8801, サークル]
type       = Explod
trigger1   = time = 5
anim       = 8802
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 3, 3
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 2.5-0.05*(time-5), 2.5-0.05*(time-5)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [6,13]
var(1)   = 16

[State 8801, サークル2]
type       = Explod
trigger1   = time = 12
anim       = 8803
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 1.5+0.05*(time-12), 1.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13,24]
var(2)   = 16

;---------------------------------------------------[エフェクト3]

[State 8801, 黄色1]
type       = Explod
trigger1   = time = 5
anim       = 8804
ID         = 3
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(3) = 1
ID       = 3
Scale    = 0.75-0.025*(time-5), 0.75-0.025*(time-5)

[State 8801, 黄色2]
type       = Explod
trigger1   = time = 12
anim       = 8805
ID         = 4
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(4) = 1
ID       = 4
Trans    = Addalpha
alpha    = 256-var(4), 256
Scale    = 0.5+0.05*(time-12), 0.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13, 23]
var(4)   = 20

[State 8801, 黄色3]
type       = Explod
trigger1   = time = 16
anim       = 8806
ID         = 5
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.75, 0.75
vel        = 0, 0
sprpriority    = 7
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

;---------------------------------------------------[エフェクト4]

[State 8801, エフェクト] ;霊撃エフェクトA
Type       = Helper
Trigger1   = Time = 14
Pos        = 0, 0
PosType    = P1
ID         = 8810
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8801, エフェクト] ;霊撃エフェクトB
Type       = Helper
Trigger1   = Time = 18
Pos        = 0, 0
PosType    = P1
ID         = 8811
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, エフェクト] ;背景
Type       = Helper
Trigger1   = Time = 0
Pos        = 0, 0
PosType    = P1
ID         = 45
StateNo    = 8820
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8801, ヘルパー消滅]
Type     = DestroySelf
trigger1 = time >= 30+18
Trigger2 = (var(59)=1) && (var(50)<=0)



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 超必殺技エフェクト (チビガワ-70F)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8802]
Physics     = N
Anim        = 9999
SprPriority = 4

[State 8802, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

[State a, 終了フラグ]
type     = Varset
Trigger1 = root,Movetype = H
Trigger2 = Time = 69
var(59)  = 1

;-------------------------------------------------[暗転処理]

[State 8882, 変数] ;暗転用
type     = VarAdd
trigger1 = (Time <= 10)
var(50)  = 25

[state 8882, 変数] ;暗転用
type     = VarSet
Trigger1 = var(50) > 256
;Trigger2 = root,StateNo = 2200
var(50)  = 256

[State 8882, フェードアウト処理]
Type     = BGPalFx
Trigger1 = 1
Time     = 1
Mul      = 256-Var(50),256-Var(50),256-Var(50)

[State 8882, 変数] ;暗転用
type       = VarAdd
trigger1   = var(59) = 1
Trigger1   = var(50) > 0
var(50)    = -14

;---------------------------------------------------[エフェクト1]

[State 8802, エフェクト] ;ラインエフェクト45
Type       = Helper
Trigger1   = Time = 0
Pos        = 0, 0
PosType    = P1
ID         = 8809
StateNo    = 8809
Name       = "Line"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

;---------------------------------------------------[エフェクト2]

[State 8801, サークル]
type       = Explod
trigger1   = time = 5
anim       = 8802
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 3, 3
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 2.5-0.05*(time-5), 2.5-0.05*(time-5)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [6,13]
var(1)   = 16

[State 8801, サークル2]
type       = Explod
trigger1   = time = 12
anim       = 8803
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 1.5+0.05*(time-12), 1.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13,24]
var(2)   = 16

;---------------------------------------------------[エフェクト3]

[State 8801, 黄色1]
type       = Explod
trigger1   = time = 5
anim       = 8804
ID         = 3
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(3) = 1
ID       = 3
Scale    = 0.75-0.025*(time-5), 0.75-0.025*(time-5)

[State 8801, 黄色2]
type       = Explod
trigger1   = time = 12
anim       = 8805
ID         = 4
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(4) = 1
ID       = 4
Trans    = Addalpha
alpha    = 256-var(4), 256
Scale    = 0.5+0.05*(time-12), 0.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13, 23]
var(4)   = 20

[State 8801, 黄色3]
type       = Explod
trigger1   = time = 16
anim       = 8806
ID         = 5
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.75, 0.75
vel        = 0, 0
sprpriority    = 7
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

;---------------------------------------------------[エフェクト4]

[State 8801, エフェクト] ;霊撃エフェクトA
Type       = Helper
Trigger1   = Time = 14
Pos        = 0, 0
PosType    = P1
ID         = 8810
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8801, エフェクト] ;霊撃エフェクトB
Type       = Helper
Trigger1   = Time = 18
Pos        = 0, 0
PosType    = P1
ID         = 8811
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, エフェクト] ;背景
Type       = Helper
Trigger1   = Time = 0
Pos        = 0, 0
PosType    = P1
ID         = 45
StateNo    = 8820
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8801, ヘルパー消滅]
Type     = DestroySelf
trigger1 = time >= 69+18
Trigger2 = (var(59)=1) && (var(50)<=0)




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] クリティカルハート技エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8805]
Physics     = N
Anim        = 9999
SprPriority = 4

[State 8805, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

[State a, 終了フラグ]
type     = Varset
Trigger1 = root,Movetype = H
Trigger2 = Time = 75
var(59)  = 1

;-------------------------------------------------[暗転処理]

[State 8885, 変数] ;暗転用
type     = VarAdd
trigger1 = (Time <= 10)
var(50)  = 25

[state 8885, 変数] ;暗転用
type     = VarSet
trigger1 = var(50) > 256
Trigger2 = root,StateNo = 2410
var(50)  = 256

[State 8880, 変数] ;暗転用
type     = VarAdd
Trigger1 = root,StateNo != 2410
trigger1 = var(59) = 1
Trigger1 = var(50) > 0
var(50)  = -14

[State 8885, フェードアウト処理]
Type     = BGPalFx
Trigger1 = 1
Time     = 1
Mul      = 256-Var(50),256-Var(50),256-Var(50)

;---------------------------------------------------[エフェクト1]

[State 8805, ライン]
type       = Explod
trigger1   = time = 0
anim       = 8800
ID         = 0
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1 ,1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removetime     = 20
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(0) = 1
ID       = 0
Scale    = 10,1.0-fvar(0)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [5,20]
fvar(0)  = 0.06

;---------------------------------------------------[エフェクト2]

[State 8805, サークル]
type       = Explod
trigger1   = time = 5
anim       = 8802
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 3, 3
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 2-0.05*(time-5), 2-0.05*(time-5)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [6,13]
var(1)   = 16

[State 8805, サークル2]
type       = Explod
trigger1   = time = 12
anim       = 8803
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 1.5+0.05*(time-12), 1.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13,24]
var(2)   = 16

[State 8805, エフェクト]
Type       = Helper
Trigger1   = Time = 5
Pos        = 0, 0
PosType    = P1
ID         = 8830
StateNo    = 8830
Name       = "Ring"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

;---------------------------------------------------[エフェクト3]

[State 8805, 黄色1]
type       = Explod
trigger1   = time = 5
anim       = 8804
ID         = 3
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(3) = 1
ID       = 3
Scale    = 0.75-0.025*(time-5), 0.75-0.025*(time-5)

[State 8805, 黄色2]
type       = Explod
trigger1   = time = 12
anim       = 8805
ID         = 4
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(4) = 1
ID       = 4
Trans    = Addalpha
alpha    = 256-var(4), 256
Scale    = 0.5+0.05*(time-12), 0.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13, 23]
var(4)   = 20

[State 8805, 黄色3]
type       = Explod
trigger1   = time = 16
anim       = 8806
ID         = 5
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.75, 0.75
vel        = 0, 0
sprpriority    = 7
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

;---------------------------------------------------[エフェクト4]

[State 8805, 黄色3]
type       = Explod
trigger1   = time = 17
anim       = 8826
ID         = 5
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 4
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State 8805, エフェクト] ;霊撃エフェクトA
Type       = Helper
Trigger1   = Time = 14
Pos        = 0, 0
PosType    = P1
ID         = 8812
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, エフェクト] ;背景
Type       = Helper
Trigger1   = Time = 0
Pos        = 0, 0
PosType    = P1
ID         = 90
StateNo    = 8820
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

;-------------------------------------------------[暗転処理]

[State 8805, ヘルパー消滅]
Type     = DestroySelf
trigger1 = time >= 75 + (18)
Trigger2 = (var(59)=1) && (var(50)<=0)


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] クリティカルハート(EF)技エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8806]
Physics     = N
Anim        = 9999
SprPriority = 4

[State 8806, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

;-------------------------------------------------[暗転処理]

[State 8886, 変数] ;暗転用
type     = VarAdd
trigger1 = (Time <= 10)
var(50)  = 25

[state 8886, 変数] ;暗転用
type     = VarSet
trigger1 = var(50) > 256
var(50)  = 256

[State 8886, フェードアウト処理]
Type     = BGPalFx
Trigger1 = 1
Time     = 1
Mul      = 256-Var(50),256-Var(50),256-Var(50)

;---------------------------------------------------[エフェクト1]

[State 8806, ライン]
type       = Explod
trigger1   = time = 0
anim       = 8825
ID         = 0
postype    = P1
pos        = 0, -20
random     = 0, 0
scale      = 1 ,1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removetime     = 20
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(0) = 1
ID       = 0
Scale    = 10,1.0-fvar(0)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [5,20]
fvar(0)  = 0.06

;---------------------------------------------------[エフェクト2]

[State 8805, サークル]
type       = Explod
trigger1   = time = 10
anim       = 8802
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 3, 3
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(1), 256
Scale    = 2-0.05*(time-10), 2-0.05*(time-10)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [11,18]
var(1)   = 16

[State 8805, サークル2]
type       = Explod
trigger1   = time = 20
anim       = 8803
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 8
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 1.5+0.05*(time-12), 1.5+0.05*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [21,31]
var(2)   = 16

[State 8805, EFエフェクト]
Type       = Helper
Trigger1   = Time = 4
Pos        = 40, -30
PosType    = P1
ID         = 1
StateNo    = 8831
Name       = "Ring"
OwnPal     = 1
facing     = -1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8805, EFエフェクト]
Type       = Helper
Trigger1   = Time = 4
Pos        = -20, 30
PosType    = P1
ID         = 2
StateNo    = 8831
Name       = "Ring"
OwnPal     = 1
facing     = -1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8805, EFエフェクト]
Type       = Helper
Trigger1   = Time = 12
Pos        = 30, -50
PosType    = P1
ID         = 3
StateNo    = 8831
Name       = "Ring"
OwnPal     = 1
facing     = -1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8805, EFエフェクト]
Type       = Helper
Trigger1   = Time = 12
Pos        = 50, 0
PosType    = P1
ID         = 4
StateNo    = 8831
Name       = "Ring"
OwnPal     = 1
facing     = -1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0
;---------------------------------------------------[エフェクト3]

[State 8805, 赤色1]
type       = Explod
trigger1   = time = 12
anim       = 8832
ID         = 3
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 1
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(3) = 1
ID       = 3
alpha    = 256-var(4), 256
Scale    = 1.25+0.03*(time-12), 1.25+0.03*(time-12)

[State 8805, 青色2]
type       = Explod
trigger1   = time = 12
anim       = 8833
ID         = 4
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.5, 0.5
vel        = 0, 0
sprpriority    = 1
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(4) = 1
ID       = 4
Trans    = Addalpha
alpha    = 256-var(4), 256
Scale    = 1.25+0.03*(time-12), 1.25+0.03*(time-12)

[State a];エフェクト管理2
type     = Varadd
trigger1 = time = [13, 23]
var(4)   = 14

;---------------------------------------------------[エフェクト4]

[State 8805, リング]
type       = Explod
trigger1   = time = 18
anim       = 8827
ID         = 5
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
sprpriority    = 4
bindtime       = -1
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999

[State 8805, エフェクト] ;霊撃エフェクトA
Type       = Helper
Trigger1   = Time = 18
Pos        = 0, 0
PosType    = P1
ID         = 8810
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8805, エフェクト] ;霊撃エフェクトA
Type       = Helper
Trigger1   = Time = 22
Pos        = 0, 0
PosType    = P1
ID         = 8811
StateNo    = 8810
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

[State 8800, エフェクト] ;背景
Type       = Helper
Trigger1   = Time = 0
Pos        = 0, 0
PosType    = P1
ID         = 90
StateNo    = 8820
Name       = "Reigeki"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999
Persistent = 0

;-------------------------------------------------[暗転処理]

[State 8885, 変数] ;暗転用
type     = VarAdd
trigger1 = (Time >= 80)
var(50)  = -25

[State 8805, ヘルパー消滅]
Type     = DestroySelf
trigger1 = time >= 90


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 文字エフェクト(EF)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 8831]
Physics     = N
Anim        = 8831
SprPriority = 9

[state 8831]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State 8831, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 8831, 速度]
Type     = AngleSet
Trigger1 = IsHelper(1)
value    = 60

[state 8825, 角度反映]
type     = angledraw
trigger1 = IsHelper(1)
scale    = 2, 2

[State 8831, 速度]
Type     = AngleSet
Trigger1 = IsHelper(2)
value    = -90

[state 8825, 角度反映]
type     = angledraw
trigger1 = IsHelper(2)
scale    = 2, 2

[State 8831, 速度]
Type     = AngleSet
Trigger1 = IsHelper(3)
value    = 0

[state 8825, 角度反映]
type     = angledraw
trigger1 = IsHelper(3)
scale    = -2, 2

[State 8831, 速度]
Type     = AngleSet
Trigger1 = IsHelper(4)
value    = -90

[state 8825, 角度反映]
type     = angledraw
trigger1 = IsHelper(4)
scale    = 2, -2

;--------------------------------[ヘルパー消滅]

[state 8825, ヘルパー消滅]
type     = Destroyself
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ラインエフェクト (斜め)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 8809]
Physics     = N
Anim        = 8800
SprPriority = 9

[state 8809]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State 8809, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 8809, 速度]
Type     = AngleSet
Trigger1 = 1
value    = 45

[State 8809, サイズ]
type     = varSet
trigger1 = time = [5,20]
fvar(0)  = 0.06

[state 8809, 角度反映]
type     = angledraw
trigger1 = 1
scale    = 10, 1 - fvar(0)

;--------------------------------[ヘルパー消滅]

[state 8809, ヘルパー消滅]
type     = Destroyself
trigger1 = time >= 20


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 超必殺技エフェクト / 追加
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8810]
Type     = A
MoveType = I
Physics  = N
Anim     = 8810
SprPriority = 9

[State 8810, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

;-------------------------------------------------[サイズ設定]

[State 8810, AngleDraw]
Type     = AngleDraw
Trigger1 = IsHelper(8810)
value    = 40
Scale    = 1.05*(time*0.3) , 0.45*(time*0.3)

[State 8810, AngleDraw]
Type     = AngleDraw
Trigger1 = IsHelper(8811)
value    = -40
Scale    = 1.05*(time*0.3) , 0.45*(time*0.3)

[State 8810, AngleDraw]
Type     = AngleDraw
Trigger1 = IsHelper(8812)
value    = 0
Scale    = 1.0*(time*0.3) , 1.0*(time*0.3)


;-------------------------------------------------[透過設定]
[State 8810, Trans]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 256-var(2), 256

[state 8810, 変数]
type     = VarAdd
trigger1 = time > 6
var(2)   = 25

;-------------------------------------------------[終了]

[State 8810, DestroySelf]
Type     = DestroySelf
Trigger1 = Var(2) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 発動時背景エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8820]
Physics     = N
Anim        = 9999
SprPriority = 4

[State 8820]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;---------------------------------------------------[透過処理]

[State 8820, 透過用]
type     = Varadd
Trigger1 = Var(59) != 1   ;終了フラグが立っていない
trigger1 = Var(0) < 20
var(0)   = 1

[State 8820, 透過用]
type     = Varadd
Trigger1 = Var(59) = 1   ;終了フラグ
trigger1 = Var(0) > 0
var(0)   = -1

[State 8820, 透過用];本体ステート
type     = Varset
trigger1 = !time
var(5)   = (Root,Stateno)

[State 8820, 終了フラグ]
type     = Varset
Trigger1 = IsHelper(45)
Trigger1 = Time = 45+10
Trigger2 = IsHelper(59)
Trigger2 = Time = 59+20
Trigger3 = IsHelper(90)
Trigger3 = Time = 70+20
trigger4 = (root,movetype = H)&&(root,stateno != [120,159])
Trigger5 = IsHelper(49)
Trigger5 = Time = 49+20
var(59)  = 1

[State 8820];背景色
type      = PalFX
trigger1  = 1
time      = 1
add       = 0,0,0
mul       = ceil(Var(0)*2.5),ceil(Var(0)*2.5),ceil(Var(0)*4.5)
invertall = 0
color     = 256

;---------------------------------------------------[表示処理]

[State 8820, 背景エフェクト]
Type        = Explod
Trigger1    = Time
Anim        = 8815
ID          = 8815
Postype     = Left
Pos         = -256+floor((time%256)*2), 240
Ownpal      = 0
Scale       = 0.5, 0.5
SprPriority = -8
Removetime  = 1
pausemovetime = 5
supermovetime = 5

[State 8820, 背景エフェクト]
Type        = Explod
Trigger1    = Time
Anim        = 8815
ID          = 8815
Postype     = Left
Pos         = 0+floor((time%256)*2), 240
Ownpal      = 0
Scale       = 0.5, 0.5
SprPriority = -8
Removetime  = 1
pausemovetime = 5
supermovetime = 5

[State 8820, 背景エフェクト]
Type        = Explod
Trigger1    = Time
Anim        = 8815
ID          = 8815
Postype     = Left
Pos         = 256+floor((time%256)*2), 240
Ownpal      = 0
Scale       = 0.5, 0.5
SprPriority = -8
Removetime  = 1
pausemovetime = 5
supermovetime = 5

[State 8820, 文字エフェクト];ランケ
Type       = Helper
TriggerAll = Time%8 = 0 && Time < 50
Trigger1   = Var(5) = 2000
Trigger2   = Var(5) = 2050
Pos        = 0, -(Random%240)
PosType    = back
ID         = 1
StateNo    = 8825
Name       = "Spell"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999

[State 8820, 文字エフェクト];グラ
Type       = Helper
TriggerAll = Time%8 = 0 && Time < 50
Trigger1   = Var(5) = 2100 || Var(5) = 2110
Trigger2   = Var(5) = 2150
Pos        = (Random%320), 100
PosType    = back
ID         = 2
StateNo    = 8825
Name       = "Spell"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999

[State 8820, 文字エフェクト];セキュリス
Type       = Helper
TriggerAll = Time%8 = 0 && Time < 50
Trigger1   = Var(5) = 2200
Trigger2   = Var(5) = 2250
Pos        = (Random%320), 20
PosType    = back
ID         = 3
StateNo    = 8825
Name       = "Spell"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999

[State 8820, 文字エフェクト];レクイエム
Type       = Helper
TriggerAll = Time%8 = 0 && Time < 60
Trigger1   = Var(5) = 2300
Trigger2   = Var(5) = 2400
Pos        = 330, -(Random%240)
PosType    = back
ID         = 4
StateNo    = 8825
Name       = "Spell"
OwnPal     = 1
SuperMoveTime=99999
PauseMoveTime=99999

[State 8850, ヘルパー消滅]
Type     = DestroySelf
trigger1 = Var(0) = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 文字エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 8825]
Physics     = N
Anim        = 8820
SprPriority = 1

[state 8825]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State 8825, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
alpha    = 256-(time*5),256

[State 8825, 速度]
Type     = VelSet
Trigger1 = IsHelper(1)
x        = 10
y        = 0

[State 8825, 速度]
Type     = VelSet
Trigger1 = IsHelper(2)
x        = 10*cos(70*Pi/180)
y        = -10*sin(70*Pi/180)

[State 8825, 速度]
Type     = VelSet
Trigger1 = IsHelper(3)
x        = 0
y        = -10

[State 8825, 速度]
Type     = VelSet
Trigger1 = IsHelper(4)
x        = -10
y        = 0

[state 8825, 角度反映]
type     = angledraw
trigger1 = 1
value    = 0 - ((IsHelper(3))*90) - ((IsHelper(2))*-70)
scale    = 1 - ((IsHelper(4))*2), 1

;--------------------------------[ヘルパー消滅]

[state 8825, ヘルパー消滅]
type     = Destroyself
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] クリティカルハートエフェクト / 追加
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8830]
Type     = A
MoveType = I
Physics  = N
Anim     = 8830
SprPriority = 9

[State 8830, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
ignorehitpause = 1

;-------------------------------------------------[サイズ設定]

[State 8830, AngleDraw]
Type     = AngleDraw
Trigger1 = 1
value    = 45
Scale    = 2 , 2

;-------------------------------------------------[透過設定]

[State 8830, Trans]
Type     = Trans
Trigger1 = 1
Trans    = Add

;-------------------------------------------------[終了]

[State 8830, DestroySelf]
Type     = DestroySelf
Trigger1 = Animtime = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 脱衣KO管理ヘルパー
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 9971]
type	= A
movetype= I
physics	= N
anim	= 9999
ctrl    = 0

[State 9971, 特殊状況]
type     = AssertSpecial
trigger1 = 1
flag     = invisible



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; KOボイス再生ヘルパー
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 9970]
type	= A
movetype= I
physics	= N
anim	= 9999
ctrl    = 0

[State 9970, 特殊状況]
type     = AssertSpecial
trigger1 = 1
flag     = invisible

;------------------------------------

[state 9970, KO負け-続行];「こらあかん！」
type     = PlaySnd
trigger1 = !time
trigger1 = root,var(50) = 0
value    = s11, 1
Persistent = 0
IgnoreHitPause = 1

[state -2, KO負け-決着];「ウソやー！」
type     = PlaySnd
trigger1 = !time
trigger1 = root,var(51) = 0
trigger1 = root,var(50) = 1
value    = s11,2
IgnoreHitPause = 1
Persistent = 0

[state -2, KO負け-特殊];「なんでやねーん！」
type     = PlaySnd
trigger1 = !time
trigger1 = root,var(51) = 1
trigger1 = root,var(50) = 1
value    = s11, 3
IgnoreHitPause = 1
Persistent = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 特殊KO 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 9972]
type	= A
movetype= I
physics	= N
anim	= 35111
ctrl    = 0

[State 9972]
type     = NothitBy
Trigger1 = 1
value    = SCA,AA,AT,AP

[State 9972, 速度]
type     = VelAdd
Trigger1 = !time
Y = -4

[State 9972, 速度]
type     = VelAdd
Trigger1 = time
Y = 0.4

[State 9972]
type     = ChangeState
trigger1 = (Vel Y > 0)&&(Pos Y >= 0)
value    = 9973

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 特殊KO 2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 9973]
type	= A
movetype= I
physics	= N
anim	= 35112
ctrl    = 0

[State 9973]
type     = NothitBy
Trigger1 = 1
value    = SCA,AA,AT,AP

[State 9973, 速度]
type     = VelSet
Trigger1 = !time
X = 0
Y = 0

[State 9973]
type     = PosSet
trigger1 = 1
Y = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (アルカナハート３)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9980]
Type     = A
Movetype = I
Physics  = N
Anim     = 9999
velset   = 0,0

[State 9980, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

;-------------------------------------------------[カットイン表示]

[State 9980, カットイン];1P側
Type      = Explod
Trigger1  = IsHelper(9980)
Trigger1  = Time = 0
Anim      = 9980
ID        = 9980
Pos       = 0, 250;125
PosType   = Left
Scale     = 0.5, 0.5
Facing    = 1
SprPriority   = -9
SuperMove     = 1
PauseMoveTime = -1

[State 9980, カットイン];2P側
Type      = Explod
Trigger1  = IsHelper(9981)
Trigger1  = Time = 0
Anim      = 9980
ID        = 9980
Pos       = 320,0
PosType   = Left
Scale     = 0.5,0.5
Facing    = -1
RemoveTime    = 1
SprPriority   = -9
SuperMove     = 1
PauseMoveTime = -1

;-------------------------------------------------[終了]

[State 9980, DestroySelf]
Type     = DestroySelf
Trigger1 = time > 250



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (アルカナハート３)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 10000]
Type    = S
Movetype= I
Physics = N
Anim = 10000
velset = 0,0

[State a]
Type = Posset
Trigger1 = !Time
y = Pos y - screenPos y +240

[State a, AssertSpecial]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

;-------------------------------------------------[透過設定]
[State 10000, Varadd]
Type = VarAdd
Trigger1 = Time > 37
var(0) = 12

[State 10000]
Type = Trans
Trigger1 = 1
trans = addalpha
alpha = 256-var(0), var(0)

;-------------------------------------------------[速度設定]
[State a]
Type = PosAdd
Trigger1 = Time < 7
x = 15

[State a]
Type = PosAdd
Trigger1 = Time =[8,10]
x = 5

[State 9100, VarSet_A];初速度
Type = VarSet
Trigger1 = Time = 0
var(1) = 15

[State 9100, VarSet_B];終わり速度
Type = VarSet
Trigger1 = Time = 40
var(1) = 5

[State 9100, VarSet_C];減速
Type = VarAdd
Trigger1 = Time = [1,15]
var(1) = -1

[State 9100, VarSet_D];代入
type = VarSet
Trigger1 = time > 1
var(2) = Var(1)

;-------------------------------------------------[拡大設定]

[State 10000, FVar(0)Set_A];初期設定
Type = VarAdd
Trigger1 = Time = 0
fvar(0) = 1

[State 10000, FVar(0)Set_B]
Type = VarAdd
Trigger1 = Time > 39
fvar(0) = 0.1

[State 10000, 0]
Type = AngleDraw
Trigger1 = 1
Scale = fvar(0),fvar(0)

;-------------------------------------------------[終了]

[State 6925, DestroySelf]
Type = DestroySelf
Trigger1 = Var(0) > 250



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [HELPER] バックステップ / 煙エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 10105]
type    = A
physics = N
anim    = 10105
ctrl    = 0
sprpriority = 8

[State a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

;-------------------------------------------------[速度設定]

[State 10105, 速度]
type     = VelSet
trigger1 = !time
trigger1 = IsHelper(105) || IsHelper(106)
X        = Ifelse(Ishelper(105),1, -1)

[State 10105, 速度]
type     = Velmul
trigger1 = time = 15
X        = 0.9

;-------------------------------------------------[速度設定]

[State 10105, 速度]
type     = VelSet
trigger1 = !time
trigger1 = IsHelper(1000)
X        = 0

;-------------------------------------------------[サイズ設定]

[State 10105, サイズ変更];墓石から
type     = AngleDraw
trigger1 = 1
scale    = 0.6+(Time*0.03), 0.6+(Time*0.03)

;-------------------------------------------------[透過設定]

[State 10105, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = addalpha
Alpha    = var(1), 256

[state 10105, 変数]
type     = VarAdd
trigger1 = Time < 5
var(1)   = 51

[state 10105, 変数]
type     = VarSet
trigger1 = Time = 15
var(1)   = 255

[state 10105, 変数]
type     = VarAdd
trigger1 = Time > 15
var(1)   = -15

;-------------------------------------------------[終了]

[State 10105, ヘルパー消滅]
type = DestroySelf
trigger1 = time >= 30
trigger2 = Var(1) < 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ダッシュエフェクト / 空中版
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 10110]
Physics     = N
Anim        = 8104
SprPriority = 9

[State 10110]
type     = BindToParent
Trigger1 = 1
time     = -1
pos      = 70, -105

[State 10110]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 10110, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
Alpha    = 256-var(2),256

[State 10110, 透過]
type     = Varadd
Trigger1 = Time > 10
var(2)   = 25

[State 10110, 透過]
type     = Varadd
Trigger1 = Time > 2
var(3)   = 10

[State 10110]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1 ,1

[State 10110, サークル]
type       = Explod
trigger1   = time = 2
anim       = 8104
ID         = 2
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 1, 1
vel        = 0, 0
ownpal     = 0
sprpriority    = 9
bindtime       = -1
removeongethit = 1
removetime  = 14

[State 10110, 放射]
type       = Explod
trigger1   = time = 2
anim       = 8106
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.3, 1
vel        = 0, 0
ownpal     = 0
sprpriority    = 9
bindtime       = -1
removeongethit = 1
removetime  = 16

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(3), 256

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 0.3+0.07*(time-2), 1.5-0.07*(time-2)

;-----------------------------------------------------

[state 10110, 変数]
type     = VarSet
trigger1 = 1
fvar(0)  = (random%31) / 100

[State 10110, エフェクト]
type     = Explod
Trigger1 = Time = [6, 12]
anim     = 8107 + (random%2)
ID       = 10110
postype  = p1
pos      = 0, 0
random   = 15, 15
scale    = 0.2+fvar(0), 0.2+fvar(0)
vel      = -7.0+((random%31)/10), -1.0+((random%21)/10)
ownpal   = 1
sprpriority = 8
RemoveOnGetHit = 1

[State 10110, エフェクト]
type     = Explod
Trigger1 = Time = [6, 12]
anim     = 8107 + (random%2)
ID       = 10110
postype  = p1
pos      = 0, 0
random   = 15, 15
scale    = 0.2+fvar(0), 0.2+fvar(0)
vel      = -6.5+((random%31)/10), -1.0+((random%21)/10)
ownpal   = 1
sprpriority = 8
RemoveOnGetHit = 1

[State 10110, エフェクト]
type     = Explod
Trigger1 = Time = [6, 12]
anim     = 8107 + (random%2)
ID       = 10110
postype  = p1
pos      = 0, 0
random   = 15, 15
scale    = 0.2+fvar(0), 0.2+fvar(0)
vel      = -8.0+((random%31)/10), 1.0-((random%21)/10)
ownpal   = 1
sprpriority = 8
RemoveOnGetHit = 1

;------------------------------------------------

[State 10110]
Type     = DestroySelf
Trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ダッシュエフェクト / 空中版
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 10115]
Physics     = N
Anim        = 9999
SprPriority = -1

[State 10115]
type     = BindToParent
Trigger1 = 1
time     = -1
pos      = -55, -105

[State 10115]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 10115, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
Alpha    = 256-var(2),256

[State 10115, 透過]
type     = Varadd
Trigger1 = Time > 10
var(2)   = 25

[State 10115, 透過]
type     = Varadd
Trigger1 = Time > 2
var(3)   = 10

[State 10115]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1 ,1

[State 10110, 放射]
type       = Explod
trigger1   = time = 2
anim       = 8106
ID         = 1
postype    = P1
pos        = 0, 0
random     = 0, 0
scale      = 0.3, 1
vel        = 0, 0
facing     = -1
ownpal     = 0
sprpriority    = 9
bindtime       = -1
removeongethit = 1
removetime  = 16

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(2) = 1
ID       = 2
Trans    = Addalpha
alpha    = 256-var(3), 256

[State a];エフェクト管理
type     = ModifyExplod
trigger1 = Numexplod(1) = 1
ID       = 1
Trans    = Addalpha
alpha    = 256-var(2), 256
Scale    = 0.3+0.07*(time-2), 1.5-0.07*(time-2)

;-----------------------------------------------------

[state 10110, 変数]
type     = VarSet
trigger1 = 1
fvar(0)  = (random%31) / 100

[State 10110, エフェクト]
type     = Explod
Trigger1 = Time = [6, 12]
anim     = 8107 + (random%2)
ID       = 10110
postype  = p1
pos      = 0, 0
random   = 15, 15
scale    = 0.2+fvar(0), 0.2+fvar(0)
vel      = 7.0-((random%31)/10), -1.0+((random%21)/10)
ownpal   = 1
sprpriority = 8
RemoveOnGetHit = 1
facing     = -1
[State 10110, エフェクト]
type     = Explod
Trigger1 = Time = [6, 12]
anim     = 8107 + (random%2)
ID       = 10110
postype  = p1
pos      = 0, 0
random   = 15, 15
scale    = 0.2+fvar(0), 0.2+fvar(0)
vel      = 6.5-((random%31)/10), -1.0+((random%21)/10)
ownpal   = 1
sprpriority = 8
RemoveOnGetHit = 1
facing     = -1
[State 10110, エフェクト]
type     = Explod
Trigger1 = Time = [6, 12]
anim     = 8107 + (random%2)
ID       = 10110
postype  = p1
pos      = 0, 0
random   = 15, 15
scale    = 0.2+fvar(0), 0.2+fvar(0)
vel      = 8.0-((random%31)/10), 1.0-((random%21)/10)
ownpal   = 1
sprpriority = 8
RemoveOnGetHit = 1
facing     = -1
;------------------------------------------------

[State 10110]
Type     = DestroySelf
Trigger1 = Time > 18


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [HELPER] E攻撃他 / 煙エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 10300]
type    = A
physics = N
anim    = 10105
ctrl    = 0
sprpriority = 8

[State a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

;-------------------------------------------------[速度設定]

[State 10105, 速度]
type     = VelSet
trigger1 = !time
X        = -1.5

[State 10105, 速度]
type     = Velmul
trigger1 = time = 25
X        = 0.9

;-------------------------------------------------[サイズ設定]

[State 10105, サイズ変更];墓石から
type     = AngleDraw
trigger1 = 1
scale    = 0.75+(Time*0.04), 0.75+(Time*0.04)

;-------------------------------------------------[透過設定]

[State 10105, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = addalpha
Alpha    = var(1), 256

[state 10105, 変数]
type     = VarAdd
trigger1 = Time < 5
var(1)   = 51

[state 10105, 変数]
type     = VarSet
trigger1 = Time = 15
var(1)   = 255

[state 10105, 変数]
type     = VarAdd
trigger1 = Time > 15
var(1)   = -15

;-------------------------------------------------[終了]

[State 10105, ヘルパー消滅]
type = DestroySelf
trigger1 = time >= 30
trigger2 = Var(1) < 0







;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; アルカナゲージ & フォースゲージ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 20000]
type	= A
movetype= I
physics	= N
anim	= 9999
ctrl    = 0

[state a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow
flag2    = invisible

;--------------------------------------------[1P,2P判別]

[state a]
type     = varset
trigger1 = !time
var(1)   = ifelse(root,teamside = 1, 1, -1)
ignorehitpause = 1

[state a, MainGage_Expld] ;アルカナゲージ枠
type           = Explod
Trigger1       = Var(1) = 1
Trigger1       = NumExplod(20000) = 0
anim           = 20000
ID             = 20000
Pos            = 0 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 5
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.55,0.5

[state a, MainGage_Expld] ;アルカナゲージ枠
type           = Explod
Trigger1       = Var(1) = -1
Trigger1       = NumExplod(20000) = 0
anim           = 20000
ID             = 20000
Pos            = 0 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 5
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.55,0.5

[state a, MainGage_Expld] ;アルカナゲージ裏打ち
type           = Explod
Trigger1       = Var(1) = 1
Trigger1       = NumExplod(20001) = 0
anim           = 20001
ID             = 20001
Pos            = 0 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 5
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.55,0.5

[state a, MainGage_Expld] ;アルカナゲージ裏打ち2P
type           = Explod
Trigger1       = Var(1) = -1
Trigger1       = NumExplod(20001) = 0
anim           = 20001
ID             = 20001
Pos            = 0 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 5
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.55,0.5

[state a, MainGage_Expld] ;アルカナゲージ文字枠1P
type           = explod
Trigger1       = Var(1) = 1
Trigger1       = NumExplod(20005) = 0
anim           = 20005
ID             = 20005
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 6
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, MainGage_Expld] ;アルカナゲージ文字枠2P
type           = explod
Trigger1       = Var(1) = -1
Trigger1       = NumExplod(20006) = 0
anim           = 20006
ID             = 20006
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 6
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 1st_Expld];アルカナゲージ本数(1P)
type           = Explod
Trigger1	   = var(1) = 1
anim           = 20010+floor(root,fvar(20)/1000)
ID             = 20010
Pos            = 22 , 228;- (root,var(50))
postype        = left
facing         = 1
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.25,0.25

[state a, 1st_Expld];アルカナゲージ本数(2P)
type           = Explod
Trigger1	   = var(1) = -1
anim           = 20010+floor(root,fvar(20)/1000)
ID             = 20010
Pos            = -22 , 228;- (root,var(50))
postype        = right
facing         = 1
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.25,0.25

;--------------------------------------------[MAX表示 - 1P]

[state a, Expld];MAX
type           = explod
Trigger1	   = var(1) = 1
Trigger1       = NumExplod(20020) = 0
Trigger1	   = root,fvar(20) >= 1000
anim           = 20020
ID             = 20020
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];MAX
type           = explod
Trigger1	   = var(1) = 1
Trigger1       = NumExplod(20021) = 0
Trigger1	   = root,fvar(20) >= 2000
anim           = 20021
ID             = 20021
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];MAX
type           = explod
Trigger1	   = var(1) = 1
Trigger1       = NumExplod(20022) = 0
Trigger1	   = root,fvar(20) >= 3000
anim           = 20022
ID             = 20022
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];バイタルソースMAX
type           = explod
Trigger1	   = var(1) = 1
Trigger1       = NumExplod(20025) = 0
Trigger1	   = root,fvar(21) >= 1000
anim           = 20025
ID             = 20025
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];バイタルソースMAX
type           = explod
Trigger1	   = var(1) = 1
Trigger1       = NumExplod(20026) = 0
Trigger1	   = root,fvar(21) >= 2000
anim           = 20026
ID             = 20026
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];バイタルソースMAX
type           = explod
Trigger1	   = var(1) = 1
Trigger1       = NumExplod(20027) = 0
Trigger1	   = root,fvar(21) >= 3000
anim           = 20027
ID             = 20027
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

;--------------------------------------------[MAX表示 - 2P]

[state a, Expld];MAX
type           = explod
Trigger1	   = var(1) = -1
Trigger1       = NumExplod(20020) = 0
Trigger1	   = root,fvar(20) >= 1000
anim           = 20020
ID             = 20020
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];MAX
type           = explod
Trigger1	   = var(1) = -1
Trigger1       = NumExplod(20021) = 0
Trigger1	   = root,fvar(20) >= 2000
anim           = 20021
ID             = 20021
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];MAX
type           = explod
Trigger1	   = var(1) = -1
Trigger1       = NumExplod(20022) = 0
Trigger1	   = root,fvar(20) >= 3000
anim           = 20022
ID             = 20022
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];バイタルソースMAX
type           = explod
Trigger1	   = var(1) = -1
Trigger1       = NumExplod(20025) = 0
Trigger1	   = root,fvar(21) >= 1000
anim           = 20025
ID             = 20025
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];バイタルソースMAX
type           = explod
Trigger1	   = var(1) = -1
Trigger1       = NumExplod(20026) = 0
Trigger1	   = root,fvar(21) >= 2000
anim           = 20026
ID             = 20026
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, Expld];バイタルソースMAX
type           = explod
Trigger1	   = var(1) = -1
Trigger1       = NumExplod(20027) = 0
Trigger1	   = root,fvar(21) >= 3000
anim           = 20027
ID             = 20027
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

;-------------------------------------------[ゲージ減少管理]

[state a, 2nd_Expld];バイタルゲージ1
type           = Explod
Trigger1	   = var(1) = 1
Trigger1	   = root,fvar(21) = [0,999]
anim           = 20200+ceil(root,fvar(21)/19.23)
ID             = 20200
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];バイタルゲージ1 - 2P
type           = Explod
Trigger1	   = var(1) = -1
Trigger1	   = root,fvar(21) = [0,999]
anim           = 20200+ceil(root,fvar(21)/19.23)
ID             = 20200
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];バイタルゲージ2
type           = explod
Trigger1	   = var(1) = 1
Trigger1	   = root,fvar(21) = [1001,1999]
anim           = 20200+ceil((root,fvar(21)-1000)/19.23)
ID             = 20201
Pos            = 41 , 235;- (root,var(50))  ;31 289
postype        = left
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];バイタルゲージ2 - 2P
type           = Explod
Trigger1	   = var(1) = -1
Trigger1	   = root,fvar(21) = [1001,1999]
anim           = 20200+ceil((root,fvar(21)-1000)/19.23)
ID             = 20201
Pos            = -41 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];バイタルゲージ3
type           = explod
Trigger1	   = var(1) = 1
Trigger1	   = root,fvar(21) = [2001,2999]
anim           = 20200+ceil((root,fvar(21)-2000)/19.23)
ID             = 20202
Pos            = 72 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];バイタルゲージ3 - 2P
type           = Explod
Trigger1	   = var(1) = -1
Trigger1	   = root,fvar(21) = [2001,2999]
anim           = 20200+ceil((root,fvar(21)-2000)/19.23)
ID             = 20202
Pos            = -72 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 7
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

;-------------------------------------------[ゲージ減少管理]

[state a, 2nd_Expld];アルカナゲージ1
type           = Explod
Trigger1	   = var(1) = 1
Trigger1	   = root,fvar(20) = [0,999]
anim           = 20100+ceil(root,fvar(20)/19.23)
ID             = 20100
Pos            = 10 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];アルカナゲージ1 - 2P
type           = Explod
Trigger1	   = var(1) = -1
Trigger1	   = root,fvar(20) = [0,999]
anim           = 20100+ceil(root,fvar(20)/19.23)
ID             = 20100
Pos            = -10 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];アルカナゲージ2
type           = explod
Trigger1	   = var(1) = 1
Trigger1	   = root,fvar(20) = [1001,1999]
anim           = 20100+ceil((root,fvar(20)-1000)/19.23)
ID             = 20101
Pos            = 41 , 235;- (root,var(50))  ;31 289
postype        = left
facing         = var(1)
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];アルカナゲージ2 - 2P
type           = Explod
Trigger1	   = var(1) = -1
Trigger1	   = root,fvar(20) = [1001,1999]
anim           = 20100+ceil((root,fvar(20)-1000)/19.23)
ID             = 20101
Pos            = -41 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];アルカナゲージ3
type           = explod
Trigger1	   = var(1) = 1
Trigger1	   = root,fvar(20) = [2001,2999]
anim           = 20100+ceil((root,fvar(20)-2000)/19.23)
ID             = 20102
Pos            = 72 , 235;- (root,var(50))
postype        = left
facing         = var(1)
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

[state a, 2nd_Expld];アルカナゲージ3 - 2P
type           = Explod
Trigger1	   = var(1) = -1
Trigger1	   = root,fvar(20) = [2001,2999]
anim           = 20100+ceil((root,fvar(20)-2000)/19.23)
ID             = 20102
Pos            = -72 , 235;- (root,var(50))
postype        = right
facing         = var(1)
SprPriority    = 8
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5,0.5

;--------------------------------------------[消去]

[state a];消滅
type = removeexplod
trigger1 = numexplod(20100)
trigger1 = root,fvar(20) > 1000
id = 20100

[state a];消滅
type = removeexplod
triggerAll = numexplod(20101)
trigger1 = root,fvar(20) > 2000
trigger2 = root,fvar(20) <= 1000
id = 20101

[state a];消滅
type = removeexplod
triggerAll = numexplod(20102)
trigger1 = root,fvar(20) >= 3000
trigger2 = root,fvar(20) <  2000
id = 20102


[state a];消滅
type = removeexplod
trigger1 = numexplod(20200)
trigger1 = root,fvar(21) > 1000
id = 20200

[state a];消滅
type = removeexplod
triggerAll = numexplod(20201)
trigger1 = root,fvar(21) > 2000
trigger2 = root,fvar(21) <= 1000
id = 20201

[state a];消滅
type = removeexplod
triggerAll = numexplod(20202)
trigger1 = root,fvar(21) >= 3000
trigger2 = root,fvar(21) <  2000
id = 20202

;--------------------------------------------[消去-MAX表示]

[state a];消滅
type = removeexplod
triggerAll = numexplod(20020)
trigger1   = root,fvar(20) < 1000
id = 20020

[state a];消滅
type = removeexplod
triggerAll = numexplod(20021)
trigger1   = root,fvar(20) < 2000
id = 20021

[state a];消滅
type = removeexplod
triggerAll = numexplod(20022)
trigger1   = root,fvar(20) < 3000
id = 20022

;---------------------------------------------[ゲージ回復中]

[state a, 2nd_Expld];アルカナゲージ
type           = Explod
Trigger1       = var(1) = 1
Trigger1       = root,fVar(20) < root,fvar(21)      ;現在の霊力 ＜ 現在の最大霊力
Trigger1       = (fvar(20) < 3000) && (root,fvar(22) = 0)
anim           = 20015
ID             = 20015
Pos            = 38+ceil(175/2*(root,fvar(20)/3000)), 235-10
postype        = left
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5, 0.5
persistent = 1

[state a, 2nd_Expld];アルカナゲージ
type           = Explod
Trigger1       = var(1) = -1
Trigger1       = root,fVar(20) < root,fvar(21)      ;現在の霊力 ＜ 現在の最大霊力
Trigger1       = (fvar(20) < 3000) && (root,fvar(22) = 0)
anim           = 20015
ID             = 20015
Pos            = -38-ceil(175/2*(root,fvar(20)/3000)), 235-10
postype        = right
facing         = var(1)
SprPriority    = 9
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
scale          = 0.5, 0.5
persistent = 1

[State a, エフェクト変更]
type     = ModifyExplod
trigger1 = 1
id       = 20015
scale    = 0.4+abs(fvar(21)), 0.4+abs(fvar(21))
trans    = Addalpha
alpha    = 200, 256

[State a, サイズ変数]
type     = VarAdd
trigger1 = 1
fvar(21) = 0.06

[State a, サイズ変数]
type     = Varset
trigger1 = fvar(21) >= 0.21
fvar(21) = -0.18




;==============================================================================
; ここからフォースゲージ
;==============================================================================

[state b];まとめて調節
type = varset
trigger1 = 1
var(50)= ifelse(var(1)=1,25,-25)

[state b];まとめて調節
type = varset
trigger1 = 1
var(51)= 55;228;- (root,var(50))


[state B, ForceGage];フォースゲージ背景1P
type           = Explod
Trigger1       = var(1) = 1
Trigger1       = NumExplod(25000) = 0
anim           = 25000
ID             = 25000
Pos            = var(50) , var(51)
postype        = left
facing         = var(1)
SprPriority    = -3
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ背景2P
type           = Explod
Trigger1       = var(1) = -1
Trigger1       = NumExplod(25000) = 0
anim           = 25000
ID             = 25000
Pos            = var(50) , var(51)
postype        = right
facing         = var(1)
SprPriority    = -3
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

;------------------------------------------------

[state B, ForceGage];フォースゲージ枠(通常)
type           = Explod
Trigger1       = var(1) = 1
Trigger1	   = root,Var(16) = 0 ;バースト判定
Trigger1       = NumExplod(25005) = 0
anim           = 25005 + (var(1) = -1)
ID             = 25005
Pos            = var(50) , var(51)
postype        = left
facing         = var(1)
SprPriority    = -1
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ枠(通常)
type           = Explod
Trigger1       = var(1) = -1
Trigger1	   = root,Var(16) = 0 ;バースト判定
Trigger1       = NumExplod(25005) = 0
anim           = 25005 + (var(1) = -1)
ID             = 25005
Pos            = var(50) , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[State B]
type     = RemoveExplod
Trigger1 = root,var(16) = 1
ID       = 25005
ignorehitpause = 1

[state B, ForceGage];フォースゲージ発光1P (通常)
type           = Explod
Trigger1       = var(1) = 1
Trigger1       = root,fvar(10) >= 10000
anim           = 25015
ID             = 25015
Pos            = var(50) , var(51)
postype        = left
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
;scale          = 0.5, 0.5
persistent     = 60

[state B, ForceGage];フォースゲージ発光2P (通常)
type           = Explod
Trigger1       = var(1) = -1
Trigger1       = root,fvar(10) >= 10000
anim           = 25016
ID             = 25015
Pos            = var(50) , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
;scale          = 0.5, 0.5
persistent     = 60

[state B, ForceGage];フォースゲージ発光(通常)
type           = Explod
Trigger1       = var(1) = -1
Trigger1	   = root,fvar(10) >= 10000
anim           = 25016
ID             = 25015
Pos            = var(50) , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime  = 99999
supermovetime  = 99999
ignorehitpause = 1
;scale          = 0.5, 0.5
persistent     = 60

[State B, 透過変数]
type     = varset
trigger1 = NumExplod(25015) = 0
var(13)  = 256
persistent = 1

[State B, 透過変数]
type     = Varadd
trigger1 = Numexplod(25015) >= 1
var(13) = -6
persistent = 1

[State B, サイズ変数];リセット
type     = Varset
trigger1 = Numexplod(25015) = 0
fvar(10) = 0.5
persistent = 1

[State B, サイズ変数]
type     = Varadd
trigger1 = Numexplod(25015) >= 1
fvar(10) = -0.003
persistent = 1

[State B, 透過＆大きさ設定]
type     = ModifyExplod
trigger1 = numexplod(25015) > 0
id       = 25015
pos      = var(50), var(51)
scale    = (1.0-fvar(10)),(1.0-fvar(10))
trans    = addalpha
alpha    = var(13), 256
SprPriority    = -1
persistent = 1

;------------------------------------------------

[state B, ForceGage];フォースゲージ(青)
type           = Explod
Trigger1       = var(1) = 1
Trigger1       = NumExplod(25020) = 0
Trigger1       = (root,var(16)=0)
anim           = 25020
ID             = 25020
Pos            = var(50) , var(51)
postype        = left
facing         = var(1)
SprPriority    = -2
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ(青)
type           = Explod
Trigger1       = var(1) = -1
Trigger1       = NumExplod(25020) = 0
Trigger1       = (root,var(16)=0)
anim           = 25020
ID             = 25020
Pos            = var(50) , var(51)
postype        = right
facing         = var(1)
SprPriority    = -2
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[State B]
type     = RemoveExplod
Trigger1 = root,var(16) = 1
ID       = 25020
ignorehitpause = 1

[state B, ForceGage];フォースゲージ(赤)
type           = Explod
Trigger1       = var(1) = 1
Trigger1       = NumExplod(25022) = 0
Trigger1       = (root,var(16)=1)
anim           = 25022
ID             = 25022
Pos            = var(50) , var(51)
postype        = left
facing         = var(1)
SprPriority    = -2
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ(赤)
type           = Explod
Trigger1       = var(1) = -1
Trigger1       = NumExplod(25022) = 0
Trigger1       = (root,var(16)=1)
anim           = 25022
ID             = 25022
Pos            = var(50) , var(51)
postype        = right
facing         = var(1)
SprPriority    = -2
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[State B]
type     = RemoveExplod
Trigger1 = root,var(16) = 0
ID       = 25022
ignorehitpause = 1

;------------------------------------------------

[state B, ForceGage];フォースゲージ枠(バースト)
type           = Explod
Trigger1       = var(1) = 1
Trigger1	   = root,Var(16) = 1 ;バースト判定
Trigger1       = NumExplod(25010) = 0
anim           = 25010 + (var(1) = -1)
ID             = 25010
Pos            = var(50) , var(51)
postype        = left
facing         = var(1)
SprPriority    = -1
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ枠(バースト)
type           = Explod
Trigger1       = var(1) = -1
Trigger1	   = root,Var(16) = 1 ;バースト判定
Trigger1       = NumExplod(25010) = 0
anim           = 25010 + (var(1) = -1)
ID             = 25010
Pos            = var(50) , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
removetime     = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[State B]
type     = RemoveExplod
Trigger1 = root,var(16) = 0
ID       = 25010
ignorehitpause = 1

;---------------------------------------------------

[state B, ForceGage];フォースゲージ 白カウント (1の位)
type           = Explod
TriggerAll     = var(1) = 1
Trigger1       = 1;(root,var(16)=0)
anim           = 25050 + (floor(root,fvar(10)/100)%10) + (10*(root,var(16)=1))
ID             = 25050
Pos            = var(50)+9 , var(51)
postype        = left
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ 白カウント (10の位)
type           = Explod
TriggerAll     = var(1) = 1
Trigger1       = (root,fvar(10)>=1000)
anim           = 25050 + (floor(root,fvar(10)/1000)%10) + (10*(root,var(16)=1))
ID             = 25050
Pos            = var(50)+3 , var(51)
postype        = left
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ 白カウント (100の位)
type           = Explod
TriggerAll     = var(1) = 1
Trigger1       = (root,fvar(10)>=10000)
anim           = 25051 + (10*(root,var(16)=1))
ID             = 25050
Pos            = var(50)-3 , var(51)
postype        = left
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ 白カウント (%)
type           = Explod
TriggerAll     = var(1) = 1
Trigger1       = 1;(root,var(16)=0)
anim           = 25040 + (1*(root,var(16)=1))
ID             = 25040
Pos            = var(50)+15 , var(51)
postype        = left
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5



[state B, ForceGage];フォースゲージ 白カウント (1の位)
type           = Explod
TriggerAll     = var(1) = -1
Trigger1       = 1;(root,var(16)=0)
anim           = 25050 + (floor(root,fvar(10)/100)%10) + (10*(root,var(16)=1))
ID             = 25050
Pos            = var(50)-10 , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ 白カウント (10の位)
type           = Explod
TriggerAll     = var(1) = -1
Trigger1       = root,fvar(10) >= 1000   ;ゲージ量10%以上
anim           = 25050 + (floor(root,fvar(10)/1000)%10) + (10*(root,var(16)=1))
ID             = 25050
Pos            = var(50)-16 , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ 白カウント (100の位)
type           = Explod
TriggerAll     = var(1) = -1
Trigger1       = root,fvar(10) >= 10000   ;ゲージ量100%以上
anim           = 25051 + (10*(root,var(16)=1))
ID             = 25050
Pos            = var(50)-22 , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5

[state B, ForceGage];フォースゲージ 白カウント (%)
type           = Explod
TriggerAll     = var(1) = -1
Trigger1       = 1;(root,var(16)=0)
anim           = 25040 + (1*(root,var(16)=1))
ID             = 25040
Pos            = var(50)-4 , var(51)
postype        = right
facing         = 1
SprPriority    = -1
ownpal         = 1
bindtime       = -1
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1
scale          = 0.5, 0.5
