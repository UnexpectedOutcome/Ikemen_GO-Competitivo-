

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 勝利ポーズ / 真理亞&れみりあ&レミリア
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 10181]
Type        = S
Physics     = N
Anim        = Ifelse(IsHelper(180),10181,Ifelse(IsHelper(181),20020, 30020))
SprPriority = 2

[State 10181]
Type     = Nothitby
trigger1 = 1
value    = Sca

[State 10181]
Type     = SprPriority
Trigger1 = 1
Value    = -1 + (IsHelper(181)*3) + (IsHelper(182)*6)

;==============================
 真理亞パート
;==============================

[state 10181]
type       = Velset
TriggerAll = IsHelper(180)
trigger1   = !time
X          = 4

[State 10181, ボイス] 
Type       = PlaySnd
TriggerAll = IsHelper(180)
trigger1   = time = 30
value      = s180, 8
IgnoreHitPause = 1
Persistent = 0

[State 10181, 減速]
type     = Velset
TriggerAll = IsHelper(180)
trigger1 = RootDist X <= 35
X        = 0

[state 10181]
type     = ChangeAnim
TriggerAll = IsHelper(180)
Trigger1 = Anim != 10182
trigger1 = RootDist X <= 35
value    = 10182


;==============================
 れみりあパート
;==============================

[state 10181]
type       = Velset
TriggerAll = IsHelper(181)
trigger1   = !time
X          = 3.3

[State 10181, 減速]
type     = Velset
TriggerAll = IsHelper(181)
trigger1 = RootDist X <= 70
X        = 0

[state 10181]
type     = ChangeAnim
TriggerAll = IsHelper(181)
Trigger1 = Anim != 10183
trigger1 = RootDist X <= 70
value    = 10183

;==============================
 レミリアパート
;==============================

[state 10181]
type       = Velset
TriggerAll = IsHelper(182)
trigger1   = !time
X          = 3

[State 10181, 減速]
type     = Velset
TriggerAll = IsHelper(182)
trigger1 = RootDist X <= 40
X        = 0

[state 10181]
type     = ChangeAnim
TriggerAll = IsHelper(182)
Trigger1 = Anim != 10184
trigger1 = RootDist X <= 40
value    = 10184






;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] イントロ / 楼座
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 10190]
Type        = S
Physics     = N
Anim        = 100
SprPriority = 2

[State 10190]
Type = nothitby
trigger1 = 1
value = SCA

[state 10190]
type     = velset
trigger1 = !time
X        = 5

[state 10190, 減速]
type     = velset
trigger1 = RootDist X = [-20, 20]
X        = 0.92

[state 10190]
type     = velset
trigger1 = RootDist X = 0
X        = 0

;-------------------------------------------------[演出]

[State 10190, 効果音] ;走る音
type       = PlaySnd
TriggerAll = Anim = 100
trigger1   = time%17 = 0
value      = s40, 0
channel    = 0

[State 10190, ボイス] ;真理亞早く！
Type     = PlaySnd
Trigger1 = !time
value    = s190, 5
channel  = 5

[state 10190, エフェクト]
type     = Explod
TriggerAll = Anim = 100
trigger1 = Animelem=2,=1
trigger2 = Animelem=5
id       = 8100
anim     = 8100
scale    = 0.5, 0.5
pos      = 0,0
sprpriority = 1
ownpal = 1

;-------------------------------------------------[演出2]

[state 10190]
type     = ChangeAnim
Trigger1 = Anim != 101
trigger1 = RootDist X = [-20, 20]
value    = 101

[State 10190, 効果音]
type     = PlaySnd
trigger1 = (Anim = 101) && (Animelem = 1)
value    = s40, 1
channel  = 0

[State 10190]
Type     = DestroySelf
Trigger1 = (Anim = 101) && (AnimTime = 0)
Trigger2 = Root,StateNo != 191


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] イントロ / 真理亞
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 10191]
Type        = S
Physics     = N
Anim        = 10191
SprPriority = 9

[state 10191]
type     = velset
trigger1 = !time
X        = 5

[state 10191, 減速]
type     = velset
trigger1 = RootDist X = [-30, -28]
X        = 0

;-------------------------------------------------[演出]

[State 10191, 効果音] ;走る音
type     = PlaySnd
Trigger1 = Anim = 10191
trigger1 = time%17 = 0
value    = s40, 0
channel  = 0

[State 10191, ボイス] ;はうー
Type     = PlaySnd
Trigger1 = Anim = 10192
Trigger1 = Animelem = 2
value    = s190, 7
IgnoreHitPause = 1
Persistent = 0

[State 10191, ボイス] ;うー、分かった
Type     = PlaySnd
Trigger1 = Anim = 10192
Trigger1 = AnimelemTime(13) = 40
value    = s190, 8
IgnoreHitPause = 1
Persistent = 0

[state 10191, エフェクト]
type       = Explod
TriggerAll = Anim = 10192
trigger1   = Animelem=3
id         = 8045
anim       = 8045
scale      = 0.35, 0.35
pos        = 0,0
sprpriority = 1
ownpal = 1

[State 10191, 効果音] ;走る音
type       = PlaySnd
TriggerAll = Anim = 10191
trigger1   = Animelem=3
value      = s40, 3
channel    = 0

;-------------------------------------------------[演出2]

[state 10191]
type     = ChangeAnim
Trigger1 = Anim != 10192
trigger1 = RootDist X = 40
value    = 10192

[state 10191]
type     = velset
trigger1 = Anim = 10192
X        = 0

[state 10191]
type     = ChangeAnim
Trigger1 = Anim = 10192
trigger1 = Animtime = 0
value    = 10193

[state 10191]
type     = velset
trigger1 = Anim = 10193
X        = -7

[State 10191]
Type     = DestroySelf
Trigger1 = (Anim = 10193) && (backedgeDist < -30)
;Trigger2 = Root,StateNo != 191


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] イントロ / 山羊
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 10192]
Type        = S
Physics     = N
Anim        = 10195
SprPriority = -1

[state 10192]
type     = velset
trigger1 = !time
X        = 4.5

;-------------------------------------------------[演出]

[state 10192, エフェクト]
type     = Explod
trigger1 = Root,StateNo = 191
Trigger1 = Root,Animelem = 6
id       = 7015
anim     = 7015
scale    = 1, 1
pos      = 30, -100
sprpriority = 1
ownpal = 1

