;MC#19 code:真鏡名みな　 
;1a:Light 2b:Mid 3c:high 4x:none 5y:defence 6z:kick

;-----AI-------------------------------------------
[Command];
name = "AL_1"
command = F, DF, U, DB, UF, F, D, F, F, F, B, D
time = 1

[Command];
name = "AL_2"
command = DF, U, DB, UF, F, D, B, B, B, B, B, B, B
time = 1

[Command];
name = "AL_3"
command =  D, B, B, B, B, B, B, B,U,U,U,U,U,U,U,U,U,U
time = 1

[Command];
name = "AL_4"
command = F,F,F,F,F,F,F,F,F, B, B, B, B, B, B, B
time = 1

[Command];
name = "AL_5"
command = F,F,F,F,F,F,D,D,D,D,D,U, B, B, B, B
time = 1

[Command];
name = "AL_6"
command =  D, D,D,D,D,D,U,U,U,U,B,U,U,U,U,U,U,U,U,U,U
time = 1

[Command];
name = "AL_7"
command = DF,DF,DF,DF,DF,DB,DB,B,DB,DB,DB,DB
time = 1

[Command];
name = "AL_8"
command = DF,DF,DF,F,F,F,F,F,DF,D,D,D,D,D
time = 1

[Command];
name = "AL_9"
command = UF,UF,UF,UF,UF,B,B,B,B,B,BD,D,D,D,D,D
time = 1

[Command];
name = "AL_10"
command = D,D,D,D,D,U, B, B, B, B,F,F,F,F,F,F
time = 1

[Command];
name = "sp_0"
command = ~DF, D, DB, B, F, D, DF, c
time = 60

[Command];
name = "sp_00"
command = ~DF, D, DB, B, D, DB, c
time = 60

;-| 超必殺技 |--------------------------------------------------------
[Command];ぬいぐるみ
name = "sp_n"   
command = ~DF,D,DB,B,D,DB,B,y
time = 60

[Command];ひおうぎ
name = "sp_ex"   
command = ~B,DB,D,DF,F,B,D,DB, c
time = 90

[Command];ひおうぎ
name = "sp_ex"   
command = ~B,DB,D,DF,F,B,D,DB, b+c
time = 90



[Command];
name = "sp_1"   
command = ~D, DF, F, D, DF, F, a
time = 30

[Command];ＯＮＥボタンコマンド
name = "sp_2"   
command = ~D, DF, F, D, DF, F, b
time = 30

[Command];同時押しコマンド
name = "sp_2"   
command = ~D, DF, F, b+c
time = 15

[Command];ＯＮＥボタンコマンド
name = "sp_3"   
command = ~D, DF, F, D, DF, F, c
time = 30

[Command];同時押しコマンド
name = "sp_3"   
command = ~D, DF, F, a+b
time = 15

[Command];
name = "sp_4"   
command = ~D, DF, F, D, DF, F, z
time = 60

;-| 必殺技 |------------------------------------------------------
;---------------------------------------------
[Command];ちきゅうしん1
name = "ti_1"
command = ~B, DB, D, DF, F, a
time = 60

[Command];ちきゅうしん2
name = "ti_2"
command = ~B, DB, D, DF, F, b

[Command];ちきゅうしん3
name = "ti_3"
command = ~B, DB, D, DF, F, c

[Command];てんきゅうしん
name = "ten_1"
command = ~B, DB, D, DF, F, z

;-------------------
[Command];嘆き　弱　（
name = "tum_w"
command = ~F, D, DF, a

[Command];嘆き　中　
name = "tum_m"
command = ~F, D, DF, b

[Command];嘆き　強　
name = "tum_s"
command = ~F, D, DF, c

[Command];うちみむんのいかり
name = "tum_k"
command = ~F, D, DF, z

;----------------------
[Command];スンガン　弱　
name = "op_w"
command = ~B, D, DB, a
time =30

[Command];スンガン　中　　
name = "op_m"
command = ~B, D, DB, b
time =30

[Command];スンガン　強　（
name = "op_s"
command = ~B, D, DB, c
time =30

[Command];スンガンの
name = "op_d"
command = ~B, D, DB, y
time =30

[Command];スンガンの
name = "op_k"
command = ~B, D, DB, z
time =30

[Command];はじき
name = "ref"
command = ~D, DF, F, y

;-------------
[Command];立ち弓 
name = "ar_w"
command = ~D, DB, B, a

[Command];立ち弓 
name = "ar_m"
command = ~D, DB, B, b

[Command];立ち弓 
name = "ar_s"
command = ~D, DB, B, c

;-------------
[Command];しゃがみ弓 
name = "qu_w"
command = ~D, DF, F, a

[Command];しゃがみ弓 
name = "qu_m"
command = ~D, DF, F, b

[Command];しゃがみ弓 
name = "qu_s"
command = ~D, DF, F, c


[Command]
name = "rage"
command = /a+b
time = 1

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
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
command = z
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-------------------------config----

;-----------------------------------------ここをかえる
[Command];abc同時押し
name = "wms"
command = a+b+c
time = 2

[Command];ab同時押し
name = "wm"
command = a+b
time = 2

[Command]
name = "w"
command = a
time = 1

[Command]
name = "m"
command = b
time = 1

[Command]
name = "s"
command = c
time = 1

[Command]
name = "all"
command = x
time = 1

[Command]
name = "e"
command = y
time = 1

[Command]
name = "k"
command = z
time = 1

;-----------------コンフィグでかえやすく
[Command]
name = "holdW"
command = /a
time = 1

[Command]
name = "holdM"
command = /b
time = 1

[Command]
name = "holdS"
command = /c
time = 1

[Command]
name = "holdK"
command = /z
time = 1

[Command]
name = "holdE"
command = /y
time = 1

[Command];---etc(未使用
name = "holdALL"
command = /x
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1
;追加

[Command]
name = "holdDB"
command = /DB
time = 1

[Command]
name = "holdDF"
command = /DF
time = 1

[Command]
name = "holdD"
command = /D
time = 1

[Command]
name = "holdB"
command = /B
time = 1

[Command]
name = "holdF"
command = /F
time = 1

;-----------------------方向ちょいおし　すぐレバーはなすって動作
[Command]
name = "Fr" 
command = $F
time = 1

[Command]
name = "Ba" 
command = $B
time = 1

[Command]
name = "Up" 
command = $U
time = 1

[Command]
name = "Do" 
command = $D
time = 1
;　追加　ボタン押しっぱなし

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /start
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;=====超必殺技======================================================================
[state -1, sp1 ]; 呪縛
type = changestate
value = 3100
triggerall = (var(35) = 1 || var(35) = 2) && fvar(10) > 0
triggerall = !var(39)
triggerall = command = "sp_3" && var(1) != 1 && var(0)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13) && time >= 7
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, sp1 ]; 裁き　幻と剣  連続でうてないようにタイマー33剣見切りスライドで増えるvar用意4
type = changestate
value = 3200
triggerall = (fvar(10) >=1000 && !var(1) && !var(39)) || (var(1) =6 && fvar(4) >= life)
triggerall =command = "sp_2"  && var(0) && !var(33) &&!var(37) && !var(53)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13) && time >= 7
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, sp1 ]; 裁き　真一回だけフラグを用意、32　
type = changestate
value = 3200
triggerall = var(0) && !var(32) && var(1) = 2 
triggerall =command = "sp_ex"; || command = "sp_2";でばっく
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13) && time >= 7
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99


;---------------------------------------------------------特殊行動YボタンE
;---------------------------------------------------------------------------
;ぬいぐるみ　　
[State -1, Standing dash wwepon]
type = ChangeState
value =  4010
triggerall = !var(1) || var(1) = 2 
triggerall = command = "sp_n" && statetype != A 
trigger1 = ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99
trigger3 = stateno = 940 && animelemtime(6) >= 0

[state -1, tum w ]; はじきかえし　しらはどりは絵的に無理なので・・というか、手甲ではじいてません？
type = changestate
value = 980
triggerall = command = "ref" ;&& var(0) && !var(53)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [4005,4010]
trigger3 = (stateno = 100 && time > 7) || stateno = 99
trigger4 = stateno = 940 && animelemtime(6) >= 0

