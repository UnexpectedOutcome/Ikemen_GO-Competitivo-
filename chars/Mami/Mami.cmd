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
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "DFDFx"
command = D,F,D,F,x
time = 35

[Command]
name = "DFDFa"
command = D,F,D,F,a
time = 35

[Command]
name = "DFDFb"
command = D,F,D,F,b
time = 35

[Command]
name = "DBDBb"
command = D,B,D,B,b
time = 35

[Command]
name = "DF_ab"
command = D, F, a+b
time = 15

[Command]
name = "DB_ab"
command = D, B, a+b
time = 15

[Command]
name = "DB_xa"
command = D, B, x+a
time = 15
;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "FDDF_b"
command = F,D,DF, b
time = 25

[Command]
name = "DD_b"
command = D, D, b
time = 15

[Command]
name = "DD_c"
command = D, D, c
time = 15

[Command]
name = "DD_x"
command = D, D, x
time = 15

[Command]
name = "BDDB_x"
command = B,D,DB, x
time = 25

[Command]
name = "FDDF_x"
command = F,D,DF, x
time = 25

[Command]
name = "BDF_x"
command = B,D,F,x
time = 25

[Command]
name = "BDF_b"
command = B,D,F,b
time = 25

[Command]
name = "FDB_b"
command = F,D,B,b
time = 25

[Command]
name = "FDB_x"
command = F,D,B,x
time = 25

[Command]
name = "BDDB_x"
command = B,D,DB, x
time = 25

[Command]
name = "BDDB_c"
command = B,D,DB, c
time = 25

[Command]
name = "FDDF_c"
command = F,D,DF, c
time = 25

[Command]
name = "DB_c"
command = D, B, c
time = 15

[Command]
name = "DF_c"
command = D, F, c
time = 15

[Command]
name = "DB_a"
command = D, B, a
time = 15

[Command]
name = "DF_b"
command = D, F, b
time = 15

[Command]
name = "DF_a"
command = D, F, a
time = 15

[Command]
name = "DF_x"
command = D, F, x
time = 15

[Command]
name = "DB_x"
command = D, B, x
time = 15

[Command]
name = "DB_b"
command = D, B, b
time = 15

[Command]
name = "FDDF_z"
command = F,D,DF, z
time = 25

[Command]
name = "BDF_z"
command = B,D,F,z
time = 25

[Command]
name = "DB_z"
command = D, B, z
time = 15

[Command]
name = "DF_z"
command = D, F, z
time = 15
;---------------------------

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "jump"    
command = ~D,$U
time = 10


;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "cy"
command = c+y
time = 1

[Command]
name = "retomar"
command = c+start
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by" ;必須コマンド名
command = b+y
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = y
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "holdback_z"
command = /$B,z
time = 1

[Command]
name = "holdfwd_s"
command = /$F,s
time = 1

[Command]
name = "holdback_s"
command = /$B,s
time = 1

[Command]
name = "holdback_a"
command = /$B,a
time = 1

[Command]
name = "holdfwd_c"
command = /$F,c
time = 1

[Command]
name = "holdback_c"
command = /$B,c
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "holdfwd_x"
command = /$F,x
time = 1

[Command]
name = "holdfwd_a"
command = /$F,a
time = 1

[Command]
name = "holdfwd_b"
command = /$F,b
time = 1

[Command]
name = "holdslashd_a"
command = /D,a
time = 1

[Command]
name = "holddown_x"
command = /$D,x
time = 1

[Command]
name = "holdfwd_y"
command = /$F,y
time = 1

[Command]
name = "holdback_y"
command = /$B,y
time = 1

[Command]
name = "holdslashf_y"
command = /$DF,y
time = 1

[Command]
name = "holdslashb_c"
command = /$DB,c
time = 1

[Command]
name = "holdslashb_y"
command = /$DB,y
time = 1

[Command]
name = "holdslash_a"
command = /$DF,a
time = 1

[Command]
name = "holdslash_b"
command = /$DF,b
time = 1
;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "holds"
command = /s
time = 1

[Command]
name = "holdz"
command = /z

[Command]
name = "holdc"
command = /c

[Command]
name = "holda"
command = /a

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

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdufwd"   ;必須コマンド名
command = /$UF
time = 1

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
;------------------------------------------------------------------------------
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

