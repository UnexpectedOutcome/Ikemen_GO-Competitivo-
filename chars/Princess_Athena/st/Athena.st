; FileName : Athena.st
;------------------------------------------------------------------------------;
;==============================================================================;
; 基本動作
;==============================================================================;
;------------------------------------------------------------------------------;
; タイムオーバーで負けた時
;------------------------------------------------------------------------------;
[Statedef 170]
  Type   = S
  Ctrl   = 0
  Anim   = 170
  VelSet = 0, 0

[State 170, 1]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;---------------------------[ ヘルパー ]-----------------------------;

[State 170]
  Type       = Helper
  Trigger1   = AnimElem = 12
  Name       = "Heart"
  StateNo    = 171
  ID         = 170
  Pos        = 15, -20
  PosType    = P1
  HelperType = Normal
  OwnPal     = 1
  KeyCtrl    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; ハート
;------------------------------------------------------------------------------;
[Statedef 171]
  Type        = A
  MoveType    = I
  Physics     = N
  Juggle      = 0
  ;Commonly-used controllers:
  VelSet      = 0, 0
  Ctrl        = 0
  Anim        = 171
  SprPriority = 2

;---------------------------[ 移動関連 ]-----------------------------;

[State 171]
  Type     = VelSet
  Trigger1 = Time = [0, 7]
  Trigger2 = Time = [16,23]
  Trigger3 = Time >= 32
  X        = 0.2*(Random%10+1)

[State 171]
  Type     = VelSet
  Trigger1 = Time = [8,15]
  Trigger2 = Time = [24,31]
  X        = -0.2*(Random%10+1)

[State 171]
  Type     = VelSet
  Trigger1 = 1
  Y        = -1.5

;-------------------------[ ステート変更 ]---------------------------;

[State 171]
  Type     = DestroySelf
  Trigger1 = AnimTime = 0
  Trigger2 = Root, StateNo != 170

;------------------------------------------------------------------------------;
; 勝った動作１
;------------------------------------------------------------------------------;
[Statedef 180]
  Type = S

[State 180, 1]
  Type     = ChangeState
  Trigger1 = Time = 0
  Value    = 181

;------------------------------------------------------------------------------;
; 勝った動作２
;------------------------------------------------------------------------------;
[Statedef 181]
  Type   = S
  Ctrl   = 0
  Anim   = 181
  VelSet = 0, 0

[State 181, 1]
  Type     = NotHitBy
  Trigger1 = 1
  Value    = SCA
  Time     = 1

;---------------------------[ サウンド ]-----------------------------;

[State 191 : Voice]
  Type     = PlaySnd
  Trigger1 = Time = 0
  Value    = s180, 0

;------------------------------------------------------------------------------;
; イントロ
;------------------------------------------------------------------------------;
[Statedef 190]
  Type   = S
  Ctrl   = 0
  VelSet = 0,0

;---------------------------[ ヘルパー ]-----------------------------;

[State 190]
  Type       = Helper
  Trigger1   = Time = 0
  Name       = "ModeSelect"
  StateNo    = 8900
  ID         = 8900
  Pos        = 0, -40
  PosType    = P1
  OwnPal     = 1

;-------------------------[ ステート変更 ]---------------------------;

[State 190] ;Go straight to intro.
  Type     = ChangeState
  Trigger1 = Time = 0
  Value    = 191

;------------------------------------------------------------------------------;
; 開始前の動作
;------------------------------------------------------------------------------;
[Statedef 191]
  Type   = S
  Ctrl   = 0
  Anim   = 190
  VelSet = 0, 0

[State 191]
  Type     = AssertSpecial
  Trigger1 = 1
  Flag     = Intro

;--------------------------[ アニメ変更 ]----------------------------;

[State 191]
  Type     = ChangeAnim
  Trigger1 = RoundState = 0
  Value    = 190

;---------------------------[ サウンド ]-----------------------------;

[State 191 : Voice]
  Type     = PlaySnd
  Trigger1 = AnimElem = 3
  Value    = s190, 0

[State 191 : SE]
  Type     = PlaySnd
  Trigger1 = Time = 100
  Value    = s190, 1

;--------------------------[ エフェクト ]----------------------------;

[State 191]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 191
  Pos         = -40, -60
  PosType     = P1
  SprPriority = 3
  BindTime    = -1
  OwnPal      = 1

[State 191]
  Type        = Explod
  Trigger1    = Time = 0
  Anim        = 192
  Pos         = -40, -60
  PosType     = P1
  SprPriority = 4
  BindTime    = -1
  OwnPal      = 1

;-------------------------[ ステート変更 ]---------------------------;

[State 191]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0

;------------------------------------------------------------------------------;
; 挑発の動作
;------------------------------------------------------------------------------;
[Statedef 195]
  Type        = S
  Ctrl        = 0
  Anim        = 195
  VelSet      = 0,0
  MoveType    = I
  Physics     = S
  SprPriority = 2

[State 195]
  Type     = Null;CtrlSet
  Trigger1 = Time = 40
  Value    = 1

[State 195]
  Type     = PlaySnd
  Trigger1 = AnimElem = 7
  Value    = s195,0

[State 195]
  Type     = ChangeState
  Trigger1 = AnimTime = 0
  Value    = 0
  Ctrl     = 1
