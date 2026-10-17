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
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

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

;--------------------------------
[Command]
name = "tyuusya_1"
command = D,DB,B,a
time = 24

[Command]
name = "tyuusya_1"
command = D,DB,/B,a
time = 24

[Command]
name = "tyuusya_1"
command = D,DB,B,b
time = 24

[Command]
name = "tyuusya_1"
command = D,DB,/B,b
time = 24

[Command]
name = "tyuusya_1"
command = D,DB,B,c
time = 24

[Command]
name = "tyuusya_1"
command = D,DB,/B,c
time = 24
;--------------------------------
[Command]
name = "tyuusya_ranbu"
command = F,D,B,a
time = 20

[Command]
name = "tyuusya_ranbu"
command = F,D,B,b
time = 20

[Command]
name = "tyuusya_ranbu"
command = F,D,B,c
time = 20

[Command]
name = "tyuusya_ranbu"
command = F,D,/B,a
time = 20

[Command]
name = "tyuusya_ranbu"
command = F,D,/B,b
time = 20

[Command]
name = "tyuusya_ranbu"
command = F,D,/B,c
time = 20


;--------------------------------
[Command]
name = "dangan"
command = B,D,F,a
time = 24

[Command]
name = "dangan"
command = B,D,F,b
time = 24

[Command]
name = "dangan"
command = B,D,F,c
time = 24

[Command]
name = "dangan"
command = B,D,/F,a
time = 24

[Command]
name = "dangan"
command = B,D,/F,b
time = 24

[Command]
name = "dangan"
command = B,D,/F,c
time = 24

;--------------------------------
[Command]
name = "eisei"
command = B,D,F,a+b
time = 36

[Command]
name = "eisei"
command = B,D,/F,a+b
time = 36

;--------------------------------
[Command]
name = "yamainu"
command = F,D,B,a+b
time = 36

[Command]
name = "yamainu"
command = F,D,/B,a+b
time = 36


;---------------
[Command]
name = "kyouko"
command = D,DF,F,a
time = 24

[Command]
name = "kyouko"
command = D,DF,/F,a
time = 24

[Command]
name = "kyouko"
command = D,DF,F,b
time = 24

[Command]
name = "kyouko"
command = D,DF,/F,b
time = 24

[Command]
name = "kyouko"
command = D,DF,F,c
time = 24

[Command]
name = "kyouko"
command = D,DF,/F,c
time = 24

;---------------
[Command]
name = "kakato"
command = D,D,a
time = 24

[Command]
name = "kakato"
command = D,D,b
time = 24

[Command]
name = "kakato"
command = D,D,c
time = 24

;--------------------------
[Command]
name = "totsugeki"
command = B,F,a
time = 24

[Command]
name = "totsugeki"
command = B,F,b
time = 24

[Command]
name = "totsugeki"
command = B,F,c
time = 24

;--------------------------------
[Command]
name = "tsushin_1"
command = D,B,D,B,a
time = 36

[Command]
name = "tsushin_1"
command = D,B,D,/B,a
time = 36

[Command]
name = "tsushin_1"
command = D,B,D,B,b
time = 36

[Command]
name = "tsushin_1"
command = D,B,D,/B,b
time = 36

[Command]
name = "tsushin_1"
command = D,B,D,B,c
time = 36

[Command]
name = "tsushin_1"
command = D,B,D,/B,c
time = 36

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
挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall= var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;避け
[State -1, Back Step]
type = ChangeState
value = 1000
;triggerall= var(59)=0
trigger1 = command = "x"
trigger1 = statetype = S
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

;■必殺技■
[State -1, 山狗攻撃]
type = ChangeState
value = 2100
triggerall= life < lifemax / 3 || var(50)!=0
triggerall = command = "yamainu"
triggerall=  var(59)=0
triggerall = power >= 3000
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 衛星攻撃]
type = ChangeState
value = 1700
triggerall= var(59)=0
triggerall = command = "eisei"
triggerall = power >= 3000
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;■必殺技じゃないけど、ここに配置
[State -1, ヒート]
type = ChangeState
value = 4000
triggerall= var(59)=0
triggerall = power >= 1000
triggerall = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(56) = 0
trigger2 = statetype = S
trigger2 = movetype = H


[State -1, 運命の弾丸]
type = ChangeState
value = 1500
riggerall= var(59)=0
triggerall = command = "dangan"
triggerall = power >= 2000
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 210 && MoveContact;立ち強攻撃1
trigger4 = stateno = 220 && MoveContact;立ち強攻撃2
trigger5 = stateno = 230 && MoveContact;立ち超攻撃1
trigger6 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger7 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger8 = stateno = 420 && MoveContact;しゃがみ超攻撃1

[State -1, 強固な意志]
type = ChangeState
value = 1600
;triggerall= var(59)=0
triggerall = command = "kyouko"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 210 && MoveContact;立ち強攻撃1
trigger4 = stateno = 220 && MoveContact;立ち強攻撃2
trigger5 = stateno = 230 && MoveContact;立ち超攻撃1
trigger6 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger7 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger8 = stateno = 420 && MoveContact;しゃがみ超攻撃1



[State -1, 注射器乱舞（地上）]
type = ChangeState
value = 1400
triggerall= var(59)=0
triggerall = command = "tyuusya_ranbu"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 210 && MoveContact;立ち強攻撃1
trigger4 = stateno = 220 && MoveContact;立ち強攻撃2
trigger5 = stateno = 230 && MoveContact;立ち超攻撃1
trigger6 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger7 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger8 = stateno = 420 && MoveContact;しゃがみ超攻撃1

