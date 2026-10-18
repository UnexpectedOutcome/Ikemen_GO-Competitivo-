;うづきコマンド
; ボタン配置(右向きの時)
;      U
;   B     F      x y z
;      D         a b c
;LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
;LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
;簡易AI用　人間では入力出来ないコマンドにしておく
[Command] 
name = "AI_1"
command = ~U, D, F, B, x, U, D, F, B, x
time = 1
[Command] 
name = "AI_2"
command = ~U, D, F, B, y, U, D, F, B, x
time = 1
[Command] 
name = "AI_3"
command = ~U, D, F, B, z, U, D, F, B, x
time = 1
[Command] 
name = "AI_4"
command = ~U, D, F, B, a, U, D, F, B, x
time = 1
[Command] 
name = "AI_5"
command = ~U, D, F, B, b, U, D, F, B, x
time = 1
[Command] 
name = "AI_6"
command = ~U, D, F, B, c, U, D, F, B, x
time = 1
[Command] 
name = "AI_7"
command = ~U, F, B, D, x, U, D, F, B, x
time = 1
[Command] 
name = "AI_8"
command = ~U, F, B, D, y, U, D, F, B, x
time = 1
[Command] 
name = "AI_9"
command = ~U, F, B, D, z, U, D, F, B, x
time = 1
[Command]
name = "AI_10"
command = ~U, B, F, D, a, U, D, F, B, x
time = 1
[Command]
name = "AI_11"
command = ~U, B, F, D, b, U, D, F, B, x
time = 1
[Command]
name = "AI_12"
command = ~U, B, F, D, c, U, D, F, B, x
time = 1
[Command]
name = "AI_13"
command = ~U, B, F, D, x, U, D, F, B, x
time = 1
[Command]
name = "AI_14"
command = ~U, B, F, D, y, U, D, F, B, x
time = 1
[Command]
name = "AI_15"
command = ~U, B, F, D, z, U, D, F, B, x
time = 1
[Command]
name = "AI_16"
command = ~D, B, F, U, a, U, D, F, B, x
time = 1
[Command]
name = "AI_17"
command = ~D, B, F, U, b, U, D, F, B, x
time = 1
[Command]
name = "AI_18"
command = ~D, B, F, U, c, U, D, F, B, x
time = 1
[Command]
name = "AI_19"
command = ~D, B, F, U, x, U, D, F, B, x
time = 1
[Command]
name = "AI_20"
command = ~D, B, F, U, y, U, D, F, B, x
time = 1
;LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
;LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

;[ 超必殺技 ]    ; コマンドは違ったものにしてください。
[Command]
name = "magakami"                              ;コマンド名
command = x+y, x+y, x+y                        ;コマンド
time = 30                                      ;「コマンドを30フレーム以内に入力」

[Command]
name = "World"
command = ~x, x, F, a, y
time = 50

[Command]
name = "SuzP"
command = D, B, x
time = 30

[Command]
name = "uzSM"
command = D, F, b
time = 30

[Command]
name = "uzGZ"
command = D, B, a
time = 20

[Command]
name = "uzRave"
command = D, B, y
time = 20

[Command]
name = "uzGF"
command = ~F, D, B, F, x
time = 20

[Command]
name = "powerUP"
command = x+y+a
time = 5
[Command]
name = "powerUP"
command = x+a+b
time = 5

[Command]
name = "powerUP2"
command = x+y+b
time = 5
[Command]
name = "powerUP2"
command = y+a+b
time = 5

;=========================================================

;[ 必殺技 ];コマンドは上から優先。下→右下→右より難しい右→下→右下を上に

[Command]
name = "upper_x1"
command = ~F, D, DF, x
time = 15
[Command]
name = "upper_x2"
command = B, x
time = 15
[Command]
name = "upper_x3"
command = B, y
time = 15

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "atemis"
command = F, x
[Command]
name = "atemic"
command = F, a

[Command]
name = "Z_T"
command = F, b
[Command]
name = "R_F"
command = F, c

[Command]
name = "fall_a"
command = ~B, D, DB, a
[Command]
name = "fall_b"
command = B, b
[Command]
name = "fall_x"
command = ~B, D, DB, x
[Command]
name = "fall_y"
command = ~B, D, DB, y

[Command]
name = "uzP_x"
command = ~D, DF, F, x
[Command]
name = "uzP_y"
command = B, c

