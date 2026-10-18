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
;　　　　　　　　　　command = haruhi-H.cnsB,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = haruhi-H.cnsc　　　（Ｃボタンを離す）
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
; 後は実際に登録されているものを参照してください。
;==============================================================================

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
[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI_19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

;-| コマンド |-----------------------------------------------------------------

[Command]
name = "236by"
command = ~D, DF, F, b+y

[Command]
name = "236236x"
command = ~D, DF, F, D, DF, F, x
time = 40

[Command]
name = "214yz"
command = ~D, DB, B, y+z

[Command]
name = "214214x"
command = ~D, DB, B, D, DB, B, x
time = 40

[Command]
name = "214214y"
command = ~D, DB, B, D, DB, B, y
time = 40

[Command]
name = "41236yz"
command = ~B, DB, D, DF, F, y+z

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
command = ~F, D, DF, z

[Command]
name = "41236x"
command = ~B, DB, D, DF, F, x


[Command]
name = "41236y"
command = ~B, DB, D, DF, F, y

[Command]
name = "41236z"
command = ~B, DB, D, DF, F, z
[Command]
name = "2b"
command = ~D, b

[Command]
name = "22x"
command = ~D, D, x

[Command]
name = "22y"
command = ~D, D, y

[Command]
name = "22z"
command = ~D, D, z

[Command]
name = "22a"
command = ~D, D, a

[Command]
name = "4c"
command = /B,c

[Command]
name = "6c"
command = /F,c

[Command]
name = "2x"
command = /D,x

[Command]
name = "xy"
command =  x+y

[Command]
name = "6x"
command = /F,x

[Command]
name = "6z"
command = /F,z

[Command]
name = "2z"
command = /B,z

[Command]
name = "6y"
command = /F,y

[Command]
name = "4x"
command = /B,x

[Command]
name = "6x"
command = /F,x

[Command]
name = "2z"
command = /D,z

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
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
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
name = "back"
command = B
time = 1

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
name = "holdy"
command = /y

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

;---------------------------------------------------------------------------
[State -1 ,ALL AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
v = 59
value = 1

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*500)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*500)
trigger2 = roundstate != 2
v = 59
value = 0
;---------------------------------------------------------------------------
; Taunt AI
[State -1, Taunt AI]
type = ChangeState
value = 654
triggerall = var(59) != 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = roundstate = 3
trigger1 = win
trigger1 = prevstateno != 654
;--|-AI Defense-|-----------------------------------------------------------
;INTELIGENCE ARTIFICIAL [PRO]
;AI Guarding

;---------------------------------------------
[State -1, AI Stand Guarding]
type = ChangeState
value = 130
triggerall = stateno != 130
triggerall = fvar(0) = 1
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = p2statetype != C
triggerall = inguarddist
trigger1 = statetype != A && ctrl
;---------------------------------------------
[State -1, AI Crouch Guarding]
type = ChangeState
value = 131
triggerall = stateno != 131
triggerall = fvar(0) = 1
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = p2statetype = C
triggerall = inguarddist
trigger1 = statetype != A && ctrl
;---------------------------------------------
[State -1, AI Air Guarding]
type = ChangeState
value = 132
triggerall = stateno != 132
triggerall = fvar(0) = 1
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = inguarddist
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 40
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1 = AILevel >= 4
trigger1 = random<var(50)*2.0
trigger2 = random<var(50)*2.0
trigger2 = enemynear,statetype = A
trigger2 = enemynear,movetype = H
trigger2 = AILevel > 3
;---------------------------------------------------------------------------
[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 999

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5

;===========================================================================
;Combo #1

;Combo #2
[State -1,AI Crouching Light Kick]
type = ChangeState
value = 400
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,20])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 200
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,20])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 212
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,40])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 222
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,50])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 211
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,20])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 410
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,20])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 411
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,20])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 421
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,20])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 600
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 610
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 620
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])
;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 650
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

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

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype = A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [60,115])
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [60,115])
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2statetype = A)
trigger1 = (p2bodydist x <= 270) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [60,115])
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 75) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [60,115])
triggerall = Life <= 250
value = 3900

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 500) && (numproj = 0) && (random = [60,115])
value = 1122

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,120])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 30) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010
;==============================================================================
;一撃必殺技
;==============================================================================
;最後の審判
[State -1, Stand Light Punch]
type = ChangeState
value = 3900
;triggerall = fvar(16) = 600
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "236by"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = anim = 215 || anim = 221 ;溜め通常
trigger2 = movecontact


;==============================================================================
;超必殺技
;==============================================================================
;魔女に与える鉄槌
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 1000 
triggerall = command = "214214x"
triggerall = movetype != H
triggerall = statetype != S
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620;空中通常攻撃
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1011 || stateno = 1021 ;飛槍
trigger3 = movecontact


;異端審問
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(51) = 0
triggerall = var(8) = 0
triggerall = power >= 1000 
triggerall = command = "214214y"
triggerall = movetype != H
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 1301 || stateno = 1311 ;食い物
trigger4 = movehit
trigger4 = time > 20
trigger5 = stateno = 211;エリアルレイヴ
trigger5 = movecontact

;ブランディアロンド
;[State -1, Strong Kung Fu Palm]
;type = ChangeState
;value = 3300
;triggerall = var(59) = 0
;triggerall = var(20) = 0
;triggerall = power >= 1000 
;triggerall = command = "214214y"
;triggerall = movetype != H
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
;trigger2 = movecontact
;trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
;trigger3 = movecontact
;trigger4 = stateno = 426;なぎ払い
;trigger4 = movecontact
;trigger5 = anim = 1000+var(8)*50+120000*var(12) ;オープン・ザ・ドアー
;trigger5 = AnimElem = 6 ,>=0
;trigger6 = stateno = 211;エリアルレイヴ
;trigger6 = movecontact

