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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)


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
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)


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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
[State -1, 空中かかと]
type = ChangeState
value = 1660
triggerall = var(59) = 0;★AIスイッチ
triggerall = (NumExplod(77) = 0)||(command = "hold_c");★空キャンセル漏れ防止
triggerall = command = "マッハで来た(正面)"
triggerall = (fvar(1) > 0)&&(fvar(0) > 0)
triggerall = P2dist X < 100
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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)



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
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)



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
trigger40 = (stateno = 1470)&&(movecontact >= 1)
trigger41 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger42 = (stateno = 1280)&&(AnimElemTime(23) > 0)


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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)


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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)


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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

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
trigger14 = (stateno = 1470)&&(movecontact >= 1)
trigger15 = (stateno = 1660)&&(AnimElemTime(12) > 0)
trigger16 = (stateno = 1280)&&(AnimElemTime(23) > 0)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------ 