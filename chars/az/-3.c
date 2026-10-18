;===========================================================================
;†††-3 states†††
;===========================================================================
[statedef -3]
;---------------------------------------------------------------------------
;■設定ファイル
[state -3, setting]
type = helper
triggerall = numhelper(9999) = 0
trigger1 = var(2) < 100
trigger2 = numhelper(9990) != 0
helpertype = normal
name = "setting"
pos = -160,0
postype = front
facing = facing
id = 9999
stateno = 9999
pausemovetime = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1
;---------------------------------------------------------------------------
;■りっちゃんのターン
[state -3, helper]
type = helper
trigger1 = numhelper(6200) = 0
trigger1 = var(40) = 1
helpertype = normal
name = "tainaka_ritsu"
id = 6200
stateno = 6215
postype = p1
facing = 1
pos = 40,0
scale = const(size.xscale),const(size.yscale)
ownpal = 1
;---------------------------------------------------------------------------
;■敵情報取得
[state -3, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)
;---------------------------------------------------------------------------
;■リジェネ
[state -3, lifeadd]
type = lifeadd
trigger1 = alive = 1
trigger1 = var(0) > 0
trigger1 = timemod = 3,0
trigger1 = movetype != h
value = 1
ignorehitpause = 1

[state -3, varadd]
type = varadd
trigger1 = alive = 1
trigger1 = var(0) > 0
var(0) = -1
ignorehitpause = 1

[state -3, explod]
type = explod
trigger1 = var(0) > 0
trigger1 = numexplod(9900) = 0
trigger1 = movetype != h
id = 9900
anim = 9900
pos = 0,-60
random = 60,60
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[state -3, explod]
type = explod
trigger1 = var(0) > 0
trigger1 = numexplod(9901) = 0
trigger1 = movetype != h
id = 9901
anim = 9901
pos = 60,-60
random = 60,60
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[state -3, explod]
type = explod
trigger1 = var(0) > 0
trigger1 = numexplod(9902) = 0
trigger1 = movetype != h
id = 9902
anim = 9902
pos = -60,-60
random = 60,60
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)
;---------------------------------------------------------------------------
;■トリプルジャンプ装填
[state -3, varset]
type = varset
trigger1 = statetype != a 
trigger1 = ctrl
trigger2 = roundstate = 1
var(10) = 2

[state -3, varadd]
type = varadd
trigger1 = stateno = 45
trigger1 = time = 1
var(10) = -1
;---------------------------------------------------------------------------
;■変数のリセット

;色変数
[state -3, varset]
type = varset
trigger1 = ctrl = 1
var(6) = 0

;コマンド
[state -3, varset]
type = varset
trigger1 = ctrl = 1
var(7) = 0

;エンジェルレイヒット
[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h || playerid(var(15)),statetype = l
trigger2 = movetype = h
var(8) = 0
;---------------------------------------------------------------------------
;■リバーサル入力予約
[state -3, varset]
type = varset
trigger1 = stateno = 5110
trigger1 = time < 3
trigger2 = stateno = 5120
trigger2 = var(7) = [1,10]
var(7) = 0

[state -3, varset]
type = null
triggerall = var(50) = 0
triggerall = stateno = [5110,5120]
trigger1 = power >= 3000
trigger1 = command = "supper"
trigger1 = var(7) := 3900	;■最後の晩餐
trigger2 = power >= 1000
trigger2 = command = "k-hazard"
trigger2 = numhelper(7000) = 0
trigger2 = numhelper(7400) = 0
trigger2 = var(7) := 3500	;■キティコールハザード
trigger3 = power >= 3000
trigger3 = command = "loagaeth"
trigger3 = var(7) := 3400	;■ディア・ロガエス
trigger4 = power >= 2000
trigger4 = command = "sephirot"
trigger4 = var(7) := 3300	;■生命の樹
trigger5 = power >= 2000
trigger5 = command = "d-e-m"
trigger5 = numhelper(31200) < numenemy
trigger5 = var(7) := 3200	;■デウス・エクス・マキナ
trigger6 = power >= 1000
trigger6 = command = "dirac"
trigger6 = var(7) := 3100	;■ディラックの海
trigger7 = power >= 1000
trigger7 = command = "c-sword"
trigger7 = var(7) := 3000	;■炎の剣
trigger8 = command = "twinkle_pile"
trigger8 = var(7) := 1100	;■光のパイル
trigger9 = command = "angel_ray1" || command = "angel_ray2"  || command = "angel_ray3"
trigger9 = var(7) := 1000	;■エンジェルレイ
trigger10 = command = "k-call"
trigger10 = numhelper(7000) = 0
trigger10 = numhelper(7400) = 0
trigger10 = var(7) := 1200	;■キティコールアタック
trigger11 = command = "ff"
trigger11 = var(7) := 100	;■ダッシュ
trigger12 = command = "bb"
trigger12 = var(7) := 105	;■バックステップ
trigger13 = command = "holdup"
trigger13 = var(7) := 40	;■ジャンプ
;---------------------------------------------------------------------------
;■表示優先度
[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype != h
value = -1

[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype = h
value = -3
;---------------------------------------------------------------------------
;■ラウンド前バミリ固定
[state -3, nothitby]
type = nothitby
trigger1 = roundstate < 2
value = sca,aa

[state -3, playerpush]
type = playerpush
trigger1 = roundstate < 2
value = 0
;---------------------------------------------------------------------------
;■飛び道具耐性
[state -3, nothitby]
type = nothitby
trigger1 = numhelper(30110)
value = ,ap
ignorehitpause = 1
;---------------------------------------------------------------------------
;■敵情報取得
[state -3, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)
;---------------------------------------------------------------------------
;■コンボヒットカウンタ≒補正係数
[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(14) = 0
ignorehitpause = 0

[state -3, varadd]
type = varadd
trigger1 = movehit = 1
var(14) = 1
ignorehitpause = 0
;---------------------------------------------------------------------------
;■コンボ補正値
[state -3, varset]
type = varset
trigger1 = var(14) < 100
fvar(1) = (100-var(14))*0.01
ignorehitpause = 1

[state -3, varset]
type = varset
trigger1 = var(14) >= 100
fvar(1) = 0.01
ignorehitpause = 1
;---------------------------------------------------------------------------
;■エンジェルレイコンボ補正
[state -3, varset]
type = varset
trigger1 = roundstate < 2
trigger2 = playeridexist(var(15))
trigger2 = playerid(var(15)),movetype != h
fvar(2) = 1.0
ignorehitpause = 1
;---------------------------------------------------------------------------
;■端
[state -3, width]
type = width
trigger1 = statetype = a
trigger1 = movetype != h
edge = -1-(2**9!=512),-1-(2**9!=512)
