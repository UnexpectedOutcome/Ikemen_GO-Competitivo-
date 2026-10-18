; ADD004 BASIC PIEs ReBuilded CNS (9/7/2018)
;==============================================
; This file is Made by PIE.
; there is a backup of this file in the same folder, named "<samename>.a4bk".
; to Restore, use assist tool, or delete this file, then remove ".a4bk" from the neme of backup.
;==============================================

[Statedef -2]

[State -2, AssertSpecial]
type = AssertSpecial
triggerall = roundno = 1
trigger1 = stateno = [190,199]
trigger1 = stateno != 195
flag = nomusic
;//==========================
;// add004-sctrls-end
;//==========================

[State -2, 4]
type = VarRandom
triggerall = Time = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
v = 4
range = 0,19

[State -2, 5]
type = PlaySnd
triggerall = Time = 1
triggerall = Var(4) = [0,3]
triggerall = alive = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = s5000,0

[State -2, 6]
type = PlaySnd
triggerall = Time = 1
triggerall = Var(4) = [4,7]
triggerall = alive = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = s5000,1

[State -2, 6]
type = PlaySnd
triggerall = Time = 1
triggerall = Var(4) = [8,11]
triggerall = alive = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = s5000,2

[State -2, 6]
type = PlaySnd
triggerall = Time = 1
triggerall = Var(4) = [12,15]
triggerall = alive = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = s5000,3

[State -2, 6]
type = PlaySnd
triggerall = Time = 1
triggerall = Var(4) = [16,19]
triggerall = alive = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
value = s5000,4

[State -2]
type = PlaySnd
Triggerall = Alive = 1
triggerall = Time = 1
trigger1 = (stateno = 5100) && (anim = 5100 || anim = 5101 || anim = 5102)
value = S5000,6

[state ]
type = DisplayToClipboard
trigger1 = 1
text="p2dist x = %f, p2dist y = %f"
params = (p2dist x),(p2dist y)
ignorehitpause=1

[State 0, VarSet]
type = VarSet
triggerall = NumTarget
triggerall = (Target,BackEdgeBodyDist <= 0) || (Target,FrontEdgeBodyDist <= 0)
triggerall = Target,MoveType = H
triggerall = Target,Vel Y = 0
triggerall = ProjContact = 0,< 32
triggerall = StateType != A
trigger1 = Target,Statetype = S
trigger2 = Target,Statetype = C
fvar(3) = ifelse(Target,BackEdgeBodyDist <= 0,Target,Vel X,-Target,Vel X)

[State 0, VarSet]
type = VarSet
triggerall = NumTarget
triggerall = !fvar(3)
triggerall = (Target,BackEdgeBodyDist <= 0) || (Target,FrontEdgeBodyDist <= 0)
triggerall = Target,GetHitvar(HitShakeTime) = 0
triggerall = Target,GetHitvar(yvel) = 0
triggerall = ProjContact = 0,< 32
trigger1 = Target,StateNo = 5000
trigger2 = Target,StateNo = 5010
trigger3 = Target,StateNo = 150
trigger4 = Target,StateNo = 152
IgnoreHitPause = 1
fvar(3) = ifelse(facing = -1 && Target,BackEdgeBodyDist <= 0,Target,GetHitvar(xvel),-Target,GetHitvar(xvel))

[State 0, PosAdd]
type = PosAdd
triggerall = NumTarget
trigger1 = Target,StateNo != [5200,5299]
trigger1 = HitShakeOver
trigger1 = !(Time <= 35 && StateNo = [2000,4999])
trigger1 = fvar(3)
x = fvar(3)

[State 0, VarSet]
type = VarSet
triggerall = fvar(3)
trigger1 = !NumTarget
trigger2 = Target,HitShakeOver
fvar(3) = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noairguard
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = enemy,stateno = 5632 && enemy,movetype = H
trigger1 = enemy,time = 1
anim = 6130
postype = p2
pos = -20, 0
bindtime = 1
sprpriority = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = enemy,stateno = 5632 && enemy,movetype = H
trigger1 = enemy,time = 1
value = s27,3

[State 0, StopSnd]
type = StopSnd
trigger1 = StateNo != 100
Channel = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = MoveType = H
Channel = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = MoveType = H
Channel = 4

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(812)
trigger1 = StateNo != 811
ID = 812

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(3000)
trigger1 = MoveType = H && StateNo != [120,159]
ID = 3000

