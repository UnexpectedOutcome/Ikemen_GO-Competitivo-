;-| CPU |--------------------------------------------------------
[Command]
name = "cpu"
command =D,D,D,D,D,D,D,D
time = 0

[Command]
name = "cpu"
command =F,F,F,F,F,F,F
time = 0

[Command]
name = "cpu"
command =U,U,U,U,U,U,U,U
time = 0

[Command]
name = "cpu"
command = B,B,B,B,B,B,B
time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "地獄極楽x+y"
command =~F,B,D,F,x+y
time = 35

[Command]
name = "五光"
command =~B,F,D,x
time = 20

[Command]
name = "五光"
command =~B,F,D,y
time = 20

[Command]
name = "真空波動x"
command =~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "真空波動y"
command =~D,DF,F,D,DF,F,y
time = 20

[Command]
name = "真空波動a"
command =~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "真空波動b"
command =~D,DF,F,D,DF,F,b
time = 20

[Command]
name = "真空竜巻a"
command =~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "真空竜巻b"
command =~D,DB,B,D,DB,B,b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "逆ヨガb"
command =~F,D,B,b
time = 15

[Command]
name = "百鬼y"
command =~D,DB,B,F,y
time = 20

[Command]
name = "百鬼a"
command =~D,DB,B,F,a
time = 20

[Command]
name = "百鬼b"
command =~D,DB,B,F,b
time = 20

[Command]
name = "昇竜EX"
command =~F,D,DF,x+y
time = 13

[Command]
name = "昇竜x"
command =~F,D,DF,x
time = 13

[Command]
name = "昇竜y"
command =~F,D,DF,y
time = 13

[Command]
name = "昇竜a"
command =~F,D,DF,a
time = 13

[Command]
name = "昇竜b"
command =~F,D,DF,b
time = 13

[Command]
name = "逆昇竜x"
command =~B,D,DB,x
time = 13

[Command]
name = "逆昇竜y"
command =~B,D,DB,y
time = 13

[Command]
name = "逆昇竜EX"
command =~B,D,DB,a+b
time = 13

[Command]
name = "逆昇竜a"
command =~B,D,DB,a
time = 13

[Command]
name = "逆昇竜b"
command =~B,D,DB,b
time = 13

[Command]
name = "逆昇竜"
command =~B,D,DB
time = 13

[Command]
name = "波動x"
command =~D,DF,F,x
time = 10

[Command]
name = "波動y"
command =~D,DF,F,y
time = 10

[Command]
name = "波動a"
command =~D,DF,F,a
time = 10

[Command]
name = "波動b"
command =~D,DF,F,b
time = 10

[Command]
name = "竜巻EX"
command =~D,DB,B,a+b
time = 12

[Command]
name = "竜巻x"
command =~D,DB,B,x
time = 10

[Command]
name = "竜巻y"
command =~D,DB,B,y
time = 10

[Command]
name = "竜巻a"
command =~D,DB,B,a
time = 10

[Command]
name = "竜巻b"
command =~D,DB,B,b
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "下下x+y"
command =~D,D,x+y
time = 12

[Command]
name = "下下a+b"
command =~D,D,a+b
time = 12

[Command]
name = "下下x"
command =~D,D,x
time = 12

[Command]
name = "下下y"
command =~D,D,y
time = 12

[Command]
name = "下下a"
command =~D,D,a
time = 12

[Command]
name = "下下b"
command =~D,D,b
time = 12

[Command]
name = "FF"   ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"   ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "スーパーモード"
command =a+b+x+y
time = 1

[Command]
name = "スーパーモード"
command =c+z
time = 1


[Command]
name = "ABC"
command = x+a+y
time = 1

[Command]
name = "AB"
command = x+a
time = 1

