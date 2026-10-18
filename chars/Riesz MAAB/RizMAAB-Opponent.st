;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; 相手制御ステート ‖ 控制對手用狀態
; Opponent Control State
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Normal Attack 5A / Opponent Passive
; 通常攻擊5A / 對手硬直
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5800]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 5800, 1]
type = DestroySelf
trigger1 = IsHelper

[State 5800, 2]
type = ChangeAnim2
trigger1 = Time = 0
value = 5800

[State 5800, 3]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 5800, 4]
type = AngleSet
trigger1 = 1
value = 0

[State 5800, 5]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 5801

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Normal Attack 5A / Opponent Blow Away
; 通常攻擊5A / 對手打飛
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5801]
type = A
movetype = H
physics = N

[State 5801, 1]
type = ChangeAnim2
trigger1 = !Time
value = 5801

[State 5801, 2]
type = ChangeAnim2
triggerAll = Anim = 5801
trigger1 = AnimTime = 0
trigger2 = Vel Y > 0
value = 5802

[State 5801, 3]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 5801, 4] ;Y加速度
type = VelAdd
trigger1 = 1
y = cond(gethitvar(yaccel) != 0,gethitvar(yaccel),1.6)

;[State 5801, 5] ;ステート復帰 地上復帰 可經由"recovery"回到自身定義狀態
;type = SelfState
;triggerall = Vel Y > 0
;triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
;triggerall = Alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5200

;[State 5801, 6] ;ステート復帰 空中復帰 可經由"recovery"回到自身定義狀態
;type = SelfState
;triggerAll = Vel Y > Const(movement.air.gethit.airrecover.threshold)
;triggerAll = Alive
;triggerAll = CanRecover
;trigger1 = Command = "recovery"
;value = 5210

[State 5801, 7] ;ステート復帰 着地
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Normal Attack 5A / Opponent Air Get-Hit / Shaking
; 通常攻擊5A / 對手空中受擊 / 身體晃動
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5802]
type = A
movetype = H
physics = N
velset = 0,0

[State 5802, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = Cond((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5802, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5802, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5802, 4] ;Freeze Anim
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5802, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5803

[State 5802, 6 (FFB Light)]
type = ForceFeedback
trigger1 = Anim = 5000
trigger2 = Anim = 5010
persistent = 0
time = 6
waveform = square

[State 5802, 7 (FFB Medium)]
type = ForceFeedback
trigger1 = Anim = 5001
trigger2 = Anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-0.3

[State 5802, 8 (FFB Hard)]
type = ForceFeedback
trigger1 = Anim = 5012
trigger2 = Anim = 5002
trigger3 = Anim = 5030
trigger4 = Anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Air Get-Hit / Knocked Away
; 空中受擊 / 擊倒
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5803]
type = A
movetype = H
physics = N
ctrl = 0

[State 5803, 1]
type = ChangeAnim
trigger1 = Anim != [5000,5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5803, 2]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5803, 3]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 5803, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit Ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5805 ;HITA_RECOV

[State 5803, 5]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit Ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5806 ;HITA_FALL

[State 5803, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5804 ;Air Get Hit (Transition)

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Air Get-Hit / Transition
; 空中受擊 / 過渡時
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5804]
type = A
movetype = H
physics = N

[State 5804, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up Anim
trigger1 = Anim != 5090 ;Not if hit off Ground Anim
value = 5035

[State 5804, 2]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5804, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver ;Hit is Over
trigger2 = AnimTime = 0 ;Animation Over
trigger3 = Vel Y > 0 ;Hit Ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 ;No Transition Anim
trigger4 = Anim != 5035 ;.
value = 5805 ;Air Get Hit (Recovering in Air, Not Falling)

[State 5804, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver ;Hit is Over
trigger2 = AnimTime = 0 ;Animation Over
trigger3 = Vel Y > 0 ;Hit Ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 ;No Transition Anim
trigger4 = Anim != 5035 ;.
value = 5806 ;Air Get Hit (Recovering in Air, Not Falling)

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Air Get-Hit /Recovering in Air, Not Falling
; 空中受擊 / 空中復原沒有落下時
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5805]
type = A
movetype = H
physics = N

[State 5805, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

;[State 5805, 2]
;type = CtrlSet
;trigger1 = HitOver
;value = 1

[State 5805, 3]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5805, 4]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5805, 5]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump Land

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Air Get-Hit / Falling
; 空中受擊 / 落下時
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5806]
type = A
movetype = H
physics = N

[State 5806, 1] ;Change Anim when done with Transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0 ;If no Transition Anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051,5059]) && (Anim != [5061,5069])
trigger2 = Anim != 5090 ;Not if hit off Ground Anim
value = 5050

[State 5806, 2] ;Coming down Anim
type = ChangeAnim
trigger1 = Anim = [5050,5059]
trigger1 = Vel Y >= Cond(Anim = 5050,Const720p(4),Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5806, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

;[State 5806, 4] ;Recover Near Ground
;type = SelfState
;triggerall = Vel Y > 0
;triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
;triggerall = Alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5200 ;Air Get Hit (Fall Recovery on Ground)

;[State 5806, 5]; Recover in Mid Air
;type = SelfState
;triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
;triggerall = Alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5210 ;Air Get Hit (Fall Recovery in Air)

[State 5806, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Downed Get Hit (Hit Ground from Fall)

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Meteor Spear / Downed Get-Hit / Bounce Off Ground
; 流星衝 / 擊落受擊 / 地面反彈離地
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5809]
type = A
movetype = H
physics = N

[State 5809, 1]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 5809, 2]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (anim % 10)

[State 5809, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5809, 4]
type = VelSet
trigger1 = Time = 0
x = -5
y = -40

