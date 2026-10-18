;var
;0 = ランダム
;1 = 立ちアニメ切り替え
;2 = 空中前方ダッシュ回数制限
;3 = 空中後方ダッシュ回数制限
;4 = フォルネウスon/offスイッチ
;5 = フォルネウス行動スイッチ
;6 = プレスターン設定
;7 = フォルネウス体力設定
;8 = プレスターン管理
;9 = 根性値
;10= フォルネウス復帰設定
;11= フォルネウス復帰管理
;12= フォルネウス攻撃設定
;15= 派生技始動ボタン認識
;16= ２段ジャンプ管理
;17= プレスターン暴発防止用
;20= AI行動パターン
;21= AI用（ヘルパー数チェック）
;22= AI用（Proj数チェック）
;23= AI用（相手位置【screenpos X】チェック）
;24= AI用（フォルネウス位置【screenpos X】チェック）
;25= AI用（空弱 ヒット有無チェック）
;26= AI用（食らい中の時間カウント）
;27= AI用（回転弱ヒット確認）
;57= プレスターン保持数管理
;58= フォルネウス体力管理
;59= AIスイッチ

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

[Defaults]
command.time = 30  
command.buffer.time = 1 

[Command]
Name = "AI_00"
Command = a, a, a, a, a, a 
Time = 0　　　　

[Command]
Name = "AI_01"
Command = a, a, a, a, a, b
Time = 0

[Command]
Name = "AI_02"
Command = a, a, a, a, b, b 
Time = 0　　　　

[Command]
Name = "AI_03"
Command = a, a, a, b, b, b
Time = 0

[Command]
Name = "AI_04"
Command = a, a, b, b, b, b 
Time = 0　　　　

[Command]
Name = "AI_05"
Command = a, b, b, b, b, b
Time = 0

[Command]
Name = "AI_06"
Command = b, b, b, b, b, b 
Time = 0　　　　

[Command]
Name = "AI_07"
Command = b, b, b, b, b, a
Time = 0

[Command]
Name = "AI_08"
Command = b, b, b, b, a, a
Time = 0　　　　

[Command]
Name = "AI_09"
Command = b, b, b, a, a, a
Time = 0

[Command]
Name = "AI_10"
Command = b, b, a, a, a, a
Time = 0　　　　

[Command]
Name = "AI_11"
Command = b, a, a, a, a, a
Time = 0

[Command]
Name = "AI_12"
Command = b, b, b, b, a, b 
Time = 0　　　　

[Command]
Name = "AI_13"
Command = b, b, b, a, b, b
Time = 0

[Command]
Name = "AI_14"
Command = b, b, a, b, b, b 
Time = 0　　　　

[Command]
Name = "AI_15"
Command = b, a, b, b, b, b
Time = 0

[Command]
Name = "AI_16"
Command = b, b, b, b, a, a
Time = 0　　　　

[Command]
Name = "AI_17"
Command = b, b, b, a, b, a
Time = 0

[Command]
Name = "AI_18"
Command = b, b, a, b, b, a 
Time = 0　　　　

[Command]
Name = "AI_19"
Command = b, a, b, b, b, a
Time = 0

[Command]
Name = "AI_20"
Command = a, b, b, b, b, a 
Time = 0　　　　

[Command]
Name = "AI_21"
Command = a, a, b, b, b, b
Time = 0

[Command]
Name = "AI_22"
Command = a, b, a, b, b, b 
Time = 0　　　　

[Command]
Name = "AI_23"
Command = a, b, b, a, b, b
Time = 0

[Command]
Name = "AI_24"
Command = a, b, b, b, a, b 
Time = 0　　　　

[Command]
Name = "AI_25"
Command = a, b, b, b, b, a
Time = 0

[Command]
Name = "AI_26"
Command = a, b, a, b, a, a 
Time = 0　　　　

[Command]
Name = "AI_27"
Command = a, b, a, b, a, b
Time = 0

[Command]
Name = "AI_28"
Command = a, b, b, b, a, b 
Time = 0　　　　

[Command]
Name = "AI_29"
Command = a, a, a, a, b 
Time = 0

[Command]
Name = "AI_30"
Command = a, a, a, b, b
Time = 0　　　　

[Command]
Name = "AI_31"
Command = a, a, b, b, b
Time = 0

[Command]
Name = "AI_32"
Command = a, b, b, b, b
Time = 0　　　　

[Command]
Name = "AI_33"
Command = b, b, b, b, b
Time = 0

[Command]
Name = "AI_34"
Command = a, a, a, a, a
Time = 0　　　　

[Command]
Name = "AI_35"
Command = b, a, a, a, a
Time = 0

[Command]
Name = "AI_36"
Command = b, b, a, a, a
Time = 0　　　　

[Command]
Name = "AI_37"
Command = b, b, b, a, a
Time = 0

[Command]
Name = "AI_38"
Command = b, b, b, b, a
Time = 0　　　　

[Command]
Name = "AI_39"
Command = b, a, a, a, b
Time = 0

[Command]
Name = "AI_40"
Command = a, b, b, b, a
Time = 0　　　　

[Command]
Name = "AI_41"
Command = b, a, b, a, b
Time = 0

[Command]
Name = "AI_42"
Command = a, b, a, b, a 
Time = 0　　　　

[Command]
Name = "AI_43"
Command = a, b, b, b, a
Time = 0

[Command]
Name = "AI_44"
Command = b, a, a, a, b 
Time = 0　　　　

[Command]
Name = "AI_45"
Command = b, b, a, b, b
Time = 0

[Command]
Name = "AI_46"
Command = a, a, b, a, a 
Time = 0　　　　

[Command]
Name = "AI_47"
Command = a, a, a, a, a, a, a
Time = 0

[Command]
Name = "AI_48"
Command = b, a, a, a, a, a, a 
Time = 0　　　　

[Command]
Name = "AI_49"
Command = b, b, a, a, a, a, a
Time = 0

[Command]
Name = "AI_50"
Command = b, b, b, a, a, a, a
Time = 0　

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

[Command]
name = "recovery" ;必須コマンド名
command = x+y
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
time = 45

[Command]
name = "a+b"
command = a+b
time = 45

[Command]
name = "b+c"
command = b+c
time = 45

[Command]
name = "c+x"
command = c+x
time = 45

[Command]
name = "down_c+x"
command = /$D,c+x
time = 45

[Command]
name = "FDB-c+x"
command = ~F, D, B, c+x
time = 45

[Command]
name = "DFDF-c+x"
command = ~D, F, D, F, c+x
time = 45

[Command]
name = "FDDF-c+x"
command = ~F, D, DF, c+x
time = 45

[Command]
name = "BDF-a"
command = ~B, D, F, a
time = 45

[Command]
name = "BDF-b"
command = ~B, D, F, b
time = 45

[Command]
name = "BDF-c"
command = ~B, D, F, c
time = 45

[Command]
name = "DB-a"
command = ~D, B, a
time = 45

[Command]
name = "DB-b"
command = ~D, B, b
time = 45

[Command]
name = "DB-c"
command = ~D, B, c
time = 45

[Command]
name = "FDDF-a"
command = ~F, D, DF, a
time = 45

[Command]
name = "FDDF-b"
command = ~F, D, DF, b
time = 45

[Command]
name = "FDDF-c"
command = ~F, D, DF, c
time = 45

[Command]
name = "down_attack_light"
command = /$D, a
time = 1

[Command]
name = "down_attack_medium"
command = /$D, b
time = 1

[Command]
name = "down_attack_hard"
command = /$D, c
time = 1

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

;----------------------------------------------------------

[Statedef -1] 
[State -1, 二段ジャンプ]
type = ChangeState
value = 45
TriggerAll = Var(59) = 0
TriggerAll = Var(2) = 0
triggerall = var(16) = 0
trigger1 = command = "holdup"
trigger1 = stateno = 100
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 51
trigger2 = ctrl
trigger3 = command = "holdup"
trigger3 = stateno = 105
trigger3 = ctrl

[State -1, ダッシュ]
type = ChangeState
value = 100
TriggerAll = Var(59) = 0
triggerAll = command = "FF"
triggerAll = statetype = S
trigger1 = ctrl

[State -1, 空中ダッシュ]
type = ChangeState
value = 101
TriggerAll = Var(59) = 0
TriggerAll = Var(2) = 0
triggerAll = command = "FF"
triggerAll = statetype = A
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
TriggerAll = Var(59) = 0
triggerAll = command = "BB"
triggerAll = statetype = S
trigger1 = ctrl

[State -1, 空中バックステップ]
type = ChangeState
value = 107
TriggerAll = Var(59) = 0
TriggerAll = Var(3) = 0
TriggerAll = command = "BB"
triggerAll = statetype = A
trigger1 = ctrl

[state -1,　メギド]
type = changestate
value = 4000
triggerall = var(59) = 0
triggerall = command = "DFDF-c+x"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1,　ペトラアイ]
type = changestate
value = 4300
triggerall = var(59) = 0
triggerall = command = "FDB-c+x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1,　流星]
type = changestate
value = 4100
triggerall = var(59) = 0
triggerall = command = "FDDF-c+x"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact

[state -1,　プレスターン]
type = changestate
value = 2500
triggerall = var(59) = 0
triggerall = command = "a+b"
triggerall = var(4) = 0
triggerall = var(17) >= 20
triggerall = var(57) >= 1
triggerall = prevstateno != 2500
triggerall = stateno != 810 
triggerall = stateno != 4000
triggerall = stateno != 4100
triggerall = stateno != 4200
triggerall = stateno != [4300,4311]
trigger1 = alive = 1
ctrl = 1

[state -1,　テトラカーン]
type = changestate
value = 4200
triggerall = var(59) = 0
triggerall = command = "down_c+x"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, 立ちスキル]
type = ChangeState
value = 2000
TriggerAll = Var(59) = 0
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl


[state -1, 回転（弱）]
type = ChangeState
value = 1000
TriggerAll = Var(59) = 0
triggerall = command = "FDDF-a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, 回転（中）]
type = ChangeState
value = 1010
TriggerAll = Var(59) = 0
triggerall = command = "FDDF-b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, 回転（強）]
type = ChangeState
value = 1020
TriggerAll = Var(59) = 0
triggerall = command = "FDDF-c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact


[state -1, スピンターン（弱）]
type = changestate
value = 1400
TriggerAll = Var(59) = 0
triggerall = command = "BDF-a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, スピンターン（中）]
type = changestate
value = 1410
TriggerAll = Var(59) = 0
triggerall = command = "BDF-b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, スピンターン（強）]
type = changestate
value = 1420
TriggerAll = Var(59) = 0
triggerall = command = "BDF-c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact


[state -1, 派生技始動-a]
type = changestate
value = 1100
TriggerAll = Var(59) = 0
triggerall = command = "DB-a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, 派生技始動-b]
type = changestate
value = 1110
TriggerAll = Var(59) = 0
triggerall = command = "DB-b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, 派生技始動-c]
type = changestate
value = 1120
TriggerAll = Var(59) = 0
triggerall = command = "DB-c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = anim = 400
trigger4 = movecontact
trigger5 = stateno = [410,412]
trigger5 = movecontact

[state -1, 派生技-a]
type = changestate
value = 1150
TriggerAll = Var(59) = 0
triggerall = command = "a"
trigger1 = stateno = 1130

[state -1, 派生技-b]
type = changestate
value = 1200
TriggerAll = Var(59) = 0
triggerall = command = "b"
trigger1 = stateno = 1130

[state -1, 派生技-c]
type = changestate
value = 1250
TriggerAll = Var(59) = 0
triggerall = command = "c"
trigger1 = stateno = 1130

[state -1, 派生技-x]
type = changestate
value = 1300
TriggerAll = Var(59) = 0
triggerall = command = "x"
trigger1 = stateno = 1130

[state -1, 投げ]
type = changestate
value = 800
triggerall = var(59) = 0
trigger1 = command = "b+c"
trigger1 = statetype = S
trigger1 = ctrl

[state -1, 屈み弱]
type = ChangeState
value = 400
TriggerAll = Var(59) = 0
triggerall = command != "a+b"
triggerall = command = "down_attack_light"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = statetype = C
trigger3 = stateno = 400
trigger3 = movecontact

[state -1, 立ち弱]
type = ChangeState
value = 200
TriggerAll = Var(59) = 0
triggerall = command != "a+b"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = time >= 6

[state -1, 屈み中]
type = ChangeState
value = 410
TriggerAll = Var(59) = 0
triggerall = command != "a+b"
triggerall = command = "down_attack_medium"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = statetype = C
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = statetype = S
trigger4 = stateno = 210
trigger4 = movecontact

[state -1, 立ち中]
type = ChangeState
value = 210
TriggerAll = Var(59) = 0
triggerall = command != "a+b"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

[state -1, 屈み大]
type = ChangeState
value = 420
TriggerAll = Var(59) = 0
triggerall = command = "down_attack_hard"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = statetype = S
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = statetype = C
trigger4 = stateno = [410,412]
trigger4 = movecontact

[state -1, 立ち大]
type = ChangeState
value = 220
TriggerAll = Var(59) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = statetype = S
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = statetype = C
trigger4 = stateno = [410,412]
trigger4 = movecontact

[state -1, ジャンプ弱]
type = ChangeState
value = 600
TriggerAll = Var(59) = 0
triggerall = command = "a"
triggerall = command != "a+b"
trigger1 = statetype = A
trigger1 = ctrl

[state -1, ジャンプ中]
type = ChangeState
value = 610
TriggerAll = Var(59) = 0
triggerall = command = "b"
triggerall = command != "a+b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno = 600
trigger2 = movecontact

[state -1, ジャンプ大２]
type = ChangeState
value = 630
TriggerAll = Var(59) = 0
triggerall = command = "down_attack_hard"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = stateno = 610
trigger3 = movecontact

[state -1, ジャンプ大１]
type = ChangeState
value = 620
TriggerAll = Var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = stateno = 610
trigger3 = movecontact

[state -1, ジャンプスキル]
type = ChangeState
value = 640
TriggerAll = Var(59) = 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl







;-----------------------------------以下AI関連-----------------------------------------
[State -1, AI]
Type = VarSet
TriggerAll = Var(59) = 0
TriggerAll = RoundState = [1,2]
Trigger1 = Command = "AI_00"
Trigger2 = Command = "AI_01"
Trigger3 = Command = "AI_02"
Trigger4 = Command = "AI_03"
Trigger5 = Command = "AI_04"
Trigger6 = Command = "AI_05"
Trigger7 = Command = "AI_06"
Trigger8 = Command = "AI_07"
Trigger9 = Command = "AI_08"
Trigger10 = Command = "AI_09"
Trigger11 = Command = "AI_10"
Trigger12 = Command = "AI_11"
Trigger13 = Command = "AI_12"
Trigger14 = Command = "AI_13"
Trigger15 = Command = "AI_14"
Trigger16 = Command = "AI_15"
Trigger17 = Command = "AI_16"
Trigger18 = Command = "AI_17"
Trigger19 = Command = "AI_18"
Trigger20 = Command = "AI_19"
Trigger21 = Command = "AI_20"
Trigger22 = Command = "AI_21"
Trigger23 = Command = "AI_22"
Trigger24 = Command = "AI_23"
Trigger25 = Command = "AI_24"
Trigger26 = Command = "AI_25"
Trigger27 = Command = "AI_26"
Trigger28 = Command = "AI_27"
Trigger29 = Command = "AI_28"
Trigger30 = Command = "AI_29"
Trigger31 = Command = "AI_30"
Trigger32 = Command = "AI_31"
Trigger33 = Command = "AI_32"
Trigger34 = Command = "AI_33"
Trigger35 = Command = "AI_34"
Trigger36 = Command = "AI_35"
Trigger37 = Command = "AI_36"
Trigger38 = Command = "AI_37"
Trigger39 = Command = "AI_38"
Trigger40 = Command = "AI_39"
Trigger41 = Command = "AI_40"
Trigger42 = Command = "AI_41"
Trigger43 = Command = "AI_42"
Trigger44 = Command = "AI_43"
Trigger45 = Command = "AI_44"
Trigger46 = Command = "AI_45"
Trigger47 = Command = "AI_46"
Trigger48 = Command = "AI_47"
Trigger49 = Command = "AI_48"
Trigger50 = Command = "AI_49"
Trigger51 = Command = "AI_50"
V = 59
Value = 1

[State -1]
Type = DisplayToClipboard
Trigger1 = 1
Text = "AI:%d, AI:%d, AI:%d, Pos X:%f, Pos Y:%f"
Params = var(26), var(28), var(24), P2BodyDist X, P2BodyDist Y
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
type = ctrlset
trigger1 = roundstate < 2
value = 0

;-----------------------------------FORNEUS(ON)AI-----------------------------------------
[state -1]
type = VarSet
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = var(20) = 0
trigger1 = var(0) = [0,300]
sysvar(1) = 0

[state -1]
type = VarSet
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = var(20) = 0
trigger1 = var(0) = [301,650]
sysvar(1) = 1

[state -1]
type = VarSet
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = var(20) = 0
trigger1 = var(0) = [651,1000]
sysvar(1) = -1

[state -1,　テトラカーン]
type = changestate
value = 4200
triggerall = var(59) = 1
triggerall = var(4) = 1
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = power >= 4000
trigger1 = var(20) = 0
trigger1 = var(0) = [0,250]
trigger1 = ctrl
trigger1 = numhelper(4200) = 0
trigger2 = power >= 4500
trigger2 = var(20) = 1
trigger2 = var(0) = [0,250]
trigger2 = ctrl
trigger2 = numhelper(4200) = 0
trigger3 = power >= 4000
trigger3 = var(20) = 2
trigger3 = var(0) = [0,500]
trigger3 = ctrl
trigger3 = numhelper(4200) = 0

[state -1,　ペトラアイ]
type = changestate
value = 4300
triggerall = var(59) = 1
triggerall = var(4) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = numhelper(4200) != 0
trigger1 = helper(4200),stateno = 4230
trigger1 = P2BodyDist X = [0,75]
trigger1 = P2BodyDist y = [-100,0]
trigger2 = power >= 2500
trigger2 = var(0) = [950,1000]
trigger2 = ctrl
trigger2 = P2BodyDist X = [0,75]
trigger2 = P2BodyDist y = [-100,0]
trigger2 = enemynear,statetype != L
trigger2 = enemynear,stateno != 5030
trigger3 = var(20) = 2
trigger3 = ctrl
trigger3 = numhelper(4200) != 0
trigger3 = helper(4200),stateno = 4230
trigger3 = P2BodyDist X = [0,75]
trigger3 = P2BodyDist y = [-100,0]
trigger4 = var(0) = [0,250]
trigger4 = enemynear,stateno = 3115
trigger4 = ctrl
trigger4 = P2BodyDist X = [0,75]
trigger4 = P2BodyDist y = [-150,0]
trigger4 = enemynear,time = [10,15]

[state -1,　メギド]
type = changestate
value = 4000
triggerall = var(59) = 1
triggerall = var(4) = 1
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = power >= 2000
trigger1 = var(20) = 0
trigger1 = var(0) = [0,200]
trigger1 = ctrl
trigger2 = power >= 3000
trigger2 = var(20) = 1
trigger2 = var(0) = [0,50]
trigger2 = ctrl

[state -1,　流星]
type = changestate
value = 4100
triggerall = var(59) = 1
triggerall = var(4) = 1
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = power >= 2500
trigger1 = var(20) = 0
trigger1 = var(0) = [0,250]
trigger1 = pos y < -150
trigger1 = P2BodyDist X = [0,100]
trigger1 = enemynear,pos y > pos y
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger2 = power >= 2500
trigger2 = var(20) = 1
trigger2 = var(0) = [0,500]
trigger2 = stateno = [105,107]
trigger2 = time = 15
trigger2 = ctrl
trigger2 = enemynear,statetype != L
trigger2 = P2BodyDist X = [0,100]
trigger2 = enemynear,pos y > pos y
trigger3 = power >= 1000
trigger3 = var(20) = 3
trigger3 = var(0) = [0,250]
trigger3 = stateno = 620
trigger3 = movehit
trigger3 = hitcount = 4

[state -1, 立ちスキル]
type = ChangeState
value = 2000
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
trigger1 = var(0) = [0,500]
trigger1 = ctrl
Trigger1 = Enemy,Numhelper > var(21)
trigger1 = P2BodyDist X > 50
trigger2 = var(0) = [0,500]
trigger2 = ctrl
Trigger2 = Enemy,NumProj > var(22)
trigger2 = P2BodyDist X > 50
trigger3 = var(0) = [0,800]
trigger3 = numhelper(4200) >= 1
trigger3 = ctrl
trigger3 = P2BodyDist X > 50

[State -1]
Type = ChangeState
Value = 120
TriggerAll = Var(59) = 1
TriggerAll = Ctrl
triggerall = var(4) = 1
Trigger1 = InGuardDist
Trigger1 =! EnemyNear,HitDefAttr = ,NT,ST,HT
Trigger1 = Random = [0,950]
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger2 = InGuardDist
Trigger2 = Random = [0,950]

[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = numhelper(3000) >= 1
TriggerAll = Var(59) = 1
triggerAll = statetype = S
triggerall = var(4) = 1
trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = facing =helper(3000),facing  
trigger1 = helper(3000),stateno != [3990,3999] 
trigger2 = var(20) = 1
trigger2 = ctrl
trigger3 = var(20) = 3
trigger3 = ctrl
trigger3 = P2BodyDist X > 30
trigger3 = enemynear,stateno != 5030
trigger4 = var(20) = 3
trigger4 = ctrl
trigger4 = enemynear,stateno = [5070,5150]
trigger4 = BackEdgeBodyDist < 30
trigger4 = p2bodydist x = [0,30]

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = numhelper(3000) >= 1
TriggerAll = Var(59) = 1
triggerAll = statetype = S
triggerall = var(4) = 1
trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = facing !=helper(3000),facing 
trigger1 = BackEdgeBodyDist > 30
trigger1 = helper(3000),stateno != [3990,3999]
trigger2 = var(20) = 3
trigger2 = ctrl
trigger2 = enemynear,stateno = [5070,5150]
trigger2 = BackEdgeBodyDist >= 30
trigger2 = p2bodydist x = [0,30]

[State -1, 二段ジャンプ]
type = ChangeState
value = 45
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
TriggerAll = Var(2) = 0
triggerall = var(16) = 0
trigger1 = var(20) = 0
trigger1 = stateno = [105,107]
trigger1 = time >= 15
trigger1 = ctrl

[State -1, 空中ダッシュ]
type = ChangeState
value = 101
triggerall = numhelper(3000) >= 1
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
TriggerAll = Var(2) = 0
triggerAll = statetype = A
trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = time >= 20
trigger1 = var(16) = 1
trigger1 = facing =helper(3000),facing 
trigger1 = helper(3000),stateno != [3990,3999] 
trigger2 = var(20) = 1
trigger2 = stateno = [105,107]
trigger2 = time >= 30
trigger2 = ctrl

[State -1, 空中バックステップ]
type = ChangeState
value = 107
triggerall = numhelper(3000) >= 1
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
TriggerAll = Var(3) = 0
triggerAll = statetype = A
trigger1 = var(20) = 0
trigger1 = stateno = 51
trigger1 = P2BodyDist X < 80
trigger1 = ctrl
trigger2 = stateno = 50
trigger2 = time >= 20
trigger2 = var(20) = 0
trigger2 = var(16) = 1
trigger2 = ctrl
trigger2 = BackEdgeBodyDist > 30
Trigger3 = var(20) = 1
trigger3 = ctrl
trigger3 = prevstateno = 610
Trigger4 = var(20) = 1
trigger4 = ctrl
trigger4 = prevstateno = 600

[State -1, 前進]
type = ChangeState
value = 20
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = Var(20) = 2
trigger1 = P2BodyDist X > 50
trigger1 = enemynear,statetype != A
trigger1 = ctrl

[state -1, 回転（弱）]
type = ChangeState
value = 1000
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = var(0) = [0,300]
trigger1 = stateno = [410,412]
trigger1 = movehit
Trigger2 = var(20) = 2
trigger2 = stateno = 210
trigger2 = movehit
trigger2 = time >= 12
trigger2 = P2BodyDist X < 45
trigger2 = P2BodyDist Y <= -10
Trigger3 = var(20) = 2
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = P2BodyDist X < 45
trigger3 = P2BodyDist Y <= -10

[state -1, 回転（中）]
type = ChangeState
value = 1010
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = stateno = 210
trigger1 = movehit
trigger1 = time >= 12
trigger1 = P2BodyDist X > 45
trigger1 = P2BodyDist Y <= -10
Trigger2 = var(20) = 2
trigger2 = var(0) = [0,200]
trigger2 = ctrl
trigger2 = enemynear,statetype = A
trigger2 = P2BodyDist X > 45
trigger2 = P2BodyDist Y <= -10

[state -1, スピンターン（弱）]
type = changestate
value = 1400
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = var(0) = [601,800]
trigger1 = stateno = [410,412]
trigger1 = moveguarded

[state -1, スピンターン（中）]
type = changestate
value = 1410
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = var(0) = [301,600]
trigger1 = stateno = [410,412]
trigger1 = movehit

[state -1, 派生技始動-a]
type = changestate
value = 1100
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(20) = 0
trigger1 = P2BodyDist X > 100
Trigger1 = Enemy,Numhelper = var(21) || Enemy,NumProj = var(22)
Trigger2 = var(20) = 2
trigger2 = var(0) = [801,1000]
trigger2 = stateno = [410,412]
trigger2 = moveguarded
Trigger3 = var(20) = 2
trigger3 = var(0) = [0,500]
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = time >= 12
trigger3 = P2BodyDist Y = [-30,0]
trigger3 = P2BodyDist X > 45
Trigger4 = Var(20) = 2
trigger4 = P2BodyDist X > 60
trigger4 = enemynear,movetype = H
trigger4 = ctrl

[state -1, 派生技始動-b]
type = changestate
value = 1110
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = var(0) = [501,1000]
trigger1 = stateno = 210
trigger1 = movecontact
trigger1 = time >= 12
trigger1 = P2BodyDist Y = [-30,0]
trigger1 = P2BodyDist X > 45

[state -1, 派生技始動-c]
type = changestate
value = 1120
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,99]
trigger2 = var(20) = 3
trigger2 = enemynear,stateno = 5030
trigger2 = ctrl

[state -1, 派生技-a]
type = changestate
value = 1150
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = stateno = 1130
trigger1 = var(0) = [0,500]
Trigger1 = var(20) = 2
trigger1 = var(15) = 1
trigger1 = time = 15
Trigger2 = Var(20) = 2
trigger2 = stateno = 1130
trigger2 = P2BodyDist X > 60
trigger2 = enemynear,movetype = H
trigger2 = time = 10
trigger3 = stateno = 1130
Trigger3 = Enemy,Numhelper > var(21)
trigger4 = stateno = 1130
Trigger4 = Enemy,NumProj > var(22)

[state -1, 派生技-b]
type = changestate
value = 1200
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = enemynear,statetype = A
trigger1 = stateno = 1130
trigger1 = var(20) = 0
trigger1 = P2BodyDist X = [0,100]
trigger1 = P2BodyDist Y = [-100,0]
trigger2 = stateno = 1130
trigger2 = enemynear,statetype = A 
trigger2 = var(0) = [501,1000]
Trigger2 = var(20) = 2
trigger2 = var(15) = 1
trigger2 = time = 15
trigger3 = stateno = 1130
trigger3 = enemynear,statetype = A 
Trigger3 = var(20) = 2
trigger3 = var(15) = 2
trigger3 = time = 25
trigger4 = enemynear,statetype = A
trigger4 = stateno = 1130
trigger4 = var(20) = 3
trigger4 = var(0) = [0,500]
trigger4 = P2BodyDist X = [0,60]
trigger4 = P2BodyDist y <= 0

[state -1, 派生技-c]
type = changestate
value = 1250
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = time >= 15
trigger1 = stateno = 1130
trigger1 = var(20) = 0
trigger1 = P2BodyDist X = [0,100]
trigger1 = enemynear,pos y > pos y
trigger2 = stateno = 1130
trigger2 = enemynear,statetype != A 
trigger2 = var(0) = [501,1000]
Trigger2 = var(20) = 2
trigger2 = var(15) = 1
trigger2 = time = 15
trigger3 = stateno = 1130
trigger3 = enemynear,statetype != A 
Trigger3 = var(20) = 2
trigger3 = var(15) = 2
trigger3 = time = 25
trigger4 = enemynear,statetype = A
trigger4 = stateno = 1130
trigger4 = var(20) = 3
trigger4 = P2BodyDist X = [0,60]
trigger4 = P2BodyDist Y > 0

[state -1, 派生技-x]
type = changestate
value = 1300
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
trigger1 = time = 1
trigger1 = stateno = 1130
trigger1 = var(20) = 0
trigger1 = P2BodyDist X > 100
trigger2 = time >= 45
trigger2 = stateno = 1130
trigger2 = var(20) = 0
trigger3 = time >= 45
trigger3 = stateno = 1130
trigger3 = var(20) = 3

[state -1, 立ち弱]
type = ChangeState
value = 200
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = ctrl
trigger1 = P2BodyDist X < 40
trigger1 = enemynear,statetype != L
trigger1 = enemynear,statetype != A
trigger1 = P2BodyDist Y = [-30,0]
Trigger2 = var(20) = 3
Trigger2 = var(0) = [0,500]
trigger2 = ctrl
trigger2 = P2BodyDist X <= 30
trigger2 = enemynear,statetype != L
trigger2 = enemynear,statetype != A
trigger2 = P2BodyDist Y = [-30,0]
Trigger3 = var(20) = 3
trigger3 = stateno = 200
trigger3 = time >= 6
trigger3 = movecontact
trigger3 = P2BodyDist X <= 30
trigger3 = enemynear,statetype != L
trigger3 = enemynear,statetype != A
trigger3 = P2BodyDist Y = [-30,0]

[state -1, 立ち中]
type = ChangeState
value = 210
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = var(0) = [0,500]
trigger1 = ctrl
trigger1 = P2BodyDist X < 50
trigger1 = enemynear,statetype != L
trigger1 = P2BodyDist Y = [-30,0]
Trigger2 = var(20) = 2
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = P2BodyDist Y = [-30,0]
Trigger3 = var(20) = 3
trigger3 = stateno = 200
trigger3 = movecontact
trigger3 = P2BodyDist Y = [-30,0]

[state -1, 屈み弱]
type = ChangeState
value = 400
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X < 45
trigger1 = enemynear,statetype != L
trigger1 = enemynear,statetype != A
Trigger2 = var(20) = 3
Trigger2 = var(0) = [501,1000]
trigger2 = ctrl
trigger2 = P2BodyDist X <= 30
trigger2 = enemynear,statetype != L
trigger2 = enemynear,statetype != A
trigger2 = P2BodyDist Y = [-30,0]
Trigger3 = var(20) = 3
Trigger3 = var(0) = [501,1000]
trigger3 = stateno = 400
trigger3 = movecontact
trigger3 = P2BodyDist X <= 30
trigger3 = enemynear,statetype != L
trigger3 = enemynear,statetype != A
trigger3 = P2BodyDist Y = [-30,0]
trigger3 = hitcount >= 3

[state -1, 屈み中]
type = ChangeState
value = 410
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X < 60
trigger1 = enemynear,statetype != L
Trigger2 = var(20) = 0
trigger2 = stateno = 400
trigger2 = movecontact
Trigger3 = var(20) = 2
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = time >= 12
trigger3 = P2BodyDist Y = [-10,0]
trigger3 = P2BodyDist X < 45
Trigger4 = var(20) = 2
trigger4 = var(0) = [501,1000]
trigger4 = ctrl
trigger4 = P2BodyDist X < 50
trigger4 = enemynear,statetype != L
trigger4 = P2BodyDist Y = [-10,0]
Trigger5 = var(20) = 3
trigger5 = stateno = 400
trigger5 = movecontact
trigger5 = P2BodyDist Y = [-10,0]
trigger5 = P2BodyDist X < 45

[state -1, 立ち大]
type = ChangeState
value = 220
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 2
trigger1 = var(0) = [0,300]
trigger1 = stateno = [410,412]
trigger1 = moveguarded
Trigger2 = var(20) = 2
trigger2 = var(0) = [601,800]
trigger2 = stateno = [410,412]
trigger2 = movehit
Trigger3 = var(20) = 3
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = time >= 12
trigger3 = P2BodyDist Y = [-10,0]
trigger3 = P2BodyDist X < 45

[state -1, 屈み大]
type = ChangeState
value = 420
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype != A
Trigger1 = var(20) = 0
trigger1 = stateno = [410,412]
trigger1 = movecontact
Trigger2 = var(20) = 2
trigger2 = var(0) = [801,1000]
trigger2 = stateno = [410,412]
trigger2 = moveguarded
Trigger3 = var(20) = 2
trigger3 = var(0) = [301,600]
trigger3 = stateno = [410,412]
trigger3 = movehit
Trigger4 = var(20) = 3
trigger4 = stateno = [410,412]
trigger4 = movecontact

[state -1, ジャンプ弱]
type = ChangeState
value = 600
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype = A
Trigger1 = var(20) = 1
trigger1 = var(0) = [700,1000]
trigger1 = ctrl
trigger1 = stateno = 51
trigger1 = time <= 5
trigger1 = P2BodyDist X < 60
trigger1 = P2BodyDist y = [0,50]
Trigger2 = var(20) = 3
trigger2 = var(0) = [501,1000]
trigger2 = ctrl
trigger2 = stateno = 51
trigger2 = P2BodyDist X < 60
trigger2 = P2BodyDist y = [-100,100]

[state -1, ジャンプ中]
type = ChangeState
value = 610
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype = A
Trigger1 = var(20) = 1
trigger1 = ctrl
trigger1 = stateno = 51
trigger1 = time <= 5
trigger1 = P2BodyDist X < 60
trigger1 = P2BodyDist y = [-100,100]
Trigger2 = var(20) = 3
trigger2 = var(0) = [0,500]
trigger2 = ctrl
trigger2 = stateno = 51
trigger2 = P2BodyDist X < 60
trigger2 = P2BodyDist y = [-100,100]

[state -1, ジャンプ大１]
type = ChangeState
value = 620
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype = A
Trigger1 = var(20) = 1
trigger1 = ctrl
trigger1 = stateno = 51
trigger1 = time >= 5
trigger1 = P2BodyDist X < 60
trigger1 = P2BodyDist y = [-100,100]
Trigger2 = var(20) = 1
trigger2 = stateno = 610
trigger2 = P2BodyDist X < 60
trigger2 = P2BodyDist y = [-100,100]
trigger2 = movehit
Trigger3 = var(20) = 3
trigger3 = stateno = 610
trigger3 = P2BodyDist X < 60
trigger3 = P2BodyDist y = [-100,100]
trigger3 = movehit
trigger4 = stateno = 600
trigger4 = P2BodyDist X < 60
trigger4 = P2BodyDist y = [-100,100]
trigger4 = movehit

[state -1, ジャンプ大２]
type = ChangeState
value = 630
triggerall = numhelper(3000) >= 1
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerAll = statetype = A
Trigger1 = var(20) = 0
trigger1 = var(0) = [0,200]
trigger1 = ctrl
trigger1 = p2bodydist x = [-10,10]
trigger1 = pos y < -100
Trigger2 = var(20) = 1
trigger2 = var(0) = [0,800]
trigger2 = ctrl
trigger2 = p2bodydist x = [-10,10]
trigger2 = pos y < -150

[state -1, スピンターン（強）]
type = changestate
value = 1420
triggerall = numhelper(3000) >= 1
TriggerAll = Var(59) = 1
triggerall = var(4) = 1
triggerall = statetype = S
trigger1 = ctrl
trigger1 = var(0) = [950,1000]

;-----------------------------------FORNEUS(OFF)AI-----------------------------------------
[state -1,　プレスターン]
type = changestate
value = 2500
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = var(57) > 0
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = stateno = 1011
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(57) > 3
trigger2 = stateno = [5000,5050]
trigger2 = GetHitVar(hitcount) >= 6
trigger2 = var(26) >= 45
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = var(57) > 2
trigger3 = stateno = 1424
trigger3 = time = 20
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = var(57) > 0
trigger4 = stateno = [5000,5050]
trigger4 = GetHitVar(hitcount) >= 5
trigger4 = var(26) >= 30
trigger5 = life <= const(data.life)/100*50
trigger5 = life > const(data.life)/100*10
trigger5 = var(57) > 0
trigger5 = stateno = 1021
trigger6 = life <= const(data.life)/100*50
trigger6 = life > const(data.life)/100*10
trigger6 = var(57) > 1
trigger6 = stateno = 1255
trigger7 = life <= const(data.life)/100*10
trigger7 = var(57) > 0
trigger7 = stateno = [5000,5050]
trigger7 = GetHitVar(hitcount) >= 3
trigger7 = var(26) >= 25
trigger8 = life <= const(data.life)/100*10
trigger8 = var(57) > 0
trigger8 = stateno = 1255
trigger9 = life <= const(data.life)/100*10
trigger9 = stateno = [220,221]
trigger9 = movehit
trigger9 = var(57) > 0
trigger10 = life <= const(data.life)/100*10
trigger10 = var(57) > 0
trigger10 = stateno = 1424
trigger10 = animelem = 70
trigger11 = life <= const(data.life)/100*10
trigger11 = var(57) > 0
trigger11 = stateno = 1021

[state -1]
type = VarSet
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = 0
sysvar(1) = 0

[state -1]
type = VarSet
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X = [75,150]
sysvar(1) = 1

[state -1]
type = VarSet
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
sysvar(1) = -1

[state -1,　テトラカーン]
type = changestate
value = 4200
triggerall = var(59) = 1
triggerall = var(4) = 0
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*50
trigger1 = life > const(data.life)/100*10
trigger1 = ctrl
trigger1 = numhelper(4200) = 0
trigger2 = life <= const(data.life)/100*10
trigger2 = ctrl
trigger2 = numhelper(4200) = 0

[state -1,　ペトラアイ]
type = changestate
value = 4300
triggerall = var(59) = 1
triggerall = var(4) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*50
trigger1 = life > const(data.life)/100*10
trigger1 = ctrl
trigger1 = numhelper(4200) != 0
trigger1 = helper(4200),stateno = 4230
trigger1 = P2BodyDist X = [0,75]
trigger1 = P2BodyDist y = [-100,0]

[state -1,　メギド]
type = changestate
value = 4000
triggerall = var(59) = 1
triggerall = var(4) = 0
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = FrontEdgeBodyDist = [30,100]
trigger1 = facing !=enemynear,facing
trigger1 = power >= 2000
trigger1 = ctrl
trigger1 = numhelper(4000) = 0
trigger2 = life <= const(data.life)/100*50
trigger2 = life > const(data.life)/100*10
trigger2 = FrontEdgeBodyDist = [30,100]
trigger2 = facing !=enemynear,facing
trigger2 = power >= 2000
trigger2 = ctrl
trigger2 = numhelper(4000) = 0

[state -1,　流星]
type = changestate
value = 4100
triggerall = var(59) = 1
triggerall = var(4) = 0
triggerall = power >= 1000
trigger1 = life <= const(data.life)/100*50
trigger1 = life > const(data.life)/100*10
trigger1 = stateno = 620
trigger1 = movehit
trigger1 = hitcount > 3
trigger2 = life <= const(data.life)/100*50
trigger2 = life > const(data.life)/100*10
trigger2 = stateno = 610
trigger2 = movehit
trigger2 = Vel X < 0
trigger2 = P2BodyDist X >= 30
trigger2 = enemynear,pos y > pos y
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(27) = 0
trigger3 = stateno = 620
trigger3 = movehit
trigger3 = hitcount > 3
trigger3 = P2BodyDist X >= 0
trigger3 = enemynear,pos y > pos y
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = var(27) = 1
trigger4 = stateno = 620
trigger4 = movehit
trigger4 = hitcount >= 5
trigger4 = P2BodyDist X >= 0
trigger4 = enemynear,pos y > pos y
trigger5 = life <= const(data.life)/100*10
trigger5 = stateno = 620
trigger5 = movehit
trigger5 = hitcount >= 5
trigger5 = P2BodyDist X >= 0
trigger5 = enemynear,pos y > pos y
trigger5 = enemynear,statetype = A
trigger6 = life <= const(data.life)/100*10
trigger6 = stateno = 620
trigger6 = movehit
trigger6 = hitcount >= 3
trigger6 = P2BodyDist X >= 0
trigger6 = enemynear,pos y > pos y
trigger6 = enemynear,statetype != A

[state -1, 立ちスキル]
type = ChangeState
value = 2000
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = var(0) = [0,300]
trigger1 = ctrl
Trigger1 = Enemy,Numhelper > var(21)
trigger1 = P2BodyDist X > 50
trigger1 = time = 0
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(0) = [0,300]
trigger2 = ctrl
Trigger2 = Enemy,NumProj > var(22)
trigger2 = P2BodyDist X > 50
trigger2 = time = 0
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(0) = [0,600]
trigger3 = ctrl
Trigger3 = Enemy,Numhelper > var(21)
trigger3 = P2BodyDist X > 50
trigger3 = time = 0
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = var(0) = [0,600]
trigger4 = ctrl
Trigger4 = Enemy,NumProj > var(22)
trigger4 = P2BodyDist X > 50
trigger4 = time = 0
trigger5 = life <= const(data.life)/100*10
trigger5 = var(0) = [0,800]
trigger5 = ctrl
Trigger5 = Enemy,NumProj > var(22)
trigger5 = P2BodyDist X > 50
trigger5 = time = 0

[state -1, ジャンプスキル]
type = ChangeState
value = 640
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype = A
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = stateno = 51
trigger1 = ctrl
Trigger1 = Enemy,Numhelper > var(21)
trigger1 = P2BodyDist X > 100
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = stateno = 51
trigger2 = ctrl
Trigger2 = Enemy,NumProj > var(22)
trigger2 = P2BodyDist X > 100

[state -1, 回転（弱）切り返し用]
type = ChangeState
value = 1000
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X = [0,60]
trigger1 = enemynear,movetype = A
trigger1 = var(0) = [0,150]
trigger1 = ctrl
trigger1 = time >= 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = P2BodyDist X = [0,60]
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = enemynear,movetype = A
trigger2 = var(0) = [0,300]
trigger2 = ctrl
trigger2 = time = 0
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = numhelper(4200) = 0
trigger3 = P2BodyDist X = [0,60]
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = enemynear,statetype = A
trigger3 = var(0) = [0,100]
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = numhelper(4200) = 0
trigger4 = P2BodyDist X = [0,60]
trigger4 = P2BodyDist Y = [-80,0]
trigger4 = enemynear,movetype = A
trigger4 = var(0) = [0,300]
trigger4 = ctrl
trigger5 = life <= const(data.life)/100*10
trigger5 = numhelper(4200) = 0
trigger5 = P2BodyDist X = [0,60]
trigger5 = P2BodyDist Y = [-80,0]
trigger5 = enemynear,movetype = A
trigger5 = var(0) = [0,500]
trigger5 = ctrl

[state -1, 回転（中）切り返し用]
type = ChangeState
value = 1010
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X = [0,60]
trigger1 = var(0) = [151,250]
trigger1 = ctrl
trigger1 = enemynear,movetype = A
Trigger1 = Enemy,Numhelper = var(21)
trigger1 = Enemy,NumProj = var(22)
trigger1 = time >= 5
trigger2 = life > const(data.life)/100*75
trigger2 = P2BodyDist X > 150
trigger2 = var(0) = [151,250]
trigger2 = ctrl
trigger2 = enemynear,movetype = A
Trigger2 = Enemy,Numhelper = var(21)
trigger2 = Enemy,NumProj = var(22)
trigger2 = time = 0
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = P2BodyDist X = [0,60]
trigger3 = var(0) = [301,450]
trigger3 = ctrl
trigger3 = enemynear,movetype = A
Trigger3 = Enemy,Numhelper = var(21)
trigger3 = Enemy,NumProj = var(22)
trigger3 = time = 0
trigger3 = var(57) >= 3

[state -1, 回転（強）切り返し用]
type = ChangeState
value = 1020
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*50
trigger1 = life > const(data.life)/100*10
trigger1 = numhelper(4200) = 0
trigger1 = FrontEdgeBodyDist < 50
trigger1 = enemynear,pos Y = [-200,-50]
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype = H
trigger1 = ctrl

[State -1, ガード]
Type = ChangeState
Value = 120
TriggerAll = Var(59) = 1
TriggerAll = Ctrl
triggerall = var(4) = 0
trigger1 = life > const(data.life)/100*75
trigger1 = time >= 5
Trigger1 = InGuardDist
Trigger1 =! EnemyNear,HitDefAttr = ,NT,ST,HT
Trigger1 = Random = [0,950]
trigger2 = life > const(data.life)/100*75
trigger2 = time >= 5
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger2 = InGuardDist
Trigger2 = Random = [0,950]
trigger3 = numhelper(4200) = 0
Trigger3 = InGuardDist
Trigger3 =! EnemyNear,HitDefAttr = ,NT,ST,HT
Trigger3 = Random = [0,950]
Trigger4 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger4 = InGuardDist
Trigger4 = Random = [0,950]

[State -1, ダッシュ]
type = ChangeState
value = 100
TriggerAll = Var(59) = 1
triggerAll = statetype = S
triggerall = var(4) = 0
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = numhelper(4000) = 0
trigger1 = var(0) = [0,800]
trigger1 = P2BodyDist X = [100,200] 
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*50
trigger2 = life > const(data.life)/100*10
trigger2 = numhelper(4000) = 0
trigger2 = P2BodyDist X = [30,100] 
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*50
trigger3 = numhelper(4000) = 0
trigger3 = life > const(data.life)/100*10
trigger3 = var(0) = [751,100]
trigger3 = P2BodyDist X = [0,30]
trigger3 = enemynear,statetype != A
trigger3 = enemynear,statetype != L
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = numhelper(4000) = 0
trigger4 = var(27) = 1
trigger4 = ctrl
trigger5 = life <= const(data.life)/100*10
trigger5 = var(27) = 1
trigger5 = ctrl
trigger6 = life <= const(data.life)/100*10
trigger6 = P2BodyDist X = [30,100]
trigger6 = ctrl
trigger7 = life <= const(data.life)/100*10
trigger7 = P2BodyDist X <= 50
trigger7 = enemynear,statetype = L
trigger7 = BackEdgeBodyDist > 50
trigger7 = ctrl
trigger8 = life <= const(data.life)/100*10
trigger8 = prevstateno = 2500
trigger8 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
TriggerAll = Var(59) = 1
triggerAll = statetype = S
triggerall = var(4) = 0
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = var(0) = [0,50]
trigger1 = P2BodyDist X <= 50
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = P2BodyDist X <= 50
trigger2 = enemynear,statetype = L
trigger2 = BackEdgeBodyDist != 0
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*10
trigger3 = P2BodyDist X <= 50
trigger3 = enemynear,statetype = L
trigger3 = BackEdgeBodyDist > 50
trigger3 = ctrl

[State -1, ジャンプ]
type = ChangeState
value = 40
TriggerAll = Var(59) = 1
triggerAll = statetype = S
triggerall = var(4) = 0
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,500]
trigger1 = P2BodyDist X = [75,150]
trigger1 = enemynear,statetype != A
trigger1 = ctrl
trigger1 = time >= 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = numhelper(4000) = 0
trigger2 = P2BodyDist X >= 150 
trigger2 = ctrl

;[State -1, 二段ジャンプ]
;type = ChangeState
;value = 45
;TriggerAll = Var(59) = 1
;triggerall = var(4) = 0
;TriggerAll = Var(2) = 0
;triggerall = var(16) = 0
;trigger1 = 0

[State -1, 空中ダッシュ]
type = ChangeState
value = 101
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
TriggerAll = Var(2) = 0
triggerAll = statetype = A
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = numhelper(4000) = 0
trigger1 = stateno = 50
trigger1 = time = 30
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger1 = numhelper(4000) = 0
trigger2 = stateno = 105
trigger2 = time = 20
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*10
trigger3 = stateno = 105
trigger3 = enemynear,statetype != L
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*10
trigger4 = P2BodyDist X > 0
trigger4 = stateno = 50
trigger4 = ctrl

[State -1, 空中バックステップ]
type = ChangeState
value = 107
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
TriggerAll = Var(3) = 0
triggerAll = statetype = A
trigger1 = life <= const(data.life)/100*50
trigger1 = life > const(data.life)/100*10
trigger1 = numhelper(4000) = 0
trigger1 = var(27) = 0
trigger1 = stateno = 50
trigger1 = P2BodyDist X = [-100,-65]
trigger1 = ctrl

[state -1, 投げ]
type = changestate
value = 800
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = var(0) = [0,300]
trigger1 = P2BodyDist X = [0,30]
trigger1 = enemynear,movetype != H
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*50
trigger2 = life > const(data.life)/100*10
trigger2 = var(0) = [0,250]
trigger2 = P2BodyDist X = [0,30]
trigger2 = enemynear,movetype != H
trigger2 = enemynear,statetype != A
trigger2 = enemynear,statetype != L
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*10
trigger3 = var(0) = [0,500]
trigger3 = P2BodyDist X = [0,30]
trigger3 = enemynear,movetype != H
trigger3 = enemynear,statetype != A
trigger3 = enemynear,statetype != L
trigger3 = ctrl

[state -1, 回転（弱）]
type = ChangeState
value = 1000
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X = [0,60]
trigger1 = enemynear,movetype = A
trigger1 = var(0) = [0,150]
trigger1 = ctrl
trigger1 = time >= 5
trigger2 = life > const(data.life)/100*75
trigger2 = P2BodyDist X = [0,35]
trigger2 = var(0) = [0,100]
trigger2 = ctrl
trigger2 = time = 5
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(27) = 0
trigger3 = P2BodyDist X = [0,30]
trigger3 = enemynear,statetype = A
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*10
trigger4 = P2BodyDist X = [0,30]
trigger4 = P2BodyDist Y = [-70,0]
trigger4 = enemynear,statetype = A
trigger4 = ctrl

[state -1, 回転（中）]
type = ChangeState
value = 1010
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X > 150
trigger1 = var(0) = [151,250]
trigger1 = ctrl
Trigger1 = Enemy,Numhelper = var(21)
trigger1 = Enemy,NumProj = var(22)
trigger1 = time >= 5
trigger2 = life > const(data.life)/100*75
trigger2 = P2BodyDist X > 150
trigger2 = var(0) = [0,50]
trigger2 = ctrl
Trigger2 = Enemy,Numhelper = var(21)
trigger2 = Enemy,NumProj = var(22)
trigger2 = enemynear,movetype = A
trigger2 = time = 0

[state -1, 回転（強）]
type = ChangeState
value = 1020
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*10
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2BodyDist Y < -70
trigger1 = enemynear,statetype = A
trigger1 = ctrl
trigger1 = var(57) > 0

[state -1, スピンターン（弱）]
type = changestate
value = 1400
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = stateno = 210
trigger1 = var(0) = [0,400]
trigger1 = movecontact
trigger1 = time >= 12
trigger2 = life <= const(data.life)/100*50
trigger2 = life > const(data.life)/100*10
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = time >= 12
trigger2 = enemynear,statetype = A
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = stateno = [410,412]
trigger3 = movecontact
trigger3 = enemynear,statetype = A
trigger4 = life <= const(data.life)/100*10
trigger4 = stateno = [410,412]
trigger4 = moveguarded
trigger4 = enemynear,statetype != A
trigger4 = var(57) = 0
trigger5 = life <= const(data.life)/100*10
trigger5 = stateno = 210
trigger5 = movecontact
trigger5 = time >= 12
trigger5 = enemynear,statetype = A

[state -1, スピンターン（中）]
type = changestate
value = 1410
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = stateno = 210
trigger1 = var(0) = [401,1000]
trigger1 = movecontact
trigger1 = time >= 12

[state -1, 派生技始動-a]
type = changestate
value = 1100
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X > 15
trigger1 = var(0) = [501,1000]
trigger1 = enemynear,statetype = L
trigger1 = ctrl
trigger2 = life > const(data.life)/100*75
trigger2 = P2BodyDist X > 15
trigger2 = var(0) = [700,850]
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = numhelper(4000) = 0
trigger3 = var(0) = [801,1000]
trigger3 = P2BodyDist X = [100,200] 
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = P2BodyDist X = [0,30] 
trigger4 = enemynear,statetype = L
trigger4 = ctrl
trigger5 = numhelper(4000) > 0
trigger5 = helper(4000),movecontact
trigger5 = P2BodyDist X = [0,100]
trigger5 = ctrl

[state -1, 派生技始動-b]
type = changestate
value = 1110
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [501,1000]
trigger1 = P2BodyDist X = [75,150]
trigger1 = enemynear,statetype != A
trigger1 = ctrl
trigger1 = time >= 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = stateno = 210
trigger2 = moveguarded
trigger2 = time >= 12
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = stateno = [410,412]
trigger3 = moveguarded

[state -1, 派生技始動-c]
type = changestate
value = 1120
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life <= const(data.life)/100*50
trigger1 = life > const(data.life)/100*10
trigger1 = numhelper(4000) = 0
trigger1 = P2BodyDist X > 150
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*10
trigger2 = var(0) = [0,500]
trigger2 = stateno = [410,412]
trigger2 = movehit
trigger2 = enemynear,statetype != A
trigger2 = var(57) > 1

[state -1, 派生技-a]
type = changestate
value = 1150
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = life <= const(data.life)/100*75
trigger1 = life > const(data.life)/100*50
trigger1 = var(15) = 2
trigger1 = enemynear,statetype != A
trigger1 = time = 5
trigger1 = stateno = 1130
trigger1 = var(0) = [0,500]
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = numhelper(4000) = 0
trigger2 = var(15) = 1
trigger2 = time = 10
trigger2 = stateno = 1130
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = numhelper(4000) = 0
trigger3 = var(15) = 1
trigger3 = time = 5
trigger3 = stateno = 1130

[state -1, 派生技-b]
type = changestate
value = 1200
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = life > const(data.life)/100*75
trigger1 = var(15) = 2
trigger1 = time = 20
trigger1 = stateno = 1130
trigger1 = var(0) = [0,250]
trigger1 = enemynear,pos y < pos y
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(15) = 2
trigger2 = enemynear,statetype = A
trigger2 = time = 20
trigger2 = stateno = 1130
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(15) = 3
trigger3 = stateno = 1130
trigger3 = P2BodyDist X = [0,65]
trigger3 = enemynear,pos y < pos y
trigger3 = time <= 40
trigger4 = life <= const(data.life)/100*10
trigger4 = var(15) = 3
trigger4 = stateno = 1130
trigger4 = time >= 3
trigger4 = var(57) = 0
trigger5 = numhelper(4000) > 0
trigger5 = helper(4000),movecontact
trigger5 = P2BodyDist X = [0,100]
trigger5 = var(15) = 1
trigger5 = stateno = 1130
trigger5 = time = 10

[state -1, 派生技-c]
type = changestate
value = 1250
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = life > const(data.life)/100*75
trigger1 = var(15) = 2
trigger1 = time = 20
trigger1 = stateno = 1130
trigger1 = enemynear,pos y > pos y
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(15) = 2
trigger2 = enemynear,statetype != A
trigger2 = time = 20
trigger2 = stateno = 1130
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(15) = 3
trigger3 = stateno = 1130
trigger3 = P2BodyDist X = [0,65]
trigger3 = enemynear,pos y > pos y
trigger3 = time <= 40
trigger4 = life <= const(data.life)/100*10
trigger4 = var(15) = 3
trigger4 = stateno = 1130
trigger4 = time >= 3
trigger4 = var(57) > 0

[state -1, 派生技-x]
type = changestate
value = 1300
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
trigger1 = life > const(data.life)/100*75
trigger1 = var(15) = 1
trigger1 = time = 1
trigger1 = stateno = 1130
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(0) = [0,500]
trigger2 = var(15) = 1
trigger2 = time = 1
trigger2 = stateno = 1130
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(15) = 3
trigger3 = stateno = 1130
trigger3 = P2BodyDist X = [-40,40]
trigger3 = time >= 40

[state -1, 立ち弱]
type = ChangeState
value = 200
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,500]
trigger1 = P2BodyDist X <= 20
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger1 = time >= 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(0) = [0,500]
trigger2 = P2BodyDist X = [0,30]
trigger2 = enemynear,statetype != A
trigger2 = enemynear,statetype != L
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(0) = [251,500]
trigger3 = P2BodyDist X = [0,30]
trigger3 = enemynear,statetype != A
trigger3 = enemynear,statetype != L
trigger3 = ctrl

[state -1, 立ち中]
type = ChangeState
value = 210
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,500]
trigger1 = P2BodyDist X <= 35
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger2 = life > const(data.life)/100*75
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = life <= const(data.life)/100*10
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = life <= const(data.life)/100*10
trigger6 = P2BodyDist X = [0,40]
trigger6 = P2BodyDist Y = [-40,0]
trigger6 = enemynear,statetype = A
trigger6 = enemynear,statetype != L
trigger6 = ctrl

[state -1, 屈み弱]
type = ChangeState
value = 400
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [501,1000]
trigger1 = P2BodyDist X <= 20
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger1 = time >= 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(0) = [501,1000]
trigger2 = P2BodyDist X = [0,30]
trigger2 = enemynear,statetype != A
trigger2 = enemynear,statetype != L
trigger2 = ctrl
trigger3 = life <= const(data.life)/100*50
trigger3 = life > const(data.life)/100*10
trigger3 = var(0) = [501,750]
trigger3 = P2BodyDist X = [0,30]
trigger3 = enemynear,statetype != A
trigger3 = enemynear,statetype != L
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*10
trigger4 = P2BodyDist X = [0,30]
trigger4 = enemynear,statetype != A
trigger4 = enemynear,statetype != L
trigger4 = ctrl

[state -1, 屈み中]
type = ChangeState
value = 410
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,500]
trigger1 = P2BodyDist X <= 35
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger2 = life > const(data.life)/100*75
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = life <= const(data.life)/100*10
trigger5 = stateno = 210
trigger5 = movecontact
trigger5 = time >= 12
trigger5 = enemynear,statetype != A