;------------------------------------------------------------------------------


[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 一撃必殺ティロフィナーレ]
type = ChangeState
value = 4000
triggerall = var(59) <= 0
triggerall = command = "DF_ab"
triggerall = fvar(20) > 500
triggerall = fvar(21) = 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 2800 && MoveContact
trigger7 = stateno = 1310 && MoveContact
trigger8 = stateno = 1480 && MoveContact
trigger9 = stateno = 2300 && MoveContact
trigger10 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger10 = movecontact
trigger11 = stateno = 12800
trigger11 = AnimElemTime(7) >= 0
trigger11 = AnimElemTime(9) < 0

[State -1, 銃ありティロフィナーレ]
type = ChangeState
value = 13500
triggerall = var(59) <= 0
triggerall = command = "DFDFb"
triggerall = var(10) = 1
triggerall = fvar(20) > 300
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact
trigger3 = stateno = 12800
trigger3 = AnimElemTime(7) >= 0
trigger3 = AnimElemTime(9) < 0

[State -1, ティロフィナーレ（空中）]
type = ChangeState
value = 3550
triggerall = var(59) <= 0
triggerall = command = "DFDFb"
triggerall = var(10) = 0
triggerall = fvar(20) > 500
triggerall = power >= 2000 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y <= -50
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 1200 && MoveContact
trigger7 = stateno = 1100 && MoveContact

[State -1, ティロフィナーレ]
type = ChangeState
value = 3500
triggerall = var(59) <= 0
triggerall = command = "DFDFb"
triggerall = var(10) = 0
triggerall = fvar(20) > 500
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 2800 && MoveContact
trigger7 = stateno = 1310 && MoveContact
trigger8 = stateno = 1480 && MoveContact
trigger9 = stateno = 2300 && MoveContact

[State -1, 無限の魔弾]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "DBDBb"
triggerall = var(10) = 0
triggerall = fvar(20) > 500
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 2800 && MoveContact
trigger7 = stateno = 1310 && MoveContact
trigger8 = stateno = 1480 && MoveContact

[State -1, 銃あり無限の魔弾]
type = ChangeState
value = 13000
triggerall = var(59) <= 0
triggerall = command = "DBDBb"
triggerall = var(10) = 1
triggerall = fvar(20) > 500
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1, レガーレ・ヴァスターリア]
type = ChangeState
value = 1800
triggerall = var(59) <= 0
triggerall = command = "DB_xa"
triggerall = fvar(20) > 500
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact

[State -1,ティロボレー ]
type = ChangeState
value = 2400
triggerall = var(59) <= 0
triggerall = command = "DFDFx"
triggerall = var(10) = 0
triggerall = fvar(20) > 400
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1,ハイキック ]
type = ChangeState
value = 2300
triggerall = var(59) <= 0
triggerall = command = "DFDFa"
triggerall = var(10) = 0
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1,両手大砲 ]
type = ChangeState
value = 2800
triggerall = var(59) <= 0
triggerall = command = "FDDF_b"
triggerall = var(10) = 0
triggerall = fvar(20) > 300 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact
trigger8 = stateno = 2300 && MoveContact

[State -1,両手大砲]
type = ChangeState
value = 2800
triggerall = var(59) <= 0
triggerall = command = "DD_b"
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact
trigger8 = stateno = 2300 && MoveContact = 1

[State -1,銃あり乱れ撃ち]
type = ChangeState
value = 12600
triggerall = var(59) <= 0
triggerall = command = "holdfwd_s"
triggerall = command != "holddown"
triggerall = var(10) = 1
triggerall = helper(8520),rootdist X = [-50,50]
triggerall = helper(8520),pos Y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1,銃あり乱れ撃ち]
type = ChangeState
value = 12601
triggerall = var(59) <= 0
triggerall = command = "holdfwd_s"
triggerall = command != "holddown"
triggerall = var(10) = 1
triggerall = helper(8503),rootdist X = [-50,50]
triggerall = helper(8503),pos Y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1,乱れ撃ち]
type = ChangeState
value = 2600
triggerall = var(59) <= 0
triggerall = command = "holdfwd_s"
triggerall = command != "holddown"
triggerall = var(10) = 0
triggerall = helper(8520),rootdist X = [-50,50]
triggerall = helper(8520),pos Y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1,乱れ撃ち]
type = ChangeState
value = 2601
triggerall = var(59) <= 0
triggerall = command = "holdfwd_s"
triggerall = command != "holddown"
triggerall = var(10) = 0
triggerall = helper(8503),rootdist X = [-50,50]
triggerall = helper(8503),pos Y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1, 銃ありコマンド投げ]
type = ChangeState
value = 10850
triggerall = var(59) <= 0
triggerall = command = "FDB_b"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10225]) || (stateno = [10400,10420])
trigger2 = movecontact