[State -1, 注射器乱舞（空中）]
type = ChangeState
value = 1450
triggerall= var(59)=0
triggerall = command = "tyuusya_ranbu"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;ジャンプ弱攻撃1
trigger3 = stateno = 610 && MoveContact;ジャンプ強攻撃1
trigger4 = stateno = 620 && MoveContact;ジャンプ超強攻撃1
trigger5 = stateno = 625;ジャンプ超攻撃1の後のバック転中

[State -1, 航空支援「乙」地上]
type = ChangeState
value = 2000
;triggerall= var(59)=0
triggerall = command = "tsushin_1"
;triggerall = command != "holddown"
triggerall = NumHelper(2010)=0;未設置なら可能
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 航空支援「乙」空中]
type = ChangeState
value = 2005
;triggerall= var(59)=0
triggerall = command = "tsushin_1"
;triggerall = command != "holddown"
triggerall = NumHelper(2010)=0;未設置なら可能
triggerall = power >= 150
trigger1 = statetype = A
trigger1 = ctrl


[State -1, 注射器（地上）]
type = ChangeState
value = 1100
triggerall= var(59)=0
triggerall = command = "tyuusya_1"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 210 && MoveContact;立ち強攻撃1
trigger4 = stateno = 220 && MoveContact;立ち強攻撃2
trigger5 = stateno = 230 && MoveContact;立ち超攻撃1
trigger6 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger7 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger8 = stateno = 420 && MoveContact;しゃがみ超攻撃1

[State -1, 注射器（空中）]
type = ChangeState
value = 1150
triggerall= var(59)=0
triggerall = command = "tyuusya_1"
;triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;ジャンプ弱攻撃1
trigger3 = stateno = 610 && MoveContact;ジャンプ強攻撃1
trigger4 = stateno = 620 && MoveContact;ジャンプ超攻撃1
trigger5 = stateno = 625;ジャンプ超攻撃1の後のバック転中


[State -1, 突撃3];突撃2からのみつながる
type = ChangeState
value = 1920
;triggerall= var(59)=0
triggerall = command = "totsugeki"
;triggerall = command != "holddown"
trigger1 = stateno = 1910 && MoveContact;突撃2

[State -1, 突撃2];突撃1からのみつながる
type = ChangeState
value = 1910
;triggerall= var(59)=0
triggerall = command = "totsugeki"
;triggerall = command != "holddown"
trigger1 = stateno = 1900 && MoveContact;突撃


[State -1, 突撃]
type = ChangeState
value = 1900
;triggerall= var(59)=0
triggerall = command = "totsugeki"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 210 && MoveContact;立ち強攻撃1
trigger4 = stateno = 220 && MoveContact;立ち強攻撃2
trigger5 = stateno = 230 && MoveContact;立ち超攻撃1
trigger6 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger7 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger8 = stateno = 420 && MoveContact;しゃがみ超攻撃1

[State -1, 踵落とし]
type = ChangeState
value = 1800
triggerall= var(59)=0
triggerall = command = "kakato"
;triggerall = command != "holddown"
;trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 210 && MoveContact;立ち強攻撃1
trigger4 = stateno = 220 && MoveContact;立ち強攻撃2
trigger5 = stateno = 230 && MoveContact;立ち超攻撃1
trigger6 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger7 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger8 = stateno = 420 && MoveContact;しゃがみ超攻撃1
trigger9 = stateno = 600 && MoveContact;ジャンプ弱攻撃1
trigger10 = stateno = 610 && MoveContact;ジャンプ強攻撃1
trigger11 = stateno = 620 && MoveContact;ジャンプ超攻撃1
trigger12 = stateno = 625;ジャンプ超攻撃1の後のバック転中



[State -1, 立ち攻撃1（弱）]
type = ChangeState
value = 200
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1

[State -1, 立ち攻撃2（強）]
type = ChangeState
value = 220
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
;trigger1 = statetype = S
;trigger1 = ctrl
trigger1 = stateno = 210 && MoveContact;立ち強攻撃1



[State -1, 立ち攻撃1（強）]
type = ChangeState
value = 210
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1

[State -1, 立ち攻撃2（超）]
type = ChangeState
value = 240
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "c"
trigger1 = stateno = 230 && MoveContact;立ち超攻撃1
trigger1 = (animelem >= 5, >=1)

[State -1, 立ち攻撃1（超）]
type = ChangeState
value = 230
triggerall= var(59)=0
triggerall = command != "holddown"
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact;立ち弱攻撃1
trigger3 = stateno = 220 && MoveContact;立ち強攻撃2
trigger3 = (animelem >= 6, >=1)

[State -1, しゃがみ攻撃1（弱）]
type = ChangeState
value = 400
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;しゃがみ弱攻撃1

[State -1, しゃがみ攻撃2（強）]
type = ChangeState
value = 415
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "b"
;trigger1 = statetype = C
;trigger1 = ctrl
trigger1 = stateno = 410 && MoveContact;しゃがみ強攻撃1

[State -1, しゃがみ攻撃1（強）]
type = ChangeState
value = 410
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;しゃがみ弱攻撃1

[State -1, しゃがみ攻撃1（超）]
type = ChangeState
value = 420
triggerall= var(59)=0
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact;しゃがみ弱攻撃1
trigger3 = stateno = 410 && MoveContact;しゃがみ強攻撃1
trigger4 = stateno = 415 && MoveContact;しゃがみ強攻撃2

[State -1, ジャンプ攻撃1（弱）]
type = ChangeState
value = 600
triggerall= var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ攻撃1（強）]
type = ChangeState
value = 610
triggerall= var(59)=0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;ジャンプ弱攻撃1

[State -1, ジャンプ攻撃1（超）]
type = ChangeState
value = 620
triggerall= var(59)=0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact;ジャンプ弱攻撃1
trigger3 = stateno = 610 && MoveContact;ジャンプ強攻撃1
trigger3 = (animelem >= 4, >=1)

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



