;---------------------------------------------------------------------------
;デフォルト設定
;---------------------------------------------------------------------------
[Defaults]
command.time = 1
command.buffer.time = 1

;[Remap];自分用
;a = y
;b = x
;z = a
;c = b
;---------------------------------------------------------------------------
;スペルコマンド
;---------------------------------------------------------------------------
[Command]
name = "236236a"
command = ~D, DF, F, D, DF, a
time = 30

[Command]
name = "214214a"
command = ~D, DB, B, D, DB, a
time = 30

[Command]
name = "236236b"
command = ~D, DF, F, D, DF, b
time = 30

[Command]
name = "214214b"
command = ~D, DB, B, D, DB, b
time = 30

[Command]
name = "236236c"
command = ~D, DF, F, D, DF, c
time = 30

[Command]
name = "214214c"
command = ~D, DB, B, D, DB, c
time = 30

;---------------------------------------------------------------------------
;スキルコマンド
;---------------------------------------------------------------------------
[Command]
name = "236b"
command = ~D, DF, F, b
time = 15

[Command]
name = "236c"
command = ~D, DF, F, c
time = 15

[Command]
name = "623b"
command = ~F, D, DF, b
time = 18

[Command]
name = "623c"
command = ~F, D, DF, c
time = 18

[Command]
name = "214b"
command = ~D, DB, B, b
time = 15

[Command]
name = "214c"
command = ~D, DB, B, c
time = 15

[Command]
name = "421b"
command = ~B, D, DB, b
time = 18

[Command]
name = "421c"
command = ~B, D, DB, c
time = 18

[Command]
name = "22b"
command = ~D, D, b
time = 15

[Command]
name = "22c"
command = ~D, D, c
time = 15

[Command]
name = "22x"
command = ~D, D, x
time = 15

[Command]
name = "22y"
command = ~D, D, y
time = 15

[Command]
name = "zz"
command = ~z, z
time = 15

;---------------------------------------------------------------------------
;その他
;---------------------------------------------------------------------------
[Command]
name = "recovery"	;必須コマンド
command = a

[Command]
name = "recovery"
command = b

[Command]
name = "recovery"
command = c

[Command]
name = "recovery"
command = z

[Command]
name = "FF"		;必須コマンド
command = F, F
time = 10

[Command]
name = "BB"		;必須コマンド
command = B, B
time = 10

[Command]
name = "DU"
command = D, $U
time = 10

;---------------------------------------------------------------------------
;ボタン単発
;---------------------------------------------------------------------------
[Command]
name = "a"
command = a

[Command]
name = "b"
command = b

[Command]
name = "c"
command = c

[Command]
name = "x"
command = x

[Command]
name = "y"
command = y

[Command]
name = "z"
command = z

[Command]
name = "start"
command = s

[Command]
name = "holdb"
command = /b

[Command]
name = "holdc"
command = /c

[Command]
name = "holdz"
command = /z

;---------------------------------------------------------------------------
;方向キー
;---------------------------------------------------------------------------
[Command]
name = "holdfwd"	;必須コマンド
command = /$F

[Command]
name = "holdback"	;必須コマンド
command = /$B

[Command]
name = "holdup"		;必須コマンド
command = /$U

[Command]
name = "holddown"	;必須コマンド
command = /$D

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;回避結界
;---------------------------------------------------------------------------
[State -1, 回避結界]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = command = "zz"
triggerall = var(21) >= 22
trigger1 = Stateno = [150, 159]
trigger1 = MoveType = H

;---------------------------------------------------------------------------
;スペルカード
;---------------------------------------------------------------------------
[State -1, 氷符「ソードフリーザー」]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "236236a"
triggerall = power >= 3000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 520]) && var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = (Stateno = [2200, 2220]) && var(10) = [1, 3]
trigger5 = (Stateno = [1100, 1320]) && var(13) = 1
trigger6 = Stateno = 100 && time >= 6

[State -1, 冷体「スーパーアイスキック」]
type = ChangeState
value = 3110
triggerall = var(59) = 0
triggerall = command = "214214a"
triggerall = power >= 3000
;triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 520]) && var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = (Stateno = [2200, 2220]) && var(10) = [1, 3]
trigger5 = (Stateno = [1100, 1320]) && var(13) = 1
trigger6 = Stateno = 100 && time >= 6

