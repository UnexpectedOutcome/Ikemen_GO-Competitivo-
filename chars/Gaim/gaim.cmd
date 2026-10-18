;〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓
;			Win版専用パート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| ボタンリマップ(ボタンコンフィグ) |━━━━━━━━━━━━━━━━━━
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃



;━| デフォルト設定 |━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Defaults]
Command.time = 15	;標準のコマンド入力受付時間。
			;各コマンドで省略している場合に有効。
			;このパラメータを消した場合、デフォルトは１フレームになる。
			;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

Command.buffer.time = 1	;標準のコマンド入力記憶時間。
			;入力した直後にコマンドを記憶し、
			;指を離してもコマンドが成功している状態を
			;ここで設定した時間の分維持する。
			;１～３０フレームまでの間で設定可能。
			;デフォルトは１フレーム。






;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;			コマンド定義
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  < AI >  |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "AI0"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI1"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name	= "AI2"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI3"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI4"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI5"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI6"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI7"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name	= "AI8"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name	= "AI9"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name	= "AI10"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name	= "AI11"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI12"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI13"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI14"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI15"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI16"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI17"
Command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name	= "AI18"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI19"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name	= "AI20"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI21"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI22"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI23"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI24"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI25"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name	= "AI26"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name	= "AI27"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name	= "AI28"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name	= "AI29"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name	= "AI30"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name	= "AI31"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name	= "AI32"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name	= "AI33"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI34"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name	= "AI35"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI36"
Command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI37"
Command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name	= "AI38"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name	= "AI39"
Command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name	= "AI40"
Command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name	= "AI41"
Command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name	= "AI42"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI43"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name	= "AI44"
Command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name	= "AI45"
Command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name	= "AI46"
Command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name	= "AI47"
Command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name	= "AI48"
Command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name	= "AI49"
Command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name	= "AI50"
Command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0	





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 超必殺技 |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;極乱舞
[Command]
name	= "FDB, c"
Command = ~F, D, B, c
time = 45
buffer.time = 5


;カチドキ砲
[Command]
name	= "DFDF_z"
Command = ~D, F, D, F, z
time = 30
buffer.time = 5

;ジンバーレモン：無頼キック
[Command]
name	= "DFDF_c"
Command = ~D, F, D, F, c
time = 30
buffer.time = 5

;ジンバーレモン：ソニックボレー
[Command]
name	= "DBDB_c"
Command = ~D, B, D, B, c
time = 30
buffer.time = 5

;スイカアームズ：大玉モード
[Command]
name	= "DFDF_y"
Command = ~D, F, D, F, y
time = 30
buffer.time = 5

;ナギナタ無双スライサー
[Command]
name	= "DBDB_x"
Command = ~D, B, D, B, x
time = 30
buffer.time = 5

;イチゴスカッシュ
[Command]
name	= "DFDF_x"
Command = ~D, F, D, F, x
time = 30
buffer.time = 5

;無頼キック
[Command]
name	= "DFDF_a"
Command = ~D, F, D, F, a
time = 30
buffer.time = 5


;サクラハリケーン
[Command]
name	= "DFDF_b"
Command = ~D, F, D, F, b
time = 30
buffer.time = 5




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  必殺技  |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


;クルミアッパー
[Command]
name	= "DD_c"
Command = D, D, c
time = 20

;影松
[Command]
name	= "DB_c"
Command = D, B, c　
time = 20

;バナナ鎧武
[Command]
name	= "DD_x"
Command = D, D, x
time = 20


;火縄大橙DJ銃大砲モード
[Command]
name	= "BDF_z"
Command = B, D, F , z　
time = 20

;火縄大橙炎突破
[Command]
name	= "DD_z"
Command = D, D, z　
time = 20

;大橙スラッシュ（強）
[Command]
name	= "DF_z"
Command = D, F, z　
time = 20

;大橙スラッシュ（弱）
[Command]
name	= "DB_z"
Command = D, B, z　
time = 20

;ナギナタスラッシュ（弱）
[Command]
name	= "DB_x"
Command = D, B, x
time = 20

;ナギナタスラッシュ（強）
[Command]
name	= "DB_y"
Command = D, B, y
time = 20

;イチゴクナイ（弱）
[Command]
name	= "DF_a"
Command = D, F, a
time = 20

;イチゴクナイ（強）
[Command]
name	= "DF_b"
Command = D, F, b
time = 20

;パインアイアン（弱）
[Command]
name	= "DB_a"
Command = D, B, a
time = 20

;パインアイアン（強）
[Command]
name	= "DB_b"
Command = D, B, b　
time = 20

;無双セイバーガンモード（弱）
[Command]
name	= "DF_x"
Command = D, F, x
time = 20

;無双セイバーガンモード（強）
[Command]
name	= "DF_y"
Command = D, F, y
time = 20

;ソニックアロー射撃
[Command]
name	= "SA_z"
Command = z
time = 5

;ソニックアロー斬撃
[Command]
name	= "SA_c"
Command = c
time = 5



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 特殊技・サブシステム |━━━━━━━━━━━━━━━━━━━━━━━━

[Command]
name	= "recovery"
Command = a+b
time = 1

;極発動
[Command]
name	= "abc"
Command = a+b+c
time = 20

;カチドキ発動
[Command]
name	= "xyz"
Command = x+y+z
time = 20

;ジンバー発動
[Command]
name	= "cz"
Command = c+z
time = 20


[Command];ハイジャンプ
name	= "HJ"
Command = ~$D, $U
time = 8

[Command];ハイジャンプ暴発阻止
name	= "NHJ"
Command = ~12$D, $U
time = 8

[Command];ハイジャンプ暴発阻止
name	= "NHJ"
Command = /$D
time = 12 


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| キー２回連続入力 |━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "FF"     
Command = F, F
time = 10

[Command]
name	= "BB"     
Command = B, B
time = 10


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| 方向キー＋ボタン |━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "down_a"
Command = /$D,a
time = 1

[Command]
name	= "down_b"
Command = /$D,b
time = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━| ボタン単発 |━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "a"
Command = a
time = 1

[Command]
name	= "b"
Command = b
time = 1

[Command]
name	= "c"
Command = c
time = 1

[Command]
name	= "x"
Command = x
time = 1

[Command]
name	= "y"
Command = y
time = 1

[Command]
name	= "z"
Command = z
time = 1

[Command]
name	= "start"
Command = s
time = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━|  押しっぱなし設定  |━━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name	= "holdfwd"
Command = /$F
time = 1

[Command]
name	= "holdback"
Command = /$B
time = 1

[Command]
name	= "holdup" 
Command = /$U
time = 1

[Command]
name	= "holddown"
Command = /$D
time = 1

[Command]
name	= "holda"
Command = /a
time = 1

[Command]
name	= "holdb"
Command = /b
time = 1

[Command]
name	= "holdc"
Command = /c
time = 1

[Command]
name	= "holdx"
Command = /x
time = 1

[Command]
name	= "holdy"
Command = /y
time = 1

[Command]
name	= "holdz"
Command = /z
time = 1




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;			ステートエントリーパート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ■準常時監視ステート（－１）■
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━



[Statedef -1]



;挑発
[State -1, Stand]
type	= ChangeState
value	= 900
triggerAll = Var(59) = 0
triggerAll = Command = "start"
triggerAll = StateType != A
trigger1 = Ctrl



;喰らい抜けジンバーVer.
[State -1, Stand]
type	= ChangeState
value	= 3420
triggerAll = Var(59) = 0
triggerAll = Command = "cz"
triggerAll = Command != "holddown"
triggerAll = var(39) = 0
triggerAll = var(40) = 1
triggerAll = StateType != A
triggerAll = Alive
trigger1 = StateNo = 5000 && time > 0
trigger2 = StateNo = 5010 && time > 0
trigger3 = StateNo = 5020 && time > 0
trigger4 = StateNo = 5070 && time > 0
trigger5 = StateNo = 5030 && time > 0
trigger6 = StateNo = 5035 && time > 0
trigger7 = StateNo = 5040 && time > 0




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				超必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;極乱舞
[State -1, Super Arts]
type	= ChangeState
value	= 3800
triggerAll = Var(59) = 0
triggerAll = fVar(35) >= 3000
triggerAll = power >= 3000
triggerAll = var(40) = 3
triggerAll = Command = "FDB, c"
triggerAll = StateType != A
triggerAll = life <= 300
trigger1 = Ctrl

