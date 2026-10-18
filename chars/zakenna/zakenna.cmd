;========================================================================
;========================================================================
[Command]
name = "FF" 
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;========================================================================
;========================================================================
[Statedef -1]
;------------------------------------------------------------------------
;------------------------------------------------------------------------
[State ダッシュ]
type = SelfState
value = 100
triggerall = (Roundstate = 2) && (Statetype = S)
triggerall = ctrl || ((Stateno = 200) && Movehit)
trigger1 = !var(59) && (command = "FF")
trigger2 = var(59) && (P2dist x > 100) && (random < 100)

;------------------------------------------------------------------------
[State 後退ジャンプ]
type = SelfState
value = 105
triggerall = (Roundstate = 2) && (Statetype = S) && ctrl
trigger1 = !var(59) && (command = "BB")
trigger2 = var(59) && (P2dist x = [-10,50]) && (random < 100)

;------------------------------------------------------------------------
[State 歩く]
type = SelfState
value = 20
trigger1 = (Roundstate = 2) && (Statetype = S) && ctrl 
trigger1 = var(59) && (P2dist x > 50) && (random < 100)

;------------------------------------------------------------------------
[State コンボ用var11]
type = VarSet
trigger1 = ctrl || (Movetype != A) || (Stateno != 200)
var(11) = 0
IgnoreHitPause = 1

[State 攻撃]
type = SelfState
value = 200
triggerall = (Roundstate = 2) && (var(11) < 2)
triggerall = ctrl || ((Stateno = 200) && Movehit)
trigger1 = !var(59)
trigger1 = (command = "a") || (command = "b") || (command = "c")
trigger2 = !var(59)
trigger2 = (command = "x") || (command = "y") || (command = "z")
trigger3 = var(59) && (P2dist x = [-10,75]) && (random < 500) && ctrl
trigger4 = var(59) && (P2dist x = [-10,75]) && (random < 250)
trigger4 = (Stateno = 200) && Movehit
trigger4 = var(11) := var(11)+1 || 1
IgnoreHitPause = ((Stateno = 200) && Movehit))

[State コンボ用var11]
type = VarAdd
triggerall = (Stateno = 200) && Movehit
trigger1 = !var(59)
trigger1 = (command = "a") || (command = "b") || (command = "c")
trigger2 = !var(59)
trigger2 = (command = "x") || (command = "y") || (command = "z")
var(11) = 1
IgnoreHitPause = 1
