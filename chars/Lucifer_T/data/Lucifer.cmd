; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

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

[Command]
name="Meta"
command=a+b+c

[Command]
name="HJump"
command=~$D,$U
time=4

;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "Lucifer_Braid_a"
command = ~D, DF, F, a

[Command]
name = "Lucifer_Braid_b"
command = ~D, DF, F, b

[Command]
name = "Lucifer_Braid_c"
command = ~D, DF, F, c

[Command]
name = "Pride_Stake_a"
command = ~D, DB, B, a

[Command]
name = "Pride_Stake_b"
command = ~D, DB, B, b

[Command]
name = "Pride_Stake_c"
command = ~D, DB, B, c

[Command]
name = "Magic_Circle_a"
command = ~B, D, DB, a

[Command]
name = "Magic_Circle_b"
command = ~B, D, DB, b

[Command]
name = "Magic_Circle_c"
command = ~B, D, DB, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b


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

[Command]
name="Throw"
command=b+c

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
name = "fwd_a"
Command=/F,a
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "Recovery"
command = s
time = 1

[Command]
name = "Recovery"
command = x
time = 1

[Command]
name = "Recovery"
command = y
time = 1

[Command]
name = "Recovery"
command = a
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


[command]
name="fwd"
command=F
time=1

[command]
name="back"
command=B
time=1

[command]
name="up"
command=U
time=1

[command]
name="down"
command=D
time=1

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
name="holdfwd"
command=/$F
time=1

[Command]
name="holdback"
command=/$B
time=1

[Command]
name="holdup"
command=/$U
time=1

[Command]
name="holddown"
command=/$D
time=1

[Command]
name="holdx"
command=/$x
time=1

[Command]
name="holdy"
command=/$y
time=1

[Command]
name="holdz"
command=/$z
time=1

[Command]
name="holdc"
command=/$c
time=1

[Command]
name="holdb"
command=/$b
time=1

[Command]
name="holda"
command=/$a
time=1

[Command]
name="holds"
command=/$s
time=1

[Command]
name="z1"
command=U,F,D,B,z,y,y,y,y,z,y,b
time=0

[Command]
name="z2"
command=B,B,D,F,z,c,c,c,z,z,c,a
time=0

[Command]
name="z3"
command=x,y,z,z,z,y,a,b,a,y,a,y
time=0

[Command]
name="z4"
command=y,y,y,U,x,x,a,a,a,x,y,z
time=0

[Command]
name="z5"
command=z,z,z,D,a,b,b,b,y,y,x,y
time=0

[Command]
name="z6"
command=s,s,s,D,y,z,z,y,a,y,z,c
time=0

[Command]
name="z7"
command=F,F,B,F,y,y,z,x,z,x,y,c
time=0

[Command]
name="z8"
command=D,D,B,D,y,a,z,c,y,x,z,z
time=0

[Command]
name="z9"
command=B,B,B,U,z,x,b,c,z,y,z,x
time=0

[Command]
name="z10"
command=U,U,U,U,y,x,z,y,c,a,b,c
time=0

[Command]
name="z11"
command=a,a,a,D,y,x,z,y,y,y,a,x
time=0

[Command]
name="z12"
command=c,c,c,U,x,z,y,x,c,a,c,b
time=0

[Command]
name="z13"
command=x,c,x,x,b,a,y,z,c,x,a,z
time=0

[Command]
name="z14"
command=y,y,y,B,a,z,y,x,c,b,a,z
time=0

[Command]
name="z15"
command=a,c,c,c,y,y,z,x,c,b,a,z
time=0

[Command]
name="z16"
command=U,D,D,D,y,y,x,z,c,a,c,y
time=0

[Command]
name="z17"
command=a,B,c,x,y,y,z,y,y,y,a,z
time=0

[Command]
name="z18"
command=F,F,F,F,B,y,c,c,c,c,a,z
time=0

[Command]
name="z19"
command=D,D,U,D,y,y,y,c,c,b,a,y
time=0

[Command]
name="z20"
command=B,U,B,B,y,c,b,b,z,c,a,x
time=0

[Command]
name="z21"
command=U,B,U,U,a,b,c,z,b,z,y,y
time=0

[Command]
name="z22"
command=F,U,F,F,a,y,z,y,a,b,b,b
time=0

[Command]
name="z23"
command=a,a,a,a,U,y,y,y,z,a,b,x
time=0

[Command]
name="z24"
command=a,a,b,b,c,y,y,x,c,c,a,b
time=0

[Command]
name="z25"
command=x,x,x,x,z,y,y,z,a,b,a,x
time=0