[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "FS"
command = a+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
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
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
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

[Statedef -1]
;===========================================================================
;テスト
[State -1]
type = null;ChangeState
value = 3200
triggerall = Statetype != A && ctrl = 1
;triggerall = power >= 1000
trigger1 = command = "start"
trigger2 = movecontact && (stateno = 200 || stateno = 400)
;===========================================================================
;んで、スーパーデス
[State -1]
type = ChangeState
value = 3400
triggerall = Statetype != A
triggerall = power >= 1000
triggerall = command = "スーパーモード"
trigger1 = ctrl
trigger2 = stateno = 150 || stateno = 152
;===========================================================================
;おこったデッスーン
[State -1]
type = ChangeState
value = 3000
triggerall = Statetype != A && ctrl = 1
triggerall = power >= 1000
trigger1 = command = "地獄極楽x+y"
trigger2 = movecontact && (stateno = 200 || stateno = 400)
;===========================================================================
;ころがるデッスーン
[State -1]
type = ChangeState
value = 3300
triggerall = Statetype != A && ctrl = 1
triggerall = power >= 1000
trigger1 = command = "下下a+b"
trigger2 = movecontact && (stateno = 200 || stateno = 400)

;---------------------------------------------------------------------------
;追い討ち
[State -1,]
type = ChangeState
value = 750
triggerall = ctrl = 1
triggerall = (enemy,stateno = [5100,5122]) || (enemy,stateno = [5050,5070]) || (enemy,stateno = [4210,4220])
triggerall = command = "holdup" && (command = "y" || command = "b")
trigger1 = statetype = S || stateno = 40
trigger2 = stateno = 50 && time < 5
;---------------------------------------------------------------------------
;ボディーアタックデス
[State -1,]
type = ChangeState
value = 620
triggerall = Statetype = A 
triggerall = command = "holddown" && command = "y"
trigger1 = ctrl = 1
trigger2 = stateno = 600 && time >= 30
trigger3 = stateno = 610 && time >= 25
trigger4 = stateno = 630 && time >= 35
trigger5 = stateno = 640 && time >= 30
;---------------------------------------------------------------------------
;ジャンプ特大キックデス
[State -1,]
type = ChangeState
value = 650
triggerall = Statetype = A && ctrl = 1
trigger1 = command = "波動b"

;---------------------------------------------------------------------------
;もぐもぐブーッデス
[State -1,]
type = ChangeState
value = 1500
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "逆ヨガb"
;---------------------------------------------------------------------------
;とぶデスデッスーンEX
[State -1,]
type = ChangeState
value = 1230
triggerall = Statetype != A && ctrl = 1
trigger1 = power >= 1000
trigger1 = command = "昇竜EX"

;---------------------------------------------------------------------------
;とぶデスデッスーン
[State -1,]
type = ChangeState
value = ifelse(command="昇竜x",1200,1210)
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "昇竜x" || command = "昇竜y"

;---------------------------------------------------------------------------
;特大パンチデス
[State -1,]
type = ChangeState
value = 1000
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "波動x"

;---------------------------------------------------------------------------
;しゃがみ特大パンチデス
[State -1,]
type = ChangeState
value = 1050
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "波動y"
;---------------------------------------------------------------------------
;特大キックデス
[State -1,]
type = ChangeState
value = 1100
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "波動a"

;---------------------------------------------------------------------------
;しゃがみ特大キックデス
[State -1,]
type = ChangeState
value = 1150
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "波動b"

;---------------------------------------------------------------------------
;くるならこいデスEX
[State -1,]
type = ChangeState
value = 1350
triggerall = Statetype != A && ctrl = 1
trigger1 = power >= 1000
trigger1 = command = "竜巻EX"
;---------------------------------------------------------------------------
;くるならこいデス
[State -1,]
type = ChangeState
value = ifelse(command = "竜巻a",1300,1310)
triggerall = Statetype != A && ctrl = 1
trigger1 = command = "竜巻a" || command = "竜巻b"

;---------------------------------------------------------------------------
;ぺろりんちょぽいデス
[State -1]
type = ChangeState
value = 800
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
;triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = command = "holdfwd" || command = "holdback"
;---------------------------------------------------------------------------
;中段
[State -1,]
type = ChangeState
value = 500
triggerall = Statetype != A && ctrl = 1
;triggerall = fvar(29) != 1
trigger1 = command = "FS"

;バッキュームデス
[State -1,]
type = ChangeState
value = 510
triggerall = stateno = 500 && movehit
trigger1 = command = "holddown" && (command = "x" || command = "y")
trigger1 = enemy,hitover = 0
trigger1 = animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = enemy,hitover = 0 && var(1); && fvar(24)
trigger2 = animelem = 6,>= 0 && animelem = 8,<= 0
ignorehitpause = 1

;ダッシュ
[State -1,Dash]
type = ChangeState
value = 100
triggerall = Statetype != A && ctrl
trigger1 = command = "FF"

;バックダッシュ
[State -1,B_Dash]
type = ChangeState
value = 105
triggerall = Statetype != A && ctrl
trigger1 = command = "BB"
trigger1 = command != "逆昇竜"


;===========================================================================
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A && var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;立ち弱P
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみキャンセル
[State -1,]
type = ChangeState
value = 10
triggerall = Statetype != A && movetype = A
trigger1 = command = "holddown" && stateno = 200
trigger1 = movecontact
ctrl = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;立ち強P
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = S
trigger1 = ctrl

;立ち弱K
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = S
trigger1 = ctrl

;立ち強K
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱P
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱K
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱K
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown" && var(1) = 0 && stateno != 100
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱P
[State -1]
type = ChangeState
value = 600
triggerall = command = "x" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中強P
[State -1]
type = ChangeState
value = 610
triggerall = command = "y" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱K
[State -1]
type = ChangeState
value = 630
triggerall = command = "a" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強K
[State -1]
type = ChangeState
value = 640
triggerall = command = "b" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl


