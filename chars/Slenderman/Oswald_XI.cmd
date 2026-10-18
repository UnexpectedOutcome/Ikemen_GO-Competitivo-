
[Command]
name = "SHDC"
command = ~D,DF,F,x+y
time = 30
[Command]
name = "SHDC"
command = ~D,DF,F,z+y
time = 30

[Command]
name = "10・J・Q・K・A"
command = ~D,DB,B,x+y
time = 35
[Command]
name = "10・J・Q・K・A"
command = ~D,DB,B,z+y
time = 35

[Command]
name = "BIG ACE"
command = ~D,DF,F,a+b
time = 30
[Command]
name = "BIG ACE"
command = ~D,DF,F,c+b
time = 30

[Command]
name = "JOKER"
command = ~D,DB,B,b+c
time = 30
[Command]
name = "JOKER"
command = ~D,DB,B,b+a
time = 30

[Command]
name = "Wildcards"
command = ~B,F,x+y
time = 30
[Command]
name = "Wildcards"
command = ~B,F,z+y
time = 30




[Command]
name = "スペキュレーション"
command = ~D,DF,F, c


[Command]
name = "K"
command = ~B,D,DB, b
[Command]
name = "K"
command = ~B,D,DB, a

[Command]
name = "T_strong"
command = ~B,F, y
[Command]
name = "T_weak"
command = ~B,F, x

[Command]
name = "Q"
command = ~B,F,a
[Command]
name = "Q"
command = ~B,F, b

[Command]
name = "強スペード"
command = ~D,DB,B, y
[Command]
name = "弱スペード"
command = ~D,DB,B, x

[Command]
name = "強ハート"
command = ~D,DF,F, b
[Command]
name = "弱ハート"
command = ~D,DF,F, a

[Command]
name = "強クラブ"
command = ~D,DB,B, b
[Command]
name = "弱クラブ"
command = ~D,DB,B, a

[Command]
name = "強ダイア"
command = ~D,DF,F, y
[Command]
name = "弱ダイア"
command = ~D,DF,F, x