[State -1, 霜符「フロストコラムス」]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "236236b"
triggerall = power >= 4000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 520]) && var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = (Stateno = [2200, 2220]) && var(10) = [1, 3]
trigger5 = (Stateno = [1100, 1320]) && var(13) = 1
trigger6 = Stateno = 100 && time >= 6

[State -1, 吹符「アイストルネード」]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "214214b"
triggerall = power >= 4000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 520]) && var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = (Stateno = [2200, 2220]) && var(10) = [1, 3]
trigger5 = (Stateno = [1100, 1320]) && var(13) = 1
trigger6 = Stateno = 100 && time >= 6

[State -1, 氷塊「グレートクラッシャー」]
type = ChangeState
value = 3400
triggerall = var(59) = 0
triggerall = command = "236236c"
triggerall = power >= 5000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 520]) && var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = (Stateno = [2200, 2220]) && var(10) = [1, 3]
trigger5 = (Stateno = [1100, 1320]) && var(13) = 1
trigger6 = Stateno = 100 && time >= 6

[State -1, 凍符「パーフェクトフリーズ」]
type = ChangeState
value = 3500
triggerall = var(59) = 0
triggerall = command = "214214c"
triggerall = power >= 5000
;triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 520]) && var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = (Stateno = [2200, 2220]) && var(10) = [1, 3]
trigger5 = (Stateno = [1100, 1320]) && var(13) = 1
trigger6 = Stateno = 100 && time >= 6

;---------------------------------------------------------------------------
;スキル
;---------------------------------------------------------------------------
[State -1, フリーズタッチミー - b]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = fvar(6) >= 22
;triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

[State -1, フリーズタッチミー - c]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = command = "623c"
triggerall = fvar(6) >= 22
;triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

[State -1, アイスチャージ - b/c]
type = ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "236b" || command = "236c"
triggerall = fvar(6) >= 22
;triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

[State -1, 真夏のスノーマン - b/c]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "214b" || command = "214c"
triggerall = fvar(6) >= 22
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

[State -1, リトルアイスバーグ - b]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = var(38) = 0
triggerall = command = "22b"
triggerall = fvar(6) >= 22
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

[State -1, リトルアイスバーグ - c]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = var(38) = 0
triggerall = command = "22c"
triggerall = fvar(6) >= 22
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

[State -1, フローズン冷凍法 - b/c]
type = ChangeState
value = 2300
triggerall = var(59) = 0
triggerall = var(38) = 1
triggerall = command = "22b" || command = "22c"
triggerall = fvar(6) >= 22
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 500]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 720]) && var(13) = 1
trigger4 = Stateno = 100 && time >= 6

;---------------------------------------------------------------------------
;C射
;---------------------------------------------------------------------------
[State -1, 6C/J6C]
type = ChangeState
value = 720
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = fvar(6) >= 22
trigger1 = ctrl
trigger2 = (Stateno = [200, 430]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 620]) && var(13) = 1

[State -1, 2C/J2C]
type = ChangeState
value = 710
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = fvar(6) >= 22
trigger1 = ctrl
trigger2 = (Stateno = [200, 430]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 620]) && var(13) = 1

[State -1, C/JC]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = fvar(6) >= 22
trigger1 = ctrl
trigger2 = (Stateno = [200, 430]) && Stateno != 230
trigger2 = var(10) = [1, 3]
trigger3 = (Stateno = [600, 620]) && var(13) = 1

;---------------------------------------------------------------------------
;B射
;---------------------------------------------------------------------------
[State -1, 6B/J6B]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = fvar(6) >= 22
trigger1 = ctrl
trigger2 = (Stateno = [200, 400]) && Stateno != 230
trigger2 = var(10) = [1, 3]

[State -1, 2B/J2B]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = fvar(6) >= 22
trigger1 = ctrl
trigger2 = (Stateno = [200, 430]) && Stateno != 230
trigger2 = var(10) = [1, 3]

[State -1, B/JB]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = fvar(6) >= 22
trigger1 = ctrl
trigger2 = (Stateno = [200, 430]) && Stateno != 230
trigger2 = var(10) = [1, 3]

