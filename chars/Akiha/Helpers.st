; vim: set ts=4 sw=4 sts=4 expandtab: =========================================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;==============================================================================;
; HITエフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; 燃焼エフェクト
;
; Params:
; size.ground.back : 表示時間
; size.height      : 相手ID
;------------------------------------------------------------------------------;
[Statedef 6070]
type        = A
movetype    = I
physics     = N
ctrl        = 0
anim        = 6070
sprpriority = 5

;-------[ Vars ]-------;

[State 6070:            Target ID]
type     = VarSet
trigger1 = Time = 0
v        = 0
value    = const(size.height)

[State 6070:            Time]
type     = VarSet
trigger1 = Time = 0
v        = 1
value    = const(size.ground.back)

;-------[ Movement ]-------;

[State 6070:            No Push]
type     = PlayerPush
trigger1 = 1
value    = 0

[State 6070:            Scaling]
type     = AngleDraw
trigger1 = PlayerIDExist(var(0))
scale    = PlayerID(var(0)),const(size.xscale) / const(size.xscale), PlayerID(var(0)),const(size.yscale) / const(size.yscale)

[State 6070:            Trans]
type     = Trans
trigger1 = 1
trans    = Add

;-------[ Bind ]-------;

[State 6070:            Pos]
type       = PosSet
trigger1   = PlayerIDExist(var(0))
x          = PlayerID(var(0)),Pos X
y          = PlayerID(var(0)),Pos Y + PlayerID(var(0)),const(size.mid.pos.y)
persistent = 1

;-------[ Anim ]-------;

[State 6070:            ChangeAnim]
type     = ChangeAnim
trigger1 = AnimElem = 19
trigger1 = Time < var(1)
value    = 6070
elem     = 1

;-------[ States ]-------;

[State 6070:            Destroy]
type     = DestroySelf
trigger1 = Time = 0
trigger1 = !PlayerIDExist(var(0))
trigger2 = AnimTime = 0


;==============================================================================;
; 超必殺技エフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; 超必殺技エフェクト (SNK, 通常)
;------------------------------------------------------------------------------;
[Statedef 6500]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 6500:            No Shadow, Invisible]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

;-------[ Sounds ]-------;

[State 6500:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 10, 11
channel  = 2
;volume   = 255

;-------[ Effects ]-------;

[State 6500:            NoSprs]
type     = AssertSpecial
trigger1 = 1
flag     = NoBG
flag2    = NoFG
flag3    = GlobalNoShadow

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6500
id            = 6500
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 0
trigger2      = Time = 5
trigger3      = Time = 10
trigger4      = Time = 15
anim          = 6503
id            = 6503
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 1
anim          = 6502
id            = 6502
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 1
anim          = 6504
id            = 6504
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 98
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6500:            Remove]
type     = RemoveExplod
trigger1 = Time = 48
id       = 6504

[State 6500:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48

;------------------------------------------------------------------------------;
; 超必殺技エフェクト (SNK, Lv2 (でっちあげ))
;------------------------------------------------------------------------------;
[Statedef 6501]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 6500:            No Shadow, Invisible]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

;-------[ Sounds ]-------;

[State 6500:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 10, 11
channel  = 2
;volume   = 255

;-------[ Effects ]-------;

[State 6500:            NoSprs]
type     = AssertSpecial
trigger1 = 1
flag     = NoBG
flag2    = NoFG
flag3    = GlobalNoShadow

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6500
id            = 6500
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 0
trigger2      = Time = 5
trigger3      = Time = 10
trigger4      = Time = 15
anim          = 6503
id            = 6503
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 1
trigger2      = Time = 13
anim          = 6502
id            = 6502
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 1
trigger2      = Time = 13
anim          = 6504
id            = 6504
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 98
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6500:            Remove]
type     = RemoveExplod
trigger1 = Time = 48
id       = 6504

[State 6500:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48


;------------------------------------------------------------------------------;
; 超必殺技エフェクト (SNK, MAX)
;------------------------------------------------------------------------------;
[Statedef 6502]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 6500:            No Shadow, Invisible]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

;-------[ Sounds ]-------;

[State 6500:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 10, 11
channel  = 2
;volume   = 255

;-------[ Effects ]-------;

[State 6500:            NoSprs]
type     = AssertSpecial
trigger1 = 1
flag     = NoBG
flag2    = NoFG
flag3    = GlobalNoShadow

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6500
id            = 6500
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 0
trigger2      = Time = 5
trigger3      = Time = 10
trigger4      = Time = 15
anim          = 6503
id            = 6503
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 1
trigger2      = Time = 7
trigger3      = Time = 13
trigger4      = Time = 19
anim          = 6502
id            = 6502
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 1
trigger2      = Time = 7
trigger3      = Time = 13
trigger4      = Time = 19
anim          = 6504
id            = 6504
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 98
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6500:            Remove]
type     = RemoveExplod
trigger1 = Time = 48
id       = 6504

[State 6500:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48

;------------------------------------------------------------------------------;
; 超必殺技エフェクト (CAP, Level1)
;------------------------------------------------------------------------------;
[Statedef 6510]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 6500:            No Shadow, Invisible]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

;-------[ Sounds ]-------;

[State 6500:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 10, 10
channel  = 2
;volume   = 255

;-------[ Effects ]-------;

[State 6500:            Invert BG]
type           = BGPalFX
trigger1       = 1
time           = 1
invertall      = 1
ignorehitpause = 1

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6500
id            = 6500
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6501
id            = 6501
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 0
trigger2      = Time = 5
trigger3      = Time = 10
trigger4      = Time = 15
anim          = 6503
id            = 6503
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6500:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48

;------------------------------------------------------------------------------;
; 超必殺技エフェクト (CAP, Level2)
;------------------------------------------------------------------------------;
[Statedef 6511]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 6500:            No Shadow, Invisible]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

;-------[ Sounds ]-------;

[State 6500:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 10, 10
channel  = 2
;volume   = 255

;-------[ Effects ]-------;

[State 6500:            Invert BG]
type           = BGPalFX
trigger1       = 1
time           = 1
invertall      = 1
ignorehitpause = 1

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6500
id            = 6500
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6501
id            = 6501
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 0
trigger2      = Time = 5
trigger3      = Time = 10
trigger4      = Time = 15
anim          = 6503
id            = 6503
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6510
id            = 6510
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6511
id            = 6511
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6512
id            = 6512
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6500:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48

;------------------------------------------------------------------------------;
; 超必殺技エフェクト (CAP, Level3)
;------------------------------------------------------------------------------;
[Statedef 6512]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0
velset   = 0, 0

;-------[ Movement ]-------;

[State 6500:            No Shadow, Invisible]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

;-------[ Sounds ]-------;

[State 6500:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 10, 10
channel  = 2
;volume   = 255

;-------[ Effects ]-------;

[State 6500:            Invert BG]
type           = BGPalFX
trigger1       = 1
time           = 1
invertall      = 1
ignorehitpause = 1

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6500
id            = 6500
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Foundation]
type          = Explod
trigger1      = Time = 0
anim          = 6501
id            = 6501
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Rings]
type          = Explod
trigger1      = Time = 0
trigger2      = Time = 5
trigger3      = Time = 10
trigger4      = Time = 15
anim          = 6503
id            = 6503
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 99
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6510
id            = 6510
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6511
id            = 6511
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6512
id            = 6512
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6513
id            = 6513
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6514
id            = 6514
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6500:            Hyper-Effect Flash]
type          = Explod
trigger1      = Time = 3
anim          = 6515
id            = 6515
ownpal        = 1
postype       = p1
pos           = 0, 0
bindtime      = -1
sprpriority   = 100
ontop         = 1
scale         = const(size.xscale), const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6500:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48

;------------------------------------------------------------------------------;
; 超必殺技エフェクト 呼び出しヘルパー
;------------------------------------------------------------------------------;
[Statedef 6550]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ State ]-------;

[State 6550:            Select Hyper Effect Lv.2]
type       = ChangeState
triggerall = Time = 0
trigger1   = IsHelper(6501)
value      = 6501 + (Root,var(53) != 0) * 10

[State 6550:            Select Hyper Effect Lv.3]
type       = ChangeState
triggerall = Time = 0
trigger1   = IsHelper(6502)
value      = 6502 + (Root,var(53) != 0) * 10

[State 6550:            Normal Hyper Effect Lv.1]
type     = ChangeState
trigger1 = Time = 0
value    = 6500 + (Root,var(53) != 0) * 10


;==============================================================================;
; キャンセルエフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; スーパーキャンセル
;------------------------------------------------------------------------------;
[Statedef 6600]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 6600:            In Visible]
type     = AssertSpecial
trigger1 = 1
flag     = InVisible
flag2    = NoShadow

;-------[ States ]-------;

[State 6600:            Destroy]
type     = DestroySelf
trigger1 = Root,MoveType = H
trigger2 = Root,StateNo != 2000
trigger2 = Root,StateNo != 2010
trigger2 = Root,StateNo != 2020
trigger2 = Root,StateNo != 2030
trigger2 = Root,StateNo != 2040
trigger2 = Root,StateNo != 2050
trigger2 = Root,StateNo != 2070
trigger2 = Root,StateNo != 2080
trigger2 = Root,StateNo != 2120
trigger2 = Root,StateNo != 2130
trigger2 = Root,StateNo != 3000
trigger2 = Root,StateNo != 3010
trigger2 = Root,StateNo != 3020
trigger2 = Root,StateNo != 3021
trigger2 = Root,StateNo != 3030
trigger2 = Root,StateNo != 3031

[State 6600:            State, 1, Effect]
type     = ChangeState
trigger1 = Root,NumHelper(6500)
trigger2 = Root,NumHelper(6501)
trigger3 = Root,NumHelper(6502)
value    = 6601

;------------------------------------------------------------------------------;
; スーパーキャンセル 表示
;------------------------------------------------------------------------------;
[Statedef 6601]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 6600:            In Visible]
type     = AssertSpecial
trigger1 = 1
flag     = InVisible
flag2    = NoShadow

;-------[ Effects ]-------;

[State 6600:            Strings]
type          = Explod
trigger1      = Time = 0
anim          = 6600
id            = 6600
postype       = Left
pos           = 65, Ceil(Const240p(46))
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
ownpal        = 1
facing        = 1
sprpriority   = -9
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6600:            Frame]
type          = Explod
trigger1      = Time = 0
anim          = 6601
id            = 6600
postype       = Left
pos           = -5, Ceil(Const240p(45))
scale         = Const240p(1) * 1.5, Const240p(1) * 1.0
ownpal        = 1
facing        = 1
sprpriority   = -10
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6600:            BG]
type          = Explod
trigger1      = Time = 0
anim          = 6602
id            = 6600
postype       = Left
pos           = -150, Ceil(Const240p(45))
scale         = Const240p(1) * 1.5, Const240p(1) * 1.0
ownpal        = 1
facing        = 1
sprpriority   = -11
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6600:            Destroy]
type     = DestroySelf
trigger1 = Time >= 57

;------------------------------------------------------------------------------;
; ドリームキャンセル
;------------------------------------------------------------------------------;
[Statedef 6610]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 6600:            In Visible]
type     = AssertSpecial
trigger1 = 1
flag     = InVisible
flag2    = NoShadow

;-------[ States ]-------;

[State 6600:            Destroy]
type     = DestroySelf
trigger1 = Root,MoveType = H
trigger2 = Root,StateNo != 3000
trigger2 = Root,StateNo != 3010
trigger2 = Root,StateNo != 3020
trigger2 = Root,StateNo != 3021
trigger2 = Root,StateNo != 3030
trigger2 = Root,StateNo != 3031

[State 6600:            State, 1, Effect]
type     = ChangeState
trigger1 = Root,NumHelper(6500)
trigger2 = Root,NumHelper(6501)
trigger3 = Root,NumHelper(6502)
value    = 6611

;------------------------------------------------------------------------------;
; ドリームキャンセル 表示
;------------------------------------------------------------------------------;
[Statedef 6611]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 6600:            In Visible]
type     = AssertSpecial
trigger1 = 1
flag     = InVisible
flag2    = NoShadow

;-------[ Effects ]-------;

[State 6600:            Strings]
type          = Explod
trigger1      = Time = 0
anim          = 6610
id            = 6610
postype       = Left
pos           = -5, Ceil(Const240p(45))
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
ownpal        = 1
facing        = 1
sprpriority   = -9
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6600:            Frame]
type          = Explod
trigger1      = Time = 0
anim          = 6611
id            = 6610
postype       = Left
pos           = 0, Ceil(Const240p(45))
scale         = Const240p(1) * 1.5, Const240p(1) * 1.0
ownpal        = 1
facing        = 1
sprpriority   = -10
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6600:            BG]
type          = Explod
trigger1      = Time = 0
anim          = 6612
id            = 6610
postype       = Left
pos           = -150, Ceil(Const240p(45))
scale         = Const240p(1) * 1.5, Const240p(1) * 1.0
ownpal        = 1
facing        = 1
sprpriority   = -11
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 6600:            Destroy]
type     = DestroySelf
trigger1 = Time >= 57


;==============================================================================;
; カットイン
;==============================================================================;
;------------------------------------------------------------------------------;
; Exエッジ カットイン
;------------------------------------------------------------------------------;
[Statedef 6900]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Vars ]-------;

[State 6900:            Id]
type     = VarSet
trigger1 = Time = 0
trigger1 = IsHelper(6900)
v        = 0
value    = 6900

[State 6900:            Id, 2]
type     = VarSet
trigger1 = Time = 0
trigger1 = IsHelper(6910)
v        = 0
value    = 6910

;-------[ Effects ]-------;

[State 6900:            Red]
type          = Explod
trigger1      = Time = 0
trigger1      = Root,Facing = 1
anim          = var(0)
id            = 6900
postype       = Left
pos           = 0, Ceil(Const240p(240))
ownpal        = 1
removetime    = 48
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
facing        = 1
sprpriority   = -99
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6900:            Red]
type          = Explod
trigger1      = Time = 0
trigger1      = Root,Facing = -1
anim          = var(0)
id            = 6900
postype       = Right
pos           = 0, Ceil(Const240p(240))
ownpal        = 1
removetime    = 48
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
facing        = -1
sprpriority   = -99
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6900:            Green]
type          = Explod
trigger1      = Time = 0
trigger1      = Root,Facing = 1
anim          = var(0) + 1
id            = 6900
postype       = Left
pos           = 0, Ceil(Const240p(240))
ownpal        = 1
removetime    = 48
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
facing        = 1
sprpriority   = -99
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6900:            Green]
type          = Explod
trigger1      = Time = 0
trigger1      = Root,Facing = -1
anim          = var(0) + 1
id            = 6900
postype       = Right
pos           = 0, Ceil(Const240p(240))
ownpal        = 1
removetime    = 48
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
facing        = -1
sprpriority   = -99
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6900:            Blue]
type          = Explod
trigger1      = Time = 0
trigger1      = Root,Facing = 1
anim          = var(0) + 2
id            = 6900
postype       = Left
pos           = 0, Ceil(Const240p(240))
ownpal        = 1
removetime    = 48
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
facing        = 1
sprpriority   = -99
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6900:            Blue]
type          = Explod
trigger1      = Time = 0
trigger1      = Root,Facing = -1
anim          = var(0) + 2
id            = 6900
postype       = Right
pos           = 0, Ceil(Const240p(240))
ownpal        = 1
removetime    = 48
scale         = Const240p(1) * 0.5, Const240p(1) * 0.5
facing        = -1
sprpriority   = -99
supermovetime = 2147483647
pausemovetime = 2147483647

[State 6900:            Fade]
type     = ModifyExplod
trigger1 = Time > 24
id       = 6900
scale    = Const240p(1) * 0.5 + (Time - 24) * 0.01, Const240p(1) * 0.5 + (Time - 24) * 0.01
trans    = AddAlpha
alpha    = 256 - (Time - 24) * 16, 256

;-------[ States ]-------;

[State 6900:            Destroy]
type     = DestroySelf
trigger1 = Time >= 48


;==============================================================================;
; 赤主・檻髪 失敗時エフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; 赤主・檻髪 失敗時判定
;------------------------------------------------------------------------------;
[Statedef 7010]
type        = A
movetype    = A
physics     = N
anim        = 7010
ctrl        = 0
sprpriority = 5
juggle      = 5

;-------[ Movement ]-------;

[State 7010:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7040:            Dist]
type     = AttackDist
trigger1 = AnimElemTime(12) < 0
value    = Floor(180 * const(size.xscale))

[State 7040:            No Attack]
type      = StateTypeSet
trigger1  = AnimElem = 12
statetype = A
movetype  = I
physics   = N

;-------[ Sounds ]-------;

