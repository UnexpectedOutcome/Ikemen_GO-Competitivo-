;===========================================================================
;†††-3 states†††
;===========================================================================
[statedef -3]

[State -3, Glazing]
type = nothitby
triggerall = numhelper(4510) = 1
trigger1 = stateno = [100,119]
trigger2 = stateno = 1600 || stateno = 1603 || stateno = 1606
trigger3 = stateno = [5200,5210]
trigger4 = ((Vel x= const(velocity.jump.fwd.x)+4.5)||(Vel x= const(velocity.jump.back.x)-4.5))&&(stateno = [50,51])
value = SCA,NP,SP,HP
time = 2

[State -3, Glazing2]
type = hitby
triggerall = numhelper(4510) = 1
trigger1 = stateno = [100,119]
trigger2 = stateno = 1600 || stateno = 1603 || stateno = 1606
trigger3 = stateno = [5200,5210]
trigger4 = ((Vel x= const(velocity.jump.fwd.x)+4.5)||(Vel x= const(velocity.jump.back.x)-4.5))&&(stateno = [50,51])
value = SCA,NA,SA,HA,NT,ST,HT
time = 2

[State -3, Glazing3]
type = helper
triggerall = numhelper(4510) = 0
trigger1 = stateno = [100,119]
trigger2 = stateno = 1600 || stateno = 1603 || stateno = 1606
trigger3 = stateno = [5200,5210]
trigger4 = ((Vel x= const(velocity.jump.fwd.x)+4.5)||(Vel x= const(velocity.jump.back.x)-4.5))&&(stateno = [50,51])
pos = 0,0
postype = p1
ID = 4510
pausemovetime = 0
name = "eff"
sprpriority = 100
stateno = 4510
helpertype = normal
keyctrl = 0
ownpal = 1

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
;■マギカブート結界
[state -3, pause]
type = pause
trigger1 = numhelper(9980) > 0
trigger1 = gametime%3 = 0 
time = 1
movetime = 1

[state -3, nothitby]
type = nothitby
trigger1 = numhelper(9980) > 0
value = ,aa,ap
ignorehitpause = 1

;装填
[state -3, varset]
type = varset
trigger1 = playeridexist(var(15)) = 1
trigger1 = playerid(var(15)),movetype != h
trigger2 = roundstate < 2
var(8) = 1
;---------------------------------------------------------------------------
;■へちょキャンセル
[state -3, playsnd]
type = playsnd
triggerall = time = 1
trigger1 = prevstateno = 197 && stateno != 3800
trigger2 = prevstateno = 3800
value = 2,11

[state -3, explod]
type = explod
triggerall = time = 1
trigger1 = prevstateno = 197 && stateno != 3800
trigger2 = prevstateno = 3800
anim = 31000
id = 31000
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state -3, bgpalfx]
type = bgpalfx
triggerall = time = 1
trigger1 = prevstateno = 197 && stateno != 3800
trigger2 = prevstateno = 3800
time = 6
add = var(21),var(22),var(23)
;invertall = 1
;---------------------------------------------------------------------------
;■ラウンド前バミリ固定
[state -3, nothitby]
type = nothitby
trigger1 = roundstate < 2
trigger1 = anim != 3416
value = sca

[state -3, playerpush]
type = playerpush
trigger1 = roundstate < 2
value = 0
;---------------------------------------------------------------------------
;■コンボ制限
[state -3, varset]
type = varset
trigger1 = var(13) < 2
trigger1 = stateno = [400,499]
trigger1 = movehit
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),statetype != a
var(13) = 1
ignorehitpause = 0

[state -3, varset]
type = varset
triggerall = var(13) = 1
trigger1 = statetype != a
trigger2 = stateno = 40
trigger3 = stateno = 52
var(13) = 2
ignorehitpause = 0

[state -3, varset]
type = varset
trigger1 = stateno = [200,399]
trigger1 = movehit
var(13) = 2
ignorehitpause = 0

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(13) = 0
ignorehitpause = 0
;---------------------------------------------------------------------------
;■コンボヒットカウンタ
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

[state -3, varadd]
type = varadd
trigger1 = moveguarded = 1
var(14) = -1
ignorehitpause = 0
;---------------------------------------------------------------------------
;■流星剣はめ防止
[state -3, varadd]
type = varadd
trigger1 = p2statetype = l
trigger1 = movehit = 1
var(28) = 1
ignorehitpause = 0

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(28) = 0
ignorehitpause = 0
;---------------------------------------------------------------------------
;■オラトリオはめ防止(シングルのみ)
[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(29) = 0
ignorehitpause = 0
;---------------------------------------------------------------------------
;■コンボ補正値
[state -3, varset]
type = varset
trigger1 = var(14) < 100
fv = 1
value = (100-var(14))*0.01
ignorehitpause = 1

[state -3, varset]
type = varset
trigger1 = var(14) >= 100
fvar(1) = 0.01
ignorehitpause = 1
;---------------------------------------------------------------------------
;■空中ダッシュ＆トリプルジャンプ装填
[state -3, varset]
type = varset
trigger1 = statetype != a 
trigger1 = ctrl
trigger2 = roundstate = 1
var(10) = 2

[state -3, varadd]
type = varadd
trigger1 = stateno = [110,115]
trigger1 = time = 1
var(10) = -1

[state -3, varadd]
type = varadd
trigger1 = stateno = 45
trigger1 = time = 1
var(10) = -1
;---------------------------------------------------------------------------
;■スーパージャンプ監視
[state -3, varset]
type = varset
trigger1 = statetype != a 
trigger1 = ctrl
trigger2 = roundstate = 1
var(9) = 0

[state -3, varset]
type = varset
trigger1 = stateno = 60
var(9) = 1
;---------------------------------------------------------------------------
;■リジェネ
[state -3, lifeadd]
type = lifeadd
trigger1 = alive = 1
trigger1 = var(0) > 0
trigger1 = time%4 = 0
trigger1 = movetype != h
value = 1
ignorehitpause = 1

[state -3, varadd]
type = varadd
trigger1 = alive = 1
trigger1 = var(0) > 0
var(0) = -1
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

[state -3, varset]
type = varset
trigger1 = numtarget = 1
var(18) = target,id

[state -3, varset]
type = varset
triggerall = numenemy > 1
trigger1 = uniqhitcount = 2
trigger2 = numtarget(stateno) = 2
var(18) = enemynear(0),id

[state -3, varset]
type = varset
triggerall = numenemy > 1
trigger1 = uniqhitcount = 2
trigger2 = numtarget(stateno) = 2
var(19) = enemynear(1),id

[state -3, varset]
type = varset
trigger1 = ctrl = 1
var(18) = 0

[state -3, varset]
type = varset
trigger1 = ctrl = 1
var(19) = 0
;---------------------------------------------------------------------------
;■変数のリセット
[state -3, varset];汎用３
type = varset
trigger1 = ctrl
var(7) = 0

;■変数のリセット
[state -3, varset];キラキラ
type = varset
trigger1 = ctrl
var(24) = 0
;---------------------------------------------------------------------------
;■表示優先度
[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype != h
value = 2

[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype = h
value = -1-(alive=0)*2
