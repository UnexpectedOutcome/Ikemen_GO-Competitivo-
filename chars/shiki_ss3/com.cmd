;MC#17 色　さむすぴ風味
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
[Command];てんま1
name = "sp_1"
command = ~D, DB, B, DB, D, F, a
time = 60

[Command];てんま1
name = "sp_2"   
command = ~D, DB, B, DB, D, F, b
time = 60

[Command];色咒
name = "sp_3"   
command = ~D, DB,B, DB, D, F, c
time = 60

[Command];なし
name = "sp_4"   
command = ~F, DF, D, DB, B, F, D, B, x
time = 30

[Command];イノンノィタク
name="sp_5"
command = ~F, D, B, F, y
time = 60

[Command];名称未定/ヌペキカムイシキテ
name = "sp_6"   
command = ~D, DB,B, DB, D, F, z
time = 30

;-| 必殺技 |------------------------------------------------------
[Command];コマンド投げ　（レバー反転の）
name = "ciw"
command = ~D, DB, B, z
time = 25

;-------------------
[Command];てんほうりん
name = "tum_w"
command = ~F, D, DF, a

[Command];てんほうりん
name = "tum_m"
command = ~F, D, DF, b

[Command];てんほうりん
name = "tum_s"
command = ~F, D, DF, c

;-------------
[Command];突進技ー＞派生　の技
name = "qu_w"
command = ~D, DF, F, a

[Command];突進技ー＞派生　の技
name = "qu_m"
command = ~D, DF, F, b

[Command];突進技ー＞派生　の技
name = "qu_s"
command = ~D, DF, F, c

;------------
[Command];回転かかと落とし
name = "DDBB_w"
command = ~D, DB, B, a

;------------
[Command];回転かかと落とし
name = "DDBB_m"
command = ~D, DB, B, b

;------------
[Command];回転かかと落とし
name = "DDBB_s"
command = ~D, DB, B, c

;------------
[Command];ワープ技
name = "DD_w"
command = ~D, D, a

;------------
[Command];ワープ技
name = "DD_m"
command = ~D, D, b

;------------
[Command];ワープ技
name = "DD_s"
command = ~D, D, c

[Command];ワープ技
name = "DD_k"
command = ~D, D, z

[Command];ワープ技
name = "DD_d"
command = ~D, D, y

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
name = "defe"
command = a+b
time = 1

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

[Command]
name = "roll" 
command = /B~
time = 1

[Command]
name = "leap" 
command = /DB~
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
[state -1, sp1 ]; 天魔波旬
type = changestate
value = 3000
triggerall = power >= 1000 && command = "sp_1" 
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, sp2 ]; 天魔波旬 別乱舞
type = changestate
value = 3000
triggerall = power >= 1000 && command = "sp_2" 
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

;--------------------------------------------------------------
[state -1, sp3 ]; 色咒
type = changestate
value = 3400
triggerall = command = "sp_3" && power >= 3000 
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

;=======必殺技====================================================================

;--------------------------------------------
[state -1, cmt1 ]; 無明
type = changestate
value = 2100
triggerall = command = "ciw"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, tum w ]; 修羅　てんほうりん
type = changestate
value = 1000
triggerall = command = "tum_w" && var(1) <= 0
trigger1 = statetype != c && ctrl
trigger2 = stateno = [200,650]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, tum m]; 修羅　てんほうりん
type = changestate
value = 1030
triggerall = command = "tum_m" && var(1) <= 0
trigger1 = statetype != c && ctrl
trigger2 = stateno = [200,650]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, tum s]; 修羅　てんほうりん
type = changestate
value = 1060
triggerall = command = "tum_s" && var(1) <= 0
trigger1 = statetype != c && ctrl
trigger2 = stateno = [200,650]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

;-------------------------------------
[state -1, qu w]; 雫狩 羅刹？
type = changestate
value =1200
triggerall = command = "tum_w" && var(1) > 0
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu m]; 雫狩
type = changestate
value = 1230
triggerall = command = "tum_m" && var(1) > 0
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu s]; 雫狩
type = changestate
value = 1260
triggerall = command = "tum_s" && var(1) > 0
trigger1 = statetype != A && ctrl 
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) 
trigger3 = stateno = [700,720]
trigger3 = var(13)

;-------------------------------------
[state -1, qu w]; 露祓
type = changestate
value =1100
triggerall = command = "qu_w"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu m]; 露祓
type = changestate
value = 1130
triggerall = command = "qu_m"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu s]; 露祓
type = changestate
value = 1160
triggerall = command = "qu_s"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

;-------------------------------------
[state -1, qu w]; 雫狩 派生版？
type = changestate
value =1200
triggerall = command = "a" && var(1) <= 0
trigger1 = stateno =[1120,1160]
trigger1 = movecontact 

[state -1, qu m]; 雫狩
type = changestate
value = 1230
triggerall = command = "b" && var(1) <= 0
trigger1 = stateno =[1120,1160]
trigger1 = movecontact 

