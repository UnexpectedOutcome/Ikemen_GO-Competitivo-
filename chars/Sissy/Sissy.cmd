;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "一発奥義"
command = ~D,DB,B,DB,D,DF,F,y
time = 30

[Command]
name = "ストレスシュート"
command = ~D,DB,B,DB,D,DF,F,x
time = 30



;-| 必殺技 |------------------------------------------------------
[Command]
name = "蛙"
command = ~D,DF,F,b

[Command]
name = "蛙"
command = ~D,DF,F,a



[Command]
name = "エスポワール"
command = ~D,DB,B,b

[Command]
name = "エスポワール"
command = ~D,DB,B,a


[Command]
name = "レーツェルレーヴ"
command = ~F,D,DF,y

[Command]
name = "レーツェルレーヴ"
command = ~F,D,DF,x


[Command]
name = "アブボパンチ"
command = ~D,DF,F,y

[Command]
name = "アブボパンチ"
command = ~D,DF,F,x


[Command]
name = "緊急回避"
command = x+a
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
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

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
name = "フェニックスボム"
command = /$D,a
time = 1


[Command]
name = "連還腿"
command = /$F,a
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
name = "DF"
command = DF
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;基本コマンド
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;一発奥義
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "一発奥義"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = numhelper(2111) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 290 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
trigger14= stateno = 440 && movecontact
trigger15= stateno = 490 && movecontact
trigger16= stateno = 300 && movecontact
trigger17= stateno = 310 && movecontact
trigger18= stateno = 315 && movecontact


;---------------------------------------------------------------------------
;ストレスシュート
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "ストレスシュート"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 290 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
trigger14= stateno = 440 && movecontact
trigger15= stateno = 490 && movecontact
trigger16= stateno = 300 && movecontact
trigger17= stateno = 310 && movecontact
trigger18= stateno = 315 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;蛙
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "蛙"
triggerall = statetype != A
triggerall = numhelper(1210) = 0 && numhelper(1211) = 0 && numhelper(1310) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 290 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
trigger14= stateno = 440 && movecontact
trigger15= stateno = 490 && movecontact
trigger16= stateno = 300 && movecontact
trigger17= stateno = 310 && movecontact
trigger18= stateno = 315 && movecontact
;---------------------------------------------------------------------------
;エスポワール
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "エスポワール"
triggerall = statetype != A
triggerall = numhelper(1210) = 0 && numhelper(1211) = 0 && numhelper(1310) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 290 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
trigger14= stateno = 440 && movecontact
trigger15= stateno = 490 && movecontact
trigger16= stateno = 300 && movecontact
trigger17= stateno = 310 && movecontact
trigger18= stateno = 315 && movecontact
;---------------------------------------------------------------------------
;レーツェルレーヴ
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "レーツェルレーヴ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 290 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
trigger14= stateno = 440 && movecontact
trigger15= stateno = 490 && movecontact
trigger16= stateno = 300 && movecontact
trigger17= stateno = 310 && movecontact
trigger18= stateno = 315 && movecontact
;---------------------------------------------------------------------------
;アブボパンチ
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "アブボパンチ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 290 && movecontact
trigger11= stateno = 400 && movecontact
trigger12= stateno = 410 && movecontact
trigger13= stateno = 430 && movecontact
trigger14= stateno = 440 && movecontact
trigger15= stateno = 490 && movecontact
trigger16= stateno = 300 && movecontact
trigger17= stateno = 310 && movecontact
trigger18= stateno = 315 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1, 290]
type = ChangeState
value = 295
triggerall = command = "y" && command = "b"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダウン回避前
[State -1, Taunt]
type = ChangeState
value = 705
triggerall = command = "緊急回避" && command = "holdfwd"
triggerall = pos y >=-40
trigger1 = stateno = 5050
trigger2 = stateno = 5070

;---------------------------------------------------------------------------
;ダウン回避後
[State -1, Taunt]
type = ChangeState
value = 706
triggerall = command = "緊急回避" && command = "holdback"
triggerall = pos y >=-40
trigger1 = stateno = 5050
trigger2 = stateno = 5070

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "holdfwd" || command = "holdback") && command = "y"
triggerall = statetype != A
triggerall = enemy,statetype != A
triggerall = p2bodydist x <= 16
triggerall = enemy,stateno != [120,159]
triggerall = stateno != [100,110]
trigger1 = ctrl

;---------------------------------------------------------------------------
;怒り爆発
[State -1, Crouching Strong Punch]
type = ChangeState
value = 900
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = RoundState != 3
trigger1 = ctrl = 1
trigger2 = RoundState = 1
trigger2 = anim = 0

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュパンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 300
triggerall = command = "x" || command = "y"
triggerall = stateno = 100|| stateno = 101
trigger1 = statetype != A
;---------------------------------------------------------------------------
;ダッシュキック
[State -1, Crouching Strong Punch]
type = ChangeState
value = 310
triggerall = command = "a" || command = "b"
triggerall = stateno = 100|| stateno = 101
trigger1 = statetype != A
;---------------------------------------------------------------------------
;屈み・ごっつい攻撃
[State -1, 290]
type = ChangeState
value = 490
triggerall = command = "y" && command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && animelem = 3,>=0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;ごっつい攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "y" && command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2dist X >40
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2dist X <=40
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2dist X >40
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2dist X <=40
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2dist X >40
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2dist X <=40
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2dist X >40
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2dist X <=40
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "y" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
