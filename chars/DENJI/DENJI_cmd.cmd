
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃


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


;------------------------------------------------------------------------------
;-| 必須 |---------------------------------------------------------------
[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

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


;-| コマンド |---------------------------------------------------------------

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "236c"
command = D,DF,F,c
time = 30

[Command]
name = "214c"
command = D,DB,B,c
time = 30

[Command]
name = "22c"
command = D,D,c
time = 30



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 技の記述 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。




;━━━━━━━━━━━━━ 必殺 ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, kickback]
type = ChangeState
value = 1000
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype!=A && power>=1000 
triggerall = command ="236c" 
trigger1 = ctrl 
trigger2 = (stateno=[200,499]) && movecontact>0

[State -1, ビーム！これが正解だよなぁ!]
type = ChangeState
value = 1010
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype!=A && power>=1000
triggerall = command ="214c" 
trigger1 = ctrl 
trigger2 = (stateno=[200,499]) && movecontact>0

[State -1, 光ん力/永久機関が完成しちまったなアア～！！これでノーベル賞は俺んモンだぜ～！！]
type = ChangeState
value = 1020
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype!=A && power>=2000 &&var(0)<=0
triggerall = command ="22c" 
trigger1 = ctrl 


;━━━━━━━━━━━━━ 投げ ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 投げ]
Type = ChangeState
Value = 700
TriggerAll = AILevel = 0 
TriggerAll = RoundState = 2 && statetype = S 
TriggerAll = ctrl && (command = "b" ||command = "y") && command != "holddown" 
trigger1 = command = "holdfwd" 
trigger1 = p2bodydist X < 8 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" 
trigger2 = p2bodydist X < 8 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)



;━━━━━━━━━━━━━ 通常 ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 裂き2]
type = ChangeState
value = 210
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=S
triggerall = command ="a" 
trigger1 = ctrl && command ="holdfwd" 
trigger2 = stateno=200 && movecontact>0

[State -1, 裂き1]
type = ChangeState
value = 200
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=S
triggerall = command ="a" 
trigger1 = ctrl ||(stateno=210 && movecontact>0)
trigger2 = ctrl ||(stateno=100 && time>15) 

[State -1, ミンチ]
type = ChangeState
value = 220
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=S
triggerall = command ="b" && command="holdfwd"
trigger1 = ctrl||(stateno=100&&time>15) 
trigger2 = (stateno=[200,210]) && movecontact>0
trigger3 = stateno=240 && movecontact>0

[State -1, スピン]
type = ChangeState
value = 230
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=S
triggerall = command ="b" 
trigger1 = ctrl||(stateno=100&&time>15) 
trigger2 = (stateno=[200,210]) && movecontact>0
trigger3 = stateno=240 && movecontact>0

[State -1, 金的キック]
type = ChangeState
value = 240
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=S
triggerall = command ="x" 
trigger1 = ctrl 

[State -1, しゃがみ裂き]
type = ChangeState
value = 410
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=C
triggerall = command ="a" 
trigger1 = ctrl 
trigger2 = stateno=400 && movecontact>0

[State -1, かち上げ]
type = ChangeState
value = 420
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=C
triggerall = command ="b" 
trigger1 = ctrl 
trigger2 = (stateno=[400,410]) && movecontact>0

[State -1, しゃがみキック]
type = ChangeState
value = 400
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=C
triggerall = command ="x" 
trigger1 = ctrl 


[State -1, 真っ二つ]
type = ChangeState
value = 630
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=A
triggerall = command ="b" && command="holddown"
trigger1 = ctrl 
trigger2 = (stateno=[600,620]) && movecontact>0

[State -1, 空中キック]
type = ChangeState
value = 610
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=A
triggerall = command ="x" 
trigger1 = ctrl 

[State -1, ジャンプ切]
type = ChangeState
value = 600
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=A
triggerall = command ="a" 
trigger1 = ctrl 
trigger2 = stateno=610 && movecontact>0

[State -1, ジャンプスピン]
type = ChangeState
value = 620
triggerall = AILevel = 0 && RoundState = 2 && alive && statetype=A
triggerall = command ="b" 
trigger1 = ctrl 
trigger2 = (stateno=[600,610]) && movecontact>0






;━━━━━━━━━━━━━ 移動関連 ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = AILevel = 0 
triggerall = command = "BB"&& ctrl
trigger1 = statetype = S

