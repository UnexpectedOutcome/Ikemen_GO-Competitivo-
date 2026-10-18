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

[Command]  ;リジェネーションモード
name = "kaifuku"
command = D, D, y+b
time = 30

[Command]  ;リジェネーションモード
name = "kaifuku"
command = D, D, x+a
time = 30

[Command]  ;スーパー飛躍キック
name = "s_100kick"
command = D,F, D,F, b
time = 60

[Command]
name = "s_100kick"
command = D,F, D,F, a
time = 60

[Command]  ;スーパー飛躍キック
name = "s_100kick"
command = D,F, D,F, ~b
time = 60

[Command]
name = "s_100kick"
command = D,F, D,F, ~a
time = 60

[Command]  ;昇龍パンチEX
name = "taiku_s"
command = F,D,DF, x+y
time = 30

[Command]
name = "taiku_s"
command = D,DF,F,D,DF, y
time = 60

[Command]
name = "taiku_s"
command = D,DF,F,D,DF, x
time = 60

[Command]  ;お怒りボンバーEX
name = "tama_s"
command = D, B, x+y
time = 30

[Command]
name = "tama_s"
command = D, B,D, B, y
time = 60

[Command]
name = "tama_s"
command = D, B,D, B, x
time = 60

[Command]  ;ターボ・ロボコンパンチEX
name = "tosshin_s"
command = D, F, x+y
time = 30

[Command]
name = "tosshin_s"
command = D, B,D, B, y
time = 60

[Command]
name = "tosshin_s"
command = D, B,D, B, x
time = 60


;-| Special Motions |------------------------------------------------------

[Command]  ;昇龍パンチ
name = "taiku_y"
command = F, D, DF, y
time = 30

[Command]
name = "taiku_x"
command = F, D, DF, x
time = 30

[Command]  ;お怒りボンバー
name = "tama_y"
command = D, B, y
time = 30

[Command]
name = "tama_x"
command = D, B, x
time = 30

[Command]  ;ターボ・ロボコンパンチ
name = "tosshin_y"
command = D, F, y
time = 30

[Command]
name = "tosshin_x"
command = D, F, x
time = 30

[Command]  ;昇龍パンチ
name = "taiku_y"
command = F,D,FD, ~y
time = 30

[Command]
name = "taiku_x"
command = F,D,FD, ~x
time = 30

[Command]  ;お怒りボンバー
name = "tama_y"
command = D, B, ~y
time = 30

[Command]
name = "tama_x"
command = D, B, ~x
time = 30

[Command]  ;ターボ・ロボコンパンチ
name = "tosshin_y"
command = D, F, ~y
time = 30

[Command]
name = "tosshin_x"
command = D, F, ~x
time = 30

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
;リジェネーションモード (uses one super bar)
[State -1, リジェネーションモード]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = command = "kaifuku"
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, 昇龍パンチEX];(uses one super bar)
type = ChangeState
value = 2050
triggerall = power >= 1000
triggerall = command = "taiku_s" || (NumHelper(10000)&&Helper(10000),Var(0)=2050 && Helper(10000),Var(1)>0)
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, お怒りボンバーEX];(uses one super bar)
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "tama_s" || (NumHelper(10000)&&Helper(10000),Var(0)=2000 && Helper(10000),Var(1)>0)
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, ターボ・ロボコンパンチEX];(uses one super bar)
type = ChangeState
value = 2100
triggerall = power >= 1000
triggerall = command = "tosshin_s" || (NumHelper(10000)&&Helper(10000),Var(0)=1100 && Helper(10000),Var(1)>0)
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, 昇龍パンチ大]
type = ChangeState
value = 1060
triggerall = command = "taiku_y" || (NumHelper(10000)&&Helper(10000),Var(0)=1060 && Helper(10000),Var(1)>0)
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, 昇龍パンチ小]
type = ChangeState
value = 1050
triggerall = command = "taiku_x" || (NumHelper(10000)&&Helper(10000),Var(0)=1050 && Helper(10000),Var(1)>0)
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, お怒りボンバー大]
type = ChangeState
value = 1005
triggerall = command = "tama_y" || (NumHelper(10000)&&Helper(10000),Var(0)=1005 && Helper(10000),Var(1)>0)
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = S
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, お怒りボンバー小]
type = ChangeState
value = 1000
triggerall = command = "tama_x" || (NumHelper(10000)&&Helper(10000),Var(0)=1000 && Helper(10000),Var(1)>0)
triggerall = Numhelper(1010) = 0   ;飛び道具(helper1010)のある時は出ない
triggerall = Numhelper(1015) = 0   ;飛び道具(helper1015)のある時は出ない
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = S
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, ターボ・ロボコンパンチ大]
type = ChangeState
value = 1105
triggerall = command = "tosshin_y" || (NumHelper(10000)&&Helper(10000),Var(0)=1105 && Helper(10000),Var(1)>0)
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = S
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル

;---------------------------------------------------------------------------
[State -1, ターボ・ロボコンパンチ小]
type = ChangeState
value = 1100
triggerall = command = "tosshin_x" || (NumHelper(10000)&&Helper(10000),Var(0)=1100 && Helper(10000),Var(1)>0)
TriggerAll = StateType != A
TriggerAll = Alive && var(59) < 1
trigger1 = ctrl && statetype = S
trigger2 = var(1) ;Use combo condition (above)
trigger3 = (stateno = [400,499]) && time < 5 ;しゃがみの通常技の出掛かりを空キャンセル


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]   ;4投げ
type = ChangeState
value = 800
triggerall = command = "y"   ;大パンチ
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100   ;ダッシュ時不可
TriggerAll = Alive && var(59) < 1
trigger1 = command = "holdback"   ;後ろ歩き
trigger1 = p2bodydist X < 48   ;コマンド上での投げ間合い
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H || (p2stateno != [150,153]) || p2stateno != [5000,5300]

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]   ;カニ道楽投げ(6P)
type = ChangeState
value = 310   ;(6P)
triggerall = command = "y"
triggerall = command = "holdfwd"   ;前歩き
TriggerAll = Alive && var(59) < 1
trigger1 = statetype = S
trigger1 = ctrl


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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム
trigger3 = stateno = 200 ;連打キャンセル
trigger3 = movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム
trigger3 = stateno = [200,399] ;立ちの通常技
trigger3 = movecontact = [1,15] ;キャンセル可能なフレーム
trigger4 = stateno = 200 ;連打キャンセル
trigger4 = movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム
trigger3 = stateno = [200,399] ;立ちの通常技
trigger3 = movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム
trigger3 = stateno = [200,399] ;立ちの通常技
trigger3 = movecontact = [1,15] ;キャンセル可能なフレーム

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
trigger2 = stateno = 400 ;2p
trigger2 = time < 11 && movecontact = [1,15] ;キャンセル可能なフレーム
trigger3 = stateno = [200,399] ;立ちの通常技
trigger3 = movecontact = [1,15] ;キャンセル可能なフレーム

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