[Command]
name="z26"
command=z,z,z,z,a,a,x,y,y,z,y,a
time=0

[Command]
name="z27"
command=U,b,b,D,a,b,b,c,z,z,x,z
time=0

[Command]
name="z28"
command=B,c,c,c,B,z,y,c,a,b,c,z
time=0

[Command]
name="z29"
command=y,y,y,z,y,y,y,a,a,b,z,x
time=0

[Command]
name="z30"
command=D,D,U,F,z,y,y,a,y,c,b,b
time=0

[Command]
name="z31"
command=U,D,B,B,a,b,c,z,x,x,x,x
time=0

[Command]
name="z32"
command=y,U,U,B,x,x,z,a,a,z,x,a
time=0

[Command]
name="z33"
command=z,U,U,B,b,b,c,y,y,z,y,z
time=0

[Command]
name="z34"
command=x,U,U,U,a,a,a,b,c,z,x,y
time=0

[Command]
name="z35"
command=a,U,U,U,y,y,a,b,c,c,c,b
time=0

[Command]
name="z36"
command=b,U,U,U,y,y,z,c,b,b,c,z
time=0

[Command]
name="z37"
command=c,U,U,U,y,y,y,a,x,x,x,x
time=0

[Command]
name="z38"
command=z,z,a,a,a,z,x,x,z,x,z,x
time=0

[Command]
name="z39"
command=z,z,z,b,a,b,c,c,c,z,z,y
time=0

[Command]
name="z40"
command=z,z,B,c,y,c,c,z,a,z,a,z
time=0

[Command]
name="z41"
command=z,z,z,a,U,x,y,x,y,x,y,x
time=0

[Command]
name="z42"
command=z,z,z,U,F,F,b,b,a,b,a,c
time=0

[Command]
name="z43"
command=z,z,z,B,B,B,D,y,y,c,a,b
time=0

[Command]
name="z44"
command=B,B,B,U,a,b,c,b,z,y,y,z
time=0

[Command]
name="z45"
command=z,y,y,y,y,c,F,z,b,c,c,b
time=0

[Command]
name="z46"
command=z,U,B,D,D,c,D,y,a,z,y,a
time=0

[Command]
name="z47"
command=a,U,D,b,c,y,c,z,a,x,x,x
time=0

[Command]
name="z48"
command=y,y,b,c,U,U,D,x,x,a,y,x
time=0

[Command]
name="z49"
command=y,y,y,c,D,F,F,c,c,a,b,c
time=0

[Command]
name="z50"
command=U,a,D,y,F,z,b,B,a,c,x,y
time=0

[Command]
name="z51"
command=z,z,z,z,z,z,z,z,z,z,z,z
time=0

[Command]
name="z52"
command=x,x,x,x,x,x,x,x,x,x,x,x
time=0

[Command]
name="z53"
command=y,y,y,y,y,y,y,y,y,y,y,y
time=0

[Command]
name="z54"
command=c,c,c,c,c,c,c,c,c,c,c,c
time=0

[Command]
name="z55"
command=b,b,b,b,b,b,b,b,b,b,b,b
time=0

[Command]
name="z56"
command=a,a,a,a,a,a,a,a,a,a,a,a
time=0

[Command]
name="z57"
command=s,s,s,s,s,s,s,s,s,s,s,s
time=0

[Command]
name="z58"
command=U,U,U,U,U,U,U,U,U,U,U,U
time=0

[Command]
name="z59"
command=F,F,F,F,F,F,F,F,F,F,F,F
time=0

[Command]
name="z60"
command=D,D,D,D,D,D,D,D,D,D,D,D
time=0

[Command]
name="z61"
command=B,B,B,B,B,B,B,B,B,B,B,B
time=0

[Command]
name="z62"
command=x,x,x,x,x,x,x,x,x,x,x,x
time=0

[Command]
name="z63"
command=y,y,y,y,y,y,y,y,y,y,y,y
time=0

[Command]
name="z64"
command=c,c,c,c,c,c,c,c,c,c,c,c
time=0

[Command]
name="z65"
command=b,b,b,b,b,b,b,b,b,b,b,b
time=0

[Command]
name="z66"
command=a,a,a,a,a,a,a,a,a,a,a,a
time=0

[Command]
name="z67"
command=s,s,s,s,s,s,s,s,s,s,s,s
time=0

[Command]
name="z68"
command=U,U,U,U,U,U,U,U,U,U,U,U
time=0

[Command]
name="z69"
command=F,F,F,F,F,F,F,F,F,F,F,F
time=0

[Command]
name="z70"
command=D,D,D,D,D,D,D,D,D,D,D,D
time=0

