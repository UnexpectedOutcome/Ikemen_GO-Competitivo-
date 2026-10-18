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
command.time = 20  ;標準のコマンド入力受付時間。
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
;---------------------------
;別モード用コマンド
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
name = "22y"
command = ~D, D, y

[Command]
name = "22z"
command = ~D, D, z

[Command]
name = "214x"
command = ~D, DB, B, x

[Command]
name = "214y"
command = ~D, DB, B, y

[Command]
name = "214z"
command = ~D, DB, B, z

[Command]
name = "2146x"
command = ~D, DB, B, F, x

[Command]
name = "2146y"
command = ~D, DB, B, F, y

[Command]
name = "2146z"
command = ~D, DB, B, F, z

[Command]
name = "236236y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "236236z"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "214214y"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "214214z"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "spell_0a"
command = ~B, DB, D, x

[Command]
name = "spell_0b"
command = ~D, D, x

;---------------------------
;コマンド技
[Command]
name = "623b"
command = ~F, D, DF, b

[Command]
name = "623c"
command = ~F, D, DF, c

[Command]
name = "236b"
command = ~D, DF, F, b

[Command]
name = "236c"
command = ~D, DF, F, c

[Command]
name = "214b"
command = ~D, DB, B, b

[Command]
name = "214c"
command = ~D, DB, B, c

[Command]
name = "22b"
command = ~D, D, b

[Command]
name = "22c"
command = ~D, D, c

[Command]
name = "card_change"
command = a+b

[Command]
name = "card_change"
command = y

[Command]
name = "card_use"
command = b+c

[Command]
name = "card_use"
command = z

[Command]
name = "test"
command = /$D,s

[Command]
name = "test2"
command = /$F,s

[Command]
name = "test3"
command = /$B,s
;------------------------------------------------------------------------------

[Command]
name = "xx"
command = x, x
time = 15

;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;------------------------------------------------------------------------------
;-| 受身 |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = /$F,a
time = 1

[Command]
name = "recovery" 
command = /$F,b
time = 1

[Command]
name = "recovery" 
command = /$F,c
time = 1

[Command]
name = "recovery" 
command = /$F,x
time = 1

[Command]
name = "recovery" 
command = /$B,a
time = 1

[Command]
name = "recovery" 
command = /$B,b
time = 1

[Command]
name = "recovery" 
command = /$B,c
time = 1

[Command]
name = "recovery" 
command = /$B,x
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
name = "up_x"
command = /$x,U
time = 1

[Command]
name = "upf_x"
command = /$x,UF
time = 1

[Command]
name = "upb_x"
command = /$x,UB
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

;---------------------------
;各種ホールド
[Command]
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_c"
command = /c

[Command];飛翔ボタン
name = "fly"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

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
;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
[Statedef -1] 

;==============================================================================
; コマンドモード時
;==============================================================================

[State -1, 「仮面喪心舞 暗黒能楽」]
type = ChangeState
value = 1420
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "236236z"
triggerall = power >= 5000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 「ファタモルガーナの希劇」]
type = ChangeState
value = 1410
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "236236y"
triggerall = power >= 5000
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 喜符「昂揚の神楽獅子」]
type = ChangeState
value = 1400
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "2146z"
triggerall = power >= 5000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒符「怒れる忌狼の面」]
type = ChangeState
value = 1390
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "2146y"
triggerall = power >= 4000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂面「杞人地を憂う」]
type = ChangeState
value = 1380
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "2146x"
triggerall = power >= 4000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 「モンキーポゼッション」]
type = ChangeState
value = 1370
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "236z"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面


[State -1, 呪面「月追の兎面」]
type = ChangeState
value = 1365
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "236y"
triggerall = power >= 3000
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 呪面「月追の兎面」]
type = ChangeState
value = 1360
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "236y"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1,「口裂けの感情」 ]
type = ChangeState
value = 1330
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "214y"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面