[state -1, 立ち大]
type = ChangeState
value = 220
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,500]
trigger1 = P2BodyDist X <= 50
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger2 = life > const(data.life)/100*75
trigger2 = stateno = 210
trigger2 = var(0) = [0,400]
trigger2 = movecontact
trigger2 = time >= 12
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = var(0) = [0,600]
trigger3 = stateno = 210
trigger3 = movehit
trigger3 = time >= 12
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = stateno = 210
trigger4 = movecontact
trigger4 = time >= 12
trigger4 = enemynear,statetype != A
trigger5 = life <= const(data.life)/100*10
trigger5 = stateno = [410,412]
trigger5 = movehit
trigger5 = enemynear,statetype != A
trigger5 = var(57) = 1
trigger6 = life <= const(data.life)/100*10
trigger6 = stateno = [410,412]
trigger6 = movehit
trigger6 = enemynear,statetype != A
trigger6 = var(57) = 1

[state -1, 屈み大]
type = ChangeState
value = 420
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [501,1000]
trigger1 = P2BodyDist X <= 50
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = ctrl
trigger2 = life > const(data.life)/100*75
trigger2 = var(0) = [0,400]
trigger2 = stateno = [410,412]
trigger2 = movecontact
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = var(0) = [0,600]
trigger3 = stateno = [410,412]
trigger3 = movehit
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = stateno = [410,412]
trigger4 = movecontact
trigger4 = enemynear,statetype != A

[state -1, ジャンプ弱]
type = ChangeState
value = 600
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype = A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X = [0,15]
trigger1 = P2BodyDist Y > 0
trigger1 = ctrl

[state -1, ジャンプ中]
type = ChangeState
value = 610
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype = A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,250]
trigger1 = stateno = 600
trigger1 = movecontact
trigger1 = time = 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = stateno = 50||51
trigger2 = P2BodyDist X < 30
trigger2 = P2BodyDist Y = [-50,100]
trigger2 = enemynear,statetype != A
trigger2 = ctrl
trigger2 = prevstateno != 2500
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = var(0) = [0,500]
trigger3 = stateno = 50||51
trigger3 = P2BodyDist X < 30
trigger3 = P2BodyDist Y < 70
trigger3 = enemynear,statetype != A
trigger3 = ctrl
trigger3 = prevstateno != 2500
trigger4 = life <= const(data.life)/100*75
trigger4 = life > const(data.life)/100*50
trigger4 = var(0) = [0,500]
trigger4 = stateno = 50||51
trigger4 = P2BodyDist X < 70
trigger4 = P2BodyDist Y = [-100,100]
trigger4 = enemynear,statetype = A
trigger4 = ctrl
trigger4 = prevstateno != 2500
trigger5 = life <= const(data.life)/100*50
trigger5 = life > const(data.life)/100*10
trigger5 = var(0) = [0,500]
trigger5 = stateno = 51
trigger5 = P2BodyDist X < 50 
trigger5 = P2BodyDist Y = [-200,100] 
trigger5 = ctrl
trigger6 = life <= const(data.life)/100*50
trigger6 = life > const(data.life)/100*10
trigger6 = stateno = 107
trigger6 = Vel X < 0
trigger6 = P2BodyDist X = [-30,0] 
trigger6 = P2BodyDist Y = [-200,100] 
trigger6 = ctrl
trigger7 = life <= const(data.life)/100*50
trigger7 = life > const(data.life)/100*10
trigger7 = var(27) = 1
trigger7 = stateno = 51
trigger7 = P2BodyDist X < 50 
trigger7 = P2BodyDist Y = [-200,100] 
trigger7 = ctrl
trigger8 = life <= const(data.life)/100*10
trigger8 = stateno = 51
trigger8 = time < 5
trigger8 = ctrl

[state -1, ジャンプ大１]
type = ChangeState
value = 620
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype = A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [251,500]
trigger1 = stateno = 600
trigger1 = movecontact
trigger1 = time = 5
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(0) = [501,1000]
trigger2 = stateno = 50||51
trigger2 = P2BodyDist X < 70
trigger2 = P2BodyDist Y = [-100,100]
trigger2 = enemynear,statetype = A
trigger2 = ctrl
trigger2 = prevstateno != 2500
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = var(0) = [501,1000]
trigger3 = stateno = 50||51
trigger3 = P2BodyDist X < 30
trigger3 = P2BodyDist Y < 70
trigger3 = enemynear,statetype != A
trigger3 = ctrl
trigger3 = prevstateno != 2500
trigger4 = life <= const(data.life)/100*50
trigger4 = life > const(data.life)/100*10
trigger4 = var(0) = [501,1000]
trigger4 = stateno = 51
trigger4 = P2BodyDist X < 50 
trigger4 = P2BodyDist Y = [-200,100] 
trigger5 = life <= const(data.life)/100*50
trigger5 = life > const(data.life)/100*10
trigger5 = var(27) = 1
trigger5 = stateno = 610
trigger5 = movehit
trigger6 = life <= const(data.life)/100*10
trigger6 = stateno = 610
trigger6 = movecontact

[state -1, ジャンプ大２]
type = ChangeState
value = 630
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerAll = statetype = A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [0,300]
trigger1 = var(25) > 0
trigger1 = time = 12
trigger1 = movetype != H
trigger1 = stateno != 630
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = stateno = 50||51
trigger2 = var(0) = [0,50]
trigger2 = P2BodyDist X < 15
trigger2 = P2BodyDist Y > 100
trigger2 = enemynear,statetype != A
trigger2 = ctrl
trigger2 = prevstateno != 2500

[State -1, 前進]
type = ChangeState
value = 20
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = P2BodyDist X > 150
trigger1 = ctrl
trigger2 = life > const(data.life)/100*75
trigger2 = P2BodyDist X < 75
trigger2 = ctrl
trigger3 = life > const(data.life)/100*75
trigger3 = P2BodyDist X = [75,150]
trigger3 = enemynear,statetype = A
trigger3 = ctrl
trigger4 = life <= const(data.life)/100*75
trigger4 = life > const(data.life)/100*50
trigger4 = numhelper(4000) = 0
trigger4 = P2BodyDist X <= 100
trigger4 = ctrl
trigger5 = life <= const(data.life)/100*50
trigger5 = life > const(data.life)/100*10
trigger5 = numhelper(4000) = 0
trigger5 = P2BodyDist X = [100,150] 
trigger5 = ctrl
trigger6 = life <= const(data.life)/100*10
trigger6 = P2BodyDist X > 100
trigger6 = ctrl

[state -1, スピンターン（強）]
type = changestate
value = 1420
TriggerAll = Var(59) = 1
triggerall = var(4) = 0
triggerall = statetype != A
trigger1 = life > const(data.life)/100*75
trigger1 = var(0) = [851,1000]
trigger1 = ctrl
trigger2 = life <= const(data.life)/100*75
trigger2 = life > const(data.life)/100*50
trigger2 = var(0) = [601,1000]
trigger2 = stateno = [410,412]
trigger2 = movehit
trigger3 = life <= const(data.life)/100*75
trigger3 = life > const(data.life)/100*50
trigger3 = var(0) = [601,1000]
trigger3 = stateno = 210
trigger3 = movehit
trigger3 = time >= 12
trigger4 = life <= const(data.life)/100*10
trigger4 = var(0) = [501,1000]
trigger4 = stateno = [410,412]
trigger4 = movehit
trigger4 = enemynear,statetype != A
trigger4 = var(57) > 1

;-----------------------------------------------------------------------------------
;AI行動パターン切り替え
[state -1]
type = varset
trigger1 = 1
v = 20
value = helper(9999),var(1)

[state -1]
Type = VarSet
TriggerAll = gametime%30 = 0
Trigger1 = RoundState = 2
V = 21
Value = EnemyNear,NumHelper

[state -1]
Type = VarSet
TriggerAll = gametime%30 = 0
Trigger1 = RoundState = 2
V = 22
Value = EnemyNear,NumProj

[state -1]
Type = VarSet
Trigger1 = 1
V = 23
Value = floor(enemynear,screenpos x)

[state -1]
Type = Varadd
Trigger1 = stateno = [5000,5050]
V = 26
value = 1

[state -1]
Type = Varset
Trigger1 = stateno != [5000,5050]
V = 26
value = 0

[state 1000]
Type = VarSet
Trigger1 = enemynear,movetype != H
V = 27
Value = 0

[state -1]
Type = VarSet
triggerall = numhelper(3000) >= 1
Trigger1 = 1
V = 24
Value = floor(helper(3000),screenpos x)