[Command]
name="z71"
command=B,B,B,B,B,B,B,B,B,B,B,B
time=0

[Command]
name="z72"
command=x,x,x,x,x,x,x,x,x,x,x,x
time=0

[Command]
name="z73"
command=y,y,y,y,y,y,y,y,y,y,y,y
time=0

[Command]
name="z74"
command=c,c,c,c,c,c,c,c,c,c,c,c
time=0

[Command]
name="z75"
command=b,b,b,b,b,b,b,b,b,b,b,b
time=0

[Command]
name="z76"
command=a,a,a,a,a,a,a,a,a,a,a,a
time=0

[Command]
name="z77"
command=s,s,s,s,s,s,s,s,s,s,s,s
time=0

[Command]
name="z78"
command=U,U,U,U,U,U,U,U,U,U,U,U
time=0

[Command]
name="z79"
command=F,F,F,F,F,F,F,F,F,F,F,F
time=0

[Command]
name="z80"
command=D,D,D,D,D,D,D,D,D,D,D,D
time=0

;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, マジックサークル強]
type = ChangeState
value = 1150
triggerall = command = "Magic_Circle_c"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, マジックサークル中]
type = ChangeState
value = 1125
triggerall = command = "Magic_Circle_b"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, マジックサークル弱]
type = ChangeState
value = 1100
triggerall = command = "Magic_Circle_a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, 傲慢なる杭強]
type = ChangeState
value = 1350
triggerall = command = "Pride_Stake_c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 || stateno = 111 || stateno = 115 || stateno = 116
trigger3 = MoveContact & stateno = 600
trigger4 = MoveContact & stateno = 610 && animelemtime(4) >= 1 && animelemtime(6) <= 6
trigger5 = MoveContact & stateno = 615 && animelemtime(5) >= 1 && animelemtime(7) <= 2
trigger6 = MoveContact & stateno = 616 && animelemtime(5) >= 1 && animelemtime(7) <= 2
trigger7 = MoveContact & stateno = 625 && animelemtime(3) >= 1 && animelemtime(6) <= 6
trigger8 = MoveContact & stateno = 626 && animelemtime(3) >= 1 && animelemtime(6) <= 6

[State -1, 傲慢なる杭中]
type = ChangeState
value = 1325
triggerall = command = "Pride_Stake_b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 || stateno = 111 || stateno = 115 || stateno = 116
trigger3 = MoveContact & stateno = 600
trigger4 = MoveContact & stateno = 610 && animelemtime(4) >= 1 && animelemtime(6) <= 6
trigger5 = MoveContact & stateno = 615 && animelemtime(5) >= 1 && animelemtime(7) <= 2
trigger6 = MoveContact & stateno = 616 && animelemtime(5) >= 1 && animelemtime(7) <= 2
trigger7 = MoveContact & stateno = 625 && animelemtime(3) >= 1 && animelemtime(6) <= 6
trigger8 = MoveContact & stateno = 626 && animelemtime(3) >= 1 && animelemtime(6) <= 6

[State -1, 傲慢なる杭弱]
type = ChangeState
value = 1300
triggerall = command = "Pride_Stake_a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 || stateno = 111 || stateno = 115 || stateno = 116
trigger3 = MoveContact & stateno = 600
trigger4 = MoveContact & stateno = 610 && animelemtime(4) >= 1 && animelemtime(6) <= 6
trigger5 = MoveContact & stateno = 615 && animelemtime(5) >= 1 && animelemtime(7) <= 2
trigger6 = MoveContact & stateno = 616 && animelemtime(5) >= 1 && animelemtime(7) <= 2
trigger7 = MoveContact & stateno = 625 && animelemtime(3) >= 1 && animelemtime(6) <= 6
trigger8 = MoveContact & stateno = 626 && animelemtime(3) >= 1 && animelemtime(6) <= 6

[State -1, 傲慢なる杭強]
type = ChangeState
value = 1250
triggerall = command = "Pride_Stake_c"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, 傲慢なる杭中]
type = ChangeState
value = 1225
triggerall = command = "Pride_Stake_b"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, 傲慢なる杭弱]
type = ChangeState
value = 1200
triggerall = command = "Pride_Stake_a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, ルシファーブレード3段目強]
type = ChangeState
value = 1070
triggerall = statetype != A & (command = "Lucifer_Braid_c" || command = "x" & command = "holdfwd")
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && animelemtime(6) <= 2
trigger2 = stateno = 1030 && animelemtime(4) >= 1 && animelemtime(6) <= 2
trigger3 = stateno = 1060 && animelemtime(4) >= 1 && animelemtime(6) <= 2