[State 0, Afterimagetime]
type = Afterimagetime
trigger1 = MoveType = H
time = 0

;-------------------------------------------------------------------------------
;Extra Carteles KOF MEMORIAL LEVEL 2
;-------------------------------------------------------------------------------
;Intro and K.O. no Lifebars
[State -2]
type = assertspecial
trigger1 = roundstate != 2
trigger2 = Ctrl = 0 && (Anim = [0,2]) && MoveType != H
flag = NoBarDisplay
ignorehitpause = 1
;-----------------------------------------------------------------------------
;[State -2, AssertSpecial]
;type = AssertSpecial
;trigger1 = gametime%2 = 0
;flag = noshadow
;ignorehitpause = 1

;Lose cartel p1
[State 1000, Explod]
type = Explod
triggerall = numexplod(7010) <= 0 && teamside = 1
triggerall = win = 1 && stateno = [180,189]
trigger1 = time = 0
anim = f7010
ID = 7010
pos = 200,70
postype = left
bindtime = -1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1

;Lose cartel p2
[State 1000, Explod]
type = Explod
triggerall = numexplod(7010) <= 0 && teamside = 2
triggerall = win = 1 && stateno = [180,189]
trigger1 = time = 0
anim = f7010
ID = 7010
pos = 25,70
postype = left
bindtime = -1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1

;Winner p1
[State 1000, Explod]
type = Explod
triggerall = numexplod(7015) <= 0 && teamside = 1
triggerall = win = 1 && stateno = [180,189]
trigger1 = time = 0
anim = f7015
ID = 7015
pos = -310,200
postype = left
bindtime = -1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1

;Winner p1 Estatico
[State 1000, Explod]
type = Explod
triggerall = numexplod(7020) <= 0 && teamside = 1
triggerall = win = 1 && stateno = [180,189]
trigger1 = time = 0
anim = f7020
ID = 7020
pos = -8,202
postype = left
bindtime = -1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1

;Winner p2
[State 1000, Explod]
type = Explod
triggerall = numexplod(7015) <= 0 && teamside = 2
triggerall = win = 1 && stateno = [180,189]
trigger1 = time = 0
anim = f7016
ID = 7015
pos = -120,200
postype = left
bindtime = -1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1

;Winner p2 Estatico
[State 1000, Explod]
type = Explod
triggerall = numexplod(7020) <= 0 && teamside = 2
triggerall = win = 1 && stateno = [180,189]
trigger1 = time = 0
anim = f7021
ID = 7020
pos = 182,202
postype = left
bindtime = -1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1

