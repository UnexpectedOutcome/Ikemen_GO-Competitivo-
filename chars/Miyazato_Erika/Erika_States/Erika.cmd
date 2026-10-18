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
name = "DP_x"
command = ~F,D,DF,x
time = 15

[Command]
name = "DP_x"
command = ~F,D,F,x
time = 15

[Command]
name = "HCB_x"
command = ~F,D,B,x

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_a"
command = ~D,B,a
time = 15

[Command]
name = "QCB_b"
command = ~D,B,b
time = 15

[Command]
name = "QCB_c"
command = ~D,B,c
time = 15

[Command]
name = "HCF_a"
command = ~B,D,F,a

[Command]
name = "HCF_b"
command = ~B,D,F,b

[Command]
name = "HCB_c"
command = ~F,D,B,c

[Command]
name = "DP_a"
command = ~F,D,DF,a
time = 15

[Command]
name = "DP_b"
command = ~F,D,DF,b
time = 15

[Command]
name = "DP_c"
command = ~F,D,DF,c
time = 15

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
;宮里軍団集結
[State -1, Miyazato Gundan gathers]
type = ChangeState
value = 2500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCF_abc") || (var(21)/10%100 = 32)
triggerall = var(29) > 0
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

;---------------------------------------------------------------------------
;ランブルチェーン
[State -1, Rumble Chain]
type = ChangeState
value = 2000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCB_x") || (var(21)/10%100 = 31)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

;---------------------------------------------------------------------------
;スパイラルチェーンEX
[State -1, Spiral Chain EX]
type = ChangeState
value = 2100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "DP_x") || (var(21)/10%100 = 30)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

[State -1, Spiral Chain EX]
type = ChangeState
value = 2100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command = "DP_x") || (var(21)/10%100 = 30)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [110,115]) && (time > 3) || (Anim = 111) && ((stateno = 111) || (stateno = 132))
trigger3 = (stateno = 600) && (AnimElemTime(5) >= 0)
trigger4 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger5 = (stateno = 620) && (AnimElemTime(10) >= 0)
trigger6 = movecontact && (stateno = [600,620])
trigger7 = movecontact && (stateno = 1300)

;===========================================================================
;---------------------------------------------------------------------------
;タイトチェーン
[State -1, Tight Chain]
type = ChangeState
value = 1100+10*(command="HCF_b"||var(21)/10%100=18)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCF_a") || (command = "HCF_b") || (var(21)/10%100 = [17,18])
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241

;背負い投げ
[State -1, Throw]
type = ChangeState
value = 1140
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = command = "c"
triggerall = helper(10200),command = "holdback"
triggerall = helper(10200),command != "holddown"
trigger1 = stateno = 1120
trigger1 = AnimElemTime(2) < 0

;---------------------------------------------------------------------------
;スパイラルチェーン
[State -1, Spiral Chain]
type = ChangeState
value = 1300+10*(command="DP_b"||var(21)/10%100=15)+20*(command="DP_c"||var(21)/10%100=16)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "DP_a") || (command = "DP_b") || (command = "DP_c") || (var(21)/10%100 = [14,16])
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

[State -1, Spiral Chain]
type = ChangeState
value = 1300+20*(command="DP_c"||var(21)/10%100=16)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = (command = "DP_a") || (command = "DP_b") || (command = "DP_c") || (var(21)/10%100 = [14,16])
trigger1 = ctrl
trigger2 = (stateno = [110,115]) && (time > 3) || (Anim = 111) && ((stateno = 111) || (stateno = 132))
trigger3 = (stateno = 600) && (AnimElemTime(5) >= 0)
trigger4 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger5 = (stateno = 620) && (AnimElemTime(10) >= 0)
trigger6 = movecontact && (stateno = [600,620])

;---------------------------------------------------------------------------
;サイクロンチェーン
[State -1, Cyclone Chain]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "HCB_c") || (var(21)/10%100 = 13)
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

;---------------------------------------------------------------------------
;サキ！出番だよ！
[State -1, Come on! Saki!]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = var(12)%1000 = 0
triggerall = (command = "QCB_a") || (var(21)/10%100 = 10)
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

;---------------------------------------------------------------------------
;ショーコ！出番だよ！
[State -1, Come on! Shoko!]
type = ChangeState
value = 1010
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = var(12)/1000 = 0
triggerall = (command = "QCB_b") || (var(21)/10%100 = 11)
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

;---------------------------------------------------------------------------
;あたしの出番だよ！
[State -1, My Turn!]
type = ChangeState
value = 1050
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command = "QCB_c") || (var(21)/10%100 = 12)
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