[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 18

[Command]
name = "BB"     
command = B, B
time = 18

[Command]
name = "DU"
command = D, U
time = 18

[Command]
name = "DU"
command = DB, UF
time = 18

[Command]
name = "DU"
command = DF, UB
time = 18

[Command]
name = "DU"
command = $D, UF
time = 18

[Command]
name = "DU"
command = $D, UB
time = 18


;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "10"
command = /$DF, x
time = 1

[Command]
name = "J"
command = /$F,x
time = 1



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

;====]Hold Button[======================================================

[Command]
name="holdx"
command=/x
time=1

[Command]
name="holdy"
command=/y
time=1

[Command]
name="holdz"
command=/z
time=1

[Command]
name="holda"
command=/a
time=1

[Command]
name="holdb"
command=/b
time=1

[Command]
name="holdc"
command=/c
time=1

[Command]
name="holds"
command=/s
time=1


; 下の記述↓は絶対に消さないでください。
[Statedef -1]
[State -1, super jump ]
type = ChangeState
value = 7777777
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these
trigger2 = (stateno = 215) && (movehit) && (command = "holdup")
trigger3 = (stateno = 450) && (movehit) && (command = "holdup")

;===========================================================================
;基本コマンド
;
;
;
;ACE
[State -1, ACE]
type = ChangeState
value = 2400
triggerall = command = "BIG ACE"
triggerall = power >= 1500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && animelem = 2,>=0
trigger3 = stateno = 215 && animelem = 3,>=0
trigger4 = stateno = 235 && animelem = 3,>=0
trigger5 = stateno = 245 && animelem = 3,>=0
trigger6 = stateno = 400 && animelem = 2,>=0
trigger7 = stateno = 410 && animelem = 4,>=0
trigger8 = stateno = 440 && animelem = 7,<=0
trigger9 = stateno = 290 && animelem = 5,>=0

trigger10= stateno = 251 && animelem = 9,>=0 ;&& animelem = 11,<=0
trigger11= stateno = 450 && animelem = 4,>=0 && movecontact
trigger12= stateno = 451 && animelem = 4,>=0

trigger13= stateno = 1000 && movecontact && animelem = 5,>=0
trigger14= stateno = 1302 && movecontact && animelem = 2,>=0

trigger15= stateno = 2105 && animelem = 38,<=0
trigger16=(stateno=[200,450]) && movecontact
trigger17=(stateno=[2100,2107]) && movecontact
trigger18 = stateno = 2000 && movecontact
trigger19 = stateno = 2300 && movecontact

[State -1, Wildcards]
type = ChangeState
value = 2300
triggerall = command = "Wildcards"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && animelem = 2,>=0
trigger3 = stateno = 215 && animelem = 3,>=0
trigger4 = stateno = 235 && animelem = 3,>=0
trigger5 = stateno = 245 && animelem = 3,>=0
trigger6 = stateno = 400 && animelem = 2,>=0
trigger7 = stateno = 410 && animelem = 4,>=0
trigger8 = stateno = 440 && animelem = 7,<=0
trigger9 = stateno = 290 && animelem = 5,>=0

trigger10= stateno = 251 && animelem = 9,>=0 ;&& animelem = 11,<=0
trigger11= stateno = 450 && animelem = 4,>=0 && movecontact
trigger12= stateno = 451 && animelem = 4,>=0

trigger13= stateno = 1000 && movecontact && animelem = 5,>=0
trigger14= stateno = 1302 && movecontact && animelem = 2,>=0

trigger15= stateno = 2105 && animelem = 38,<=0
trigger16=(stateno=[200,450]) && movecontact
trigger17=(stateno=[2100,2107]) && movecontact
trigger18 = stateno = 2000 && movecontact
trigger19 = stateno = 225600 && movecontact

[State -1, JOKER]
type = ChangeState
value = 2200
triggerall = command = "JOKER"
triggerall = power >= 2100
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && animelem = 2,>=0
trigger3 = stateno = 215 && animelem = 3,>=0
trigger4 = stateno = 235 && animelem = 3,>=0
trigger5 = stateno = 245 && animelem = 3,>=0
trigger6 = stateno = 400 && animelem = 2,>=0
trigger7 = stateno = 410 && animelem = 4,>=0
trigger8 = stateno = 440 && animelem = 7,<=0
trigger9 = stateno = 290 && animelem = 5,>=0

trigger10= stateno = 251 && animelem = 9,>=0 ;&& animelem = 11,<=0
trigger11= stateno = 450 && animelem = 4,>=0 && movecontact
trigger12= stateno = 451 && animelem = 4,>=0

trigger13= stateno = 1000 && movecontact && animelem = 5,>=0
trigger14= stateno = 1302 && movecontact && animelem = 2,>=0

trigger15= stateno = 2105 && animelem = 38,<=0
trigger16=(stateno=[200,450]) && movecontact

;
;SHDC
[State -1, SHDC]
type = ChangeState
value = 2100
triggerall = command = "SHDC"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && animelem = 2,>=0
trigger3 = stateno = 215 && animelem = 3,>=0
trigger4 = stateno = 235 && animelem = 3,>=0
trigger5 = stateno = 245 && animelem = 3,>=0
trigger6 = stateno = 400 && animelem = 2,>=0
trigger7 = stateno = 410 && animelem = 4,>=0
trigger8 = stateno = 440 && animelem = 7,<=0
trigger9 = stateno = 290 && animelem = 5,>=0

trigger10= stateno = 251 && animelem = 9,>=0 ;&& animelem = 11,<=0
trigger11= stateno = 450 && animelem = 4,>=0 && movecontact
trigger12= stateno = 451 && animelem = 4,>=0

trigger13= stateno = 1000 && movecontact && animelem = 5,>=0
trigger14= stateno = 1302 && movecontact && animelem = 2,>=0
trigger15=(stateno=[200,450]) && movecontact
trigger16 = stateno = 2000 && movecontact
trigger17 = stateno = 22678900 && movecontact
trigger18 = stateno = 2300 && movecontact
trigger19 = stateno = 2400 && movecontact
;
;10・J・Q・K・A
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "10・J・Q・K・A"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && animelem = 2,>=0
trigger3 = stateno = 215 && animelem = 3,>=0
trigger4 = stateno = 235 && animelem = 3,>=0
trigger5 = stateno = 245 && animelem = 3,>=0
trigger6 = stateno = 400 && animelem = 2,>=0
trigger7 = stateno = 410 && animelem = 4,>=0
trigger8 = stateno = 440 && animelem = 7,<=0
trigger9 = stateno = 290 && animelem = 5,>=0

trigger10= stateno = 251 && animelem = 9,>=0 ;&& animelem = 11,<=0
trigger11= stateno = 450 && animelem = 4,>=0 && movecontact
trigger12= stateno = 451 && animelem = 4,>=0

trigger13= stateno = 1000 && movecontact && animelem = 5,>=0
trigger14= stateno = 1302 && movecontact && animelem = 2,>=0
trigger15=(stateno=[200,450]) && movecontact
trigger16=(stateno=[2100,2107]) && movecontact
trigger17 = stateno = 223500 && movecontact
trigger18 = stateno = 2300 && movecontact
trigger19 = stateno = 2400 && movecontact
;===========================================================================
;
;
;
;
;T
[State -1, a]
type = ChangeState
value = 1600
triggerall = command = "T_weak"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact

;T
[State -1, a]
type = ChangeState
value = 1620
triggerall = command = "T_strong"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact

;K
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "K"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact

;
;Q
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "Q"
triggerall = statetype != A
triggerall = numhelper(1400) = 0
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact
;
;スペード
[State -1, a]
type = ChangeState
value = 1300
triggerall = (command = "弱スペード" || (command = "強スペード"))
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact

;
;ハート
[State -1, a]
type = ChangeState
value = 1200
triggerall = (command = "弱ハート" || (command = "強ハート"))
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact


;
;クラブ
[State -1, a]
type = ChangeState
value = 1100
triggerall = (command = "弱クラブ" || (command = "強クラブ"))
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact


;
;ダイア
[State -1, a]
type = ChangeState
value = 1000
triggerall = (command = "弱ダイア" || (command = "強ダイア"))
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,450]) && movecontact