;聖槍ロンギヌス
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = power >= 1000 
triggerall = command = "236236x"
triggerall = movetype != H
triggerall = statetype != A
triggerall = numhelper(3205) = 0
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 211;レイヴ
trigger2 = movecontact
trigger3 = stateno = 1301 || stateno = 1311 ;食い物
trigger3 = movehit
trigger3 = time > 20
trigger4 = helper(1325),movehit;食い物EX


;==============================================================================
;必殺技
;==============================================================================
;------------------------------------------------------------------------------
;縛鎖結界
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "41236x"
triggerall = movetype != H
triggerall = var(51) = 0
triggerall = numhelper(1205) = 0
trigger1 = ctrl


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1215
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "41236y"
triggerall = movetype != H
triggerall = var(51) = 0
triggerall = numhelper(1205) = 0
trigger1 = ctrl


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1220
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "41236z"
triggerall = movetype != H
triggerall = var(51) = 0
triggerall = numhelper(1205) = 0
triggerall = power >= 500 
trigger1 = ctrl

;食い物粗末にするんじゃねえ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "421x"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "421y"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1320
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "421z"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
triggerall = power >= 500
trigger1 = ctrl



;打突
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "214x"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;柄撃ち
trigger4 = movecontact


;打突
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "214y"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;柄撃ち
trigger4 = movecontact

;打突
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1120
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "214z"
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(51) = 0
triggerall = power >= 500 
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;柄撃ち
trigger4 = movecontact

------------------------------------------------------
;飛槍
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "623x"
triggerall = movetype != H
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;柄撃ち
trigger4 = movecontact
trigger5 = stateno = 211;エリアルレイヴ
trigger5 = movecontact

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "623y"
triggerall = movetype != H
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;柄撃ち
trigger4 = movecontact
trigger5 = stateno = 211;エリアルレイヴ
trigger5 = movecontact

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "623z"
triggerall = movetype != H
;triggerall = statetype != A
triggerall = power >= 500 
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact
trigger4 = stateno = 426;柄撃ち
trigger4 = movecontact
trigger5 = stateno = 211;エリアルレイヴ
trigger5 = movecontact
;------------------------------------------------------------------------------




;------------------------------------------------------------------------------

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = movetype != H
triggerall = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2050
trigger2 = movehit
trigger3 = helper(1325),movehit;食い物EX
trigger4 = stateno = 1301 || stateno = 1311
trigger4 = movehit
trigger4 = time > 20

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
triggerall = pos y != [-50,50]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger3 = time >= 79

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
triggerall = pos y != [-50,50]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger3 = time >= 79

;投げ
;[State -1, 0]
;type = ChangeState
;value = 980
;triggerall = var(59) = 0
;triggerall = Numhelper(2990) = 0
;triggerall = movetype != H
;triggerall = command = "6x"
;;triggerall = command = "holdfwd" || command = "holdback"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger1 = stateno != [100,199]
;trigger1 = p2bodydist X < 5
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H

;------------------------------------------------------------------------------

;ガードキャンセル
;[State -1, Strong Kung Fu Palm]
;type = ChangeState
;value = 2000
;triggerall = var(59) = 0
;triggerall = var(20) = 0
;triggerall = power >= 1000 
;triggerall = command = "4x"
;triggerall = statetype != A
;trigger1 = stateno = [140,155]

;チャンスメイク
;[State -1, Strong Kung Fu Palm]
;type = ChangeState
;value = 2100
;triggerall = var(59) = 0
;triggerall = var(20) = 0
;triggerall = var(17) = 0
;triggerall = life >= 1
;triggerall = power >= 2000 
;triggerall = command = "c"
;trigger1 = stateno = [5000,5200]

;エリアルレイブ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "6y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 221;立ち通常攻撃
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420;屈み通常攻撃
trigger3 = movecontact


;柄撃ち
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
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movetype != H
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400 
trigger3 = movecontact
trigger3 = var(15) = 0

;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = numhelper(3407) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
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
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = movetype != H
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 || stateno = 210 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420 
trigger3 = movecontact
trigger3 = var(15) = 0


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
trigger3 = var(15) = 0

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
trigger4 = var(15) = 0


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;エリアルスパイク
[State -1, Jump Strong]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
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
trigger5 = stateno = 1021
trigger4 = enemynear,movetype = H
trigger4 = animelem = 4 ,>=0


;空中弱
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = movetype != H
triggerall = statetype = A
triggerall = stateno != 105  ;バックステップ中は禁止
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 602 
trigger3 = movecontact
trigger4 = stateno = 1021
trigger4 = enemynear,movetype = H
trigger4 = animelem = 4 ,>=0

;空中中
[State -1, Jump Middle]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = stateno != 105
triggerall = movetype != H
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 602 
trigger3 = movecontact
trigger4 = stateno = 1021
trigger4 = enemynear,movetype = H
trigger4 = animelem = 4 ,>=0

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
trigger4 = stateno = 1021
trigger4 = enemynear,movetype = H
trigger4 = animelem = 4 ,>=0



;------------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = !var(58)
triggerall = Var(59) <= 0
triggerall = command = "holdup"    ;上を押す
triggerall = command != "holddown" ;下を離す
triggerall = statetype != A
trigger1 = stateno = 211
trigger1 = movecontact            ;攻撃が当たった時
trigger2 = stateno = 426
trigger2 = movehit            ;攻撃が当たった時
trigger3 = stateno = 1301
trigger3 = movehit            ;攻撃が当たった時
trigger3 = time >= 20
trigger4 = stateno = 1311
trigger4 = movecontact
trigger4 = time >= 20

