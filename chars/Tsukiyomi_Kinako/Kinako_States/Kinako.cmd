;-| Button Remapping |-----------------------------------------------------
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
command.time = 20
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "HCF_abc"
command = ~B,D,F,a+b+c

[Command]
name = "HCF_abc"
command = ~B,D,F,y+c

[Command]
name = "HCF_abc"
command = ~B,D,F,z+a

[Command]
name = "HCF_abc"
command = ~B,D,F,y+z

[Command]
name = "QCF_x"
command = ~D,DF,F,x
time = 15

[Command]
name = "HCB_x"
command = ~F,D,B,x

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_a"
command = ~D,DB,B,a
time = 15

[Command]
name = "QCB_b"
command = ~D,DB,B,b
time = 15

[Command]
name = "QCB_c"
command = ~D,DB,B,c
time = 15

[Command]
name = "DP_a"
command = ~F,D,DF,a

[Command]
name = "DP_b"
command = ~F,D,DF,b

[Command]
name = "DP_c"
command = ~F,D,DF,c

[Command]
name = "QCF_a"
command = ~D,DF,F,a

[Command]
name = "QCF_b"
command = ~D,DF,F,b

[Command]
name = "QCF_c"
command = ~D,DF,F,c

[Command]
name = "HCB_a"
command = ~F,D,B,a

[Command]
name = "HCF_c"
command = ~B,D,F,c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F,F
time = 12

[Command]
name = "BB"
command = B,B
time = 12

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "abc"
command = y+c
time = 1

[Command]
name = "abc"
command = z+a
time = 1

[Command]
name = "abc"
command = y+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "DB"
command = DB
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "~B"
command = ~B
time = 1

[Command]
name = "~F"
command = ~F
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
name = "s"
command = s
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

;-| Hold Dir |--------------------------------------------------------------
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
name = "holdy"
command = /y
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
name = "/UF"
command = /UF
time = 1

[Command]
name = "/UB"
command = /UB
time = 1


[Statedef -1]

;===========================================================================
; コマンド補助ヘルパー
[State -1, command+]
type = Helper
triggerall = !ishelper
triggerall = !numhelper(10200)
trigger1 = var(59) <= 0
name = "command+"
stateno = 10200
ID = 10200
pos = 0,0
postype = p1
keyctrl = 1
pausemovetime = 2147483647
supermovetime = 2147483647

;===========================================================================
;---------------------------------------------------------------------------
;ご光臨
[State -1, Descent]
type = ChangeState
value = 2500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCF_abc") || (var(21)/10%100 = 32)
triggerall = var(29) > 0
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;グリモア☆ハードパンチ
[State -1, Grimoire Hard Punch]
type = ChangeState
value = 2000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "QCF_x") || (var(21)/10%100 = 30)
triggerall = power >= 1000
triggerall = var(12) >= 3-(var(57)/100000%10>1)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;磔刑
[State -1, Crucifixion]
type = ChangeState
value = 2100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCB_x") || (var(21)/10%100 = 31)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;===========================================================================
;---------------------------------------------------------------------------
;キリモミスラスト
[State -1, Spinning Thrust]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCF_c") || (var(21)/10%100 = 20)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])

[State -1, Spinning Thrust]
type = ChangeState
value = 1550
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command = "HCF_c") || (var(21)/10%100 = 20)
trigger1 = ctrl
trigger2 = (Anim = [110,115]) && (AnimElemTime(1) > 3) && ((stateno = [110,115]) || (stateno = 132) || (stateno = 51))
trigger3 = (Anim = 600) && (AnimElemTime(6) >= 0) && ((stateno = 600) || (stateno = 132) || (stateno = 51))
trigger4 = (Anim = 610) && (AnimElemTime(8) >= 0) && ((stateno = 610) || (stateno = 132) || (stateno = 51))
trigger5 = (Anim = 620) && (AnimElemTime(9) >= 0) && ((stateno = 620) || (stateno = 132) || (stateno = 51))
trigger6 = (stateno = 1050) && (AnimElemTime(8) >= 0)
trigger7 = (Anim = [1300,1310]) && (AnimElemTime(10) >= 0) && ((stateno = 1300) || (stateno = 132) || (stateno = 51))
trigger8 = (Anim = 1350) && (AnimElemTime(22) >= 0) && ((stateno = 1350) || (stateno = 132) || (stateno = 51))
trigger9 = (movecontact||movereversed) && (stateno = [600,620])

;---------------------------------------------------------------------------
;テイスティング
[State -1, Tasting]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCB_a") || (var(21)/10%100 = 19)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;フライ･イン･ザ･フライ
[State -1, Fly in the fly]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="QCB_b"||command="QCB_c") || (var(21)/10%100 = [17,18])
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])

[State -1, Fly in the fly]
type = ChangeState
value = 1350
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command="QCB_b"||command="QCB_c") || (var(21)/10%100 = [17,18])
trigger1 = ctrl
trigger2 = (Anim = [110,115]) && (AnimElemTime(1) > 3) && ((stateno = [110,115]) || (stateno = 132) || (stateno = 51))
trigger3 = (Anim = 600) && (AnimElemTime(6) >= 0) && ((stateno = 600) || (stateno = 132) || (stateno = 51))
trigger4 = (Anim = 610) && (AnimElemTime(8) >= 0) && ((stateno = 610) || (stateno = 132) || (stateno = 51))
trigger5 = (Anim = 620) && (AnimElemTime(9) >= 0) && ((stateno = 620) || (stateno = 132) || (stateno = 51))
trigger6 = (stateno = 1050) && (AnimElemTime(8) >= 0)
trigger7 = (Anim = [1300,1310]) && (AnimElemTime(10) >= 0) && ((stateno = 1300) || (stateno = 132) || (stateno = 51))
trigger8 = (Anim = 1350) && (AnimElemTime(22) >= 0) && ((stateno = 1350) || (stateno = 132) || (stateno = 51))
trigger9 = (movecontact||movereversed) && (stateno = [600,620])

;---------------------------------------------------------------------------
;シールド･オブ･ザ･グリモア
[State -1, Shield of the Grimoire]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "QCB_a") || (var(21)/10%100 = 16)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;大きなお友達を紹介します
[State -1, Introduce My Big Friends]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="DP_a"||command="DP_b"||command="DP_c") || (var(21)/10%100 = [13,15])
triggerall = var(12) >= 2-(var(57)/100000%10>1)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;お友達を紹介します
[State -1, Introduce My Friends]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="QCF_a"||command="QCF_b"||command="QCF_c") || (var(21)/10%100 = [10,12])
triggerall = var(12) >= 1-(var(57)/100000%10>1)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

[State -1, J-Introduce My Friends]
type = ChangeState
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command="QCF_a"||command="QCF_b"||command="QCF_c") || (var(21)/10%100 = [10,12])
triggerall = !(stateno=1550&&(command="DP_a"||command="DP_b"||command="DP_c"))
triggerall = var(12) >= 1-(var(57)/100000%10>1)
trigger1 = ctrl
trigger2 = (Anim = [110,115]) && (AnimElemTime(1) > 3) && ((stateno = [110,115]) || (stateno = 132) || (stateno = 51))
trigger3 = (Anim = 600) && (AnimElemTime(6) >= 0) && ((stateno = 600) || (stateno = 132) || (stateno = 51))
trigger4 = (Anim = 610) && (AnimElemTime(8) >= 0) && ((stateno = 610) || (stateno = 132) || (stateno = 51))
trigger5 = (Anim = 620) && (AnimElemTime(9) >= 0) && ((stateno = 620) || (stateno = 132) || (stateno = 51))
trigger6 = (stateno = 1050) && (AnimElemTime(8) >= 0)
trigger7 = (Anim = [1300,1310]) && (AnimElemTime(10) >= 0) && ((stateno = 1300) || (stateno = 132) || (stateno = 51))
trigger8 = (Anim = 1350) && (AnimElemTime(22) >= 0) && ((stateno = 1350) || (stateno = 132) || (stateno = 51))
trigger9 = (movecontact||movereversed) && (stateno = [600,620])
trigger10 = (movecontact||movereversed) && (stateno = 1550)

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Dush]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ((facing = 1) && (var(17)/10000%100 > 0)) || ((facing = -1) && (var(17)/1000000%100 > 0))
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;---------------------------------------------------------------------------
;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ((facing = 1) && (var(17)/1000000%100 > 0)) || ((facing = -1) && (var(17)/10000%100 > 0))
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Air Dush]
type = ChangeState
value = 110
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = ((facing = 1) && (var(17)/10000%100 > 0)) || ((facing = -1) && (var(17)/1000000%100 > 0))
triggerall = !((var(15)%10 = 0) && (Anim = [41,43]) && (AnimElemTime(1) < 6))
triggerall = !((var(15)%10 > 0) && (Anim = [37,43]) && (AnimElemTime(1) < 14+6*(Anim=41||Anim=43)))
triggerall = pos Y < -50
triggerall = var(24) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Air Back Dush]
type = ChangeState
value = 115
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = ((facing = 1) && (var(17)/1000000%100 > 0)) || ((facing = -1) && (var(17)/10000%100 > 0))
triggerall = !((var(15)%10 = 0) && (Anim = [41,43]) && (AnimElemTime(1) < 6))
triggerall = !((var(15)%10 > 0) && (Anim = [37,43]) && (AnimElemTime(1) < 14+6*(Anim=41||Anim=43)))
triggerall = pos Y < -50
triggerall = var(24) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;ハイジャンプ
[State -1, High Jump]
type = ChangeState
value = 35
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = var(15)/1000%10 > 0
triggerall = !movecontact || (helper(10200),command = "holdup")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;---------------------------------------------------------------------------
;ジャンプ
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = helper(10200),command = "holdup"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movehit||movereversed||moveguarded&&var(5)%10=1) && (stateno = 210)
trigger5 = (movehit||movereversed) && (stateno = 220)
trigger6 = (movehit||movereversed) && (stateno = 420)
trigger7 = (movehit||movereversed) && (stateno = 230)

;---------------------------------------------------------------------------
;BIGBANG MODE
[State -1, BIGBANG MODE]
type = ChangeState
value = 560
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="holda"&&command="holdb"&&command="c"||command="holda"&&command="b"&&command="holdc"||command="a"&&command="holdb"&&command="holdc"||command="abc") || (var(21)/10%100 = 9)
triggerall = helper(10200),command != "holddown"
triggerall = power >= 3000
triggerall = var(29) = 0
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;Bスティール
[State -1, B Steal]
type = ChangeState
value = 510
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="z") || (var(21)/10%100=6) || (command="bc"||command="holdb"&&command="c"||command="b"&&command="holdc"||var(21)/10%100=8)*(var(21)/100000%10=0)
triggerall = helper(10200),command != "holddown"
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="y") || (var(21)/10%100=5) || (command="ab"||command="holda"&&command="b"||command="a"&&command="holdb"||var(21)/10%100=7)*(var(21)/100000%10=0)
triggerall = helper(10200),command != "holddown"
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;===========================================================================
;---------------------------------------------------------------------------
;グリモア☆エクトプラズム
[State -1, Grimoire Ectoplasm]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="a") || (var(21)%1000/10=1)
triggerall = (helper(10200),command="holdfwd")&&(prevstateno!=5120) || (var(21)%10=6)&&(prevstateno=5120)
triggerall = helper(10200),command != "holddown"
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,220])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱
[State -1, Standing Light]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="a") || (var(21)%1000/10=1)
triggerall = (helper(10200),command!="holddown")&&(prevstateno!=5120) || (var(21)%10>3)&&(prevstateno=5120)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;---------------------------------------------------------------------------
;立ち中
[State -1, Standing Medium]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="b") || (var(21)%1000/10=2)
triggerall = (helper(10200),command!="holddown")&&(prevstateno!=5120) || (var(21)%10>3)&&(prevstateno=5120)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = 200)
trigger5 = (movecontact||movereversed) && (stateno = 400)
trigger6 = (movecontact||movereversed) && (stateno = 230)

;---------------------------------------------------------------------------
;立ち強
[State -1, Standing Hard]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="c") || (var(21)%1000/10=3)
triggerall = (helper(10200),command!="holddown")&&(prevstateno!=5120) || (var(21)%10>3)&&(prevstateno=5120)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,210])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movecontact||movereversed) && (stateno = 230)

;---------------------------------------------------------------------------
;屈み弱
[State -1, Crouching Light]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="a") || (var(21)%1000/10=1)
triggerall = (helper(10200),command="holddown")&&(prevstateno!=5120) || (var(21)%10=[1,3])&&(prevstateno=5120)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = 200)

;---------------------------------------------------------------------------
;屈み中
[State -1, Crouching Medium]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="b") || (var(21)%1000/10=2)
triggerall = (helper(10200),command="holddown")&&(prevstateno!=5120) || (var(21)%10=[1,3])&&(prevstateno=5120)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,210])
trigger5 = (movecontact||movereversed) && (stateno = 400)
trigger6 = (movecontact||movereversed) && (stateno = 230)