;===========================================================================
;
;
;
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;
;ふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 200 && movecontact
trigger12= stateno = 210 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
;
;空中ふっ飛ばし攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;===========================================================================
;
;
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl
;
;ガードキャンセル緊急回避後
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl
;
;ガードキャンセル緊急回避前
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;
;ACタクティカルステップ
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = [200,249]
;
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "緊急回避前"
trigger1 = stateno = 5050
trigger1 = pos y >=-40
;
;フロントステップ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;
;2
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "投げ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;
;10(キャンセル版)


;
;10
[State -1, a]
type = ChangeState
value = 450
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 417980 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 440 && movecontact


;
;J(キャンセル版)
[State -1, a]
type = ChangeState
value = 251
triggerall = command = "J"
trigger1 = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 250 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 210 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 200 && movecontact
trigger16= stateno = 450 && movecontact
;
;J
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "J"
trigger1 = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 210 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 200 && movecontact
trigger16= stateno = 450 && movecontact
;===========================================================================
;
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 210 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 210 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact

;
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 240 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "10"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 430 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 45578990 && movecontact
;
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 410 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10= stateno = 251 && movecontact
trigger11= stateno = 290 && movecontact
trigger12= stateno = 205 && movecontact
trigger13= stateno = 235 && movecontact
trigger14= stateno = 410 && movecontact
trigger15= stateno = 250 && movecontact
trigger16= stateno = 450 && movecontact
;
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 690 && movecontact
;
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 690 && movecontact
;
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 690 && movecontact
;
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 690 && movecontact

[State -1, powercharge]
type = ChangeState
value = 990
triggerall = var(30)!=1
triggerall = !var(8)
triggerall = statetype!=A
triggerall = power<powermax
triggerall = command = "holdy" && command = "holdz"
trigger1 = ctrl
