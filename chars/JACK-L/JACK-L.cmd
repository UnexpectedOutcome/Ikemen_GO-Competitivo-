;使用Var
;1:手のアニメ切り替え
;2:手のアニメ切り替え
;3:手の攻撃可否スイッチ
;4:手の攻撃可否スイッチ
;5:地獄の業火スイッチ1
;6:地獄の業火スイッチ2
;7:地獄の業火スイッチ3
;8:手の攻撃スイッチ(AI用)
;59:AI





[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃


[Defaults]
command.time = 15  
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
name = "hell fire"
command = ~D, F, D, F, b
time = 60

[Command]
name = "Trick"
command = ~D, F, a
time = 30

[Command]
name = "LanternAttack"
command = ~D, B, a
time = 30

[Command]
name = "fire breath"
command = ~F, F, b
time = 30

[Command]
name = "flame3"
command = ~F, D, B, b
time = 60

[Command]
name = "flame2"
command = ~D, F, b
time = 30

[Command]
name = "flame1"
command = ~b

[Command]
name = "awake"
command = ~c

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
command = a+b
time = 1

[Command]
name = "sliding attack"
command = /DF, a
time = 1

[Command]
name = "down_attack"
command = /$D, a
time = 1

[Command]
name = "body press"
command = /$D, a
time = 1

[Command]
name = "attack1"
command = a
time = 1
[Command]

name = "attack2"
command = a
time = 1

[Command]
name = "attack3"
command = a
time = 1

[Command]
name = "jump attack"
command = a
time = 1

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

--------------------------------------------------------------------------------
[Statedef -1] 
[State -1, 地獄の業火]
type = ChangeState
value = 3000
TriggerAll = Var(59) = 0
TriggerAll = Var(5) = 0
triggerall = command = "hell fire"
triggerall = power >= 750
trigger1 = statetype = S
trigger1 = ctrl

[State -1, アギダイン]
type = ChangeState
value = 2120
TriggerAll = Var(59) = 0
triggerall = command = "flame3"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl


[State -1, アギラオ]
type = ChangeState
value = 2110
TriggerAll = Var(59) = 0
triggerall = command = "flame2"
triggerall = command != "hell fire"
triggerall = power >= 150
trigger1 = statetype = S
trigger1 = ctrl


[state -1, ファイアブレス]
type = changestate
value = 2130
TriggerAll = Var(59) = 0
triggerall = command = "fire breath"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl

[State -1, アギ]
type = ChangeState
value = 2100
TriggerAll = Var(59) = 0
triggerall = command = "flame1"
triggerall = command != "flame2"
triggerall = command != "flame3"
triggerall = command != "fire breath"
triggerall = power >= 50
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl



[State -1, いたずら]
type = ChangeState
value = 260
TriggerAll = Var(59) = 0
triggerall = command = "Trick"
triggerall = statetype = S
Trigger1 = ctrl

[State -1, ランタンアタック]
type = ChangeState
value = 250
TriggerAll = Var(59) = 0
triggerall = command = "LanternAttack"
triggerall = statetype = S
Trigger1 = ctrl

[State -1, ランタンアタック2]
type = ChangeState
value = 251
TriggerAll = Var(59) = 0
triggerall = command = "LanternAttack"
triggerall = statetype = S
Trigger1 = stateno = 250
Trigger1 = time >= 16


[State -1, ランタンアタック3]
type = ChangeState
value = 252
TriggerAll = Var(59) = 0
triggerall = command = "LanternAttack"
triggerall = statetype = S
Trigger1 = stateno = 251
Trigger1 = time >= 15

[State -1, 通常攻撃１]
type = ChangeState
value = 200
TriggerAll = Var(59) = 0
triggerall = command = "attack1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