[Command]
name = "Akicka"
command = ~D, DB, B, a
[Command]
name = "Akickb"
command = B, a

[Command]
name = "trig_x"
command = ~D, DB, B, x
[Command]
name = "trig_y"
command = B, a

[Command]
name = "HAH"
command = F, s

[Command]
name = "hizi"
command = ~F, B, x
time = 40
[Command]
name = "hizi"
command = ~F, B, y
time = 40

[Command]
name = "MidK"
command = /DF, a
[Command]
name = "UpK"
command = /DF, b

[Command]
name = "Hjump"    
command = D,/$U
time = 10

[Command]
name = "away-f"    
command = /F,x+a
time = 10
[Command]
name = "away-f"    
command = /F,z
time = 10
[Command]
name = "away-b"    
command = /B,x+a
time = 10
[Command]
name = "away-b"    
command = /B,z
time = 10

[Command]
name = "kneee_a"
command = ~50$B, F, a
[Command]
name = "kneee_b"
command = ~50$B, F, b

;=========================================================

;[ 連続押し ]

[Command]
name = "t-com"
command = a+b, x+y
time = 15

[Command]
name = "KK"     
command = a, a
time = 10
[Command]
name = "KK"     
command = b, b
time = 10

[Command]
name = "FF"     
command = ~F, F
time = 9

[Command]
name = "BB"     
command = ~B, B
time = 9

;=========================================================

;[ 同時押し ]

[Command]
name = "recovery"
command = z
time = 1
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "c"
command = y+b
time = 1

[Command]
name = "helper"
command = y+a
time = 1

[Command]
name = "GG"
command = x+b
time = 1

[Command]
name = "power"
command = x+y
time = 1

;=========================================================

;[ 方向とボタン ]

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "Fblock"
command = F
time = 1

[Command]
name = "Dblock"
command = D
time = 1

[Command]
name = "Bblock"
command = B
time = 1

;=========================================================

;[ ボタン設定（いじらない）]

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

;=========================================================

;[ 押しっぱなし設定（いじらない）]

[Command]
name = "chg1"
command = ~60b
time = 139
[Command]
name = "chg2"
command = ~140b
time = 209
[Command]
name = "chg3"
command = ~210b
time = 279
[Command]
name = "chg4"
command = ~280b
time = 1000000

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

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdc"
command = /$c
time = 1



;LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
;ここから下は、上のコマンドを入れた時実行するStateナンバー
[Statedef -1]; ←絶対消さない

;LLLLLLLLLLLLLLLLLLOverDriveLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

[State -1, うづきチェンジ・ザ・ワールド]
type  = ChangeState
value = 4000
triggerall = command = "World"
triggerall = Power >= 3000 && Var(11) = 0
trigger1   = StateType = S && Ctrl
trigger2   = StateNo = [210,231]

;=========================================================

[State -1, うづきオーバードライヴMagakami]
type  = ChangeState
value = 8500
triggerall = command = "holddown" && command = "magakami"
triggerall = Var(11) = 0 && Var(14) = 0 && Var(35) = 0 && Var(47) = 5
triggerall = Life > 0
trigger1   = Ctrl
trigger2   = hitdefattr = SCA, NA && MoveContact
trigger3   = (stateno = [5000,5071]) && GetHitVar(hittime) < 3

[State -1, まがかみフェザーファンネル]
type  = ChangeState
value = 8730
triggerall = command = "uzGF"
triggerall = statetype = A
triggerall = !NumHelper(8731) &&!NumHelper(8732) && !NumHelper(8733) && !NumHelper(8734)
triggerall = Var(35) = 1 && Power >= 1000
trigger1   = Ctrl
trigger2   = (StateNo = [8600,8670]) && movecontact

[State -1, まがかみ強制終了]
type  = ChangeState
value = 8681
triggerall = command = "start" && command = "c"
trigger1   = Var(35) = 1 && Alive && ctrl
trigger1   = (StateNo != 8681)
[State -1, まがかみ肉まんや！]
type  = ChangeState
value = 8680
triggerall = command = "start"
trigger1   = Var(35) = 1 && Alive && ctrl && Power >= 200
trigger1   = (StateNo != 8680)


