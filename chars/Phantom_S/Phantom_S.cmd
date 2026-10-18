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
name = "Phantomdance"
command = ~D, DF, F, D, DF, F, y
time =30

[Command]
name = "Phantomdance"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "crazyanker"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "crazyanker"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "thundernine"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "thundernine"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "scissorsdestroy"
command = ~D, DF, F, a+b
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "guillotineEX"
command = ~45$B,$F,z

[Command]
name = "guillotineA"
command = ~45$B,$F,x

[Command]
name = "guillotineB"
command = ~45$B,$F,y

[Command]
name = "hammerEX"
command = ~45$B,$F,c

[Command]
name = "hammerA"
command = ~45$B,$F,a

[Command]
name = "hammerB"
command = ~45$B,$F,b

[Command]
name = "twinripperEX"
command = ~45$D,$U,z

[Command]
name = "twinripperA"
command = ~45$D,$U,x

[Command]
name = "twinripperB"
command = ~45$D,$U,y

[Command]
name = "quickneedle"
command = ~D, DF, F, x

[Command]
name = "quickneedle"
command = ~D, DF, F, y

[Command]
name = "shadowtrick"
command = ~D, DB, B, a

;12Pカラーコマンド---------------------------

[Command]
name = "guillotineEX12P"
command = ~$B,$F,z

[Command]
name = "guillotineA12P"
command = ~$B,$F,x

[Command]
name = "guillotineB12P"
command = ~$B,$F,y

[Command]
name = "hammerEX12P"
command = ~$B,$F,c

[Command]
name = "hammerA12P"
command = ~$B,$F,a

[Command]
name = "hammerB12P"
command = ~$B,$F,b

[Command]
name = "twinripperEX12P"
command = ~$D,$U,z

[Command]
name = "twinripperA12P"
command = ~$D,$U,x

[Command]
name = "twinripperB12P"
command = ~$D,$U,y

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
name = "nage" ;必須コマンド名
command = y+b
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
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1];ファントムダンス
type = ChangeState
value = 3000
triggerall = command = "Phantomdance"|| (NumHelper(60000)&&Helper(60000),Var(0)=3000 && Helper(60000),Var(1)>0)
;triggerall = command = "z"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact
trigger5 = palno = 12
trigger5 = stateno = 1001||stateno = 1011|| stateno = 1022 && AnimElemTime(5) >= 0
trigger5 = movecontact
trigger6 = palno = 12
trigger6 = stateno = 1101||stateno = 1111|| stateno = 1121 && AnimElemTime(15) >= 0
trigger6 = movecontact
trigger7 = palno = 12
trigger7 = stateno = 1202||stateno = 1212|| stateno = 1222
trigger8 = palno = 12
trigger8 = stateno = 1301||stateno = 1401
trigger8 = movecontact

[State -1];クレイジーアンカー
type = ChangeState
value = 3100
triggerall = command = "crazyanker"|| (NumHelper(60000)&&Helper(60000),Var(0)=3100 && Helper(60000),Var(1)>0)
;triggerall = command = "z"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact
trigger5 = palno = 12
trigger5 = stateno = 1001||stateno = 1011|| stateno = 1022 && AnimElemTime(5) >= 0
trigger5 = movecontact
trigger6 = palno = 12
trigger6 = stateno = 1101||stateno = 1111|| stateno = 1121 && AnimElemTime(15) >= 0
trigger6 = movecontact
trigger7 = palno = 12
trigger7 = stateno = 1202||stateno = 1212|| stateno = 1222
trigger8 = palno = 12
trigger8 = stateno = 1301||stateno = 1401
trigger8 = movecontact

[State -1];サンダーⅨ
type = ChangeState
value = 3200
triggerall = command = "thundernine"|| (NumHelper(60000)&&Helper(60000),Var(0)=3200 && Helper(60000),Var(1)>0)
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = palno = 12
trigger2 = stateno = 1001||stateno = 1011|| stateno = 1022 && AnimElemTime(5) >= 0
trigger2 = movecontact
trigger3 = palno = 12
trigger3 = stateno = 1101||stateno = 1111|| stateno = 1121 && AnimElemTime(15) >= 0
trigger3 = movecontact
trigger4 = palno = 12
trigger4 = stateno = 1202||stateno = 1212|| stateno = 1222
trigger5 = palno = 12
trigger5 = stateno = 1301||stateno = 1401
trigger5 = movecontact

[State -1];シザースデストロイ
type = ChangeState
value = 3300
triggerall = command = "scissorsdestroy"|| (NumHelper(60000)&&Helper(60000),Var(0)=3300 && Helper(60000),Var(1)>0)
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact
trigger5 = palno = 12
trigger5 = stateno = 1001||stateno = 1011|| stateno = 1022 && AnimElemTime(5) >= 0
trigger5 = movecontact
trigger6 = palno = 12
trigger6 = stateno = 1101||stateno = 1111|| stateno = 1121 && AnimElemTime(15) >= 0
trigger6 = movecontact
trigger7 = palno = 12
trigger7 = stateno = 1202||stateno = 1212|| stateno = 1222
trigger8 = palno = 12
trigger8 = stateno = 1301||stateno = 1401
trigger8 = movecontact



;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1];ダッシュギロチン弱
type = ChangeState
value = 1000
triggerall = Palno != 12
triggerall = command = "guillotineA"|| (NumHelper(60000)&&Helper(60000),Var(0)=1000 && Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact

[State -1];ダッシュギロチン強
type = ChangeState
value = 1010
triggerall = Palno != 12
triggerall = command = "guillotineB"|| (NumHelper(60000)&&Helper(60000),Var(0)=1010 && Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact


[State -1];ダッシュギロチンEX
type = ChangeState
value = 1020
triggerall = Palno != 12
triggerall = command = "guillotineEX"|| (NumHelper(60000)&&Helper(60000),Var(0)=1020 && Helper(60000),Var(1)>0)
triggerall = statetype != A
triggerall = power >= 1000|| var(50) = 1000
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact


[State -1];ダッシュハンマー弱
type = ChangeState
value = 1100
triggerall = Palno != 12
triggerall = command = "hammerA"|| (NumHelper(60000)&&Helper(60000),Var(0)=1100 && Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact

[State -1];ダッシュハンマー強
type = ChangeState
value = 1110
triggerall = Palno != 12
triggerall = command = "hammerB"|| (NumHelper(60000)&&Helper(60000),Var(0)=1110 && Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact

[State -1];ダッシュハンマーEX
type = ChangeState
value = 1120
triggerall = Palno != 12
triggerall = command = "hammerEX"|| (NumHelper(60000)&&Helper(60000),Var(0)=1120 && Helper(60000),Var(1)>0)
triggerall = statetype != A
triggerall = power >= 1000|| var(50) = 1000
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact


[State -1];ツインリッパー弱
type = ChangeState
value = 1200
triggerall = Palno != 12
triggerall = numhelper(60000)
triggerall = (Helper(60000),Var(16)>=45&&command="holdup"&&command="x")||(Helper(60000),Var(0)=1200&&Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact

[State -1];ツインリッパー強
type = ChangeState
value = 1210
triggerall = Palno != 12
triggerall = numhelper(60000)
triggerall = (Helper(60000),Var(16)>=45&&command="holdup"&&command="y")||(Helper(60000),Var(0)=1210&&Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact

[State -1];ツインリッパーEX
type = ChangeState
value = 1220
triggerall = Palno != 12
triggerall = numhelper(60000)
triggerall = (Helper(60000),Var(16)>=45&&command="holdup"&&command="z")||(Helper(60000),Var(0)=1220&&Helper(60000),Var(1)>0)
triggerall = statetype != A
triggerall = power >= 1000|| var(50) = 1000
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact

[State -1];クイックニードル
type = ChangeState
value = 1300
triggerall = command = "quickneedle"|| (NumHelper(60000)&&Helper(60000),Var(0)=1300 && Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact
trigger5 = Palno = 12
trigger5 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger5 = movecontact
trigger6 = Palno = 12
trigger6 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger6 = movecontact


[State -1];シャドウトリック
type = ChangeState
value = 1400
triggerall = command = "shadowtrick"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
triggerall = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------
[State -1];ダッシュギロチン弱12P
type = ChangeState
value = 1000
triggerall = Palno = 12
triggerall = command = "guillotineA12P"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact


[State -1];ダッシュギロチン強12P
type = ChangeState
value = 1010
triggerall = Palno = 12
triggerall = command = "guillotineB12P"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact



[State -1];ダッシュギロチンEX12P
type = ChangeState
value = 1020
triggerall = Palno = 12
triggerall = command = "guillotineEX12P"
triggerall = statetype != A
triggerall = power >= 1000|| var(50) = 1000
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact



[State -1];ダッシュハンマー弱12P
type = ChangeState
value = 1100
triggerall = Palno = 12
triggerall = command = "hammerA12P"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact


[State -1];ダッシュハンマー強12P
type = ChangeState
value = 1110
triggerall = Palno = 12
triggerall = command = "hammerB12P"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact


[State -1];ダッシュハンマーEX12P
type = ChangeState
value = 1120
triggerall = Palno = 12
triggerall = command = "hammerEX12P"
triggerall = statetype != A
triggerall = power >= 1000|| var(50) = 1000
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact



[State -1];ツインリッパー弱12P
type = ChangeState
value = 1200
triggerall = Palno = 12
triggerall = command = "twinripperA12P"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact


[State -1];ツインリッパー強12P
type = ChangeState
value = 1210
triggerall = Palno = 12
triggerall = command = "twinripperB12P"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact


[State -1];ツインリッパーEX12P
type = ChangeState
value = 1220
triggerall = Palno = 12
triggerall = command = "twinripperEX12P"
triggerall = statetype != A
triggerall = power >= 1000|| var(50) = 1000
trigger1 = ctrl || stateno = 40 || stateno = 52
trigger2 = stateno = 200|| stateno = 210|| stateno = 230|| stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400|| stateno = 410|| stateno = 430|| stateno = 440
trigger3 = movecontact



;------------------------------------------------------------------------------
;------------------------------------------------------------------------------


;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = command = "nage"
triggerall = statetype = S
triggerall = ctrl
trigger1 = stateno != 100


;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = command = "x"|| (NumHelper(60000)&&Helper(60000),Var(0)=200 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(4) >= 0
trigger2 = movecontact


[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=210 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact


[State -1, 立ち強]
type = ChangeState
value = 230
triggerall = command = "y"|| (NumHelper(60000)&&Helper(60000),Var(0)=230 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Palno = 12
trigger2 = stateno = 200|| stateno = 210|| stateno = 400|| stateno = 410
trigger2 = movecontact



[State -1, 立ち特殊]
type = ChangeState
value = 240
triggerall = command = "b"|| (NumHelper(60000)&&Helper(60000),Var(0)=240 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact
trigger3 = stateno = 210&&AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger3 = movecontact
trigger4 = stateno = 410&&AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = movecontact


;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = command = "x"|| (NumHelper(60000)&&Helper(60000),Var(0)=200 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(4) >= 0
trigger2 = movecontact

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=210 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = Animelemtime(3) >= 0
trigger2 = movecontact

[State -1, しゃがみ強]
type = ChangeState
value = 430
triggerall = command = "y"|| (NumHelper(60000)&&Helper(60000),Var(0)=230 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Palno = 12
trigger2 = stateno = 200|| stateno = 210|| stateno = 400|| stateno = 410
trigger2 = movecontact

[State -1, しゃがみ特殊]
type = ChangeState
value = 440
triggerall = command = "b"|| (NumHelper(60000)&&Helper(60000),Var(0)=240 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = command = "x"|| (NumHelper(60000)&&Helper(60000),Var(0)=200 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=210 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 630
triggerall = command = "y"|| (NumHelper(60000)&&Helper(60000),Var(0)=230 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, ジャンプ特殊]
type = ChangeState
value = 640
triggerall = command = "b"|| (NumHelper(60000)&&Helper(60000),Var(0)=240 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl



;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
