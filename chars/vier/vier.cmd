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
command.time = 16  ;標準のコマンド入力受付時間。
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
;---|AI Commands|-----------------------------------------------------------
;人には入力できないコマンドが80種類書かれている。
;mugen内部処理でこれが入力されたらAIが発動する(statedef-3にスイッチあり)
;command最大数は128なので残り48個がプレイヤー用。
;AI起動の確率を上げるため80個まで増やした。プレイヤー用は40個を超さない見込み
[Command]
Name = "AI_00"
Command = a, a
Time = 0
[Command]
Name = "AI_01"
Command = a, b
Time = 0
[Command]
Name = "AI_02"
Command = a, c
Time = 0
[Command]
Name = "AI_03"
Command = a, x
Time = 0
[Command]
Name = "AI_04"
Command = a, y
Time = 0
[Command]
Name = "AI_05"
Command = a, z
Time = 0
[Command]
Name = "AI_06"
Command = a, s
Time = 0
[Command]
Name = "AI_07"
Command = b, a
Time = 0
[Command]
Name = "AI_08"
Command = b, b
Time = 0
[Command]
Name = "AI_09"
Command = b, c
Time = 0
[Command]
Name = "AI_10"
Command = b, x
Time = 0
[Command]
Name = "AI_11"
Command = b, y
Time = 0
[Command]
Name = "AI_12"
Command = b, z
Time = 0
[Command]
Name = "AI_13"
Command = b, s
Time = 0
[Command]
Name = "AI_14"
Command = c, a
Time = 0
[Command]
Name = "AI_15"
Command = c, b
Time = 0
[Command]
Name = "AI_16"
Command = c, c
Time = 0
[Command]
Name = "AI_17"
Command = c, x
Time = 0
[Command]
Name = "AI_18"
Command = c, y
Time = 0
[Command]
Name = "AI_19"
Command = c, z
Time = 0
[Command]
Name = "AI_20"
Command = c, s
Time = 0
[Command]
Name = "AI_21"
Command = x, a
Time = 0
[Command]
Name = "AI_22"
Command = x, b
Time = 0
[Command]
Name = "AI_23"
Command = x, c
Time = 0
[Command]
Name = "AI_24"
Command = x, x
Time = 0
[Command]
Name = "AI_25"
Command = x, y
Time = 0
[Command]
Name = "AI_26"
Command = x, z
Time = 0
[Command]
Name = "AI_27"
Command = x, s
Time = 0
[Command]
Name = "AI_28"
Command = y, a
Time = 0
[Command]
Name = "AI_29"
Command = y, b
Time = 0
[Command]
Name = "AI_30"
Command = y, c
Time = 0
[Command]
Name = "AI_31"
Command = y, x
Time = 0
[Command]
Name = "AI_32"
Command = y, y
Time = 0
[Command]
Name = "AI_33"
Command = y, z
Time = 0
[Command]
Name = "AI_34"
Command = y, s
Time = 0
[Command]
Name = "AI_35"
Command = s, a
Time = 0
[Command]
Name = "AI_36"
Command = s, b
Time = 0
[Command]
Name = "AI_37"
Command = s, c
Time = 0
[Command]
Name = "AI_38"
Command = s, x
Time = 0
[Command]
Name = "AI_39"
Command = s, y
Time = 0
[Command]
Name = "AI_40"
Command = s, z
Time = 0
[Command]
Name = "AI_41"
Command = s, s
Time = 0
[Command]
Name = "AI_42"
Command = U, U
Time = 0
[Command]
Name = "AI_43"
Command = U, F
Time = 0
[Command]
Name = "AI_44"
Command = U, D
Time = 0
[Command]
Name = "AI_45"
Command = U, B
Time = 0
[Command]
Name = "AI_46"
Command = F, U
Time = 0
[Command]
Name = "AI_47"
Command = F, F
Time = 0
[Command]
Name = "AI_48"
Command = F, D
Time = 0
[Command]
Name = "AI_49"
Command = F, B
Time = 0
[Command]
name = "AI_50"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s
time = 0
[Command]
name = "AI_51"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,s
time = 0
[Command]
name = "AI_52"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s
time = 0
[Command]
name = "AI_53"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s
time = 0
[Command]
name = "AI_54"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s
time = 0
[Command]
name = "AI_55"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s
time = 0
[Command]
name = "AI_56"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,z
time = 0
[Command]
name = "AI_57"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,s
time = 0
[Command]
name = "AI_58"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,s
time = 0
[Command]
name = "AI_59"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,s
time = 0
[Command]
name = "AI_60"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,s
time = 0
[Command]
name = "AI_61"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s,s
time = 0
[Command]
name = "AI_62"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,s,s
time = 0
[Command]
name = "AI_63"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s,s
time = 0
[Command]
name = "AI_64"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s,s
time = 0
[Command]
name = "AI_65"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s,s
time = 0
[Command]
name = "AI_66"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s
time = 0
[Command]
name = "AI_67"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,z,z
time = 0
[Command]
name = "AI_68"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,s,s
time = 0
[Command]
name = "AI_69"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,s,s
time = 0
[Command]
name = "AI_70"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,s,s
time = 0
[Command]
name = "AI_71"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,s,s
time = 0
[Command]
name = "AI_72"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s,s,s
time = 0
[Command]
name = "AI_73"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,s,s,s
time = 0
[Command]
name = "AI_74"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s,s,s
time = 0
[Command]
name = "AI_75"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s,s,s
time = 0
[Command]
name = "AI_76"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s,s,s
time = 0
[Command]
name = "AI_77"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s,s
time = 0
[Command]
name = "AI_78"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,z,z,z
time = 0
[Command]
name = "AI_79"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,s,s,s

;---|AI Commands|用ここまで------------------------------------------------------------------------




;---|Player Commands|用ここから--------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。


[Command]
name = "Doragon"
command = ~D, DF, F, D, DF, F, x;~F, D, DF, F, D, DF, x
time = 32
[Command]
name = "Pegasus"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 32

[Command]
name = "Titan"
command = ~D, DB, B, x
time = 20

[Command]
name = "Ultimate"
command = a+x
time = 2


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------


[Command]
name = "balloon_a"
command = D, D, a
time = 20

[Command]
name = "balloon_b"
command = D, D, b
time = 20

[Command]
name = "balloon_c"
command = D, D, c
time = 20


[Command]
name = "canon_a"
command = ~D, DF, F, a


[Command]
name = "canon_b"
command = ~D, DF, F, b


[Command]
name = "canon_c"
command = ~D, DF, F, c


[Command]
name = "fish_a"
command = ~D, DB, B, a


[Command]
name = "fish_b"
command = ~D, DB, B, b


[Command]
name = "fish_c"
command = ~D, DB, B, c




;---------------------------


;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 11

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 11

[Command];ハイジャンプ
name = "NHJ"
command = ~$D, U
time = 11 ;入力猶予は11F（それ以下で操作した時に暴発しないように）

[Command];ハイジャンプ
name = "FHJ"
command = ~$D, UF
time = 11 ;入力猶予は11F（それ以下で操作した時に暴発しないように）

[Command];ハイジャンプ
name = "BHJ"
command = ~$D, UB
time = 11 ;入力猶予は11F（それ以下で操作した時に暴発しないように）

[Command];ハイジャンプ暴発防止用
name = "notHJ"
command = ~12$D, $U
time = 11
;下要素がずっと入ってる状態で上を入れてもハイジャンプを暴発させない

;[Command];ハイジャンプ暴発防止用
;name = "notHJ"
;command = /$D
;time = 12


;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "nage" ;必須コマンド名
command = b+c
time = 1

[Command]
name = "guardcancel" ;必須コマンド名
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

[Command]
name = "down_c"
command = /$D,b
time = 1

;-| スタートボタン＋なんらかのボタン（対トレモマン用） |---------------------------------------------------------
[Command]
name = "holdstart"
command = /s
time = 1


[Command]
name = "holdstart_y"
command = /s,y
time = 1

[Command]
name = "holdstart_z"
command = /s,z
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
;(「パワー溜め」用にコマンドを追加してます)
;[Command]
;name = "hold_c"
;command = /c

[Command]
name = "recovery" ;必須コマンド名
command = x
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = a
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = c
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
; ■準常時監視ステート（‐１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

;コマンドとAI記述
[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;先行入力認識用ヘルパー暴走防止
;常時監視、先行入力ヘルパーが変なステートに行ったら99999に送り返せ
[state -1, ステートリセット]
type = changestate
trigger1 = ishelper(99999)
value = 99999
ignorehitpause = 1

[state -1, ステートリセット]
type = changestate
trigger1 = ishelper(99998)
value = 99999
ignorehitpause = 1

;==============================================================================
; トレモマン専用（対象者入れ忘れるととんでもないことになるので必ず入れること）
;==============================================================================
;神秘の種退化
[State -1, VarAdd]
type = VarAdd
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = life > 0
triggerall = roundstate = 2
triggerall = ctrl 
triggerall = command = "holdstart_y"
trigger1 = EnemyNear(0),name="TRM Man"
trigger2 = EnemyNear(0),name="Training"
v = 58
value = -1
ignorehitpause =1 
persistent = 0


;神秘の種進化
[State -1, VarAdd]
type = VarAdd
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = life > 0
triggerall = roundstate = 2
triggerall = ctrl
triggerall = command = "holdstart_z"
trigger1 = EnemyNear(0),name="TRM Man"
trigger2 = EnemyNear(0),name="Training"
v =  58 
value = 1
ignorehitpause = 1
persistent = 0


;==============================================================================
; 特殊システム
;==============================================================================
;yボタン単体発動はデフォルトAIが入るまでのわずかな間に暴発するため一時停止中
[State -1, 散華]
type = ChangeState
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = life > 0
triggerall = roundstate = 2
triggerall = ctrl
triggerall = !EnemyNear(0),HitDefAttr = SCA,HA,HP,AT
triggerall = movetype != H
triggerall = Var(58) >= 2;発芽以上で可能
triggerall = var(3) =0;散華中じゃなければ可能
;trigger1 = command = "a"
;trigger1 = command = "b"
;trigger1 = command = "c"
;trigger1 = command = "x"
trigger1 = command = "Ultimate"
;trigger2 = command != "holdstart"
value = 7500
ctrl = 0

[State -1, バースト]
type = ChangeState
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = life > 0
triggerall = roundstate = 2
triggerall = !EnemyNear(0),HitDefAttr = SCA,HA,HP,AT
triggerall = movetype = H
triggerall = stateno = [5000,5109];ダウン、起き上がり、受身を除いたやられステートの時（バウンドの時は可能）
triggerall = Var(58) >= 2;発芽以上で可能
triggerall = var(3) =0;散華中じゃなければ可能
;trigger1 = command = "a"
;trigger1 = command = "b"
;trigger1 = command = "c"
;trigger1 = command = "x"
trigger1 = command = "Ultimate"
;trigger2 = command != "holdstart"
value = 7600
ctrl = 0

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, アルティメット];ゲージレベル2
type = ChangeState
value = 3300
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),command = "Ultimate" || helper(99999),var(3) > 0;||helper(99999),command = "y"  
triggerall = power >= 2000             ;パワーゲージがレベル2以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
triggerall = var(3) =1;散華時のみ可能
;ここまで絶対条件。以下の番号のどれかが成立すれば発生
trigger1 = ctrl                        ;コントロールが可能な場合
;単体でしか発動出来ないためキャンセル条件なし

;------------------------------------------------------------------------------
[State -1, タイタン];ゲージレベル１
type = ChangeState
value = 3200
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99998),command = "Titan"  || helper(99998),var(2) > 0;ヘルパーのタイタンの先行入力が効いていれば発動 
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype = A
triggerall = Pos Y < -48;ドリルより若干低くても発動可能
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]
;JBがヒットしたらキャンセルできる
;trigger3 =(stateno = 610) && MoveContact=[1,8]
trigger3 =(stateno = 610) &&AnimElem = 3 >=1
trigger3= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;JCがヒットしたらキャンセルできる
;trigger4 =(stateno = 630) && MoveContact=[1,8]
trigger4 = (stateno = 630) &&AnimElem = 7 >=1
trigger4= helper(99998),var(45) > 0;JC最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;Jxがヒットしたらキャンセルできる
trigger5 =(stateno = 640) &&AnimElemtime(4)>=1
trigger5 =(stateno = 640) && MoveContact=[1,8]
;空ダ後の制限
trigger6 =  stateno = 110  && time>= 8
trigger7 =  stateno = 115  && time>= 8



;------------------------------------------------------------------------------


[State -1, ペガサス];ゲージレベル１
type = ChangeState
value = 3100
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),command = "Pegasus"  || helper(99999),var(1) > 0 
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
;ここまで絶対条件。以下の番号のどれかが成立すれば発生
trigger1 = ctrl                        ;コントロールが可能な場合
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;ドルフィン最終段ヒットキャンセルドルフィンのみ地上でないとキャンセルが効かないためmovecontact長め
;trigger10 =((stateno = 1100) && MoveContact=[1,15])||((stateno = 1110) && MoveContact=[1,15])||((stateno = 1120) && MoveContact=[1,15])
trigger10 =((stateno = 1100)&&AnimElemtime(10) >=1)||((stateno = 1110)&&AnimElemtime(10) >=1)||((stateno = 1120) &&AnimElemtime(10) >=1)
trigger10= (helper(99999),var(46) > 0)||(helper(99999),var(47) > 0)||(helper(99999),var(48) > 0);ABCドルフィン最終段ヒット後15F以内（コメントアウトしたやつより厳密）
;キャノンヒット時まだキャノン硬直中ならキャンセル
;trigger11 =(stateno = 1000)&&AnimElemtime(8)>=1
;trigger12 =(stateno = 1010) &&AnimElemtime(8)>=1
;trigger13 =(stateno = 1020) &&AnimElemtime(8)>=1
;バルーンヒット時まだバルーン硬直中ならキャンセル
;trigger14 =((stateno = 1200)&&AnimElemtime(7) >=1)||((stateno = 1210)&&AnimElemtime(7) >=1)||((stateno = 1220) &&AnimElemtime(7) >=1)

;------------------------------------------------------------------------------

[State -1, ドラゴン];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),command = "Doragon" || helper(99999),var(0) > 0 
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
triggerall = stateno != [3000,3300)      ;現在のステートが「3000以上、3300未満」の間のどれかな場合
;ここまで絶対条件。以下の番号のどれかが成立すれば発生
trigger1 = ctrl                        ;コントロールが可能な場合
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;ドルフィン最終段ヒットキャンセルドルフィンのみ地上でないとキャンセルが効かないためmovecontact長め
;trigger10 =((stateno = 1100) && MoveContact=[1,15])||((stateno = 1110) && MoveContact=[1,15])||((stateno = 1120) && MoveContact=[1,15])
trigger10 =((stateno = 1100)&&AnimElemtime(10) >=1)||((stateno = 1110)&&AnimElemtime(10) >=1)||((stateno = 1120) &&AnimElemtime(10) >=1)
trigger10= (helper(99999),var(46) > 0)||(helper(99999),var(47) > 0)||(helper(99999),var(48) > 0);ABCドルフィン最終段ヒット後15F以内（コメントアウトしたやつより厳密）
;まだキャノン硬直中ならキャンセル
;trigger11 =(stateno = 1000)&&AnimElemtime(8)>=1
;trigger12 =(stateno = 1010) &&AnimElemtime(8)>=1
;trigger13 =(stateno = 1020) &&AnimElemtime(8)>=1
;まだバルーン硬直中ならキャンセル
;trigger14 =((stateno = 1200)&&AnimElemtime(7) >=1)||((stateno = 1210)&&AnimElemtime(7) >=1)||((stateno = 1220) &&AnimElemtime(7) >=1)

;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「スマッシュカンフーアッパーのChangeState」を例に
; 見て行きましょ！m9っ｀Д´)
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;------------------------------------------------------------------------------


;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 屈伸c]
type = ChangeState
value = 1220
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;α版ではa,b,cで共通。波動コマンドを押したとき
triggerall = helper(99999),command = "balloon_c"|| helper(99999),var(12) > 0 
;triggerall = NumHelper(1300) = 0 ;ＩＤナンバー「1300」のヘルパーが画面中に１個も出てない時
;triggerall = NumProjID(1302) = 0 ;ＩＤナンバー「1302」の飛び道具が画面中に１個も出てない時
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;------------------------------------------------------------------------------

[State -1, 屈伸b]
type = ChangeState
value = 1210
triggerall = var(59)=0;AIが起動していなければ人操作を受け付けろ（こいつのAIスイッチがvar(59)）
triggerall = roundstate = 2
;α版ではa,b,cで共通。波動コマンドを押したとき
triggerall = helper(99999),command = "balloon_b"|| helper(99999),var(11) > 0 
;triggerall = NumHelper(1300) = 0 ;ＩＤナンバー「1300」のヘルパーが画面中に１個も出てない時
;triggerall = NumProjID(1302) = 0 ;ＩＤナンバー「1302」の飛び道具が画面中に１個も出てない時
trigger1 = statetype !=A 
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

;------------------------------------------------------------------------------
[State -1, 屈伸a]
type = ChangeState
value = 1200
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;α版ではa,b,cで共通。波動コマンドを押したとき
triggerall = helper(99999),command = "balloon_a"|| helper(99999),var(10) > 0 
;triggerall = NumHelper(1300) = 0 ;ＩＤナンバー「1300」のヘルパーが画面中に１個も出てない時
;triggerall = NumProjID(1302) = 0 ;ＩＤナンバー「1302」の飛び道具が画面中に１個も出てない時
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

;------------------------------------------------------------------------------

[State -1,竜巻c]
type = ChangeState
value = 1120
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;triggerall = var(59) = 0 
triggerall = (helper(99999),command = "fish_c"&&(command != "holddown"))|| helper(99999),var(9) > 0 
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;------------------------------------------------------------------------------
[State -1,竜巻b]
type = ChangeState
value = 1110
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;triggerall = var(59) = 0 
triggerall = (helper(99999),command = "fish_b"&&(command != "holddown"))|| helper(99999),var(8) > 0 
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）


;-----------------------------------------------------------------------------

[State -1,竜巻a]
type = ChangeState
value = 1100
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;triggerall = var(59) = 0 
triggerall = (helper(99999),command = "fish_a"&&(command != "holddown"))|| helper(99999),var(7) > 0 
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

;------------------------------------------------------------------------------
[State -1, 波動c]
type = ChangeState
value = 1020
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;α版ではa,b,cで共通。波動コマンドを押したとき
triggerall = (helper(99999),command = "canon_c"&&(command != "holddown"))|| helper(99999),var(6) > 0 
triggerall = Numhelper(1001) = 0;すでにキャノンAの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1011) = 0;すでにキャノンBの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1021) = 0;すでにキャノンCの弾が画面上にいるときは入力を受け付けるな
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

;------------------------------------------------------------------------------
[State -1, 波動b]
type = ChangeState
value = 1010
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;α版ではa,b,cで共通。波動コマンドを押したとき
triggerall = (helper(99999),command = "canon_b"&&(command != "holddown"))|| helper(99999),var(5) > 0 
triggerall = Numhelper(1001) = 0;すでにキャノンAの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1011) = 0;すでにキャノンBの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1021) = 0;すでにキャノンCの弾が画面上にいるときは入力を受け付けるな
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

;------------------------------------------------------------------------------

[State -1, 波動a]
type = ChangeState
value = 1000
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;α版ではa,b,cで共通。波動コマンドを押したとき
triggerall = (helper(99999),command = "canon_a"&&(command != "holddown"))|| helper(99999),var(4) > 0 
triggerall = Numhelper(1001) = 0;すでにキャノンAの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1011) = 0;すでにキャノンBの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1021) = 0;すでにキャノンCの弾が画面上にいるときは入力を受け付けるな
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 = (stateno = 210) &&AnimElemtime(4)>=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 = (stateno = 410) &&AnimElemtime(3)>=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElemtime(6)>=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElemtime(6) >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5xがヒットしたらキャンセルできる
trigger8 =(stateno = 240) &&AnimElemtime(5)>=1
trigger8 =(stateno = 240) && MoveContact=[1,8]
;2xがヒットしたらキャンセルできる
;trigger9 =(stateno = 440) && MoveContact=[1,8]
trigger9 =(stateno = 440) &&AnimElemtime(9) >=1
trigger9= helper(99999),var(43) > 0;2X最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;------------------------------------------------------------------------------



;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, レバー入れ投げ];後ろ入れ投げ技
type = ChangeState
value = 805
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100 && stateno !=105;保険
trigger1 = command = "z"||command="nage"
trigger1 = Command !="a"
trigger1 = Command !="x"
trigger1 = command != "holdstart"
trigger1 = Command ="holdback"

[State -1, 地上投げ];地上投げ技
type = ChangeState
value = 800
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;空中以外で操作可能なときステップ中でなければ可能
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100 && stateno !=105;保険
trigger1 = command = "z"||command="nage"
trigger1 = Command !="a"
trigger1 = Command !="x"
trigger1 = command != "holdstart"
trigger1 = Command !="holdback"

[State -1, 空レバー入れ投げ];後ろ入れ投げ技
type = ChangeState
value = 815
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 110&& stateno !=115;保険
trigger1 = command = "z"||command="nage"
trigger1 = Command !="a"
trigger1 = Command !="x"
trigger1 = command != "holdstart"
trigger1 = Command ="holdback"


[State -1, 空中投げ];空中投げ技
type = ChangeState
value = 810
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;空中で操作可能なときステップ中でなければ可能
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 110&& stateno !=115;保険
trigger1 = command = "z"||command="nage"
trigger1 = Command !="a"
trigger1 = Command !="x"
trigger1 = command != "holdstart"
trigger1 = Command !="holdback"

[State -1, ドリルキックc]
type = ChangeState
value = 720
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = (command = "c") && (command = "holddown") || helper(99998),var(15) > 0 
triggerall = statetype = A
triggerall = Pos Y < -64
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]
;JBがヒットしたらキャンセルできる
;trigger3 =(stateno = 610) && MoveContact=[1,8]
trigger3 =(stateno = 610) &&AnimElem = 3 >=1
trigger3= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;JCがヒットしたらキャンセルできる
;trigger4 =(stateno = 630) && MoveContact=[1,8]
trigger4 = (stateno = 630) &&AnimElem = 7 >=1
trigger4= helper(99998),var(45) > 0;JC最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;Jxがヒットしたらキャンセルできる
trigger5 =(stateno = 640) &&AnimElemtime(4)>=1
trigger5 =(stateno = 640) && MoveContact=[1,8]

trigger6 =  stateno = 110  && time>= 8
trigger7 =  stateno = 115  && time>= 8

[State -1, ドリルキックb]
type = ChangeState
value = 710
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = (command = "b") && (command = "holddown")|| helper(99998),var(14) > 0 
triggerall = statetype = A
triggerall = Pos Y < -64
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]
;JBがヒットしたらキャンセルできる
;trigger3 =(stateno = 610) && MoveContact=[1,8]
trigger3 =(stateno = 610) &&AnimElem = 3 >=1
trigger3= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;JCがヒットしたらキャンセルできる
;trigger4 =(stateno = 630) && MoveContact=[1,8]
trigger4 =(stateno = 630) &&AnimElem = 7 >=1
trigger4= helper(99998),var(45) > 0;JC最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;Jxがヒットしたらキャンセルできる
trigger5 =(stateno = 640) &&AnimElemtime(4)>=1
trigger5 =(stateno = 640) && MoveContact=[1,8]

trigger6 =  stateno = 110  && time>= 8
trigger7 =  stateno = 115  && time>= 8

[State -1, ドリルキックa]
type = ChangeState
value = 700
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = (command = "a") && (command = "holddown")|| helper(99998),var(13) > 0 
triggerall = statetype = A
triggerall = Pos Y < -64
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]
;JBがヒットしたらキャンセルできる
;trigger3 =(stateno = 610) && MoveContact=[1,8]
trigger3 =(stateno = 610) &&AnimElem = 3 >=1
trigger3= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;JCがヒットしたらキャンセルできる
;trigger4 =(stateno = 630) && MoveContact=[1,8]
trigger4 =(stateno = 630) &&AnimElem = 7 >=1
trigger4= helper(99998),var(45) > 0;JC最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;Jxがヒットしたらキャンセルできる
trigger5 =(stateno = 640) &&AnimElemtime(4)>=1
trigger5 =(stateno = 640) && MoveContact=[1,8]

trigger6 =  stateno = 110  && time>= 8
trigger7 =  stateno = 115  && time>= 8
;------------------------------------------------------------------------------

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 2X]
type = ChangeState
value = 440
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),var(19) = 0;5Xが予約されていたらそっちを優先せよ
;しゃがみでxを押したとき
triggerall = (command = "x")&&(command = "holddown")|| helper(99999),var(23) > 0 
;しゃがみ状態でコントロール可能な時
triggerall = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 =(stateno = 210) &&AnimElem = 4 >=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact=[1,8]
trigger5 =(stateno = 410) &&AnimElem = 3 >=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) &&AnimElem = 6 >=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElem = 6 >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

[State -1, 2C]
type = ChangeState
value = 430
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = helper(99999),var(18) = 0;5Cが予約されていたらそっちを優先せよ
triggerall = roundstate = 2
;しゃがみでcを押したとき
triggerall = (command = "c")&&(command = "holddown")|| helper(99999),var(22) > 0 
;しゃがみ状態でコントロール可能な時
triggerall = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 =(stateno = 210) &&AnimElem = 4 >=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact=[1,8]
trigger5 =(stateno = 410) &&AnimElem = 3 >=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）


[State -1, 2B]
type = ChangeState
value = 410
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),var(17) = 0;5Bが予約されていたらそっちを優先せよ
;しゃがみでbを押したとき
triggerall =  (command = "b")&&(command = "holddown")|| helper(99999),var(21) > 0 
;しゃがみ状態でコントロール可能な時
triggerall = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]

[State -1, 2A]
type = ChangeState
value = 400
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = helper(99999),var(16) = 0;5Aが予約されていたらそっちを優先せよ
triggerall = roundstate = 2
;しゃがみでaを押したとき
triggerall =(command = "a")&&(command = "holddown")|| helper(99999),var(20) > 0 
;しゃがみ状態でコントロール可能な時
triggerall = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
;trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
;trigger2 = (stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger2 =(stateno = 400) &&AnimElemtime(3)>=1
trigger2 =(stateno = 400) && MoveContact=[1,8]


;------------------------------------------------------------------------------

[State -1, 5X]
type = ChangeState
value = 240
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),var(23) = 0;2Xが予約されていたらそっちを優先せよ
;xを押すこと、しゃがんでいないこと(絶対)
triggerall = (command = "x")&&(command != "holddown")|| helper(99999),var(19) > 0 
;立ち状態でコントロール可能な時
trigger1 = statetype != A
trigger1 = ctrl 
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) &&MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8] 
trigger4 =(stateno = 210) &&AnimElem = 4 >=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact =[1,8]
trigger5 =(stateno = 410) &&AnimElem = 3 >=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;5Cがヒットしたらキャンセルできる
;trigger6 =(stateno = 230) && MoveContact=[1,8]
trigger6 =(stateno = 230) && AnimElem = 6 >=1
trigger6= helper(99999),var(40) > 0;5C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Cがヒットしたらキャンセルできる
;trigger7 =(stateno = 430) && MoveContact=[1,8]
trigger7 =(stateno = 430) &&AnimElem = 6 >=1
trigger7= helper(99999),var(42) > 0;2C最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

[State -1, 5C]
type = ChangeState
value = 230
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),var(22) = 0;2Cが予約されていたらそっちを優先せよ
;cを押すこと、しゃがんでいないこと(絶対)
triggerall = (command = "c")&&(command != "holddown")|| helper(99999),var(18) > 0 
;立ち状態でコントロール可能な時
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]
;5Bがヒットしたらキャンセルできる
;trigger4 =(stateno = 210) && MoveContact=[1,8]
trigger4 =(stateno = 210) &&AnimElem = 4 >=1
trigger4= helper(99999),var(39) > 0 ;5B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;2Bがヒットしたらキャンセルできる
;trigger5 =(stateno = 410) && MoveContact=[1,8]
trigger5 =(stateno = 410) && AnimElem = 3 >=1
trigger5= helper(99999),var(41) > 0 ;2B最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

[State -1, 5B]
type = ChangeState
value = 210
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),var(21) = 0;2Bが予約されていたらそっちを優先せよ
;bを押すこと、しゃがんでいないこと(絶対)
triggerall = (command = "b")&&(command != "holddown")|| helper(99999),var(17) > 0 
;立ち状態でコントロール可能な時
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
trigger3 =(stateno = 400) && MoveContact=[1,8]


[State -1, 5A]
type = ChangeState
value = 200
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = helper(99999),var(20) = 0 ;2Aが予約されていたらそっちを優先せよ
;aを押すこと、しゃがんでいないこと（絶対）
triggerall = (command = "a")&&(command != "holddown")|| helper(99999),var(16) > 0 
;立ち状態でコントロール可能な時
trigger1 = statetype != A
trigger1 = ctrl
;5Aがヒットしたらキャンセルできる
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 = (stateno = 200) && MoveContact=[1,8]
;2Aがヒットしたらキャンセルできる
;trigger3 =(stateno = 400) &&AnimElemtime(3)>=1
;trigger3 =(stateno = 400) && MoveContact=[1,8]

;------------------------------------------------------------------------------

[State -1, JX]
type = ChangeState
value = 640
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = command = "x"|| helper(99998),var(27) > 0 
;空中で操作できるなら出せる
trigger1 = statetype = A
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]
;JBがヒットしたらキャンセルできる
;trigger3 =(stateno = 610) && MoveContact=[1,8]
trigger3 =(stateno = 610) &&AnimElem = 3 >=1
trigger3= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
;JCがヒットしたらキャンセルできる
;trigger4 =(stateno = 630) && MoveContact=[1,8] 
trigger4 =(stateno = 630) &&AnimElem = 7 >=1
trigger4= helper(99998),var(45) > 0;JC最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
trigger5 =  stateno = 110  && time>= 8
trigger6 =  stateno = 115  && time>= 8

[State -1, JC]
type = ChangeState
value = 630
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;ドリル搭載予定なのでレバーがニュートラルかどうか確認すること
triggerall = (command = "c")&&(command != "holddown")|| helper(99998),var(26) > 0 
;空中で操作できるなら出せる
trigger1 = statetype = A
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]
;JBがヒットしたらキャンセルできる
;trigger3 =(stateno = 610) && MoveContact=[1,8]
trigger3 =(stateno = 610) &&AnimElem = 3 >=1
trigger3= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
trigger4 =  stateno = 110  && time>= 8
trigger5 =  stateno = 115  && time>= 8

[State -1, JB]
type = ChangeState
value = 610
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;ドリル搭載予定なのでレバーがニュートラルかどうか確認すること
triggerall = (command = "b")&&(command != "holddown")|| helper(99998),var(25) > 0 
;空中で操作できるなら出せる
trigger1 = statetype = A
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 =(stateno = 600) &&AnimElemtime(2)>=1
trigger2 =(stateno = 600) && MoveContact=[1,8]

trigger3 =  stateno = 110  && time>= 8
trigger4 =  stateno = 115  && time>= 8

[State -1, JA]
type = ChangeState
value = 600
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
;ドリル搭載予定なのでレバーがニュートラルかどうか確認すること
triggerall = (command = "a")&&(command != "holddown")|| helper(99998),var(24) > 0 
;空中で操作できるなら出せる
trigger1 = statetype = A
trigger1 = ctrl
;JAがヒットしたらキャンセルできる
trigger2 = (stateno = 600) &&AnimElemtime(2)>=1
trigger2 = (stateno = 600) && MoveContact=[1,8]
trigger3 =  stateno = 110  && time>= 8
trigger4 =  stateno = 115  && time>= 8

;------------------------------------------------------------------------------


;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1,後ろハイジャンプセット]
type = ChangeState
value = 47
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = command = "BHJ"|| helper(99999),var(34) > 0 
trigger1 = command != "notHJ";不正入力排除
trigger1 = statetype != A
trigger1 = ctrl = 1


[State -1,前ハイジャンプセット]
type = ChangeState
value = 46
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = command = "FHJ"|| helper(99999),var(33) > 0 
trigger1 = command != "notHJ";不正入力排除
trigger1 = statetype != A
trigger1 = ctrl = 1


[State -1,ハイジャンプセット]
type = ChangeState
value = 45
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = command = "NHJ"|| helper(99999),var(32) > 0 
trigger1 = command != "notHJ";不正入力排除
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1,notHJチェック]
type = varset
var(11)=1
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = command= "notHJ";不正入力排除
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, 空中バックダッシュ]
type = ChangeState
value = 115  ;番号 ステートで使う
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = helper(99998),command = "BB" || helper(99998),var(31) > 0 
trigger1 = statetype = A ;空中のとき
trigger1 = ctrl 
trigger1 = var(8)  =  0 
trigger1 = stateno != 115
trigger1 = Pos Y < -48

[State -1, 空中ダッシュ]
type = ChangeState
value = 110  ;番号 ステートで使う
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerALL = helper(99998),command = "FF" || helper(99998),var(30) > 0 
trigger1 = statetype = A ;空中のとき
trigger1 = ctrl 
trigger1 = var(8)  =  0 
trigger1 = stateno != 110
trigger1 = Pos Y < -48
;ドルフィンの空中ダッシュキャンセル
;ジャンプ始動よりは遅く、
trigger2 = (stateno = 1120)
trigger2 = time <=24
trigger2 = time >=8

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = helper(99999),command = "BB"|| helper(99999),var(29) > 0 
trigger1 = statetype != A
trigger1 = ctrl

[State -1, フロントステップ]
type = ChangeState
value = 100
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 =  helper(99999),command="FF"|| helper(99999),var(28) > 0 
trigger1 = statetype != A
trigger1 = ctrl

[State -1, ガードキャンセルステップ]
type = ChangeState
value = 100
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
trigger1 = command = "holdfwd" && Command="guardcancel"
trigger1 = command!= "holdup" && Command!="holddown"
trigger1 = stateno =[150,153]
trigger1 = var(58) >= 2
trigger1 = var(3) =0;散華中じゃなければ可能
trigger1 = statetype!=A
;------------------------------------------------------------------------------

;==============================================================================
; 特殊行動
;==============================================================================

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)=0;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = command = "start"
;空中以外の状態で操作できるときにスタートボタンを押す
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■     デフォルトAI記述            ■    
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;人には出来ないコマンドが入力されたらAIスイッチをオンにする
;AI Command Check
[State -1,AI起動]
Type = VarSet
TriggerAll = Var(59)=0;AIがまだ起動してなければ
TriggerAll = RoundState = [1,2];イントロ中や戦闘中に確認
trigger1 = command = "AI_01" || command = "AI_02" || command = "AI_03" || command = "AI_04"
trigger2 = command = "AI_05" || command = "AI_06" || command = "AI_07" || command = "AI_08"
trigger3 = command = "AI_09" || command = "AI_10" || command = "AI_11" || command = "AI_12"
trigger4 = command = "AI_13" || command = "AI_14" || command = "AI_15" || command = "AI_16"
trigger5 = command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
Trigger6 = Command = "AI_21" || Command = "AI_22" || Command = "AI_23" || Command = "AI_24"
Trigger7 = Command = "AI_24" || Command = "AI_26" || Command = "AI_27" || Command = "AI_28"
Trigger8 = Command = "AI_29" || Command = "AI_30" || Command = "AI_31" || Command = "AI_32"
Trigger9 = Command = "AI_33" || Command = "AI_34" || Command = "AI_35" || Command = "AI_36"
Trigger10 = Command = "AI_37" || Command = "AI_38" || Command = "AI_39" || Command = "AI_40"
Trigger11 = Command = "AI_41" || Command = "AI_42" || Command = "AI_43" || Command = "AI_44"
Trigger12 = Command = "AI_45" || Command = "AI_46" || Command = "AI_47" || Command = "AI_48"
Trigger13 = Command = "AI_49" || Command = "AI_50" || Command = "AI_51" || Command = "AI_52"
Trigger14 = Command = "AI_53" || Command = "AI_54" || Command = "AI_55" || Command = "AI_56"
Trigger15 = Command = "AI_57" || Command = "AI_58" || Command = "AI_59" || Command = "AI_60"
Trigger16 = Command = "AI_61" || Command = "AI_62" || Command = "AI_63" || Command = "AI_64"
Trigger17 = Command = "AI_65" || Command = "AI_66" || Command = "AI_67" || Command = "AI_68"
Trigger18 = Command = "AI_69" || Command = "AI_70" || Command = "AI_71" || Command = "AI_72"
Trigger19 = Command = "AI_73" || Command = "AI_74" || Command = "AI_75" || Command = "AI_76"
Trigger20 = Command = "AI_77" || Command = "AI_78" || Command = "AI_79" || Command = "AI_00"
;Trigger21 = RoundState = 2;AI常時起動スイッチ（プレイヤー操作は不可能になる）
var(59)=10;AIレベル。0でAIオフ
IgnoreHitPause = 1

;戦闘終了後暴走するのを止めるためAIはラウンド終了後いったん切る
;[State -1, AI_ラウンドが終わったら一度AIをオフにする]
;Type = VarSet
;TriggerAll = Var(59) >= 1;AI発動中
;Trigger1 = RoundState >= 3;戦闘後にvarスイッチを切る。
;var(59)=0


;以下実際のAIの挙動-------------------------------------------------------------------

;切り返しや割り込み、リバーサルなど
;コンボ記述
;ガード記述
;対空・起き攻め・ぶっぱなど
;移動行動
;立ち回り技

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;切り替えし
;PrevStateNo = [120,159] PrevStateNo = [5000,5270] EnemyNear,HitDefAttr = SCA,AT;投げ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, AI_ドラゴン]
type = ChangeState
value = 3000
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype != A;自分が地上
triggerall = P2BodyDist X = [-20,10]
triggerall = P2Dist Y > -60
Triggerall = Power >= 1000
Triggerall = ctrl
TriggerAll = EnemyNear,movetype = A
TriggerAll = EnemyNear,Statetype = A
TriggerAll = Random < 48*var(59)
Trigger1 = Enemynear,Time >= 48-var(59)*3
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

[State -3,AI_2A]
type = ChangeState
value = 400
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
TriggerAll = StateType != A
triggerall = P2BodyDist X = [-10,30]
TriggerAll = Random < 12*var(59)
triggerAll = ctrl 
triggerAll = EnemyNear,movetype = A
triggerAll = EnemyNear,Statetype != A
Trigger1 = (PrevStateNo=[5000,5270])
Trigger2 = (PrevStateNo=[120,159])

[State -3,AI_2B]
type = ChangeState
value = 410
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
TriggerAll = StateType != A
triggerall = P2BodyDist X = [-10,30]
TriggerAll = Random < 8*var(59)
triggerAll = ctrl 
triggerAll = EnemyNear,movetype = A
triggerAll = EnemyNear,Statetype != A
Trigger1 = (PrevStateNo=[5000,5270])
Trigger2 = (PrevStateNo=[120,159])

[State -1, AI_Bドルフィン逃げ]
type = ChangeState
value = 1110
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype != A;自分が地上
triggerall = P2BodyDist X = [-10,30]
Triggerall = ctrl
TriggerAll = Random < 4*var(59)
Trigger1 = (PrevStateNo=[5000,5270])
Trigger2 = (PrevStateNo=[120,159])

[State -3,投げ]
type = ChangeState 
value = 800 
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = ctrl 
triggerall = random <2*var(59) 
triggerall = (p2statetype = S) || (p2statetype = C) 
triggerall = p2movetype != H
triggerall = EnemyNear,StateType != L
triggerall = statetype != A 
triggerall = P2BodyDist X = [-10,20]
Trigger1 = (PrevStateNo=[5000,5270])
Trigger2 = (PrevStateNo=[120,159])

[State -1,AI_フロントステップ]
Type = ChangeState
Value = 100
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = ctrl 
triggerall = P2BodyDist X = [-10,30]
triggerall = p2movetype != H
triggerall = EnemyNear,StateType != L
triggerall = statetype != A 
Triggerall = Ctrl
triggerall = Random < 2*var(59)
Trigger1 = Enemynear,Time >= 48-var(59)*3
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上繋ぎ 
;Movecontact MoveHit MoveGuarded AnimElem = ,>0
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, AI_2A]
type = ChangeState
value = 400
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
Triggerall = Random < 50*var(59)
triggerall = P2Dist Y > -10 && P2BodyDist X = [-20,10];密着
trigger1 =(stateno = 400) &&AnimElemtime(3)>=1
trigger1 =(stateno = 400) && MoveContact=[1,8]

[State -1, AI_2B]
type = ChangeState
value = 410
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30];近距離
trigger1 =(stateno = 400) &&AnimElemtime(3)>=1
trigger1 =(stateno = 400) && MoveContact=[1,8]
Trigger1 = Random < 75*var(59)
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
Trigger2 = Random < 10*var(59)

[State -1, AI_2C]
type = ChangeState
value = 430
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
trigger1 =(stateno = 410) && AnimElem = 3 >=1
trigger1= helper(99999),var(41) > 0
Trigger1 = Random < 75*var(59)&&!MoveGuarded
trigger2 =(stateno = 210) &&AnimElem = 4 >=1
trigger2= helper(99999),var(39) > 0&&!MoveGuarded
Trigger2 =P2BodyDist X = [-10,60]
Trigger2 = Random < 10*var(59)


[State -1, AI_5A]
type = ChangeState
value = 200
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A ;相手も自分も地上
Triggerall = Random < 50*var(59)
triggerall = P2Dist Y > -10 && P2BodyDist X = [-20,10];密着
trigger1 =(stateno = 200) &&AnimElemtime(2)>=1
trigger1 =(stateno = 200) && MoveContact=[1,8]

[State -1, AI_5B]
type = ChangeState
value = 210
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A ;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30];近距離
trigger1 =(stateno = 400) &&AnimElemtime(3)>=1
trigger1 =(stateno = 400) && MoveContact=[1,8]
Trigger1 = Random < 10*var(59)
trigger2 =(stateno = 200) &&AnimElemtime(2)>=1
trigger2 =(stateno = 200) && MoveContact=[1,8]
Trigger2 = Random < 75*var(59)

[State -1, AI_5C]
type = ChangeState
value = 230
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L ;相手が地上でダウンしていなければ
triggerall = statetype != A;自分が地上
trigger1 =(stateno = 410) && AnimElem = 3 >=1
trigger1= helper(99999),var(41) > 0
Trigger1 = Random < 20*var(59)
trigger2 =(stateno = 210) && AnimElem = 3 >=1
trigger2= helper(99999),var(39) > 0
Trigger2 = Random < 75*var(59)


[State -1, AI_5X]
type = ChangeState
value = 240
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A &&EnemyNear,StateType != L&&EnemyNear,StateType = A ;相手が空中でダウンしていなければ
triggerall = statetype != A;自分が地上
trigger1 =(stateno = 210) && AnimElem = 3 >=1
trigger1= helper(99999),var(39) > 0
Trigger1 = Random < 75*var(59)

;2C派生ーーーーーーーーーーーー
[State -1, AI_Cバルーン]
type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
triggerall = Numhelper(1201) = 0
Triggerall = Power < 1200
trigger1 =(stateno = 430) &&AnimElem = 6 >=1
trigger1= helper(99999),var(42) > 0&&!moveGuarded
Trigger1 = Random < 40*var(59)

[State -1, AI_Aドルフィン]
type = ChangeState
value = 1100
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
triggerall =(stateno = 430) &&AnimElem = 6 >=1
trigger1= helper(99999),var(42) > 0&&moveGuarded
Trigger1 = Random < 5*var(59)
trigger2= helper(99999),var(42) > 0&&!moveGuarded
Trigger2 = Random < 50*var(59)
trigger3= helper(99999),var(42) > 0&&!moveGuarded
Trigger3 = Power >= 1000
Trigger3 = Random < 80*var(59)


[State -1, AI_Aバルーン]
type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = Numhelper(1201) = 0
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1200
trigger1 =(stateno = 430) &&AnimElem = 6 >=1
trigger1= helper(99999),var(42) > 0&&!moveGuarded
Trigger1 = Random < 8*var(59)

[State -1, AI_Bドルフィン]
type = ChangeState
value = 1110
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
trigger1 =(stateno = 430) &&AnimElem = 6 >=1
trigger1= helper(99999),var(42) > 0&&moveGuarded;逃げるとき
Trigger1 = Random < 48*var(59)

[State -1, AI_Bバルーン]
type = ChangeState
value = 1210
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = Numhelper(1201) = 0
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1200
trigger1 =(stateno = 430) &&AnimElem = 6 >=1
trigger1= helper(99999),var(42) > 0&&!moveGuarded
Trigger1 = Random < 4*var(59)

;2C派生ここまでーーーーーーーーーーーー


;5C派生ーーーーーーーーーーーー
[State -1, AI_Bドルフィン]
type = ChangeState
value = 1110
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0&&!moveGuarded
triggerall =P2BodyDist X > 90
Trigger1 = Random < 50*var(59)
Trigger2 = Power >= 1000
Trigger2 = Random < 80*var(59)


[State -1, AI_Cバルーン]
type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
triggerall = Numhelper(1201) = 0
Triggerall = Power < 1200
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
Trigger1 = Random < 24*var(59)

[State -1, AI_Aドルフィン]
type = ChangeState
value = 1100
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
triggerall =P2BodyDist X = [-10,60]
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
Trigger1 = Random < 24*var(59)

[State -1, AI_Aキャノン]
type = ChangeState
value = 1000
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1200
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
triggerall = Numhelper(1001) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1011) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1021) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
Trigger1 = Random < 24*var(59)

[State -1, AI_Cキャノン]
type = ChangeState
value = 1020
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1200
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
;triggerall = Numhelper(1001) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1011) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1021) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
Trigger1 = Random < 12*var(59)

[State -1, AI_Bキャノン]
type = ChangeState
value = 1010
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1200
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
;triggerall = Numhelper(1001) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1011) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1021) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
Trigger1 = Random < 8*var(59)


[State -1, AI_Aバルーン]
type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = Numhelper(1201) = 0
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1200
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
Trigger1 = Random < 8*var(59)

[State -1, AI_Bバルーン]
type = ChangeState
value = 1210
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = Numhelper(1201) = 0
triggerall = statetype != A;相手も自分も地上
Triggerall = Power < 1500
triggerall =(stateno = 230) && AnimElem = 6 >=1
triggerall= helper(99999),var(40) > 0
Trigger1 = Random < 4*var(59)

;5C派生ここまでーーーーーーーーーーーー




[State -1, AI_ドラゴン]
type = ChangeState
value = 3000
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A ;相手がダウンしていなければ
triggerall = statetype != A;相手も自分も地上
triggerall = P2Dist Y > -60
trigger1= (helper(99999),var(46) > 0)||(helper(99999),var(47) > 0)&&!moveGuarded;ABドルフィン最終段ヒット後15F以内（コメントアウトしたやつより厳密）
trigger1 =((stateno = 1100)&&AnimElemtime(10) >=1)||((stateno = 1110)&&AnimElemtime(10) >=1)
Trigger1 = Power >= 1000
Trigger1 = Random < 80*var(59)


[State -1, ジャンプキャンセル];ジャンプキャンセル
type = ChangeState
value = 41
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A
triggerall = statetype != A 
trigger1 =(stateno = 240) &&AnimElemtime(5)>=1
trigger1 = (stateno = 240) &&MoveHit=[1,8]
Trigger1 = Random < 75*var(59)
trigger2 =(stateno = 440) &&AnimElemtime(9) >=1
trigger2= helper(99999),var(51) > 0 ;最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
Trigger2 = Random < 75*var(59)

[State -1,AI_投げ追撃ペガサス]
Type = ChangeState
Value = 3100
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A
triggerall = statetype != A 
triggerall = EnemyNear,statetype = A
Triggerall = Ctrl
triggerall = Random < 8*var(59)
Trigger1 = Power >= 1000
Trigger1 = PrevStateNo=801

;ペガサスヒットしたら散華してもいいよ
[State -1, AI散華]
type = ChangeState
value = 7500
triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype = S||statetype = A;自分が地上か空中
triggerall = ctrl
triggerall = !EnemyNear(0),HitDefAttr = SCA,HA,HP,AT;超必くらい中は使えない
triggerall = movetype != H;そもそもくらい中にこれは出来ない
triggerall = Var(58) = 3;AIは開花時のみこれを使う
triggerall = var(3) =0;散華中じゃなければ可能
;trigger1 = helper(3101),movecontact
Trigger1 = PrevStateNo=3103


[State -1,AI_投げ追いかけCドルフィン]
Type = ChangeState
Value = 1120
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A
triggerall = statetype != A 
triggerall = EnemyNear,statetype = A
Triggerall = Ctrl
triggerall = Random < 75*var(59)
Trigger1 = PrevStateNo=801


[State -1,AI_投げ追いかけフロントステップ]
Type = ChangeState
Value = 100
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A&&EnemyNear,statetype = A
triggerall = statetype != A 
Triggerall = Ctrl
triggerall = Random < 50*var(59)
Trigger1 = PrevStateNo=801


[State -1,AI_投げ追いかけフロントステップ後5B]
Type = ChangeState
Value = 210
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,Movetype != A&&EnemyNear,statetype = A
triggerall = statetype != A 
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30];近距離
Triggerall = Ctrl
triggerall = Random < 75*var(59)
Trigger1 = PrevStateNo=101



[State -1,AI_ドラゴン最速落下Cドリル]
Type = ChangeState
Value = 720
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = Pos Y < -64
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = EnemyNear,statetype = A
triggerall = EnemyNear,Movetype != A
triggerall = var(59) >=8;AIレベル8からやっていいよ
Triggerall = Ctrl
triggerall = Random < 75*var(59)
Trigger1 = PrevStateNo=3002

[State -1,AI_ドラゴン最速落下Cドリル5B]
Type = ChangeState
Value = 210
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = statetype != A;
triggerall = EnemyNear,statetype = A
triggerall = EnemyNear,Movetype = H
triggerall = Random < 75*var(59)
triggerall = P2BodyDist x=[-10,60]
triggerall = P2BodyDist Y = [-240,-200]
Trigger1 = ctrl

[State -1,AI_ドラゴン最速落下Cドリル5B5X]
Type = ChangeState
Value = 240
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = statetype != A;
triggerall = EnemyNear,statetype = A
triggerall = EnemyNear,Movetype = H
triggerall = Random < 75*var(59)
Trigger1 = Ctrl
trigger1 =(stateno = 210) && AnimElem = 3 >=1
trigger1= helper(99999),var(39) > 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;空中繋ぎ 
;Movecontact MoveHit MoveGuarded AnimElem = ,>0
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1,AI_JB]
type = ChangeState
value = 610
triggerall = Alive && RoundState = 2 && var(59)>0
triggerall = EnemyNear,Movetype != A && EnemyNear,StateType != L
triggerall = statetype = A 
Triggerall = Random < 75*var(59)
triggerall = P2BodyDist X = [-10,30]
triggerall = p2bodydist Y = [-40,120]
trigger1 = StateNo = 600&&AnimElemtime(2)>=1
trigger1 = MoveContact=[1,8]

[State -1,AI_JX]
type = ChangeState
value = 640
triggerall = Alive && RoundState = 2 && var(59)>0
triggerall = EnemyNear,Movetype != A && EnemyNear,StateType != L
triggerall = statetype = A 
Triggerall = Random < 75*var(59)
triggerall = p2bodydist X = [-10,90]
triggerall = p2bodydist Y = [-40,120]
trigger1 =(stateno = 610) &&AnimElem = 3 >=1
trigger1= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）
trigger2 =(stateno = 630) &&AnimElem = 7 >=1
trigger2= helper(99998),var(45) > 0;JC最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

[State -1,AI_JC]
type = ChangeState
value = 630
triggerall = Alive && RoundState = 2 && var(59)>0
triggerall = EnemyNear,Movetype != A && EnemyNear,StateType != L
triggerall = statetype = A 
Triggerall = Random < 75*var(59)
triggerall = P2BodyDist X = [-20,20];密着の時だけつないでどうぞ
triggerall = P2BodyDist Y = [60,120]
trigger1 =(stateno = 610) &&AnimElem = 3 >=1
trigger1= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）


;タイタンはダウンにもヒットするのでL以外は条件から外す
[State -1, AI_タイタン]
type = ChangeState
value = 3200
triggerall = Alive && RoundState = 2 && var(59)>0
triggerall = EnemyNear,Movetype != A
triggerall = statetype = A 
triggerall = Pos Y < -48
Triggerall = Random < 75*var(59)
triggerall = P2BodyDist X = [-20,150]
triggerall = p2bodydist Y = [-20,150]
trigger1 =(stateno = 640) &&AnimElem = 4 >=1
Trigger1 = Power >= 1000
trigger1 = MoveContact=[1,8]


[State -1, AI_ドリルキックc]
type = ChangeState
value = 720
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [-10,30];近距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 10*var(59);ランダム値が0から200であれば
trigger1 =(stateno = 610) &&AnimElem = 3 >=1
trigger1= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

[State -1, AI_ドリルキックb]
type = ChangeState
value = 710
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [-10,60];近中距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 10*var(59);ランダム値が0から200であれば
trigger1 =(stateno = 610) &&AnimElem = 3 >=1
trigger1= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）

[State -1, AI_ドリルキックa]
type = ChangeState
value = 700
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [60,120];中遠距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 5*var(59);ランダム値が0から200であれば
trigger1 =(stateno = 610) &&AnimElem = 3 >=1
trigger1= helper(99998),var(44) > 0;JB最終段ヒット後8F以内（コメントアウトしたやつより厳密に）


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;防御
;Ctrl Random EnemyNear,Movetype = I inguarddist P2bodyDist Y P2bodyDist X
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;相手が攻撃態勢に入っていないときのヘルパーの個数を調べる
[State -1,AI_ヘルパー個数チェック]
type = varset
;TriggerAll = Var(59) > 0;AI起動中のみ
Trigger1 = RoundState = 2
Trigger1 = P2MoveType != A;相手が攻撃中じゃないとき
var(1) = (EnemyNear,NumHelper);helperの個数を記録
ignorehitpause = 1
;persistent = 0

;待ち(AI用。現状使わないのでコメントアウト)
;ctrl=1の記述なしでstate0に送るので行動しなくなる。
;「=! Ctrl」と「StateNo = 0」で指定した行動を作ると起き攻めなどで行動を限定させられるらしい
;[State 0]
;Type = ChangeState
;Value = 0
;TriggerAll = Var(59) = 1
;TriggerAll = StateType != A
;TriggerAll = P2StateNo = 5120;相手起き上がり時
;TriggerAll = EnemyNear,Time = 1
;Trigger1 = P2BodyDist X = [50,80]
;Trigger1 = Ctrl
;Trigger1 = Random = [0,400]

;投げに対する2A暴れ
[State -1,AI_2Aあばれ]
type = ChangeState
value = 400
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
;立ち状態でコントロール可能な時
triggerall = EnemyNear,StateType != L || EnemyNear,StateNo = 5120;相手がダウンしていなければ
Trigger1 = Enemynear,Time >= 48-var(59)*3 ;　遅延処理
Trigger1 = InGuardDist
Trigger1 = EnemyNear,HitDefAttr = SC,AT;通常投げ属性の攻撃にのみ
trigger1 = statetype != A;立ち状態でコントロール可能な時
trigger1 = ctrl;最低条件。以下のtrigger1で行動制限
trigger1 = P2StateType!=A;相手が空中にいなければ
trigger1 = P2moveType!=A;相手攻撃中じゃなければ
trigger1 = P2BodyDist x=[-10,20];相手との距離が近ければ
trigger1 = random <12*var(59)


;ガード
[State -1,AI_ガード]
Type = ChangeState
Value = 120
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
TriggerAll = StateType = S
Triggerall = Ctrl
Trigger1 = P2Dist x>=0;相手との距離が0以上（向き合っているとき）
Trigger1 =! EnemyNear,HitDefAttr =SCA,NT,ST,HT ;投げ属性以外の攻撃にのみ
Trigger1 = InGuardDist
Trigger1 = Random < 80*var(59)
Trigger2 = P2Dist x<0;相手との距離が0未満（めくられているとき）
Trigger2 =! EnemyNear,HitDefAttr =SCA,NT,ST,HT ;投げ属性以外の攻撃にのみ
Trigger2 = helper(99999),InGuardDist;めくられたら地上用先行入力ヘルパーがひっくり返るのでそいつのguarddistを参照
Trigger2 = Random < 24*var(59)
;飛び道具対策1
Trigger3 = Enemy,NumProj > 0;相手が出したProjが一個以上あるとき
Trigger3 = InGuardDist;自分がガード可能なとき
Trigger3 = Random < 60*var(59)
;飛び道具対策2。相手がmovetype!=Aになるのが早かった場合はあまり意味ないかも
Trigger4 = Enemy,NumHelper > Var(1);相手が出したHelperが攻撃前より増えていたとき
Trigger4 = InGuardDist;自分がガード可能なとき
Trigger4 = Random < 60*var(59)

;飛び道具に対するフロントステップ
[State -1, AI_フロントステップ]
type = ChangeState
value = 100
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AIがこれ使わないようにしろ
triggerall = roundstate = 2
triggerall = ctrl
triggerall = statetype != A
Trigger1 = Enemynear,Time >= 48-var(59)*3
Trigger1 = Enemy,NumProj > 0;相手が出したProjが一個以上あるとき
Trigger1 = InGuardDist;自分がガード可能なとき
Trigger1 = Random < 8*var(59)

;投げ警戒ジャンプ
[State -1,AI_ジャンプ]
Type = ChangeState
Value = 41
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI判定
TriggerAll = StateType != A
Trigger1 = P2MoveType = A
Trigger1 = InGuardDist
Trigger1 = P2BodyDist X =[-10,5]
Trigger1 = P2BodyDist Y > -10
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -3, 空中受け身]
Type = ChangeState
Value = 5210
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI判定
triggerAll = Vel Y > -1
triggerAll = StateNo = 5050
triggerAll = CanRecover
trigger1 = Random < 24*var(59)
Trigger2 = var(59) && enemynear,movetype=A && !enemynear,movehit
Trigger2 = enemynear,time <= 6 || enemynear,hitdefattr = SCA,AA,AT


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上起き攻め 
;EnemyNear,StateType = L EnemyNear,AnimTime P2bodyDist Y P2bodyDist X
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1,BackStep];ﾊﾞｯｸｽﾃｯﾌﾟ
Type = ChangeState
value = 105
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll = Ctrl||StateNo=11
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll = BackEdgeBodyDist>40
TriggerAll =!EnemyNear,Ctrl
Triggerall = Random < 12*var(59)
TriggerAll =!InGuardDist
Trigger1 = P2BodyDist X = [-20,10]

[State -1,ジャンプ];ﾊﾞｯｸｽﾃｯﾌﾟ
Type = ChangeState
value = 41
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
Triggerall = Random < 8*var(59)
TriggerAll =!InGuardDist
Trigger1 = Ctrl


[State -1,Cバルーン];
Type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = Numhelper(1201) = 0;バルーンがなければ
triggerall = Numhelper(1021) = 0;キャノンなければ
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -1,Bバルーン];
Type = ChangeState
value = 1210
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = Numhelper(1201) = 0;バルーンがなければ
triggerall = Numhelper(1021) = 0;キャノンなければ
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -1,Aバルーン];
Type = ChangeState
value = 1200
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = Numhelper(1201) = 0;バルーンがなければ
triggerall = Numhelper(1021) = 0;キャノンなければ
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -1,Cキャノン];
Type = ChangeState
value = 1020
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = Numhelper(1201) = 0;バルーンがなければ
;triggerall = Numhelper(1001) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1011) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1021) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -1,2A];
Type = ChangeState
value = 400
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30]
triggerall = Numhelper(1201) > 0||Numhelper(1021) > 0;設置がどっちかあれば
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -1,2B];
Type = ChangeState
value = 410
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン;AI専用
TriggerAll = StateType!=A
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30]
triggerall = Numhelper(1201) > 0||Numhelper(1021) > 0;設置がどっちかあれば
Trigger1 = Ctrl
Trigger1 = Random < 2*var(59)

[State -1, AI_ドリルキックc]
type = ChangeState
value = 720
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
TriggerAll =!InGuardDist
TriggerAll = P2StateType=L
TriggerAll = P2StateNo=[5100,5120]
TriggerAll =!EnemyNear,Ctrl
triggerall = Numhelper(1201) > 0||Numhelper(1021) > 0;設置がどっちかあれば
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [-10,30];近距離
triggerall = P2BodyDist Y = [-20,80]
trigger1 = ctrl
trigger1 = Random < 2*var(59);ランダム値が0から200であれば
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ぶっぱ
;EnemyNear,Ctrl EnemyNear,MoveType=A P2BodyDist X
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;そこまでゲージ溜まることそうそうないのでなるべくやる
[State -1, AI散華]
type = ChangeState
value = 7500
triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype = S||statetype = A;自分が地上か空中
triggerall = ctrl
triggerall = !EnemyNear(0),HitDefAttr = SCA,HA,HP,AT;超必くらい中は使えない
triggerall = movetype != H;そもそもくらい中にこれは出来ない
triggerall = Var(58) = 3;AIは開花時のみこれを使う
triggerall = var(3) =0;散華中じゃなければ可能
Trigger1 = Power >= 1500;なるべくアルティメットフォースを発動しやすいように高めのゲージ
Trigger1 = Random < 12*var(59)

;滅多にないチャンスなので積極的にぶっぱする
[State -1, AI_アルティメットフォース]
type = ChangeState
value = 3300
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype != A;自分が地上
triggerall = P2BodyDist X = [-20,10]
triggerall = P2Dist Y > -60
Triggerall = ctrl
triggerall = var(3) =1;散華時のみ可能
Trigger1 = InGuardDist
Trigger1 = EnemyNear,MoveType != H
Trigger1 = Power >= 2000
Trigger1 = Random < 24*var(59)

[State -1, AI_ドラゴン]
type = ChangeState
value = 3000
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype != A;自分が地上
triggerall = P2BodyDist X = [-20,10]
triggerall = P2Dist Y > -60
Triggerall = ctrl
Trigger1 = InGuardDist
Trigger1 = EnemyNear,MoveType != H
Trigger1 = Power >= 1000
Trigger1 = Random < 4*var(59)

[State -1, AI_Aキャノン]
type = ChangeState
value = 1000
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A&&EnemyNear,StateType != A;自分と相手が地上
triggerall = P2BodyDist X > 120;遠距離
triggerall = P2Dist Y > -10
triggerall = Numhelper(1001) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1011) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1021) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
trigger1 = ctrl
trigger1 = Random < 4*var(59)

[State -1, AI_Bドルフィン]
type = ChangeState
value = 1110
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A&&EnemyNear,StateType = A;自分が地上相手が空中
triggerall = P2BodyDist X > 120;遠距離
triggerall = P2Dist Y > -10
trigger1 = ctrl
trigger1 = Random < 8*var(59)

[State -1, AI_Cバルーン]
type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A;自分が地上相手が空中
triggerall = P2BodyDist X > 120;遠距離
triggerall = P2Dist Y > -10
trigger1 = ctrl
trigger1 = Random < 2*var(59)

[State -1, AI_Bキャノン]
type = ChangeState
value = 1000
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A&&EnemyNear,StateType = A;自分が地上
triggerall = P2BodyDist X > 120;遠距離
triggerall = P2BodyDist Y = [-100,-10]
;triggerall = Numhelper(1001) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
triggerall = Numhelper(1011) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
;triggerall = Numhelper(1021) = 0;すでにキャノンの弾が画面上にいるときは入力を受け付けるな
trigger1 = ctrl
trigger1 = Random < 2*var(59)


[State -1, AI_Cドルフィン]
type = ChangeState
value = 1120
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A&&EnemyNear,StateType = A;自分が地上
triggerall = P2BodyDist X = [-10,30];遠距離
triggerall = P2BodyDist Y = [-200,-160]
trigger1 = ctrl
trigger1 = Random < 4*var(59)

[State -1, AI_Bバルーン]
type = ChangeState
value = 1220
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A;自分が地上
triggerall = P2BodyDist X > 120;遠距離
triggerall = P2BodyDist Y = [-100,-10]
trigger1 = ctrl
trigger1 = Random < 2*var(59)


[State -1, AI_2C]
type = ChangeState
value = 430
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [60,150];中距離
trigger1 = ctrl
trigger1 = Random < 4*var(59);たまにおもむろにやる

[State -1, AI_タイタン]
type = ChangeState
value = 3200
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype = A;自分が空中
triggerall = Pos Y < -48
triggerall = P2BodyDist X = [-10,90];近中距離
triggerall = P2BodyDist Y = [10,120]
Triggerall = ctrl
Trigger1 = EnemyNear,MoveType != H
Trigger1 = Power >= 1000
Trigger1 = Random < 3*var(59)


[State -3, ペガサス]
type = ChangeState
value = 3100
Triggerall = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
Triggerall = statetype != A;自分が地上
triggerall = P2BodyDist X > 150
triggerall = P2Dist Y > -10
Triggerall = ctrl
Trigger1 = EnemyNear,MoveType != A
Trigger1 = Power >= 1000
Trigger1 = Random < 2*var(59)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;移動 
;Ctrl Random P2bodyDist X
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;[State -1,AI_移動]
;Type = ChangeState
;Value = 20
;TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
;TriggerAll = Ctrl ;　基本、前提条件にある
;TriggerAll = StateType = S ;立ち状態
;Trigger1 = Random < 40*var(59) ;　確率

[State -1,AI_空中ダッシュ]
Type = ChangeState
Value = 110
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType =I;直近の敵が通常状態
Triggerall = StateType = A
triggerall = Pos Y < -48
Triggerall = !inguarddist
Triggerall = P2BodyDist X >90
trigger1 = var(8)  =  0 
Trigger1 = Ctrl
trigger1 = Random < 8*var(59)

[State -1,AI_空中バックダッシュ]
Type = ChangeState
Value = 115
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType =I;直近の敵が通常状態
Triggerall = StateType = A
triggerall = Pos Y < -48
Triggerall = !inguarddist
Triggerall = P2BodyDist X = [-20,30]
trigger1 = var(8)  =  0 
Trigger1 = Ctrl
trigger1 = Random < 4*var(59)

[State -1,AI_フロントステップ]
Type = ChangeState
Value = 100
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType =I;直近の敵が通常状態
Triggerall = StateType != A
Triggerall = !inguarddist
Triggerall = P2BodyDist X > 120
Trigger1 = Ctrl
trigger1 = Random < 8*var(59)


[State -1,AI_しゃがみ(ｶﾞｰﾄﾞ切替も兼ねてる)]
Type = ChangeState
value = 11
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType !=H;直近の敵がダウンしてない＆くらいじゃない
TriggerAll =  statetype != A&& EnemyNear,StateType != A;相手も自分も地上
TriggerAll = StateNo = 0;今立ち
TriggerAll = Ctrl
Trigger1 = Random < 20*var(59)

[State -1,AI_しゃがみ解除(ｶﾞｰﾄﾞ切替も兼ねてる)]
Type = ChangeState
value = 0
TriggerAll = RoundState=2
TriggerAll = var(59)=1
TriggerAll =  statetype != A&& EnemyNear,StateType = A;自分が地上相手が空中
TriggerAll = StateNo = 11
TriggerAll = Ctrl
Trigger1 = Random < 20*var(59);||var(59)>9;AIレベル10以上なら常に突破


[State -3,AI_ジャンプ]
Type     = ChangeState
Value    = 41
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType !=H;直近の敵がダウンしてない＆くらいじゃない
Triggerall = StateType != A
Triggerall = !inguarddist
Trigger1 = Ctrl
trigger1 = Random < 8*var(59)


[State -3,AI_バックステップ]
Type     = ChangeState
Value    = 105
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType !=H;直近の敵がダウンしてない＆くらいじゃない
Triggerall = StateType != A;自分が地上
Triggerall = EnemyNear,Stateno != [120,159]
Triggerall = Ctrl
Triggerall = backedgebodydist > 80
Trigger1 = P2BodyDist X = [-10,30];近距離
trigger1 = Random < 4*var(59)


;------------------------------------------------------------------------------

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;地上立ち回り技振り 
;Ctrl Random EnemyNear,Movetype = I inguarddist P2bodyDist Y P2bodyDist X
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 地上投げ];地上投げ技
type = ChangeState
value = 800
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType !=H;直近の敵がダウンしてない＆くらいじゃない
triggerall = stateno != [100,106];保険
triggerall = statetype != A&& EnemyNear,StateType != A;相手も自分も地上
triggerall = P2BodyDist X = [-20,10]
trigger1 = ctrl
Trigger1 = Random < 4*var(59);超低確率

[State -1, AI_2A]
type = ChangeState
value = 400
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30];相手との距離が近ければ
trigger1 = ctrl
trigger1 = Random < 16*var(59);5Bよりは低確率にする

[State -1, AI_5B]
type = ChangeState
value = 210
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A;自分が地上
triggerall = P2BodyDist x=[-10,60];近中距離
triggerall =P2Dist Y > -80
trigger1 = ctrl
trigger1 = Random < 24*var(59)

;とりあえず困ったら5C振っとけ
[State -1, AI_5C]
type = ChangeState
value = 230
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [60,150];中遠距離
trigger1 = ctrl
trigger1 = Random < 24*var(59)

[State -1, AI_2B]
type = ChangeState
value = 410
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [10,60];近中距離
trigger1 = ctrl
trigger1 = Random < 12*var(59);低確率にする

[State -1, AI_2C]
type = ChangeState
value = 430
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A && EnemyNear,StateType != A;相手も自分も地上
triggerall = P2Dist Y > -10 && P2BodyDist X = [30,120];中距離
trigger1 = ctrl
trigger1 = Random < 8*var(59);たまにおもむろにやる

[State -1, AI_5X]
type = ChangeState
value = 240
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A;自分が地上で相手が空中
triggerall = P2BodyDist x=[30,105];中距離
triggerall =P2Dist Y > -100
trigger1 = ctrl
trigger1 = Random < 12*var(59);たまにおもむろにやる


[State -1, AI_5A]
type = ChangeState
value = 200
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A
triggerall = P2Dist Y > -10 && P2BodyDist X = [-10,30];近距離
trigger1 = ctrl
trigger1 = Random < 8*var(59);立ち回りで振ることはあんまないんじゃないんですかね


[State -1, AI_2X]
type = ChangeState
value = 440
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L ;相手がダウンしていなければ
triggerall = statetype != A&& EnemyNear,StateType = A;自分が地上で相手が空中
triggerall = P2BodyDist x=[-20,30];
triggerall = p2bodydist Y = [-120,-20]
triggerall = (p2bodydist Y != [-200,-160])&&(enemynear,movetype!=H)
trigger1 = ctrl
trigger1 = Random < 8*var(59);たまにおもむろにやる

;------------------------------------------------------------------------------

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;空中立ち回り技振り 
;Ctrl Random EnemyNear,Movetype = I inguarddist P2bodyDist Y P2bodyDist X
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, AI_空中投げ];空中投げ技
type = ChangeState
value = 810
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L&&EnemyNear,moveType !=H;直近の敵がダウンしてない＆くらいじゃない
triggerall = stateno != 110&& stateno !=115;保険
triggerall = statetype = A&& EnemyNear,StateType = A;相手も自分も空中
triggerall = P2BodyDist X = [-20,10]
triggerall = p2bodydist Y = [-40,20]
triggerall = Random < 4*var(59);ランダム値が0から200であれば
trigger1 = ctrl


;空中で困ったらJBとりあえず振っとく
[State -1, AI_JB]
type = ChangeState
value = 610
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = P2BodyDist X = [30,90];中距離
triggerall = P2BodyDist Y = [-20,100]
triggerall = Random < 24*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)


[State -1, AI_JX]
type = ChangeState
value = 640
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = P2BodyDist X = [-10,60];近中距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 12*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)



[State -1, AI_ドリルキックc]
type = ChangeState
value = 720
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [-10,30];近距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 12*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)

[State -1, AI_ドリルキックb]
type = ChangeState
value = 710
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [-10,60];近中距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 12*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)

[State -1, AI_ドリルキックa]
type = ChangeState
value = 700
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = Pos Y < -64
triggerall = P2BodyDist X = [60,120];中遠距離
triggerall = P2BodyDist Y = [-20,120]
triggerall = Random < 8*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)


[State -1, AI_JC]
type = ChangeState
value = 630
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = P2BodyDist X = [-20,20];密着
triggerall = P2BodyDist Y = [60,120];上から被せるように
triggerall = Random < 12*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)



[State -1, AI_JA]
type = ChangeState
value = 600
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = EnemyNear,StateType != L;相手がダウンしていなければ
triggerall = statetype = A;自分が空中にいれば相手の位置によらない
triggerall = P2BodyDist X = [-10,30];中距離
triggerall = P2BodyDist Y = [-20,100]
triggerall = Random < 12*var(59);ランダム値が0から200であれば
trigger1 = ctrl
trigger2 =  (stateno = 110  && time>= 8)||(stateno = 115  && time>= 8)


;------------------------------------------------------------------------------
[State -1, AI_挑発]
type = ChangeState
value = 195
TriggerAll = Alive && RoundState = 2 && var(59)>0;最低条件。生きてて戦闘中でAIスイッチオン
triggerall = statetype != A;現在の移動状態
triggerall = EnemyNear,StateType = L
;空中以外の状態で操作できるとき
trigger1 = ctrl
trigger1 = P2BodyDist x=[200,256]
trigger1 = random < 2;1/1000の確率


;AIここまで---------------------------------------------------------------------------