;===========================================================================
;---------------------------------------------------------------------------
;フロントステップ
[State -1, Front Step]
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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movehit && (stateno = [200,210])
trigger4 = movehit && (stateno = 420)
trigger5 = movehit && (stateno = 230)

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = stateno = 241
trigger6 = (stateno = 1120) && (AnimElemTime(4) >= 0)
trigger7 = movehit && (stateno = 1210) && numtarget(1211)

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

;===========================================================================
;---------------------------------------------------------------------------
;いい的だね！
[State -1, Easy target!]
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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,220])
trigger4 = movecontact && (stateno = [400,420])

;---------------------------------------------------------------------------
;これでも喰らいな！
[State -1, Take that!]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = (command="b") || (var(21)%1000/10=2)
triggerall = (helper(10200),command="holdfwd")&&(prevstateno!=5120) || (var(21)%10=6)&&(prevstateno=5120)
triggerall = helper(10200),command != "holddown"
trigger1 = ctrl
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,230])
trigger4 = movecontact && (stateno = [400,420])

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = 200)
trigger4 = movecontact && (stateno = 400)
trigger5 = movecontact && (stateno = 230)

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,210])
trigger4 = movecontact && (stateno = [400,420])
trigger5 = movecontact && (stateno = 230)

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = 200)

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,210])
trigger4 = movecontact && (stateno = 400)
trigger5 = movecontact && (stateno = 230)

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
trigger2 = (((Anim = 500) && (AnimElemTime(2) > 0)) || (Anim = 501)) && ((stateno = [500,501]) || (stateno = [130,131]))
trigger3 = movecontact && (stateno = [200,220])
trigger4 = movecontact && (stateno = [400,410])
trigger5 = movecontact && (stateno = 230)

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
trigger1 = ctrl && (Anim != 620)
trigger2 = (stateno = [110,115]) && (time > 3) || (Anim = 111) && ((stateno = 111) || (stateno = 132))
trigger3 = (stateno = 600) && (AnimElemTime(5) >= 0)
trigger4 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger5 = (stateno = 620) && (AnimElemTime(10) >= 0)

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
trigger1 = ctrl && (Anim != 620)
trigger2 = (stateno = [110,115]) && (time > 3) || (Anim = 111) && ((stateno = 111) || (stateno = 132))
trigger3 = (stateno = 600) && (AnimElemTime(5) >= 0)
trigger4 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger5 = (stateno = 620) && (AnimElemTime(10) >= 0)
trigger6 = movecontact && (stateno = 600)
trigger7 = movecontact && (stateno = 620)

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
trigger1 = ctrl && (Anim != 620)
trigger2 = (stateno = [110,115]) && (time > 3) || (Anim = 111) && ((stateno = 111) || (stateno = 132))
trigger3 = (stateno = 600) && (AnimElemTime(5) >= 0)
trigger4 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger5 = (stateno = 620) && (AnimElemTime(10) >= 0)
trigger6 = movecontact && (stateno = [600,610])

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
triggerall = (command="holda"&&command="holdb"&&command="c"||command="holda"&&command="b"&&command="holdc"||command="a"&&command="holdb"&&command="holdc"||command="abc") || (var(59) = -3) || (var(21)/10%100 = 9)
triggerall = (helper(10200),command="holdfwd"||helper(10200),command="holdback") || (var(59) = -3) ;|| (var(21)%10%3!=2)
triggerall = movetype = H
triggerall = stateno != [120,155]
triggerall = stateno != [5110,5120]
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
triggerall = stateno != [120,155]
triggerall = stateno != [5110,5120]
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
triggerall = var(59) < -1
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = helper(10200),command = "holdup"
triggerall = (command != "DP_x") && (command != "HCB_x")
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = Anim != [500,505]
triggerall = Anim != [600,620]
trigger1 = ctrl
trigger2 = movecontact && (stateno = 2100)
trigger3 = (stateno = 2110) && (time < 15)

;---------------------------------------------------------------------------
;Bダッシュ・空中下方
[State -1, B Air Dush downwards]
type = ChangeState
value = 505
triggerall = !ishelper
triggerall = var(59) < -1
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = helper(10200),command = "holddown"
triggerall = (command != "DP_x") && (command != "HCB_x")
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = Anim != [500,505]
triggerall = Anim != [600,620]
trigger1 = ctrl
trigger2 = movecontact && (stateno = 2100)
trigger3 = (stateno = 2110) && (time < 15)

