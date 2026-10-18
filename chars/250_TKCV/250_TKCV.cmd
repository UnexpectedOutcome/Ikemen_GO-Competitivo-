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
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "DFDB_x"
command = ~D, F, D, B, x
time = 30

[Command]
name = "DFDB_y"
command = ~D, F, D, B, y
time = 30

[Command]
name = "DFDB_z"
command = ~D, F, D, B, z
time = 30

[Command]
name = "DBDF_x"
command = ~D, B, D, F, x
time = 30

[Command]
name = "DBDF_y"
command = ~D, B, D, F, y
time = 30

[Command]
name = "DBDF_z"
command = ~D, B, D, F, z
time = 30

[Command]
name = "QCF2_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "QCF2_y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "QCF2_z"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "QCB2_x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "QCB2_y"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "QCB2_z"
command = ~D, DB, B, D, DB, B, z
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "UPPER_x"
command = ~F, D, DF, x

[Command]
name = "UPPER_y"
command = ~F, D, DF, y

[Command]
name = "UPPER_z"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "DD_x"
command = ~D, D, x

[Command]
name = "DD_y"
command = ~D, D, y

[Command]
name = "DD_z"
command = ~D, D, z
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
name = "holda";Required (do not remove)
command = /a
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = [200,699]
trigger2 = stateno != [308,399]
trigger2 = stateno != 251 && stateno != 253
var(1) = 1
ignorehitpause = 1

[State -1, Super Cancel condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0

[State -1, Super Cancel condition Check]
type = VarSet
trigger1 = movecontact
trigger1 = stateno = [1000,1999]
trigger1 = stateno != 1040 || stateno != 1045 || stateno != 1046
trigger2 = stateno = 1050 || stateno = 1051 || stateno = 1052 || stateno = 1061 || stateno = 1062
trigger2 = animelemtime(4)>0
trigger3 = stateno = [1055,1057]
trigger3 = animelemtime(2)>0
var(2) = 1
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Hyper Attack]
type = ChangeState
value = 4500
triggerall = command = "QCF_b"
triggerall = statetype != A
triggerall = power = 3000
;triggerall = (100*life/const(data.life))<=25
trigger1 = var(1)
trigger2 = var(2)
;---------------------------------------------------------------------------
[State -1, QCF2_x+y+z]
type = ChangeState
value = 4000
triggerall = command = "QCF2_x" && command = "QCF2_y" || command = "QCF2_y"  && command = "QCF2_z"
triggerall = power = 3000
trigger1 = var(1)
trigger2 = var(2)

;---------------------------------------------------------------------------
[State -1, QCB2_x+y+z]
type = ChangeState
value = 4010
triggerall = command = "QCB2_x" && command = "QCB2_y" || command = "QCB2_y"  && command = "QCB2_z"
triggerall = statetype != A
triggerall = power = 3000
trigger1 = var(1)
trigger2 = var(2)
;===========================================================================
;---------------------------------------------------------------------------
[State -1, QCF2_x]
type = ChangeState
value = 3020
triggerall = command = "QCF2_x"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = var(2)

;---------------------------------------------------------------------------
[State -1, QCF2_y]
type = ChangeState
value = 3025
triggerall = command = "QCF2_y"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = var(2)

;---------------------------------------------------------------------------
[State -1, QCF2_z]
type = ChangeState
value = 3026
triggerall = command = "QCF2_z"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = var(2)

;---------------------------------------------------------------------------
[State -1, QCB2_y]
type = ChangeState
value = 3040
triggerall = command = "QCB2_x" || command = "QCB2_y" || command = "QCB2_z"
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = var(2)

;===========================================================================
;---------------------------------------------------------------------------
[State -1, UPPER_x]
type = ChangeState
value = 1030
triggerall = command = "UPPER_x"
triggerall = statetype != A
trigger1 = var(1)
trigger2 = stateno = [150,155]

;---------------------------------------------------------------------------
[State -1, UPPER_y]
type = ChangeState
value = 1032
triggerall = command = "UPPER_y"
triggerall = statetype != A
trigger1 = var(1)
trigger2 = stateno = [150,155]

;---------------------------------------------------------------------------
[State -1, UPPER_Z]
type = ChangeState
value = 1034
triggerall = command = "UPPER_z"
triggerall = statetype != A
trigger1 = var(1)
trigger2 = stateno = [150,155]

;---------------------------------------------------------------------------
[State -1, QCF_x]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, QCF_y]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, QCF_z]
type = ChangeState
value = 1020
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, QCB_x]
type = ChangeState
value = 1040
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, QCB_y]
type = ChangeState
value = 1045
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, QCB_z]
type = ChangeState
value = 1046
triggerall = command = "QCB_z"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, DD_x]
type = ChangeState
value = 1060
triggerall = command = "DD_x"
triggerall = statetype != A
triggerall = helper(8000),stateno=8000
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, DD_y]
type = ChangeState
value = 1061
triggerall = command = "DD_y"
triggerall = statetype != A
triggerall = helper(8000),stateno=8000 || helper(8000),stateno = 8003
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, DD_z]
type = ChangeState
value = 1062
triggerall = command = "DD_z"
triggerall = statetype != A
triggerall = helper(8000),stateno=8000 || helper(8000),stateno = 8003
trigger1 = var(1)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;?ッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退?ッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Rescue Ground]
type = ChangeState
value = 316
triggerall = command = "a"
triggerall = stateno = [5000,5099]
triggerall = power >= 1000
triggerall = alive
triggerall = statetime > 1
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Rescue Air]
type = ChangeState
value = 317
triggerall = command = "a"
triggerall = stateno = [5000,5099]
triggerall = power >= 1000
triggerall = alive
triggerall = statetime > 1
trigger1 = statetype = A
;---------------------------------------------------------------------------
[State -1, Command Attack 2]
type = ChangeState
value = 251
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Command Attack 1]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = stateno !=250
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, Stand Light Attack ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 200

;---------------------------------------------------------------------------
[State -1, Stand medium Attack]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 200 || stateno = 400

;---------------------------------------------------------------------------
[State -1, Stand Strong Attack]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410
;---------------------------------------------------------------------------
[State -1, Power Gathering]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = power < 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Replect Guard]
type = ChangeState
value = 302
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 309
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 400
;---------------------------------------------------------------------------
[State -1, Crouching Medium Attack]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 400 || stateno = 200
;---------------------------------------------------------------------------
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410

;---------------------------------------------------------------------------
[State -1, Croucghing Replect Guard]
type = ChangeState
value = 304
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Command Attack 2]
type = ChangeState
value = 253
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Command Attack 1]
type = ChangeState
value = 252
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = stateno !=252
triggerall = stateno !=420
trigger1 = var(1)

;---------------------------------------------------------------------------
[State -1, Jump Light Attack]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 600

;---------------------------------------------------------------------------
[State -1, Jump Medium Attack]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 600

;---------------------------------------------------------------------------
[State -1, Jump Strong Attack]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA
trigger2 = stateno = 600 || stateno = 610

;---------------------------------------------------------------------------
[State -1, Air Replect Guard]
type = ChangeState
value = 306
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Throw]
type = ChangeState
value = 312
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