[State 7010:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 4, 32
;volume   = 255
channel  = 20

;-------[ Projectiles ]-------;

[State 7010:            Hit Def, 1]
type                       = HitDef
trigger1                   = AnimElem = 1
trigger2                   = AnimElem = 3
trigger3                   = AnimElem = 5
trigger4                   = AnimElem = 7
trigger5                   = AnimElem = 9
trigger6                   = AnimElem = 11
animtype                   = Hard
attr                       = S, HP
damage                     = Ceil(ifelse(IsHelper(7011), 44, 31.5) * Root,fvar(10)), Ceil(ifelse(IsHelper(7011), 4.4, 3.15) * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 4, 8
sparkno                    = -1     ;S6050 + Random % 8
guard.sparkno              = -1     ;S6061
sparkxy                    = 0, 0
hitsound                   = S7, 8
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = -7, -5
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
air.hittime                = 19
air.velocity               = -6, -4
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 40
p2stateno                  = 4900
id                         = 7010
getpower                   = 0, 0
sprpriority                = 5

;-------[ Projectile Control ]-------;

;-------[ Sparks ]-------;

[State 7010:            Hit Spark]
type           = Explod
triggerall     = MoveHit = 1
triggerall     = HitPauseTime = 3
trigger1       = NumTarget(7010)
anim           = 6050 + (Random % 8)
postype        = p1
pos            = Ceil(Target(7010),Pos X - Pos X) * Facing, Ceil(Target(7010),Pos Y - Pos Y) - 60
random         = 20, 20
sprpriority    = 100
ontop          = 1
ignorehitpause = 1

[State 7010:            Guard Spark]
type           = Explod
triggerall     = MoveGuarded = 1
triggerall     = HitPauseTime = 3
trigger1       = NumTarget(7010)
anim           = 6061
postype        = p1
pos            = Ceil(Target(7010),Pos X - Pos X) * Facing, Ceil(Target(7010),Pos Y - Pos Y) - 60
random         = 20, 20
sprpriority    = 100
ontop          = 1
ignorehitpause = 1

;-------[ States ]-------;

[State 7010:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

[State 7010:            Delete]
type     = ChangeState
trigger1 = Root,MoveType = H
trigger1 = Root,StateNo != [120, 155]
value    = 7015

;------------------------------------------------------------------------------;
; 赤主・檻髪 失敗時判定 消滅
;------------------------------------------------------------------------------;
[Statedef 7015]
type        = A
movetype    = I
physics     = N
ctrl        = 0
sprpriority = 5
velset      = 0, 0

;-------[ Anim ]-------;

[State 7015:            Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = 7015
elem     = AnimElemNo(0)

;-------[ Movement ]-------;

[State 7010:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ States ]-------;

[State 7010:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0


;==============================================================================;
; 赤主・檻髪 (AAD) 全地上エフェクト
;==============================================================================;
[Statedef 7035]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 7035:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = InVisible

;-------[ Effects ]-------;

[State 7035:            Fire, 1, Left]
type        = Explod
triggerall  = Facing = 1
trigger1    = Root,StateNo = 3010
trigger1    = Root,AnimElemTime(28) >= 0
trigger1    = Root,AnimElemTime(46) < 0
trigger2    = Root,StateNo = 3011
trigger2    = Root,AnimElemTime(5) >= 0
anim        = 7035
id          = 7035
postype     = Left
pos         = 0, Ceil(GameHeight)
bindtime    = -1
scale       = 2.0, 1.0
facing      = Facing
ownpal      = 1
sprpriority = 10
persistent  = 12

[State 7035:            Fire, 2, Right]
type        = Explod
triggerall  = Facing = -1
trigger1    = Root,StateNo = 3010
trigger1    = Root,AnimElemTime(28) >= 0
trigger1    = Root,AnimElemTime(46) < 0
trigger2    = Root,StateNo = 3011
trigger2    = Root,AnimElemTime(5) >= 0
anim        = 7035
id          = 7035
postype     = Right
pos         = 0, Ceil(GameHeight)
bindtime    = -1
scale       = 2.0, 1.0
facing      = Facing
ownpal      = 1
sprpriority = 10
persistent  = 12

;-------[ States ]-------;

[State 7035:            Destroy]
type     = DestroySelf
triggerall = !NumExplod(7035)
trigger1   = Root,StateNo != [3010, 3011]
trigger2   = Root,StateNo = 3010 && Root,AnimElemTime(46) >= 0
trigger3   = Root,StateNo = 3012


;==============================================================================;
; 鳥を渦切る
;
; Helper ID = 7040  : 弱
;           = 7041  : 中
;           = 7042  : 強
;           = 7045  : Exエッジ
;==============================================================================;
;------------------------------------------------------------------------------;
; 鳥を渦切る 攻撃判定
;------------------------------------------------------------------------------;
[Statedef 7040]
type        = A
movetype    = A
physics     = N
ctrl        = 0
anim        = ifelse(Root,StateType = A, 7041, 7040)
sprpriority = 3
juggle      = ifelse((Root,var(20) > 0 || Root,var(21) > 0), 1, 3)

;-------[ Movement ]-------;

[State 7040:            Dist]
type     = AttackDist
trigger1 = AnimElemTime(10) < 0
value    = Floor(200 * const(size.xscale))

[State 7040:            State Type]
type      = StateTypeSet
trigger1  = AnimElem = 10
statetype = A
movetype  = I
physics   = N

[State 7040:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7040:            Angle]
type     = AngleSet
trigger1 = Time = 0
trigger1 = Anim = 7041
value    = -20

[State 7040:            Angle]
type           = AngleDraw
trigger1       = 1
ignorehitpause = 1

[State 7040:            Trans]
type           = Trans
trigger1       = 1
trans          = Add
ignorehitpause = 1

;-------[ Hit Defs ]-------;

[State 7040:            Hit Def, 1]
type                       = HitDef
triggerall                 = !IsHelper(7041)
triggerall                 = !IsHelper(7042)
triggerall                 = !IsHelper(7045)
trigger1                   = AnimElem = 4
trigger2                   = AnimElem = 6
trigger3                   = AnimElem = 8
animtype                   = Hard
attr                       = A, SP
damage                     = Ceil(34.78 * Root,fvar(10)), Ceil(3.47 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 6, 6
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6060
sparkxy                    = -20, Floor(ifelse(Anim = 7041, 45, 0) * const(size.xscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = High
ground.hittime             = 14
ground.slidetime           = 13
ground.velocity            = -6, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 12
air.hittime                = 13
air.velocity               = -2, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 0
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 25
id                         = 7040
sprpriority                = 3
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7040:            Hit Def, 2]
type                       = HitDef
triggerall                 = IsHelper(7041)
trigger1                   = AnimElem = 3
animtype                   = Hard
attr                       = A, SP
damage                     = Ceil(86.95 * Root,fvar(10)), Ceil(8.7 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 6, 6
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6060
sparkxy                    = -20, Floor(ifelse(Anim = 7041, 45, 0) * const(size.xscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = High
ground.hittime             = 17
ground.slidetime           = 16
ground.velocity            = -3, -7
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 15
air.hittime                = 16
air.velocity               = -2, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 25
id                         = 7041
sprpriority                = 3
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7040:            Hit Def, 4]
type                       = HitDef
triggerall                 = IsHelper(7042)
trigger1                   = AnimElem = 4
trigger2                   = AnimElem = 6
trigger3                   = AnimElem = 8
animtype                   = Hard
attr                       = A, SP
damage                     = Ceil(34.78 * Root,fvar(10)), Ceil(3.47 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 6, 6
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6060
sparkxy                    = -20, Floor(ifelse(Anim = 7041, 45, 0) * const(size.xscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = High
ground.hittime             = 14
ground.slidetime           = 13
ground.velocity            = -3, -6
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 12
air.hittime                = 13
air.velocity               = -4, -6
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 0
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 35
id                         = 7042
sprpriority                = 3
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7040:            Hit Def, 3]
type                       = HitDef
triggerall                 = IsHelper(7045)
trigger1                   = AnimElem = 3
trigger2                   = AnimElem = 4
trigger3                   = AnimElem = 5
trigger4                   = AnimElem = 6
trigger5                   = AnimElem = 7
trigger6                   = AnimElem = 8
trigger7                   = AnimElem = 9
animtype                   = Hard
attr                       = A, HP
damage                     = Ceil(23.8 * Root,fvar(10)), Ceil(2.38 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 4, 4
sparkno                    = S6020 + Random % 8
guard.sparkno              = S6060
sparkxy                    = -20, Floor(ifelse(Anim = 7041, 45, 0) * const(size.xscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = High
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = -6, -4
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 17
air.hittime                = 18
air.velocity               = -4, -4
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 0
id                         = 7045
getpower                   = 0, 0
sprpriority                = 3
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 56

;-------[ Burn Spark ]-------;

[State 7040:            Fire, 1]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7040)
trigger1         = !NumHelper(6070 + 7040)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7040
postype          = p1
pos              = 0, 0
size.height      = Target(7040),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 48
ownpal           = 1

[State 7040:            Fire, 2]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7041)
trigger1         = !NumHelper(6070 + 7041)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7041
postype          = p1
pos              = 0, 0
size.height      = Target(7041),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 48
ownpal           = 1

[State 7040:            Fire, 2]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7042)
trigger1         = !NumHelper(6070 + 7042)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7042
postype          = p1
pos              = 0, 0
size.height      = Target(7042),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 48
ownpal           = 1

[State 7040:            Fire, 3]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7045)
trigger1         = !NumHelper(6070 + 7045)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7045
postype          = p1
pos              = 0, 0
size.height      = Target(7045),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 80
ownpal           = 1

;-------[ States ]-------;

[State 7040:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

[State 7045:            Delete]
type     = ChangeState
trigger1 = Root,MoveType = H
trigger1 = Root,StateNo != [120, 155]
trigger2 = Root,NumHelper(6500)
trigger3 = Root,NumHelper(6501)
trigger4 = Root,NumHelper(6502)
value    = 7045

;------------------------------------------------------------------------------;
; 鳥を渦切る 消滅
;------------------------------------------------------------------------------;
[Statedef 7045]
type        = A
movetype    = I
physics     = N
ctrl        = 0
sprpriority = 3
velset      = 0, 0

;-------[ Anim ]-------;

[State 7045:            Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = 7045
elem     = AnimElemNo(0)

;-------[ Movement ]-------;

[State 7040:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7040:            Angle]
type     = AngleSet
trigger1 = Time = 0
trigger1 = Anim = 7041
value    = -20

[State 7040:            Angle]
type           = AngleDraw
trigger1       = 1
ignorehitpause = 1

[State 7040:            Trans]
type           = Trans
trigger1       = 1
trans          = Add
ignorehitpause = 1

;-------[ States ]-------;

[State 7040:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0


;==============================================================================;
; 獣を焦がす
;
; Helper ID = 7050  : 通常
;           = 7055  : Exエッジ
;==============================================================================;
;------------------------------------------------------------------------------;
; 設置
;------------------------------------------------------------------------------;
[Statedef 7050]
type        = C
movetype    = I
physics     = N
anim        = 7050
velset      = 0, 0
sprpriority = 3

;-------[ Vars ]-------;

[State 7050:            Scale]
type     = VarSet
trigger1 = Time = 0
fv       = 0
value    = 0.8

;-------[ Movement ]--------;

[State 7050:            Pos]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 7050:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7050:            Attack]
type     = StateTypeSet
trigger1 = Root,StateNo = 1025
trigger2 = Root,StateNo = 1035
movetype = A

;-------[ Sounds ]-------;

[State 7050:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 4, 10

;-------[ Effects ]-------;

[State 7050:            Trans]
type           = Trans
trigger1       = 1
trans          = Add
ignorehitpause = 1

[State 7050:            Scale]
type           = AngleDraw
trigger1       = 1
scale          = fvar(0) * const(size.xscale), fvar(0) * const(size.yscale)
ignorehitpause = 1

;-------[ States ]-------;

[State 7050:            Attack]
type     = ChangeState
trigger1 = Root,StateNo = 1025
trigger1 = Root,AnimElem = 5
trigger2 = Root,StateNo = 1035
trigger2 = Root,AnimElem = 4
value    = 7055

[State 7050:            Destroy]
type     = ChangeState
trigger1 = Root,StateNo != [120, 155]
trigger1 = Root,MoveType = H
trigger2 = Time >= 300
value    = 7051

;------------------------------------------------------------------------------;
; 消滅
;------------------------------------------------------------------------------;
[Statedef 7051]

;-------[ Movement ]--------;

[State 7050:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ Sounds ]-------;

;-------[ Effects ]-------;

[State 7050:            Trans]
type           = Trans
trigger1       = 1
trans          = AddAlpha
alpha          = 256 - (Time * 16), 256
ignorehitpause = 1

[State 7050:            Scale]
type           = AngleDraw
trigger1       = 1
scale          = fvar(0) * const(size.xscale), fvar(0) * const(size.yscale)
ignorehitpause = 1

;-------[ States ]-------;

[State 7050:            Destroy]
type     = DestroySelf
trigger1 = Time >= 16

;------------------------------------------------------------------------------;
; 攻撃
;
; var(0)    : HIT COUNT
;------------------------------------------------------------------------------;
[Statedef 7055]
type        = C
movetype    = A
physics     = C
ctrl        = 0
sprpriority = 4
juggle      = ifelse((Root,var(20) > 0 || Root,var(21) > 0), 1, 3)

;-------[ Vars ]-------;

[State 7050:            Scale]
type     = VarSet
trigger1 = Time = 0
fv       = 0
value    = 1.0

[State 7050:            Hit Count]
type     = VarSet
trigger1 = Time = 0
v        = 0
value    = 0

[State 7050:            Hit Count]
type     = VarAdd
trigger1 = MoveContact = 1
v        = 0
value    = 1

;-------[ Anim ]-------;

[State 7055:            Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = 7055
elem     = AnimElemNo(0)

;-------[ Movement ]--------;

[State 7050:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ Sounds ]-------;

[State 7050:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 4, 10

;-------[ Effects ]-------;

[State 7050:            Trans]
type           = Trans
trigger1       = 1
trans          = Add
ignorehitpause = 1

[State 7050:            Scale]
type           = AngleDraw
trigger1       = 1
scale          = fvar(0) * const(size.xscale), fvar(0) * const(size.yscale)
ignorehitpause = 1

;-------[ Hit Defs ]-------;

[State 7050:            Hit Def, 1]
type                       = HitDef
triggerall                 = !HitPauseTime
triggerall                 = !IsHelper(7055)
trigger1                   = var(0) < 3
animtype                   = Hard
attr                       = S, SP
damage                     = Ceil(27.76 * Root,fvar(10)), Ceil(2.776 * Root,fvar(10))
hitflag                    = MAFD
guardflag                  = L
pausetime                  = 7, 7
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(-20 * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = -7, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 17
air.hittime                = 19
air.velocity               = -6, -4
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 0
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 30
id                         = 7050
sprpriority                = 4
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7050:            Hit Def, 1]
type                       = HitDef
triggerall                 = !HitPauseTime
triggerall                 = IsHelper(7055)
trigger1                   = var(0) < 6
animtype                   = Hard
attr                       = S, HP
damage                     = Ceil(25 * Root,fvar(10)), Ceil(2.5 * Root,fvar(10))
hitflag                    = MAFD
guardflag                  = L
pausetime                  = 4, 4
sparkno                    = S6020 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(-20 * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = -7, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 17
air.hittime                = 19
air.velocity               = -6, -4
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 0
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 40
id                         = 7055
sprpriority                = 4
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 56

;-------[ Burn Spark ]-------;

[State 7040:            Fire, 1]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7050)
trigger1         = !NumHelper(6070 + 7050)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7050
postype          = p1
pos              = 0, 0
size.height      = Target(7050),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 56
ownpal           = 1

[State 7040:            Fire, 2]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7055)
trigger1         = !NumHelper(6070 + 7055)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7055
postype          = p1
pos              = 0, 0
size.height      = Target(7055),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 64
ownpal           = 1

;-------[ Hit Defs ]-------;

[State 7055:            Destroy]
type     = ChangeState
trigger1 = Time >= 32
trigger2 = !IsHelper(7055)
trigger2 = var(0) >= 3
trigger3 = IsHelper(7055)
trigger3 = var(0) >= 6
value    = 7051


;==============================================================================;
; 月を穿つ
;
; Helper ID = 7060  : 通常 (弱)
;           = 7061  : 通常 (中)
;           = 7062  : 通常 (強)
;           = 7065  : Exエッジ
;==============================================================================;
[Statedef 7060]
type        = S
movetype    = A
physics     = N
anim        = 7061
ctrl        = 0
juggle      = ifelse((Root,var(20) > 0 || Root,var(21) > 0), 1, 3)
sprpriority = 4

;-------[ Movement ]-------;

[State 7060:            Pos]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 7060:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ Hit Defs ]-------;

[State 7060:            Hit Def, 1]
type                       = HitDef
triggerall                 = !IsHelper(7061)
triggerall                 = !IsHelper(7062)
triggerall                 = !IsHelper(7065)
trigger1                   = AnimElem = 10
animtype                   = Hard
attr                       = S, SP
damage                     = Ceil(52.2 * Root,fvar(10)), Ceil(5.2 * Root,fvar(10))
hitflag                    = MAFD
guardflag                  = M
pausetime                  = 0, 7
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(((P2Dist Y) - 40) * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 16
ground.slidetime           = 15
ground.velocity            = -5, -5
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 14
air.hittime                = 15
air.velocity               = -4, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 25
id                         = 7060
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7060:            Hit Def, 2]
type                       = HitDef
triggerall                 = IsHelper(7061)
trigger1                   = AnimElem = 10
animtype                   = Hard
attr                       = S, SP
damage                     = Ceil(43.5 * Root,fvar(10)), Ceil(4.35 * Root,fvar(10))
hitflag                    = MAFD
guardflag                  = M
pausetime                  = 0, 7
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(((P2Dist Y) - 40) * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 23
ground.slidetime           = 22
ground.velocity            = -2, -6.5
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 21
air.hittime                = 22
air.velocity               = -3.5, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 35
id                         = 7061
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7060:            Hit Def, 3]
type                       = HitDef
triggerall                 = IsHelper(7062)
trigger1                   = AnimElemTime(10) >= 0
trigger1                   = AnimElemTime(21) < 0
trigger1                   = HitCount < 2
trigger1                   = MoveContact != [1, 5]
animtype                   = Hard
attr                       = S, SP
damage                     = Ceil(43.5 * Root,fvar(10)), Ceil(4.35 * Root,fvar(10))
hitflag                    = MAFD
guardflag                  = M
pausetime                  = 0, 7
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(((P2Dist Y) - 40) * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 23
ground.slidetime           = 22
ground.velocity            = -2, -6.5
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 21
air.hittime                = 22
air.velocity               = -3.5, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 35
id                         = 7062
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

[State 7060:            Hit Def, 4]
type                       = HitDef
triggerall                 = IsHelper(7065)
triggerall                 = AnimElemTime(10) >= 0
triggerall                 = AnimElemTime(21) < 0
trigger1                   = HitCount < 5
trigger1                   = MoveContact != 1
animtype                   = Hard
attr                       = S, HP
damage                     = Ceil(33.1 * Root,fvar(10)), Ceil(3.3 * Root,fvar(10))
hitflag                    = MAFLD
guardflag                  = M
pausetime                  = 0, 6
sparkno                    = S6020 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(((P2Dist Y) - 50) * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 23
ground.slidetime           = 22
ground.velocity            = -3, -7.5
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 21
guard.velocity             = -8
air.hittime                = 22
air.velocity               = -2.5, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 0
id                         = 7065
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 72

;-------[ Burn Spark ]-------;

[State 7060:            Fire, 1]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7060)
trigger1         = !NumHelper(6070 + 7060)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7060
postype          = p1
pos              = 0, 0
size.height      = Target(7060),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 32
ownpal           = 1

[State 7060:            Fire, 2]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7061)
trigger1         = !NumHelper(6070 + 7061)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7061
postype          = p1
pos              = 0, 0
size.height      = Target(7061),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 32
ownpal           = 1

[State 7060:            Fire, 3]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7062)
trigger1         = !NumHelper(6070 + 7062)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7062
postype          = p1
pos              = 0, 0
size.height      = Target(7062),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 32
ownpal           = 1

[State 7060:            Fire, 4]
type             = Helper
trigger1         = MoveHit = 1
trigger1         = NumTarget(7065)
trigger1         = !NumHelper(6070 + 7065)
helpertype       = Normal
name             = "Fire"
stateno          = 6070
id               = 6070 + 7065
postype          = p1
pos              = 0, 0
size.height      = Target(7065),ID
size.xscale      = const(size.xscale)
size.yscale      = const(size.yscale)
size.ground.back = 80
ownpal           = 1

;-------[ States ]-------;

[State 7060:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0


;==============================================================================;
; 月に画く エフェクト
;==============================================================================;
[Statedef 7070]
type        = A
movetype    = I
physics     = N
anim        = 7070
ctrl        = 0
sprpriority = 5

;-------[ Anim ]-------;

[State 7070:            Hit Pause]
type       = ChangeAnim
triggerall = Root,HitPauseTime
trigger1   = Root,StateNo = [1050, 1052]
trigger2   = Root,StateNo = 2050
value      = Anim
elem       = AnimElemNo(0)

;-------[ Movement ]-------;

[State 7070:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7070:            Bind]
type           = BindToRoot
trigger1       = Root,StateNo = [1050, 1052]
trigger2       = Root,StateNo = 2050
pos            = Floor(60 * Root,const(size.xscale)), Floor(-80 * Root,const(size.yscale))
ignorehitpause = 1

;-------[ Effects ]-------;

[State 7070:            Angle]
type           = AngleDraw
trigger1       = 1
value          = -70
ignorehitpause = 1

[State 7070:            Trans]
type           = Trans
trigger1       = 1
trans          = Add
ignorehitpause = 1

;-------[ States ]-------;

[State 7070:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H


;==============================================================================;
; ラストアーク 背景ヘルパー
;==============================================================================;
;------------------------------------------------------------------------------;
; 白
;------------------------------------------------------------------------------;
[Statedef 7090]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 7090:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = InVisible

;-------[ Effects ]-------;

[State 7090:            White Out]
type     = AllPalFX
trigger1 = Time = 0
sinadd   = 255, 255, 255, 32
time     = 16

;-------[ States ]-------;

[State 7090:            No BG]
type     = ChangeState
trigger1 = Time = 8
value    = 7091

;------------------------------------------------------------------------------;
; 暗転
;------------------------------------------------------------------------------;
[Statedef 7091]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 7090:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = InVisible
flag3    = GlobalNoShadow

[State 7090:            Timer Stop]
type     = AssertSpecial
trigger1 = 1
flag     = TimerFreeze

;-------[ Effects ]-------;

[State 7090:            No BG]
type     = AssertSpecial
trigger1 = 1
flag     = NoBG
flag2    = NoFG

[State 7090:            BG Image]
type        = Explod
trigger1    = Time = 0
trigger1    = IsHelper(7091)
trigger1    = Root,Facing = 1
anim        = 7200
id          = 7200
postype     = Left
pos         = 0, Ceil(GameHeight) 
ownpal      = 1
scale       = Const240p(320) / 256.0, Const240p(240) / 192.0
sprpriority = -99
removetime  = -1
bindtime    = -1
facing      = 1

[State 7090:            BG Image]
type        = Explod
trigger1    = Time = 0
trigger1    = IsHelper(7091)
trigger1    = Root,Facing = -1
anim        = 7200
id          = 7200
postype     = Right
pos         = 0, 240
ownpal      = 1
scale       = 320 / 256.0, 240 / 192.0
sprpriority = -99
removetime  = -1
bindtime    = -1
facing      = -1

;-------[ States ]-------;

[State 7090:            Reverse]
type     = ChangeState
trigger1 = Root,StateNo = 3101
trigger1 = Root,AnimElem = 44
trigger2 = Root,StateNo = 3111
trigger2 = Root,AnimElem = 44
trigger3 = Root,StateNo != 3101
trigger3 = Root,StateNo != 3111
value    = 7092

;------------------------------------------------------------------------------;
; 暗転回復
;------------------------------------------------------------------------------;
[Statedef 7092]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 7090:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = InVisible

;-------[ Effects ]-------;

[State 7090:            BG]
type     = BGPalFX
trigger1 = Time = 0
sinadd   = 255, 255, 255, 64
add      = -255, -255, -255
time     = 16

[State 7090:            Remove BGImage]
type     = ModifyExplod
trigger1 = NumExplod(7200)
trigger1 = Time < 16
id       = 7200
trans    = AddAlpha
alpha    = 256 - (Time * 16), Time * 16

[State 7090:            Remove BGImage]
type     = RemoveExplod
trigger1 = NumExplod(7200)
trigger1 = Time = 16
id       = 7200

;-------[ States ]-------;

[State 7090:            Destroy]
type     = DestroySelf
trigger1 = Time >= 16
trigger1 = !NumExplod(7200)


;==============================================================================;
; 赫訳・紗燐 エフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; 赫訳・紗燐 発生
;------------------------------------------------------------------------------;
[Statedef 7100]
type        = A
movetype    = A
physics     = N
anim        = 7100
ctrl        = 0
sprpriority = 5

;-------[ Vars ]-------;

[State 7100:            Angle Set]
type       = VarSet
triggerall = Time = 0
trigger1   = !IsHelper(7101)
trigger1   = !IsHelper(7102)
trigger1   = !IsHelper(7103)
fv         = 0
value      = 0

[State 7100:            Angle Set, 2]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7101)
trigger2   = IsHelper(7102)
fv         = 0
value      = 30

[State 7100:            Angle Set, 3]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7103)
fv         = 0
value      = -30

[State 7100:            Angle Set, 4]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7107)
fv         = 0
value      = -15

[State 7100:            Pos, X, 1]
type       = VarSet
triggerall = Time = 0
trigger1   = !IsHelper(7101)
trigger1   = !IsHelper(7102)
trigger1   = !IsHelper(7103)
v          = 0
value      = 102

[State 7100:            Pos, Y, 1]
type       = VarSet
triggerall = Time = 0
trigger1   = !IsHelper(7101)
trigger1   = !IsHelper(7102)
trigger1   = !IsHelper(7103)
v          = 1
value      = -42

[State 7100:            Pos, X, 2]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7101)
trigger2   = IsHelper(7102)
v          = 0
value      = 63

[State 7100:            Pos, Y, 2]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7101)
trigger2   = IsHelper(7102)
v          = 1
value      = -95

[State 7100:            Pos, X, 3]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7103)
v          = 0
value      = 114

[State 7100:            Pos, Y, 3]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7103)
v          = 1
value      = 30

[State 7100:            Pos, X, 4]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7107)
v          = 0
value      = 117

[State 7100:            Pos, Y, 4]
type       = VarSet
triggerall = Time = 0
trigger1   = IsHelper(7107)
v          = 1
value      = -10

[State 7100:            Root, GetHit]
type       = VarSet
triggerall = var(10) = 0
trigger1   = Root,MoveType = H
trigger1   = ROot,StateNo != [120, 155]
v          = 10
value      = 1
persistent = 1

;-------[ Movement ]-------;

[State 7100:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7100:            Dist]
type     = AttackDist
trigger1 = 1
value    = Floor(160 * const(size.xscale))

;-------[ Effects ]-------;

[State 7100:            Angle]
type           = AngleSet
trigger1       = 1
value          = fvar(0)
ignorehitpause = 1

[State 7100:            Angle, 2]
type           = AngleDraw
trigger1       = 1
ignorehitpause = 1

[State 7100:            Trans]
type           = Trans
trigger1       = 1
trans          = Add
ignorehitpause = 1

;-------[ Projectiles ]-------;

[State 7100:            Projectile]
type        = Helper
triggerall  = var(10) = 0
trigger1    = AnimElem = 9
helpertype  = Normal
name        = "Cutter"
stateno     = 7110
id          = 7110 + (IsHelper(7102) + IsHelper(7105) + (IsHelper(7106) || IsHelper(7107)) * 5)
postype     = p1
pos         = Floor(var(0) * const(size.xscale)), Floor(var(1) * const(size.yscale))
ownpal      = 1
size.xscale = Root,const(size.xscale) * (ifelse((IsHelper(7106) || IsHelper(7107)), 1.25, 1.0))
size.yscale = Root,const(size.yscale) * (ifelse((IsHelper(7106) || IsHelper(7107)), 1.25, 1.0))

;-------[ States ]-------;

[State 7100:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; 赫訳・紗燐 判定
;------------------------------------------------------------------------------;
[Statedef 7110]
type        = A
movetype    = A
physics     = N
anim        = ifelse(IsHelper(7115), 7111, 7110)
ctrl        = 0
sprpriority = 5
juggle      = ifelse(IsHelper(7115), ifelse((Root,var(20) > 0 || Root,var(21) > 0), 3, 5), ifelse((Root,var(20) > 0 || Root,var(21) > 0), 1, 3))

;-------[ Vars ]-------;

;-------[ Movement ]-------;

[State 7100:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7100:            Dist]
type     = AttackDist
trigger1 = 1
value    = Floor(160 * const(size.xscale))

;-------[ Effects ]-------;

;-------[ Hit Defs ]-------;

[State 7110:            Hit Def, 1]
type                       = HitDef
triggerall                 = !IsHelper(7115)
triggerall                 = !IsHelper(7115)
trigger1                   = Time % 8 = 0
animtype                   = Hard
attr                       = A, SP
damage                     = Ceil(19 * Root,fvar(10)), Ceil(2.3 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 0, 7
sparkno                    = S6040 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(P2Dist Y + Pos Y) + (20 - (Random % 40))
hitsound                   = S7, 7
guardsound                 = S8, 0
ground.type                = High
ground.hittime             = 17
ground.slidetime           = 16
ground.velocity            = -7, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 15
air.hittime                = 16
air.velocity               = -2, -1
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 0
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 20
id                         = 7110
sprpriority                = 5

[State 7110:            Hit Def, 1]
type                       = HitDef
triggerall                 = IsHelper(7115)
trigger1                   = Time % 8 = 0
animtype                   = Hard
attr                       = A, HP
damage                     = Ceil(17 * Root,fvar(10)), Ceil(1.7 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = MA
pausetime                  = 0, 7
sparkno                    = S6050 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor(P2Dist Y + Pos Y) + (20 - (Random % 40))
hitsound                   = S7, 8
guardsound                 = S8, 0
ground.type                = High
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = -7, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 17
air.hittime                = 18
air.velocity               = -2.5, -3
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 0
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 30
id                         = 7115
sprpriority                = 5

;-------[ States ]-------;

[State 7100:            Destroy]
type     = ChangeState
trigger1 = !IsHelper(7115)
trigger1 = Time >= 40
trigger2 = IsHelper(7115)
trigger2 = Time >= 72
value    = 7111

;------------------------------------------------------------------------------;
; 赫訳・紗燐 消滅
;------------------------------------------------------------------------------;
[Statedef 7111]
type        = A
movetype    = I
physics     = N
anim        = 7112
ctrl        = 0
sprpriority = 5

;-------[ Vars ]-------;

;-------[ Movement ]-------;

[State 7100:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ Effects ]-------;

;-------[ States ]-------;

[State 7100:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0


;==============================================================================;
; 赤主・遍生 エフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; 赤主・遍生 (Arc-Drive) エフェクト
;------------------------------------------------------------------------------;
[Statedef 7130]
type        = A
movetype    = A
physics     = N
anim        = 7130
ctrl        = 0
sprpriority = 5
juggle      = 5

;-------[ Vars ]-------;

[State 7130:            Attack Correction]
type     = VarSet
trigger1 = Time = 0
fv       = 10
value    = Root,fvar(10)

;-------[ Movement ]-------;

[State 7130:            Bind To Root]
type     = BindToRoot
trigger1 = 1
pos      = Floor(0 * Root,const(size.xscale)), Floor(-90 * Root,const(size.yscale))

[State 7130:            Dist]
type     = AttackDist
trigger1 = AnimElemTime(17) < 0
value    = Floor(320 * const(size.xscale))

;-------[ Effects ]--------;

[State 7130:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7130:            State Type, 1]
type      = StateTypeSet
trigger1  = AnimElem = 17
statetype = A
movetype  = I
physics   = N

;-------[ Hit Defs ]-------;

[State 7130:            Hit Def, 1]
type                       = HitDef
trigger1                   = AnimElem = 2
trigger2                   = AnimElem = 3
trigger3                   = AnimElem = 4
trigger4                   = AnimElem = 5
trigger5                   = AnimElem = 6
trigger6                   = AnimElem = 7
trigger7                   = AnimElem = 8
trigger8                   = AnimElem = 9
trigger9                   = AnimElem = 10
trigger10                  = AnimElem = 11
trigger11                  = AnimElem = 12
trigger12                  = AnimElem = 13
trigger13                  = AnimElem = 14
trigger14                  = AnimElem = 15
trigger15                  = AnimElem = 16
animtype                   = Hard
attr                       = A, HP
damage                     = Ceil(21 * fvar(10)), Ceil(2.1 * fvar(10))
getpower                   = 0, 0
hitflag                    = MAF
guardflag                  = HA
pausetime                  = 2, 4
sparkno                    = S6020 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor((P2Dist Y - 60) * const(size.yscale))
hitsound                   = -1 ;S7, 22
guardsound                 = S8, 1
ground.type                = Low
ground.hittime             = 24
ground.slidetime           = 23
ground.velocity            = -8, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 22
air.hittime                = 23
air.velocity               = -4, -2
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 25
p2stateno                  = 4900
id                         = 7130
sprpriority                = 5

;-------[ Sounds ]-------;

[State 7130:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 4, 33
channel  = 4
;volume   = 255

[State 7130:            Hit SE]
type           = PlaySnd
trigger1       = MoveHit = 1
trigger1       = HitPauseTime = 1
value          = 4, 10  ;7, 22
channel        = 7
ignorehitpause = 1

;-------[ States ]-------;

[State 7130:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

[State 7130:            Delete]
type     = ChangeState
trigger1 = Root,MoveType = H
trigger1 = Root,StateNo != [120, 155]
value    = 7135

;------------------------------------------------------------------------------;
; 赤主・遍生 (Another Arc-Drive) エフェクト
;------------------------------------------------------------------------------;
[Statedef 7131]
type        = A
movetype    = A
physics     = N
anim        = 7131
ctrl        = 0
sprpriority = 5
juggle      = 5

;-------[ Vars ]-------;

[State 7130:            Attack Correction]
type     = VarSet
trigger1 = Time = 0
fv       = 10
value    = Root,fvar(10)

;-------[ Movement ]-------;

[State 7130:            Bind To Root]
type     = BindToRoot
trigger1 = 1
pos      = Floor(0 * Root,const(size.xscale)), Floor(-90 * Root,const(size.yscale))

[State 7130:            Dist]
type     = AttackDist
trigger1 = AnimElemTime(26) < 0
value    = Floor(320 * const(size.xscale))

;-------[ Effects ]--------;

[State 7130:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

[State 7130:            State Type, 1]
type      = StateTypeSet
trigger1  = AnimElem = 26
statetype = A
movetype  = I
physics   = N

;-------[ Hit Defs ]-------;

[State 7130:            Hit Def, 1]
type                       = HitDef
trigger1                   = AnimElem = 4
trigger2                   = AnimElem = 5
trigger3                   = AnimElem = 6
trigger4                   = AnimElem = 7
trigger5                   = AnimElem = 8
trigger6                   = AnimElem = 9
trigger7                   = AnimElem = 10
trigger8                   = AnimElem = 11
trigger9                   = AnimElem = 12
trigger10                  = AnimElem = 13
trigger11                  = AnimElem = 14
trigger12                  = AnimElem = 15
trigger13                  = AnimElem = 16
trigger14                  = AnimElem = 17
trigger15                  = AnimElem = 18
trigger16                  = AnimElem = 19
trigger17                  = AnimElem = 20
trigger18                  = AnimElem = 21
trigger19                  = AnimElem = 22
trigger20                  = AnimElem = 23
trigger21                  = AnimElem = 24
trigger22                  = AnimElem = 25
animtype                   = Hard
attr                       = A, HP
damage                     = Ceil(97 * (0.80 ** HitCount) * fvar(10)), Ceil(2.5 * fvar(10))
getpower                   = 0, 0
hitflag                    = MAF
guardflag                  = HA
pausetime                  = 2, 4
sparkno                    = S6020 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -15, Floor((P2Dist Y - 60) * const(size.yscale))
hitsound                   = -1 ;S7, 22
guardsound                 = S8, 1
ground.type                = Low
ground.hittime             = 24
ground.slidetime           = 23
ground.velocity            = -8, 0
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
guard.ctrltime             = 22
air.hittime                = 23
air.velocity               = -4, -2
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 25
p2stateno                  = 4900
id                         = 7131
sprpriority                = 5

;-------[ Sounds ]-------;

[State 7130:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 4, 33
channel  = 4
;volume   = 255

[State 7130:            Hit SE]
type           = PlaySnd
trigger1       = MoveHit = 1
trigger1       = HitPauseTime = 1
value          = 4, 10  ;7, 22
channel        = 7
ignorehitpause = 1

;-------[ States ]-------;

[State 7130:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

[State 7130:            Delete]
type     = ChangeState
trigger1 = Root,MoveType = H
trigger1 = Root,StateNo != [120, 155]
value    = 7136

;------------------------------------------------------------------------------;
; 赤主・遍生 暗転
;------------------------------------------------------------------------------;
[Statedef 7132]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Effects ]-------;

[State 7132:            BG]
type     = BGPalFX
trigger1 = Time = 0
time     = 24
sinadd   = -255, -255, -255, 96

;-------[ States ]-------;

[State 7132:            Darken]
type     = ChangeState
trigger1 = Time >= 24
value    = 7133

;------------------------------------------------------------------------------;
; 赤主・遍生 暗転
;------------------------------------------------------------------------------;
[Statedef 7133]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Effects ]-------;

[State 7132:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoBG

;-------[ States ]-------;

[State 7132:            Reverse]
type     = ChangeState
trigger1 = Root,Anim = 3022
trigger1 = Root,AnimElemTime(25) >= 0
trigger2 = Root,Anim = 3032
trigger2 = Root,AnimElemTime(31) >= 0
trigger3 = Root,MoveType = H
trigger4 = Root,StateNo != [3020, 3022]
trigger4 = Root,StateNo != [3030, 3032]
value    = 7134

;------------------------------------------------------------------------------;
; 赤主・遍生 暗転
;------------------------------------------------------------------------------;
[Statedef 7134]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Effects ]-------;

[State 7132:            BG]
type     = BGPalFX
trigger1 = Time = 0
time     = 24
add      = -255, -255, -255
sinadd   = 255, 255, 255, 96

;-------[ States ]-------;

[State 7132:            Destroy]
type     = DestroySelf
trigger1 = Time >= 24

;------------------------------------------------------------------------------;
; 赤主・遍生 (Arc-Drive) エフェクト 消滅
;------------------------------------------------------------------------------;
[Statedef 7135]
type        = A
movetype    = I
physics     = N
ctrl        = 0
sprpriority = 5

;-------[ Anim ]-------;

[State 7135:            Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = 7135
elem     = AnimElemNo(0)

;-------[ Effects ]--------;

[State 7130:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ States ]-------;

[State 7130:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; 赤主・遍生 (Another Arc-Drive) エフェクト 消滅
;------------------------------------------------------------------------------;
[Statedef 7136]
type        = A
movetype    = I
physics     = N
ctrl        = 0
sprpriority = 5

;-------[ Anim ]-------;

[State 7135:            Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = 7136
elem     = AnimElemNo(0)

;-------[ Effects ]--------;

[State 7130:            No Shadow]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
ignorehitpause = 1

;-------[ States ]-------;

[State 7130:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0


;==============================================================================;
; 獣を挫く 判定
;==============================================================================;
;------------------------------------------------------------------------------;
; 通常版
;------------------------------------------------------------------------------;
[Statedef 7140]
type        = S
movetype    = A
physics     = N
anim        = 7140
ctrl        = 0
sprpriority = 3

;-------[ Movement ]-------;

[State 7140:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow

;-------[ Hit Defs ]-------;

[State 7140:            Hit Def]
type                       = HitDef
trigger1                   = AnimElem = 2
animtype                   = Hard
attr                       = S, SP
damage                     = Ceil(ifelse(IsHelper(7142), 90, ifelse(IsHelper(7141), 85, 80)) * Root,fvar(10)), Ceil(8.5 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = M
pausetime                  = 1, 1
sparkno                    = S6010 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -20, Floor(-25 * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = ifelse(IsHelper(7140), -8, -2), ifelse(IsHelper(7140), 0, ifelse(IsHelper(7141), -3, -7))
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
air.hittime                = 19
air.velocity               = ifelse(IsHelper(7140), -5, -2), -4
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = ifelse(IsHelper(7140), 0, 1)
air.fall                   = 1
fall.recover               = ifelse(IsHelper(7142), 0, 1)
fall.recovertime           = 20
id                         = 7140
sprpriority                = 3
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 32

;-------[ Effects ]-------;

[State 7145:            Fire]
type        = Helper
trigger1    = MoveHit = 1
trigger1    = NumTarget(7140)
helpertype  = Normal
name        = "Fire"
stateno     = 6070
id          = 6070
postype     = p1
pos         = 0, 0  ;Target(7140),Pos X, Target(7140),Pos Y
size.height = Target(7140),ID
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal      = 1

;-------[ Destroy ]-------;

[State 7140:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------;
; EX版
;------------------------------------------------------------------------------;
[Statedef 7145]
type        = S
movetype    = A
physics     = N
anim        = 7145
ctrl        = 0
sprpriority = 3

;-------[ Movement ]-------;

[State 7140:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow

[State 7145:            Scaling]
type     = AngleDraw
trigger1 = 1
scale    = const(size.xscale) * 1.5, const(size.yscale) * 1.2

[State 7145:            Trans]
type     = Trans
trigger1 = 1
trans    = Add

;-------[ Hit Defs ]-------;

[State 7140:            Hit Def]
type                       = HitDef
trigger1                   = AnimElem = 2
animtype                   = Hard
attr                       = S, SP
damage                     = Ceil(165 * Root,fvar(10)), Ceil(16.5 * Root,fvar(10))
hitflag                    = MAF
guardflag                  = M
pausetime                  = 1, 1
sparkno                    = S6020 + Random % 8
guard.sparkno              = S6061
sparkxy                    = -20, Floor(-25 * const(size.yscale))
hitsound                   = S7, 22
guardsound                 = S8, 0
ground.type                = Low
ground.hittime             = 19
ground.slidetime           = 18
ground.velocity            = -1, -8
ground.cornerpush.veloff   = 0
guard.cornerpush.veloff    = 0
air.hittime                = 19
air.velocity               = -2, -5
air.cornerpush.veloff      = 0
airguard.cornerpush.veloff = 0
fall                       = 1
air.fall                   = 1
fall.recover               = 1
fall.recovertime           = 45
id                         = 7145
sprpriority                = 3
palfx.add                  = 112, -96, -127
palfx.mul                  = 168, 168, 168
palfx.sinadd               = 64, 32, 32, 8
palfx.color                = 64
palfx.time                 = 48

;-------[ Effects ]-------;

[State 7145:            Fire]
type        = Helper
trigger1    = MoveHit = 1
trigger1    = NumTarget(7145)
helpertype  = Normal
name        = "Fire"
stateno     = 6070
id          = 6070
postype     = p1
pos         = 0, 0
size.height = Target(7145),ID
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal      = 1

;-------[ Destroy ]-------;

[State 7140:            Destroy]
type     = DestroySelf
trigger1 = AnimTime = 0


;==============================================================================;
; マジックサーキット
;
; var(0)    : ゲージ量 (上3桁)
; var(1)    : ゲージ量 (下1桁)
; var(5)    : 表示ゲージ量 (上3桁)
; var(6)    : 表示ゲージ量 (下1桁)
; var(40)   : ゲージ色 (R)
; var(41)   : ゲージ色 (G)
; var(42)   : ゲージ色 (B)
; var(50)   : ゲージ表示位置 (X)
; var(51)   : ゲージ表示位置 (Y)
; fvar(0)   : ゲージ表示倍率
;==============================================================================;
;------------------------------------------------------------------------------;
; 本体
;------------------------------------------------------------------------------;
[Statedef 8500]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Initialize ]-------;

[State 8500:            Set Pos X]
type     = VarSet
trigger1 = Time = 0
v        = 50
value    = 8

[State 8500:            Set Pos Y]
type     = VarSet
trigger1 = Time = 0
v        = 51
value    = Floor(GameHeight - 8)

;-------[ Calculate Gauges ]-------;

[State 8500:            Get High Values]
type     = VarSet
trigger1 = 1
v        = 0
value    = Power / 10

[State 8500:            Get Low Values]
type     = VarSet
trigger1 = 1
v        = 1
value    = Power % 10

[State 8500:            Gauge Level]
type       = VarSet
trigger1   = Root,var(20) <= 0
fv         = 0
value      = Power * 1.0 / PowerMax
persistent = 1

[State 8500:            Gauge Level]
type       = VarSet
trigger1   = Root,var(20) > 0
fv         = 0
value      = Root,var(20) * 5.0 / PowerMax
persistent = 1

[State 8500:            Gauge Level]
type       = VarSet
trigger1   = Root,var(21) > 0
fv         = 0
value      = Root,var(21) * 5.0 / PowerMax
persistent = 1

[State 8500:            Gauge Level (Spark)]
type       = VarSet
trigger1   = Root,var(22) > 0
trigger1   = Root,var(23) > 0
fv         = 0
value      = Root,var(23) * 1.0 / Root,var(22)
persistent = 1

[State 8500:            Guage Level (MAX)]
type       = VarSet
trigger1   = Root,var(24) > 0
fv         = 0
value      = Root,var(24) * 5.0 / PowerMax
persistent = 1

;-------[ Colors ]-------;

[State 8500:            Set R]
type       = VarSet
trigger1   = Root,var(20) <= 0
trigger1   = Root,var(21) <= 0
trigger1   = Root,var(23) <= 0
v          = 40
value      = 196 - Floor(fvar(0) * 128)
persistent = 1

[State 8500:            Set G]
type       = VarSet
trigger1   = Root,var(20) <= 0
trigger1   = Root,var(21) <= 0
trigger1   = Root,var(23) <= 0
v          = 41
value      = Floor(fvar(0) * 196)
persistent = 1

[State 8500:            Set B]
type       = VarSet
trigger1   = Root,var(20) <= 0
trigger1   = Root,var(21) <= 0
trigger1   = Root,var(23) <= 0
v          = 42
value      = Floor(fvar(0) * 64)
persistent = 1

[State 8500:            Set R (HEAT)]
type       = VarSet
trigger1   = Root,var(20) > 0
v          = 40
value      = 128
persistent = 1

[State 8500:            Set G (HEAT)]
type       = VarSet
trigger1   = Root,var(20) > 0
v          = 41
value      = 0
persistent = 1

[State 8500:            Set B (HEAT)]
type       = VarSet
trigger1   = Root,var(20) > 0
v          = 42
value      = 128
persistent = 1

[State 8500:            Set R (BLOOD HEAT)]
type       = VarSet
trigger1   = Root,var(21) > 0
v          = 40
value      = 128
persistent = 1

[State 8500:            Set G (BLOOD HEAT)]
type       = VarSet
trigger1   = Root,var(21) > 0
v          = 41
value      = 128
persistent = 1

[State 8500:            Set B (BLOOD HEAT)]
type       = VarSet
trigger1   = Root,var(21) > 0
v          = 42
value      = 128
persistent = 1

[State 8500:            Set R (BREAK)]
type       = VarSet
trigger1   = Root,var(23) > 0
v          = 40
value      = 64
persistent = 1

[State 8500:            Set G (BREAK)]
type       = VarSet
trigger1   = Root,var(23) > 0
v          = 41
value      = 0
persistent = 1

[State 8500:            Set B (BREAK)]
type       = VarSet
trigger1   = Root,var(23) > 0
v          = 42
value      = 64
persistent = 1

[State 8500:            Set R (Unlimited)]
type       = VarSet
trigger1   = Root,var(20) <= 0
trigger1   = Root,var(21) <= 0
trigger1   = Root,var(23) <= 0
trigger1   = Root,var(54) > 0
v          = 40
value      = 64
persistent = 1

[State 8500:            Set G (Unlimited)]
type       = VarSet
trigger1   = Root,var(20) <= 0
trigger1   = Root,var(21) <= 0
trigger1   = Root,var(23) <= 0
trigger1   = Root,var(54) > 0
v          = 41
value      = 128
persistent = 1

[State 8500:            Set B (Unlimited)]
type       = VarSet
trigger1   = Root,var(20) <= 0
trigger1   = Root,var(21) <= 0
trigger1   = Root,var(23) <= 0
trigger1   = Root,var(54) > 0
v          = 42
value      = 168
persistent = 1

[State 8500:            Set R (MAX)]
type       = VarSet
trigger1   = Root,var(24) > 0
v          = 40
value      = 225
persistent = 1

[State 8500:            Set G (MAX)]
type       = VarSet
trigger1   = Root,var(24) > 0
v          = 41
value      = 128
persistent = 1

[State 8500:            Set B (MAX)]
type       = VarSet
trigger1   = Root,var(24) > 0
v          = 42
value      = 32
persistent = 1

;-------[ Gauge Frame ]-------;

[State 8500:            Gauge Frame (1P)]
type          = Explod
trigger1      = Time = 0
trigger1      = !NumExplod(8500)
trigger1      = TeamSide = 1
anim          = 8500
id            = 8500
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 99
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            Gauge Frame (2P)]
type          = Explod
trigger1      = Time = 0
trigger1      = !NumExplod(8500)
trigger1      = TeamSide = 2
anim          = 8501
id            = 8500
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 99
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            Gauge Bar (1P)]
type          = Explod
trigger1      = Time = 0
trigger1      = !NumExplod(8600)
trigger1      = TeamSide = 1
anim          = 8600
id            = 8600
postype       = Left
pos           = var(50), var(51)
ownpal        = 0
sprpriority   = 99
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5 * 0.72, 0.5 * 0.65
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            Gauge Bar (2P)]
type          = Explod
trigger1      = Time = 0
trigger1      = !NumExplod(8600)
trigger1      = TeamSide = 2
anim          = 8601
id            = 8600
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 0
sprpriority   = 99
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5 * 0.72, 0.5 * 0.65
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ Numbers ]-------;

[State 8500:            Remove Dot]
type       = RemoveExplod
triggerall = NumExplod(8530)
trigger1   = var(0) != var(5)
trigger2   = Root,var(20) > 0
trigger3   = Root,var(21) > 0
trigger4   = Root,var(54) > 0
trigger5   = Root,var(23) > 0
trigger6   = Root,var(24) > 0
id         = 8530

[State 8500:            Remove Dot, BG]
type       = RemoveExplod
triggerall = NumExplod(8630)
trigger1   = var(0) != var(5)
trigger2   = Root,var(20) > 0
trigger3   = Root,var(21) > 0
trigger4   = Root,var(54) > 0
trigger5   = Root,var(23) > 0
trigger6   = Root,var(24) > 0
id         = 8630

[State 8500:            Remove Percent]
type       = RemoveExplod
triggerall = NumExplod(8531)
trigger1   = var(0) != var(5)
trigger2   = Root,var(20) > 0
trigger3   = Root,var(21) > 0
trigger4   = Root,var(54) > 0
trigger5   = Root,var(23) > 0
trigger6   = Root,var(24) > 0
id         = 8531

[State 8500:            Remove Percent, BG]
type       = RemoveExplod
triggerall = NumExplod(8631)
trigger1   = var(0) != var(5)
trigger2   = Root,var(20) > 0
trigger3   = Root,var(21) > 0
trigger4   = Root,var(54) > 0
trigger5   = Root,var(23) > 0
trigger6   = Root,var(24) > 0
id         = 8631

[State 8500:            Remove MAX]
type     = RemoveExplod
trigger1 = NumExplod(8570)
trigger1 = Root,var(24) <= 0
id       = 8570

[State 8500:            Remove MAX BG]
type     = RemoveExplod
trigger1 = NumExplod(8575)
trigger1 = Root,var(24) <= 0
id       = 8575

[State 8500:            Remove Heat]
type     = RemoveExplod
trigger1 = NumExplod(8571)
trigger1 = Root,var(20) <= 0
id       = 8571

[State 8500:            Remove Heat BG]
type     = RemoveExplod
trigger1 = NumExplod(8576)
trigger1 = Root,var(20) <= 0
id       = 8576

[State 8500:            Remove Blood Heat]
type     = RemoveExplod
trigger1 = NumExplod(8572)
trigger1 = Root,var(21) <= 0
id       = 8572

[State 8500:            Remove Blood Heat BG]
type     = RemoveExplod
trigger1 = NumExplod(8577)
trigger1 = Root,var(21) <= 0
id       = 8577

[State 8500:            Remove Break]
type     = RemoveExplod
trigger1 = NumExplod(8574)
trigger1 = Root,var(23) <= 0
id       = 8574

[State 8500:            Remove Break, FG]
type     = RemoveExplod
trigger1 = NumExplod(8579)
trigger1 = Root,var(23) <= 0
id       = 8579

[State 8500:            Remove Break Gauge]
type     = RemoveExplod
trigger1 = NumExplod(8505)
trigger1 = Root,var(23) <= 0
id       = 8505

[State 8500:            Remove Unlimited]
type       = RemoveExplod
triggerall = NumExplod(8573)
trigger1   = Root,var(54) <= 0
trigger2   = Root,var(20) > 0
trigger3   = Root,var(21) > 0
trigger4   = Root,var(23) > 0
id         = 8573

[State 8500:            Remove Unlimited, FG]
type       = RemoveExplod
triggerall = NumExplod(8578)
trigger1   = Root,var(54) <= 0
trigger2   = Root,var(20) > 0
trigger3   = Root,var(21) > 0
trigger4   = Root,var(23) > 0
id         = 8578

[State 8500:            Remove Number]
type       = RemoveExplod
triggerall = NumExplod(8510)
trigger1   = Root,var(20) > 0
trigger2   = Root,var(21) > 0
trigger3   = Root,var(54) > 0
trigger4   = Root,var(23) > 0
trigger5   = Root,var(24) > 0
id         = 8510

[State 8500:            Remove Number, BG]
type       = RemoveExplod
triggerall = NumExplod(8610)
trigger1   = Root,var(20) > 0
trigger2   = Root,var(21) > 0
trigger3   = Root,var(54) > 0
trigger4   = Root,var(23) > 0
trigger5   = Root,var(24) > 0
id         = 8610

[State 8500:            Remove Number]
type       = RemoveExplod
triggerall = NumExplod(8520)
trigger1   = Root,var(20) > 0
trigger2   = Root,var(21) > 0
trigger3   = Root,var(54) > 0
trigger4   = Root,var(23) > 0
trigger5   = Root,var(24) > 0
id         = 8520

[State 8500:            Remove Number, BG]
type       = RemoveExplod
triggerall = NumExplod(8620)
trigger1   = Root,var(20) > 0
trigger2   = Root,var(21) > 0
trigger3   = Root,var(54) > 0
trigger4   = Root,var(23) > 0
trigger5   = Root,var(24) > 0
id         = 8620

[State 8500:            View Dot (1P), BG]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8630)
trigger1      = TeamSide = 1
anim          = 8630
id            = 8630
postype       = Left
pos           = var(50) + 79, var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Dot (2P), BG]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8630)
trigger1      = TeamSide = 2
anim          = 8630
id            = 8630
postype       = Right
pos           = (0 - var(50) - 70), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Dot (1P)]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8530)
trigger1      = TeamSide = 1
anim          = 8530 + (var(0) >= 100) * 30
id            = 8530
postype       = Left
pos           = var(50) + 79, var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Dot (2P)]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8530)
trigger1      = TeamSide = 2
anim          = 8530 + (var(0) >= 100) * 30
id            = 8530
postype       = Right
pos           = (0 - var(50) - 70), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Percent (1P), BG]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8631)
trigger1      = TeamSide = 1
anim          = 8631
id            = 8631
postype       = Left
pos           = var(50) + 91, var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Percent (2P), BG]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8631)
trigger1      = TeamSide = 2
anim          = 8631
id            = 8631
postype       = Right
pos           = (0 - var(50) - 58), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Percent (1P)]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8531)
trigger1      = TeamSide = 1
anim          = 8531 + (var(0) >= 100) * 30
id            = 8531
postype       = Left
pos           = var(50) + 91, var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View Percent (2P)]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) <= 0
triggerall    = Root,var(24) <= 0
trigger1      = !NumExplod(8531)
trigger1      = TeamSide = 2
anim          = 8531 + (var(0) >= 100) * 30
id            = 8531
postype       = Right
pos           = (0 - var(50) - 58), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View MAX (1P) BG]
type          = Explod
triggerall    = Root,var(24) > 0
trigger1      = !NumExplod(8575)
trigger1      = TeamSide = 1
anim          = 8575
id            = 8575
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View MAX (2P) BG]
type          = Explod
triggerall    = Root,var(24) > 0
trigger1      = !NumExplod(8575)
trigger1      = TeamSide = 2
anim          = 8585
id            = 8575
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View MAX (1P)]
type          = Explod
triggerall    = Root,var(24) > 0
trigger1      = !NumExplod(8570)
trigger1      = TeamSide = 1
anim          = 8570
id            = 8570
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View MAX (2P)]
type          = Explod
triggerall    = Root,var(24) > 0
trigger1      = !NumExplod(8570)
trigger1      = TeamSide = 2
anim          = 8580
id            = 8570
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View HEAT (1P) BG]
type          = Explod
triggerall    = Root,var(20) > 0
trigger1      = !NumExplod(8576)
trigger1      = TeamSide = 1
anim          = 8576
id            = 8576
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View HEAT (2P) BG]
type          = Explod
triggerall    = Root,var(20) > 0
trigger1      = !NumExplod(8576)
trigger1      = TeamSide = 2
anim          = 8586
id            = 8576
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View HEAT (1P)]
type          = Explod
triggerall    = Root,var(20) > 0
trigger1      = !NumExplod(8571)
trigger1      = TeamSide = 1
anim          = 8571
id            = 8571
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View HEAT (2P)]
type          = Explod
triggerall    = Root,var(20) > 0
trigger1      = !NumExplod(8571)
trigger1      = TeamSide = 2
anim          = 8581
id            = 8571
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BLOOD HEAT (1P) BG]
type          = Explod
triggerall    = Root,var(21) > 0
trigger1      = !NumExplod(8577)
trigger1      = TeamSide = 1
anim          = 8577
id            = 8577
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BLOOD HEAT (2P) BG]
type          = Explod
triggerall    = Root,var(21) > 0
trigger1      = !NumExplod(8577)
trigger1      = TeamSide = 2
anim          = 8587
id            = 8577
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BLOOD HEAT (1P)]
type          = Explod
triggerall    = Root,var(21) > 0
trigger1      = !NumExplod(8572)
trigger1      = TeamSide = 1
anim          = 8572
id            = 8572
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BLOOD HEAT (2P)]
type          = Explod
triggerall    = Root,var(21) > 0
trigger1      = !NumExplod(8572)
trigger1      = TeamSide = 2
anim          = 8582
id            = 8572
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BREAK (1P)]
type          = Explod
triggerall    = Root,var(23) > 0
trigger1      = !NumExplod(8574)
trigger1      = TeamSide = 1
anim          = 8574
id            = 8574
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BREAK (2P)]
type          = Explod
triggerall    = Root,var(23) > 0
trigger1      = !NumExplod(8574)
trigger1      = TeamSide = 2
anim          = 8584
id            = 8574
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BREAK (1P), FG]
type          = Explod
triggerall    = Root,var(23) > 0
trigger1      = !NumExplod(8579)
trigger1      = TeamSide = 1
anim          = 8579
id            = 8579
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BREAK (2P), FG]
type          = Explod
triggerall    = Root,var(23) > 0
trigger1      = !NumExplod(8579)
trigger1      = TeamSide = 2
anim          = 8589
id            = 8579
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View UNLIMITED (1P)]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) > 0
trigger1      = !NumExplod(8573)
trigger1      = TeamSide = 1
anim          = 8573
id            = 8573
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View UNLIMITED (2P)]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) > 0
trigger1      = !NumExplod(8573)
trigger1      = TeamSide = 2
anim          = 8583
id            = 8573
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View UNLIMITED (1P), FG]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) > 0
trigger1      = !NumExplod(8578)
trigger1      = TeamSide = 1
anim          = 8578
id            = 8578
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View UNLIMITED (2P), FG]
type          = Explod
triggerall    = Root,var(20) <= 0
triggerall    = Root,var(21) <= 0
triggerall    = Root,var(23) <= 0
triggerall    = Root,var(54) > 0
trigger1      = !NumExplod(8578)
trigger1      = TeamSide = 2
anim          = 8588
id            = 8578
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BREAK GAUGE (1P)]
type          = Explod
triggerall    = Root,var(23) > 0
trigger1      = !NumExplod(8505)
trigger1      = TeamSide = 1
anim          = 8505
id            = 8505
postype       = Left
pos           = var(50), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8500:            View BREAK GAUGE (2P)]
type          = Explod
triggerall    = Root,var(23) > 0
trigger1      = !NumExplod(8505)
trigger1      = TeamSide = 2
anim          = 8506
id            = 8505
postype       = Right
pos           = (0 - var(50)), var(51)
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ Modify Gauges ]-------;

