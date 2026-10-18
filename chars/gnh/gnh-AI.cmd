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
name = "超ラッシュ"
command = ~F, D, B, b+y
time = 10

[Command]
name = "超ッ・・・すごいパァァンチ!"
command = ~F, D, B, a+x
time = 10


[Command]
name = "たいらんれいぶ"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "大噴火"
command = ~B, D, F, x+y
time = 10

[Command]
name = "超電光石火"
command = ~F, D, B, x+y
time = 10

[Command]
name = "根性MAX"
command = /$D, y+b
time = 5

;---------------------------------------------------------------------------

[Command]
name = "超すごパ(物理)"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "超すごパ(特殊)"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "超マッハ投げ(地上)"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "超マッハ投げ(対空)"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "超すごい蹴り上げ"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "超すごいキック"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "瞬"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "マッハ壁バン"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "噴火"
command = ~B, D, F, y
time = 10

[Command]
name = "ぶちかまし強"
command = ~B, D, F, b+y
time = 10

[Command]
name = "電光石火(拳)"
command = ~D, DF, F, x+y

[Command]
name = "電光石火(足)"
command = ~D, DF, F, a+b

[Command]
name = "気合注入"
command = x+a
time = 1

[Command]
name = "根性注入"
command = y+b
time = 1

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "すごいキック(攻)"
command = ~F, D, DF, a

[Command]
name = "すごいキック(守)"
command = ~F, D, DF, b

[Command]
name = "すごいキック(奇)"
command = ~F, D, DF, a+b

[Command]
name = "すごい対空パンチ(物理)"
command = ~F, D, DF, x

[Command]
name = "すごい対空パンチ(特殊)"
command = ~F, D, DF, y

[Command]
name = "昇雷"
command = ~F, D, DF, x+y

[Command]
name = "すごパ(物理)"
command = ~D, DF, F, x

[Command]
name = "すごパ(特殊)"
command = ~D, DF, F, y

[Command]
name = "すごパ連打(物理)"
command = ~F, B, x
time = 10

[Command]
name = "すごパ連打(特殊)"
command = ~F, B, y
time = 10

[Command]
name = "ぐらんどばいぱー地"
command = ~B, D, F, a
time = 10

[Command]
name = "ぐらんどばいぱー空"
command = ~B, D, F, b
time = 10

[Command]
name = "すごいかかと落とし"
command = ~F, B, a
time = 10

[Command]
name = "すごい飛び膝蹴り"
command = ~F, B, b
time = 10


[Command]
name = "すごい地団駄(弱)"
command = ~D, DF, F, a

[Command]
name = "すごい地団駄(強)"
command = ~D, DF, F, b

[Command]
name = "マッハで来た(正面)"
command = ~D, DB, B, a

[Command]
name = "マッハで来た(正面端)"
command = ~D, DB, B, x+a

[Command]
name = "マッハで来た(背面)"
command = ~D, DB, B, b

[Command]
name = "マッハで来た(背面端)"
command = ~D, DB, B, y+b

[Command]
name = "叩き落とし"
command = ~D, DB, B, x

[Command]
name = "マッハ投げ"
command = ~D, DB, B, y

[Command]
name = "旋風"
command = ~B, D, F, x
time = 10

[Command]
name = "ぶちかまし弱"
command = ~B, D, F, a+x
time = 10

[Command]
name = "ライトニング"
command = /D,x+y

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
time = 5

[Command]
name = "a+b" 
command = a+b
time = 5

[Command]
name = "すごいガード" 
command = c+z
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
time = 5

[Command]
name = "b"
command = b
time = 5

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 5

[Command]
name = "y"
command = y
time = 5

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "U"
command = U
time = 1

;------------------------------------------------------------------------------
;-| 単ボタン保持 |-------------------------------------------------------------
[Command]
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_c"
command = /c

[Command]
name = "hold_x"
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
; 仮AI記述
;==============================================================================

[State 7  AIスイッチ]
type = Varset;null;
triggerall = var(59) = 0
triggerall = roundstate = [0,2]
trigger1 = ctrl = 1
var(59) = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1

;==============================================================================
; AI時シールド禁止
;==============================================================================
[State 7  シールド用変数を0に]
type = Varset
trigger1 = (var(59) != 0) && (Alive = 1);★AIスイッチ
var(2) = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1


[State -2,トドメ刺せない判定用エフェクト消し]
;ターゲットを取ってない時のみ解除
type = RemoveExplod
trigger1 = var(2) = 0
Trigger1 = numtarget = 0
trigger2 = var(2) = 0
Trigger2 = movetype = H = 0;念のため
Trigger3 = life = 0;念のため
ID = 5
supermovetime = 999999999999999999999999999999999999999999999
pausemovetime = 999999999999999999999999999999999999999999999
ignorehitpause	= 1


;==============================================================================
; すごいガード用念のため記述
;==============================================================================
[State -1, すごガ]
type = ChangeState
value = 900
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = var(0)!=0;★何らかの理由ですごガ中以外に変数残ってる
triggerall = (stateno != [900,950])
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)


[State -2, すごガ維持用変数セット]
type = varset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = (stateno = [900,950])
trigger1 = (anim = 1800)||(anim = 1810)
var(0) = 22;★処理の関係上+1しとかないとすぐ解除される

[State -2, すごガ維持用変数セット]
type = varset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = (stateno = [900,950])
trigger1 = (anim = 1805)||(anim = 1825)
trigger2 = (stateno != [900,950])
var(0) = 0;★念のため解除
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1

;==============================================================================
; AI用データ取得
;==============================================================================
;----------------------------------------------------------------------------
;Helperの数を調べる /
;-------------------
[State -3, 定常Helper数セット]
type = VarSet
trigger1 = var(52) = 0;Helperが存在してから長時間が過ぎた
trigger1 = var(51) < var(53);定常helper数が合っていない
trigger1 = var(53)!=0
var(51) = var(53)
ignorehitpause = 1

[State -3, Helper数判定0]
type = VarSet
trigger1 = 1
var(53) = EnemyNear,NumHelper
ignorehitpause = 1

[State -3, Helper数判定]
type = VarSet
trigger1 = NumEnemy > 1
var(53) = EnemyNear(0),NumHelper + EnemyNear(1),NumHelper
ignorehitpause = 1

[State -3, 現在画面にある飛び道具の数0]
type = VarSet
trigger1 = 1
var(50) = var(53) - var(51) + EnemyNear,NumProj
ignorehitpause = 1

[State -3, 現在画面にある飛び道具の数]
type = VarSet
trigger1 = NumEnemy > 1
var(50) = var(53) - var(51) + EnemyNear(0),NumProj + EnemyNear(1),NumProj
ignorehitpause = 1

[State -3, projectile存在時間add]
type = VarAdd
trigger1 = var(50)
var(52) = 1
ignorehitpause = 1

[State -3, projectile存在時間リセット]
type = VarSet
trigger1 = var(50) = 0
trigger2 = var(52) >= 300;projectile&Helper存在時間が多くなった時リセット
var(52) = 0
ignorehitpause = 1

;==============================================================================
;追い込まれてるっぽい		 //
;=================================
[State -1, 超すごいラッシュ　根性フルカウント3ゲージ技]
type = ChangeState
value = 3600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = power >= 3000;ゲージレベル3
triggerall = var(40)>=10
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype != L) && (P2statetype != A) && (P2movetype != H)
Triggerall = ((P2bodydist X = [-20,60])||(P2movetype = A))&&(backEdgeBodyDist <= 60)
trigger1 = (ctrl = 1)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 電光石火(直)];地上
type = ChangeState
value = 2850
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A 
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1500-(fvar(1)/fvar(3)*500)) > random)&&(power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype != L) && (P2statetype != A) && (P2movetype != H)
Triggerall = ((P2bodydist X = [-20,80])||(P2movetype = A))&&(backEdgeBodyDist <= 60)
trigger1 = (ctrl = 1)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 電光石火(斜)];対空
type = ChangeState
value = 2950
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A 
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1500-(fvar(1)/fvar(3)*500)) > random)&&(power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype = A) && (P2movetype != H)
Triggerall = ((P2bodydist X = [-20,80])||(P2movetype = A))
Triggerall = (backEdgeBodyDist <= 60)&&(P2BodyDist X <= 100)
trigger1 = (ctrl = 1)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 電光石火(斜)];空対地
type = ChangeState
value = 2900
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype = A 
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1500-(fvar(1)/fvar(3)*500)) > random)&&(power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype != A) && (P2movetype != H)
Triggerall = (P2bodydist X = [-20,80])&&(backEdgeBodyDist <= 60)
trigger1 = (ctrl = 1)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, ガーキャン]
type = ChangeState
value = 500
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A 
triggerall = power >= 500;ゲージ消費
triggerall = ((power - 1000-(fvar(1)/fvar(3)*500)) > random)&&(power%500 < random);★ゲージ量による
triggerall = fvar(0) > (fvar(3)/2)
triggerall = (stateno = 151)||(stateno = 153)
trigger1 = (numexplod(150) >= 2)
Trigger1 = (P2bodydist X = [-70,70])&&(backEdgeBodyDist <= 60)
trigger2 = (P2dist x = [-(enemynear,const(size.attack.dist)),(enemynear,const(size.attack.dist))])
trigger2 = enemynear,facing != facing
trigger2 = (P2movetype = A)&& !(inguarddist)

[State -1, 当身キック]
type = ChangeState
value = 1250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A 
triggerall = (fvar(1) > fvar(3)/5)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2movetype = A)&&(gametime%20 = 0);★若干控える
triggerall = (P2dist X > 0) && (facing != enemynear,facing)
triggerall = (enemynear,movecontact = 0)&&(enemynear,ctrl = 0)
Triggerall = (backEdgeBodyDist <= 50)&&(P2bodydist X <= 70)
trigger1 = (ctrl = 1)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

;==============================================================================
;飛び道具かも				 //
;========================================
[State -1, すごキ・奇]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L) && (P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2dist X > 0) && var(0) = 0
triggerall = (fvar(1) >= fvar(3)/3)
triggerall = (inguarddist)&&((P2movetype = I)||(enemynear,HitDefAttr != SCA, AA,AT))
triggerall = gametime%10 > 4 
triggerall = statetype != A
triggerall = ((P2dist X-100)*6 > random)||(var(52) = [1,15])||(inguarddist)
triggerall = (var(50) > 0)&&(var(52)*50 > random)
Triggerall = abs(enemynear,vel X) < (enemynear,Const(velocity.walk.fwd.x));★歩きより遅い
trigger1 = (ctrl = 1)&&(stateno != 100);★ダッシュ中不可
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))
trigger3 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)&&(time > 1)
trigger3 = numexplod(1430) = 0

[State -1, 打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L) && (P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2dist X > 0) && var(0) = 0
triggerall = (inguarddist)&&((P2movetype = I)||(enemynear,HitDefAttr != SCA, AA,AT))
triggerall = gametime%10 <= 4 
triggerall = (((120 - P2dist X)*6 > random)&&(P2dist Y > -100))||(var(52) = [20,120])||(inguarddist)
triggerall = (var(50) > 0)&&(var(52)*50 > random)
trigger1 = (ctrl = 1)&&(vel X = 0);★移動中は不可
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))
trigger3 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger3 = numexplod(1430) = 0

;---------------------------------------------------------------------------------------------------
[State -2, すごガ用変数セット]
type = varset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno != [900,950])
triggerall = (P2statetype != L)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= fvar(3)/3)&&(fvar(0) >= fvar(3)/5*3)
triggerall = (inguarddist)
triggerall = gametime%10 > 3 && (var(50) >= 3)
triggerall = (var(52)*30 > random)&&(var(50)*50 > random);★弾幕かもしれない
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)
var(0) = 22;★処理の関係上+1しとかないとすぐ解除される

[State -2, すごガ用変数セット]
type = varset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno != [900,950])
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= fvar(3)/3)&&(fvar(0) >= fvar(3)/2)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
triggerall = gametime%10 > 3 
triggerall = (numexplod(150) != 0)
trigger1 = (ctrl = 1)
trigger2 = (stateno = 700);強制移行
var(0) = 22;★処理の関係上+1しとかないとすぐ解除される

[State -1, すごガ]
type = ChangeState
value = 900
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = var(0)!=0
triggerall = (stateno != [900,950])
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State -2, すごガ維持用変数セット]
type = varset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = (stateno = [900,950])
trigger1 = (anim = 1800)||(anim = 1810)
var(0) = 22;★処理の関係上+1しとかないとすぐ解除される

[State -2, すごガ維持用変数セット]
type = varset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = (stateno = [900,950])
trigger1 = (anim = 1805)||(anim = 1825)
trigger2 = (stateno != [900,950])
var(0) = 0;★処理の関係上+1しとかないとすぐ解除される

[State 1000,]
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno = [900,950])
triggerall = (anim = 1800)||(anim = 1810)
trigger1 = fvar(1) < 0
trigger2 = fvar(0) < 0
trigger3 = (stateno = 950)
trigger3 = NumExplod(900) = 0
trigger4 = (stateno = 900)
trigger4 = (var(50)<=0)&&!(inguarddist)
trigger5 = fvar(1) < fvar(3)/2
trigger5 = !(inguarddist)
trigger6 = time >= 60
value = 1805
elem = 1

[State 1000,]
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno = [900,950])
triggerall = (anim = 1820)||(anim = 1830)
trigger1 = fvar(1) < 0
trigger2 = fvar(0) < 0
trigger3 = (stateno = 950)
trigger3 = NumExplod(900) = 0
trigger4 = (stateno = 900)
trigger4 = (var(50)<=0)&&!(inguarddist)
trigger5 = fvar(1) < fvar(3)/2
trigger5 = !(inguarddist)
trigger6 = time >= 60
value = 1825
elem = 1

;---------------------------------------------------------------------------------------------------

;==============================================================================
; 気合と根性ゲージ管理関連 
;==============================================================================

[State -1, ゲージ溜め]
type = ChangeState
value = 700-((10-var(40))*10 > random)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist) 
Triggerall = numexplod(704) = 0
triggerall = (abs(fvar(1)) < (fvar(3)/(3-(fvar(1)<0))))||(abs(fvar(0)) < (fvar(3)/(3-(fvar(0)<0))))||(P2bodydist X >= random)
triggerall = ((fvar(1) < fvar(3)/2)||(fvar(0) < fvar(3)/2)||(((P2movetype = H)||(var(40) >= 10))&&(power/powermax<1))) 
triggerall = gametime%3 = random%3
triggerall = ctrl && statetype != A
triggerall = (numtarget != 0)
triggerall = (P2bodydist X > 150) || (target,statetype = A) || ((target,movetype = H)&&(target,stateno =[200,4999]))
trigger1 = (P2dist X - (150+(enemynear,vel X)*36))*10 >= random
trigger1 = (fvar(1)/fvar(3)*1000) <= random
trigger2 = (P2dist X - (150+(enemynear,vel X)*36))*10 >= random
trigger2 = (fvar(0)/fvar(3)*1000) <= random
trigger3 = (numtarget(1640) != 0) || (fvar(1)<0) || (fvar(0)<0)
trigger4 = (numtarget(2800) != 0) || (fvar(1)<0) || (fvar(0)<0)
trigger5 = (numtarget(2900) != 0) || (fvar(1)<0) || (fvar(0)<0)
trigger6 = (numtarget(2700) != 0) || (fvar(1)<0) || (fvar(0)<0)
trigger7 = numtarget != 0 
trigger7 = (target,stateno < 5000) && (target,movetype = H);★多分なんかこっち管理の喰らい状態
trigger8 = numtarget(500) != 0 || (fvar(1)<0) || (fvar(0)<0)
trigger9 = numtarget(620) != 0 || (fvar(1)<0) || (fvar(0)<0)
trigger10 = numtarget(1800) != 0 || (fvar(1)<0) || (fvar(0)<0)
trigger11 = numtarget != 0 
trigger11 = target,stateno = [1381,1382]
trigger11 = target,time <= 30

[State -1, ゲージ溜め解除]
type = ChangeAnim
value = 701
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 700
Triggerall = (anim = 700) && (AnimElemTime(20) >= 0)
Trigger1 = P2movetype = A && P2bodydist X <= 150
Trigger2 = (enemynear,vel X) > (enemynear,Const(velocity.walk.fwd.x));★歩きより速い
Trigger2 = P2movetype != H 
trigger3 = (150 - P2dist X)*10 >= random 
trigger3 = gametime%10 = 0
Trigger3 = P2movetype != H 
trigger4 = ((fvar(1)+fvar(0))/fvar(3)*10) > random
trigger4 = gametime%20 = random%20
Trigger4 = P2movetype != H 
trigger5 = (fvar(1)+fvar(0))/fvar(3) >= 2
trigger5 = gametime%(5+var(40)) = random%(5+var(40))||(power/powermax = 1)
trigger5 = (power/(50+(5*var(40))) >= random)||(power/powermax = 1)
Trigger6 = (enemynear,vel X > 0)&&(InGuardDist)
trigger7 = (inguarddist)
Trigger8 = (enemynear,vel Y) < 0;★ジャンプした
Trigger8 = P2movetype != H 

[State -1, 適当なとこで離脱]
type = ChangeState
value = 105+((P2bodydist X <= 10)&&(ctrl)&&(P2statetype!=A)&&(P2movetype!=H))*695
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (ctrl)||((P2dist X < 100)&&(enemynear,vel X <= 0)&&(stateno=106))
triggerall = gametime%5 = random%5 &&(stateno != 100)
triggerall = !((inguarddist)&&(var(52)=[20,100]))
triggerall = statetype != A&&(stateno != 100)
Triggerall = backEdgeBodyDist > 50
triggerall = P2bodydist X <= 150
triggerall = P2dist X > 0
triggerall = (fvar(1) <= (fvar(3)/2))||(P2dist Y > -120)
triggerall = (150-P2bodydist X) * 6 > random
trigger1 = ((fvar(1)+fvar(0))/fvar(3)*500) <= random
trigger2 = (fvar(0)/fvar(3)*1000) <= random
trigger3 = numtarget(1640) != 0
trigger4 = numtarget(2800) != 0
trigger5 = numtarget(2900) != 0
trigger6 = numtarget != 0 
trigger6 = (target,stateno < 5000) && (target,movetype = H);★多分なんかこっち管理の喰らい状態

[State -1, 後ろが無い場合とりあえず走ってみる]
type = ChangeState
value = 100+((P2bodydist X <= 10)&&(ctrl)&&(P2statetype!=A)&&(P2movetype!=H))*700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl&&(stateno != 100)
triggerall = gametime%5 = random%5
triggerall = statetype != A
Triggerall = backEdgeBodyDist <= 50
triggerall = P2bodydist X <= 150
triggerall = P2dist X >= 0
triggerall = (150-P2bodydist X) * 6 > random
trigger1 = ((fvar(1)+fvar(0))/fvar(3)*500) <= random
trigger2 = (fvar(0)/fvar(3)*1000) <= random
trigger3 = numtarget(1640) != 0
trigger4 = numtarget(2800) != 0
trigger5 = numtarget(2900) != 0
trigger6 = numtarget != 0 
trigger6 = (target,stateno < 5000) && (target,movetype = H);★多分なんかこっち管理の喰らい状態

[State -1, 走り後制動]
type = ChangeState
value = 0+(animelemtime(10) >= 0)*101
ctrl = (animelemtime(10) < 0)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno = 100)
triggerall = time >= 10
triggerall = statetype != A
triggerall = (P2statetype!=L)
triggerall = P2bodydist X <= 120
triggerall = P2dist X >= 0
triggerall = (120-P2bodydist X) * 8 > random
triggerall = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
trigger1 = (P2movetype=H)
trigger1 = (P2dist Y + (enemynear,vel Y)*10) = [-100,-20]
trigger2 = (P2dist Y = 0)
trigger2 = (P2movetype!=H)


[State -1, 制動後]
type = ChangeState
value = 850
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno = 101)
triggerall = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
triggerall = statetype != A
triggerall = (P2statetype!=L)&&(P2statetype=A)
triggerall = P2dist X >= 0
trigger1 = P2bodydist X <= 60 && (P2dist Y <= -20)
trigger1 = (P2dist Y + (enemynear,vel Y)*5) = [-60,-20] 

[State -1, 制動後]
type = ChangeState
value = 1255
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno = 101)
triggerall = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
triggerall = statetype != A
triggerall = (P2statetype=S)
triggerall = P2dist X >= 0
trigger1 = P2bodydist X <= 60

