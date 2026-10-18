; vim: set ts=4 sw=4 sts=4 expandtab: =========================================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;==============================================================================;
; 赤主・檻髪 (Arc-Drive)
;==============================================================================;
;------------------------------------------------------------------------------;
; 発動
;------------------------------------------------------------------------------;
[Statedef 3000]
type     = S
movetype = A
physics  = S
anim     = 3000
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = AnimElem = 2
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6501
postype       = p1
pos           = Floor(10 * const(size.xscale)), Floor(-118 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = AnimElem = 2
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(2))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Sounds ]-------;

[State 3000:            Voice, 1]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = ifelse(var(50), 2, 0), 3000
channel  = 0
volume   = 255

;-------[ Movement ]-------;

[State 3000:            Invincible]
type     = NotHitBy
trigger1 = AnimElemTime(28) < 0
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

[State 3000:            Attack Dist]
type     = AttackDist
trigger1 = AnimElemTime(28) < 0
value    = 0

;-------[ Effects ]-------;

[State 3000:            Fire, 1]
type           = Explod
trigger1       = AnimElem = 3
anim           = 7020
postype        = p1
pos            = 0, 0
ownpal         = 1
sprpriority    = 5
scale          = const(size.xscale), const(size.yscale)
supermovetime  = 2147483647
pausemovetime  = 2147483647
removeongethit = 1

[State 3000:            Fire, 2]
type           = Explod
trigger1       = AnimElem = 3
anim           = 7021
postype        = p1
pos            = 0, 0
ownpal         = 1
sprpriority    = 4
scale          = const(size.xscale), const(size.yscale)
supermovetime  = 2147483647
pausemovetime  = 2147483647
removeongethit = 1

[State 3000:            Fire, 3]
type           = Explod
trigger1       = AnimElem = 3
anim           = 7022
postype        = p1
pos            = 0, 0
ownpal         = 1
sprpriority    = 3
scale          = const(size.xscale), const(size.yscale)
supermovetime  = 2147483647
pausemovetime  = 2147483647
removeongethit = 1

;-------[ Hit Defs ]-------;

[State 3000:            Catch]
type          = HitDef
trigger1      = AnimElem = 27
attr          = S, HT
hitflag       = MAF
guardflag     =
animtype      = Hard
priority      = 1, Miss
damage        = 0, 0
sparkno       = -1
guard.sparkno = -1
sparkxy       = 0, 0
hitsound      = S7, 31
guardsound    = -1
ground.type   = High
p1stateno     = 3001
p1facing      = 1
p2facing      = 1
p2stateno     = 4990
numhits       = 0
id            = 3000

[State 3000:            Miss]
type        = Helper
trigger1    = AnimElem = 28
helpertype  = Normal
name        = "Arrow"
stateno     = 7010
id          = 7010
postype     = p1
pos         = Floor(43 * const(size.xscale)), Floor(-77 * const(size.yscale))
ownpal      = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3000:            Pause]
type           = ChangeAnim
trigger1       = NumHelper(7010)
trigger1       = Helper(7010),HitPauseTime
value          = Anim
elem           = AnimElemNo(0)
ignorehitpause = 1

;-------[ States ]-------;

[State 3000:            Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; HIT
;------------------------------------------------------------------------------;
[Statedef 3001]
type     = S
movetype = I
physics  = S
anim     = 3001
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 3001:            Width]
type     = Width
trigger1 = 1
edge     = Floor(60 * const(size.xscale)), 0

;-------[ Sounds ]-------;

[State 3001:            Voice, 1, MBAA]
type     = PlaySnd
trigger1 = AnimElem = 2
trigger1 = var(50)
value    = 2, 3001
channel  = 0
volume   = 255

[State 3001:            SE, 1]
type     = PlaySnd
trigger1 = AnimElem = 5
value    = 4, 30
volume   = 255
channel  = 21

[State 3001:            SE, 2]
type     = PlaySnd
trigger1 = AnimElem = 5
value    = 4, 32
volume   = 255
channel  = 22

[State 3001:            Hit SE]
type     = PlaySnd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
value    = 4, 10    ;7, 3 + (Random % 3)
channel  = 7        ;(Random % 7) + 1

;-------[ Effects ]-------;

[State 3000:            Fire, 2]
type          = Explod
trigger1      = AnimElem = 3
anim          = 7021
postype       = p1
pos           = Floor(16 * const(size.xscale)), 0
ownpal        = 1
sprpriority   = 4
scale          = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 3000:            Fire, 1]
type        = Explod
trigger1    = AnimElem = 5
anim        = 7030
id          = 7030
postype     = p1
pos         = Floor(58 * const(size.xscale)), 0
ownpal      = 1
removetime  = -1
bindtime    = -1
sprpriority = 5
scale       = const(size.xscale), const(size.yscale)

[State 3000:            Hit Spark]
type           = Explod
trigger1       = AnimElemTime(6) = 1
trigger2       = AnimElemTime(7) = 1
trigger3       = AnimElemTime(8) = 1
anim           = 6020 + (Random % 8)
postype        = p1
pos            = Floor(58 * const(size.xscale)), Floor(-84 * const(size.yscale))
ownpal         = 1
ontop          = 1
sprpriority    = 100
ignorehitpause = 1

;-------[ Hit Count ]-------;

[State 3000:            Reset Hits]
type     = VarSet
trigger1 = Time = 0
v        = 40
value    = 0

[State 3000:            Count Hits]
type     = VarAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
v        = 40
value    = 1

;-------[ Target ]-------;

[State 3000:            State, 1]
type     = TargetState
trigger1 = Time = 0
id       = 3000
value    = 4100

[State 3000:            State, 2]
type     = TargetState
trigger1 = AnimElem = 6
id       = 3000
value    = 4101

[State 3000:            Bind, 1]
type     = TargetBind
trigger1 = 1
id       = 3000
pos      = Floor(58 * const(size.xscale)), Floor(-84 * const(size.yscale))

[State 3000:            Power, 1]
type     = TargetPowerAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
id       = 3000
value    = Floor(164 * (0.8 ** var(40)) * fvar(11))

[State 3000:            Life, 1]
type     = TargetLifeAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
id       = 3000
value    = Floor(-83 * (0.8 ** var(40)) * fvar(11))

[State 3000:            Hit]
type     = HitAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
value    = 1

;-------[ States ]-------;

[State 3000:            Finish]
type     = ChangeState
trigger1 = Time >= 104
value    = 3002

