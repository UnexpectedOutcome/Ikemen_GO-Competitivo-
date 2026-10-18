;-------------------------------------------------------------

[Command]
name = "ran"
command = ~D, F, D, F, c
time=30

;-------------------------------------------------------------

[Command]
name = "hp1"  
command = ~D, F, D, F, x+y
time = 30

[Command]
name = "hp2"  
command = ~D, F, D, F, a+b
time = 30

;-------------------------------------------------------------

[Command]
name = "hp4"
command = ~D, B, D, B, a
time =30
[Command]
name = "hp4"
command = ~D, B, D, B, b
time =30

[Command]
name = "hp5"
command = ~D, B, D, B, x
time =30
[Command]
name = "hp5"
command = ~D, B, D, B, y
time =30

[Command]
name = "hp6"
command = ~D, F, D, F, a
time = 30
[Command]
name = "hp6"  
command = ~D, F, D, F, b
time = 30

[Command]
name = "hp7"  
command = ~D, F, D, F, x
time = 30
[Command]
name = "hp7"  
command = ~D, F, D, F, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "sab"
command = ~D, DB, B, a
time = 30
[Command]
name = "sab"
command = ~D, DB, B, b
time = 30

[Command]
name = "samaso_a"
command = ~F, D, DF, a
time = 30
[Command]
name = "samaso_b"
command = ~F, D, DF, b
time = 30

[Command]
name = "Dbb_y"
command = ~D, DF, F, y
time = 30
[Command]
name = "Dbb_x"
command = ~D, DF, F, x
time = 30

[Command]
name = "Dbb_ya"
command = ~D, DB, B, y
time = 30
[Command]
name = "Dbb_xa"
command = ~D, DB, B, x
time = 30

[Command]
name = "QCF_xaa"
command = ~D, F, x
time = 30
[Command]
name = "QCF_x"
command = ~D, F, a
time = 30
[Command]
name = "QCF_x2"
command = ~D, F, b
time = 30
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "roy"
command = ~B, F, b
time = 30
[Command]
name = "rox"
command = ~B, F, a
time = 30

[Command]
name = "sroy"
command = ~B, F, b
time = 30
[Command]
name = "srox"
command = ~B, F, a
time = 30

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "x2"
command = /x

[Command]
name = "y2"
command = /y

[Command]
name = "a2"
command = /a



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DUB"
command =$D,UB
time = 10

[Command]
name = "DUF"
command =$D,UF
time = 10

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
name = "bc"
command = /B, c

[Command]
name = "fc"
command = /F, c
[Command]
name = "bab"
command = /B, a+x

[Command]
name = "fab"
command = /F, a+x

[Command]
name = "df_b"
command = /$DF, b

[Command]
name = "F_a"
command = /$F, a

[Command]
name = "d_y"
command = /$D, y

[Command]
name = "F_y"
command = /$F, y

[Command]
name = "F_x"
command = /$F, x

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
name = "xy2";
command = /x+y
time = 1

[Command]
name = "xy";
command = ~x+y
time = 1

[Command]
name = "y2";
command = /y
time = 1

[Command]
name = "yy";
command = ~y
time = 1

[Command]
name = "x2";
command = /x
time = 1

[Command]
name = "xx";
command = ~x
time = 1

[Command]
name = "by"
command = b+y
time = 1


[Command]
name = "ab"
command = a+x
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
name = "x1"
command = x
time = 15

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

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1


;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 11110
triggerall = statetype != A
triggerall = Power < 5000
triggerall = ctrl = 1
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"
triggerall = var(50) = 0

[State -1, Stand Light Punch]
type = ChangeState
value = 31
triggerall = command = "DUB"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 30
triggerall = command = "DUF"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;00ギガ２
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = command = "hp1"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1610||stateno=1010||stateno=1333||stateno=1300||stateno=1310||stateno=1000
trigger3=movecontact&&statetype!=A
trigger4=stateno=[1200,1212]
trigger4=movecontact&&statetype!=A
trigger5=stateno=3000
trigger5=movecontact&&statetype!=A


;98EXMAXスクリーマー小
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = command = "hp2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1610||stateno=1010||stateno=1333||stateno=1300||stateno=1310||stateno=1000
trigger3=movecontact&&statetype!=A
trigger4=stateno=[1200,1212]
trigger4=movecontact&&statetype!=A
trigger5=stateno=3000
trigger5=movecontact&&statetype!=A



;00アッパー
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = command = "hp4"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1610||stateno=1010||stateno=1333||stateno=1300||stateno=1310||stateno=1000
trigger3=movecontact&&statetype!=A
trigger4=stateno=[1200,1212]
trigger4=movecontact&&statetype!=A


