;==============================================================================
;                                        ボタ??マップ（ボタ?コ?フィグ）                                    第１?
;==============================================================================
[Remap]
x = x      ;Ｘボタ?の入力判定を実際に?すボタ?に?り?てる。
y = y      ;Ｙボタ?　　　　　　　　　〃
z = z      ;Ｚボタ?　　　　　　　　　〃
a = a      ;Ａボタ?　　　　　　　　　〃
b = b      ;Ｂボタ?　　　　　　　　　〃
c = c      ;Ｃボタ?　　　　　　　　　〃
s = s      ;スタートボタ?　　　　　　〃

;?期配置
;Ｘ?弱攻?
;Ｙ??攻?
;Ｚ?強攻?
;Ａ?スペシ??攻?
;Ｓ?挑発


;==============================================================================
;                                                 デフォ?ト設定　　　　　 　　　　　　　　　　　　　　　　　　　第２?
;==============================================================================
[Defaults]
command.time = 15  ;標?のコマ?ド入力受付?間。
command.buffer.time = 1  ;標?のコマ?ド入力記憶?間。


;==============================================================================
;                                  コマ?ド定義パート（入力キーを設定する）                              第３?
;==============================================================================
;------------------------------------------------------------------------------
;                                              　　　ＡＩフ?グ用
;------------------------------------------------------------------------------
[Command]
name = "AI0"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,s
time = 0

[Command]
name = "AI1"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,a,s,a
time = 0

[Command]
name = "AI2"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,a,s,s
time = 0

[Command]
name = "AI3"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,s,a,a
time = 0

[Command]
name = "AI4"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,s,a,s
time = 0

[Command]
name = "AI5"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,s,s,a
time = 0

[Command]
name = "AI6"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,a,s,s,s
time = 0

[Command]
name = "AI7"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,a,a,a
time = 0

[Command]
name = "AI8"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,a,a,s
time = 0

[Command]
name = "AI9"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,a,s,a
time = 0

[Command]
name = "AI10"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,a,s,s
time = 0

[Command]
name = "AI11"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,s,a,a
time = 0

[Command]
name = "AI12"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,s,a,s
time = 0

[Command]
name = "AI13"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,s,s,a
time = 0

[Command]
name = "AI14"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,a,s,s,s,s
time = 0

[Command]
name = "AI15"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,a,a,a
time = 0

[Command]
name = "AI16"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,a,a,s
time = 0

[Command]
name = "AI17"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,a,s,a
time = 0

[Command]
name = "AI18"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,a,s,s
time = 0

[Command]
name = "AI19"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,s,a,a
time = 0

[Command]
name = "AI20"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,s,a,s
time = 0

[Command]
name = "AI21"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,s,s,a
time = 0

[Command]
name = "AI22"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,a,s,s,s
time = 0

[Command]
name = "AI23"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,a,a,a
time = 0

[Command]
name = "AI24"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,a,a,s
time = 0

[Command]
name = "AI25"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,a,s,a
time = 0

[Command]
name = "AI26"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,a,s,s
time = 0

[Command]
name = "AI27"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,s,a,a
time = 0

[Command]
name = "AI28"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,s,a,s
time = 0

[Command]
name = "AI29"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,s,s,a
time = 0

[Command]
name = "AI30"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,a,s,s,s,s,s
time = 0

[Command]
name = "AI31"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,a,a,a
time = 0

[Command]
name = "AI32"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,a,a,s
time = 0

[Command]
name = "AI33"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,a,s,a
time = 0

[Command]
name = "AI34"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,a,s,s
time = 0

[Command]
name = "AI35"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,s,a,a
time = 0

[Command]
name = "AI36"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,s,a,s
time = 0

[Command]
name = "AI37"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,s,s,a
time = 0

[Command]
name = "AI38"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,a,s,s,s
time = 0

[Command]
name = "AI39"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,a,a,a
time = 0

[Command]
name = "AI40"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,a,a,s
time = 0

[Command]
name = "AI41"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,a,s,a
time = 0

[Command]
name = "AI42"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,a,s,s
time = 0

[Command]
name = "AI43"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,s,a,a
time = 0

[Command]
name = "AI44"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,s,a,s
time = 0

[Command]
name = "AI45"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,s,s,a
time = 0

[Command]
name = "AI46"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,a,s,s,s,s
time = 0

[Command]
name = "AI47"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,s,a,a,a,a
time = 0

