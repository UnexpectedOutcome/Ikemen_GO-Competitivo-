;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| コマンド |-----------------------------------------------------------------

[Command]
name = "236by"
command = ~D, DF, F, y+z

[Command]
name = "236yz"
command = ~F, D, DF, x+y
time = 16

[Command]
name = "214yz"
command = ~D, DB, B, x+y

[Command]
name = "236xy"
command = ~D, DF, F, x+y

[Command]
name = "214xy"
command = ~D, D, x+y
time = 16

[Command]
name = "236a"
command = ~D, DF, F, a

[Command]
name = "236b"
command = ~D, DF, F, b

[Command]
name = "236c"
command = ~D, DF, F, c

[Command]
name = "623a"
command = ~F, D, DF, a

[Command]
name = "623b"
command = ~F, D, DF, b

[Command]
name = "623c"
command = ~F, D, DF, c

[Command]
name = "236x"
command = ~D, DF, F, x

[Command]
name = "236y"
command = ~D, DF, F, y

[Command]
name = "236z"
command = ~D, DF, F, z

[Command]
name = "421x"
command = ~B, D, DB, x

[Command]
name = "421y"
command = ~B, D, DB, y

[Command]
name = "421z"
command = ~B, D, DB, z

[Command]
name = "214x"
command = ~D, DB, B, x

[Command]
name = "214y"
command = ~D, DB, B, y

[Command]
name = "214zstart"
command = ~D, DB, B, z+s

[Command]
name = "214z"
command = ~D, DB, B, z

[Command]
name = "623x"
command = ~F, D, DF, x

[Command]
name = "623y"
command = ~F, D, DF, y

[Command]
name = "623z"
command = ~D, DB, B, z

[Command]
name = "214a"
command = ~D, DB, B, a


[Command]
name = "214b"
command = ~D, DB, B, b

[Command]
name = "214c"
command = ~D, DB, B, c

[Command]
name = "2b"
command = ~D, b

[Command]
name = "22x"
command = D, D, x
time = 16

[Command]
name = "22y"
command = D, D, y
time = 16

[Command]
name = "22z"
command = D, D, z
time = 16

[Command]
name = "22a"
command = D, D, a
time = 16

[Command]
name = "4c"
command = /$B,x+a

[Command]
name = "6c"
command = /$F,x+a

[Command]
name = "2x"
command = /D,x

[Command]
name = "xy"
command =  x+y

[Command]
name = "az"
command =  a+z

[Command]
name = "6z"
command = /F,z

[Command]
name = "4z"
command = /B,z

[Command]
name = "2z"
command = /B,z

[Command]
name = "6y"
command = /F,y

[Command]
name = "4x"
command = /F,y+z

[Command]
name = "6x"
command = /F,x

[Command]
name = "2z"
command = /$D,z

[Command]
name = "2y"
command = /D,y

[Command]
name = "jump"    
command = ~$D,$U
time = 8


[Command]
name = "xz"
command = x+z

[Command]
name = "デバック"
command = ~D, DF, F, start

;------------------------------------------------------------------------------
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
command = x
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = z
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a
time = 1


