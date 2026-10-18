; FileName : -2.st
;------------------------------------------------------------------------------;
;==============================================================================;
; 常時監視ステート(-2)
;==============================================================================;
;------------------------------------------------------------------------------;
[Statedef -2]
;------------------------------------------------------------------------------;
[State -2 : クリップボード]
  Type     = DisplayToClipboard
  Trigger1 = 1
  text     = "Var(31) = %d, Var(10) = %d, var(2) = %d, var(10) = %d, FVar(4) = %lf"
  params   = var(31), var(10), Var(2), var(10), FVar(4)

[State -2]
  Type     = StopSnd
  Trigger1 = StateNo != 100
  Channel  = 1

[State -2]
  Type     = StopSnd
  Trigger1 = StateNo != 1000 && StateNo != 1100
  Channel  = 2

;------------------------------------------------------------------------------;
; 乱数
;------------------------------------------------------------------------------;
[State -2]
  Type           = VarRandom
  Trigger1       = 1
  V              = 1
  Range          = 0, 8
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; コンボ数カウント
;------------------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType != H
  Trigger2 = Enemy,Ctrl = 1
  Trigger3 = StateNo = [5200,5210]
  V        = 2
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; カウンターヒット判定
;------------------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType = A
  Trigger1 = StateNo != [800,850]
  V        = 3
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType != A
  Trigger2 = StateNo = [800, 850]
  V        = 3
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; キャンセル
;------------------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = StateNo != [100,101]
  Trigger1 = StateNo != [200, 4000]
  Trigger2 = MoveType = H
  V        = 10
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; 追撃判定
;------------------------------------------------------------------------------;
[State -2 : 追撃判定リセット]
  Type     = VarSet
  Trigger1 = P2MoveType != H
  V        = 11
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; オートチャージ
;------------------------------------------------------------------------------;
[State -2 : ]
  Type       = VarAdd
  TriggerAll = RoundState = 2
  TriggerAll = Var(30) = 0 || Var(30) = 5
  Trigger1   = Var(29) < 600
  V          = 29
  Value      = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = PowerAdd
  TriggerAll = RoundState = 2
  TriggerAll = Var(30) = 0 || Var(30) = 5
  Trigger1   = Var(29) >= 600
  Trigger1   = GameTime%60 = 0
  Value      = 56
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = PlaySnd
  TriggerAll = RoundState = 2
  TriggerAll = Var(30) = 0 || Var(30) = 5
  Trigger1   = Var(29) = 599
  Value      = s4000,1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; MAX&クイックMAX
;------------------------------------------------------------------------------;
[State -2]
  Type     = VarAdd
  Trigger1 = Var(31) > 0
  V        = 31
  Value    = -1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type     = VarSet
  Trigger1 = Var(31) < 0
  V        = 31
  Value    = 0
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type     = PalFx
  Trigger1 = Var(31) > 0
  Trigger1 = GameTime%2 = 0
  Time     = 1
  Add      = 128,128,0
  Color    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; コンボ補正
;------------------------------------------------------------------------------;
[State -2 : コンボ補正リセット]
  Type     = VarSet
  Trigger1 = Var(2) < 3
  Trigger2 = P2MoveType != H
  FV       = 2
  Value    = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : コンボ補正]
  Type     = VarSet
  Trigger1 = Var(2) > 2
  FV       = 2
  Value    = (100-(25+Var(2)*0.5*5))*0.01
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; ネバリ値計算
;------------------------------------------------------------------------------;

; 相手の最大体力を考慮に入れる場合
;￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
[State -2 : 相手の体力が40%以上のとき]
  Type     = VarSet
  Trigger1 = Enemy,Life >= Enemy,Const(data.life)*0.4
  FV       = 3
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が40%未満かつ15%以上のとき]
  Type     = VarSet
  Trigger1 = (Enemy,Life >= Enemy,Const(Data.Life)*0.15) && (Enemy,Life < Enemy,Const(Data.Life)*0.4)
  FV       = 3
  Value    = 0.75
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が15%未満のとき]
  Type     = VarSet
  Trigger1 = Enemy,Life < Enemy,Const(data.life)*0.15
  FV       = 3
  Value    = 0.5
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

; 相手の最大体力を考慮に入れない場合
;￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
[State -2 : 相手の体力が400以上のとき]
  Type     = Null;VarSet
  Trigger1 = Enemy,Life >= 400
  FV       = 3
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が400未満かつ150以上のとき]
  Type     = Null;VarSet
  Trigger1 = Enemy,Life >= 150 && Enemy,Life < 400
  FV       = 3
  Value    = 0.75
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 相手の体力が150未満のとき]
  Type     = Null;VarSet
  Trigger1 = Enemy,Life < 150
  FV       = 3
  Value    = 0.5
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; ダメージ計算
;------------------------------------------------------------------------------;
[State -2]
  Type     = VarSet
  Trigger1 = P2MoveType != H
  FV       = 4
  Value    = 1
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : EX必殺技以下のダメージ補正]
  Type     = VarSet
  Trigger1 = 1
  FV       = 4
  Value    = 100*IfElse(FVar(2)<0.20,0.20,FVar(2))*FVar(3)/(100+Var(1)-4)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : 超必殺技以上のダメージ補正]
  Type     = VarSet
  Trigger1 = 1
  FV       = 5
  Value    = 100*IfElse(FVar(2)<0.50,0.50,FVar(2))*FVar(3)/(100+Var(1)-4)
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;==============================================================================;
; その他
;==============================================================================;