[Command]
name = "AI48"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,s,a,a,a,s
time = 0

[Command]
name = "AI49"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,s,a,a,s,a
time = 0

[Command]
name = "AI50"
command = a,b,c,x,y,z,a,a,a,a,a,a,a,s,s,a,a,s,s
time = 0

;------------------------------------------------------------------------------
;                                              スペシ??スキ?攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];箒スピ?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "BroomSpin"
command = /F, a

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];反重力マシー?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "AntiGravity"
command = D, F, c

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];ダブ?ガ?ホーク
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "DoubleGunhawk"
command = D, B, c
time = 40

;------------------------------------------------------------------------------
;                                             アドバ?スドスキ?攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];?出力マジックミサイ?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "EnhancedMagicMissile"
command = D, F, z

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];チ??グパウダー
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "ChillingPowder"
command = D, F, b

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];ディスエ?チ??ト
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "DisEnchant"
command = D, ~D, D, b

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];アシッドク?ウド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "AsidCloud"
command = D, B, z

;------------------------------------------------------------------------------
;                                                     スキ?攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];ブ?ックマ?ト
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "BlackMantle"
command = D, B, x

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];変異ハエ叩き
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "Flapper"
command = D, B, y

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];位?変化
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "PhaseShift"
command = z

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];箒ダッシ?後方
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "BroomDash_B"
command = D, B, x+y

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];箒ダッシ?前方
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "BroomDash_F"
command = D, F, x+y

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];挑発人形シ???／改造シ???
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "Doll-Shururu"
command = D, F, x

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command];マジックミサイ?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "MagicMissile"
command = D, F, y

;-------------------------------------------------------------------------------
; キー２回連続入力
;-------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; ダッシ?（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "FF"
command = F, F

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; バックステップ（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "BB"
command = B, B

;-------------------------------------------------------------------------------
; 同??し
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; 方向キー＋ボタ?
;-------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 屈み弱攻?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "C_LightAttack"
command = /$D, x
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 屈み?攻?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "C_MiddleAttack"
command = /$D, y
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 屈み強攻?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "C_HardAttack"
command = /$D, z
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 立ち強攻?２（ダッシ?攻?)
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "DashAttack"
command = /F, z
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; カウ?ター攻?
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "GuardCancelAttack"
command = /F, a
time = 1

;-------------------------------------------------------------------------------
; ボタ?単発
;-------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; ?カバ?ー（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "recovery"
command = x
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "fwd"
command = F
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "back"
command = B
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "up"
command = U
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "down"
command = D
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "a"
command = a
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "b"
command = b
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "c"
command = c
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "x"
command = x
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "y"
command = y
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "z"
command = z
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "start"
command = s
time = 1

;-------------------------------------------------------------------------------
; ボタ??し続け
;-------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdfwd"
command = /$F
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdback"
command = /$B
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdup"
command = /$U
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド（必須コマ?ド名）
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holddown"
command = /$D
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holda"
command = /a
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdb"
command = /b
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdc"
command = /c
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdx"
command = /x
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdy"
command = /y
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdz"
command = /z
time = 1

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[Command]; 基本コマ?ド
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
name = "holdstart"
command = /s
time = 1

;==============================================================================
;                 ステートエ?ト?ーパート（技などを出せるようにするための条?を設定）          第４?
;==============================================================================
[Statedef -1]
[State -1 ,poweradd] 
type = PowerAdd 
trigger1 = power >= 0 
value = 99999 
;------------------------------------------------------------------------------
;　　　　　　　　　　　　　　　　　　　　　　　　　クー?タイ?動作
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;　　　　　　　　　　　　　　　　　　　　　　 スペシ??スキ?攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 箒スピ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 2000
triggerall = var(59) <= 0 && Command = "BroomSpin"
triggerall = var(45) = 0 && Power >= 1000
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 55
trigger3 = StateNo = 106
trigger4 = StateNo = [1300,1310]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 反重力マシー?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 2100
triggerall = var(59) <= 0 && Command = "AntiGravity"
triggerall = var(46) = 0 && Power >= 1000
triggerall = StateType != A
trigger1 = Ctrl

