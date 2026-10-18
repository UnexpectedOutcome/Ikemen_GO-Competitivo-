;------------------------------------------------------------------------------
[Command]
name = "FB"
command = ~$B,$F,a+b


[Command]
name = "FB"
command = ~$B,$F,a+x

[Command]
name = "FB"
command = ~$B,$F,a+y

[Command]
name = "FB"
command = ~$B,$F,b+x

[Command]
name = "FB"
command = ~$B,$F,b+y

[Command]
name = "FB"
command = ~$B,$F,x+y


;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "RSmesshin"
command = ~B, DB, D, DF, F, B, z
time = 18

[Command]
name = "messhin"
command = ~B, DB, D, DF, F, B, b
time = 18

[Command]
name = "RSseitou"
command = ~F, DF, D, DB, B, F, z
time = 18

[Command]
name = "seitou"
command = ~F, DF, D, DB, B, F, y
time = 18

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "hakuuda"
command = ~B, D, DB, y
time = 15

[Command]
name = "rakko"
command = ~F, D, DF, a
time = 15

[Command]
name = "RSyobunagi"
command = ~F, DF, D, DB, B, z
time = 15

[Command]
name = "yobunagi"
command = ~F, DF, D, DB, B, y
time = 15

[Command]
name = "RSjinrai"
command = ~D, DB, B, z
time = 15

[Command]
name = "jinrai"
command = ~D, DB, B, b
time = 15

[Command]
name = "RSraichu-"
command = ~F, D, DF, z
time = 15

[Command]
name = "raichu-y"
command = ~F, D, DF, y
time = 15

[Command]
name = "raichu-x"
command = ~F, D, DF, x
time = 15

[Command]
name = "raigekishou"
command = ~D, DF, F, x
time = 15

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"
command = ~F, F
time = 5

[Command]
name = "BB"
command = ~B, B
time = 5

;------------------------------------------------------------------------------
[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = x
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "Fx"
command = /$F,x
time = 1

[Command]
name = "Fa"
command = /$F,a
time = 1

[Command]
name = "Fy"
command = /$F,y
time = 1

[Command]
name = "By"
command = /$B,y
time = 1

[Command]
name = "Fb"
command = /$F,b
time = 1

[Command]
name = "Bb"
command = /$B,b
time = 1

;------------------------------------------------------------------------------

[Command]
name = "CT"
command = a+b+x+y
time = 5

[Command]
name = "GC"
command = /F,a+b
time = 5

[Command]
name = "GC"
command = /F,a+x
time = 5

[Command]
name = "GC"
command = /F,a+y
time = 5

[Command]
name = "GC"
command = /F,b+x
time = 5

[Command]
name = "GC"
command = /F,b+y
time = 5

[Command]
name = "GC"
command = /F,x+y
time = 5

[Command]
name = "CD"
command = /a+b
time = 1

[Command]
name = "CD"
command = /a+x
time = 1

[Command]
name = "CD" 
command = /a+y
time = 1

[Command]
name = "CD"
command = /b+x
time = 1

[Command]
name = "CD"
command = /b+y
time = 1

[Command]
name = "CD"
command = /x+y
time = 1

[Command]
name = "holda"
command = /a

[Command]
name = "holdb"
command = /b

[Command]
name = "holdc"
command = /c

[Command]
name = "holdx"
command = /x

[Command]
name = "holdy"
command = /y

[Command]
name = "holdz"
command = /z

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

;---------------------------
;
[Command]
name = "highjump"
command = ~D,/$U
time = 6

[Command]
name = "highjumpC"
command = ~$U,$D,/$U
time = 6

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------

[Command]
name = "holdup"
command = /$U
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
name = "holddown"
command = /$D
time = 1

;------------------------------------------------------------------------------
;-| 空中ジャンプ|-----------------------------------------------------
[Command]
name = "airjumpfwd"
command = UF
time = 1

[Command]
name = "airjump"
command = U
time = 1

[Command]
name = "airjumpback"
command = UB
time = 1

[Command]
name = "aircombofwd"
command = /UF
time = 1

[Command]
name = "aircombo"
command = /U
time = 1

[Command]
name = "aircomboback"
command = /UB
time = 1

;==============================================================================
;------------------------------------------------------------------------------
[Statedef -1]
;==============================================================================
;------------------------------------------------------------------------------

;カオストリガー
[State -1,]
type = ChangeState
value = 770
triggerall = var(25) = 0
triggerall = fvar(3) >= 52.5
triggerall = command = "CT"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;フリーダムブラスト
[State -1,]
type = ChangeState
value = ifelse(statetype != A,750,760)
triggerall = var(25) = 0
triggerall = command = "c"
triggerall = power >= 1000
trigger1 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,700]) || (stateno = [1000,1200]) || (stateno = [3000,3100])
trigger1 = movecontact

