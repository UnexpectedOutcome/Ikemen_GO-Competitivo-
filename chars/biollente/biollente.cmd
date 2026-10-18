;ビオレンテ
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



;-| 超必殺技 |-------------------------------------------------------------------
;放射樹液
[Command]
name = "housyajueki"
command = ~D,DF,F,D,DF,F,a
time = 25

[Command]
name = "kajuu"
command = ~F,DF,D,DB,B,F,b
time = 25

[Command]
name = "syokujuu"
command = ~F,DF,D,DB,B,F,c
time = 25

;EX対空ムチ
[Command]
name = "EXtaikuumuchi"
command = ~B,DB,D,DF,F,c

;EX触手捕縛
[Command]
name = "hobaku EX"
command = ~F,D,DF,c
;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;***********************************
;つるのムチ
[Command]
name = "muchi"
command = ~B,DB,D,DF,F,a

;対空ムチ
[Command]
name = "taikuumuchi"
command = ~B,DB,D,DF,F,b

;触手捕縛距離
[Command]
name = "hobaku a"
command = ~F,D,DF,a


;触手捕縛
[Command]
name = "hobaku a"
command = ~F,D,DF,b

;コマ投げ
[Command]
name = "kamituki"
command = ~F,DF,D,DB,B,c



;触手樹液a&風に舞うa
[Command]
name = "~D,DF,F,a"
command = ~D,DF,F,a


;触手樹液b&風に舞うb
[Command]
name = "~D,DF,F,b"
command = ~D,DF,F,b

;風に舞うc
[Command]
name = "~D,DF,F,c"
command = ~D,DF,F,c


;触手樹液c&押しつぶすa
[Command]
name = "~D,DB,B,a"
command = ~D,DB,B,a


;触手樹液d押しつぶすb
[Command]
name = "~D,DB,B,b"
command = ~D,DB,B,b

;押しつぶすc
[Command]
name = "~D,DB,B,c"
command = ~D,DB,B,c

;ガードキャンセル攻撃
[Command]
name = "gard_cancel"
command = ~B,DB,D,a

;ガードキャンセル攻撃
[Command]
name = "gard_cancel"
command = ~B,DB,D,b


;ガードキャンセル攻撃
[Command]
name = "gard_cancel"
command = ~B,DB,D,c

;***********************************
;ハイジャンプ
;[Command]
;name = "super_jump"
;command = D,$U
;time = 10
;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"
command = c+z
time = 1


[Command]
name = "guardpush"
command = c+a
time = 5

[Command]
name = "guardpush"
command = c+b
time = 5





;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------



[Command]
name = "fwd_c"
command = /F,c
time = 1


[Command]
name = "back_c"
command = /B,c
time = 1
;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

[Command]
name = "start1"
command = /F,s
time = 1

[Command]
name = "start2"
command = /B,s
time = 1

[Command]
name = "hold_z"
command = /$z
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


[Statedef -1] ;必須項目です。



[State -1,挑発]
type = ChangeState
triggerall = (command = "start2")
triggerall = statetype != A
trigger1 = (StateType = S) && (Ctrl)
value = 8002

[State -1,挑発]
type = ChangeState
triggerall = (command = "start1")
triggerall = statetype != A
trigger1 = (StateType = S) && (Ctrl)
value = 8001

[State -1,挑発]
type = ChangeState
triggerall = (command = "start")
triggerall = statetype != A
trigger1 = (StateType = S) && (Ctrl)
value = 8000

[State -1, 放射樹液]
type = ChangeState
triggerall = (Power > 999)
triggerall = (command = "housyajueki")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
trigger4 = (StateNo = [1100,1301]) && (MoveContact)
value = 3000

[State -1, 花獣]
type = ChangeState
triggerall = (Power > 999)
triggerall = (command = "kajuu")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
trigger4 = (StateNo = [1100,1301]) && (MoveContact)
value = 3100


[State -1, 植獣]
type = ChangeState
triggerall = (Power > 1999)
triggerall = (command = "syokujuu")
trigger1 = (StateType != A) && (Ctrl)
value = 3200

[State -1, Ex対空ムチ]
type = ChangeState
triggerall = PalNo != 12
triggerall = (Power > 499)
triggerall = (command = "EXtaikuumuchi")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 3300

[State -1, Ex対空ムチ]
type = ChangeState
triggerall = PalNo = 12
triggerall = (command = "EXtaikuumuchi")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 3300

[State -1, Ex触手捕獲]
type = ChangeState
triggerall = !var(59)
triggerall = PalNo != 12
triggerall = (Power > 499)
triggerall = (command = "hobaku EX")
triggerall = !numhelper(1100)
triggerall = !numhelper(3400)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 3400

[State -1, Ex触手捕獲(12p)]
type = ChangeState
triggerall = !var(59)
triggerall = PalNo = 12
triggerall = (command = "hobaku EX")
triggerall = !numhelper(1100)
triggerall = !numhelper(3400)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 3400

;--------------------------------------------------------

[State -1, ムチ]
type = ChangeState
triggerall = (command = "muchi")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 1200

[State -1, 対空ムチ(通常)]
type = ChangeState
triggerall = PalNo != 12
triggerall = (command = "taikuumuchi")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 1300

[State -1, 対空ムチ(12p)]
type = ChangeState
triggerall = PalNo = 12
triggerall = (command = "taikuumuchi")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 3300

[State -1, 噛みつき]
type = ChangeState
triggerall = !ishelper
triggerall = statetype = S
triggerall = stateno != 100
triggerall = IsHelper = 0
triggerall = (command = "kamituki")
trigger1 = (Ctrl)
value = 1400