;------------------------------------------------------------------------------;
; FINISH
;------------------------------------------------------------------------------;
[Statedef 3002]
type     = S
movetype = I
physics  = S
anim     = 3002
ctrl     = 0
velset   = 0, 0

;-------[ Effects ]-------;

[State 3000:            Remove Fire]
type     = RemoveExplod
trigger1 = Time = 0
id       = 7030

[State 3000:            Fire, 1]
type        = Explod
trigger1    = Time = 0
anim        = 7031
id          = 7031
postype     = p1
pos         = Floor(58 * const(size.xscale)), 0
ownpal      = 1
sprpriority = 5
scale       = const(size.xscale), const(size.yscale)

;-------[ Target ]-------;

[State 3000:            State, 1]
type     = TargetState
trigger1 = Time = 0
id       = 3000
value    = 4102

;-------[ Burn Spark ]-------;

[State 3000:            Burn, 1]
type             = Helper
trigger1         = NumTarget(3000)
trigger1         = Time = 0
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070
postype          = p1
pos              = 0, 0
size.height      = Target(3000),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 84
ownpal           = 1

;-------[ States ]-------;

[State 3000:            Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;==============================================================================;
; 赤主・檻髪 (Anothr Arc-Drive)
;==============================================================================;
;------------------------------------------------------------------------------;
; 発動
;------------------------------------------------------------------------------;
[Statedef 3010]
type     = S
movetype = A
physics  = S
anim     = 3000
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = AnimElem = 2
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6501
postype       = p1
pos           = Floor(10 * const(size.xscale)), Floor(-118 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = AnimElem = 2
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(2))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Sounds ]-------;

[State 3000:            Voice, 1]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = ifelse(var(50), 2, 0), ifelse(var(50), 3000, 3001)
channel  = 0
volume   = 255

;-------[ Movement ]-------;

[State 3000:            Invincible]
type     = NotHitBy
trigger1 = AnimElemTime(28) < 0
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

[State 3000:            Attack Dist]
type     = AttackDist
trigger1 = AnimElemTime(28) < 0
value    = 0

;-------[ Effects ]-------;

[State 3000:            Fire, 1]
type           = Explod
trigger1       = AnimElem = 3
anim           = 7020
postype        = p1
pos            = 0, 0
ownpal         = 1
sprpriority    = 5
scale          = const(size.xscale), const(size.yscale)
supermovetime  = 2147483647
pausemovetime  = 2147483647
removeongethit = 1

[State 3000:            Fire, 2]
type           = Explod
trigger1       = AnimElem = 3
anim           = 7021
postype        = p1
pos            = 0, 0
ownpal         = 1
sprpriority    = 4
scale          = const(size.xscale), const(size.yscale)
supermovetime  = 2147483647
pausemovetime  = 2147483647
removeongethit = 1

[State 3000:            Fire, 3]
type           = Explod
trigger1       = AnimElem = 3
anim           = 7022
postype        = p1
pos            = 0, 0
ownpal         = 1
sprpriority    = 3
scale          = const(size.xscale), const(size.yscale)
supermovetime  = 2147483647
pausemovetime  = 2147483647
removeongethit = 1

[State 3000:            Fire]
type        = Helper
trigger1    = AnimElemTime(28) = 0
helpertype  = Normal
name        = "Fire"
stateno     = 7035
id          = 7035
postype     = p1
pos         = 0, 0
ownpal      = 0
keyctrl     = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

;-------[ Hit Defs ]-------;

[State 3000:            Catch]
type          = HitDef
trigger1      = AnimElem = 27
attr          = S, HT
hitflag       = MAF
guardflag     =
animtype      = Hard
priority      = 1, Miss
damage        = 0, 0
sparkno       = -1
guard.sparkno = -1
sparkxy       = 0, 0
hitsound      = S7, 31
guardsound    = -1
ground.type   = High
p1stateno     = 3011
p1facing      = 1
p2facing      = 1
p2stateno     = 4990
numhits       = 0
id            = 3010

[State 3000:            Miss]
type        = Helper
trigger1    = AnimElem = 28
helpertype  = Normal
name        = "Arrow"
stateno     = 7010
id          = 7011
postype     = p1
pos         = Floor(43 * const(size.xscale)), Floor(-77 * const(size.yscale))
ownpal      = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3000:            Pause]
type           = ChangeAnim
trigger1       = NumHelper(7011)
trigger1       = Helper(7011),HitPauseTime
value          = Anim
elem           = AnimElemNo(0)
ignorehitpause = 1

[State 3000:            All-Ground]
type             = Projectile
trigger1         = AnimElem = 28
trigger2         = AnimElem = 30
trigger3         = AnimElem = 32
trigger4         = AnimElem = 34
trigger5         = AnimElem = 36
trigger6         = AnimElem = 38
trigger7         = AnimElem = 40
trigger8         = AnimElem = 42
trigger9         = AnimElem = 44
projid           = 7025
projanim         = 7025
projhitanim      = -1
projremanim      = -1
projremove       = 0
projremovetime   = 4
projhits         = 1
projpriority     = 1
projsprpriority  = 10
projedgebound    = 105
projstagebound   = 105
offset           = 0, 0
velocity         = Vel X, Vel Y
animtype         = Hard
attr             = S, HP
damage           = 7, 1
getpower         = 0, 0
hitflag          = MFD
guardflag        = L
pausetime        = 0, 8
sparkno          = -1   ;S6020 + Random % 8
guard.sparkno    = -1   ;S6061
sparkxy          = 10, -10
hitsound         = S7, 22
guardsound       = S8, 1
ground.type      = Low
ground.hittime   = 19
ground.slidetime = 18
ground.velocity  = -5
guard.ctrltime   = 17
air.hittime      = 18
air.velocity     = -2, -3
air.juggle       = 1
fall.recover     = 1
fall.recovertime = 20
id               = 7025

;-------[ Projectile Controles ]-------;

[State 3010:            Hit Sparks]
type           = Explod
trigger1       = NumProjID(7025)
trigger1       = ProjHitTime(7025) = 1
trigger1       = NumTarget(7025)
anim           = 6020 + (Random % 8)
postype        = p1
pos            = Floor(Pos X - Target(7025),Pos X) * Target(7025),Facing, -25
random         = 20, 20
ownpal         = 1
sprpriority    = 100
ontop          = 1
ignorehitpause = 1
supermovetime  = 2147483647
pausemovetime  = 2147483647

[State 3010:            Guard Sparks]
type           = Explod
trigger1       = NumProjID(7025)
trigger1       = ProjGuardedTime(7025) = 1
trigger1       = NumTarget(7025)
anim           = 6061
postype        = p1
pos            = Floor(Pos X - Target(7025),Pos X) * Target(7025),Facing, -25
facing         = Target(7025),Facing
random         = 20, 20
ownpal         = 1
sprpriority    = 100
ontop          = 1
ignorehitpause = 1
supermovetime  = 2147483647
pausemovetime  = 2147483647

;-------[ States ]-------;

[State 3000:            Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; HIT
;------------------------------------------------------------------------------;
[Statedef 3011]
type     = S
movetype = I
physics  = S
anim     = 3001
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 3001:            Width]
type     = Width
trigger1 = 1
edge     = Floor(60 * const(size.xscale)), 0

;-------[ Sounds ]-------;

[State 3001:            Voice, 1, MBAA]
type     = PlaySnd
trigger1 = AnimElem = 2
trigger1 = var(50)
value    = 2, 3002 + (Random % 2)
channel  = 0
volume   = 255

[State 3001:            SE, 1]
type     = PlaySnd
trigger1 = AnimElem = 5
value    = 4, 30
volume   = 255
channel  = 21

[State 3001:            SE, 2]
type     = PlaySnd
trigger1 = AnimElem = 5
value    = 4, 32
volume   = 255
channel  = 22

[State 3001:            Hit SE]
type     = PlaySnd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
value    = 4, 10    ;7, 3 + (Random % 3)
channel  = 7        ;(Random % 7) + 1

;-------[ Effects ]-------;

[State 3000:            Fire, 2]
type          = Explod
trigger1      = AnimElem = 3
anim          = 7021
postype       = p1
pos           = Floor(16 * const(size.xscale)), 0
ownpal        = 1
sprpriority   = 4
scale          = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 3000:            Fire, 1]
type        = Explod
trigger1    = AnimElem = 5
anim        = 7030
id          = 7030
postype     = p1
pos         = Floor(58 * const(size.xscale)), 0
ownpal      = 1
removetime  = -1
bindtime    = -1
sprpriority = 5
scale       = const(size.xscale), const(size.yscale)

[State 3000:            Hit Spark]
type           = Explod
trigger1       = AnimElemTime(6) = 1
trigger2       = AnimElemTime(7) = 1
trigger3       = AnimElemTime(8) = 1
anim           = 6020 + (Random % 8)
postype        = p1
pos            = Floor(58 * const(size.xscale)), Floor(-84 * const(size.yscale))
ownpal         = 1
ontop          = 1
sprpriority    = 100
ignorehitpause = 1

[State 3000:            Fire]
type        = Helper
triggerall  = !NumHelper(7035)
trigger1    = AnimElemTime(5) = 0
helpertype  = Normal
name        = "Fire"
stateno     = 7035
id          = 7035
postype     = p1
pos         = 0, 0
ownpal      = 0
keyctrl     = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

;-------[ Hit Count ]-------;

[State 3000:            Reset Hits]
type     = VarSet
trigger1 = Time = 0
v        = 40
value    = 0

[State 3000:            Count Hits]
type     = VarAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
v        = 40
value    = 1

;-------[ Target ]-------;

[State 3000:            State, 1]
type     = TargetState
trigger1 = Time = 0
id       = 3010
value    = 4100

[State 3000:            State, 2]
type     = TargetState
trigger1 = AnimElem = 6
id       = 3010
value    = 4101

[State 3000:            Bind, 1]
type     = TargetBind
trigger1 = 1
id       = 3010
pos      = Floor(58 * const(size.xscale)), Floor(-84 * const(size.yscale))

[State 3000:            Power, 1]
type     = TargetPowerAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
id       = 3010
value    = Floor(240 * (0.80 ** var(40)) * fvar(11))

[State 3000:            Life, 1]
type     = TargetLifeAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
id       = 3010
value    = Floor(-120 * (0.80 ** var(40)) * fvar(11))

[State 3000:            Hit]
type     = HitAdd
trigger1 = AnimElemTime(6) % 2 = 1
trigger2 = AnimElemTime(7) % 2 = 1
trigger3 = AnimElemTime(8) % 2 = 1
value    = 1

;--------[ Projectiles ]--------;

[State 3000:            All-Ground]
type             = Projectile
trigger1         = AnimElemTime(6) = 1
trigger2         = AnimElemTime(7) = 1
trigger3         = AnimElemTime(8) = 1
projid           = 7025
projanim         = 7025
projhitanim      = -1
projremanim      = -1
projremove       = 0
projremovetime   = 4
projhits         = 1
projpriority     = 1
projsprpriority  = 10
projedgebound    = 105
projstagebound   = 105
offset           = 0, 0
velocity         = Vel X, Vel Y
animtype         = Hard
attr             = S, HP
damage           = 7, 1
hitflag          = MFD
guardflag        = L
pausetime        = 0, 8
sparkno          = -1   ;S6020 + Random % 8
guard.sparkno    = -1   ;S6061
sparkxy          = 10, -10
hitsound         = S7, 22
guardsound       = S8, 1
ground.type      = Low
ground.hittime   = 19
ground.slidetime = 18
ground.velocity  = -5
guard.ctrltime   = 17
air.hittime      = 18
air.velocity     = -2, -3
air.juggle       = 1
fall.recover     = 1
fall.recovertime = 20
id               = 7025

;-------[ Projectile Controles ]-------;

[State 3010:            Hit Sparks]
type           = Explod
trigger1       = NumProjID(7025)
trigger1       = ProjHitTime(7025) = 1
trigger1       = NumTarget(7025)
anim           = 6020 + (Random % 8)
postype        = p1
pos            = Floor(Pos X - Target(7025),Pos X) * Target(7025),Facing, -25
random         = 20, 20
ownpal         = 1
sprpriority    = 100
ontop          = 1
ignorehitpause = 1
supermovetime  = 2147483647
pausemovetime  = 2147483647

[State 3010:            Guard Sparks]
type           = Explod
trigger1       = NumProjID(7025)
trigger1       = ProjGuardedTime(7025) = 1
trigger1       = NumTarget(7025)
anim           = 6061
postype        = p1
pos            = Floor(Pos X - Target(7025),Pos X) * Target(7025),Facing, -25
facing         = Target(7025),Facing
random         = 20, 20
ownpal         = 1
sprpriority    = 100
ontop          = 1
ignorehitpause = 1
supermovetime  = 2147483647
pausemovetime  = 2147483647

;-------[ States ]-------;

[State 3000:            Finish]
type     = ChangeState
trigger1 = Time >= 140
value    = 3012

;------------------------------------------------------------------------------;
; FINISH
;------------------------------------------------------------------------------;
[Statedef 3012]
type     = S
movetype = I
physics  = S
anim     = 3002
ctrl     = 0
velset   = 0, 0

;-------[ Effects ]-------;

[State 3000:            Remove Fire]
type     = RemoveExplod
trigger1 = Time = 0
id       = 7030

[State 3000:            Fire, 1]
type        = Explod
trigger1    = Time = 0
anim        = 7031
id          = 7031
postype     = p1
pos         = Floor(58 * const(size.xscale)), 0
ownpal      = 1
sprpriority = 5
scale       = const(size.xscale), const(size.yscale)

;-------[ Target ]-------;

[State 3000:            State, 1]
type     = TargetState
trigger1 = Time = 0
id       = 3010
value    = 4102

;-------[ Burn Spark ]-------;

[State 3000:            Burn, 1]
type             = Helper
trigger1         = NumTarget(3010)
trigger1         = Time = 0
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070
postype          = p1
pos              = 0, 0
size.height      = Target(3010),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 84
ownpal           = 1

;-------[ States ]-------;

[State 3000:            Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;==============================================================================;
; 赤主・遍生 (Arc-Drive)
;==============================================================================;
;------------------------------------------------------------------------------;
; 赤主・遍生 (Arc-Drive / 地上)
;------------------------------------------------------------------------------;
[Statedef 3020]
type     = S
movetype = I
physics  = S
anim     = 3020
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = AnimElemTime(2) = 0
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6501
postype       = p1
pos           = Floor(-6 * const(size.xscale)), Floor(-75 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = AnimElem = 2
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(2))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Sounds ]-------;

[State 3000:            Voice, 1 (MBAC)]
type     = PlaySnd
trigger1 = !var(50)
trigger1 = AnimElem = 2
value    = 1, 3001
volume   = 255
channel  = 0

[State 3000:            Voice, 1 (MBAA)]
type     = PlaySnd
trigger1 = var(50)
trigger1 = AnimElem = 2
value    = 2, 3000
volume   = 255
channel  = 0

;-------[ Movement ]-------;

[State 3000:            Not Hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

;-------[ Effects ]-------;

;[State 3020:            Darken]
;type          = Helper
;trigger1      = var(53)
;trigger1      = AnimElemTime(9) = 1
;trigger2      = !var(53)
;trigger2      = AnimElem = 8
;helpertype    = Normal
;name          = "Darken"
;stateno       = 7132
;id            = 7132
;postype       = p1
;pos           = 0, 0
;ownpal        = 0
;supermovetime = 2147483647
;pausemovetime = 2147483647

;-------[ States ]-------;

[State 3020:            ChangeState, 1, Attack]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 3022

;------------------------------------------------------------------------------;
; 赤主・遍生 (Arc-Drive / 空中)
;------------------------------------------------------------------------------;
[Statedef 3021]
type     = A
movetype = I
physics  = N
anim     = 3021
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = Time = 0
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6501
postype       = p1
pos           = Floor(18 * const(size.xscale)), Floor(-86 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = Time = 0
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(2))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Sounds ]-------;

[State 3000:            Voice, 1 (MBAC)]
type     = PlaySnd
trigger1 = !var(50)
trigger1 = AnimElem = 1
value    = 1, 3001
volume   = 255
channel  = 0

[State 3000:            Voice, 1 (MBAA)]
type     = PlaySnd
trigger1 = var(50)
trigger1 = AnimElem = 1
value    = 2, 3000
volume   = 255
channel  = 0

;-------[ Movement ]-------;

[State 3000:            Not Hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

;-------[ Effects ]-------;

;[State 3020:            Darken]
;type          = Helper
;trigger1      = var(53)
;trigger1      = AnimElemTime(8) = 1
;trigger2      = !var(53)
;trigger2      = AnimElem = 7
;helpertype    = Normal
;name          = "Darken"
;stateno       = 7132
;id            = 7132
;postype       = p1
;pos           = 0, 0
;ownpal        = 0
;supermovetime = 2147483647
;pausemovetime = 2147483647

;-------[ States ]-------;

[State 3020:            ChangeState, 1, Attack]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 3022

;------------------------------------------------------------------------------;
; 赤主・遍生 (Arc-Drive) 攻撃
;------------------------------------------------------------------------------;
[Statedef 3022]
type     = A
movetype = A
physics  = N
anim     = 3022
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 3000:            Not Hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

;-------[ Effects ]-------;

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Projectile ]-------;

[State 3022:            Projectile, 1]
type        = Helper
trigger1    = AnimElem = 1
helpertype  = Normal
name        = "Fire"
stateno     = 7130
id          = 7130
postype     = p1
pos         = Floor(0 * const(size.xscale)), Floor(-90 * const(size.yscale))
size.xscale = const(size.xscale) * 1.5
size.yscale = const(size.yscale) * 1.5
ownpal     = 1

;-------[ Hit Pause ]-------;

[State 3022:            Pause]
type     = ChangeAnim
trigger1 = NumHelper(7130)
trigger1 = Helper(7130),MoveContact = 1
value    = 3022
elem     = AnimElemNo(0)

;-------[ States ]-------;

[State 3022:            Fall]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 3025

;------------------------------------------------------------------------------;
; 赤主・遍生 (Arc-Drive) 落下
;------------------------------------------------------------------------------;
[Statedef 3025]
type     = A
movetype = I
physics  = A
anim     = 51
ctrl     = 0

;-------[ Null ]-------;

[State 3025:            Null]
type     = Null
trigger1 = Time = 0


;==============================================================================;
; 赤主・遍生 (Another Arc-Drive)
;==============================================================================;
;------------------------------------------------------------------------------;
; 赤主・遍生 (Another Arc-Drive / 地上)
;------------------------------------------------------------------------------;
[Statedef 3030]
type     = S
movetype = I
physics  = S
anim     = 3020
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = AnimElemTime(2) = 0
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6501
postype       = p1
pos           = Floor(-6 * const(size.xscale)), Floor(-75 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = AnimElem = 2
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(2))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Sounds ]-------;

[State 3000:            Voice, 1 (MBAC)]
type     = PlaySnd
trigger1 = !var(50)
trigger1 = AnimElem = 2
value    = 1, 3100
volume   = 255
channel  = 0

[State 3000:            Voice, 1 (MBAA)]
type     = PlaySnd
trigger1 = var(50)
trigger1 = AnimElem = 2
value    = 2, 3001
volume   = 255
channel  = 0