;--------------------------------------------------------------------;
; エフェクト削除
;--------------------------------------------------------------------;
[State -2 : 通常攻撃のエフェクト削除]
  Type     = RemoveExplod
  Trigger1 = MoveType = H
  Trigger2 = StateNo != [200,640]
  ID       = 200
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : ネプチューンキラー]
  Type     = RemoveExplod
  Trigger1 = MoveType = H
  Trigger2 = StateNo != [1200,1250]
  ID       = 1200
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : ライオンズシールド]
  Type     = RemoveExplod
  Trigger1 = MoveType = H
  Trigger2 = StateNo != [1400,1450]
  ID       = 1400
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : ポセイドン・レイジ, 1]
  Type     = RemoveExplod
  Trigger1 = MoveType = H
  Trigger2 = StateNo != [3000, 3099]
  ID       = 3000
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2 : ポセイドン・レイジ, 2]
  Type     = RemoveExplod
  Trigger1 = MoveType = H
  Trigger2 = StateNo != [3000, 3099]
  ID       = 3005
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; 
;--------------------------------------------------------------------;
[State -2]
  Type     = PowerSet
  Trigger1 = Var(30) = 0 || Var(30) = 2
  Trigger1 = Power >= 3000
  Value    = 3000
  IgnoreHitPause = 1
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;------------------------------------------------------------------------------;
; MAX演出
;------------------------------------------------------------------------------;
[State -2]
  Type       = Helper
  TriggerAll = Var(30) = 1 || Var(30) = 5
  Trigger1   = StateNo = 3300
  Trigger1   = NumHelper(7500) = 0
  Name       = "MAX2"
  StateNo    = 7500
  ID         = 7500
  HelperType = Normal
  Pos        = 0,0
  PosType    = P2
  KeyCtrl    = 0
  OwnPal     = 1
  IgnoreHitPause = 1
  Persistent     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

[State -2]
  Type       = Null;Helper
  TriggerAll = Var(30) = 1 || Var(30) = 5
  Trigger1   = StateNo = 3320
  Trigger1   = Time = 1
  Name       = "MAX2END"
  StateNo    = 7510
  ID         = 7510
  HelperType = Normal
  Pos        = 0,0
  PosType    = P2
  KeyCtrl    = 0
  OwnPal     = 1
  IgnoreHitPause = 1
  Persistent     = 0
  SuperMoveTime  = 999999
  PauseMoveTime  = 999999

;--------------------------------------------------------------------;
; ライフフラワー
;--------------------------------------------------------------------;
[State -2]
  Type       = LifeAdd
  TriggerAll = Var(17) = 0
  Trigger1   = Var(18) = 1
  Trigger1   = NumHelper(1600) != 0
  Value      = 150

[State -2]
  Type       = PowerAdd
  TriggerAll = Var(17) = 1
  Trigger1   = Var(18) = 1
  Trigger1   = NumHelper(1600) != 0
  Value      = 450

;==============================================================================;
; 準常時監視ステート(-3)
;==============================================================================;
;------------------------------------------------------------------------------;
[Statedef -3]
;------------------------------------------------------------------------------;

;ゲーム中に常にいつでも開始したいステート、ここでは「着地音」に使用しています
;下の条件は「52か106のステートに移動して１フレーム目に」と言う事です。
;52と106はバックステップとジャンプの着地のステートです。
[State -3, Landing Sound]
  Type       = PlaySnd
  TriggerAll = Time = 1
  Trigger1   = StateNo = 52 
  Trigger2   = StateNo = 106 
  Value      = s47, 0

;------------------------------------------------------------------------------;
; ハイジャンプ処理
;------------------------------------------------------------------------------;
[State -3] 
  Type     = VarSet
  Trigger1 = Command = "Jump"
  Trigger1 = Ctrl
  Trigger1 = StateType = S
  Trigger2 = PrevStateNo = [100, 101]
  Trigger2 = Command = "holdfwd"
  V        = 6
  Value    = 1

[State -3]
  Type     = VarSet
  Trigger1 = Var(6) = 1
  Trigger1 = StateNo = 40
  Trigger1 = AnimTime = 0
  V        = 6
  Value    = IfElse(sysvar(1)=0, 2, IfElse(sysvar(1)=1, 3, 4))

[State -3]
  Type       = VarSet
  TriggerAll = Time = 2
  Trigger1   = StateNo = 50
  Trigger2   = StateNo != [40,59]
  V          = 6
  Value      = 0

[State -3]
  Type     = VelAdd
  Trigger1 = Var(6) = 3
  Trigger1 = StateNo = 50
  X        = 1.5
  Y        = -0.6

[State -3]
  Type     = VelAdd
  Trigger1 = Var(6) = 4
  Trigger1 = StateNo = 50
  X        = -1.5
  Y        = -0.6

[State -3]
  Type        = AfterImage
  Trigger1    = Var(6) >= 1
  Trigger1    = StateNo = 50
  Time        = 25
  Trans       = Add1
  Length      = 4
  TimeGap     = 3
  FrameGap    = 1
  PalBright   = 0, 0, 0
  PalContrast = 128, 128, 128
  PalAdd      = 0, 0, 0
  PalMul      = 1, 1, 1

