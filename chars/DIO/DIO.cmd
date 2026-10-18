;-| Button Remapping |-----------------------------------------------------
[Remap]
x=x
y=y
z=z
a=a
b=b
c=c
s=s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.Time=15
command.buffer.Time=1


;-| Super Motions |--------------------------------------------------------


[Command]
name="TheWorld"
command=~D, DF, F, D, DF, z+c
time=32
[Command]
name="TheWorld"
command=~D, DF, F, D, DF, a+x
time=32
[Command]
name="TheWorld"
command=~D, DF, F, D, DF, b+y
time=32

[Command]
name="Checkmate-Da"
command=~D, DF, F, D, DF, x
time=32
[Command]
name="Checkmate-Da"
command=~D, DF, F, D, DF, y
time=32
[Command]
name="Checkmate-Da"
command=~D, DF, F, D, DF, z
time=32
[Command]
name="Checkmate-Da"
command=~D, DF, F, D, DF, ~x
time=32
[Command]
name="Checkmate-Da"
command=~D, DF, F, D, DF, ~y
time=32
[Command]
name="Checkmate-Da"
command=~D, DF, F, D, DF, ~z
time=32

[Command]
name="MaxCheckmate-Da"
command=~D, DF, F, D, DF, x+y
time=32
[Command]
name="MaxCheckmate-Da"
command=~D, DF, F, D, DF, x+z
time=32
[Command]
name="MaxCheckmate-Da"
command=~D, DF, F, D, DF, y+z
time=32

[Command]
name="RoadRoller"
command=~D, DB, B, D, DB, x
time=32
[Command]
name="RoadRoller"
command=~D, DB, B, D, DB, y
time=32
[Command]
name="RoadRoller"
command=~D, DB, B, D, DB, z
time=32
[Command]
name="RoadRoller"
command=~D, DB, B, D, DB, ~x
time=32
[Command]
name="RoadRoller"
command=~D, DB, B, D, DB, ~y
time=32
[Command]
name="RoadRoller"
command=~D, DB, B, D, DB, ~z
time=32

[Command]
name="MaxRoadRoller"
command=~D, DB, B, D, DB, x+y
time=32
[Command]
name="MaxRoadRoller"
command=~D, DB, B, D, DB, x+z
time=32
[Command]
name="MaxRoadRoller"
command=~D, DB, B, D, DB, y+z
time=32

[Command]
name="CheckmateCrush"
command=~D, DB, B, D, DB, a
time=32
[Command]
name="CheckmateCrush"
command=~D, DB, B, D, DB, b
time=32
[Command]
name="CheckmateCrush"
command=~D, DB, B, D, DB, c
time=32
[Command]
name="CheckmateCrush"
command=~D, DB, B, D, DB, ~a
time=32
[Command]
name="CheckmateCrush"
command=~D, DB, B, D, DB, ~b
time=32
[Command]
name="CheckmateCrush"
command=~D, DB, B, D, DB, ~c
time=32

[Command]
name="MaxCheckmateCrush"
command=~D, DB, B, D, DB, a+b
time=32
[Command]
name="MaxCheckmateCrush"
command=~D, DB, B, D, DB, a+c
time=32
[Command]
name="MaxCheckmateCrush"
command=~D, DB, B, D, DB, b+c
time=32

[Command]
name="Punishment"
command=~D, DF, F, D, DF, a
time=32
[Command]
name="Punishment"
command=~D, DF, F, D, DF, b
time=32
[Command]
name="Punishment"
command=~D, DF, F, D, DF, c
time=32
[Command]
name="Punishment"
command=~D, DF, F, D, DF, ~a
time=32
[Command]
name="Punishment"
command=~D, DF, F, D, DF, ~b
time=32
[Command]
name="Punishment"
command=~D, DF, F, D, DF, ~c
time=32

[Command]
name="MaxPunishment"
command=~D, DF, F, D, DF, a+b
time=32
[Command]
name="MaxPunishment"
command=~D, DF, F, D, DF, a+c
time=32
[Command]
name="MaxPunishment"
command=~D, DF, F, D, DF, b+c
time=32

[Command]
name="Judgment" 
command=~D, DB, B, D, DB, a+x
time=32
[Command]
name="Judgment"
command=~D, DB, B, D, DB, b+y
time=32
[Command]
name="Judgment"
command=~D, DB, B, D, DB, c+z
time=32

[Command]
name="BloodySummoning2"
command=~D, B, DB, D, DF, a+x
time=32
[Command]
name="BloodySummoning2"
command=~D, B, DB, D, DF, b+y
time=32
[Command]
name="BloodySummoning2"
command=~D, B, DB, D, DF, c+z
time=32
[Command]
name="BloodySummoning2"
command=~D, B, DB, D, DF, ~a+x
time=32
[Command]
name="BloodySummoning2"
command=~D, B, DB, D, DF, ~b+y
time=32
[Command]
name="BloodySummoning2"
command=~D, B, DB, D, DF, ~c+z
time=32

[Command]
name="BloodySummoning1"
command=x,x,F,a,z
time=64
[Command]
name="BloodySummoning1"
command=x,x,F,a+z
time=64
[Command]
name="BloodySummoning1"
command=x,x,~F+a+z
time=64
[Command]
name="BloodySummoning1"
command=x,x,F,a,~z
time=64
[Command]
name="BloodySummoning1"
command=x,x,F,~a+z
time=64
[Command]
name="BloodySummoning1"
command=x,x,~F+a+z
time=64
[Command]
name="BloodySummoning1"
command=~x , x, ~F + a,~z
time=64
;-| Special Motions |------------------------------------------------------
[Command]
name="Teleport1"
command=~F, D, DF, a
time=18
[Command]
name="Teleport2"
command=~F, D, DF, b
time=18
[Command]
name="Teleport3"
command=~F, D, DF, c
time=18
[Command]
name="Teleport1"
command=~F, D, DF, ~a
time=18
[Command]
name="Teleport2"
command=~F, D, DF, ~b
time=18
[Command]
name="Teleport3"
command=~F, D, DF, ~c
time=18

[Command]
name="TeleportEX"
command=~F, D, DF, a+b
time=18
[Command]
name="TeleportEX"
command=~F, D, DF, a+c
time=18
[Command]
name="TeleportEX"
command=~F, D, DF, b+c
time=18

[Command]
name="BlazingFist"
command=~D, DF, F, x
time=15
[Command]
name="BlazingFist"
command=~D, DF, F, y
time=15
[Command]
name="BlazingFist"
command=~D, DF, F, z
time=15
[Command]
name="BlazingFist"
command=~D, DF, F, ~x
time=15
[Command]
name="BlazingFist"
command=~D, DF, F, ~y
time=15
[Command]
name="BlazingFist"
command=~D, DF, F, ~z
time=15

