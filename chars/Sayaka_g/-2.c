;===========================================================================
;†††-2 states††
;===========================================================================
[statedef -2]


[State -2, PowerUP]  ;;;;Powering up when certain partners are present!
type = VarSet
trigger1 = 1
v = 35
value = 1      ;;0 = off    1 = on
ignorehitpause = 1
;---------------------------------------------------------------------------
;■フリータイマー
[state -2, varadd]
type = varadd
trigger1 = roundstate = 2
var(2) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;■汎用ランダム値
[state -2, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,99
ignorehitpause = 1
;---------------------------------------------------------------------------
;■バイタリティ監視
[state -2, varset]
type = varset
trigger1 = roundstate <= 3
var(3) = life
;---------------------------------------------------------------------------
;■ダメージボイス用
[state -2, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 1,3
ignorehitpause = 1
;---------------------------------------------------------------------------
;■起き上がりボイス用
[state -2, varrandom]
type = varrandom
trigger1 = anim = 5120
v = 5
range = 1,4
ignorehitpause = 1
;---------------------------------------------------------------------------
;■フリータイマー
[state -2, vsyuujiro-lucy]
type = varset
trigger1 = p2name = "yujiro" || p4name = "yujiro"
trigger2 = enemy,name = "yujiro" || enemynear,name = "yujiro"
trigger3 = p2name = "Lucy Diclonius by Crucifix" || p4name = "Lucy Diclonius by Crucifix"
trigger4 = enemy,name = "Lucy Diclonius by Crucifix" || enemynear,name = "Lucy Diclonius by Crucifix"
var(53) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;■フリータイマー
[state -2, vsovs]
type = varset
trigger1 = p2name = "Oktavia Von Seckendorff" || p4name = "Oktavia Von Seckendorff"
trigger2 = enemynear,name = "Oktavia Von Seckendorff" || enemy,name = "Oktavia Von Seckendorff"
var(53) = 2
ignorehitpause = 1
;---------------------------------------------------------------------------
;■挑発ボイス（監視）
[state -2, playsnd]
type = playsnd
trigger1 = alive = 1
trigger1 = animelemtime(6) = 0
trigger1 = anim = 195
trigger1 = stateno != 195
value = 10,0
channel = 1
lowpriority = 1
;---------------------------------------------------------------------------
;■ダメージボイス
[state -2, playsnd]
type = playsnd
trigger1 = alive = 1
trigger1 = time = 3
trigger1 = roundstate = 2
trigger1 = movetype = h
trigger1 = var(1) = [0,70]
trigger1 = (stateno != [120,155])
trigger1 = (stateno != [5100,5110]) && (stateno != 5001) && (stateno != 5011)
trigger1 = (stateno != 5030) && (stateno != 5035) && (stateno != 5040) && (stateno != 5050)
trigger1 = (stateno != 5071) && (stateno != 5200) && (stateno != 5201) && (stateno != 5210)
trigger1 = (anim != 9020) && (anim != [66660,66662])
value = 11,var(4)
channel = 11
lowpriority = 1
;---------------------------------------------------------------------------
;■起き上がりに強がりを言う
[state -2, playsnd]
type = playsnd
trigger1 = time = 1
trigger1 = stateno = 5120
trigger1 = var(1) = [0,50+(life<lifemax*0.6)*20]
value = 11,20+var(5)
channel = 0
;---------------------------------------------------------------------------
;■ヤミ化
[state -2, helper]
type = helper
triggerall = palno = [1,11]
triggerall = numhelper(15000) = 0
triggerall = (var(41)+var(42)+var(43)+var(44)+var(45)) >= 3
triggerall = roundstate = 2
triggerall = var(2) >= 10
trigger1 = ctrl
helpertype = normal
name = "dark"
pos = -160,0
postype = front
facing = facing
id = 15000
stateno = 15000
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = palno = [1,11]
trigger1 = numhelper(15000) = 1
trigger1 = helper(15000),time = 1
time = 180
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state -2, varset]
type = varset
triggerall = palno = [1,11]
triggerall = var(40) = 0
trigger1 = var(49)
var(41) = floor(var(49)/100)
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = palno = [1,11]
trigger1 = var(40) != 0
trigger1 = ctrl
var(49) = 0
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = palno = [1,11]
triggerall = var(40) = 0
trigger1 = life < lifemax/3
var(42) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = palno = [1,11]
triggerall = var(40) = 0
trigger1 = roundstate < 2
trigger1 = var(42) = 1
var(42) = 0
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = palno = [1,11]
triggerall = var(40) = 0
triggerall = numenemy
trigger1 = enemynear,stateno >= 2000
trigger1 = statetype != l
trigger1 = movetype = h
trigger1 = stateno != [120,155]
trigger1 = prevstateno != [120,155]
trigger1 = time < 2
trigger2 = enemynear,hitdefattr = sca,ha,ht,hp	;機能しないので
trigger2 = enemynear,movehit			;
;trigger2 = enemynear,stateno != [5000,5999]
var(43) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = palno = [1,11]
triggerall = var(40) = 0
trigger1 = alive = 0
trigger2 = lose
var(44) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = palno = [1,11]
triggerall = var(40) = 0
trigger1 = numpartner
trigger1 = partner,alive = 0
var(45) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = palno = [1,11]
trigger1 = roundstate < 2
trigger1= var(40) != 0
var(49) = 200
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = palno = [1,11]
trigger1 = roundstate < 2
trigger1 = time > 2
trigger1= var(40) != 0
var(40) = 0
ignorehitpause = 1

;■フリータイマー
[state -2, varadd]
type = varadd
trigger1 = palno = 12
var(40) = 3
ignorehitpause = 1
;---------------------------------------------------------------------------
;■デバッグ表示
[state -2, displaytoclipboard]
type = null;displaytoclipboard
trigger1 = 1
text = "pos y: %d / bdist x: %d / dist y: %d / dist f: %d / time: %d\n"
params = floor(pos y),floor(p2bodydist x),floor(p2dist y),floor(frontedgedist),var(2)

[state -2, displaytoclipboard]
type = null;displaytoclipboard
trigger1 = 1
text = "pos y: %d / bdist x: %d / oratorio: %d / combos: %d / time: %d\n"
params = floor(pos y),floor(p2bodydist x),var(29),var(14),var(2)

[state -2, displaytoclipboard]
type = displaytoclipboard
trigger1 = 1
text = "over magic: %d / danger: %d / wound: %d / lose: %d / friend dead: %d\n"
params = var(41),var(42),var(43),var(44),var(45)

[state -2, appendtoclipboard]
type = appendtoclipboard
trigger1 = 1
text = "enemy code: %d / partner code: %d / last target: %d / karma: %d / dark: %d"
params = var(11),var(12),var(15),var(49),var(40)

[state -2, appendtoclipboard]
type = null;appendtoclipboard
trigger1 = 1
text = "last target: %d / ai: %d / mode: %d"
params = var(15),var(50),var(53)

;-------------元気100倍
[state 7000]
type = poweradd
triggerall = var(35)
triggerall = numpartner
triggerall = alive
triggerall = roundstate = 2
trigger1 = Partner,Name = "Tomoe Mami"
trigger2 = Partner,Name = "miki sayaka"
trigger3 = Partner,Name = "Madoka Kaname"
trigger4 = Partner,Name = "Akemi-Homura"
value = ifelse(var(40),4,2)
ignorehitpause = 1

[state 7000]
type = poweradd
triggerall = var(35)
triggerall = numpartner
triggerall = alive
triggerall = roundstate = 2
trigger1 = Partner,Name = "Kyoko_Sakura"
value = ifelse(var(40),6,3)
ignorehitpause = 1

[state 7000]
type = lifeadd
triggerall = var(35)
triggerall = numpartner
triggerall = alive
triggerall = movetype != H
trigger1 = Partner,Name = "Kyoko_Sakura"
trigger1 = roundstate = 2
trigger1 = timemod = 4,0
value = 1
ignorehitpause = 1
;-------------元気100倍
[state 7000]
type = poweradd
trigger1 = palno = 12
trigger1 = alive
value = 5
ignorehitpause = 1
;-------------元気100倍
[state 7000]
type = defencemulset
trigger1 = var(40) = 0
trigger1 = palno = [1,11]
trigger1 = life >= 500
value = ifelse(life>=750,1,0.9)
ignorehitpause = 1

[state 7000]
type = defencemulset
trigger1 = var(40) = 0
trigger1 = palno = [1,11]
trigger1 = life < 500
value = ifelse(life<=250,0.7,0.8)
ignorehitpause = 1

[state 7000]
type = defencemulset
trigger1 = var(40) >= 1
trigger1 = palno = [1,11]
trigger1 = life >= 500
value = ifelse(life>=750,0.5,0.4)
ignorehitpause = 1

[state 7000]
type = defencemulset
trigger1 = var(40) >= 1
trigger1 = palno = [1,11]
trigger1 = life < 500
value = ifelse(life<=250,0.2,0.3)
ignorehitpause = 1

[state 7000]
type = defencemulset
trigger1 = palno = 12
value = ifelse(life<500,0.01,0.1)
ignorehitpause = 1

[State 1020,0]
type = VarSet
triggerall = numpartner
trigger1 = partner,name = "Akemi-Homura" || partner,name = "homura"
trigger2 = partner,name = "miki sayaka" || partner,name = "Sayaka Miki"
trigger3 = partner,name = "Mami Tomoe" || partner,name =  "Tomoe Mami"
trigger4 = partner,name = "Sakura Kyouko" || partner,name = "Kyoko_Sakura"
trigger5 = partner,name = "Madoka Kaname" || partner,name = "Kaname Madoka"
trigger6 = partner,name = "kyubei" || partner,name = "kyubey"
v = 33
value = 1

;---------------------------------------------------------------------------
[State -2, Try to do that, you'll see]
type = SelfState
triggerall = p2name = "Haruhi Suzumiya" || p4name = "Haruhi Suzumiya" || enemy,name = "Haruhi Suzumiya"
trigger1 = movetype = H
trigger1 = stateno = 3550
trigger1 = var(40) >= 1
trigger1 = power >= 5000
value = 3408

[State -2, Try to do that, you'll see]
type = SelfState
triggerall = alive
triggerall = p2name = "Giygas" || p4name = "Giygas" || enemy,name = "Giygas"
triggerall = movetype = H
triggerall = power >= 1000
triggerall = var(40) >= 1
trigger1 = stateno = 3120 && life < 11
trigger2 = stateno = 3128
trigger3 = stateno = 3129
trigger4 = stateno = 3521
trigger5 = stateno = 3620
value = 3851

;■無名の極斬
[state -1, gokuzan]
type = selfstate
value = 3509
triggerall = alive
triggerall = enemynear,name != "Rare Akuma" && enemynear,name != "Dai Gouki" 
triggerall = power >= 6000
triggerall = palno = 12
triggerall = movetype = H
triggerall = stateno != [120,169]
triggerall = stateno != 5150
triggerall = statetype != L
trigger1 = var(50) = 0
trigger1 = command = "gokuzan"
trigger2 = var(50) >= 5
trigger2 = random < 200

[State -2, ????????????]
type = SelfState
triggerall = alive
triggerall = movetype = H 
triggerall = stateno != [120,169]
triggerall = stateno != [5000,5500]
triggerall = power >= 9000
triggerall = var(51) = 0
triggerall = var(40) >= 1
triggerall = roundno >= 3
triggerall = numhelper(3680) = 0
triggerall = life < 333
triggerall = statetype != L
trigger1 = var(50) >= 1
trigger1 = random < 250
trigger2 = var(50) = 0
trigger2 = command = "JingennoTachi"
value = ifelse(statetype=A,3694,3695)
ctrl = 0

[state -1, gokuzan]
type = selfstate
value = ifelse(power>=9000,3694,5255)
triggerall = enemynear,name = "Rare Akuma" || enemynear,name = "Dai Gouki" 
triggerall = alive
triggerall = palno = 12
triggerall = movetype = H
trigger1 = stateno = 4013
trigger1 = time >= 2
trigger2 = stateno = 4023
trigger2 = time >= 659
trigger3 = stateno = 4033
trigger3 = pos y = -100