;------------------------------------------------------------------------------
;　　　　　　　　　　　　　　　　　　　　 　 アドバ?スドスキ?攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, ?出力マジックミサイ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1600
triggerall = var(59) <= 0 && Command = "EnhancedMagicMissile"
triggerall = var(41) = 0 && Power >= 500
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,220]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, ディスエ?チ??ト]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1800
triggerall = var(59) <= 0 && Command = "DisEnchant"
triggerall = var(43) = 0 && Power >= 500
triggerall = StateType != A
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, アシッドク?ウド]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1900
triggerall = var(59) <= 0 && Command = "AsidCloud"
triggerall = var(44) = 0 && Power >= 500
triggerall = StateType != A
trigger1 = Ctrl

;------------------------------------------------------------------------------
;                                                   スキ?攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, ブ?ックマ?ト]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1000
triggerall = var(59) <= 0 && Command = "BlackMantle"
triggerall = var(35) = 0
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,220]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 変異ハエ叩き]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1100
triggerall = var(59) <= 0 && Command = "Flapper"
triggerall = var(36) = 0
trigger1 = Ctrl
trigger2 = StateNo = 55
trigger3 = StateNo = [200,220]
trigger4 = StateNo = [600,620]
trigger5 = StateNo = [1300,1310]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 位?変化]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1200
triggerall = var(59) <= 0 && Command = "PhaseShift"
triggerall = var(37) = 0
trigger1 = MoveType = H && Alive
trigger1 = StateNo != [120,155]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 箒ダッシ?後方]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1300
triggerall = var(59) <= 0 && Command = "BroomDash_B"
triggerall = var(38) = 0
trigger1 = Ctrl
trigger2 = StateNo = [200,220]
trigger3 = StateNo = [600,620]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 箒ダッシ?前方]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1310
triggerall = var(59) <= 0 && Command = "BroomDash_F"
triggerall = var(38) = 0
trigger1 = Ctrl
trigger2 = StateNo = [200,220]
trigger3 = StateNo = [600,620]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 改造シ???]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1400
triggerall = var(59) <= 0 && Command = "Doll-Shururu"
triggerall = var(39) = 0
triggerall = StateType != A
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, マジックミサイ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 1500
triggerall = var(59) <= 0 && Command = "MagicMissile"
triggerall = var(40) = 0
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,220]

;------------------------------------------------------------------------------
;                                                       移動関連
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 滞空]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 55
triggerall = var(59) <= 0 && Command = "holdup"
triggerall = StateType = A
triggerall = Pos Y < -30 && Vel Y > 0
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 前方ダッシ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 100
triggerall = var(59) <= 0 && Command = "FF"
triggerall = StateType = S
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 後方ダッシ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 105
triggerall = var(59) <= 0 && Command = "BB"
triggerall = StateType = S
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, バックステップ]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 106
triggerall = var(59) <= 0 && Command = "c"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = [200,220]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 前方空?ダッシ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 110
triggerall = var(59) <= 0 && Command = "FF"
triggerall = var(15) = 0
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 55
trigger3 = StateNo = 106
trigger4 = StateNo = [1300,1310]

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 後方空?ダッシ?]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 115
triggerall = var(59) <= 0 && Command = "BB"
triggerall = var(15) = 0
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 55
trigger3 = StateNo = 106
trigger4 = StateNo = [1300,1310]

;------------------------------------------------------------------------------
;                                                    特殊動作
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 挑発]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 195
triggerall = var(59) <= 0 && Command = "start"
triggerall = StateType != A
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 古代の図?館]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 900
triggerall = var(59) <= 0 && Command = "b"
triggerall = var(31) = 0
triggerall = StateType != A
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, クイックスタ?ディ?グ]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 5125
triggerall = var(59) <= 0 && Command = "c"
triggerall = StateType = L && Alive
trigger1 = StateNo = 5110

;------------------------------------------------------------------------------
;                                                     通常攻?
;------------------------------------------------------------------------------
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, ジ??プ?攻?（ジ??プ攻?２）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 610
triggerall = var(59) <= 0 && Command = "y"
triggerall = var(16) = [0,5]
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 55
trigger3 = StateNo = [1300,1310]
trigger4 = StateNo = 600 && (AnimElem = 3,>0 || MoveContact)

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, ジ??プ弱攻?（ジ??プ攻?１）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 600
triggerall = var(59) <= 0 && Command = "x"
triggerall = var(16) = [0,5]
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 55
trigger3 = StateNo = [1300,1310]
trigger4 = StateNo = 610 && (AnimElem = 4,>0 || MoveContact)

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 屈み強攻?（天?）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 420
triggerall = var(59) <= 0 && Command = "C_HardAttack"
triggerall = var(34) = 0
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,220]
trigger3 = StateNo = 410 && MoveContact

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 屈み?攻?（竜牙）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 410
triggerall = var(59) <= 0 && Command = "C_MiddleAttack"
triggerall = var(33) = 0
triggerall = StateType != A
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 屈み弱攻?（?花掌）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 400
triggerall = var(59) <= 0 && Command = "C_LightAttack"
triggerall = var(32) = 0
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 410 && MoveContact

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 立ち強攻?２（ダッシ?攻?）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 230
triggerall = var(59) <= 0 && Command = "DashAttack"
triggerall = StateType != A
trigger1 = Ctrl

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 立ち強攻?（通常３）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 220
triggerall = var(59) <= 0 && Command = "z"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210 && (AnimElem = 4,>0 || MoveContact)

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 立ち?攻?（通常２）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 210
triggerall = var(59) <= 0 && Command = "y"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && (AnimElem = 4,>0 || MoveContact)

