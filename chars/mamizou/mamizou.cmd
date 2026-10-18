;==========================================================================
;コマンド関連ファイル
;==========================================================================

[Command]
name = "マミゾウ化弾幕十変化"
command = ~F, DF, D, DB, B, z
time = 45

[Command]
name = "満月のポンポコリン"
command = ~B, DB, D, DF, F, z
time = 45

[Command]
name = "野生の離島"
command = D, DF, F, z
time = 30

[Command]
name = "狸の化け学校"
command = D, DB, B, z
time = 30

[Command]
name = "変化　船幽霊"
command = D, DF, F, a
time = 30

[Command]
name = "変化　唐傘お化け"
command = D, DF, F, b
time = 30

[Command]
name = "変化　毘沙門天"
command = D, DB, B, a
time = 30

[Command]
name = "変化　山彦"
command = D, DB, B, b
time = 30

[Command]
name = "クラッシュ拳"
command = D, D, a
time = 45

[Command]
name = "クラッシュキック"
command = D, D, b
time = 45

[Command]
name = "霊撃"
command = D, D, c
time = 45

[Command]
name = "コマンドダッシュ前"
command = /z,F
time = 1

[Command]
name = "コマンドダッシュ後ろ"
command = /z,B
time = 1

[Command]
name = "ロケットキャンセル"
command = D
time = 1

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
name = "fwd_z"
command = /F,z
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
name = "back_x"
command = /B,x
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
name = "back_z"
command = /B,z
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
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
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

;-| 攻撃ボタン押しっぱなし |-----------------------------------------------

[Command]
name = "hold_med"
command = /b
time = 1

[Command]
name = "hold_med"
command = /a
time = 1

[Command]
name = "hold_med"
command = /a+b
time = 1

[Command]
name = "hold_med"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_x"
command = /y
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
name = "s"
command = s
time = 1


[Command]
name = "u"
command = $U
time = 1
[Command]
name = "uu"
command = /$U
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
name = "f_a"
command = F, a
time = 15

[Command]
name = "f_b"
command = F, b
time = 15

[Command]
name = "f_c"
command = F, c
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;コマンド実行部分（優先順位が高いものを先に表記）
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;前方ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 710 && Time >= 9

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 710 && Time >= 9

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;空中ダッシュ(air)
[State -1, Dash]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(1) < 2
triggerall = Pos Y <= -30
trigger1 = ctrl
trigger1 = stateno != 110
trigger1 = stateno != 115


;---------------------------------------------------------------------------
;空中バックダッシュ(air)
[State -1, Dash]
type = ChangeState
value = 115
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(1) < 2
triggerall = Pos Y <= -30
trigger1 = ctrl
trigger1 = stateno != 110
trigger1 = stateno != 115
;===================================================================
超必殺技
;==============================================================================
;---------------------------------------------------------------------

;---------------------------------------------------------------------------
;マミゾウ化弾幕十変化
[State -1]
type = ChangeState
value = 930
triggerall = power >= 2000
triggerall = command = "マミゾウ化弾幕十変化"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;----------------------------------------------------------------

;---------------------------------------------------------------------------
;満月のポンポコリン
[State -1]
type = ChangeState
value = 920
triggerall = power >= 1500
triggerall = command = "満月のポンポコリン"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;----------------------------------------------------------------

;---------------------------------------------------------------------------
;野生の離島
[State -1]
type = ChangeState
value = 900
triggerall = power >= 1500
triggerall = command = "野生の離島"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact


;----------------------------------------------------------------
;---------------------------------------------------------------------------
;狸の化け学校
[State -1]
type = ChangeState
value = 910
triggerall = power >= 1500
triggerall = command = "狸の化け学校"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact


;----------------------------------------------------------------


;===================================================================
;===========================================================================
;　必殺技
;===========================================================================


;---------------------------------------------------------------------------
;変化　船幽霊
[State -1]
type = ChangeState
value = 800
triggerall = power >= 200
triggerall = command = "変化　船幽霊"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------
;---------------------------------------------------------------------------
;変化　唐傘お化け
[State -1]
type = ChangeState
value = 830
triggerall = command = "変化　唐傘お化け"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 800
trigger8 = movecontact
trigger9 = stateno = 820
trigger9 = movecontact


;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;変化　毘沙門天
[State -1]
type = ChangeState
value = 820
triggerall = power >= 200
triggerall = command = "変化　毘沙門天"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 800
trigger8 = movecontact

;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;変化　山彦
[State -1]
type = ChangeState
value = 840
triggerall = power >= 200
triggerall = command = "変化　山彦"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 800
trigger8 = movecontact
trigger9 = stateno = 820
trigger9 = movecontact
trigger10 = stateno = 830
trigger10 = movecontact

;-----------------------------------------------------------------

;-------------------------------------------------------------
;霊撃
[State -1]
type = ChangeState
value = 700
triggerall = command = "霊撃"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
Trigger7 = StateNo = 100
Trigger8 = StateNo = 101
trigger9 = stateno = 330
trigger9 = movecontact

;-----------------------------------------------------------------

