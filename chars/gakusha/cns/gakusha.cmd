; アラド戦記『魔道学者』のコマンドファイルです。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;==============================================================================
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;-| AI起動用 |-----------------------------------------------------------------
[Command]
name = "up"
Command = U
time = 1

[Command]
name = "down"
Command = D
time = 1

[Command]
name = "fwd"
Command = F
time = 1

[Command]
name = "back"
Command = B
time = 1


[Command]
name = "AI00"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "AI01"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0

[Command]
name = "AI02"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "AI03"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI04"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI05"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI06"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "AI07"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0

[Command]
name = "AI08"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0

[Command]
name = "AI09"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0

[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0

[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0

[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0

[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0

[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0

[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0

[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0

[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0

[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0

[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0

[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0

[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0

[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0

[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0

[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0

[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0

[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0

[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0

[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0












;-| 超必殺技 |-----------------------------------------------------------------
;５ゲージ技
;フュージョンクラフト
[Command]
name = "FusionCraft"
command = D, DF, F, DF, D, DB, B, z
time = 30

;３ゲージ技
;メガドリル
[Command]
name = "MegaDrill"
command = D, DF, F, D, DF, F, z
time = 30

;フローレカライダー
[Command]
name = "FluoreCollider"
command = D, DB, B, D, DB, B, z
time = 30

;２ゲージ技
;燃え盛る炎の加熱炉
[Command]
name = "FuriousHeatingFurnace"
command = F, DF, D, DB, B, z
time = 20

;反重力マシーン
[Command]
name = "AntigravityStater"
command = D, D, z
time = 20


;１ゲージ技
;アシッドクラウド
[Command]
name = "AcidCloud"
command = F, DF, D, DB, B, y
time = 20

;マグマポーション
[Command]
name = "RavaPotion"
command = D, D, y
time = 20

;ホウキスピン
[Command]
name = "BroomSpin"
command = z

;-| 必殺技 |-------------------------------------------------------------------

;オーラシールド
[Command]
name = "AuraShield"
command = F, DF, D, DB, B, c
time = 20

;スイートキャンディバー
[Command]
name = "SweetCandybar"
command = D, DF, F, c

;ショータイム
[Command]
name = "Showtime"
command = D, DB, B, c

;チリングパウダー
[Command]
name = "ChillingPowder"
command = B, F, c

;デスパウダー
[Command]
name = "DeathPowder"
command = F, F, c

;ディスエンチャント
[Command]
name = "Disenchant"
command = D, D, c

;古代の図書館
[Command]
name = "AncientLibrary"
command = ~B, B, c

;改造シュルル
[Command]
name = "ImprovedShururu"
command = /F, c

;古代の記憶
[Command]
name = "AncientMemory"
command = c



;変移ハエ叩き
[Command]
name = "Flapper"
command = D, DB, B, x

;落花掌
[Command]
name = "Raidp"
command = F, F, x

;落花掌タメ
[Command]
name = "RaidpT"
command = /x


;竜牙
[Command]
name = "Prick"
command = /F, x



;位相変化 前
[Command]
name = "PhaseShiftF"
command = /$F, x

;天撃
[Command]
name = "HeavenHit"
command = x


;位相変化 後ろ
[Command]
name = "PhaseShift"
command = x



;ブラックマント
[Command]
name = "BlackManteau"
command = D, DF, F, y


;高出力マジックミサイル
[Command]
name = "EnhancedMagickMissile"
command = D, DF, F, z

;マジックミサイル
[Command]
name = "MagicMissile"
command = z

;ダッシュ攻撃
[Command]
name = "DashAttack"
command = /$F, a

;クイックスタンディング
[Command]
name = "QuickStanding"
command = /b



;ホバリング
[Command]
name = "hover"
command = U

;ダッシュ飛び上がり
[Command]
name = "DashJump"
command = b



;デバッグ用
[Command]
name = "DSwitch"
command = /$D,s

[Command]
name = "AISwitch"
command = /$B,s

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1








[Statedef -1]

;==============================================================================
; 超必殺技
;==============================================================================
[State -1, フュージョンクラフト]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 3300
triggerall = command = "FusionCraft"
triggerall = StateType != A
triggerall = NumExplod(22500) <= 0
triggerall = Power >= 5000
triggerall = PalNo > 6
trigger1 = ctrl
value = 3300

[State -1, フュージョンクラフト クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 3300
triggerall = command = "FusionCraft"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
triggerall = PalNo > 6
trigger1 = NumExplod(22500) > 0
trigger2 = Power < 5000
value = 0, 15


[State -1, メガドリル]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 3200
triggerall = command = "MegaDrill"
triggerall = StateType != A
triggerall = NumExplod(22400) <= 0
triggerall = Power >= 3000
trigger1 = ctrl
value = 3200

[State -1, メガドリル クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 3200
triggerall = command = "MegaDrill"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(22400) > 0
trigger2 = Power < 3000
value = 0, 15



[State -1, フローレカライダー]
type = Changestate
triggerall = var(59) = 0
triggerall = StateNo != 3100
triggerall = command = "FluoreCollider"
triggerall = StateType != A
triggerall = NumExplod(22300) <= 0
triggerall = Power >= 3000
trigger1 = ctrl
value = 3100

[State -1, フローレカライダー クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 3100
triggerall = command = "FluoreCollider"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(22300) > 0
trigger2 = Power < 3000
value = 0, 15




[State -1, 燃え盛る炎の加熱炉]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2900
triggerall = command = "FuriousHeatingFurnace"
triggerall = command != "FusionCraft"
triggerall = StateType != A
triggerall = NumExplod(22100) <= 0
triggerall = Power >= 2000
trigger1 = ctrl
value = 2900

[State -1, 燃え盛る炎の加熱炉 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2900
triggerall = command = "FuriousHeatingFurnace"
triggerall = command != "FusionCraft"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(22100) > 0
trigger2 = Power < 2000
value = 0, 15


[State -1, 反重力マシーン]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 3000
triggerall = command = "AntigravityStater"
triggerall = StateType != A
triggerall = NumExplod(22200) <= 0
triggerall = Power >= 2000
trigger1 = ctrl
value = 3000

[State -1, 反重力マシーン クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 3000
triggerall = command = "AntigravityStater"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(22200) > 0
trigger2 = Power < 2000
value = 0, 15



[State -1, アシッドクラウド]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2600
triggerall = command = "AcidCloud"
triggerall = StateType != A
triggerall = NumExplod(21900) <= 0
triggerall = Power >= 1000
trigger1 = ctrl
value = 2600

[State -1, アシッドクラウド クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2600
triggerall = command = "AcidCloud"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(21900) > 0
trigger2 = Power < 1000
value = 0, 15


[State -1, マグマポーション]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2500
triggerall = command = "RavaPotion"
triggerall = StateType != A
triggerall = NumExplod(21800) <= 0
triggerall = Power >= 1000
trigger1 = ctrl
value = 2500

[State -1, マグマポーション クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2500
triggerall = command = "RavaPotion"
triggerall = StateType != A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(21800) > 0
trigger2 = Power < 1000
value = 0, 15




[State -1, ホウキスピン]
type = ChangeState
triggerall = var(59) = 0
triggerall = (StateNo != 2400)
triggerall = command = "BroomSpin"
triggerall = StateType = A
triggerall = NumExplod(21700) <= 0
triggerall = Power >= 1000
trigger1 = ctrl
value = 2400

[State -1, ホウキスピン クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != [2400,2450]
triggerall = command = "BroomSpin"
triggerall = StateType = A
triggerall = alive
triggerall = ctrl
trigger1 = NumExplod(21700) > 0
trigger2 = Power < 1000
value = 0, 15


;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------



[State -1, ブラックマント]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2800
triggerall = command = "BlackManteau"
triggerall = command != "AcidCloud"
triggerall = StateType != A
triggerall = NumExplod(21200) <= 0
trigger1 = ctrl
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
value = 2800

[State -1, ブラックマント クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2800
triggerall = command = "BlackManteau"
triggerall = command != "AcidCloud"
triggerall = NumExplod(21200) > 0
triggerall = alive
trigger1 = ctrl
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
value = 0, 15




[State -1, 高出力マジックミサイル]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 1900
triggerall = command = "EnhancedMagickMissile"
triggerall = command != "MegaDrill"
triggerall = StateType != A
triggerall = NumExplod(21100) <= 0
triggerall = NumHelper(27050) = 0
trigger1 = ctrl
value = 1900

[State -1, 高出力マジックミサイル クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 1900
triggerall = command = "EnhancedMagickMissile"
triggerall = command != "MegaDrill"
triggerall = StateType != A
triggerall = NumExplod(21100) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15



[State -1, マジックミサイル]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 1800
triggerall = command != "EnhancedMagickMissile"
triggerall = command != "FuriousHeatingFurnace"
triggerall = command != "AntigravityStater"
triggerall = command != "MegaDrill"
triggerall = command != "FusionCraft"
triggerall = command = "MagicMissile"
triggerall = StateType != A
triggerall = NumExplod(21000) <= 0
trigger1 = ctrl
value = 1800

[State -1, マジックミサイル クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 1800
triggerall = command != "EnhancedMagickMissile"
triggerall = command != "FuriousHeatingFurnace"
triggerall = command != "AntigravityStater"
triggerall = command != "MegaDrill"
triggerall = command != "FusionCraft"
triggerall = command = "MagicMissile"
triggerall = StateType != A
triggerall = NumExplod(21000) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15



[State -1, オーラシールド 発生]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != [1100,1150]
triggerall = command = "AuraShield"
triggerall = StateType != A
triggerall = var(7) = 0
triggerall = NumExplod(20300) <= 0
trigger1 = Ctrl
value = 1100

[State -1, オーラシールド クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != [1100,1150]
triggerall = command = "AuraShield"
triggerall = StateType != A
triggerall = var(7) = 0
triggerall = NumExplod(20300) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15

[State -1, オーラシールド 解除]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != [1100,1150]
triggerall = command = "AuraShield"
triggerall = StateType != A
triggerall = var(7) = 1
trigger1 = Ctrl
value = 1150


[State -1, スイートキャンディーバー]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2300
triggerall = command = "SweetCandybar"
triggerall = StateType != A
triggerall = NumExplod(21600) <= 0
trigger1 = ctrl
value = 2300

[State -1, スイートキャンディーバー クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2300
triggerall = command = "SweetCandybar"
triggerall = StateType != A
triggerall = NumExplod(21600) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15



[State -1, ショータイム]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 1600
triggerall = command != "AuraShield"
triggerall = command = "Showtime"
triggerall = StateType != A
triggerall = NumExplod(20800) <= 0
trigger1 = ctrl
value = 1600

[State -1, ショータイム クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 1600
triggerall = command = "Showtime"
triggerall = command != "AuraShield"
triggerall = StateType != A
triggerall = NumExplod(20800) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15



[State -1, チリングパウダー]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2200
triggerall = command = "ChillingPowder"
triggerall = StateType != A
triggerall = NumExplod(21500) <= 0
trigger1 = ctrl
value = 2200

[State -1, チリングパウダー クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2200
triggerall = command = "ChillingPowder"
triggerall = StateType != A
triggerall = NumExplod(21500) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15



[State -1, デスパウダー]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2100
triggerall = command = "DeathPowder"
triggerall = StateType != A
triggerall = NumExplod(21400) <= 0
trigger1 = ctrl
value = 2100

[State -1, デスパウダー クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2100
triggerall = command = "DeathPowder"
triggerall = StateType != A
triggerall = NumExplod(21400) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15



[State -1, ディスエンチャント]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 1700
triggerall = command = "Disenchant"
triggerall = StateType != A
triggerall = NumExplod(20900) <= 0
trigger1 = ctrl
value = 1700

[State -1, ディスエンチャント クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 1700
triggerall = command = "Disenchant"
triggerall = StateType != A
triggerall = NumExplod(20900) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15


[State -1, 古代の図書館]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 1500
triggerall = command = "AncientLibrary"
triggerall = StateType != A
triggerall = NumExplod(20700) <= 0
trigger1 = ctrl
value = 1500

[State -1, 古代の図書館 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 1500
triggerall = command = "AncientLibrary"
triggerall = StateType != A
triggerall = NumExplod(20700) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15


[State -1, 改造シュルル]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 2000
triggerall = command != "DeathPowder"
triggerall = command != "ChillingPowder"
triggerall = command != "SweetCandybar"
triggerall = command = "ImprovedShururu"
triggerall = StateType != A
triggerall = NumExplod(21300) <= 0
triggerall = NumHelper(27020) = 0
trigger1 = ctrl
value = 2000

[State -1, 改造シュルル クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 2000
triggerall = command != "DeathPowder"
triggerall = command != "ChillingPowder"
triggerall = command != "SweetCandybar"
triggerall = command = "ImprovedShururu"
triggerall = StateType != A
triggerall = NumExplod(21300) > 0
triggerall = ctrl
trigger1 = alive
trigger2 = NumHelper(27020) >= 1
value = 0, 15



[State -1, 古代の記憶]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 1400
triggerall = command != "AuraShield"
triggerall = command != "Showtime"
triggerall = command != "ChillingPowder"
triggerall = command != "DeathPowder"
triggerall = command != "ImprovedShururu"
triggerall = command != "AncientLibrary"
triggerall = command != "SweetCandybar"
triggerall = command != "Disenchant"
triggerall = command = "AncientMemory"
triggerall = StateType != A
triggerall = NumExplod(20600) <= 0
trigger1 = ctrl
value = 1400

[State -1, 古代の記憶 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != 1400
triggerall = command != "AuraShield"
triggerall = command != "Showtime"
triggerall = command != "ChillingPowder"
triggerall = command != "DeathPowder"
triggerall = command != "ImprovedShururu"
triggerall = command != "AncientLibrary"
triggerall = command != "SweetCandybar"
triggerall = command != "Disenchant"
triggerall = command = "AncientMemory"
triggerall = StateType != A
triggerall = NumExplod(20600) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15




[State -1, 変移ハエ叩き]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != [2700,2750]
triggerall = command = "Flapper"
triggerall = StateType != A
triggerall = NumExplod(22000) <= 0
trigger1 = ctrl
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
value = 2700

[State -1, 変移ハエ叩き(空中)]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != [2700,2750]
triggerall = command = "Flapper"
triggerall = StateType = A
triggerall = NumExplod(22000) <= 0
trigger1 = ctrl
trigger2 = StateNo = 105
trigger3 = StateNo = 600
trigger4 = StateNo = 610
value = 2710

[State -1, 変移ハエ叩き クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != [2700,2750]
triggerall = command = "Flapper"
triggerall = NumExplod(22000) > 0
triggerall = alive
trigger1 = ctrl
trigger2 = StateNo = 105
trigger3 = StateNo = 600
trigger4 = StateNo = 610
value = 0, 15

[State -1, 落花掌]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != [1000,1025]
triggerall = (command = "Raidp")
triggerall = StateType != A
triggerall = NumExplod(20200) <= 0
trigger1 = Ctrl
trigger2 = StateNo = 910
value = 1000

[State -1, 落花掌 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != [1000,1025]
triggerall = (command = "Raidp")
triggerall = StateType != A
triggerall = NumExplod(20200) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15


[State -1, 竜牙]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != [900,910]
triggerall = (command != "Raidp")
triggerall = command = "Prick"
triggerall = StateType != A
triggerall = NumExplod(20100) <= 0
trigger1 = Ctrl
value = 900

[State -1, 竜牙 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = StateNo != [900,910]
triggerall = (command != "Raidp")
triggerall = command = "Prick"
triggerall = StateType != A
triggerall = NumExplod(20100) > 0
triggerall = ctrl
trigger1 = alive
value = 0, 15


[State -1, 天撃]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo != 800
triggerall = (command != "Raidp")
triggerall = command = "HeavenHit"
triggerall = command != "Flapper"
triggerall = StateType != A
triggerall = NumExplod(20000) <= 0
trigger1 = (Ctrl)
trigger2 = StateNo = [200,220]
trigger3 = StateNo = 910
value = 800

[State -1, 天撃 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = command = "HeavenHit"
triggerall = (command != "Raidp")
triggerall = command != "Prick"
triggerall = command != "Flapper"
triggerall = StateType != A
triggerall = NumExplod(20000) > 0
triggerall = StateNo != 800
triggerall = ctrl
trigger1 = alive
value = 0, 15


[State -1, 位相変化 前]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "PhaseShiftF"
triggerall = MoveType = H
triggerall = StateNo != [1300,1310]
triggerall = NumExplod(20500) <= 0
triggerall = Power >= 1000
trigger1 = alive
value = 1310

[State -1, 位相変化 後ろ]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "PhaseShift"
triggerall = MoveType = H
triggerall = StateNo != [1300,1310]
triggerall = NumExplod(20500) <= 0
triggerall = Power >= 1000
trigger1 = alive
value = 1300

[State -1, 位相変化 クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = (command = "PhaseShift") || (command = "PhaseShiftF")
triggerall = MoveType = H
triggerall = StateNo != [1300,1310]
triggerall = alive
trigger1 = NumExplod(20500) > 0
trigger2 = Power < 1000
value = 0, 15


[State -1, クイックスタンディング]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = StateType = L
triggerall = Pos Y >= 0
triggerall = StateNo = 5110
triggerall = NumExplod(20400) <= 0
trigger1 = alive
value = 1200

[State -1, クイックスタンディング クール中]
type = PlaySnd
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = StateType = L
triggerall = StateNo = 5110
triggerall = NumExplod(20400) > 0
trigger1 = alive
value = 0, 15


;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ホバリング]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = var(22) > var(23)
triggerall = Vel Y >= 0
trigger1 = (command = "hover") && (ctrl)
value = 750

[State -1, ダッシュジャンプ]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo = 100
triggerall = StateNo != 700
triggerall = StateType != A
triggerall = var(3) = 1
trigger1 = (command = "DashJump") && (ctrl)
value = 700

[State -1, 走る]
type = ChangeState
triggerall = var(59) = 0
triggerall = (StateNo != 100)
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
trigger1 = var(2) >= var(36)
trigger2 = (command = "BB") && (StateType = S) && (Ctrl)
trigger2 = var(2) < var(36)
value = 100

[State -1, バックステップ]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(2) >= var(36)
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
trigger2 = (command = "BB") && (StateNo = 200)
trigger3 = (command = "BB") && (StateNo = 210)
trigger4 = (command = "BB") && (StateNo = 220)
trigger5 = (command = "BB") && (StateNo = 100)
trigger6 = (command = "b") && (StateType = S) && (Ctrl)
trigger7 = (command = "b") && (StateNo = 200)
trigger8 = (command = "b") && (StateNo = 210)
trigger9 = (command = "b") && (StateNo = 220)
trigger10 = (command = "b") && (StateNo = 100)
value = 105

[State -1, 混乱中バックステップ]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(2) < var(36)
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
trigger2 = (command = "FF") && (StateNo = 200)
trigger3 = (command = "FF") && (StateNo = 210)
trigger4 = (command = "FF") && (StateNo = 220)
trigger5 = (command = "FF") && (StateNo = 100)
trigger6 = (command = "b") && (StateType = S) && (Ctrl)
trigger7 = (command = "b") && (StateNo = 200)
trigger8 = (command = "b") && (StateNo = 210)
trigger9 = (command = "b") && (StateNo = 220)
trigger10 = (command = "b") && (StateNo = 100)
value = 105

[State -1, 空中ダッシュ]
type = ChangeState
triggerall = var(59) = 0
triggerall = (Pos Y < -5)
triggerall = (StateNo != 101)
triggerall = (StateNo != 107)
triggerall = var(20) = 0
trigger1 = (command = "FF") && (StateType = A) && (Ctrl)
trigger1 = var(2) >= var(36)
trigger2 = (command = "BB") && (StateType = A) && (Ctrl)
trigger2 = var(2) < var(36)
value = 101

[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = var(59) = 0
triggerall = (Pos Y < -5)
triggerall = (StateNo != 101)
triggerall = (StateNo != 107)
triggerall = var(20) = 0
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
trigger1 = var(2) >= var(36)
trigger2 = (command = "FF") && (StateType = A) && (Ctrl)
trigger2 = var(2) < var(36)
value = 107


;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

;ダッシュ攻撃
[State -1, ダッシュ攻撃]
type = ChangeState
triggerall = var(59) = 0
triggerall = StateNo = 100
trigger1 = (command = "DashAttack") && (StateType = S) && (Ctrl)
value = 300



;挑発
[State -1, 挑発]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "start"
triggerall = StateType = S
trigger1 = ctrl
value = 195


;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 空中通常２]
type = ChangeState
triggerall = var(59) = 0
triggerall = (Pos Y < -10)
triggerall = (StateNo != 610) && (StateNo != 105)
triggerall = (command = "a") && (StateType = A)
triggerall = Var(21) < Var(1)
trigger1 = (StateNo = 600) && (AnimElemTime(3) > 1)
trigger2 = (StateNo = 700)
trigger3 = var(43) = 2
value = 610

[State -1, 空中通常１]
type = ChangeState
triggerall = var(59) = 0
triggerall = (Pos Y < -10)
triggerall = (StateNo != 600) && (StateNo != 700) && (StateNo != 105)
triggerall = Var(21) < Var(1)
triggerall = var(43) <= 1
trigger1 = (command = "a") && (statetype = A) && (Ctrl)
trigger2 = (command = "a") && (statetype = A)
trigger2 = (StateNo = 610) && (AnimElemTime(2) > 1)
value = 600


[State -1, 通常３]
type = ChangeState
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (stateno = 210) && (AnimElemTime(4) > 1)
trigger1 = stateno != 220
value = 220

[State -1, 通常２]
type = ChangeState
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (stateno = 200) && (AnimElemTime(4) > 1)
trigger1 = stateno != 210
value = 210

[State -1, 通常１]
type = ChangeState
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (statetype = S) && (Ctrl)
value = 200


;------------------------------------------------------------------------------









































;---------------------------------------------------------------------------
; 力が・・・勝手に・・・
;---------------------------------------------------------------------------
[State -1, 力が・・・勝手に・・・落下]
type = ChangeState
trigger1 = Pos Y < 0
trigger1 = StateType != A
trigger1 = MoveType = I
trigger1 = alive
trigger1 = RoundState = 2
trigger1 = !IsHelper
value = 50

[State -1, 力が・・・勝手に・・・浮上]
type = PosSet
trigger1 = Pos Y > 0
trigger1 = MoveType = I
trigger1 = alive
trigger1 = !IsHelper
trigger1 = RoundState = 2
y = 0

[State -1, ホウキスピンが・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 2400

[State -1, マグマが・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 2500

[State -1, 雨が・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 2600

[State -1, 加熱炉が・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 2900

[State -1, 反重力が・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 3000

[State -1, カライダが・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 3100

[State -1, ドリルが・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 3200

[State -1, 覚醒が・・・勝手に・・・]
type = ChangeState
triggerall = var(42) = 1
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = var(2) % 2 = 0
triggerall = NumHelper(9000) = 0
triggerall = PalNo > 6
trigger1 = MoveType != H
trigger1 = Random <= 1
trigger2 = MoveType = H
trigger2 = Random <= 2
value = 3300
