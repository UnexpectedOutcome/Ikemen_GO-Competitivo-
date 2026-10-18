

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time=15
command.buffer.time=1

;========================================== single buttons =====================================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1
;========================================= hold direction =======================================
[Command]
name="holdfwd";Required (do not remove)
command=/$F
time=1
[Command]
name="holdback";Required (do not remove)
command=/$B
time=1
[Command]
name="holdup";Required (do not remove)
command=/$U
time=1
[Command]
name="holddown";Required (do not remove)
command=/$D
time=1
;========================================= hold button =======================================
[Command]
name="hold_a";Required (do not remove)
command=/$a
time=1
[Command]
name="hold_b";Required (do not remove)
command=/$b
time=1
[Command]
name="hold_c";Required (do not remove)
command=/$c
time=1
[Command]
name="hold_x";Required (do not remove)
command=/$x
time=1
[Command]
name="hold_y";Required (do not remove)
command=/$y
time=1
[Command]
name="hold_z";Required (do not remove)
command=/$z
time=1
;=========================================== direction ==========================================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="down"
command=D
time=1
[Command]
name="up"
command=U
time=1
;======================================== super/hyper attacks ==================================
;====================== DP commands ======================
[Command]
name="DP_PP"
command=~F,D,DF,x+y
time=15

[Command]
name="DP_PP"
command=~F,D,DF,x+z
time=15

[Command]
name="DP_PP"
command=~F,D,DF,y+z
time=15

[Command]
name="DP_PP"
command=~F,D,DF,x+y+z
time=15

[Command]
name="DP_PP"
command=~F,D,DF,~x+y
time=15

[Command]
name="DP_PP"
command=~F,D,DF,~x+z
time=15

[Command]
name="DP_PP"
command=~F,D,DF,~y+z
time=15

[Command]
name="DP_PP"
command=~F,D,DF,~x+y+z
time=15



[Command]
name="QCF_PP"
command=~D,DF,F,x+y
time=15
[Command]
name="QCF_PP"
command=~D,DF,F,y+z
time=15
[Command]
name="QCF_PP"
command=~D,DF,F,x+y+z
[Command]
name="QCF_PP"
command=~D,DF,F,~x+y
time=15
[Command]
name="QCF_PP"
command=~D,DF,F,~y+z
time=15
[Command]
name="QCF_PP"
command=~D,DF,F,~x+y+z
time=15


[Command]
name="QCF_KK"
command=~D,DF,F,a+b
time=20
[Command]
name="QCF_KK"
command=~D,DF,F,b+c
time=20
[Command]
name="QCF_KK"
command=~D,DF,F,a+b+c
[Command]
name="QCF_KK"
command=~D,DF,F,~a+b
time=20
[Command]
name="QCF_KK"
command=~D,DF,F,~b+c
time=20
[Command]
name="QCF_KK"
command=~D,DF,F,~a+b+c
time=20

;======================================== special attacks ==================================
;======================================== special attacks ==================================

;====================== DP commands ======================
[Command]
name="DP_x"
command=~F,D,DF,x
time=15

[Command]
name="DP_y"
command=~F,D,DF,y
time=15

[Command]
name="DP_z"
command=~F,D,DF,z
time=15

[Command]
name="DP_x"
command=~F,D,DF,~x
time=15

[Command]
name="DP_y"
command=~F,D,DF,~y
time=15

[Command]
name="DP_z"
command=~F,D,DF,~z
time=15



[Command]
name="DP_a"
command=~F,D,DF,a
time=20

[Command]
name="DP_b"
command=~F,D,DF,b
time=20

[Command]
name="DP_c"
command=~F,D,DF,c
time=20

[Command]
name="DP_a"
command=~F,D,DF,~a
time=20

[Command]
name="DP_b"
command=~F,D,DF,~b
time=20

[Command]
name="DP_c"
command=~F,D,DF,~c
time=20

;====================== QCF commands ======================

[Command]
name="QCF_x"
command=~D,DF,F,x
time=15

[Command]
name="QCF_y"
command=~D,DF,F,y
time=15

[Command]
name="QCF_z"
command=~D,DF,F,z
time=15

[Command]
name="QCF_x"
command=~D,DF,F,~x
time=15