[State -2, DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "PI:%d, PF:%d, PB:%d, Pos X:%f, Pos Y:%f"
params = var(50), var(40), var(39), P2BodyDist X, P2BodyDist Y
ignorehitpause = 1

;2人目以のイントロ
[State -2]
type = ChangeState
value = 190
triggerall = RoundsExisted = 0
triggerall = TeamMode = Turns
trigger1 = stateno = 5900

[State -2]
type = VarSet
triggerall = RoundState = [0,1]
trigger1 = RoundNo = 1
trigger2 = TeamMode = Turns
trigger2 = RoundsExisted = 0
v = 22
value = Life

[State -2]
type = VarSet
triggerall = Var(22) = [0,100]
triggerall = Time = 1
trigger1 = RoundNo = 1
trigger2 = RoundsExisted = 0
v = 22
value = const(data.life)
;-------------------------------------------------------------------------------
;Inpedir Recover en el piso
[State -2, VarSet]
type = VarSet
trigger1 = movetype = H
trigger1 = stateno = [5100,5111]
v = 48
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = stateno = 5120
trigger1 = movetype = I
v = 48
value = 0
;-------------------------------------------------------------------------------
;Invulnerabilidares a agarres Estilo KOF
[State -2, NotHitBy]
type = NotHitBy
trigger1 = var(49) != 0
value = , NT,ST,HT

[State -2, ]
type = Varadd
trigger1 = (GameTime%2) = 0 && var(49) != 0
trigger1 = 1
var(49) = -1
ignorehitpause = 1
persistent = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype = A
trigger2 = statetype = A
trigger3 = movetype = H
trigger4 = stateno = [120,132]
v = 49
value = 0
ignorehitpause = 1
persistent = 1
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Life Danger
[State -2, Life Danger]
type = Explod
triggerall = numexplod(4180) <= 0 && teamside = 1
trigger1 = Life <= LifeMax/4.7
ignorehitpause = 1
persistent = 0
anim = f4180
id = 4180
pos = 4,196
postype = left
bindtime = -1
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999

[State -2, Life Danger]
type = Explod
triggerall = numexplod(4180) <= 0 && teamside = 2
trigger1 = Life <= LifeMax/4.7
ignorehitpause = 1
persistent = 0
anim = f4180
id = 4180
pos = -55,196
postype = right
bindtime = -1
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999
;-------------------------------------------------------------------------------
;First Attack
[State -2, First Attack]
type = Explod
triggerall = numexplod(4170) <= 0 && teamside = 1
triggerall = enemy,numexplod(4170) <= 0
triggerall = p2movetype = H && p2stateno = [800,5070]
trigger1 = NumPartner
trigger1 = partner,numexplod(4170) <= 0
trigger2 = !NumPartner
ignorehitpause = 1
persistent = 9
anim = f4170
id = 4170
pos = 4,196
postype = left
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999

[State -2, First Attack]
type = Explod
triggerall = numexplod(4170) <= 0 && teamside = 2
triggerall = enemy,numexplod(4170) <= 0
triggerall = p2movetype = H && p2stateno = [800,5070]
trigger1 = NumPartner
trigger1 = partner,numexplod(4170) <= 0
trigger2 = !NumPartner
ignorehitpause = 1
persistent = 9
anim = f4170
id = 4170
pos = -92,196
postype = right
bindtime = -1
removetime = -2
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999
;-------------------------------------------------------------------------------
;Hyper Available
[State -2, Hyper Available]
type = Explod
triggerall = numexplod(4190) <= 0 && teamside = 1
trigger1 = power = 3000
ignorehitpause = 1
persistent = 0
anim = f4190
id = 4190
pos = 4,196
postype = left
bindtime = -1
removetime = 155
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999

[State -2, Hyper Available]
type = Explod
triggerall = numexplod(4190) <= 0 && teamside = 2
trigger1 = power >= 3000
ignorehitpause = 1
persistent = 0
anim = f4190
id = 4190
pos = -116,196
postype = right
bindtime = -1
ontop = 1
removetime = 155
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999
;-------------------------------------------------------------------------------
;Counter Hits
[State -2, Counter Hit1]
type = VarSet
triggerall = prevstateno != [120,152]
trigger1 = enemy, movetype = A
ignorehitpause = 1
var(19) = 1

[State -2, Counter Hit2]
type = VarSet
trigger1 = enemy, movetype = I || var(22) >= 1
ignorehitpause = 1
var(19) = 0

[State -2, Counter Hit3]
type = VarSet
trigger1 = var(22) > 10 && enemy, movetype = H
ignorehitpause = 1
var(19) = 0

[State -2, Counter Hit4]
type = VarSet
trigger1 = var(19) = 1 && movehit
ignorehitpause = 1
var(22) = 1

[State -2, Counter Hit5]
type = Varadd
trigger1 = var(22) >= 1
ignorehitpause = 1
var(22) = 1

[State -2, Counter Hit6]
type = VarSet
trigger1 = p2movetype != H
trigger2 = var(22) > 22
trigger3 = p2statetype = L
trigger4 = var(22) > 30 && movehit
ignorehitpause = 1
var(22) = 0

[State -2, Counter Hit7]
type = Assertspecial
trigger1 = var(19) = 1 && numexplod(4150) <= 1
flag = Nojugglecheck

[State -2, EnvColor]
type = EnvColor
trigger1 = var(22) = [1,2]
value = 255,255,255
time = 1
ignorehitpause = 1
under = 1

[State -2, Counter Explod1]
type = Explod
triggerall = var(19) = 1 && numexplod(4150) <= 0 && teamside = 2
trigger1 = movehit
trigger2 = Projhit >= 1
ignorehitpause = 1
persistent = 0
anim = f4150
id = 4150
pos = -62,206
postype = right
bindtime = -1
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999

[State -2, Counter Explod2]
type = Explod
triggerall = var(19) = 1 && numexplod(4150) <= 0 && teamside = 1
trigger1 = movehit
trigger2 = Projhit >= 1
ignorehitpause = 1
persistent = 0
anim = f4150
id = 4150
pos = 4,206
postype = left
bindtime = -1
ontop = 1
ownpal = 1
supermove = 1
pausemove = 1
supermovetime = 99999
pausemovetime = 99999
;-------------------------------------------------------------------------------
[State -2, NotHitBy]
type = NotHitBy
triggerall = Roundstate != 2
trigger1 = stateno = [5050,5999]
value = SCA
ignorehitpause = 1
;-------------------------------------------------------------------------------
;Final KO Effect
[State -2, Helper]
type = Helper
triggerall = numhelper(9920) <= 0
Triggerall = Teammode = Single || Teammode = Turns || Teammode = Simul
trigger1 = Roundstate = 3 && Winko && matchover
helpertype = normal
name = "Winpose"
Id = 9920
stateno = 9920
pos = 0,0
postype = p1
facing = 1
ignorehitpause = 1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
ownpal = 1

[State -2, ChangeState]
type = ChangeState
Triggerall = Teammode = Single || Teammode = Turns || Teammode = Simul
Triggerall = stateno = 180
trigger1 = matchover && Winko
value = 9925
ctrl = 0
ignorehitpause = 1
;KO Flash Effect
[State -2, Helper]
type = Helper
triggerall = numhelper(9910) <= 0
trigger1 = winKo = 1 && movehit && stateno = [899,4999]
trigger2 = winKo = 1 && Projhittime(1600) >= 0 && Projhittime(1600) <= 1
trigger3 = winKo = 1 && Projhittime(2200) >= 0 && Projhittime(2200) <= 1
trigger4 = winKo = 1 && Projhittime(3000) >= 0 && Projhittime(3000) <= 1
trigger5 = winKo = 1 && Projhittime(1000) >= 0 && Projhittime(1000) <= 1
trigger6 = winKo = 1 && stateno = 3000 && p2stateno = [5000,5050]
helpertype = normal
name = "KO Flash"
Id = 9910
stateno = 9910
pos = 0,0
postype = p1
facing = 1
ignorehitpause = 1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
ownpal = 1

[State -2, DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "PI:%d, PF:%d, PB:%d, Pos X:%f, Pos Y:%f"
params = var(50), var(40), var(39), P2BodyDist X, P2BodyDist Y
ignorehitpause = 1

;2人目以のイントロ
[State -2]
type = ChangeState
value = 190
triggerall = RoundsExisted = 0
triggerall = TeamMode = Turns
trigger1 = stateno = 5900

[State -2]
type = VarSet
triggerall = RoundState = [0,1]
trigger1 = RoundNo = 1
trigger2 = TeamMode = Turns
trigger2 = RoundsExisted = 0
v = 22
value = Life

[State -2]
type = VarSet
triggerall = Var(22) = [0,100]
triggerall = Time = 1
trigger1 = RoundNo = 1
trigger2 = RoundsExisted = 0
v = 22
value = const(data.life)

;-------------------------------------------------------------------------------
;KO Flash Effect
[Statedef 9910]
type = S
ctrl = 0
anim = 999

[State 2000, 超必殺技発動の時間停止]
type = SuperPause
trigger1 = time = 0
anim = -1
poweradd = 0
movetime = -1
time = 30
darken = 0

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = f9910
removetime = -2
id = 9910
sprpriority = -9
pos = 0,0
postype = left
bindtime = -1
ignorehitpause = 1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
ownpal = 1

[State 1000, AllPalFX]
type = AllPalFX
trigger1 = time = 0
time = 51
add = 0,0,0
sinadd = 90,90,90,100
invertall = 0
color = 256

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time = 999
ignorehitpause = 1
persistent = 0

;-------------------------------------------------------------------------------
;Winpose
[Statedef 9920]
type = S
ctrl = 0
anim = 999
velset = 0,0

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = f9920
sprpriority = -10
pos = 0,0
postype = left
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
removetime = -2
ignorehitpause = 1
ownpal = 1

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = f9920
sprpriority = 999
pos = 0,0
postype = left
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
removetime = -2
ignorehitpause = 1
ownpal = 1

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time = 999
;-------------------------------------------------------------------------------
;Player Winpose
[Statedef 9925]
type = S
ctrl = 0
anim = 999
sprpriority = 999

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = f9925
sprpriority = 999
pos = 0,0
postype = left
removetime = -2
bindtime = -1
ownpal = 1
ontop = 1

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,50]
flag = roundnotover

[Statedef -3]

[State AI]
type = ChangeState
value = 1080
triggerall = var(50) = 1
triggerall = p2movetype != A
triggerall = numprojID(1400) = 0
triggerall = p2stateno != 2620
triggerall = power >= 1500
triggerall = power <= 2999
triggerall = random <= 460
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2bodydist x = [180,300]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1000
triggerall = var(50) = 1
triggerall = p2movetype != A
triggerall = numprojID(1400) = 0
triggerall = p2stateno != 2620
triggerall = random <= 460
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2bodydist x = [180,300]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 2500
triggerall = var(50) = 1
triggerall = random <= 800
triggerall = roundstate = 2
triggerall = P2Life <= 500
triggerall = power >= 3000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,200]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 2100
triggerall = var(50) = 1
triggerall = random <= 800
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,50]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 2400
triggerall = var(50) = 1
triggerall = random <= 999
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = enemy,power >= 2500
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,70]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 3550
triggerall = var(50) = 1
triggerall = random <= 800
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,70]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 3500
triggerall = var(50) = 1
triggerall = random <= 800
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = p2bodydist x = [0,70]
trigger1 = ctrl

