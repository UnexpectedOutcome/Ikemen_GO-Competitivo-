
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
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 

[Defaults]
command.time = 13  ;標準のコマンド入力受付時間。
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
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

;空気投げ
;[Command]
;name = "kuukinage"      ;日本語のコマンド名も使える
;command = D,DB,B,y+b
;time = 20

;園崎スペシャル
[Command]
name = "sonozakisp"
command = D,DF,F,y+b
time = 25
buffer.time = 3

[Command]
name = "sonozakisp"
command = ~D,DF,F,y+b
time = 25
buffer.time = 3

[Command];カーネージナター
name = "ka-ne-ji"
command = D,DB,B,y+b
time = 25
buffer.time = 3

[Command];カーネージナター
name = "ka-ne-ji"
command = ~D,DB,B,y+b
time = 25
buffer.time = 3

[Command];詩音崩天刃
name = "ho-ten"
command = F,D,DF,y+b
time = 21
buffer.time = 3

[Command];詩音崩天刃
name = "ho-ten"
command = ~F,D,DF,y+b
time = 21
buffer.time = 3

[Command];ハリケーンミキサー
name = "harike-n"
command = B,D,DB,y+b
time = 21
buffer.time = 3

[Command];ハリケーンミキサー
name = "harike-n"
command = ~B,D,DB,y+b
time = 21
buffer.time = 3

[Command];バスターホームラン
name = "BH"
command = B,DB,D,DF,F,y+b
time = 25
buffer.time = 4

[Command];バスターホームラン
name = "BH"
command = ~B,DB,D,DF,F,y+b
time = 25
buffer.time = 4

[Command];にぱにぱタイム
name = "rika"
command = D,DF,F,s
time = 15
buffer.time = 1

[Command];にぱにぱタイム
name = "rika"
command = ~D,DF,F,s
time = 15
buffer.time = 1

[Command];トラップマスター
name = "satoko"
command = D,DB,B,s
time = 15
buffer.time = 1

[Command];トラップマスター
name = "satoko"
command = ~D,DB,B,s
time = 15
buffer.time = 1
;***********************************

;駄目押しの一撃
[Command]
name = "dameosi"
command = D,D,b
time = 15

[Command]
name = "dameosi"
command = ~D,D,b
time = 15

;***********************************
;ガトリング砲
;[Command]
;name = "gatoring"
;command = ~D,DB,B,F,a
;time = 20

;暴徒鎮圧用放水銃;
[Command]
name = "housui"
command = ~D,DF,F,a+x
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;***********************************
;ステップ格闘;
[Command]
name = "stepkakutou x"
command = ~D,DF,F,x

[Command]
name = "stepkakutou y"
command = ~D,DF,F,y

[Command]
name = "stepkakutou b"
command = ~D,DF,F,b

;***********************************
;当身;
[Command]
name = "atemi x"
command = B,D,DB,x

[Command]
name = "atemi x"
command = ~B,D,DB,x
time = 13

[Command]
name = "atemi y"
command = B,D,DB,y

[Command]
name = "atemi y"
command = ~B,D,DB,y
time = 13

[Command]
name = "atemi b"
command = B,D,DB,b

[Command]
name = "atemi b"
command = ~B,D,DB,b
time = 13

[Command]
name = "airatemi x"
command = B,D,DB,x

[Command]
name = "airatemi x"
command = ~B,D,DB,x


;***********************************
;フランケンシュタイナー
[Command]
name = "furan"
command = ~D,DB,B,b

;***********************************
;シュタイナーフェイント
[Command]
name = "furanbl"
command = ~D,DB,B,x

;***********************************
;シュタイナー追い討ち
[Command]
name = "oiuti"
command = ~D,b

;***********************************
;園崎ロケットランチャー
[Command]
name = "rokeran"
command = ~D,DF,F,a

;***********************************
;空中園崎ロケットランチャー
[Command]
name = "airrokeran"
command = ~D,DF,F,a



;------------------------------------------------------------------------------
;-| 特殊技 |-------------------------------------------------------------------

;[Command]
;name = "fwd_a"
;command = /$F,x
;time = 5

[Command]
name = "fwd_a"
command = a
time = 5

[Command]
name = "fwd_b"
command = /$F,a
time = 5

[Command]
name = "fwd_c"
command = /$F,b
time = 5

[Command]
name = "3c"
command = /$DF,b
time = 7

[Command]
name = "a-2c"
command = /$D,b
time = 7


;***********************************
;ハイジャンプ
[Command]
name = "hi_jump"
command = $D,$U
time = 7

[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

***********************************


;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 10

[Command]
name = "UF"       ;必須コマンド名
command = $UF,F
time = 15

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 13

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "Bnage"
command = /$B,x+a
time = 3

[Command]
name = "nage"
command = x+a
time = 3

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

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














[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,c,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,z,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,a,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,z,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,a,z,z,z,z,z,x,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,U,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = b,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,a,b,b,a,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,a,b,c,c,c,c,c,z,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,y,x,x,x,x,x,x,x,x,x,x,x,x,z,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,c,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,b,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,a,z,s,s,b,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,s,F,F,F,F,F,F,F,F,b,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,a,D,D,D,D,D,z,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,z,B,B,B,B,B,B,s,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,s,U,U,U,U,U,U,U,U,a,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,s,a,a,a,a,a,a,a,a,a,s,a,a,a,a,z,a,a
time = 0
[Command]
name = "AI30"
command = c,a,c,c,s,z,a,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,a,x,z,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,s,y,y,y,y,y,y,y,y,y,y,y,y,a
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,z,s,s,s,s,s,s,s,x,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,x,z,z,z,s,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,b,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,y,z,a,a,a,a,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,b,y,b
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,b,z,z,a,z,y,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = s,z,z,z,z,z,a,b,c,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = s,z,z,z,a,z,z,z,z,z,z,z,s,z,a,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,a,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = b,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,b,z
time = 0
[Command]
name = "AI46"
command = z,c,z,z,c,z,z,z,a,a,a,a,c,a,z,z,c,z,z
time = 0
[Command]
name = "AI47"
command = z,z,c,a,a,a,a,z,z,z,z,s,z,z,z,s,z,z,z
time = 0
[Command]
name = "AI48"
command = s,z,x,x,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = s,s,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = x,x,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0



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
; スーパーアーツ
;==============================================================================
;-----------------------------------------------------------------------------

;-----------------------------------------------------------------------------
;必殺技発動（地上技）
[State -1, リバサ用]
type = ChangeState
value = Var(0)
triggerall = Var(0) > 999
TriggerAll = Var(59) = 0
trigger1   = statetype = S || statetype = C
trigger1   = stateno = 5001               ; 喰らい回復
trigger1   = HitOver
trigger2   = statetype = S || statetype = C
trigger2   = stateno = 5011               ; 屈喰らい回復
trigger2   = HitOver
trigger3   = stateno = 5120               ; 起きあがり
trigger3   = AnimTime = 0

;リバーサル記述
[State -1, 詩音崩天刃]
type       = Varset
triggerall = var(10) = 0
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
triggerall   = Command = "ho-ten"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
v          = 0
value      = 3100

;リバーサル記述
[State -1, ハリケーンミキサー]
type       = Varset
triggerall = var(10) = 0
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
triggerall   = Command = "harike-n"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
v          = 0
value      = 3200

;リバーサル記述
[State -1, 園崎ＳＰ]
type       = Varset
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
triggerall = var(23) <= 0
triggerall = Command = "sonozakisp"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
v          = 0
value      = 2000

;リバーサル記述
[State -1, 暴徒制圧用放水銃]
type       = Varset
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
triggerall   = Command = "housui"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
v          = 0
value      = 2200

;リバーサル記述
[State -1, カーネージナター]
type       = Varset
triggerall = var(10) = 0
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
triggerall   = Command = "ka-ne-ji"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
v          = 0
value      = 3000


;リバーサル記述
[State -1, バスターホームラン]
type       = Varset
TriggerAll = Var(59) = 0
triggerall = var(10) = 0
triggerall = (Power > 999)
triggerall   = Command = "BH"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
v          = 0
value      = 3300


;リバーサル記述
[State -1, トラップマスター]
type       = Varset
TriggerAll = Var(59) = 0
triggerall = var(10) = 0
triggerall = (Power > 999)
triggerall   = Command = "satoko"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
v        = 0
value    = 3500


;リバーサル記述
[State -1, にぱにぱタイム]
type       = Varset
triggerall = var(11) = 0
TriggerAll = Var(59) = 0
triggerall = (Power > 999)
triggerall = Command = "rika"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
v        = 0
value    = 3400


;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "atemi x"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1600

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "atemi y"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1610

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "atemi b"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1620

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "airatemi x"
TriggerAll = Var(59) = 0
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = [600,640]) && (MoveContact)
v          = 0
value      = 1630

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "rokeran"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1400

[State -1,　詩音崩天刃]
type = ChangeState
triggerall = (command = "ho-ten")
TriggerAll = Var(59) = 0
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
;;■■■地上スーパーキャンセル■■■
;trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 3100

[State -1, ハリケーンミキサー]
type = ChangeState
triggerall = (command = "harike-n")
TriggerAll = Var(59) = 0
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
;;■■■地上スーパーキャンセル■■■
;trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 3200

[State -1, バスターホームラン]
type = ChangeState
triggerall = (command = "BH")
TriggerAll = Var(59) = 0
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
;;■■■地上スーパーキャンセル■■■
;trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 3300

[State -1, 園崎ＳＰ]
type = ChangeState
triggerall = (command = "sonozakisp")
TriggerAll = Var(59) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
triggerall = var(23) <= 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
;;■■■地上スーパーキャンセル■■■
;trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 2000


;------------------------------------------------------------------------------

[State -1, 園崎ＳＰ 派生]
type = ChangeState
triggerall = (Power >= 1000) 
triggerall = (command = "dameosi")
triggerall = (StateType != A)
TriggerAll = Var(59) = 0
;trigger1 = (StateType != A) && (Ctrl)
trigger1 = (StateNo = 2000) && (MoveHit= 37)
trigger1 = !Win
value = 2002

;----------------------------------------------------------------------------------
[State -1, 暴徒制圧用放水銃]
type = ChangeState
triggerall = (command = "housui")
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1201) && (MoveContact)
value = 2200