[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3200
triggerall = command = "hp5"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1610||stateno=1010||stateno=1333||stateno=1300||stateno=1310||stateno=1000
trigger3=movecontact&&statetype!=A
trigger4=stateno=1212||stateno=1202
trigger4=movecontact&&statetype!=A

;98EXスクリーマー小
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3400
triggerall = command = "hp6"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1610||stateno=1010||stateno=1333||stateno=1300||stateno=1310||stateno=1000
trigger3=movecontact&&statetype!=A
trigger4=stateno=[1200,1212]
trigger4=movecontact&&statetype!=A

;98EXギガント
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "hp7"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1610||stateno=1010||stateno=1333||stateno=1300||stateno=1310||stateno=1000
trigger3=movecontact&&statetype!=A
trigger4=stateno=[1200,1212]
trigger4=movecontact&&statetype!=A

;95乱舞
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3600
triggerall = command = "ran"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;sabSP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11500
triggerall = command = "sab"
triggerall=var(2)=1
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;sab
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = command = "sab"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;95サマソ弱
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = command = "samaso_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;95サマソ強
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1610
triggerall = command = "samaso_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;ジャイアントナックル（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "Dbb_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A

;ラビットブロー強2SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11212
triggerall = command = "Dbb_ya"
trigger1 = stateno = 11211
trigger1 = time>6
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 11211
;--------------------------------------------------------
;ラビットブロー強2SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11211
triggerall = command = "Dbb_ya"
trigger1 = stateno = 11210
trigger1 = time>4
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 11210
;--------------------------------------------------------
;ラビットブロー強SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11210
triggerall = command = "Dbb_ya"
triggerall=var(2)=1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA
trigger2 = movecontact
trigger3 = HitDefAttr = SC, SA
trigger3 = movecontact
;--------------------------------------------------------
;ラビットブロー強3
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1212
triggerall = command = "Dbb_ya"
triggerall = stateno = 1211
trigger1 = time>14
trigger1= time<25
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 1211
trigger2=time>8
;--------------------------------------------------------
;ラビットブロー強２
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1211
triggerall = command = "Dbb_ya"
triggerall = stateno = 1210
trigger1 = time>12
trigger1 = time<23
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 1210
trigger2=time>8
;--------------------------------------------------------
;ラビットブロー弱3
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1202
triggerall = command = "Dbb_xa"
trigger1 = stateno = 1201
trigger1 = time>13
trigger1 = time<22
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 1201
trigger2=time>8
;--------------------------------------------------------
;ラビットブロー弱2
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1201
triggerall = command = "Dbb_xa"
trigger1 = stateno = 1200
trigger1 = time>10
trigger1 = time<21
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 1200
trigger2=time>8
;--------------------------------------------------------
;ラビットブロー強
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1210
triggerall = command = "Dbb_ya"
triggerall = stateno != 240
triggerall = stateno != 230
triggerall = stateno != 440
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 1302
trigger3= movecontact
trigger4 = stateno = 1312
trigger4= movecontact
trigger5=stateno=150
trigger5=var(9)=1
trigger5=var(12)=5
trigger6=stateno=152
trigger6=var(9)=1
trigger6=var(12)=5
;--------------------------------------------------------
;ラビットブロー弱3SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11202
triggerall = command = "Dbb_xa"
trigger1 = stateno = 11201
trigger1 = time>5
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 11201
;--------------------------------------------------------
;ラビットブロー弱2SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11201
triggerall = command = "Dbb_xa"
trigger1 = stateno = 11200
trigger1 = time>4
trigger1 = statetype != A
trigger2=movecontact
trigger2 = stateno = 11200
;--------------------------------------------------------
;ラビットブロー弱SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11200
triggerall = command = "Dbb_xa"
triggerall=var(2)=1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA
trigger2 = movecontact
trigger3 = HitDefAttr = SC, SA
trigger3 = movecontact
;--------------------------------------------------------
;ラビットブロー弱
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "Dbb_xa"
triggerall = stateno != 240
triggerall = stateno != 230
triggerall = stateno != 440
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = HitDefAttr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 1302
trigger3= movecontact
trigger4 = stateno = 1312
trigger4= movecontact
trigger5=stateno=150
trigger5=var(9)=1
trigger5=var(12)=5
trigger6=stateno=152
trigger6=var(9)=1
trigger6=var(12)=5
;---------------------------------------------------------------------------
;ジャイアントナックル（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "Dbb_y"
triggerall=var(2)=0
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;ジャイアントナックル（弱）SP
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11000
triggerall = command = "Dbb_x"
triggerall=var(2)=1
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;ジャイアントナックル（強）SP
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11010
triggerall = command = "Dbb_y"
triggerall=var(2)=1
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;ロリボン（弱）SP
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11400
triggerall = command = "QCF_xaa"
triggerall=var(2)=1
triggerall = statetype = A
trigger1 = ctrl
trigger2=stateno=[600,699]
trigger2=movecontact&&statetype=A
;---------------------------------------------------------------------------
;ロリボン（強）SP
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11410
triggerall = command = "QCF_y"
triggerall=var(2)=1
triggerall = statetype = A
trigger1 = ctrl
trigger2=stateno=[600,699]
trigger2=movecontact&&statetype=A
;---------------------------------------------------------------------------
;ロリボン（弱）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "QCF_xaa"
triggerall = statetype = A
trigger1 = ctrl
trigger2=stateno=[600,699]
trigger2=movecontact&&statetype=A
;---------------------------------------------------------------------------
;ロリボン（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1410
triggerall = command = "QCF_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=stateno=[600,699]
trigger2=movecontact&&statetype=A
;===========================================================================
;---------------------------------------------------------------------------
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 770
;triggerall = command = "c"
;triggerall=var(12)=3||var(12)=4
;triggerall=var(14)>0
;triggerall=numhelper(4200)=0
;triggerall=numhelper(4300)=0
;triggerall=p2stateno!=[821,843]
;trigger1 = movetype=I
;trigger1=ctrl=1
;trigger1=statetype!=A
;---------------------------------------------------------------------------
;避け
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 720
;triggerall=var(12)=2||var(12)=5
;triggerall = command = "c"||command = "ab"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;避け攻撃
;[State -1, Stand Light Punch]
;type = ChangeState
;value = 721
;triggerall=var(12)=2||var(12)=5
;triggerall= stateno=720
;triggerall =time=[6,26]
;Trigger1 = command = "a"
;Trigger2 = command = "b"
;Trigger3 = command = "c"
;Trigger4 = command = "x"
;Trigger5 = command = "y"
;Trigger6 = command = "z"
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 104
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;00アーマーモード
;[State -1]
;type = ChangeState
;value = 760
;triggerall=power=3000
;triggerall=var(12)=3||var(12)=4
;triggerall=numhelper(6400)=0
;triggerall=numhelper(6410)=0
;triggerall = command = "a"&&command = "b"&&command = "y"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;00カウンターモード
;[State -1]
;type = ChangeState
;value = 750
;triggerall=power=3000
;triggerall=var(12)=3||var(12)=4
;triggerall=numhelper(6400)=0
;triggerall=numhelper(6410)=0
;triggerall = command = "x"&&command = "y"&&command = "a"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;98ADVMAX
;[State -1]
;type = ChangeState
;value = 730
;triggerall=numhelper(6003)=1
;triggerall = command = "x"&&command = "y"&&command = "a"
;triggerall = command != "holddown"
;triggerall=helper(6003),stateno=6003
;triggerall=power>=1000
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;95タメ
;[State -1]
;type = ChangeState
;value = 740
;triggerall=numhelper(6600)=1
;triggerall = command = "x2"&&command = "y2"&&command = "a2"
;triggerall = command != "holddown"
;triggerall=helper(6600),stateno=6600
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;98EXタメ
;[State -1]
;type = ChangeState
;value = 740
;triggerall=numhelper(6100)=1
;triggerall = command = "x2"&&command = "y2"&&command = "a2"
;triggerall = command != "holddown"
;triggerall=helper(6100),stateno=6100
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------

;ローリングクラッシュ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11310
triggerall = command = "sroy"
triggerall=var(2)=1
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;ローリングクラッシュ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11300
triggerall = command = "srox"
triggerall=var(2)=1
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;ローリングクラッシュ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1310
triggerall = command = "roy"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;ローリングクラッシュ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "rox"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


[State -1, Stand Light Punch]
type = ChangeState
value = 710
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[150,153]
trigger2=statetype!=A


;前転
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=[150,153]
trigger3=statetype!=A

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================

;ふっとばし
[State -1, Stand Light Punch]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=[150,153]
trigger2=statetype!=A

;空中ふっとばし
[State -1, Jump Light Punch]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, Stand Light Punch Close]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 10
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch Close
[State -1, Stand Medium Punch Close]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "F_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 ||stateno=215||stateno=205||stateno=235||stateno=230||stateno=240||stateno=245||stateno=400||stateno=430
trigger2=movecontact&&statetype!=A
trigger3 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick Close
[State -1, Stand Light Kick Close]
type = ChangeState
value = 235
triggerall = p2bodydist X <= 10
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno= 200 ||stateno=205 ||stateno=400
trigger2=movecontact&&statetype!=A
trigger3 = stateno = 100

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno= 200 ||stateno=205 ||stateno=400
trigger2=movecontact&&statetype!=A
trigger3 = stateno = 100

;Stand Medium Kick Close
[State -1, Stand Medium Kick Close]
type = ChangeState
value = 245
triggerall = p2bodydist X <= 10
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = Var(30) != 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  
trigger2=stateno=200||stateno=235||stateno=230||stateno=430
trigger2=movecontact&&statetype!=A
trigger3 = stateno = 100

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2=stateno=200||stateno=235||stateno=230||stateno=400
trigger2=movecontact&&statetype!=A
trigger3 = stateno = 100

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=var(1)>0
trigger2=movecontact
