[Command]
name = "CPU_1"
command = U,U,a,F,D
time = 1
[Command]
name = "CPU_2"
command = U,D,U,F,F
time = 1
[Command]
name = "CPU_3"
command = B,B,D,F,U
time = 1
[Command]
name = "CPU_4"
command = F,F,a,a,U,F
time = 1
[Command]
name = "CPU_5"
command = D,F,U,B
time = 1
[Command]
name = "CPU_6"
command = D,D,U,U,U,B
time = 1
[Command]
name = "CPU_7"
command = B,B,U,U,U,D
time = 1
[Command]
name = "CPU_8"
command = U,U,D,D,B,B
time = 1
[Command]
name = "CPU_9"
command = U,D,F,B,B,B,B
time = 1
[Command]
name = "CPU_10"
command = D,U,F,F,F,F
time = 1
[Command]
name = "CPU_11"
command = F,D,B,D,D,F
time = 1
[Command]
name = "CPU_12"
command = F,F,F,D,D,D
time = 1
[Command]
name = "CPU_13"
command = F,F,D,D,F,U,U
time = 1
[Command]
name = "CPU_14"
command = U,D,F,U,U,U,D
time = 1
[Command]
name = "CPU_15"
command = F,c,U,F,U,D,F
time = 1
[Command]
name = "CPU_16"
command = D,D,U,F,B,B
time = 1
[Command]
name = "CPU_17"
command = F,F,F,F,F,F
time = 1
[Command]
name = "CPU_18"
command = D,D,D,D,D,D,D,D
time = 1
[Command]
name = "CPU_19"
command = U,D,F,U,U,F,F,D,B
time = 1
[Command]
name = "CPU_20"
command = U,D,F,D,D,F,F,D,B
time = 1
[Command]
name = "CPU_21"
command = U,D,F,B,B,D,F,D,B
time = 1
[Command]
name = "CPU_22"
command = U,D,F,F,B,B
time = 1


;-| 超必殺技 |--------------------------------------------------------



[Command]
name = "轟極練気極光覇"
command = ~x, x, $F, a, y
time = 45
buffer.time = 15

[Command]
name = "轟極練気極光覇"
command = ~x, x, $F+a+y
time = 45
buffer.time = 15

[Command]
name = "轟極練気極光覇"
command = ~x, x, $F+a, y
time = 45
buffer.time = 15

[Command]
name = "轟極練気極光覇"
command = ~x, x, $F,a+y
time = 45
buffer.time = 15


[Command]
name = "K_KKD"
command = ~F, B, D, F, x
time = 20

[Command]
name = "K_KKD"
command = ~F, B, D, F, y
time = 20

[Command]
name = "K_IDS"
command = ~F, B, D, F, a
time = 20

[Command]
name = "K_IDS"
command = ~F, B, D, F, b
time = 20

[Command]
name = "C_KKD"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command] 
name = "C_KKD"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "C_KKD"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "S_SRG"
command = ~F, D, DF, ~F, D, DF, x
time = 30

[Command] 
name = "S_SRG"
command = ~F, D, DF, ~F, D, DF, y
time = 30

[Command]
name = "S_SRG"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "H_ITS"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "H_ITS"
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "H_ITS"
command = ~D, DB, B, a+b
time = 20

;-| 必殺技 |------------------------------------------------------
[Command]
name = "KKD_x"
command = ~D, DF, F, x

[Command]
name = "KKD_y"
command = ~D, DF, F, y

[Command]
name = "SRG_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "SRG_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "ITS_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "ITS_b"
command = ~D, DB, B, b
time = 20


[Command]
name = "DM"
command = ~D, DB, B, x
time = 20

[Command]
name = "DM"
command = ~D, DB, B, y
time = 20


[Command]
name = "DMDM"
command = ~D, DB, B, x+y
time = 20


[Command]
name = "DMDM"
command = ~D, DB, B,D, DB, B, x
time = 20

[Command]
name = "DMDM"
command = ~D, DB, B,D, DB, B, y
time = 20

[Command]
name = "Kaihi"
command = /D
time = 10

[Command]
name = "GC_x"
command = ~B, DB, D, x

[Command]
name = "GC_y"
command = ~B, DB, D, y

[Command]
name = "GC_a"
command = ~B, DB, D, a

[Command]
name = "GC_b"
command = ~B, DB, D, b

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "SJump"
command = D, $U
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_y"
command = /y
time = 1


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================

; スカンダ・インドラ
[State -1,]
type = ChangeState
value = 11999
triggerall = !var(59)
triggerall = Teammode = simul
triggerall = Numpartner > 0
triggerall = partner,alive = 1
triggerall = partner,Name = "Raiya_Mikazuchi"
triggerall = command = "轟極練気極光覇"
triggerall = partner,stateno!=[11998,13000]
triggerall = statetype != A && power >= 3000

trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1100,1199]) || (stateno = [3100,3199])
trigger3 = movecontact
;===========================================================================
;==========================================================================================
;轟極練気極光覇
[State -2,typeA-on]
type = changestate

triggerall = Teammode = simul
triggerall = Numpartner > 0
triggerall = partner,Name= "Raiya_Mikazuchi" 
triggerall = partner,stateno=12000
triggerall = movetype = I
triggerall = statetype != A
triggerall = alive = 1
triggerall = stateno != [11998,12001]
trigger1 = ctrl 
value = 11998
ignorehitpause = 1
supermovetime = 999
;-------------------------------------

;---------------------------------------------------------------------------
; 究極気孔弾
[State -1,]
type = ChangeState
value = 3300
triggerall = !var(59)
triggerall = command = "K_KKD"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1100,1199]) || (stateno = [3100,3199])
trigger3 = movecontact
trigger4 = stateno = [1200,1299]
trigger4 = movecontact
trigger5 = stateno = 3200
trigger5 = movecontact
trigger6 = stateno = [1000,1010]
trigger6 = Var(3) = 1
trigger7 = stateno = 3000
trigger7 = Var(4) = 1
trigger8 = stateno = 53

;===========================================================================
;---------------------------------------------------------------------------
; 鬼龍韋駄天撃
[State -1,]
type = ChangeState
value = 3400
triggerall = !var(59)
triggerall = command = "K_IDS"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1100,1199]) || (stateno = [3100,3199])
trigger3 = movecontact
trigger4 = stateno = [1200,1299]
trigger4 = movecontact
trigger5 = stateno = 3200
trigger5 = movecontact
trigger6 = stateno = [1000,1010]
trigger6 = Var(3) = 1
trigger7 = stateno = 3000
trigger7 = Var(4) = 1
trigger8 = stateno = 53

;===========================================================================
;---------------------------------------------------------------------------
;蒼龍撃（超必）
[State -1,]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "S_SRG"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = [1100,1199]
trigger3 = movecontact
trigger4 = stateno = [1200,1299]
trigger4 = movecontact
trigger5 = stateno = 3200
trigger5 = movecontact
trigger6 = stateno = [1000,1010]
trigger6 = Var(3) = 1
trigger7 = stateno = 3000
trigger7 = Var(4) = 1
trigger8 = stateno = 53

;---------------------------------------------------------------------------
;気孔連弾
[State -1,]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "C_KKD"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1100,1199]) || (stateno = [3100,3199])
trigger3 = movecontact
trigger4 = stateno = [1200,1299]
trigger4 = movecontact
trigger5 = stateno = 3200
trigger5 = movecontact
trigger6 = stateno = [1000,1010]
trigger6 = Var(3) = 1
trigger7 = stateno = 53

;---------------------------------------------------------------------------
;韋駄天足（超必）
[State -1,]
type = ChangeState
value = 3200
triggerall = !var(59)
triggerall = command = "H_ITS"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1100,1199]) || (stateno = [3100,3199])
trigger3 = movecontact
trigger4 = stateno = [1200,1299]
trigger4 = movecontact
trigger5 = stateno = [1000,1010]
trigger5 = Var(3) = 1
trigger6 = stateno = 3000
trigger6 = Var(4) = 1
trigger7 = stateno = 53

;---------------------------------------------------------------------------
;韋駄天足（超必）
[State -1,]
type = ChangeState
value = 3600
triggerall = !var(59)
triggerall = command = "H_ITS"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) 
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1600,1610]) || stateno = 3600
trigger3 = movecontact


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;サンダー・ホーク（超必）
[State -1,]
type = ChangeState
value = 2300
triggerall = !var(59)
triggerall = command = "DMDM"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = (stateno = [1100,1199]) || (stateno = [3100,3199])
trigger3 = movecontact
trigger4 = stateno = [1200,1299]
trigger4 = movecontact
trigger5 = stateno = [1000,1010]
trigger5 = Var(3) = 1
trigger6 = stateno = 3000
trigger6 = Var(4) = 1
trigger7 = stateno = 53

;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
;蒼龍撃（弱）
[State -1]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "SRG_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;---------------------------------------------------------------------------
;蒼龍撃（強）
[State -1]
type = ChangeState
value = 1110
triggerall = !var(59)
triggerall = command = "SRG_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;===========================================================================
;---------------------------------------------------------------------------
;気孔弾（弱）
[State -1,]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "KKD_x"
triggerall = statetype != A
trigger1 = numproj = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;---------------------------------------------------------------------------
;気孔弾（強）
[State -1,]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "KKD_y"
triggerall = statetype != A
trigger1 = numproj = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;===========================================================================