;---------------------------------------------------------------------------
;屈み強
[State -1, Crouching Hard]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="c") || (var(21)%1000/10=3)
triggerall = (helper(10200),command="holddown")&&(prevstateno!=5120) || (var(21)%10=[1,3])&&(prevstateno=5120)
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,220])
trigger5 = (movecontact||movereversed) && (stateno = [400,410])
trigger6 = (movecontact||movereversed) && (stateno = 230)

;---------------------------------------------------------------------------
;空中弱
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command="a") || (var(21)%1000/10=1)
trigger1 = ctrl
trigger2 = (Anim = [110,115]) && (AnimElemTime(1) > 3) && ((stateno = [110,115]) || (stateno = 132) || (stateno = 51))
trigger3 = (Anim = 600) && (AnimElemTime(6) >= 0) && ((stateno = 600) || (stateno = 132) || (stateno = 51))
trigger4 = (Anim = 610) && (AnimElemTime(8) >= 0) && ((stateno = 610) || (stateno = 132) || (stateno = 51))
trigger5 = (Anim = 620) && (AnimElemTime(9) >= 0) && ((stateno = 620) || (stateno = 132) || (stateno = 51))
trigger6 = (stateno = 1050) && (AnimElemTime(8) >= 0)
trigger7 = (Anim = [1300,1310]) && (AnimElemTime(10) >= 0) && ((stateno = 1300) || (stateno = 132) || (stateno = 51))
trigger8 = (Anim = 1350) && (AnimElemTime(22) >= 0) && ((stateno = 1350) || (stateno = 132) || (stateno = 51))

;---------------------------------------------------------------------------
;空中中
[State -1, Jump Medium]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command="b") || (var(21)%1000/10=2)
trigger1 = ctrl
trigger2 = (Anim = [110,115]) && (AnimElemTime(1) > 3) && ((stateno = [110,115]) || (stateno = 132) || (stateno = 51))
trigger3 = (Anim = 600) && (AnimElemTime(6) >= 0) && ((stateno = 600) || (stateno = 132) || (stateno = 51))
trigger4 = (Anim = 610) && (AnimElemTime(8) >= 0) && ((stateno = 610) || (stateno = 132) || (stateno = 51))
trigger5 = (Anim = 620) && (AnimElemTime(9) >= 0) && ((stateno = 620) || (stateno = 132) || (stateno = 51))
trigger6 = (stateno = 1050) && (AnimElemTime(8) >= 0)
trigger7 = (Anim = [1300,1310]) && (AnimElemTime(10) >= 0) && ((stateno = 1300) || (stateno = 132) || (stateno = 51))
trigger8 = (Anim = 1350) && (AnimElemTime(22) >= 0) && ((stateno = 1350) || (stateno = 132) || (stateno = 51))
trigger9 = (movecontact||movereversed) && (stateno = 600)

;---------------------------------------------------------------------------
;空中強
[State -1, Jump Hard]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command="c") || (var(21)%1000/10=3)
trigger1 = ctrl
trigger2 = (Anim = [110,115]) && (AnimElemTime(1) > 3) && ((stateno = [110,115]) || (stateno = 132) || (stateno = 51))
trigger3 = (Anim = 600) && (AnimElemTime(6) >= 0) && ((stateno = 600) || (stateno = 132) || (stateno = 51))
trigger4 = (Anim = 610) && (AnimElemTime(8) >= 0) && ((stateno = 610) || (stateno = 132) || (stateno = 51))
trigger5 = (Anim = 620) && (AnimElemTime(9) >= 0) && ((stateno = 620) || (stateno = 132) || (stateno = 51))
trigger6 = (stateno = 1050) && (AnimElemTime(8) >= 0)
trigger7 = (Anim = [1300,1310]) && (AnimElemTime(10) >= 0) && ((stateno = 1300) || (stateno = 132) || (stateno = 51))
trigger8 = (Anim = 1350) && (AnimElemTime(22) >= 0) && ((stateno = 1350) || (stateno = 132) || (stateno = 51))
trigger9 = (movecontact||movereversed) && (stateno = [600,610])

;===========================================================================
;---------------------------------------------------------------------------
;Bカウンター
[State -1, B Counter]
type = ChangeState
value = 530
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = (command="z") || (var(21)/10%100=6) || (command="bc"||command="holdb"&&command="c"||command="b"&&command="holdc"||var(21)/10%100=8)*(var(21)/100000%10=0)
triggerall = (helper(10200),command="holdfwd") || (var(21)%10%3 = 0)
triggerall = power >= 1000
trigger1 = stateno = [150,153]
trigger1 = HitShakeOver