[State -3]
type=Changestate
triggerall = Roundstate = 2
triggerall = enemynear,statetype != A
triggerall = power >= 500
triggerall = var(50)=1 && enemynear,movetype = A && enemynear,hitdefattr != SC,NT,ST,HT && enemynear,time >= 10 && enemynear,animtime <= -11
triggerall = enemynear,stateno < 2000
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x = [91,160]
trigger1 = p2bodydist y = [-10,10]
value = 1580

[State -3]
type=Changestate
triggerall = Roundstate = 2
triggerall = enemynear,statetype != A
triggerall = power >= 500
triggerall = var(50)=1 && enemynear,movetype = A && enemynear,hitdefattr = SC,NA && enemynear,animtime <= -11
triggerall = enemynear,stateno < 2000
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x = [91,160]
trigger1 = p2bodydist y = [-10,10]
value = 1580

[State -3]
type=Changestate
triggerall = Roundstate = 2
triggerall = enemynear,statetype != A
triggerall = power >= 500
triggerall = var(50)=1 && enemynear,movetype = A && enemynear,hitdefattr != SC,NT,ST,HT && enemynear,time >= 10 && enemynear,animtime <= -11
triggerall = enemynear,stateno < 2000
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x = [51,100]
trigger1 = p2bodydist y = [-10,10]
value = 1580

