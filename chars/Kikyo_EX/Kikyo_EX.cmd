;-| hyper Moves |------------------------------------------------------

四魂
[Command]
name = "finalfire"     ;
command = D,DF,F,x+y+z
time = 30

蒼龍
[Command]
name = "fireball"     ;
command = D,DF,F,x+y
time = 30

八卦伏魔陣
[Command]
name = "reborn"     ;
command = D,DB,B,a+b
time = 30

破魔箭
[Command]
name = "baigu"     ;
command = D,DF,F,a+b
time = 30

;-| Special Motions |------------------------------------------------------

抓技
[Command]
name = "catch"     ;
command = /F,c
time = 30

抓技
[Command]
name = "catch"     ;
command = /F,z
time = 30

安魂曲
[Command]
name = "death"     ;
command = D,DB,B,x
time = 30

安魂曲
[Command]
name = "death"     ;
command = D,DB,B,y
time = 30

死魂蟲
[Command]
name = "flower"     ;
command = D,DF,F,x
time = 30

死魂蟲
[Command]
name = "flower"     ;
command = D,DF,F,y
time = 30

弓箭
[Command]
name = "wind"     ;
command = D,DB,B,a
time = 30

弓箭
[Command]
name = "wind"     ;
command = D,DB,B,b
time = 30

反擊
[Command]
name = "moon"     ;
command = D,DF,F,a
time = 30

反擊
[Command]
name = "moon"     ;
command = D,DF,F,b
time = 30

破魔光
[Command]
name = "light"     ;
command = B,F,a
time = 30

破魔光
[Command]
name = "light"     ;
command = B,F,b
time = 30

封魔陣
[Command]
name = "light2"     ;
command = B,F,x
time = 30

封魔陣-遠
[Command]
name = "light3"     ;
command = B,F,y
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-|CPU|-------------------------------------------------------------------
[Command]
name = "CPU"
command = a
[Command]
name = "CPU"
command = b
[Command]
name = "CPU"
command = c
[Command]
name = "CPU"
command = x
[Command]
name = "CPU"
command = y
[Command]
name = "CPU"
command = z
[Command]
name = "CPU"
command = s
[Command]
name = "CPU"
command = F
[Command]
name = "CPU"
command = B
[Command]
name = "CPU"
command = U
[Command]
name = "CPU"
command = D

;----------------------------------------------------------------- 


;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]

;四魂
[State -1, 四魂]
type = ChangeState
value = 1300
triggerall = command = "finalfire"
trigger1 = power >= 3000
triggerall = life<= Lifemax*0.3
trigger1 = statetype != A
trigger1 = ctrl = 1

;蒼龍
[State -1, 蒼龍]
type = ChangeState
value = 1200
triggerall = command = "fireball"
trigger1 = power >= 1000
trigger1 = numhelper(1201) = 0
trigger1 = statetype = s
trigger1 = ctrl = 1

;八卦伏魔陣
[State -1, 八卦伏魔陣]
type = ChangeState
value = 1100
triggerall = command = "reborn"
trigger1 = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl = 1

;破魔箭
[State -1, 破魔箭]
type = ChangeState
value = 1000
triggerall = command = "baigu"
trigger1 = power >= 1000
trigger1 = numhelper(1001) = 0
trigger1 = statetype = s
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;前衝
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;後衝
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

;集氣
[State -1, Taunt]
type = ChangeState
value = 650
triggerall = command = "hold_a"
triggerall = command = "hold_x"
trigger1 = statetype != A
trigger1 = power < 3000
trigger1 = ctrl = 1

;抓技
[State -1, 抓技]
type = ChangeState
value = 280
triggerall = P2bodydist X <= 5
triggerall = command = "catch"
trigger1 = statetype = s
trigger1 = ctrl = 1

;空抓技
[State -1, 空抓技]
type = ChangeState
value = 290
triggerall = P2bodydist X <= 5
triggerall = command = "catch"
trigger1 = statetype = a
trigger1 = ctrl = 1

;死魂蟲
[State -1, 死魂蟲]
type = ChangeState
value = 400
trigger1 = command = "flower"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger1 = numhelper(401) = 0

;安魂曲
[State -1, 安魂曲]
type = ChangeState
value = 450
trigger1 = command = "death"
trigger1 = statetype = s
trigger1 = ctrl = 1

;反擊
[State -1, 反擊]
type = ChangeState
value = 350
trigger1 = command = "moon"
trigger1 = statetype = s
trigger1 = ctrl = 1

;弓箭
[State -1, 弓箭]
type = ChangeState
value = 300
trigger1 = command = "wind"
trigger1 = statetype = s
trigger1 = ctrl = 1

;破魔光
[State -1, 破魔光]
type = ChangeState
value = 500
trigger1 = command = "light"
trigger1 = statetype = s
trigger1 = ctrl = 1

;封魔陣
[State -1, 封魔陣]
type = ChangeState
value = 550
triggerall = numhelper(551) = 0
trigger1 = command = "light2"
trigger1 = statetype = s
trigger1 = ctrl = 1

;封魔陣-遠
[State -1, 封魔陣-遠]
type = ChangeState
value = 560
triggerall = numhelper(561) = 0
trigger1 = command = "light3"
trigger1 = statetype = s
trigger1 = ctrl = 1

;輕-站立攻擊
[State -1, 輕-站立攻擊]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;中-站立攻擊
[State -1, 中-站立攻擊]
type = ChangeState
value = 201
triggerall = command = "b"
trigger1 = statetype = s
trigger1 = ctrl = 1

;輕-蹲下攻擊
[State -1, 輕-蹲下攻擊]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = stateno = 11
trigger1 = ctrl = 1

;中-蹲下攻擊
[State -1, 中-蹲下攻擊]
type = ChangeState
value = 211
triggerall = command = "b"
trigger1 = stateno = 11
trigger1 = ctrl = 1

;輕-空中攻擊
[State -1, 輕-空中攻擊]
type = ChangeState
value = 220
triggerall = statetype = a
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"

;中-空中攻擊
[State -1, 中-空中攻擊]
type = ChangeState
value = 221
triggerall = statetype = a
triggerall = ctrl = 1
trigger1 = command = "x"
trigger2 = command = "y"

;輕-腳站立攻擊
[State -1, 輕-腳站立攻擊]
type = ChangeState
value = 250
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1

;中-腳站立攻擊
[State -1, 中-腳站立攻擊]
type = ChangeState
value = 251
triggerall = command = "y"
trigger1 = statetype = s
trigger1 = ctrl = 1

;輕-腳蹲下攻擊
[State -1, 輕-腳蹲下攻擊]
type = ChangeState
value = 260
triggerall = command = "x"
trigger1 = stateno = 11
trigger1 = ctrl = 1

;中-腳蹲下攻擊
[State -1, 中-腳蹲下攻擊]
type = ChangeState
value = 261
triggerall = command = "y"
trigger1 = stateno = 11
trigger1 = ctrl = 1

;前衝攻擊
[State -1, 前衝攻擊]
type = ChangeState
value = 110
triggerall = stateno = 100
triggerall = time > 5
trigger1 = command = "a"
trigger2 = command = "b"

;後衝攻擊
[State -1, 後衝攻擊]
type = ChangeState
value = 111
triggerall = stateno = 105
triggerall = time > 5
trigger1 = command = "a"
trigger2 = command = "b"

;----------------------------------------------------------------- 