;------------------------------------------------------------------------------

;RS滅身
[State -1,]
type = ChangeState
value = 3011
triggerall = var(25) = 0
triggerall = fvar(3) >= 35
triggerall = command = "RSmesshin" || (NumHelper(60000)&&Helper(60000),Var(0)=3011 && Helper(60000),Var(1)>0)
triggerall = power >= 1000
triggerall = var(18) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;滅身
[State -1,]
type = ChangeState
value = 3010
triggerall = var(25) = 0
triggerall = command = "messhin" || (NumHelper(60000)&&Helper(60000),Var(0)=3010 && Helper(60000),Var(1)>0)
triggerall = power >= 1000
triggerall = var(18) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;RS星到
[State -1,]
type = ChangeState
value = 3002
triggerall = var(25) = 0
triggerall = fvar(3) >= 35
triggerall = command = "RSseitou" || (NumHelper(60000)&&Helper(60000),Var(0)=3002 && Helper(60000),Var(1)>0)
triggerall = power >= 1000
triggerall = var(18) = 0
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,102])
trigger2 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;星到
[State -1,]
type = ChangeState
value = 3000
triggerall = var(25) = 0
triggerall = command = "seitou" || (NumHelper(60000)&&Helper(60000),Var(0)=3000 && Helper(60000),Var(1)>0)
triggerall = power >= 1000
triggerall = var(18) = 0
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,102])
trigger2 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;------------------------------------------------------------------------------