[Command]
name="QCF_y"
command=~D,DF,F,~y
time=15

[Command]
name="QCF_z"
command=~D,DF,F,~z
time=15


[Command]
name="QCF_a"
command = ~D,DF,F,a
time=20

[Command]
name="QCF_b"
command = ~D,DF,F,b
time=20

[Command]
name="QCF_c"
command = ~D,DF,F,c
time=20

[Command]
name="QCF_a"
command = ~D,DF,F,~a
time=20

[Command]
name="QCF_b"
command = ~D,DF,F,~b
time=20

[Command]
name="QCF_c"
command = ~D,DF,F,~c
time=20



[Command]
name="QCB_x"
command=~D,DB,B,x
time=15

[Command]
name="QCB_y"
command=~D,DB,B,y
time=15

[Command]
name="QCB_z"
command=~D,DB,B,z
time=15

[Command]
name="QCB_x"
command=~D,DB,B,~x
time=15

[Command]
name="QCB_y"
command=~D,DB,B,~y
time=15

[Command]
name="QCB_z"
command=~D,DB,B,~z
time=15

;==========================================HURRICANE DOUBLE BUTTON=============================
[command]
name = "qcb_pp"
command = ~D, DB, B, x+y
[command]
name = "qcb_pp"
command = ~D, DB, B, x+z
[command]
name = "qcb_pp"
command = ~D, DB, B, y+z

;=========================================== 2 commands ========================================
[command]
name = "SJump"
command = ~$D, $U
time = 10

[Command]
name = "DU"
command = $D, $U
time = 10