[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = AILevel = 0 
triggerall = command = "FF"&& ctrl
trigger1 = statetype = S

[State -1, 空中受け身]
Type = ChangeState
Value = 5210
triggerall = RoundState = 2 && StateNo = 5050 && alive
triggerall = CanRecover && Vel Y > -1
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "y"
trigger4 = command = "x"

[State -1,ジャンプ（コンボ用）]
Type = ChangeState
Value = 40
trigger1 = command = "holdup"
trigger1 = stateno = 420 && movehit>0












;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI用：技の記述 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


;━━━━━━━━━━━━━ 必殺 ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 光ん力/永久機関が完成しちまったなアア～！！これでノーベル賞は俺んモンだぜ～！！]
type = ChangeState
value = 1020
triggerall = AILevel != 0 && RoundState = 2 && alive && statetype!=A && power>=2000 &&var(0)<=0
trigger1 = random<400 && (ctrl||stateno=20) 

[State -1, ビーム！俺に後悔させんじゃねえぞ！！！！]
type = ChangeState
value = 1010
triggerall = AILevel != 0 && RoundState = 2 && alive && statetype!=A && power>=1000
triggerall = p2dist x < 130
trigger1 = random<10 && (ctrl||stateno=20) 
trigger2 = random<10 &&(stateno=[200,499]) && movecontact>0

[State -1, kickback]
type = ChangeState
value = 1000
triggerall = AILevel != 0 && RoundState = 2 && alive && statetype!=A && power>=1000 && (p2stateno!=[5100,5200])
triggerall = p2dist x < 210
trigger1 = random<10 && (ctrl||stateno=20) 
trigger2 = random<10 &&(stateno=[200,499]) && movecontact>0



;━━━━━━━━━━━━━ 投げ ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 投げ]
Type = ChangeState
Value = 700
TriggerAll = AILevel != 0 
TriggerAll = RoundState = 2 && statetype = S 
TriggerAll = p2movetype != H && p2statetype != A && p2statetype != L
TriggerAll = ctrl && (P2Dist X = [-11,45])
trigger1 = random < 80


;━━━━━━━━━━━━━ 通常 ━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 裂き1]
type = ChangeState
value = 210
triggerall = AILevel != 0 && RoundState = 2 && statetype = S && (p2stateno!=[5100,5200])
triggerall = P2Dist X < 80
trigger1 = ctrl && random < 180
trigger2 = Stateno = 200 &&  MoveContact >= 1 && random < 120

[State -1, 裂き2]
type = ChangeState
value = 200
triggerall = AILevel != 0 && RoundState = 2 && statetype = S && (p2stateno!=[5100,5200])  
trigger1 = ctrl||(stateno=100&&time>15) 
trigger1 = P2Dist X < 80 && random < 180
trigger2 = Stateno = 210 && MoveContact >= 1 && random < 320

[State -1, ミンチ]
type = ChangeState
value = 220
triggerall = AILevel != 0 && RoundState = 2 && statetype = S && (p2stateno!=[5100,5200])
trigger1 = ctrl && P2Dist X < 160  && random < 30
trigger2 = Stateno = 210 && MoveContact >= 1 && random < 120
trigger3 = Stateno = 100 && time > 10 && P2Dist X < 170 && (P2Dist Y = [-80,80]) && random < 30 && pos Y >= -1

[State -1, スピン]
type = ChangeState
value = 230
triggerall = AILevel != 0 && RoundState = 2 && statetype = S && (p2stateno!=[5100,5200])
trigger1 = ctrl && P2Dist X < 150  && random < 30
trigger2 = Stateno = 210 && MoveContact >= 1 && random < 120


[State -1, 金的キック]
type = ChangeState
value = 240
triggerall = AILevel != 0 && RoundState = 2 && statetype = S && p2statetype!=A 
triggerall = ctrl && (p2stateno!=[5100,5200]) 
trigger1 = P2Dist X < 70 && random < 120
trigger2 = P2Dist X < 90 && random < 50 && p2movetype=A

[State -1, しゃがみ裂き]
type = ChangeState
value = 410
triggerall = AILevel != 0 && RoundState = 2 && statetype = C && (p2stateno!=[5100,5200])  
trigger1 = ctrl && P2Dist X < 90 && random < 600
trigger2 = Stateno = 400 && MoveContact >= 1 && random < 120

[State -1, かち上げ]
type = ChangeState
value = 420
triggerall = AILevel != 0 && RoundState = 2 && statetype = C
triggerall = P2Dist X < 70
trigger1 = ctrl && (P2Dist Y = [-110,80]) && random < 350
trigger2 = (Stateno = [400,410]) && MoveContact >= 1 && random < 120

[State -1, しゃがみキック]
type = ChangeState
value = 400
triggerall = AILevel != 0 && RoundState = 2 && ctrl 
trigger1 = statetype = C && (P2Dist X = [0,80]) && (P2Dist Y = [-50,50]) && random < 140
trigger2 = statetype = S && (P2Dist X = [0,80]) && (P2Dist Y = [-50,50]) && random < 120


