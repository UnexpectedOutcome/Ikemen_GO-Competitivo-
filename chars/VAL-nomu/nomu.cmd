; The CMD file.


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]  ;セーブ・ザ・クイーン
name = "s_queen"
command = $B,$F,$B,$F, y+b
time = 60

[Command]
name = "s_queen"
command = $B,$F,$B,$F, x+a
time = 60

[Command]  ;砲台モード
name = "hodai"
command = D,D, y+b
time = 60

[Command]
name = "hodai"
command = D,D, x+a
time = 60

;-| Special Motions |------------------------------------------------------

[Command]  ;ジョーブローカー
name = "taiku_y"
command = D, B, b
time = 30

[Command]
name = "taiku_x"
command = D, B, a
time = 30

[Command]  ;グランドレインボーアイズ
name = "tama_b"
command = D, F, b
time = 30

[Command]
name = "tama_a"
command = D, F, a
time = 30

[Command]  ;レインボーアイズ
name = "tama_y"
command = D, F, y
time = 30

[Command]
name = "tama_x"
command = D, F, x
time = 30

;-| Special Motions |------------------------------------------------------

[Command]  ;ジョーブローカー
name = "A_keri_y"
command = D, B, b

[Command]
name = "A_keri_x"
command = D, B, a

[Command]  ;空中レインボーアイズ
name = "A_tama_b"
command = D, F, b

[Command]
name = "A_tama_a"
command = D, F, a

[Command]  ;空中レインボーアイズ
name = "A_tama_y"
command = D, F, y

[Command]
name = "A_tama_x"
command = D, F, x

;-| Air Jump |------------------------------------------------------

[Command]  ;Air Jump
name = "AirJump_9"
command = ~$U, UF

[Command]  ;Air Jump
name = "AirJump_7"
command = ~$U, UB

[Command]  ;Air Jump
name = "AirJump_8"
command = ~$U, U

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 30

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 30

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------

; Don't remove the following line. It's required by the CMD standard.
; ステートdef -1定義
[Statedef -1]

;===========================================================================
;上で設定したキー入力が出せる条件
;---------------------------------------------------------------------------


;===========================================================================
;変数var(1)必殺技(キャンセル技)可能な状態の指定

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger1 = stateno != 600 ;指定範囲内でキャンセルさせたくない技
trigger1 = movecontact = [1,14] ;キャンセル可能なフレーム数
trigger2 = stateno = 40 && AILevel = 0 ;ジャンプの根元
trigger3 = stateno = 52 && AILevel = 0 ;ジャンプの着地
var(1) = 1


;---------------------------------------------------------------------------
;セーブ・ザ・クイーン (uses one super bar)
[State -1, セーブ・ザ・クイーン]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "s_queen" || (NumHelper(10000)&&Helper(10000),Var(0)=3000 && Helper(10000),Var(1)>0)
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;(uses one super bar)
[State -1, ちょっと本気出しちゃおっかなー♪]
type = ChangeState
value = 3100
triggerall = power >= 3000
triggerall = command = "hodai"
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, ジョーブローカー大]
type = ChangeState
value = 1060
triggerall = command = "taiku_y" || (NumHelper(10000)&&Helper(10000),Var(0)=1060 && Helper(10000),Var(1)>0)
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, ジョーブローカー小]
type = ChangeState
value = 1050
triggerall = command = "taiku_x" || (NumHelper(10000)&&Helper(10000),Var(0)=1050 && Helper(10000),Var(1)>0)
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, グランドレインボーアイズ大]
type = ChangeState
value = 1105
triggerall = command = "tama_b" || (NumHelper(10000)&&Helper(10000),Var(0)=1105 && Helper(10000),Var(1)>0)
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, グランドレインボーアイズ小]
type = ChangeState
value = 1100
triggerall = command = "tama_a" || (NumHelper(10000)&&Helper(10000),Var(0)=1100 && Helper(10000),Var(1)>0)
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, レインボーアイズ大]
type = ChangeState
value = 1005
triggerall = command = "tama_y" || (NumHelper(10000)&&Helper(10000),Var(0)=1005 && Helper(10000),Var(1)>0)
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, レインボーアイズ小]
type = ChangeState
value = 1000
triggerall = command = "tama_x" || (NumHelper(10000)&&Helper(10000),Var(0)=1000 && Helper(10000),Var(1)>0)
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, 空中ジョーブローカー大]
type = ChangeState
value = 1260
triggerall = command = "taiku_y"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数

