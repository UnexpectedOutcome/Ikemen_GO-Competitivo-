;===========================================================================
; CMD file for Super Kurara.
;===========================================================================

;-| Super Motions |---------------------------------------------------------
[Command]
name = "SuperCombo1"
command =  ~D, DF, F, D, DF, F, x
time = 25
;-| Special Motions |-------------------------------------------------------

[Command]
name = "SuperLaunch1a"
command = ~D,DF,F,x
time = 10

[Command]
name = "SuperLaunch1b"
command = ~D,DF,F,y
time = 10

[Command]
name = "SuperLaunch2a"
command = ~D,DB,B,x
time = 10

[Command]
name = "SuperLaunch2b"
command = ~D,DB,B,y
time = 10

[Command]
name = "SuperKick1"
command = ~D,DF,F,a
time = 10

[Command]
name = "SuperKick2"
command = ~D,DF,F,b
time = 10

[Command]
name = "wavekick1"
command = ~D,DB,B,a
time = 10

[Command]
name = "wavekick2"
command = ~D,DB,B,b
time = 10
;-| Button Combination |----------------------------------------------------
[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
time = 1

;-| Dir + Button |----------------------------------------------------------

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

;-| Do not remove! |--------------------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

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

;===========================================================================

[Statedef -1]
;---------------------------------------------------------------------------
[State -1, Super Combo]
type = ChangeState
value = 3400
triggerall = command = "SuperCombo1"
triggerall = command != "holddown"
triggerall = power>=1000
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Super Launch 1]
type = ChangeState
value = 1000
triggerall = command = "SuperLaunch1a"
triggerall = command != "holddown"
triggerall = NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Super Launch 1]
type = ChangeState
value = 1001
triggerall = command = "SuperLaunch1b"
triggerall = command != "holddown"
triggerall = NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Super Launch 2]
type = ChangeState
value = 1005
triggerall = command = "SuperLaunch2a"
triggerall = command != "holddown"
triggerall = NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Super Launch 2]
type = ChangeState
value = 1006
triggerall = command = "SuperLaunch2b"
triggerall = command != "holddown"
triggerall = NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Super Kick]
type = ChangeState
value = 1010
triggerall = command = "SuperKick1"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Super Kick]
type = ChangeState
value = 1030
triggerall = command = "SuperKick2"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Wave Kick]
type = ChangeState
value = 2100
triggerall = command = "wavekick1"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Wave Kick]
type = ChangeState
value = 2200
triggerall = command = "wavekick2"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; ガードキャンセル
[State -1]
type = ChangeState
value = 820
trigger1 = command = "c" || command = "by"
trigger1 = Power >= 1000
trigger1 = StateNo = [150,153]
;---------------------------------------------------------------------------
; 黒子合図
[State -1]
type = null;ChangeState
value = 196
triggerall = command = "cz" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; 前転・後転
[State -1]
type = ChangeState
value = ifelse(command = "holdback",805,800)
triggerall = (command = "z"  || command = "ax")&& command != "holddown"
trigger1 = StateType = S && (ctrl || StateNo = [100,101])
;---------------------------------------------------------------------------
; 立ちごっつい攻撃
[State -1]
type = ChangeState
value = 300
triggerall = (command = "c" || command = "by") && command != "holddown"
trigger1 = StateType = S && ctrl
trigger2 = StateNo = [100,101]
;---------------------------------------------------------------------------
; 屈みごっつい攻撃
[State -1]
type = ChangeState
value = 305
triggerall = (command = "c" || command = "by") && command = "holddown"
trigger1 = StateType = C && ctrl
trigger2 = StateNo = [100,101]
;---------------------------------------------------------------------------
; 投げ
[State -1]
type = ChangeState
value = 900
trigger1 = command = "y" && (command = "holdfwd" || command = "holdback") && command != "holddown"
trigger1 = p2MoveType != H && p2StateNo != [120,155]
trigger1 = P2BodyDist X < 15
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; 空中投げ
[State -1]
type = ChangeState
value = 910
trigger1 = command = "y" && command = "holdfwd"
trigger1 = P2StateType = A && P2BodyDist X < 15 && P2BodyDist Y = [-20,20]
trigger1 = StateType = A && ctrl
;---------------------------------------------------------------------------
; コンビネーション立ち強P
[State -1]
type = ChangeState
value = 216
triggerall = command = "y"
trigger1 = StateNo = 215 && var(5) = [1,20]
;---------------------------------------------------------------------------
; コンビネーション立ち強K
[State -1]
type = ChangeState
value = 226
triggerall = command = "b"
trigger1 = StateNo = 225 && var(5) = [1,20]
;---------------------------------------------------------------------------
; コンビネーション屈み強P
[State -1]
type = ChangeState
value = 411
triggerall = command = "y"
trigger1 = StateNo = 410 && var(5) = [1,20]
;---------------------------------------------------------------------------
; ダッシュP
[State -1]
type = ChangeState
value = 240
triggerall = command = "x"  || command = "y"
trigger1 = StateNo = [100,101]
;---------------------------------------------------------------------------
; ダッシュK
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"  || command = "b"
trigger1 = StateNo = [100,101]
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X < 20,205,200)
triggerall = command = "x" && command != "holddown"
trigger1 = StateType = S && ctrl
trigger2 = StateNo = 200 && AnimElem = 4,>= 0
trigger3 = StateNo = 205 && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X < 15,215,210)
triggerall = command = "y" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X < 15,225,220)
triggerall = command = "a" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X < 15,235,230)
triggerall = command = "b" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = StateType = C && ctrl
trigger2 = StateNo = 400 && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = StateType = C && ctrl
;---------------------------------------------------------------------------
; 屈み弱K
[State -1]
type = ChangeState
value = 420
triggerall = command = "a" && command = "holddown"
trigger1 = StateType = C && ctrl
trigger2 = StateNo = 420 && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = StateType = C && ctrl
;---------------------------------------------------------------------------
; ジャンプ弱P
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = StateType = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = StateType = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ弱K
[State -1]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = StateType = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = StateType = A && ctrl
;---------------------------------------------------------------------------
; 手合わせ合図
[State -1]
type = ChangeState
value = 195
triggerall = command = "start" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; 2段ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = !var(6) && !var(7)
trigger1 = StateType = A && ctrl
trigger2 = StateNo = 600 & AnimElem = 9,> 0
trigger3 = StateNo = 610 & AnimElem = 10,> 0
trigger4 = StateNo = 630 & AnimElem = 8,> 0
trigger5 = StateNo = 635 & AnimElem = 10,> 0
;---------------------------------------------------------------------------
; ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
; バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = StateType = S && ctrl
