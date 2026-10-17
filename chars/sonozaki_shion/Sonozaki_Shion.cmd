; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
;後は実際に登録されているものを参照してください。

;【コマンド定義部】
; AI スイッチ用コマンド
[Command]
Name    = "AI_00"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_01"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_02"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_03"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_04"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_05"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_06"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_07"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_08"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_09"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_10"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_11"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_12"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_13"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_14"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_15"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_16"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_17"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_18"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_19"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_20"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_21"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_22"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_23"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_24"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_25"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_26"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_27"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_28"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_29"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_30"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_31"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_32"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_33"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_34"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_35"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_36"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_37"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_38"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_39"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_40"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_41"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_42"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_43"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_44"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_45"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_46"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_47"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_48"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_49"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_50"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_51"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_52"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_53"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_54"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_55"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_56"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_57"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_58"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_59"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

[Command]
Name    = "AI_60"
Command = D, DF, F, UF, U, UB, B, DB, D, a, b, c, x, y, z
Time    = 0

;投げ


;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 14

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 14

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
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
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;■　コマンド　■■■■■■■■■■■■■■■■■

;■八点衝
[Command]
name = "hatten"
command = B,D,F,a
time = 24

[Command]
name = "hatten"
command = B,D,F,b
time = 24

[Command]
name = "hatten"
command = B,D,F,c
time = 24

[Command]
name = "hatten"
command = B,D,/F,a
time = 24

[Command]
name = "hatten"
command = B,D,/F,b
time = 24

[Command]
name = "hatten"
command = B,D,/F,c
time = 24

;■スピニングクロスナイフ
[Command]
name = "totugeki"
command = F,DF,D,DB,B,a+b
time = 24

[Command]
name = "totugeki"
command = F,DF,D,DB,/B,a+b
time = 24

;■贖罪
[Command]
name = "syokuzai"
command = B,D,F,a+b
time = 24

[Command]
name = "syokuzai"
command = B,D,/F,a+b
time = 24

;■超出力サンダーストーム
[Command]
name = "thunder"
command = F,D,B,F,a+b
time = 30

[Command]
name = "thunder"
command = F,D,B,/F,a+b
time = 30


;■サマーソルトキック
[Command]
name = "sama"
command = D,DF,F,a
time = 24

[Command]
name = "sama"
command = D,DF,F,b
time = 24

[Command]
name = "sama"
command = D,DF,F,c
time = 24

[Command]
name = "sama"
command = D,DF,/F,a
time = 24

[Command]
name = "sama"
command = D,DF,/F,b
time = 24

[Command]
name = "sama"
command = D,DF,/F,c
time = 24

;■当身投げ
[Command]
name = "atemi"
command = B,F,a
time = 14

[Command]
name = "atemi"
command = B,F,b
time = 14

[Command]
name = "atemi"
command = B,F,c
time = 14

[Command]
name = "atemi"
command = B,/F,a
time =14

[Command]
name = "atemi"
command = B,/F,b
time = 14

[Command]
name = "atemi"
command = B,/F,c
time = 14

;■一文字カッター
[Command]
name = "itimonji"
command = D,DB,B,a
time = 24

[Command]
name = "itimonji2"
command = D,DB,B,b
time = 24

[Command]
name = "itimonji2"
command = D,DB,B,c
time = 24

[Command]
name = "itimonji"
command = D,DB,/B,a
time = 24

[Command]
name = "itimonji2"
command = D,DB,/B,b
time = 24

[Command]
name = "itimonji2"
command = D,DB,/B,c
time = 24


;■疾風速投げ
[Command]
name = "kousoku"
command = D,D,y
time = 20

;[Command]
;name = "kousoku"
;command = D,/D,y
;time = 20

;■八穿
[Command]
name = "hassen"
command = D,D,a
time = 20

;[Command]
;name = "hassen"
;command = D,/D,a
;time = 20

[Command]
name = "hassen"
command = D,D,b
time = 20

;[Command]
;name = "hassen"
;command = D,/D,b
;time = 20

[Command]
name = "hassen"
command = D,D,c
time = 20

;[Command]
;name = "hassen"
;command = D,/D,c
;time = 20

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------
; 次の行は絶対に消さないでください。必須の項目です。

[Statedef -1]

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall= var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;前転避け(しゃがみ)
[State -1, Back Step]
type = ChangeState
value = 1010
trigger1 = command = "x"
trigger1 = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;後転避け(しゃがみ)
[State -1, Back Step]
type = ChangeState
value = 1020
trigger1 = command = "x"
trigger1 = command = "holdback"
trigger1 = statetype = C
trigger1 = ctrl