[state 10192, エフェクト]
type     = Explod
trigger1 = Root,StateNo = 191
Trigger1 = Root,Animelem = 6
id       = 8000
anim     = 8000
scale    = 1, 1
pos      = 0, 0
sprpriority = 1
ownpal = 1

[State 10191, 効果音]
type     = PlaySnd
trigger1 = Root,StateNo = 191
Trigger1 = Root,Animelem = 6
value    = s60, 3
channel  = 0
IgnoreHitPause = 1
Persistent = 0

;-------------------------------------------------[終了]

[State 10190]
Type     = DestroySelf
trigger1 = (Root,StateNo = 191) && (Root,Animelem = 6)
Trigger2 = Time > 300




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] アサルトタッチ / 楼座
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 10830]
Type        = S
Physics     = N
Anim        = 835
SprPriority = 9

[state 10830]
type     = velset
trigger1 = Animelem = 2
X        = -20
Y        = -4

;-------------------------------------------------[演出]

[State 10830, 効果音] ;走る音
type     = PlaySnd
trigger1 = Animelem = 2
value    = s40, 5

[State 10830]
Type     = DestroySelf
Trigger1 = backedgeDist < -30
Trigger2 = Root,StateNo != 830 && Root,StateNo != 880


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] アサルトタッチ / 楼座2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[statedef 10831]
Type        = S
Physics     = N
Anim        = 836
SprPriority = 9

[State 10831, 速度]
type     = Velset
trigger1 = !var(0)
X = (parentdist X) / 8
Y = 5

[State 10831, 速度]
type     = Velset
trigger1 = ParentDist X = 0
X = 0

[State 10831, 重力加速]
type     = Gravity
trigger1 = !var(0)

[State 10831, ステート変更];ノーマルタッチ
Type     = Varset
Trigger1 = (Vel Y > 0) && (Pos Y >= 0)
var(0)   = 1

;-------------------------------------------------[着地]

[State 10831, 速度]
type     = Velset
trigger1 = var(0) = 1
X = 0
Y = 0

[State 10831, 速度]
type     = Bindtoparent
trigger1 = var(0) = 1
Pos      = 0, 0

[State 10831, アニメ変更]
type     = ChangeAnim
trigger1 = Var(0) = 1
value    = Anim
elem     = 2

[State 10831, ステート変更];ノーマルタッチ
Type     = Varset
Trigger1 = var(0) = 1
var(0)   = 2

[State 10831, 効果音] ;走る音
type     = PlaySnd
trigger1 = Animelem = 2
value    = s40, 1

[state 10831, エフェクト]
type     = Explod
trigger1 = Animelem = 2
id       = 8045
anim     = 8045
scale    = 0.5, 0.5
pos      = 0,0
sprpriority = 1
ownpal = 1

;-------------------------------------------------[演出]

[State 10831]
Type     = DestroySelf
Trigger1 = Animtime = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] メタ必殺技 / 暗転演出
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 12600]
Physics     = N
Anim        = 12600
SprPriority = -1

[state a]
type = AssertSpecial
trigger1 = 1
flag  = noshadow
flag2 = invisible

;----------------------------------------------------

[State a, 背景用]
type     = VarSet
Trigger1 = !time
var(1)   = 0

[State a, 背景用]
type     = VarAdd
Trigger1 = Animelemtime(2) = [0, 25]
var(1)   = 9

[State a];背景色
type      = BGPalFX
trigger1  = 1
time      = 1
mul       = 255-var(1),255-var(1),255-var(1)

;-----------------------------------------------------[終了]

[State 12600]
type     = Changestate
trigger1 = (root,StateNo=2600)&&(root,Animelemtime(87)>=0)
value    = 12601

[state 12600, 終了]
type     = DestroySelf
trigger1 = (root,stateno!=2600)
trigger2 = root,movetype=H


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 超必殺技背景 / 消滅
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 12601]
type     = S
movetype = I
physics  = N
sprpriority = 9

[state a]
type = AssertSpecial
trigger1 = 1
flag  = noshadow
flag2 = invisible

;----------------------------[変数]

[State a, 背景用]
type     = null;VarAdd
Trigger1 = 1
var(1)   = -15

[State a];背景色
type      = null;BGPalFX
trigger1  = 1
time      = 1
mul       = 255-var(1),255-var(1),255-var(1)

[State 9985, フェードアウト処理]
Type     = null;BGPalFx
Trigger1 = 1
Time     = 1
Mul      = var(1),var(1),var(1)
;add      = -(var(2)),-(var(2)),-(var(2))
color    = 256

[State a]
type     = palfx
trigger1 = time = 0
time     = 20
add      = 255,255,255

[state 12601, 終了]
type     = DestroySelf
trigger1 = (root,StateNo=2600)&&(root,Time=1)
trigger2 = (root,StateNo=2000)&&(root,Time=1)
trigger3 = (root,StateNo=2050)&&(root,Time=1)
trigger4 = (root,StateNo=2100)&&(root,Time=1)
trigger5 = (root,StateNo=2150)&&(root,Time=1)
trigger6 = (root,StateNo=2200)&&(root,Time=1)
trigger7 = (root,StateNo=2300)&&(root,Time=1)
trigger8 = (root,StateNo=2400)&&(root,Time=1)
trigger9 = (root,StateNo=2500)&&(root,Time=1)
trigger10= Time > 20









;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Aa
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7000]
Physics     = N
Anim        = 7005
SprPriority = 9

[State 7000, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7000]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7000]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75+(time*0.05) , 0.75+(time*0.05)

[State 7000]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[state 7000, ヘルパー]
type       = Helper
trigger1   = time = 5
id         = 0
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7001
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[State 7000]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Aa-2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7001]
Physics     = N
Anim        = 7010
SprPriority = 9

[State 7000]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------

[State 7001]
Type     = VarAdd
Trigger1 = Time > 4
var(2)   = 30

[State 7001, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
alpha    = 256-var(2), 256

;-------------------------------------------------

[State 7001]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7001]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1+(time*0.1) , 1+(time*0.1)

[State 7001]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = Var(2) >= 256


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
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7005]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1+(time*0.075) , 1+(time*0.01)

[State 7005]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[state 7005, ヘルパー]
type       = Helper
trigger1   = time = 1
id         = 0
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7006
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[State 7005]
Type     = DestroySelf
Trigger1 = animTime =0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Ab-2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7006]
Physics     = N
Anim        = 7000
SprPriority = 9