[State -1, 真っ二つ]
type = ChangeState
value = 630
triggerall = AILevel != 0 && RoundState = 2 && statetype = A
trigger1 = ctrl && (P2Dist X = [0,60]) && random < 80
trigger2 = (stateno=[600,610]) && MoveContact >= 1 && random < 80

[State -1, 空中キック]
type = ChangeState
value = 610
triggerall = AILevel != 0 && RoundState = 2 && statetype = A
trigger1 = ctrl && (P2Dist X = [0,120]) && (P2Dist Y = [-50,120]) && random < 80

[State -1, ジャンプ切]
type = ChangeState
value = 600
triggerall = AILevel != 0 && RoundState = 2 && statetype = A
trigger1 = ctrl && (P2Dist X = [0,120]) && (P2Dist Y = [-50,80]) && random < 140
trigger2 = Stateno = 610 && MoveContact >= 1 && random < 120

[State -1, ジャンプスピン]
type = ChangeState
value = 620
triggerall = AILevel != 0 && RoundState = 2 && statetype = A
trigger1 = ctrl && (P2Dist X = [0,190]) && (P2Dist Y = [-90,120]) && random < 80 
trigger2 = (stateno=[600,610]) && MoveContact >= 1 && random < 80





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ガード系 (流用)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, ガード始動]
type       = ChangeState
triggerall = AILevel!= 0 && MoveType != H && RoundState = 2 && Alive && var(0)<=0
triggerall = (Ctrl||stateno=20)
triggerall = StateNo != [130, 139]
triggerall = InGuardDist
trigger1   = random<875
trigger2 = prevstateno=5120 && InGuardDist && random<450
value      = 120;ifelse(statetype=A,132,ifelse(random%2=0,131,130))

[State -1, スライド移動しながらガードしないように]
type = VelSet
triggerAll = AILevel!= 0  && MoveType != H && RoundState = 2 && Alive 
triggerAll = StateNo = [130, 139] 
trigger1 = (StateType = S ||StateType = C) && Vel X != 0 && !time
x = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI用コモン記述 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, バグ回避用_立ち/しゃがみガード] 
type = ctrlset
Value = 1
triggerall = AILevel!= 0 && (RoundState = [2,3])    
trigger1 = ctrl=0 && stateno = 0  && (prevstateno = [10,21])
trigger2 = ctrl=0 && stateno = 131 && time > 60 && !InGuardDist

[State -1, 前/後ろ歩き] 
type = ChangeState
Value = 20
triggerall = AILevel  != 0 && RoundState = 2 && stateno != 20
Triggerall = StateType = S && Ctrl && (stateno != [120,155])	     
trigger1 =  P2Dist X > 110 	  && random < 900
trigger2 = (P2Dist X = [50,110])  && random < 50
trigger3 = (P2Dist X = [-50,50])  && random < 400
ctrl = 0

[State -1, Back-Step]
Type = ChangeState
Value = 105
TriggerAll = AILevel!= 0 && RoundState = 2 && alive && (Ctrl||stateno=20)
TriggerAll = statetype = S && frontedgebodydist<15 && pos y < -15
TriggerAll = BackEdgeBodyDist >= 15 && P2MoveType != H 
Trigger1 = Random < 20
Trigger2 = Random < 80 && P2MoveType = A && P2Dist X < 80 
Trigger3 = Random < 50 && P2MoveType = A && InGuardDist

[State -1, Dash]
Type = ChangeState
Value = 100
TriggerAll = AILevel!= 0 && RoundState = 2 && alive && statetype != A
TriggerAll = (Ctrl||stateno=20) && P2Dist X > 180 && statetype!=A
Trigger1 = P2StateType = L && !InGuardDist && Random < 120
Trigger2 = P2MoveType != A && Random < 100
trigger3 = var(0)>0 && random<180

[State -1, ジャンプ]
Type = ChangeState
Value = 40
TriggerAll = AILevel != 0  && RoundState = 2
TriggerAll = StateType != A 
triggerAll = StateNo != [110,159]
TriggerAll = stateno=20 
trigger1 = random<40 && var(0)=0


[State -1, ジャンプ コンボ用]
Type = ChangeState
Value = 40
triggerall = AILevel != 0 && RoundState = 2 && alive && stateno = 420
triggerall = movehit>0
trigger1 = random<420

[State -1, 空中受け身]
Type = ChangeState
Value = 5210
triggerall = RoundState = 2 && AILevel!=0 && alive
triggerAll = Vel Y > -1 && pos y < -10
triggerAll = Alive
triggerAll = StateNo = 5050
trigger1 = CanRecover
trigger1 = Random <= 100

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