;通常避け(立ち＆しゃがみ)
[State -1, Back Step]
type = ChangeState
value = 1000
triggerall= var(59)=0
trigger1 = command = "x"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl






;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
;triggerall= var(59)=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl





;------------------------------------------------------------------------------

;■攻撃_ゲージ技_Lv3_地上(超出力サンダーストーム)
[State -1, 攻撃_ゲージ技_Lv3_地上 ]
type = ChangeState
value = 2500
triggerall= var(59)=0
triggerall = command = "thunder"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger15 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃

;■攻撃_ゲージ技_Lv3_地上(贖罪)
[State -1, 攻撃_ゲージ技_Lv3_地上 ]
type = ChangeState
value = 2800
triggerall= var(59)=0
triggerall = command = "syokuzai"
triggerall = power >= 3000
Triggerall = P2Name != "sonozaki_mion"
Triggerall = P3Name != "sonozaki_mion"
Triggerall = P4Name != "sonozaki_mion"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger15 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃


;■攻撃_ゲージ技_Lv2_地上(スピニングクロスナイフ)
[State -1, 攻撃_ゲージ技_Lv2_地上、空中 ]
type = ChangeState
value = 2200
triggerall= var(59)=0
triggerall = command = "totugeki"
triggerall = power >= 2000
;trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger15 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃
trigger16 = stateno = 600 && MoveContact;攻撃_ジャンプ_弱1
trigger17 = stateno = 610 && MoveContact;攻撃_ジャンプ_強1
trigger18 = stateno = 611 && MoveContact;攻撃_ジャンプ_強2
trigger19 = stateno = 620 && MoveContact;攻撃_ジャンプ_特1
trigger20 = stateno = 2300 && MoveContact;攻撃_必殺技_サマーソルト

;■攻撃_ゲージ技_Lv1_地上(八点衝)
[State -1, 攻撃_ゲージ技_Lv1_地上 ]
type = ChangeState
value = 2000
triggerall= var(59)=0
triggerall = command = "hatten"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger15 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃

;■攻撃_必殺技1_空中地上(サマーソルトキック)
[State -1, 攻撃_必殺技1_空中地上 ]
type = ChangeState
value = 2300
triggerall= var(59)=0
triggerall = command = "sama"
;trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 600 && MoveContact;攻撃_ジャンプ_弱1
trigger15 = stateno = 610 && MoveContact;攻撃_ジャンプ_強1
trigger16 = stateno = 611 && MoveContact;攻撃_ジャンプ_強2
trigger17 = stateno = 620 && MoveContact;攻撃_ジャンプ_特1
trigger18 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger19 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃



;■攻撃_必殺技3_地上(一文字カッター弱)
[State -1, 攻撃_必殺技3_地上 ]
type = ChangeState
value = 2700
triggerall= var(59)=0
triggerall = command = "itimonji"
triggerall = NumHelper(2710) = 0
triggerall = NumHelper(2711) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger15 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃

;■攻撃_必殺技3_地上(一文字カッター強)
[State -1, 攻撃_必殺技3_地上 ]
type = ChangeState
value = 2701
triggerall= var(59)=0
triggerall = command = "itimonji2"
triggerall = NumHelper(2710) = 0
triggerall = NumHelper(2711) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱1
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱2
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱3
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2
trigger8 = stateno = 220 && MoveContact;攻撃_立ち_特
trigger9 = stateno = 400 && MoveContact;攻撃_立ち_弱
trigger10 = stateno = 410 && MoveContact;攻撃_立ち_強
trigger11 = stateno = 411 && MoveContact;攻撃_立ち_強2
trigger12 = stateno = 420 && MoveContact;攻撃_立ち_特
trigger13 = stateno = 421 && MoveContact;攻撃_立ち_特2
trigger14 = stateno = 700 && MoveContact;ダッシュ攻撃
trigger15 = stateno = 710 && MoveContact;ダッシュしゃがみ攻撃

;■攻撃_必殺技2_空中(アサルトナイフ)
[State -1, 攻撃_空中 ]
type = ChangeState
value = 2250
triggerall= var(59)=0
triggerall = command = "itimonji" || command = "itimonji2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 610 && MoveContact;攻撃_立ち_強1
trigger4 = stateno = 611 && MoveContact;攻撃_立ち_強2
trigger5 = stateno = 620 && MoveContact;攻撃_立ち_特
trigger6 = stateno = 2410 && MoveContact;八穿（攻撃ステート）