[State -1, ルシファーブレード3段目中]
type = ChangeState
value = 1040
triggerall = statetype != A & (command = "Lucifer_Braid_b" || command = "x" & command = "holdfwd")
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && animelemtime(6) <= 2
trigger2 = stateno = 1030 && animelemtime(4) >= 1 && animelemtime(6) <= 2
trigger3 = stateno = 1060 && animelemtime(4) >= 1 && animelemtime(6) <= 2

[State -1, ルシファーブレード3段目弱]
type = ChangeState
value = 1020
triggerall = statetype != A & (command = "Lucifer_Braid_a" || command = "x" & command = "holdfwd")
trigger1 = stateno = 1010 && animelemtime(4) >= 1 && animelemtime(6) <= 2
trigger2 = stateno = 1030 && animelemtime(4) >= 1 && animelemtime(6) <= 2
trigger3 = stateno = 1060 && animelemtime(4) >= 1 && animelemtime(6) <= 2

[State -1, ルシファーブレード2段目強]
type = ChangeState
value = 1060
triggerall = statetype != A & (command = "Lucifer_Braid_c" || command = "x" & command = "holdfwd")
trigger1 = stateno = 1000 && animelemtime(6) >= 1 && animelemtime(7) <= 10
trigger2 = stateno = 1025 && animelemtime(6) >= 1 && animelemtime(7) <= 10
trigger3 = stateno = 1050 && animelemtime(6) >= 1 && animelemtime(7) <= 10

[State -1, ルシファーブレード2段目中]
type = ChangeState
value = 1030
triggerall = statetype != A & (command = "Lucifer_Braid_b" || command = "x" & command = "holdfwd")
trigger1 = stateno = 1000 && animelemtime(6) >= 1 && animelemtime(7) <= 10
trigger2 = stateno = 1025 && animelemtime(6) >= 1 && animelemtime(7) <= 10
trigger3 = stateno = 1050 && animelemtime(6) >= 1 && animelemtime(7) <= 10

[State -1, ルシファーブレード2段目弱]
type = ChangeState
value = 1010
triggerall = statetype != A & (command = "Lucifer_Braid_a" || command = "x" & command = "holdfwd")
trigger1 = stateno = 1000 && animelemtime(6) >= 1 && animelemtime(7) <= 10
trigger2 = stateno = 1025 && animelemtime(6) >= 1 && animelemtime(7) <= 10
trigger3 = stateno = 1050 && animelemtime(6) >= 1 && animelemtime(7) <= 10

[State -1, ルシファーブレード強]
type = ChangeState
value = 1050
triggerall = command = "Lucifer_Braid_c"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, ルシファーブレード中]
type = ChangeState
value = 1025
triggerall = command = "Lucifer_Braid_b"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

[State -1, ルシファーブレード弱]
type = ChangeState
value = 1000
triggerall = command = "Lucifer_Braid_a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = MoveContact & stateno = 200 && animelemtime(2) >= 1 && animelemtime(3) <= 4
trigger4 = MoveContact & stateno = 230 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger5 = MoveContact & stateno = 210 && animelemtime(3) >= 1 && animelemtime(6) <= 2
trigger6 = MoveContact & stateno = 215 && animelemtime(4) >= 1 && animelemtime(5) <= 12
trigger7 = MoveContact & stateno = 220 && animelemtime(5) >= 1 && animelemtime(6) <= 10
trigger8 = MoveContact & stateno = 225 && animelemtime(3) >= 1 && animelemtime(3) <= 8
trigger9 = MoveContact & stateno = 400 && animelemtime(3) >= 1 && animelemtime(4) <= 6
trigger10 = MoveContact & stateno = 410 && animelemtime(4) >= 1 && animelemtime(6) <= 6

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 =stateno != 101

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;■アピール
[State -1, アピール ]
type = ChangeState
value = 195
triggerall= var(59)=0
triggerall = command = "y"
trigger1 = statetype != A
trigger1 = ctrl

;■メタ宣言発動
[State ];メタ宣言
type=ChangeState
value=2900
trigger1=(command="Meta"||command="z")&&statetype!=A&&roundstate=2&&var(17)=1&&var(19)=0&&fvar(4)=0&&(ctrl||((stateno=[200,420])&&movecontact)||(statetype=S&&(stateno=[100,101])&&time>=1))

;==============================================================================
; 特殊技
;==============================================================================

[State ];投げ技
type=ChangeState
value=800
trigger1=command="Throw"&&statetype!=A&&(ctrl||((stateno=[100,101])&&time>=1))