[State -1, まがかみランチャーストライク]
type  = ChangeState
value = 8700
triggerall = command = "x" && command = "y"
triggerall = statetype = A
triggerall = Var(35) = 1 && Power >= 500
trigger1   = Ctrl
trigger2   = (StateNo = [8600,8670]) && movecontact
[State -1, まがかみランチャーストライク]
type  = ChangeState
value = 8701
triggerall = command = "a" && command = "b"
triggerall = statetype = A
triggerall = Var(35) = 1 && Power >= 500
trigger1   = Ctrl
trigger2   = (StateNo = [8600,8670]) && movecontact

[State -1, まがかみソードストライク]
type  = ChangeState
value = 8710
triggerall = command = "recovery"
triggerall = statetype = A
triggerall = Var(35) = 1 && Power >= 500
trigger1   = Ctrl
trigger2   = (StateNo = [8600,8670]) && movecontact

[State -1, まがかみエールストライク]
type  = ChangeState
value = 8720
triggerall = command = "c"
triggerall = statetype = A
triggerall = Var(35) = 1 && Power >= 500
trigger1   = Ctrl
trigger2   = (StateNo = [8600,8670]) && movecontact

triggerall = StateNo != 100 || StateNo != 860
trigger1   = Ctrl

[State -1, まがかみ投げ]
type  = ChangeState
value = 8800
triggerall = Var(35) = 1 && ctrl && statetype = A
trigger1   = command = "y" && command = "holdfwd"
trigger2   = command = "y" && command = "holdback"

[State -1, まがかみバリアー]
type  = ChangeState
value = 8765
triggerall = command = "holdb" && command = "holdx"
triggerall = power > 0 && Var(35) = 1
trigger1   = movetype= I && Alive && Ctrl


[State -1, まがかみ蹴り上げ]
type  = ChangeState
value = 8640
triggerall = command = "b" && command = "holdup"
triggerall = statetype = A
triggerall = Var(35) = 1 && Alive
trigger1   = Ctrl
trigger2   = (stateno = [8600,8630]) && movecontact
[State -1, まがかみふっとばし攻撃]
type  = ChangeState
value = 8650
triggerall = command = "x" && command = "holdfwd"
trigger1   = Var(35) = 1 && Alive && ctrl
[State -1, まがかみ頭上斬り]
type  = ChangeState
value = 8660
triggerall = command = "a" && command = "holddown"
trigger1   = Var(35) = 1 && Alive && ctrl
[State -1, まがかみ蹴り]
type  = ChangeState
value = 8690
triggerall = command = "b" && command = "holddown"
triggerall = statetype = A
triggerall = Var(35) = 1 && Alive
trigger1   = Ctrl
trigger2   = (stateno = [8600,8640]) && movecontact

[State -1, まがかみカウンター]
type  = ChangeState
value = 8670
triggerall = command = "y"
trigger1   = Var(35) = 1 && Power >= 500
trigger1   = (StateNo = [154,155]) && Time < 6

[State -1, まがかみ弱パンチ]
type  = ChangeState
value = 8600
triggerall = command = "x"
triggerall = Var(35) = 1 && statetype = A && stateno != 105
trigger1   = ctrl
trigger2   = stateno = 8600
trigger2   = time > 7 && movecontact
[State -1, まがかみ強パンチ]
type  = ChangeState
value = 8610
triggerall = command = "y"
triggerall = Var(35) = 1 && statetype = A && stateno != 105
trigger1   = ctrl
trigger2   = stateno = 8600 || stateno = 8620
trigger2   = movecontact
[State -1, まがかみ弱キック]
type  = ChangeState
value = 8620
triggerall = command = "a"
triggerall = Var(35) = 1 && statetype = A && stateno != 105
trigger1   = ctrl
trigger2   = stateno = 8600 && movecontact
[State -1, まがかみ強キック]
type  = ChangeState
value = 8630
triggerall = command = "b"
triggerall = Var(35) = 1 && statetype = A && stateno != 105
trigger1   = ctrl
trigger2   = (stateno = [8600,8620]) && movecontact

;=========================================================

[State -1, うづきオーバードライヴType-M]
type  = ChangeState
value = 8000
triggerall = command = "powerUP"
triggerall = (Var(59) != 1)&&(Var(59) != 4)
triggerall = Var(11) = 0 && Power >= 2000 && P2life > 0
trigger1   = StateType = S && Ctrl
trigger2   = StateNo = [210,211]
trigger3   = hitdefattr = SC, NA && MoveContact

