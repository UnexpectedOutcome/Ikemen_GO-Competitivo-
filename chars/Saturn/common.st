;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 1
anim = 47+(anim=[42,43])
facep2=1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 109]
Type=Changestate
triggerall = InGuardDist
triggerall = time=0
Trigger1=var(59)=0
Trigger1=command="holdback"
trigger2 = (var(59) > 0)
Trigger2 = random<var(50)*2+(AiLevel>=3)*30
value=120

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > Const720p(-8)
trigger1 = SelfAnimExist(anim + 3)
trigger1 = anim >= 41 && anim <= 43
persistent = 0
value = Anim + 3

[State 50]
Type=Changestate
Trigger1=var(59)=0
Trigger1=inguarddist
Trigger1=command="holdback"
value=120

;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120]
Type=CtrlSet
Trigger1=var(59)>0
value=0

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = helper(991),var(0)=2
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command != "holddown"
trigger2 = Var(59) > 0
trigger2 = helper(991),var(0)=1
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger1 = var(59)=0
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Stand guard (guarding)
[Statedef 130]
type    = S
physics = S

[State 120]
Type=CtrlSet
Trigger1=var(59)>0
value=0

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
trigger1 = var(59)=0
trigger2 = var(59)>0
trigger2 = helper(991),var(0)=2
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = var(59)=0
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Crouch guard (guarding)
[Statedef 131]
type    = C
physics = C

[State 120]
Type=CtrlSet
Trigger1=var(59)>0
value=0

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
trigger1 = var(59)=0
trigger2 = Var(59) > 0
trigger2 = helper(991),var(0)=1
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = var(59)=0
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; Air guard (guarding)
[Statedef 132]
type    = A
physics = N

[State 120]
Type=CtrlSet
Trigger1=var(59)>0
value=0

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback" || (var(59)>0)
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = var(59)=0
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140


;---------------------------------------------------------------------------
; Stand guard hit (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(StateType=C)

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = helper(991),var(0)=2
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command != "holddown"
trigger2 = Var(59) > 0
trigger2 = helper(991),var(0)=1
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; Stand guard hit (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
trigger1 = var(59)=0
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = helper(991),var(0)=2
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command != "holddown"
trigger2 = Var(59) > 0
trigger2 = helper(991),var(0)=1
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = !var(59)

;---------------------------------------------------------------------------
; Crouch guard hit (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(StateType=C)

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = helper(991),var(0)=2
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command != "holddown"
trigger2 = Var(59) > 0
trigger2 = helper(991),var(0)=1
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Crouch guard hit (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
trigger1 = var(59)=0
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = helper(991),var(0)=2
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command != "holddown"
trigger2 = Var(59) > 0
trigger2 = helper(991),var(0)=1
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = !var(59)

;---------------------------------------------------------------------------
; Air guard hit (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Air guard hit (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
trigger1 = var(59)=0
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback" || var(59)>0
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
trigger1 = var(59)=0
Trigger2 = var(59)>0
Trigger2 = Gametime %100<50
Trigger2 = random <var(50)
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
trigger1 = var(59)=0
Trigger2 = var(59)>0
Trigger2 = Gametime %100<50
Trigger2 = random <var(50)
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)


;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground; still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200]
Type=NotHitby
Trigger1=!ctrl
value2=,NA,SA,NT

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.groundrecover.groundlevel)
value = 5201

;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5200]
Type=NotHitby
Trigger1=!ctrl
value2=,NA,SA,NT

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = Const(velocity.air.gethit.groundrecover.x)
y = Const(velocity.air.gethit.groundrecover.y)

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 6]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, -floor(vel y)
sprpriority = -10

;---------------------------------------------------------------------------
; Air get-hit (fall recovery in air)
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5200]
Type=NotHitby
Trigger1=!ctrl
value2=,NA,SA,NT

[State 5210, 1]
type = PosFreeze
trigger1 = Time < 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-80)

[State 5210, 1.0 behavior 1]
type = VelMul
trigger1 = Time = 4
x = Const(velocity.air.gethit.airrecover.mul.x)
y = Const(velocity.air.gethit.airrecover.mul.y)

[State 5210, 1.0 behavior 2]
type = VelAdd
trigger1 = Time = 4
x = Const(velocity.air.gethit.airrecover.add.x)
y = Const(velocity.air.gethit.airrecover.add.y)

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = Const(velocity.air.gethit.airrecover.up)

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = Const(velocity.air.gethit.airrecover.down)

[State 5210, 2] ;Go fwd
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = Const(velocity.air.gethit.airrecover.fwd)

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = Const(velocity.air.gethit.airrecover.back)

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd
trigger1 = Time >= 4
y = Const(movement.air.gethit.airrecover.yaccel)

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
ctrl = 0
sprpriority = 1

[State 40]
Type=Changestate
Triggerall=Prevstateno<200
Triggerall=time=0
Triggerall=Helper(991),var(9)=0
Trigger1=var(59)>0
Trigger1=random*2>var(50)
value=0
ctrl=1

[State 40]
Type=Changeanim
Trigger1=time=0
value=40

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Downed get-hit (lying down)
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110]
Type=Changestate
Trigger1=1
value=5111
ignorehitpause=1

;---------------------------------------------------------------------------
; Downed get-hit (lying down)
[Statedef 5111]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 5110]
Type=Changestate
Trigger1=time>=const(data.liedown.time)
value=5120