[State -1, 制動後]
type = ChangeState
value = 1310
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (stateno = 101)
triggerall = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
triggerall = statetype != A
triggerall = (P2statetype!=L)
triggerall = P2dist X >= 0
triggerall = P2bodydist X > 60
trigger1 = (P2dist Y <= -30)
trigger1 = (P2dist Y + (enemynear,vel Y)*15) = [-100,-30] 
trigger2 = (P2statetype!=A)

[State -1, 適当なとこで離脱]
type = ChangeState
value = 43-(backEdgeBodyDist <= 50);★後ろが無い場合とりあえず前飛んでみる
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = ((fvar(1)+fvar(0))/fvar(3)*500) <= random
triggerall = P2bodydist X <= 150
triggerall = gametime%10 = random%10
trigger1 = (ctrl = 1)&&(stateno != 100)
trigger2 = (stateno = [200,250])&&(movecontact)

;------------------------------------------------------------------------------
;特殊ゲージ切れ時限定対打撃当身/
;------------------------------

[State -1, 正拳]
type = ChangeState
value = 320
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) < 0)||(fvar(0) < 0)
triggerall = (P2movetype != H)
triggerall = ctrl
triggerall = statetype != A
triggerall = ((100 - P2bodydist X)*10>random)
triggerall = ((100 + P2dist Y)*10>random)
trigger1 = (P2statetype != L) && (P2movetype != H)
trigger1 = (numexplod(150) != 0)||(stateno = 950)
trigger1 = enemynear,movecontact = 0
trigger1 = (inguarddist)
trigger2 = (P2movetype = A) && (enemynear,time <= 3)
trigger3 = (P2statetype != L) && (P2movetype != H)
trigger3 = enemynear,ctrl=1

[State -1, 前進]
type = ChangeState
value = 310
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) < 0)||(fvar(0) < 0)
triggerall = gametime%10 <= 4
triggerall = (P2movetype != H)
triggerall = ctrl
triggerall = statetype != A
trigger1 = var(50) <= 0
trigger1 = !(inguarddist)
trigger1 = (backEdgeBodyDist <= 50)

[State -1, 前進当身解除]
type = ChangeAnim
value = 22
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 310
Triggerall = (anim = 30) && (AnimElemTime(10) >= 0)
Trigger1 = (enemynear,vel X) <= (enemynear,Const(velocity.walk.back.x))
Trigger1 = P2movetype != H 
Trigger2 = (enemynear,vel Y) < 0;★ジャンプした
Trigger2 = (enemynear,vel X) >= (enemynear,Const(velocity.walk.back.x))
Trigger2 = P2movetype != H
trigger3 = P2dist X < -10 
trigger4 = var(50) != 0
trigger4 = ((P2bodydist X-150)*10>random)
trigger4 = (inguarddist)


[State -1, 後退]
type = ChangeState
value = 300
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) < 0)||(fvar(0) < 0)
triggerall = gametime%10 > 4
triggerall = (P2movetype != H)
triggerall = ctrl
triggerall = statetype != A
trigger1 = var(50) <= 0
trigger1 = !(inguarddist)
trigger1 = (backEdgeBodyDist > 50)

[State -1, 後退当身解除]
type = ChangeAnim
value = 23
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 300
Triggerall = (anim = 31) && (AnimElemTime(15) >= 0)
Trigger1 = P2bodydist X >= 150
trigger1 = (backEdgeBodyDist <= 50)
trigger1 = (numexplod(150) = 0)
trigger2 = var(50) != 0
trigger2 = ((P2bodydist X-100)*10>random)
trigger2 = random > 50

;==============================================================================
; 特殊起き上がり			//
;========================================
[State -1, 背後へ]
type = ChangeState
value = 1320
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= fvar(3)/3)
Triggerall = helper(7),NumExplod(7000) != 0
triggerall = P2bodydist X < 120 
triggerall = (stateno = 5120)
triggerall = random <= 50
trigger1 = var(50) != 0
trigger2 = P2movetype = A
trigger2 = enemynear,hitdefattr != SC,AA
trigger3 = inguarddist 

[State -1, 前方]
type = ChangeState
value = 1340
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < fvar(3)/3)
Triggerall = helper(7),NumExplod(7000) != 0
triggerall = P2bodydist X < 120 
triggerall = (backEdgeBodyDist <= 120)
triggerall = random <= 50
trigger1 = (stateno = 5120)

[State -1, 後方]
type = ChangeState
value = 1330
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < fvar(3)/3)
Triggerall = helper(7),NumExplod(7000) != 0
triggerall = P2bodydist X < 120 
triggerall = (backEdgeBodyDist > 120)
triggerall = random <= 50
trigger1 = (stateno = 5120)


;==============================================================================
; 相手の行動に対する反応記述 
;============================================================================== 

;==============================================================================
; ガード後反撃的な			//
;========================================
[State -1, 超すごいラッシュ　根性フルカウント3ゲージ技]
type = ChangeState
value = 3600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 3000;ゲージレベル3
triggerall = var(40)>=10
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype != L) && (P2statetype != A) && (P2movetype != H)
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
triggerall = P2bodydist X <= 60
trigger1 = (ctrl = 1)

[State -1, 電光石火(直)];地上
type = ChangeState
value = 2850
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1500-(fvar(1)/fvar(3)*500)) > random)&&(power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype != L) && (P2statetype != A) && (P2movetype != H)
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)

[State -1, 電光石火(足)];地上
type = ChangeState
value = 2950
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1500-(fvar(1)/fvar(3)*500)) > random)&&(power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2statetype != L) && (P2statetype != A) && (P2movetype != H)
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = (P2dist Y) <=-30;★発生までにたぶん着地しない
triggerall = (P2dist X) >= 50 && (P2bodydist X < 120)
triggerall = ((P2dist X)+(P2dist Y)) = [-30,20] 
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)

[State -1, 超ダッシュ]
type = ChangeState
value = 1340
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = (backEdgeBodyDist <= 50)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)

[State -1, カッターキック]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (statetype != A)
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = P2bodydist X <= 90
triggerall = P2statetype != A
triggerall = ((90 - P2bodydist X)*10>random)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)

[State -1, 打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2dist Y = [-70,30])
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = P2bodydist X <= 90
triggerall = P2statetype = A
triggerall = ((90 - P2bodydist X)*10>random)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)

[State -1, 当身キック]
type = ChangeState
value = 1250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2dist Y = [-90,0])&&(gametime%5 = 0);★若干控える
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = P2bodydist X <= 70
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)
trigger1 = statetype != A

[State -1, すごキ奇]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (statetype != A)
triggerall = (numexplod(150) != 0)||(stateno = 950)
triggerall = P2bodydist X > 90
triggerall = P2statetype != A
triggerall = ((P2bodydist X-90)*10>random)
triggerall = enemynear,movecontact = 0
triggerall = (inguarddist)
trigger1 = (ctrl = 1)

;==============================================================================
;相手が攻撃してくるっぽい		 //
;========================================
[State -1, 烈の瞬]
type = ChangeState
value = 2500
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2statetype != A)&&(P2movetype != H)
triggerall = power >= 1500-(fvar(1)/fvar(3)*500);ゲージレベル１-ちょっと余裕持たせる
triggerall = (power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = gametime%10 < 4 
triggerall = (inguarddist) && (enemynear,time < 5)
triggerall = (170 - P2dist X)*6 > random
trigger1 = (ctrl = 1)&&(stateno != 100)
trigger1 = (numexplod(150)!=0)||(fvar(1)/fvar(3)*300 > random);★ガード直後か気合ゲージ量によるぶっぱ
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))
trigger3 = ((stateno=2200)||(stateno=2250)||(stateno=3200))&&(AnimElemTime(20) > 0)

[State -1, 当身キック]
type = ChangeState
value = 1250+(power >= 1800-(fvar(1)/fvar(3)*800))*(P2statetype!=A)*1250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (statetype != A)&&(P2dist Y = [-90,0])
triggerall = gametime%10 <= 4
triggerall = (P2movetype = A)&& (enemynear,time < 5)
triggerall = ((120 -abs(P2dist X))*100>random)
trigger1 = (stateno =1400)&&(AnimElemTime(13) > 0)
trigger1 = (numtarget = 0)

[State -1, 緊急回避];★たぶんガード不能攻撃
type = ChangeState
value = 1320
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/3)
triggerall = (statetype != A)
triggerall = (P2dist x = [0,(enemynear,const(size.attack.dist))])
triggerall = gametime%10 <= 4
triggerall = (enemynear,facing != facing)&&(P2dist X > 0)
triggerall = (P2movetype = A)&& !(inguarddist)
triggerall = ((120 -abs(P2dist X))*100>random)
trigger1 = (ctrl = 1)&&(stateno != 100);★ダッシュ中は不可
trigger1 = (fvar(1)/fvar(3)*300 > random);★気合ゲージ量によるぶっぱ
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))
trigger3 = ((stateno=2200)||(stateno=2250)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger4 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)

;==============================================================================
;なんか凄い勢いで突っ込んでくる		 //
;========================================
[State -1, 昇雷]
type = ChangeState
value = 1770
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype = A)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/4);★気合ゲージ気にする
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = (statetype != A)
triggerall = gametime%10 < 4 
triggerall = ((40-abs(P2dist X))*30>random)
trigger1 = stateno != 100
trigger1 = (ctrl = 1)

[State -1, らいとにんぐ]
type = ChangeState
value = 1640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = (statetype = A)&&(P2dist Y > -70)
triggerall = gametime%10 < 4 
triggerall = ((40-abs(P2dist X))*30>random)
trigger1 = vel Y >= -3
trigger1 = (ctrl = 1)&&(stateno = [41,43])

[State -1, 電光石火(足)];地上
type = ChangeState
value = 2950
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1800) > random)&&(power%1000 < random);★ゲージ量による
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/3);★気合ゲージ気にする
triggerall = ((P2movetype = A)&&(inguarddist))||(enemynear,ctrl = 1)
triggerall = statetype != A && (P2statetype = A) && (P2movetype = A)
triggerall = gametime%10 < 4 && (facing != enemynear,facing)
triggerall = (enemynear,vel X) > (enemynear,Const(velocity.walk.fwd.x));★歩きより速い
triggerall = (P2dist Y) <=-30;★発生までにたぶん着地しない
triggerall = (P2dist X) >= 50 && (P2bodydist X < 120)
triggerall = ((P2dist X)+(P2dist Y)) = [-30,20] 
trigger1 = (ctrl = 1)&&(stateno != 100)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))


[State -1, しゃがみアッパー]
type = ChangeState
value = 420
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/5);★気合ゲージ気にする
triggerall = (statetype != A)
triggerall = ((P2movetype = A)&&(inguarddist))||(enemynear,ctrl = 1)
triggerall = (P2bodydist X)-(enemynear,vel X)*5 <= 80
triggerall = P2dist X+40 >= -(Facing *(enemynear,Facing))*(enemynear,vel X)*11;★発生までにたぶん寄り過ぎない
triggerall = (P2dist Y)-(enemynear,vel Y)*5 <= -30
triggerall = (P2dist Y)-(enemynear,vel Y)*5 > -120;★発生までにたぶん寄り過ぎない
triggerall = gametime%10 < 3 && (facing != enemynear,facing)
triggerall = (enemynear,vel X) > (enemynear,Const(velocity.walk.fwd.x));★歩きより速い
triggerall = ((120 - P2dist X)*6>random)&&(stateno != 420)
trigger1 = (ctrl = 1)&&(stateno != 100);★移動中は不可
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))


[State -1, 対空すごパ・特殊]
type = ChangeState
value = 1755
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype = A)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/4);★気合ゲージ気にする
triggerall = (statetype != A)&&(P2dist Y < -50)
triggerall = (P2movetype = A)&&((inguarddist)||(enemynear,ctrl = 1))
triggerall = gametime%10 < 3 && (facing != enemynear,facing)
triggerall = ((enemynear,vel X) > (enemynear,Const(velocity.walk.fwd.x)));★歩きより速い
triggerall = (P2dist Y)+(enemynear,vel Y)*22 < -50;★発生までにたぶん着地しない 
triggerall = (P2bodydist X)-(enemynear,vel X)*22 > 120;★発生までにたぶん寄り過ぎない
triggerall = (P2dist X-(100+(enemynear,vel X)*22))*5> random
trigger1 = (ctrl = 1)&&(stateno != 100)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))


[State -1, 対空すごパ・物理]
type = ChangeState
value = 1750
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype = A)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/4);★気合ゲージ気にする
triggerall = (statetype != A)&&(numtarget(2500) = 0)
triggerall = ((P2movetype = A)&&(inguarddist))||(enemynear,ctrl = 1)
triggerall = gametime%10 < 3 && (facing != enemynear,facing)
triggerall = (enemynear,vel X) > (enemynear,Const(velocity.walk.fwd.x));★歩きより速い
triggerall = ((P2dist Y)+(enemynear,vel Y)*11)= [-150,-50];★発生までにたぶん着地しない
triggerall = ((P2dist X)-(enemynear,vel X)*11)= [80,150]
triggerall = (((P2dist X)-(enemynear,vel X)*11)+((P2dist Y)+(enemynear,vel Y)*11)) = [-50,20] 
triggerall = (P2dist X-(100+(enemynear,vel X)*11))*5 < random
trigger1 = (ctrl = 1)&&(stateno != 100)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 小突き]
type = ChangeState
value = 400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0) && (facing != enemynear,facing)
triggerall = (fvar(1) > fvar(3)/5);★気合ゲージ気にする
triggerall = (P2statetype != A)&&(statetype != A)&&!(inguarddist)
triggerall = (P2bodydist X)-(enemynear,vel X)*5 <= 60
triggerall = (P2dist X)-(enemynear,vel X)*5 > 20;★発生までにたぶん寄り過ぎない
triggerall = gametime%10 < 3 && (facing != enemynear,facing)
triggerall = (enemynear,vel X) >= (enemynear,Const(velocity.walk.fwd.x));★歩き以上
triggerall = ((80 - P2bodydist X)*12>random)&&(stateno != 420)
trigger1 = (ctrl = 1)&&(stateno != 100);★移動中は不可
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 直突き]
type = ChangeState
value = 220
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0) && (facing != enemynear,facing)
triggerall = (fvar(1) > fvar(3)/5);★気合ゲージ気にする
triggerall = (P2statetype != A)&&(statetype != A)
triggerall = (P2bodydist X)-(enemynear,vel X)*10 <= 90
triggerall = (P2bodydist X)-(enemynear,vel X)*10 > 60;★発生までにたぶん寄り過ぎない
triggerall = gametime%10 < 3 && (facing != enemynear,facing)
triggerall = (enemynear,vel X) >= (enemynear,Const(velocity.walk.fwd.x));★歩き以上
triggerall = ((150 - P2bodydist X)*6>random)&&(stateno != 420)
trigger1 = (ctrl = 1)
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 旋風]
type = ChangeState
value = 1800
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L) && (P2movetype != H) && !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0) && (facing != enemynear,facing)
triggerall = (fvar(1) > fvar(3)/4);★気合ゲージ気にする
triggerall = (P2statetype = A)&&(statetype != A)&&!(inguarddist)
triggerall = (P2dist X)-(enemynear,vel X)*21 = [-40,40];★発生までにたぶん寄り過ぎない
triggerall = (P2dist Y+(enemynear,vel Y)*21 <= -150)&&(enemynear,vel Y >= -1)
triggerall = gametime%10 < 3 && (facing != enemynear,facing)
triggerall = (enemynear,vel X) >= (enemynear,Const(velocity.walk.fwd.x));★歩き以上
triggerall = (abs((P2dist X)-(enemynear,vel X)*21)*25<random)&&(stateno != 420)
trigger1 = (ctrl = 1)&&(stateno != 100);★移動中は不可
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

[State -1, 打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/4);★気合ゲージ気にする
triggerall = ((P2movetype = A)&&(inguarddist))||(enemynear,ctrl = 1)
triggerall = gametime%10 <= 4
triggerall = (P2dist X = [-100,100]) && (P2dist Y > -100)
triggerall = P2dist X >= -(Facing *(enemynear,Facing))*(enemynear,vel X)*23
triggerall = ((enemynear,vel X!=0)&&(P2statetype=A))||((enemynear,vel X)>enemynear,Const(velocity.walk.fwd.x));★歩きより速い
triggerall = ((100 - P2dist X)*10>random)
trigger1 = (ctrl = 1)&&(stateno != 100);★移動中は不可
trigger2 = ((stateno = [200,650])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SCA, NA))

;==============================================================================
; コンボ系記述 
;============================================================================== 

;==============================================================================
;弱系攻撃はとりあえず刻む(反応時間稼ぎ) //
;========================================

[State -1, 地上弱パンチ]
type = ChangeState
value = 200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/4);★気合ゲージ気にする
triggerall = statetype != A
triggerall = stateno = 200
triggerall = prevstateno != 200
trigger1 = (var(10) <= 2)||(enemynear,gethitvar(hitcount) <= 1)
trigger1 = movecontact = 1

[State -1, 地上弱キック]
type = ChangeState
value = 230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/4);★気合ゲージ気にする
triggerall = statetype != A
triggerall = stateno = 230
triggerall = prevstateno != 230
trigger1 = (var(10) <= 2)||(enemynear,gethitvar(hitcount) <= 1)
trigger1 = movecontact = 1


[State -1, 地上弱パンチ]
type = ChangeState
value = 400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/4);★気合ゲージ気にする
triggerall = statetype != A
triggerall = stateno = 400
triggerall = prevstateno != 400
trigger1 = (var(10) <= 2)||(enemynear,gethitvar(hitcount) <= 1)
trigger1 = movecontact = 1

[State -1, 地上弱キック]
type = ChangeState
value = 430
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/4);★気合ゲージ気にする
triggerall = statetype != A
triggerall = stateno = 430
triggerall = prevstateno != 430
trigger1 = (var(10) <= 2)||(enemynear,gethitvar(hitcount) <= 1)
trigger1 = movecontact = 1



[State -1, 空中弱パンチ]
type = ChangeState
value = 600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/4);★気合ゲージ気にする
triggerall = statetype = A
triggerall = stateno = 600
triggerall = prevstateno != 600
trigger1 = (var(10) <= 2)||(enemynear,gethitvar(hitcount) <= 1)
trigger1 = movecontact = 1

[State -1, 空中弱キック]
type = ChangeState
value = 630
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/4);★気合ゲージ気にする
triggerall = statetype = A
triggerall = stateno = 600
triggerall = prevstateno != 600
trigger1 = (var(10) <= 2)||(enemynear,gethitvar(hitcount) <= 1)
trigger1 = movecontact = 1


;==============================================================================
;コンボ組み立て(パターンがありすぎて正直わからない) //
;===================================================

;------------------------------------------------------------------------------
;状況により特定の技へキャンセル/
;------------------------------

;------------------------------------------------------------------------------
;2ゲージ技へ
[State -1, 根性MAX　2ゲージ技]
type = ChangeState
value = 3200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 3000-(1000*(fvar(1)/fvar(3)));ゲージレベル2
triggerall = (power%1000 < random);★ゲージ量による
triggerall = (((5+var(10))*50 >= random))||(power >= 3000)
triggerall = var(40) < 7;★根性カウントあんまりない
triggerall = statetype != A
triggerall = !((P2stateno = [1000,4999])&&(P2movetype = H))
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)

;超すごいラッシュ確定状況
;-------------------------------
[State -1, 超すごいラッシュ　根性フルカウント3ゲージ技]
type = ChangeState
value = 3600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 3000;ゲージレベル3
triggerall = var(40)>=10
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (facing != enemynear,facing) && (P2dist X > 0)

triggerall = (P2life <= 500)||(random >= 50);★大雑把にトドメっぽくもしくはぶっぱ

trigger1 = (movecontact)&&(numtarget != 0)
trigger1 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)

trigger2 = (movecontact)&&(numtarget != 0)
trigger2 = (stateno = 1400)

trigger3 = (movecontact)&&(numtarget != 0)
trigger3 = (stateno = 1270)

trigger4 = (frontEdgeBodyDist < 80)&&(numtarget != 0)
trigger4 = (target,statetype = A)&&(target,vel Y > 0)
trigger4 = ctrl

[State -1, 超・すごいパァァンチ　3ゲージ技]
type = ChangeState
value = 3500
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 3000;ゲージレベル3
triggerall = (random <= 70-(var(40)*10))
triggerall = (inguarddist)||((5+var(10))*50 >= random)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (facing != enemynear,facing) && (P2dist X > 0)
triggerall = (P2life <= 300)||(random <= 25+(numtarget != 0)*25);★大雑把にトドメっぽくもしくはぶっぱ
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0) && 0;★オフ
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)