[state -1, sp1 ]; 完全が
type = changestate
value = 4100
triggerall = command = "wm" && (command = "holdback" || command = "holdDB")
triggerall = var(1) = 6 && fvar(10) >= 500 && !var(53)
trigger1 = ctrl && statetype != A

;超斬り　　怒
[State -1, Standing dash wwepon]
type = ChangeState
value =  4050
triggerall = var(0) && command = "wm" 
triggerall = var(1) = 1 || (!var(1) && command = "holdDF") 
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99

;------------------------------==天　　　　　　　連続斬り500~
;　連続斬りいりこみ　　スタート　
[State -1, Standing dash wwepon]
type = ChangeState
value =  500
triggerall = command = "wm" && var(0)
triggerall = var(1) = 4 ||  (!var(1) && command = "holdF")
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99

;------瞑想　零		武器無しOK
[State -1, Standing dash wwepon]
type = ChangeState
value =  4030
triggerall = command = "wm" && !var(35) && !var(37) &&  !var(38) && !var(39) && fvar(10) >= 10
triggerall =  (!var(1) && command ="holdD") || var(1) = 5  && !var(53)
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99
trigger3 = stateno = 940 && animelemtime(6) >= 0

;怒る、怒りタメ　　幻斬
[State -1, Standing dash wwepon]
type = ChangeState
value =  4000
triggerall = command = "wm" && !var(35) && !var(37) && !var(38)
triggerall = var(1) = 3 || ( !var(1) && command != "holdfwd" && command != "holddown" && command != "holdback")
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99

;いかりＭＡＸ　　真36フラグ  36に変更
[State -1, Standing dash wwepon]
type = ChangeState
value =  4005
triggerall = var(1) = 2 && var(35) && !var(36)
triggerall =movetype != H
trigger1 = stateno = [0,20]

;いかり爆発　　天、零   -3で食らい中のをかく。さいくばーすとみたいなー  フラグ37　武器あり時
[State -1, Standing dash wwepon]
type = ChangeState
value = 4015
triggerall = !var(1) || var(1) = 4 || var(1) =5 
triggerall = !var(37) && var(0) && !var(39) && !var(53)
triggerall = command = "all" || command = "wms"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99
trigger3 = stateno = 940 && animelemtime(6) >= 0

;------ー閃　天、零	武器あり時38
[State -1, Standing dash wwepon]
type = ChangeState
value =  4020
triggerall = (!var(1) && (var(37) || var(39) = 2)) || (var(1) = 4 && var(37)) || (var(1) = 5 && var(39) = 2) 
triggerall = var(0) && !var(38) && fvar(10) > 0 
triggerall = command = "all" || command = "wms"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99
trigger3 = stateno = 940 && animelemtime(6) >= 0

;------無の境地　零	武器無しOK39
;----これやっぱチームではやめましょか？
;SIMも2戦？TURNは1戦 負け回数V55
;--ターンか1回負けているか。でいいや
[State -1, Standing dash wwepon]
type = ChangeState
value =  4040
triggerall = teammode = turns || var(55) >= 1
triggerall = fvar(3) >= life && !var(53)
triggerall = !var(39) && !var(38) && !var(37) && (!var(1) || var(1) =5)
triggerall = command = "e" && command="k" 
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 100 && time > 7) || stateno = 99
trigger3 = stateno = 940 && animelemtime(6) >= 0

;--------------------------------------通常必殺技
;---------------------------------------
[state -1, op w ]; 地弓心　弱　4はつ
type = changestate
value = 1700
triggerall = command = "ti_1" && var(0)
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A; && movecontact
trigger3 = stateno = [700,720]
trigger3 = var(13) && time >= 7
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op w ]; 地弓心　中　5はつ
type = changestate
value = 1730
triggerall = command = "ti_2" && var(0)
trigger1 =  statetype != A && ctrl 
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op w ]; 天弓心　　5はつ
type = changestate
value = 1600
triggerall = command = "ti_3" && var(0)
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, tum w ]; しにまぷ
type = changestate
value = ifelse(!var(1),1400,1409)
triggerall = command = "tum_w" && var(0) 
trigger1 = ctrl && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, tum m]; しにまぷ
type = changestate
value = ifelse(!var(1),1405,1409)
triggerall = command = "tum_m" && var(0) 
trigger1 =  ctrl && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, tum s]; しにまぷ　強
type = changestate
value = ifelse(!var(1),1407,1409)
triggerall = command = "tum_s" && var(0)
trigger1 = ctrl && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, sp1 ]; うちみむん
type = changestate
value = 1800
triggerall = command = "tum_k" && var(0) && !var(53)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