;---------------------------------------------------------------------------
[State -1, 空中ジョーブローカー小]
type = ChangeState
value = 1250
triggerall = command = "taiku_x"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数

;---------------------------------------------------------------------------
[State -1, 空中グランドレインボーアイズ大]
type = ChangeState
value = 1305
triggerall = command = "tama_b"
TriggerAll = Alive && var(59) < 1
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数

;---------------------------------------------------------------------------
[State -1, 空中グランドレインボーアイズ小]
type = ChangeState
value = 1300
triggerall = command = "tama_a"
TriggerAll = Alive && var(59) < 1
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
;---------------------------------------------------------------------------
[State -1, 空中レインボーアイズ大]
type = ChangeState
value = 1205
triggerall = command = "tama_y"
TriggerAll = Alive && var(59) < 1
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数

;---------------------------------------------------------------------------
[State -1, 空中レインボーアイズ小]
type = ChangeState
value = 1200
triggerall = command = "tama_x"
TriggerAll = Alive && var(59) < 1
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1110) = 0
triggerall = Numhelper(1210) = 0
triggerall = Numhelper(1310) = 0
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
triggerall = Numhelper(1115) = 0
triggerall = Numhelper(1215) = 0
triggerall = Numhelper(1315) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ジョーブローカーJump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 1070
triggerall = command = "x"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061 ;ジョーブローカー
triggerAll = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger1 = var(11) < 1

;---------------------------------------------------------------------------
;ジョーブローカーJump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 1071
triggerall = command = "y"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061 ;ジョーブローカー
triggerAll = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger1 = var(11) < 1

;---------------------------------------------------------------------------
;ジョーブローカーJump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 1073
triggerall = command = "a"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061 ;ジョーブローカー
triggerAll = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger1 = var(11) < 1

;---------------------------------------------------------------------------
;ジョーブローカーJump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 1074
triggerall = command = "b"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061 ;ジョーブローカー
triggerAll = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger1 = var(11) < 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
TriggerAll = Alive && var(59) < 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]   ;投げ
type = ChangeState
value = 800
triggerall = command = "y"   ;大パンチ
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100   ;ダッシュ時不可
TriggerAll = Alive && var(59) < 1
trigger1 = command = "holdfwd"   ;前歩き
trigger1 = p2bodydist X < 48   ;コマンド上での投げ間合い
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H || (p2stateno != [150,153]) || p2stateno != [5000,5300]
trigger2 = command = "holdback"   ;後ろ歩き
trigger2 = p2bodydist X < 48   ;コマンド上での投げ間合い
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H || (p2stateno != [150,153]) || p2stateno != [5000,5300]

;===========================================================================

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = stateno != 240 ;同じ技。この場合、大パンとは分けて書く。
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = stateno != 410 ;同じ技。この場合、大パンとは分けて書く。
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;立ちとしゃがみの通常技
trigger2 = stateno != 210 ;指定範囲内でキャンセルさせたくない技
trigger2 = stateno != 440 ;同じ技。この場合、大パンとは分けて書く。
trigger2 = movecontact = [1,15] ;キャンセル可能なフレーム

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AirJump]
type = ChangeState
value = 56
triggerall = command = "AirJump_9"
triggerall = var(9) < 1
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = A
trigger1 = pos y < -160

;---------------------------------------------------------------------------
[State -1, AirJump]
type = ChangeState
value = 57
triggerall = command = "AirJump_7"
triggerall = var(9) < 1
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = A
trigger1 = pos y < -160

;---------------------------------------------------------------------------
[State -1, AirJump]
type = ChangeState
value = 58
triggerall = command = "AirJump_8"
triggerall = var(9) < 1
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = A
trigger1 = pos y < -160


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------ガードキャンセル