[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;============================================ 2/3  buttons =====================================
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery_roll"
command = B,DB,D,a
time = 1
[Command]
name = "recovery_roll"
command = B,DB,D,b
time = 1
[Command]
name = "recovery_roll"
command = B,DB,D,c
time = 1
[Command]
name = "recovery_roll"
command = /F,a
time = 1
[Command]
name = "recovery_roll"
command = /F,b
time = 1
[Command]
name = "recovery_roll"
command = /F,c
time = 1
[Command]
name = "recovery_rollback"
command = /B,a
time = 1
[Command]
name = "recovery_rollback"
command = /B,b
time = 1
[Command]
name = "recovery_rollback"
command = /B,c
time = 1

[Command]
name = "alpha_counter"
command = /B,x
time = 10
[Command]
name = "alpha_counter"
command = /B,y
time = 10
[Command]
name = "alpha_counter"
command = /B,z
time = 10
[Command]
name = "alpha_counter"
command = ~B,DB,D,x
time = 10
[Command]
name = "alpha_counter"
command = ~B,DB,D,y
time = 10
[Command]
name = "alpha_counter"
command = ~B,DB,D,z
time = 10

[Command]
name = "guardpush"
command = x+y
time = 4
[Command]
name = "guardpush"
command = y+z
time = 4
[Command]
name = "guardpush"
command = x+z
time = 4
[Command]
name = "guardpush"
command = x+y+z
time = 4

[Command]
name="assist"
command=y+b
time=1

[Command]
name="tag"
command=z+c
time=1
;==========================================Dir + Button =================================
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1
;==========================================Statedef values ==============================
[Statedef -1]
;-----------------------------------
[State -1, AIhelper]
type=changestate
trigger1=ishelper(9741)
value=9741
;-----------------------------------
;SuperJump
[State -1]
type = ChangeState
value = 110
triggerall = Command = "DU"||Command = "SJump"
triggerall = !var(0)&&roundstate=2
trigger1 = statetype != A
;trigger1 = statetype = S
trigger1 = ctrl = 1
;------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 115
triggerall = command = "start"
triggerall = !var(0)&&roundstate=2
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------
;Guard Push Standing
[State -1]
type = ChangeState
value = 700
triggerall = command = "guardpush"
triggerall = statetype = S
triggerall = !var(0)&&roundstate=2
trigger1 = stateno = [150,153]
;-------------------------------------
;Guard Push Crouching
[State -1]
type = ChangeState
value = 705
triggerall = command = "guardpush"
triggerall = statetype = C
triggerall = !var(0)&&roundstate=2
trigger1 = stateno = [150,153]
;-------------------------------------
;Guard Push Air
[State -1]
type = ChangeState
value = 710
triggerall = command = "guardpush"
triggerall = statetype = A
triggerall = !var(0)&&roundstate=2
trigger1 = stateno = [154,155]
;------------------------------------------
;Alpha/Zero Counter 
[State -1]
type=ChangeState
value=750
triggerall=stateno=150||stateno=152
triggerall=statetype !=A
triggerall=Power >=1000
triggerall=P2BodyDist x=[0,50]
triggerall=p2bodydist Y=[-50,10]
triggerall = !var(0)&&roundstate=2
trigger1=command="alpha_counter"||command = "tag"
;-------------------------------------
;Lie Down Recovery Roll Foward
[State -1]
type = ChangeState
value = 940
triggerall = command = "holdfwd"
triggerall = !var(0)&&roundstate=2
triggerall = time=1
trigger1 = stateno=5120
;-------------------------------------
;Lie Down Recovery Roll Back
[State -1]
type = ChangeState
value = 941
triggerall = command = "holdback"
triggerall = !var(0)&&roundstate=2
triggerall = time=1
trigger1 = stateno=5120
;--------------------------------------
;Tech Hit Recovery Roll Forward
[State -1]
type = ChangeState
value = 942
triggerall = !ctrl && Command = "recovery_roll"
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
triggerall = !var(0)&&roundstate=2
triggerall = movetype != A
trigger1 = pos Y > -10
;--------------------------------------
;Tech Hit Recovery Roll Back
[State -1]
type = ChangeState
value = 943
triggerall = !ctrl && Command = "recovery_rollback"
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
triggerall = !var(0)&&roundstate=2
triggerall = movetype != A
trigger1 = pos Y > -10
;===============================================================================================
;                                            Hypers Moves
;===============================================================================================
;Sweep Combo
[State -1]
type=ChangeState
value=3100
triggerall=!var(0)&&command="DP_PP"&&power>=1000
triggerall=roundstate=2&&StateType!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger3=StateNo=[1000,1020]
trigger4=StateNo=[1100,1120]
trigger5=StateNo=[1200,1220]
;----------------------------------
;Grenade Launcher
[State -1]
type=null;ChangeState
value=3000
triggerall=!var(0)&&command="QCF_PP"&&power>=1000
triggerall=roundstate=2&&StateType!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;----------------------------------
;Name
[State -1]
type=ChangeState
value=3200
triggerall=!var(0)&&command="qcb_pp"&&power>=3000
triggerall=roundstate=2&&StateType!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
trigger3=StateNo=[1000,1020]
trigger4=StateNo=[1100,1120]
trigger5=StateNo=[1200,1220]
;===========================================================================

;------------------------------------
;Dash Back
[State -1]
type = ChangeState
value = 105
triggerall = stateno!=100 && stateno!=105
triggerall = !var(0)&&roundstate=2
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command="holdback" && (command="x" && command="y")
trigger3 = command="holdback" && (command="x" && command="z")
trigger4 = command="holdback" && (command="y" && command="z")
;-----------------------------------
;Dash Forward
[State -1]
type = ChangeState
value = 100
triggerall = stateno!=100 && stateno!=105
triggerall = !var(0)&&roundstate=2
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command!="holdback" && (command="x" && command="y")
trigger3 = command!="holdback" && (command="x" && command="z")
trigger4 = command!="holdback" && (command="y" && command="z")

;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
var(1) = 1

;===============================================================================================
;                                             Specials
;===============================================================================================

;---------------------------------------------------------------------------
;Special kick
[State -1]
type=ChangeState
value=1100
triggerall=!NumHelper(1105)
triggerall=!var(0)&&command="DP_x"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveHit

;---------------------------------------------------------------------------
;Special kick
[State -1]
type=ChangeState
value=1110
triggerall=!NumHelper(1115)
triggerall=!var(0)&&command="DP_y"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveHit

;---------------------------------------------------------------------------
;Special kick
[State -1]
type=ChangeState
value=1120
triggerall=!NumHelper(1125)
triggerall=!var(0)&&command="DP_z"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveHit

;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1050
triggerall=!var(0)&&command="QCF_x"
triggerall=roundstate=2&&statetype=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[600,699]
trigger2= MoveHit
trigger3=StateNo=626 && time> 20
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1060
triggerall=!var(0)&&command="QCF_y"
triggerall=roundstate=2&&statetype=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[600,699]
trigger2= MoveHit
trigger3=StateNo=626 && time> 20
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1070
triggerall=!var(0)&&command="QCF_z"
triggerall=roundstate=2&&statetype=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[600,699]
trigger2= MoveHit
trigger3=StateNo=626 && time> 20
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1000
triggerall=!var(0)&&command="QCF_x"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveContact
trigger3=StateNo=215&&time>15
trigger4=StateNo=410&&time>8
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1010
triggerall=!var(0)&&command="QCF_y"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveContact
trigger3=StateNo=215&&time>15
trigger4=StateNo=410&&time>8
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1020
triggerall=!var(0)&&command="QCF_z"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveContact
trigger3=StateNo=215&&time>15
trigger4=StateNo=410&&time>8
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1200
triggerall=!var(0)&&command="QCB_x"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveContact
trigger3=StateNo=215&&time>15
trigger4=StateNo=410&&time>8
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1210
triggerall=!var(0)&&command="QCB_y"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveContact
trigger3=StateNo=215&&time>15
trigger4=StateNo=410&&time>8
;---------------------------------------------------------------------------
;Special punch
[State -1]
type=ChangeState
value=1220
triggerall=!var(0)&&command="QCB_z"
triggerall=roundstate=2&&statetype!=A
triggerall=StateNo!=420
trigger1=ctrl
trigger2=StateNo=[200,499]
trigger2= MoveContact
trigger3=StateNo=215&&time>15
trigger4=StateNo=410&&time>8

;===============================================================================================
;                                              Throws
;===============================================================================================
;Ground Throw Punch
[State -1, Throw]
type =ChangeState
value =800
triggerall =!var(0)&&command="z"&&statetype=S&&Roundstate=2
triggerall =p2bodydist X <40
triggerall =p2statetype = S||p2statetype=C
triggerall =stateno!=[100,107]
triggerall =ctrl
trigger1 =command="holdfwd"||command="holdback"
trigger1 =p2movetype!=H
;----------------------------------
;Ground Throw Kick
;[State -1, Throw]
;type =ChangeState
;value =810
;triggerall =!var(0)&&command="c"&&statetype=S&&Roundstate=2
;triggerall =p2bodydist X <40
;triggerall =p2statetype=S||p2statetype=C
;triggerall =stateno!=[100,107]
;triggerall =ctrl
;trigger1 =command="holdfwd"||command="holdback"
;trigger1 =p2movetype!=H
;----------------------------------
;Air Throw 
;[State -1, Throw]
;type=ChangeState
;value=850
;triggerall =!var(0)&&command="z"&&statetype=A&&Roundstate=2
;triggerall =p2bodydist X <40
;triggerall =p2statetype=A
;triggerall =ctrl
;trigger1 =command="holdfwd"||command="holdback"
;trigger1 =p2movetype!=H
;===============================================================================================
;                                     Standing Attacks
;===============================================================================================
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall=!var(0)&&command="x"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
;----------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 215
triggerall=!var(0)&&command="y"&&command="holdfwd"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,205]
trigger3 = MoveContact&&StateNo=[230,235]
trigger4 = MoveContact&&StateNo=400
trigger5 = MoveContact&&StateNo=430
;----------------------------------
;Stand Medium Punch 
[State -1]
type = ChangeState
value = 210
triggerall=!var(0)&&command="y"&&command!="holdfwd"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,205]
trigger3 = MoveContact&&StateNo=[230,235]
trigger4 = MoveContact&&StateNo=400
trigger5 = MoveContact&&StateNo=430
;----------------------------------
;Stand Hard Punch
[State -1]
type = ChangeState
value = 226
triggerall=!var(0)&&command="z"&&command!="holdfwd"&&command="holdback"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
;----------------------------------
;Stand Hard Punch
[State -1]
type = ChangeState
value = 225
triggerall=!var(0)&&command="z"&&command="holdfwd"&&command!="holdback"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,220]
trigger3 = MoveContact&&StateNo=[230,250]
trigger4 = MoveContact&&StateNo=[400,410]
trigger5 = MoveContact&&StateNo=[430,440]
;----------------------------------
;Stand Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall=!var(0)&&command="z"&&command!="holdfwd"&&command!="holdback"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=[230,240]
trigger4 = MoveContact&&StateNo=[400,410]
trigger5 = MoveContact&&StateNo=[430,440]
;----------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall=!var(0)&&command="a"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,205]
trigger3 = MoveContact&&StateNo=400
trigger4 = MoveContact&&StateNo=430
;----------------------------------
;Stand Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall=!var(0)&&command="b"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,215]
trigger3 = MoveContact&&StateNo=230
trigger4 = MoveContact&&StateNo=400
trigger5 = MoveContact&&StateNo=430
;----------------------------------
;Stand Hard Kick
[State -1]
type = ChangeState
value = 250
triggerall=!var(0)&&command="c"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,220]
trigger3 = MoveContact&&StateNo=[230,240]
trigger4 = MoveContact&&StateNo=[400,410]
trigger5 = MoveContact&&StateNo=[430,440]
;===============================================================================================
;                                     Crouching Attacks
;===============================================================================================
;Crouhing Light Punch
[State -1]
type=ChangeState
value=400
triggerall=!var(0)&&command="x"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
;----------------------------------
;Crouhing Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall=!var(0)&&command="y"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=[230,230]
trigger4 = MoveContact&&StateNo=400
trigger5 = MoveContact&&StateNo=[430,440]
;----------------------------------
;Crouhing Hard Punch
[State -1]
type = ChangeState
value = 420
triggerall=!var(0)&&command="z"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=225
trigger4 = MoveContact&&StateNo=[230,240]
trigger5 = MoveContact&&StateNo=[400,410]
trigger6 = MoveContact&&StateNo=[430,440]