;-------------------------------------
[state -1, op s]; 弓 誘い 
type = changestate
value = 1500
triggerall = command = "op_k"  && var(0)
trigger1 = ctrl && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

;-------------------------
[state -1, op w ]; 迎え　弱 
type = changestate
value = 1510
triggerall = command = "op_w"  && var(0)
trigger1 = ctrl && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op m]; 迎え　中/　
type = changestate
value = 1520
triggerall = command = "op_m" && var(0)
trigger1 = ctrl && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op s]; 迎え　強/　
type = changestate
value = 1530
triggerall = command = "op_s" && var(0)
trigger1 = ctrl  && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op s]; 迎え　ふぇいんと/　
type = changestate
value = 1540
triggerall = command = "op_d" && var(0)
trigger1 = ctrl  && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op s]; ちゃんぷるこっちよ～
type = changestate
value = ifelse(helper(300),stateno = 8310,3520,3500)
triggerall = numhelper(300) && !var(53)
triggerall = command = "e" &&  command = "m" && var(0)
trigger1 = ctrl  && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

[state -1, op s]; ちゃんぷるおやすみー
type = changestate
value = 3550
triggerall = command = "e" &&  command = "s" && var(0) && !var(53)
trigger1 = ctrl  && statetype != A
trigger2 = stateno = [200,590]
trigger2 =  var(13) && statetype != A ; && movecontact 
trigger3 = stateno = [700,720]
trigger3 = var(13)
trigger4 = stateno = [1100,1290]
trigger4 = var(13) && statetype != A
trigger5 = stateno = [4005,4010]
trigger6 = (stateno = 100 && time > 7) || stateno = 99
trigger7 = stateno = 940 && animelemtime(6) >= 0

;---武器捨て挑発、コマンド変更
[State -1, ]
type = ChangeState
value = 1000      ;
triggerall = 1
triggerall = !numhelper(100) && var(0) && !var(53)
triggerall = command = "start" && command = "holdfwd"
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [4005,4010]

;---武器拾い
[State -1, ]
type = ChangeState
value = 1020     
triggerall = numhelper(100) && !var(0) 
triggerall = command = "w" ;|| command = "m" || command = "s"
triggerall = helper(100),rootdist x = [-30,30]
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [4005,4010]

[State -1, ];普通の挑発、せりふあったらやって
type = ChangeState
value = 1090      ;
triggerall = 0
triggerall = !numhelper(100) && var(0)
triggerall = command = "start" && command != "holdfwd"
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;中斬り投げ　(予)
[State -1, Kung Fu Throw]
type = ChangeState
value = ifelse(command = "holdfwd",800,805)
triggerall = (!var(1) && command = "k") || (var(1)  && command = "m" && command ="s" )
triggerall = statetype != A && ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = p2statetype != A && p2statetype != L
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = p2statetype != A && p2statetype != L
trigger2 = p2movetype != H
trigger3 = stateno = [4005,4010]
trigger4 = (stateno = 100 && time > 7) || stateno = 99
trigger5 = stateno = 940 && animelemtime(6) >= 0


;==通常攻撃=========================================================================
;-----------------------------------------------
;踏み込み　弱武器　
[State -1, Standing dash wwepon]
type = ChangeState
value =  ifelse(!var(0),310,300)
triggerall = command = "w" 
trigger1 = stateno = 100 && time > 7
trigger2 = stateno = 99

;踏み込み　中武器　
[State -1, Standing dash mwepon]
type = ChangeState
value =310
triggerall = command = "m" 
trigger1 = stateno = 100 && time > 7
trigger2 = stateno = 99