;■攻撃_必殺技2_空中(八穿)
[State -1, 攻撃_空中 ]
type = ChangeState
value = 2400
triggerall= var(59)=0
triggerall = command = "hassen"
trigger1 = statetype != A
trigger1 = ctrl

;■特殊_ヒートアップ
[State -1, 特殊_ヒートアップ ]
type = ChangeState
value = 4000
triggerall= var(59)=0
triggerall = var(56)=0
triggerall = command = "recovery"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;■攻撃_疾風投げ_地上
[State -1, 攻撃_疾風投げ_地上 ]
type = ChangeState
value = 2600
triggerall= var(59)=0
triggerall = command = "kousoku"
trigger1 = statetype != A
trigger1 = ctrl

;■攻撃_当身投げ_地上
[State -1, 攻撃_当身投げ_地上 ]
type = ChangeState
value = 2100
triggerall= var(59)=0
triggerall = command = "atemi"
trigger1 = statetype != A
trigger1 = ctrl

;■攻撃_しゃがみ_ダッシュ
[State -1, 攻撃_立ち_ダッシュ ]
type = ChangeState
value = 710
triggerall= var(59)=0
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = prevStateNo = 100 || stateNo =100
trigger1 = command = "a" || command = "b" || command = "c"

;■攻撃_立ち_ダッシュ
[State -1, 攻撃_立ち_ダッシュ ]
type = ChangeState
value = 700
triggerall= var(59)=0
triggerall = StateNo = 100
trigger1 = command = "a" || command = "b" || command = "c"


;■攻撃_立ち_弱4
[State -1, 攻撃_立ち_弱4 ]
type = ChangeState
value = 203
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = stateno = 202 && MoveContact;攻撃_立ち_弱3

;■攻撃_立ち_弱3
[State -1, 攻撃_立ち_弱3 ]
type = ChangeState
value = 202
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = stateno = 201 && MoveContact;攻撃_立ち_弱2

;■攻撃_立ち_弱2
[State -1, 攻撃_立ち_弱2 ]
type = ChangeState
value = 201
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = stateno = 200 && MoveContact;攻撃_立ち_弱

;■攻撃_立ち_弱
[State -1, 攻撃_立ち_弱 ]
type = ChangeState
value = 200
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 400 && MoveContact;攻撃_しゃがみ_弱

;■攻撃_立ち_強2
[State -1, 攻撃_立ち_強 ]
type = ChangeState
value = 211
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = stateno = 210 && MoveContact;攻撃_立ち_強

;■攻撃_立ち_強
[State -1, 攻撃_立ち_強 ]
type = ChangeState
value = 210
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱2
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱3

;■攻撃_立ち_特
[State -1, 攻撃_立ち_特 ]
type = ChangeState
value = 220
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;攻撃_立ち_弱
trigger3 = stateno = 201 && MoveContact;攻撃_立ち_弱2
trigger4 = stateno = 202 && MoveContact;攻撃_立ち_弱3
trigger5 = stateno = 203 && MoveContact;攻撃_立ち_弱4
trigger6 = stateno = 210 && MoveContact;攻撃_立ち_強
trigger7 = stateno = 211 && MoveContact;攻撃_立ち_強2

;■攻撃_しゃがみ_弱
[State -1, 攻撃_しゃがみ_弱 ]
type = ChangeState
value = 400
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;攻撃_しゃがみ_弱

;■攻撃_しゃがみ_強2
[State -1, 攻撃_しゃがみ_強2 ]
type = ChangeState
value = 411
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = stateno = 410 && MoveContact;攻撃_しゃがみ_強

;■攻撃_しゃがみ_強
[State -1, 攻撃_しゃがみ_強 ]
type = ChangeState
value = 410
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;攻撃_しゃがみ_弱

;■攻撃_しゃがみ_特
[State -1, 攻撃_しゃがみ_特 ]
type = ChangeState
value = 420
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "c"
TriggerAll = P2BodyDist X-EnemyNear,vel x*3+vel x*3 <= 25
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;攻撃_しゃがみ_弱
trigger3 = stateno = 410 && MoveContact;攻撃_しゃがみ_強
trigger4 = stateno = 411 && MoveContact;攻撃_しゃがみ_強2