[State 7006]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------

[State 7006]
Type     = VarAdd
Trigger1 = Time > 14
var(2)   = 30

[State 7006, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
alpha    = 256-var(2), 256

;-------------------------------------------------

[State 7006]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7006]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.75+(time*0.05) , 0.75+(time*0.08)

[State 7006]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = Var(2) >= 256



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Ac
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7010]
Physics     = N
Anim        = 7000
SprPriority = 9

[State 7010, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7010]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7010]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1+(time*0.08) , 1+(time*0.08)

[State 7010]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[state 7010, ヘルパー]
type       = Helper
trigger1   = time = 1
id         = 0
name       = "Line Efect"
pos        = 0, 0
postype    = p1
stateno    = 7011
helpertype = normal
keyctrl    = 0 
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[State 7010]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / Ac-2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7011]
Physics     = N
Anim        = 7005
SprPriority = 9

[State 7011]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------

[State 7011]
Type     = VarAdd
Trigger1 = Time > 14
var(2)   = 30

[State 7011, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
alpha    = 256-var(2), 256

;-------------------------------------------------

[State 7011]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7011]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1+(time*0.1) , 1+(time*0.01)

[State 7011]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = Var(2) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / D
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7015]
Physics     = N
Anim        = 7015
SprPriority = 9

[State 7015, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7015]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7015]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1 , 1

[State 7015]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7015]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト(必殺技)
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
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7020]
Type     = AngleDraw
Trigger1 = 1
Scale    = 2, 2

[State 7020]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[state 7020, ヘルパー]  ;リング
type       = Helper
trigger1   = time = 0
id         = 0
name       = "Ring Efect"
pos        = 0, 0
postype    = p1
stateno    = 7021
helpertype = normal
keyctrl    = 0
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

[State 7020]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / リング
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7021]
Physics     = N
Anim        = 7021
SprPriority = 1

[State 7021]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;--------------------------------------[透過処理]

[State 7021, 変数]
Type     = Varadd
Trigger1 = 1
var(1)  = 16

[State 7021, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 180-var(1),256

;--------------------------------------[演出]

[State 7021, 設定反映]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1 +Time*0.3, 1 + Time*0.3

[State 7021, ヘルパー消滅]
Type     = DestroySelf
Trigger1 = time >= 15


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / 専用
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7025]
Physics     = N
Anim        = 7025
SprPriority = 9

[State 7025, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7025]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7025]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.25, 1.25

[State 7025]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7025]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / 血飛沫
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7026]
Physics     = N
Anim        = 7026
SprPriority = 11

[State 7026]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------

[State 7026]
Type     = VarAdd
Trigger1 = Time > 14
var(2)   = 32

[State 7026, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
alpha    = 256-var(2), 256

;-------------------------------------------------

[State 7026]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7026]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.25+(time*0.1) , 1.25+(time*0.1)

[State 7026]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = Var(2) >= 256

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / 専用
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7027]
Physics     = N
Anim        = 7027
SprPriority = 9

[State 7027, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7027]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7027]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1, 1

[State 7027]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7027]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / 専用
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7030]
Physics     = N
Anim        = 7031
SprPriority = 7

;-------------------------------------------------

[State 7030]
Type     = VarAdd
Trigger1 = Time > 10
var(2)   = 25

[State 7030, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Addalpha
alpha    = 256-var(2), 256

[State 7030, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7030]
type     = AngleSet
trigger1 = time=0
value    = 0 + (Random%360)

[State 7030]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1, 1

[State 7030]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7030]
Type     = DestroySelf
Trigger1 = animTime =0
Trigger2 = Var(2) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ヒットエフェクト / フライングネックカット
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7035]
Physics     = N
Anim        = 7035
SprPriority = 9

[State 7035, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7035]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1, 1

[State 7035]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7035]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ガードエフェクト / ガード
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

[State 7100]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.5 , 1.5

[State 7100]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ガードエフェクト / ガード2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 7105]
Physics     = N
Anim        = 7105
SprPriority = 9

[State 7105]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 7105]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 7105]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.5 , 1.5

[State 7105]
Type     = DestroySelf
Trigger1 = animTime =0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 投げ抜けエフェクト1
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 10815]
Physics     = N
Anim        = 10815
SprPriority = 9

[State 10815]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 10815]
type     = VarAdd
trigger1 = 1
var(2)   = 11

[State 10815, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 256-var(2), 256

;-----------------------------------------------

[State 10815]
type     = AngleAdd
trigger1 = 1
value    = 2

[State 10815]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.5+(time*0.1), 1.5+(time*0.1)

;----------------------------------------------

[state 10815, ヘルパー]  ;リング
type       = Helper
trigger1   = time = 0
id         = 0
name       = "Ring Efect"
pos        = 0, 0
postype    = p1
stateno    = 7021
helpertype = normal
keyctrl    = 0
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

;-----------------------------------------------

[State 7020]
Type     = DestroySelf
Trigger1 = Var(2) >= 256
Trigger2 = Time >= 30


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 投げ抜けエフェクト1
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 10816]
Physics     = N
Anim        = 10816
SprPriority = 9

[State 10816]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-----------------------------------------------

[State 10816]
type     = AngleAdd
trigger1 = 1
value    = 2

[State 10816]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.5+(time*0.1), 1.5+(time*0.1)

[State 10816]
type     = VarAdd
trigger1 = 1
var(2)   = 11