;踏み込み　強武器　
[State -1, Standing dash swepon]
type = ChangeState
value = ifelse(!var(0),310,320)
triggerall = command = "s" 
trigger1 = stateno = 100 && time > 7
trigger2 = stateno = 99

;---------------------------------------------------------------------------
;踏み込み強キック 
[State -1, dash　ｓ Kick]
type = ChangeState
value = 330
triggerall = command = "k"; && command != "holddown"
trigger1 = stateno = 100 && time > 7
trigger2 = stateno = 99
 
;---------------------------------------------------------------------------
;不意打ち　レバー前立弱斬り　 削除
[State -1, Stand Light slash　lf]
type = ChangeState
value = 290
triggerall = 0;command = "w" 
triggerall = command != "holddown" && command = "holdfwd"
triggerall = stateno != 100
trigger1 =  statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち弱武器　
[State -1, Stand Light slash]
type = ChangeState
value =  ifelse(!var(0),200, ifelse(command = "holdF",1100,200))
triggerall = command = "w" && command != "holddown"
triggerall = stateno != 100
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;立ち中武器　
[State -1, Stand m slash]
type = ChangeState
value = ifelse(!var(0),200, ifelse(command = "holdF",1130,210))
triggerall = command = "m" && command != "holddown"
triggerall = stateno != 100
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;立ち強武器　
[State -1, Stand high slash]
type = ChangeState
value = ifelse(!var(0),200, ifelse(command = "holdF",1160,220))
triggerall = command = "s" && command != "holddown"
triggerall = stateno != 100
trigger1 = statetype != a &&  ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;立ち弱キック　
[State -1, Stand Light Kick f]
type = ChangeState
value = 230
triggerall = command = "k" && command != "holddown" && command != "holdfwd"
triggerall = stateno != 100
trigger1 = statetype != a &&  ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;立ち強キック　遠距離　
[State -1, Standing Strong Kick f]
type = ChangeState
value = 240
triggerall = command = "k" && command != "holddown" && command = "holdfwd"
triggerall = stateno != 100
trigger1 = statetype != a &&  ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;しゃがみ弱武器　
[State -1, Crouching Light slash]
type = ChangeState
value = ifelse(!var(0),400,ifelse(command = "holdDF",1200,400))
triggerall = command = "w" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;しゃがみ中武器　
[State -1, Crouching mslash]
type = ChangeState
value = ifelse(!var(0),400,ifelse(command = "holdDF",1230,410))
triggerall = command = "m" && command = "holddown"
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;しゃがみ強武器　
[State -1, Crouching Strong slash]
type = ChangeState
value = 400
triggerall = !var(0)
triggerall = command = "s" && command = "holddown"
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;しゃがみ強武器　
[State -1, Crouching Strong slash]
type = ChangeState
value =ifelse(var(1),1260,ifelse(command = "holdDF",1260,420))
triggerall = var(0)
triggerall = command = "s" && command = "holddown"
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;しゃがみ弱キック   レバー斜め後ろ
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "k" && command = "holddown" && command != "holdDF"
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;しゃがみ強キック　 レバー斜め後ろ以外
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "k" && command = "holdDF"
trigger1 = statetype != a && ctrl
trigger2 = stateno = [4005,4010]

;---------------------------------------------------------------------------
;空中弱武器　
[State -1, Jump Light slash]
type = ChangeState
value =ifelse(!var(0),600,ifelse(command != "holddown",1300,ifelse(!var(1),600,610)))
triggerall = command = "w"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;空中中武器　
[State -1, Jump m　slash]
type = ChangeState
value = ifelse(!var(0),600,ifelse(command != "holddown",1330,610))
triggerall = command = "m"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl

;空中強武器　
[State -1, Jump s　slash]
type = ChangeState
value = ifelse(!var(0),600,ifelse(command != "holddown",1360,ifelse(!var(1),620,610)))
triggerall = command = "s"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;空中弱キック　   レバー下要素以外
[State -1, Jump w Kick]
type = ChangeState
value = 630
triggerall = command = "k" && command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = A &&  ctrl

;---------------------------------------------------------------------------
;空中強キック　かじふちレバー下要素
[State -1, Jump ｓ Kick]
type = ChangeState
value = 640
triggerall = command = "k" && command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = A &&  ctrl

;-----------------------------------------回避行動系、モードによって違うので注意、めんどいね
;回避系 回り込み    夢、斬、天
[state -1, dex ground]
type = changestate
value = ifelse(P2bodydist X <= 20 ,900,910)
triggerall = command ="e"  && (!var(1) || var(1) = 3  || var(1) = 4)
triggerall = statetype != A && ctrl 
trigger1 = command = "holdfwd" && (var(1) = 3  || var(1) = 4)
trigger2 = command ="holdF" && !var(1)

;回避系 見きり /ミキリスライド  夢、斬、天,剣
[state -1, dex ground]
type = changestate
value = ifelse(var(1) = 6,915,910)
triggerall = command ="e"  && (!var(1) || var(1) = 3  || var(1) = 4 || var(1) = 6)
triggerall = statetype != A && ctrl
trigger1 = (var(1) = 3 || var(1) = 4) && command != "holdfwd"
trigger2 =  command ="holdB" && !var(1)
trigger3 = var(1) = 6 
trigger3 = command !="holdfwd" && command != "holdback" && command != "holddown"

;回避系 前転と後転 　幻　真 零
[state -1, ]
type = changestate
triggerall = command = "e" &&  (var(1) = 2  || var(1) = 5 || !var(1))
triggerall = statetype != A && ctrl
trigger1 = command = "holdDF"
trigger2 = command = "holdDB"
trigger3 = stateno = [4005,4010]
trigger3 = var(1) = 2
value = 940

;回避系 前方飛び込み   零
[state -1, dex ground]
type = changestate
value = 920
triggerall = command ="e"  && var(1) = 5
trigger1 = command ="holdF"
trigger1 = statetype != A && ctrl

;回避系 下段回避(小じゃんぷ)  夢　真 零 剣
[state -1, dex ground]
type = changestate
value = 925
triggerall = command ="e"  && (!var(1) || var(1) = 2  || var(1) = 5 || var(1) = 6)
triggerall = statetype != A && ctrl
trigger1 = var(1) = 2
trigger1 = command != "holddown" || (command !="holdfwd" && command != "holdback" && command != "holddown")
trigger2 = var(1) = 5
trigger2 = command ="holdB" || (command !="holdfwd" && command != "holdback" && command != "holddown")
trigger3 = !var(1) 
trigger3 = command !="holdfwd" && command != "holdback" && command != "holddown"
trigger4 = var(1) = 6
trigger4 = command ="holdB" || command = "holdF"
trigger5 = stateno = [4005,4010]
trigger5 = var(1) = 2


;回避系 伏せ  夢　真 零　剣
[state -1, dex ground]
type = changestate
value = 930
triggerall = command ="e"  && (!var(1) || var(1) = 2  || var(1) = 5 || var(1) = 6)
triggerall = statetype != A && ctrl
trigger1 = !var(1) || var(1) = 2 || var(1) = 5
trigger1 = command ="holdD"
trigger2 = var(1) = 6
trigger2 = command ="holddown"
trigger3 = stateno = [4005,4010]
trigger3 = var(1) = 2

;--------------------------------------------------共通OK？
;移動起きあがり
[state -1, ]
type = changestate
triggerall = stateno =5120 
triggerall = anim = 5120 + var(0) || anim =5120 + var(0)
triggerall = animelem >= 4
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
value = 950

;三角飛びflag = v(6)  ３かくおり
[state -1, ]
type = changestate
triggerall = !var(6) 
triggerall = statetype = A && ctrl
trigger1 = backedgebodydist < 5 
trigger1 = command = "holdfwd"
trigger2 = frontedgebodydist < 5 
trigger2 = command = "holdback"
value = ifelse(command = "holddown",970,960)

;--------start button-----------------------------------------------------
[State -1, debug only startbutton]
type = ChangeState
value = 4010
triggerall = 0
trigger1 = command = "start"

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = 0;!var(1)
triggerall = command = "start"
trigger1 = statetype != A && ctrl