[State -1, GCセーブ・ザ・クイーン]
type = ChangeState
value = 3000
triggerall = command = "s_queen"
TriggerAll = Alive && var(59) < 1
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------

[State -1, GCジョーブローカー大]
type = ChangeState
value = 1060
triggerall = command = "taiku_y"
TriggerAll = Alive && var(59) < 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GCジョーブローカー小]
type = ChangeState
value = 1050
triggerall = command = "taiku_x"
TriggerAll = Alive && var(59) < 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GCグランドレインボーアイズ大]
type = ChangeState
value = 1105
triggerall = command = "tama_b"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GCグランドレインボーアイズ小]
type = ChangeState
value = 1100
triggerall = command = "tama_a"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GCレインボーアイズ大]
type = ChangeState
value = 1005
triggerall = command = "tama_y"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GCレインボーアイズ小]
type = ChangeState
value = 1000
triggerall = command = "tama_x"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------ガードキャンセル
[State -1, GC空中ジョーブローカー大]
type = ChangeState
value = 1260
triggerall = command = "taiku_y"
TriggerAll = Alive && var(59) < 1
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GC空中ジョーブローカー小]
type = ChangeState
value = 1250
triggerall = command = "taiku_x"
TriggerAll = Alive && var(59) < 1
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GC空中グランドレインボーアイズ大]
type = ChangeState
value = 1305
triggerall = command = "tama_b"
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GC空中グランドレインボーアイズ小]
type = ChangeState
value = 1300
triggerall = command = "tama_a"
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GC空中レインボーアイズ大]
type = ChangeState
value = 1205
triggerall = command = "tama_y"
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------
[State -1, GC空中レインボーアイズ小]
type = ChangeState
value = 1200
triggerall = command = "tama_x"
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = stateno = [140,155]
trigger1 = time < 11

;---------------------------------------------------------------------------砲台モード
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, グランドレインボーアイズ大]
type = ChangeState
value = 1105
triggerall = command = "tama_b" || (NumHelper(10000)&&Helper(10000),Var(0)=1105 && Helper(10000),Var(1)>0)
triggerall = var(14)>0 ;砲台モード
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, グランドレインボーアイズ小]
type = ChangeState
value = 1100
triggerall = command = "tama_a" || (NumHelper(10000)&&Helper(10000),Var(0)=1100 && Helper(10000),Var(1)>0)
triggerall = var(14)>0 ;砲台モード
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, レインボーアイズ大]
type = ChangeState
value = 1005
triggerall = command = "tama_y" || (NumHelper(10000)&&Helper(10000),Var(0)=1005 && Helper(10000),Var(1)>0)
triggerall = var(14)>0 ;砲台モード
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, レインボーアイズ小]
type = ChangeState
value = 1000
triggerall = command = "tama_x" || (NumHelper(10000)&&Helper(10000),Var(0)=1000 && Helper(10000),Var(1)>0)
triggerall = var(14)>0 ;砲台モード
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, 空中ジョーブローカー大]
type = ChangeState
value = 1260
triggerall = var(14)>0 ;砲台モード
triggerall = command = "taiku_y"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061|| stateno = 3001 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger5 = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger5 = time>8 &&  Pos Y < -5
trigger6 = stateno = 1201 || stateno = 1206 || stateno = 1301 || stateno = 1306 ;空中レインボーアイズ
trigger6 = time>8 &&  Pos Y < -5
trigger7 = stateno = [1070,1074] ;必殺技キャンセル
trigger7 = time>9 &&  Pos Y < -5

;---------------------------------------------------------------------------
[State -1, 空中ジョーブローカー小]
type = ChangeState
value = 1250
triggerall = var(14)>0 ;砲台モード
triggerall = command = "taiku_x"
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061|| stateno = 3001 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger5 = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger5 = time>7 &&  Pos Y < -5
trigger6 = stateno = 1201 || stateno = 1206 || stateno = 1301 || stateno = 1306 ;空中レインボーアイズ
trigger6 = time>7 &&  Pos Y < -5
trigger7 = stateno = [1070,1074] ;必殺技キャンセル
trigger7 = time>9 &&  Pos Y < -5