[State 8500:            Scaling Internal Bar]
type     = ModifyExplod
trigger1 = 1
id       = 8600
scale    = 0.5 * 0.727 * fvar(0), 0.5 * 0.65

[State 8500:            Pal]
type     = PalFX
trigger1 = 1
add      = var(40), var(41), var(42)
time     = 1

;-------[ View Numbers ]-------;

[State 8500:            View High Numbers]
type       = ChangeState
triggerall = Root,var(20) <= 0
triggerall = Root,var(21) <= 0
triggerall = Root,var(23) <= 0
triggerall = Root,var(54) <= 0
triggerall = Root,var(24) <= 0
trigger1   = !NumExplod(8510)
trigger2   = var(0) != var(5)
value      = 8510

;[State 8500:            View Low Numbers]
;type     = ChangeState
;trigger1 = !NumExplod(8520)
;trigger2 = var(1) != var(6)
;trigger3 = var(0) != var(5)
;value    = 8520

;------------------------------------------------------------------------------;
; 上位桁表示ステート
;------------------------------------------------------------------------------;
[Statedef 8510]
type     = U
movetype = U
physics  = U
ctrl     = 0

;-------[ Reset ]-------;

[State 8510:            Remove]
type     = RemoveExplod
trigger1 = Time = 0
id       = 8510