[State -1, 超・電光石火　2ゲージ技]
type = ChangeState
value = 3300
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 2800-(800*(fvar(1)/fvar(3)));ゲージレベル2
triggerall = (power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = (inguarddist)||((5+var(10))*50 >= random)||(power >= 3000)
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (facing != enemynear,facing) && (P2dist X > 0)
triggerall = ((enemynear,vel Y!=0)&&(((P2dist Y)+(enemynear,vel Y)*13)= [-150,-50]))||(P2dist Y = 0);★発生までにたぶん着地しない
triggerall = ((enemynear,vel Y!=0)&&((((P2dist X)-(enemynear,vel X)*13)+((P2dist Y)+(enemynear,vel Y)*13)) = [-50,20]))||(P2dist Y = 0)
triggerall = (P2life <= 180 + (120*(fvar(1)/fvar(3))));★大雑把にトドメっぽく
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0) && 0;★オフ
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)

[State -1, 超・すごいパンチ　2ゲージ技]
type = ChangeState
value = 3000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 2800-(800*(fvar(1)/fvar(3)));ゲージレベル2
triggerall = (power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = (!(inguarddist)&&((5+var(10))*50 >= random))||(power >= 3000)
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (facing != enemynear,facing) && (P2dist X > 0)
triggerall = (((P2bodydist X)+(enemynear,vel X)*8)= [0,120])
triggerall = (((P2dist Y)+(enemynear,vel Y)*8)= [-100,-30])||(P2dist Y = 0);★発生までにたぶん着地しない
triggerall = (numtarget!=0)
triggerall = (target,stateno = [100,6000])
trigger1 = ctrl
trigger2 = (movehit >= 1)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)


[State -1, 火山噴火　2ゲージ技]
type = ChangeState
value = 3100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 3000-(1000*(fvar(1)/fvar(3)));ゲージレベル2
triggerall = (power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = (!(inguarddist)&&((5+var(10))*50 >= random))||(power >= 3000)
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && P2statetype = A
triggerall = (((P2bodydist X)+(enemynear,vel X)*(facing * enemynear,facing)*7)= [-50,50])
triggerall = (numtarget!=0)
triggerall = (target,stateno = [1000,6000])
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0) && 0;★オフ
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)


;------------------------------------------------------------------------------
;1ゲージ技へ
[State -1, 超すごいパンチ(物理)ゲージ版]
type = ChangeState
value = 2000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = (P2life <= 170 + (30*(fvar(1)/fvar(3))))||((((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1))));★ゲージ量による
triggerall = (P2life <= 170 + (30*(fvar(1)/fvar(3))))||((5+var(10))*50 >= random);★〆の方へ
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (P2movetype = H)
triggerall = !(inguarddist) && (P2dist X > 0)
triggerall = (((P2dist Y +(enemynear,vel Y)*14) = [-70,-40])&&(enemynear,vel Y > 0))||((P2dist Y = 0)&&(enemynear,vel Y = 0))
triggerall = P2bodydist X <= 120-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = ((120-(Facing *(enemynear,Facing))*(enemynear,vel X)*10) - P2bodydist X) * 9 >= random
trigger1 = ctrl && (numtarget(1000) = 0) && (gametime%30 = random%30);★ぶっぱ
trigger2 = (movecontact)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = (stateno = 1000)&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0) && 0;★オフ
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (P2life <= 170 + (30*(fvar(1)/fvar(3))));★大雑把にトドメっぽく
trigger25 = ctrl && (stateno != 100)
trigger26 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger27 = (stateno = 1800)&&(anim = 1870)

[State -1, 超すごいパンチ(特殊)ゲージ版]
type = ChangeState
value = 2050
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = (P2life <= 150)||(((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (P2life <= 150)||((var(10))*50 < random);★早めに
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = (((P2dist Y +(enemynear,vel Y)*20) = [-80,-30])&&(enemynear,vel Y > 0))||((P2dist Y = 0)&&(enemynear,vel Y = 0))
triggerall = (P2bodydist X-100) * 5 >= random
trigger1 = ctrl && (numtarget(1100) = 0) && (gametime%50 = random%50);★ぶっぱ
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = (stateno = 1100)&&(AnimElemTime(27) > 0) && 0;★オフ
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (P2life <= 150);★大雑把にトドメっぽく
trigger25 = ctrl && (stateno != 100)
trigger26 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger27 = (stateno = 1800)&&(anim = 1870)


[State -1, 超マッハ投げ(地上)ゲージ版]
type = ChangeState
value = 2100 + (InGuardDist)*750;★危なそうなら電光石火に 
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = (P2life <= 80 + (70*(fvar(1)/fvar(3))))||(((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (P2life <= 80 + (70*(fvar(1)/fvar(3))))||((var(10))*50 < random);★早めに
triggerall = (fvar(1)/fvar(3)*1000 < random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && ((P2movetype = H)||(P2bodydist X>= 120))
triggerall = !(inguarddist)
triggerall = (P2dist Y = 0)
triggerall = (P2bodydist X-50) * 5 >= random
trigger1 = ctrl  && (gametime%10 = random%10);★ぶっぱ
trigger2 = (movecontact)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0) && 0;★オフ
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (P2life <= 80 + (70*(fvar(1)/fvar(3))));★大雑把にトドメっぽく
trigger25 = ctrl && (stateno != 100)
trigger26 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger27 = (stateno = 1800)&&(anim = 1870)

[State -1, 超マッハ投げ(対空)ゲージ版]
type = ChangeState
value = 2150
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = (P2life <= 80 + (70*(fvar(1)/fvar(3))))||(((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (P2life <= 80 + (70*(fvar(1)/fvar(3))))||((5+var(10))*50 >= random);★〆の方へ
triggerall = (fvar(1)/fvar(3)*1000 < random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && ((P2movetype = H)||(P2bodydist X>= 120))
triggerall = !(inguarddist)
triggerall = ((P2dist Y +(enemynear,vel Y)*5) = [-200,-30])
triggerall = (P2bodydist X-50) * 5 >= random
trigger1 = ctrl && (gametime%10 = random%10);★ぶっぱ
trigger2 = (movecontact)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (P2life <= 80 + (70*(fvar(1)/fvar(3))));★大雑把にトドメっぽく
trigger25 = ctrl && (stateno != 100)
trigger26 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger27 = (stateno = 1800)&&(anim = 1870)


[State -1, 噴火]
type = ChangeState
value = 2700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = (P2life <= 80 + (160*(fvar(1)/fvar(3))))||(((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (P2life <= 80 + (160*(fvar(1)/fvar(3))))||((5+var(10))*100 >= random);★〆の方へ
triggerall = (fvar(1)/fvar(3)*1000 < random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = !(inguarddist)
triggerall = ((P2dist Y +(enemynear,vel Y)*10) <= -20)
triggerall = P2bodydist X <= 40-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = (((40-(Facing *(enemynear,Facing))*(enemynear,vel X)*10)+(enemynear,vel x)*10)-P2bodydist X) * 10 >= random
trigger1 = ctrl && (P2stateno = [5000,5999]) && (gametime%10 = random%10);★ぶっぱ
trigger2 = (movehit>=1)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(27) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0) && 0;★オフ
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (P2life <= 80 + (160*(fvar(1)/fvar(3))));★大雑把にトドメっぽく
trigger25 = ctrl && (stateno != 100)
trigger26 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger27 = (stateno = 1800)&&(anim = 1870)

[State -1, 超すごいキック]
type = ChangeState
value = 2300
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = ((5+var(10))*100 <= random);★早めに
triggerall = (fvar(1)/fvar(3)*1000 > random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A&&(P2dist X >= 0)
triggerall = !(inguarddist)
triggerall = ((P2dist Y +(enemynear,vel Y)*10) = [-120,-20])
triggerall = P2bodydist X >= 20-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = (P2bodydist X <= 70-(Facing *(enemynear,Facing))*(enemynear,vel X)*10)||(frontEdgeBodyDist <= 80)
triggerall = (P2stateno = [5000,5999]) || (P2statetype = A)
trigger1 = ctrl && (gametime%10 = random%10);★ぶっぱ
trigger2 = (movehit >= 1)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(27) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)

[State -1, 超すごい蹴り上げ]
type = ChangeState
value = 2400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = ((5+var(10))*100 <= random);★早めに
triggerall = (fvar(1)/fvar(3)*500> random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = (movehit >= 1)||(P2statetype = A)
triggerall = (P2dist Y = [-30,-5])||((P2movetype = A)&&(P2dist Y = [-120,-5]))
triggerall = ((60-P2bodydist X)*15 >= random)&&(P2dist X >= 10)
trigger1 = ctrl && (gametime%10 = 0);★ぶっぱ
trigger1 = (P2stateno = [5000,5999]) || (P2statetype = A)
trigger2 = (movehit >= 1)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(27) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)


[State -1, マッハ壁バン]
type = ChangeState
value = 2600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 2000;1ゲージだけどゲージレベル2以上ある時のみ
triggerall = ((power - 1800) > random)&&(power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = ((var(10))*50 < random);★早めに
triggerall = (fvar(1)/fvar(3)*1000 > random);★気合ゲージ気にする
triggerall = (fvar(1) >= fvar(3)*0.6);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (P2movetype = H)||((enemynear,ctrl = 0)&&(p2movetype = A))
triggerall = statetype != A && (numtarget(2600) = 0)
triggerall = (((P2dist Y +(enemynear,vel Y)*5)=[-70,-30])&&(P2movetype=H))||(P2statetype != A)
triggerall = (P2bodydist X) * 5 >= random
trigger1 = ctrl  && (gametime%10 = random%10);★ぶっぱ
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(27) > 0) && 0;★オフ
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)


;------------------------------------------------------------------------------
;ある程度確定			/
;-------------------------------
[State -1, 根性注入]
type = ChangeState
value = 2250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000;ゲージレベル１
triggerall = var(40) > 0;★根性カウント消費
triggerall = gametime%10 >= var(40)
triggerall = var(40)*100 < random
triggerall = statetype != A
triggerall = (fvar(0) <= (fvar(3)/3))
triggerall = !((P2stateno = [1000,4999])&&(P2movetype = H))
triggerall = !(inguarddist)
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)


[State -1, 気合注入]
type = ChangeState
value = 2200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = var(40) > 0;★根性カウント消費
triggerall = gametime%10 >= var(40)
triggerall = var(40)*100 < random
triggerall = statetype != A
triggerall = (fvar(1) <= -(fvar(3)/3))
triggerall = !((P2stateno = [1000,4999])&&(P2movetype = H))
triggerall = !(inguarddist)
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)

[State -1, すごいキック・奇]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (statetype != A)
triggerall = gametime%10 = 5 
triggerall = ((120 - abs(P2dist X))*100>random)||(P2movetype = A)
trigger1 = stateno = [200,450]
trigger1 = (prevstateno = stateno)&&(time >= 20)
trigger1 = (stateno%100 = 0)||(stateno%100 = 30)
trigger1 = (movecontact = 0);★弱攻撃刻んだけど２発目空振った時
trigger2 = ((MoveReversed > 1)||(movecontact > 1))&&(P2movetype != H);★当てたけど無効化された時
trigger2 = (stateno != 1450)&&(stateno != 1455)&&(stateno != 1030)&&(stateno != 1130)
trigger3 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger3 = (fvar(1) > 25+fvar(3)*0.1)

[State -1, 打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(P2movetype != H)
triggerall = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (statetype != L)&&(P2dist Y = [-70,0])
triggerall = gametime%10 = 0 
triggerall = ((120 - abs(P2dist X))*100>random)||(P2movetype = A)
trigger1 = stateno = [200,650]
trigger1 = (prevstateno = stateno)&&(time >= 20)
trigger1 = (stateno%100 = 0)||(stateno%100 = 30)
trigger1 = (movecontact = 0);★弱攻撃刻んだけど２発目空振った時
trigger2 = ((MoveReversed = [2,5])||(movecontact = [2,5]))&&(P2movetype != H);★当てたけど無効化された時
trigger2 = (stateno != 1450)&&(stateno != 1455)&&(stateno != 1030)&&(stateno != 1130)
trigger2 = (stateno != 1400)&&(stateno != 3500)&&(stateno != 3600)
;------------------------------------------------------------------------------
;特定の技後挙動			/
;-------------------------------

;烈の瞬成功後
;-------------------------------
[State -1, すごパ・物理]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X <= 150
trigger1 = (numtarget(2500) != 0)
trigger1 = (target(2500),vel Y < 0)
trigger1 = ctrl = 1

[State -1, すごパ・特殊]
type = ChangeState
value = 1100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) <= (fvar(3)/2)) 
trigger1 = (numtarget(2500) != 0)
trigger1 = (target(2500),vel Y < 0)
trigger1 = ctrl = 1

[State -1, 追撃]
type = ChangeState
value = 100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > (fvar(3)/3)) 
trigger1 = numtarget(2500) = 1
trigger1 = P2bodydist X < 150
trigger1 = P2dist X >= 50
trigger1 = ctrl = 1 
trigger1 = stateno != 100

[State -1, 離脱]
type = ChangeState
value = 105
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) < (fvar(3)/3)) 
trigger1 = numtarget(2500) = 1
Trigger1 = backEdgeBodyDist >= 80
trigger1 = P2bodydist X < 150
trigger1 = ctrl = 1 
trigger1 = stateno != 100

[State -1, 挑発]
type = ChangeState
value = 195+(var(40) >= 10)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (var(40)*100 < random)||(var(40) >= 10)
triggerall = (fvar(1) < (fvar(3)/3)) 
trigger1 = numtarget(2500) = 1
Trigger1 = backEdgeBodyDist < 80
trigger1 = P2bodydist X < 150
trigger1 = ctrl = 1 
trigger1 = stateno != 100

;すごパガークラ後
;-------------------------------
[State -1, すごパガークラ後]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = (stateno = 2000)&&(moveguarded >= 1)
trigger1 = numtarget(2000)!=0
trigger1 = target(2000),stateno = [5000,5019]

[State -1, すごパガークラ後]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = P2bodydist X <= 60
trigger1 = (stateno = 2000)&&(moveguarded >= 1)
trigger1 = numtarget(2000)!=0
trigger1 = target(2000),stateno = [5000,5019]

[State -1, すごパガークラ後]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = P2bodydist X <= 75
trigger1 = (stateno = 2000)&&(moveguarded >= 1)
trigger1 = numtarget(2000)!=0
trigger1 = target(2000),stateno = [5000,5019]

[State -1, すごパガークラ後]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = P2bodydist X <= 90
trigger1 = (stateno = 2000)&&(moveguarded >= 1)
trigger1 = numtarget(2000)!=0
trigger1 = target(2000),stateno = [5000,5019]
;・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・
[State -1, すごパガークラ後];★ゲージあり
type = ChangeState
value = 2000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000;ゲージレベル1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = (stateno = 1000)&&(moveguarded >= 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno = [5000,5019]

[State -1, すごパガークラ後];★ゲージ無し
type = ChangeState
value = 1450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = (stateno = 1000)&&(moveguarded >= 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno = [5000,5019] 

[State -1, すごパガークラ後]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = P2bodydist X <= 60
trigger1 = (stateno = 1000)&&(moveguarded >= 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno = [5000,5019]

[State -1, すごパガークラ後]
type = ChangeState
value = 220
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = P2bodydist X <= 75
trigger1 = (stateno = 1000)&&(moveguarded >= 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno = [5000,5019]

[State -1, すごパガークラ後]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = P2bodydist X <= 90
trigger1 = (stateno = 1000)&&(moveguarded >= 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno = [5000,5019]

[State -1, すごパガークラ出来なかった時];★ゲージあり
type = ChangeState
value = 2100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000;ゲージレベル1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = (stateno = 1000)&&(moveguarded > 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno != [5000,5019]

[State -1, すごパガークラ出来なかった時];★ゲージ無し
type = ChangeState
value = 1500-(random >= 500)*45
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = (stateno = 1000)&&(moveguarded > 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno != [5000,5019]

[State -1, すごパガークラ出来なかった時];★ゲージ無し
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = (stateno = 1000)&&(moveguarded > 1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),stateno != [5000,5019]

;マッハ投げ後
;-------------------------------
[State -1, マッハ投げフォロー];★マッハ投げ掴み損ねた時なんとかする
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = numtarget = 0
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  && (numtarget = 0)
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = P2statetype != A
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = (stateno = 1515)&&(AnimElemTime(6) > 0)
trigger2 = (stateno = 1535)&&(AnimElemTime(6) > 0)
trigger3 = (stateno = 2610)&&(AnimElemTime(9) > 0)
trigger4 = (stateno = 3350)&&(AnimElemTime(11) > 0)


[State -1, マッハ投げフォロー];★マッハ投げ掴み損ねた時なんとかする
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = numtarget = 0
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A  && (numtarget = 0)
triggerall = (P2dist Y = 0)&&(enemynear,vel Y = 0);★相手が地上にいる
triggerall = abs(P2bodydist X) <= 100
triggerall = (fvar(1) < (fvar(3)/2))
trigger1 = (stateno = 1515)&&(AnimElemTime(6) > 0)
trigger2 = (stateno = 1535)&&(AnimElemTime(6) > 0)
trigger3 = (stateno = 2610)&&(AnimElemTime(9) > 0)
trigger4 = (stateno = 3350)&&(AnimElemTime(11) > 0)

[State -1, マッハ投げ後];★とりあえずすごパ
type = ChangeState
value = 1100+(random >= 500)*(P2dist X >= 150)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = numtarget != 0
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && P2statetype = A
triggerall = !(inguarddist)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = (fvar(0) > (fvar(3)/2))
trigger1 = (stateno = 1525)&&(AnimElemTime(1) > 0)
trigger2 = (stateno = 2620)&&(AnimElemTime(9) > 0)

[State -1, マッハ投げ後];★挑発
type = ChangeState
value = 195+(var(40) >= 10)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = numtarget != 0
triggerall = (var(40)*100 < random)||(var(40) >= 10)
triggerall = ((fvar(1) > 0)&&(fvar(0) > 0))||(stateno = 305)
triggerall = statetype != A && P2statetype = A
triggerall = !(inguarddist)
trigger1 = (stateno = 1525)&&(AnimElemTime(1) > 0)
trigger2 = (stateno = 2620)&&(AnimElemTime(9) > 0)


;行って来い！後
;-------------------------------

[State -1, 大噴火]
type = ChangeState
value = 3100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 2000;ゲージレベル2
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X < 70
trigger1 = P2dist X >= 0

[State -1, たいらん]
type = ChangeState
value = 3000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 2000;ゲージレベル2
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X < 150
trigger1 = P2dist X >= 0

[State -1, 噴火]
type = ChangeState
value = 2700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000;ゲージレベル1
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X < 60
trigger1 = P2dist X >= 0

[State -1, すごパ]
type = ChangeState
value = 2000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000;ゲージレベル1
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X < 150
trigger1 = P2dist X >= 0

[State -1, すごパ物連]
type = ChangeState
value = 1030
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X < 100
trigger1 = P2dist X >= 0

[State -1, すごパ物]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X < 150
trigger1 = P2dist X >= 0

[State -1, すごパ特]
type = ChangeState
value = 1100+(random >= 500)*(P2dist X >= 150)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
trigger1 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger1 = P2bodydist X >= 150

[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > (fvar(3)/3)) 
trigger1 = numtarget(2600) = 1
trigger1 = P2bodydist X < 150
trigger1 = P2dist X >= 50
trigger1 = ctrl = 1 
trigger1 = stateno != 100

[State -1, 行って来いから挑発]
type = ChangeState
value = 195-(P2bodydist X < 50)*(ctrl)*90
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (var(40)*100 < random)
triggerall = 500*(life/lifemax)>=random
triggerall = (fvar(1) < (fvar(3)/3)) 
trigger1 = (numtarget(2600) = 1)
trigger1 = ctrl = 1 
trigger1 = stateno != 100
trigger2 = (stateno = 2620)&&(AnimElemTime(9) > 0)
trigger2 = (P2bodydist X >= 50)


;すごパ物理ヒット後
;-------------------------------
[State -1, コマ投げ]
type = ChangeState
value = 1350
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/3)) 
triggerall = P2dist X < 100
triggerall = (stateno = 1000)&&(movecontact>1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),pos Y < 0
trigger1 = frontEdgeBodyDist <= 60

[State -1, 蹴り上げ]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)&&(movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = P2dist X < 120
trigger1 = (stateno = 1000)&&(movecontact>1)
trigger1 = numtarget(1000)!=0
trigger1 = target(1000),pos Y < 0
trigger1 = frontEdgeBodyDist <= 80
trigger2 = (stateno = 2000)&&(movecontact>1)
trigger2 = numtarget(2000)!=0
trigger2 = target(2000),pos Y < 0
trigger2 = frontEdgeBodyDist <= 80
trigger3 = ((stateno = 3000)&&(AnimElemTime(75) > 0))&&(movecontact>1)
trigger3 = numtarget !=0
trigger3 = target,pos Y < 0
trigger3 = frontEdgeBodyDist <= 80

[State -1, すごパ物理]
type = ChangeState
value = 1000+(frontEdgeBodyDist <= 60)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = (stateno = 250)&&(movehit>1)
trigger1 = numtarget(250)!=0
trigger1 = target(250),vel Y < -8;★空中ヒット

[State -1, 前ジャンプ]
type = ChangeState
value = 42
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(pos Y = 0)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) <= (fvar(3)/3)) 
triggerall = (stateno = 250)&&(movehit>1)
trigger1 = numtarget(250)!=0
trigger1 = target(250),vel Y < -8;★空中ヒット

[State -1, 挑発]
type = ChangeState
value = 195+(var(40) >= 10)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (var(40)*100 < random)||(var(40) >= 10)
triggerall = (stateno = 1000)&&(movecontact>1)
triggerall = numtarget(1000)!=0
triggerall = target(1000),pos Y < 0
trigger1 = frontEdgeBodyDist > 150
trigger2 = frontEdgeBodyDist >= 100


;打ち払いヒット後
;-------------------------------
[State -1, 足払い]
type = ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) <= (fvar(3)/3)) 
triggerall = (stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)&&(movehit>=1)
triggerall = P2dist X < 100
trigger1 = numtarget(1400)!=0
trigger1 = target(1400),pos Y = 0 ;★地上

[State -1, 直突き]
type = ChangeState
value = 220
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/3)) 
triggerall = (stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)&&(movehit>=1)
triggerall = P2dist X < 100
trigger1 = numtarget(1400)!=0
trigger1 = target(1400),pos Y = 0 ;★地上

[State -1, 蹴り上げ]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)&&(movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) <= (fvar(3)/3)) 
triggerall = (stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)&&(movehit>=1)
trigger1 = numtarget(1400)!=0
trigger1 = target(1400),pos Y < 0 ;★空中

[State -1, 蹴り上げ]
type = ChangeState
value = 1200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/3)) 
triggerall = (stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)&&(movehit>=1)
trigger1 = numtarget(1400)!=0

[State -1, かかと落とし]
type = ChangeState
value = 1660
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/4)) 
triggerall = (stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)&&(movehit>=1)
trigger1 = numtarget(1400)!=0