[State -1, コマンド投げ]
type = ChangeState
value = 850
triggerall = var(59) <= 0
triggerall = command = "FDB_b"
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420])
trigger2 = movecontact

[State -1, 当身]
type = ChangeState
value = 10700
triggerall = var(59) <= 0
triggerall = command = "BDDB_x"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 昇龍銃]
type = ChangeState
value = 11400
triggerall = var(59) <= 0
triggerall = command = "DD_x"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1, 昇龍銃]
type = ChangeState
value = 11400
triggerall = command = "FDDF_x"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1, トッカ（対空）]
type = ChangeState
value = 1420
triggerall = var(59) <= 0
triggerall = command = "DD_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1310 && MoveContact

[State -1, トッカ（対空）]
type = ChangeState
value = 1420
triggerall = var(59) <= 0
triggerall = command = "FDDF_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1310 && MoveContact

[State -1, 空中銃撃ち]
type = ChangeState
value = 2700
triggerall = var(59) <= 0
triggerall = command = "DB_b"
triggerall = var(10) = 0
triggerall = var(11) = 1
triggerall = fvar(20) > 400
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y <= -50
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 1100 && MoveContact
trigger7 = stateno = 1200 && MoveContact

[State -1, ティロ・ドッピエッタ]
type = ChangeState
value = 12800
triggerall = var(59) <= 0
triggerall = command = "BDF_b"
triggerall = var(10) = 1
triggerall = fvar(20) > 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1, レガーレ（対空）]
type = ChangeState
value = 1700
triggerall = var(59) <= 0
triggerall = command = "BDDB_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 400
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 2800 && MoveContact

[State -1, トッカ・スピラーレ]
type = ChangeState
value = 1480
triggerall = var(59) <= 0
triggerall = command = "FDB_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1422 && MoveContact
trigger5 = stateno = 1301 && MoveContact
trigger6 = stateno = 1310 && MoveContact

[State -1, レガーレ]
type = ChangeState
value = 1600
triggerall = var(59) <= 0
triggerall = command = "BDF_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 400
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1480 && MoveContact

[State -1, アイギスの鏡]
type = ChangeState
value = 2100
triggerall = var(59) <= 0
triggerall = command = "DB_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact

[State -1, トッカ]
type = ChangeState
value = 1400
triggerall = var(59) <= 0
triggerall = command = "DF_x"
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact

[State -1, 空中回し蹴り]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "DF_a"
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact

[State -1, 銃叩きつけ攻撃]
type = ChangeState
value = 11200
triggerall = var(59) <= 0
triggerall = command = "DB_x"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 && MoveContact
trigger3 = stateno = 10610 && MoveContact
trigger4 = stateno = 10620 && MoveContact

[State -1, 銃あり空中下降蹴り]
type = ChangeState
value = 11100
triggerall = var(59) <= 0
triggerall = command = "DB_a"
triggerall = var(10) = 1
triggerall = fvar(20) > 400
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y <= -50
trigger2 = stateno = 10600 && MoveContact
trigger3 = stateno = 10610 && MoveContact
trigger4 = stateno = 10620 && MoveContact
trigger5 = stateno = 11200 && MoveContact

[State -1, 空中銃設置]
type = ChangeState
value = 1150
triggerall = var(59) <= 0
triggerall = command = "DF_b"
triggerall = fvar(20) > 300
triggerall = Pos Y <= -20
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact || stateno = 10600 && MoveContact
trigger3 = stateno = 610 && MoveContact || stateno = 10610 && MoveContact
trigger4 = stateno = 620 && MoveContact || stateno = 10620 && MoveContact
trigger5 = stateno = 630 && MoveContact || stateno = 11200 && MoveContact
trigger6 = stateno = 1200 && MoveContact || stateno = 11100 && MoveContact
trigger7 = stateno = 1100 && MoveContact

[State -1, 空中下降蹴り]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "DB_a"
triggerall = var(10) = 0
triggerall = fvar(20) > 400
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y <= -50
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 1200 && MoveContact

[State -1, 回し蹴り]
type = ChangeState
value = 1300
triggerall = var(59) <= 0
triggerall = command = "DF_a"
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact

[State -1, 銃あり銃設置後]
type = ChangeState
value = 11010
triggerall = var(59) <= 0
triggerall = command = "DB_b"
triggerall = var(10) = 1
triggerall = fvar(20) > 300
trigger1 = NumHelper(8015) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1, ティーロ]
type = ChangeState
value = 11000
triggerall = var(59) <= 0
triggerall = command = "DF_b"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10230]) || (stateno = [10400,10440])
trigger2 = movecontact

[State -1, 銃設置後]
type = ChangeState
value = 1010
triggerall = var(59) <= 0
triggerall = command = "DB_b"
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = NumHelper(8015) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1, 銃設置前]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "DF_b"
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact
trigger4 = stateno = 1301 && MoveContact
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1,拾い撃ち]
type = ChangeState
value = 1080
triggerall = var(59) <= 0
triggerall = command = "start"
triggerall = command != "holddown"
triggerall = (helper(8201),rootdist X = [-40,40]) || (helper(8202),rootdist X = [-40,40])
triggerall = (helper(8201),pos Y = 0) || (helper(8202),pos Y = 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact || (stateno = [10200,10230])
trigger4 = stateno = 1301 && MoveContact || (stateno = [10400,10440])
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1,拾い撃ち]
type = ChangeState
value = 1080
triggerall = var(59) <= 0
triggerall = command = "start"
triggerall = command != "holddown"
triggerall = (helper(8203),rootdist X = [-40,40]) || (helper(8204),rootdist X = [-40,40])
triggerall = (helper(8203),pos Y = 0) || (helper(8204),pos Y = 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact || (stateno = [10200,10230])
trigger4 = stateno = 1301 && MoveContact || (stateno = [10400,10440])
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1,拾い撃ち]
type = ChangeState
value = 1080
triggerall = var(59) <= 0
triggerall = command = "start"
triggerall = command != "holddown"
triggerall = (helper(8205),rootdist X = [-40,40]) || (helper(8206),rootdist X = [-40,40])
triggerall = (helper(8205),pos Y = 0) || (helper(8206),pos Y = 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 1400 && MoveContact || (stateno = [10200,10230])
trigger4 = stateno = 1301 && MoveContact || (stateno = [10400,10440])
trigger5 = stateno = 1422 && MoveContact
trigger6 = stateno = 1310 && MoveContact
trigger7 = stateno = 1480 && MoveContact

[State -1, 銃ばらまき]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "DD_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = NumHelper(8520) = 0
trigger1 = ctrl
value = 2500

[State -1, ジャンプ銃ばらまき]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "BDDB_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = NumHelper(8501) = 0
trigger1 = ctrl
value = 2501

[State -1, 銃ばらまき]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "FDDF_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = fvar(20) > 300
trigger1 = NumHelper(8520) = 0
trigger1 = ctrl
value = 2500



;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 銃捨て]
type = ChangeState
value = 160
triggerall = var(59) <= 0
triggerall = command = "holdback_s"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 銃召喚]
type = ChangeState
value = 11001
triggerall = var(59) <= 0
triggerall = command = "DF_c"
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = statetype != A
trigger1 = ctrl

[State -1, バックステップ銃召喚]
type = ChangeState
value = 108
triggerall = var(59) <= 0
triggerall = command = "DB_c"
triggerall = statetype = S
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = ctrl

[State -1, 空中ダッシュ前]
type = ChangeState
value = 111
triggerall = var(59) <= 0
triggerall = command = "FF"
triggerall = statetype = A
triggerall = fvar(20) > 200
triggerall = stateno != 111
triggerall = stateno != 116
trigger1 = Pos Y <= -25
trigger1 = ctrl

[State -1, 空中ダッシュ後]
type = ChangeState
value = 116
triggerall = var(59) <= 0
triggerall = command = "BB"
triggerall = statetype = A
triggerall = fvar(20) > 200
trigger1 = Pos Y <= -25
trigger1 = ctrl

[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59) <= 0
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl


[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) <= 0
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl

[State -1, 空中ダッシュ前]
type = ChangeState
value = 111
triggerall = var(59) <= 0
triggerall = command = "holdfwd_y"
triggerall = statetype = A
triggerall = fvar(20) > 200
triggerall = stateno != 111
triggerall = stateno != 116
trigger1 = Pos Y <= -40
trigger1 = ctrl

[State -1, 空中ダッシュ後]
type = ChangeState
value = 116
triggerall = var(59) <= 0
triggerall = command = "holdback_y"
triggerall = statetype = A
triggerall = fvar(20) > 200
trigger1 = Pos Y <= -40
trigger1 = ctrl


[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59) <= 0
triggerall = command = "holdfwd_y"
triggerall = statetype = S
trigger1 = ctrl


[State -1, バックステップ]
type = ChangeState
value = 107
triggerall = var(59) <= 0
triggerall = command = "holdback_y"
triggerall = statetype = S
trigger1 = ctrl

[State -1, 避け]
type = ChangeState
value = 84
triggerall = var(59) <= 0
triggerall = command = "ax"
triggerall = statetype = S
trigger1 = ctrl


[State -1, 転がり前]
type = ChangeState
value = 81
triggerall = var(59) <= 0
triggerall = command = "holdslashf_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,430])
trigger2 = movecontact

[State -1, 転がり後]
type = ChangeState
value = 82
triggerall = var(59) <= 0
triggerall = command = "holdslashb_y"
trigger1 = statetype != A
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 投げ]
type = ChangeState
value = 10800
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 10100
triggerall = var(10) = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, 巴投げ]
type = ChangeState
value = 800
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(10) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, ダウン攻撃銃]
type = ChangeState
value = 10740
triggerall = var(59) <= 0
triggerall = command = "holdslashd_a"
triggerall = var(10) = 1
trigger1 = statetype != A
trigger1 = p2statetype = L
trigger1 = ctrl


[State -1, 踏みつけ]
type = ChangeState
value = 740
triggerall = var(59) <= 0
triggerall = command = "holdslashd_a"
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = p2statetype = L
trigger1 = ctrl

[State -1, 足払い]
type = ChangeState
value = 425
triggerall = var(59) <= 0
triggerall = command = "holdslash_a"
triggerall = command = "holddown"
triggerall = var(10) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420])
trigger2 = stateno != 220
trigger2 = movecontact

[State -1, 銃ありスライディング]
type = ChangeState
value = 10430
triggerall = var(59) <= 0
triggerall = command = "holdslash_a"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [10200,10225]) || (stateno = [10400,10420])
trigger2 = movecontact

[State -1, スライディング]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "holdslash_b"
triggerall = command = "holddown"
triggerall = var(10) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420])
trigger2 = movecontact

[State -1, 3銃ありしゃがみ強]
type = ChangeState
value = 10440
triggerall = var(59) <= 0
triggerall = command = "holdslash_b"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [10200,10225]) || (stateno = [10400,10420])
trigger2 = movecontact

[State -1, 6銃あり立ち強 ]
type = ChangeState
value = 10230
triggerall = var(59) <= 0
triggerall = command = "holdfwd_b"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X > 10
trigger2 = (stateno = [10200,10225]) || (stateno = [10400,10420])
trigger2 = movecontact

[State -1,4ジャンプ中]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "holdback_a"
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact

;------------------------------------------------------------------------------

[State -1,銃ありバインドの魔法印]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdslashb_c"
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(37) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 12005

[State -1,バインドの魔法印]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdslashb_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = var(37) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 2005

[State -1,銃あり自己強化DEF]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdback_c"
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(33) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 12021

[State -1,自己強化DEF]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdback_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = var(33) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 2021

[State -1,銃あり自己強化ATK]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdfwd_c"
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(32) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 12011

[State -1,自己強化ATK]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdfwd_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = var(32) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 2011

[State -1,銃あり自己強化MP]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "down_c"
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = var(31) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 12001

[State -1,自己強化MP]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "down_c"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = var(31) = 0
triggerall = fvar(20) > 500
trigger1 = ctrl
value = 2001

[State -1,魔力溜め]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = statetype = S
triggerall = var(10) = 0
trigger1 = ctrl
value = 777

[State -1,緊急回避]
type = ChangeState
value = 954
triggerall = command = "ab"
triggerall = var(10) = 0
triggerall = anim != 1421
trigger1 = statetype != A
trigger1 = stateno = [150,153]
trigger1 = fvar(20) > 500
ignorehitpause = 1


[State -1,アドガ立ち]
type = ChangeState
value = 10951
triggerall = var(59) <= 0
triggerall = command = "ab"
triggerall = var(10) = 1
triggerall = statetype = S
trigger1 = stateno = [150,153]
trigger1 = fvar(20) > 500
ignorehitpause = 1

[State -1,アドガしゃがみ]
type = ChangeState
value = 10952
triggerall = var(59) <= 0
triggerall = command = "ab"
triggerall = var(10) = 1
triggerall = statetype = C
trigger1 = stateno = [151,153]
trigger1 = fvar(20) > 500
ignorehitpause = 1

[State -1,アドガ空中]
Type = ChangeState
Value = 10953
triggerall = var(59) <= 0
triggerall = Command = "ab"
triggerall = var(10) = 1
triggerall = Statetype = A
trigger1 = Stateno = 154
trigger1 = fvar(20) > 500
ignorehitpause = 1

[State -1,シールド立ち]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = ctrl
value = 701


[State -1,シールドしゃがみ]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command != "holdup"
triggerall = statetype != A
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = ctrl
value = 703


[State -1,シールド空中]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = statetype = A
triggerall = var(10) = 0
triggerall = fvar(20) > 200
trigger1 = ctrl
trigger1 = Pos Y <= -40
value = 705

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact


[State -1, 銃あり立ち弱]
type = ChangeState
value = 10200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10200 && MoveContact
trigger3 = stateno = 10400 && MoveContact

[State -1, 立ち中（近）]
type = ChangeState
value = 215
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact

[State -1, 立ち中（遠）]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,215]) || (stateno = [400,410])
trigger2 = stateno != 210
trigger2 = movecontact

[State -1, 銃あり立ち中]
type = ChangeState
value = 10210
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10215]) || (stateno = [10400,10410])
trigger2 = stateno != 10210
trigger2 = movecontact

[State -1, 立ち強（近）]
type = ChangeState
value = 225
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,215]) || (stateno = [400,410])
trigger2 = movecontact

[State -1, 立ち強（遠）]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420])
trigger2 = stateno != 220
trigger2 = movecontact

[State -1, 銃あり立ち強]
type = ChangeState
value = 10220
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10225]) || (stateno = [10400,10420])
trigger2 = stateno != 10220
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(10) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 200 && MoveContact

[State -1, 銃ありしゃがみ弱]
type = ChangeState
value = 10400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 10400 && MoveContact
trigger3 = stateno = 10200 && MoveContact

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(10) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 215 && MoveContact

[State -1, 銃ありしゃがみ中]
type = ChangeState
value = 10410
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 10400 && MoveContact
trigger3 = stateno = 10200 && MoveContact
trigger4 = stateno = 10215 && MoveContact

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(10) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,410])
trigger2 = stateno != 220
trigger2 = movecontact

[State -1, 銃ありしゃがみ強]
type = ChangeState
value = 10420
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [10200,10225]) || (stateno = [10400,10410])
trigger2 = stateno != 10220
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact

[State -1, 銃ありジャンプ弱]
type = ChangeState
value = 10600
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 && MoveContact

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact

[State -1, 銃ありジャンプ中]
type = ChangeState
value = 10610
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 && MoveContact

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact

[State -1, 銃ありジャンプ強]
type = ChangeState
value = 10620
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 && MoveContact
trigger3 = stateno = 10610 && MoveContact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1,まどか召喚]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdback_z"
triggerall = statetype != A
triggerall = var(29) = 0
triggerall = var(40) = 0
trigger1 = var(51) > 150
trigger1 = ctrl
value = 2900
;------------------------------------------------------------------------------
[State -1, Retomar control]
type = ChangeState
value = 9999
triggerall = command = "retomar"
trigger1 = 1