[state -1, qu s]; 雫狩
type = changestate
value = 1260
triggerall = command = "c" && var(1) <= 0
trigger1 = stateno =[1120,1160]
trigger1 = movecontact 

;-------------------------------------
[state -1, qu w]; 降臨
type = changestate
value =1300
triggerall = command = "qu_w"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact && var(13) 

[state -1, qu m]; 降臨
type = changestate
value = 1330
triggerall = command = "qu_m"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact && var(13) 

[state -1, qu s]; 降臨
type = changestate
value = 1360
triggerall = command = "qu_s"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact && var(13) 

;-------------------------------------
[state -1, qu w]; 冥華
type = changestate
value =1400
triggerall = command = "DDBB_w"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu m]; 冥華
type = changestate
value = 1430
triggerall = command = "DDBB_m"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu s]; 冥華
type = changestate
value = 1460
triggerall = command = "DDBB_s"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

;-------------------------------------
;-------------------------------------
[state -1, qu w]; ワープ技
type = changestate
value =2000
triggerall = command = "DD_w" && var(1) >= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu m]; ワープ技
type = changestate
value = 2020
triggerall = command = "DD_m" && var(1) >= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu s];ワープ技
type = changestate
value = 2040
triggerall = command = "DD_s" && var(1) >= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu s];ワープ技
type = changestate
value = 2060
triggerall = command = "DD_k" && var(1) >= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)

[state -1, qu s];ワープ技
type = changestate
value = 2080
triggerall = command = "DD_d" && var(1) >= 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,590]
trigger2 = movecontact && var(13) && statetype != A 
trigger3 = stateno = [700,720]
trigger3 = var(13)
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;蹴りボタン投げ
[State -1, K Throw]
type = ChangeState
value = 830
triggerall = command = "z"
triggerall = statetype = S && ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = p2statetype != A 
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 25
trigger2 = p2statetype != A 