[State -1, うづきオーバードライヴType-R]
type  = ChangeState
value = 8005
triggerall = command = "powerUP2"
triggerall = (Var(59) != 1)&&(Var(59) != 4)
triggerall = Var(11) = 0 && Power >= 2000 && P2life > 0
trigger1   = StateType = S && Ctrl
trigger2   = StateNo = [240,241]
trigger3   = hitdefattr = SC, NA && MoveContact

[State -1, うづきデス]
type  = ChangeState
value = 8050
triggerall = command = "uzGF"
triggerall = Var(11) = 2 && StateType = S
triggerall = StateNo != 100 || StateNo != 860
trigger1   = Ctrl


;LLLLLLLLLLLLLLLLLL超必LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

[State -1, うづき六連突き]
type  = ChangeState
value = 3000
triggerall = command = "SuzP"
triggerall = StateNo != 8050
triggerall = (Power >= 1000) || (Var(11) = 1)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきヘッドオンアタック]
type  = ChangeState
value = 3200
triggerall = command = "uzSM"
triggerall = StateNo != 8050
triggerall = (Power >= 1000) || (Var(11) = 1)
trigger1   = StateType != A && Ctrl
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきゲイザー]
type  = ChangeState
value = 3100
triggerall = command = "uzGZ"
triggerall = StateNo != 8050 && !NumProjID(3100)
triggerall = (Power >= 1000) || (Var(11) = 1)
trigger1   = StateType = S && ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきサバイヴ]
type  = ChangeState
value = 3500
triggerall = command = "uzRave"
triggerall = StateNo != 8050
triggerall = (Power >= 1000) || (Var(11) = 1)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact


;LLLLLLLLLLLLLLLLLL必殺LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

[State -1, うづき突き（弱）]
type  = ChangeState
value = 1000
triggerall = command = "uzP_x"
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづき突き（強）]
type  = ChangeState
value = 1002
triggerall = command = "uzP_y"
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきトリガー（弱）]
type  = ChangeState
value = 1100
triggerall = command = "trig_x"
triggerall = !NumProjID(1100)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづきトリガー（強）]
type  = ChangeState
value = 1110
triggerall = command = "trig_y"
triggerall = !NumProjID(1100)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきスパイラルダイヴ（弱）]
type  = ChangeState
value = 1300
triggerall = command = "Akicka"
triggerall = Var(35) = 0
trigger1   = StateType = A && Ctrl
trigger2   = (StateNo = [600,630]) && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = A, NA, SA && MoveContact
[State -1, うづきスパイラルダイヴ（強）]
type  = ChangeState
value = 1301
triggerall = command = "Akickb"
triggerall = Var(35) = 0
trigger1   = StateType = A && Ctrl
trigger2   = (StateNo = [600,630]) && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = A, NA, SA && MoveContact

;=========================================================

[State -1, うづき落とし]
type  = ChangeState
value = 2100
triggerall = command = "fall_a"
triggerall = !NumProjID(2110) && !NumHelper(2110)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづき落とし]
type  = ChangeState
value = 2101
triggerall = command = "fall_b"
triggerall = !NumProjID(2110) && !NumHelper(2110)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづき落とし]
type  = ChangeState
value = 2102
triggerall = command = "fall_x"
triggerall = !NumProjID(2110) && !NumHelper(2110)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづき落とし]
type  = ChangeState
value = 2103
triggerall = command = "fall_y"
triggerall = !NumProjID(2110) && !NumHelper(2110)
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきニー（弱）]
type  = ChangeState
value = 1400
triggerall = command = "kneee_a"
trigger1   = StateType = S && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづきニー（強）]
type  = ChangeState
value = 1410
triggerall = command = "kneee_b"
trigger1   = StateType = S && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, 最速うづきアッパー]
type  = ChangeState
value = 1505
triggerall = command = "upper_x1"
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづきアッパー（弱）]
type  = ChangeState
value = 1500
triggerall = command = "upper_x2" && command != "upper_x1"
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづきアッパー（弱）]
type  = ChangeState
value = 1501
triggerall = command = "upper_x3" && command != "upper_x2" && command != "upper_x1"
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact


[State -1, うづきアッパー（弱）]
type  = ChangeState
value = 1502
triggerall = command = "upper_x1" || command = "upper_x2" || command = "upper_x3"
triggerall = Var(35) = 0 && StateType = A
trigger1   = Ctrl
trigger2   = (StateNo = [600,630]) && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = A, NA, SA && MoveContact

