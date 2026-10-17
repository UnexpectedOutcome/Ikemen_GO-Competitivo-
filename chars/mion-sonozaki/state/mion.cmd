
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

;============================================================================== 
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
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1600

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "atemi y"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1610

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "atemi b"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1620

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "airatemi x"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = [600,640]) && (MoveContact)
v          = 0
value      = 1630

;リバーサル記述
[State -1, 当身]
type       = Varset
triggerall = command = "rokeran"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
v          = 0
value      = 1400

[State -1,　詩音崩天刃]
type = ChangeState
triggerall = (command = "ho-ten")
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
trigger1 = (StateNo = 1301) && (Time = [55,67])
value = 1370

[State -1, ステップ格闘弱]
type = ChangeState
triggerall = command = "stepkakutou x"
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
triggerall = (StateType = A)
trigger1 = (Ctrl)
value = 810

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, 移動起き上がり]
type = ChangeState
triggerall = (Alive)
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
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
value = 100

[State -1, バックステップ]
type = ChangeState
triggerall = (StateNo != 100)
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
value = 105

;リバーサル記述
[State -1, バックステップ]
type       = Varset
triggerall = (StateNo != 100)
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
v          = 0
value      = 1500

[State -1, 空中ダッシュ]
type = ChangeState
triggerall = (Pos Y < -65)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "FF") && (StateType = A) && (Ctrl)
trigger2 = (command = "UF") && (StateType = A) && (Ctrl)
value = 101

[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = (Pos Y < -45)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
value = 106

[State -1, ハイジャンプ]
type = ChangeState
trigger1 = (command = "hi_jump") && (StateType != A) && (Ctrl)
value = 10003

[State -1, ジャンプキャンセル]
type = ChangeState
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
triggerall = (command = "fwd_b")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 250

[State -1, a]
type = ChangeState
triggerall = (command = "fwd_a")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 410) && (MoveContact)
value = 240

[State -1, 6c]
type = ChangeState
triggerall = (command = "fwd_c")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 260

[State -1, 3c]
type = ChangeState
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
triggerall = (command = "x") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 400) && (AnimElemTime(2) > 1) && (MoveContact)
value = 200

[State -1, 立B]
type = ChangeState
triggerall = (command = "y") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 400) && (MoveContact)
value = 210

[State -1, 立C]
type = ChangeState
triggerall = (command = "b") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1) && (MoveContact)
trigger3 = (StateNo = 210) && (AnimElemTime(2) > 1) && (MoveContact)
value = 220


;------------------------------------------------------------------------------

[State -1, しゃがみA]
type = ChangeState
triggerall = (command = "x") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(3) > 1)
value = 400

[State -1, しゃがみB]
type = ChangeState
triggerall = (command = "y") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 410

[State -1, しゃがみC]
type = ChangeState
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
triggerall = (command = "a-2c")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 610) && (MoveContact)
value = 640


[State -1, ジャンプA]
type = ChangeState
triggerall = (command = "x")
trigger1 = (StateType = A) && (Ctrl)
value = 600

[State -1, ジャンプB]
type = ChangeState
triggerall = (command = "y")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
value = 610

[State -1, ジャンプC]
type = ChangeState
triggerall = (command = "b")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
value = 620

[State -1, ジャンプＤ]
type = ChangeState
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
triggerall = (command = "start")
trigger1 = (StateType != A) && (Ctrl)
value = 10000

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