;---------------------------------------------------------------------------
;Bエスケープ
[State -1, B Escape]
type = ChangeState
value = 540
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = (command="holda"&&command="holdb"&&command="c"||command="holda"&&command="b"&&command="holdc"||command="a"&&command="holdb"&&command="holdc"||command="abc") || (var(53)%10 = 2) || (var(21)/10%100 = 9)
triggerall = (helper(10200),command="holdfwd"||helper(10200),command="holdback") || (var(53)%10 = 2) ;|| (var(21)%10%3!=2)
triggerall = movetype = H
triggerall = (stateno = [5000,5035]) || (stateno = [5050,5081])
triggerall = alive
triggerall = power >= 3000
trigger1 = enemynear(var(2)),movetype = A
trigger1 = !enemynear(var(2)),hitpausetime
trigger2 = enemynear(var(2)),movetype != A
trigger2 = hitshakeover

;---------------------------------------------------------------------------
;Bバースト
[State -1, B Burst]
type = ChangeState
value = 550
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = (command="holda"&&command="holdb"&&command="c"||command="holda"&&command="b"&&command="holdc"||command="a"&&command="holdb"&&command="holdc"||command="abc") || (var(21)/10%100 = 9)
triggerall = movetype = H
triggerall = (stateno = [5000,5035]) || (stateno = [5050,5081])
triggerall = alive
triggerall = power >= 3000
trigger1 = enemynear(var(2)),movetype = A
trigger1 = !enemynear(var(2)),hitpausetime
trigger2 = enemynear(var(2)),movetype != A
trigger2 = hitshakeover

;---------------------------------------------------------------------------
;Bダッシュ・空中上方
[State -1, B Air Dush upwards]
type = ChangeState
value = 506
triggerall = !ishelper
triggerall = var(59) <= 0 && var(53)%10 > 0
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = helper(10200),command = "holdup"
triggerall = (command != "QCF_x") && (command != "HCB_x")
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = Anim != [500,505]
triggerall = Anim != [600,620]
trigger1 = ctrl
trigger2 = (movecontact||movereversed) && (stateno = 2100)
trigger3 = (stateno = 2110) && (time < 15)

;---------------------------------------------------------------------------
;Bダッシュ・空中下方
[State -1, B Air Dush downwards]
type = ChangeState
value = 505
triggerall = !ishelper
triggerall = var(59) <= 0 && var(53)%10 > 0
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = helper(10200),command = "holddown"
triggerall = (command != "QCF_x") && (command != "HCB_x")
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = Anim != [500,505]
triggerall = Anim != [600,620]
trigger1 = ctrl
trigger2 = (movecontact||movereversed) && (stateno = 2100)
trigger3 = (stateno = 2110) && (time < 15)

;---------------------------------------------------------------------------
;Bダッシュ・空中前方
[State -1, B Air Dush forwards]
type = ChangeState
value = 503
triggerall = !ishelper
triggerall = var(59) <= 0 && var(53)%10 > 0
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = (helper(10200),command != "holddown") && (helper(10200),command != "holdup")
triggerall = (command != "QCF_x") && (command != "HCB_x")
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = Anim != [500,505]
triggerall = Anim != [600,620]
trigger1 = ctrl
trigger2 = (movecontact||movereversed) && (stateno = 2100)
trigger3 = (stateno = 2110) && (time < 15)

;---------------------------------------------------------------------------
;Bダッシュ・地上上方
[State -1, B Dush upwards]
type = ChangeState
value = 502
triggerall = !ishelper
triggerall = var(59) <= 0 && var(53)%10 > 0
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = (helper(10200),command="holddown")&&(prevstateno!=5120) || (var(21)%10=[1,3])&&(prevstateno=5120)
triggerall = (command != "QCF_x") && (command != "HCB_x")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;Bダッシュ・地上前方
[State -1, B Dush forwards]
type = ChangeState
value = 500
triggerall = !ishelper
triggerall = var(59) <= 0 && var(53)%10 > 0
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = (helper(10200),command="holdfwd")&&(prevstateno!=5120) || (var(21)%10=6)&&(prevstateno=5120)
triggerall = helper(10200),command != "holddown"
triggerall = (command != "QCF_x") && (command != "HCB_x")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger4 = (movecontact||movereversed) && (stateno = [200,230])
trigger5 = (movecontact||movereversed) && (stateno = [400,420])
trigger6 = (movehit||movereversed) && (stateno = 1510)