;---------------------------------------------------------------------------
;強斬り投げ 
[State -1, z Throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S && ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = p2statetype != A 
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 25
trigger2 = p2statetype != A 

;==通常攻撃=========================================================================
;-----------------------------------------------
;踏み込み　弱武器　ウトゥルサムモムノタク
[State -1, Standing dash wwepon]
type = ChangeState
value = 300
triggerall = 0;!var(0)
triggerall = command = "a" 
triggerall = stateno = 100 && time > 7
trigger1 = statetype = S && ctrl

;踏み込み　中武器　ニシヤサノタク
[State -1, Standing dash mwepon]
type = ChangeState
value = 310
triggerall = 0;!var(0)
triggerall = command = "b" 
triggerall = stateno = 100 && time > 7
trigger1 = statetype = S && ctrl

;踏み込み　強武器　カントテルケノタク
[State -1, Standing dash swepon]
type = ChangeState
value = 320
triggerall = 0;!var(0)
triggerall = command = "c" 
triggerall = stateno = 100 && time > 7
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;踏み込み強キック エエンモムケマ
[State -1, dash　ｓ Kick]
type = ChangeState
value = 340
triggerall = 0;!var(0)
triggerall = command = "z" && command != "holddown"
triggerall = stateno = 100 && time > 7
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;連らね斬り　輪廻1
[State -1, Stand Light slash　lf]
type = ChangeState
value = 500
triggerall = command = "a" && command = "holdF"
triggerall = stateno != 100
trigger1 =  statetype = S && ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact && var(13) && statetype != A 

;連らね斬り　輪廻2
[State -1, Stand Light slash　lf]
type = ChangeState
value = 505
triggerall = command = "a"
trigger1 =  stateno = 500 && movecontact

;連らね斬り　輪廻3
[State -1, Stand Light slash　lf]
type = ChangeState
value = 510
triggerall = command = "a"
trigger1 =  stateno = 505 && movecontact
trigger1 = animelemtime(10) >= 0

;連らね斬り　輪廻4
[State -1, Stand Light slash　lf]
type = ChangeState
value = 515
triggerall = command = "a"
trigger1 =  stateno = 510 && movecontact

;---------------------------------------------------------------------------
;連らね斬り　転生1
[State -1, Stand Light slash　lf]
type = ChangeState
value = 520
triggerall = command = "b" && command = "holdF"
triggerall = stateno != 100
trigger1 =  statetype = S && ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact && var(13) && statetype != A 

;連らね斬り　転生2
[State -1, Stand Light slash　lf]
type = ChangeState
value = 525
triggerall = command = "b"
trigger1 =  stateno = 520 && movecontact

;連らね斬り　転生3
[State -1, Stand Light slash　lf]
type = ChangeState
value = 530
triggerall = command = "b"
trigger1 =  stateno = 525 && movecontact

;連らね斬り　転生4
[State -1, Stand Light slash　lf]
type = ChangeState
value = 535
triggerall = command = "b"
trigger1 =  stateno = 530 && movecontact

;---------------------------------------------------------------------------
;立ち弱武器　遠近　テクサムトゥクノタク
[State -1, Stand Light slash]
type = ChangeState
value = 200
triggerall = command = "a" && command != "holddown"
triggerall = stateno != 100
triggerall = P2bodydist X > 18
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち弱武器　近　テクサムトゥイェノタク　
[State -1, Stand Light slash2]
type = ChangeState
value = 205
triggerall = command = "a" && command != "holddown"
triggerall = stateno != 100
triggerall = P2bodydist X <= 18
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち中武器　遠　エペシモムノタク
[State -1, Stand m slash]
type = ChangeState
value = 210
triggerall = command = "b" && command != "holddown"
triggerall = stateno != 100
triggerall = P2bodydist X > 26 
trigger1 = statetype = S && ctrl

;立ち中武器　近　テクサムトゥイェノタク
[State -1, Stand m slash2]
type = ChangeState
value = 215
triggerall = command = "b" && command != "holddown"
triggerall = stateno != 100
triggerall= P2bodydist X <= 25
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強武器　遠　ルヤンペヤサエムシ/ニシペレエムシ
[State -1, Stand high slash]
type = ChangeState
value = 220
triggerall = command = "c" && command != "holddown"
triggerall = stateno != 100
triggerall = P2bodydist X > 35 
trigger1 = statetype = S &&  ctrl

;立ち強武器　近　モヨンネレラノタク/ラメトクコルクルエムシ
[State -1, Stand high slash2]
type = ChangeState
value = 225
triggerall = command = "c" && command != "holddown"
triggerall = stateno != 100
triggerall= P2bodydist X <= 35
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち蹴り　ニュートラルキック　ニシテルケチキリ
[State -1, Standing Strong Kick n]
type = ChangeState
value = 230
triggerall = command = "z" && command != "holddown" && command != "holdfwd"
triggerall = stateno != 100
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち蹴りレバー入れ　　中段かかと落とし　不意打ち？　　モシリモムチキリ
[State -1, Standing Strong Kick f]
type = ChangeState
value = 240
triggerall = command = "z" && command != "holddown" && command = "holdfwd"
triggerall = stateno != 100
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱武器　ケマトゥイェノタク　
[State -1, Crouching Light slash]
type = ChangeState
value = 400
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ中武器　ケマトゥイエノタク　
[State -1, Crouching mslash]
type = ChangeState
value = 410
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ強武器　チキリニセノタク/カリプヌイエエムシ
[State -1, Crouching Strong slash]
type = ChangeState
value = 420
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック エエンケマ   レバー斜め後ろ
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "z" && command = "holddown" && command = "holdback"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 430 && animelemtime(4) >= 2

;---------------------------------------------------------------------------
;しゃがみ強キック　カントトゥカンウケマ レバー斜め後ろ以外
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "z"&& command = "holddown" && command != "holdback"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;空中弱武器　ニシアシノタク
[State -1, Jump Light slash]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;空中中武器　レラトゥイェノタク
[State -1, Jump m　slash]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl

;空中強武器　カントヤサエムシ
[State -1, Jump s　slash]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;空中弱キック　ニシアシケマ   レバー下要素以外
[State -1, Jump w Kick]
type = ChangeState
value = 630
triggerall = command = "z" && command != "holddown"
triggerall = stateno != 105
trigger1 = statetype = A &&  ctrl

;---------------------------------------------------------------------------
;空中強キック　ニシヤサケマ/カムイフムケスプ　レバー下要素
[State -1, Jump ｓ Kick]
type = ChangeState
value = 640
triggerall = 0;!var(0)
triggerall = command = "z" && command = "holddown"
triggerall = stateno != 105
trigger1 = statetype = A &&  ctrl

;回避系 回り込み
[state -1, dex ground]
type = changestate
value = 900
triggerall = !var(0)
triggerall = command ="y" || command = "defe"
triggerall= P2bodydist X <= 20 && p2statetype != A
trigger1 = statetype != A && ctrl
trigger1 = command !="holdback"
trigger2 = statetype != A && ctrl
trigger2 = command ="holdfwd"

;回避系 見きり
[state -1, dex ground]
type = changestate
value = 910
triggerall = !var(0)
triggerall = command ="y" || command = "defe"
trigger1= P2bodydist X <= 20
trigger1 = command ="holdback"
trigger1 = statetype != A && ctrl
trigger2 = statetype != A && ctrl

;移動起きあがり
[state -1, ]
type = changestate
triggerall = stateno =5110
triggerall = anim = [5110,5112]
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
value = 950

;三角飛びflag = v(6)
[state -1, ]
type = changestate
triggerall = !var(6)
triggerall = statetype = A && ctrl
triggerall = command != "holddown"
trigger1 = backedgebodydist < 5 
trigger1 = command = "holdfwd"
trigger2 = frontedgebodydist < 5 
trigger2 = command = "holdback"
value = 960

;--------start button-----------------------------------------------------
[State -1, debug only startbutton]
type = ChangeState
value = 400      ;
triggerall = 0
trigger1 = command = "start"

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl

