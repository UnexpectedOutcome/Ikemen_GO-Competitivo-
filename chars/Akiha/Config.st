; vim: set ts=4 sw=4 sts=4 expandtab: =========================================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;==============================================================================;
;                           [ ユーザコンフィグ ]                               ;
;==============================================================================;
[Statedef 9000]
type = S
anim = 9999
ctrl = 0

;==============================================================================;
; ボイス種類選択
;
; var(50) = 0   : MBAC
;         = 1   : MBAA
;==============================================================================;
[State 9000:            Select Voice]
type     = VarSet
trigger1 = 1
v        = 50
;value    = 0            ; MBAC
;value    = 1            ; MBAA
value    = (Root,PalNo = [7, 12])

;==============================================================================;
; ゲージシステム選択 (ビットフラグ)
;
; var(51)[0]    : MAX                       (0:無 1:有)
; var(51)[1]    : HEATシステム              (0:無 1:有)
; var(51)[2]    : サーキットスパーク        (0:無 1:有)
; var(51)[4]    : チャージ                  (0:無 1:有)
;
; ※1 HEATシステムOFF時は、アナザーアークドライブ / ラストアーク 使用不可能
; ※2 HEATシステムOFF時は、特殊カラーのゲージがUNLIMITEDに固定
;==============================================================================;
;[State 9000:            Select Gauge System]
;type     = VarSet
;trigger1 = 1
;v        = 51
;value    = 1 | 2 | 4 | 16

[State 9000:            Select Gauge System (MAX)]
type     = VarSet
trigger1 = 1
v        = 51
value    = var(51) | 1

[State 9000:            Select Gauge System (HEAT / BLOOD HEAT)]
type     = VarSet
trigger1 = 1
v        = 51
value    = var(51) | 2

[State 9000:            Select Gauge System (CIRCUIT SPARK)]
type     = VarSet
trigger1 = 1
v        = 51
value    = var(51) | 4

[State 9000:            Select Gauge System (CHARGE)]
type     = VarSet
trigger1 = 1
v        = 51
value    = var(51) | 16

;==============================================================================;
; ガードシステム選択 (ビットフラグ)
;
; var(52)[0]    : シールド有無              (0:無 1:有)
; var(52)[1]    : ブロッキング有無          (0:無 1:有)
; var(52)[2]    : ジャストディフェンス有無  (0:無 1:有)
;
; [一覧]
; ----------------------------------------------------------
;    値    | ガードシステム
; ----------------------------------------------------------
;     0    | 特殊防御無し
;     1    | シールド
;     2    | ブロッキング
;     3    | シールド + ブロッキング
;     4    | ジャストディフェンス
;     5    | シールド + ジャストディフェンス
;     6    | ブロッキング + ジャストディフェンス
;     7    | シールド + ブロッキング + ジャストディフェンス
; ----------------------------------------------------------
;==============================================================================;
[State 9000:            Select Guard System]
type     = VarSet
trigger1 = 1
v        = 52
;value    = 0            ; None
;value    = 1            ; Shield
;value    = 2            ; Blocking
;value    = 3            ; Shield + Blocking
;value    = 4            ; Just Defence
;value    = 5            ; Shield + Just Defence
value    = 6            ; Blocking + Just Defence
;value    = 7            ; Shield + Blocking + Just Defence

;[State 9000:            Select Guard System (Shield)]
;type     = VarSet
;trigger1 = 1
;v        = 52
;value    = var(52) | 1
;
;[State 9000:            Select Guard System (Blocking)]
;type     = VarSet
;trigger1 = 1
;v        = 52
;value    = var(52) | 2
;
;[State 9000:            Select Guard System (Just Defence)]
;type     = VarSet
;trigger1 = 1
;v        = 52
;value    = var(52) | 4

;==============================================================================;
; 超必殺技エフェクト選択
;
; var(53) = 0   : CVS (SNK GROOVE)
;         = 1   : CVS (CAP GROOVE)
;==============================================================================;
[State 9000:            Select Hyper-Spark Effect Groove]
type     = VarSet
trigger1 = 1
v        = 53
value    = 0        ; CVS SNK GROOVE
;value    = 1        ; CVS CAP GROOVE

;==============================================================================;
; 特殊カラー
;
; var(54) = 0   : なし
;         = 1   : ゲージ無制限
;         = 2   : 常時HEAT       (= 黒)
;         = 3   : 常時BLOOD HEAT (= 金)
;==============================================================================;
[State 9000:            Special Color]
type     = VarSet
trigger1 = Root,PalNo = [1, 9]
v        = 54
value    = 0

[State 9000:            Special Color (UNLIMITED)]
type     = VarSet
trigger1 = Root,PalNo = 10
trigger2 = Root,var(58) = -2            ; Training Mode
v        = 54
value    = 1

[State 9000:            Special Color (BLACK)]
type     = VarSet
trigger1 = Root,PalNo = 11
v        = 54
value    = 2

[State 9000:            Special Color (GOLD)]
type     = VarSet
trigger1 = Root,PalNo = 12
v        = 54
value    = 3

;==============================================================================;
; コンボ補正最低HIT数
;
; コンボ補正が掛かり始めるために必要なHIT数
;
; var(55) > 0   : 補正開始HIT数
;         <= 0  : 補正なし (のはず)
;==============================================================================;
[State 9000:            Hit Count for Start Attack Correction by Combo]
type     = VarSet
trigger1 = 1
v        = 55
value    = 2

;==============================================================================;
; コンボ補正率
;
; コンボ補正時に一発あたりに掛かる補正率
;
; fvar(38) > 1  : コンボがつながるほど攻撃力上昇
;          < 1  : コンボがつながるほど攻撃力減少
;==============================================================================;
[State 9000:            Attack Correction Ratio for Combo]
type     = VarSet
trigger1 = 1
fv       = 38
value    = 0.90

;==============================================================================;
; SuperPause中相手防御力補正率
;
; ※1 コンボ中のみ (= 相手が食らい状態) 効果を発揮。
; ※2 連続の場合乗算される (補正率 ^ SuperPause回数)
;
; fvar(39) = 0  : mugen.cfgによる設定
;          = 1  : 補正なし (生ダメージ)
;          < 1  : 防御力低下 (ダメージ増加)
;          > 1  : 防御力上昇 (ダメージ減少)
;==============================================================================;
[State 9000:            Enemy Defence Correction in SuperPause]
type     = VarSet
trigger1 = 1
fv       = 39
value    = 1.25

;==============================================================================;
;                      [ ユーザコンフィグ ここまで ]                           ;
;==============================================================================;


;==============================================================================;
;                          [ コンフィグシステム ]                              ;
;==============================================================================;
;------------------------------------------------------------------------------;
; 反映
;------------------------------------------------------------------------------;
[State 9000:            Set Voice Type]
type     = ParentVarSet
trigger1 = 1
v        = 50
value    = var(50)

[State 9000:            Set Gauge System]
type     = ParentVarSet
trigger1 = 1
v        = 51
value    = var(51)

[State 9000:            Set Guard System]
type     = ParentVarSet
trigger1 = 1
v        = 52
value    = var(52)

[State 9000:            Set Hyper-Spark Groove]
type     = ParentVarSet
trigger1 = 1
v        = 53
value    = var(53)

[State 9000:            Set Special Color]
type     = ParentVarSet
trigger1 = 1
v        = 54
value    = var(54)

[State 9000:            Set Attack Correction]
type     = ParentVarSet
trigger1 = 1
v        = 55
value    = var(55)

[State 9000:            Set Attack Correction Ratio]
type     = ParentVarSet
trigger1 = 1
fv       = 38
value    = fvar(38)

[State 9000:            Set Enemy Defence Correction in SuperPause]
type     = ParentVarSet
trigger1 = 1
fv       = 39
value    = fvar(39)

;------------------------------------------------------------------------------;
; ヘルパー破棄
;------------------------------------------------------------------------------;
[State 9000:            Destroy]
type     = DestroySelf
trigger1 = RoundState > 1


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date$
;==============================================================================;