;-------[ Movement ]-------;

[State 3000:            Not Hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

;-------[ Effects ]-------;

;[State 3020:            Darken]
;type          = Helper
;trigger1      = var(53)
;trigger1      = AnimElemTime(9) = 1
;trigger2      = !var(53)
;trigger2      = AnimElem = 8
;helpertype    = Normal
;name          = "Darken"
;stateno       = 7132
;id            = 7132
;postype       = p1
;pos           = 0, 0
;ownpal        = 0
;supermovetime = 2147483647
;pausemovetime = 2147483647

;-------[ States ]-------;

[State 3020:            ChangeState, 1, Attack]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 3032

;------------------------------------------------------------------------------;
; 赤主・遍生 (Another Arc-Drive / 空中)
;------------------------------------------------------------------------------;
[Statedef 3031]
type     = A
movetype = I
physics  = N
anim     = 3021
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = Time = 0
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6501
postype       = p1
pos           = Floor(18 * const(size.xscale)), Floor(-86 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = Time = 0
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(2))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Sounds ]-------;

[State 3000:            Voice, 1 (MBAC)]
type     = PlaySnd
trigger1 = !var(50)
trigger1 = AnimElem = 1
value    = 1, 3100
volume   = 255
channel  = 0

[State 3000:            Voice, 1 (MBAA)]
type     = PlaySnd
trigger1 = var(50)
trigger1 = AnimElem = 1
value    = 2, 3001
volume   = 255
channel  = 0

;-------[ Movement ]-------;

[State 3000:            Not Hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

;-------[ Effects ]-------;

;[State 3020:            Darken]
;type          = Helper
;trigger1      = var(53)
;trigger1      = AnimElemTime(8) = 1
;trigger2      = !var(53)
;trigger2      = AnimElem = 7
;helpertype    = Normal
;name          = "Darken"
;stateno       = 7132
;id            = 7132
;postype       = p1
;pos           = 0, 0
;ownpal        = 0
;supermovetime = 2147483647
;pausemovetime = 2147483647

;-------[ States ]-------;

[State 3020:            ChangeState, 1, Attack]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 3032

;------------------------------------------------------------------------------;
; 赤主・遍生 (Another Arc-Drive) 攻撃
;------------------------------------------------------------------------------;
[Statedef 3032]
type     = A
movetype = A
physics  = N
anim     = 3032
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 3000:            Not Hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time     = 1

;-------[ Effects ]-------;

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Projectile ]-------;

[State 3022:            Projectile, 1]
type       = Helper
trigger1   = AnimElem = 1
helpertype = Normal
name       = "Fire"
stateno    = 7131
id         = 7131
postype    = p1
pos        = Floor(0 * const(size.xscale)), Floor(-90 * const(size.yscale))
size.xscale = const(size.xscale) * 1.5
size.yscale = const(size.yscale) * 1.5
ownpal     = 1

;-------[ Hit Pause ]-------;

[State 3022:            Pause]
type     = ChangeAnim
trigger1 = NumHelper(7131)
trigger1 = Helper(7131),MoveContact = 1
value    = 3032
elem     = AnimElemNo(0)

;-------[ States ]-------;

[State 3022:            Fall]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 3025


;==============================================================================;
; 赤主遍生・緋の火槌 (Last-Arc)
;==============================================================================;
;------------------------------------------------------------------------------;
; 攻撃
;------------------------------------------------------------------------------;
[Statedef 3100]
type     = S
movetype = A
physics  = S
anim     = 3100
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = Time = 0
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6502
postype       = p1
pos           = Floor(-5 * const(size.xscale)), Floor(-80 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = Time = 0
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(4))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Movement ]-------;

[State 3100:            Not Hit]
type     = NotHitBy
trigger1 = AnimElemTime(7) < 0
value    = SCA, NA, SA, HA, NT, ST, HT, NP, SP, HP
time     = 2

[State 3100:            No Attack]
type      = StateTypeSet
trigger1  = AnimElem = 7
statetype = S
movetype  = I
physics   = S

;-------[ Hit Defs ]-------;

[State 3100:            Hit Def]
type          = HitDef
trigger1      = AnimElem = 4
attr          = S, HT
hitflag       = MA
guardflag     =
animtype      = Hard
priority      = 1, Miss
damage        = 0, 0
sparkno       = -1
guard.sparkno = -1
sparkxy       = 0, 0
hitsound      = S7, 2
guardsound    = S8, 1
ground.type   = High
p1stateno     = 3101
p1facing      = 1
p2stateno     = 4200
p2facing      = 1
numhits       = 0
id            = 3100

;-------[ States ]-------;

[State 3100:            Standing (Miss)]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; 成立
;------------------------------------------------------------------------------;
[Statedef 3101]
type     = S
movetype = I
physics  = S
anim     = 3101
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 3101:            Pos, 1]
type     = PosSet
trigger1 = AnimElem = 3
x        = (32 - 120) * Facing
y        = 0

[State 3101:            Edge]
type     = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(40) < 0
edge     = (240 - 32 - const(size.ground.front)), (32 - const(size.ground.back))

;-------[ Effects ]-------;

[State 3100:            White out]
type          = Helper
trigger1      = Time = 0
name          = "Background"
stateno       = 7090
id            = 7090
postype       = p1
pos           = 0, 0
ownpal        = 0
supermovetime = 2147483647
pausemovetime = 2147483647

[State 3100:            Fire, 1]
type        = Explod
trigger1    = AnimElem = 20
anim        = 7090
id          = 7090
postype     = p1
pos         = 0, 0
scale       = const(size.xscale), const(size.yscale)
ownpal      = 1
removetime  = -1
sprpriority = 5

[State 3100:            Remove Fire, 1]
type     = RemoveExplod
trigger1 = AnimElem = 40
id       = 7090

[State 3100:            Fire, 2]
type        = Explod
trigger1    = AnimElem = 40
anim        = 7091
id          = 7091
postype     = p1
pos         = 0, 0
scale       = const(size.xscale), const(size.yscale)
ownpal      = 1
sprpriority = 5

[State 3100:            Env Shake]
type     = EnvShake
trigger1 = AnimElemTime(20) >= 0
trigger1 = AnimElemTime(44) < 0
trigger1 = Time % 4 = 0
time     = 8
freq     = 60
ampl     = -4

;-------[ Hit Sparks ]-------;

