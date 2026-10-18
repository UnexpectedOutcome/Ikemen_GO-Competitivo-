; vim: set ts=4 sw=4 sts=4 expandtab: =========================================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;==============================================================================;
;                             [ コモンステート ]                               ;
;==============================================================================;
;------------------------------------------------------------------------------;
; ジャンプステート
;
; sysvar(1) : 方向
; sysvar(4) : ハイジャンプ / 小ジャンプ
;------------------------------------------------------------------------------;
[Statedef 40]
type        = S
movetype    = I
physics     = N
ctrl        = 0
sprpriority = 1

;-------[ Safety for AI ] -------;

[State 40:          Return Standing]
type       = ChangeState
triggerall = var(59) >= 4
triggerall = Time = 0
trigger1   = P2StateType != A
trigger1   = Random < 350
trigger2   = Random < 225
trigger3   = P2StateType = L
trigger4   = FrontEdgeBodyDist < 60
trigger5   = BackEdgeBodyDist < 40
value      = 0
ctrl       = 1

;-------[ Vars ]-------;

[State 40:          Reset Dir]
type      = VarSet
trigger1  = Time = 0
sysvar(1) = 0

[State 40:          Reset High]
type      = VarSet
trigger1  = Time = 0
sysvar(4) = 0

[State 40:          Forward Jump]
type       = VarSet
triggerall = Time = 0
trigger1   = command = "holdfwd"
trigger2   = var(59)
trigger2   = Random < 450 - (FrontEdgeBodyDist < 50) * 300
sysvar(1)  = 1

[State 40:          Back Jump]
type       = VarSet
triggerall = Time = 0
trigger1   = command = "holdback"
trigger2   = var(59)
trigger2   = Random < 250 - (BackEdgeBodyDist < 50) * 200
sysvar(1)  = -1

[State 40:          Small Jump]
type       = VarSet
triggerall = sysvar(4) = 0
trigger1   = command != "holdup"
sysvar(4)  = -1

[State 40:          High Jump]
type       = VarSet
triggerall = sysvar(4) = 0
trigger1   = command = "longjump"
trigger2   = PrevStateNo = 100 && sysvar(1) = 1
sysvar(4)  = 1

;-------[ Anim ]-------;