;■攻撃_しゃがみ_特2
[State -1, 攻撃_しゃがみ_特2]
type = ChangeState
value = 421
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "c"
TriggerAll = P2BodyDist X-EnemyNear,vel x*3+vel x*3 >= 25
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;攻撃_しゃがみ_弱
trigger3 = stateno = 410 && MoveContact;攻撃_しゃがみ_強
trigger4 = stateno = 411 && MoveContact;攻撃_しゃがみ_強2

;■攻撃_ジャンプ_特
[State -1, 攻撃_ジャンプ_特]
type = ChangeState
value = 620
triggerall= var(59)=0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && MoveContact;攻撃_ジャンプ_強
trigger3 = stateno = 611 && MoveContact;攻撃_ジャンプ_強2
trigger4 = stateno =2300 && MoveContact;サマーソルトキック


;■攻撃_ジャンプ_強2
[State -1, 攻撃_ジャンプ_強2]
type = ChangeState
value = 611
triggerall= var(59)=0
triggerall = command = "b"
trigger1 = stateno = 610 && MoveContact;攻撃_ジャンプ_強

;■攻撃_ジャンプ_強
[State -1, 攻撃_ジャンプ_強]
type = ChangeState
value = 610
triggerall= var(59)=0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;攻撃_ジャンプ_弱
 
;■攻撃_ジャンプ_弱
[State -1, 攻撃_ジャンプ_弱]
type = ChangeState
value = 600
triggerall= var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;攻撃_ジャンプ_弱



;■ 投げ ■■■■■■■■■■■■■■■■■■■■■■■■■■■
[State -1]
type = ChangeState
value = 800
triggerall= var(59)=0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (command = "y") && (command = "holdback")
trigger2 = (command = "y") && (command = "holdfwd")
trigger3 = (command = "y") 





;■AI設定

[State -1,AI]
type = Varset
TriggerAll = ((Var(59) = 0) && (RoundState != 3))
TriggerAll = Var(59) = 0
trigger1 = command = "AI_00"
trigger2 = command = "AI_01"
trigger3 = command = "AI_02"
trigger4 = command = "AI_03"
trigger5 = command = "AI_04"
trigger6 = command = "AI_05"
trigger7 = command = "AI_06"
trigger8 = command = "AI_07"
trigger9 = command = "AI_08"
trigger10= command = "AI_09"
trigger11= command = "AI_10"
trigger12= command = "AI_11"
trigger13= command = "AI_12"
trigger14= command = "AI_13"
trigger15= command = "AI_14"
trigger16= command = "AI_15"
trigger17= command = "AI_16"
trigger18= command = "AI_17"
trigger19= command = "AI_18"
trigger20= command = "AI_19"
trigger21= command = "AI_20"
trigger22= command = "AI_21"
trigger23= command = "AI_22"
trigger24= command = "AI_23"
trigger25= command = "AI_24"
trigger26= command = "AI_25"
trigger27= command = "AI_26"
trigger28= command = "AI_27"
trigger29= command = "AI_28"
trigger30= command = "AI_29"
trigger31= command = "AI_30"
trigger32= command = "AI_31"
trigger33= command = "AI_32"
trigger34= command = "AI_33"
trigger35= command = "AI_34"
trigger36= command = "AI_35"
trigger37= command = "AI_36"
trigger38= command = "AI_37"
trigger39= command = "AI_38"
trigger40= command = "AI_39"
trigger41= command = "AI_40"
trigger42 = command = "AI_41"
trigger43 = command = "AI_42"
trigger44 = command = "AI_43"
trigger45 = command = "AI_44"
trigger46 = command = "AI_45"
trigger47 = command = "AI_46"
trigger48 = command = "AI_47"
trigger49 = command = "AI_48"
trigger50 = command = "AI_49"
trigger51 = command = "AI_50"
trigger52 = command = "AI_51"
trigger53 = command = "AI_52"
trigger54 = command = "AI_53"
trigger55 = command = "AI_54"
trigger56 = command = "AI_55"
trigger57 = command = "AI_56"
trigger58 = command = "AI_57"
trigger59 = command = "AI_58"
trigger60 = command = "AI_59"
trigger61 = command = "AI_60"

v = 59
;■下の"Value = 7"となっている数字の箇所を1～10で指定し、CPUのAIレベルを変更できます。
;■（10が最強）。
value = 7
IgnoreHitPause = 1