;らいとにんぐヒット後
;-------------------------------
[State -1, 噴火]
type = ChangeState
value = 2700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - 1500) > random)&&(power%1000 < random/((var(40)>=10)*4+1));★ゲージ量による
triggerall = (fvar(1)/fvar(3)*1000 < random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = statetype != A
triggerall = !(inguarddist)
triggerall = numtarget(1640) != 0
;triggerall = NumProjID(1643) = 0;★破裂後
trigger1 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger2 = ctrl = 1

[State -1, 昇雷]
type = ChangeState
value = 1770
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = numtarget(1640) != 0
triggerall = NumProjID(1643) = 0;★破裂後
triggerall = (target(1640),statetype = A)
triggerall = (target(1640),pos Y < -80)
trigger1 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger2 = ctrl = 1

[State -1, 旋風]
type = ChangeState
value = 1800
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)
triggerall = (fvar(1)/fvar(3)*1000 > random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = statetype != A
triggerall = !(inguarddist)
triggerall = numtarget(1640) != 0
;triggerall = NumProjID(1643) = 0;★破裂後
trigger1 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger2 = ctrl = 1

[State -1, 挑発]
type = ChangeState
value = 195+(var(40) >= 10)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (var(40)*100 < random)||(var(40) >= 10)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/3))&&(var(40)*100*(life/lifemax) < random) 
triggerall = numtarget(1640) != 0
trigger1 = (stateno = 1640)&&(AnimElemTime(11) = 1)
trigger1 = P2dist y <= -100

[State -1, タメ]
type = ChangeState
value = 700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/3))||(var(40) >= 10)
triggerall = numtarget(1640) != 0
trigger1 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger1 = ctrl = 1


;カッターキックor直突きヒット後
;-------------------------------
[State -1, 行って来い！]
type = ChangeState
value = 2600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 2000;ゲージレベル1だけど2以上ある時
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
trigger1 = (stateno = 450)&&(movehit >= 1)
trigger1 = numtarget(450)!=0
trigger1 = target(450),pos Y = 0;★地上ヒット
trigger2 = (stateno = 220)&&(movehit >= 1)
trigger2 = numtarget(220)!=0
trigger2 = target(220),pos Y = 0;★地上ヒット

[State -1, 超すごパ物理]
type = ChangeState
value = 2000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X < 150
trigger1 = (stateno = 450)&&(movehit >= 1)
trigger1 = numtarget(450)!=0
trigger1 = target(450),pos Y = 0;★地上ヒット
trigger2 = (stateno = 220)&&(movehit >= 1)
trigger2 = numtarget(220)!=0
trigger2 = target(220),pos Y = 0;★地上ヒット

[State -1, マッハ投げ地上]
type = ChangeState
value = 2100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = power >= 1000
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = (stateno = 450)&&(movehit >= 1)
trigger1 = (stateno = 450)&&(movehit >= 1)
trigger1 = numtarget(450)!=0
trigger1 = target(450),pos Y = 0;★地上ヒット
trigger2 = (stateno = 220)&&(movehit >= 1)
trigger2 = numtarget(220)!=0
trigger2 = target(220),pos Y = 0;★地上ヒット

[State -1, かかと落とし]
type = ChangeState
value = 1270+(P2bodydist X >= 50)*180
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/4)) 
trigger1 = (stateno = 210)&&(movehit = 1)
trigger1 = numtarget(210)!=0
trigger1 = target(210),pos Y = 0;★地上ヒット
trigger2 = (stateno = 240)&&(movehit = 1)
trigger2 = numtarget(240)!=0
trigger2 = target(240),pos Y = 0;★地上ヒット

[State -1, 突き]
type = ChangeState
value = 210
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X <= 60
triggerall = P2bodydist X * 10 <= random
trigger1 = (stateno = 220)&&(movehit >= 1)
trigger1 = numtarget(220)!=0
trigger1 = target(220),pos Y = 0;★地上ヒット
trigger2 = (stateno = 450)&&(movehit >= 1)
trigger2 = numtarget(450)!=0
trigger2 = target(450),pos Y = 0;★地上ヒット


[State -1, 蹴り]
type = ChangeState
value = 240
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X <= 70
triggerall = P2bodydist X * 10 <= random
trigger1 = (stateno = 220)&&(movehit >= 1)
trigger1 = numtarget(220)!=0
trigger1 = target(220),pos Y = 0;★地上ヒット
trigger2 = (stateno = 450)&&(movehit >= 1)
trigger2 = numtarget(450)!=0
trigger2 = target(450),pos Y = 0;★地上ヒット

[State -1, カッター]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X <= 70
triggerall = (stateno = 220)&&(movehit >= 1)
trigger1 = numtarget(220)!=0
trigger1 = target(220),pos Y = 0;★地上ヒット

[State -1, 直突き]
type = ChangeState
value = 220
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X <= 70
triggerall = (stateno = 450)&&(movehit >= 1)
trigger1 = numtarget(450)!=0
trigger1 = target(450),pos Y = 0;★地上ヒット

[State -1, カッター]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = P2bodydist X <= 70
triggerall = (stateno = 220)&&(movehit >= 1)
trigger1 = numtarget(220)!=0
trigger1 = target(220),pos Y = 0;★地上ヒット

[State -1, 足払い]
type = ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)&&(movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = P2bodydist X <= 60
trigger1 = (stateno = 450)&&(movehit >= 1)
trigger1 = numtarget(450)!=0
trigger1 = target(450),pos Y = 0;★地上ヒット
trigger2 = (stateno = 220)&&(movehit >= 1)
trigger2 = numtarget(220)!=0
trigger2 = target(220),pos Y = 0;★地上ヒット



[State -1, すごキ・奇]
type = ChangeState
value = 1230+(random < (fvar(1)/fvar(3))*500)*((gametime%10 < 5)*220 + (gametime%10 >= 5)*225)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
trigger1 = (stateno = 450)&&(movehit >= 1)
trigger1 = numtarget(450)!=0
trigger1 = target(450),pos Y = 0;★地上ヒット
trigger1 = target(450),statetype = S
trigger2 = (stateno = 220)&&(movehit >= 1)
trigger2 = numtarget(220)!=0
trigger2 = target(220),pos Y = 0;★地上ヒット

;かかと落としヒット後
;-------------------------------
[State -1, すごぱ連]
type = ChangeState
value = 1030
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/4)) 
triggerall = P2bodydist X <= 50
trigger1 = (stateno = 1270)&&(movehit=1)
trigger1 = numtarget(1270)!=0
trigger1 = target(1270),stateno = [5000,5019]
trigger2 = (stateno = 1460)&&(movehit=1)
trigger2 = numtarget(1460)!=0
trigger2 = target(1460),stateno = [5000,5019]


[State -1, ぐらんど]
type = ChangeState
value = 1450+(random>=500)*5
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/4)) 
trigger1 = (stateno = 1270)&&(movehit>=1)
trigger1 = numtarget(1270)!=0
trigger1 = target(1270),stateno = [5000,5019]

[State -1, すごぱ特連]
type = ChangeState
value = 1130
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/4)) 
trigger1 = (stateno = 1270)&&(movecontact>=1)
trigger1 = numtarget(1270)!=0
trigger2 = (stateno = 1460)&&(movehit>=1)
trigger2 = numtarget(1460)!=0
trigger2 = target(1460),stateno = [5000,5019]

[State -1, コマ投げ]
type = ChangeState
value = 1350
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/4)) 
triggerall = P2dist X <= 100
trigger1 = (stateno = 1270)&&(movecontact>=1)
trigger1 = numtarget(1270)!=0
trigger2 = (stateno = 1460)&&(movehit>=1)
trigger2 = numtarget(1460)!=0
trigger2 = target(1460),stateno = [5000,5019]

;620-叩き落としヒット後
;-------------------------------
[State -1, 空中すごパ物理];★攻める
type = ChangeState
value = 1600+(frontEdgeBodyDist <= 100)*100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/5)) 
triggerall = (stateno = 620)&&(movehit>=1)
trigger1 = numtarget(620)!=0
trigger1 = target(620),stateno = [1729,1740]

[State -1, 空中蹴り上げ];★腰が引ける
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = ((fvar(3)/5) <= fvar(1) <= (fvar(3)/2)) 
triggerall = (stateno = 620)&&(movehit>=1)
trigger1 = numtarget(620)!=0
trigger1 = target(620),stateno = 1740
trigger1 = P2bodydist X <= 70


;空中かかと落とし
;-------------------------------
[State -1, 空中かかと落とし]
type = ChangeState
value = 1660
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = P2dist X  < 100
triggerall = (fvar(1) >= (fvar(3)/5)) 
trigger1 = (stateno = 1610)&&(AnimElemTime(1) > 0)
trigger1 = numtarget(1750)!=0 
trigger1 = P2dist Y > -50

trigger2 = (stateno = [600,650])&& (movehit>=1)
trigger2 = numtarget!=0 
trigger2 = target,statetype = S
trigger2 = vel x >= 0 && (gametime%10 >= 5)

trigger3 = (stateno = 1200)&&(AnimElemTime(14) > 0)
trigger3 = numtarget(1200)!=0 && (movehit>=1)
trigger3 = (fvar(1) < (fvar(3)/(random%2 + 2))) 

trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger4 = numtarget(1210)!=0 && (movehit>=1)
trigger4 = (frontEdgeBodyDist <= 80)

trigger5 = (stateno = 1610)&&(AnimElemTime(1) > 0)
trigger5 = numtarget(1600)!=0 


;当身キック後ろ回り後
;-------------------------------
[State -1, 蹴り上げ];★一瞬を刻んでる間に
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = P2statetype = A
trigger1 = enemynear,vel Y < 0;★上昇中

[State -1, 蹴り上げ];★一瞬を刻んでる間に
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = P2statetype = A 
trigger1 = (enemynear,HitDefAttr != SCA, AA,AT)

[State -1, ミドル];★一瞬を刻んでる間に
type = ChangeState
value = 240
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = P2statetype = S
trigger1 = (enemynear,HitDefAttr != SCA, AA,AT)

[State -1, カッターキック];★一瞬を刻んでる間に
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
trigger1 = P2statetype != A
trigger1 = (enemynear,HitDefAttr != SCA, AA,AT)

[State -1, 打ち払い];★一瞬を刻んでる間に
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) = fvar(3))&&(fvar(0) > 0)
triggerall = statetype != L
triggerall = gametime%10 >= 6
trigger1 = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)


[State -1, 超すごいパンチ(物理)ゲージ版];★一瞬を刻んでる間に
type = ChangeState
value = 2000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - (1800-(fvar(1)/fvar(3)*800)) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (fvar(1) >= fvar(3)/2)&&(fvar(1)/fvar(3)*1000 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = gametime%10 <= 3
trigger1 = P2statetype != L 

[State -1, 蹴り上げ];★一瞬を刻んでる間に
type = ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0)
triggerall = (fvar(1) > (fvar(3)/3))
trigger1 = P2statetype != A 


;1310-グーパンヒット度
;-------------------------------
[State -1, 超すごいパンチ(物理)ゲージ版];★攻める
type = ChangeState
value = 2000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - (1800-(fvar(1)/fvar(3)*800)) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (fvar(1) >= fvar(3)/2)&&(fvar(1)/fvar(3)*1000 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (P2movetype = H)
triggerall = !(inguarddist) && (P2dist X > 0)
triggerall = (stateno = 1310)&&(movehit>=1)
trigger1 = numtarget(1310)!=0
trigger1 = target(1310),stateno = [5000,5019]

[State -1, 超マッハ投げ(地上)ゲージ版];★守る
type = ChangeState
value = 2100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - (1800-(fvar(1)/fvar(3)*800)) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (fvar(1) < fvar(3)/2)&&(fvar(1)/fvar(3)*1000 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (P2movetype = H)
triggerall = !(inguarddist) && (P2dist X > 0)
triggerall = (stateno = 1310)&&(movehit>=1)
trigger1 = numtarget(1310)!=0
trigger1 = target(1310),stateno = [5000,5019]

[State -1, 超マッハ投げ(対空)ゲージ版];★守る
type = ChangeState
value = 2150
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = power >= 1000;ゲージレベル１
triggerall = ((power - (1800-(fvar(1)/fvar(3)*800)) > random)&&(power%1000 < random/((var(40)>=10)*4+1)));★ゲージ量による
triggerall = (fvar(1) < fvar(3)/2)&&(fvar(1)/fvar(3)*1000 >= random);★気合ゲージ気にする
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A && (P2movetype = H)
triggerall = !(inguarddist) && (P2dist X > 0)
triggerall = (stateno = 1310)&&(movehit>=1)
trigger1 = numtarget(1310)!=0
trigger1 = target(1310),stateno = [5020,5099]


[State -1, 蹴り上げ]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/5)) 
triggerall = (stateno = 1310)&&(movehit>=1)
trigger1 = FrontEdgeBodyDist <= 80
trigger1 = numtarget(1310)!=0
trigger1 = target(1310),stateno = [5000,5019]

[State -1, ばいぱー地]
type = ChangeState
value = 1450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/3)) 
triggerall = (stateno = 1310)&&(movehit>=1)
trigger1 = numtarget(1310)!=0

[State -1, ばいぱー空]
type = ChangeState
value = 1455
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/3)) 
triggerall = (stateno = 1310)&&(moveguarded>=1)
trigger1 = numtarget(1310)!=0

[State -1, すごキ・奇]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/4)) 
triggerall = (stateno = 1310)&&(movecontact>=1)
trigger1 = numtarget(1310)!=0

[State 1200, 追加攻撃ステートへ移行]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1230
triggerall = animelem = 6 
trigger1 = numtarget !=0
trigger1 = FrontEdgeBodyDist <= 100
trigger2 = prevstateno = 1310
trigger2 = numtarget(1310)!=0
trigger3 = prevstateno = 1320
trigger3 = enemynear,facing = facing
value = 1255

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (var(40) < 10)&&(fvar(1) >= (fvar(3)/2)) 
triggerall = (stateno = 1310)&&(movehit>=1)
trigger1 = numtarget(1310)!=0
trigger1 = target(1310),stateno = [5020,5099]
trigger1 = (P2dist Y < -50)

;1255キック時
;-------------------------------
[State -1, 降下キック]
type = ChangeState
value = 650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/4)) 
triggerall = (stateno = 1255)
triggerall = (anim = 650)&&(animelemtime(5) >= 0)
triggerall = movehit >= 1
trigger1 = numtarget(1255)!=0
;trigger1 = target(1255),statetype != L

[State -1, ライダーキック]
type = ChangeState
value = 1720
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/3)) 
triggerall = (stateno = 1255)
triggerall = (anim = 2505)&&(animelemtime(5) >= 0)
triggerall = movehit >= 1
trigger1 = numtarget(1255)!=0
trigger1 = target(1255),statetype != A
trigger1 = target(1255),statetype != L
trigger1 = target(1255),vel Y = 0

;ライダーキックがヒットした時
;-------------------------------
[State -1, 空中かかと]
type = ChangeState
value = 1660
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/(random%4 + 1))) 
triggerall = (stateno = 1720)&&(AnimElemTime(15) > 0)
trigger1 = numtarget(1720)!=0
trigger1 = movehit >= 1
trigger1 = gametime%2 = 0

[State -1, すごパ物理]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/(random%4 + 1))) 
triggerall = (stateno = 1260)&&(animelemtime(5) >= 0)
trigger1 = numtarget(1720)!=0
trigger1 = target(1720),statetype = A

trigger2 = numtarget(1660)!=0
trigger2 = target(1660),statetype = A
trigger2 = P2bodydist X >= 80 

[State -1, 挑発]
type = ChangeState
value = 195+(var(40) >= 10)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/2))||(var(40) >= 10)
triggerall = (stateno = 1260)&&(animelemtime(5) >= 0)
trigger1 = numtarget(1720)!=0
trigger1 = target(1720),statetype = A


;ばいぱー空がヒットした時
;-------------------------------
[State -1, ライトニング]
type = ChangeState
value = 1640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/2)) 
triggerall = P2bodydist X <= 50
triggerall = (stateno = 1610)&&(animelemtime(1) > 0)
trigger1 = numtarget(1470)!=0
trigger1 = target(1470),statetype = A

[State -1, ブチ落とし]
type = ChangeState
value = 620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/2)) 
triggerall = P2bodydist X > 50
triggerall = (stateno = 1610)&&(animelemtime(1) > 0)
trigger1 = numtarget(1470)!=0
trigger1 = target(1470),statetype = A

[State -1, ブチ落とし]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/2)) 
triggerall = P2bodydist X <= 50
triggerall = (stateno = 1260)&&(animelemtime(5) >= 0)
trigger1 = numtarget(1470)!=0
trigger1 = target(1470),statetype = A

[State -1, すごヒザ]
type = ChangeState
value = 1280
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/2)) 
triggerall = P2bodydist X > 50
triggerall = (stateno = 1260)&&(animelemtime(5) >= 0)
trigger1 = numtarget(1470)!=0
trigger1 = target(1470),statetype = A


;すごパ物理連打がヒットした時
;-------------------------------
[State -1, すごパ連打特殊]
type = ChangeState
value = 1130
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/5)) 
triggerall = (stateno = 1030)&&(animelemtime(107) >= 0)
trigger1 = numtarget(1030)!=0
trigger1 = target(1030),statetype = A


;ライダーキックをガードされた時
;-------------------------------
[State -1, 飛び込みパンチ]
type = ChangeState
value = 620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2)) 
triggerall = (stateno = 1720)&&(moveguarded>1)
trigger1 = numtarget(1720)!=0
trigger1 = target(1720),statetype != L

[State -1, 下降キック]
type = ChangeState
value = 650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/3)) 
triggerall = (stateno = 1720)&&(moveguarded>1)
trigger1 = numtarget(1720)!=0
trigger1 = target(1720),statetype != L