[State -1, 触手捕獲]
type = ChangeState
triggerall = (command = "hobaku a")
triggerall = !numhelper(3400)
triggerall = !numhelper(1100)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 1100



[State -1, 触手樹液a]
type = ChangeState
triggerall = (command = "~D,DF,F,a")
triggerall = NumProjID(1000) = 0 && NumProjID(1001) = 0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,221]) && (MoveContact)
trigger3 = (StateNo = [400,421]) && (MoveContact)
value = 1000

[State -1, 触手樹液b]
type = ChangeState
triggerall = (command = "~D,DF,F,b")
triggerall = NumProjID(1000) <= 1 && NumProjID(1001) =0
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 1000) && (AnimElemTime(5) > 0)
trigger3 = (StateNo = [200,221]) && (MoveContact)
trigger4 = (StateNo = [400,421]) && (MoveContact)
value = 1001

[State -1, 触手樹液c]
type = ChangeState
triggerall = (command = "~D,DB,B,a")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 1000) && (AnimElemTime(5) > 0)
trigger3 = (StateNo = 1001) && (AnimElemTime(5) > 0)
trigger4 = (StateNo = [200,221]) && (MoveContact)
trigger5 = (StateNo = [400,421]) && (MoveContact)
value = 1002

[State -1, 触手樹液d]
type = ChangeState
triggerall = (command = "~D,DB,B,b")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 1000) && (AnimElemTime(5) > 0)
trigger3 = (StateNo = 1001) && (AnimElemTime(5) > 0)
trigger4 = (StateNo = 1002) && (AnimElemTime(5) > 0)
trigger5 = (StateNo = [200,221]) && (MoveContact)
trigger6 = (StateNo = [400,421]) && (MoveContact)
value = 1003



[State -1, 風に舞う]
type = ChangeState
triggerall = (command = "~D,DF,F,a") || (command = "~D,DF,F,b") || (command = "~D,DF,F,c")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = [600,621]) && (MoveContact)
value = 1500




[State -1, 押しつぶす]
type = ChangeState
triggerall = (command = "~D,DB,B,a") || (command = "~D,DB,B,b") || (command = "~D,DB,B,c")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = [600,621]) && (MoveContact)
trigger3 = (StateNo = 1510)
value = 1600

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






;==============================================================================
[State -1, 投げ]
type = ChangeState
triggerall = !ishelper
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X = [-40,40]
triggerall = p2statetype = S || p2statetype = C
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = (command = "fwd_c")
trigger1 = (Ctrl)
trigger1 = (StateType != A)
trigger1 = (P2MoveType != H)
value = 800

[State -1, 投げ]
type = ChangeState
triggerall = !ishelper
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X = [-40,40]
triggerall = p2statetype = S || p2statetype = C
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = (command = "back_c")
trigger1 = (Ctrl)
trigger1 = (StateType != A)
trigger1 = (P2MoveType != H)
value = 801


;==============================================================================
; 通常攻撃技


[State -1, 屈弱攻撃]
type = ChangeState
triggerall = (command = "a") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1) && (MoveContact)
trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1) && (MoveContact)
value = 400

[State -1, 屈中攻撃]
type = ChangeState
triggerall = (command = "b") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
value = 410


[State -1, 屈強攻撃]
type = ChangeState
triggerall = (command = "c") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 210) && (MoveContact)
trigger4 = (StateNo = 220) && (MoveContact)
trigger5 = (StateNo = 400) && (MoveContact)
trigger6 = (StateNo = 410) && (MoveContact)
value = 420

;--------------------------------------------------

[State -1, 立ち弱攻撃]
type = ChangeState
triggerall = (command = "a") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)	
trigger2 = (StateNo = 200) && (AnimElemTime(4) > 1);連打キャンセル
trigger3 = (StateNo = 400) && (AnimElemTime(4) > 0) && (MoveContact);2aからのキャンセル
value = 200

[State -1,立ち中攻撃]
type = ChangeState
triggerall = (command = "b") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(4) > 0) && (MoveContact)
trigger3 = (StateNo = 400) && (MoveContact) && (MoveContact)
value = 210



[State -1, 立ち大攻撃]
type = ChangeState
triggerall = (command = "c") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(4) > 3)
trigger3 = (StateNo = 210) && (AnimElemTime(5) > 2)
trigger4 = (StateNo = 400) && (AnimElemTime(3) > 1)
value = 220




[State -1,ゲージ溜め]
type = ChangeState
triggerall = power < 3000 
triggerall = (command = "hold_z")
triggerall = statetype != A
trigger1 = (StateType = S) && (Ctrl)
value = 6200


;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
triggerall = (command = "a")
trigger1 = (StateType = A) && (Ctrl)
value = 600

[State -1, ジャンプ中]
type = ChangeState
triggerall = (command = "b")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
value = 610


[State -1, ジャンプ強]
type = ChangeState
triggerall = (command = "c")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 610) && (MoveContact)
value = 620

;ガードキャンセル
[State -1, ガードキャンセル]
type = ChangeState
value = 6500
triggerall = command = "gard_cancel"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153


[State -1, 立ちアドガ]
type = ChangeState
value = 6000
triggerall = command = "guardpush" && statetype = S
triggerall = numhelper(6010) = 0
trigger1 = stateno = 150 || stateno = 151
ignorehitpause = 1

[State -1, 屈アドガ]
type = ChangeState
value = 6100
triggerall = command = "guardpush" && statetype = C
triggerall = numhelper(6010) = 0
trigger1 = stateno = 152 || stateno = 153