[State 10816, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 256-var(2), 256

;----------------------------------------------

[state 10816, ヘルパー]  ;リング
type       = Helper
trigger1   = time = 0
id         = 0
name       = "Ring Efect"
pos        = 0, 0
postype    = p1
stateno    = 7021
helpertype = normal
keyctrl    = 0
ownpal     = 0
supermovetime  = 999999
pausemovetime  = 999999
persistent     = 0
ignorehitpause = 1

;-----------------------------------------------

[State a]
Type     = DestroySelf
Trigger1 = Var(2) >= 256
Trigger2 = Time >= 30



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
Y        = 0

;-------------------------------------------------[角度サイズ設定]

[State 8040]
type     = AngleSet
trigger1 = time=0
Trigger1 = ishelper(8041) || ishelper(8042)
value    = ifelse(ishelper(8041), -25, ifelse(ishelper(8042), 25, 0))

[State 8040, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Scale    = 2 , 2

;-------------------------------------------------[透過設定]

[State 8040, 透過]
Type     = Trans
Trigger1 = 1
Trans    = Add

[State 8040, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ハイジャンプエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8041]
Physics     = N
Anim        = 8040
SprPriority = 5

[State 8041]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8041, 接地]
type     = PosSet
trigger1 = 1
Y        = 0

;-------------------------------------------------[角度サイズ設定]

[State 8041];投げ
type     = AngleSet
trigger1 = time=0
Trigger1 = ishelper(810)
value    = -25

[State 8041, サイズ変更]
Type     = AngleDraw
Trigger1 = ishelper(810)
Scale    = 1.5 , 1.5

[State 8041]
type     = AngleSet
trigger1 = time=0
Trigger1 = ishelper(8041) || ishelper(8042)
value    = ifelse(ishelper(8041), -25, ifelse(ishelper(8042), 25, 0))

[State 8041, サイズ変更]
Type     = AngleDraw
Trigger1 = ishelper(8041) || ishelper(8042)
Scale    = 2 , 2

;-------------------------------------------------[透過設定]

[State 8041, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
alpha    = 200, 256

[state 8041, エフェクト]
type     = Explod
Trigger1 = !isHelper(810)
trigger1 = !Time
anim     = 8041 + ifelse(ishelper(8041), 1, ifelse(ishelper(8042), 2, 0))
pos      = 0,0
Scale    = 0.5, 0.5
id       = 8040
bindtime = -1
sprpriority = 3
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 8041, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [HELPER] ジャンプ 煙エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 8042]
type    = A
physics = N
anim    = 8004
ctrl    = 0
sprpriority = 9

[State a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

;-------------------------------------------------[速度設定]

[State 8042]
type     = VelSet
trigger1 = IsHelper(8042) || IsHelper(8043)
X        = 0.5
Y        = -1

;-------------------------------------------------[サイズ設定]

[State 8042, サイズ変更]
type     = AngleDraw
trigger1 = IsHelper(8042) || IsHelper(8043)
scale    = 3, 3

[State 8042, サイズ変更]
type     = AngleDraw
trigger1 = IsHelper(8045)
scale    = 2.5, 2.5

;-------------------------------------------------[透過設定]

[State 8042, 透過処理]
Type     = Trans
Trigger1 = IsHelper(8042) || IsHelper(8045)
trans    = Add

[State 8042, 透過処理]
Type     = Trans
Trigger1 = IsHelper(8043)
trans    = Sub

;-------------------------------------------------[終了]

[State 8043, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [HELPER] ハイジャンプ 煙エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 8043]
type    = A
physics = N
anim    = 8004
ctrl    = 0
sprpriority = 9

[State a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[State a]
type     = sprpriority
trigger1 = IsHelper(8042)
value    = 8

[State a]
type     = sprpriority
trigger1 = IsHelper(804)
value    = 7

;-------------------------------------------------[速度設定]

[State 8043]
type     = VelSet
trigger1 = 1
X        = 0.5
Y        = -1.5

;-------------------------------------------------[サイズ設定]

[State 8043, サイズ変更]
type     = AngleDraw
trigger1 = IsHelper(8042) || IsHelper(8043)
scale    = 4, 4

;-------------------------------------------------[透過設定]

[State 8043, 透過処理]
Type     = Trans
Trigger1 = IsHelper(8042)
trans    = Add

[State 8043, 透過処理]
Type     = Trans
Trigger1 = IsHelper(8043)
trans    = Sub

;-------------------------------------------------[終了]

[State 8043, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 着地エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8045]
Physics     = N
Anim        = 8045
SprPriority = 7

[State 8045]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------[サイズ設定]

[State 8045, サイズ変更]
type     = AngleDraw
trigger1 = 1
scale    = 1.5+(0.05*time), 1.5+(0.05*time)

;-------------------------------------------------[透過設定]

[State 8045]
type     = VarSet
trigger1 = Time = 1
var(2)   = 50

[State 8045]
type     = VarSet
trigger1 = Time = 2
var(2)   = 100

[State 8045]
type     = VarSet
trigger1 = Time = 3
var(2)   = 256

[State 8045, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = AddAlpha
Alpha    = var(2), 256

;-------------------------------------------------[終了]

[State 8045, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 壁バウンドエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8051]
Physics     = N
Anim        = 8050
SprPriority = 7

[State 8051]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------[サイズ設定]

[State 8051, サイズ変更]
type     = AngleDraw
trigger1 = 1
scale    = 1, 1
value    = 90

;-------------------------------------------------[透過設定]

[State 8051, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = Add

;-------------------------------------------------[終了]

[State 8051, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ダッシュエフェクト A
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8100]
Physics     = N
Anim        = 8100
SprPriority = 7

[State 8100]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------[サイズ設定]

[State 8100, サイズ変更]
type     = AngleDraw
trigger1 = 1
scale    = 2+(0.05*time),2+(0.05*time)

;-------------------------------------------------[透過設定]

[State 8100, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = Add

;-------------------------------------------------[終了]

[State 8100, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ダッシュエフェクト B
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8105]
Physics     = N
Anim        = 8105
SprPriority = 7

[State 8105]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------[サイズ設定]

[State 8105, サイズ変更]
type     = AngleDraw
trigger1 = 1
scale    = 1+(0.06*time),1+(0.06*time)

;-------------------------------------------------[透過設定]

[State 8005]
type     = VarAdd
trigger1 = Time > 30
var(2)   = 15

[State 8105, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = AddAlpha
Alpha    = 256-var(2), 256

;-------------------------------------------------[終了]

[State 8105, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ダッシュエフェクト C
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8106]
Physics     = N
Anim        = 8105
SprPriority = 7

[State 8106]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------[サイズ設定]

[State 8106]
type     = VelSet
trigger1 = 1
X        = 1.5

[State 8106, サイズ変更]
type     = AngleDraw
trigger1 = 1
scale    = 1+(0.03*time),1+(0.06*time)

;-------------------------------------------------[透過設定]

[State 8006]
type     = VarAdd
trigger1 = Time > 30
var(2)   = 18

[State 8106, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = AddAlpha
Alpha    = 256-var(2), 256

;-------------------------------------------------[終了]

[State 8105, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] ダッシュエフェクト D
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8107]
Physics     = N
Anim        = 8107
SprPriority = 7

[State 8107]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;-------------------------------------------------[サイズ設定]

[State 8107]
type     = VelSet
trigger1 = 1
X        = 0.25

[State 8107, サイズ変更]
type     = AngleDraw
trigger1 = 1
scale    = 1+(0.03*time),1+(0.06*time)

;-------------------------------------------------[透過設定]

[State 8007]
type     = VarAdd
trigger1 = Time > 30
var(2)   = 18

[State 8107, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = AddAlpha
Alpha    = 256-var(2), 256

;-------------------------------------------------[終了]

[State 8107, ヘルパー消滅]
type     = DestroySelf
trigger1 = Animtime = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [HELPER] 煙エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 8125]
type    = A
physics = N
anim    = 8126
ctrl    = 0
sprpriority = 4

[State a]
type     = AssertSpecial
trigger1 = 1
flag     = noshadow

[state 8125, 変数]
type     = VarRandom
trigger1 = !time
v        = 0
value    = 0, 360

[State 8125, 角度変更]
type     = AngleSet
trigger1 = !time
value    = var(0)

;-------------------------------------------------[速度設定]

[State 8125, 速度]
type     = VelSet
trigger1 = !time
trigger1 = IsHelper(8125) || IsHelper(8126)
X        = Ifelse(Ishelper(8125),3, -3)

[State 8125, 速度]
type     = VelSet
trigger1 = !time
trigger1 = IsHelper(8100) || IsHelper(8101)
X        = Ifelse(Ishelper(8100),-2, 2)

[State 8125, 速度]
type     = Velmul
trigger1 = time < 10
X        =  0.9

;-------------------------------------------------[サイズ設定]

[State 8125, サイズ変更];墓石から
type     = AngleDraw
trigger1 = IsHelper(8125) || IsHelper(8126)
scale    = 1.5+(Time*0.05), 1.5+(Time*0.05)

[State 8125, サイズ変更];知能と脚から
type     = AngleDraw
trigger1 = IsHelper(8100) || IsHelper(8101)
scale    = 0.75+(Time*0.02), 0.75+(Time*0.02)

;-------------------------------------------------[透過設定]

[State 8125, 透過処理]
Type     = Trans
Trigger1 = 1
trans    = addalpha
Alpha    = 256-var(1),256

[state 8125, 変数]
type     = VarAdd
trigger1 = time > 10
var(1)   = 6

;-------------------------------------------------[終了]

[State 8125, ヘルパー消滅]
type = DestroySelf
trigger1 = time >= 40
trigger2 = Var(1) >= 256



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


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [Helper] 地震エフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8600]
Physics     = N
Anim        = 8600
SprPriority = -1

[State 8600]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8600, 接地]
type     = PosSet
trigger1 = 1
y = 0

[State 8600, サイズ変更]
Type     = AngleDraw
Trigger1 = 1
Scale    = 2 + (time*0.05) , 0.25

;-------------------------------------------------[透過設定]
[State 8600, 透過]
Type     = Trans
Trigger1 = 1
Trans    = AddAlpha
Alpha    = 256-Var(2),256

[State 8600, 透過用変数]
type     = Varset
trigger1 = !Time
V = 2
Value = 0

[State 8600, 透過用変数]
type     = VarAdd
trigger1 = 1
var(2)   = 25

[State 8600, ヘルパー終了]
Type     = DestroySelf
Trigger1 = Var(2) >= 255


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] ガードキャンセル
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 8700]
Physics     = N
Anim        = 8700
SprPriority = 4

[State 8700]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

[State 8700]
type     = bindtoroot
trigger1 = !time
Pos      = 0, 0

;---------------------------------------------------[透過処理]

[State 8700]
type     = trans
trigger1 = 1
trans    = add

[State 8700, ヘルパー消滅]
Type     = DestroySelf
trigger1 = Animtime = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] スペル発動時リングエフェクト
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 8800]
Physics     = N
Anim        = 8800
SprPriority = 4

[State 8800]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow

;---------------------------------------------------
[State 8800]
type     = null;Angleadd
trigger1 = 1
value    = -10

[State 8800]
type     = varadd
trigger1 = time <= 20
var(2)   = 1

[State 8800, Ahgledrow2]
Type     = AngleDraw
Trigger1 = 1
Scale    = 1.75+ var(2) * 0.06 , 1.75+ var(2) * 0.06

;---------------------------------------------------[透過処理]

[State 8800]
type     = trans
trigger1 = 1
trans    = add

[State 8800, ヘルパー消滅]
Type     = DestroySelf
trigger1 = Animtime = 0






;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] 排莢
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 11100]
Physics     = N
Anim        = 11100
SprPriority = 9

[State a]
type     = Velset
Trigger1 = !time
X = -1
Y = -2

[State a]
Type     = Veladd
Trigger1 = !var(0)
Y        = 0.4

[State 7110]
Type     = AngleDraw
Trigger1 = 1
Scale    = 0.25 ,0.25

;-------------------------------[着地後]

[State a]
type     = Varset
Trigger1 = (Vel Y > 0) && (Pos Y > 0)
var(0)   = 1

[State a]
Type     = VelSet
Trigger1 = (Vel Y > 0) && (Pos Y > 0)
Trigger2 = var(0)
Y = 0

[State a]
Type     = PlaySnd
Trigger1 = var(0)
value    = s50, 2
Persistent    = 0

[State a]
Type     = DestroySelf
Trigger1 = var(0)




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (ウルフハンティング)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9800]
Type     = S
Movetype = I
Physics  = N
Anim     = 9800
SprPriority = -1

[State 9800, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

[State 9800, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA,AA,AT,AP

;-------------------------------------------------[透過設定]

[state 9800]
type     = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256-var(0), var(0)

[State 9800, VarSet]
Type     = VarSet
Trigger1 = !Time
var(0)   = 0

[State 9800, Varadd]
Type     = VarAdd
Trigger1 = Time > 40
var(0)   = 20

;-------------------------------------------------[速度設定]

[State 9800] ;初速度
Type     = VelSet
Trigger1 = !Time
X = 20

[State 9800] ;減速
Type     = VelAdd
Trigger1 = Vel X > 0
X = -0.7

[State 9800];逆行防止
type     = Velset
Trigger1 = vel X < 0
X = 0

;-------------------------------------------------[サイズ設定]

[State 9800]
type     = AngleDraw
trigger1 = 1
scale    = 1.0,1.0

[State 9800, DestroySelf]
Type     = DestroySelf
Trigger1 = Time > 50
Trigger2 = Var(0) >= 256



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (ゴールデンドリーム)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9810]
Type     = S
Movetype = I
Physics  = N
Anim     = 9810
SprPriority = -1

[State 9810, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

[State 9810, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA,AA,AT,AP

;-------------------------------------------------[透過設定]

[state 9810]
type     = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256-var(0), var(0)

[State 9810, VarSet]
Type     = VarSet
Trigger1 = !Time
var(0)   = 0

[State 9810, Varadd]
Type     = VarAdd
Trigger1 = Time > 40
var(0)   = 20

;-------------------------------------------------[速度設定]

[State 9810] ;初速度
Type     = VelSet
Trigger1 = !Time
X = 20

[State 9810] ;減速
Type     = VelAdd
Trigger1 = Vel X > 0
X = -0.7

[State 9810];逆行防止
type     = Velset
Trigger1 = vel X < 0
X = 0

;-------------------------------------------------[サイズ設定]

[State 9810]
type     = AngleDraw
trigger1 = 1
scale    = 1.0,1.0

[State 9810, DestroySelf]
Type     = DestroySelf
Trigger1 = Time > 50
Trigger2 = Var(0) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (真理亞の込めてくれた弾丸)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9820]
Type     = S
Movetype = I
Physics  = N
Anim     = 9820
SprPriority = -1

[State 9820, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

[State 9820, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA,AA,AT,AP

;-------------------------------------------------[透過設定]

[state 9820]
type     = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256-var(0), var(0)

[State 9820, VarSet]
Type     = VarSet
Trigger1 = !Time
var(0)   = 0

[State 9820, Varadd]
Type     = VarAdd
Trigger1 = Time > 40
var(0)   = 20

;-------------------------------------------------[速度設定]

[State 9820] ;初速度
Type     = VelSet
Trigger1 = !Time
X = 20

[State 9820] ;減速
Type     = VelAdd
Trigger1 = Vel X > 0
X = -0.7

[State 9820];逆行防止
type     = Velset
Trigger1 = vel X < 0
X = 0

;-------------------------------------------------[サイズ設定]

[State 9820]
type     = AngleDraw
trigger1 = 1
scale    = 1.0,1.0

[State 9820, DestroySelf]
Type     = DestroySelf
Trigger1 = Time > 50
Trigger2 = Var(0) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (真理亞)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9830]
Type     = S
Movetype = I
Physics  = N
Anim     = 9830
SprPriority = -1

[State 9830, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

[State 9830, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA,AA,AT,AP

;-------------------------------------------------[透過設定]

[state 9830]
type     = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256-var(0), var(0)

[State 9830, VarSet]
Type     = VarSet
Trigger1 = !Time
var(0)   = 0

[State 9830, Varadd]
Type     = VarAdd
Trigger1 = Time > 40
var(0)   = 20

;-------------------------------------------------[速度設定]

[State 9830] ;初速度
Type     = VelSet
Trigger1 = !Time
X = 20

[State 9830] ;減速
Type     = VelAdd
Trigger1 = Vel X > 0
X = -0.7

[State 9830];逆行防止
type     = Velset
Trigger1 = vel X < 0
X = 0

;-------------------------------------------------[サイズ設定]

[State 9830]
type     = AngleDraw
trigger1 = 1
scale    = 1.0,1.0

[State 9830, DestroySelf]
Type     = DestroySelf
Trigger1 = Time > 50
Trigger2 = Var(0) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (ゴールデンドリーム)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9850]
Type     = S
Movetype = I
Physics  = N
Anim     = 9850
SprPriority = -1

[State 9850, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

[State 9850, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA,AA,AT,AP

;-------------------------------------------------[透過設定]

[state 9850]
type     = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256-var(0), var(0)

[State 9850, VarSet]
Type     = VarSet
Trigger1 = !Time
var(0)   = 0

[State 9850, Varadd]
Type     = VarAdd
Trigger1 = Time > 40
var(0)   = 20

;-------------------------------------------------[速度設定]

[State 9850] ;初速度
Type     = VelSet
Trigger1 = !Time
X = 20

[State 9850] ;減速
Type     = VelAdd
Trigger1 = Vel X > 0
X = -0.7

[State 9850];逆行防止
type     = Velset
Trigger1 = vel X < 0
X = 0

;-------------------------------------------------[サイズ設定]

[State 9850]
type     = AngleDraw
trigger1 = 1
scale    = 1.0,1.0

[State 9850, DestroySelf]
Type     = DestroySelf
Trigger1 = Time > 50
Trigger2 = Var(0) >= 256


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] カットイン表示 (メタ宣言)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 9860]
Type     = S
Movetype = I
Physics  = N
Anim     = 9860
SprPriority = -1

[State 9860, AssertSpecial]
Type     = AssertSpecial
Trigger1 = 1
Flag     = NoShadow
Flag2    = NoFG

[State 9860, 無敵]
type     = nothitby
trigger1 = 1
value    = SCA,AA,AT,AP

[State 9680] ;地面に設置させるステート
type     = PosSet
trigger1 = Time = 0
y        = 130-ScreenPos Y

;-------------------------------------------------[透過設定]

[state 9830]
type     = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256-var(0), var(0)

[State 9830, VarSet]
Type     = VarSet
Trigger1 = !Time
var(0)   = 0

[State 9830, Varadd]
Type     = VarAdd
Trigger1 = Time > 42
var(0)   = 12

;-------------------------------------------------[速度設定]

[State 9860, スピード]
type = VelSet
trigger1 = time <= 15
x = 16

[State 9860, スピード]
type = VelSet
trigger1 = time = 16
x = 12.5

[State 9860, スピード]
type = VelSet
trigger1 = time = 17
x = 10

[State 9860, スピード]
type = VelSet
trigger1 = time = 18
x = 7.5

[State 9860, スピード]
type = VelSet
trigger1 = time = 19
x = 5

[State 9860, スピード]
type = VelSet
trigger1 = time = 20
x = 2.5

[State 9860, スピード]
type = VelSet
trigger1 = time = 21
x = 0

;-------------------------------------------------[サイズ設定]

[State 9860]
type     = AngleDraw
trigger1 = 1
scale    = 0.95, 0.95

[State 9860, DestroySelf]
Type     = DestroySelf
Trigger1 = Time > 64
Trigger2 = Var(0) >= 256



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[helper] タッチゲージ&先行入力  ヘルパー内容
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[statedef 6000, 霊力ゲージヘルパー]
type	= A
movetype= I
physics	= N
anim	= 9999 ; 非表示アニメ

[State 6000]
type     = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 6000]
type     = Varset
trigger1 = !Time
var(0)   = IfElse(TeamSide = 1, 1, -1)
ignorehitpause = 1

;--------------------------------------------------[ゲージ枠表示]

[state 6000, 霊力ゲージ表示]  ;霊力ゲージ枠
type           = Explod
Trigger1       = NumExplod(6000) = 0
anim           = 6000
ID             = 6000
Pos            = 160-(160*var(0)), 225
postype        = left
ownpal         = 1
bindtime       = -1
removetime     = -1
facing         = var(0)
scale          = 0.5, 0.5
ignorehitpause = 1
pausemovetime  = 99999
supermovetime  = 99999
SprPriority    = 7

[state 6000, 霊力ゲージ表示]  ;霊力ゲージ枠
type           = Explod
Trigger1       = NumExplod(6001) = 0
anim           = 6001
ID             = 6001
Pos            = 160-(160*var(0)), 225
postype        = left
ownpal         = 1
bindtime       = -1
removetime     = -1
facing         = var(0)
scale          = 0.5, 0.5
ignorehitpause = 1
pausemovetime  = 99999
supermovetime  = 99999
SprPriority    = 7

;--------------------------------------------------[ゲージ表示]

[state 6000, 1Pガードゲージ]  ;れみりあゲージ
type           = Explod
Trigger1       = root,fvar(10) = 100
Trigger1       = NumExplod(6010) = 0
anim           = 6002
ID             = 6010
Pos            = 160-(138*var(0)), 225
postype        = left
ownpal         = 1
facing         = var(0)
bindtime       = -1
removetime     = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 9
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 6000, 1Pガードゲージ]  ;レミリアゲージ
type           = Explod
Trigger1       = root,fvar(13) = 100
Trigger1       = NumExplod(6011) = 0
anim           = 6002
ID             = 6011
Pos            = 160-(86*var(0)), 225
postype        = left
ownpal         = 1
facing         = var(0)
bindtime       = -1
removetime     = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 9
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 6000, 1Pガードゲージ]  ;れみりあゲージ(回復中)
type           = Explod
Trigger1       = NumExplod(6015) = 0
anim           = 6003
ID             = 6015
Pos            = 160-(138*var(0)), 225
postype        = left
ownpal         = 1
facing         = var(0)
bindtime       = -1
removetime     = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 8
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 6000, 1Pガードゲージ]  ;レミリアゲージ
type           = Explod
Trigger1       = NumExplod(6016) = 0
anim           = 6003
ID             = 6016
Pos            = 160-(86*var(0)), 225
postype        = left
ownpal         = 1
facing         = var(0)
bindtime       = -1
removetime     = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 8
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 6000, 表示]  ;使用不能
type           = Explod
Trigger1       = NumExplod(6004) = 0
Trigger1       = Root,fvar(10) < 100
anim           = 6004
ID             = 6004
Pos            = 160-(160*var(0)), 225
postype        = left
ownpal         = 1
bindtime       = -1
removetime     = -1
facing         = var(0)
scale          = 0.5, 0.5
ignorehitpause = 1
pausemovetime  = 99999
supermovetime  = 99999
SprPriority    = 9

[state 6000, 表示]  ;使用不能
type           = Explod
Trigger1       = NumExplod(6005) = 0
Trigger1       = Root,fvar(13) < 100
anim           = 6005
ID             = 6005
Pos            = 160-(160*var(0)), 225
postype        = left
ownpal         = 1
bindtime       = -1
removetime     = -1
facing         = var(0)
scale          = 0.5, 0.5
ignorehitpause = 1
pausemovetime  = 99999
supermovetime  = 99999
SprPriority    = 9


[state 6000, ゲージ増減]
type     = RemoveExplod
trigger1 = root,fvar(10) < 100
ID       = 6010
ignorehitpause = 1

[state 6000, ガードゲージ増減]
type     = RemoveExplod
trigger1 = root,fvar(13) < 100
ID       = 6011
ignorehitpause = 1

[state 6000, エフェクト消去]
type     = RemoveExplod
trigger1 = root,fvar(10) >= 100
ID       = 6004
ignorehitpause = 1

[state 6000, ガードゲージ増減]
type     = RemoveExplod
trigger1 = root,fvar(13) >= 100
ID       = 6005
ignorehitpause = 1

[state 6000, ガードゲージ増減]
type     = ModifyExplod
trigger1 = 1
ID       = 6015
scale    = ((Root,Fvar(10))/100)*0.5, 0.5
ignorehitpause = 1