[State 3100:            Spark]
type          = Explod
triggerall    = NumTarget(3100)
trigger1      = AnimElem = 20
trigger2      = AnimElem = 21
trigger3      = AnimElem = 22
trigger4      = AnimElem = 23
trigger5      = AnimElem = 24
trigger6      = AnimElem = 25
trigger7      = AnimElem = 26
trigger8      = AnimElem = 27
trigger9      = AnimElem = 28
trigger10     = AnimElem = 29
trigger11     = AnimElem = 30
trigger12     = AnimElem = 31
trigger13     = AnimElem = 32
trigger14     = AnimElem = 33
trigger15     = AnimElem = 34
trigger16     = AnimElem = 35
trigger17     = AnimElem = 36
trigger18     = AnimElem = 37
trigger19     = AnimElem = 38
trigger20     = AnimElem = 39
anim          = 6020 + (Random % 8)
postype       = p1
pos           = Ceil(Abs(Pos X - Target(3100),Pos X)), Ceil(0 - Abs(Pos Y - Target(3100),Pos Y) + Target(3100),const(size.mid.pos.y))
random        = 40, 60
ownpal        = 1
ontop         = 1
supermovetime = 2147483647
pausemovetime = 2147483647

[State 3100:            Spark, 2]
type          = Explod
triggerall    = !NumTarget(3100)
trigger1      = AnimElem = 20
trigger2      = AnimElem = 21
trigger3      = AnimElem = 22
trigger4      = AnimElem = 23
trigger5      = AnimElem = 24
trigger6      = AnimElem = 25
trigger7      = AnimElem = 26
trigger8      = AnimElem = 27
trigger9      = AnimElem = 28
trigger10     = AnimElem = 29
trigger11     = AnimElem = 30
trigger12     = AnimElem = 31
trigger13     = AnimElem = 32
trigger14     = AnimElem = 33
trigger15     = AnimElem = 34
trigger16     = AnimElem = 35
trigger17     = AnimElem = 36
trigger18     = AnimElem = 37
trigger19     = AnimElem = 38
trigger20     = AnimElem = 39
anim          = 6020 + (Random % 8)
postype       = p2
pos           = 0, -70
random        = 40, 60
ownpal        = 1
ontop         = 1
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ Sounds ]-------;

[State 3100:            SE, 1]
type     = PlaySnd
trigger1 = AnimElem = 20
value    = 4, 33
channel  = 20
volume   = 255

[State 3100:            Voice, 1, MBAC]
type     = PlaySnd
trigger1 = AnimElem = 1
trigger1 = !var(50)
value    = 0, 3100
channel  = 0
volume   = 255

[State 3100:            Voice, 1, MBAA]
type     = PlaySnd
trigger1 = AnimElem = 6
trigger1 = var(50)
value    = 2, 3100 + (Random % 3)
channel  = 0
volume   = 255

[State 3100:            Hit Sounds]
type      = PlaySnd
trigger1  = AnimElem = 20
trigger2  = AnimElem = 21
trigger3  = AnimElem = 22
trigger4  = AnimElem = 23
trigger5  = AnimElem = 24
trigger6  = AnimElem = 25
trigger7  = AnimElem = 26
trigger8  = AnimElem = 27
trigger9  = AnimElem = 28
trigger10 = AnimElem = 29
trigger11 = AnimElem = 30
trigger12 = AnimElem = 31
trigger13 = AnimElem = 32
trigger14 = AnimElem = 33
trigger15 = AnimElem = 34
trigger16 = AnimElem = 35
trigger17 = AnimElem = 36
trigger18 = AnimElem = 37
trigger19 = AnimElem = 38
value     = 7, 22
channel   = 7

;-------[ Target ]-------;

[State 3100:            State, 1]
type     = TargetBind
trigger1 = AnimElem = 3
id       = 3100
value    = 4201

[State 3100:            State, 2]
type     = TargetState
trigger1 = AnimElem = 40
id       = 3100
value    = 4202

[State 3100:            Bind, 1]
type     = TargetBind
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(40) < 0
trigger1 = NumTarget(3100)
id       = 3100
pos      = Floor(135 * const(size.xscale)), Floor(-110 * const(size.yscale) - Target(3100),const(size.mid.pos.y))

[State 3100:            Power]
type       = TargetPowerAdd
triggerall = NumTarget(3100)
trigger1   = AnimElem = 20
trigger2   = AnimElem = 21
trigger3   = AnimElem = 22
trigger4   = AnimElem = 23
trigger5   = AnimElem = 24
trigger6   = AnimElem = 25
trigger7   = AnimElem = 26
trigger8   = AnimElem = 27
trigger9   = AnimElem = 28
trigger10  = AnimElem = 29
trigger11  = AnimElem = 30
trigger12  = AnimElem = 31
trigger13  = AnimElem = 32
trigger14  = AnimElem = 33
trigger15  = AnimElem = 34
trigger16  = AnimElem = 35
trigger17  = AnimElem = 36
trigger18  = AnimElem = 37
trigger19  = AnimElem = 38
trigger20  = AnimElem = 39
id         = 3100
value      = Floor(0 - Target(3100),PowerMax / 20)

[State 3100:            Damage]
type       = TargetLifeAdd
triggerall = NumTarget(3100)
trigger1   = AnimElem = 20
trigger2   = AnimElem = 21
trigger3   = AnimElem = 22
trigger4   = AnimElem = 23
trigger5   = AnimElem = 24
trigger6   = AnimElem = 25
trigger7   = AnimElem = 26
trigger8   = AnimElem = 27
trigger9   = AnimElem = 28
trigger10  = AnimElem = 29
trigger11  = AnimElem = 30
trigger12  = AnimElem = 31
trigger13  = AnimElem = 32
trigger14  = AnimElem = 33
trigger15  = AnimElem = 34
trigger16  = AnimElem = 35
trigger17  = AnimElem = 36
trigger18  = AnimElem = 37
trigger19  = AnimElem = 38
id         = 3100
kill       = 0
value      = 0 - Ceil(Target(3100),LifeMax * 0.495 * 0.05 * (fvar(1) * fvar(2)))
absolute   = 1

[State 3100:            Damage, 2]
type       = TargetLifeAdd
triggerall = NumTarget(3100)
trigger1   = AnimElem = 39
id         = 3100
kill       = 1
value      = 0 - Ceil(Target(3100),LifeMax * 0.495 * 0.1 * (fvar(1) * fvar(2)))
absolute   = 1

[State 3100:            Hit Add]
type      = HitAdd
trigger1  = AnimElem = 20
trigger2  = AnimElem = 21
trigger3  = AnimElem = 22
trigger4  = AnimElem = 23
trigger5  = AnimElem = 24
trigger6  = AnimElem = 25
trigger7  = AnimElem = 26
trigger8  = AnimElem = 27
trigger9  = AnimElem = 28
trigger10 = AnimElem = 29
trigger11 = AnimElem = 30
trigger12 = AnimElem = 31
trigger13 = AnimElem = 32
trigger14 = AnimElem = 33
trigger15 = AnimElem = 34
trigger16 = AnimElem = 35
trigger17 = AnimElem = 36
trigger18 = AnimElem = 37
trigger19 = AnimElem = 38
trigger20 = AnimElem = 39
value     = 1

;-------[ States ]-------;

[State 3101:            Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;==============================================================================;
; 赤主遍生・朱宴ノ良坂
;==============================================================================;
;------------------------------------------------------------------------------;
; 攻撃
;------------------------------------------------------------------------------;
[Statedef 3110]
type     = S
movetype = A
physics  = N
anim     = 3110
ctrl     = 0
velset   = 0, 0

;-------[ Hyper Effects ]-------;

[State 2000:            Hyper Effect]
type          = Helper
trigger1      = AnimElem = 2
helpertype    = Normal
name          = "Hyper Effect"
stateno       = 6550
id            = 6502
postype       = p1
pos           = Floor(-5 * const(size.xscale)), Floor(-80 * const(size.yscale))
ownpal        = 0
keyctrl       = 0
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)
pausemovetime = 2147483647
supermovetime = 2147483647

[State 2000:            Super Pause]
type     = SuperPause
trigger1 = AnimElem = 2
time     = 48
movetime = 48
anim     = -1
sound    = -1
darken   = 0
p2defmul = fvar(39)
poweradd = -Abs(var(4))

[State 2000:            After Image]
type        = AfterImage
trigger1    = Time = 0
time        = 13
timegap     = 1
framegap    = 8
length      = 25
palbright   = 1, 1, 1
palcontrast = 150, 50, 50
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
trans       = Add1

[State 2000:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;-------[ Movement ]-------;

[State 3100:            Not Hit]
type     = NotHitBy
trigger1 = AnimElemTime(11) < 0
value    = SCA, NA, SA, HA, NT, ST, HT, NP, SP, HP
time     = 2

[State 3100:            No Attack]
type      = StateTypeSet
trigger1  = AnimElem = 11
statetype = S
movetype  = I
physics   = S

;------[ Sounds ]-------;

[State 3110:            Voice, 1]
type     = PlaySnd
trigger1 = AnimElem = 11
value    = 1 + var(50), 1
channel  = 0

;-------[ Hit Defs ]-------;

[State 3100:            Hit Def]
type             = HitDef
trigger1         = AnimElem = 10
attr             = S, HT
hitflag          = MAF
guardflag        =
animtype         = Hard
priority         = 1, Miss
pausetime        = 0, 9
damage           = 0, 0
getpower         = 0, 0
sparkno          = -1   ;S6020 + Random % 8
guard.sparkno    = -1   ;S6061
sparkxy          = -20, Floor(-60 * const(size.yscale))
hitsound         = S7, 2
guardsound       = S8, 1
ground.type      = High
ground.slidetime = 21
ground.hittime   = 20
guard.ctrltime   = 19
guard.velocity   = -5
air.hittime      = 20
p1stateno        = 3111
p1facing         = 1
p2stateno        = 4200
p2facing         = 1
numhits          = 0
id               = 3110

;-------[ States ]-------;

[State 3100:            Standing (Miss)]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; 成立
;------------------------------------------------------------------------------;
[Statedef 3111]
type     = S
movetype = I
physics  = S
anim     = 3111
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 3101:            Pos, 1]
type     = PosSet
trigger1 = AnimElem = 3
x        = (32 - 140) * Facing
y        = 0

[State 3101:            Edge]
type     = Width
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(40) < 0
edge     = (280 - 32 - const(size.ground.front)), (32 - const(size.ground.back))

;-------[ Effects ]-------;

[State 3100:            White out]
type          = Helper
trigger1      = Time = 0
name          = "Background"
stateno       = 7090
id            = 7091
postype       = p1
pos           = 0, 0
ownpal        = 0
supermovetime = 2147483647
pausemovetime = 2147483647

[State 3100:            Fire, 1]
type        = Explod
trigger1    = AnimElem = 19
anim        = 7210
id          = 7210
postype     = p1
pos         = Floor(110 * const(size.xscale)), 0
scale       = const(size.xscale), const(size.yscale)
ownpal      = 1
removetime  = -1
sprpriority = 5

[State 3100:            Remove Fire, 1]
type     = RemoveExplod
trigger1 = AnimElem = 40
id       = 7210

[State 3100:            Fire, 2]
type        = Explod
trigger1    = AnimElem = 40
anim        = 7211
id          = 7211
postype     = p1
pos         = Floor(110 * const(size.xscale)), 0
scale       = const(size.xscale), const(size.yscale)
ownpal      = 1
sprpriority = 5

[State 3100:            Env Shake]
type     = EnvShake
trigger1 = AnimElemTime(20) >= 0
trigger1 = AnimElemTime(44) < 0
trigger1 = Time % 4 = 0
time     = 8
freq     = 60
ampl     = -4

[State 3110:            Rings]
type        = Explod
trigger1    = AnimElemTime(3) >= 0
trigger1    = AnimElemTime(15) < 0
anim        = 7220
id          = 7220
postype     = p1
pos         = Ceil((185 + 75 - (Random % 150)) * const(size.xscale)), Ceil((-20 + (Random % 40)) * const(size.yscale))
ownpal      = 1
scale       = const(size.xscale), const(size.yscale)
sprpriority = 1
persistent  = 6

;-------[ Hit Sparks ]-------;

[State 3100:            Spark]
type          = Explod
triggerall    = NumTarget(3110)
trigger1      = AnimElem = 20
trigger2      = AnimElem = 21
trigger3      = AnimElem = 22
trigger4      = AnimElem = 23
trigger5      = AnimElem = 24
trigger6      = AnimElem = 25
trigger7      = AnimElem = 26
trigger8      = AnimElem = 27
trigger9      = AnimElem = 28
trigger10     = AnimElem = 29
trigger11     = AnimElem = 30
trigger12     = AnimElem = 31
trigger13     = AnimElem = 32
trigger14     = AnimElem = 33
trigger15     = AnimElem = 34
trigger16     = AnimElem = 35
trigger17     = AnimElem = 36
trigger18     = AnimElem = 37
trigger19     = AnimElem = 38
trigger20     = AnimElem = 39
anim          = 6050 + (Random % 8)
postype       = p1
pos           = Ceil(Abs(Pos X - Target(3110),Pos X)), Ceil(0 - Abs(Pos Y - Target(3110),Pos Y) + Target(3110),const(size.mid.pos.y))
random        = 60, 80
ownpal        = 1
ontop         = 1
supermovetime = 2147483647
pausemovetime = 2147483647

[State 3100:            Spark, 2]
type          = Explod
triggerall    = !NumTarget(3110)
trigger1      = AnimElem = 20
trigger2      = AnimElem = 21
trigger3      = AnimElem = 22
trigger4      = AnimElem = 23
trigger5      = AnimElem = 24
trigger6      = AnimElem = 25
trigger7      = AnimElem = 26
trigger8      = AnimElem = 27
trigger9      = AnimElem = 28
trigger10     = AnimElem = 29
trigger11     = AnimElem = 30
trigger12     = AnimElem = 31
trigger13     = AnimElem = 32
trigger14     = AnimElem = 33
trigger15     = AnimElem = 34
trigger16     = AnimElem = 35
trigger17     = AnimElem = 36
trigger18     = AnimElem = 37
trigger19     = AnimElem = 38
trigger20     = AnimElem = 39
anim          = 6050 + (Random % 8)
postype       = p2
pos           = 0, -70
random        = 60, 80
ownpal        = 1
ontop         = 1
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ Sounds ]-------;

[State 3100:            SE, 1]
type     = PlaySnd
trigger1 = AnimElem = 20
value    = 4, 33
channel  = 20
volume   = 255

[State 3100:            Voice, 1, MBAC]
type     = PlaySnd
trigger1 = AnimElem = 1
trigger1 = !var(50)
value    = 0, 3100
channel  = 0
volume   = 255

[State 3100:            Voice, 1, MBAA]
type     = PlaySnd
trigger1 = AnimElem = 6
trigger1 = var(50)
value    = 2, 3100 + (Random % 3)
channel  = 0
volume   = 255

[State 3100:            Hit Sounds]
type      = PlaySnd
trigger1  = AnimElem = 20
trigger2  = AnimElem = 21
trigger3  = AnimElem = 22
trigger4  = AnimElem = 23
trigger5  = AnimElem = 24
trigger6  = AnimElem = 25
trigger7  = AnimElem = 26
trigger8  = AnimElem = 27
trigger9  = AnimElem = 28
trigger10 = AnimElem = 29
trigger11 = AnimElem = 30
trigger12 = AnimElem = 31
trigger13 = AnimElem = 32
trigger14 = AnimElem = 33
trigger15 = AnimElem = 34
trigger16 = AnimElem = 35
trigger17 = AnimElem = 36
trigger18 = AnimElem = 37
trigger19 = AnimElem = 38
value     = 7, 8
channel   = 7

;-------[ Target ]-------;

[State 3100:            State, 1]
type     = TargetBind
trigger1 = AnimElem = 3
id       = 3110
value    = 4201

[State 3100:            State, 2]
type     = TargetState
trigger1 = AnimElem = 40
id       = 3110
value    = 4202

[State 3100:            Bind, 1]
type     = TargetBind
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(40) < 0
trigger1 = NumTarget(3110)
id       = 3110
pos      = Floor(155 * const(size.xscale)), Floor(-110 * const(size.yscale) - Target(3110),const(size.mid.pos.y))

[State 3100:            Power]
type       = TargetPowerAdd
triggerall = NumTarget(3110)
trigger1   = AnimElem = 20
trigger2   = AnimElem = 21
trigger3   = AnimElem = 22
trigger4   = AnimElem = 23
trigger5   = AnimElem = 24
trigger6   = AnimElem = 25
trigger7   = AnimElem = 26
trigger8   = AnimElem = 27
trigger9   = AnimElem = 28
trigger10  = AnimElem = 29
trigger11  = AnimElem = 30
trigger12  = AnimElem = 31
trigger13  = AnimElem = 32
trigger14  = AnimElem = 33
trigger15  = AnimElem = 34
trigger16  = AnimElem = 35
trigger17  = AnimElem = 36
trigger18  = AnimElem = 37
trigger19  = AnimElem = 38
trigger20  = AnimElem = 39
id         = 3110
value      = Floor(0 - Target(3110),PowerMax / 20)

[State 3100:            Damage]
type       = TargetLifeAdd
triggerall = NumTarget(3110)
trigger1   = AnimElem = 20
trigger2   = AnimElem = 21
trigger3   = AnimElem = 22
trigger4   = AnimElem = 23
trigger5   = AnimElem = 24
trigger6   = AnimElem = 25
trigger7   = AnimElem = 26
trigger8   = AnimElem = 27
trigger9   = AnimElem = 28
trigger10  = AnimElem = 29
trigger11  = AnimElem = 30
trigger12  = AnimElem = 31
trigger13  = AnimElem = 32
trigger14  = AnimElem = 33
trigger15  = AnimElem = 34
trigger16  = AnimElem = 35
trigger17  = AnimElem = 36
trigger18  = AnimElem = 37
trigger19  = AnimElem = 38
id         = 3110
kill       = 0
value      = 0 - Ceil(Target(3110),LifeMax * 0.495 * 0.05 * (fvar(1) * fvar(2)))
absolute   = 1

[State 3100:            Damage, 2]
type       = TargetLifeAdd
triggerall = NumTarget(3110)
trigger1   = AnimElem = 39
id         = 3110
kill       = 1
value      = 0 - Ceil(Target(3110),LifeMax * 0.495 * 0.1 * (fvar(1) * fvar(2)))
absolute   = 1

[State 3100:            Hit Add]
type      = HitAdd
trigger1  = AnimElem = 20
trigger2  = AnimElem = 21
trigger3  = AnimElem = 22
trigger4  = AnimElem = 23
trigger5  = AnimElem = 24
trigger6  = AnimElem = 25
trigger7  = AnimElem = 26
trigger8  = AnimElem = 27
trigger9  = AnimElem = 28
trigger10 = AnimElem = 29
trigger11 = AnimElem = 30
trigger12 = AnimElem = 31
trigger13 = AnimElem = 32
trigger14 = AnimElem = 33
trigger15 = AnimElem = 34
trigger16 = AnimElem = 35
trigger17 = AnimElem = 36
trigger18 = AnimElem = 37
trigger19 = AnimElem = 38
trigger20 = AnimElem = 39
value     = 1

;-------[ States ]-------;

[State 3101:            Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date$
;==============================================================================;