;破空打
[State -1,]
type = ChangeState
value = 1070
triggerall = var(18) = 0
triggerall = command = "hakuuda" || (NumHelper(60000)&&Helper(60000),Var(0)=1070 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger1 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;落弧
[State -1,]
type = ChangeState
value = 1040
triggerall = var(18) = 0
triggerall = command = "rakko" || (NumHelper(60000)&&Helper(60000),Var(0)=1040 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;RS呼薙ぎ
[State -1,]
type = ChangeState
value = 1035
triggerall = var(25) = 0
triggerall = var(18) = 0
triggerall = power >= 500
triggerall = command = "RSyobunagi" || (NumHelper(60000)&&Helper(60000),Var(0)=1035 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger1 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;呼薙ぎ
[State -1,]
type = ChangeState
value = 1030
triggerall = var(18) = 0
triggerall = command = "yobunagi" || (NumHelper(60000)&&Helper(60000),Var(0)=1030 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger1 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;RS臨砂磁
[State -1,]
type = ChangeState
value = 1022
triggerall = var(25) = 0
triggerall = var(18) = 0
triggerall = power >= 500
triggerall = command = "RSjinrai" || (NumHelper(60000)&&Helper(60000),Var(0)=1022 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger1 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;迅雷
[State -1,]
type = ChangeState
value = 1020
triggerall = var(18) = 0
triggerall = command = "jinrai" || (NumHelper(60000)&&Helper(60000),Var(0)=1020 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger1 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;RS雷肘
[State -1,]
type = ChangeState
value = 1015
triggerall = var(25) = 0
triggerall = var(18) = 0
triggerall = power >= 500
triggerall = command = "RSraichu-" || (NumHelper(60000)&&Helper(60000),Var(0)=1015 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;雷肘
[State -1,]
type = ChangeState
value = 1010
triggerall = var(18) = 0
triggerall = command = "raichu-x"|| command = "raichu-y" || (NumHelper(60000)&&Helper(60000),Var(0)=1010 && Helper(60000),Var(1)>0)
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;雷槍
[State -1,]
type = ChangeState
value = 1000
triggerall = var(18) = 0
triggerall = command = "raigekishou" || (NumHelper(60000)&&Helper(60000),Var(0)=1000 && Helper(60000),Var(1)>0)
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 245
trigger2 = stateno != 250
trigger2 = movecontact

;==============================================================================
;------------------------------------------------------------------------------

;ダッシュハイジャンプ
[State -1, ]
type = ChangeState
value = 530
TriggerAll=var(59) = 0
triggerall = statetype != A
triggerall = command = "highjump"
trigger1 = (stateno = [100,102])

;ハイジャンプ
[State -1, ]
type = ChangeState
value = 530
TriggerAll=var(59) = 0
triggerall = statetype != A
triggerall = command = "highjump" || (NumHelper(60000)&&Helper(60000),Var(0)=530 && Helper(60000),Var(1)>0)
Triggerall = var(13) = [1,6]
trigger1 = ctrl
trigger2 = (stateno = [200,245]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 230
trigger2 = stateno != 242

;しゃがみ攻撃キャンセルハイジャンプ
[State -1, ]
type = ChangeState
value = 530
TriggerAll=var(59) = 0
triggerall = command = "highjump"
triggerall = statetype = C
Triggerall = var(13) = [1,6]
trigger1 = (stateno = [400,432]) && movecontact
trigger1 = stateno != 410

;空中前ジャンプ
[State -1, ]
type = ChangeState
value = ifelse(p2dist x < 0,520,510)
triggerall = statetype = A
TriggerAll=var(59) = 0
TriggerAll=var(24) <= 7
triggerall = var(0) = 0
triggerall = var(7) = 0
trigger1 = command = "airjumpfwd"
trigger1 = Pos Y <= -20
trigger1 = Vel Y >= -5
trigger1 = ctrl && (stateno != [510,520]) || (stateno = [510,520]) && (time >= 10)
trigger2 = command = "aircombofwd"
trigger2 = (stateno = [600,642]) && movecontact
trigger2 = stateno != 632
trigger2 = stateno != 640
trigger3 = command = "aircombofwd"
trigger3 = (stateno = [1140,1141]) && movecontact

;空中CT前ジャンプ
[State -1, ]
type = ChangeState
value = ifelse(p2dist x < 0,520,510)
triggerall = statetype = A
TriggerAll=var(59) = 0
triggerall = command = "aircombofwd"
trigger1 = Var(25) != 0 && movecontact

;空中垂直ジャンプ
[State -1, ]
type = ChangeState
value = 515
triggerall = statetype = A
TriggerAll=var(59) = 0
TriggerAll=var(24) <= 7
triggerall = var(0) = 0
triggerall = var(7) = 0
trigger1= command = "airjump"
trigger1 = Pos Y <= -20
trigger1 = Vel Y >= -5
trigger1 = ctrl && (stateno != [510,520]) || (stateno = [510,520]) && (time >= 10)
trigger2 = command = "aircombo"
trigger2 = (stateno = [600,642]) && movecontact
trigger2 = stateno != 632
trigger2 = stateno != 640
trigger3 = command = "aircombo"
trigger3 = (stateno = [1140,1141]) && movecontact

;空中CT垂直ジャンプ
[State -1, ]
type = ChangeState
value = 515
triggerall = statetype = A
TriggerAll=var(59) = 0
triggerall = command = "aircombo"
trigger1 = Var(25) != 0 && movecontact

;空中後ろジャンプ
[State -1, ]
type = ChangeState
value = ifelse(p2dist x < 0,510,520)
triggerall = statetype = A
TriggerAll=var(59) = 0
TriggerAll=var(24) <= 7
triggerall = var(0) = 0
triggerall = var(7) = 0
trigger1 = command = "airjumpback"
trigger1 = Pos Y <= -20
trigger1 = Vel Y >= -5
trigger1 = ctrl && (stateno != [510,520]) || (stateno = [510,520]) && (time >= 10)
trigger2 = command = "aircomboback"
trigger2 = (stateno = [600,642]) && movecontact
trigger2 = stateno != 632
trigger2 = stateno != 640
trigger3 = command = "aircomboback"
trigger3 = (stateno = [1140,1141]) && movecontact

;空中CT後ろジャンプ
[State -1, ]
type = ChangeState
value = ifelse(p2dist x < 0,510,520)
triggerall = statetype = A
TriggerAll=var(59) = 0
triggerall = command = "aircomboback"
trigger1 = Var(25) != 0 && movecontact

;空中ダッシュ
[State -1, Dash]
type = ChangeState
value = 500
TriggerAll=var(59) = 0
triggerall = var(0) = 0
triggerall = statetype = A
triggerall = ctrl && (stateno != [510,520]) || (stateno = [510,520]) && (time >= 10)
triggerall = command != "holdup"
trigger1 = command = "FF"
trigger1 = Pos Y <= -35 && Vel Y <= 0
trigger2 = command = "FF"
trigger2 = Pos Y <= -15 && Vel Y >= 0

;キャンセル空中ダッシュ
[State -1, Dash]
type = ChangeState
value = 500
TriggerAll=var(59) = 0
triggerall = var(0) = 0
triggerall = statetype = A
triggerall = command != "holdup"
triggerall = command = "FF"
trigger1 = (stateno = [600,647])
trigger1 = stateno != 630
trigger1 = stateno != 632
trigger1 = stateno != 640
trigger1 = stateno != 642
trigger1 = stateno != 645
trigger1 = movecontact
trigger2 = (stateno = [1080,1085]) && movecontact
trigger3 = (stateno = [1140,1141]) && movecontact

;キャンセルFB(CT)空中ダッシュ
[State -1, Dash]
type = ChangeState
value = 500
TriggerAll=var(59) = 0
triggerall = statetype = A
triggerall = command != "holdup"
triggerall = command = "FF"
trigger1 = Var(25) != 0 && movecontact

;空中バクステ
[State -1, Dash]
type = ChangeState
value = 505
TriggerAll=var(59) = 0
triggerall = var(0) = 0
triggerall = statetype = A
triggerall = command != "holdup"
triggerall = command = "BB"
triggerall = ctrl && (stateno != [510,520]) || (stateno = [510,520]) && (time >= 10)
trigger1 = Pos Y <= -35 && Vel Y <= 0
trigger2 = Pos Y <= -15 && Vel Y >= 0

;キャンセル空中バクステ
[State -1, Dash]
type = ChangeState
value = 505
TriggerAll=var(59) = 0
triggerall = var(0) = 0
triggerall = statetype = A
triggerall = command != "holdup"
triggerall = command = "BB"
trigger1 = (stateno = [600,647])
trigger1 = stateno != 630
trigger1 = stateno != 632
trigger1 = stateno != 640
trigger1 = stateno != 642
trigger1 = stateno != 645
trigger1 = movecontact
trigger2 = (stateno = [1080,1085]) && movecontact
trigger3 = (stateno = [1140,1141]) && movecontact

;キャンセルFB(CT)空中バクステ
[State -1, Dash]
type = ChangeState
value = 505
TriggerAll=var(59) = 0
triggerall = statetype = A
triggerall = command != "holdup"
triggerall = command = "BB"
trigger1 = Var(25) != 0 && movecontact

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(25) != 0 && movecontact

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(25) != 0 && movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;投げ
[State -1, ]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = command != "a"
triggerall = command != "x"
triggerall = command != "y"
triggerall = var(18) = 0
triggerall = statetype = S
triggerall = ctrl || (stateno = [100,102])
triggerall = stateno != 100
triggerall = p2bodydist X < 15
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------
;空中投げ
[State -1, ]
type = ChangeState
value = 830
triggerall = command = "b"
triggerall = command != "a"
triggerall = command != "x"
triggerall = command != "y"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X = [0,15]
triggerall = p2bodydist Y = [-120,30]
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H

;==============================================================================
;------------------------------------------------------------------------------

;6P
[State -1,]
type = ChangeState
value = 205
triggerall = command = "Fx"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,220]) && movecontact
trigger2 = stateno != 205
trigger2 = stateno != 213
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;5P
[State -1,]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = (stateno = 200) && time >= 4

;6K
[State -1,]
type = ChangeState
value = 215
triggerall = command = "Fa"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,230]) && movecontact
trigger2 = stateno != 205
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;5K
[State -1,]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;------------------------------------------------------------------------------

;4S
[State -1,]
type = ChangeState
value = 236
triggerall = command = "By"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,235]) && movecontact
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;6S
[State -1,]
type = ChangeState
value = 235
triggerall = command = "Fy"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,230]) && movecontact
trigger2 = stateno != 215
trigger3 = (stateno = [400,430]) && movecontact

