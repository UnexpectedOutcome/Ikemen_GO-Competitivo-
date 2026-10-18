;-----------------------------------------------------------
;Shaia llamando al montruo (opt)
[Statedef 9526]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6010
velset = 0,0,0

[State 9526,8]
type = PowerAdd
trigger1 = animelem = 1
value = - 500

[State 9526, 1]
type = PlaySnd
trigger1 = time = 12
value = 1,4
volume = 200

[State 9526, 7]
type = ChangeAnim
trigger1 = Time = 32
value = 6011

[State 9526, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Shaia coriendo al monstruo
[Statedef 9527]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6014
velset = 0,0,0

[State 9527, 1]
type = CtrlSet
trigger1 = time = 55
value = 1

[State 9527, 7]
 type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;SHAIA LLAMANDO AL MONSTRILLO(OPT)
[Statedef 9528]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6012
velset = 0,0,0

[State 9528,8]
type = PowerAdd
trigger1 = animelem = 1
value = - 500

[State 9528, 2]
type = PlaySnd
trigger1 = time = 0
value = 2,4
volume = 200

[State 9528, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;corriendo al monstrillo
[Statedef 9511]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6015
velset = 0,0,0

[State 9511, 1]
type = CtrlSet
trigger1 = time = 32
value = 1

[State 9511, 2]
type = PlaySnd
trigger1 = time = 13
value = 0,5
volume = 200

[State 9511, 7]
 type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Shaia llamando la raja
[Statedef 9520]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6002
velset = 0,0,0

[State 9520, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,4
volume = 80

[State 9520, 2]
type = PlaySnd
trigger1 = time = 0
value = 1,13
volume = 200

[State 9520, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9523
ctrl = 0

[Statedef 9523]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6003
velset = 0,0,0

[State 9523, 2]
type = CtrlSet
trigger1 = time = 10
value = 1

[State 9523, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;Shaia llamando las mordidas
[Statedef 9521]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6001
poweradd = 50                    
velset = 0,0,0

[State 9521, 1]
type = SprPriority
trigger1 = AnimElem = 1
value = 2


[State 9521, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1,5
volume = 200

[State 9521, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,4

[State 9521, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9522
ctrl = 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[Statedef 9522]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6004
velset = 0,0,0

[State 9522, 1]
type = SprPriority
trigger1 = AnimElem = 1
value = 1

[State 9522, 2]
type = CtrlSet
trigger1 = animelem = 5
value = 1

[State 9522, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1,6
volume = 200

[State 9522, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,4

[State 9522, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Shaia llamando el crash
[Statedef 9525]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6000
poweradd = 50                    
velset = 0,0,0

[State 9525, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 2,4
volume = 200

;[State 9525, 2]
;type = PlaySnd
;trigger1 = animelem = 3
;value = 1000,4

[State 9525, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