;---------------------------------------------------------------------------
;韋駄天足（空中弱）
[State -1,]
type = ChangeState
value = 1600
triggerall = !var(59)
triggerall = command = "ITS_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) 
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;---------------------------------------------------------------------------
;韋駄天足（空中強）
[State -1,]
type = ChangeState
value = 1610
triggerall = !var(59)
triggerall = command = "ITS_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) 
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;===========================================================================
;---------------------------------------------------------------------------
;韋駄天足（弱）
[State -1,]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = command = "ITS_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;---------------------------------------------------------------------------
;韋駄天足（強）
[State -1,]
type = ChangeState
value = 1210
triggerall = !var(59)
triggerall = command = "ITS_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 210
trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;===========================================================================
;---------------------------------------------------------------------------
; ガードキャンセルｘ（近距離）
[State -1]
type = ChangeState
value = 216
triggerall = !var(59)
triggerall = power >= 500
triggerall = P2bodydist X <= 25
triggerall = command = "GC_x"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; ガードキャンセルｘ（遠距離）
[State -1]
type = ChangeState
value = 211
triggerall = !var(59)
triggerall = power >= 500
triggerall = command = "GC_x"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; ガードキャンセルｙ
[State -1]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = power >= 500
triggerall = command = "GC_y"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; ガードキャンセルａ
[State -1]
type = ChangeState
value = 241
triggerall = !var(59)
triggerall = power >= 500
triggerall = command = "GC_a"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; ガードキャンセルｂ
[State -1]
type = ChangeState
value = 1220
triggerall = !var(59)
triggerall = power >= 500
triggerall = command = "GC_b"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,109]
;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,109]

;---------------------------------------------------------------------------
;サンダー・ホーク 
[State -1,]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "DM"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
;trigger2 = stateno != 210
;trigger2 = stateno != 211
trigger2 = movecontact
trigger3 = stateno = 53

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 53

;---------------------------------------------------------------------------
;スーパージャンプ
[State -1]
type = ChangeState
value = 940
triggerall = !var(59)
trigger1 = command = "SJump"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; ダウン回避
[State -1]
type = Explod
trigger1 = movetype = H
trigger1 = Command = "Kaihi"
trigger1 = NumExplod(5100) = 0
id = 5100
anim = 2000
postype = p1
pos = 0,20
sprpriority = -1
bindtime = 5
supermove = 1
removetime = 5

;---------------------------------------------------------------------------
; ダウン回避
[State -1]
type = ChangeState
value = 105
triggerall = Alive = 1
triggerall = NumExplod(5100) = 1
trigger1 = Time = [2,3]
trigger1 = StateNo = 5100
trigger2 = Time = [1,2]
trigger2 = PrevStateNo = 5071
trigger2 = StateNo = 5110
trigger2 = anim = 5170

;===========================================================================
;---------------------------------------------------------------------------
; レバー後ろ立ち「強」キックの動作
[State -1,]
type = ChangeState
value = 245
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 216
trigger8 = movecontact
trigger9 = stateno = 53

===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 230) && time > 8
trigger4 = (stateno = 400) && time > 6
trigger5 = (stateno = 430) && time > 6
trigger6 = stateno = 53

;---------------------------------------------------------------------------
; 近距離立ち「強」パンチの動作
[State -1,]
type = ChangeState
value = 215
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = MoveContact
trigger4 = stateno = 400
trigger5 = MoveContact
trigger5 = stateno = 430
trigger6 = stateno = 53

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 53

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = (stateno = 230) && time > 8
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 53

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 216
trigger8 = movecontact
trigger9 = stateno = 53

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 400) && time > 6
trigger5 = (stateno = 430) && time > 6
trigger6 = stateno = 53

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = MoveContact
trigger4 = stateno = 400
trigger5 = MoveContact
trigger5 = stateno = 430
trigger6 = stateno = 53

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 230) && time > 8
trigger4 = (stateno = 400) && time > 6
trigger5 = (stateno = 430) && time > 6
trigger6 = MoveContact
trigger6 = stateno = 200
trigger7 = MoveContact
trigger7 = stateno = 400
trigger8 = stateno = 53

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 216
trigger8 = movecontact
trigger9 = stateno = 53

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = StateNo != 105
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = StateNo != 105
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630
trigger4 = stateno = 600
trigger4 = statetime >= 7
trigger5 = stateno = 630
trigger5 = statetime >= 7

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = StateNo != 105
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = stateno = 600
trigger3 = statetime >= 7

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = StateNo != 105
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 610
trigger4 = movecontact
trigger4 = stateno = 630
trigger5 = stateno = 600
trigger5 = statetime >= 9
trigger6 = stateno = 610
trigger6 = statetime >= 10
trigger7 = stateno = 630
trigger7 = statetime >= 9

