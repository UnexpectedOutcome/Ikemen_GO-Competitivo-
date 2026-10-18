; 四次元殺法コンビコマンドファイルです。
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
;AI
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
[Command]
name = "AI51"
command = x,x,y,y,z,z,
time = 0
[Command]
name = "AI52"
command = x,z,x,z,x,z
time = 0
[Command]
name = "AI53"
command = x,a,x,a,x,a
time = 0
[Command]
name = "AI54"
command = x,b,x,b,x,b
time = 0
[Command]
name = "AI55"
command = x,c,x,c,x,c
time = 0
[Command]
name = "AI56"
command = y,x,y,x,y,x
time = 0]
[Command]
name = "AI57"
command = y,y,z,z,x,x,
time = 0
[Command]
name = "AI58"
command = y,z,y,z,y,z,
time = 0
[Command]
name = "AI59"
command = y,a,y,a,y,a
time = 0
[Command]
name = "AI60"
command = y,b,y,b,y,b
time = 0
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c


[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

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
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "x+a" 
command = x+a
time = 1

[Command]
name = "z+c" 
command = z+c
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
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
[State -1, 四次元交差];
type = ChangeState
value = 3500
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "QCB_c"
triggerall = statetype = S
triggerall = numhelper(4910) = 0
triggerall = var(20) = 0
trigger1 = ctrl
trigger1 = var(44) = 1

[State -1, ストップザタイム]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = var(50) = 0
triggerall = command = "z"
triggerall = power >= 3000
triggerall = var(20) = 0
trigger1 = var(1)

[State -1, ストップザタイム]
type = ChangeState
value = 3301
triggerall = var(59) = 0
triggerall = var(50) = 1
triggerall = command = "z"
triggerall = power >= 3000
triggerall = var(20) = 0
trigger1 = var(1)

[State -1, ストップザタイム（カウンター）]
type = ChangeState
value = 3250
triggerall = var(59) = 0
triggerall = command = "QCB_b"
triggerall = power >= 2000
trigger1 = var(1)

[State -1, スペースラッシュ]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "QCB_b"
triggerall = power >= 2000
triggerall = var(20) = 0
trigger1 = Pos Y < -15
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact
trigger4 = (stateno = [1250,1255])
trigger4 = movecontact

[State -1, 四次元カタパルト]
type = ChangeState
value = 3050
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "QCF_c"
triggerall = numhelper(4910) = 0
triggerall = power >= 1000
triggerall = var(20) = 0
trigger1 = var(1)

[State -1, クロノストライアングル]
type = ChangeState
value = 3400 ;3100
triggerall = var(59) = 0
triggerall = command = "QCF_c"
triggerall = power >= 1000
triggerall = var(20) = 0
trigger1 = var(50) != 1
trigger1 = numhelper(4910) = 1
trigger1 = var(1)
trigger2 = var(50) = 1
trigger2 = var(1)

[State -1, 四次元殺法・影分身]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = var(51) = 0
triggerall = var(50) != 1
triggerall = command = "QCB_a"
triggerall = numhelper(4910) = 0
triggerall = numhelper(3005) = 0
triggerall = numhelper(4905) = 0
triggerall = power >= 1000
trigger1 = var(1)

[State -1, 四次元殺法・影分身]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = var(51) = 1
triggerall = command = "QCB_a"
triggerall = numhelper(3005) = 0
triggerall = power >= 1000
trigger1 = var(1)
;==============================================================================
; 必殺技
;==============================================================================
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
trigger2 = stateno != 260
trigger2 = stateno != 450
trigger2 = stateno != 460
trigger2 = movecontact
var(1) = 1
;------------------------------------------------------------------------------
[State -1, バミューダアタック]
type = ChangeState
value = 1060
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "QCF_a"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4050) = 0
trigger1 = var(1)

[State -1, 蛇影]
type = ChangeState
value = 1053
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command ="holddown"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4015) = 0
trigger1 = var(1)

[State -1, シャドウバイシクルキック]
type = ChangeState
value = 1052
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command ="holdfwd"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4010) = 0
trigger1 = var(1)

[State -1, シャドウムーンサルトプレス]
type = ChangeState
value = 1051
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command ="holdback"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4005) = 0
trigger1 = var(1)

[State -1, シャドウクロスチョップ]
type = ChangeState
value = 1050
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4000) = 0
trigger1 = var(1)

[State -1, シャドウバイシクルキック（空中）]
type = ChangeState
value = 1057
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command ="holdfwd"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4010) = 0
trigger1 = Pos Y < -15
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact

[State -1, シャドウムーンサルトプレス（空中）]
type = ChangeState
value = 1056
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command ="holdback"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4005) = 0
trigger1 = Pos Y < -15
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact

[State -1, シャドウクロスチョップ（空中）]
type = ChangeState
value = 1055
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = numhelper(4910) = 0
triggerall = numhelper(4000) = 0
trigger1 = Pos Y < -15
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact
;------------------------------------------------------------------------------
[State -1, 急速上昇]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "QCF_x"
trigger1 = var(1)

[State -1, 急速上昇からの二段ジャンプ]
type = ChangeState
value = 45
triggerall = var(59) = 0
triggerall = command = "holdup"
trigger1 = stateno = 1000
trigger1 = ctrl

[State -1, スペースファルコン]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "QCF_y"
trigger1 = var(1)

;追撃空中ダッシュ
[State -1]
Type = ChangeState
Value = 1120
TriggerAll = Command = "FF" 
TriggerAll = StateType = A
TriggerAll = var(2) < 2
triggerall = var(59) = 0
trigger1 = stateno = 1100
trigger1 = movecontact
trigger1 = AnimElemTime(8) >= 0

;離脱空中ダッシュ
[State -1]
Type = ChangeState
Value = 1125
TriggerAll = Var(59) = 0
TriggerAll = Command = "BB" 
TriggerAll = StateType = A
TriggerAll = var(2) < 2
trigger1 = stateno = 1100
trigger1 = movecontact
trigger1 = AnimElemTime(8) >= 0

[State -1, クロノスチェンジ]
type = ChangeState
value = 1150
triggerall = var(59) = 0
triggerall = command = "QCB_x"
trigger1 = var(1)

[State -1, スペースキック]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "QCF_x"
trigger1 = Pos Y < -15
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact

[State -1, スペースヴォルテックス]
type = ChangeState
value = 1250
triggerall = var(59) = 0
triggerall = command = "QCF_y"
triggerall = var(6) = 0
trigger1 = Pos Y < -25
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact

[State -1, スペースヴォルテックス（遠）]
type = ChangeState
value = 1255
triggerall = var(59) = 0
triggerall = var(6) = 0
triggerall = command = "QCF_b"
trigger1 = Pos Y < -25
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 260
trigger3 = movecontact
;------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;空中ダッシュ
[State -1]
Type = ChangeState
Value = 110
TriggerAll = Command = "FF" 
TriggerAll = StateType = A
TriggerAll = var(2) < 2
triggerall = var(59) = 0
Trigger1 = Ctrl
Trigger1 = Pos Y <= -25
trigger2 = stateno = 1000
trigger2 = Ctrl

;空中バックダッシュ
[State -1]
Type = ChangeState
Value = 115
TriggerAll = Var(59) = 0
TriggerAll = Command = "BB" 
TriggerAll = StateType = A
TriggerAll = var(2) < 2
Trigger1 = Ctrl
Trigger1 = Pos Y <= -25
trigger2 = stateno = 1000
trigger2 = Ctrl
;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
;アームホイップ（投げ技）
[State -1, ]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = statetype = S
triggerall = var(20) = 0
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = time >= 1

;メテオヒールドロップ（空中投げ）
[State -1,]
type = ChangeState
value = 850
triggerall = Var(59) = 0
triggerall = command = "c"
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = Pos Y < -50
triggerall = var(20) = 0
trigger1 = Numtarget = 0
trigger1 = Enemy,Hitover
trigger1 = ctrl 
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movehit
;------------------------------------------------------------------------------
[State -1, ストップザタイム(ガードキャンセル)]
type = ChangeState
value = 900
triggerall = Var(59) = 0
triggerall = command = "x+a"
triggerall = command = "holdfwd"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153
;------------------------------------------------------------------------------
[State -1, 四次元サマーソルトキック]
type = ChangeState
value = 460
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 450
trigger6 = movehit

[State -1, 四次元ドロップキック]
type = ChangeState
value = 260
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

[State -1, 四次元スライディング]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact


;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち・中]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

[State -1, 立ち強]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ・中]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

[State -1, しゃがみ強]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
;------------------------------------------------------------------------------
[State -1, 四次元エネミーステップ]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, 四次元ボディプレス]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1120
trigger3 = statetime >= 3

[State -1, ジャンプ・中]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 1120
trigger3 = statetime >= 3

[State -1, ジャンプ強]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 1120
trigger3 = statetime >= 3
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
