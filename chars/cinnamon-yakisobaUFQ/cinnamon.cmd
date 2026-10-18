
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AIスイッチコマンド (59) |--------------------------------------------------------
[Command]
Name = "AI_00"
Command = a, b, c, x, y, z
Time = 0
[Command]
Name = "AI_01"
Command = b, a, c, x, y, z
Time = 0
[Command]
Name = "AI_02"
Command = a, b, c, x, y, z, x
Time = 0
[Command]
Name = "AI_03"
Command = b, a, c, x, y, z, y
Time = 0
[Command]
Name = "AI_04"
Command = a, b, c, x, y, z, z
Time = 0
[Command]
Name = "AI_05"
Command = b, a, c, x, y, z, a, x
Time = 0
[Command]
Name = "AI_06"
Command = a, b, c, x, y, z, a, y
Time = 0
[Command]
Name = "AI_07"
Command = b, a, c, x, y, z, a, z
Time = 0
[Command]
Name = "AI_08"
Command = a, b, c, x, y, z, b, x
Time = 0
[Command]
Name = "AI_09"
Command = b, a, c, x, y, z, b, y
Time = 0
[Command]
Name = "AI_10"
Command = a, b, c, x, y, z, b, z
Time = 0
[Command]
Name = "AI_11"
Command = a, b, c, x, y, z, c, x
Time = 0
[Command]
Name = "AI_12"
Command = b, a, c, x, y, z, c, y
Time = 0
[Command]
Name = "AI_13"
Command = a, b, c, x, y, z, c, z
Time = 0


;超必殺
[Command]
name = "Cup"
command = ~F, B, DB, D, DF, F, x
time = 35

[Command]
name = "Cup"
command = ~F, B, DB, D, DF, F, y
time = 35

[Command]
name = "Cup"
command = ~F, B, DB, D, DF, F, z
time = 35

[Command]
name = "HooversOoover"
command = ~B, DB, D, DF, F, x+y
time = 20

[Command]
name = "HooversOoover"
command = ~B, DB, D, DF, F, y+z
time = 20

[Command]
name = "HooversOoover"
command = ~B, DB, D, DF, F, z+x
time = 20

[Command]
name = "Gokusatsu"
command = ~B, DB, D, DF, F, a+b
time = 20

[Command]
name = "Gokusatsu"
command = ~B, DB, D, DF, F, b+c
time = 20

[Command]
name = "Gokusatsu"
command = ~B, DB, D, DF, F, c+a
time = 20

[Command]
name = "CinnamonHipAttack"
command = ~D, DF, F, D, DF, F, x
time = 22

[Command]
name = "CinnamonHipAttack"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 22

[Command]
name = "CinnamonHipAttack"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 22


;-| Special Motions |------------------------------------------------------
[Command]
name = "cutter_x"
command = ~F, D, DF, x

[Command]
name = "cutter_y"
command = ~F, D, DF, y

[Command]
name = "cutter_z"
command = ~F, D, DF, z

[Command]
name = "CHUMON_x"
command = ~D, DF, F, x

[Command]
name = "CHUMON_y"
command = ~D, DF, F, y

[Command]
name = "CHUMON_z"
command = ~D, DF, F, z

[Command]
name = "DRILL_a"
command = ~D, DF, F, a

[Command]
name = "DRILL_b"
command = ~D, DF, F, b

[Command]
name = "DRILL_c"
command = ~D, DF, F, c


[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "MOCHA"
command = ~D, DB, B, x

[Command]
name = "ESPRESSO"
command = ~D, DB, B, y

[Command]
name = "VegaCinnamon"
command = ~D, DB, B, z

[Command]
name = "CM"
command = ~D, DB, B, a

[Command]
name = "KITTY"
command = ~D, DB, B, b

[Command]
name = "MYMELO"
command = ~D, DB, B, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| 回避 |-----------------------------------------------------------
[Command]
name = "KAIHI"
command = x+a

[Command]
name = "KAIHI"
command = y+b

;-| チャージ |-----------------------------------------------------------
[Command]
name = "Charge"
command = z+c

[Command]
name = "hold_Charge"
command = /$z+c


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "hold_c"
command = /$c
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; State entry

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Cap
;カップのなか（ゲージレベル１）
[State -1, Cup]
type = ChangeState
value = 3100
triggerall = NumHelper < 1
triggerall = command = "Cup"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Hoover's Ooover
;フーバーオーバー（ゲージレベル３）
[State -1, HooversOoover]
type = ChangeState
value = 4000
triggerall = command = "HooversOoover"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Nikkei Shungokusatsu
;偽・瞬獄殺（ゲージレベル３）
[State -1, HooversOoover]
type = ChangeState
value = 4010
triggerall = command = "Gokusatsu"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;シナモンヒップアタック（ゲージレベル１）
[State -1, CinnamonHipAttack]
type = ChangeState
value = 2999
triggerall = command = "CinnamonHipAttack"
triggerall = power >= 2000
triggerall = stateno != [3000,3050]
triggerall = stateno != [1100,1122]
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != 260 ;Except for defense kick
trigger2 = stateno != 221 ;Except for combo kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;
;ファイナルカッター（低）
[State -1, Final Cutter]
type = ChangeState
value = 1100
triggerall = command = "cutter_x"
triggerall = statetype = S  || statetype = C
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;
;ファイナルカッター（中）
[State -1, Final Cutter]
type = ChangeState
value = 1110
triggerall = command = "cutter_y"
triggerall = statetype = S  || statetype = C
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;
;ファイナルカッター（高）
[State -1, Final Cutter]
type = ChangeState
value = 1120
triggerall = command = "cutter_z"
triggerall = statetype = S  || statetype = C
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;
;スイーツ投げ（弱）
[State -1, CHUMON]
type = ChangeState
value = 1000
triggerall = command = "CHUMON_x"
triggerall = Pos Y = 0
triggerall = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;
;スイーツ投げ（中）
[State -1, CHUMON]
type = ChangeState
value = 1010
triggerall = command = "CHUMON_y"
triggerall = Pos Y = 0
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;
;スイーツ投げ（強）
[State -1, CHUMON]
type = ChangeState
value = 1020
triggerall = command = "CHUMON_z"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;
;斬空肉桂波動（弱）
[State -1, Zankuu Nikkei Ken]
type = ChangeState
value = 1300
triggerall = command = "CHUMON_x"
triggerall = statetype = A
triggerall = pos Y <= -20
trigger1 = ctrl

;---------------------------------------------------------------------------
;
;斬空肉桂波動（中）
[State -1, Zankuu Nikkei Ken]
type = ChangeState
value = 1301
triggerall = command = "CHUMON_y"
triggerall = statetype = A
triggerall = pos Y <= -20
trigger1 = ctrl

;---------------------------------------------------------------------------
;
;斬空肉桂波動（強）
[State -1, Zankuu Nikkei Ken]
type = ChangeState
value = 1302
triggerall = command = "CHUMON_z"
triggerall = statetype = A
triggerall = pos Y <= -20
trigger1 = ctrl


;---------------------------------------------------------------------------
;シナモンスクリュー（弱）
[State -1, Spin Kick]
type = ChangeState
value = 250
triggerall = command = "DRILL_a"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl
trigger2 = (stateno = 220) && time > 1
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;シナモンスクリュー（強）
[State -1, Spin Kick]
type = ChangeState
value = 251
triggerall = command = "DRILL_b"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl
trigger2 = (stateno = 220) && time > 1
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;シナモンスクリュー（強）
[State -1, Spin Kick]
type = ChangeState
value = 251
triggerall = command = "DRILL_c"
triggerall = command != "holddown"
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl
trigger2 = (stateno = 220) && time > 1
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact








;---------------------------------------------------------------------------
;耳パンチ（モカ）（ゲージレベル０．５）
[State -1, MOCHA]
type = ChangeState
value = 1200
triggerall = power >= 1000
triggerall = NumHelper < 1
trigger1 = statetype = S
trigger1 = command = "MOCHA"
trigger1= var(1) ;Use combo condition (above)


;---------------------------------------------------------------------------
;ビブラートビーム（エスプレッソ）（ゲージレベル０．５）
[State -1, ESPRESSO]
type = ChangeState
value = 1210
triggerall = NumHelper < 1
triggerall = power >= 1000
triggerall = command = "ESPRESSO"
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;シナモンヘッドプレス(ベガシナモン)（ゲージレベル０．５）
[State -1, Vega Cinnamon]
type = ChangeState
value = 1220
triggerall = command = "VegaCinnamon"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;ＣＭ入り（テレビ）（ゲージレベル１）
[State -1, CM]
type = ChangeState
value = 1230
triggerall = NumHelper < 1
triggerall = power >= 1000
triggerall = command = "CM"
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;御大ビーム（キティ）（ゲージレベル１）
[State -1, KITTY]
type = ChangeState
value = 1240
triggerall = NumHelper < 1
triggerall = power >= 2000
triggerall = command = "KITTY"
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;マイメロと愉快な仲間たち（マイメロディ）（ゲージレベル２）
[State -1, MYMELO]
type = ChangeState
value = 1250
triggerall = power >= 2000
triggerall = command = "MYMELO"
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;空中ダッシュ
[State -1, Dash Air]
type = ChangeState
value = 101
triggerall = stateno != 101
triggerall = stateno != 102
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;空中逆ダッシュ
[State -1, Dash Air]
type = ChangeState
value = 102
triggerall = stateno != 101
triggerall = stateno != 102
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 23
;trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 25
;trigger2 = (p2statetype = S) || (p2statetype = C)


;===========================================================================
;---------------------------------------------------------------------------
;後方回避
[State -1, DODGE FRONT]
type = ChangeState
value = 901
TriggerAll = Var(59) = 0
trigger1 = command = "KAIHI"
trigger1 = command = "holdback"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;前方回避
[State -1, DODGE FRONT]
type = ChangeState
value = 900
TriggerAll = Var(59) = 0
trigger1 = command = "KAIHI"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Charge
;チャージ
[State -1, Charge]
type = ChangeState
value = 990
triggerall = command = "Charge"
triggerall = command != "holddown"
triggerall = Var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl





;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Middle Punch
;立ち中パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 400) && movecontact


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand StrongStrong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 240) && movecontact
trigger4 = (stateno = 410) && movecontact