;---------------------------------------------------------------------------
;ダッシュ攻撃
;---------------------------------------------------------------------------
[State -1, DA]
type = ChangeState
value = 500
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = Stateno = 100 && time >= 1

[State -1, DB]
type = ChangeState
value = 510
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = Stateno = 100 && time >= 1

[State -1, DC]
type = ChangeState
value = 520
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = Stateno = 100 && time >= 1

;---------------------------------------------------------------------------
;空中攻撃
;---------------------------------------------------------------------------
[State -1, J8A]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = Stateno = 400 && var(10) = [1, 3]
trigger3 = Stateno = 110 || Stateno = 115
trigger3 = AnimElemTime(3) >= 0

[State -1, J6A]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = Stateno = 400 && var(10) = [1, 3]
trigger3 = Stateno = 110 || Stateno = 115
trigger3 = AnimElemTime(3) >= 0

[State -1, J2A]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = Stateno = 400 && var(10) = [1, 3]
trigger3 = Stateno = 110 || Stateno = 115
trigger3 = AnimElemTime(3) >= 0

[State -1, JA]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = Stateno = 110 || Stateno = 115
trigger2 = AnimElemTime(3) >= 0

;---------------------------------------------------------------------------
;屈攻撃
;---------------------------------------------------------------------------
[State -1, 3A]
type = ChangeState
value = 310
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 210]) || Stateno = 240 || Stateno = 300
trigger2 = var(10) = [1, 3]

[State -1, 2A]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = Stateno = 100 && time >= 6
trigger3 = Stateno = 300 && var(10) = [1, 3]

;---------------------------------------------------------------------------
;立攻撃
;---------------------------------------------------------------------------
[State -1, 6A]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (Stateno = [200, 210]) || Stateno = 240 || Stateno = 300
trigger2 = var(10) = [1, 3]

[State -1, AAAA]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = StateType != A
trigger1 = Stateno = 220 && var(10) = [1, 3]

[State -1, AAA]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = StateType != A
trigger1 = Stateno = 210 && var(10) = [1, 3]

[State -1, AA]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = StateType != A
trigger1 = Stateno = 200 && var(10) = [1, 3]

[State -1, 遠A]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = p2BodyDist X > 22
triggerall = StateType != A
trigger1 = ctrl

[State -1, A]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = p2BodyDist X <= 22
triggerall = StateType != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;スキル宣言
;---------------------------------------------------------------------------
[State -1, 22コマンド　スキル宣言]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "22x" || command = "22y"
triggerall = StateType != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;移動
;---------------------------------------------------------------------------
[State -1, ハイジャンプ]
type = ChangeState
value = 45
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = StateType != A
trigger1 = ctrl
trigger1 = command = "DU" || command = "holdz"
trigger2 = Stateno = 100 && time >= 8
trigger3 = (Stateno = [600, 720]) && var(14) = 1
trigger4 = (Stateno = [1000, 2900]) && var(14) = 1

[State -1, 前ダッシュ]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "FF" || (command = "holdz" && command = "holdfwd")
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Stateno != [100, 106]
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = command = "BB" || (command = "holdz" && command = "holdback")
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = Stateno != [100, 106]
trigger1 = ctrl
trigger2 = (Stateno = [600, 720]) && var(14) = 1
trigger3 = (Stateno = [1000, 2900]) && var(14) = 1

[State -1, 飛翔]
type = ChangeState
value = 80
triggerall = var(59) = 0
triggerall = command = "holdz"
triggerall = command = "holdfwd" || command = "holddown" || command = "holdback" || command = "holdup"
triggerall = StateType = A
triggerall = var(5) < 2
trigger1 = ctrl
trigger2 = (Stateno = [600, 720]) && var(14) = 1

[State -1, 空中前ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) = 0
triggerall = command = "FF"
triggerall = StateType = A
triggerall = var(5) < 2
trigger1 = ctrl
trigger2 = (Stateno = [600, 720]) && var(14) = 1

[State -1, 空中後ろダッシュ]
type = ChangeState
value = 115
triggerall = var(59) = 0
triggerall = command = "BB"
triggerall = StateType = A
triggerall = var(5) < 2
trigger1 = ctrl
trigger2 = (Stateno = [600, 720]) && var(14) = 1