[State -1, うづきアッパー（強）]
type  = ChangeState
value = 1510
triggerall = command = "upper_y"
trigger1   = StateType != A && Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact
[State -1, うづきアッパー（強）]
type  = ChangeState
value = 1511
triggerall = command = "upper_y"
triggerall = Var(35) = 0 && StateType = A
trigger1   = Ctrl
trigger2   = (StateNo = [600,630]) && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = A, NA, SA && MoveContact

;=========================================================

[State -1, うづきオーバーシュート（最強）]
type  = ChangeState
value = 1203
triggerall = command = "chg4"
triggerall = (stateno != [2000,2001]) && Var(35) = 0
trigger1   = StateType = S || StateType = A
trigger1   = Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SCA, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SCA, NA, SA && movecontact
[State -1, うづきオーバーシュート（強）]
type  = ChangeState
value = 1202
triggerall = command = "chg3"
triggerall = command != "chg4"
triggerall = (stateno != [2000,2001]) && Var(35) = 0
trigger1   = StateType = S || StateType = A
trigger1   = Ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SCA, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SCA, NA, SA && movecontact
[State -1, うづきオーバーシュート（中）]
type  = ChangeState
value = 1201
triggerall = command = "chg2"
triggerall = command != "chg3"
triggerall = (stateno != [2000,2001]) && Var(35) = 0
trigger1   = statetype = S || statetype = A
trigger1   = ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SCA, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SCA, NA, SA && movecontact
[State -1, うづきオーバーシュート（弱）]
type  = ChangeState
value = 1200
triggerall = command = "chg1"
triggerall = command != "chg2"
triggerall = (stateno != [2000,2001]) && Var(35) = 0
trigger1   = statetype = S || statetype = A
trigger1   = ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SCA, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SCA, NA, SA && movecontact


;LLLLLLLLLLLLLLLLLL投げLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

[State -1, うづき当身]
type  = ChangeState
value = 1600
triggerall = command = "atemis"
trigger1   = StateType != A && Ctrl
[State -1, うづき当身]
type  = ChangeState
value = 1650
triggerall = command = "atemic"
trigger1   = StateType != A && Ctrl

;=========================================================

[State -1, 零距離トリガー]
type  = ChangeState
value = 1800
triggerall = command = "Z_T"
trigger1   = statetype = S && stateno != 100 && stateno != 850
trigger1   = Ctrl
[State -1, うづきライズ＆フォール]
type  = ChangeState
value = 1700
triggerall = command = "R_F"
trigger1   = statetype = S && stateno != 100 && stateno != 850
trigger1   = ctrl
trigger2   = StateNo != 241 && StateNo !=440
trigger2   = hitdefattr = SC, NA && MoveContact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA, SA && MoveContact

;=========================================================

[State -1, うづきヘルアンドヘヴン]
type  = ChangeState
value = 2000
triggerall = command = "HAH"
trigger1   = StateNo != 100 && StateNo != 861 && StateNo != 871 && Statetype != A && Ctrl
;trigger1   = TeamMode = Simul        ;TeamMode = (Single,Simul,Turns)

;=========================================================

[State -1, 投げ]
type  = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S && ctrl
triggerall = stateno != 100 && stateno != 861 && stateno != 871
trigger1   = command = "holdfwd"
trigger1   = p2bodydist X < 3 && p2movetype != H
trigger1   = (p2statetype = S) || (p2statetype = C)
trigger2   = command = "holdback"
trigger2   = p2bodydist X < 5 && p2movetype != H
trigger2   = (p2statetype = S) || (p2statetype = C)
[State -1, 空中投げ]
type  = ChangeState
value = 810
triggerall = command = "y" && command = "holdfwd"
trigger1   = Var(35) = 0 && statetype = A
trigger1   = ctrl && stateno != 830 && stateno != 881


;LLLLLLLLLLLLLLLLLL特殊LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

[State -1, 大ジャンプ]
type  = ChangeState
value = 39
triggerall = command = "Hjump"
trigger1   = statetype != A && ctrl

;=========================================================

[State -1, ジャンプ振り向き]
type  = ChangeState
value = 55
triggerall = command = "recovery"
trigger1   = statetype = A && p2bodydist X < 2
trigger1   = stateno = 50 && ctrl

;=========================================================

