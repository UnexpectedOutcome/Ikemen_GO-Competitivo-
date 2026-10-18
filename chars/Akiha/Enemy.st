; vim: set ts=4 sw=4 sts=4 expandtab: =========================================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;==============================================================================;
; 地上投げ P2
;==============================================================================;
;------------------------------------------------------------------------------;
; 投げHIT
;------------------------------------------------------------------------------;
[Statedef 4000]
type        = A
movetype    = H
physics     = N
ctrl        = 0
velset      = 0, 0
sprpriority = -1

;-------[ Anim ]-------;

[State 4000:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4000

;-------[ Movement ]-------;

[State 4000:            Camera]
type     = ScreenBound
trigger1 = 1
value    = 0

;-------[ States ]-------;

[State 4000:            State, 1, Falling]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 4001
ctrl     = 0

;------------------------------------------------------------------------------;
; 投げHIT 落下
;------------------------------------------------------------------------------;
[Statedef 4001]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = -2, -3

;-------[ Anim ]-------;

[State 4000:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4001

;-------[ Movement ]-------;

[State 4000:            Fall]
type     = HitFallSet
trigger1 = Time = 0
value    = 1

[State 4000:            Gravity]
type     = Gravity
trigger1 = Time > 0

;-------[ States ]-------;

[State 4000:            Liedown]
type     = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Floor(-10 * const(size.yscale))
value    = 5100


;==============================================================================;
; 空中投げ P2
;==============================================================================;
;------------------------------------------------------------------------------;
; 投げHIT
;------------------------------------------------------------------------------;
[Statedef 4010]
type        = A
movetype    = H
physics     = N
ctrl        = 0
velset      = 0, 0
sprpriority = -1

;-------[ Anim ]-------;

[State 4000:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4010

;-------[ Effects ]-------;

[State 4010:            Burn Effect]
type     = PalFX
trigger1 = AnimElem = 2
add      = 112, -96, -127
mul      = 168, 168, 168
sinadd   = 64, 32, 32, 8
color    = 64
time     = 48

;-------[ Movement ]-------;

[State 4010:            Spr Priority]
type     = SprPriority
trigger1 = AnimElem = 4
value    = 2

[State 4010:            Fall]
type     = HitFallSet
trigger1 = AnimElem = 4
value    = 1

;-------[ States ]-------;

[State 4000:            Liedown]
type     = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Floor(-10 * const(size.yscale))
value    = 5100


;==============================================================================;
; 赫訳・鬼灯楓
;==============================================================================;
[Statedef 4020]
type     = S
movetype = H
physics  = S
ctrl     = 0

;-------[ Anim ]-------;

[State 4020:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4020

;-------[ States ]-------;

[State 4020:            Standing]
type     = SelfState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;==============================================================================;
; 赫訳・紅葉 バウンド
;
; ※ commonのコピー状態
;==============================================================================;
;------------------------------------------------------------------------------;
; 落下 (HitPause)
;------------------------------------------------------------------------------;
[Statedef 4030]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = 0, 0

;-------[ Anim ]-------;

[State 4030:            Anim, 1, for HIT_LIGHT to HIT_HARD]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(AnimType) != [3, 5]
value    = ifelse((GetHitVar(AirType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 4030:            Anim, 2, for HIT_BACK]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(AnimType) = [3, 5]
value    = 5030

[State 4030:            Anim, 3, for HIT_UP/HIT_DIAGUP (only if it exists)]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value    = 5047 + GetHitVar(AnimType)

[State 4030:            Freeze anim]
type     = ChangeAnim
trigger1 = Time > 0
value    = Anim

;-------[ States ]-------;

[State 4030:            Shake Over]
type     = ChangeState
trigger1 = HitShakeOver
value    = 4031

;-------[ Feedback ]-------;

[State 4030:            FFB Light]
type       = ForceFeedback
trigger1   = Anim = 5000
trigger2   = Anim = 5010
time       = 6
waveform   = square
persistent = 0

[State 4030:            FFB Medium]
type       = ForceFeedback
trigger1   = Anim = 5001
trigger2   = Anim = 5011
time       = 8
waveform   = sinesquare
ampl       = 110,-1,-.3
persistent = 0

[State 4030:            FFB Hard]
type       = ForceFeedback
trigger1   = Anim = 5012
trigger2   = Anim = 5002
trigger3   = Anim = 5030
trigger4   = Anim = [5051, 5059]
time       = 15
waveform   = sinesquare
ampl       = 140
persistent = 0

;------------------------------------------------------------------------------;
; 落下 2
;------------------------------------------------------------------------------;
[Statedef 4031]
type     = A
movetype = H
physics  = N
ctrl     = 0

;-------[ Movement ]-------;

[State 4031:            Gravity]
type     = VelAdd
trigger1 = 1
y        = GetHitVar(yaccel)

[State 4031:            Vel, 1]
type     = HitVelSet
trigger1 = Time = 0
x        = 1
y        = 1

;-------[ States ]-------;

[State 4031:            Falling]
type     = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value    = 4032

;------------------------------------------------------------------------------;
; 落下 3
;------------------------------------------------------------------------------;
[Statedef 4032]
type     = A
movetype = H
physics  = N
ctrl     = 0

;-------[ Anim ]-------;

[State 4032:            Change anim when done with transition]
type     = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value    = 5050

[State 4032:            Coming down anim]
type       = ChangeAnim
trigger1   = Anim = [5050, 5059]
trigger1   = Vel Y >= ifelse(Anim = 5050, 1, -2)
trigger1   = SelfAnimExist(Anim + 10)
value      = Anim + 10
persistent = 0

;-------[ Movement ]-------;

[State 4032:            Gravity]
type     = VelAdd
trigger1 = 1
y        = GetHitVar(yaccel)

;-------[ States ]-------;

[State 4032:            Bounce]
type     = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051, 5059]) || (anim = [5061, 5069]), 0, 25)
value    = 4035 ;HIT_BOUNCE

;------------------------------------------------------------------------------;
; バウンド
;------------------------------------------------------------------------------;
[Statedef 4035]
type     = A
movetype = H
physics  = N
ctrl     = 0

;-------[ Vars ]-------;

[State 4035:            Var, 1, Save fall velocity]
type      = VarSet
trigger1  = Time = 0
sysvar(1) = floor(vel y)

;-------[ Movement ]-------;

[State 4035:            Vel, 1]
type     = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = Vel X > 1
x        = 1

[State 4035:            Pos, 1]
type     = PosSet
trigger1 = Time = 0
y        = 0

[State 4035:            Vel, 2]
type     = VelSet
trigger1 = Time = 0
y        = 0

[State 4035:            Vel, 3, Reduce speed]
type     = VelMul
trigger1 = Time = 0
x        = 0.75

[State 4035:            Pos, 2]
type     = PosFreeze
trigger1 = 1

;-------[ Effects ]--------;

[State 4035:            EnvShake]
type     = FallEnvShake
trigger1 = Time = 0

[State 4035:            Dust]
type     = GameMakeAnim
trigger1 = Time = 1
value    = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos      = 0, 0
under    = sysvar(1) <= 14

;-------[ Anim ]-------;

[State 4035:            Anim, 1, Hit ground anim (normal)]
type       = ChangeAnim
triggerall = Time = 0
trigger1   = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2   = !SelfAnimExist(5100 + (Anim % 10))
value      = 5100

[State 4035:            Anim, 2, Hit ground anim (for hit up)]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = (Anim = [5051, 5059]) || (Anim = [5061, 5069])
trigger1 = SelfAnimExist(5100 + (Anim % 10))
value    = 5100 + (Anim % 10)

;-------[ Sounds ]-------;

[State 4035:            SE, 1]
type     = PlaySnd
trigger1 = Time = 1
value    = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

;-------[ States ]-------;

[State 4035:            Bounce]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 4036

;-------[ Feedback ]-------;

[State 4035:            Feedback]
type     = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl     = 128, -3, -0.2, 0.005
time     = 20

;------------------------------------------------------------------------------;
; バウンド 2
;------------------------------------------------------------------------------;
[Statedef 4036]
type     = A
movetype = H
physics  = N
ctrl     = 0

;-------[ Anim ]-------;

[State 4036:            Anim, 1, Coming hit ground anim (normal)]
type       = ChangeAnim
triggerall = Time = 0
trigger1   = Anim != [5101, 5109]
trigger2   = !SelfAnimExist(5160 + (Anim % 10))
value      = 5160

[State 4036:            Anim, 2, Coming hit ground anim (for hit up)]
type       = ChangeAnim
triggerall = Time = 0
trigger1   = Anim = [5101, 5109]
trigger1   = SelfAnimExist(5160 + (Anim % 10))
value      = 5160 + (Anim % 10)

;-------[ Movement ]-------;

[State 4036:            Vel, 1]
type     = HitFallVel
trigger1 = Time = 0

[State 4036:            Pos, 1]
type     = PosSet
trigger1 = Time = 0
y        = 20

[State 4036:            Vel, 2, Acceleration]
type     = VelAdd
trigger1 = 1
y        = 0.4

;-------[ States ]-------;

[State 4036:            State, 1, Liedown]
type     = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value    = 5110


;==============================================================================;
; 赤主・檻髪 P2
;==============================================================================;
;------------------------------------------------------------------------------;
; HIT 1
;------------------------------------------------------------------------------;
[Statedef 4100]
type        = A
movetype    = H
physics     = N
ctrl        = 0
sprpriority = -1

;-------[ Anim ]-------;

[State 4100:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4100

;-------[ Movement ]-------;

[State 4000:            Camera]
type     = ScreenBound
trigger1 = 1
value    = 0

;------------------------------------------------------------------------------;
; HIT 2
;------------------------------------------------------------------------------;
[Statedef 4101]
type        = A
movetype    = H
physics     = N
ctrl        = 0
sprpriority = -1

;-------[ Anim ]-------;

[State 4100:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4101

;-------[ Movement ]-------;

[State 4000:            Camera]
type     = ScreenBound
trigger1 = 1
value    = 0

;------------------------------------------------------------------------------;
; 落下
;------------------------------------------------------------------------------;
[Statedef 4102]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = -1, -7

;-------[ Anim ]-------;

[State 4000:            Anim, 1]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4102

;-------[ Movement ]-------;

[State 4000:            Fall]
type     = HitFallSet
trigger1 = Time = 0
value    = 1

[State 4000:            Gravity]
type     = Gravity
trigger1 = Time > 0

;-------[ Effects ]-------;

[State 4000:            Palette]
type     = PalFX
trigger1 = Time = 0
add      = 112, -96, -127
mul      = 168, 168, 168
sinadd   = 64, 32, 32, 8
color    = 64
time     = 84

;-------[ States ]-------;

[State 4000:            Liedown]
type     = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Floor(-10 * const(size.yscale))
value    = 5100


;==============================================================================;
; 赤主遍生・緋の火槌
;==============================================================================;
;------------------------------------------------------------------------------;
; HIT時
;------------------------------------------------------------------------------;
[Statedef 4200]
type     = S
movetype = H
physics  = N
ctrl     = 0

;-------[ Anim ]-------;

[State 4200:            Anim, 2]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4200

;-------[ Movement ]-------;

[State 4200:            No Camera]
type     = ScreenBound
trigger1 = 1
value    = 0

;------------------------------------------------------------------------------;
; 食らい中
;------------------------------------------------------------------------------;
[Statedef 4201]
type     = A
movetype = H
physics  = N
ctrl     = 0

;-------[ Anim ]-------;

[State 4200:            Anim, 2]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4200

;-------[ Movement ]-------;

[State 4200:            No Camera]
type     = ScreenBound
trigger1 = 1
value    = 0

;------------------------------------------------------------------------------;
; 吹き飛び
;------------------------------------------------------------------------------;
[Statedef 4202]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = -2, -7

;-------[ Anim ]-------;

[State 4202:            Anim, 1, Air]
type     = ChangeAnim
trigger1 = Time = 0
value    = 5030

[State 4202:            Anim, 2, Fall Translation]
type     = ChangeAnim
trigger1 = Anim = 5030
trigger1 = AnimTime = 0
trigger1 = SelfAnimExist(5035)
value    = 5035

[State 4202:            Anim, 3, Fall]
type     = ChangeAnim
trigger1 = Vel Y > 0
trigger2 = Anim = 5030 && AnimTime = 0
trigger3 = Anim = 5035 && AnimTime = 0
value    = 5050

[State 4202:            Anim, 4, Fall]
type     = ChangeAnim
trigger1 = Vel Y > 2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
value    = 5060

;-------[ Movement ]-------;

[State 4202:            Gravity]
type     = Gravity
trigger1 = 1

[State 4202:            Fall]
type     = HitFallSet
trigger1 = Time = 0
value    = 1

;-------[ States ]-------;

[State 4202:            Liedown]
type     = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value    = 5100


;==============================================================================;
; ワイヤー
;==============================================================================;
;------------------------------------------------------------------------------;
; ワイヤー 吹き飛び
;------------------------------------------------------------------------------;
[Statedef 4900]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = 0, 0

;-------[ Anim ]-------;

[State 4900:            Anim, No Wire Anim]
type     = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5900)
value    = 4900

[State 4900:            Anim, Wire Anim]
type     = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5900)
value    = 5900

[State 4900:            Anim, Freeze]
type     = ChangeAnim2
trigger1 = !HitShakeOver
trigger1 = !SelfAnimExist(5900)
value    = 4900
elem     = 1

[State 4900:            Anim, Freeze]
type     = ChangeAnim
trigger1 = !HitShakeOver
trigger1 = SelfAnimExist(5900)
value    = 5900
elem     = 1

;-------[ Movement ]-------;

[State 4900:            No Push]
type     = PlayerPush
trigger1 = 1
value    = 0

[State 4900:            Freeze]
type     = PosFreeze
trigger1 = !HitShakeOver

[State 4900:            Turn, 1]
type     = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 4900:            Vel, 2]
type     = VelSet
trigger1 = Time = 0
x        = -12

;-------[ States ]-------;

[State 4900:            Fall]
type     = ChangeState
trigger1 = FrontEdgeBodyDist < 10
trigger2 = BackEdgeBodyDist < 10
value    = 4901

;------------------------------------------------------------------------------;
; ワイヤー 落下
;------------------------------------------------------------------------------;
[Statedef 4901]
type     = A
movetype = H
physics  = N
ctrl     = 0

;-------[ Anim ]-------;

[State 4900:            Anim]
type     = ChangeAnim2
trigger1 = Time = 0
value    = 4901

;-------[ Movement ]-------;

[State 4900:            Fall]
type     = HitFallSet
trigger1 = Time = 0
value    = 1

[State 4900:            Bound]
type     = VelSet
trigger1 = Time = 0
x        = 2 * (ifelse(FrontEdgeBodyDist < BackEdgeBodyDist, -1, 1))
y        = -7

[State 4900:            Gravity]
type     = Gravity
trigger1 = Time > 0

;-------[ Effects ]-------;

[State 4900:            Bound Effect]
type     = PlaySnd
trigger1 = Time = 0
value    = F5, 4

[State 4900:            Bound Effect]
type     = Explod
trigger1 = Time = 1
anim     = F72
postype  = p1
pos      = 0, Const(size.mid.pos.y)
ontop    = 1
ownpal   = 1
facing   = -1

;-------[ Controls ]-------;

[State 4900:            Recover near ground]
type       = SelfState
triggerall = Time > 30
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = Alive
triggerall = CanRecover
trigger1   = command = "recovery"
value      = 5200

[State 4900:            Recover in mid air]
type       = SelfState
triggerall = Time > 30
triggerall = Vel Y > -1
triggerall = Alive
triggerall = CanRecover
trigger1   = command = "recovery"
value      = 5210

;-------[ States ]-------;

[State 4900:            Liedown]
type     = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value    = 5100


;==============================================================================;
; ダミー
;
; ※1 p2statenoに設定すると HitOver を条件に立ち or しゃがみ or 空中へ戻す
; ※2 空中の場合 5040 (受身) へ
;==============================================================================;
[Statedef 4990]
type     = U
movetype = H
physics  = N

;-------[ Anim ]-------;

[State 4990:            Anim]
type     = ChangeAnim
trigger1 = Time = 0
value    = 5000 + (StateType = A) * 30 + (StateType = C) * 20 + (StateType = S) * 10

;-------[ States ]-------;

[State 4990:            Air Recover]
type     = SelfState
trigger1 = HitOver
trigger1 = StateType = A
value    = 5040
ctrl     = 1

[State 4990:            Crouching]
type     = SelfState
trigger1 = HitOver
trigger1 = StateType = C
value    = 11
ctrl     = 1

[State 4990:            Standing]
type       = SelfState
triggerall = HitOver
trigger1   = StateType != A
trigger1   = StateType != C
value      = 0
ctrl       = 1


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date$
;==============================================================================;