[state 6000, ガードゲージ増減]
type     = ModifyExplod
trigger1 = 1
ID       = 6016
scale    = ((Root,Fvar(13))/100)*0.5, 0.5
ignorehitpause = 1



;=========================================================================
;     メタゲージ　管理
;=========================================================================

;--------------------------------------------------[メタゲージ枠表示]

[state 20000, 1Pメタゲージ表示]  ;1P側
type           = explod
Trigger1       = TeamSide = 1
Trigger1       = NumExplod(6100) = 0
anim           = 6100
ID             = 6100
Pos            = 150, 45
postype        = left
ownpal         = 1
bindtime       = -1
removetime     = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 9
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 20000, 2Pメタゲージ表示]  ;2P側
type           = explod
Trigger1       = TeamSide = 2
Trigger1       = NumExplod(6101) = 0
anim           = 6100
ID             = 6101
Pos            = -150, 45
postype        = right
ownpal         = 1
bindtime       = -1
removetime     = -1
facing         = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 9
PauseMoveTime  = 99999
SuperMoveTime  = 99999

;-----------------------------------------------------[メタゲージ制御]

[state 20000, メタゲージ1P-通常]
Type           = Explod
Trigger1       = TeamSide = 1
Trigger1       = !(root,var(19))        ;メタ展開中でない
Anim           = 6600 + floor( (root,fvar(17))/680*36)
ID             = 6600
Pos            = 150, 45
PosType        = Left
SprPriority    = 10
Facing         = 1
BindTime       = -1
OwnPal         = 1
Scale          = 0.5, 0.5
ignorehitpause = 1
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 20000, メタゲージ1P-メタ展開]
Type           = Explod
Trigger1       = TeamSide = 1
Trigger1       = root,var(19)        ;メタ展開中
Anim           = 6500 + floor( (root,fvar(17))/680*35)
ID             = 6500
Pos            = 150, 45
PosType        = Left
SprPriority    = 10
Facing         = 1
BindTime       = -1
OwnPal         = 1
Scale          = 0.5, 0.5
ignorehitpause = 1
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 20000, メタゲージ2P-通常]
Type           = Explod
Trigger1       = TeamSide = 2
Trigger1       = !(root,var(19))        ;メタ展開中でない
Anim           = 6600 + floor( (root,fvar(17))/680*36)
ID             = 6600
Pos            = -150, 45
PosType        = right
SprPriority    = 10
Facing         = -1
BindTime       = -1
OwnPal         = 1
Scale          = 0.5, 0.5
ignorehitpause = 1
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 20000, メタゲージ1P-メタ展開]
Type           = Explod
Trigger1       = TeamSide = 2
Trigger1       = root,var(19)        ;メタ展開中
Anim           = 6500 + floor( (root,fvar(17))/680*35)
ID             = 6500
Pos            = -150, 45
PosType        = right
SprPriority    = 10
Facing         = -1
BindTime       = -1
OwnPal         = 1
Scale          = 0.5, 0.5
ignorehitpause = 1
PauseMoveTime  = 99999
SuperMoveTime  = 99999