;---------------------------------------------------------------------------
[State -1, 空中グランドレインボーアイズ大]
type = ChangeState
value = 1305
triggerall = command = "tama_b"
TriggerAll = Alive && var(59) < 1
triggerall = var(14)>0 ;砲台モード
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061|| stateno = 3001 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger5 = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger5 = time>7 &&  Pos Y < -5
trigger6 = stateno = 1201 || stateno = 1206 || stateno = 1301 || stateno = 1306 ;空中レインボーアイズ
trigger6 = time>7 &&  Pos Y < -5
trigger7 = stateno = [1070,1074] ;必殺技キャンセル
trigger7 = time>9 &&  Pos Y < -5

;---------------------------------------------------------------------------
[State -1, 空中グランドレインボーアイズ小]
type = ChangeState
value = 1300
triggerall = command = "tama_a"
TriggerAll = Alive && var(59) < 1
triggerall = var(14)>0 ;砲台モード
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061|| stateno = 3001 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger5 = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger5 = time>7 &&  Pos Y < -5
trigger6 = stateno = 1201 || stateno = 1206 || stateno = 1301 || stateno = 1306 ;空中レインボーアイズ
trigger6 = time>7 &&  Pos Y < -5
trigger7 = stateno = [1070,1074] ;必殺技キャンセル
trigger7 = time>9 &&  Pos Y < -5
;---------------------------------------------------------------------------
[State -1, 空中レインボーアイズ大]
type = ChangeState
value = 1205
triggerall = command = "tama_y"
TriggerAll = Alive && var(59) < 1
triggerall = var(14)>0 ;砲台モード
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061|| stateno = 3001 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger5 = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger5 = time>7 &&  Pos Y < -5
trigger6 = stateno = 1201 || stateno = 1206 || stateno = 1301 || stateno = 1306 ;空中レインボーアイズ
trigger6 = time>7 &&  Pos Y < -5
trigger7 = stateno = [1070,1074] ;必殺技キャンセル
trigger7 = time>9 &&  Pos Y < -5

;---------------------------------------------------------------------------
[State -1, 空中レインボーアイズ小]
type = ChangeState
value = 1200
triggerall = command = "tama_x"
TriggerAll = Alive && var(59) < 1
triggerall = var(14)>0 ;砲台モード
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699] ;空中通常技
trigger2 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = stateno = 1051 ||stateno = 1061|| stateno = 3001 ;必殺技キャンセル
trigger3 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger3 = var(11) < 1
trigger4 = stateno = [1070,1074] ;必殺技キャンセル
trigger4 = movecontact = [1,20] ;キャンセル可能なフレーム数
trigger5 = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger5 = time>7 &&  Pos Y < -5
trigger6 = stateno = 1201 || stateno = 1206 || stateno = 1301 || stateno = 1306 ;空中レインボーアイズ
trigger6 = time>7 &&  Pos Y < -5
trigger7 = stateno = [1070,1074] ;必殺技キャンセル
trigger7 = time>9 &&  Pos Y < -5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ジョーブローカーJump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 1070
triggerall = var(14)>0 ;砲台モード
triggerall = command = "x"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger1 = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger2 = time>8 &&  Pos Y < -5

;---------------------------------------------------------------------------
;ジョーブローカーJump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 1071
triggerall = var(14)>0 ;砲台モード
triggerall = command = "y"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger1 = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger2 = time>8 &&  Pos Y < -5

;---------------------------------------------------------------------------
;ジョーブローカーJump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 1073
triggerall = var(14)>0 ;砲台モード
triggerall = command = "a"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger1 = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger2 = time>8 &&  Pos Y < -5

;---------------------------------------------------------------------------
;ジョーブローカーJump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 1074
triggerall = var(14)>0 ;砲台モード
triggerall = command = "b"
TriggerAll = Alive && var(59) < 1
triggerAll = stateno = 1051 || stateno = 1061|| stateno = 3001 ;ジョーブローカー
trigger1 = movecontact = [1,15] ;キャンセル可能なフレーム数
trigger2 = time>8 &&  Pos Y < -5