[Command]
name="EXBlazingFist"
command=~D, DF, F, x+z
time=15
[Command]
name="EXBlazingFist"
command=~D, DF, F, x+y
time=15
[Command]
name="EXBlazingFist"
command=~D, DF, F, y+z
time=15

[Command]
name="BlazingStrike1"
command=~D, DB, B, x
time=15
[Command]
name="BlazingStrike2"
command=~D, DB, B, y
time=15
[Command]
name="BlazingStrike3"
command=~D, DB, B, z
time=15
[Command]
name="BlazingStrike1"
command=~D, DB, B, ~x
time=15
[Command]
name="BlazingStrike2"
command=~D, DB, B, ~y
time=15
[Command]
name="BlazingStrike3"
command=~D, DB, B, ~z
time=15

[Command]
name="EXBlazingStrike"
command=~D, DB, B, x+z
time=15
[Command]
name="EXBlazingStrike"
command=~D, DB, B, x+y
time=15
[Command]
name="EXBlazingStrike"
command=~D, DB, B, y+z
time=15

[Command]
name="ScaleOfTerror"
command=~D, DB, B, a
time=15
[Command]
name="ScaleOfTerror"
command=~D, DB, B, b
time=15
[Command]
name="ScaleOfTerror"
command=~D, DB, B, c
time=15
[Command]
name="ScaleOfTerror"
command=~D, DB, B, ~a
time=15
[Command]
name="ScaleOfTerror"
command=~D, DB, B, ~b
time=15
[Command]
name="ScaleOfTerror"
command=~D, DB, B, ~c
time=15

[Command]
name="ScaleOfTerrorEX"
command=~D, DB, B, a+b
time=15
[Command]
name="ScaleOfTerrorEX"
command=~D, DB, B, a+c
time=15
[Command]
name="ScaleOfTerrorEX"
command=~D, DB, B, b+c
time=15

[Command]
name="SpaceRipperStingyEyes"
command=~D, DF, F, a
time=15
[Command]
name="SpaceRipperStingyEyes"
command=~D, DF, F, b
time=15
[Command]
name="SpaceRipperStingyEyes"
command=~D, DF, F, c
time=15
[Command]
name="SpaceRipperStingyEyes"
command=~D, DF, F, ~a
time=15
[Command]
name="SpaceRipperStingyEyes"
command=~D, DF, F, ~b
time=15
[Command]
name="SpaceRipperStingyEyes"
command=~D, DF, F, ~c
time=15

[Command]
name="SpaceRipperStingyEyesEX"
command=~D, DF, F, a+b
time=32
[Command]
name="SpaceRipperStingyEyesEX"
command=~D, DF, F, a+c
time=32
[Command]
name="SpaceRipperStingyEyesEX"
command=~D, DF, F, b+c
time=32
;-------------------------------------------------------------
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, x
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, y
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, z
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~x
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~y
time=32
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~z
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, a
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, b
time=32
[Command]
name=  "412k" ;Zero Counter
command=~B, DB, D, c
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~a
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~b
time=32
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~c
time=32
;-| Double Tap |-----------------------------------------------------------
[Command]
name="FF"     ;Required (do not remove)
command=F, F
time=10

[Command]
name="BB"     ;Required (do not remove)
command=B, B
time=10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name="recovery";Required (do not remove)
command=x+y
time=1
[Command]
name= "recovery"
command =a+x
time=1
[Command]
name="recovery"
command=y+z
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=a+b
time=1
[Command]
name="recovery"
command=b+c
time=1
[Command]
name="recovery"
command=a+c
time=1

[Command]
name="xy"
command=x+y
time=1
[Command]
name="xz"
command=x+z
time=1
[Command]
name="yz"
command=y+z
time=1

