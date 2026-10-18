[Command]
name = "合体変身!チェンジ・アトミックガイ・ネオス"
command = ~D,B,D,B,x+y
time = 35

[Command]
name = "MAX3"
command = ~D,B,D,B, c
time = 35

[Command]
name = "ultimate"
command = ~D,F,D,F, x+y
time = 35

;-| 超必殺技 |--------------------------------------------------------

[Command]
name = "超ド級MAX330メガビーム"
command = ~D,B,D,B,x+y
time = 35

[Command]
name = "max2"
command = ~D,F,D,F,a+b
time = 35

[Command]
name = "超ド級ネオジオ乱舞2"
command = ~D,F,D,B, x+y
time = 35

;-| 超必殺技 |--------------------------------------------------------

[Command]
name = "超ド級ステータスアップ"
command = ~D,DF,F,D,F, b
time = 25

[Command]
name = "超ド級ステータスアップ"
command = ~D,DF,F,D,F, a
time = 25

[Command]
name = "超ド級ネオジオ乱舞"
command = ~$D,DF,F,$D,B, x
time = 25

[Command]
name = "超ド級ネオジオ乱舞"
command = ~$D,DF,F,$D,B, y
time = 25

[Command]
name = "超ド級100メガビーム"
command = ~D,B,D,B, y
time = 30

[Command]
name = "超ド級100メガビーム"
command = ~D,B,D,B, x
time = 30


;-| 必殺技 |------------------------------------------------------

[Command]
name = "ライディングヒーロー"
command = ~D,DB,B, y

[Command]
name = "ライディングヒーロー2"
command = ~D,DB,B, a

[Command]
name = "ライディングヒーロー2"
command = ~D,DB,B, b

[Command]
name = "ライディングヒーロー"
command = ~D,DB,B, x


[Command]
name = "雷神拳2"
command = ~F,DF,F, b

[Command]
name = "雷神拳"
command = ~F,DF,F, a


[Command]
name = "SE・N・GO・KU伝承2"
command = ~D,DF,F, b

[Command]
name = "SE・N・GO・KU伝承"
command = ~D,DF,F, a


[Command]
name = "サブマリンスクリュー2"
command = ~F,D,DF, y

[Command]
name = "サブマリンスクリュー"
command = ~F,D,DF, x


[Command]
name = "ビーストバスター2"
command = ~D,DF,F, y

[Command]
name = "ビーストバスター"
command = ~D,DF,F, x

[Command]
name = "destranformarse"
command = ~D,F, s
time = 25

;[Command]
;name = "メモリーカードスラッシュ"
;command = ~D,D, s

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, b

;[Command]
;name = "メモリーカードスラッシュ"
;command = ~D,D, y

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, a

;[Command]
;name = "メモリーカードスラッシュ"
;command = ~D,D, x


[Command]
name = "緊急回避前"
command = x+a
time = 1

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

[Command]
name = "longjump"
command = ~D, $U
time = 10
buffer.time = 5

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
name = "メガトンスパーク"
command = x+y+a
time = 1

[Command]
name = "メガトンスパーク"
command = y+z
time = 1

[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery1";Required (do not remove)
command = x+a
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
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
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, z
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

[Command]
name = "q_back"
command = /B, z
time = 1

[Command]
name = "龍殺脚"
command = /$F,a
time = 1

[Command]
name = "怒号層拳"
command = /$F,y
time = 1

[Command]
name = "コンビネーション1"
command = /$F,x
time = 1

[Command]
name = "コンビネーション2"
command = /$DF,y
time = 1

[Command]
name = "コンビネーション3"
command = /$B,a
time = 1

[Command]
name = "コンビネーション4"
command = /$F,b
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

[Command]
name = "hold_A"
command = a
time = 1

[Command]
name = "hold_C"
command = c
time = 1

[Command]
name = "hold_a" ;Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$y
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;基本コマンド
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4100
triggerall = command = "MAX3"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

[State -1]
type = ChangeState
value = 9011
triggerall = command = "ultimate"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact&&statetype!=A
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A
trigger9 = stateno = 3334

;超ド級MAX330メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 4800
triggerall = command = "max2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact&&statetype!=A
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A
trigger9 = stateno = 3334
trigger10=stateno=2300
trigger10=time=[34,80]
;---------------------------------------------------------------------------

;合体変身!チェンジ・アトミックガイ・ネオス
[State -1, Strong Kung Fu Palm]
type = null;ChangeState
value = 2400
triggerall = command = "合体変身!チェンジ・アトミックガイ・ネオス"
triggerall = power >= 2000
;triggerall = var(25) >= 1
;triggerall = var(20) >= 1
;triggerall = var(21) >= 1
;triggerall = var(24) >= 1
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;超ド級ステータスアップ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "超ド級ステータスアップ"
triggerall = power >= 1000
triggerall = numhelper(11210) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact&&statetype!=A
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;超ド級MAX330メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "超ド級MAX330メガビーム"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A
trigger9 = stateno = 3334
trigger10=stateno=2000
trigger10=time=[42,66]
;---------------------------------------------------------------------------
;超ド級ネオジオ乱舞
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "超ド級ネオジオ乱舞2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact&&statetype!=A
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A
trigger9 = stateno = 3334

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3333
triggerall = command = "超ド級ネオジオ乱舞"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact&&statetype!=A
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;超ド級100メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "超ド級100メガビーム"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1100
trigger3=time=[20,32]
trigger4=stateno=1150
trigger4=movecontact
trigger5=stateno=1000
trigger5=time=[25,51]
trigger6=stateno=1050
trigger6=time=[34,80]
trigger7=stateno=1990
trigger7=time=[31,33]
trigger8= stateno = 1500||stateno=1310||stateno=1350
trigger8=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;爆裂拳
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "ライディングヒーロー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;ライディングヒーロー
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "ライディングヒーロー2"
triggerall = stateno != 1400
;trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;強化版雷神拳
[State -1, a]
type = ChangeState
value = 1350
triggerall = command = "雷神拳2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;雷神拳
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "雷神拳"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;強化版SE・N・GO・KU伝承
[State -1, a]
type = ChangeState
value = 1250
triggerall = command = "SE・N・GO・KU伝承2"
triggerall = statetype != A
;triggerall = var(21) >= 1
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;SE・N・GO・KU伝承
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "SE・N・GO・KU伝承"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;強化版サブマリンスクリュー
[State -1, a]
type = ChangeState
value = 1150
triggerall = command = "サブマリンスクリュー2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;サブマリンスクリュー
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "サブマリンスクリュー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;強化版ビーストバスター
[State -1, a]
type = ChangeState
value = 1050
triggerall = command = "ビーストバスター2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;ビーストバスター
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "ビーストバスター"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;メモリーカードスラッシュ
[State -1, a]
type = ChangeState
value = 1990
triggerall = command = "メモリーカードスラッシュ"
triggerall = statetype != A
triggerall = numhelper(1201) = 0
triggerall = numhelper(1200) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

[State -1, a]
type = ChangeState
value = 1990
triggerall = command = "メモリーカードスラッシュ"
triggerall = statetype != A
triggerall = numhelper(1201) = 1
triggerall = numhelper(1200) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

[State -1, a]
type = ChangeState
value = 1990
triggerall = command = "メモリーカードスラッシュ"
triggerall = statetype != A
triggerall = numhelper(1201) = 0
triggerall = numhelper(1200) = 1
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ファイヤースープレックス
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
[State -1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
;triggerall = var(51) != 1
triggerall = command = "ふっ飛ばし"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;===========================================================================

;---------------------------------------------------------------------------
;ミューテイションコンビネーション
[State -1, Stand Light Punch]
type = ChangeState
value = 260
triggerall = command = "コンビネーション1"
triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルフロントステップ
[State -1, 700]
type = null;ChangeState
value = 100
triggerall = command = "FF"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

[State -1]
type = ChangeState
value = 751
triggerall = command = "q_back" ;& Command = "holdback"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = stateno = [150,151]
trigger2 = Power >= 1000
trigger2 = statetype!=A
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 750
triggerall = Command = "recovery1" || Command = "z"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = [150,153]
trigger2 = statetype!=A && power >= 1000
trigger3=stateno=[200,499]
trigger3=movecontact&&statetype!=A
trigger3=power>=1000

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;フロントステップ
[State -1, Run Fwd]
type = ChangeState
value = 101
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

;Stand Light Punch
[State -1, Stand Light Punch (close)]
type = ChangeState
value = 258
triggerall = P2bodydist X <= 25
triggerall = command = "x" & command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205||stateno=215||stateno=235||stateno=245||stateno=400||stateno=410||stateno=430
trigger2=movecontact&&statetype!=A
;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movehit = 1)
;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && (movehit = 1)

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2=stateno=430
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 1400 && animelem = 2,>=0
;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