;---------------------------------------------------------------------------
;Bダッシュ・空中前方
[State -1, B Air Dush forwards]
type = ChangeState
value = 503
triggerall = !ishelper
triggerall = var(59) < -1
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = (helper(10200),command != "holddown") && (helper(10200),command != "holdup")
triggerall = (command != "DP_x") && (command != "HCB_x")
triggerall = statetype = A
triggerall = Anim != [110,115]
triggerall = Anim != [500,505]
triggerall = Anim != [600,620]
trigger1 = ctrl
trigger2 = movecontact && (stateno = 2100)
trigger3 = (stateno = 2110) && (time < 15)

;---------------------------------------------------------------------------
;Bダッシュ・地上上方
[State -1, B Dush upwards]
type = ChangeState
value = 502
triggerall = !ishelper
triggerall = var(59) < -1
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = (helper(10200),command="holddown")&&(prevstateno!=5120) || (var(21)%10=[1,3])&&(prevstateno=5120)
triggerall = (command != "DP_x") && (command != "HCB_x")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Anim = [100,106]) && ((stateno = [100,106]) || (stateno = [130,131]))
trigger3 = (stateno = 501) && (AnimElemTime(1) > 0)
trigger4 = (stateno = 200) && (AnimElemTime(5) > 1)
trigger5 = movecontact && (stateno = [210,220])
trigger6 = (stateno = 400) && (AnimElemTime(4) >= 0)
trigger7 = movecontact && (stateno = [410,420])
trigger8 = movecontact && (stateno = 850)
trigger9 = (stateno = 1010) && (AnimElemTime(4) > 0)
trigger10 = movecontact && (stateno = 1400) && ((AnimElemTime(6) >= 0) && (AnimElemTime(12) < 0) || (AnimElemTime(15) > 0))

;---------------------------------------------------------------------------
;Bダッシュ・地上前方
[State -1, B Dush forwards]
type = ChangeState
value = 500
triggerall = !ishelper
triggerall = var(59) < -1
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = (command="x") || (var(21)%1000/10=4)
triggerall = (helper(10200),command!="holddown")&&(prevstateno!=5120) || (var(21)%10>3)&&(prevstateno=5120)
triggerall = (command != "DP_x") && (command != "HCB_x")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Anim = [100,106]) && ((stateno = [100,106]) || (stateno = [130,131]))
trigger3 = (stateno = 501) && (AnimElemTime(1) > 0)
trigger4 = (stateno = 200) && (AnimElemTime(5) > 1)
trigger5 = movecontact && (stateno = [210,220])
trigger6 = (stateno = 400) && (AnimElemTime(4) >= 0)
trigger7 = movecontact && (stateno = [410,420])
trigger8 = movecontact && (stateno = 850)
trigger9 = (stateno = 1010) && (AnimElemTime(4) > 0)
trigger10 = movecontact && (stateno = 1400) && ((AnimElemTime(6) >= 0) && (AnimElemTime(12) < 0) || (AnimElemTime(15) > 0))

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
trigger2 = (stateno = 600) && (AnimElemTime(5) >= 0)
trigger3 = (stateno = 610) && (AnimElemTime(8) >= 0)
trigger4 = (stateno = 620) && (AnimElemTime(10) >= 0)
;trigger5 = (stateno = 500) && (AnimElemTime(2) >= 0) ;|| (stateno = 501)

;--------------------------------------------------------------------------
[State -1]
type = null;AppendToClipboard
trigger1 = numenemy
text = "A:%d, B:%d, C:%d, D:%d, E:%d \n"
params = prevstateno,(helper(1011*(numhelper(1011)>0)),var(10)),(helper(1011*(numhelper(1011)>0)),var(11)),var(34),var(12)
ignorehitpause = 1

;ガード
[State -3, Guard]
type = ChangeState
value = 120
triggerall = (var(59) > 0) || (var(59) = -3)
triggerall = RoundState = 2
triggerall = stateno != [120,155]
triggerall = !((stateno = [5201,5210]) && (time < 21))
triggerall = InGuardDist || ((p2movetype = A) && (p2dist X = [-150,0))) || numhelper(10100)&&helper(10100*(numhelper(10100)>0)),var(0)
triggerall = var(52)/100%10 > 1
triggerall = enemynear(var(2)),Time > 5-var(52)/100%10
triggerall = Random < ifelse(var(52)/100%10=2,50,ifelse(var(52)/100%10=3,180,ifelse(var(52)/100%10=4,400,1000)))
triggerall = !enemynear(var(2)),HitDefAttr = SCA,NT,ST,HT || Enemy,NumHelper || Enemy,NumProj
triggerall = !((stateno = 505) && (AnimElemTime(2) < 2))
trigger1 = ctrl||stateno=0&&prevstateno=5120

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
trigger2 = var(59) <= -3
name = "AI+"
stateno = 10100
ID = 10100
pos = 0,0
postype = p1
pausemovetime = 2147483647
supermovetime = 2147483647