[State 8510:            Remove, BG]
type     = RemoveExplod
trigger1 = Time = 0
id       = 8610

[State 8510:            Save Number]
type     = VarSet
trigger1 = Time = 0
v        = 5
value    = var(0)

;-------[ State ]-------;

[State 8510:            Goto Loop]
type     = ChangeState
trigger1 = Time = 0
value    = 8511

;------------------------------------------------------------------------------;
; 上位桁表示ステート (Loop)
;------------------------------------------------------------------------------;
[Statedef 8511]
type     = U
movetype = U
physics  = U
ctrl     = 0

;-------[ Numbers ]-------;

[State 8511:            Number (1P), BG]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 1
anim          = 8610 + (var(0) % 10)
id            = 8610
postype       = Left
pos           = (var(50) + 80) - (7 * NumExplod(8610)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8511:            Number (2P), BG]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 2
anim          = 8610 + (var(0) % 10)
id            = 8610
postype       = Right
pos           = (0 - var(50) - 69) - (7 * NumExplod(8610)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8511:            Number (1P)]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 1
anim          = 8510 + (var(5) >= 100) * 30 + (var(0) % 10)
id            = 8510
postype       = Left
pos           = (var(50) + 80) - (7 * NumExplod(8510)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8511:            Number (2P)]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 2
anim          = 8510 + (var(5) >= 100) * 30 + (var(0) % 10)
id            = 8510
postype       = Right
pos           = (0 - var(50) - 69) - (7 * NumExplod(8510)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ Vars ]-------;

[State 8510:            Shift]
type     = VarSet
trigger1 = Time = 0
v        = 0
value    = var(0) / 10

;-------[ States ]-------;

[State 8510:            Loop]
type     = ChangeState
trigger1 = Time = 0
trigger1 = var(0) > 0
value    = 8511

[State 8510:            End Loop, Low Numbers]
type     = ChangeState
trigger1 = Time = 0
trigger1 = var(0) <= 0
value    = 8520

;------------------------------------------------------------------------------;
; 下位桁表示ステート
;------------------------------------------------------------------------------;
[Statedef 8520]
type     = U
movetype = U
physics  = U
ctrl     = 0

;-------[ Reset ]-------;

[State 8510:            Remove]
type     = RemoveExplod
trigger1 = Time = 0
id       = 8520

[State 8510:            Remove, BG]
type     = RemoveExplod
trigger1 = Time = 0
id       = 8620

[State 8510:            Save Number]
type     = VarSet
trigger1 = Time = 0
v        = 6
value    = var(1)

;-------[ State ]-------;

[State 8510:            Goto Loop]
type     = ChangeState
trigger1 = Time = 0
value    = 8521

;------------------------------------------------------------------------------;
; 下位桁表示ステート (Loop)
;------------------------------------------------------------------------------;
[Statedef 8521]
type     = U
movetype = U
physics  = U
ctrl     = 0

;-------[ Numbers ]-------;

[State 8511:            Number (1P), BG]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 1
anim          = 8620 + (var(1) % 10)
id            = 8620
postype       = Left
pos           = (var(50) + 77) + (7 * NumExplod(8620)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8511:            Number (2P), BG]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 2
anim          = 8620 + (var(1) % 10)
id            = 8620
postype       = Right
pos           = (0 - var(50) - 72) + (7 * NumExplod(8620)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8511:            Number (1P)]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 1
anim          = 8520 + (var(5) >= 100) * 30 + (var(1) % 10)
id            = 8520
postype       = Left
pos           = (var(50) + 77) + (7 * NumExplod(8520)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[State 8511:            Number (2P)]
type          = Explod
trigger1      = Time = 0
trigger1      = TeamSide = 2
anim          = 8520 + (var(5) >= 100) * 30 + (var(1) % 10)
id            = 8520
postype       = Right
pos           = (0 - var(50) - 72) + (7 * NumExplod(8520)), var(51) - 7
ownpal        = 1
sprpriority   = 100
ontop         = 1
bindtime      = -1
removetime    = -1
scale         = 0.5, 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ Vars ]-------;

[State 8510:            Shift]
type     = VarSet
trigger1 = Time = 0
v        = 1
value    = var(1) / 10