;------------------------------------------------------------------------------
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State ];レバー入れ立ち弱
type=ChangeState
value=230
trigger1=numhelper(3000)&&command="a"&&command="holdfwd"&&command!="holddown"&&fvar(8)!=2
trigger1=helper(3000),var(35)=0&&((statetype=S&&(ctrl||((stateno=[100,101])&&time>=1)))||(stateno=230&&time>=8)||(statetype!=A&&((stateno=[200,205])||(stateno=[400,405]))&&movecontact))

[State ];レバー入れ立ち中
type=ChangeState
value=240
trigger1=numhelper(3000)&&command="b"&&command="holdfwd"&&command!="holddown"&&fvar(8)!=2
trigger1=helper(3000),var(35)=0&&((statetype=S&&(ctrl||((stateno=[100,101])&&time>=1)))||(stateno=205&&time>=8)||(statetype!=A&&((stateno=[200,230])||(stateno=[400,405]))&&movecontact))

[State ];レバー(斜め)入れ立ち中
type=ChangeState
value=430
trigger1=numhelper(3000)&&command="c"&&command="holddown"&&command="holdfwd"&&fvar(8)!=2
trigger1=helper(3000),var(35)=0&&((statetype!=A&&(ctrl||((stateno=[100,101])&&time>=1)))||(stateno=205&&time>=8)||(statetype!=A&&((stateno=[200,230])||(stateno=[400,410]))&&movecontact))

[State ];立ち弱
type=ChangeState
value=200
trigger1=command="a"&&command!="holddown"&&statetype!=A&&(ctrl||(((stateno=[200,205])||stateno=400)&&movecontact)||(stateno=200&&time>=13)||(stateno=230&&time>=10)||((stateno=[100,101])&&time>=1))

[State ];立ち中　近距離
type=ChangeState
value=215
trigger1=command="b"&&command!="holddown"&&statetype!=A&&P2BodyDist X<=30&&(ctrl||(((stateno=[200,205])||(stateno=[400,410]))&&movecontact)||((stateno=[100,101])&&time>=1))

[State ];立ち中　遠距離
type=ChangeState
value=210
trigger1=command="b"&&command!="holddown"&&statetype!=A&&P2BodyDist X>=30&&(ctrl||(((stateno=[200,205])||(stateno=[400,405]))&&movecontact)||((stateno=[100,101])&&time>=1))

[State ];立ち強　近距離
type=ChangeState
value=225
trigger1=command="c"&&command!="holddown"&&statetype!=A&&P2BodyDist X<=30&&(ctrl||(((stateno=[200,215])||stateno=230||(stateno=[400,410]))&&movecontact)||((stateno=[100,101])&&time>=1))

[State ];立ち強　遠距離
type=ChangeState
value=220
trigger1=command="c"&&command!="holddown"&&statetype!=A&&P2BodyDist X>=30&&(ctrl||(((stateno=[200,215])||stateno=230||(stateno=[400,410]))&&movecontact)||((stateno=[100,101])&&time>=1))

;------------------------------------------------------------------------------

[State ];しゃがみ弱
type=ChangeState
value=400
trigger1=command="a"&&command="holddown"&&statetype!=A&&(ctrl||(((stateno=[200,205])||stateno=400)&&movecontact)||(stateno=400&&time>=11)||((stateno=[100,101])&&time>=1))

[State ];しゃがみ中
type=ChangeState
value=410
trigger1=command="b"&&command="holddown"&&statetype!=A&&fvar(8)!=2&&(ctrl||(((stateno=[200,215])||stateno=230||stateno=400)&&movecontact)||((stateno=[100,101])&&time>=1))

[State ];しゃがみ強
type=ChangeState
value=420
trigger1=command="c"&&command="holddown"&&statetype!=A&&(ctrl||(((stateno=[200,225])||stateno=230||(stateno=[400,410]))&&movecontact)||((stateno=[100,101])&&time>=1))

;------------------------------------------------------------------------------

[State ];ジャンプ弱
type=ChangeState
value = Ifelse(vel x, 605, 600)
trigger1=command="a"&&statetype=A&&ctrl

[State ];ジャンプ中
type=ChangeState
value = Ifelse(vel x, 615, 610)
trigger1=command="b"&&statetype=A&&fvar(13)!=2&&(ctrl||((stateno=600||stateno=620)&&movecontact))

[State ];ジャンプ強
type=ChangeState
value = Ifelse(vel x, 625, 620)
trigger1=command="c"&&statetype=A&&fvar(13)!=2&&(ctrl||((stateno=[600,610])&&movecontact))

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