[Command]
name="pp"
command=x+y
time=1
[Command]
name="pp"
command=x+z
time=1
[Command]
name="pp"
command=y+z
time=1
[Command]
name="kk"
command=a+b
time=1
[Command]
name="kk"
command=a+c
time=1
[Command]
name="kk"
command=b+c
time=1
[Command]
name="a+x"
command=a+x
time=1
[Command]
name="b+y"
command=b+y
time=1
[Command]
name="c+z"
command=c+z
time=1
[Command]
name="a+c"
command=a+c
time=1
[Command]
name="a+b"
command=a+b
time=1
[Command]
name="b+c"
command=b+c
time=1
[Command]
name="x+y"
command=x+y
time=1
[Command]
name="y+z"
command=y+z
time=1
[Command]
name="x+z"
command=x+z
time=1
;-| Single Button |---------------------------------------------------------
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
name="s"
command=s
time=1
;-| Single Dir |------------------------------------------------------------
[Command]
name="fwd" ;Required (do not remove)
command=$F
time=1
[Command]
name="downfwd"
command=$DF
time=1
[Command]
name="down" ;Required (do not remove)
command=$D
time=1
[Command]
name="downback"
command=$DB
time=1
[Command]
name="back" ;Required (do not remove)
command=$B
time=1
[Command]
name="upback"
command=$UB
time=1
[Command]
name="up" ;Required (do not remove)
command=$U
time=1
[Command]
name="upfwd"
command=$UF
time=1
;-| Hold Button |--------------------------------------------------------------
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holds"
command=/s
time=1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name="holdfwd";Required (do not remove)
command=/$F
time=1
[Command]
name="holdback";Required (do not remove)
command=/$B
time=1
[Command]
name="holdup" ;Required (do not remove)
command=/$U
time=1
[Command]
name="holddown";Required (do not remove)
command=/$D
time=1
[Command]
name="holdfwd" ;Required (do not remove)
command=/$F
time=1
[Command]
name="holddownfwd"
command=/$DF
time=1
[Command]
name="holddown" ;Required (do not remove)
command=/$D
time=1
[Command]
name="holddownback"
command=/$DB
time=1
[Command]
name="holdback" ;Required (do not remove)
command=/$B
time=1
[Command]
name="holdupback"
command=/$UB
time=1
[Command]
name="holdup" ;Required (do not remove)
command=/$U
time=1
[Command]
name="holdupfwd"
command=/$UF
time=1
;---------------------------------------------------------------------------
;Release Direction
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1
;--------------------------------------------------------------------------
;Release Button
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1
;---------------------------------------------------------------------------
;Other
[Command]
name="highjump"
command=$D, $U
time=15
[Command]
name="DU"
command=D, U
time=18
[Command]
name="DU"
command=DB, UF
time=18
[Command]
name="DU"
command=DF, UB
time=18
[Command]
name="DU"
command=$D, UF
time=18
[Command]
name="DU"
command=$D, UB
time=18
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type=CtrlSet
triggerall=!ctrl && roundstate=2
trigger1=(StateNo=52 || StateNo=101 || StateNo=5120) && !AnimTime
trigger2=(StateNo=[200,499]) && !AnimTime
trigger3=StateNo=810 && !AnimTime
trigger4=(StateNo=5001 || StateNo=5011 || StateNo=151 || StateNo=153) && HitOver
trigger5=(StateNo=[700,715]) && !AnimTime
trigger6=(StateNo=[6080,6082]) && !AnimTime
value=1
;-----------------------------------------------------------------
[State -1, Parry Stand]
type=HitOverride
triggerall =!AILevel && roundstate=2
triggerall=command="fwd" && command!= "back" && command != "up" && command != "down"
trigger1=Ctrl
attr=SA,AA,AP
stateno=6080
slot=0
time=5
;------------------------------------------------------------------
[State -1, Crouching Parry]
type=HitOverride
triggerall =!AILevel && roundstate=2
triggerall=(statetype=S && command="down")|| (statetype=C && command="fwd") && command != "back" && command != "up"
trigger1=Ctrl
attr=C,AA,AP
stateno=6081
slot=0
time =5
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall =!AILevel && roundstate=2
triggerall=(statetype= A && command="fwd") && command != "back" && command != "up" && command != "down"
trigger1=Ctrl
attr=SA,AA,AP
stateno=6082
forceair=1
slot=0
time=5
;--------------------------------------------------------------------
[State -1, Bloody Summoning]
type=ChangeState
value=3600
triggerall=!AILevel && RoundState=2 && StateType != A && var(20)<=60 && power >= 3000 
triggerall=!Numhelper(1005) && !Numhelper(3205) && !Numhelper(3405) 
triggerall=!Numhelper(3105) && !Numhelper(3505) && !var(0) 
triggerall=Ifelse(var(44)=0,command="BloodySummoning1",command="BloodySummoning2")
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;----------------------------------------------------------------------
[State -1, The World-Time Stop]
type=changestate
value=3200
triggerall=!AILevel && RoundState=2 && StateType != L && (stateno!=[3200,3205])
triggerall=var(20) <= 60 && power=powermax && !var(0) && !Numhelper(3205) && command="TheWorld" 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
;----------------------------------------------------------------------
[State -1, DIO's Judgment]
type=changestate
value=3500
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=stateno!=3500 && var(20) <= 60 && power >= 3000
triggerall=!Numhelper(1005) && !Numhelper(3205) && !Numhelper(3405) 
triggerall=!Numhelper(3105) && !Numhelper(3505) && !var(0) && command="Judgment" 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;--------------------------------------------------------------------------
[State -1, Sidestep/Dodge]
type=ChangeState
value=Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall=command="a+x"
triggerall=!AILevel && RoundState=2 && StateType != A
trigger1=(ctrl || (StateNo=[100,101]))
;----------------------------------------------------------------------
[State -1, Max Checkmate Crush]
type=changestate
value=3450
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=(stateno!=3450) && var(20) <= 60 && power >= 2000 && !Numhelper(3205)
triggerall=!Numhelper(3405) && !Numhelper(3205) && !var(0) && command="MaxCheckmateCrush"
triggerall=!var(39)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Checkmate Crush]
type=changestate
value=3400
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=(stateno!=3400) && (var(20) <= 60 && power >= 1000||var(0) && var(8)>1)
 
triggerall=!Numhelper(3405) && !Numhelper(3205) && command="CheckmateCrush" 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Max Punishment]
type=changestate
value=3350
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=(stateno!=[3350,3351]) && var(20) <= 60 && power >= 2000
triggerall=command="MaxPunishment" && !Numtarget(3350) && !Numhelper(3205) && !var(0)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Punishment]
type=changestate
value=3300
triggerall=!AILevel && RoundState=2 && StateType != A && !Numhelper(3205)
triggerall=(stateno!=[3300,3301]) 
triggerall=var(20) <= 60 && power >= 1000||var(0) && var(8)>1
triggerall=!Numtarget(3300) && !Numtarget(3301) && !Numtarget(3350) && command="Punishment" 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Max Road Roller]
type=ChangeState
value=3150
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=!numhelper(3105) && !numhelper(3106) && !numhelper(3107) && !numhelper(3108) && !numhelper(3109) 
triggerall=!numhelper(3111) && !numhelper(3112) && !numhelper(3113) && !numhelper(3115)
triggerall=(stateno!=3150) && var(20) <= 60 && power >= 2000 && !Numhelper(3205)
triggerall= command="MaxRoadRoller" && !numtarget(3150) && !var(0)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Road Roller]
type=ChangeState
value=3100
triggerall=!AILevel && RoundState=2 && StateType != A && !Numhelper(3205)
triggerall=!numhelper(3105) && !numhelper(3106) && !numhelper(3107) && !numhelper(3108) && !numhelper(3109) 
triggerall=!numhelper(3111) && !numhelper(3112) && !numhelper(3113) && !numhelper(3115)
triggerall=var(20) <= 60 && power >= 1000||var(0) && var(8)>1
triggerall= command="RoadRoller" && (stateno!=[3100,3110]) && !numtarget(3100) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max AIr Checkmate]
type=ChangeState
value=3075
triggerall=!AILevel && RoundState=2 && (stateno!= 3075 && prevstateno!= 3075) && !numhelper(3055) 
triggerall= !var(0) && StateType=A && Pos y<=-20 
triggerall= var(20) <= 60 && !Numhelper(3205)
triggerall= power >= 2000 && command="MaxCheckmate-Da"
trigger1=ctrl
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Checkmate]
type=ChangeState
value=3050
triggerall=!AILevel && RoundState=2 && StateType != A && (stateno!=3050) 
triggerall= command= "MaxCheckmate-Da" && !numhelper(3055) 
triggerall= var(20) <= 60 && power >= 2000 && !var(0) && !Numhelper(3205)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Air Checkmate]
type=ChangeState
value=3025
triggerall=!AILevel && RoundState=2 && (stateno!= [3025,3035]) && (prevstateno!= 3025) 
triggerall= !Numhelper(3006) && !Numhelper(3007) && !Numhelper(3008)||var(0) && var(8)>1
triggerall= StateType=A && Pos y<=-20 && var(20) <= 60 && !numhelper(3055) && !Numhelper(3205)
triggerall= command="Checkmate-Da" && (var(20) <= 60 && power >= 1000||var(0)=1 && var(8)>1)
trigger1=ctrl
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Checkmate]
type=ChangeState
value=3000
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=var(20) <= 60 && power >= 1000||var(0)=1 && var(8)>1
triggerall=command= "Checkmate-Da" && stateno!=3000
triggerall=!numhelper(3055) && (numhelper(3005)=0||var(0) && var(8)>1)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;========================================================================
[State -1, Air Blazing Fist]
type=ChangeState
value=Ifelse(command="EXBlazingFist"&& var(20) <= 60&&power>=500,1450,1400)
triggerall=!AILevel && RoundState=2 && StateType=A && Pos y<=-25 && !Numhelper(1005) 
triggerall= ((command="BlazingFist")||(command="EXBlazingFist" && power>=500 && var(20) <= 60))
trigger1=ctrl
trigger2=var(6)|| var(7)
trigger3=(stateno=[600,650]) && movecontact
;------------------------------------------------------------------------
[State -1, Teleport]
type=ChangeState
value=Ifelse(command="TeleportEX"&& var(20) <= 60 && power>=500,1250,1200)
triggerall=!AILevel && RoundState=2 && !var(0)
triggerall=!Numhelper(1005) && StateType != A && ((command="Teleport1")||(command="Teleport2")||(command="Teleport3")||(command="TeleportEX" && power>=500 && var(20) <= 60))
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, The Scale Of Terror]
type=ChangeState
value=Ifelse(command="ScaleOfTerrorEX"&& var(20) <= 60 && power>=500,1350,1300)
triggerall=!AILevel && RoundState=2 && !var(0) && StateType != A 
triggerall=((command="ScaleOfTerror")||(command="ScaleOfTerrorEX" && power>=500 && var(20) <= 60))
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, EX SRSE]
type=ChangeState
value=1550
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall=command="SpaceRipperStingyEyesEX" && power>=500 && var(20) <= 60
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Space Ripper Stingy Eyes]
type=ChangeState
value=1500
triggerall=!AILevel && RoundState=2 && StateType != A && !Numhelper(1005)
triggerall=!Numhelper(1505) && !var(0)||var(20)
triggerall=command="SpaceRipperStingyEyes"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Blazing Strike]
type=ChangeState
value=Ifelse(command="EXBlazingStrike" && var(20) <= 60 && power>=500,1150,1100)
triggerall=!AILevel && RoundState=2 && !Numhelper(1005) 
triggerall=numenemy && StateType != A && ((command="BlazingStrike1"||command="BlazingStrike2"||command="BlazingStrike3")||(command="EXBlazingStrike" && power>=500 && var(20) <= 60))
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Blazing Fist]
type=ChangeState
value=Ifelse(command="EXBlazingFist" && var(20) <= 60 && power>=500,1050,1000)
triggerall=!AILevel && RoundState=2 
triggerall=!Numhelper(1005) && numenemy 
triggerall=StateType != A && ((command="BlazingFist")||(command="EXBlazingFist" && power>=500 && var(20) <= 60))
trigger1=ctrl || (StateNo=[10,12])  || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;========================================================================
[State -1, Zero Counter]
type=ChangeState
value=750
trigger1=StateNo=150 || StateNo=152
trigger1=command="412p" || command="412k"
trigger1=!AILevel && RoundState=2 && StateType != A
trigger1=power >= 1000 && !var(20) && !var(0)
;------------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value =800
trigger1=(command="holdfwd"||command="holdback") && (command="pp"||command="kk")
trigger1=!AILevel && RoundState=2 && Statetype!=A && !var(20) && !var(0) && !Numhelper(1005) 
trigger1=ctrl
;-------------------------------------------------------------------------
[State -1, Power Charge]
type=ChangeState
value=730
trigger1=command="holdb" && command="holdy"
trigger1=!AILevel && RoundState=2 && StateType != A && !Numhelper(1005)
trigger1=power < const(data.power) && power < PowerMax && !var(20) && !var(0)
trigger1=ctrl || (StateNo=[100,101])
;--------------------------------------------------------------------------
[State -1,  Jump]
type=ChangeState
value=123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1=ctrl && command="DU" 
trigger2=stateno=420 && movehit && command="holdup"
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type=ChangeState
value=Ifelse(StateType=A,905,900)
triggerall=!AILevel && command="c+z" && RoundState=2 
triggerall=power >= 1000 && !var(20) && !var(0)
triggerall=!Numhelper(1005) 
trigger1=ctrl || StateNo=52 || (StateNo=[100,101])
;--------------------------------------------------------------------------
[State -1, Run /Dash Back]
type=ChangeState
value=Ifelse(command="BB",105,100)
trigger1=!AILevel && Roundstate=2 && statetype=S
trigger1=command="FF"||command="BB"
trigger1=ctrl
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="x"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=(stateno=200 || stateno=400 || stateno=430) && movecontact
trigger3=!numhelper(1005)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="y"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439])) && movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4=stateno=230 && movecontact
trigger4=!numhelper(1005)
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="z"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449])) && movecontact
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4= stateno=240 && movecontact
trigger4=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="a"
triggerall=Ifelse(var(0),var(8)>1,var(8)=0)
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=(stateno=[200,209]) && movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4=stateno=230 && movecontact
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown"&& command="b"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439])) && movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4= (stateno=200||stateno=230||stateno=400||stateno=430) && movecontact
trigger4=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel && Roundstate=2 && statetype != A && command != "holddown" && command="c"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449])) && movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4=stateno=210 && movecontact
trigger4=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="x"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=(stateno=200 || stateno=400 || stateno=430) && movecontact 
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="y"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439])) && movecontact
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="z"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449])) && movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4=(stateno=240||stateno=440) && movecontact
trigger4=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown" && command="a"
triggerall=Ifelse(var(0),var(8)>1,var(8)=0)
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=(stateno=200 || stateno=400 || stateno=430) && movecontact 
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="b"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439])) && movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
trigger4=(stateno=200||stateno=400) && movecontact
trigger4=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel && Roundstate=2 && statetype != A && command="holddown"&& command="c"
trigger1=ctrl||(stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact 
trigger3= (var(55)||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel && Roundstate=2 && statetype=A && command="x"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel && Roundstate=2 && statetype=A && command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639])) && movecontact
trigger3= (var(55)=2||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel && Roundstate=2 && statetype=A && command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649])) && movecontact 
trigger3= (var(55)=2||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel && Roundstate=2 && statetype=A && command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609]) && movecontact
trigger3= (var(55)=2||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel && Roundstate=2 && statetype=A && command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639])) && movecontact
trigger3= (var(55)=2||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel && Roundstate=2 && statetype=A && command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,649]) && movecontact 
trigger3= (var(55)=2||var(0) && var(8)>1)
trigger3=!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Taunt]
type=ChangeState
value=195
triggerall=command="s"
triggerall=!AILevel && Roundstate=2 && stateType != A
triggerall=StateNo != [200,699]
trigger1=ctrl || (StateNo=[100,101])
trigger2=var(5)
;==========================================================================
;AI
;==========================================================================
;--------------------------------------------------------------------------
[State -1, AI Parry Stand]
type=HitOverride
triggerall=AILevel && statetype != A && roundstate=2
trigger1=random < (250 * (AIlevel ** 2 / 64.0))
trigger1=ctrl && Numenemy
trigger1=enemynear, movetype=A && inguarddist
slot=0
stateno=6080
attr=SA, AA, AP
time=3
;---------------------------------------------------------------
[State -1, AI Crouching Parry]
type=HitOverride
triggerall=AILevel && statetype != A && roundstate=2
trigger1 =random < (250 * (AIlevel ** 2 / 64.0))
trigger1=ctrl && Numenemy
trigger1=enemynear, movetype=A && inguarddist
slot=0
stateno=6081
attr=C, AA, AP
time=3
;---------------------------------------------------------------
[State -1, AI Aerial Parry]
type=HitOverride
triggerall=AILevel && statetype=A && roundstate=2
trigger1=random < (250 * (AIlevel ** 2 / 64.0))
trigger1=ctrl && Numenemy
trigger1=enemynear, movetype=A && inguarddist
trigger1=ctrl
slot=0
stateno=6082
attr=SCA, AA, AP
time=3
;-------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value=800
triggerall=AILevel && !Numhelper(1005)  && Random < (500 * (AIlevel ** 2 / 64.0))
triggerall=roundstate=2 && statetype!=A && enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) && !var(20) && !var(0)
triggerall=enemynear,movetype!=H && enemynear,statetype!=A && enemynear,Hitover && (p2bodydist x =[0,30])
triggerall=ctrl||stateno=100||stateno=52
trigger1=random>=800
trigger2=enemynear,stateno=[120,155]
trigger2=random>=500
trigger3=stateno=100
trigger4 =(p2bodydist x=[0,30])&&random<250
trigger5 =(p2stateno=[120,155]) && (p2bodydist x=[0,30])&&random<500
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type=ChangeState
value=200
triggerall=AILevel && numenemy && roundstate=2 && stateType != A 
triggerall=(p2bodydist x=[-30,75])  && (p2bodydist y=[-80,5]) && P2statetype != C && P2statetype != L
trigger1=ctrl && random < (400 * (AIlevel ** 2 / 64.0))
trigger2=(stateno=[100,101]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger3=(stateno=[200,209]) && movecontact && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type=ChangeState
value=210
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A  && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[-20, 70]) && p2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439])) && movecontact
trigger2=((var(55)||var(0) && var(8)>1)) && random < 350
trigger2 =!numhelper(1005) 
trigger3=(stateno=230) && movecontact
trigger3 =!numhelper(1005) 
trigger3= random < (200 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type=ChangeState
value=220
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[35, 95]) && (p2bodydist y=[ -95, 5]) && p2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[240,249])||(stateno=[410,419])||(stateno=[440,449])) && movecontact
trigger2=((var(55)||var(0) && var(8)>1)) && random < 750
trigger2 =!numhelper(1005) 
trigger3=(stateno=240) && movecontact && anim=240 && random<250 && !var(55)
trigger3 =!numhelper(1005) 
trigger4=(stateno=240) && movecontact && random < (500 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type=ChangeState
value=230
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype=S
triggerall=Ifelse(var(0),var(8)>1,var(8)=0)
triggerall=(p2bodydist x=[2, 40]) && p2statetype != L && !(enemynear, hitfall) && (stateno!=[6080,6082])
trigger1=ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[400,409])) && movecontact
trigger2=((var(55)||var(0) && var(8)>1)) && random < 200
trigger2 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type=ChangeState
value=240
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[0, 54]) && p2statetype != A && !(enemynear, hitfall)
trigger1=ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[230,239])||(stateno=[410,419])||(stateno=[430,439])) && movecontact 
trigger2 =!numhelper(1005) 
trigger2=((var(55)||var(0) && var(8)>1)) && random < 350
trigger3=(stateno=200||stateno=230) && movecontact && random < (500 * (AIlevel ** 2 / 64.0))
trigger3 =!numhelper(1005) 
trigger4 =((stateno=[100,101])|| (StateNo=[10,12]) || StateNo=106) && random < 200 && enemy,vel x >-1
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type=ChangeState
value=250
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[30, 90]) && (p2bodydist y=[ -110, 5]) && p2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[240,249])|| (stateno=[440,449])) && movehit && stateno != 221 
trigger2=((var(55)||var(0) && var(8)>1)) && random < 800
trigger2 =!numhelper(1005) 
trigger3=(stateno=210) && movecontact && random < (500 * (AIlevel ** 2 / 64.0))
trigger3 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[20, 55]) &&(p2bodydist y=[-70,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=stateno=[100,101]
trigger3 =(stateno=[400,409]) && movecontact && random < 300 && !var(55)
trigger3 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[25, 85]) &&(p2bodydist y=[-80,5]) && P2statetype != C && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439])) && movecontact
trigger2=((var(55)||var(0) && var(8)>1)) && random < 800
trigger2 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[20, 55]) &&(p2bodydist y=[-125,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (115 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[240,249])||(stateno=[410,419])||(stateno=[440,449])) && movecontact
trigger2=((var(55)||var(0) && var(8)>1)) && random < 600
trigger2 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && (stateno!=[6080,6082])
triggerall=Ifelse(var(0),var(8)>1,var(8)=0)
triggerall=(p2bodydist x=[2, 40]) &&(p2bodydist y=[-50,25]) && P2statetype != C && P2statetype != L && !(enemynear, hitfall)
trigger1=ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,209])|| (stateno=[400,409])) && movecontact 
trigger2=((var(55)||var(0) && var(8)>1)) && random < 400
trigger2 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[10, 65]) &&(p2bodydist y=[-50,5]) && P2statetype != A 
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[210,219])|| (stateno=[230,239])||(stateno=[410,419])||(stateno=[430,439])) && movecontact 
trigger2=((var(55)||var(0) && var(8)>1)) && random < 350
trigger2 =!numhelper(1005) 
trigger3 =(stateno=200||stateno=400) && movecontact
trigger3 =!numhelper(1005) 
trigger3=random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && (stateno!=[6080,6082])
triggerall=(p2bodydist x=[10, 80]) && (p2bodydist y=[ -50, 50]) && p2statetype=S && fvar(8)<2||var(0) && var(8)>1
trigger1=ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[220,229])|| (stateno=[240,249])||(stateno=[420,429])||(stateno=[440,449])) && movecontact
trigger2=((var(55)||var(0) && var(8)>1)) && random < 400
trigger2 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[5,85]) && (p2bodydist y=[ -80, 60]) && p2statetype != L && (stateno!=[6080,6082])
trigger1=ctrl && random < (ifelse((vel x > 0 && p2statetype=A), 350, 250) * (AIlevel ** 2 / 64.0)) 
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[10, 75]) && (p2bodydist y=[ -105, -55]) && p2statetype != L && (stateno!=[6080,6082])
trigger1=ctrl && random < (ifelse((vel x > 0 && p2statetype=A), 250, 150) * (AIlevel ** 2 / 64.0)) 
trigger2=(stateno=[600,609])&& movecontact 
trigger2=((var(55)=2||var(0) && var(8)>1)) && random < 750
trigger2 =!numhelper(1005) 
trigger3=(stateno=[630,639])&& movecontact 
trigger3=((var(55)=2||var(0) && var(8)>1)) && random < 250
trigger3=random < 250 && !numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[10, 70]) && (p2bodydist y=[ -90, 40]) && p2statetype != L && (stateno!=[6080,6082])
trigger1=ctrl && random < (200 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2=(stateno=[610,619])&& movecontact 
trigger2=((var(55)=2||var(0) && var(8)>1)) && random < 700
trigger2 =!numhelper(1005) 
trigger3=(stateno=[640,649])&& movecontact 
trigger3=((var(55)=2||var(0) && var(8)>1)) && random < 300
trigger3 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[5, 90]) && (p2bodydist y=[ -60, 50]) && p2statetype != L && (stateno!=[6080,6082])
trigger1=ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=(stateno=[600,609])&& movecontact
trigger2=((var(55)=2||var(0) && var(8)>1)) && random < 250
trigger2 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=AILevel && numenemy&&roundstate=2 && statetype=A && (p2bodydist x=[5, 70]) && (p2bodydist y=[ -120, -55]) && p2statetype=A
trigger1=ctrl && random < (100 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) && (stateno!=[6080,6082])
trigger2=(stateno=[610,619])&& movecontact 
trigger2=((var(55)=2||var(0) && var(8)>1)) && random < 250
trigger2 =!numhelper(1005) 
trigger3=(stateno=[630,639])&& movecontact 
trigger3=((var(55)=2||var(0) && var(8)>1)) && random < 750
trigger3 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=AILevel && numenemy &&roundstate=2 && statetype=A && (p2bodydist x=[-50, 90]) && (p2bodydist y=[ -70, 120]) && p2statetype != L 
trigger1=ctrl && random < (500 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) && (stateno!=[6080,6082])
trigger2=(stateno=[610,619])&& movecontact 
trigger2=((var(55)=2||var(0) && var(8)>1)) && random < 250
trigger2 =!numhelper(1005) 
trigger3=(stateno=[640,649])&& movecontact 
trigger3=((var(55)=2||var(0) && var(8)>1)) && random < 750
trigger3 =!numhelper(1005) 
;---------------------------------------------------------------------------
[State -1, run]
type=changestate
value=100
triggerall=AIlevel && numenemy
trigger1=statetype=S && roundstate=2 && ctrl && random < (400 * (AIlevel ** 2 / 64.0))
trigger1=(stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 100 
trigger2=statetype=S && roundstate=2 && ctrl && random < (500 * (AIlevel ** 2 / 64.0))
trigger2=(stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 80 && enemynear,vel x<0 

[State -1, dash]
type=changestate
value=105
triggerall=AIlevel && numenemy
triggerall=statetype=S && roundstate=2 && ctrl
triggerall=(p2bodydist x=[0, 80]) && backedgebodydist > 100 && (stateno != [100, 105])
trigger1=enemynear, movetype=A && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=enemynear, stateno=5120 && enemynear, animtime= -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type=changestate
value=40
trigger1=AIlevel && numenemy && random < (350 * (AIlevel ** 2 / 64.0))
trigger1=roundstate=2 && statetype != A && ctrl
trigger1=enemynear, movetype=A && p2bodydist x < 120 && enemynear, hitdefattr=SC, AT

[state -1,AI Air Guard]
type=ChangeState
value=132
triggerall=AIlevel && numenemy&& roundstate=2&&InGuardDist
triggerall=ctrl&&statetype=A
trigger1=enemynear,numproj
trigger2=enemynear,HitDefAttr=SCA, NA,SA,HA
trigger2=random <=ifelse(backedgedist<=10,900,700)

[State -1, Guard]
type=changestate
value=120
trigger1=AIlevel && numenemy
trigger1=roundstate=2 && inguarddist
trigger1=ctrl && (stateno != [120, 155]) && !var(20)
trigger1=!(enemynear, hitdefattr=SCA, AT) && (enemynear, time < 120)
trigger1=statetype != A || p2statetype=A
trigger1=random < (ifelse((p2stateno=[200, 699]), 500, ifelse((p2stateno=[1000, 2999]), 800, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type=ChangeState
value=120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (250 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno=21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1=inguarddist

[State -1,  Jump]
type=ChangeState
value=123
triggerall=AILevel && numenemy && var(55)=2 && statetype != A && roundstate=2 && (p2bodydist y=[-320,5])
triggerall=stateno != 100 && pos y=0 && (enemynear,Statetype!=C)
trigger1=ctrl && enemy,vel y < -1 && (p2bodydist x=[ 10, 70]) && enemynear,movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2=ctrl && enemy,vel y < -1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2=enemynear,movetype=H && (enemynear,stateno=5040)
trigger2=p2bodydist x <= 50 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3=ctrl && enemynear,MoveType != H&&P2BodyDist Y < -90&& enemy,vel y <= 0 && random < (350 * (AIlevel ** 2 / 64.0))
trigger4=stateno=420 && anim=425 && MoveHit && random < (800 * (AIlevel ** 2 / 64.0))
trigger5=ctrl && (p2bodydist x<=140) && (enemynear,statetype!=A) && (enemynear,movetype=A) && (enemynear,stateno=[2000,4999]) && random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type=changestate
value=750
trigger1=AIlevel && numenemy
trigger1=(p2dist x=[-90, 90]) && stateno=150 || stateno=152
trigger1=roundstate=2 && power >= 1000 && !var(20) && !var(0) && life < 500 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type=changestate
value=730
trigger1=AIlevel && numenemy && !Numhelper(1005)  
trigger1=roundstate=2 && statetype != A && ctrl && !var(0)
trigger1=power < const(data.power) && power < powermax && !var(20)
trigger1=random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 220

[State -1, roll / dodge]
type=changestate
value=ifelse(random < 600, 700, 710)
trigger1=AIlevel && numenemy
trigger1=roundstate=2 && statetype != A && ctrl && random < (250 * (AIlevel ** 2 / 64.0))
trigger1=enemynear, movetype=A && p2bodydist x < 80

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (750 * (AIlevel ** 2 / 64.0))
;========================================================================
[State -1, Bloody Summoning]
type=ChangeState
value=3600
triggerall=AILevel && RoundState=2 && StateType != A && var(20)<=60 && power >= 3000 
triggerall=!Numhelper(1005) && !Numhelper(3205) && !Numhelper(3405) 
triggerall=!Numhelper(3105) && !Numhelper(3505) && !var(0) 
triggerall=numenemy && (enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220])
triggerall=(p2stateno != [150, 155]) && (p2bodydist x =[40,140]) && (p2bodydist y =[-70,5]) && (enemynear, statetype != A) && (enemynear, statetype != C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;----------------------------------------------------------------------
[State -1, The World-Time Stop]
type=changestate
value=3200
triggerall=AILevel && RoundState=2 && StateType != L && (stateno!=[3200,3205])
triggerall=var(20) <= 60 && power=powermax && !var(0) && !Numhelper(3205)
triggerall=numenemy && (p2bodydist x=[40,140]) && (p2bodydist y=[ -90, 5]) && random < (300 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[5100,5220]) && enemynear,Movetype!=A && enemynear,statetype!=L 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
;----------------------------------------------------------------------
[State -1, DIO's Judgment]
type=changestate
value=3500
triggerall=AILevel && RoundState=2 && StateType != A 
triggerall=numenemy && stateno!=3500 && var(20) <= 60 && power >= 3000
triggerall=!Numhelper(1005) && !Numhelper(3205) && !Numhelper(3405) 
triggerall=!Numhelper(3105) && !Numhelper(3505) && !var(0) 
triggerall=(p2stateno != [150, 155]) && (enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x =[20,70]) && (p2bodydist y =[-80,5]) && random < (350* (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Checkmate Crush]
type=changestate
value=3450
triggerall=AILevel && RoundState=2 && StateType != A 
triggerall=numenemy && (stateno!=3450) && var(20) <= 60 && power >= 2000 && !Numhelper(3205)
triggerall=!Numhelper(3405) && !Numhelper(1005) && !var(0)
triggerall=!var(39)
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x =[10,70]) && (p2bodydist y =[-70,5]) && (enemynear, statetype != A) && random < (150* (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Checkmate Crush]
type=changestate
value=3400
triggerall=AILevel && RoundState=2 && StateType != A 
triggerall=numenemy && (stateno!=3400) && (var(20) <= 60 && power >= 1000||var(0) && var(8)>1) 
triggerall=!Numhelper(3405) && !Numhelper(3205)
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x =[10,50]) && (p2bodydist y =[-60,5]) && (enemynear, statetype != A) && random < (150* (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Max Punishment]
type=changestate
value=3350
triggerall=AILevel && RoundState=2 && StateType != A 
triggerall=numenemy && (stateno!=[3350,3351]) && var(20) <= 60 && power >= 2000
triggerall=!Numtarget(3350) && !Numhelper(3205) && !var(0)
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x =[80,240]) && (p2bodydist y =[-70,5]) &&(enemynear, statetype != A) && random < (150* (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Punishment]
type=changestate
value=3300
triggerall=AILevel && RoundState=2 && StateType != A && !Numhelper(3205)
triggerall=numenemy && (stateno!=[3300,3301]) 
triggerall=var(20) <= 60 && power >= 1000||var(0)=1 && var(8)>1
triggerall=!Numtarget(3300) && !Numtarget(3301) && !Numtarget(3350)
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) 
triggerall=(p2bodydist x =[80,140]) && (p2bodydist y =[-70,5]) &&(enemynear, statetype != A) && random < (150* (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Max Road Roller]
type=ChangeState
value=3150
triggerall=AILevel && RoundState=2 && StateType != A 
triggerall=!numhelper(3105) && !numhelper(3106) && !numhelper(3107) && !numhelper(3108) && !numhelper(3109) 
triggerall=!numhelper(3111) && !numhelper(3112) && !numhelper(3113) && !numhelper(3115)
triggerall=(stateno!=3150) && var(20) <= 60 && power >= 2000 && !Numhelper(3205)
triggerall=numenemy && !numtarget(3150) && !var(0) && random < (200* (AIlevel ** 2 / 64.0))
triggerall=(p2stateno != [120, 155]) && (p2bodydist x =[30,250]) && (p2bodydist y =[-120,5]) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Road Roller]
type=ChangeState
value=3100
triggerall=AILevel && RoundState=2 && StateType != A && !Numhelper(3205)
triggerall=!numhelper(3105) && !numhelper(3106) && !numhelper(3107) && !numhelper(3108) && !numhelper(3109) 
triggerall=!numhelper(3111) && !numhelper(3112) && !numhelper(3113) && !numhelper(3115)
triggerall=var(20) <= 60 && power >= 1000||var(0)=1 && var(8)>1
triggerall=numenemy && (stateno!=[3100,3110]) && !numtarget(3100) && random < (150* (AIlevel ** 2 / 64.0))
triggerall=!(enemynear, hitfall) && p2statetype != A 
triggerall=(p2stateno != [120, 155]) && p2statetype != L &&(p2bodydist x =[30,250]) && (p2bodydist y =[-120,5]) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max AIr Checkmate]
type=ChangeState
value=3075
triggerall=AILevel && RoundState=2 && (stateno!= 3075 && prevstateno!= 3075) && !numhelper(3055) 
triggerall=!Numhelper(3006) && !Numhelper(3007) && !Numhelper(3008) && !var(0)
triggerall=StateType=A && Pos y<=-20 && var(20) <= 60 && power >= 2000 && !Numhelper(3205)
triggerall=numenemy && (p2bodydist x= [25,225]) && (p2bodydist y=[ -60, 275]) 
triggerall=random < (200* (AIlevel ** 2 / 64.0)) && (enemynear,stateno!=[5120,5220]) 
trigger1=ctrl
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Checkmate]
type=ChangeState
value=3050
triggerall=AILevel && RoundState=2 && StateType != A && (stateno!=3050) && !numhelper(3055) 
triggerall= var(20) <= 60 && power >= 2000 && !var(0) && !Numhelper(3205)
triggerall=numenemy && Ifelse(var(13),(p2bodydist x= [35,105]),p2bodydist x>180) && (p2bodydist y=[ -90, 5]) 
triggerall=random < (150* (AIlevel ** 2 / 64.0)) && (enemynear,stateno!=[5100,5220]) && (enemynear,statetype != L)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)||var(7) 
;----------------------------------------------------------------------
[State -1, Air Checkmate]
type=ChangeState
value=3025
triggerall=AILevel && RoundState=2 && (stateno!= [3025,3035]) && (prevstateno!= 3025) 
triggerall=!Numhelper(3006) && !Numhelper(3007) && !Numhelper(3008)||var(0) && var(8)>1
triggerall=numenemy && StateType=A && Pos y<=-20 && var(20) <= 60 && !numhelper(3055) && !Numhelper(3205)
triggerall=(var(20) <= 60 && power >= 1000||var(0)=1 && var(8)>1)
triggerall=(p2bodydist x= [25,225]) && (p2bodydist y=[ -60, 275]) 
triggerall=random < (150* (AIlevel ** 2 / 64.0)) && (enemynear,stateno!=[5120,5220]) 
trigger1=ctrl
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Checkmate]
type=ChangeState
value=3000
triggerall=AILevel && RoundState=2 && StateType != A && stateno!=3000
triggerall=var(20) <= 60 && power >= 1000||var(0)=1 && var(8)>1
triggerall=!numhelper(3055) && (numhelper(3005)=0||var(0) && var(8)>1)
triggerall=numenemy && Ifelse(var(13),(p2bodydist x= [35,105]),p2bodydist x>180) && (p2bodydist y=[ -90, 5]) 
triggerall=random < (150* (AIlevel ** 2 / 64.0)) && (enemynear,stateno!=[5100,5220]) && (enemynear,statetype != L)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[10,12])|| StateNo=106 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;========================================================================
[State -1, Air Blazing Fist]
type=ChangeState
value=Ifelse(power>=1500 && random<100,1450,1400)
triggerall=AILevel && RoundState=2 && StateType=A && Pos y<=-25 && !Numhelper(1005) 
triggerall=numenemy && (enemynear,statetype != C) && (enemynear,statetype != L) 
triggerall=(enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155])
triggerall=random < (250 * (AIlevel ** 2 / 64.0)) && (p2bodydist x =[15,140]) && (p2bodydist y=[-140,55]) && (stateno!=[6080,6082])
trigger1=ctrl
trigger2=var(5) && movehit && random<300
trigger3=(stateno=[600,650]) && movecontact
;------------------------------------------------------------------------
[State -1, Teleport]
type=ChangeState
value=Ifelse(power>=500 && random<200 && p2bodydist x>140,1250,1200)
triggerall=AILevel && RoundState=2 && !var(0) && !Numhelper(1005) && StateType != A 
triggerall=numenemy && enemynear,statetype!=L && (p2bodydist x=[95,325]) && (p2bodydist y=[-110,20]) 
triggerall=enemynear, movetype != A && p2bodydist x < 40 && (facing != enemynear, facing) && random < (500 * (AIlevel ** 2 / 64.0))
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, The Scale Of Terror]
type=ChangeState
value=1300
triggerall=AILevel && RoundState=2 && !var(0) && StateType != A 
triggerall=numenemy && (p2stateno != [120, 155]) && !var(0) && (enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,Movetype=A) && (p2bodydist x= [-20,75]) && (p2bodydist y =[-110,5]) 
triggerall=(enemynear, stateno=[200, 1999]) || (enemynear, hitdefattr=SCA,NA,SA) || (enemynear, hitdefattr=SCA, NP,SP) && inguarddist && (enemynear, vel x >= 0||enemynear, vel y >= 0)
triggerall=(prevstateno!=[1300,1350]) && (stateno!=[6080,6082])
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, EX The Scale Of Terror]
type=ChangeState
value=1350
triggerall=AILevel && RoundState=2 && !var(0) && StateType != A 
triggerall=var(20) <= 60 && power>=500
triggerall=numenemy && (p2stateno != [120, 155]) && !var(0) && (enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,Movetype=A) && (p2bodydist x= [-20,75]) && (p2bodydist y =[-110,5]) 
triggerall=(enemynear, stateno=[200, 1999]) || (enemynear, hitdefattr=SCA, AA) || (enemynear, hitdefattr=SCA, AP) && inguarddist && (enemynear, vel x >= 0||enemynear, vel y >= 0)
triggerall=(prevstateno!=[1300,1350]) && (stateno!=[6080,6082])
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Space Ripper Stingy Eyes]
type=ChangeState
value=Ifelse(power>=500 && random<50,1550,1500)
triggerall=AILevel && RoundState=2 && StateType != A && !Numhelper(1005)
triggerall=!Numhelper(1505) && !var(0)||var(20)
triggerall=numenemy && (p2bodydist x>= 120) && (p2bodydist y=[ -90, 5]) && (enemynear,stateno!=[120,155]) 
triggerall=(enemynear,stateno!=[5120,5220]) && enemynear,statetype!=L && random < (100* (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Blazing Strike]
type=ChangeState
value=Ifelse(power>=500 && random<100,1150,1100)
triggerall=AILevel && RoundState=2 && !Numhelper(1005) && numenemy && StateType != A 
triggerall=numenemy && StateType != A  && (enemynear,stateno!=[120,155]) && ((var(45)>=1&& enemynear,movetype!=A||var(45)=0))
triggerall=(p2bodydist x= [95,255]) && (p2bodydist y=[ -90, 5]) && enemynear,statetype!=L && random < (150* (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[5120,5220]) && (stateno!=[6080,6082]) 
trigger1=ctrl || (StateNo=[10,12]) || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Blazing Fist]
type=ChangeState
value=Ifelse(power>=1500 && random<200,1050,1000)
triggerall=AILevel && RoundState=2 && !Numhelper(1005) && numenemy && StateType != A 
triggerall=numenemy && StateType != A  && (enemynear,stateno!=[120,155]) && ((var(45)>=1 && enemynear,movetype!=A||var(45)=0))
triggerall=(p2bodydist x= [15,195]) && (p2bodydist y=[ -90, 5]) && enemynear,statetype!=L && random < (150* (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[5120,5220]) && (stateno!=[6080,6082]) 
trigger1=ctrl || (StateNo=[10,12])  || StateNo=40 || StateNo=52 || StateNo=106 || (StateNo=[100,101])
trigger2=var(5)