[State -1, カーネージナター]
type = ChangeState
triggerall = (command = "ka-ne-ji")
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
;;■■■地上スーパーキャンセル■■■
;trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 3000


[State -1, トラップマスター]
type = ChangeState
triggerall = (command = "satoko")
triggerall = var(10) = 0
TriggerAll = Var(59) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 3500

[State -1, にぱにぱタイム]
type = ChangeState
triggerall = (command = "rika")
triggerall = var(11) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,429]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
trigger4 = (StateNo = 1100) 
trigger5 = (StateNo = 1201) && (MoveContact)
value = 3400


;==============================================================================
; 必殺技
;==============================================================================
[State -1, 当身技]
type = ChangeState
triggerall = command = "atemi x"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 220) && (MoveContact)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1600

[State -1, 当身技]
type = ChangeState
triggerall = command = "atemi y"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 220) && (MoveContact)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1610


[State -1, 当身技]
type = ChangeState
triggerall = command = "atemi b"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 220) && (MoveContact)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1620

[State -1, 当身技]
type = ChangeState
triggerall = command = "airatemi x"
TriggerAll = Var(59) = 0
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
trigger4 = (StateNo = 620) && (MoveContact)
trigger5 = (StateNo = 640) && (MoveContact)
value = 1630


;------------------------------------------------------------------------------
[State -1, フランケンシュタイナー]
type = ChangeState
triggerall = command = "furan"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 220) && (MoveContact)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1300

[State -1, フランケンシュタイナーフェイント]
type = ChangeState
triggerall = command = "furanbl"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 220) && (MoveContact)
value = 1350

[State -1, フランケンシュタイナー追い討ち]
type = ChangeState
triggerall = command = "oiuti"
TriggerAll = Var(59) = 0
trigger1 = (StateNo = 1301) && (Time = [55,67])
value = 1370

[State -1, ステップ格闘弱]
type = ChangeState
triggerall = command = "stepkakutou x"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 240) && (MoveHit)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1000

[State -1, ステップ格闘中]
type = ChangeState
triggerall = command = "stepkakutou y"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 220) && (MoveContact)
trigger5 = (StateNo = 400) && (MoveContact)
trigger6 = (StateNo = 410) && (MoveContact)
trigger7 = (StateNo = 420) && (MoveContact)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1100

[State -1, ステップ格闘強]
type = ChangeState
triggerall = command = "stepkakutou b"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 240) && (MoveHit)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1200

[State -1, ロケットランチャー]
type = ChangeState
triggerall = command = "rokeran"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
trigger6 = (StateNo = 420) && (MoveContact)
trigger7 = (StateNo = 220) && (MoveContact)
trigger8 = (StateNo = 1000) && (MoveContact)
trigger9 = (StateNo = 1200) 
trigger10 = (StateNo = 1201) && (MoveContact)
trigger11 = (StateNo = 240) && (MoveContact)
trigger12 = (StateNo = 250) && (MoveContact)
value = 1400

[State -1, ロケットランチャー]
type = ChangeState
triggerall = command = "airrokeran"
TriggerAll = Var(59) = 0
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
trigger4 = StateNo = 620 
trigger5 = (StateNo = 640) && (MoveContact)
value = 1500


;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 投げ]
type = ChangeState
triggerall = (command = "Bnage")
TriggerAll = Var(59) = 0
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
trigger1 = (StateType != A)
trigger1 = (StateType != C)
trigger1 = (Ctrl)
value = 802

[State -1, 投げ]
type = ChangeState
triggerall = (command = "nage")
TriggerAll = Var(59) = 0
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
trigger1 = (StateType != A)
trigger1 = (Ctrl)
value = 800

;※「trigger*」も条件の付け方によって何個でも増やせる。

;空中投げ
[State -1, 投げ]
type = ChangeState
triggerall= (command = "nage")
TriggerAll = Var(59) = 0
triggerall = (StateType = A)
trigger1 = (Ctrl)
value = 810

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, 移動起き上がり]
type = ChangeState
triggerall = (Alive)
TriggerAll = Var(59) = 0
triggerall = (RoundState = 2) && (StateNo = [5110,5111]) && (MoveType = H) && (Time > 5)
trigger1 = (command = "holdfwd") || (command = "holdback")
value = 10002

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
triggerall = (StateNo != 100)
TriggerAll = Var(59) = 0
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
value = 100

[State -1, バックステップ]
type = ChangeState
triggerall = (StateNo != 100)
TriggerAll = Var(59) = 0
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
value = 105

;リバーサル記述
[State -1, バックステップ]
type       = Varset
triggerall = (StateNo != 100)
TriggerAll = Var(59) = 0
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
v          = 0
value      = 1500

[State -1, 空中ダッシュ]
type = ChangeState
triggerall = (Pos Y < -65)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
TriggerAll = Var(59) = 0
trigger1 = (command = "FF") && (StateType = A) && (Ctrl)
trigger2 = (command = "UF") && (StateType = A) && (Ctrl)
value = 101

[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = (Pos Y < -45)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
TriggerAll = Var(59) = 0
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
value = 106

[State -1, ハイジャンプ]
type = ChangeState
TriggerAll = Var(59) = 0
trigger1 = (command = "hi_jump") && (StateType != A) && (Ctrl)
value = 10003

[State -1, ジャンプキャンセル]
type = ChangeState
TriggerAll = Var(59) = 0
trigger1 = (command = "holdup") &&  (StateNo = 420)
trigger1 = AnimElemTime(6) = 1 
trigger2 = (command = "holdup") &&  (StateNo = 210)
trigger2 = AnimElem = 4
trigger3 = (command = "holdup") &&  (StateNo = 240)
trigger3 = AnimElem = 5 && (MoveHit) 
value = 40

;==============================================================================
; 通常攻撃技
;==============================================================================

[State -1, 6a]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "fwd_b")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 250

[State -1, a]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "fwd_a")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
value = 240

[State -1, 6c]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "fwd_c")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 260

[State -1, 3c]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "3c")
trigger1 = (StateType !=A) && (Ctrl)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
trigger2 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 240) && (MoveContact)
;trigger8 = (StateNo = 250) && (MoveContact)
value = 430
;------------------------------------------------------------------------------

[State -1, 立A]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "x") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 400) && (AnimElemTime(2) > 1) && (MoveContact)
value = 200

[State -1, 立B]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "y") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 400) && (MoveContact)
value = 210

[State -1, 立C]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "b") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1) && (MoveContact)
trigger3 = (StateNo = 210) && (AnimElemTime(2) > 1) && (MoveContact)
value = 220


;------------------------------------------------------------------------------

[State -1, しゃがみA]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "x") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(3) > 1)
value = 400

[State -1, しゃがみB]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "y") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 410

[State -1, しゃがみC]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "b") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1) && (MoveContact)
trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1) && (MoveContact)
trigger4 = (StateNo = 410) && (AnimElemTime(3) > 1) && (MoveContact)
trigger5 = (StateNo = 210) && (AnimElemTime(2) > 1) && (MoveContact)
value = 420

;-----------------------------------------------------------------------------
[State -1, ジャンプ2C]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "a-2c")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 610) && (MoveContact)
value = 640


[State -1, ジャンプA]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "x")
trigger1 = (StateType = A) && (Ctrl)
value = 600

[State -1, ジャンプB]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "y")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
value = 610

[State -1, ジャンプC]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "b")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
value = 620

[State -1, ジャンプＤ]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = command = "a"
triggerall = var(6) = 0
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
trigger4 = StateNo = 620 && (MoveContact)
trigger5 = (StateNo = 640) && (MoveContact)
value = 650

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "start")
trigger1 = (StateType != A) && (Ctrl)
value = 10000

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------














































;--------------------------------------------------------------------------------------
[State -1]
type = VarSet
TriggerAll = Var(59) = 0
triggerall = RoundState = [1,2]
trigger1 = Command = "AI0"
trigger2 = Command = "AI1"
trigger3 = Command = "AI2"
trigger4 = Command = "AI3"
trigger5 = Command = "AI4"
trigger6 = Command = "AI5"
trigger7 = Command = "AI6"
trigger8 = Command = "AI7"
trigger9 = Command = "AI8"
trigger10 = Command = "AI9"
trigger11 = Command = "AI10"
trigger12 = Command = "AI11"
trigger13 = Command = "AI12"
trigger14 = Command = "AI13"
trigger15 = Command = "AI14"
trigger16 = Command = "AI15"
trigger17 = Command = "AI16"
trigger18 = Command = "AI17"
trigger19 = Command = "AI18"
trigger20 = Command = "AI19"
trigger21 = Command = "AI20"
trigger22 = Command = "AI21"
trigger23 = Command = "AI22"
trigger24 = Command = "AI23"
trigger25 = Command = "AI24"
trigger26 = Command = "AI25"
trigger27 = Command = "AI26"
trigger28 = Command = "AI27"
trigger29 = Command = "AI28"
trigger30 = Command = "AI29"
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
trigger51 = Command = "AI50"
;trigger52 = 1    ;常時起動スイッチ
V = 59
Value = 10
;レベル設定
;強 … 7～11(11は超反応有り)
;中 … 4～6
;弱 … 1～3
;AIoff … 0










;========================================================================
;AI用ヘルパー数確認
;========================================================================
[State -2]
Type = VarSet
TriggerAll = Var(57) = 0
Trigger1 = RoundState = 2
V = 57
Value = (EnemyNear,NumHelper+1)

[State -2]
Type = VarSet
Trigger1 = RoundState != 2
V = 57
Value = 0



;========================================================================
;コンボ・立ち回り用var管理[var(58)]
;========================================================================
;コンボ
;フランケンシュタイナー→羽入
[State -1]
type = VarSet
triggerall = var(59) > 6
triggerall = var(58) = 0
trigger1 = stateno = 1301
trigger1 = enemynear,const(size.head.pos.y) < -80
V = 58
Value = 1

;260→ジャンプ
[State -1]
type = VarSet
triggerall = var(59) > 3
trigger1 = stateno = 260
trigger1 = (enemynear,stateno=[265,269])
V = 58
Value = 2

;崩天刃→水鉄砲
[State -1]
type = null;VarSet
triggerall = var(59) > 6
trigger1 = numhelper(3100) != 0
trigger1 = helper(3100),movehit = 1
trigger1 = power >= 1000
V = 58
Value = 3


;園崎裏拳ヒット
[State -1]
type = VarSet
triggerall = var(59) > 6
trigger1 = stateno = 1000
trigger1 = movehit
trigger1 = time >= 16
trigger1 = power < 1000 || p2statetype = A
trigger1 = var(58) = 0
V = 58
Value = 4
[State -1]
type = null;VarSet
triggerall = var(59) > 6
trigger1 = stateno = 1000
trigger1 = time = 1
trigger1 = var(58) = 4
V = 58
Value = 5


;varリセット
[State -1]
type = VarSet
triggerall = var(59) > 3
triggerall = var(58) < 100
trigger1 = P2movetype != H
trigger1 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)&&(enemynear,stateno != [265,269])
trigger2 = var(58) = 2
trigger2 = stateno = [600,699]
trigger3 = power < 1000
trigger3 = var(58) = 3
trigger4 = stateno = 1000 && (time >= 16) && !(movehit) || stateno = 400 || stateno > 1000
trigger4 = var(58) = [4,5]
V = 58
Value = 0
;---------------------------------------------------------------------
;立ち回り
;対固め&差込&ホールド
[State -1]
type = VarSet
triggerall = var(59) > 6
triggerall = var(58) = 0
trigger1 = stateno = [150,155]
trigger1 = P2movetype = A
trigger2 = moveguarded
trigger2 = P2movetype = A
trigger2 = P2bodydist X < 70
trigger2 = (stateno!=200)&&(stateno!=210)&&(stateno!=220)&&(stateno!=400)&&(stateno!=410)&&(stateno!=420)&&(stateno!=251)&&(stateno!=701)&&(stateno!=700)
V = 58
Value = 100


;強裏拳狙い
[State -1]
type = VarSet
triggerall = var(59) > 5
triggerall = var(58) = 0
Trigger1 = (enemynear,numhelper > (var(57)-1))||(enemynear,numproj > 0)
trigger1 = P2movetype = A
trigger1 = P2bodydist X > 65
Trigger1 = (Random =[50*ifelse(var(59)>10,10,var(59)),65*ifelse(var(59)>10,10,var(59))])
Trigger1 = enemynear,animtime < -5
Trigger1 = P2statetype != A
Trigger1 = ctrl || stateno = 100
Trigger1 = statetype != A
V = 58
Value = 101

;ジャンプ→a
[State -1]
type = VarSet
triggerall = var(59) > 6
triggerall = var(58) = 0
triggerall = numhelper(3200) = 0
Trigger1 = P2statetype != L || (enemynear,stateno = 5120)&&(enemynear,animtime >= -3)
trigger1 = P2movetype != A
trigger1 = !(inguarddist)
trigger1 = P2bodydist X = [55,215]
Trigger1 = (Random =[55*ifelse(var(59)>10,10,var(59)),85*ifelse(var(59)>10,10,var(59))])
Trigger1 = P2statetype != A || p2bodydist y > -50 && (enemynear,vel y > 0)
Trigger1 = ctrl || stateno = 100
Trigger1 = statetype != A
trigger1 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
V = 58
Value = 102