[State -3]
type=Changestate
triggerall = Roundstate = 2
triggerall = enemynear,statetype != A
triggerall = power >= 500
triggerall = var(50)=1 && enemynear,movetype = A && enemynear,hitdefattr = SC,NA && enemynear,animtime <= -11
triggerall = enemynear,stateno < 2000
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x = [21,100]
trigger1 = p2bodydist y = [-10,10]
value = 1580

[State -3]
type = ChangeState
value = 105
triggerall = Roundstate = 2
triggerall = random <= 999
triggerall = var(50) = 1
triggerall = p2bodydist x = [0,60]
triggerall = backedgedist >= 60
triggerall = statetype != A
triggerall = stateno != 105
triggerall = enemynear,statetype = L && enemynear,alive = 1
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1101
triggerall = var(50) = 1
triggerall = random <= 600
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype = A
triggerall = p2bodydist x = [-5,80]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 215
triggerall = var(50) = 1
triggerall = random <= 300
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,15]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1580
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movehit
triggerall = power >= 500
triggerall = power <= 999
triggerall = random <= 999
trigger1 = stateno = 315
trigger1 = time = 26

[State AI]
type = ChangeState
value = 1580
triggerall = var(50) = 1
triggerall = random <= 900
triggerall = power >= 1300
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [50,140]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1580
triggerall = var(50) = 1
triggerall = random <= 200
triggerall = power >= 1500
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [50,140]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 215
triggerall = var(50) = 1
triggerall = random <= 200
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,35]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 215
triggerall = var(50) = 1
triggerall = random <= 399
triggerall = p2stateno != 3050
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,35]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 430
triggerall = var(50) = 1
triggerall = random <= 200
triggerall = p2stateno != [5050,5121]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,30]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 400
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 430

[State AI]
type = ChangeState
value = 410
triggerall = var(50) = 1
triggerall = power <= 999
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 400

[State AI]
type = ChangeState
value = 410
triggerall = var(50) = 1
triggerall = random <= 250
triggerall = p2stateno != [5050,5121]
triggerall = p2stateno != [5200,5230]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [30,90]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 410
triggerall = var(50) = 1
triggerall = random <= 170
triggerall = p2stateno != [5050,5121]
triggerall = p2stateno != [5200,5230]
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [10,100]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1200
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 410 && MoveHit = 1
trigger2 = stateno = 215 && MoveHit = 1

[State AI]
type = ChangeState
value = ifelse(random<=555,2000,2300)
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = movehit
triggerall = random <= 999
triggerall = Power >= 1200
trigger1 = stateno = 1200
trigger1 = animelem = 18

[State AI]
type = ChangeState
value = 2100
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = power >= 3000
triggerall = movehit
triggerall = random <= 999
trigger1 = stateno = 2000
trigger1 = time = 99

[State AI]
type = ChangeState
value = 2050
triggerall = var(50) = 1
triggerall = p2statetype != A
triggerall = power >= 2000
triggerall = movehit
triggerall = random <= 999
triggerall = Power >= 1200
trigger1 = stateno = 2000
trigger1 = time = 99

[State AI]
type = ChangeState
value = 2400
triggerall = var(50) = 1
triggerall = random <= 700
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = enemy,power >= 2500
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2movetype = A
triggerall = p2bodydist x = [0,100]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 2000
triggerall = var(50) = 1
triggerall = random <= 700
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = ctrl && statetype != A
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2movetype = A
triggerall = p2bodydist x = [0,100]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1450
triggerall = var(50) = 1
triggerall = random <= 999
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 640

[State AI]
type = ChangeState
value = 1101
triggerall = var(50) = 1
triggerall = random <= 999
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = p2bodydist x = [-5,70]
trigger1 = ctrl

[State AI]
type = ChangeState
value = 1350
triggerall = var(50) = 1
triggerall = random <= 999
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 640

[State AI]
type = ChangeState
value = 1450
triggerall = var(50) = 1
triggerall = random <= 999
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 655

[State AI]
type = ChangeState
triggerall = random <= 350
trigger1 = var(50) = 1 && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<40, p2dist Y<60) || p2dist X < 50 && p2statetype = A || p2movetype = A && p2statetype != C
value = 655

[State AI]
type = ChangeState
trigger1 = var(50) = 1 && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<40, p2dist Y<60) || p2dist X < 50 && p2statetype = A || p2movetype = A && p2statetype != C
value = 655

[State -3]
Type = ChangeState
value = 655
triggerall = Var(50) = 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
trigger1 = stateno = 50 || stateno = [120,159]
trigger1 = p2bodydist x = [-110,110]

[State -3]
Type = ChangeState
value = ifelse(p2bodydist x < 5,655,640)
triggerall = Var(50) = 1
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 50 || stateno = [120,159]
trigger1 = p2bodydist x = [-110,110]
trigger1 = Vel y > 0
trigger2 = (stateno = [120,159]) && p2movetype = H
trigger2 = p2bodydist x = [-110,110]

[State -3]
Type = ChangeState
value = 640
triggerall = Var(50) = 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist x = [-110,120]
trigger1 = stateno = 50
trigger1 = Vel y > -1
trigger2 = (stateno = [120,159]) && p2movetype = H
trigger3 = stateno = 50 || stateno = [120,159]
trigger3 = p2statetype = A
trigger4 = stateno = [120,159]

[State -3]
Type = ChangeState
value = ifelse(random<=400,655,640)
triggerall = Var(50) = 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist x = [-110,130]
trigger1 = stateno = 50
trigger1 = Vel x >= 7
trigger2 = (stateno = [120,159]) && p2movetype = H
trigger3 = stateno = [120,159]

[State AI]
type = ChangeState
value = 5201
triggerall = var(50) = 1 && Alive && CanRecover && Vel Y > 0 && Pos Y >= -10 && random <= 999
trigger1 = StateNo = 5050

[State AI]
type  = ChangeState
value = 132
triggerall = var(50) = 1
triggerall = p2movetype = A
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1   = P2BodyDist X = [40,80]
trigger1   = var(21) = [0,39]
trigger2   = P2BodyDist X = [-20,39]
trigger2   = var(21) = [0,59]

[State AI]
type  = ChangeState
value = 130
triggerall = var(50) = 1
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = S
trigger1   = P2BodyDist X = [40,90]
trigger1   = var(21) = [0,14]
trigger2   = P2BodyDist X = [-15,39]
trigger2   = var(21) = [10,29]
trigger3   = enemy,teammode = simul
trigger3   = P2BodyDist X = [-50,-16]
trigger3   = var(21) = [0,39]
trigger4   = P2BodyDist X = [-15,39]
trigger4   = enemy,hitdefattr = S, NA,SA,HA
trigger4   = Random < 350
trigger5   = P2BodyDist X = [0,300]
trigger5   = enemynear,NumProj = 1
trigger5   = Random < 700
trigger6   = P2BodyDist X = [0,300]
trigger6   = enemynear,ishelper = 1
trigger6   = Random < 750

[State AI]
type  = ChangeState
value = 130
triggerall = var(50) = 1
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1   = P2BodyDist X = [40,90]
trigger1   = var(21) = [0,15]
trigger2   = P2BodyDist X = [-40,39]
trigger2   = var(21) = [0,32]
trigger3   = P2BodyDist X = [-40,39]
trigger3   = enemy,hitdefattr = A, NA,SA,HA
trigger3   = Random < 540
trigger4   = P2BodyDist X = [0,300]
trigger4   = enemynear,NumProj = 1
trigger4   = Random < 700
trigger5   = P2BodyDist X = [0,300]
trigger5   = enemynear,ishelper = 1
trigger5   = Random < 750

[State AI]
type  = ChangeState
value = 131
triggerall = var(50) = 1
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [190,194]
trigger1   = p2statetype = C
trigger1   = P2BodyDist X = [40,85]
trigger1   = var(21) = [0,24]
trigger2   = p2statetype = C
trigger2   = P2BodyDist X = [-20,39]
trigger2   = var(21) = [0,39]
trigger3   = p2statetype = S
trigger3   = P2BodyDist X = [-15,39]
trigger3   = var(21) = [0,9]
trigger4   = p2statetype = C
trigger4   = enemy,teammode = simul
trigger4   = P2BodyDist X = [-50,-16]
trigger4   = var(21) = [0,39]
trigger5   = P2BodyDist X = [-20,39]
trigger5   = enemy,hitdefattr = C, NA,SA,HA
trigger5   = Random < 350
trigger6   = P2BodyDist X = [0,300]
trigger6   = enemynear,NumProj = 1
trigger6   = Random < 700
trigger7   = P2BodyDist X = [0,300]
trigger7   = enemynear,ishelper = 1
trigger7   = Random < 750

[State AI]
type = ChangeState
value = 101
triggerall = var(50) = 1
triggerall = p2movetype != A
triggerall = p2bodydist x = [80,300]
triggerall = random <= 80
trigger1 = statetype != A
trigger1 = ctrl

[State AI]
type = ChangeState
value = 701
triggerall = var(50) = 1
triggerall = p2stateno = [5080,5121]
triggerall = random <= 100
triggerall = roundstate = 2
triggerall = ctrl && statetype != A
triggerall = p2bodydist x = [0,150]
triggerall = p2statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State AI]
type = ChangeState
value = 700
triggerall = p2statetype != L
triggerall = var(50) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = InGuardDist = 1
trigger1 = p2bodydist X < 40
trigger1 = BackEdgeBodyDist < 30
trigger2 = p2bodydist X > 50
trigger3 = p2bodydist X < 150
trigger3 = EnemyNear,ParentDist X != 0 || EnemyNear,HitDefAttr = SC,SA,HA
trigger4 = p2statetype = A
trigger4 = P2movetype = A

[State -3, ??]
type  = ChangeState
value = 800
triggerall = var(50) = 1
triggerall = roundstate = 2
triggerall = Random = [0,59]
triggerall = statetype = S
triggerall = ctrl
trigger1   = P2BodyDist X = [-3,3)
trigger1   = p2statetype != A
trigger1   = p2statetype != L
trigger1   = p2movetype != H