;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
[State -1, 立ち弱攻?（通常１）]
;-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
type = ChangeState
value = 200
triggerall = var(59) <= 0 && Command = "x"
triggerall = StateType != A
trigger1 = Ctrl


;------------------------------------------------------------------------------
;■?式の?まり■
;
; [Command]         ：入力コマ?ドを１個定義する。
; name = "***"      ：コマ?ド名を?める。大文?と小文?も区別される。
; command = ###     ：実際に入力するキーを組み?わせる。詳細は後述。
; time = &&&        ：入力受付?間を設定（オプシ??）。
; buffer.time = @@@ ：入力記憶?間を設定（オプシ??）。
;
; 小ネタでも説明している通り、登録が可能な?は最大『１２８個』まで。
;
;※『必須コマ?ド名』と?いてるコマ?ドは、システ?側で??してます。
;　コマ?ド名を変えたり、消してはいけません。キーの変更は出?ます。
;
;------------------------------------------------------------------------------
;■必要なア?ファベットと記?■
;
; 上記の「command = ###」の『###』に該?する?分で、
; 組み?わせるキーとボタ?を設定しなければならない。
;
; ※設定したキーやボタ?はM.U.G.E.Nのオプシ???ードに?る
;  「キーコ?フィグ」にて設定したキーなどに対?しています。
;
; ?方向キー?（全て必ず大文?で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同?に入力された?を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同?に入力された?を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同?に入力された?を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同?に入力された?を認識）
;
; ?ボタ??（全て必ず小文?で）
;
; 　a 　：「Ａボタ?」を?す
; 　b 　：「Ｂボタ?」を?す
; 　c 　：「Ｃボタ?」を?す
; 　x 　：「Ｘボタ?」を?す
; 　y 　：「Ｙボタ?」を?す
; 　z 　：「Ｚボタ?」を?す
; 　s 　：「スタートボタ?」を?す
;
; ?記??（入力効果を変化させる命令）
;
; 　/ 　：（ス?ッシ?）キーやボタ?を「?しっぱなし」にしている?を認識する場?に追加する
;
; 　　（例）：　/b       = Ｂボタ?を?したままにする
; 　　　　　　　/F       = 前キーを?したままにする
; 　　　　　　　/U,z     = 上キーを?したままＺボタ?を入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チ?ダ）キーやボタ?が「離された?」を認識する場?に追加する
;
; 　　（例）：　~x       = Ｘボタ?を離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタ?の?番に入力する
;
; 　　　　　　※「ボタ?を離すまでの?間（溜め?間）」も設定する?が出?る
;
; 　　　　　　　~30x     = Ｘボタ?を?したままにして、３０フ?ー?以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フ?ー?まで溜めて前キー・Ａボタ?の?番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ド?）方向キーの「複?の内どれかが入力されている?」を認識する場?に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記?は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プ?ス）ボタ?を「同??し」している?を認識する場?に追加する
;
; 　　（例）：　x+y      = Ｘボタ?とＹボタ?を同??しする
; 　　　　　　　a+b+c    = Ａボタ?とＢボタ?とＣボタ?を同??しする
;
; 　　　　　　※この記?は「ボタ?」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グ?ーターザ?）大なり（Win版で追加された記?）
; 　　　　　　　　　　　　「他のキーが入力されていない?を確認して、そのキーを?す」場?
;
; 　　（例）：　a,>~a    = Ａボタ?以外が入力されていない状態でＡボタ?を離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ?これらの記?は全て組み?わせて使う?が出?る?
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フ?ー?まで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同??ししたままにする
;
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