;---------------------------------------------------------------------------
;降霊
[State -1, Necromancy]
type = ChangeState
value = 520
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = helper(10200),command != "holddown"
triggerall = command != "HCB_x"
trigger1 = ctrl
trigger2 = (Anim = 100) && ((stateno = 100) || (stateno = [130,131]))
trigger3 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;---------------------------------------------------------------------------
;ガード
[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = helper(10200),command = "holdback"
triggerall = InGuardDist
triggerall = stateno != [120,155]
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = 105) && (AnimElemTime(3) >= 0)
trigger4 = (stateno = 600) && (AnimElemTime(6) >= 0)
trigger5 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger6 = (stateno = 620) && (AnimElemTime(9) >= 0)
trigger7 = (stateno = 1300) && (AnimElemTime(10) >= 0)
trigger8 = (stateno = 1350) && (AnimElemTime(22) >= 0)
;trigger9 = (stateno = 500) && (AnimElemTime(2) >= 0) || (stateno = 501)

;--------------------------------------------------------------------------
[State -1]
type = AppendToClipboard
trigger1 = numenemy
text = "A:%d, B:%d, C:%d, D:%d, E:%d \n"
params = var(25),var(14),var(22),(enemy,gethitvar(chainid)),numhelper(28990)
ignorehitpause = 1

;ガード
[State -3, Guard]
type = ChangeState
value = 120
triggerall = var(59) > 0 || var(53)%10 = 2
triggerall = RoundState = 2
triggerall = stateno != [120,155]
triggerall = !((stateno = [5201,5210]) && (time < 21))
triggerall = InGuardDist || ((p2movetype = A) && (p2dist X = [-150,0))) || numhelper(10100)&&helper(10100*(numhelper(10100)>0)),var(0)
triggerall = var(52)/100%10 > 1
triggerall = enemynear(var(2)),Time > 5-var(52)/100%10
triggerall = Random < ifelse(var(52)/100%10=2,50,ifelse(var(52)/100%10=3,180,ifelse(var(52)/100%10=4,400,1000)))
triggerall = !enemynear(var(2)),HitDefAttr = SCA,NT,ST,HT || Enemy,NumHelper || Enemy,NumProj
triggerall = !((stateno = 505) && (AnimElemTime(2) < 2))
trigger1 = ctrl||stateno=0&&prevstateno=5120||stateno=100||stateno=105&&AnimElemTime(3)>=0
trigger2 = stateno=600&&AnimElemTime(6)>=0||stateno=610&&AnimElemTime(8)>=0||stateno=620&&AnimElemTime(9)>=0
trigger3 = stateno=1300&&AnimElemTime(10)>=0||stateno=1350&&AnimElemTime(22)>=0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;==========================================================================
[State -2]
type = VarSet
trigger1 = var(21)/10%100 != [1,4]
trigger1 = hitshakeover
var(21) = 10*floor(var(21)/10)+5

[State -2, Reset]
type = VarSet
trigger1 = time <= 1
trigger1 = stateno = 540
var(21) = 100000*floor(var(21)/100000)
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; オートガード用常時付帯ヘルパー
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 10100]
anim = 9999
ctrl = 0

[state a]
type = SelfState
trigger1 = !ishelper
value = 0

[state a]
type = BindToRoot
trigger1 = 1
facing = 1
pos = 0,0

[state a]
type = PosAdd
trigger1 = 1
x = -100

[state a]
type = VarSet
trigger1 = 1
var(0) = InGuardDist

[state a]
type = Turn
trigger1 = 1

[state a]
type = VarSet
trigger1 = InGuardDist
var(0) = 1

[state a]
type = PosAdd
trigger1 = 1
x = -200

[state a]
type = VarSet
trigger1 = InGuardDist
var(0) = 1

[state a]
type = BindToRoot
trigger1 = 1
facing = 1
pos = 0,0

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;--------------------------------------------------------------------------
[Statedef -3];常時管理ステート（相手に行動を制御された時は実行しない）
;==========================================================================
; オートガード用常時付帯ヘルパー
[State -3]
type = helper
triggerall = !NumHelper(10100)
triggerall = alive
trigger1 = var(59) > 0
trigger2 = var(53)%10 > 0
name = "AI+"
stateno = 10100
ID = 10100
pos = 0,0
postype = p1
pausemovetime = 2147483647
supermovetime = 2147483647