;-------------------------------------------------------------
;獣弾幕
[State -1]
type = ChangeState
value = 500
triggerall = NumHelper(1000) = 0
triggerall = NumHelper(1001) = 0
triggerall = NumHelper(1002) = 0
triggerall = NumHelper(1003) = 0
triggerall = NumHelper(1004) = 0
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
triggerall = NumHelper(1007) = 0
triggerall = NumHelper(1008) = 0
triggerall = power >= 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 310
trigger7 = movecontact

;----------------------------------------------------------------

;---------------------------------------------------------------------------
;しゃがみ鳥弾幕
[State -1]
type = ChangeState
value = 510
triggerall = NumHelper(1000) = 0
triggerall = NumHelper(1001) = 0
triggerall = NumHelper(1002) = 0
triggerall = NumHelper(1003) = 0
triggerall = NumHelper(1004) = 0
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
triggerall = NumHelper(1007) = 0
triggerall = NumHelper(1008) = 0
triggerall = power >= 200
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプ鳥弾幕
[State -1]
type = ChangeState
value = 520
triggerall = NumHelper(1000) = 0
triggerall = NumHelper(1001) = 0
triggerall = NumHelper(1002) = 0
triggerall = NumHelper(1003) = 0
triggerall = NumHelper(1004) = 0
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
triggerall = NumHelper(1007) = 0
triggerall = NumHelper(1008) = 0
triggerall = power >= 200
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 320
trigger3 = movecontact

;-----------------------------------------------------------------

;-------------------------------------------------------------
;蛙弾幕
[State -1]
type = ChangeState
value = 600
triggerall = NumHelper(1200) = 0
triggerall = NumHelper(1201) = 0
triggerall = power >= 300
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------
;---------------------------------------------------------------------------
;蛙弾幕　しゃがみ
[State -1]
type = ChangeState
value = 610
triggerall = NumHelper(1200) = 0
triggerall = NumHelper(1201) = 0
triggerall = power >= 300
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプ蛙弾幕
[State -1]
type = ChangeState
value = 620
triggerall = NumHelper(1200) = 0
triggerall = NumHelper(1201) = 0
triggerall = power >= 300
triggerall = command = "y"
triggerall = statetype = A
triggerall = Pos Y <= -40
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 320
trigger3 = movecontact

;-----------------------------------------------------------------

;-------------------------------------------------------------
;霊長弾幕
[State -1]
type = ChangeState
value = 710
triggerall = NumHelper(1300) = 0
triggerall = power >= 400
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------
;---------------------------------------------------------------------------
;霊長弾幕　しゃがみ
[State -1]
type = ChangeState
value = 720
triggerall = NumHelper(1300) = 0
triggerall = power >= 400
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------
;---------------------------------------------------------------------------
;ジャンプ霊長弾幕
[State -1]
type = ChangeState
value = 730
triggerall = NumHelper(1300) = 0
triggerall = power >= 400
triggerall = command = "c"
triggerall = statetype = A
triggerall = Pos Y <= -40
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 320
trigger3 = movecontact

;-----------------------------------------------------------------

;-----------------------------------------------------------------
;===========================================================================
;　通常技
;===========================================================================

;-------------------------------------------------------------
;クラッシュ拳
[State -1]
type = ChangeState
value = 240
triggerall = command = "クラッシュ拳"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
Trigger4 = StateNo = 100
Trigger5 = StateNo = 101
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact

;-----------------------------------------------------------------
;-------------------------------------------------------------
;クラッシュキック
[State -1]
type = ChangeState
value = 340
triggerall = command = "クラッシュキック"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 300
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact

;-----------------------------------------------------------------

;-------------------------------------------------------------
;横弱パンチ
[State -1]
type = ChangeState
value = 230
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
Trigger4 = StateNo = 100
Trigger5 = StateNo = 101

;-----------------------------------------------------------------
;-------------------------------------------------------------
;横キック
[State -1]
type = ChangeState
value = 330
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
Trigger5 = StateNo = 100
Trigger6 = StateNo = 101
trigger7 = stateno = 210
trigger7 = movecontact

;-----------------------------------------------------------------

;-------------------------------------------------------------
;弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
Trigger3 = StateNo = 100
Trigger4 = StateNo = 101

;-------------------------------------------------------------------------
;-------------------------------------------------------------
;連撃１
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;-------------------------------------------------------------------------
;-------------------------------------------------------------
;連撃２
[State -1]
type = ChangeState
value = 202
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact

;-------------------------------------------------------------------------



;-------------------------------------------------------------
;キック
[State -1]
type = ChangeState
value = 300
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
Trigger5 = StateNo = 100
Trigger6 = StateNo = 101

;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;しゃがみ攻撃
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 100
Trigger3 = StateNo = 101

;-----------------------------------------------------------------
;---------------------------------------------------------------------------
;しゃがみキック
[State -1]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
Trigger3 = StateNo = 100
Trigger4 = StateNo = 101

;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプ攻撃１
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;-----------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプキック
[State -1]
type = ChangeState
value = 320
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact

;-----------------------------------------------------------------

;----------------------------------------------------------------
ジャンプキャンセル

[State -2]
type = Changestate
triggerall = command = "holdup"
trigger1 = (stateno = 330) && movecontact
value = 40
;----------------------------------------------------------------