;スイカ双刃刀
[State -1, Super Arts]
type	= ChangeState
value	= 3840
triggerAll = Var(59) = 0
triggerAll = power >= 1000
triggerAll = var(40) = 3
triggerAll = Command = "DFDF_y"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = hitdefattr = A, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;極発動
[State -1, Super Arts]
type	= ChangeState
value	= 3700
triggerAll = Var(59) = 0
triggerAll = fVar(35) >= 3000
triggerAll = var(40) = 2
triggerAll = var(39) = 0
triggerAll = Command = "abc"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;カチドキ発動
[State -1, Super Arts]
type	= ChangeState
value	= 3600
triggerAll = Var(59) = 0
triggerAll = fVar(35) >= 3000
triggerAll = var(39) = 0
triggerAll = Command = "xyz"
triggerAll = var(40) <= 1
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;カチドキ砲
[State -1, Super Arts]
type	= ChangeState
value	= 3620
triggerAll = Var(59) = 0
triggerAll = Command = "DFDF_z"
triggerAll = power >= 2000
triggerAll = var(40) >= 2
triggerAll = var(39) = 0
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;カチドキ発動：カチドキ砲
[State -1, Super Arts]
type	= ChangeState
value	= 3500
triggerAll = Var(59) = 0
triggerAll = Command = "DFDF_z"
triggerAll = power >= 2000
triggerAll = fVar(35) >= 3000
triggerAll = var(39) = 0
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;ジンバーレモン発動：無頼キック
[State -1, Super Arts]
type	= ChangeState
value	= 3425
triggerAll = Var(59) = 0
triggerAll = var(40) = 0
triggerAll = fVar(35) >= 1500
triggerAll = Command = "DFDF_c"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;ジンバーレモン：無頼キック
[State -1, Super Arts]
type	= ChangeState
value	= 3426
triggerAll = Var(59) = 0
triggerAll = var(40) >= 1
triggerAll = Command = "DFDF_c"
triggerAll = power >= 1000
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3411
trigger2 = StateNo != [3500,3507]


;ジンバーレモン発動：ソニックボレー
[State -1, Super Arts]
type	= ChangeState
value	= 3460
triggerAll = Var(59) = 0
triggerAll = fVar(35) >= 1500
triggerAll = var(40) = 0
triggerAll = Command = "DBDB_c"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]
trigger3 = Ctrl
trigger3 = ProjContact = 1,<20		;スパキャン用トリガー


;ジンバーレモン：ソニックボレー
[State -1, Super Arts]
type	= ChangeState
value	= 3461
triggerAll = Var(59) = 0
triggerAll = var(40) >= 1
triggerAll = Command = "DBDB_c"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;オレンジ無頼キック
[State -1, Super Arts]
type	= ChangeState
value	= 1600
triggerAll = Var(59) = 0
triggerAll = Command = "DFDF_a"
triggerAll = power >= 1000
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger3 = StateNo = 1320 && animelemtime(6) >= 0
trigger2 = StateNo != [3500,3507]


;無頼キック
[State -1, Super Arts]
type	= ChangeState
value	= 3000
triggerAll = Var(59) = 0
triggerAll = Command = "DFDF_a"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;イチゴスカッシュ
[State -1, Super Arts]
type	= ChangeState
triggerAll = Var(59) = 0
value	= ifelse(life >= 300,3100,3110)
triggerAll = Command = "DFDF_x"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;ナギナタ無双スライサー
[State -1, Super Arts]
type	= ChangeState
value	= 3300
triggerAll = Var(59) = 0
triggerAll = Command = "DBDB_x"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;大玉ビックバン
[State -1, Super Arts]
type	= ChangeState
value	= 3200
triggerAll = Var(59) = 0
triggerAll = Command = "DFDF_y"
triggerAll = power >= 1000
triggerAll = Var(41) = 0
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;サクラハリケーン
[State -1, Super Arts]
type	= ChangeState
value	= 1500
triggerAll = Var(59) = 0
triggerAll = Command = "DFDF_b"
triggerAll = power >= 1000
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]

;ジンバー発動
[State -1, Stand]
type	= ChangeState
value	= 3400
triggerAll = Var(59) = 0
triggerAll = fVar(35) >= 1500
triggerAll = Command = "cz"
triggerAll = Command != "holddown"
triggerAll = var(40) = 0
triggerAll = StateType != A
trigger1 = Ctrl


;ソニックアロー射撃
[State -1, Arts]
type	= ChangeState
value	= 3410
triggerAll = Var(59) = 0
triggerAll = Command = "SA_z"
triggerAll = var(40) = 1
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;ソニックアロー斬撃
[State -1, Arts]
type	= ChangeState
value	= 3411
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c"
triggerAll = var(40) = 1
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3411 && stateno != 1110
trigger2 = StateNo != [3500,3507]


;ジンバーキックz
[State -1, Jump Light Kick]
type	= ChangeState
value	= 3412
triggerAll = Var(59) = 0
triggerAll = Command = "z"
triggerAll = var(40) = 1
triggerAll = (StateNo != [3412,3413])
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = (StateNo = [600,630]) && MoveContact
trigger2 = StateNo != [3500,3507]


;ジンバーキックc
[State -1, Jump Strong Kick]
type	= ChangeState
value	= 3413
triggerAll = Var(59) = 0
triggerAll = Command = "c"
triggerAll = var(40) = 1
triggerAll = (StateNo != [3412,3413])
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = (StateNo = [600,630]) && MoveContact
trigger2 = StateNo != [3500,3507]


;火縄大橙炎突破
[State -1, Arts]
type	= ChangeState
value	= 3640
triggerAll = Var(59) = 0
triggerAll = var(40) >= 2
triggerAll = Command = "DD_z"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;大橙大砲モード
[State -1, Arts]
type	= ChangeState
value	= 3645
triggerAll = Var(59) = 0
triggerAll = var(40) >= 2
triggerAll = Command = "BDF_z"
triggerAll = fVar(35) >= 1500
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;大橙スラッシュ（弱）
[State -1, Arts]
type	= ChangeState
value	= 3630
triggerAll = Var(59) = 0
triggerAll = var(40) >= 2
triggerAll = Command = "DB_z"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;大橙スラッシュ（強）
[State -1, Arts]
type	= ChangeState
value	= 3635
triggerAll = Var(59) = 0
triggerAll = var(40) >= 2
triggerAll = Command = "DF_z"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;カチドキ射撃
[State -1, Arts]
type	= ChangeState
value	= 3610
triggerAll = Var(59) = 0
triggerAll = Command = "SA_z"
triggerAll = var(40) = 2
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;カチドキ旗
[State -1, Arts]
type	= ChangeState
value	= 3611
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c"
triggerAll = var(40) = 2
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3611 && stateno != 1110
trigger2 = StateNo != [3500,3507]


;カチドキキックz
[State -1, Jump Light Kick]
type	= ChangeState
value	= 3612
triggerAll = Var(59) = 0
triggerAll = Command = "z" || Command = "c"
triggerAll = var(40) = 2
triggerAll = (StateNo != [3412,3413])
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = (StateNo = [600,630]) && MoveContact
trigger2 = StateNo != [3500,3507]


;カチドキキックc
[State -1, Jump Strong Kick]
type	= ChangeState
value	= 3613
triggerAll = Var(59) = 0
triggerAll = Command = "c"
triggerAll = var(40) = 2
triggerAll = (StateNo != [3412,3413])
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = (StateNo = [600,630]) && MoveContact
trigger2 = StateNo != [3500,3507]



;極射撃(バナスピアー・マンゴパニッシャー・イチゴクナイ)
[State -1, Arts]
type	= ChangeState
value	= 3714
triggerAll = Var(59) = 0
triggerAll = Command = "SA_z" && Command = "holdfwd"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact
trigger2 = StateNo != [3500,3507]


;極射撃(影松・影松真)
[State -1, Arts]
type	= ChangeState
value	= 3715
triggerAll = Var(59) = 0
triggerAll = Command = "SA_z" && Command = "holdback"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;極射撃(クルミボンバー)
[State -1, Arts]
type	= ChangeState
value	= 3716
triggerAll = Var(59) = 0
triggerAll = Command = "SA_z" && Command = "holddown"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3611 && stateno != 1110
trigger3 = StateNo = [3700,3730]
trigger3 = MoveContact


;極射撃(キウイ撃輪・ドリノコ・ドンカチ)
[State -1, Arts]
type	= ChangeState
value	= 3710
triggerAll = Var(59) = 0
triggerAll = Command = "SA_z"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;ドンカチ
[State -1, Arts]
type	= ChangeState
value	= 3835
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c" && Command = "holdfwd"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3711 && stateno != 3717 && stateno != 1110
trigger2 = StateNo != [3500,3507]

;影松
[State -1, Arts]
type	= ChangeState
value	= 3820
triggerAll = Var(59) = 0
triggerAll = Command = "DB_c"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3711 && stateno != 3717 && stateno != 1110
trigger2 = StateNo != [3500,3507]

;影松・真
[State -1, Arts]
type	= ChangeState
value	= 3825
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = StateNo = 3820 && movecontact

;クルミ昇竜拳
[State -1, Arts]
type	= ChangeState
value	= 3850
triggerAll = Var(59) = 0
triggerAll = Command = "DD_c"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3711 && stateno != 3717 && stateno != 1110
trigger2 = StateNo != [3500,3507]


;クルミ昇竜拳追加1
[State -1, Arts]
type	= ChangeState
value	= 3851
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c"
triggerAll = var(40) = 3
trigger1 = StateNo = 3850 && movehit


;クルミ昇竜拳追加2
[State -1, Arts]
type	= ChangeState
value	= 3852
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c"
triggerAll = var(40) = 3
trigger1 = StateNo = 3851 && movehit

;無双斬
[State -1, Arts]
type	= ChangeState
value	= 3711
triggerAll = Var(59) = 0
triggerAll = Command = "SA_c"
triggerAll = var(40) = 3
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = hitdefattr = SC, NA, SA		;スパキャン用トリガー
trigger2 = MoveContact && stateno != 3711 && stateno != 3717 && stateno != 1110
trigger2 = StateNo != [3500,3507]


;空中斬撃z
[State -1, Jump Light Kick]
type	= ChangeState
value	= 3712
triggerAll = Var(59) = 0
triggerAll = Command = "z" || Command = "c"
triggerAll = var(40) = 3
triggerAll = (StateNo != [3412,3413])
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = (StateNo = [600,630]) && MoveContact
trigger2 = StateNo != [3500,3507]
trigger3 = MoveContact && stateno = 3717 && animelemtime(4) >= 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;ナギナタスラッシュ（弱）
[State -1, Arts]
type	= ChangeState
value	= 1000
triggerAll = Var(59) = 0
triggerAll = Command = "DB_x"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;ナギナタスラッシュ（強）
[State -1, Arts]
type	= ChangeState
value	= 1010
triggerAll = Var(59) = 0
triggerAll = Command = "DB_y"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact

;イチゴクナイ（弱）
[State -1, Arts]
type	= ChangeState
value	= 1200
triggerAll = Var(59) = 0
triggerAll = Command = "DF_a"
triggerAll = StateNo != 1200
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;イチゴクナイ（強）
[State -1, Arts]
type	= ChangeState
value	= 1210
triggerAll = Var(59) = 0
triggerAll = Command = "DF_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;パインアイアン（弱）
[State -1, Arts]
type	= ChangeState
value	= 1100
triggerAll = Var(59) = 0
triggerAll = Command = "DB_a"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;パインアイアン（強）
[State -1, Arts]
type	= ChangeState
value	= 1110
triggerAll = Var(59) = 0
triggerAll = Command = "DB_b"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact



;無双セイバーガンモード（弱）
[State -1, Arts]
type	= ChangeState
value	= 1300
triggerAll = Var(59) = 0
triggerAll = Command = "DF_x"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;無双セイバーガンモード（強）
[State -1, Arts]
type	= ChangeState
value	= 1310
triggerAll = Var(59) = 0
triggerAll = Command = "DF_y"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact


;無双セイバーガンモード（空）
[State -1, Arts]
type	= ChangeState
value	= 1320
triggerAll = Var(59) = 0
triggerAll = Command = "DF_y" || Command = "DF_x"
triggerAll = StateType = A
triggerAll = Pos Y <= -40
trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveContact



;バナナ鎧武
[State -1, Arts]
type	= ChangeState
value	= 2000
triggerAll = Var(59) = 0
triggerAll = Command = "DD_x"
triggerAll = Power >= 500
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = MoveContact




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				特殊行動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;ゲージ変換
[State -1, Arts]
type	= ChangeState
value	= 906
triggerAll = Var(59) = 0
triggerAll = Power < 3000
triggerAll = fVar(35) >= 1500
triggerAll = StateType != A
triggerAll = Ctrl
trigger1 = Command = "b" && Command = "y" && Command = "holddown"
trigger2 = Command = "holdb" && Command = "holdy" && Command = "holddown"


;パワーチャージ
[State -1, Arts]
type	= ChangeState
value	= 905
triggerAll = Var(59) = 0
triggerAll = Command = "holdb" && Command = "holdy"
triggerAll = fVar(35) < 3000
trigger1 = StateType != A
trigger1 = Ctrl


; くらい抜け
[State -1]
type	= ChangeState
value	= ifelse(StateType!=A,910,915)
triggerAll = Var(59) = 0
triggerAll = Alive
triggerAll = (Command = "a" && Command = "b")
triggerAll = var(39) = 0
TriggerAll = Var(40) <= 1
trigger1 = StateNo = 5000 && time > 0
trigger2 = StateNo = 5010 && time > 0
trigger3 = StateNo = 5020 && time > 0
trigger4 = StateNo = 5070 && time > 0
trigger5 = StateNo = 5030 && time > 0
trigger6 = StateNo = 5035 && time > 0
trigger7 = StateNo = 5040 && time > 0


[State -1];ハイジャンプ
type	= ChangeState
value	= 199
triggerAll = Var(59) = 0
trigger1 = Command = "HJ"
trigger1 = Command != "NHJ";不正入力排除
trigger1 = StateType != A
trigger1 = Ctrl 


;ダッシュ
[State -1, Run Fwd]
type	= ChangeState
value	= 100
triggerAll = Var(59) = 0
trigger1 = Command = "FF"
trigger1 = StateType != A
trigger1 = Ctrl


;後退ダッシュ
[State -1, Run Back]
type	= ChangeState
value	= 105
triggerAll = Var(59) = 0
trigger1 = Command = "BB"
trigger1 = StateType != A
trigger1 = Ctrl


;投げ
[State -1, Throw]
type	= ChangeState
value	= 800
triggerAll = Var(59) = 0
triggerAll = Command = "y"
triggerAll = StateType != A
triggerAll = Ctrl
triggerAll = StateNo != 100
trigger1 = Command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (P2StateType = S) || (P2StateType = C)
trigger1 = p2movetype != H
trigger2 = Command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (P2StateType = S) || (P2StateType = C)
trigger2 = p2movetype != H




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;				通常攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	立ち攻撃
;━━━━━━━━━━━━━━━━
;立ち弱パンチ
[State -1, Stand Light Punch]
type	= ChangeState
value	= 200
triggerAll = Var(59) = 0
triggerAll = Command = "x"
triggerAll = Command != "holddown"
triggerAll = StateType != A
trigger1 = Ctrl


;立ち強パンチ
[State -1, Stand Strong Punch]
type	= ChangeState
value	= 210
triggerAll = Var(59) = 0
triggerAll = Command = "y"
triggerAll = Command != "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 220 && MoveContact


;立ち弱キック近
[State -1, Stand Light Kick]
type	= ChangeState
value	= 220
TriggerAll = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 25
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 220 && MoveContact


;立ち弱キック
[State -1, Stand Light Kick]
type	= ChangeState
value	= 221
TriggerAll = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist   X > 25 
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 220 && MoveContact


;立ち強キック
[State -1, Standing Strong Kick]
type	= ChangeState
value	= 230
triggerAll = Var(59) = 0
triggerAll = Command = "b"
triggerAll = Command != "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 220 && MoveContact




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	しゃがみ攻撃
;━━━━━━━━━━━━━━━━
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type	= ChangeState
value	= 400
triggerAll = Var(59) = 0
triggerAll = Command = "x"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl


;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type	= ChangeState
value	= 410
triggerAll = Var(59) = 0
triggerAll = Command = "y"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 220 && MoveContact


;しゃがみ弱キック
[State -1, Crouching Light Kick]
type	= ChangeState
value	= 420
triggerAll = Var(59) = 0
triggerAll = Command = "a"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 220 && MoveContact


;しゃがみ強キック
[State -1, Crouching Strong Kick]]
type	= ChangeState
value	= 430
triggerAll = Var(59) = 0
triggerAll = Command = "b"
triggerAll = Command = "holddown"
triggerAll = StateType != A
trigger1 = Ctrl
trigger2 =(StateNo = [200,299])
trigger2 = MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 420 && MoveContact





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	空中攻撃
;━━━━━━━━━━━━━━━━
;空中弱パンチ
[State -1, Jump Light Punch]
type	= ChangeState
value	= 600
triggerAll = Var(59) = 0
triggerAll = Command = "x"
triggerAll = StateType = A
trigger1 = Ctrl


;空中強パンチ
[State -1, Jump Strong Punch]
type	= ChangeState
value	= 610
triggerAll = Var(59) = 0
triggerAll = Command = "y"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 620 && MoveContact


;空中弱キック
[State -1, Jump Light Kick]
type	= ChangeState
value	= 620
triggerAll = Var(59) = 0
triggerAll = Command = "a"
triggerAll = StateType = A
trigger1 = Ctrl


;空中強キック
[State -1, Jump Strong Kick]
type	= ChangeState
value	= 630
triggerAll = Var(59) = 0
triggerAll = Command = "b"
triggerAll = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 620 && MoveContact