[State 5809, 5]
type = Gravity
trigger1 = Time >= 5

[State 5809, 6]
type = SelfState
triggerall = Time >= 5
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Stand Get-Hit / Shaking
; 百花槍 (最後連擊) / 對手站立受擊 / 身體晃動
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5810]
type = S
movetype = H
physics = N
velset = 0,0

[State 5810, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5810, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5810, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5810, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5810, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5810, 6 (FFB Light)]
type = ForceFeedback
trigger1 = Anim = 5000
trigger2 = Anim = 5010
persistent = 0
time = 6
waveform = square

[State 5810, 7 (FFB Medium)]
type = ForceFeedback
trigger1 = Anim = 5001
trigger2 = Anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5810, 8 (FFB Hard)]
type = ForceFeedback
trigger1 = Anim = 5012
trigger2 = Anim = 5002
trigger3 = Anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5810, 9]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5811 ;Stand get-hit (knocked back)

[State 5810, 10]
type = ChangeState
trigger1 = HitShakeOver
value = 5840

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Stand Get-Hit / Knocked Back 1
; 百花槍 (最後連擊) / 對手站立受擊 / 擊退1
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5811]
type = S
movetype = H
physics = S

[State 5811, 1]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing

[State 5811, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5811, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = 0.6

[State 5811, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5811, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5811, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Stand Get-Hit / Knocked Back 2
; 百花槍 (最後連擊) / 對手站立受擊 / 擊退2
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5812]
type = S
movetype = H
physics = S

[State 5812, 1]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing

[State 5812, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5812, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = 0.6

[State 5812, 4]
type = VelSet
trigger1 = Time >= 30
x = 0

[State 5812, 5]
type = DefenceMulSet
trigger1 = Time >= 30
value = 1

[State 5812, 6]
type = SelfState
trigger1 = Time >= 30
value = 0
ctrl = 1

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Crouch Get-Hit / Shaking
; 百花槍 (最後連擊) / 對手蹲下受擊 / 身體晃動
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5820]
type = C
movetype = H
physics = N
velset = 0,0

[State 5820, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5820, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5820, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5820, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5820, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = Pos Y != 0
statetype = A

[State 5820, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5821 ;Crouch get-hit (knocked back)

[State 5820, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5840

[State 5820, 8 (FFB Light)]
type = ForceFeedback
trigger1 = Anim = 5020
persistent = 0
time = 6
waveform = Square

[State 5820, 9 (FFB Medium)]
type = ForceFeedback
trigger1 = Anim = 5021
persistent = 0
time = 8
waveform = SineSquare
ampl = 110,-1,-.3

[State 5820, 10 (FFB Hard)]
type = ForceFeedback
trigger1 = Anim = 5022
persistent = 0
time = 15
waveform = SineSquare
ampl = 140

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Crouch Get-Hit / Knocked Back 1
; 百花槍 (最後連擊) / 對手蹲下受擊 / 擊退1
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5821]
type = C
movetype = H
physics = C

[State 5821, 1]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing

[State 5821, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5821, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = 0.6

[State 5821, 4]
type = VelSet
trigger1 = HitOver ;Time = 30
x = 0

[State 5821, 5]
type = DefenceMulSet
trigger1 = HitOver ;Time = 30
value = 1

[State 5821, 6]
type = SelfState
trigger1 = HitOver ;Time = 30
value = 11
ctrl = 1

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Crouch Get-Hit / Knocked Back 2
; 百花槍 (最後連擊) / 對手蹲下受擊 / 擊退2
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5822]
type = C
movetype = H
physics = C

[State 5822, 1]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing

[State 5822, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5822, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = 0.6

[State 5822, 4]
type = VelSet
trigger1 = Time >= 30
x = 0

[State 5822, 5]
type = DefenceMulSet
trigger1 = Time >= 30
value = 1

[State 5822, 6]
type = SelfState
trigger1 = Time >= 30
value = 11
ctrl = 1

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Air Get-Hit / Shaking
; 百花槍 (最後連擊) / 對手空中受擊 / 身體晃動
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5830]
type = A
movetype = H
physics = N
velset = 0,0

[State 5830, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5830, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5830, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5830, 4] ;Freeze Anim
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5830, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5840

[State 5830, 6 (FFB Light)]
type = ForceFeedback
trigger1 = Anim = 5000
trigger2 = Anim = 5010
persistent = 0
time = 6
waveform = Square

[State 5830, 7 (FFB Medium)]
type = ForceFeedback
trigger1 = Anim = 5001
trigger2 = Anim = 5011
persistent = 0
time = 8
waveform = SineSquare
ampl = 110,-1,-.3

[State 5830, 8 (FFB Hard)]
type = ForceFeedback
trigger1 = Anim = 5012
trigger2 = Anim = 5002
trigger3 = Anim = 5030
trigger4 = Anim = [5051,5059]
persistent = 0
time = 15
waveform = SineSquare
ampl = 140

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; Hyakka Spear (Last Combo) / Opponent Air Get-Hit / Knocked Away
; 百花槍 (最後連擊) / 對手空中受擊 / 擊倒
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[Statedef 5840]
type = A
movetype = H
physics = N
ctrl = 0

[State 5840, 1]
type = ChangeAnim
trigger1 = Anim != [5000,5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5840, 2]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5840, 3]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 5840, 4]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver ;Time = 30
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5840, 5]
type = SelfState
triggerall = HitFall
trigger1 = HitOver ;Time = 30
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 ;HITA_FALL

[State 5840, 6]
type = SelfState
trigger1 = AnimTime = 0
value = 5035 ;Air get-hit (transition)