[State -1, 憂符「憂き世は憂しの小車」]
type = ChangeState
value = 1320
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "214x"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒面「怒れる忌狼の面」]
type = ChangeState
value = 1310
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "22z"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憑依「喜怒哀楽ポゼッション」]
type = ChangeState
value = 1300
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "22y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 霊撃]
type = ChangeState
value = 1210
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "spell_0a"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = [120,159]

[State -1, 気質発現]
type = ChangeState
value = 1220
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = command = "spell_0b"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂嘆の長壁面]
type = ChangeState
value = 1160
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = (command = "623b") || (command = "623c")
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂心の鬼婆面（設置）]
type = ChangeState
value = 1150
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = (command = "623b") || (command = "623c")
triggerall = NumHelper(11150) < 1
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂心の鬼婆面（起爆）]
type = ChangeState
value = 1151
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = (command = "623b") || (command = "623c")
triggerall = NumHelper(11150) > 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 法楽の翁面b]
type = ChangeState
value = 1110
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "22b"
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 法楽の翁面c]
type = ChangeState
value = 1111
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "22c"
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, こころのルーレット]
type = ChangeState
value = 1100
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = (command = "22b") || (command = "22c")
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒声の大蜘蛛面b]
type = ChangeState
value = 1060
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "214b"
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒声の大蜘蛛面c]
type = ChangeState
value = 1061
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "214c"
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 吼怒の妖狐面空中]
type = ChangeState
value = 1055
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = (command = "214b") || (command = "214c")
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 吼怒の妖狐面b]
type = ChangeState
value = 1050
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "214b"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 吼怒の妖狐面c]
type = ChangeState
value = 1051
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "214c"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 狂喜の火男面b]
type = ChangeState
value = 1010
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "236b"
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 狂喜の火男面c]
type = ChangeState
value = 1011
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "236c"
triggerall = command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 歓喜の獅子面b]
type = ChangeState
value = 1000
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "236b"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 歓喜の獅子面c]
type = ChangeState
value = 1001
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "236c"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 歓喜の獅子面空中b]
type = ChangeState
value = 1005
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "236b"
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 歓喜の獅子面空中c]
type = ChangeState
value = 1006
triggerall = var(39) = 0
triggerall = var(40) = 1
triggerall = var(2) >= 25
triggerall = command = "236c"
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面


;==============================================================================
; スペルカード技
;==============================================================================

[State -1, 「仮面喪心舞 暗黒能楽」]
type = ChangeState
value = 1420
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 5000
triggerall = var(54) = 28
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 「ファタモルガーナの希劇」]
type = ChangeState
value = 1410
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 5000
triggerall = var(54) = 27
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 喜符「昂揚の神楽獅子」]
type = ChangeState
value = 1400
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 5000
triggerall = var(54) = 26
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒符「怒れる忌狼の面」]
type = ChangeState
value = 1390
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 4000
triggerall = var(54) = 25
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂面「杞人地を憂う」]
type = ChangeState
value = 1380
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 4000
triggerall = var(54) = 24
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 「モンキーポゼッション」]
type = ChangeState
value = 1370
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 3000
triggerall = var(54) = 23
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 呪面「月追の兎面」]
type = ChangeState
value = 1365
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 3000
triggerall = var(54) = 22
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 呪面「月追の兎面」]
type = ChangeState
value = 1360
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 3000
triggerall = var(54) = 22
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1,「口裂けの感情」 ]
type = ChangeState
value = 1330
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 2000
triggerall = var(54) = 19
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂符「憂き世は憂しの小車」]
type = ChangeState
value = 1320
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 2000
triggerall = var(54) = 18
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒面「怒れる忌狼の面」]
type = ChangeState
value = 1310
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 2000
triggerall = var(54) = 17
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憑依「喜怒哀楽ポゼッション」]
type = ChangeState
value = 1300
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 1000
triggerall = var(54) = 16
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, スキルカード直接発動]
type = ChangeState
value = 1250
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 1000
triggerall = var(54) = [4,15]
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで

[State -1, スキルカード直接発動（空中）]
type = ChangeState
value = 1255
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 1000
triggerall = (var(54) = 4) || (var(54) = 7)
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holdback"
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C

[State -1, スキルカード]
type = ChangeState
value = 1200
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 1000
triggerall = var(54) >= 4
triggerall = var(54) <= 15
triggerall = (command = "holddown") || (command = "holdfwd") || (command = "holdup") || (command = "holdback")
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, 霊撃]
type = ChangeState
value = 1210
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 1000
triggerall = var(54) = 0
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = [120,159]

[State -1, 気質発現]
type = ChangeState
value = 1220
triggerall = var(39) = 0
triggerall = var(40) = 0
triggerall = command = "card_use"
triggerall = power >= 1000
triggerall = var(54) = 1
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;コマンド技
;214:1000-1049
;236:1050-1099
;22 :1100-1149
;623:1150-1199


[State -1, 憂嘆の長壁面]
type = ChangeState
value = 1160
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = (command = "623b") || (command = "623c")
triggerall = var(53) = 14
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂心の鬼婆面（設置）]
type = ChangeState
value = 1150
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = (command = "623b") || (command = "623c")
triggerall = var(53) = 13
triggerall = NumHelper(11150) < 1
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 憂心の鬼婆面（起爆）]
type = ChangeState
value = 1151
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = (command = "623b") || (command = "623c")
triggerall = var(53) = 13
triggerall = NumHelper(11150) > 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 法楽の翁面b]
type = ChangeState
value = 1110
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "22b"
triggerall = var(52) = 11
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 法楽の翁面c]
type = ChangeState
value = 1111
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "22c"
triggerall = var(52) = 11
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, こころのルーレット]
type = ChangeState
value = 1100
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = (command = "22b") || (command = "22c")
triggerall = var(52) = 10
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 吼怒の妖狐面空中]
type = ChangeState
value = 1055
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = (command = "214b") || (command = "214c")
triggerall = var(51) = 7
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 吼怒の妖狐面b]
type = ChangeState
value = 1050
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "214b"
triggerall = var(51) = 7
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 吼怒の妖狐面c]
type = ChangeState
value = 1051
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "214c"
triggerall = var(51) = 7
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒声の大蜘蛛面b]
type = ChangeState
value = 1060
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "214b"
triggerall = var(51) = 8
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 怒声の大蜘蛛面c]
type = ChangeState
value = 1061
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "214c"
triggerall = var(51) = 8
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 狂喜の火男面b]
type = ChangeState
value = 1010
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "236b"
triggerall = var(50) = 5
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 狂喜の火男面c]
type = ChangeState
value = 1011
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "236c"
triggerall = var(50) = 5
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 歓喜の獅子面b]
type = ChangeState
value = 1000
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "236b"
triggerall = var(50) = 4
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 歓喜の獅子面c]
type = ChangeState
value = 1001
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "236c"
triggerall = var(50) = 4
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 310) && (Time >= 50)					 ;C
trigger16 = (stateno = 311) && (Time >= 90)					 ;CC
trigger17 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger18 = (stateno = 500) && (Time >= 32)					 ;2B
trigger19 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger20 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger21 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger22 = (stateno = 1011) && (Time >= 65)					 ;2
trigger23 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger24 = (stateno = 1061) && (Time >= 55)					 ;2
trigger25 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger26 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger27 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, 歓喜の獅子面空中b]
type = ChangeState
value = 1005
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "236b"
triggerall = var(50) = 4
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面



[State -1, 歓喜の獅子面空中c]
type = ChangeState
value = 1006
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "236c"
triggerall = var(50) = 4
trigger1 = ctrl || stateno = 100
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B
trigger9 = (stateno = 710) && (Time >= 50)					 ;C
trigger10 = (stateno = 711) && (Time >= 90)					 ;CC
trigger11 = (stateno = 715) && (Time >= 37)					 ;2C
trigger12 = (stateno = 740) && (Time >= 70)					 ;6C
trigger13 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger14 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger15 = (stateno = 1006) && (Time >= 100)					 ;2
trigger16 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面



;==============================================================================
; 移動関連
;==============================================================================

[State -1, 回避結界]
type = ChangeState
value = 89
triggerall = var(39) = 0
triggerall = command = "xx"
triggerall = var(2) >= 125
trigger1 = stateno = [150,155]
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(39) = 0
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "fly"
trigger2 = command = "holdfwd"
trigger2 = command != "holdup"
trigger2 = command != "holddown"
trigger2 = stateno != 100


[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(39) = 0
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "fly"
trigger2 = command = "holdback"
trigger2 = command != "holdup"

[State -1, 空中前]
type = ChangeState
value = 110
triggerall = var(39) = 0
triggerall = command = "FF"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 空中後]
type = ChangeState
value = 115
triggerall = var(39) = 0
triggerall = command = "BB"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, ハイジャンプ前キャンセル]
type = ChangeState
value = 70
triggerall = var(39) = 0
triggerall = command = "holdup"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
trigger1 = (stateno = 300) && (Time >= 20) 					 ;B
trigger2 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger3 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger4 = (stateno = 310) && (Time >= 50)					 ;C
trigger5 = (stateno = 311) && (Time >= 90)					 ;CC
trigger6 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger7 = (stateno = 500) && (Time >= 32)					 ;2B
trigger8 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger9 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger10 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger11 = (stateno = 1011) && (Time >= 65)					 ;2
trigger12 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger13 = (stateno = 1061) && (Time >= 55)					 ;2
trigger14 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger15 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger16 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, ハイジャンプ後キャンセル]
type = ChangeState
value = 80
triggerall = var(39) = 0
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
trigger1 = (stateno = 300) && (Time >= 20) 					 ;B
trigger2 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger3 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger4 = (stateno = 310) && (Time >= 50)					 ;C
trigger5 = (stateno = 311) && (Time >= 90)					 ;CC
trigger6 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger7 = (stateno = 500) && (Time >= 32)					 ;2B
trigger8 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger9 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger10 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger11 = (stateno = 1011) && (Time >= 65)					 ;2
trigger12 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger13 = (stateno = 1061) && (Time >= 55)					 ;2
trigger14 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger15 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger16 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, ハイジャンプキャンセル]
type = ChangeState
value = 60
triggerall = var(39) = 0
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = (stateno = 300) && (Time >= 20) 					 ;B
trigger2 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger3 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger4 = (stateno = 310) && (Time >= 50)					 ;C
trigger5 = (stateno = 311) && (Time >= 90)					 ;CC
trigger6 = (stateno = 330) && (Time >= 70) 					 ;6C
trigger7 = (stateno = 500) && (Time >= 32)					 ;2B
trigger8 = (stateno = 510) && (Time >= 37)					 ;2C -----通常技ここまで
trigger9 = (stateno = 1000) && (Time >= 76)					 ;獅子面
trigger10 = (stateno = 1010) && (Time = [20,30])				 ;火男面
trigger11 = (stateno = 1011) && (Time >= 65)					 ;2
trigger12 = (stateno = 1060) && (Time >= 45)					 ;大蜘蛛面
trigger13 = (stateno = 1061) && (Time >= 55)					 ;2
trigger14 = (stateno = 1110) && movecontact && (Time >= 35) 			 ;翁面
trigger15 = (stateno = 1150) && (Time >= 42)					 ;鬼婆面
trigger16 = (stateno = 1160) && (Time >= 54)					 ;長壁面

[State -1, ハイジャンプ前];ダッシュジャンプとは別
type = ChangeState
value = 70
triggerall = var(39) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = command = "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "DUF"
trigger2 = command = "holdup"
trigger2 = command = "fly"
trigger2 = stateno != 100

[State -1, ハイジャンプ後]
type = ChangeState
value = 80
triggerall = var(39) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = command != "holdfwd"
triggerall = command = "holdback"
trigger1 = command = "DUB"
trigger2 = command = "holdup"
trigger2 = command = "fly"

[State -1, ハイジャンプ]
type = ChangeState
value = 60
triggerall = var(39) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "DU"
trigger2 = command = "up_x"

;飛翔わりふり
;statedef117
;始動
;F92, UF93, U94, UB95, B96, DB97, D98, DF99

[State -1, 飛翔F]
type = ChangeState
value = 92
triggerall = var(39) = 0
triggerall = command = "holdfwd"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔UF]
type = ChangeState
value = 93
triggerall = var(39) = 0
triggerall = command = "holdfwd"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command = "holdup"
triggerall = command != "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔U]
type = ChangeState
value = 94
triggerall = var(39) = 0
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command = "holdup"
triggerall = command != "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔UB]
type = ChangeState
value = 95
triggerall = var(39) = 0
triggerall = ctrl
triggerall = command = "holdback"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command = "holdup"
triggerall = command != "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔B]
type = ChangeState
value = 96
triggerall = var(39) = 0
triggerall = command = "holdback"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔DB]
type = ChangeState
value = 97
triggerall = var(39) = 0
triggerall = command = "holdback"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command != "holdup"
triggerall = command = "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔D]
type = ChangeState
value = 98
triggerall = var(39) = 0
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command != "holdup"
triggerall = command = "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面

[State -1, 飛翔DF]
type = ChangeState
value = 99
triggerall = var(39) = 0
triggerall = command = "holdfwd"
triggerall = command = "fly"
triggerall = Pos Y < -30
triggerall = command != "holdup"
triggerall = command = "holddown"
triggerall = var(0) < 2
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 700) && (Time >= 20)					 ;B
trigger3 = (stateno = 701) && (Time >= 30)					 ;CB
trigger4 = (stateno = 720) && (Time >= 32)					 ;2B
trigger5 = (stateno = 730) && (Time >= 40)					 ;6B
trigger6 = (stateno = 710) && (Time >= 50)					 ;C
trigger7 = (stateno = 711) && (Time >= 90)					 ;CC
trigger8 = (stateno = 715) && (Time >= 37)					 ;2C
trigger9 = (stateno = 740) && (Time >= 70)					 ;6C
trigger10 = (stateno = 1001) && (Time >= 100)					 ;獅子面C
trigger11 = (stateno = 1005) && (Time >= 82)					 ;獅子面
trigger12 = (stateno = 1006) && (Time >= 100)					 ;2
trigger13 = (stateno = 1050) && movecontact && (Time >= 30)			 ;妖狐面


;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 前a];※優先順位の関係でこれだけ上
type = ChangeState
value = 210
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 220) && movecontact					 ;DA
trigger7 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A

[State -1, 前aホールド]
type = ChangeState
triggerall = var(39) = 0
trigger1 = stateno = 210
trigger1 = Time = [11,14]
trigger1 = command = "hold_a"
value = 211



;------------------------------------------------------------------------------
;通常時

[State -1, ダッシュa];aa
type = ChangeState
value = 220
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = StateType != A
trigger1 = stateno = 100

[State -1, ダッシュb];下段
type = ChangeState
value = 230
triggerall = var(39) = 0
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = StateType != A
trigger1 = stateno = 100

[State -1, ダッシュc];中段
type = ChangeState
value = 240
triggerall = var(39) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = StateType != A
trigger1 = stateno = 100

[State -1, ４回目a];
type = ChangeState
value = 203
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = (stateno = 202) && movecontact && (Time = [9,23])

[State -1, ３回目a];
type = ChangeState
value = 202
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = (stateno = 201) && movecontact && (Time = [7,15])

[State -1, ２回目a];
type = ChangeState
value = 201
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = (stateno = 200) && movecontact && (Time = [8,16])

[State -1, 近a];
type = ChangeState
value = 200
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = ( abs(p2bodydist x) <= 15 ) || command ="holdback"

[State -1, 遠a];
type = ChangeState
value = 205
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = abs(p2bodydist x) > 15

[State -1, →c射]
type = ChangeState
value = 330
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 500) && (Time >= 32)					 ;2B

[State -1, →b射]
type = ChangeState
value = 320
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A

[State -1, bホールド]
type = ChangeState
triggerall = var(39) = 0
trigger1 = stateno = 300
trigger1 = Time = [10,12]
trigger1 = command = "hold_b"
value = 301

[State -1, b射]
type = ChangeState
value = 300
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A

[State -1, cホールド]
type = ChangeState
triggerall = var(39) = 0
trigger1 = stateno = 310
trigger1 = Time = [8,9]
trigger1 = command = "hold_c"
value = 311

[State -1, c射]
type = ChangeState
value = 310
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 210) && movecontact && (Time >= 35) 			 ;6A
trigger7 = (stateno = 220) && movecontact					 ;DA
trigger8 = (stateno = 230) && movecontact && (Time >= 40) 			 ;DB
trigger9 = (stateno = 210) && movecontact && (Time >= 55) 			 ;DC
trigger10 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger11 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger12 = (stateno = 300) && (Time >= 20) 					 ;B
trigger13 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger14 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger15 = (stateno = 500) && (Time >= 32)					 ;2B

;------------------------------------------------------------------------------

[State -1, 手札シャッフル];デッキあり
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(40) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, スキルレベルアップ];デッキなし
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = var(40) = 1
triggerall = var(46) < 4
triggerall = var(47) < 4
triggerall = var(48) < 4
triggerall = var(49) < 4
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, しゃがみa]
type = ChangeState
value = 400
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A

[State -1, しゃがみ前a]
type = ChangeState
value = 410
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A

[State -1, しゃがみｂ]
type = ChangeState
value = 500
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger7 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A

[State -1, しゃがみc]
type = ChangeState
value = 510
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact						 ;A
trigger3 = stateno = 201 && movecontact						 ;AA
trigger4 = stateno = 202 && movecontact && (Time >= 18)				 ;AAA
trigger5 = (stateno = 205) && movecontact && (Time >= 30)			 ;遠A
trigger6 = (stateno = 400) && movecontact && (Time >= 15) 			 ;2A
trigger7 = (stateno = 410) && movecontact && (Time >= 30) 			 ;3A
trigger8 = (stateno = 300) && (Time >= 20) 					 ;B
trigger9 = (stateno = 301) && (Time >= 30) 					 ;CB
trigger10 = (stateno = 320) && (Time >= 40) 					 ;6B
trigger11 = (stateno = 500) && (Time >= 32)					 ;2B



;------------------------------------------------------------------------------
[State -1, 前]
type = ChangeState
value = 610
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A

[State -1, 前ため]
type = ChangeState
value = 611
triggerall = var(39) = 0
trigger1 = stateno = 610
trigger1 = Time = [7,8]
trigger1 = command = "hold_a"

[State -1, 下]
type = ChangeState
value = 630
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A

[State -1, 空中a]
type = ChangeState
value = 600
triggerall = var(39) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, 空中↓b]
type = ChangeState
value = 720
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A

[State -1, 空中→b]
type = ChangeState
value = 730
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A

[State -1, →c射]
type = ChangeState
value = 740
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B

[State -1, 空中bホールド]
type = ChangeState
trigger1 = stateno = 700
trigger1 = Time = [10,12]
trigger1 = command = "hold_b"
value = 701

[State -1, 空中b]
type = ChangeState
value = 700
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "b"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A

[State -1, 空中↓c]
type = ChangeState
value = 715
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B

[State -1, 空中cホールド]
type = ChangeState
trigger1 = stateno = 710
trigger1 = Time = [8,9]
trigger1 = command = "hold_c"
value = 711

[State -1, 空中c]
type = ChangeState
value = 710
triggerall = var(39) = 0
triggerall = var(2) >= 25
triggerall = command = "c"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact	&& (Time >= 25)			 	 ;A
trigger3 = stateno = 610 && movecontact	&& (Time >= 25)				 ;6A
trigger4 = stateno = 611 && movecontact	&& (Time >= 40)				 ;C6A
trigger5 = (stateno = 700) && (Time >= 20)					 ;B
trigger6 = (stateno = 701) && (Time >= 30)					 ;CB
trigger7 = (stateno = 720) && (Time >= 32)					 ;2B
trigger8 = (stateno = 730) && (Time >= 40)					 ;6B


;------------------------------------------------------------------------------