;近S
[State -1,]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X = [-40,40]
triggerall = p2bodydist Y = [-120,0]
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact

;遠S
[State -1,]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,220]) && movecontact
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;6HS
[State -1,]
type = ChangeState
value = 245
triggerall = command = "Fb"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,235]) && movecontact
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;4HS
[State -1,]
type = ChangeState
value = 250
triggerall = command = "Bb"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,230]) && movecontact
trigger2 = stateno != 205
trigger2 = stateno != 215
trigger3 = (stateno = [400,430]) && movecontact

;5HS
[State -1,]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])
trigger2 = (stateno = [200,230]) && movecontact
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,102])

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;2P
[State -1,]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact || (stateno = [100,102])
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && time >= 5

;2K
[State -1,]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact || (stateno = [100,102])
trigger3 = (stateno = 400) && movecontact

;------------------------------------------------------------------------------
;2S
[State -1,]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact || (stateno = [100,102])
trigger2 = stateno != 215
trigger3 = (stateno = [400,410]) && movecontact

;2HS
[State -1,]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,240]) && movecontact || (stateno = [100,102])
trigger3 = (stateno = [400,432]) && movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;JP
[State -1,]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = var(7) != 0
trigger3 = movecontact
trigger3 = (stateno = 610) || (stateno = 630)

;J6K
[State -1,]
type = ChangeState
value = 615
triggerall = command = "Fa"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,630]) && movecontact
trigger2 = (stateno != 615)
trigger3 = var(7) != 0
trigger3 = movecontact
trigger3 = (stateno = 600) || (stateno = 630)

;JK
[State -1,]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = var(7) != 0
trigger3 = movecontact
trigger3 = (stateno = 600) || (stateno = 630)

;------------------------------------------------------------------------------

;JS
[State -1,]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = var(7) != 0
trigger3 = movecontact
trigger3 = (stateno = 630) || (stateno = 640)

;J2HS
[State -1,]
type = ChangeState
value = 645
triggerall = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,630]) && movecontact

;JHS
[State -1,]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,630]) || (stateno = 645)
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