;ジャンプ→b
[State -1]
type = VarSet
triggerall = var(59) > 6
triggerall = var(58) = 0
triggerall = numhelper(3200) = 0
trigger1 = 0
trigger1 = P2movetype != A
trigger1 = !(inguarddist)
trigger1 = P2bodydist X = [30,135]
Trigger1 = (Random =[85*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = P2statetype != A
Trigger1 = ctrl || stateno = 100
Trigger1 = statetype != A
Trigger1 = (P2movetype != H)||(enemynear,stateno=[120,155])
trigger1 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
trigger2 = stateno = 2001
trigger2 = enemynear,gethitvar(hitcount) < 7
V = 58
Value = 103



;挑発狙い
[State -1]
type = VarSet
triggerall = var(59) < 11
triggerall = var(59) > 0
triggerall = var(58) = 0
trigger1 = P2bodydist X > 40
trigger1 = (P2bodydist X > 120)||(enemynear,backedgebodydist>75)
trigger1 = (p2movetype=H)&&(enemynear,stateno!=[120,155])
Trigger1 = gametime%(var(59)) <= (1+(ifelse((((enemynear,life)/life)<1),1,-1))+(ifelse(power>=1500,1,0)))
;trigger1 = ProjHitTime(1012) = 1
trigger1 = stateno = 1400
V = 58
Value = 104



;にぱにぱタイム恩恵狙い
[State -1]
type = VarSet
triggerall = var(59) > 0
triggerall = var(58) = 0
trigger1 = P2bodydist X > (35+((enemynear,vel x)*4))
trigger1 = numhelper(3400) > 0
trigger1 = helper(3400),stateno = 3411
Trigger1 = (Random =[75*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = (helper(3400),ParentDist X < p2bodydist x) || (helper(3400),ParentDist X = [-50,50]) || (helper(3400),ParentDist X > (50*(facing)*(helper(3400),facing)))
V = 58
Value = 105






;択
;下段で固め継続
[State -1]
type = VarSet
triggerall = var(59) > 0
trigger1 = var(58) = 0
trigger1 = p2statetype != A
trigger1 = stateno = 640 || stateno = 620
Trigger1 = (Random =[0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = moveguarded
Trigger1 = gametime%6 = [0,1]
V = 58
Value = 106
;投げ
[State -1]
type = VarSet
triggerall = var(59) > 0
trigger1 = var(58) = 0
trigger1 = p2statetype != A
trigger1 = stateno = 640 || stateno = 620
Trigger1 = (Random =[0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = moveguarded
Trigger1 = gametime%6 = 2
V = 58
Value = 107
;立ち中段
[State -1]
type = VarSet
triggerall = var(59) > 0
trigger1 = var(58) = 0
trigger1 = p2statetype != A
trigger1 = stateno = 640
Trigger1 = (Random =[0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = moveguarded
Trigger1 = gametime%6 = 3
V = 58
Value = 108
;フランケンシュタイナー
[State -1]
type = VarSet
triggerall = var(59) > 0
trigger1 = var(58) = 0
trigger1 = p2statetype != A
trigger1 = stateno = 640 || stateno = 620
Trigger1 = (Random =[0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = moveguarded
Trigger1 = gametime%6 = 4
V = 58
Value = 109
;めくり
[State -1]
type = VarSet
triggerall = var(59) > 0
trigger1 = var(58) = 0
trigger1 = p2statetype != A
trigger1 = stateno = 640 || stateno = 620
Trigger1 = (Random =[0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
Trigger1 = moveguarded
Trigger1 = gametime%6 = 5
trigger2 = var(58) = 0
trigger2 = p2statetype != A
trigger2 = ctrl || stateno = 100
trigger2 = statetype != A
Trigger2 = (Random =[0*ifelse(var(59)>10,10,var(59)),(5+((enemynear,stateno = [120,155])||(P2statetype = L&&(enemynear,stateno != 5120)))*10)*ifelse(var(59)>10,10,var(59))])
Trigger2 = p2bodydist x < 50
Trigger2 = p2movetype != H || (enemynear,stateno = [120,155])
V = 58
Value = 110





;立ち回り-空ダ
[State -1]
type = VarSet
triggerall = var(59) > 3
triggerall = var(58) = 0
TriggerAll = !(inguarddist) && (P2movetype!=A)
trigger1 = backedgebodydist > 30 || (P2movetype = H)
trigger1 = P2bodydist X = [90,145]
trigger1 = P2statetype != A || (p2bodydist y > -50)&&(enemynear,vel y >1)
trigger1 = (P2movetype = I)||(enemynear,stateno=[120,155])
trigger1 = P2statetype != L || (enemynear,stateno = 5120)
trigger1 = (statetype != A)
trigger1 = (ctrl || stateno = 100)
trigger1 = Random = [80*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (random%10 >= (10-var(59)))
V = 58
Value = 111






;varリセット
[State -1]
type = VarSet
triggerall = var(59) > 0
triggerall = var(58) > 0
triggerall = var(58) >= 100
trigger1 = P2movetype != A
trigger1 = var(58) = 100
trigger2 = var(58) = 101
trigger2 = (stateno=1200)||(P2movetype!=A)||(movetype=H)||(P2statetype=A)
trigger3 = var(58) = 102
trigger3 = (movetype = A)||(movetype=H)&&(stateno != [120,149])
trigger4 = var(58) = 103
trigger4 = (movetype != I)&&(stateno!=[2000,2001])||(P2movetype=A)||(P2statetype=A)&&(stateno!=[2000,2001])
trigger5 = var(58) = 104
trigger5 = (stateno=10000)||(P2movetype!=H)||(movetype=H)||(enemynear,vel x>=0)
trigger6 = var(58) = 105
trigger6 = (helper(3400),ParentDist X <= (10*(facing)*(helper(3400),facing)))&&(P2bodydist X <= (35+((enemynear,vel x)*4)))||(numhelper(3400) = 0)||(numhelper(3400) > 0)&&(helper(3400),stateno != 3411)
trigger7 = var(58) = 106
trigger7 = (stateno = 400)||(movetype=H)&&(stateno != [120,149])
trigger8 = var(58) = 107
trigger8 = (stateno = [800,802])||(movetype=H)&&(stateno != [120,149])
trigger9 = var(58) = 108
trigger9 = (stateno = 260)||(movetype=H)&&(stateno != [120,149])
trigger10 = var(58) = 109
trigger10 = (stateno = 1350)||(movetype=H)&&(stateno != [120,149])
trigger11 = var(58) = 110
trigger11 = (stateno = 620)||(movetype=H)&&(stateno != [120,149])
trigger12 = var(58) = 111
trigger12 = (stateno = 640)||(movetype=H)&&(stateno != [120,149])
V = 58
Value = 0
;-----------------------------------------------------------------








;----------------------------------------------------------------------------------
[State -1, ハリケーンミキサー]
type = ChangeState
value = 3200
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = var(59) > 5
trigger1 = ((StateType != A)&&(ctrl || stateno = 100))||(StateNo = 1100)||((StateNo=[200,429])&&(MoveContact))||((StateNo = 1000)&&(Movehit))||(StateNo=1100)||((StateNo=1201)&&(MoveContact))
trigger1 = P2MoveType = A
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
Trigger1 = ifelse(((var(59)=11)||(var(58)=100)&&(gametime%(floor(1500/(var(59)*var(59))))=0)),1,(enemynear,Time > (49-(3*ifelse(var(59)>10,10,var(59))))))
Trigger1 = (enemynear,animtime<-23)
trigger1 = P2BodyDist X = [-10,110]
trigger1 = P2statetype != A




;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)

;----------------------------------------------------------------------------------
[State -1,　詩音崩天刃]
type = ChangeState
value = 3100
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = var(59) > 5
trigger1 = ((StateType != A)&&(ctrl || stateno = 100))||(StateNo = 1100)||((StateNo=[200,429])&&(MoveContact))||((StateNo = 1000)&&(Movehit))||(StateNo=1100)||((StateNo=1201)&&(MoveContact))
trigger1 = P2MoveType = A
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
Trigger1 = ifelse(((var(59)=11)||(var(58)=100)&&(gametime%(floor(1500/(var(59)*var(59))))=0)),1,(enemynear,Time > (49-(3*ifelse(var(59)>10,10,var(59))))))
;Trigger1 = (enemynear,time <= 2) || (!(enemynear,moveguarded)&&(enemynear,animtime<-8))
Trigger1 = (enemynear,animtime<-8)
trigger1 = P2BodyDist X = [-10,110]
trigger1 = P2BodyDist Y = [-70+((enemynear,vel y)*7),40]
trigger2 = (StateNo = 240) && (MoveHit)
trigger2 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger2 = (power>=1800)
trigger2 = gametime%3=2
trigger2 = enemynear,life > 130




;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)


;------------------------------------------------------------------
;対飛び道具
[State -1, ステップ格闘強]
type = ChangeState
value = 1200
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(58) != 105
trigger1 = (StateType != A) && (ctrl || stateno = 100)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger1 = var(58) = 101
trigger1 = P2BodyDist X < 190
trigger1 = (enemynear,time>15) || (P2movetype!=A)
;立ち回り。相手の攻撃に被せるようにもでるように
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = P2BodyDist X = [140,190]
trigger2 = P2statetype != A
trigger2 = Random = [80*ifelse(var(59)>10,10,var(59)),92*ifelse(var(59)>10,10,var(59))]
trigger2 = enemynear,stateno != 1302
trigger2 = (enemynear,time <= 3)||(P2movetype!=A)||(ifelse(((var(59)=11)||(var(58)=100)),1,(enemynear,Time >= (44-(3*ifelse(var(59)>10,10,var(59)))))))



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 240) && (MoveHit)
;trigger8 = (StateNo = 250) && (MoveContact)
;------------------------------------------------------------------
;フェイント
[State -1, ステップ格闘中]
type = ChangeState
value = 1100
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(58) != 105
;立ち回り。相手の攻撃に被せるようにもでるように
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100)
trigger1 = P2BodyDist X = [140,190]
trigger1 = P2statetype != A
trigger1 = Random = [92*ifelse(var(59)>10,10,var(59)),95*ifelse(var(59)>10,10,var(59))]
trigger1 = enemynear,stateno != 1302
trigger1 = (enemynear,time <= 3)||(P2movetype!=A)||(ifelse(((var(59)=11)||(var(58)=100)),1,(enemynear,Time >= (44-(3*ifelse(var(59)>10,10,var(59)))))))



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 240) && (MoveHit)
;trigger8 = (StateNo = 250) && (MoveContact)
;-----------------------------------------------------------------------------
;フランケンシュタイナーフェイントからの中段攻撃
[State -1, ジャンプB]
type = ChangeState
value = 610
TriggerAll = Var(59) > 6
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(58) != 105
trigger1 = (StateType = A) && (ctrl || stateno = 100)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),95*ifelse(var(59)>10,10,var(59))]
trigger1 = (P2BodyDist X = [-25,55])
trigger1 = P2BodyDist Y = [-40,95]
trigger1 = prevstateno = 1350


;trigger1 = (StateType = A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 600) && (MoveContact)
;------------------------------------------------------------------------------
[State -1, バスターホームラン]
type = ChangeState
value = 3300
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateNo = 1201) && (Movehit) ||((StateNo = 1000)&&(Movehit))
trigger1 = (Random = [10*ifelse(var(59)>10,10,var(59)),20*ifelse(var(59)>10,10,var(59))])||(enemynear,backedgebodydist<5)&&(P2bodydist x = [(-10+(enemynear,vel x)*7),(25+(enemynear,vel x)*7)]);||(power>=2000)
trigger1 = (power>=2000)&&((enemynear,life) < (life+200))||(enemynear,life<200)
trigger1 = gametime%4!=0
trigger2 = (StateNo = 240) && (MoveHit)
trigger2 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger2 = (power>=1800)
trigger2 = gametime%3=0



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)

;------------------------------------------------------------------------------
[State -1, 園崎ＳＰ]
type = ChangeState
value = 2000
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(23) <= 0
trigger1 = (StateNo = 1201) && (Movehit)||((StateNo = 1000)&&(Movehit))
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),10*ifelse(var(59)>10,10,var(59))])||(enemynear,backedgebodydist<5)&&(P2bodydist x = [(-10+(enemynear,vel x)*7),(25+(enemynear,vel x)*7)]);||(power>=2000)
trigger1 = (power>=1500)||(enemynear,life<300)
trigger2 = (StateType != A) && (ctrl || stateno = 100) || (StateNo = 1100) 
trigger2 = P2bodydist x = [(-10+(enemynear,vel x)*7),(25+(enemynear,vel x)*7)]
trigger2 = P2bodydist y = [(-150-(enemynear,vel y)*7),(-20-(enemynear,vel y)*7)]
trigger2 = (Random = [0*ifelse(var(59)>10,10,var(59)),35*ifelse(var(59)>10,10,var(59))])
trigger2 = enemynear,vel y > -1.5
trigger2 = P2statetype = A
trigger2 = P2movetype != H
trigger2 = (enemynear,time <= 3)||(P2movetype!=A)||(ifelse(((var(59)=11)||(var(58)=100)),1,(enemynear,Time >= (44-(3*ifelse(var(59)>10,10,var(59)))))))
trigger2 = enemynear,facing != facing
trigger2 = enemynear,stateno!=[5200,5210]
trigger3 = (StateNo = 240) && (MoveHit)
trigger3 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger3 = (power>=1800)
trigger3 = gametime%3=1
trigger3 = enemynear,life > 130


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)
;---------------------------------------------------------------------------
[State -1, 当身技]
type = ChangeState
value = ifelse(backedgebodydist>45,1600,1620)
triggerall = P2statetype != L
TriggerAll = RoundState = 2
TriggerAll = var(59) > 3
trigger1 = (StateType != A) && (ctrl || stateno = 100)||(movecontact)&&((stateno=200)||(stateno=210)||(stateno=400)||(stateno=410)||(stateno=420)||(stateno=220)||(stateno=250))
Trigger1 = P2statetype != C
Trigger1 = (enemynear,numhelper <= (var(57)-1))&&(enemynear,numproj = 0)
Trigger1 = !(enemynear,moveguarded) || p2movetype = I
Trigger1 = enemynear,vel x >= -1
trigger1 = P2BodyDist X = [15,75]
trigger1 = Random = [90*ifelse(var(59)>10,10,var(59)),95*ifelse(var(59)>10,10,var(59))]
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = P2movetype != H
trigger1 = (P2bodydist y > -40)&&(enemynear,vel y > 0) || (P2statetype != A)




;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 220) && (MoveContact)
;trigger8 = (StateNo = 250) && (MoveContact)
;---------------------------------------------------------------------------


[State -1, 当身技]
type = ChangeState
value = 1610
triggerall = P2statetype != L
TriggerAll = RoundState = 2
TriggerAll = var(59) > 3
trigger1 = (StateType != A) && (ctrl || stateno = 100)||(movecontact)&&((stateno=200)||(stateno=210)||(stateno=400)||(stateno=410)||(stateno=420)||(stateno=220)||(stateno=250))
Trigger1 = P2statetype = C
Trigger1 = (enemynear,numhelper <= (var(57)-1))&&(enemynear,numproj = 0)
Trigger1 = !(enemynear,moveguarded) || p2movetype = I
Trigger1 = enemynear,vel x >= -1
trigger1 = P2BodyDist X = [15,75]
trigger1 = Random = [90*ifelse(var(59)>10,10,var(59)),95*ifelse(var(59)>10,10,var(59))]
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = P2movetype != H
trigger1 = (P2bodydist y > -40)&&(enemynear,vel y > 0) || (P2statetype != A)


;trigger1 = (StateType != A) && (Ctrl)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 220) && (MoveContact)
;trigger8 = (StateNo = 250) && (MoveContact)