;-------[ States ]-------;

[State 8510:            Loop]
type     = ChangeState
trigger1 = Time = 0
trigger1 = var(1) > 0
value    = 8521

[State 8510:            End Loop]
type     = ChangeState
trigger1 = Time = 0
trigger1 = var(1) <= 0
value    = 8500


;==============================================================================;
; ブロッキング判定
;==============================================================================;
;------------------------------------------------------------------------------;
; ブロッキング (上段) 判定
;------------------------------------------------------------------------------;
[Statedef 9800]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 9800

;-------[ Destroy ]-------;

[State 9800:            Destroy]
type           = DestroySelf
trigger1       = !(Root,Ctrl)
trigger2       = Root,MoveType = H
trigger3       = Root,StateType = A
trigger4       = Root,var(16) <= 0
trigger5       = Root,var(16) > 10
trigger6       = !(Root,var(15) & 4)
trigger6       = Root,var(16) > 5
trigger7       = Root,StateNo = 900     ; 立ちシールド
ignorehitpause = 1
persistent     = 1

;-------[ Anim ]-------;

;-------[ Movement ]-------;

[State 9800:            Invisible]
type           = AssertSpecial
trigger1       = 1
flag           = InVisible
flag2          = NoShadow
ignorehitpause = 1
persistent     = 1

[State 9800:            Bind]
type           = BindToRoot
trigger1       = 1
pos            = 0, 0
time           = 1
facing         = 1
ignorehitpause = 1
persistent     = 1

;-------[ Blockinig ]-------;

[State 9800:            Blocking (Reversal)]
type          = ReversalDef
trigger1      = 1
attr          = S, NA
reversal.attr = SA, NA, SA, HA, NP, SP, HP
pausetime     = 0, 0
sparkno       = -1
sparkxy       = 0, 0
hitsound      = -1
p1stateno     = 9801

;------------------------------------------------------------------------------;
; ブロッキング (上段) 成立
;------------------------------------------------------------------------------;
[Statedef 9801]
type     = S
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 9800:            Invisible]
type           = AssertSpecial
trigger1       = 1
flag           = InVisible
flag2          = NoShadow
ignorehitpause = 1
persistent     = 1

;-------[ Destroy ]-------;

[State 9800:            Destroy]
type     = DestroySelf
trigger1 = Root,StateNo = [901, 902]
trigger2 = !(Root,Ctrl)
trigger3 = Root,MoveType = H
trigger4 = Root,var(16) <= 0
trigger5 = Root,var(16) > 10
trigger6 = !(Root,var(15) & 4)
trigger6 = Root,var(16) > 5

;------------------------------------------------------------------------------;
; ブロッキング (下段) 判定
;------------------------------------------------------------------------------;
[Statedef 9810]
type     = C
movetype = I
physics  = N
ctrl     = 0
anim     = 9810

;-------[ Destroy ]-------;

[State 9800:            Destroy]
type           = DestroySelf
trigger1       = !(Root,Ctrl)
trigger2       = Root,MoveType = H
trigger3       = Root,StateType = A
trigger4       = Root,var(17) <= 0
trigger5       = Root,var(17) > 10
trigger6       = !(Root,var(15) & 2)
trigger6       = Root,var(17) > 5
trigger7       = Root,StateNo = 910     ; しゃがみシールド
ignorehitpause = 1
persistent     = 1

;-------[ Anim ]-------;

;-------[ Movement ]-------;

[State 9800:            Invisible]
type           = AssertSpecial
trigger1       = 1
flag           = InVisible
flag2          = NoShadow
ignorehitpause = 1
persistent     = 1

[State 9800:            Bind]
type           = BindToRoot
trigger1       = 1
pos            = 0, 0
time           = 1
facing         = 1
ignorehitpause = 1
persistent     = 1

;-------[ Blockinig ]-------;

[State 9800:            Blocking (Reversal)]
type          = ReversalDef
trigger1      = 1
attr          = C, NA
reversal.attr = C, NA, SA, HA, NP, SP, HP
pausetime     = 0, 0
sparkno       = -1
sparkxy       = 0, 0
hitsound      = -1
p1stateno     = 9811

;------------------------------------------------------------------------------;
; ブロッキング (下段) 成立
;------------------------------------------------------------------------------;
[Statedef 9811]
type     = C
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 9800:            Invisible]
type           = AssertSpecial
trigger1       = 1
flag           = InVisible
flag2          = NoShadow
ignorehitpause = 1
persistent     = 1

;-------[ Destroy ]-------;

[State 9800:            Destroy]
type     = DestroySelf
trigger1 = Root,StateNo = [911, 912]
trigger2 = !(Root,Ctrl)
trigger3 = Root,MoveType = H
trigger4 = Root,var(17) <= 0
trigger5 = Root,var(17) > 10
trigger6 = !(Root,var(15) & 2)
trigger6 = Root,var(17) > 5

;------------------------------------------------------------------------------;
; ブロッキング (空中) 判定
;------------------------------------------------------------------------------;
[Statedef 9820]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 9820

;-------[ Destroy ]-------;

[State 9800:            Destroy]
type           = DestroySelf
trigger1       = !(Root,Ctrl)
trigger2       = Root,MoveType = H
trigger3       = Root,StateType != A
trigger4       = Root,var(18) <= 0
trigger5       = Root,var(18) > 10
trigger6       = !(Root,var(15) & 1)
trigger6       = Root,var(18) > 5
trigger7       = Root,StateNo = 920     ; 空中シールド
ignorehitpause = 1
persistent     = 1

;-------[ Anim ]-------;

;-------[ Movement ]-------;

[State 9800:            Invisible]
type           = AssertSpecial
trigger1       = 1
flag           = InVisible
flag2          = NoShadow
ignorehitpause = 1
persistent     = 1

[State 9800:            Bind]
type           = BindToRoot
trigger1       = 1
pos            = 0, 0
time           = 1
facing         = 1
ignorehitpause = 1
persistent     = 1

;-------[ Blockinig ]-------;

[State 9800:            Blocking (Reversal)]
type          = ReversalDef
trigger1      = 1
attr          = A, NA
reversal.attr = SCA, NA, SA, HA, NP, SP, HP
pausetime     = 0, 0
sparkno       = -1
sparkxy       = 0, 0
hitsound      = -1
p1stateno     = 9821

;------------------------------------------------------------------------------;
; ブロッキング (空中) 成立
;------------------------------------------------------------------------------;
[Statedef 9821]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 9800:            Invisible]
type           = AssertSpecial
trigger1       = 1
flag           = InVisible
flag2          = NoShadow
ignorehitpause = 1
persistent     = 1

;-------[ Destroy ]-------;

[State 9800:            Destroy]
type     = DestroySelf
trigger1 = Root,StateNo = [921, 922]
trigger2 = !(Root,Ctrl)
trigger3 = Root,MoveType = H
trigger4 = Root,var(18) <= 0
trigger5 = Root,var(18) > 10
trigger6 = !(Root,var(15) & 1)
trigger6 = Root,var(18) > 5


;==============================================================================;
; HEATエフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; HEAT
;------------------------------------------------------------------------------;
[Statedef 9900]
type        = A
movetype    = I
physics     = N
ctrl        = 0
sprpriority = -2

;-------[ Anim ]-------;

[State 9900:            Root Anim]
type       = ChangeAnim
trigger1   = SelfAnimExist(Root,Anim)
value      = Root,Anim
elem       = Root,AnimElemNo(0)
persistent = 1

;-------[ Movement ]-------;

[State 9900:            Not hit]
type     = NotHitBy
trigger1 = 1
value    = SCA, NA, SA, HA, NT, ST, HT, NP, SP, HP
time     = 2

[State 9900:            Bind]
type     = BindToRoot
trigger1 = 1
pos      = 0, 0
facing   = 1

[State 9900:            No Shadow]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = InVisible

[State 9900:            Scaling]
type     = AngleDraw
trigger1 = 1
scale    = 1.025, 1.025

;-------[ Effects ]-------;

[State 9900:            After Image (HEAT)]
type        = AfterImage
trigger1    = Time = 0
trigger1    = Root,var(20) > 0
time        = -1
trans       = Add
length      = 10
timegap     = 1
framegap    = 1
palbright   = 0, 0, 0
palcontrast = 64, 64, 256
paladd      = 0, 0, 0
palmul      = 1, 1, 1

[State 9900:            After Image (BLOOD HEAT)]
type        = AfterImage
trigger1    = Time = 0
trigger1    = Root,var(21) > 0
time        = -1
trans       = Add
length      = 12
timegap     = 1
framegap    = 1
palbright   = 0, 0, 0
palcontrast = 128, 128, 64
paladd      = 0, 0, 0
palmul      = 1, 1, 1

[State 9900:            After Image Time]
type     = AfterImageTime
trigger1 = 1
time     = 2

;------[ States ]-------;

[State 9900:            Destroy]
type     = DestroySelf
trigger1 = Root,var(20) <= 0
trigger1 = Root,var(21) <= 0
trigger2 = Root,MoveType = H && (Root,StateNo != [120, 155])


;==============================================================================;
; AI起動ヘルパー
;
; var(58) = 0   : UNKNOWN
;         = -1  : PLAYER
;         = -2  : PLAYER (TRAINING MODE)
;         > 0   : AI
;==============================================================================;
[Statedef 9999]
type     = A
movetype = I
physics  = N
anim     = 9999
ctrl     = 0

;-------[ Movement ]-------;

[State 9999:            Self]
type           = SelfState
trigger1       = !IsHelper
value          = 0
ctrl           = 1
ignorehitpause = 1

[State 9999:            In Visible]
type           = AssertSpecial
trigger1       = 1
flag           = NoShadow
flag2          = InVisible
ignorehitpause = 1

[State 9999:            Bind]
type           = BindToRoot
trigger1       = 1
pos            = 0, 0
facing         = 1

;-------[ Check AI or Player ]-------;

[State 9999:            Check Player]
type       = VarSet
triggerall = Root,var(59) = 0
triggerall = Root,var(58) = 0
trigger1   = command = "up" && Root,command = "up"
trigger2   = command = "down" && Root,command = "down"
trigger3   = command = "fwd" && Root,command = "fwd"
trigger4   = command = "back" && Root,command = "back"
trigger5   = command = "a" && Root,command = "a"
trigger6   = command = "b" && Root,command = "b"
trigger7   = command = "c" && Root,command = "c"
trigger8   = command = "x" && Root,command = "x"
trigger9   = command = "y" && Root,command = "y"
trigger10  = command = "z" && Root,command = "z"
trigger11  = command = "start" && Root,command = "start"
v          = 58
value      = -1

[State 9999:            Destroy]
type     = DestroySelf
trigger1 = Root,var(59) != 0
trigger2 = Root,var(58) != 0

[State 9999:            Check AI]
type       = VarSet
triggerall = Root,var(59) = 0
triggerall = Root,var(58) = 0
trigger1   = Root,command = "up" && command != "up"
trigger2   = Root,command = "down" && command != "down"
trigger3   = Root,command = "fwd" && command != "fwd"
trigger4   = Root,command = "back" && command != "back"
trigger5   = Root,command = "a" && command != "a"
trigger6   = Root,command = "b" && command != "b"
trigger7   = Root,command = "c" && command != "c"
trigger8   = Root,command = "x" && command != "x"
trigger9   = Root,command = "y" && command != "y"
trigger10  = Root,command = "z" && command != "z"
trigger11  = Root,command = "start" && command != "start"
v          = 58
value      = 1


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date$
;==============================================================================;