;launcher (move this to the launchers root state)
[State -1, Aerial-Rave Jump]
type = ChangeState
value = 110
triggerall =command="holdup"
triggerall =!var(0)&&roundstate=2
triggerall =MoveHit
trigger1 = stateno=420&&enemy,hitshakeover;(edit this to the launchers root state)
;----------------------------------
;Crouhing Light Kick
[State -1]
type=ChangeState
value=430
triggerall=!var(0)&&command="a"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,205]
trigger3=MoveContact&&StateNo=[230,230]
trigger4=MoveContact&&StateNo=400
;----------------------------------
;Crouhing Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall=!var(0)&&command="b"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=[230,230]
trigger4 = MoveContact&&StateNo=[400,410]
trigger5 = MoveContact&&StateNo=430
;----------------------------------
;Crouhing Hard Kick
[State -1]
type = ChangeState
value = 450
triggerall=!var(0)&&command="c"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=[230,230]
trigger4 = MoveContact&&StateNo=[400,410]
trigger5 = MoveContact&&StateNo=[430,440]
;===============================================================================================
;                                     Aerial Attacks
;===============================================================================================
;Air Light Punch
[State -1]
type=changestate
value=600
triggerall=!var(0)&&command="x"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
;----------------------------------
;Air Medium Punch
[State -1]
type=changestate
value=610
triggerall=!var(0)&&command="y"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
trigger2 =MoveContact&&StateNo=600
trigger3 =MoveContact&&StateNo=630
;----------------------------------
;Air Heavy Punch
[State -1]
type=changestate
value=620
triggerall=!var(0)&&command="z"&&command!="holddown"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
trigger2 =MoveContact&&StateNo=[600,610]
trigger3 =MoveContact&&StateNo=[630,640]
;----------------------------------
;Down + Air Heavy Punch
[State -1]
type=changestate
value=626
triggerall=!var(0)&&command="z"&&command="holddown"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
trigger2 =MoveContact&&StateNo=[600,610]
trigger3 =MoveContact&&StateNo=[630,640]
;----------------------------------
;Air Light Kick
[State -1]
type=changestate
value=630
triggerall=!var(0)&&command="a"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=600
;----------------------------------
;Air Medium Kick
[State -1]
type=changestate
value=640
triggerall=!var(0)&&command="b"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[600,610]
trigger3=MoveContact&&StateNo=630
;----------------------------------
;Air Heavy Kick
[State -1]
type=changestate
value=650
triggerall=!var(0)&&command="c"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl
trigger2 =MoveContact&&StateNo=[600,610]
trigger3 =MoveContact&&StateNo=[630,640]
