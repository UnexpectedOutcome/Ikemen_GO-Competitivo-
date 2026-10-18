;===========================================================================
;†††-2 states†††
;===========================================================================
[statedef -2]
;---------------------------------------------------------------------------
;■汎用ランダム値
[state -2, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,99
ignorehitpause = 1
;---------------------------------------------------------------------------
;■フリータイマー
[state -2, varadd]
type = varadd
trigger1 = roundstate = 2
var(2) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;■バイタリティ監視
[state -2, varset]
type = varset
trigger1 = roundstate <= 3
var(3) = life
;---------------------------------------------------------------------------
;■放置バグ回避
[state -2, selfstate]
type = selfstate
trigger1 = anim = 0
trigger1 = stateno = 0
trigger1 = prevstateno != 0
trigger1 = ctrl
trigger1 = time > 10
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ダメージボイス
[state -2, playsnd]
type = playsnd
trigger1 = alive != 0
trigger1 = time < 12
trigger1 = (anim = 9020) || (anim = [66660,66662])
value = 11,10
channel = 11
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;■KOボイス
[state -2, varset]
type = varset
trigger1 = alive = 1
trigger1 = var(32) != 0
var(32) = 0

[state -2, varadd]
type = varadd
trigger1 = alive = 0
trigger1 = var(32) < 3
var(32) = 1
ignorehitpause = 1

[state -2, playsnd]
type = playsnd
trigger1 = alive = 0
trigger1 = var(32) = 2
value = 11,20
channel = 10
lowpriority = 1
freqmul = 1;ifelse(var(33),2-const(size.xscale),1);使徒原音
ignorehitpause = 1
;---------------------------------------------------------------------------
;■気絶サウンド
[state -2, playsnd]
type = playsnd
trigger1 = alive != 0
trigger1 = anim = 5300
value = 2,10
channel = 12
lowpriority = 1
loop = 1

[state -2, stopsnd]
type = stopsnd
trigger1 = anim != 5300
trigger2 = stateno = 5500
channel = 12
;---------------------------------------------------------------------------
;■サウンド監視
[state -2, playsnd]
type = playsnd
triggerall = time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
value = 2,5

[state -2, playsnd]
type = playsnd
triggerall = anim = 20
trigger1 = animelemtime(1) = 1
trigger2 = animelemtime(5) = 1
value = 2,5

[state -2, playsnd]
type = playsnd
triggerall = anim = 21
trigger1 = animelemtime(4) = 1
trigger2 = animelemtime(8) = 1
value = 2,5

[state -2, playsnd]
type = playsnd
triggerall = anim = 100
trigger1 = animelemtime(1) = 1
trigger2 = animelemtime(5) = 1
value = 2,5
;---------------------------------------------------------------------------
;■音楽チャンネル停止：音楽
[state -2, stopsnd]
type = stopsnd
trigger1 = movetype = h
channel = 13

;■音楽チャンネル停止：ラウンド開始時に停止
[state -2, stopsnd]
type = stopsnd
trigger1 = roundstate = 2
trigger1 = var(2) < 10
channel = 2
;===========================================================================
;■チートコード受付
;===========================================================================
;◆体力自動回復
[state -2, lifeadd]
type = lifeadd
triggerall = alive
trigger1 = fvar(20) != 0.0
trigger1 = time%floor(6.0-fvar(20)) = 0
trigger1 = !(movetype = h && time <6)
value = 1

;◆パワー自動増加
[state -2, poweradd]
type = poweradd
triggerall = alive
trigger1 = fvar(21) != 0.0
trigger1 = time%floor(6.0-fvar(21)) = 0
value = 3

;◆常時パワーMAX
[state -2, powerset]
type = powerset
triggerall = alive
trigger1 = fvar(22) = 1.0
value = powermax

;◆開幕パワーセット
[state -2, poweradd]
type = poweradd
triggerall = alive
trigger1 = fvar(23) != 0.0
trigger1 = stateno = 190
value = floor(fvar(23)*1000.0)

;◆常時ATフィールド
[state -2, helper]
type = helper
trigger1 = fvar(24) = 1.0
trigger1 = numhelper(30110) = 0
helpertype = normal
name = "barrier"
stateno = 30110
id = 30110
pos = 0,0
postype = p1
facing = facing
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

;◆オートATフィールド
[state -1, at field]
type = changestate
value = 2000
trigger1 = fvar(25) = 1.0
trigger1 = stateno = [150,155]
trigger1 = time = 1
ignorehitpause = 1
;===========================================================================
;■デバッグ表示
[state -2, displaytoclipboard]
type = displaytoclipboard
trigger1 = 1
text = "fdist: %d / bdist x: %d / bdist y: %d / combo: %d / pos y: %d\n"
params = floor(frontedgedist),floor(p2bodydist x),floor(p2bodydist y),var(14),floor(pos y)

[state -2, appendtoclipboard]
type = appendtoclipboard
trigger1 = 1
text = "mode: %d / last target: %d/ angel-dm: %f / angel-gd: %d / time: %d"
params = var(53),var(15),fvar(2),var(8),var(2)

;---------------------------------------------------------------------------
;■デバッグ
[state -2, debug - intro]
type = null;changestate
trigger1 = stateno = 190
value = 810

[state -2, debug - safe mode ai]
type = null;varset
trigger1 = var(50) != 0
var(59) = 1