[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "throw"
command = y＋z
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
name = "down_z"
command = /$D,z
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "fwdloop"
command = /F

[Command]
name = "back"
command = B
time = 1

[Command]
name = "backloop"
command = /B

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

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
;(パワー溜めステート用にコマンドを追加しています)
[Command]
name = "holdz"
command = /z

[Command]
name = "holdx"
command = /x

[Command]
name = "holda"
command = /a

[Command]
name = "holdc"
command = /c

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
;■AI(CPU)はどう動くのか
;MUGENの標準CPUは相手に近づき適当に攻撃を繰り出すだけなので、AIスイッチによる制御が必要なこともあります。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
[Statedef -1]

;デバック（確認終わったら必ず記述を消すこと）
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 3900
;;triggerall = var(16) = 800
;triggerall = var(58) = 0
;triggerall = var(20) = 0
;triggerall = command = "デバック"
;triggerall = command != "holddown"
;triggerall = statetype = S
;trigger1 = ctrl
;trigger2 = stateno = 426 || stateno = 427 || stateno = 428
;trigger2 = movehit
;trigger2 = time >= 0

;==============================================================================
;一撃必殺技
;==============================================================================
;エシリア・イン・ワンダーランド
[State -1, Stand Light Punch]
type = ChangeState
value = 3900
triggerall = fvar(16) = 600
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 3000 
triggerall = command = "236by"
triggerall = statetype != A
trigger1 = ctrl
;trigger2 = stateno = 426 ;なぎ払い
;trigger2 = movecontact
;trigger3 = stateno = 1300;サンダーシャーリア
;trigger3 = movecontact

;==============================================================================
;超必殺技
;==============================================================================

;ブライティアロンド
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 1000 
triggerall = command = "236yz"
triggerall = movetype != H
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger7 = AnimElem = 7 ,>=0
trigger8 = stateno = 211;エリアルレイヴ
trigger8 = movecontact

;クロックトリック・ディレイ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 2000 
triggerall = command = "214yz"
triggerall = movetype != H
triggerall = statetype != A
triggerall = numhelper(3205) = 0
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger7 = AnimElem = 7 ,>=0
trigger8 = stateno = 211;エリアルレイヴ
trigger8 = movecontact

;レボリューションカット
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 1000 
triggerall = command = "236xy"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger7 = AnimElem = 7 ,>=0
trigger8 = stateno = 211;エリアルレイヴ
trigger8 = movecontact

;ハイスピードシャッフル
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = var(8) = 0
triggerall = power >= 1000 
triggerall = command = "214xy"
triggerall = movetype != H
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger7 = AnimElem = 7 ,>=0
trigger8 = stateno = 211;エリアルレイヴ
trigger8 = movecontact
trigger9 = stateno = [1100,1120];トランプ
trigger10 = stateno = 52

;==============================================================================
;必殺技
;==============================================================================
;ゴー・フライ・クックー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "214x"
triggerall = movetype != H
;triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger5 = AnimElem = 7 ,>=0
trigger6 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger6 = movecontact

;マーチレインフォース
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "214y"
triggerall = movetype != H
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = stateno = 211;エリアルレイヴ
trigger5 = movecontact
trigger6 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger6 = AnimElem = 7 ,>=0
;マーチレインフォース
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "236y"
triggerall = movetype != H
triggerall = statetype != A
trigger1 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger1 = AnimElem = 7 ,>=0

;マーチレインフォース
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1410
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "214y"
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger2 = movecontact
trigger3 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger3 = AnimElem = 7 ,>=0

------------------------------------------------------
;サンダーシャーリア
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "623y"
triggerall = movetype != H
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
;trigger5 = stateno = 1400;マーチレインフォース
;trigger5 = movecontact
trigger6 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger6 = AnimElem = 7 ,>=0
trigger7 = stateno = 211;エリアルレイヴ
trigger7 = movecontact

;------------------------------------------------------------------------------
;オープン・ザ・ドアー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = command = "22y"
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = statetype != A
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = statetype != A
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = statetype != A
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = statetype != A
trigger7 = stateno = 211;エリアルレイヴ
trigger7 = movecontact
trigger8 = statetype != A
trigger8 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger8 = movecontact
trigger9 = statetype != A
trigger9 = stateno = [1110,1120];トランプ派生以降派生以降
trigger9 = time >= 28
trigger10 = statetype != A
trigger10 = stateno = 52

;追加オープン・ザ・ドアー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1505
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = command = "22z"
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = statetype != A
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = statetype != A
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = statetype != A
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = statetype != A
trigger7 = stateno = 211;エリアルレイヴ
trigger7 = movecontact
trigger8 = statetype != A
trigger8 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger8 = movecontact
trigger9 = statetype != A
trigger9 = stateno = [1110,1120];トランプ派生以降派生以降
trigger9 = time >= 28
trigger10 = statetype != A
trigger10 = stateno = 52

;オープン・ザ・ドアー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = command = "22x"
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = statetype != A
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = statetype != A
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = statetype != A
trigger5 = stateno = 1300;サンダーシャーリア
trigger5 = movecontact
trigger6 = stateno = 1400;マーチレインフォース
trigger6 = movecontact
trigger7 = statetype != A
trigger7 = stateno = 211;エリアルレイヴ
trigger7 = movecontact
trigger8 = statetype != A
trigger8 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger8 = movecontact
trigger9 = statetype != A
trigger9 = stateno = [1110,1120];トランプ派生以降派生以降
trigger9 = time >= 28
trigger10 = statetype != A
trigger10 = stateno = 52

;空中オープン・ザ・ドアー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1030
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = command = "22z"
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1410;マーチレインフォース
trigger2 = movecontact
trigger3 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger3 = movecontact
trigger4 = stateno = [1160,1170];トランプ派生以降
trigger4 = time >= 27
trigger5 = stateno = 1200
trigger5 = time >= 38

;空中オープン・ザ・ドアー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = command = "22y"
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1410;マーチレインフォース
trigger2 = movecontact
trigger3 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger3 = movecontact
trigger4 = stateno = [1160,1170];トランプ派生以降
trigger4 = time >= 27
trigger5 = stateno = 1200
trigger5 = time >= 38

;追加空中オープン・ザ・ドアー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1508
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = numhelper(1005) = 0
triggerall = numhelper(1006) = 0
triggerall = command = "22x"
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1410;マーチレインフォース
trigger2 = movecontact
trigger3 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger3 = movecontact
trigger4 = stateno = [1160,1170];トランプ派生以降
trigger4 = time >= 27
trigger5 = stateno = 1200
trigger5 = time >= 38

;------------------------------------------------------------------------------
;トリックスターストリーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "236x"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221 || stateno = 211;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;なぎ払い
trigger4 = movecontact
trigger5 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger5 = AnimElem = 7 ,>=0

;トリックスターストリーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1150
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = command = "236x"
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650;J通常攻撃
trigger2 = movecontact
trigger3 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
trigger3 = AnimElem = 7 ,>=0

;------------------------------------------------------------------------------


;投げ
[State -1, 0]
type = ChangeState
value = 980
triggerall = var(59) = 0
triggerall = Numhelper(2990) = 0
triggerall = movetype != H
triggerall = command = "6z"
triggerall = stateno != 100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X < 21
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;投げ
[State -1, 0]
type = ChangeState
value = 981
triggerall = var(59) = 0
triggerall = Numhelper(2990) = 0
triggerall = movetype != H
triggerall = command = "4z"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X < 22
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = movetype != H
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2050
trigger2 = movehit

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = movetype != H
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;空中前ダッシュ
[State -1, airdashF]
type = ChangeState
value = 103
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(4) != 0    ;ダッシュ残数が0の時はできない
triggerall = command = "FF" || var(23) = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = stateno != [100,119]
triggerall = vel y = [-10,10] ;高速落下時ダッシュ不可
triggerall = pos y != [-49,49]
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650
;trigger2 = movecontact

;空中後ダッシュ
[State -1, airdashB]
type = ChangeState
value = 108
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(4) != 0
triggerall = command = "BB" || var(23) = 2
triggerall = statetype = A
triggerall = movetype != H
triggerall = stateno != [100,119]
triggerall = vel y = [-10,10]
triggerall = pos y != [-45,45]
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650
;trigger2 = movecontact


[State -1, Air Jump Cancel]
type = ChangeState
value = 45
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = sysvar(4) = 0
triggerall = command = "holdup"    ;上を押す
triggerall = command != "holddown" ;下を離す
triggerall = statetype = A
triggerall = sysvar(1) <= 1
trigger1 = stateno = [600,610]
trigger1 = movecontact               ;攻撃が当たった時
trigger2 = stateno = 5210 
trigger2 = ctrl
trigger3 = stateno = 51  
trigger3 = ctrl

;------------------------------------------------------------------------------
;前方コロリン
[State -1, Stand Strong Punch]
type = ChangeState
value = 321
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(40) != 7
triggerall = command = "6c"
;triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;後方コロリン
[State -1, Stand Strong Punch]
type = ChangeState
value = 322
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(40) != 7
triggerall = command = "4c"
;triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;ガードキャンセル
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 1000 
triggerall = command = "4x"
triggerall = statetype != A
trigger1 = stateno = [140,155]

;チャンスメイク
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(17) = 0
triggerall = life >= 1
triggerall = power >= 2000 
triggerall = command = "az"
trigger1 = stateno = [5000,5200]

;エリアルレイブ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "6y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
;trigger4 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
;trigger4 = AnimElem = 6 ,>=0
;trigger6 = stateno = 211;エリアルレイヴ
;trigger6 = movecontact

;薙ぎ払い
[State -1, Stand Strong Punch]
type = ChangeState
value = 426
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "6z"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
;trigger4 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
;trigger4 = AnimElem = 6 ,>=0
trigger6 = stateno = 211;エリアルレイヴ
trigger6 = movecontact

;挑発
[State -1, Stand Light Punch]
type = ChangeState
value = 654
triggerall = command = "start"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl

;立ち弱
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movetype != H
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400 
trigger3 = movecontact
;trigger3 = var(15) = 0

;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = numhelper(3407) = 0
triggerall = var(20) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movetype != H
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 || stateno = 410 
trigger3 = movecontact
trigger3 = var(15) = 0

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 221
triggerall = var(59) = 0
;value = ifelse(P2BodyDist X < 25, 220, 221)
triggerall = var(20) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = movetype != H
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 || stateno = 210 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420 
trigger3 = movecontact
trigger3 = fvar(23) = 0
;trigger4 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
;trigger4 = AnimElem = 6 ,>=0

;------------------------------------------------------------------------------

;しゃがみ弱
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200 
trigger3 = movecontact
;trigger3 = var(15) = 0

;しゃがみ中
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 210 
trigger3 = movecontact
trigger3 = var(15) = 0

;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 200 || stateno = 210 || stateno = 221 
trigger4 = movecontact
trigger4 = fvar(23) = 0
;trigger5 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
;trigger5 = AnimElem = 7 ,>=0

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;エリアルスパイク
[State -1, Jump Strong]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "2z"
triggerall = stateno != 105
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 602 || stateno = 612
trigger5 = movecontact
trigger6 = stateno = 622 
trigger6 = movecontact

;空中弱
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = movetype != H
triggerall = statetype = A
triggerall = stateno != 105  ;バックステップ中は禁止
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 10
trigger3 = stateno = 602 
trigger3 = movecontact

;空中中
[State -1, Jump Middle]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "y"
triggerall = stateno != 105
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 602 
trigger3 = movecontact

;空中強
[State -1, Jump Strong]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "z"
triggerall = stateno != 105
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 602 || stateno = 612
trigger3 = movecontact

;シールド
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 9900
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "a"
triggerall = movetype != H
triggerall = statetype = S
trigger1 = ctrl

;しゃがんでシールド
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 9910
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "a"
triggerall = movetype != H
triggerall = statetype = C
trigger1 = ctrl

;空中シールド
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 9920
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "a"
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "holdup"    ;上を押す
triggerall = command != "holddown" ;下を離す
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = movehit            ;攻撃が当たった時
trigger2 = stateno = 210
trigger2 = movecontact            ;攻撃が当たった時
trigger3 = stateno = 221
trigger3 = movecontact            ;攻撃が当たった時
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 216
trigger5 = movehit            ;攻撃が当たった時
trigger6 = stateno = 431
trigger6 = movehit
trigger7 = stateno = 2401
trigger7 = time >= 39
trigger8 = stateno = 420
trigger8 = movehit