;=========================================================================
;     リロードゲージ　管理
;=========================================================================

[state 20000, 1Pメタゲージ表示]  ;1P側
type           = explod
Trigger1       = TeamSide = 1
Trigger1       = root,Var(50) = 1
anim           = 6200
ID             = 6200
Pos            = 150, 45
postype        = left
ownpal         = 1
bindtime       = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 9
PauseMoveTime  = 99999
SuperMoveTime  = 99999

[state 20000, 2Pメタゲージ表示]  ;2P側
type           = explod
Trigger1       = TeamSide = 2
Trigger1       = root,Var(50) = 1
anim           = 6200
ID             = 6201
Pos            = -150, 45
postype        = right
ownpal         = 1
facing         = -1
bindtime       = -1
scale          = 0.5,0.5
ignorehitpause = 1
SprPriority    = 9
PauseMoveTime  = 99999
SuperMoveTime  = 99999




;=========================================================================
;     先行入力　管理
;=========================================================================

[state 99999, 間違いで本体が来たら立ちへ移行]
type     = Selfstate
trigger1 = !ishelper
value    = 0

[state 99999, posset]
type     = Posset
trigger1 = 1
X        = root,pos X
Y        = 9999

[state 99999, turn]
type     = turn
trigger1 = root,facing != facing

;-------------------------------------------------------[先行入力]

[state -1, 真理亞の込めてくれた弾丸]
type     = Varset
Trigger1 = Command  = "MARIA"
var(10)  = 11

[state -1, ゴートハンティング]
type     = Varset
Trigger1 = Command  = "236236C"
var(11)  = 11

[state -1, フライングネックカット]
type     = Varset
Trigger1 = Command  = "623AB"
var(12)  = 11

[state -1, ゴールデンドリーム]
type     = Varset
Trigger1 = Command  = "214AB"
var(17)  = 11

[state -1, ウルフハンティング]
type     = Varset
Trigger1 = Command  = "236AB"
var(13)  = 11

[state -1, ソードオフライフル]
type     = Varset
Trigger1 = Command  = "236A"
var(14)  = 11

[state -1, ソードオフライフル]
type     = Varset
Trigger1 = Command  = "236B"
var(15)  = 11

[state -1, ソードオフライフル]
type     = Varset
Trigger1 = Command  = "236C"
var(16)  = 11

[state -1, a]
type     = Varset
Trigger1 = Command  = "a"
var(17)  = 6

[state -1, b]
type     = Varset
Trigger1 = Command  = "b"
var(18)  = 6

[state -1, c]
type     = Varset
Trigger1 = Command  = "c"
var(19)  = 6

[state -1, a]
type     = Varset
Trigger1 = Command  = "FF"
var(20)  = 6

[state -1, b]
type     = Varset
Trigger1 = Command  = "BB"
var(21)  = 6

;-------------------------------------------------------[先行入力-フレーム処理]

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(10) > 0
var(10)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(11) > 0
var(11)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(12) > 0
var(12)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(13) > 0
var(13)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(14) > 0
var(14)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(17) > 0
var(17)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(15) > 0
var(15)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(16) > 0
var(16)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(17) > 0
var(17)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(18) > 0
var(18)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(19) > 0
var(19)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(20) > 0
var(20)  = -1

[State a, 内部処理]
Type     = VarAdd
Trigger1 = var(21) > 0
var(21)  = -1


; シルバーサムライ　イントロ
;---------------------------------------------------------------------------
[Statedef 100191]; VS iwakick
type = L
ctrl = 0
velset = 0,0
anim = 0

[state a]
type = varset
trigger1 = enemy,authorname = "iwakick"
trigger1 = enemy,name = "silversamurai"
trigger1 = sysvar(0) = 0
sysvar(0) = 198

[state a]
type = varset
trigger1 = enemy,authorname = "iwakick"
trigger1 = enemy,name = "silversamurai"
trigger1 = sysvar(1) = 0
sysvar(1) = 0

[state a]
type = varset
trigger1 = enemy,authorname = "iwakick"
trigger1 = enemy,name = "silversamurai"
trigger1 = sysvar(2) = 0
sysvar(2) = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[state 191]
type = hitby
trigger1 = numenemy
trigger1 = enemy,authorname = "iwakick"
value = S, HT

[State 191, 3]
type = ChangeState
trigger1 = roundno = 1
trigger1 = time = 31
value = 190

[State 191, 3]
type = ChangeState
trigger1 = roundno > 1
trigger1 = time = 31
value = 5900

;---------------------------------------------------------------------------
[Statedef 100192]; VS iwakick helper
type = L
ctrl = 0
velset = 0,0
anim = 0

[state 191]
type = hitby
trigger1 = numenemy
trigger1 = enemy,authorname = "iwakick"
value = S, HT

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 191, 3]
type = destroyself
triggerall = ishelper
trigger1 = roundstate > 1
trigger2 = root,alive = 0
;---------------------------------------------------------------------------