;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;Standing Middle Kick
;立ち中キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;Standing Middle Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl





;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = Var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
しゃがみ弱パンチ(複)
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ(複)
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
;ヘッドアタック
[State -1, Crouching Strong Punch]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410)
trigger2 = (time > 9) || movecontact

;---------------------------------------------------------------------------
;ヘッドアタック
[State -1, Crouching Strong Punch]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410)
trigger2 = (time > 9) || movecontact ;&& time > 5

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
;[State -1, Crouching Light Kick]
;type = ChangeState
;value = 430
;triggerall = command = "a"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 440
;triggerall = command = "b"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;空中ヘッドアタック
[State -1, Head2]
type = ChangeState
value = 700
triggerall = stateno = 101
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "recovery"
trigger2 = statetype = A
trigger2 = ctrl

;---------------------------------------------------------------------------
;空中ヘッドアタック（追い討ち）
[State -1, Head2]
type = ChangeState
value = 710
triggerall = stateno = 610 ||  stateno = 640 
triggerall = movehit
triggerall = var(52) = 1
trigger1 = command = "z"
trigger1 = statetype = A


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 10
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;空中強パンチ（耳）ｙ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 || stateno = 640
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = stateno = 630


;---------------------------------------------------------------------------
;空中強パンチ（耳）ｚ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 || stateno = 640
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 600
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キックｙ
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking



;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キックｚ
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