[State -1, 退避]
type = ChangeState
value = 1330+(backEdgeBodyDist<100)*10
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) < (fvar(3)/3)) 
triggerall = P2dist X < 100
triggerall = (stateno = 1720)&&(moveguarded>1)
trigger1 = numtarget(1720)!=0
trigger1 = target(1720),statetype != L


;背後マッハ移動後
;-------------------------------
[State -1, 打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) >= fvar(3)/2)&&(fvar(0) > 0)
triggerall = statetype != L
triggerall = ((stateno = 1320)&&(time >= 10))&&(AnimElemTime(10) > 0)
trigger1 = gametime%3 = 0

[State -1, マッハ移動後ろ]
type = ChangeState
value = 1330
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) >= fvar(3)/2)&&(fvar(0) > 0)
triggerall = statetype != L
triggerall = ((stateno = 1320)&&(time >= 10))&&(AnimElemTime(10) > 0)
trigger1 = gametime%3 = 1

[State -1, すごキ・奇]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) >= fvar(3)/2)&&(fvar(0) > 0)
triggerall = statetype != L
triggerall = ((stateno = 1320)&&(time >= 10))&&(AnimElemTime(10) > 0)
trigger1 = gametime%3 = 2

[State -1, アッパー]
type = ChangeState
value = 420
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) < fvar(3)/2)&&(fvar(0) > 0)
triggerall = statetype != L
triggerall = ((stateno = 1320)&&(time >= 10))&&(AnimElemTime(10) > 0)
trigger1 = gametime%2 = 0

[State -1, 退避]
type = ChangeState
value = 43
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) < fvar(3)/2)&&(fvar(0) > 0)
triggerall = statetype != L
triggerall = ((stateno = 1320)&&(time >= 10))
triggerall = (AnimElemTime(10) >= 0)&&(AnimElemTime(17) < 0)
trigger1 = gametime%2 = 1

;確定挑発
;-------------------------------
[State -1, 挑発]
type = ChangeState
value = 195+(var(40) >= 10)*505
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != L && !(inguarddist) 
;★コマ投げ成功時
trigger1 = (stateno = 1360)&&(AnimElemTime(13) > 0)
trigger1 = time > 13
;★すごガ成功時
trigger2 = (ctrl = 1)
trigger2 = numtarget(950) != 0 
trigger2 = target(950),statetype = A
;★らいとにんぐヒット時
trigger3 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger3 = numtarget(1640) != 0 
;★空中かかと落としヒット時
trigger4 = (stateno = 1260)&&(AnimElemTime(5) > 0)
trigger4 = numtarget(1660) != 0 
trigger4 = (fvar(1)/fvar(3))*2000 <= random 


;------------------------------------------------------------------------------
;汎用ランダム			/
;-------------------------------

[State -1, 降下キック]
type = ChangeState
value = 650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (statetype = A) && (P2statetype != L)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)
triggerall = (var(10))*100 <= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall =  P2statetype != A
triggerall = !(inguarddist)
trigger1 = (ctrl = 1)&&(vel Y >= -3)
trigger1 = P2dist X >= 0
trigger1 = (70-P2bodydist X) *15>= random
trigger1 = P2bodydist X < 20+(vel X * 7)
trigger1 = (enemynear,pos Y + (enemynear,vel Y)*7 <= -20)||(P2statetype != A)
trigger2 = (stateno = 1210)&&(movehit>=1)


[State -1, 足払い]
type = ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (statetype != A) && (P2statetype != L)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall =  P2statetype != A
triggerall = !(inguarddist) || ((stateno = 1256)&&(time >= 10))
triggerall = (80-P2bodydist X) *10 >= random
trigger1 = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0) && time >= 2
trigger2 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger3 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger4 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1) 
trigger5 =(stateno = 450)&&(movehit>=1) 


[State -1, すごパ・物理]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (var(10))*50 <= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A 
triggerall = (P2statetype = A)
triggerall = !(inguarddist)
triggerall = (fvar(1)/fvar(3)*500 > random)
triggerall = (fvar(0)/fvar(3)*500 > random)
trigger1 = (stateno = 250)
trigger1 = (movehit > 1)&&(numtarget(250)!=0) 
trigger1 = target(250),vel Y < -8;★空中の相手にヒットした

[State -1, 対空バーンナッコォ]
type = ChangeState
value = 1750
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (var(10))*50 <= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = (fvar(0) = fvar(3))
triggerall = statetype != A 
triggerall = (P2statetype = A)
triggerall = !(inguarddist)
triggerall = (fvar(1)/fvar(3)*500 > random)
triggerall = (fvar(0)/fvar(3)*500 > random)
trigger1 = (stateno = 250)
trigger1 = (movehit > 1)&&(numtarget(250)!=0) 
trigger1 = target(250),vel Y >= -8;★空中の相手にヒットしてないかもしれない
trigger2 = (stateno = 420)
trigger2 = (movehit > 1)&&(numtarget(420)!=0) 
trigger2 = target(420),vel Y < -5;★二発目以降



[State -1, 着地時何か刺す]
type = ChangeState
value = 400+(random >= 400)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) 
triggerall = ((target,gethitvar(hittime))-5)*100 >= random
triggerall = (50-(P2bodydist X))*20 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = statetype != A && (P2statetype != A)
triggerall = !(inguarddist)
triggerall = numtarget(1640) = 0
triggerall = numtarget(2800) = 0
triggerall = numtarget(2900) = 0
trigger1 = (stateno = 1260)&&(AnimElemTime(5) > 0)
trigger2 = (stateno = 52)&&(ctrl = 1)
trigger3 = (stateno = 106)&&(ctrl = 1)


[State -1, 着地時何か刺す]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (ctrl = 1)&&(P2statetype != L)
triggerall = (numtarget != 0) 
triggerall = ((target,gethitvar(hittime))-8)*100 >= random
triggerall = (100-(P2bodydist X))*100 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = statetype != A && (P2statetype != A)
triggerall = !(inguarddist)
triggerall = numtarget(1640) = 0
triggerall = numtarget(2800) = 0
triggerall = numtarget(2900) = 0
trigger1 = (stateno = 1260)&&(AnimElemTime(5) > 0)
trigger2 = (stateno = 52)&&(ctrl = 1)
trigger3 = (stateno = 106)&&(ctrl = 1)

[State -1, 着地時ぶっぱ]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) 
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2)) 
triggerall = (fvar(1)/fvar(3)*500 >= random);★気合ゲージ気にする
triggerall = statetype != A && (P2statetype = S)
triggerall = !(inguarddist)
triggerall = numtarget(1640) = 0
triggerall = numtarget(2800) = 0
triggerall = numtarget(2900) = 0
trigger1 = (stateno = 1260)&&(AnimElemTime(5) = 1)
trigger2 = (stateno = 52)&&(ctrl = 1)&&(time <= 1)
trigger3 = (stateno = 106)&&(ctrl = 1)&&(time <= 1)

[State -1, らいとにんぐ！]
type = ChangeState
value = 1640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)
triggerall = (P2statetype != L)
triggerall = (5+var(10))*50 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = !(inguarddist)
trigger1 = (stateno = 1750)&&(movehit >= 1)&&(hitcount >= 2)
trigger1 = (numtarget(1750) != 0)&&(P2movetype = H) && abs(P2dist X) <= 40
trigger2 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger2 = (numtarget!= 0)&&(P2movetype = H) && abs(P2dist X) <= 40 
trigger3 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger3 = abs(P2dist X) <= 40 
trigger4 = (stateno = 1400)&&(movehit >= 1)
trigger4 = abs(P2dist X) <= 40

[State -1, 打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (P2statetype != L)
triggerall = (var(10))*50 <= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = !(inguarddist) || ((stateno = 1256)&&(time >= 10))
triggerall = P2dist Y = [-80,0]
trigger1 = ((stateno = 1256)&&(time >= 10))&&(AnimElemTime(5) > 0) 
trigger2 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger3 = (stateno = 1750)&&(movehit >= 1)&&(hitcount >= 2)
trigger3 = (numtarget(1750) != 0)&&(P2movetype = H)

[State -1, 空中すごパ・特殊]
type = ChangeState
value = 1620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)
triggerall = (P2statetype != L)
triggerall = (5+var(10))*50 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = !(inguarddist)
trigger1 = (stateno = 1565)&&(AnimElemTime(1) > 0)&&(time<=3)
trigger2 = (FrontEdgeBodyDist<150)
trigger2 = (numtarget != 0)
trigger2 = (stateno = 1200)&&(movehit>=2)&&(vel Y = [-0.5,0.5])


[State -1, 空中すごパ・物理]
type = ChangeState
value = 1600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)
triggerall = (P2statetype != L)
triggerall = (5+var(10))*50 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = !(inguarddist)
trigger1 = (FrontEdgeBodyDist-180)*10 > random
trigger1 = (numtarget != 0)
trigger1 = (stateno = 1200)&&(movehit>=2)&&(target,vel Y <= 0)
trigger1 = enemynear,vel Y >=-2


[State -1, 空中すごキ・斜]
type = ChangeState
value = 1720
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)
triggerall = (P2statetype != L)
triggerall = (5+var(10))*50 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3))
triggerall = statetype = A
triggerall = !(inguarddist)
trigger1 = (stateno = 1210)&&(movehit >= 1)
trigger1 = ((P2dist Y)+(enemynear,vel Y)*15)= [-150,-50];★発生までにたぶん着地しない
trigger1 = ((P2dist X)-(enemynear,vel X)*15)= [0,150]
trigger1 = (((P2dist X)-(enemynear,vel X)*15)+((P2dist Y)+(enemynear,vel Y)*11)) = [20,50]


[State -1, 蹴り上げ];★申し訳程度の拾い
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))
triggerall = (movetype != H)&&(P2statetype != L)&&(P2dist Y < 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/6)) 
triggerall = statetype != A 
triggerall = (P2statetype = A)&&(stateno != 250)&&(stateno != 420)
triggerall = (enemynear,vel y >= -2)
triggerall = (P2dist Y +(enemynear,vel y)*14) = [-30,-120]
triggerall = ((P2bodydist X+(Facing*(enemynear,Facing))*(enemynear,vel X)*14)=[-50,50])||(frontEdgeBodyDist<=60)
trigger1 = ((ctrl=1)&&(numtarget!=0))
Trigger2 = (((stateno = [200,450])||(stateno = 850))&&(movehit = 1)) 
trigger3 = ((stateno = 1260)&&(time >= 10))&&(AnimElemTime(5) > 0)

[State -1, 蹴り上げ];★申し訳程度の拾い
type = ChangeState
value = 1200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))
triggerall = (movetype != H)&&(P2statetype != L)&&(P2dist Y < 0)
triggerall = (fvar(1) > (fvar(3)/4))
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = (P2statetype = A)&&(stateno != 250)&&(stateno != 420)
triggerall = (enemynear,vel y >= -2)
triggerall = (P2dist Y +(enemynear,vel y)*10) = [-30,-120]
triggerall = ((P2bodydist X+(Facing*(enemynear,Facing))*(enemynear,vel X)*10)=[-70,70])||(frontEdgeBodyDist<=70)
trigger1 = (ctrl=1)&&(numtarget!=0)
Trigger2 = (((stateno = [200,450])||(stateno = 850))&&(movehit = 1)) 
trigger3 = ((stateno = 1260)&&(time >= 10))&&(AnimElemTime(5) > 0)

[State -1, 旋風];★申し訳程度の拾い
type = ChangeState
value = 1800
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))
triggerall = (movetype != H)&&((P2stateno=[5110,5120])||(P2dist Y < 0))
triggerall = (fvar(1) > (fvar(3)/4))
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = (P2stateno=[5110,5120])||(P2statetype = A)
triggerall = (P2stateno=[5110,5120])||((P2dist Y +(enemynear,vel y)*21) = [-30,-600])
triggerall = ((P2bodydist X+(Facing*(enemynear,Facing))*(enemynear,vel X)*21)=[-40,40])||(frontEdgeBodyDist<=50)
trigger1 = (ctrl=1)&&((numtarget!=0)||(P2dist Y <= -150)||(enemynear,vel Y <= -5))
Trigger2 = (((stateno = [200,450])||(stateno = 850))&&(movehit = 1)) 
trigger3 = ((stateno = 1260)&&(time >= 10))&&(AnimElemTime(5) > 0)

;-----------------------------------
;使いすぎないようにセーフティ
[State -1, 待機]
type = ChangeState
value = 0+((P2bodydist X <= 10)&&(ctrl)&&(P2statetype!=A)&&(P2movetype!=H))*800
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) < (fvar(3)/2))
triggerall = (fvar(3)/fvar(1)*10) > random
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl&&(stateno!=100)

[State -1, 待機]
type = ChangeState
value = 50+((P2bodydist X <= 20)&&(ctrl)&&(P2statetype=A)&&(P2movetype!=H)&&(fvar(1) > 0)&&(fvar(0) > 0))*1600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) < (fvar(3)/2))
triggerall = (fvar(3)/fvar(1)*10) > random
triggerall = statetype = A
triggerall = !inguarddist
trigger1 = ctrl

;------------------------------------------------------------------------------
;大雑把すぎるコマンド技使用条件

[State -1, すごパ(物理)]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (fvar(0) > (fvar(3)*0.7))&&(P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
triggerall = statetype != A && (stateno != 1260)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = ((P2bodydist X-60)*(2+abs(enemynear,vel Y)) > random)||(frontEdgeBodyDist <= 120)
triggerall = (abs(P2dist X) > 80)&&(P2bodydist X <= 150)
triggerall = (enemynear,vel Y = 0)||((enemynear,vel Y >= -1)&&(P2dist Y <= -150))
trigger1 = ctrl 
trigger2 = ((stateno != 420)||((stateno = 420)&&(AnimElemTime(11) >= 0)))&&(movehit>=1)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3)) && 0;★オフ
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

[State 1000, アニメループ]
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1000
trigger1 = animelem = 16
value = 1000
elem = 6

[State ,1200];すごパ物理発動
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1000
triggerall = time > 27
triggerall = (AnimElemTime(17) < 0)
trigger1 = numtarget != 0 && (enemynear,vel Y > 0)
trigger1 = (P2dist Y +(enemynear,vel Y)*7) = [-80,-50]
trigger1 = (P2statetype != L)
trigger1 = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
trigger2 = P2statetype != A 
trigger2 = (P2dist Y = 0)&& (enemynear,vel Y = 0)
trigger2 = (P2statetype != L)
trigger2 = (P2bodydist X < 100)
trigger2 = (P2bodydist X >= -20)
trigger2 = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
trigger2 = (100-P2bodydist X)*10 > random
trigger3 = (fvar(1) <= 0)
trigger4 = ((numtarget(2000) != 0)||(numtarget(1000) != 0)) 
trigger4 = (P2movetype = H) && (P2dist Y = 0)
trigger5 = (P2dist Y +(enemynear,vel Y)*7) = [-80,-50]
trigger5 = numtarget(250) != 0 && (P2movetype = H)
trigger6 = P2statetype != A 
trigger6 = (fvar(0) <= fvar(3)/2);★根性ゲージ気にする
value = 1000
elem = 17

[State 1000, ステート変更];すごパキャンセル
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1000
Triggerall = (AnimElemTime(6) >= 0)
Triggerall = (AnimElemTime(17) < 0)
trigger1 = (P2bodydist X < 100)
trigger1 = (gametime%5 = 0)
trigger1 = P2movetype != H
trigger1 = (P2bodydist X)*10 < random
trigger1 = (time <= 65) ;★発動までまだ結構ある
trigger2 = P2bodydist X >= 130
trigger2 = abs(130-P2bodydist X)*10 > random
trigger3 = inguarddist
trigger3 = (time <= 65) ;★発動までまだ結構ある
trigger4 = P2dist X < 0
trigger5 = P2movetype != H 
trigger5 = (fvar(0) <= fvar(3)/3) ;★根性ゲージ気にする
trigger5 = (time <= 65)
trigger6 = (enemynear,statetype = L)
trigger6 = (time > 70) ;★発動までに起き上がりそうもない
value = 1050

[State -1, すごパ(特殊)]
type = ChangeState
value = 1100+(random >= 500)*(P2dist X >= 150)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (fvar(0) > (fvar(3)*0.7))&&(P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
triggerall = statetype != A  && (stateno != 1260)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = (P2bodydist X-80)*(3+(var(10)*3))  > random
triggerall = (P2dist X > 0)
triggerall = (enemynear,vel Y = 0)||((enemynear,vel Y <= -1)&&(P2dist Y <= -30))
trigger1 = ctrl 
trigger2 = ((stateno != 420)||((stateno = 420)&&(AnimElemTime(11) >= 0)))&&(movehit>=1)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0) && 0;★オフ
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State 1000, アニメループ]
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1100
trigger1 = animelem = 19
value = 1100
elem = 11

[State ,1200];すごパ特殊発動
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1100
triggerall = time > 30
triggerall = (AnimElemTime(20) < 0)
trigger1 = numtarget != 0 
trigger1 = target,statetype = A && (target,pos Y < -40)
trigger1 = (target,pos Y +(target,vel Y)*9) = [-60,-40]
trigger1 = (target,stateno != [5200,5210])&&(target,stateno != 5040)
trigger2 = P2statetype != A 
trigger2 = (P2dist Y = 0)&& (enemynear,vel Y = 0)
trigger2 = (P2statetype != L)
trigger2 = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
trigger3 = numtarget(1900) != 0 && (P2movetype = H)
trigger4 = (fvar(1) <= 0)
trigger5 = P2statetype != A 
trigger5 = (fvar(0) <= fvar(3)/3);★根性ゲージ気にする
value = 1100
elem = 20

[State 1000, ステート変更];すごパ特殊キャンセル
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1100
Triggerall = (AnimElemTime(6) >= 0)
Triggerall = (AnimElemTime(17) < 0)
trigger1 = (P2bodydist X < 100)
trigger1 = (gametime%5 = 0)
trigger1 = P2movetype != H
trigger1 = (P2bodydist X)*10 < random
trigger1 = (time <= 70) ;★発動までまだ結構ある
trigger2 = P2dist X < 0
trigger3 = P2movetype != H 
trigger3 = (fvar(0) <= fvar(3)/3)
trigger3 = (time <= 70) ;★根性ゲージ気にする
trigger4 = (enemynear,statetype = L)
trigger4 = (time > 70) ;★発動までに起き上がりそうもない
value = 1150

[State -1, マッハ投げ]
type = ChangeState
value = 1500
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (NumExplod(77) = 0)
triggerall = (gametime%10 = random%10)
triggerall = (fvar(1)/fvar(3)*200*(life/lifemax)) > random
triggerall = P2dist X >= 100
triggerall = (P2bodydist X-100)*6  > random
triggerall = statetype != A && ((P2statetype != A)||(P2movetype = H))
triggerall = (numtarget(1640) = 0)&&(numtarget(2800) = 0)&&(numtarget(2900) = 0);★高度が高すぎる
trigger1 = ctrl&&(enemynear,vel X <= 0)
trigger2 = (stateno = 1260)&&(AnimElemTime(5) > 0)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 0)||(movehit))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)

[State 800, マッハ投げ発動];対空
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1500
Trigger1 = AnimTime = 0
Trigger1 = P2statetype = A
Trigger1 = P2dist Y + (enemynear,vel Y)*20 <= -20
value = 1530

[State 800, マッハ投げ発動];対地
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1500
Trigger1 = AnimTime = 0
value = 1510

[State 1000, ステート変更];マッハ投げキャンセル
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1500
Triggerall = (AnimElemTime(10) >= 0)
trigger1 = (P2bodydist X < (100+(enemynear,vel X)*11))
trigger1 = (gametime%5 = 0)
trigger1 = P2movetype != H
trigger1 = (P2bodydist X)*10 < random
trigger2 = (inguarddist)
trigger3 = (enemynear,vel X) > (enemynear,Const(velocity.walk.fwd.x));★歩きより速い
trigger4 = (enemynear,vel Y != 0)&&(P2dist Y < 0) ;★ジャンプした
trigger4 = (100-time)*5 > random
trigger4 = P2movetype != H
trigger5 = (var(50)!=0)&&(var(52)*50 > random)
trigger5 = inguarddist
trigger6 = (enemynear,statetype = L) 
trigger6 = (time > 75) ;★発動までに起き上がりそうもない

value = 1580


[State -1, 叩き落とし]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = (70 - P2bodydist X)*(2+(var(10)*4))  > random
triggerall = (P2dist Y = [-70,40])&&(numtarget != 0)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (enemynear,gethitvar(hittime))*50 <= random
triggerall = var(10)%3 = 0
trigger1 = ctrl&&(vel X = 0);★移動中は不可
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State -1, すごい対空パンチ]
type = ChangeState
value = 1750
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(numtarget(2500) = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A  
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5);
triggerall = (P2statetype=S)||(((P2dist Y)+(enemynear,vel Y)*11)= [-150,-50]);★発生までにたぶん着地しない
triggerall = ((P2dist X)-(enemynear,vel X)*11)= [80,150]
triggerall = (((P2dist X)-(enemynear,vel X)*11)+((P2dist Y)+(enemynear,vel Y)*11)) = [-50,20] 
trigger1 = ctrl
trigger2 = (movecontact) && !((anim = 420)&&(animelemtime(9) < 0))
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

[State -1, すごいキック(攻)]
type = ChangeState
value = 1200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A 
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%10 = random%10)
triggerall = P2bodydist X >= 20-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = P2bodydist X <= 60-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = (P2dist Y = [(-120+(enemynear,vel Y)*10),(-20+(enemynear,vel Y)*10)])||(P2dist Y = 0)
triggerall = ((P2stateno = [5000,5999])||(P2stateno = [1000,2000]))&&(P2dist X >= 10)&&(enemynear,vel Y>=0)
trigger1 = ctrl
trigger2 = (movehit>=1) && !((anim = 420)&&(animelemtime(8) < 0))
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3)) && 0;★オフ
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact)) && 0;★オフ
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State 1200, 追加攻撃ステートへ移行]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&((fvar(1)/fvar(3)*1000)-500>random);★気合半分以上ある
trigger1 = stateno = 1200
trigger1 = (AnimElemTime(12) >= 0)&&(AnimElemTime(21) < 0)
trigger1 = movecontact
trigger1 = numtarget != 0 
trigger1 = target,gethitvar(hittime)*5 > random
value = 1210
ctrl = 0

[State -1, コマ投げ]
type = ChangeState
value = 1350
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A 
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (P2stateno != [5200,5210])&&(P2stateno != 5040)&&(P2stateno != 5120)
triggerall = (numtarget != 0) && (gametime%10 = random%10)
triggerall = (80 - P2dist X)*10  > random
triggerall = (P2dist Y = [(-100+(enemynear,vel Y)*18),(-50+(enemynear,vel Y)*18)])||(P2dist Y = 0)
triggerall = (var(10)%3 = 0)&&(var(10)!=0)
triggerall = P2dist X < 100
trigger1 = ctrl
trigger2 = (movehit >= 1) && !((anim = 420)&&(animelemtime(8) < 0))
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3)) && 0;★オフ
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact)) && 0;★オフ
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State -1, マッハで来た(正面)]
type = ChangeState
value = 1300+(InGuardDist)*20
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (NumExplod(77) = 0)&&(P2statetype != L)
triggerall = (gametime%10 = random%10)
triggerall = (fvar(1)/fvar(3)*200) > random
triggerall = P2dist X >= 100
triggerall = (P2dist X-100)*5  > random
trigger1 = ctrl = 1
trigger1 = enemynear,ctrl = 0
trigger1 = (P2movetype = H)&&(P2statetype != A)
trigger1 = stateno != [1300,1360]


[State 1300, 追加攻撃ステートへ移行]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (stateno = 1300)||(stateno = 1320)
triggerall = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
triggerall = P2bodydist X = [0,120]
trigger1 = prevstateno != 5120
value = 1310
ctrl = 0


[State -1, 空中すごパ(特殊)]
type = ChangeState
value = 1620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype = A && (pos Y < -30)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = P2bodydist X - 100 > random
triggerall = (P2dist Y = [10,150])&&(pos Y <= -30)&&(vel Y =[-0.5,0.5])
trigger1 = ctrl
trigger2 = (movehit >= 1)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0) && 0;★オフ
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State -1, 空中すごキ(弱)]
type = ChangeState
value = 1700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype = A  && (pos Y < -30) && (P2statetype = A)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = (100 - P2bodydist X)*10 > random
triggerall = P2bodydist X <= 60-(Facing *(enemynear,Facing))*(enemynear,vel X)*5
triggerall = P2dist X >= (Facing *(enemynear,Facing))*(enemynear,vel X)*5
triggerall = (P2dist Y <= 0)&&(P2dist X >= 0)
triggerall = (P2dist Y + abs(enemynear,vel y)*5) = [-40,0]
trigger1 = ctrl
trigger2 = (movecontact)
trigger2 = (stateno = [600,650])
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0) && 0;★オフ
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0) && 0;★オフ
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State -1, 空中すごキ(強)]
type = ChangeState
value = 1720
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype = A && (pos Y < -30)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = ((P2dist Y)+(enemynear,vel Y)*15)= [-150,-50];★発生までにたぶん着地しない
triggerall = ((P2dist X)-(enemynear,vel X)*15)= [0,150]
triggerall = (((P2dist Y)+(enemynear,vel Y)*11)-((P2dist X)+(Facing *(enemynear,Facing))*(enemynear,vel X)*15)) = [0,30]
triggerall = (150-P2bodydist X)*6 > random 
trigger1 = ctrl && (gametime%10 = random%10)
trigger2 = (movecontact)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0) && 0;★オフ
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State -1, ライトニング！(物理)]
type = ChangeState
value = 1640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = statetype = A  && (pos Y < -30) && (gametime%10 = random%10)
triggerall = (numtarget != 0) || (abs(P2dist X) <= 40) 
triggerall = ((40-abs(P2dist X))*20 > random)||(abs(P2dist X)<=20)
triggerall = P2dist Y = [-150,150]
triggerall = P2dist X = [-40,40]
trigger1 = vel Y >= -3
trigger1 = ctrl && (P2statetype = A)
trigger2 = (movecontact >= 1)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0) && 0;★オフ
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State -1, 空中すごパ(物理)]
type = ChangeState
value = 1600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype = A && (pos Y < -30)
triggerall = ((NumExplod(77) = 0)||(ctrl = 1))&&(movetype != H)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%10 = random%10)
triggerall = (120 - P2bodydist X)*8 > random
Triggerall = (FrontEdgeBodyDist-100)*10 > random
triggerall = P2dist Y = [-60,(-20+(P2statetype=S)*40)]
trigger1 = ctrl
trigger2 = (movehit >= 1)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0) && 0;★オフ
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = ctrl
trigger14 = (target,gethitvar(fall.recover)=0)||(target,gethitvar(hittime)>=15)
trigger15 = (stateno = 1470)&&(movecontact >= 1)
trigger16 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger17 = (stateno = 1280)&&(AnimElemTime(23) > 0)

[State 1100, ステート変更];すごパ(空中)解除
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = stateno = 1600
Triggerall = animelemtime(12) > 0
trigger1 = (fvar(1) < (fvar(3)*0.4))
value = 1610

[State -1, 空中かかと]
type = ChangeState
value = 1660
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype = A && P2statetype != L
triggerall = vel X >= 0
triggerall = (gametime%10 = random%10)
triggerall = (100 - P2dist X)* ceil(10-(vel X))  > random
triggerall = (P2dist Y = [-40,40])&&(pos Y < -30)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)


[State -1, 空中投げ]
type = ChangeState
value = 1650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype = A && P2statetype = A
triggerall = (numtarget = 0) && (gametime%10 = random%10)
triggerall = (40 - P2bodydist X)*20  > random
triggerall =  (P2dist Y = [-30,30])&&(pos Y < -30)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
;コマンド技回し/
;--------------
;------------------------------------------------------------------------------
[State -1, 空中すごパ(弱)]
type = ChangeState
value = 1600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X <= 150
Triggerall = (FrontEdgeBodyDist-100)*10 > random
triggerall = P2dist Y = [-60,(-20+(P2statetype=S)*40)]
triggerall = (P2stateno = [5000,5999])||(P2stateno = [1000,2000])
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L

triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = statetype = A && (pos Y < -30)
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0) && 0;★連続キャンセルしない用
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)



;------------------------------------------------------------------------------
[State -1, 空中すごパ(強)]
type = ChangeState
value = 1620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X >= 70
triggerall = (P2dist Y = [10,150])
triggerall = (P2stateno = [5000,5999])||(P2stateno = [1000,2000])
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L

triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = statetype = A && (pos Y < -30)&&(vel Y =[-0.5,0.5])
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0) && 0;★連続キャンセルしない用
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
[State -1, ライトニング！(物理)]
type = ChangeState
value = 1640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X <= 40
triggerall = P2dist Y = [-80,150]
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L

triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = statetype = A
trigger1 = vel Y >= -3
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
[State -1, 空中投げ]
type = ChangeState
value = 1650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget = 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X <= 40
triggerall = (P2dist Y = [-50,30])
triggerall = P2statetype = A

triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&&(fvar(1)/fvar(3)*1000>random)
triggerall = statetype = A && (pos Y < -30)
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
[State -1, 空中すごキ(弱)]
type = ChangeState
value = 1700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X <= 60-(Facing *(enemynear,Facing))*(enemynear,vel X)*5
triggerall = P2dist X >= (Facing *(enemynear,Facing))*(enemynear,vel X)*5
triggerall = (P2dist Y = [-20,40])&&(P2statetype = A)&&(enemynear,vel Y > -1)
triggerall = (P2stateno = [5000,5999])||(P2stateno = [1000,2000])
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L
triggerall = statetype = A && (pos Y < -30)
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650])
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0) && 0;★オフ
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0) && 0;★連続キャンセルしない用
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
[State -1, 空中すごキ(強)]
type = ChangeState
value = 1720
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = ((P2dist Y)+(enemynear,vel Y)*15)= [-150,-50];★発生までにたぶん着地しない
triggerall = ((P2dist X)-(enemynear,vel X)*15)= [0,150]
triggerall = (((P2dist Y)+(enemynear,vel Y)*11)-((P2dist X)+(Facing *(enemynear,Facing))*(enemynear,vel X)*15)) = [0,30]
triggerall = (P2stateno = [5000,5999])||(P2stateno = [1000,2000])
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A && (pos Y < -30)
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0) && (movecontact >= 5)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0) && 0;★連続キャンセルしない用
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (movecontact>=5)&&(stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
[State -1, すごい対空パンチ]
type = ChangeState
value = 1750
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(numtarget(2500) = 0)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = (P2statetype=S)||(((P2dist Y)+(enemynear,vel Y)*11)= [-150,-50]);★発生までにたぶん着地しない
triggerall = ((P2dist X)-(enemynear,vel X)*11)= [80,150]
triggerall = (((P2dist X)-(enemynear,vel X)*11)+((P2dist Y)+(enemynear,vel Y)*11)) = [-50,20] 
triggerall = (P2stateno = [5000,5999])||(P2stateno = [1000,2000])
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごパ(特殊)]
type = ChangeState
value = 1100+(random >= 500)*(P2dist X >= 150)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X >= 100
triggerall = P2dist Y = [-30,0]
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3)) && 0;★連続キャンセルしない用
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, すごパ(物理)]
type = ChangeState
value = 1000
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X <= 120
triggerall = P2dist Y = [-80,0]
triggerall = (P2stateno = [5000,5999])||(P2stateno = [1000,2000])
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3));★連続キャンセルしない用
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0) && 0
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, マッハ投げ]
type = ChangeState
value = 1500
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X >= 150
triggerall = enemynear,ctrl = 0
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L
triggerall = (numtarget(1640) = 0)&&(numtarget(2800) = 0)&&(numtarget(2900) = 0);★高度が高すぎる
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, すごいキック(攻)]
type = ChangeState
value = 1200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = numtarget != 0 && (fvar(1)/fvar(3)*1000) > random
triggerall = target,gethitvar(hitcount)*50 < random
triggerall = (200 >= random) && (gametime%10 = random%10) && (P2dist X > 0)
triggerall = P2bodydist X >= 20-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = P2bodydist X <= 60-(Facing *(enemynear,Facing))*(enemynear,vel X)*10
triggerall = (P2dist Y = [(-120+(enemynear,vel Y)*10),(-20+(enemynear,vel Y)*10)])||(P2dist Y = 0)
triggerall = ((P2stateno = [5000,5999])||(P2stateno = [1000,2000]))&&(P2dist X >= 20)
triggerall = (NumExplod(77) = 0 || ctrl) && P2statetype != L&&(enemynear,vel Y>=0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, すごいキック(守)]
type = ChangeState
value = 1250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (inguarddist)
triggerall = numtarget = 0 && (fvar(1)/fvar(3)*100) > random
triggerall = ((100-(enemynear,ctrl=1)*80) >= random) && (P2dist X > 0)
triggerall = P2bodydist X <= 100 && (NumExplod(77) = 0)
triggerall = P2bodydist X > (enemynear,vel X)*36 
triggerall = P2dist Y = [-100,0]
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) || (var(40)>0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact);||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||((stateno = 3000)&&(AnimElemTime(72) > 0)))&&((AnimElemTime(24) > 5)||(movecontact>=3))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = (((stateno = 1256)&&(time >= 10))||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0) && 0;★連続キャンセルしない用
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(38) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(44) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(79) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(106) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State ,1200]
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = stateno = 1255
trigger1 = anim = 2506
trigger1 = P2bodydist X <= 70
Trigger1 = random <= (1000-(200*time))
trigger1 = P2statetype != C 
value = 2505
elem = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1 

[State ,1200]
type = ChangeAnim
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = stateno = 1255
trigger1 = anim = 2506
trigger1 = P2bodydist X <= 50
Trigger1 = random <= (1000-(200*time))
trigger1 = P2statetype != C 
value = 650
elem = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1 

;---------------------[追加攻撃へ移行]
[State 1300, 追加攻撃ステートへ移行]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
trigger1 = (stateno = 1300)||(stateno = 1330)
trigger1 = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
trigger1 = statetype = S
trigger1 = numtarget != 0 && P2bodydist X <= 120
value = 1310
ctrl = 0

;------------------------------------------------------------------------------
;唐突に何か/
;----------
[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl &&  P2dist X > 0
triggerall = (stateno = 0)||(stateno = 20) || (stateno = 52)
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, 屈み弱P]
type = ChangeState
value = 400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && ((60-P2bodydist X)*10 > random)
triggerall = (P2statetype != A)&&(P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (var(3)/4))
triggerall = statetype != A && (P2statetype != A)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random)


[State -1, アッパー]
type = ChangeState
value = 420
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && ((60-P2bodydist X)*10 > random)
triggerall = (P2statetype = A)&&(P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (var(3)/4))
triggerall = statetype != A 
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random)


[State -1, C中パンチ]
type = ChangeState
value = 410
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X < 100) && ((P2bodydist X-60)*25 <= random)
triggerall = (P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (var(3)/4))
triggerall = statetype != A && (P2statetype != A)
triggerall = !(inguarddist)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000*(life/lifemax) > random)
trigger1 = (fvar(0)/fvar(3)*1000*(life/lifemax) > random)


[State -1, 立ち直突き]
type = ChangeState
value = 220
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X < 120) && ((P2bodydist X-80)*25 <= random)
triggerall = (P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (var(3)/4))
triggerall = statetype != A && (P2statetype != A)
triggerall = !(inguarddist)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000*(life/lifemax) > random)
trigger1 = (fvar(0)/fvar(3)*1000*(life/lifemax) > random)

[State -1, 立ち直突き]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X < 140) && ((P2bodydist X-100)*25 <= random)
triggerall = (P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (var(3)/4))
triggerall = statetype != A && (P2statetype != A)
triggerall = !(inguarddist)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000*(life/lifemax) > random)
trigger1 = (fvar(0)/fvar(3)*1000*(life/lifemax) > random) 

[State -1, 牽制すごパ]
type = ChangeState
value = 1100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X-150 > random)
triggerall = (P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/4)) || (var(40)>0)
triggerall = statetype != A 
triggerall = (enemynear,vel X <= enemynear,Const(velocity.walk.fwd.x))
triggerall = (stateno = 0)||(stateno = [10,11])||(stateno = 20) || (stateno = 52)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random) 

[State -1, 牽制ばいぱー空]
type = ChangeState
value = 1455-(random <= 200)*5;★たまに地
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != L)&&(numtarget = 0)
triggerall = ctrl && (P2statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/(2+random%4))) || (var(40)>0)
triggerall = statetype != A && (P2bodydist X-50 > random)
triggerall = (var(50) <= 0)
triggerall = (stateno = 0)||(stateno = [10,11])||(stateno = 20) || (stateno = 52)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random) 

[State -1, 牽制すごキ]
type = ChangeState
value = 1230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X-100 > random)
triggerall = (P2statetype != L)&&(numtarget = 0)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/4)) || (var(40)>0)
triggerall = statetype != A 
triggerall = gametime%3 = 0 
triggerall = (enemynear,vel X = [-1,1])
triggerall = (enemynear,vel Y = [-2,0])
triggerall = (stateno = 0)||(stateno = [10,11])||(stateno = 20) || (stateno = 52)
trigger1 = gametime%10 > 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random)

[State -1, 牽制震脚]
type = ChangeState
value = 1900
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X-150 > random)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/4)) || (var(40)>0)
triggerall = statetype != A 
triggerall = (var(50) <= 0)
triggerall = (stateno = 0)||(stateno = [10,11])||(stateno = 20) || (stateno = 52)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random) 


[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = ctrl && (P2bodydist X > random)
triggerall = (P2statetype != L)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = enemynear,ctrl = 0 && (enemynear,vel X <= 0)||(P2movetype=H)
triggerall = (stateno = 0)||(stateno = [10,11])||(stateno = 20) || (stateno = 52)
trigger1 = gametime%10 <= 4 
trigger1 = (fvar(1)/fvar(3)*1000 > random)
trigger1 = (fvar(0)/fvar(3)*1000 > random) 


[State -1, 飛び込み]
type = ChangeState
value = 42-(FrontEdgeBodyDist < 50)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2bodydist X > random)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= fvar(3)/3)
triggerall = (P2statetype != L)
triggerall = gametime%10 <= 4 
triggerall = (fvar(1)/fvar(3)*1000 > random)
triggerall = (fvar(0)/fvar(3)*1000 > random) 
triggerall = P2bodydist X <= 200
triggerall = P2bodydist X >= 50
triggerall = abs(P2bodydist X-125)*13 < random
triggerall = !InGuardDist
triggerall = (pos Y = 0)&&(statetype != A)
trigger1 = ctrl = 1
trigger1 = vel X >= 0;★後ろ下がり中のみ不可
trigger1 = gametime%10 = random%10
trigger2 = (stateno = [200,250])
trigger2 = Movecontact >= 1
trigger2 = var(11) != 0
trigger2 = (P2statetype != A)
trigger2 = (fvar(1)/fvar(3)*(enemynear,gethitvar(hittime)*30) > random)

[State -1, 昇雷]
type = ChangeState
value = 1770
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype = A)&&(P2movetype = H)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > fvar(3)/4);★気合ゲージ気にする
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = (statetype != A)
triggerall = (numtarget(1800) = 0);★なんか見栄え悪いので
triggerall = (fvar(1)/fvar(3)*1000 > random)
triggerall = (fvar(0)/fvar(3)*1000 > random)
triggerall = ((30-abs(P2dist X))*30>random)
triggerall = (P2dist Y < -80)
trigger1 = stateno != 100
trigger1 = (ctrl = 1)


;------------------------------------------------------------------------------
;通常技回し/
;----------

;-------------------
;立ち

[State -1, 地上弱パンチ]
type = ChangeState
value = 200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = P2statetype != C
triggerall = stateno != 200
triggerall = var(11) <=1
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 0
trigger1 = stateno != 420
trigger1 = P2bodydist X <= 30-(Facing *(enemynear,Facing))*(enemynear,vel X)*5*(P2statetype=A)
trigger1 = P2dist X >= 10
trigger1 = (P2dist Y + (enemynear,vel Y)*5 = [-70,-20])||(P2statetype != A)


[State -1, 地上弱キック]
type = ChangeState
value = 230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 230
triggerall = var(11) <=1
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 30
trigger1 = stateno != 420
trigger1 = P2bodydist X <= 40-(Facing *(enemynear,Facing))*(enemynear,vel X)*7*(P2statetype=A)
trigger1 = P2dist X >= 10
trigger1 = (P2dist Y + (enemynear,vel Y)*7 = [-50,-20])||(P2statetype != A)