[State -1, ダッシュ]
type  = ChangeState
value = 100
triggerall = command = "FF"
trigger1   = StateType = S && Ctrl
[State -1, 後ダッシュ]
type  = ChangeState
value = 105
triggerall = command = "BB"
trigger1   = StateType = S && Ctrl

[State -1, 空中前ダッシュ]
type  = ChangeState
value = 500
triggerall = command = "FF"
trigger1   = Var(10) != 1 && Var(35) != 1 && StateType = A
trigger1   = Pos Y <= -46 && Ctrl && StateNo != [500,505]
;trigger1   = PrevStateNo != [500,505];830 && stateno != 835
[State -1, 空中後ダッシュ]
type  = ChangeState
value = 505
triggerall = command = "BB"
trigger1   = Var(10) != 1 && Var(35) != 1 && StateType = A
trigger1   = Pos Y <= -46 && Ctrl && StateNo != [500,505]
;trigger1   = PrevStateNo != [500,505]

;=========================================================

[State -1, 挑発]
type  = ChangeState
value = 199
triggerall = command = "start"
trigger1   = statetype != A && ctrl

;=========================================================

[State -1, うづきゴス]
type  = ChangeState
value = 300
triggerall = command = "x" && command = "holdfwd"
trigger1   = statetype = S && Ctrl
[State -1, 中段パンチ?]
type  = ChangeState
value = 301
triggerall = command = "x" && command = "holdfwd"
triggerall = statetype = S
trigger1   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger2   = (stateno = [200,240]) || (stateno = [400,430])
trigger2   = movecontact

;=========================================================

[State -1, 浮かせキック]
type  = ChangeState
value = 310
triggerall = command = "UpK"
triggerall = statetype != A && stateno != 100
trigger1   = Ctrl
trigger2   = (stateno = [200,240]) || (stateno = [400,430])
trigger2   = movecontact
trigger3   = Var(11) = 1 && hitdefattr = SC, NA && movecontact

;=========================================================

[State -1, スライディング]
type = ChangeState
value = 320
triggerall = command = "b"
trigger1 = stateno = 100 && Time > 2 && Ctrl

;=========================================================

[State -1, ふっとばし攻撃]
type  = ChangeState
value = 350
triggerall = command = "c"
trigger1   = StateType != A && Ctrl
[State -1, 空中ふっとばし攻撃]
type  = ChangeState
value = 360
triggerall = command = "c"
trigger1   = Var(35) != 1 && StateType = A && Ctrl

[State -1, ふっとばしカウンター]
type  = ChangeState
value = 352
triggerall = command = "c"
trigger1   = Var(35) != 1 && StateType != A && Power >= 1000
trigger1   = (StateNo = [150,153]) && Time < 6
[State -1, 空中ふっとばしカウンター]
type  = ChangeState
value = 362
triggerall = command = "c"
trigger1   = Var(35) != 1 && StateType = A && Power >= 1000
trigger1   = (StateNo = [154,155]) && Time < 6

;=========================================================

[State -1, 移動起き上がり前]
type  = ChangeState
value = 510
triggerall = command = "holdfwd"
trigger1   = StateType = L && StateNo = 5120 && Time <=1
[State -1, 移動起き上がり後]
type  = ChangeState
value = 515
triggerall = command = "holdback"
trigger1   = StateType = L && StateNo = 5120 && Time <=1

[State -1, ダウン回避]
type  = Changestate
value = 5201
triggerall = command = "recovery"
trigger1   = Alive = 1 && StateNo = 5100

;=========================================================

[State -1, パワー溜め]
type  = ChangeState
value = 700
triggerall = command = "power"
trigger1   = (Var(59) != 1) && (Var(59) != 4);(Var(59) = 0) || (Var(59) = 2) || (Var(59) = 3) || (Var(59) = 5)
trigger1   = Var(11) = 0 && Var(14) = 0 && Power != 3000
trigger1   = StateType = S && StateNo != 870 && Ctrl

;=========================================================

[State -1, うづきキャンセル]
type  = ChangeState
value = 750
triggerall = command = "GG"
trigger1   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger1   = power >= 500
trigger1   = statetype = S || statetype = C && Var(35) = 0
trigger1   = hitdefattr = SC, NA, SA && movecontact
[State -1, 空中うづきキャンセル]
type  = ChangeState
value = 755
triggerall = command = "GG"
trigger1   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger1   = power >= 500
trigger1   = statetype = A && Var(35) = 0
trigger1   = hitdefattr = A, NA, SA && movecontact

