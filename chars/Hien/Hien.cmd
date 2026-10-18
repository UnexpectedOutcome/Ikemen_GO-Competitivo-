;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |----------------------------------------------------------- 第２部

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

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "Getter_XY"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "Getter_AB"
command = ~F, D, DF, a+b
time = 20

[Command]
name = "Vajra_XY"
command = D,D, x+y
time = 20

[Command]
name = "Vajra_AB"
command = D,D, a+b
time = 20

[Command]
name = "Vajra_XY"
command = D,D, x+y
time = 20

[Command]
name = "Tyr_AB"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "Tyr_XY"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Gungnir_AB"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Gungnir_XY"
command = ~D, DF, F, x+y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "Duran_A"
command = ~F, D, DF, a

[Command]
name = "Duran_B"
command = ~F, D, DF, b

[Command]
name = "Duran_X"
command = ~F, D, DF, x

[Command]
name = "Duran_Y"
command = ~F, D, DF, y

[Command]
name = "Tobi_A"
command = ~D, DF, F, a

[Command]
name = "Tobi_B"
command = ~D, DF, F, b

[Command]
name = "Tobi_X"
command = ~D, DF, F, x

[Command]
name = "Tobi_Y"
command = ~D, DF, F, y

[Command]
Name = "Tyr_Y"
Command = y, y, y
Time = 60

[Command]
Name = "Tyr_X"
Command = x, x, x
Time = 60

[Command]
Name = "Tyr_B"
Command = b, b, b
Time = 60

[Command]
Name = "Tyr_A"
Command = a, a, a
Time = 60

[Command]
name = "Vajra_A"
command = ~B, D, DB, a

[Command]
name = "Vajra_B"
command = ~B, D, DB, b

[Command]
name = "Vajra_X"
command = ~B, D, DB, x

[Command]
name = "Vajra_Y"
command = ~B, D, DB, y

[Command]
name = "Calad_A"
command = ~D, DB, B, a

[Command]
name = "Calad_B"
command = ~D, DB, B, b

[Command]
name = "Calad_X"
command = ~D, DB, B, x

[Command]
name = "Calad_Y"
command = ~D, DB, B, y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "DD_x"
command = /D, x

[Command]
name = "DD_b"
command = /D, b

[Command]
name = "DD_a"
command = /D, a

[Command]
name = "F_Y"
command = /D, a

[Command]
name = "Hold_A"
command = /a

[Command]
name = "Hold_B"
command = /b

[Command]
name = "Hold_X"
command = /x

[Command]
name = "Hold_Y"
command = /y

[Command]
name = "nage" ;必須コマンド名
command = a+x
time = 1

[Command]
name = "ushironage" ;必須コマンド名
command = /$B, x+a
time = 1

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
command = x+y
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

[Command]
name = "highjump"	;技の名前 発動条件で使う
command	= ~$D, $U

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

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

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

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, アポカリプス];
type = ChangeState
value = 3200
triggerall = (command = "Vajra_AB") || (command = "Vajra_XY")
triggerall = power >= 2000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = movecontact
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020 || stateno = 1030) &&movecontact
trigger6 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger7 = (stateno = 1300 || stateno = 1310 || stateno = 1326 || stateno = 1330)
trigger8 = (stateno = 1400 || stateno = 1410 || stateno = 1420 || stateno = 1430)

;------------------------------------------------------------------------------
[State -1, トツカノツルギ];
type = ChangeState
value = 3100
triggerall = (command = "Tyr_AB") || (command = "Tyr_XY")
triggerall = power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = statetype != A
trigger2 = movecontact
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020 || stateno = 1030) &&movecontact
trigger6 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger7 = (stateno = 1300 || stateno = 1310 || stateno = 1326 || stateno = 1330)
trigger8 = (stateno = 1400 || stateno = 1410 || stateno = 1420 || stateno = 1430)

;------------------------------------------------------------------------------
[State -1, グングニル];
type = ChangeState
value = 3000
triggerall = (command = "Gungnir_AB") || (command = "Gungnir_XY")
triggerall = power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = statetype != A
trigger2 = movecontact
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020 || stateno = 1030) &&movecontact
trigger6 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger7 = (stateno = 1300 || stateno = 1310 || stateno = 1326 || stateno = 1330)
trigger8 = (stateno = 1400 || stateno = 1410 || stateno = 1420 || stateno = 1430)

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
[State -1, 空中強フラガラッハ]
type = ChangeState
value = 1630
triggerall = command = "Tobi_Y"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact
trigger3 = (stateno = 1100 || stateno = 1110 || stateno = 1120)
trigger4 = (stateno = 1200 || stateno = 1210 || stateno = 1220)
trigger5 = (stateno = 1500 || stateno = 1510 || stateno = 1520) &&movecontact
trigger6 = (stateno = 1600 || stateno = 1610 || stateno = 1620)

[State -1, 空中強フラガラッハ]
type = ChangeState
value = 1620
triggerall = command = "Tobi_X"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

[State -1, 空中中フラガラッハ]
type = ChangeState
value = 1610
triggerall = command = "Tobi_B"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

[State -1, 空中弱フラガラッハ]
type = ChangeState
value = 1600
triggerall = command = "Tobi_A"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

;------------------------------------------------------------------------------
[State -1, 空中カラドボルグEX];ゲージ消費
type = ChangeState
value = 1530
triggerall = command = "Calad_Y"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact
trigger3 = (stateno = 1100 || stateno = 1110 || stateno = 1120)
trigger4 = (stateno = 1200 || stateno = 1210 || stateno = 1220)
trigger5 = (stateno = 1500 || stateno = 1510 || stateno = 1520) &&movecontact
trigger6 = (stateno = 1600 || stateno = 1610 || stateno = 1620)

[State -1, 空中カラドボルグ強]
type = ChangeState
value = 1520
triggerall = command = "Calad_X"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

[State -1, 空中カラドボルグ中]
type = ChangeState
value = 1510
triggerall = command = "Calad_B"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

[State -1, 空中カラドボルグ弱]
type = ChangeState
value = 1500
triggerall = command = "Calad_A"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

;------------------------------------------------------------------------------
[State -1, EXデュランダル]
type = ChangeState
value = 1430
triggerall = command = "Duran_Y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020) &&movecontact
trigger6 = (stateno = 1000 || stateno = 1110 || stateno = 1120) &&movecontact
trigger7 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger8 = (stateno = 1300 || stateno = 1310 || stateno = 1326)
trigger9 = (stateno = 1400 || stateno = 1410 || stateno = 1420)

[State -1, 強デュランダル]
type = ChangeState
value = 1420
triggerall = command = "Duran_X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 中デュランダル]
type = ChangeState
value = 1410
triggerall = command = "Duran_B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 弱デュランダル]
type = ChangeState
value = 1400
triggerall = command = "Duran_A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

;------------------------------------------------------------------------------
[State -1, EXフラガラッハ]
type = ChangeState
value = 1330
triggerall = command = "Tobi_Y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020) &&movecontact
trigger6 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger7 = (stateno = 1300 || stateno = 1310 || stateno = 1326)
trigger8 = (stateno = 1400 || stateno = 1410 || stateno = 1420)

[State -1, 強フラガラッハ]
type = ChangeState
value = 1320
triggerall = command = "Tobi_X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 中フラガラッハ]
type = ChangeState
value = 1310
triggerall = command = "Tobi_B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 弱フラガラッハ]
type = ChangeState
value = 1300
triggerall = command = "Tobi_A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

;------------------------------------------------------------------------------
[State -1, EXヴァジュラ];ゲージ消費
type = ChangeState
value = 1230
triggerall = command = "Vajra_Y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020) &&movecontact
trigger6 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger7 = (stateno = 1300 || stateno = 1310 || stateno = 1326)
trigger8 = (stateno = 1400 || stateno = 1410 || stateno = 1420)

[State -1,強ヴァジュラ]
type = ChangeState
value = 1220
triggerall = command = "Vajra_X"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 中ヴァジュラ]
type = ChangeState
value = 1210
triggerall = command = "Vajra_B"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 弱ヴァジュラ]
type = ChangeState
value = 1200
triggerall = command = "Vajra_A"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

;------------------------------------------------------------------------------
[State -1, EXティルフィング];ゲージ消費
type = ChangeState
value = 1130
triggerall = command = "Tyr_Y"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact
trigger6 = (stateno = 1000 || stateno = 1010 || stateno = 1020) &&movecontact
trigger7 = (stateno = 1100 || stateno = 1110 || stateno = 1120) &&movecontact
trigger8 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger9 = (stateno = 1300 || stateno = 1310 || stateno = 1326)
trigger10 = (stateno = 1400 || stateno = 1410 || stateno = 1420)

[State -1, 強ティルフィング]
type = ChangeState
value = 1120
triggerall = command = "Tyr_X"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 240) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger4 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

[State -1, 中ティルフィング]
type = ChangeState
value = 1110
triggerall = command = "Tyr_B"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 240) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger4 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

[State -1, 弱ティルフィング]
type = ChangeState
value = 1100
triggerall = command = "Tyr_A"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 240) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger4 = (stateno = 600 || stateno = 610 || stateno = 630) &&movecontact

;------------------------------------------------------------------------------
[State -1, EXカラドボルグ];ゲージ消費
type = ChangeState
value = 1030
triggerall = command = "Calad_Y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 230 || stateno = 240 || stateno = 250 || stateno = 700) &&movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact
trigger5 = (stateno = 1000 || stateno = 1010 || stateno = 1020) &&movecontact
trigger6 = (stateno = 1203 || stateno = 1213 || stateno = 1223)
trigger7 = (stateno = 1300 || stateno = 1310 || stateno = 1326)
trigger8 = (stateno = 1400 || stateno = 1410 || stateno = 1420)

[State -1, 強カラドボルグ]
type = ChangeState
value = 1020
triggerall = command = "Calad_X"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 中カラドボルグ]
type = ChangeState
value = 1010
triggerall = command = "Calad_B"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

[State -1, 弱カラドボルグ]
type = ChangeState
value = 1000
triggerall = command = "Calad_A"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) &&movecontact

;------------------------------------------------------------------------------
[State -1, 中段]
type = ChangeState
value = 700
triggerall = (command = "a") || (command = "b") || (command = "x") 
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 ) &&movecontact
trigger3 = (stateno = 400 || stateno = 410 ) &&movecontact

[State -1, ウラ！]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) && movecontact

[State -1, グルグル]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) && movecontact

[State -1, 立ちY]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) && movecontact

;------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
Type = ChangeState
TriggerAll = Command = "highjump"
Trigger1 = StateType != A
Trigger1 = Ctrl
Trigger2 = StateNo = 40
Trigger2 = (stateno = 420) && movecontact
Value = 41
Ctrl = 0

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 801
triggerall = command = "ushironage"
triggerall = statetype = S
trigger1 = ctrl

[State -1, 投げ]
type = ChangeState
value = 800
triggerall = command = "nage"
triggerall = statetype = S
trigger1 = ctrl

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 立ちA]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact

[State -1, 立ちB]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact

[State -1, 立ちX]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210) && movecontact

[State -1, 立ちY]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220) && movecontact

;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, しゃがみA]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact

[State -1, しゃがみB]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact

[State -1, しゃがみX]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230) && movecontact
trigger3 = (stateno = 400 || stateno = 410) && movecontact

;------------------------------------------------------------------------------
[State -1, ジャンプA]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl&& stateno!=105
trigger2 = (stateno = 600) && movecontact

[State -1, ジャンプB]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl&& stateno!=105
trigger2 = (stateno = 600) && movecontact

[State -1, ジャンプX]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl&& stateno!=105
trigger2 = (stateno = 600 || stateno = 610) && movecontact

[State -1, ジャンプY]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl&& stateno!=105
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) && movecontact

;------------------------------------------------------------------------------