[State -1, 地上強パンチ]
type = ChangeState
value = 210
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = S
triggerall = stateno != 210
triggerall = var(11) <=2
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 10
trigger1 = stateno != 420
trigger1 = P2bodydist X <= 50-(Facing *(enemynear,Facing))*(enemynear,vel X)*10*(P2statetype=A)
trigger1 = P2dist X >= 10
trigger1 = (P2dist Y + (enemynear,vel Y)*10 = [-60,-20])||(P2statetype != A)


[State -1, 地上強キック]
type = ChangeState
value = 240
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = P2statetype != C
triggerall = stateno != 240
triggerall = var(11) <=2
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 40
trigger1 = stateno != 420
trigger1 = P2bodydist X <= 60-(Facing *(enemynear,Facing))*(enemynear,vel X)*11*(P2statetype=A)
trigger1 = P2dist X >= 10
trigger1 = (P2dist Y + (enemynear,vel Y)*11 = [-70,-20])||(P2statetype != A)


[State -1, 地上極パンチ]
type = ChangeState
value = 220
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = S
triggerall = stateno != 220
triggerall = var(11) <=3
triggerall = (stateno%100) < 20
triggerall = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = stateno != 420
trigger1 = P2bodydist X <= 70-(Facing *(enemynear,Facing))*(enemynear,vel X)*12*(P2statetype=A)
trigger1 = P2dist X >= 10
trigger1 = ((P2dist Y + (enemynear,vel Y)*12 = [-30,-10])&&(enemynear,vel Y>0))||(P2statetype != A)


[State -1, 地上極キック]
type = ChangeState
value = 250
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(movetype != H)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact = 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != L
triggerall = stateno != 250
triggerall = var(11) <=3
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 50
trigger1 = stateno != 420
trigger1 = P2bodydist X < (50-(Facing *(enemynear,Facing))*(enemynear,vel X)*14)
trigger1 = P2dist X >= 10
trigger1 = (P2dist Y + (enemynear,vel Y)*14 = [-120,-30])

;-------------------
;屈み

[State -1, 地上弱パンチ]
type = ChangeState
value = 400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 400
triggerall = var(11) <=1
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 0
trigger1 = stateno != 420
trigger1 = numtarget != 0
trigger1 = target,statetype != A
trigger1 = P2bodydist X = [0,40]



[State -1, 地上弱キック]
type = ChangeState
value = 430
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 430
triggerall = var(11) <=1
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 30
trigger1 = stateno != 420
trigger1 = numtarget != 0
trigger1 = target,statetype != A
trigger1 = P2bodydist X = [0,40]



[State -1, 地上強パンチ]
type = ChangeState
value = 410
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 410
triggerall = var(11) <=2
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 10
trigger1 = stateno != 420
trigger1 = numtarget != 0
trigger1 = target,statetype != A
trigger1 = P2bodydist X = [0,70]




[State -1, 地上強キック]
type = ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(movetype != H)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 440
triggerall = var(11) <=2
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 40
trigger1 = stateno != 420
trigger1 = numtarget != 0
trigger1 = target,statetype != A
trigger1 = P2bodydist X = [0,60]


[State -1, 地上極パンチ]
type = ChangeState
value = 420
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 420
triggerall = var(11) <=3
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 20
trigger1 = stateno != 420
trigger1 = numtarget != 0
trigger1 = target,statetype != A
trigger1 = P2bodydist X = [0,25]


[State -1, 地上極キック]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype != A
triggerall = stateno != 450
triggerall = var(11) <=3
trigger1 = (stateno = [200,450])||(stateno = 850)
trigger1 = random<=100
trigger1 = prevstateno%100 != 50
trigger1 = stateno != 420
trigger1 = numtarget != 0
trigger1 = target,statetype != A
trigger1 = P2bodydist X = [0,90]



;-------------------
;空中

[State -1, 空中弱パンチ]
type = ChangeState
value = 600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1 
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A && P2statetype = A
triggerall = stateno != 600
triggerall = numtarget(620)=0
triggerall = var(11) <=1
trigger1 = stateno = [600,650]
trigger1 = random<=100
trigger1 = prevstateno%100 != 0
trigger1 = P2dist X >= 0
trigger1 = P2bodydist X < 45+(vel X * 5)
trigger1 = (P2dist Y + (enemynear,vel Y)*5 = [-60,0])||(P2statetype != A)



[State -1, 空中弱キック]
type = ChangeState
value = 630
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = stateno != 630
triggerall = numtarget(620)=0
triggerall = var(11) <=1
trigger1 = stateno = [600,650]
trigger1 = random<=100
trigger1 = prevstateno%100 != 30
trigger1 = P2dist X >= 0
trigger1 = P2bodydist X < 65+(vel X * 6)
trigger1 = (P2dist Y + (enemynear,vel Y)*6 = [-20,40])||(P2statetype != A)


[State -1, 空中強パンチ]
type = ChangeState
value = 610
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A && (P2statetype = A)
triggerall = stateno != 610
triggerall = numtarget(620)=0
triggerall = var(11) <=2
trigger1 = stateno = [600,650]
trigger1 = random<=100
trigger1 = prevstateno%100 != 10
trigger1 = P2dist X >= 0
trigger1 = P2bodydist X < 70+(vel X * 13)
trigger1 = (P2dist Y + (enemynear,vel Y)*13 = [-50,10])||(P2statetype != A)



[State -1, 空中強キック]
type = ChangeState
value = 640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = stateno != 640
triggerall = numtarget(620)=0
triggerall = var(11) <=2
trigger1 = stateno = [600,650]
trigger1 = random<=100
trigger1 = prevstateno%100 != 40
trigger1 = P2dist X >= 0
trigger1 = P2bodydist X < 70+(vel X * 9)
trigger1 = (P2dist Y + (enemynear,vel Y)*11 = [-70,20])||(P2statetype != A)



[State -1, 空中極パンチ]
type = ChangeState
value = 620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = stateno != 620
triggerall = numtarget(620)=0
triggerall = var(11) <=3
trigger1 = stateno = [600,650]
trigger1 = random<=100
trigger1 = prevstateno%100 != 20
trigger1 = P2dist X >= 0
trigger1 = P2bodydist X < 60+(vel X * 8)
trigger1 = (P2dist Y + (enemynear,vel Y)*8 = [-30,30])||(P2statetype != A)



[State -1, 空中極キック]
type = ChangeState
value = 650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall =  movecontact >= 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/2))
triggerall = statetype = A
triggerall = stateno != 650
triggerall = var(11) <=3
triggerall = numtarget(620)=0
trigger1 = stateno = [600,650]
trigger1 = random<=100
trigger1 = prevstateno%100 != 50
trigger1 = P2dist X >= 0
trigger1 = P2bodydist X < 30+(vel X * 7)
trigger1 = (P2dist Y + (enemynear,vel Y)*7 = [-60,0])||(P2statetype != A)

;------------------------------------------------------------------------------
;何となくジャンプキャンセル/
;--------------------------

[State -1, ジャンプキャンセル前]
type = ChangeState
value = 42-(FrontEdgeBodyDist < 50)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (numtarget != 0)
triggerall = (pos Y = 0)&&(statetype != A)
triggerall = (fvar(1) > (var(3)*0.6))
trigger1 = gametime%5 = 0&&((target,gethitvar(hittime)-10)*40 > random)
trigger1 = target,vel Y = 0
trigger1 = movecontact
trigger1 = (stateno = [200,250])

[State -1, ジャンプキャンセル後ろ]
type = ChangeState
value = 43
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (numtarget != 0)
triggerall = statetype != A
triggerall = gametime%5 = 0
triggerall = (stateno = [200,250])
trigger1 = MoveGuarded
trigger1 = (fvar(1) < (var(3)/3))


;------------------------------------------------------------------------------
;勝手なジャンプある程度禁止/
;--------------------------

[State -1, 飛び込み]
type = ChangeState
value = 42-(FrontEdgeBodyDist < 50)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumExplod(77) = 0)&&(P2statetype != L)
triggerall = (gametime%10 = random%10)
triggerall = (fvar(1)/fvar(3)*50) > random
triggerall = P2bodydist X <= 100
triggerall = P2bodydist X >= 50
triggerall = (P2bodydist X-50)*5  > random
trigger1 = ctrl = 1
trigger1 = !InGuardDist
trigger1 = (pos Y = 0)&&(statetype != A)

[State -1, とりあえずライダーキックしとく]
type = ChangeState
value = 1720
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = (NumExplod(77) = 0)&&(P2statetype != L)
triggerall = !InGuardDist
triggerall = P2movetype != A && (statetype = A)
trigger1 = (gametime%10 = random%10)
trigger1 = P2bodydist X <= 140
trigger1 = (P2bodydist X-70)*12  > random
trigger1 = ctrl = 1
trigger1 = P2movetype != H

[State -1, とりあえず空中弱PかK振っておく]
type = ChangeState
value = 630 - (P2dist Y <= 10)*30
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)
triggerall = (enemynear,gethitvar(hitcount) <= 1)||((3-var(10))*200 >= random);★最初の方へ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumExplod(77) = 0)&&(P2statetype != L)
triggerall = !InGuardDist
triggerall = P2movetype != A && (statetype = A)
trigger1 = (gametime%10 = random%10)
trigger1 = (70-P2bodydist X)*15  > random
trigger1 = P2dist Y =[-70,60]
trigger1 = ctrl = 1
trigger1 = P2movetype != H
trigger2 = (stateno = 630)||(stateno = 600)
trigger2 = movehit >= 3

[State -1, ジャンプキャンセル]
type = ChangeState
value = 42-(FrontEdgeBodyDist < 50)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumExplod(77) = 0)&&(P2statetype != L)
triggerall = (numtarget != 0) && (gametime%5 = random%5)
triggerall = (target,gethitvar(hittime)>=20)||((target,statetype = A)&&(target,gethitvar(fall)))
triggerall = (fvar(1)/fvar(3)*1000) > random
triggerall = P2dist X >= 0 && (pos Y = 0)&&(statetype != A)
triggerall = (P2bodydist X<=120)
triggerall = (P2bodydist X) > random
trigger1 = (movecontact>=1) 
trigger1 = (stateno = [200,250])
trigger1 = (enemynear,vel Y = 0) || (enemynear,vel Y < -3)

[State -1, 着地時投げ]
type = ChangeState
value = 800
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != A)&&(P2statetype != L)
triggerall = (numtarget = 0) 
triggerall = (10-(P2bodydist X))*100 >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A 
triggerall = (p2bodydist X < 10)&&(P2dist X >= 0)
trigger1 = (stateno = [130,140])&&(ctrl = 1)&&(NumExplod(150) != 0);★ガード直後
trigger2 = (stateno = 52)&&(ctrl = 1)
trigger3 = (stateno = 106)&&(ctrl = 1)


[State -1, ミドルキック]
type = ChangeState
value = 240
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = P2bodydist X < 100
triggerall = (stateno = 440)&&(movehit >= 1)
trigger1 = numtarget(440)!=0
trigger1 = target(440),movetype = H

[State -1, カッター]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = P2bodydist X < 120
triggerall = (stateno = 440)&&(movehit >= 1)
trigger1 = numtarget(440)!=0
trigger1 = target(440),movetype = H

[State -1, ジャンプキャン]
type = ChangeState
value = 42-(FrontEdgeBodyDist < 50)
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(pos Y = 0)&&(statetype != A)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = P2bodydist X < 120
triggerall = (stateno = 240)&&(movehit >= 1)
trigger1 = numtarget(240)!=0
trigger1 = target(240),movetype = H
trigger1 = target(240),statetype = A


[State -1, ジャンプキャン-叩きつけ]
type = ChangeState
value = 620
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = P2statetype = A&& ctrl = 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = stateno = [41,42]
trigger1 = numtarget(240)!=0
trigger1 = target(240),movetype = H
trigger2 = numtarget!=0
trigger2 = target,stateno = [1000,3000]
trigger2 = P2bodydist X < 70


[State -1, 降下キック]
type = ChangeState
value = 650
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = P2statetype != A && ctrl = 1
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = vel Y  > -3
trigger1 = stateno = [41,42]
trigger1 = P2bodydist X < 50
trigger1 = numtarget!=0

[State -1, ジャンプキャン-蹴り飛ばし]
type = ChangeState
value = 1700
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = P2statetype != L && (NumExplod(77) = 0 || ctrl)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = numtarget !=0
triggerall = numtarget(1700) = 0
triggerall = target,statetype = A
triggerall = P2bodydist X <= 70-(Facing *(enemynear,Facing))*(enemynear,vel X)*5
triggerall = P2dist X - 10 >= (Facing *(enemynear,Facing))*(enemynear,vel X)*5
triggerall = (P2dist Y <= 0)&&(P2dist X >= 0)
triggerall = (P2dist Y + (enemynear,vel y)*5) = [-40,0]
trigger1 = stateno = [41,42]
trigger2 = stateno = 1610 && (AnimElemTime(1) > 0)
trigger3 = (stateno = 1750) && movehit >= 4


[State -1, ジャンプキャン-打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype = A)
triggerall = P2statetype != L && (NumExplod(77) = 0 || ctrl)
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = stateno = [41,42]
trigger1 = numtarget !=0
trigger1 = numtarget(1400) = 0
trigger1 = (target,vel Y > 3)
trigger1 = target,statetype = A
trigger1 = P2bodydist X < 70

[State -1, 着地フェイント]
type = ChangeState
value = 1320
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (P2statetype != A) && (statetype = A)
triggerall = P2movetype != H 
triggerall = enemynear,ctrl = 0
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/3)) 
triggerall = (vel Y > 0) && (P2bodydist X = [-10,100])
triggerall = vel Y + pos Y >= 0
trigger1 = ctrl

[State -1, 投げ後-打ち払い]
type = ChangeState
value = 1400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = stateno = 810
triggerall = ctrl
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/5)) 
trigger1 = numtarget(800) != 0

[State -1, 壁バン投げ後-すごパ]
type = ChangeState
value = 1100
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = !(inguarddist)&&(statetype != A)
triggerall = (stateno = 2620)&&(AnimElemTime(9) > 0)
triggerall = ctrl
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) > (fvar(3)/5)) 
trigger1 = numtarget(2600) != 0

[State -1, 足払い]
type = ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1)>fvar(3)/5);★気合ゲージ気にする
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = movecontact = [1,3]
triggerall = stateno = [200,430]
trigger1 = stateno%100 = 0
trigger2 = stateno%100 = 30


;==============================================================================
; 通常攻撃ctrl可能時-牽制とか色々それっぽく 
;==============================================================================
;MUGEN本体によるコマンドで発動(大雑把なランダム要素)
;弱攻撃-行動ランク1
;強攻撃-行動ランク2
;極攻撃-行動ランク3
;------------------------------------------------------------------------------
[State -1, 地上弱パンチ]
type = ChangeState
value = 200
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "x")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = S && (P2bodydist X >-10)
triggerall = P2statetype != C && !InGuardDist
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, 地上弱キック]
type = ChangeState
value = 230
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "a")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = S && (P2bodydist X >-10)
triggerall = P2statetype != A && !InGuardDist
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, 地上強パンチ]
type = null;ChangeState
value = 210
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "y")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = S && (P2bodydist X >-10)
triggerall = P2statetype != C && !InGuardDist
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, 地上強キック]
type = ChangeState
value = 240
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "b")||(120 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = S && (P2bodydist X > 70)
triggerall = P2statetype != A && !InGuardDist
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


;------------------------------------------------------------------------------
[State -1, 地上弱パンチ]
type = ChangeState
value = 400
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "x")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&& (vel X = 0);★ダッシュや歩き中は不可
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = (P2bodydist X >-10)&&(statetype != A)
triggerall = P2statetype != A && !InGuardDist
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, 地上弱キック]
type = ChangeState
value = 430
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "a")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&& (vel X = 0);★ダッシュや歩き中は不可
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = (P2bodydist X >-10)&&(statetype != A)
triggerall = P2statetype != A && !InGuardDist
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, 地上強パンチ]
type = null;ChangeState
value = 410
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "y")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&& (vel X = 0);★ダッシュや歩き中は不可
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = (P2bodydist X >-10) && !InGuardDist&&(statetype != A)
triggerall = (var(50)<=0)||(var(52)*50 < random)
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, 地上強キック]
type = null;ChangeState
value = 440
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "b")||(100 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&& (vel X = 0);★ダッシュや歩き中は不可
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = (P2bodydist X >-10) && !InGuardDist&&(statetype != A)
triggerall = (var(50)<=0)||(var(52)*50 < random)
triggerall = P2statetype != A
trigger1 = ctrl
trigger1 = numtarget = 0

[State -1, 地上極キック]
type = ChangeState
value = 450
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "a+b")||(130 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)&& (vel X = 0);★ダッシュや歩き中は不可
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = (P2bodydist X > 80) && !InGuardDist&&(statetype != A)
triggerall = (var(50)<=0)||(var(52)*50 < random)
triggerall = P2statetype != A
trigger1 = ctrl
trigger1 = numtarget = 0
;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "x")||(60 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = A && P2statetype = A && (P2dist X >0) && (pos Y < -30)
triggerall = (var(50)<=0)||(var(52)*50 < random) && !InGuardDist
trigger1 = ctrl
trigger1 = numtarget = 0

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "a")||(60 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A && (P2dist X >0) && (pos Y < -30)
triggerall = (var(50)<=0)||(var(52)*50 < random) && !InGuardDist
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, ジャンプ強パンチ]
type = null;ChangeState
value = 610
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "y")||(60 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = A && (P2dist X >0) && (pos Y < -30)
triggerall = (var(50)<=0)||(var(52)*50 < random) && !InGuardDist
trigger1 = ctrl
trigger1 = numtarget = 0


[State -1, ジャンプ強キック]
type = null;ChangeState
value = 640
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (command = "b")||(60 - P2bodydist x) >= random
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (fvar(1) >= (fvar(3)/2))
triggerall = statetype = A && (P2dist X >0) && (pos Y < -30)
triggerall = (var(50)<=0)||(var(52)*50 < random) && !InGuardDist
trigger1 = ctrl
trigger1 = numtarget = 0

;------------------------------------------------------------------------------
;申し訳程度のガード記述/
;----------------------
[State -1, ガードへ]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = (fvar(0) > 0)
triggerall = ctrl = 1
triggerall = InGuardDist
trigger1 = ((70+(gametime%50)) - P2bodydist X)*10 > random
trigger2 = (var(50) > 0)&&(var(52)*50 > random)
trigger3 = enemynear,numproj >= 1
trigger4 = !(enemynear,hitdefattr=SCA, NA,SA,HA)
value = 120 
ctrl = 1

[State -1, ガード切り替え]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = stateno = 131
trigger1 = ctrl = 1
trigger1 = enemynear,time >= 10+(random%15)
value = 130

[State -1, ガード切り替え]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = stateno = 130
trigger1 = ctrl = 1
value = 131

[State -1, ガード切り替え]
type = statetypeset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = (stateno = [150,159])||(stateno = 120)||(stateno = 140)
trigger1 = 1
statetype = C
physics = C

[State -1, ガード切り替え]
type = statetypeset
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = (stateno = [150,159])||(stateno = 120)||(stateno = 140)
trigger1 = enemynear,time >= 10+(random%15)
trigger2 = enemynear,statetype = A
statetype = S
physics = S

[State -1, とりあえず前進]
type = ChangeState
triggerall = (roundstate = 2)&&(var(59) != 0)&&(Alive = 1);★AIスイッチ
triggerall = statetype != A
triggerall = stateno != [120,140]
trigger1 = ctrl = 1
trigger1 = stateno != 100
value = 20

;==============================================================================
; シールド系処理
;==============================================================================
[State 7  シールド開始気合消費]
type = Varadd
triggerall = var(59) = 0;★AIスイッチ
triggerall = stateno != [900,950]
triggerall = numExplod(4) = 0
triggerall = (movetype = A)||(movetype = I)
triggerall = fvar(1) > 0
triggerall = fvar(0) > 0
trigger1 = command = "z"
trigger1 = (Var(2) != 5)
trigger1 = (Var(2) := 5)
fvar(1) = -(10/(1+(ctrl=1)))
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1 

[State 7, シールド開始]
type = Explod
triggerall = var(59) = 0;★AIスイッチ
trigger1 = command = "z"
anim = 4
ID = 4
postype = P1
pos = 0,0
facing = 1
vfacing= 1
scale = Const(size.xscale),Const(size.yscale)
bindtime = -1
removetime = 5
sprpriority = 7
ontop = 1
shadow = 0, 0, 0
Trans = add   ;Add ,None, Add1, Sub, AddAlpha
ownpal = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1

[State 7  シールド気合消費]
type = Varadd
triggerall = stateno != [900,950]
triggerall = (numExplod(4) = 0)
triggerall = (movetype = A)||(movetype = I)
triggerall = fvar(1) > 0
triggerall = fvar(0) > 0
trigger1 = var(2) > 1
fvar(1) = -1*(1+(ctrl = 0))/(1+(helper(7),numexplod(7))/5*(ctrl = 1)/2)
supermovetime = 999999999999
pausemovetime = 999999999999


[State 7  気合枯渇]
type = Varset
triggerall = stateno != [900,950]
triggerall = var(2) != 0
triggerall =(movetype = A)||(movetype = I)
trigger1 = fvar(1) < 0
trigger1 = helper(7),NumExplod(7000) = 1
fvar(1) = -(fvar(3))
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1 

[State 7, KKシールド時トドメ刺せないフラグ]
type = Explod
trigger1 = NumExplod(5) = 0
trigger1 = var(2) != 0
anim = 4
ID = 5
postype = P1
pos = 0,0
facing = 1
vfacing= 1
scale = Const(size.xscale),Const(size.yscale)
bindtime = -1
removetime = -1
sprpriority = 7
ontop = 1
shadow = 0, 0, 0
Trans = add   ;Add ,None, Add1, Sub, AddAlpha
ownpal = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1

[State 7]
type = NotHitBy
trigger1 = NumExplod(5) != 0
value = SCA,AA,AP,AT
time = 1
supermovetime = 999999999999999999999999999999999999999
pausemovetime = 999999999999999999999999999999999999999  
ignorehitpause = 1

[State 7]
type = HitOverride
trigger1 = NumExplod(5) != 0
slot = 1
attr = SCA, AA,AP,AT
time = 1
stateno = 0
ctrl = 1
supermovetime = 999999999999999999999999999999999999999
pausemovetime = 999999999999999999999999999999999999999
ignorehitpause = 1

[State 1000, 0]
Type = PalFX
trigger1 = var(2) != 0
trigger1 = gametime%5 <= 2
Time = 1
Add = 10,10,220
Mul = 256,256,256
SinAdd = 0,0,0,10
InvertAll = 0
Color = 256 
supermovetime = 999999999999999999999999999999999999999
pausemovetime = 999999999999999999999999999999999999999
ignorehitpause = 1


[State -2,トドメ刺せない判定用エフェクト消し]
;ターゲットを取ってない時のみ解除
type = RemoveExplod
trigger1 = var(2) = 0
Trigger1 = numtarget = 0
trigger2 = var(2) = 0
Trigger2 = movetype = H = 0;念のため
Trigger3 = life = 0;念のため
ID = 5
supermovetime = 999999999999999999999999999999999999999999999
pausemovetime = 999999999999999999999999999999999999999999999
ignorehitpause	= 1


;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
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
[State -1, 超ラッシュ　根性フルカウント3ゲージ技]
type = ChangeState
value = 3600
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超ラッシュ")
triggerall = power >= 3000;ゲージレベル3
triggerall = var(40) >= 10
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 超ッ・・・すごいパァァンチ!　通常3ゲージ技]
type = ChangeState
value = 3500
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超ッ・・・すごいパァァンチ!")
triggerall = power >= 3000;ゲージレベル3
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------
[State -1, 超・電光石火　2ゲージ技]
type = ChangeState
value = 3300
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超電光石火")
triggerall = power >= 2000;ゲージレベル2
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------
[State -1, んんぅぉおおおお!　2ゲージ技]
type = ChangeState
value = 3100
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "大噴火")
triggerall = power >= 2000;ゲージレベル2
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, たいらんれいぶ！　2ゲージ技]
type = ChangeState
value = 3000
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "たいらんれいぶ")
triggerall = power >= 2000;ゲージレベル2
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 根性MAX　2ゲージ技]
type = ChangeState
value = 3200
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "根性MAX")
triggerall = power >= 2000;ゲージレベル2
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, 超すごいパンチ(物理)ゲージ版]
type = ChangeState
value = 2000
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超すごパ(物理)")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 超すごいパンチ(特殊)ゲージ版]
type = ChangeState
value = 2050
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "超すごパ(特殊)"
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 超マッハ投げ(地上)ゲージ版]
type = ChangeState
value = 2100
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超マッハ投げ(地上)")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 超マッハ投げ(対空)ゲージ版]
type = ChangeState
value = 2150
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超マッハ投げ(対空)")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 超すごいキック]
type = ChangeState
value = 2300
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "超すごいキック"
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 超すごい蹴り上げ]
type = ChangeState
value = 2400
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "超すごい蹴り上げ")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, ぶちかまし強]
type = ChangeState
value = 2450
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "ぶちかまし強"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, ぶちかまし弱]
type = ChangeState
value = 1850
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "ぶちかまし弱"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 根性注入]
type = ChangeState
value = 2250
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "根性注入"
triggerall = power >= 1000;ゲージレベル1
triggerall = var(40) > 0;★根性カウント消費
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 気合注入]
type = ChangeState
value = 2200
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "気合注入"
triggerall = var(40) > 0;★根性カウント消費
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 瞬極的な]
type = ChangeState
value = 2500
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "瞬")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, マッハ壁バン]
type = ChangeState
value = 2600
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "マッハ壁バン")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 噴火]
type = ChangeState
value = 2700
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = (command = "噴火")
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 電光石火(拳)];地上
type = ChangeState
value = 2850
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "電光石火(拳)"
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 電光石火(拳)]
type = ChangeState
value = 2800
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "電光石火(拳)"
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, 電光石火(拳)];地上
type = ChangeState
value = 2950
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "電光石火(足)"
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 電光石火(足)]
type = ChangeState
value = 2900
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "電光石火(足)"
triggerall = power >= 1000;ゲージレベル１
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;==============================================================================
; 必殺技
;==============================================================================

;------------------------------------------------------------------------------
[State -1, マッハで退避(背面)]
type = ChangeState
value = 1330
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハで来た(背面端)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, マッハで退避(正面)]
type = ChangeState
value = 1340
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハで来た(正面端)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------
[State -1, 空中すごパ(弱)]
type = ChangeState
value = 1600
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごパ(物理)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, 空中すごパ(強)]
type = ChangeState
value = 1620
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごパ(特殊)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, ライトニング！(物理)]
type = ChangeState
value = 1640
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "ライトニング"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = statetype = A
trigger1 = vel Y >= -3
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, 空中投げ]
type = ChangeState
value = 1650
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハ投げ"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, 空中すごキ(弱)]
type = ChangeState
value = 1700
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい地団駄(弱)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, 空中すごキ(強)]
type = ChangeState
value = 1720
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい地団駄(強)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [600,650]) || (stateno = 1210)
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
[State -1, すごパ連打(物理)]
type = ChangeState
value = 1030
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごパ連打(物理)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごパ連打(特殊)]
type = ChangeState
value = 1130
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごパ連打(特殊)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごい飛び膝蹴り]
type = ChangeState
value = 1280
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい飛び膝蹴り"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごいかかと落とし]
type = ChangeState
value = 1270
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごいかかと落とし"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------
[State -1, ぐらんどばいぱー地]
type = ChangeState
value = 1450
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "ぐらんどばいぱー地"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, ぐらんどばいぱー空]
type = ChangeState
value = 1455
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "ぐらんどばいぱー空"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 昇雷]
type = ChangeState
value = 1770
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "昇雷"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = (NumProjID(1643) = 0)&&(NumProjID(1773) = 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごい対空パンチ物理]
type = ChangeState
value = 1750
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい対空パンチ(物理)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごい対空パンチ・特殊]
type = ChangeState
value = 1755
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい対空パンチ(特殊)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, 旋風]
type = ChangeState
value = 1800
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "旋風"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
[State -1, すごパ(特殊)]
type = ChangeState
value = 1100
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごパ(特殊)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, すごパ(物理)]
type = ChangeState
value = 1000
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごパ(物理)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, マッハ投げ]
type = ChangeState
value = 1500
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハ投げ"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, 叩き落とし]
type = ChangeState
value = 1400
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "叩き落とし"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, すごいキック(奇)]
type = ChangeState
value = 1230
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごいキック(奇)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, すごいキック(攻)]
type = ChangeState
value = 1200
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごいキック(攻)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State 1200, 追加攻撃ステートへ移行]
type = ChangeState
triggerall = var(59) = 0;★AIスイッチ
trigger1 = stateno = 1200
trigger1 = (AnimElemTime(12) >= 0)&&(AnimElemTime(21) < 0)
trigger1 = movecontact
trigger1 = command = "holdfwd"
trigger1 = command = "a"
value = 1210
ctrl = 0

;------------------------------------------------------------------------------

[State -1, すごいキック(守)]
type = ChangeState
value = 1250
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごいキック(守)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)



[State ,1200]
type = ChangeAnim
triggerall = var(59) = 0;★AIスイッチ
trigger1 = stateno = 1255
trigger1 = anim = 2506
Trigger1 = command = "a"
value = 2505
elem = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1 

[State ,1200]
type = ChangeAnim
triggerall = var(59) = 0;★AIスイッチ
trigger1 = stateno = 1255
trigger1 = anim = 2506
Trigger1 = command = "b"
value = 650
elem = 1
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause	= 1 

;------------------------------------------------------------------------------

[State -1, すごい地団駄(弱)]
type = ChangeState
value = 1900
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい地団駄(弱)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = (NumProjID(1900) = 0)&&(NumProjID(1950) = 0)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, すごい地団駄(強)]
type = ChangeState
value = 1950
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "すごい地団駄(強)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = (NumProjID(1900) = 0)&&(NumProjID(1950) = 0)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, マッハで来た(正面)]
type = ChangeState
value = 1300
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハで来た(正面)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = P2dist X >= 100
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)



;------------------------------------------------------------------------------

[State -1, マッハで来た(背面)]
type = ChangeState
value = 1320
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハで来た(背面)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
;triggerall = P2dist X >= 0
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [600,650])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger14 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger15 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger16 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger17 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger18 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger19 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger20 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)



;---------------------[追加攻撃へ移行]
[State 1300, 追加攻撃ステートへ移行]
type = ChangeState
triggerall = var(59) = 0;★AIスイッチ
triggerall = statetype = S
triggerall = command = "y"
trigger1 = command = "holdback"
trigger1 = (stateno = 1300)
trigger1 = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
trigger2 = command = "holdfwd"
trigger2 = (stateno = 1320)
trigger2 = (AnimElemTime(5) >= 0)&&(AnimElemTime(17) < 0)
value = 1310
ctrl = 0

;------------------------------------------------------------------------------

[State -1, コマ投げ]
type = ChangeState
value = 1350
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハで来た(正面)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
triggerall = P2dist X < 100
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850)
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)



;------------------------------------------------------------------------------

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, 二段ジャンプ用]
type = ChangeState
value = 42
triggerall = var(59) = 0;★AIスイッチ
triggerall = command ="holdup"
triggerall = (command ="holdfwd")
triggerall = ctrl = 1
trigger1 = stateno = 50
trigger1 = anim = [44,46]
trigger2 = stateno != [41,43]
trigger2 = statetype = A

[State -1, 二段ジャンプ用]
type = ChangeState
value = 43
triggerall = var(59) = 0;★AIスイッチ
triggerall = command ="holdup"
triggerall = (command ="holdback")
triggerall = ctrl = 1
trigger1 = stateno = 50
trigger1 = anim = [44,46]
trigger2 = stateno != [41,43]
trigger2 = statetype = A

[State -1, 二段ジャンプ用]
type = ChangeState
value = 41
triggerall = var(59) = 0;★AIスイッチ
triggerall = command ="U"
triggerall = ctrl = 1
trigger1 = stateno = 50
trigger1 = anim = [44,46]
trigger2 = stateno != [41,43]
trigger2 = statetype = A

[State -1, ジャンプキャンセル]
type = ChangeState
value = 42
triggerall = var(59) = 0;★AIスイッチ
trigger1 = command ="holdup"
trigger1 = (command ="holdfwd")
trigger1 = movecontact
trigger1 = (stateno = [200,250])

[State -1, ジャンプキャンセル]
type = ChangeState
value = 43
triggerall = var(59) = 0;★AIスイッチ
trigger1 = command ="holdup"
trigger1 = (command ="holdback")
trigger1 = movecontact
trigger1 = (stateno = [200,250])

[State -1, ジャンプキャンセル]
type = ChangeState
value = 41
triggerall = var(59) = 0;★AIスイッチ
trigger1 = command ="holdup"
trigger1 = movecontact
trigger1 = (stateno = [200,250])

[State -1, 移動起き上がり前方]
type = ChangeState
value = 1340
triggerall = var(59) = 0;★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = command ="holdfwd"
trigger1 = (stateno = 5120)

[State -1, 移動起き上がり後方]
type = ChangeState
value = 1330
triggerall = var(59) = 0;★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = command ="holdback"
trigger1 = (stateno = 5120)

[State -1, 移動起き上がり背後]
type = ChangeState
value = 1320
triggerall = var(59) = 0;★AIスイッチ
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = command ="holddown"
trigger1 = (stateno = 5120)

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = var(59) = 0;★AIスイッチ
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------

[State -1, すごいガード]
type = ChangeState
value = 900
triggerall = var(59) = 0;★AIスイッチ
triggerall = (command = "すごいガード")||((command = "hold_c")&&(command = "hold_z"))
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
trigger1 = ctrl
trigger2 = (movecontact)||(HitDefAttr = SCA, NA)
trigger2 = (stateno = [200,250]) || (stateno = [400,450])||(stateno = 850) || (stateno = [400,450])
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger7 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger8 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger9 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger10 =(stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger11 =(stateno = 1350)&&(AnimElemTime(12) > 0)
trigger12 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger13 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger14 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger15 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger16 =((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger17 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger18 =((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger19 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger20 = (stateno = 700);強制移行
trigger21 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger22 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger23 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger24 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger25 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger26 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger27 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger28 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger29 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger30 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger31 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger32 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger33 = (stateno = 1620)&&(AnimElemTime(18) > 0)
trigger34 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger35 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger36 = (stateno = 1800)&&(anim = 1870)
trigger37 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger38 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger39 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, ゲージ溜め]
type = ChangeState
value = 700
triggerall = var(59) = 0;★AIスイッチ
triggerall = command = "hold_c"
triggerall = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ガーキャン]
type = ChangeState
value = 500
triggerall = var(59) = 0;★AIスイッチ
triggerall = command = "根性注入"
triggerall = statetype != A
triggerall = power >= 500;ゲージ消費
triggerall = fvar(0) >= (fvar(3)/2)
trigger1 = (stateno = 151)||(stateno = 153)

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59) = 0;★AIスイッチ
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------
;特殊ゲージ切れ時限定対打撃当身

[State -1, 正拳]
type = ChangeState
value = 320
triggerall = var(59) = 0;★AIスイッチ
triggerall = (fvar(1) < 0)||(fvar(0) < 0)
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "a+b"
trigger2 = command = "recovery"


[State -1, 前進]
type = ChangeState
value = 310
triggerall = var(59) = 0;★AIスイッチ
triggerall = (fvar(1) < 0)||(fvar(0) < 0)
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "b"
trigger2 = command = "y"


[State -1, 後退]
type = ChangeState
value = 300
triggerall = var(59) = 0;★AIスイッチ
triggerall = (fvar(1) < 0)||(fvar(0) < 0)
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "a"
trigger2 = command = "x"


;==============================================================================
; 同時押し通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, しゃがみ極パンチ]
type = ChangeState
value = 420
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "recovery"
triggerall = command = "holddown"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State -1, しゃがみ極キック]
type = ChangeState
value = 450
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "a+b"
triggerall = command = "holddown"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, 立ち極パンチ]
type = ChangeState
value = 220
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "recovery"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State -1, 立ち極キック]
type = ChangeState
value = 250
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "a+b"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------
[State -1, 空中極パンチ]
type = ChangeState
value = 620
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "recovery"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && ((movecontact)||(HitDefAttr = A, NA))
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

[State -1, 空中極キック]
type = ChangeState
value = 650
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "a+b"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = vel Y >= -3
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && ((movecontact)||(HitDefAttr = A, NA))
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)


;==============================================================================
; 通常攻撃技 
;==============================================================================
;弱攻撃-行動ランク1
;強攻撃-行動ランク2
;極攻撃-行動ランク3

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)



[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "x"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)



[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "y"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)



[State -1, 立ち弱キック]
type = ChangeState
value = 230
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "a"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)


[State -1, 立ち強キック]
type = ChangeState
value = 240
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "b"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ((stateno = [200,450])||(stateno = 850)) && ((movecontact)||(HitDefAttr = SC, NA))
trigger3 = ((stateno = 1000)||(stateno = 2000)||(stateno = 3000))&&((AnimElemTime(24) > 0)||(movecontact))
trigger4 = ((stateno = 1100)||(stateno = 2050))&&(AnimElemTime(32) > 0)
trigger5 = ((stateno = 1256)||(stateno = 1260)||(stateno = 2502))&&(AnimElemTime(5) > 0)
trigger6 = ((stateno = 1300)||(stateno = 1320))&&(AnimElemTime(10) > 0)
trigger7 = ((stateno = 1330)||(stateno = 1340))&&(AnimElemTime(13) > 0)
trigger8 = (stateno = 1310)&&((AnimElemTime(10) > 0)||(movecontact))
trigger9 = (stateno = 1350)&&(AnimElemTime(12) > 0)
trigger10 =(stateno = 1360)&&(AnimElemTime(13) > 0)
trigger11 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger12 =(stateno = 1515)&&(AnimElemTime(6) > 0)
trigger13 =(stateno = 1525)&&(AnimElemTime(1) > 0)
trigger14 =(stateno = 1535)&&(AnimElemTime(6) > 0)
trigger15 =((stateno = 1900)||(stateno = 1950))&&(AnimElemTime(29) > 0)
trigger16 = (stateno = 2300)&&(AnimElemTime(12) > 0)
trigger17 = ((stateno=2200)||(stateno=3200))&&(AnimElemTime(20) > 0)
trigger18 = (stateno = 2400)&&(AnimElemTime(7) > 0)
trigger19 = (stateno = 2500)&&(AnimElemTime(28) > 0)
trigger20 = ((stateno = 2610)||(stateno = 2620))&&(AnimElemTime(9) > 0)
trigger21 = (stateno = 2700)&&(AnimElemTime(22) > 0)
trigger22 = (stateno = 3100)&&(AnimElemTime(38) > 0)
trigger23 = (stateno = 1640)&&(AnimElemTime(11) > 0)
trigger24 = (stateno = 3350)&&(AnimElemTime(11) > 0)
trigger25 = (stateno = 1755)&&(AnimElemTime(23) > 0)
trigger26 = (stateno = 1800)&&(anim = 1870)
trigger27 = ((stateno = 1030)||(stateno = 1130))&&(AnimElemTime(86) > 0)
trigger28 = (stateno = 1460)&&(AnimElemTime(10) > 0)
trigger29 = (stateno = 1270)&&(AnimElemTime(25) > 0)

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "x"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && ((movecontact)||(HitDefAttr = A, NA))
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)


[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "y"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && ((movecontact)||(HitDefAttr = A, NA))
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "a"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && ((movecontact)||(HitDefAttr = A, NA))
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "b"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && ((movecontact)||(HitDefAttr = A, NA))
trigger3 = ((stateno = 1200)||(stateno = 1250))&&(AnimElemTime(14) > 0)
trigger4 = (stateno = 1210)&&(AnimElemTime(15) > 0)
trigger5 = (stateno = 1565)&&(AnimElemTime(1) > 0)
trigger6 = ((stateno = 1700)||(stateno = 1720))&&(AnimElemTime(15) > 0)
trigger7 = ((stateno = 1610)||(stateno = 1630))&&(AnimElemTime(1) > 0)
trigger8 = (stateno = 1750)&&(anim = 1750)&&(AnimElemTime(11) > 0)
trigger9 = (stateno = 1750)&&(anim = 1755)&&(AnimElemTime(17) > 0)
trigger10 =(stateno = 1400)&&(AnimElemTime(13) > 0)&&(time > 1)
trigger11 = (stateno = 2505)&&(AnimElemTime(7) > 0)
trigger12 = (stateno = 1255)&&(AnimElemTime(5) > 0)
trigger13 = (stateno = 1620)&&(AnimElemTime(18) > 0)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------