;=========================================================

[State -1, 前避け]
type  = ChangeState
value = 851
triggerall = command = "away-f"
trigger1   = statetype = S && ctrl
[State -1, 後避け]
type  = ChangeState
value = 852
triggerall = command = "away-b"
trigger1   = statetype = S && ctrl
[State -1, 避け]
type  = ChangeState
value = 850
triggerall = command = "recovery"
trigger1   = statetype = S && ctrl
[State -1, ガード避け]
type  = ChangeState
value = 856
triggerall = command = "recovery"
trigger1   = power >= 1000 && Var(35) != 1 && statetype != A && (stateno = [150,153])
trigger1   = Time < 6 

;=========================================================

[State -1, うづきバリアー]
type  = ChangeState
value = 870
triggerall = command != "powerUP2"
triggerall = command = "GG"
triggerall = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
triggerall = Var(35) = 0 && power > 0 && StateNo != 750
triggerall = statetype = S || statetype = C
trigger1   = movetype= I && Ctrl
trigger2   = StateNo = [150,153]
[State -1, 空中うづきバリアー]
type  = ChangeState
value = 871
triggerall = command != "powerUP2"
triggerall = command = "holdb" && command = "holdx"
triggerall = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
triggerall = Var(35) = 0 && power > 0 && statetype = A && StateNo != 755
trigger1   = movetype= I && Ctrl
trigger2   = StateNo = [154,155]

;=========================================================

;ブロキング
[State -1, ブロキングステート移動]
type = HitOverride
triggerall = command = "Fblock"
trigger1   = StateType != A && StateNo = 20 && Time = 0
attr = SA, NA, SA, HA, NP, SP, HP
stateno = 880
time = 4                    ;ブロキング受け付け時間
[State -1, 下ブロキングステート移動]
type = HitOverride
triggerall = command = "Dblock"
trigger1   = StateType != A && StateNo = 10 && Time = 0
attr = SC, NA, SA, HA, NP, SP, HP
stateno = 881
time = 4                    ;ブロキング受け付け時間
[State -1, 空中ブロキングステート移動]
type = HitOverride
triggerall = command = "Fblock"
trigger1   = StateType = A && Var(35) = 0 && Ctrl
attr = SA, NA, SA, HA, NP, SP, HP
stateno = 882
time = 3                    ;ブロキング受け付け時間

;=========================================================

[State -1, ヘルパーやすみ]
type  = ChangeState
value = 900
triggerall = command = "helper"
triggerall = (Var(47) = [1,5]) && Var(35) = 0 && !NumHelper(900) && Alive = 1 && StateType != A
trigger1   = Ctrl
trigger2   = hitdefattr = SC, NA, SA && MoveContact

[State 900,ヘルパーやすみ]
type = Helper
triggerall = command = "helper"
triggerall = (Var(47) = [1,5]) && Var(35) = 0 && !NumHelper(900) && Alive = 1 && StateNo != [3205,3207]
trigger1   = Statetype = A
trigger2   = Statetype = L && Pos Y >= -15 && Pos Y < 0
ID = 900
name = "yasumi"
sprpriority = 4
pos = -30,0
postype = Back
facing = 1
stateno = 901
helpertype = Normal
keyctrl = 0
ownpal = 1

[State 900,ヘルパーやすみ]
type = Helper
triggerall = command = "helper"
triggerall = (var(47) = [1,5]) && Var(35) = 0 && !NumHelper(900) && Alive = 1
trigger1   = StateNo = 801  && AnimElemTime(10)> 2
trigger2   = StateNo = 1610 && AnimElemTime(3) > 2
trigger3   = StateNo = 1711 && AnimElemTime(4) > 2
ID = 900
name = "yasumi"
sprpriority = 4
pos = 300,-140
postype = P2
facing = -1
stateno = 910
helpertype = Normal
keyctrl = 0
ownpal = 1


;LLLLLLLLLLLLLLLLLL通常技LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL

[State -1, 立ち弱パンチ]
type  = ChangeState
value = IfElse(p2bodydist X < 1, 200, 201)
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A
trigger1   = statetype = S && ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [200,201]) || (stateno = 400)       ;弱パンチ
trigger3   = movecontact && time > 8 && Var(14) = 0
trigger4   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger4   = (stateno = [230,231]) || (stateno = 430)
trigger4   = movecontact && Var(14) = 0 && (PrevStateno != [200,201]); && time > 5 

