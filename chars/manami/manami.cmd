;==========================================================================
;コマンド関連ファイル
;==========================================================================
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1


[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "u"
command = $U
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "sonic_x"
command = ~30$B,F,x
time = 10

[Command]
name = "sonic_y"
command = ~30$B,F,y
time = 10

[Command]
name = "sonic_a"
command = ~30$B,F,a
time = 10

[Command]
name = "sonic_b"
command = ~30$B,F,b
time = 10

[Command]
name = "sonic_ab"
command = ~30$B,F,a+b
time = 10

[Command]
name = "gorogoro_c"
command = ~30$B, F, c
time = 10

[Command]
name = "hado_x"
command = D, F, x
time = 15

[Command]
name = "hado_y"
command = D, F, y
time = 15

[Command]
name = "hado_c"
command = D, F, c
time = 30

[Command]
name = "sinhado_c"
command = D, F, D, F, c
time = 40


[Command]
name = "tatumaki_x"
command = D, B, x
time = 15

[Command]
name = "tatumaki_y"
command = D, B, y
time = 15

[Command]
name = "tatumaki_z"
command = D, B, z
time = 15

[Command]
name = "tatumaki_c"
command = D, B, c
time = 30



[Command]
name = "hoosyoko_x"
command = F, B, D, F, x
time = 40

[Command]
name = "hoosyoko_y"
command = F, B, D, F, y
time = 40

[Command]
name = "kona_a"
command = U, U, D, D, B, F, B, F, b, a
time = 180

[Command]
name = "kona_b"
command = U, U, D, D, F, B, F, B, b, a
time = 180

[Command]
name = "gyoga_b"
command = F, D, B, b
time = 40


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;コマンド実行部分（優先順位が高いものを先に表記）
;===========================================================================
---------------------------------------------------------------------------
;前方ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
;秘奥義
[State -1]
type = ChangeState
value = 1400
triggerall = command = "kona_a"
triggerall = power >= 3000
;triggerall = command != "holddown"
trigger1 = ctrl = 0
trigger1 = stateno = 196
trigger1 = Time >= 136

[State -1]
type = ChangeState
value = 1400
triggerall = command = "kona_b"
triggerall = power >= 3000
;triggerall = command != "holddown"
trigger1 = ctrl = 0
trigger1 = stateno = 196
trigger1 = Time >= 136




;---------------------------------------------------------------------------
;もっとごっついねこけっとぱんち
[State -1]
type = ChangeState
value = 1210
triggerall = command = "hoosyoko_y"
triggerall = power >= 2000
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208       ; 208-立ち強パンチ が事前に出ていたらチェーンコンボ成立
trigger2 = MoveContact
trigger3 = stateno = 213       ; 213-移動強パンチ が事前に出ていたらチェーンコンボ成立
trigger3 = MoveContact
trigger4 = stateno = 207       ; 207-強キック が事前に出ていたらチェーンコンボ成立
trigger4 = MoveContact
trigger5 = stateno = 195       ;195-挑発 が事前に出ていたらチェーンコンボ成立
trigger6 = stateno = 210       ; 210-しゃがみ強キック が事前に出ていたらチェーンコンボ成立
trigger6 = MoveContact
trigger7 = stateno = 211       ; 211-しやがみ強パンチ が事前に出ていたらチェーンコンボ成立
trigger7 = MoveContact
trigger8 = stateno = 111       ; 211-しやがみ強パンチ が事前に出ていたらチェーンコンボ成立
trigger8 = MoveContact

;---------------------------------------------------------------------------
;ごっついねこけっとぱんち(ケージが二本無ければこちらを実行)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hoosyoko_y"
triggerall = power >= 1000
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 111
trigger8 = MoveContact

;---------------------------------------------------------------------------
;ごっついねこけっとぱんち
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hoosyoko_x"
triggerall = power >= 1000
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 111
trigger8 = MoveContact

;---------------------------------------------------------------------------
; ねこちょっと乱舞
[State -1]
type = ChangeState
value = 1600
triggerall = command = "gyoga_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact


;---------------------------------------------------------------------------
;ごろごろあたっく(弱)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "sonic_x"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ごろごろあたっく(強)
[State -1]
type = ChangeState
value = 1010
triggerall = command = "sonic_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ばんざいあたっく
[State -1]
type = ChangeState
value = 1050
triggerall = command = "sonic_ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ぐらんどごろごろあたっく(弱)
[State -1]
type = ChangeState
value = 1030
triggerall = command = "sonic_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ぐらんどごろごろあたっく(強)
[State -1]
type = ChangeState
value = 1020
triggerall = command = "sonic_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
; ねころけっとぱんち(弱)
[State -1]
type = ChangeState
value = 1110
triggerall = command = "hado_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
; ねころけっとぱんち(強)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "hado_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ピーマン投げ(弱)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "tatumaki_x"
triggerall = command != "holddown"
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ピーマン投げ(弱)
[State -1]
type = ChangeState
value = 1310
triggerall = command = "tatumaki_y"
triggerall = command != "holddown"
triggerall = NumProj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 208
trigger2 = MoveContact
trigger3 = stateno = 213
trigger3 = MoveContact
trigger4 = stateno = 207
trigger4 = MoveContact
trigger5 = stateno = 195
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact

;---------------------------------------------------------------------------
;ピーマン爆弾
;[State -1]
;type = ChangeState
;value = 1320
;triggerall = command = "tatumaki_z"
;triggerall = command != "holddown"
;triggerall = NumProj = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 208
;trigger2 = MoveContact
;trigger3 = stateno = 213
;trigger3 = MoveContact
;trigger4 = stateno = 207
;trigger4 = MoveContact
;trigger5 = stateno = 195
;trigger6 = stateno = 210
;trigger6 = MoveContact
;trigger7 = stateno = 211
;trigger7 = MoveContact


;---------------------------------------------------------------------------
; エリアル始動技 
[State -1]
type = ChangeState
value = 1500
triggerall = command = "downfwd_b"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 208
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact

;---------------------------------------------------------------------------
; エリアルジャンプ 
[State -1]
type = ChangeState
value = 1501
triggerall = command = "u"
;triggerall = command = "holddown"
trigger1 = MoveHit
trigger1 = p2statetype != A
trigger1 = stateno = 1500
trigger1 = MoveContact

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1]
type = ChangeState
value = 700
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------
; 睡眠
[State -1]
type = ChangeState
value = 196
triggerall = command = "down_z"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; 移動弱キック 
[State -1]
type = ChangeState
value = 212
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = MoveContact

;---------------------------------------------------------------------------
; 立ち弱キック 
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = MoveContact
trigger3 = stateno = 200
trigger3 = statetime >= 4

;---------------------------------------------------------------------------
; 立ち→弱パンチ 
[State -1]
type = ChangeState
value = 204
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = MoveContact
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 195

;---------------------------------------------------------------------------
; 立ち弱パンチ 
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = statetime >= 4

;---------------------------------------------------------------------------
; 立ち強キック 
[State -1]
type = ChangeState
value = 207
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = MoveContact
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 208
trigger4 = MoveContact
trigger5 = stateno = 212
trigger5 = MoveContact
trigger6 = stateno = 213
trigger6 = MoveContact

;---------------------------------------------------------------------------
; 立ち→強パンチ 
[State -1]
type = ChangeState
value = 209
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = MoveContact
trigger3 = stateno = 200
trigger3 = MoveContact
trigger4 = stateno = 212
trigger4 = MoveContact
trigger5 = stateno = 195

;---------------------------------------------------------------------------
; 移動立ち強パンチ 
[State -1]
type = ChangeState
value = 213
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = MoveContact
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 212
trigger3 = MoveContact

;---------------------------------------------------------------------------
; 立ち強パンチ 
[State -1]
type = ChangeState
value = 208
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 202
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = statetime >= 4

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 203
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = statetime >= 5

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601     ;601-ジャンプ弱パンチ が事前に出てかつ相手が空中にいたらチェーンコンボ成立
trigger2 = MoveContact
trigger2 = p2statetype = A

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 601
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;叩きつけジャンプ強キック
[State -1]
type = ChangeState
value = 604
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = MoveContact
trigger1 = p2statetype = A
trigger2 = stateno = 601
trigger2 = MoveContact
trigger2 = p2statetype = A
trigger3 = stateno = 603
trigger3 = MoveContact
trigger3 = p2statetype = A

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 602
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X = 0

[State -1]
type = ChangeState
value = 603
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = MoveContact
trigger2 = p2statetype = A
trigger3 = stateno = 601
trigger3 = MoveContact
trigger3 = p2statetype = A

;---------------------------------------------------------------------------
;睡眠の解除
[State -1]
type = ChangeState
value = 197
triggerall = command = "holdfwd"
trigger1 = ctrl = 0
trigger1 = stateno = 196
trigger1 = Time >= 136

[State -1]
type = ChangeState
value = 197
triggerall = command = "holdback"
trigger1 = ctrl = 0
trigger1 = stateno = 196
trigger1 = Time >= 136

;---------------------------------------------------------------------------
;操作をしばらくしていないと睡眠開始
[State -1]
type = ChangeState
value = 196
triggerall = Time >= 500
trigger1 = ctrl = 1
trigger1 = stateno = 0
trigger2 = ctrl = 1
trigger2 = stateno = 6000




;---------------------------------------------------------------------------
;ビーム五連射
[State -1]
type = ChangeState
value = 820
triggerall = command = "sinhado_c"
triggerall = numhelper(11000) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Ｖアシストβ
[State -1]
type = ChangeState
value = 800
triggerall = command = "hado_c"
triggerall = numhelper(11000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Ｖアシストγ
[State -1]
type = ChangeState
value = 810
triggerall = command = "tatumaki_c"
triggerall = numhelper(11000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
; Ｖアシスト(空中) 
;[State -1]
;type = ChangeState
;value = 5999
;triggerall = command = "c"
;triggerall = command != "holddown"
;triggerall = numhelper(10000) = 0
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;地面　しゃがみ中 


[State -1]
type = ChangeState
value = 5998
triggerall = command = "c"
triggerall = numhelper(10000) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = Time >= 5
;地面　直立 
[State -1]
type = ChangeState
value = 6000
triggerall = command = "c"
triggerall = numhelper(10000) = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 0
trigger2 = stateno = 20
trigger3 = stateno = 21
trigger4 = stateno = 100