;---------------------------------------------------------------------------


[State -1, 当身技]
type = ChangeState
value = 1630
triggerall = P2statetype != L
TriggerAll = RoundState = 2
TriggerAll = var(59) > 3
trigger1 = (StateType = A) && (ctrl || stateno = 100)
trigger1 = P2movetype!=H
Trigger1 = (Random =[0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))])
Trigger1 = (pos y + (vel y)*10) >= 0
Trigger1 = p2bodydist x < 65


;trigger1 = (StateType = A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 600) && (MoveContact)
;trigger3 = (StateNo = 610) && (MoveContact)
;trigger4 = (StateNo = 620) && (MoveContact)
;trigger5 = (StateNo = 640) && (MoveContact)



;------------------------------------------------------------------


[State -1, ロケットランチャー]
type = ChangeState
value = 1500
TriggerAll = Var(59) > 6
Triggerall = RoundState = 2
trigger1 = (StateNo = 640) && (MoveContact) && p2statetype = A
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))]
trigger1 = power != powermax
Trigger1 = Var(59) > 6
trigger2 = (!(inguarddist))||(P2bodydist y > 80)&&(var(59)>6)
trigger2 = Random = [45*ifelse(var(59)>10,10,var(59)),75*ifelse(var(59)>10,10,var(59))]
trigger2 = (P2bodydist x)-(P2bodydist y) = [-30+(enemynear,vel x)*8,55+(enemynear,vel x)*8]
trigger2 = pos y < -50
trigger2 = P2bodydist x > 40
trigger2 = P2bodydist y > -30
trigger2 = (P2movetype!=H)||(P2statetype=L)
trigger2 = (StateType = A) && (ctrl || stateno = 100)
trigger2 = var(58) != 111
trigger2 = var(58) != 103
trigger3 = StateNo = 620 
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))]
trigger3 = moveguarded
trigger3 = P2bodydist x < 55
trigger4 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger4 = var(58) = 103
trigger4 = P2statetype = L
trigger4 = gametime%2 = 0
trigger4 = (StateType = A) && (ctrl || stateno = 100)
trigger4 = (P2bodydist x)-(P2bodydist y) = [-30+(enemynear,vel x)*8,70+(enemynear,vel x)*8]


;trigger1 = (StateType = A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 600) && (MoveContact)
;trigger3 = (StateNo = 610) && (MoveContact)
;trigger4 = StateNo = 620 
;trigger5 = (StateNo = 640) && (MoveContact)


;----------------------------------------------------------
[State -1, 普通にジャンプ]
type = ChangeState
value = 41
TriggerAll = Var(59) > 0
Triggerall = RoundState = 2
triggerall = var(58) != 105
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = var(58) = [102,103]
trigger1 = ifelse((var(58)=103),stateno!=100,1)
trigger1 = p2statetype != L || (enemynear,stateno = 5120)
trigger2 = statetype != A
trigger2 = ctrl || stateno = 100
trigger2 = Random = [45*ifelse(var(59)>10,10,var(59)),60*ifelse(var(59)>10,10,var(59))]
trigger2 = P2bodydist x > 155
trigger2 = power != powermax
trigger2 = power < 1000
trigger2 = !(inguarddist)
trigger2 = P2movetype != A
trigger3 = (StateType != A) && (ctrl || stateno = 100)
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = (var(58) = 2)||(enemynear,stateno=[265,269])
trigger4 = (StateType != A) && (ctrl || stateno = 100)
trigger4 = backedgebodydist <= 55
trigger4 = P2statetype = L
trigger4 = P2BodyDist X < 45
trigger4 = Random = [0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))]
trigger5 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger5 = statetype != A
trigger5 = ctrl || stateno = 100
trigger5 = var(58) = 110
trigger5 = p2bodydist x < 35


;-----------------------------------------------------------------------------
[State -1, ジャンプＤ]
type = ChangeState
value = 650
TriggerAll = Var(59) > 0
triggerall = var(6) = 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = (StateType = A) && (ctrl || stateno = 100)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = var(58) = 102
trigger1 = pos y < (-20-floor((p2bodydist x-105)/1.2)*(p2bodydist x > 105)-(11-var(59))*10)


;trigger1 = (StateType = A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 600) && (MoveContact)
;trigger3 = (StateNo = 610) && (MoveContact)
;trigger4 = StateNo = 620 && (MoveContact)
;trigger5 = (StateNo = 640) && (MoveContact)
;-----------------------------------------------------------------------------
[State -1, ジャンプC]
type = ChangeState
value = 620
TriggerAll = Var(59) > 6
Triggerall = RoundState = 2
trigger1 = (StateType = A) && (ctrl || stateno = 100)
trigger1 = vel x < 6
trigger1 = var(58) != 111
trigger1 = p2bodydist y = [70,140]
trigger1 = p2bodydist x = [-45,55+floor((P2bodydist y)/3)]
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),10*ifelse(var(59)>10,10,var(59))])||(var(58)=103)
trigger1 = ((!(inguarddist))&&(P2movetype != A))|| (P2bodydist x < 5)&&(P2movetype=A)&&(enemynear,time >= 10)
;ゲージ溜め用
trigger2 = (StateType = A) && (ctrl || stateno = 100)
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = P2bodydist x > 150
trigger2 = pos y > -40
trigger2 = power != powermax
trigger2 = power < 1000
trigger2 = !(inguarddist)
trigger2 = P2movetype != A
Trigger2 = Var(59) > 6
trigger3 = (StateType = A) && ctrl
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),70*ifelse(var(59)>10,10,var(59))]
trigger3 = P2bodydist x < 30
trigger3 = (pos y < ((-1*(enemynear,const(size.height)))-10)) || (vel y > -1)
Trigger3 = Var(58) = 110

;------------------------------------------------------------------------------

;空中投げ
[State -1, 投げ]
type = ChangeState
value = 810
triggerall = (StateType = A)
triggerall = (ctrl || stateno = 100)
TriggerAll = var(59) > 3
trigger1 = P2BodyDist X = [-25,11]
trigger1 = P2BodyDist Y = [-55,15]
trigger1 = P2statetype = A
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))]
trigger1 = P2movetype != H

;------------------------------------------------------------------------------
[State -1]
Type     = ChangeState
Value    = 105
triggerall = Var(59) > 0
TriggerAll = StateType != A
triggerall = (statetype != A) && (ctrl || stateno = 100)
TriggerAll = EnemyNear,HitDefAttr=,AT
TriggerAll = P2BodyDist X=[-5,60]
TriggerAll = EnemyNear,vel x < 3
TriggerAll = EnemyNear,MoveType = A
TriggerAll = Random<=ifelse(var(59)>10,10,var(59))*60||var(59)>10
TriggerAll = EnemyNear,Time>=(25-var(59))||var(59)>10
Trigger1 = (PrevStateNo=[5000,5270])
Trigger2 = (PrevStateNo=[120,159])

;guard
[State -1]
Type = ChangeState
Value = 120
TriggerAll = Var(59) > 0
TriggerAll = RoundState = 2
TriggerAll = ctrl || stateno = 100
TriggerAll = (inguarddist) || (P2movetype=A)
Trigger1 = Random =[0,100*ifelse(var(59)>10,10,var(59))]
Trigger2 = P2BodyDist X>90||EnemyNear,Time>50
Trigger2 = Random=[0,100*ifelse(var(59)>10,10,var(59))]















;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
TriggerAll = Var(59) > 0
Triggerall = RoundState = 2
triggerall = (StateType != A) && (ctrl || stateno = 100)
trigger1 = var(58) = 104
value = 10000

;------------------------------------------------------------------------------


[State -1, ハリケーンミキサー]
type = ChangeState
value = 3200
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 410) && (Movehit)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = var(58) = 1;(power>=1850)||(enemynear,life<300)
trigger2 = (StateType != A) && (ctrl || stateno = 100)
trigger2 = P2bodydist x = [45,170]
trigger2 = (P2bodydist Y > -30)&&(enemynear,vel y > 2)||(P2statetype!=A)
trigger2 = enemynear,stateno != [40,49]
trigger2 = (P2movetype != H)
trigger2 = Random = [80*ifelse(var(59)>10,10,var(59)),96*ifelse(var(59)>10,10,var(59))]


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)


;----------------------------------------------------------------------------------
[State -1, 暴徒制圧用放水銃]
type = ChangeState
value = 2200
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 6
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = ((StateNo = 1201) && (Moveguarded))||((StateNo = 1000) && (Moveguarded))||((StateNo = 250) && (Moveguarded))||((StateNo = 420) && (Moveguarded))
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (enemynear,life<=63)
trigger1 = P2statetype != A
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = (enemynear,life<=63)
trigger2 = (P2statetype != A)||(P2bodydist y > -70)&&(enemynear,vel y >= 0)
trigger2 = (StateType != A) && (ctrl || stateno = 100)
trigger2 = p2bodydist x > 145
trigger2 = (p2movetype != H)||(enemynear,stateno=[120,155])
trigger3 = (StateType != A) && (ctrl || stateno = 100)
trigger3 = var(58) = 3
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = enemynear,vel y = [8.0,8.8]

;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,499]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1201) && (MoveContact)






;リバーサル記述
[State -1, 暴徒制圧用放水銃]
type       = null;Varset
v          = 0
value      = 2200
triggerall = (Power > 999)
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateType != A) && (ctrl || stateno = 100)
trigger1 = var(58) = 3
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,499]) && (MoveContact)
;trigger2 = (StateNo = 1000) && (MoveContact)
;trigger2 = (StateNo = 1201) && (MoveContact)


;------------------------------------------------------------------------------
[State -1,　詩音崩天刃]
type = ChangeState
value = 3100
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 1201) && (Movehit)||((StateNo = 1000)&&(Movehit))&&(gametime%5=[3,4])
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (power>=1850)&&(gametime%5=0)||(enemynear,life<300)&&(gametime%3=0) || (enemynear,life=[300,450])&&(power>=2000)|| stateno=1000&&var(58)=4&&movehit=1&&(p2bodydist x>20-35*(enemynear,backedgebodydist>10))


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)

;------------------------------------------------------------------------------
[State -1, カーネージナター]
type = ChangeState
value = 3000
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 1201) && (Movehit)||((StateNo = 1000)&&(Movehit))
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (power>=1850)||(enemynear,life<300)|| stateno=1000&&var(58)=4&&movehit=1&&(p2bodydist x>20-35*(enemynear,backedgebodydist>10))
trigger1 = (gametime%5=[1,2])


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)


;------------------------------------------------------------------------------
[State -1, バスターホームラン]
type = ChangeState
value = 3300
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (gametime%5=4)|| stateno=1000&&var(58)=4&&movehit=1&&(p2bodydist x<=20-35*(enemynear,backedgebodydist>10))
trigger1 = (StateNo = 1201) && (Movehit)||((StateNo = 1000)&&(Movehit))
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (power>=1850)||(enemynear,life<300)|| stateno = 1000 && var(58) = 4 && movehit=1
trigger2 = (StateType != A) && (ctrl || stateno = 100)
trigger2 = P2bodydist x >= 75
trigger2 = P2bodydist x < 173
trigger2 = P2bodydist Y = [((floor((P2bodydist x)/14)*-6)-50),((floor((P2bodydist x)/14)*-6)+70)]
trigger2 = (P2movetype != H)
trigger2 = Random = [75*ifelse(var(59)>10,10,var(59)),82*ifelse(var(59)>10,10,var(59))]



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)


;------------------------------------------------------------------------------
[State -1, にぱにぱタイム]
type = ChangeState
value = 3400
TriggerAll = Var(59) > 3
Triggerall = RoundState = 2
triggerall = var(11) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateType != A) && (ctrl || stateno = 100)
trigger1 = (power>=1800)||(life-(enemynear,life)>300)
trigger1 = (lifemax - life) > 150
trigger1 = (P2bodydist X>105)&&(enemynear,vel x<=1.8)
trigger1 = (P2movetype!=H)||(enemynear,stateno=[120,155])
trigger1 = Random = [75*ifelse(var(59)>10,10,var(59)),85*ifelse(var(59)>10,10,var(59))]
trigger1 = gametime%3 = 0
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = P2BodyDist X = [100-(ifelse((p2statetype = L),40,0)),250]
trigger2 = Random = [60*ifelse(var(59)>10,10,var(59)),67*ifelse(var(59)>10,10,var(59))]
trigger2 = (gametime%10=0)||(power>=1800)&&(gametime%4=0)||(life-(enemynear,life)>300)&&(gametime%4=0)
trigger2 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
trigger2 = (enemynear,vel x < 3)||(var(59)<7)


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)





;------------------------------------------------------------------------------

[State -1, トラップマスター]
type = ChangeState
value = 3500
TriggerAll = Var(59) > 0
Triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (StateType != A) && (ctrl || stateno = 100)
trigger1 = (power>=1800)||(life-(enemynear,life)>300)
trigger1 = (lifemax - life) > 150
trigger1 = (P2bodydist X>105)&&(enemynear,vel x<=1.8)
trigger1 = (P2movetype!=H)||(enemynear,stateno=[120,155])
trigger1 = Random = [80*ifelse(var(59)>10,10,var(59)),85*ifelse(var(59)>10,10,var(59))]
trigger1 = gametime%3 = 1
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = P2BodyDist X = [100-(ifelse((p2statetype = L),40,0)),250]
trigger2 = Random = [60*ifelse(var(59)>10,10,var(59)),63*ifelse(var(59)>10,10,var(59))]
trigger2 = (gametime%10=0)||(power>=1800)&&(gametime%4=0)||(life-(enemynear,life)>300)&&(gametime%4=0)
trigger2 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
trigger2 = (enemynear,vel x < 3)||(var(59)<7)


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = [200,429]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
;trigger4 = (StateNo = 1100) 
;trigger5 = (StateNo = 1201) && (MoveContact)



;==============================================================================
; 必殺技
;==============================================================================

[State -1, フランケンシュタイナー]
type = ChangeState
value = 1300
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 250) && (Movecontact)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),45*ifelse(var(59)>10,10,var(59))])
trigger1 = ifelse((enemynear,const(size.head.pos.y) < -80),1,((power < 1000)||(moveguarded)&&(var(59)>6)))
trigger1 = P2statetype != A
trigger1 = (frontedgebodydist<40)||(enemynear,backedgebodydist<5);||(P2bodydist x = [30+(enemynear,vel x)*3,58+(enemynear,vel x)*3])
trigger2 = stateno != 100
trigger2 = ((StateType != A) && (ctrl || stateno = 100))||((StateNo = 210) && (MoveGuarded))||((StateNo = 410) && (MoveGuarded))
trigger2 = (P2bodydist x = [25+(enemynear,vel x)*3,65+(enemynear,vel x)*3])
trigger2 = P2statetype != A
trigger2 = (P2movetype != H)||(enemynear,stateno=[120,155])
trigger2 = Random = [65*ifelse(var(59)>10,10,var(59)),77*ifelse(var(59)>10,10,var(59))]
trigger2 = var(58) = 0


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 220) && (MoveContact)
;trigger8 = (StateNo = 250) && (MoveContact)


;------------------------------------------------------------------------------

[State -1, フランケンシュタイナーフェイント]
type = ChangeState
value = 1350
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = StateNo = 250
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),85*ifelse(var(59)>10,10,var(59))])
trigger1 = (moveguarded)
trigger1 = P2statetype != A
trigger1 = (frontedgebodydist<40)||(enemynear,backedgebodydist<5);||(P2bodydist x = [20+(enemynear,vel x)*3,46+(enemynear,vel x)*3])
trigger2 = ((StateType != A) && (ctrl || stateno = 100))||((StateNo = 210) && (MoveGuarded))||((StateNo = 410) && (MoveGuarded)&&(var(59)>6))
trigger2 = (P2bodydist x = [30,60])
trigger2 = P2statetype != A
trigger2 = (P2movetype != H)||(enemynear,stateno=[120,155])
trigger2 = Random = [78*ifelse(var(59)>10,10,var(59)),85*ifelse(var(59)>10,10,var(59))]
trigger2 = var(58) = 0
trigger3 = stateno = 220
trigger3 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger3 = (moveguarded)
trigger3 = P2statetype != A
trigger4 = (StateType != A) && (ctrl || stateno = 100)
trigger4 = (P2bodydist x < 60)
trigger4 = P2statetype != A
trigger4 = var(58) = 109
trigger4 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 220) && (MoveContact)

;------------------------------------------------------------------------------
[State -1, フランケンシュタイナー追い討ち]
type = ChangeState
value = 1370
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = (StateNo = 1301) && (Time = [55,67])
trigger1 = time = 55
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),(13-var(59))*10*ifelse(var(59)>10,10,var(59))])
;------------------------------------------------------------------------------
[State -1, ステップ格闘弱]
type = ChangeState
value = 1000
TriggerAll = Var(59) > 3
Triggerall = RoundState = 2
trigger1 = (StateNo = 250) && (Movehit)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = var(58) = 0
trigger2 = P2BodyDist X = [75,85]
trigger2 = (P2BodyDist Y > -50) && (enemynear,vel y > 0)||(P2statetype!=A)
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),22*ifelse(var(59)>10,10,var(59))]
trigger2 = enemynear,stateno != 1302
trigger2 = p2statetype != L
trigger3 = statetype != A
trigger3 = (ctrl || stateno = 100)
trigger3 = P2BodyDist X < 105
trigger3 = var(58) = 4
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = var(59) > 6


;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 240) && (MoveHit)
;trigger8 = (StateNo = 250) && (MoveContact)
;------------------------------------------------------------------------------
[State -1, ステップ格闘中]
type = ChangeState
triggerall = command = "stepkakutou y"
TriggerAll = Var(59) = 0
trigger1 = (StateType != A) && (ctrl || stateno = 100)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 220) && (MoveContact)
trigger5 = (StateNo = 400) && (MoveContact)
trigger6 = (StateNo = 410) && (MoveContact)
trigger7 = (StateNo = 420) && (MoveContact)
trigger8 = (StateNo = 250) && (MoveContact)
value = 1100
;------------------------------------------------------------------
[State -1, ステップ格闘強]
type = ChangeState
value = 1200
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 250) && (Movehit)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 240) && (MoveHit)
;trigger8 = (StateNo = 250) && (MoveContact)
;------------------------------------------------------------------

[State -1, ロケットランチャー]
type = ChangeState
value = 1400
TriggerAll = Var(59) > 3
triggerall = (P2statetype != L)||(enemynear,stateno=5120)||(var(59)>6)
Triggerall = RoundState = 2
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100)
trigger1 = P2BodyDist X = [100-(ifelse((enemynear,stateno=5120),20,0)),250]
trigger1 = (P2BodyDist Y > -50)&&(enemynear,vel y >= -1)||(P2statetype!=A)||(var(59)<7)
trigger1 = Random = [60*ifelse(var(59)>10,10,var(59)),75*ifelse(var(59)>10,10,var(59))]
trigger1 = enemynear,stateno != [120,155]
trigger1 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
trigger1 = (enemynear,vel x < 3)||(var(59)<7)
trigger1 = (var(58) != 105)||(var(58) = 105)&&(helper(3400),ParentDist X > (40*(facing)*(helper(3400),facing)))



;trigger1 = (StateType != A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;trigger6 = (StateNo = 420) && (MoveContact)
;trigger7 = (StateNo = 220) && (MoveContact)
;trigger8 = (StateNo = 1000) && (MoveContact)
;trigger9 = (StateNo = 1200) 
;trigger10 = (StateNo = 1201) && (MoveContact)
;trigger11 = (StateNo = 240) && (MoveContact)
;trigger12 = (StateNo = 250) && (MoveContact)


;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 投げ]
type = ChangeState
value = ifelse(((frontedgebodydist>backedgebodydist)||(statetype=C)),802,800)
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = (StateType != A)
triggerall = (ctrl || stateno = 100)
trigger1 = P2BodyDist X = [-25,15]
trigger1 = (Random = [55*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger1 = var(58) = 0 || var(58) = 107
trigger1 = p2StateType != A
trigger1 = p2movetype != H || (enemynear,gethitvar(hittime) < 3) && var(58) = 107


;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, 移動起き上がり]
type = ChangeState
value = 10002
triggerall = (Alive)
TriggerAll = Var(59) > 0
triggerall = (RoundState = 2) && (StateNo = [5110,5111]) && (MoveType = H) && (Time > 5)
trigger1 = (P2movetype != H)&&(P2statetype!=L)
trigger1 = P2dist x < 180



;==============================================================================
; 通常攻撃技
;==============================================================================

[State -1, 6a]
type = ChangeState
value = 250
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 210) && (Movehit) && (P2statetype!=A)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),40*ifelse(var(59)>10,10,var(59))])||(power>=1500)||(enemynear,life<300)
trigger1 = P2BodyDist Y = [-70-((enemynear,vel y)*12),1-((enemynear,vel y)*12)]



;trigger1 = (StateType = S) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)

;------------------------------------------------------------------------------
[State -1, a]
type = ChangeState
value = 240
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 410) && (Movehit)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (P2bodydist x > 35)||(AnimElemTime(3) > 2)
trigger2 = (StateNo = 210) && (Movehit) && p2bodydist y > -25
trigger2 = P2statetype = A
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]



;trigger1 = (StateType = S) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;trigger5 = (StateNo = 410) && (MoveContact)
;------------------------------------------------------------------------------

[State -1, 6c]
type = ChangeState
value = 260
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (stateno=400) && (MoveGuarded)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),25*ifelse(var(59)>10,10,var(59))]
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = enemynear,stateno = [3204,3205]
trigger2 = P2BodyDist X = [-25,45]
trigger2 = (P2BodyDist Y = [(-55-(enemynear,vel y)*20),(0-(enemynear,vel y)*20)])||(enemynear,pos y >= 0)
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = statetype != A
trigger3 = (ctrl || stateno = 100)
trigger3 = var(58) = 0
trigger3 = P2BodyDist X = [45,55]
trigger3 = (P2BodyDist Y = [(-55-(enemynear,vel y)*20),(0-(enemynear,vel y)*20)])
trigger3 = Random = [50*ifelse(var(59)>10,10,var(59)),59*ifelse(var(59)>10,10,var(59))]
trigger4 = statetype != A
trigger4 = (ctrl || stateno = 100)
trigger4 = var(58) = 108
trigger4 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger4 = P2BodyDist X < 40


;trigger1 = (StateType = S) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)

;------------------------------------------------------------------------------
[State -1, 3c]
type = ChangeState
value = 430
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100)
trigger1 = var(58) = 0
trigger1 = P2BodyDist X = [53+var(59)*4,110]
trigger1 = P2statetype != A
trigger1 = enemynear,stateno != [40,45]
trigger1 = Random = [40*ifelse(var(59)>10,10,var(59)),55*ifelse(var(59)>10,10,var(59))]
trigger1 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)


;trigger1 = (StateType !=A) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 410) && (MoveContact)


;------------------------------------------------------------------------------

[State -1, しゃがみA]
type = ChangeState
value = 400
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100)
trigger1 = var(58) = 0
trigger1 = P2BodyDist X = [-25,37]
trigger1 = P2BodyDist Y = [-20,25]
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),35*ifelse(var(59)>10,10,var(59))]
trigger1 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
trigger1 = (P2movetype!=H)||(var(59)>6)
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = P2BodyDist X = [-25,(37-((var(58) = 106)*12))]
trigger2 = P2BodyDist Y = [-20,25]
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = (var(58) = 5) || var(58) = 106



;trigger1 = (StateType = C) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
;trigger3 = (StateNo = 400) && (AnimElemTime(3) > 1)

;------------------------------------------------------------------------------

[State -1, しゃがみB]
type = ChangeState
value = 410
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 210) && (Movehit)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])||(movehit)
trigger1 = P2BodyDist Y = [-20-((enemynear,vel y)*7),1-((enemynear,vel y)*7)]
trigger1 = var(59) > 3
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = var(58) = 0
trigger2 = P2BodyDist X = [-25,58]
trigger2 = P2BodyDist Y = [-30,25]
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = (enemynear,stateno = 1302)||(enemynear,stateno = 902)||(enemynear,stateno = 931)
trigger2 = var(59) > 6
trigger3 = statetype != A
trigger3 = var(58) = 0
trigger3 = (ctrl || stateno = 100)
trigger3 = P2BodyDist X = [35,58]
trigger3 = P2BodyDist Y = [-30,25]
trigger3 = Random = [50*ifelse(var(59)>10,10,var(59)),65*ifelse(var(59)>10,10,var(59))]
trigger3 = (enemynear,stateno != 1302)&&(enemynear,stateno != 902)&&(enemynear,stateno != 931)
trigger3 = (var(59)>6)


;trigger1 = (StateType = C) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 210) && (MoveContact)
;trigger4 = (StateNo = 400) && (MoveContact)
;------------------------------------------------------------------------------
[State -1, しゃがみC]
type = ChangeState
value = 420
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 410) && (AnimElemTime(3) > 1) && (Movecontact)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = frontedgebodydist < 40
trigger2 = (StateType != A) && (ctrl || stateno = 100)
trigger2 = var(58) = 0
trigger2 = P2bodydist x = [(0+(enemynear,vel x)*10),(70+(enemynear,vel x)*10)]
trigger2 = P2bodydist y = [(-100-(enemynear,vel y)*10),(-10-(enemynear,vel y)*10)]
trigger2 = (Random = [30*ifelse(var(59)>10,10,var(59)),55*ifelse(var(59)>10,10,var(59))])
trigger2 = enemynear,vel y > 0
trigger2 = P2statetype = A
trigger2 = P2movetype != H
trigger2 = enemynear,facing != facing
trigger2 = enemynear,stateno!=[5200,5210]



;trigger1 = (StateType = C) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1) && (MoveContact)
;trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1) && (MoveContact)
;trigger4 = (StateNo = 410) && (AnimElemTime(3) > 1) && (MoveContact)
;trigger5 = (StateNo = 210) && (AnimElemTime(2) > 1) && (MoveContact)
;------------------------------------------------------------------------------

[State -1, 立A]
type = ChangeState
value = 200
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = numhelper(3200) = 0
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100)
trigger1 = P2BodyDist X = [-35,32]
trigger1 = (P2BodyDist Y = [(-76+(ifelse(((P2movetype=H)&&(enemynear,stateno!=[120,155])),20,0))-(enemynear,vel y)*2),(-25-(enemynear,vel y)*2)])||(P2statetype=S)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),(50+(ifelse(((P2movetype=H)&&(enemynear,stateno!=[120,155])),50,0)))*ifelse(var(59)>10,10,var(59))]
trigger1 = enemynear,stateno != 1302
trigger1 = var(58) = 0 || p2movetype = H && p2statetype = A



;trigger1 = (StateType = S) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 400) && (AnimElemTime(2) > 1) && (MoveContact)

;------------------------------------------------------------------------------
[State -1, 立B]
type = ChangeState
value = 210
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = ((StateNo = 200)||(stateno=400)) && (MoveContact)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = (StateNo = 200) && (Movehit) && (P2statetype=A)
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = statetype != A
trigger3 = (ctrl || stateno = 100)
trigger3 = P2BodyDist X = [45,65]
trigger3 = (p2bodydist y > -40)&&(enemynear,vel y > 0)||(P2statetype!=A)
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),25*ifelse(var(59)>10,10,var(59))]
trigger3 = enemynear,stateno != 1302
trigger3 = var(58) = 0
trigger4 = statetype != A
trigger4 = (ctrl || stateno = 100)
trigger4 = P2BodyDist X = [40,50]
trigger4 = (P2BodyDist Y = [(-80-(enemynear,vel y)*9),(-30-(enemynear,vel y)*9)])  ||(P2statetype!=A)
trigger4 = Random = [0*ifelse(var(59)>10,10,var(59)),15*ifelse(var(59)>10,10,var(59))]
trigger4 = var(58) = 0




;trigger1 = (StateType = S) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (MoveContact)
;trigger3 = (StateNo = 400) && (MoveContact)
;------------------------------------------------------------------------------
[State -1, 立C]
type = ChangeState
value = 220
TriggerAll = Var(59) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
trigger1 = (StateNo = 210) && (AnimElemTime(2) > 1) && (Movecontact)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = p2statetype != A || p2bodydist y > -30 && moveguarded
trigger2 = statetype != A
trigger2 = (ctrl || stateno = 100)
trigger2 = P2BodyDist X = [45,60]
trigger2 = (p2bodydist y > -65)&&(enemynear,vel y > 0)||(P2statetype!=A)
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),27*ifelse(var(59)>10,10,var(59))]
trigger2 = enemynear,stateno != 1302
trigger2 = var(58) = 0



;trigger1 = (StateType = S) && (ctrl || stateno = 100)
;trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1) && (MoveContact)
;trigger3 = (StateNo = 210) && (AnimElemTime(2) > 1) && (MoveContact)



;-----------------------------------------------------------------------------

[State -1, ジャンプ2C]
type = ChangeState
value = 640
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 610) && (MoveContact)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = (StateType = A) && (Ctrl)
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))]
trigger2 = stateno = 111 || vel x >= 7 || var(58) = 111
trigger2 = p2bodydist x < (20+(vel x)*8)


;trigger1 = (StateType = A) && (Ctrl)
;trigger2 = (StateNo = 600 || StateNo = 610) && (MoveContact)

;-----------------------------------------------------------------------------

[State -1, ジャンプA]
type = ChangeState
value = 600
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = (StateType = A) && (Ctrl)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))])||(var(58)=2)||(P2movetype=H)&&(enemynear,stateno!=[120,155])&&(P2bodydist x < 70)
trigger1 = (P2BodyDist X = [-25,5])||(P2movetype=H)&&(enemynear,stateno!=[120,155])&&(P2bodydist x < 70)||(var(58)=2)
trigger1 = P2BodyDist Y = [-110,-15]
trigger1 = prevstateno != 1350
;-----------------------------------------------------------------------------

[State -1, ジャンプB]
type = ChangeState
value = 610
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (StateNo = 600) && (MoveContact)
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]


;trigger1 = (StateType = A) && (Ctrl)
;trigger2 = (StateNo = 600) && (MoveContact)
;-----------------------------------------------------------------------------

[State -1, ジャンプC]
type = ChangeState
TriggerAll = Var(59) = 0
triggerall = (command = "b")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
value = 620

;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------




;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------



[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = (StateNo != 100)
triggerall = var(59) > 3
TriggerAll = RoundState = 2
triggerall = (StateType != A) && (ctrl || stateno = 100)
triggerall = backedgebodydist > 55
trigger1 = P2statetype = L
trigger1 = P2BodyDist X < 35
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),25*ifelse(var(59)>10,10,var(59))]
trigger1 = var(58) = 0
trigger2 = P2BodyDist X = [60,162]
trigger2 = P2movetype != H
trigger2 = P2bodydist Y > -50
trigger2 = Random = [91*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = var(58) = 0
trigger3 = var(58) = 105
trigger3 = ctrl || stateno = 100
trigger3 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger3 = helper(3400),ParentDist X > (90*(facing)*(helper(3400),facing))
;----------------------------------------------------------
;リバーサル記述
[State -1, バックステップ]
type       = Varset
triggerall = (StateNo != 100)
TriggerAll = Var(59) = 0
trigger1 = (command = "BB") && (StateType = S) && (ctrl || stateno = 100)
v          = 0
value      = 1500
;----------------------------------------------------------
[State -1, 空中ダッシュ]
type = ChangeState
value = 101
triggerall = (Pos Y < -65)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = (StateType = A) && (Ctrl)
trigger1 = P2statetype != A
trigger1 = Random = [70*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = P2bodydist x > (45+var(59)*5)
trigger1 = vel x < 5
trigger2 = var(58) = 111
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = vel x < 4
;----------------------------------------------------------
[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = (Pos Y < -45)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
TriggerAll = Var(59) = 0
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
value = 106

[State -1, ハイジャンプ]
type = ChangeState
value = 10003
triggerall = (StateType != A) && (Ctrl || stateno = 100)
TriggerAll = Var(59) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = numhelper(3200) = 0
trigger1 = enemynear,vel x <= 2
trigger1 = P2BodyDist X = [75,200]
trigger1 = (P2BodyDist Y = [-85,32])&&(enemynear,vel y>0)||(P2statetype!=A)
trigger1 = Random = [40*ifelse(var(59)>10,10,var(59)),50*ifelse(var(59)>10,10,var(59))]
trigger2 = var(58) = 111
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
;----------------------------------------------------------
[State -1, ジャンプキャンセル]
type = ChangeState
value = 41
TriggerAll = Var(59) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger1 = (StateNo = 240)
trigger1 = AnimElem = 5 && (MoveHit)
trigger1 = p2statetype=A
trigger2 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger2 = (StateNo = 210)
trigger2 = AnimElem = 4 && (MoveHit)
trigger2 = p2statetype=A
trigger3 = (StateNo = 420)
trigger3 = AnimElemTime(6) = 1
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = p2statetype=A

;TriggerAll = Var(59) = 0
;trigger1 = (command = "holdup") &&  (StateNo = 420)
;trigger1 = AnimElemTime(6) = 1 
;trigger2 = (command = "holdup") &&  (StateNo = 210)
;trigger2 = AnimElem = 4
;trigger3 = (command = "holdup") &&  (StateNo = 240)
;trigger3 = AnimElem = 5 && (MoveHit) 

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) > 3
TriggerAll = RoundState = 2
triggerall = StateType != A
triggerall = stateno != 100
triggerall = ifelse((numhelper(3200) = 0),1,P2bodydist x > 150)
trigger1 = var(58) != 105
trigger1 = ctrl
trigger1 = ifelse((P2statetype = L),(P2bodydist x > 85),1)
trigger1 = (P2movetype != A)
trigger1 = ifelse((P2movetype=H),1,((P2bodydist Y>-50)||(p2bodydist x > 80)))
trigger1 = anim != [100,110]
trigger1 = P2bodydist X > 20
trigger2 = var(58) = 105
trigger2 = ctrl
trigger2 = anim != [100,110]
trigger2 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])
trigger2 = helper(3400),ParentDist X < (-70*(facing)*(helper(3400),facing))
trigger3 = Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))]
trigger3 = statetype != A
trigger3 = ctrl
trigger3 = var(58) = [106,110]

;---------------------------------------------------------------------------
;歩行
[State -1]
type = ChangeState
value = 20
triggerall = var(59) > 0
TriggerAll = RoundState = 2
triggerall = stateno != 100
triggerall = anim != [100,110]
triggerall = ifelse((numhelper(3200) = 0),1,P2bodydist x > 80)
triggerall = var(58) != 103
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = ifelse(P2statetype=A,P2bodydist x > 20,1)
trigger1 = (Random = [0*ifelse(var(59)>10,10,var(59)),100*ifelse(var(59)>10,10,var(59))])||(var(59)<4)