;=========================================================

[State -1, 立ち強パンチ]
type  = ChangeState
value = IfElse(p2bodydist X < 8, 210, 211)
triggerall = command = "y" && command != "holddown"
triggerall = statetype != A
trigger1   = statetype = S && ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [200,201]) || (stateno = [230,231]) || (stateno = 400) || (stateno = 430)
trigger3   = movecontact && Var(14) = 0

;=========================================================

[State -1, 立ち弱キック]
type  = ChangeState
value = IfElse(p2bodydist X < 12, 230, 231)
triggerall = command = "a" && command != "holddown"
triggerall = statetype != A
trigger1   = statetype = S && ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [230,231]) || (stateno = 430)
trigger3   = movecontact && time > 9 && Var(14) = 0
trigger4   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger4   = (stateno = [200,201]) || (stateno = 400)
trigger4   = movecontact && Var(14) = 0 && (PrevStateno != [230,231])

;=========================================================

;立ち強キック
[State -1, Standing Strong Kick]
type  = ChangeState
value = IfElse(p2bodydist X < 6, 240, 241)
triggerall = command = "b" && command != "holddown"
triggerall = statetype != A
trigger1   = statetype = S && ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [200,231]) || (stateno = [400,430])
trigger3   = movecontact && Var(14) = 0

;=========================================================

;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type  = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1   = statetype = C && ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger2   = stateno != 300
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [230,231]) || (stateno = 430)
trigger3   = movecontact && Var(14) = 0 && PrevStateno != 400
trigger4   = (stateno = [200,201]) || (stateno = 400) && Var(14) = 0
trigger4   = movecontact && time > 10

;=========================================================

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type  = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1   = statetype = C && Ctrl
trigger1   = Ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger2   = stateno != 300
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [200,201]) || (stateno = [230,231]) || (stateno = 400) || (stateno = 430)
trigger3   = movecontact && Var(14) = 0

;=========================================================

;しゃがみ弱キック
[State -1, Crouching Light Kick]
type  = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1   = statetype = C && Ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger2   = stateno != 300
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [200,201]) || (stateno = 400) || (stateno = 430)
trigger3   = movecontact && Var(14) = 0 && PrevStateno != 430
trigger4   = (stateno = [230,231]) || (stateno = 430)
trigger4   = movecontact && time > 7

;=========================================================

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type  = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1   = statetype = C && ctrl
trigger2   = Var(11) = 1 && hitdefattr = SC, NA && movecontact
trigger2   = stateno != 300
trigger3   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger3   = (stateno = [200,231]) || (stateno = [400,430])
trigger3   = movecontact && Var(14) = 0

;=========================================================

;空中弱パンチ
[State -1, Jump Light Punch]
type  = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A && stateno != 105
triggerall = Var(35) = 0
trigger1   = ctrl
trigger2   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger2   = hitdefattr = A, NA && MoveHit && Time > 8 && Var(14) = 0
trigger3   = Var(11) = 1 && hitdefattr = SC, NA && movecontact

;=========================================================

;空中強パンチ
[State -1, Jump Strong Punch]
type  = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A && stateno != 105
triggerall = Var(35) = 0
trigger1   = ctrl
trigger2   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger2   = hitdefattr = A, NA && MoveHit && Var(14) = 0
trigger3   = Var(11) = 1 && hitdefattr = SC, NA && movecontact

;=========================================================

;空中弱キック
[State -1, Jump Light Kick]
type  = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A && stateno != 105
triggerall = Var(35) = 0
trigger1   = ctrl
trigger2   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger2   = hitdefattr = A, NA && MoveHit && Var(14) = 0
trigger3   = Var(11) = 1 && hitdefattr = SC, NA && movecontact

;=========================================================

[State -1, 空中強キック]
type  = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A && stateno != 105
triggerall = Var(35) = 0
trigger1   = ctrl
trigger2   = (Var(59) = 1) || (Var(59) = 2) || (Var(59) = 4) || (Var(59) = 5)
trigger2   = hitdefattr = A, NA && MoveHit && Var(14) = 0
trigger3   = Var(11) = 1 && hitdefattr = SC, NA && movecontact

;=========================================================