[State 40:          Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = 39 + sysvar(1)
elem     = ifelse(PrevStateNo = 52, 3, 1)

[State 40:          Anim, 2, Dash Jump]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
trigger1 = sysvar(1) = 1
value    = 40
elem     = 3

;-------[ Movement ]-------;

[State 40:          Invincible for Throw]
type     = NotHitBy
trigger1 = 1
value    = SC, NT, ST, HT
time     = 1

[State 40:          Vel, Normal Jump]
type     = VelSet
trigger1 = AnimTime = 0
x        = ifelse(sysvar(1) = 0, const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * ifelse(sysvar(4) = 0, 1.0, ifelse(sysvar(4) > 0, 1.45, 0.75))
y        = const(velocity.jump.y) * ifelse(sysvar(4) = 0, 1.0, ifelse(sysvar(4) > 0, 1.15, 0.75))

[State 40:          Vel, Dash Jump]
type     = VelSet
trigger1 = AnimTime = 0
trigger1 = PrevStateNo = 100
trigger1 = sysvar(1) = 1
x        = const(velocity.runjump.fwd.x)
y        = const(velocity.runjump.y)

;-------[ States ]-------;

[State 40:          ChangeState, Up]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 50
ctrl     = 1

;------------------------------------------------------------------------------;
; 空中ジャンプ
;------------------------------------------------------------------------------;
[Statedef 45]
type     = A
movetype = I
physics  = N
ctrl     = 0
velset   = 0, 0

;-------[ Air Movement Control ]-------;

[State 45:          Air Jump Movement Control]
type     = VarAdd
trigger1 = Time = 0
v        = 29
value    = 1

;-------[ Direction ]-------;

[State 45:          Reset Direction]
type      = VarSet
trigger1  = Time = 0
sysvar(1) = 0

[State 45:          Set Forward]
type      = VarSet
trigger1  = Time = 0
trigger1  = command = "holdfwd"
sysvar(1) = 1

[State 45:          Set Backward]
type      = VarSet
trigger1  = Time = 0
trigger1  = command = "holdback"
sysvar(1) = -1

;-------[ Anim ]-------;

[State 45:          Select Anim]
type     = ChangeAnim
trigger1 = Time = 0
value    = ifelse(sysvar(1) > 0, 42, ifelse(sysvar(1) < 0, 43, 41))

;-------[ Movement ]-------;

[State 45:          Vel, 1]
type     = VelSet
trigger1 = Time = 2
x        = ifelse(sysvar(1) = 0, const(velocity.airjump.neu.x), ifelse(sysvar(1) = 1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y        = const(velocity.airjump.y)

;-------[ States ]-------;

[State 45:          Jump Up]
type     = ChangeState
trigger1 = Time = 2
value    = 50
ctrl     = 1

;------------------------------------------------------------------------------;
; ジャンプ (上昇)
;------------------------------------------------------------------------------;
[Statedef 50]
type    = A
physics = A

;-------[ Anim ]-------;

[State 50:          Anim, 1]
type     = ChangeAnim
trigger1 = Time = 0
value    = ifelse((Vel X) = 0, 41, ifelse((Vel X) > 0, 42, 43))

[State 50:          Anim, 2]
type       = ChangeAnim
trigger1   = Vel Y > -2
trigger1   = SelfAnimExist(Anim + 3)
value      = Anim + 3
persistent = 0

;-------[ Sounds ]-------;

[State 50:          SE, 1]
type     = PlaySnd
trigger1 = Time = 0
trigger1 = PrevStateNo != 45
value    = 9, 5 + (sysvar(4) > 0)

[State 50:          SE, 2]
type     = PlaySnd
trigger1 = Time = 0
trigger1 = PrevStateNo = 45
value    = 9, 23

;-------[ Effects ]-------;

[State 50:          AfterImage]
type        = AfterImage
trigger1    = Time = 0
trigger1    = sysvar(4) > 0
time        = 42
palbright   = 1, 1, 1
palcontrast = 128, 128, 128
paladd      = 0, 0, 0
palmul      = 0.5, 0.5, 0.5
length      = 9
trans       = Add1
timegap     = 2
framegap    = 4
persistent  = 0

;-------[ Vars ]-------;

[State 50:          Reset Dir]
type      = VarSet
trigger1  = Time = 0
sysvar(1) = 0

[State 50:          Reset High]
type      = VarSet
trigger1  = Time = 0
sysvar(4) = 0

;------------------------------------------------------------------------------;
; ジャンプ落下
;
; ※ ガード解除 (StateDef 140) からこのステートへ遷移する
;------------------------------------------------------------------------------;
[Statedef 51]
type    = A
physics = A
anim    = 51

;-------[ Null ]-------;

[State 51:          Null, 1]
type     = Null
trigger1 = Time = 0

;------------------------------------------------------------------------------;
; ジャンプ 着地
;------------------------------------------------------------------------------;
[Statedef 52]
type    = S
physics = S
ctrl    = 0

;-------[ Anim ]-------;

[State 52:          Landing Anim]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim = [44, 46]
value    = Anim + 3

[State 52:          Landing Anim, 2, From Normal falling]
type       = ChangeAnim
triggerall = Time = 0
trigger1   = Anim = 51
trigger2   = Anim = 142
value      = 47

[State 52:          Landing Anim, 3, From Recovery]
type       = ChangeAnim
triggerall = Time = 0
trigger1   = Anim = 5040
trigger2   = Anim = 5200
trigger3   = Anim = 5210
value      = 49

[State 52:          Landing Anim, Default]
type       = ChangeAnim
triggerall = Time = 0
trigger1   = Anim != [47, 49]
value      = 47

;-------[ Movement ]-------;

[State 52:          Vel, 1]
type     = VelSet
trigger1 = Time = 0
y        = 0

[State 52:          Pos, 1]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 52:          Ctrl]
type       = CtrlSet
triggerall = !(P2Dist X < 0)
trigger1   = Anim = 47
trigger1   = AnimElem = 6
trigger2   = Anim = 48
trigger2   = AnimElem = 4
trigger3   = Anim = 49
trigger3   = AnimElem = 4
value      = 1

;-------[ Sounds ]-------;

[State 106:         SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 9, 3

;-------[ Effects ]-------;

[State 106:         Dust]
type        = Explod
trigger1    = Time = 0
anim        = 6201
postype     = p1
pos         = 0, 0
sprpriority = -5
scale       = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
ownpal      = 1

;-------[ States ]-------;

[State 52:          ChangeState, Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; 前方ダッシュ (ラン)
;------------------------------------------------------------------------------;
[Statedef 100]
type        = S
movetype    = I
physics     = S
anim        = 100
ctrl        = 0
sprpriority = 1

;-------[ Movement ]-------;

[State 100:         No Walk]
type     = AssertSpecial
trigger1 = 1
flag     = NoWalk
flag2    = NoAutoTurn

[State 100:         Vel, 1]
type     = VelSet
trigger1 = AnimElemTime(6) >= 0
x        = Const(Velocity.run.fwd.x)
y        = 0

;-------[ Sounds ]-------;

[State 100:         SE, 1]
type     = PlaySnd
trigger1 = AnimElem = 6
value    = 9, 24

[State 100:         Voice, 1]
type        = PlaySnd
trigger1    = AnimElem = 6
trigger1    = !var(50)
value       = 0, 100
channel     = 0
volume      = 127
lowpriority = 1

[State 100:         Voice, 2]
type        = PlaySnd
trigger1    = AnimElem = 6
trigger1    = var(50)
value       = 2, 100 + (Random % 3)
channel     = 0
volume      = 255
lowpriority = 1

;-------[ States ]-------;

[State 100:         ChangeState, Stop]
type       = ChangeState
triggerall = AnimElemTime(6) > 0
trigger1   = var(58) <= 0
trigger1   = command != "holdfwd"
trigger2   = var(58) > 0
trigger2   = (P2BodyDist X < 80) || (P2MoveType = A) || InGuardDist
trigger2   = Random < 245
value      = 101

[State 100:         ChangeState, Dash Jump]
type       = ChangeState
triggerall = AnimElemTime(6) > 0
trigger1   = var(58) <= 0
trigger1   = command = "holdup"
value      = 40

;------------------------------------------------------------------------------;
; 前方ダッシュ (ラン) 停止
;------------------------------------------------------------------------------;
[Statedef 101]
type        = S
movetype    = I
physics     = S
anim        = 101
ctrl        = 1
sprpriority = 1

;-------[ Sounds ]-------;

[State 101:         SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 9, 7

;-------[ Effects ]-------;

[State 101:         Dust]
type        = Explod
trigger1    = AnimElem = 2
anim        = 6202
postype     = p1
pos         = 10, 0
sprpriority = 5
scale       = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
ownpal      = 1

;-------[ States ]-------;

[State 101:         ChangeState, Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; バックステップ
;------------------------------------------------------------------------------;
[Statedef 105]
type        = S
movetype    = I
physics     = S
anim        = 105
ctrl        = 0
sprpriority = 0

;-------[ Movement ]-------;

[State 105:         State Type]
type      = StateTypeSet
trigger1  = AnimElem = 4
statetype = A
movetype  = I
physics   = N

[State 105:         Vel, 1]
type     = VelSet
trigger1 = AnimElem = 4
x        = Const(velocity.run.back.x)
y        = Const(velocity.run.back.y)

[State 105:         Gravity]
type     = Gravity
trigger1 = AnimElemTime(4) > 0

[State 105:         Invincible]
type     = NotHitBy
trigger1 = Time = 0
value    = SCA, NA, SA, HA, NT, ST, HT, NP, SP, HP
time     = 6

;-------[ Sounds ]-------;

[State 105:         SE, 1]
type     = PlaySnd
trigger1 = AnimElem = 4
value    = 9, 5

[State 105:         Voice, 1]
type        = PlaySnd
trigger1    = AnimElem = 4
trigger1    = !var(50)
trigger1    = Random < 350
value       = 0, 105
volume      = 127
channel     = 0
lowpriority = 1

;-------[ States ]-------;

[State 105:         ChangeState, Landing]
type       = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1   = Vel Y > 0
trigger1   = Pos Y >= 0
value      = 106
ctrl       = 0

;------------------------------------------------------------------------------;
; バックステップ 着地
;------------------------------------------------------------------------------;
[Statedef 106]
type        = S
movetype    = I
physics     = S
anim        = 106
ctrl        = 0
sprpriority = 1

;-------[ Movement ]-------;

[State 106:         Vel, 1, Reset]
type     = VelSet
trigger1 = Time = 0
y        = 0

[State 106:         Vel, 2, Reset]
type     = VelSet
trigger1 = AnimElem = 3
x        = 0

[State 106:         Pos, 1, Reset]
type     = PosSet
trigger1 = Time = 0
y        = 0

;-------[ Sounds ]-------;

[State 106:         SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 9, 3

;-------[ Effects ]-------;

[State 106:         Dust]
type        = Explod
trigger1    = Time = 0
anim        = 6201
postype     = p1
pos         = 0, 0
sprpriority = -5
scale       = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
ownpal      = 1

;-------[ States ]-------;

[State 106:         ChangeState, Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; 空中ダッシュ
;------------------------------------------------------------------------------;
[Statedef 110]
type     = A
movetype = I
physics  = N
anim     = 110
ctrl     = 0

;-------[ Movement ]-------;

[State 110:         Air Dash Movement Control]
type     = VarAdd
trigger1 = Time = 0
v        = 28
value    = 1

[State 110:         Vel, 1]
type     = VelSet
trigger1 = Time = 0
x        = const(velocity.run.fwd.x)
y        = -0.5

[State 110:         Vel, 2]
type     = VelMul
trigger1 = Time > 0
y        = 0.9

;-------[ Sounds ]-------;

[State 110:         SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 5, 2

[State 110:         Voice, 1]
type        = PlaySnd
trigger1    = Time = 0
trigger1    = !var(50)
trigger1    = Random < 350
value       = 0, 100
channel     = 0
volume      = 127
lowpriority = 1

[State 110:         Voice, 2]
type        = PlaySnd
trigger1    = Time = 0
trigger1    = var(50)
trigger1    = Random < 350
value       = 2, 100 + (Random % 3)
channel     = 0
volume      = 255
lowpriority = 1

;-------[ Effects ]-------;

[State 110:         Dash Effect]
type        = Explod
trigger1    = Time = 0
anim        = 6720
id          = 6720
postype     = p1
pos         = 0, Floor(-60 * const(size.yscale))
ownpal      = 1
sprpriority = 2

[State 110:         Dash Effect]
type        = Explod
trigger1    = Time = 0
anim        = 6721
id          = 6721
postype     = p1
pos         = 0, Floor(-60 * const(size.yscale))
ownpal      = 1
sprpriority = -1

;-------[ States ]-------;

[State 110:         State, 1]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 111

;------------------------------------------------------------------------------;
; 空中ダッシュ 落下
;------------------------------------------------------------------------------;
[Statedef 111]
type     = A
movetype = I
physics  = N
anim     = 111
ctrl     = 1

;-------[ Movement ]-------;

[State 110:         Gravity]
type     = Gravity
trigger1 = 1

[State 110:         Braking]
type     = VelMul
trigger1 = 1
x        = 0.98

;-------[ States ]-------;

[State 110:         Landing]
type     = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value    = 52
ctrl     = 1
anim     = 48

;------------------------------------------------------------------------------;
; 空中バックダッシュ
;------------------------------------------------------------------------------;
[Statedef 115]
type     = A
movetype = I
physics  = N
anim     = 115
ctrl     = 0

;-------[ Movement ]-------;

[State 110:         Air Dash Movement Control]
type     = VarAdd
trigger1 = Time = 0
v        = 28
value    = 1

[State 110:         Vel, 1]
type     = VelSet
trigger1 = Time = 0
x        = 0 - const(velocity.run.fwd.x) * 0.8
y        = const(velocity.run.back.y)

[State 110:         Vel, 2]
type     = VelMul
trigger1 = Time > 0
y        = 0.9

;-------[ Sounds ]-------;

[State 110:         SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 5, 2

[State 110:         Voice, 1]
type        = PlaySnd
trigger1    = Time = 0
trigger1    = !var(50)
trigger1    = Random < 250
value       = 0, 105
volume      = 127
channel     = 0
lowpriority = 1

;-------[ Effects ]-------;

[State 110:         Dash Effect]
type        = Explod
trigger1    = Time = 0
anim        = 6720
id          = 6720
postype     = p1
pos         = 0, Floor(-60 * const(size.yscale))
ownpal      = 1
sprpriority = 2
facing      = -1

[State 110:         Dash Effect]
type        = Explod
trigger1    = Time = 0
anim        = 6721
id          = 6721
postype     = p1
pos         = 0, Floor(-60 * const(size.yscale))
ownpal      = 1
sprpriority = -1
facing      = -1

;-------[ States ]-------;

[State 110:         State, 1]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 116

;------------------------------------------------------------------------------;
; 空中バックダッシュ 落下
;------------------------------------------------------------------------------;
[Statedef 116]
type     = A
movetype = I
physics  = A
anim     = 46
ctrl     = 1

;------[ Movement ]-------;

[State 115:         Braking]
type     = VelMul
trigger1 = 1
x        = 0.98


;==============================================================================;
; ガードステート
;==============================================================================;
;------------------------------------------------------------------------------;
; 立ちガード
;------------------------------------------------------------------------------;
[Statedef 130]
type    = S
physics = S

;-------[ Anim ]-------;

[State 130:         Anim, 1]
type     = ChangeAnim
trigger1 = Anim != 130
value    = 130

;-------[ States ]-------;

[State 130:         Change Guard, High to Low]
type     = ChangeState
trigger1 = !var(59)
trigger1 = command = "holddown"
trigger2 = var(59)
trigger2 = P2StateType = C
trigger2 = Random < 65 * (var(59) * 35)
value    = 131

[State 130:         Stop Guarding]
type     = ChangeState
trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !InGuardDist
trigger3 = var(59) && Time > 18
trigger3 = P2MoveType != A
trigger3 = Random < 85
trigger4 = var(59)
trigger4 = P2StateType = A
trigger4 = Random < 95
trigger5 = var(59)
trigger5 = P2StateType = L
value    = 140

;-------------------------------------------------------------------------------;
; しゃがみガード
;-------------------------------------------------------------------------------;
[Statedef 131]
type    = C
physics = C

;-------[ Anim ]-------;

[State 130:         Anim, 1]
type     = ChangeAnim
trigger1 = Anim != 131
value    = 131

;-------[ States ]-------;

[State 130:         Change Guard, Low to High]
type     = ChangeState
trigger1 = !var(59)
trigger1 = command != "holddown"
trigger2 = var(59)
trigger2 = P2StateType != C
trigger2 = Random < 65 + (var(59) * 35)
value    = 130

[State 130:         Stop Guarding]
type     = ChangeState
trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !InGuardDist
trigger3 = var(59) && Time > 18
trigger3 = P2MoveType != A
trigger3 = Random < 85
trigger4 = var(59)
trigger4 = P2StateType = A
trigger4 = Random < 145
trigger5 = var(59)
trigger5 = P2StateType = L
value    = 140

;-------------------------------------------------------------------------------;
; 空中ガード
;-------------------------------------------------------------------------------;
[Statedef 132]
type    = A
physics = N

;-------[ Anim ]-------;

[State 130:         Anim, 1]
type     = ChangeAnim
trigger1 = Anim != 132
value    = 132

;-------[ Movement ]-------;

[State 130:         Vel, 1, Gravity]
type     = VelAdd
trigger1 = 1
y        = Const(movement.yaccel)

[State 130:         Var, 1, Landing Flags]
type      = VarSet
trigger1  = 1
sysvar(0) = (Pos Y >= 0) && (Vel Y > 0)

[State 130:         Vel, 2, Landing]
type     = VelSet
trigger1 = sysvar(0)
y        = 0

[State 130:         Pos, 1, Landing]
type     = PosSet
trigger1 = sysvar(0)
y        = 0

;-------[ States ]-------;

[State 130:         Change Guard, Standing]
type       = ChangeState
triggerall = sysvar(0)
triggerall = InGuardDist
trigger1   = !var(59)
trigger1   = command = "holdback"
trigger2   = var(59)
trigger2   = Random < 345
value      = 130

[State 130:         Landing]
type     = ChangeState
trigger1 = sysvar(0)
value    = 52

[State 130:         Stop Guarding]
type     = ChangeState
trigger1 = !var(59)
trigger1 = command != "holdback"
trigger2 = !InGuardDist
trigger3 = var(59) && Time > 18
trigger3 = P2MoveType != A
trigger3 = Random < 85
trigger4 = var(59)
trigger4 = P2StateType = C
trigger4 = Random < 145
trigger5 = var(59)
trigger5 = P2StateType = L
value    = 140

;-------------------------------------------------------------------------------;
; 立ちガード
;-------------------------------------------------------------------------------;
[Statedef 150]
type     = S
movetype = H
physics  = N
velset   = 0, 0

;-------[ Just Defence ]-------;

[State 150:         Change Just Defence]
type       = ChangeState
triggerall = var(52) & 4
triggerall = Time = 0
trigger1   = var(19) > 0
trigger2   = var(54) = 3
value      = 950

;-------[ Anim ]-------;

[State 150:         ChangeAnim, 1]
type     = ChangeAnim
trigger1 = 1
value    = 150

;-------[ States ]-------;

[State 150:         ChangeState, Over]
type     = ChangeState
trigger1 = HitShakeOver
value    = 151 + (command = "holddown") * 2

[State 150:         StateType, 1, High to Low]
type      = StateTypeSet
trigger1  = StateType = S
trigger1  = command = "holddown"
statetype = C
physics   = C

[State 150:         StateType, 1, Low to High]
type      = StateTypeSet
trigger1  = StateType = C
trigger1  = command != "holddown"
statetype = S
physics   = S

;-------[ Movement ]-------;

[State 150:         Feedback]
type     = ForceFeedBack
trigger1 = Time = 0
waveform = square
time     = 3

;------------------------------------------------------------------------------;
; 立ちガード (ノックバック)
;------------------------------------------------------------------------------;
[Statedef 151]
type     = S
movetype = H
physics  = S
anim     = 150

;-------[ Movement ]-------;

[State 151:         Vel, 1, Hit Vel]
type     = HitVelSet
trigger1 = Time = 0
trigger1 = PrevStateNo != 950
x        = 1

[State 151:         Vel, 2, Stop Slide]
type     = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x        = 0

[State 151:         Ctrl, 1]
type     = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value    = 1

;-------[ State Types ]-------;

[State 151:         StateType, 1, High to Low]
type      = StateTypeSet
trigger1  = StateType = S && command = "holddown"
statetype = C
physics   = C

[State 151:         StateType, 2, Low to High]
type      = StateTypeSet
trigger1  = StateType = C && command != "holddown"
statetype = S
physics   = S

;-------[ States ]-------;

[State 151:         State, 1, Hit Over]
type     = ChangeState
trigger1 = HitOver
trigger2 = PrevStateNo = 950
trigger2 = Time >= (GetHitVar(ctrltime) / 2)
value    = 130
ctrl     = 1

;-------------------------------------------------------------------------------;
; しゃがみガード
;-------------------------------------------------------------------------------;
[Statedef 152]
type     = C
movetype = H
physics  = N
velset   = 0, 0

;-------[ Just Defence ]-------;

[State 150:         Change Just Defence]
type       = ChangeState
triggerall = var(52) & 4
triggerall = Time = 0
trigger1   = var(19) > 0
trigger2   = var(54) = 3
value      = 960

;-------[ Anim ]-------;

[State 150:         ChangeAnim, 1]
type     = ChangeAnim
trigger1 = 1
value    = 151

;-------[ States ]-------;

[State 150:         ChangeState, Over]
type     = ChangeState
trigger1 = HitShakeOver
value    = 151 + (command = "holddown") * 2

[State 150:         StateType, 1, High to Low]
type      = StateTypeSet
trigger1  = StateType = S
trigger1  = command = "holddown"
statetype = C
physics   = C

[State 150:         StateType, 1, Low to High]
type      = StateTypeSet
trigger1  = StateType = C
trigger1  = command != "holddown"
statetype = S
physics   = S

;-------[ Movement ]-------;

[State 150:         Feedback]
type     = ForceFeedBack
trigger1 = Time = 0
waveform = square
time     = 4

;------------------------------------------------------------------------------;
; しゃがみガード (ノックバック)
;------------------------------------------------------------------------------;
[Statedef 153]
type     = C
movetype = H
physics  = C
anim     = 151

;-------[ Movement ]-------;

[State 153:         Vel, 1, Hit Vel]
type     = HitVelSet
trigger1 = Time = 0
trigger1 = PrevStateNo != 960
x        = 1

[State 153:         Vel, 2, Stop Slide]
type     = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x        = 0

[State 153:         Ctrl, 1]
type     = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value    = 1

;-------[ State Types ]-------;

[State 153:         StateType, 1, High to Low]
type      = StateTypeSet
trigger1  = StateType = S && command = "holddown"
statetype = C
physics   = C

[State 153:         StateType, 2, Low to High]
type      = StateTypeSet
trigger1  = StateType = C && command != "holddown"
statetype = S
physics   = S

;-------[ States ]-------;

[State 153:         State, 1, Hit Over]
type     = ChangeState
trigger1 = HitOver
trigger2 = PrevStateNo = 960
trigger2 = Time >= (GetHitVar(ctrltime) / 2)
value    = 131
ctrl     = 1

;-------------------------------------------------------------------------------;
; 空中ガード
;-------------------------------------------------------------------------------;
[Statedef 154]
type     = A
movetype = H
physics  = N
velset   = 0, 0

;-------[ Just Defence ]-------;

[State 150:         Change Just Defence]
type       = ChangeState
triggerall = var(52) & 4
triggerall = Time = 0
trigger1   = var(19) > 0
trigger2   = var(54) = 3
value      = 970

;-------[ Anim ]-------;

[State 150:         ChangeAnim, 1]
type     = ChangeAnim
trigger1 = 1
value    = 152

;-------[ States ]-------;

[State 150:         ChangeState, Over]
type     = ChangeState
trigger1 = HitShakeOver
value    = 155

;-------[ Movement ]-------;

[State 150:         Feedback]
type     = ForceFeedBack
trigger1 = Time = 0
waveform = square
time     = 4

;------------------------------------------------------------------------------;
; 空中ガード (ノックバック)
;------------------------------------------------------------------------------;
[Statedef 155]
type     = A
movetype = H
physics  = N
anim     = 152

;-------[ Movement ]-------;

[State 155:         Vel, 1, Hit Vel]
type     = HitVelSet
trigger1 = Time = 0
trigger1 = PrevStateNo != [970, 971]
x        = 1
y        = 1

[State 155:         Vel, 2, Gravity]
type     = VelAdd
trigger1 = 1
y        = Const(movement.yaccel)

[State 155:         Ctrl, 1]
type     = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value    = 1

[State 155:         Var, 1, Landing]
type      = VarSet
trigger1  = 1
sysvar(0) = (Pos Y >= 0) && (Vel Y > 0)

[State 155:         Vel, 3, Landing]
type     = VelSet
trigger1 = sysvar(0)
y        = 0

[State 155:         Pos, 1, Landing]
type     = PosSet
trigger1 = sysvar(0)
y        = 0

;-------[ States ]-------;

[State 155:         State, 0, Just Defence]
type     = ChangeState
trigger1 = !sysvar(0)
trigger1 = PrevStateNo = [970, 971]
trigger1 = Time >= (GetHitVar(ctrltime) / 2)
value    = 132

[State 155:         State, 1, Stand Guarding]
type     = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = InGuardDist
value    = 130

[State 155:         State, 2, Landing]
type     = ChangeState
trigger1 = sysvar(0)
value    = 52


;==============================================================================;
; 食らいステート
;==============================================================================;
;------------------------------------------------------------------------------;
; ダウン
;------------------------------------------------------------------------------;
[Statedef 5110]
type     = L
movetype = H
physics  = N

;-------[ Anim ]-------;

[State 5110:            For hit up/up-diag type (from state 5081)]
type       = ChangeAnim
trigger1   = SelfAnimExist(5110 + (anim % 10))
trigger1   = Anim = [5081, 5089]
value      = 5110 + (Anim % 10)
persistent = 0

[State 5110:            Liedown from Trip]
type       = ChangeAnim
triggerall = Time = 0
triggerall = Anim != [5110, 5119]
trigger1   = Anim = 5070
trigger1   = SelfAnimExist(5111)
value      = 5111

[State 5110:            Hit ground anim (normal)]
type       = ChangeAnim
triggerall = Time = 0
triggerall = Anim != [5110, 5119]       ;Not already changed anim
trigger1   = Anim != [5161, 5169]
trigger2   = !SelfAnimExist(5170 + (Anim % 10))
value      = 5170

[State 5110:            Hit ground anim (for hit up)]
type       = ChangeAnim
triggerall = Time = 0
triggerall = Anim != [5110, 5119]       ;Not already changed anim
trigger1   = Anim = [5161,5169]
trigger1   = SelfAnimExist(5170 + (Anim % 10))
value      = 5170 + (Anim % 10)

[State 5110:            For hit up type]
type       = ChangeAnim
triggerall = Anim = [5171, 5179]
triggerall = SelfAnimExist(5110 + (Anim % 10))
trigger1   = AnimTime = 0
trigger2   = SysVar(0)          ;SysVar(0) = 1 avoids hit ground anim
value      = 5110 + (Anim % 10)
persistent = 0

[State 5110:            For normal]
type       = ChangeAnim
triggerall = Anim != [5111,5119]
trigger1   = AnimTime = 0
trigger2   = SysVar(0)          ;SysVar(0) = 1 avoids hit ground frame
value      = 5110
persistent = 0

;-------[ Sounds ]-------;

[State 5110:            SE]
type     = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value    = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

;-------[ Movement ]-------;

[State 5110:            Fall Damage]
type     = HitFallDamage
trigger1 = Time = 0

[State 5110:            Reset Y Pos]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 5110:            Var, Get fall velocity]
type      = VarSet
trigger1  = Time = 0
trigger1  = GetHitVar(fall.yvel) != 0
sysvar(1) = Floor(Vel y)

[State 5110:            Stop Falling]
type     = VelSet
trigger1 = Time = 0
y        = 0

[State 5110:            Friction]
type     = VelMul
trigger1 = 1
x        = 0.85

;-------[ Effects ]-------;

[State 5110:            EnvShake]
type     = FallEnvShake
trigger1 = Time = 0

[State 5110:            Dust]
type     = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value    = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos      = 0, 0
under    = sysvar(1) <= 14

;-------[ Misc ]-------;

[State 5110:            If just died]
type       = ChangeState
triggerall = !Alive
trigger1   = AnimTime = 0
trigger2   = SysVar(0)          ;SysVar(0) = 1 avoids hit ground frame
trigger3   = Anim = [5110, 5119]
value      = 5150

[State 5110:            Reset]
type      = VarSet
trigger1  = SysVar(0)
trigger1  = Time = 0
sysvar(0) = 0

[State 5110:            Feedback]
type     = ForceFeedback
trigger1 = Alive
trigger1 = Time = 0
time     = 8
ampl     = 240
waveform = sine

[State 5110:            Feedback]
type     = ForceFeedback
trigger1 = !Alive
trigger1 = Time = 0
ampl     = 200, 7, -0.467
time     = 30
waveform = sine


;==============================================================================;
; 初期化
;
; ※ 全てのキャラクターは最初のこのステートを通過する
;==============================================================================;
[Statedef 5900]
type = S

;-------[ Initialize ]-------;

[State 5900:            Select Palette, 1]
type       = RemapPal
triggerall = Time = 0
trigger1   = PalNo = [1, 3]
source     = 1, 1
dest       = 1, PalNo

[State 5900:            Select Palette, 2]
type       = RemapPal
triggerall = Time = 0
trigger1   = PalNo = [4, 6]
source     = 1, 1
dest       = 2, PalNo

[State 5900:            Select Palette, 3]
type       = RemapPal
triggerall = Time = 0
trigger1   = PalNo = [7, 9]
source     = 1, 1
dest       = 3, PalNo

;[State 5900:            Select Palette, 4]
;type       = RemapPal
;triggerall = Time = 0
;trigger1   = PalNo = 10
;source     = 1, 1
;dest       = 1, PalNo

[State 5900:            Select Palette, 5]
type       = RemapPal
triggerall = Time = 0
trigger1   = PalNo = [10, 12]
source     = 1, 1
dest       = 4, PalNo

[State 5900:            Clear All Integer Variables]
type     = VarRangeSet
trigger1 = RoundsExisted = 0
value    = 0

[State 5900:            Clear All Floating Point Variables]
type     = VarRangeSet
trigger1 = RoundsExisted = 0
fvalue   = 0

;-------[ Check Training Mode ]-------;

[State 5900:            NoKO]
type       = AssertSpecial
triggerall = !var(58)
trigger1   = RoundsExisted = 0
flag       = NoKO

[State 5900:            Set Life to Zero]
type       = LifeSet
triggerall = !var(58)
trigger1   = RoundsExisted = 0
value      = 0
absolute   = 1

[State 5900:            Check Life is Zero?]
type       = VarSet
triggerall = !var(58)
triggerall = RoundsExisted = 0
trigger1   = Life != 0
v          = 58
value      = -2

[State 5900:            Recover Life]
type       = LifeSet
triggerall = Life != LifeMax
trigger1   = RoundsExisted = 0
value      = LifeMax
absolute   = 1

;-------[ Helpers ]-------;

[State 5900:            Call Config Helper]
type          = Helper
trigger1      = Time = 0
helpertype    = Normal
name          = "Config Helper"
stateno       = 9000
id            = 9000
ownpal        = 0
keyctrl       = 0
supermovetime = 2147483647
pausemovetime = 2147483647

;-------[ States ]-------;

[State 5900:            ChangeState, Intro]
type     = ChangeState
trigger1 = RoundsExisted = 0
value    = 190


;==============================================================================;
; 投げ抜け
;==============================================================================;
;------------------------------------------------------------------------------;
; 投げ抜け (抜け側)
;------------------------------------------------------------------------------;
[Statedef 5940]
type     = S
movetype = I
physics  = S
ctrl     = 0

;-------[ Anim ]-------;

[State 5940:            ChangeAnim]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5940)
value    = 5940

[State 5940:            ChangeAnim (No Support)]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5940)
value    = 150

;-------[ Movement ]-------;

[State 5940:            Pos, 1]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 5940:            Vel, 1]
type     = VelSet
trigger1 = Time = 0
x        = -6.5
y        = 0

;-------[ States ]-------;

[State 5940:            Standing]
type     = SelfState
trigger1 = Time >= 16
value    = 0
ctrl     = 1

;------------------------------------------------------------------------------;
; 投げ抜け (抜けられ側)
;------------------------------------------------------------------------------;
[Statedef 5945]
type     = S
movetype = I
physics  = S
anim     = 5945
ctrl     = 0

;-------[ Sounds ]-------;

[State 5945:            Voice, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 0, 5000
channel  = 0

[State 5945:            SE, 1]
type     = PlaySnd
trigger1 = Time = 0
value    = 5, 40

;-------[ Movement ]-------;

[State 5940:            Pos, 1]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 5940:            Vel, 1]
type     = VelSet
trigger1 = Time = 0
x        = -6.5
y        = 0

;-------[ States ]-------;

[State 5940:            Standing]
type     = ChangeState
trigger1 = Time >= 16
value    = 0
ctrl     = 1


;==============================================================================;
; 常時監視ステート -2
;------------------------------------------------------------------------------;
; 1. 時間停止中は実行されない
; 2. 相手にステートを奪われていても実行される
; 3. Player扱いのヘルパーが参照する
;==============================================================================;
[Statedef -2]

;==============================================================================;
; 消費ゲージ量
;==============================================================================;
[State -1:          Set Hyper Combo Gauge Value]
type     = VarSet
trigger1 = !IsHelper
v        = 1
value    = ifelse((var(20) > 0 || var(21) > 0 || var(24) > 0), 0, 1000)

[State -1:          Set MAX Hyper Combo Gauge Value]
type     = VarSet
trigger1 = !IsHelper
v        = 2
value    = ifelse(Power > 2000, 2000, PowerMax)

[State -2:          Set Shield Gauge Value]
type     = VarSet
trigger1 = !Ishelper
v        = 3
value    = ifelse((var(20) > 0 || var(21) > 0), 0, 50)

[State -2:          Set Last-Arc Gauge Value]
type     = VarSet
trigger1 = !IsHelper
v        = 4
value    = ifelse(Power > 3000, 3000, PowerMax)

[State -1:          Set Guard-Cancel Moves Gauge Value]
type     = VarSet
trigger1 = !IsHelper
v        = 5
value    = ifelse((var(20) > 0 || var(21) > 0), 0, 1000)            ; 通常1ゲージ, MAX時消費なし

[State -1:          Set MAX Gauge Value]
type     = VarSet
trigger1 = !IsHelper
v        = 6
value    = 1000

[State -1:          Set HEAT Gauge Value]
type     = VarSet
trigger1 = !IsHelper
v        = 7
value    = 2000

;==============================================================================;
; 相手情報
;==============================================================================;
[State -1:          Enemy Direction]
type           = VarSet
trigger1       = !IsHelper
trigger1       = P2BodyDist X = 0
fv             = 30
value          = ifelse(P2BodyDist Y <= 0, -90.0, 90.0)
ignorehitpause = 1

[State -1:          Enemy Direction]
type           = VarSet
trigger1       = !IsHelper
trigger1       = P2BodyDist X != 0
fv             = 30
value          = (Atan((P2BodyDist Y) / (P2BodyDist X)) * 180 / PI)
ignorehitpause = 1

[State -1:          EnemyNear ID]
type           = VarSet
trigger1       = !IsHelper
trigger1       = NumEnemy
v              = 35
value          = EnemyNear((EnemyNear(0),Alive = 0) && (NumEnemy > 1)),ID
ignorehitpause = 1

[State -2:          Enemy Hit Count Reset]
type           = VarSet
triggerall     = !IsHelper
trigger1       = PlayerIDExist(var(35))
trigger1       = PlayerID(var(35)),MoveType != H
trigger2       = PlayerIDExist(var(35))
trigger2       = PlayerID(var(35)),MoveType = H
trigger2       = PlayerID(var(35)),StateNo = [120, 155]
trigger3       = !PlayerIDExist(var(35))
v              = 36
value          = 0
ignorehitpause = 1

[State -2:          Enemy Hit Count]
type           = VarSet
triggerall     = !IsHelper
triggerall     = PlayerIDExist(var(35))
trigger1       = PlayerID(var(35)),MoveType = H
v              = 36
value          = PlayerID(var(35)),GetHitVar(HitCount)
ignorehitpause = 1

;==============================================================================;
; サウンド
;==============================================================================;
;------------------------------------------------------------------------------;
; SE消去
;------------------------------------------------------------------------------;
[State -2:          Remove SE]
type       = StopSnd
triggerall = !IsHelper
trigger1   = MoveType = H
channel    = 20

;------------------------------------------------------------------------------;
; 食らいボイス
;------------------------------------------------------------------------------;
[State -2:          Get Hit Voice]
type           = PlaySnd
triggerall     = !IsHelper
triggerall     = Alive
triggerall     = StateNo = 5000 || StateNo = 5010 || StateNo = 5020 || StateNo = 5070 || StateNo = 5080
triggerall     = Time = 1
trigger1       = GetHitVar(AnimType) >= 2 && Random < 500
trigger2       = GetHitVar(AnimType) < 2 && Random < 300
value          = ifelse(var(50), 2, 0), 5000 + 3 * (Random % 2) + (GetHitVar(AnimType) % 3)
channel        = 0
volume         = ifelse(var(50), 255, 127)
lowpriority    = 1
ignorehitpause = 1
persistent     = 0

;------------------------------------------------------------------------------;
; 復帰ボイス
;------------------------------------------------------------------------------;
[State -2:          Get Up Voice]
type        = PlaySnd
triggerall  = Alive
triggerall  = Time = 1
trigger1    = StateNo = 5120
value       = ifelse(var(50), 2, 0), 5120 + (Random % 4)
channel     = 0
volume      = ifelse(var(50), 255, 127)
lowpriority = 1
persistent  = 0

[State -2:          Recovery Voice]
type        = PlaySnd
triggerall  = Alive
triggerall  = Time = 1
trigger1    = StateNo = 5201
trigger2    = StateNo = 5210
value       = ifelse(var(50), 2, 0), 5200 + (Random % 4)
channel     = 0
volume      = ifelse(var(50), 255, 127)
lowpriority = 0
persistent  = 0

;------------------------------------------------------------------------------;
; ガードボイス
;------------------------------------------------------------------------------;
[State -2:          Guard Voice]
type           = PlaySnd
triggerall     = !IsHelper
triggerall     = Alive
triggerall     = Time = 1
triggerall     = Random < 350
trigger1       = StateNo = 151
trigger2       = StateNo = 153
trigger3       = StateNo = 155
value          = ifelse(var(50), 2, 0), 120 + (Random % 3)
channel        = 0
volume         = ifelse(var(50), 255, 127)
lowpriority    = 1
ignorehitpause = 1
persistent     = 0

;==============================================================================;
; キャンセルフラグ
;==============================================================================;
;------------------------------------------------------------------------------;
; チェーンコンボ
;------------------------------------------------------------------------------;
[State -2:          Reset Chain]
type       = VarSet
triggerall = !IsHelper
triggerall = var(10)
trigger1   = StateNo != [200, 299]
trigger1   = StateNo != [400, 499]
trigger1   = StateNo != [600, 699]
trigger2   = StateNo = 200 && AnimElemTime(4) < 0
trigger3   = StateNo = 201 && AnimElemTime(4) < 0
trigger4   = StateNo = 210 && AnimElemTime(5) < 0
trigger5   = StateNo = 211 && AnimElemTime(3) < 0
trigger6   = StateNo = 220 && AnimElemTime(4) < 0
trigger7   = StateNo = 230 && AnimElemTime(4) < 0
trigger8   = StateNo = 240 && AnimElemTime(4) < 0
trigger9   = StateNo = 250 && AnimElemTime(6) < 0
trigger10  = StateNo = 255 && AnimElemTime(4) < 0
trigger11  = StateNo = 400 && AnimElemTime(2) < 0
trigger12  = StateNo = 410 && AnimElemTime(4) < 0
trigger13  = StateNo = 420 && AnimElemTime(7) < 0
trigger14  = StateNo = 430 && AnimElemTime(4) < 0
trigger15  = StateNo = 440 && AnimElemTime(4) < 0
trigger16  = StateNo = 450 && AnimElemTime(5) < 0
trigger17  = StateNo = 600 && AnimElemTime(2) < 0
trigger18  = StateNo = 610 && AnimElemTime(5) < 0
trigger19  = StateNo = 620 && AnimElemTime(5) < 0
trigger20  = StateNo = 630 && AnimElemTime(2) < 0
trigger21  = StateNo = 640 && AnimElemTime(4) < 0
trigger22  = StateNo = 650 && AnimElemTime(6) < 0
v          = 10
value      = 0

[State -2:          Set Chain Lv.1]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 200 && MoveContact
trigger2   = StateNo = 201 && MoveContact
trigger3   = StateNo = 230 && MoveContact
trigger4   = StateNo = 400 && MoveContact
trigger5   = StateNo = 430 && MoveContact
trigger6   = StateNo = 600 && MoveContact
trigger7   = StateNo = 630 && MoveContact
v          = 10
value      = 1

[State -2:          Set Chain Lv.2]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 210 && MoveContact
trigger2   = StateNo = 211 && MoveContact
trigger3   = StateNo = 240 && MoveContact
trigger4   = StateNo = 410 && MoveContact
trigger5   = StateNo = 440 && MoveContact
trigger6   = StateNo = 610 && MoveContact
trigger7   = StateNo = 640 && MoveContact
v          = 10
value      = 2

[State -2:          Set Chain Lv.3]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 220 && MoveContact
trigger2   = StateNo = 250 && MoveContact
trigger3   = StateNo = 420 && MoveContact
trigger4   = StateNo = 450 && MoveContact
trigger5   = StateNo = 620 && MoveContact
trigger6   = StateNo = 650 && MoveContact
v          = 10
value      = 3

[State -2:          Set Chain Lv.4]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 255 && MoveContact
v          = 10
value      = 4

;------------------------------------------------------------------------------;
; スーパーキャンセル
;------------------------------------------------------------------------------;
[State -2:          Reset Super Cancel]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo != [1000, 1002]
trigger1   = StateNo != [1010, 1012]
trigger1   = StateNo != [1050, 1052]
trigger1   = StateNo != [1070, 1072]
trigger1   = StateNo != [1080, 1082]
trigger1   = StateNo != [1120, 1122]
trigger1   = StateNo != [1131, 1132]
trigger2   = !NumHelper(7040)
trigger2   = !NumHelper(7041)
trigger2   = !NumHelper(7042)
trigger2   = !NumHelper(7140)
trigger2   = !NumHelper(7141)
trigger2   = !NumHelper(7142)
trigger3   = (StateNo = [1070, 1072]) && AnimElemTime(10) >= 0
trigger4   = (StateNo = [1080, 1082]) && AnimElemTime(11) >= 0
trigger5   = (StateNo = [1131, 1132]) && AnimElemTime(6) <= 0
trigger6   = StateNo = 1131 && AnimElemTime(11) >= 0
trigger7   = StateNo = 1132 && AnimElemTime(14) >= 0
v          = 11
value      = 0

[State -2:          Set Super Cancel (鳥を渦切る)]
type       = VarSet
triggerall = !IsHelper
trigger1   = ((StateNo = 1000 && AnimElemTime(12) > 0) || (StateNo = 1010 && AnimElemTime(9) > 0)) && NumHelper(7040)
trigger1   = Helper(7040),MoveContact
trigger2   = ((StateNo = 1001 && AnimElemTime(8) > 0) || (StateNo = 1011 && AnimElemTime(5) > 0)) && NumHelper(7041)
trigger2   = Helper(7041),MoveContact
trigger3   = ((StateNo = 1002 && AnimElemTime(12) > 0) || (StateNo = 1012 && AnimElemTime(9) > 0)) && NumHelper(7042)
trigger3   = Helper(7042),MoveContact
v          = 11
value      = 1

[State -2:          Set Super Cancel (月に画く)]
type       = VarSet
triggerall = !IsHelper
trigger1   = (StateNo = [1050, 1052]) && AnimElemTime(6) >= 0 && MoveContact
v          = 11
value      = 2

[State -2:          Set Super Cancel (赫訳・紗燐)]
type       = VarSet
triggerall = !IsHelper
trigger1   = (StateNo = [1070, 1072]) && AnimElemTime(8) > 0 && AnimElemTime(10) < 0
trigger2   = (StateNo = [1080, 1082]) && AnimElemTime(9) >= 0 && AnimElemTime(11) < 0
v          = 11
value      = 3

[State -2:          Set Super Cancel (獣を挫く)]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 1120 && AnimElemTime(5) > 0 && NumHelper(7140)
trigger1   = Helper(7140),MoveContact
trigger2   = StateNo = 1121 && AnimElemTime(5) > 0 && NumHelper(7141)
trigger2   = Helper(7141),MoveContact
trigger3   = StateNo = 1122 && AnimElemTime(5) > 0 && NumHelper(7142)
trigger3   = Helper(7142),MoveContact
v          = 11
value      = 4

[State -2:          Set Super Cancel (赫訳・紅葉)]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 1131 && MoveContact
trigger1   = AnimElemTime(6) > 0 && AnimElemTime(11) < 0
trigger2   = StateNo = 1132 && MoveContact
trigger2   = AnimElemTime(6) > 0 && AnimElemTime(14) < 0
v          = 11
value      = 5

;------------------------------------------------------------------------------;
; ドリームキャンセル
;------------------------------------------------------------------------------;
[State -2:          Reset Dream Cancel]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo != 2000
trigger1   = StateNo != 2010
trigger1   = StateNo != 2050
trigger1   = StateNo != 2120
trigger1   = StateNo != 2130
trigger2   = !NumHelper(7045)
trigger2   = !NumHelper(7145)
trigger3   = StateNo = 2130 && (AnimElemTime(7) < 0 || AnimElemTime(14) >= 0)
v          = 12
value      = 0

[State -2:          Set Dream Cancel (飛来する鳥を渦切る)]
type       = VarSet
triggerall = !IsHelper
trigger1   = ((StateNo = 2000 && AnimElemTime(13) > 0) || (StateNo = 2010 && AnimElemTime(13) > 0)) && NumHelper(7045)
trigger1   = Helper(7045),MoveContact
v          = 12
value      = 1

[State -2:          Set Dream Cancel (墨空の月に画く)]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 2050 && AnimElemTime(5) > 0 && MoveContact
v          = 12
value      = 2

[State -2:          Set Dream Cancel (群れ集う獣を挫く)]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 2120 && NumHelper(7145)
trigger1   = Helper(7145),MoveContact
v          = 12
value      = 3

[State -2:          Set Dream Cancel (赫訳・紅葉)]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo = 2130
trigger1   = AnimElemTime(7) >= 0 && AnimElemTime(14) < 0
trigger1   = MoveContact
v          = 12
value      = 4

;------------------------------------------------------------------------------;
; シールドバンカーキャンセル
;------------------------------------------------------------------------------;
[State -2:          Reset Shield Bunker Cancel Flag]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo != [930, 932]
trigger2   = (StateNo = [930, 932]) && (var(40) || AnimElemTime(6) >= 0)
v          = 13
value      = 0

[State -2:          Set Shield Bunker Cancel Flag]
type       = VarSet
triggerall = !IsHelper
triggerall = StateNo = 932
triggerall = !var(40)           ; ガードキャンセルではない
trigger1   = AnimElemTime(6) < 0
v          = 13
value      = 1

;------------------------------------------------------------------------------;
; ガードキャンセルシールドバンカーキャンセル
;------------------------------------------------------------------------------;
[State -2:          Reset Guard Cancel Shield Bunker Cancel Flag]
type       = VarSet
triggerall = !IsHelper
trigger1   = StateNo != [930, 932]
trigger2   = (StateNo = [930, 932]) && (!var(40) || AnimElemTime(4) >= 0)
trigger3   = StateNo = 932
v          = 14
value      = 0

[State -2:          Set Guard Cancel Shield Bunker Cancel Flag]
type       = VarSet
triggerall = !IsHelper
triggerall = StateNo = [930, 932]
trigger1   = StateNo != 932
trigger1   = var(40)            ; ガードキャンセル
trigger1   = AnimElemTime(4) < 0
v          = 14
value      = 1

;==============================================================================;
; ブロッキング
;==============================================================================;
;------------------------------------------------------------------------------;
; 入力リセット
;------------------------------------------------------------------------------;
[State -2:          Reset Blocking Vars (Upper)]
type     = VarSet
trigger1 = var(16) >= 27
v        = 15
value    = var(15) & 3

[State -2:          Reset Blocking Vars (Lower)]
type     = VarSet
trigger1 = var(17) >= 27
v        = 15
value    = var(15) & 5

[State -2:          Reset Blocking Vars (Air)]
type     = VarSet
trigger1 = var(18) >= 27
v        = 15
value    = var(15) & 6

[State -2:          Reset Blocking Vars (Upper)]
type     = VarSet
trigger1 = var(16) >= 27
v        = 16
value    = 0

[State -2:          Reset Blocking Vars (Lower)]
type     = VarSet
trigger1 = var(17) >= 27
v        = 17
value    = 0

[State -2:          Reset Blocking Vars (Air)]
type     = VarSet
trigger1 = var(18) >= 27
v        = 18
value    = 0

;------------------------------------------------------------------------------;
; 受付時間
;------------------------------------------------------------------------------;
[State -2:          Count Blocking Vars (Upper)]
type           = VarAdd
trigger1       = var(16) > 0
v              = 16
value          = 1
ignorehitpause = 1

[State -2:          Count Blocking Vars (Lower)]
type           = VarAdd
trigger1       = var(17) > 0
v              = 17
value          = 1
ignorehitpause = 1

[State -2:          Count Blocking Vars (Air)]
type           = VarAdd
trigger1       = var(18) > 0
v              = 18
value          = 1
ignorehitpause = 1

[State -2:          Set Blocking Neutral (Upper)]
type       = VarSet
triggerall = var(16) = [1, 5]
trigger1   = command != "holdfwd"
trigger1   = command != "holdback"
trigger1   = command != "holdup"
trigger1   = command != "holddown"
trigger2   = var(59) > 2
v          = 15
value      = var(15) | 4

[State -2:          Set Blocking Neutral (Lower)]
type       = VarSet
triggerall = var(17) = [1, 5]
trigger1   = command != "holdfwd"
trigger1   = command != "holdback"
trigger1   = command != "holdup"
trigger1   = command != "holddown"
trigger2   = var(59) > 2
v          = 15
value      = var(15) | 2

[State -2:          Set Blocking Neutral (Air)]
type       = VarSet
triggerall = var(18) = [1, 5]
trigger1   = command != "holdfwd"
trigger1   = command != "holdback"
trigger1   = command != "holdup"
trigger1   = command != "holddown"
trigger2   = var(59) > 2
v          = 15
value      = var(15) | 1

;==============================================================================;
; ジャストディフェンス
;==============================================================================;
;------------------------------------------------------------------------------;
; ジャストディフェンス受付
;------------------------------------------------------------------------------;
[State -2:          Reset Just Defence Time]
type       = VarSet
triggerall = !IsHelper
triggerall = var(52) & 4
triggerall = var(19) = 0
trigger1   = command != "holdback"
v          = 19
value      = -1

[State -2:          Set Just Defence Time]
type       = VarSet
triggerall = !IsHelper
triggerall = var(52) & 4
triggerall = var(19) < 0
trigger1   = StateNo = 120
v          = 19
value      = 7

[State -2:          Count Down Just Defence Time]
type       = VarAdd
triggerall = !IsHelper
triggerall = var(52) & 4
trigger1   = var(19) > 0
v          = 19
value      = -1

;==============================================================================;
; HEAT処理
;==============================================================================;
;------------------------------------------------------------------------------;
; 通常HEAT
;------------------------------------------------------------------------------;
[State -2:          Decrease]
type       = VarAdd
triggerall = !IsHelper
triggerall = var(54) != 2
trigger1   = var(20) > 0
trigger1   = !NumHelper(6500)
v          = 20
value      = -1

[State -2:          Reset]
type       = VarSet
triggerall = !IsHelper
triggerall = var(54) != 2
trigger1   = var(20) < 0
trigger2   = NumHelper(6501)
trigger3   = NumHelper(6502)
v          = 20
value      = 0

;------------------------------------------------------------------------------;
; BLOOD HEAT
;------------------------------------------------------------------------------;
[State -2:          Decrease]
type       = VarAdd
triggerall = !IsHelper
triggerall = var(54) != 3
trigger1   = var(21) > 0
trigger1   = !NumHelper(6500)
v          = 21
value      = -1

[State -2:          Reset]
type       = VarSet
triggerall = !IsHelper
triggerall = var(54) != 3
trigger1   = var(21) < 0
trigger2   = NumHelper(6501)
trigger3   = NumHelper(6502)
v          = 21
value      = 0

;------------------------------------------------------------------------------;
; MAX
;------------------------------------------------------------------------------;
[State -2:          Decrease MAX Time]
type       = VarAdd
triggerall = !IsHelper
triggerall = var(51) & 1
trigger1   = var(24) > 0
trigger1   = !NumHelper(6500)
v          = 24
value      = -1

[State -2:          Reset MAX Time]
type       = VarSet
triggerall = !IsHelper
trigger1   = var(24) < 0
trigger2   = NumHelper(6501)
trigger3   = NumHelper(6502)
trigger4   = var(20) > 0
trigger5   = var(21) > 0
trigger6   = var(54)
trigger7   = !(var(51) & 1)
v          = 24
value      = 0

[State -2:          MAX ON]
type       = VarSet
triggerall = !IsHelper
triggerall = var(51) & 1
triggerall = Power >= PowerMax
triggerall = !var(54)
trigger1   = !var(24)
v          = 24
value      = Power / 5

[State -2:          MAX Power]
type       = VarSet
triggerall = !IsHelper
triggerall = var(51) & 1
triggerall = Power >= PowerMax
triggerall = var(24)
trigger1   = var(24) = (Power / 5)
v          = 25
value      = Power - var(6)

;------------------------------------------------------------------------------;
; CIRCUIT SPARK
;------------------------------------------------------------------------------;
[State -2:          Decrease]
type       = VarAdd
triggerall = !IsHelper
trigger1   = var(23) > 0
trigger1   = !NumHelper(6500)
trigger1   = !NumHelper(6501)
trigger1   = !NumHelper(6502)
v          = 23
value      = -1

[State -2:          Reset HEAT]
type       = VarRangeSet
triggerall = !IsHelper
trigger1   = var(23) > 0
trigger2   = !(var(51) & 2)
first      = 20
last       = 21
value      = 0

[State -2:          Reset MAX]
type       = VarSet
triggerall = !IsHelper
trigger1   = var(23) > 0
v          = 24
value      = 0

;------------------------------------------------------------------------------;
; ゲージ固定
;------------------------------------------------------------------------------;
[State -2:          Gauge]
type       = PowerSet
triggerall = !IsHelper
trigger1   = var(20) > 0            ; HEAT
trigger2   = var(21) > 0            ; BLOOD HEAT
trigger3   = var(23) > 0            ; CIRCUIT SPARK
trigger4   = var(24) > 0            ; MAX
value      = var(25)

;==============================================================================;
; バイタルソース処理
;==============================================================================;
;------------------------------------------------------------------------------;
; バイタルソース (計算)
;------------------------------------------------------------------------------;
[State -2:          Reset]
type       = VarSet
triggerall = !IsHelper
trigger1   = RoundState < 2
v          = 26
value      = LifeMax

[State -2:          Reset]
type       = VarSet
triggerall = !IsHelper
trigger1   = RoundState < 2
v          = 27
value      = 0

[State -2:          Add Life]
type       = VarAdd
triggerall = !IsHelper
trigger1   = Alive
trigger1   = var(26) > Life
v          = 27
value      = Floor((var(26) - Life) / ifelse((var(54) > 1), 1.5, 2.0))

[State -2:          Set Current Life]
type       = VarSet
triggerall = !IsHelper
trigger1   = Alive
v          = 26
value      = Life

;------------------------------------------------------------------------------;
; バイタルソース (回復)
;------------------------------------------------------------------------------;
[State -3:          Recovery Life in HEAT]
type       = LifeAdd
triggerall = !IsHelper
triggerall = Alive
triggerall = MoveType != H
trigger1   = !NumHelper(6500)
trigger1   = var(20) > 0
trigger1   = var(27) > 0
trigger1   = (var(27) := var(27) - 1)
value      = 1

[State -3:          Recovery Life in BLOOD HEAT]
type       = LifeAdd
triggerall = !IsHelper
triggerall = Alive
triggerall = MoveType != H
trigger1   = !NumHelper(6500)
trigger1   = var(21) > 0
trigger1   = var(27) > 0
trigger1   = (var(27) := var(27) - 2)
value      = 2

;==============================================================================;
; 空中行動制御
;==============================================================================;
[State -2:          Reset Air Movement]
type       = VarRangeSet
triggerall = !IsHelper
trigger1   = StateType != A
first      = 28
last       = 29
value      = 0

;==============================================================================;
; 獣を焦がす 設置対応用
;==============================================================================;
;------------------------------------------------------------------------------;
; 設置ヘルパーID設定
;------------------------------------------------------------------------------;
[State -2:          Reset Landmine ID]
type       = Null
triggerall = !IsHelper
trigger1   = (var(39) := ifelse(NumHelper(7050) > 0, 1, -1)) > 0
trigger1   = var(39) := Helper(7050),ID
trigger2   = (var(39) := ifelse(NumHelper(7055) > 0, 1, -1)) > 0
trigger2   = var(39) := Helper(7055),ID

;------------------------------------------------------------------------------;
; ライフ / パワー減少
;------------------------------------------------------------------------------;
[State -2:          Life]
type       = LifeAdd
triggerall = !IsHelper
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = GameTime % 3 = 0
triggerall = NumEnemy
trigger1   = Enemy(0),AuthorName = "chikuchikugonzalez" && Enemy(0),Name = "Tohno Akiha"
trigger1   = Enemy(0),var(39) >= 0
trigger1   = PlayerIDExist(Enemy(0),var(39))
trigger1   = Abs(PlayerID(Enemy(0),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(0),var(39)),const(size.xscale))
trigger2   = NumEnemy > 1
trigger2   = Enemy(1),AuthorName = "chikuchikugonzalez" && Enemy(1),Name = "Tohno Akiha"
trigger2   = Enemy(1),var(39) >= 0
trigger2   = PlayerIDExist(Enemy(1),var(39))
trigger2   = Abs(PlayerID(Enemy(1),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(1),var(39)),const(size.xscale))
value      = -1
kill       = 0

[State -2:          Power]
type       = PowerAdd
triggerall = !IsHelper
triggerall = (var(54) != [1, 3]) && !((var(20) > 0) || (var(21) > 0) || (var(23) > 0) || (var(24) > 0))
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = GameTime % 3 = 0
triggerall = NumEnemy
trigger1   = Enemy(0),AuthorName = "chikuchikugonzalez" && Enemy(0),Name = "Tohno Akiha"
trigger1   = Enemy(0),var(39) >= 0
trigger1   = PlayerIDExist(Enemy(0),var(39))
trigger1   = Abs(PlayerID(Enemy(0),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(0),var(39)),const(size.xscale))
trigger2   = NumEnemy > 1
trigger2   = Enemy(1),AuthorName = "chikuchikugonzalez" && Enemy(1),Name = "Tohno Akiha"
trigger2   = Enemy(1),var(39) >= 0
trigger2   = PlayerIDExist(Enemy(1),var(39))
trigger2   = Abs(PlayerID(Enemy(1),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(1),var(39)),const(size.xscale))
value      = Floor(-1 * (PowerMax * 0.001))

;==============================================================================;
; 攻撃力補正計算
;==============================================================================;
;------------------------------------------------------------------------------;
; 基本1 Const(data.attack) の補正 (TargetLifeAdd用)
;------------------------------------------------------------------------------;
[State -2:          Attack Correction by data.attack]
type           = VarSet
trigger1       = !IsHelper
fv             = 0
value          = Const(data.attack) * 0.01
ignorehitpause = 1

;------------------------------------------------------------------------------;
; モードによる補正
;------------------------------------------------------------------------------;
[State -2:          Attack Correction]
type           = VarSet
triggerall     = !IsHelper
trigger1       = 1
fv             = 1
value          = 1.0
ignorehitpause = 1

;------------------------------------------------------------------------------;
; 特殊カラー補正
;------------------------------------------------------------------------------;
[State -2:          Attack Correction by Normal Color]
type           = VarSet
triggerall     = !IsHelper
trigger1       = var(54) != 3
fv             = 2
value          = 1.0
ignorehitpause = 1

[State -2:          Attack Correction by Gold Color]
type           = VarSet
triggerall     = !IsHelper
trigger1       = var(54) = 3
fv             = 2
value          = 1.50
ignorehitpause = 1

;------------------------------------------------------------------------------;
; HEAT補正
;------------------------------------------------------------------------------;
[State -2:          Reset Attack Correction by HEAT]
type           = VarSet
triggerall     = !IsHelper
trigger1       = var(20) <= 0
trigger1       = var(21) <= 0
fv             = 3
value          = 1.0
ignorehitpause = 1

[State -2:          Attack Correction by HEAT]
type           = VarSet
triggerall     = !IsHelper
trigger1       = var(20) > 0
fv             = 3
value          = 1.1
ignorehitpause = 1

[State -2:          Attack Correction by BLOOD HEAT]
type           = VarSet
triggerall     = !IsHelper
trigger1       = var(21) > 0
fv             = 3
value          = 1.2
ignorehitpause = 1

;------------------------------------------------------------------------------;
; ライフ補正
;------------------------------------------------------------------------------;
[State -2:          Attack Correction by Life, 0]
type           = VarSet
triggerall     = !IsHelper
trigger1       = Life > Ceil(LifeMax * 0.3)
fv             = 4
value          = 1.0
ignorehitpause = 1

[State -2:          Attack Correction by Life, 1]
type           = VarSet
triggerall     = !IsHelper
trigger1       = Life <= Ceil(LifeMax * 0.3)
trigger1       = Life > Ceil(LifeMax * 0.15)
fv             = 4
value          = 1.05
ignorehitpause = 1

[State -2:          Attack Correction by Life, 2]
type           = VarSet
triggerall     = !IsHelper
trigger1       = Life <= Ceil(LifeMax * 0.15)
fv             = 4
value          = 1.1
ignorehitpause = 1

;------------------------------------------------------------------------------;
; コンボ補正
;------------------------------------------------------------------------------;
[State -2:          Attack Correction by No Combo]
type           = VarSet
triggerall     = !IsHelper
trigger1       = var(55) > 0
trigger1       = var(36) <= (var(55) - 1)
trigger2       = var(55) <= 0
fv             = 15
value          = 1.0
ignorehitpause = 1

[State -2:          Attack Correction by Combo]
type           = VarSet
triggerall     = !IsHelper
triggerall     = var(55) > 0
trigger1       = var(36) > (var(55) - 1)
fv             = 15
value          = 1.0 * (fvar(38) ** (var(36) - (var(55) - 1)))
ignorehitpause = 1

;==============================================================================;
; 防御力補正計算
;==============================================================================;
;------------------------------------------------------------------------------;
; 落下時補正
;------------------------------------------------------------------------------;
[State -2:          Defence Correction by Hit Fall]
type           = VarSet
triggerall     = !IsHelper
trigger1       = HitFall
fv             = 5
value          = Const(data.fall.defence_mul)
ignorehitpause = 1

[State -2:          Defence Correction by Not Hit Fall]
type           = VarSet
triggerall     = !IsHelper
trigger1       = !HitFall
fv             = 5
value          = 1.0
ignorehitpause = 1

;------------------------------------------------------------------------------;
; モード補正
;------------------------------------------------------------------------------;
[State -2:          Defence Correction (Default)]
type           = VarSet
triggerall     = !IsHelper
trigger1       = 1
;trigger1       = var(54) != 3
fv             = 6
value          = 1.33394664213431
ignorehitpause = 1

;------------------------------------------------------------------------------;
; 特殊カラー補正
;------------------------------------------------------------------------------;
;[State -2:          Defence Correction (Gold)]
;type           = VarSet
;triggerall     = !IsHelper
;trigger1       = var(54) = 3
;fv             = 6
;value          = 1.3335
;ignorehitpause = 1

;------------------------------------------------------------------------------;
; ライフ補正
;------------------------------------------------------------------------------;
[State -2:          Defenfce Correction by Life, 0]
type           = VarSet
triggerall     = !IsHelper
trigger1       = Life > Ceil(LifeMax * 0.3)
fv             = 7
value          = 1.0
ignorehitpause = 1

[State -2:          Defenfce Correction by Life, 1]
type           = VarSet
triggerall     = !IsHelper
trigger1       = Life <= Ceil(LifeMax * 0.3)
trigger1       = Life > Ceil(LifeMax * 0.15)
fv             = 7
value          = 0.9
ignorehitpause = 1

[State -2:          Defenfce Correction by Life, 2]
type           = VarSet
triggerall     = !IsHelper
trigger1       = Life <= Ceil(LifeMax * 0.15)
fv             = 7
value          = 0.75
ignorehitpause = 1

;==============================================================================;
; 補正反映
;==============================================================================;
;------------------------------------------------------------------------------;
; 攻撃力補正
;------------------------------------------------------------------------------;
[State -2:          Attack Correction for Attack Mul]
type           = VarSet
trigger1       = !IsHelper
fv             = 10
value          = fvar(1) * fvar(2) * fvar(3) * fvar(4) * fvar(15)
ignorehitpause = 1

[State -2:          Attack Correction]
type           = AttackMulSet
trigger1       = !IsHelper
value          = fvar(10)
ignorehitpause = 1

;------------------------------------------------------------------------------;
; TargetLifeAdd用
;------------------------------------------------------------------------------;
[State -2:          Attack Correction for LifeAdd]
type           = VarSet
trigger1       = !IsHelper
fv             = 11
value          = fvar(0) * fvar(10)
ignorehitpause = 1

;------------------------------------------------------------------------------;
; 防御力補正
;------------------------------------------------------------------------------;
[State -2:          Defence Correction for Defefnce Mul]
type           = VarSet
trigger1       = !IsHelper
fv             = 12
value          = fvar(5) * fvar(6) * fvar(7)
ignorehitpause = 1

[State -2:          Defence Correction]
type           = DefenceMulSet
trigger1       = !IsHelper
value          = fvar(12)
ignorehitpause = 1

;------------------------------------------------------------------------------;
; GetHitVar(hitcount)
;------------------------------------------------------------------------------;
[State -2:          Hit Count Reset]
type           = VarSet
triggerall     = !IsHelper
trigger1       = MoveType != H
trigger2       = StateNo = [120, 159]
v              = 33
value          = 0
ignorehitpause = 1

[State -2:          Hit Count]
type           = VarSet
triggerall     = !IsHelper
trigger1       = MoveType = H
trigger1       = StateNo != [120, 159]
v              = 33
value          = GetHitVar(HitCount)
ignorehitpause = 1

;------------------------------------------------------------------------------;
; 一撃目補正
;------------------------------------------------------------------------------;
[State -2:          Calc First Get Hit Damage]
type           = LifeAdd
triggerall     = Alive
triggerall     = var(33) = 1
triggerall     = var(31) := GetHitVar(Damage)
trigger1       = var(30) := Floor(var(31) * (1.0 - (fvar(6) * fvar(7))))
value          = var(30)
absolute       = 1
persistent     = 0
ignorehitpause = 1

;==============================================================================;
; 特殊カラー
;==============================================================================;
;------------------------------------------------------------------------------;
; ゲージ
;------------------------------------------------------------------------------;
[State -2:          Gauge Always MAX]
type       = PowerSet
triggerall = !IsHelper
trigger1   = var(54)
trigger1   = var(23) <= 0
value      = PowerMax

;------------------------------------------------------------------------------;
; ジャグルチェック
;------------------------------------------------------------------------------;
[State -2:          No Juggle]
type       = AssertSpecial
triggerall = !IsHelper
trigger1   = var(54) = 3
flag       = NoJuggleCheck

;------------------------------------------------------------------------------;
; HEAT状態
;------------------------------------------------------------------------------;
[State -2:          Always HEAT]
type       = VarSet
triggerall = !IsHelper
triggerall = var(51) & 2
trigger1   = var(54) = 2
trigger1   = var(23) <= 0
v          = 20
value      = (PowerMax / 5)

[State -2:          Always BLOOD HEAT]
type       = VarSet
triggerall = !IsHelper
triggerall = var(51) & 2
trigger1   = var(54) = 3
trigger1   = var(23) <= 0
v          = 21
value      = (PowerMax / 5)

;==============================================================================;
; エフェクト後処理
;==============================================================================;
[State -2:          Remove Neco]
type       = RemoveExplod
triggerall = !IsHelper
triggerall = NumExplod(197)
trigger1   = MoveType = H
trigger2   = StateNo != 195
id         = 197

;==============================================================================;
; デバッグ出力
;==============================================================================;
;------------------------------------------------------------------------------;
; AI系
;------------------------------------------------------------------------------;
[State -2:          Debug AI]
type     = DisplayToClipboard
trigger1 = !IsHelper
text     = "AI:%d/%d(%dP)"
params   = var(59), var(58), PalNo

;------------------------------------------------------------------------------;
; 相手位置
;------------------------------------------------------------------------------;
;[State -2:          Debug P2]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;trigger1 = NumEnemy = 1
;text     = " P2Dist:%d x %d P2Vel:%.1f x %.1f DIR:%.2f"
;params   = Ceil(P2BodyDist X), Ceil(P2BodyDist Y), (EnemyNear(0),Vel X), (EnemyNear(0),Vel Y), fvar(30)
;
;[State -2:          Debug P2]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;trigger1 = NumEnemy > 1
;text     = " P2Dist:%d x %d P2Vel:%.1f x %.1f DIR:%.2f"
;params   = Ceil(P2BodyDist X), Ceil(P2BodyDist Y), (EnemyNear(EnemyNear,Alive = 0),Vel X), (EnemyNear(EnemyNear,Alive = 0),Vel Y), fvar(30)
;
;[State -2:          Debug P2 ID]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;text     = " P2ID:%d"
;params   = var(35)

;------------------------------------------------------------------------------;
; フラグ系
;------------------------------------------------------------------------------;
;[State -2:          Debug Flags]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;text     = "\nCHAIN:%d SC:%d DC:%d SBC:%d GCSBC:%d"
;params   = var(10), var(11), var(12), var(13), var(14)
;
;[State -2:          Debug Blocking]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;text     = "\nSB:%d CB:%d AB:%d BLK:%04X"
;params   = var(16), var(17), var(18), var(15)
;
;[State -2:          Debug Just Defence]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;text     = " JD:%d"
;params   = var(19)

;[State -2:          Debug Air Movement]
;type     = AppendToClipboard
;trigger1 = !Ishelper
;text     = "\nAIR MOVES:%d"
;params   = var(28)

[State -2:          Debug Landmine]
type     = AppendToClipboard
trigger1 = !IsHelper
text     = "\nLANDMINE:%d"
params   = var(39)

;------------------------------------------------------------------------------;
; バイタルソース
;------------------------------------------------------------------------------;
;[State -2:          Debug Vital Source]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;text     = " VITAL:%d"
;params   = var(27)

;------------------------------------------------------------------------------;
; 補正
;------------------------------------------------------------------------------;
;[State -2:          Debug Corrections]
;type     = AppendToClipboard
;trigger1 = !IsHelper
;text     = "\nP2COUNT:%d COUNT:%d RATIO:%.2f ATK:%.2f DEF:%.2f"
;params   = var(36), var(55), fvar(38), fvar(10), fvar(12)


;==============================================================================;
; 常時監視ステート -3
;------------------------------------------------------------------------------;
; 1. 時間停止中も実行される
; 2. 相手にステートを奪われていると実行されない
; 3. Player扱いのヘルパーが参照する
;==============================================================================;
[Statedef -3]

;==============================================================================;
; AI起動処理
;==============================================================================;
[State -3:          Call AI Helper]
type          = Helper
triggerall    = !IsHelper
triggerall    = !NumHelper(9999)
triggerall    = RoundState = 2 && Alive
trigger1      = var(59) = 0
trigger1      = var(58) = 0
helpertype    = Normal
name          = "AI Helper"
stateno       = 9999
id            = 9999
keyctrl       = 1
ownpal        = 0
supermovetime = 2147483647
pausemovetime = 2147483647

[State -3:          Get AI Variable]
type           = VarSet
triggerall     = var(58) = 0
trigger1       = NumHelper(9999)
trigger1       = Helper(9999),var(58) != 0
v              = 58
value          = Helper(9999),var(58)
ignorehitpause = 1

[State -3:          Set AI Level]
type           = VarSet
triggerall     = var(59) = 0
trigger1       = var(58) > 0
v              = 59
;value          = 3      ; AI Level (1 - N)
value          = AILevel        ; from MUGEN rc1
ignorehitpause = 1

;==============================================================================;
; 自前パワーゲージ
;==============================================================================;
[State -3:          Magic Curcuit]
type          = Helper
triggerall    = !IsHelper
triggerall    = !NumHelper(8500)
triggerall    = RoundState > 0
triggerall    = StateNo != 5900
triggerall    = StateNo != 100191
triggerall    = !(StateNo = 190 && Time = 0)
trigger1      = TeamMode = Single
trigger2      = TeamMode = Turns
trigger3      = NumPartner
trigger3      = ID < Partner,ID
helpertype    = Normal
name          = "Magic Curcuit"
stateno       = 8500
id            = 8500
ownpal        = 1
keyctrl       = 0
supermovetime = 2147483647
pausemovetime = 2147483647
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)

;==============================================================================;
; HEATエフェクト
;==============================================================================;
[State -3:          HEAT]
type          = Helper
triggerall    = !IsHelper
triggerall    = !NumHelper(9900)
trigger1      = var(20) > 0
trigger2      = var(21) > 0
helpertype    = Normal
name          = "HEAT After Image"
stateno       = 9900
id            = 9900
ownpal        = 1
keyctrl       = 0
supermovetime = 2147483647
pausemovetime = 2147483647
size.xscale   = const(size.xscale)
size.yscale   = const(size.yscale)

;==============================================================================;
; カットイン
;==============================================================================;
;------------------------------------------------------------------------------;
; Exエッジ カットイン
;------------------------------------------------------------------------------;
[State -3:          Cut-In, 1]
type          = Helper
triggerall    = !IsHelper
triggerall    = !NumHelper(6900)
triggerall    = !var(53)
trigger1      = NumHelper(6500)
helpertype    = Normal
name          = "Cut-In"
stateno       = 6900
id            = 6900
ownpal        = 1
keyctrl       = 0
supermovetime = 2147483647
pausemovetime = 2147483647

;------------------------------------------------------------------------------;
; アークドライブ カットイン
;------------------------------------------------------------------------------;
[State -3:          Cut-In, 1]
type          = Helper
triggerall    = !IsHelper
triggerall    = !NumHelper(6910)
triggerall    = !var(53)
trigger1      = NumHelper(6501)
trigger2      = NumHelper(6502)
helpertype    = Normal
name          = "Cut-In"
stateno       = 6900
id            = 6910
ownpal        = 1
keyctrl       = 0
supermovetime = 2147483647
pausemovetime = 2147483647

;==============================================================================;
; キャンセルエフェクト
;==============================================================================;
;------------------------------------------------------------------------------;
; スーパーキャンセル
;------------------------------------------------------------------------------;
[State -3:          Super Cancel Cut-In]
type          = Helper
triggerall    = var(53)
triggerall    = !IsHelper
triggerall    = !NumHelper(6600)
triggerall    = var(11)
trigger1      = StateNo = 2000          ; 飛来する鳥を渦切る
trigger2      = StateNo = 2010          ; 同上 空中版
trigger3      = StateNo = 2020          ; 疾駆する獣を焦がす (EX)
trigger4      = StateNo = 2030          ; 同上 空中版
trigger5      = StateNo = 2040          ; 上弦の月を穿つ
trigger6      = StateNo = 2050          ; 墨空の月に画く
trigger7      = StateNo = 2070          ; 赫訳・紗燐 (EX)
trigger8      = StateNo = 2080          ; 同上 空中版
trigger9      = StateNo = 2120          ; 群れ集う獣を挫く
trigger10     = StateNo = 2130          ; 赫訳・紅葉
trigger11     = StateNo = 3000          ; 赤主・檻髪 (AD)
trigger12     = StateNo = 3010          ; 赤主・檻髪 (AAD)
trigger13     = StateNo = 3020          ; 赤主・遍生 (AD) 地上
trigger14     = StateNo = 3021          ; 赤主・遍生 (AD) 空中
trigger15     = StateNo = 3030          ; 赤主・遍生 (AAD) 地上
trigger16     = StateNo = 3031          ; 赤主・遍生 (AAD) 空中
helpertype    = Normal
name          = "SC"
stateno       = 6600
id            = 6600
ownpal        = 0
supermovetime = 2147483647
pausemovetime = 2147483647

;------------------------------------------------------------------------------;
; ドリームキャンセル
;------------------------------------------------------------------------------;
[State -3:          Dream Cancel Cut-In]
type          = Helper
triggerall    = var(53)
triggerall    = !IsHelper
triggerall    = !NumHelper(6610)
triggerall    = var(12)
trigger1      = StateNo = 3000          ; 赤主・檻髪 (AD)
trigger2      = StateNo = 3010          ; 赤主・檻髪 (AAD)
trigger3      = StateNo = 3020          ; 赤主・遍生 (AD) 地上
trigger4      = StateNo = 3021          ; 赤主・遍生 (AD) 空中
trigger5      = StateNo = 3030          ; 赤主・遍生 (AAD) 地上
trigger6      = StateNo = 3031          ; 赤主・遍生 (AAD) 空中
helpertype    = Normal
name          = "DC"
stateno       = 6610
id            = 6610
ownpal        = 0
supermovetime = 2147483647
pausemovetime = 2147483647


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date$
;==============================================================================;
