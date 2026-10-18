; ___________________________________
;| Nakoruru by Phantom.of.the.Server |
; ｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯｯ
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================<DEFAULT VALUES>====================

[Defaults]
command.time=15
command.buffer.time=1

;===================<AI>===================
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

;====================<SINGLE BUTTON>====================

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


;====================<HOLD DIR>====================

[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1


;====================<HOLD BUTTON>====================

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
name="holdstart"
command=/s
time=1


;====================<DIR>====================

[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1


;====================<RELEASE DIR>====================

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


;====================<RELEASE BUTTON>====================

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


;====================<SUPER MOTIONS>====================

[Command]
name="Jiketsu"
command=~B,F,DF,D,s
time=24

[Command]
name="641236p"
command=~F,B,DB,D,DF,F,x
time=40
[Command]
name="641236p"
command=~F,B,DB,D,DF,F,y
time=40
[Command]
name="641236p"
command=~F,B,DB,D,DF,F,z
time=40
[Command]
name="641236p"
command=~F,B,DB,D,DF,F,~x
time=40
[Command]
name="641236p"
command=~F,B,DB,D,DF,F,~y
time=40
[Command]
name="641236p"
command=~F,B,DB,D,DF,F,~z
time=40

[Command]
name="641236k"
command=~F,B,DB,D,DF,F,a
time=40
[Command]
name="641236k"
command=~F,B,DB,D,DF,F,b
time=40
[Command]
name="641236k"
command=~F,B,DB,D,DF,F,c
time=40
[Command]
name="641236k"
command=~F,B,DB,D,DF,F,~a
time=40
[Command]
name="641236k"
command=~F,B,DB,D,DF,F,~b
time=40
[Command]
name="641236k"
command=~F,B,DB,D,DF,F,~c
time=40

[Command]
name="236236p"
command=~D,DF,F,D,DF,x
time=32
[Command]
name="236236p"
command=~D,DF,F,D,DF,y
time=32
[Command]
name="236236p"
command=~D,DF,F,D,DF,z
time=32
[Command]
name="236236p"
command=~D,DF,F,D,DF,~x
time=32
[Command]
name="236236p"
command=~D,DF,F,D,DF,~y
time=32
[Command]
name="236236p"
command=~D,DF,F,D,DF,~z
time=32

[Command]
name="236236k"
command=~D,DF,F,D,DF,a
time=32
[Command]
name="236236k"
command=~D,DF,F,D,DF,b
time=32
[Command]
name="236236k"
command=~D,DF,F,D,DF,c
time=32
[Command]
name="236236k"
command=~D,DF,F,D,DF,~a
time=32
[Command]
name="236236k"
command=~D,DF,F,D,DF,~b
time=32
[Command]
name="236236k"
command=~D,DF,F,D,DF,~c
time=32

[Command]
name="214214p"
command=~D,DB,B,D,DB,x
time=32
[Command]
name="214214p"
command=~D,DB,B,D,DB,y
time=32
[Command]
name="214214p"
command=~D,DB,B,D,DB,z
time=32
[Command]
name="214214p"
command=~D,DB,B,D,DB,~x
time=32
[Command]
name="214214p"
command=~D,DB,B,D,DB,~y
time=32
[Command]
name="214214p"
command=~D,DB,B,D,DB,~z
time=32

[Command]
name="214214k"
command=~D,DB,B,D,DB,a
time=32
[Command]
name="214214k"
command=~D,DB,B,D,DB,b
time=32
[Command]
name="214214k"
command=~D,DB,B,D,DB,c
time=32
[Command]
name="214214k"
command=~D,DB,B,D,DB,~a
time=32
[Command]
name="214214k"
command=~D,DB,B,D,DB,~b
time=32
[Command]
name="214214k"
command=~D,DB,B,D,DB,~c
time=32

[Command]
name="222kk"
command=~D,D,D,a+b
time=24
[Command]
name="222kk"
command=~D,D,D,a+c
time=24
[Command]
name="222kk"
command=~D,D,D,b+c
time=24


;====================<SPECIAL MOTIONS>====================

[Command]
name="22s"
command=D,D,s
time=16
[Command]
name="22s"
command=D,D,~s
time=16

[Command]
name="63214pp"
command=~F,DF,D,DB,B,x+y
time=32
[Command]
name="63214pp"
command=~F,DF,D,DB,B,x+z
time=32
[Command]
name="63214pp"
command=~F,DF,D,DB,B,y+z
time=32

[Command]
name="63214p"
command=~F,DF,D,DB,B,x
time=32
[Command]
name="63214p"
command=~F,DF,D,DB,B,y
time=32
[Command]
name="63214p"
command=~F,DF,D,DB,B,z
time=32
[Command]
name="63214p"
command=~F,DF,D,DB,B,~x
time=32
[Command]
name="63214p"
command=~F,DF,D,DB,B,~y
time=32
[Command]
name="63214p"
command=~F,DF,D,DB,B,~z
time=32

[Command]
name="421pp"
command=~B,D,DB,x+y
time=16
[Command]
name="421pp"
command=~B,D,DB,x+z
time=16
[Command]
name="421pp"
command=~B,D,DB,y+z
time=16

[Command]
name="421p"
command=~B,D,DB,x
time=16
[Command]
name="421p"
command=~B,D,DB,y
time=16
[Command]
name="421p"
command=~B,D,DB,z
time=16
[Command]
name="421p"
command=~B,D,DB,~x
time=16
[Command]
name="421p"
command=~B,D,DB,~y
time=16
[Command]
name="421p"
command=~B,D,DB,~z
time=16

[Command]
name="236pp"
command= ~D,DF,F,x+y
time=16
[Command]
name="236pp"
command=~D,DF,F,x+z
time=16
[Command]
name="236pp"
command=~D,DF,F,y+z
time=16

[Command]
name="236p"
command=~D,DF,F,x
time=16
[Command]
name="236p"
command=~D,DF,F,y
time=16
[Command]
name="236p"
command=~D,DF,F,z
time=16
[Command]
name="236p"
command=~D,DF,F,~x
time=16
[Command]
name="236p"
command=~D,DF,F,~y
time=16
[Command]
name="236p"
command=~D,DF,F,~z
time=16

[Command]
name="214pp"
command=~D,DB,B,x+y
time=16
[Command]
name="214pp"
command=~D,DB,B,x+z
time=16
[Command]
name="214pp"
command=~D,DB,B,y+z
time=16

[Command]
name="214p"
command=~D,DB,B,x
time=16
[Command]
name="214p"
command=~D,DB,B,y
time=16
[Command]
name="214p"
command=~D,DB,B,z
time=16
[Command]
name="214p"
command=~D,DB,B,~x
time=16
[Command]
name="214p"
command=~D,DB,B,~y
time=16
[Command]
name="214p"
command=~D,DB,B,~z
time=16

[Command]
name="214k"
command=~D,DB,B,a
time=16
[Command]
name="214k"
command=~D,DB,B,b
time=16
[Command]
name="214k"
command=~D,DB,B,c
time=16
[Command]
name="214k"
command=~D,DB,B,~a
time=16
[Command]
name="214k"
command=~D,DB,B,~b
time=16
[Command]
name="214k"
command=~D,DB,B,~c
time=16

[Command]
name="412pp"
command=~B,DB,D,x+y
time=16
[Command]
name="412pp"
command=~B,DB,D,x+z
time=16
[Command]
name="412pp"
command=~B,DB,D,y+z
time=16

[Command]
name="412p"
command=~B,DB,D,x
time=16
[Command]
name="412p"
command=~B,DB,D,y
time=16
[Command]
name="412p"
command=~B,DB,D,z
time=16
[Command]
name="412p"
command=~B,DB,D,~x
time=16
[Command]
name="412p"
command=~B,DB,D,~y
time=16
[Command]
name="412p"
command=~B,DB,D,~z
time=16

[Command]
name="412s"
command=~B,DB,D,s
time=16
[Command]
name="412s"
command=~B,DB,D,~s
time=16

[Command]
name="412k"
command=~B,DB,D,a
time=16
[Command]
name="412k"
command=~B,DB,D,b
time=16
[Command]
name="412k"
command=~B,DB,D,c
time=16
[Command]
name="412k"
command=~B,DB,D,~a
time=16
[Command]
name="412k"
command=~B,DB,D,~b
time=16
[Command]
name="412k"
command=~B,DB,D,~c
time=16


;====================<OTHER>====================
[Command]
name="highjump"
command=$D,$U
time=15


;====================<DOUBLE TAP>====================
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10


;====================<2/3 BUTTON COMBINATION>====================
[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1
[Command]
name="recovery"
command=a+x
time=1

[Command]
name="2p"
command=x+y
time=1
[Command]
name="2p"
command=x+z
time=1
[Command]
name="2p"
command=y+z
time=1

[Command]
name="2k"
command=a+b
time=1
[Command]
name="2k"
command=a+c
time=1
[Command]
name="2k"
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


;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[Statedef -1]

[State -1, AI Helper]
type=changestate
trigger1= ishelper(9741)
value=9741

[State -1, AI]
type=VarSet
triggerall= var(59)<= 0
triggerall= RoundState=2;[1,2]
trigger1= command="CPU1"
trigger2= command="CPU2"
trigger3= command="CPU3"
trigger4= command="CPU4"
trigger5= command="CPU5"
trigger6= command="CPU6"
trigger7= command="CPU7"
trigger8= command="CPU8"
trigger9= command="CPU9"
trigger10= command="CPU10"
trigger11= command="CPU11"
trigger12= command="CPU12"
trigger13= command="CPU13"
trigger14= command="CPU14"
trigger15= command="CPU15"
trigger16= command="CPU16"
trigger17= command="CPU17"
trigger18= command="CPU18"
trigger19= command="CPU19"
trigger20= command="CPU20"
trigger21= command="CPU21"
trigger22= command="CPU22"
trigger23= command="CPU23"
trigger24= command="CPU24"
trigger25= command="CPU25"
trigger26= command="CPU26"
trigger27= command="CPU27"
trigger28= command="CPU28"
trigger29= command="CPU29"
trigger30= command="CPU30"
;trigger31= 1 ;（一番左の“;”を外せば常時ＡＩ起動）
var(59)= 1

[State -1, Tick Fix]
type=ctrlset
triggerall= !ctrl
trigger1= (stateno=52 || stateno=101 || stateno=106 || stateno=5120) && !animtime
trigger2= (stateno=[200,499]) && !animtime
trigger3= ((stateno=[760,762]) || (stateno=[700,715]) || (stateno=[900,905])) && !animtime
trigger4= stateno=810 && !animtime
trigger5= (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value=1

[State -1, Roll Forward]
type=changestate
value=710
triggerall= var(59)<=0
triggerall= command="a+x"
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || (stateno=[100,101])) && command="holdfwd"
trigger2= var(20) && var(6)

[State -1, Roll Backward]
type=changestate
value=715
triggerall= var(59)<=0
triggerall= command="a+x"
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || (stateno=[100,101])) && command="holdback"

[State -1, Dodge]
type=changestate
value=700
triggerall= var(59)<=0
triggerall= command="a+x"
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || (stateno=[100,101]))

[State -1, Zetsumei Ougi]
type=changestate
value=4100
triggerall= var(59)<=0
triggerall= command="641236k"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000 && !var(20)
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(8) && var(15)<=0

[State -1, Shirikoro Kamui Nomi]
type=changestate
value=3200
triggerall= var(59)<=0
triggerall= command="222kk"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000 && !var(20) && life<lifemax
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(8) && var(15)<=0

[State -1, Irusuka Yatoro Lise]
type=changestate
value=3300
triggerall= var(59)<=0
triggerall= command="641236p"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=2000 && !var(20)
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= stateno!=3300 && var(8) && var(15)<=1

[State -1, Elerush Kamui Rimse]
type=changestate
value=3001
triggerall= var(59)<=0
triggerall= command="214214k"
triggerall= roundstate=2
triggerall= power>=2000 && !var(20)
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact
trigger3= stateno=670 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger4= stateno=675 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger5= stateno=680 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))
trigger6= stateno=685 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))

[State -1, Elerush Kamui Rimse]
type=changestate
value=3000
triggerall= var(59)<=0
triggerall= command="214214k"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=2000 && !var(20)
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= stateno!=3000 && var(8) && var(15)<=1

[State -1, Ganso Lela Mutsube]
type=changestate
value=3400
triggerall= var(59)<=0
triggerall= command="236236p"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(8) && var(15)<=2

[State -1, Apefuchi Kamui Rimse]
type=changestate
value=3500
triggerall= var(59)<=0
triggerall= command="236236k"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(8) && var(15)<=2

[State -1, Shichikapu Kamui Irushika]
type=changestate
value=3100
triggerall= var(59)<=0
triggerall= command="214214p"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= stateno!=3100 && var(8) && var(15)<=2

[State -1, EX Kamui Mutsube]
type=changestate
value=1560
triggerall= var(59)<=0
triggerall= command="214pp"
triggerall= roundstate=2
triggerall= power>=500 && var(20)<=60
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact
trigger3= stateno=670 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger4= stateno=675 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger5= stateno=680 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))
trigger6= stateno=685 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))

[State -1, EX Kamui Rimse]
type=changestate
value=1220
triggerall= var(59)<=0
triggerall= command="421pp"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=500 && var(20)<=60
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, EX Amube Yatoro]
type=changestate
value=1350
triggerall= var(59)<=0
triggerall= command="63214pp"
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000) && power>=500 && var(20)<=60
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, EX Annu Mutsube]
type=changestate
value=1020
triggerall= var(59)<=0
triggerall= command="412pp"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=500 && var(20)<=60
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, EX Lela Mutsube]
type=changestate
value=1120
triggerall= var(59)<=0
triggerall= command="236pp"
triggerall= roundstate=2 && statetype!=A
triggerall= power>=500 && var(20)<=60
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, Kamui Mutsube]
type=changestate
value=1550
triggerall= var(59)<=0
triggerall= command="214p"
triggerall= roundstate=2
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact
trigger3= stateno=670 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger4= stateno=675 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger5= stateno=680 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))
trigger6= stateno=685 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))

[State -1, Shichikapu Ai]
type=changestate
value=1530
triggerall= var(59)<=0
triggerall= command="236p"
triggerall= roundstate=2
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact
trigger3= stateno=670 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger4= stateno=675 && (animelemtime(4)<0 || (animelemtime(6)<0 && movecontact=1))
trigger5= stateno=680 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))
trigger6= stateno=685 && (animelemtime(3)<0 || (animelemtime(4)<0 && movecontact=1))

[State -1, Kamui Rimse]
type=changestate
value=1200
triggerall= var(59)<=0
triggerall= command="421p"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, Amube Yatoro]
type=changestate
value=1300
triggerall= var(59)<=0
triggerall= command="63214p"
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, Annu Mutsube]
type=changestate
value=1000
triggerall= var(59)<=0
triggerall= command="412p"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, Lela Mutsube]
type=changestate
value=1100
triggerall= var(59)<=0
triggerall= command="236p"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall= var(59)<=0
triggerall= command="214k"
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= var(7)

;[State -1, Fake Annu Mutsube]
;type=changestate
;value=1090
;triggerall= var(59)<=0
;triggerall= command="412s"
;triggerall= roundstate=2 && statetype!=A
;trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])
;trigger2= var(7)

[State -1, Zero Counter]
type=changestate
value=750
trigger1= var(59)<=0
trigger1= stateno=150 || stateno=152
trigger1= command="412p" || command="412k"
trigger1= roundstate=2 && statetype!=A
trigger1= power>=1000 && !var(20)

[State -1, Original Combo]
type=changestate
value= ifelse(statetype=A, 905, 900)
trigger1= var(59)<=0
trigger1= command="c+z"
trigger1= roundstate=2
trigger1= power>=1000 && !var(20)
trigger1= ctrl || (stateno=[100,101])

[State -1, Power Charge]
type=changestate
value=730
trigger1= var(59)<=0
trigger1= command="holdb" && command="holdy"
trigger1= roundstate=2 && statetype!=A
trigger1= power < const(data.power) && power < powermax && !var(20)
trigger1= ctrl || (stateno=[100,101])

[State -1, Wall Jump]
type=changestate
value=60
triggerall= var(59)<=0
triggerall= command="holdup"
triggerall= roundstate=2 && statetype=A
triggerall= ctrl && vel x && pos y<=-32
trigger1= backedgebodydist<=0 && command="holdfwd"
trigger2= frontedgebodydist<=0 && command="holdback"

[State -1, Dash/Run]
type=changestate
value=102
trigger1= var(59)<=0
trigger1= command="FF"
trigger1= roundstate=2 && statetype=S
trigger1= ctrl

[State -1, Dash Backward]
type=changestate
value=105
trigger1= var(59)<=0
trigger1= command="BB"
trigger1= roundstate=2 && statetype=S
trigger1= ctrl

[State -1, Air Throw]
type=changestate
value=850
trigger1= var(59)<=0
trigger1= command="recovery" && (command="holdfwd" || command="holdback")
trigger1= roundstate=2 && statetype=A
trigger1= ctrl && (pos y<=-42 || vel y<0)

[State -1, Throw]
type=changestate
value=800
trigger1= var(59)<=0
trigger1= (command="recovery" || command="2k") && (command="holdfwd" || command="holdback")
trigger1= roundstate=2 && statetype=S
trigger1= ctrl

[State -1, MHP]
type=changestate
value=660
triggerall= var(59)<=0
triggerall= command="z"
triggerall= var(46)>0
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact

[State -1, MHK]
type=changestate
value=1590
triggerall= var(59)<=0
triggerall= command="c"
triggerall= var(46)>0
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact

[State -1, MMP]
type=changestate
value=675
triggerall= var(59)<=0
triggerall= command="y"
triggerall= var(46)>0
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact

[State -1, MMK]
type=changestate
value=685
triggerall= var(59)<=0
triggerall= command="b"
triggerall= var(46)>0
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact

[State -1, MLP]
type=changestate
value=670
triggerall= var(59)<=0
triggerall= command="x"
triggerall= var(46)>0
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact

[State -1, MLK]
type=changestate
value=680
triggerall= var(59)<=0
triggerall= command="a"
triggerall= var(46)>0
trigger1= stateno=1510
trigger2= var(20) && (stateno=[670,685]) && movecontact

[State -1, ScHP]
type=changestate
value=221
triggerall= var(59)<=0
triggerall= command!="holddown" && command="z"
triggerall= statetype!=A
triggerall= p2bodydist x = [-14,ceil(const(size.xscale)*30)]
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, SfHP]
type=changestate
value=220
triggerall= var(59)<=0
triggerall= command!="holddown" && command="z"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, ScHK]
type=changestate
value=251
triggerall= var(59)<=0
triggerall= command!="holddown" && command="c"
triggerall= statetype!=A
triggerall= p2bodydist x = [-14,ceil(const(size.xscale)*30)]
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, SfHK]
type=changestate
value=250
triggerall= var(59)<=0
triggerall= command!="holddown" && command="c"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, ScMP]
type=changestate
value=211
triggerall= var(59)<=0
triggerall= command!="holddown" && command="y"
triggerall= statetype!=A
triggerall= p2bodydist x = [-14,ceil(const(size.xscale)*30)]
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, SfMP]
type=changestate
value=210
triggerall= var(59)<=0
triggerall= command!="holddown" && command="y"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, ScMK]
type=changestate
value=241
triggerall= var(59)<=0
triggerall= command!="holddown" && command="b"
triggerall= statetype!=A
triggerall= p2bodydist x = [-14,ceil(const(size.xscale)*30)]
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, SfMK]
type=changestate
value=240
triggerall= var(59)<=0
triggerall= command!="holddown" && command="b"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, ScLP]
type=changestate
value=201
triggerall= var(59)<=0
triggerall= command!="holddown" && command="x"
triggerall= statetype!=A
triggerall= p2bodydist x = [-14,ceil(const(size.xscale)*30)]
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time>=5
trigger3= var(6)

[State -1, SfLP]
type=changestate
value=200
triggerall= var(59)<=0
triggerall= command!="holddown" && command="x"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time>=5
trigger3= var(6)

[State -1, ScLK]
type=changestate
value=231
triggerall= var(59)<=0
triggerall= command!="holddown" && command="a"
triggerall= statetype!=A
triggerall= p2bodydist x = [-14,ceil(const(size.xscale)*30)]
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time>=5
trigger3= var(6)

[State -1, SfLK]
type=changestate
value=230
triggerall= var(59)<=0
triggerall= command!="holddown" && command="a"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time>=5
trigger3= var(6)

[State -1, CHP2]
type=changestate
value=425
triggerall= var(59)<=0
triggerall= command="holddown" && command="holdfwd" && command="z"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, CHP]
type=changestate
value=420
triggerall= var(59)<=0
triggerall= command="holddown" && command="z"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, CHK]
type=changestate
value=450
triggerall= var(59)<=0
triggerall= command="holddown" && command="c"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, CMP]
type=changestate
value=410
triggerall= var(59)<=0
triggerall= command="holddown" && command="y"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, CMK]
type=changestate
value=440
triggerall= var(59)<=0
triggerall= command="holddown" && command="b"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(6)

[State -1, CLP]
type=changestate
value=400
triggerall= var(59)<=0
triggerall= command="holddown" && command="x"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time>=5
trigger3= var(6)

[State -1, CLK]
type=changestate
value=430
triggerall= var(59)<=0
triggerall= command="holddown" && command="a"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time>=5
trigger3= var(6)

[State -1, Kamui Fumu Kesupu]
type=changestate
value=655
triggerall= var(59)<=0
triggerall= command="holddown" && command="c"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, AHP]
type=changestate
value=620
triggerall= var(59)<=0
triggerall= command="z"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, AHK]
type=changestate
value=650
triggerall= var(59)<=0
triggerall= command="c"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, AMP]
type=changestate
value=610
triggerall= var(59)<=0
triggerall= command="y"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, AMK]
type=changestate
value=640
triggerall= var(59)<=0
triggerall= command="b"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, ALP]
type=changestate
value=600
triggerall= var(59)<=0
triggerall= command="x"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, ALK]
type=changestate
value=630
triggerall= var(59)<=0
triggerall= command="a"
triggerall= statetype=A
trigger1= ctrl
trigger2= var(6)

[State -1, Jiketsu]
type=changestate
value=4000
triggerall= var(59)<=0
triggerall= command="Jiketsu"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])

[State -1, SD Taunt]
type=changestate
value=197
triggerall= var(59)<=0
triggerall= command="22s"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(7)

[State -1, Taunt]
type=changestate
value=195 + (command="holdfwd")
triggerall= var(59)<=0
triggerall= command="start"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2= var(7)


;==============================================================================================
;===========================================<A.I>==============================================
;==============================================================================================

;製作用関数表示
[State -2, DEBUG]
trigger1 = 1
type = DisplayToClipboard
ignorehitpause = 1
text = "BX:%f DX:%f FD:%d V41:%d V20:%d"
params = p2bodydist X, p2dist X, FrontEdgeBodyDist, var(41), var(20)

;-------------------------------------------

;トリガーEnemyNearの判別切り替え用
[State -3, AI]
Type = VarSet
Trigger1 = NumEnemy = 1
Trigger2 = NumEnemy = 2
Trigger2 = Enemynear,Life > 0
var(51) = 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;トリガーEnemyNearの判別切り替え用
[State -3, AI]
Type = VarSet
Trigger1 = NumEnemy > 1
Trigger1 = Enemynear,Life = 0
var(51) = 1            ;simul戦用にEnemyNearの切り替えをさせる処理です
                        ;EnemyNear(Var(51))と記述することで自動判別します
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;挑発スイッチ
[State -1]
Type = VarSet
triggerall= var(52) = 0
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2
trigger1 = 1 ;←ここを0にすると勝利後挑発しなくなるはず。
var(52) = 1
IgnoreHitPause = 1

;挑発スイッチ・リセット
[State -1]
Type = VarSet
triggerall= var(52) = 1
triggerall= var(59) <= 0 && numenemy
triggerall= roundstate=2
trigger1 = ctrl
var(52) = 0
IgnoreHitPause = 1

;--------------------------------------------------

;立ち下段対策（自己流なので、これで良いのかは知らん）
[State -1]
type = varset
triggerall = var(49) = 0
trigger1 = !EnemyNear(Var(51)),HitDefAttr = SC, NT,ST,HT
trigger1 = statetype = S && EnemyNear(Var(51)),statetype = S
trigger1 = movetype = H && EnemyNear(Var(51)),movetype = A
trigger1 = (prevstateno = [120,159]) && stateno != [120,159]
var(49) = EnemyNear(Var(51)),stateno

[State -1];リセット
type = varset
triggerall = var(49) != 0
trigger1 = teammode = turns && roundstate != 2
var(49) = 0

;立ち下段対策・その２（自己流なので、これで良いのかは知らん）
[State -1]
type = varset
triggerall = var(44) = 0
triggerall = var(49) != 0 && EnemyNear(Var(51)),stateno != var(49)
triggerall = EnemyNear(Var(51)),prevstateno != var(49)
trigger1 = !EnemyNear(Var(51)),HitDefAttr = SC, NT,ST,HT
trigger1 = statetype = S && EnemyNear(Var(51)),statetype = S
trigger1 = movetype = H && EnemyNear(Var(51)),movetype = A
trigger1 = (prevstateno = [120,159]) && stateno != [120,159]
var(44) = EnemyNear(Var(51)),stateno

[State -1];リセット
type = varset
triggerall = var(44) != 0
trigger1 = teammode = turns && roundstate != 2
var(44) = 0

;敵投げ技判断
[State -1]
type = varset
triggerall = var(43) = 0
trigger1 = EnemyNear(Var(51)),HitDefAttr = SC, NT,ST,HT
trigger1 = EnemyNear(Var(51)),statetype != A
var(43) = EnemyNear(Var(51)),stateno
IgnoreHitPause = 1

[State -1];リセット
type = varset
triggerall = var(43) != 0
trigger1 = teammode = turns && roundstate != 2
var(43) = 0

;敵投げ技判断・その２
[State -1]
type = varset
triggerall = var(42) = 0
triggerall = var(43) > 0 && EnemyNear(Var(51)),stateno != var(43)
trigger1 = EnemyNear(Var(51)),HitDefAttr = SC, NT,ST,HT
trigger1 = EnemyNear(Var(51)),statetype != A
var(42) = EnemyNear(Var(51)),stateno
IgnoreHitPause = 1

[State -1];リセット
type = varset
triggerall = var(42) != 0
trigger1 = teammode = turns && roundstate != 2
var(42) = 0

;-------------------------------------

[State -1, Fall Recovery]
type=changestate
value= ifelse((pos y>=-20), 5200, 5210)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=-1 && random<50

;==============================================================================================
;オリコン

;オリコンスイッチ・リセット
[State -1]
Type = VarSet
trigger1 = var(57) != 0
trigger1 = roundstate != 2 || statetype = L || movetype = H || stateno = 850
trigger2 = var(57) = 2
trigger2 = EnemyNear(Var(51)),ctrl || EnemyNear(Var(51)),statetype = L || EnemyNear(Var(51)),movetype = A
var(57) = 0
IgnoreHitPause = 1

;オリコンミス判断
[State -1]
Type = VarSet
triggerall = var(41) = 0
trigger1 = var(20) = [1,150]
trigger1 = EnemyNear(Var(51)),ctrl || EnemyNear(Var(51)),statetype = L || EnemyNear(Var(51)),movetype = A
var(41) = 1
IgnoreHitPause = 1

;オリコンミス判断・リセット
[State -1]
Type = VarSet
triggerall = var(41) = 1
trigger1 = roundstate != 2 || movetype = H || statetype = L
trigger2 = var(20) = 0 || stateno = 900 || stateno = 905
var(41) = 0
IgnoreHitPause = 1

;ダッシュ
[State -1, Run]
type=changestate
value= 100
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
trigger1= (stateno = 1020 || stateno = 3100) && animtime = 0
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = A
trigger1= EnemyNear(Var(51)),stateno != [120,159]
trigger1= EnemyNear(Var(51)),BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 90
trigger1= p2bodydist X <= 90
trigger1= var(57) := 2

;オリコン発動
[State -1, Original Combo]
type=changestate
value= ifelse(statetype=A, 905, 900)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
triggerall= EnemyNear(Var(51)),statetype != L
trigger1= ctrl || stateno = 21 || stateno = 22 || (stateno=[100,101])
trigger1= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),movetype=A
trigger1= EnemyNear(Var(51)),vel x>=0 && (p2bodydist x=[-10,40])
trigger1= EnemyNear(Var(51)),time > 3 || life <= 600
trigger1= EnemyNear(Var(51)),animtime <= -10 && EnemyNear(Var(51)),stateno = [200,499]
trigger1= random <= 80 || ((life <= 500 || FrontEdgeBodyDist < 60) && random <= 150)
trigger1= var(57) := 1
trigger2= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger2= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = A
trigger2= EnemyNear(Var(51)),stateno != [120,159]
trigger2= EnemyNear(Var(51)),BackEdgeBodyDist <= 20 && FrontEdgeBodyDist <= 80
trigger2= p2bodydist X <= 30
trigger2= var(57) = 2
trigger2= var(57) := 1

;オリコン発動（空中）
[State -1, Original Combo]
type=changestate
value= ifelse(statetype=A, 905, 900)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype = A
triggerall= power>=1000 && !var(20)
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
triggerall= ctrl && Vel X > 0
triggerall= (p2bodydist X = [-20,30]) || (FrontEdgeBodyDist < 60 && p2bodydist X = [-20,55])
triggerall= EnemyNear(Var(51)),BackEdgeBodyDist <= 20 || p2dist X = [20,150]
triggerall= EnemyNear(Var(51)),facing = -facing && EnemyNear(Var(51)),Vel X >= 0
triggerall= EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime <= -10
triggerall= EnemyNear(Var(51)),Vel Y = 0 && EnemyNear(Var(51)),stateno = [200,599]
triggerall= random <= 200 || ((life <= 500 || FrontEdgeBodyDist < 60) && random <= 350)
trigger1 = (var(3) = 0 || var(3) = 3) && Vel Y > 0
trigger1 = Pos Y = [-110,-70]
trigger1 = var(57) := 10
trigger2 = (var(3) = [1,2])
trigger2 = (Vel Y < 0 && Pos Y = [-80,0]) || Pos Y = [-80,-50]
trigger2 = var(57) := 10

;空中弱キック
[State -1,ALK]
type=changestate
value=630
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= var(20) && (var(3) = [1,2])
trigger1= stateno = 650 && movecontact && var(57) = 11
trigger2= stateno = 630 && movecontact && var(57) = 11

;空中強キック
[State -1,AHK]
type=changestate
value=650
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= var(20)
trigger1= ctrl && var(57) = 10
trigger1= var(57) := 11
trigger2= stateno = 650 && movecontact && var(57) = 11

;しゃがみ強パンチ
[State -1,CHP]
type=changestate
value=ifelse(p2bodydist X < 30,420,ifelse(p2bodydist X < 40,450,1000))
triggerall= var(59)>=1 && numenemy && var(20)
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= var(57) = 11
trigger1= var(57) := 1

;-----------------------------------------------------------------------------
;オリコン

;ママハハにつかまる
[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = S
triggerall= Enemynear(var(51)),const(size.head.pos.y) < -75
triggerall= (stateno = 420 || stateno = 425) && movehit
trigger1= FrontEdgeBodyDist <= 60
;trigger2= p2bodydist X <= 1 && Enemynear(var(51)),life <= 200

;レラムツベ（締め・壁端以外）(Not Near Wall)
[State -1, RelaMutsube OC]
type=changestate
value=1100
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= p2statetype!=L
trigger1= stateno=420 && movehit && var(20) <= 10

;空中投げ
[State -1, Air Throw]
type=changestate
value=850
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= var(20) = [1,50]
trigger1= ctrl && p2statetype=A
trigger1= (p2bodydist x=[-25,15]) && (p2dist y=[-30,30])

;中ジャンプ（オリコン締め）(Original Combo)
[State -1, Dush Low Jump OC]
type=changestate
value=ifelse(EnemyNear(Var(51)),BackEdgeBodyDist <= 10,42,65)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20) = [1,50]
trigger1= stateno=200 && animtime = 0
trigger2= stateno=201 && animtime = 0

;しゃがみ強パンチ(Original Combo)
[State -1, CHP OC]
type=changestate
value=420
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && var(20)
trigger1= stateno=1553 && var(6)
trigger1= FrontEdgeBodyDist > 70

;立ち弱パンチ（オリコン締め）(Original Combo)
[State -1, CHP OC]
type=changestate
value=ifelse((p2bodydist x = [-14,ceil(const(size.xscale)*30)]),201,200)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && var(20)
trigger1= stateno=420 && movehit && var(20) = [1,50]
trigger2= (stateno=200 || stateno = 201) && movehit
trigger2= EnemyNear(Var(51)),BackEdgeBodyDist <= 10 && var(20) = [40,50]
trigger3= stateno=1553 && var(6) && var(20) = [1,60]

;落下待ち（回り込み後）
[State -1,wait OC]
Type = ChangeState
Triggerall = var(59) >= 1
triggerall = RoundState = 2
Triggerall = StateType != A
triggerall = var(20) = [2,180]
triggerall = EnemyNear(Var(51)),StateType != L
triggerall = EnemyNear(Var(51)),StateType = A
triggerall = EnemyNear(Var(51)),MoveType = H
trigger1 = StateNo = 710
trigger1 = AnimTime = 0
Trigger1 = Time > 0
trigger2 = StateNo = 1000
trigger2 = AnimTime = 0
Trigger2 = Time > 0
value = 0
Ctrl = 0

;アンヌムツベ
[State -1, AnnnuMutsube OC]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= p2statetype!=L
trigger1= ((stateno=420 && p2bodydist X >= 20) || stateno=425) && movehit && p2statetype != A

;回り込み
[State -1, Roll fwd OC]
type=changestate
value=710
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= p2statetype!=L
trigger1= stateno=420 && movehit && (p2bodydist Y < -50 || p2bodydist X > 40) && p2statetype = A

;しゃがみ強パンチ（オリコン始動技）(Original Combo Start)
[State -1, CHP OC]
type=changestate
value=420
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= p2statetype!=L
trigger1= stateno=450 && movehit
trigger2= stateno=420 && movehit && p2bodydist Y >= -50 && p2statetype = A
trigger3= stateno=0 && ctrl = 0 && ((EnemyNear(Var(51)),Pos Y >= -40 && var(20) >= 90) || (EnemyNear(Var(51)),Pos Y >= -50 && var(20) < 90) || var(20) = [1,5])
trigger4= stateno=900 && !animtime && (ctrl || stateno = 21) && (p2statetype = A || p2bodydist X <= 30)
trigger4= var(57) = 1
trigger5= stateno=420 && movehit && p2bodydist X <= 30 && p2statetype != A
trigger6= stateno=1000 && movehit && p2bodydist X <= 10

;しゃがみ強キック（オリコン始動技）(Original Combo Start)
[State -1, CHK OC]
type=changestate
value=450
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= p2statetype!=L
trigger1= stateno=900 && !animtime && (ctrl || stateno = 21) && p2bodydist X <= 40
trigger1= var(57) = 1

;地転斬（オリコン始動技）(Original Combo Start)
[State -1, CHP2(Chitenzan) OC]
type=changestate
value=425
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(20)
triggerall= p2statetype!=L
trigger1= stateno=900 && !animtime && (ctrl || stateno = 21) && p2bodydist X > 40
trigger1= var(57) = 1
trigger2= (ctrl || stateno = 21) && stateno = 0 && p2statetype != A && p2statetype != L && var(20) = [1,120]
trigger2= var(57) = 1

;--------------------------------------------------------------------------------
;ママハハ掴まり時

;EXカムイムツベ
[State -1, EX Kamui Mutsube]
type=changestate
value=1560
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= var(20) = [1,10]
triggerall= EnemyNear(Var(51)),statetype != L && power >= 500
trigger1= stateno = 685 && movehit
trigger2= stateno = 675 && movehit

;カムイムツベ
[State -1, Kamui Mutsube]
type=changestate
value=1550
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= var(20) = [45,55] ;60
triggerall= EnemyNear(Var(51)),statetype != L
triggerall= EnemyNear(Var(51)),life < 50 || power < 500
trigger1= stateno = 685 && movehit
trigger2= stateno = 675 && movehit

;カムイムツベ（壁端以外）
[State -1, Kamui Mutsube]
type=changestate
value=1550
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= var(20) && p2bodydist X > 20
triggerall= EnemyNear(Var(51)),statetype != L && FrontEdgeBodyDist > 70
trigger1= stateno = 685 && movehit
trigger2= stateno = 675 && movehit

;中キック
[State -1, MMK]
type=changestate
value=685
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= var(20) && FrontEdgeBodyDist > 70
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= stateno=1510 
trigger2= stateno = 685 && movehit
trigger3= stateno = 675 && movehit

;中パンチ
[State -1, MMP]
type=changestate
value=675
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= var(20)
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= stateno = 685 && movehit && var(20) = [90,180]
trigger2= stateno = 675 && movehit && var(20) = [90,180]
trigger3= stateno=1510 

;中キック
[State -1, MMK]
type=changestate
value=685
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= var(20)
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= stateno=1510 
trigger2= stateno = 685 && movehit
trigger3= stateno = 675 && movehit

;==============================================================================================

;ママハハにつかまる（投げ対策）
[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= ctrl || stateno = 21 || stateno = 22|| stateno=40 || stateno=52 || (stateno=[100,101]) || var(7)
triggerall= p2bodydist X <= 160
triggerall= EnemyNear(Var(51)),time <= 20 && random <= 500
trigger1 = EnemyNear(Var(51)),hitdefattr= SC, NT,ST,HT
trigger2 = EnemyNear(Var(51)),stateno = var(43) && var(43) > 0
trigger3 = EnemyNear(Var(51)),stateno = var(42) && var(42) > 0

;投げ対策ジャンプ
[State -1, Jump]
type=changestate
value=42
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ctrl || stateno = 21 || stateno = 22 || (stateno = [100,101])
triggerall= p2bodydist X <= 160 && random <= 700
trigger1 = EnemyNear(Var(51)),hitdefattr= SC, NT,ST,HT
trigger2 = EnemyNear(Var(51)),hitdefattr= A, ST,HT && EnemyNear(Var(51)),Vel Y >= 0

;しゃがみ中パンチ（ブロ後）
[State -1,CMP]
type = ChangeState
value = ifelse(p2bodydist X <= 65,410,450)
triggerall = !var(20) || var(41) = 1
triggerall = var(59) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = P2BodyDist X = [-5,78]
trigger1 = (ctrl || stateno = 21 || (stateno = [100,101])) && ((stateno=[760,762]) || (prevstateno=[760,762]) || (prevstateno = 710 && EnemyNear(Var(51)),animtime >= -5))
trigger1 = EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),statetype != L

;レラヌムツベ（ブロ後）
[State -1,ReraMutsube]
type = ChangeState
value = 1100
triggerall = !var(20) || var(41) = 1
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = P2BodyDist X = [-5,100]
trigger1 = (ctrl || stateno = 21 || (stateno = [100,101])) && ((stateno=[760,762]) || (prevstateno=[760,762]))
trigger1 = EnemyNear(Var(51)),statetype = A

;ジャンプ強パンチ（ブロ後）
[State -1,AHP]
type = ChangeState
value = ifelse(p2bodydist Y > 0 || EnemyNear(Var(51)),statetype != A,650,620)
triggerall = !var(20) || var(41) = 1
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = P2BodyDist X = [-5,50]
trigger1 = (ctrl || stateno = 21 || (stateno = [100,101])) && ((stateno=[760,762]) || (prevstateno=[760,762]))
trigger1 = EnemyNear(Var(51)),statetype != L

;--------------------------------------------------------------------
;カウンター

;絶命奥義
[State -1, Zetsumei Ougi]
type=changestate
value=4100
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000
triggerall= !var(27) && var(14)<1
triggerall= !(EnemyNear(Var(51)),ctrl) && (EnemyNear(Var(51)),stateno != [40,49]) && (EnemyNear(Var(51)),movetype!=H)
triggerall= (EnemyNear(Var(51)),movetype!=A) || (EnemyNear(Var(51)),stateno=[200,499])
triggerall= (p2dist x=[0,64]) && !(EnemyNear(Var(51)), pos y)
triggerall= EnemyNear(Var(51)),statetype = S || EnemyNear(Var(51)),statetype = C
trigger1= (ctrl || stateno = 21 || stateno=40 || stateno=52 || (stateno=[100,101]))
trigger1= random<250
trigger2= stateno=710 && animtime = 0
trigger2= random<750

;元祖レラムツベ
[State -1, Ganso Lela Mutsube]
type=changestate
value=3400
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000
triggerall= EnemyNear(Var(51)),statetype = S && EnemyNear(Var(51)),movetype = A
triggerall= EnemyNear(Var(51)),animtime <= -15
triggerall= (p2bodydist X = [-5,50]) || (EnemyNear(Var(51)),statetype = S && p2bodydist X = [-5,80])
trigger1= ctrl || stateno = 21 || stateno=40 || stateno=52 || stateno=[100,101]
trigger1= random <= 50 || (life <= 300 && random <= 80)

;EXレラ　ムツベ
[State -1, EX Lela Mutsube]
type=changestate
value=1120
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power >= 500
triggerall= EnemyNear(Var(51)),statetype != A
triggerall= EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime <= -8
trigger1= ctrl || stateno = 21 || stateno=40 || stateno=52 || stateno=[100,101]
trigger1= p2bodydist X <= 35 || (p2bodydist X <= 70 && EnemyNear(Var(51)),stateno = [200,299])
trigger1= random <= 30 || (life <= 400 && random <= 80)

;アペフシカムイリムセ
[State -1, Apefuchi Kamui Rimse]
type=changestate
value=3500
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000
triggerall= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),movetype = A
triggerall= (EnemyNear(Var(51)),time = [3,4]) && EnemyNear(Var(51)),animtime = [-25,-15]
triggerall= p2bodydist X = [-5,100]
trigger1= ctrl || stateno = 21 || stateno=40 || stateno=52 || stateno=[100,101]
trigger1= random <= 50 || (life <= 300 && random <= 100)

;アンヌムツベ（飛び道具回避）
[State -1, Annu Mutsube]
type=changestate
value=1000
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= EnemyNear(Var(51)),statetype != A || EnemyNear(Var(51)),Pos Y > -10
triggerall= EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime = [-45,-35]
trigger1= ctrl || stateno = 21 || stateno=40 || stateno=52 || stateno=[100,101]
trigger1= p2bodydist X = [70,200]
trigger1= random <= 50 || (life <= 500 && random <= 100)
trigger1 = var(54) = 0 || var(54) = 2
trigger1= var(54) := 1

;アンヌムツベ成否判定
[State -1]
Type = VarSet
triggerall= var(54) = 1
trigger1 = stateno = 1000 && movehit
var(54) = 2
IgnoreHitPause = 1

[State -1]
Type = VarSet
triggerall= var(54) = 1
trigger1 = movetype = H
var(54) = 3
IgnoreHitPause = 1

;アンヌムツベ成否判定・リセット
[State -1]
Type = VarSet
triggerall= var(54) != 0
trigger1 = roundstate != 2 && teammode = turns
var(54) = 0
IgnoreHitPause = 1

;--------------------------------------------------------------------
;ママハハヒット追撃

;ママハハ飛ばし・残りタイム
[State -1, Shichikapu Ai Time]
Type = VarSet
triggerall= var(56) = 0
triggerall= roundstate=2
trigger1 = stateno = 1530 && time = 1
var(56) = 30
IgnoreHitPause = 1

;ママハハ飛ばし　リセット
[State -1, Shichikapu Ai Time]
type=varadd
trigger1= var(56) > 0
var(56)=-1
;ignorehitpause=1

;オリコン発動
[State -1, Original Combo]
type=changestate
value= ifelse(statetype=A, 905, 900)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = A
trigger1= EnemyNear(Var(51)),Vel Y < 0 || EnemyNear(Var(51)),Pos Y <= -50
trigger1= EnemyNear(Var(51)),stateno != [120,159]
trigger1= EnemyNear(Var(51)),BackEdgeBodyDist <= 20 && FrontEdgeBodyDist <= 80
trigger1= p2bodydist X <= 30
trigger1= var(56)=[1,5]
trigger1= var(57) := 1

;元祖レラムツベ
[State -1, Ganso Lela Mutsube]
type=null ;changestate
value=3400
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]
trigger1= EnemyNear(Var(51)),statetype = A && p2bodydist X <= 60
trigger1= EnemyNear(Var(51)),Vel Y < 0 || EnemyNear(Var(51)),Pos Y <= -50
trigger1= var(56)=[1,5]

;ＥＸレラムツベ
[State -1, EX Lela Mutsube]
type=changestate
value= 1120
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=500 && !var(20)
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]
trigger1= EnemyNear(Var(51)),statetype = A && p2bodydist X <= 120
trigger1= EnemyNear(Var(51)),Vel Y < 0 || EnemyNear(Var(51)),Pos Y <= -50
trigger1= var(56)=[1,5]

;-----------------------------------------------------------------
;起き攻め

;中キック
[State -1, MMK]
type=changestate
value=685
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime >= -1
trigger1= stateno=1510 && p2bodydist X = [-10,40]
trigger1= Pos Y >= -30

;しゃがみ弱キック
[State -1, CLK]
type=changestate
value= 430
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype != A
triggerall = !var(20) || var(41) = 1
triggerall= EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime >= -2
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= p2bodydist X <= 30
trigger1= random <= 600 || BackEdgeBodyDist <= 50

;しゃがみ中キック
[State -1, CMK]
type=changestate
value= 440
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype != A
triggerall = !var(20) || var(41) = 1
triggerall= EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime = [-6,-5]
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= p2bodydist X <= 45 && random <= 300

;バクステ
[State -1, Back Step]
type=changestate
value= 105
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype != A
triggerall= !var(20) && BackEdgeBodyDist > 50
triggerall= EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime >= -2
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= p2bodydist X <= 80 && var(55) = 0 && random <= 300

;起き攻め判定リセット
[State -1]
Type = VarSet
triggerall= var(55) != 0
trigger1 = stateno = 105 || stateno = 430 || (stateno = [650,655]) || stateno = 1530
trigger2 = movetype = H || roundstate != 2
trigger3 = var(55) = 3 && (inguarddist || EnemyNear(Var(51)),movetype = A)
var(55) = 0
IgnoreHitPause = 1

;ママハハにつかまる
[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1 = stateno = 450 ||  stateno = 830 || stateno = 840 || stateno = 1000 || stateno = 1100 || stateno = 1120 || stateno = 1210 || stateno = 1553
trigger1 = animtime = 0 ;&& p2bodydist X <= 200
trigger1 = EnemyNear(Var(51)),statetype = L || (EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159])
trigger1 = var(55) := 1
trigger2 = (stateno = 250 && prevstateno = 700) || stateno = 3401 || stateno = 3500 || stateno = 3020
trigger2 = animtime = 0 ;&& p2bodydist X <= 200
trigger2 = EnemyNear(Var(51)),statetype = L || (EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159])
trigger2 = var(55) := 1
trigger3 = ctrl || stateno = 21 || stateno = 22 || stateno=52 || (stateno=[100,101]) 
trigger3 = EnemyNear(Var(51)),statetype = L
trigger3 = (p2bodydist x = [-5,180])
trigger3 = random <= 200 || EnemyNear(Var(51)),stateno != 5120 || EnemyNear(Var(51)),animtime <= -20
trigger3 = var(55) := 1

;ヤトロポック
[State -1, MHP(Yatolopock)]
type=changestate
value=660
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
trigger1= stateno=1510 && p2dist x = [-20,10]
trigger1= EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime = [-10,-9]

;シチカプアイ
[State -1, Shichikapu Ai]
type=changestate
value=1530
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall = EnemyNear(Var(51)),NumProj < 1 && stateno = 1510
trigger1= (var(55) = 1 && (time >= 60 || EnemyNear(Var(51)),ctrl)) || (EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime >= -5)
trigger2= p2bodydist X > 80
trigger2= (var(55) = 1 && (time >= 40 || EnemyNear(Var(51)),ctrl)) || (EnemyNear(Var(51)),stateno = 5120 && EnemyNear(Var(51)),animtime >= -20)

;ダッシュとジャンプの２択（着地後の行動）
[State -1, Dush Low Jump]
type=changestate
value= 65
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype != A && !inguarddist
triggerall = !var(20) || var(41) = 1
trigger1= stateno = 1591 && animtime = 0 && p2bodydist X = [-5,120]
trigger1= EnemyNear(Var(51)),statetype != A
trigger1= random <= 100
trigger1= var(55) := 2

;↑ジャンプからの強キック
[State -1, AHK]
type=changestate
value= ifelse((p2dist X = [-50,15]),655,650)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype = A
triggerall = !var(20) || var(41) = 1
trigger1= ctrl && Vel Y > 3 ;&& var(55) = 2

;ダッシュ
[State -1, Dush]
type=changestate
value= 100
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype != A && !inguarddist
triggerall = !var(20) || var(41) = 1
trigger1= stateno = 1591 && animtime = 0 && p2bodydist X >= 60
trigger1= var(55) := 3

[State -1, CLK]
type=changestate
value= 430
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype != A && !inguarddist
triggerall = !var(20) || var(41) = 1
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype != H || EnemyNear(Var(51)),stateno = [120,159]
trigger1= p2bodydist X <= 10 && var(55) = 3

;------------------------------------------------------------------------
;地上追撃

;しゃがみ強パンチ（ママハハコンボ用）
[State -1, CHP]
type=changestate
value=420
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x= [-10,35]
triggerall= numhelper(10000) && power >= 500
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = S
triggerall= Enemynear(var(51)),const(size.head.pos.y) < -75
triggerall= EnemyNear(Var(51)),stateno != [120,159]
triggerall= EnemyNear(Var(51)),GetHitVar(hittime) >= 2
triggerall= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= FrontEdgeBodyDist <= 55
trigger2= EnemyNear(Var(51)),facing = -facing  && EnemyNear(Var(51)),BackEdgeBodyDist <= 20
trigger3= EnemyNear(Var(51)),facing = facing && EnemyNear(Var(51)),FrontEdgeBodyDist <= 20

;--------------
;目押しコンボ用

;しゃがみ強パンチ
[State -1, CHP]
type=changestate
value=420
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x=[-10,35]
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= (stateno=211 || stateno = 400 || stateno=410 || stateno = 430) && animtime = 0
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]

;しゃがみ中パンチ
[State -1, CMP]
type=changestate
value= 410
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x=[-10,45])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= (stateno=211 || stateno = 400 || stateno=410 || stateno=430 || stateno = 440 || stateno=200) && animtime = 0
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]

;遠距離立ち中パンチ
[State -1, SfMP]
type=changestate
value= ifelse((p2bodydist x = [-14,ceil(const(size.xscale)*30)]),211,210)
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x=[-10,60])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= (stateno=211 || stateno = 400 || stateno=410 || stateno=430 || stateno = 440 || stateno=200) && animtime = 0
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]

;しゃがみ強キック
[State -1, CHK]
type=changestate
value= 450
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x=[-10,65])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= (stateno=211 || stateno = 400 || stateno=410 || stateno=430 || stateno = 440 || stateno=200) && animtime = 0
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]

;しゃがみ弱キック
[State -1, CLK]
type=changestate
value=430
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x= [-5,30]
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= (stateno=200 || stateno = 400 || stateno=430) && animtime = 0
trigger1= EnemyNear(Var(51)),movetype = H
trigger1= random <= 200 || EnemyNear(Var(51)),stateno != [120,159]

;---------------
;敵ノックバック追い討ち用

;しゃがみ弱パンチ
[State -1, CLP]
type=changestate
value=ifelse(p2bodydist X <= 30,400,410)
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x= [-5,50]
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]

;立ち中パンチ
[State -1, SfLP]
type=changestate
value=220
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x= [50,60]
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]
trigger1= EnemyNear(Var(51)),animtime < -8

;しゃがみ弱キック
[State -1, CLK]
type=changestate
value=430
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x= [-5,30]
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H
trigger1= random <= 200 || EnemyNear(Var(51)),stateno != [120,159]

;ＥＸレラムツベ（タッグ用）
[State -1, EX Lela Mutsube]
type=changestate
value=1120
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=500
trigger1= ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1= EnemyNear(Var(51)),movetype = H && Enemynear(Var(51)),statetype = A
trigger1= (EnemyNear(Var(51)),stateno!=[120,155]) && EnemyNear(Var(51)),vel Y < 0
trigger1= p2bodydist X <= 70 || (p2bodydist X <= 150 && EnemyNear(Var(51)),BackEdgeBodyDist<= 15)
trigger1= EnemyNear(Var(51)),Pos Y >= -100 && teammode = simul

;-----------------------------------------------------------------------
;地上コンボ

;ママハハにつかまる
[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000) && power >= 500
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = S
triggerall= Enemynear(var(51)),const(size.head.pos.y) < -75
triggerall= (stateno = 420 || stateno = 425) && movehit
trigger1= FrontEdgeBodyDist <= 55
trigger1= var(53) := 1
trigger2= EnemyNear(Var(51)),facing = -facing  && EnemyNear(Var(51)),BackEdgeBodyDist <= 20
trigger2= var(53) := 1
trigger3= EnemyNear(Var(51)),facing = facing && EnemyNear(Var(51)),FrontEdgeBodyDist <= 20
trigger3= var(53) := 1

[State -1]
type=varset
triggerall= var(53) != 0
trigger1= roundstate != 2 || movetype = H || statetype = L
trigger2= stateno = 685 || stateno = 1550 || stateno = 1560
var(53) = 0

;中キック
[State -1, MMK]
type=changestate
value=685
triggerall= var(59)>=1 && numenemy
triggerall = !var(20) || var(41) = 1
triggerall= var(46)>0 && statetype = A && roundstate = 2
triggerall= EnemyNear(Var(51)),statetype =S
trigger1= stateno=1510
trigger1= p2bodydist X <= 35 || FrontEdgeBodyDist <= 55
trigger1= var(53)

[State -1, EX Kamui Mutsube]
type=changestate
value=1560
triggerall= var(59)>=1 && numenemy
triggerall = !var(20) || var(41) = 1
triggerall= statetype = A && roundstate = 2
triggerall= power>=500 && var(20)<=60
trigger1= stateno=1510
trigger1= var(53)

[State -1, Kamui Mutsube]
type=changestate
value=1550
triggerall= var(59)>=1 && numenemy
triggerall = !var(20) || var(41) = 1
triggerall= statetype = A && roundstate = 2
trigger1= stateno=1510
trigger1= var(53)

;エレルシカムイリムセ
[State -1, Elerush Kamui Rimse]
type=changestate
value=3000
triggerall= !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=2000
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]
triggerall= EnemyNear(Var(51)),statetype != A && p2bodydist X = [0,150]
trigger1= stateno=1200 && movehit=1 && var(8)

;シチカプカムイイルシカ
[State -1, Shichikapu Kamui Irushika]
type=changestate
value=3100
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),stateno != [120,159]
triggerall= EnemyNear(Var(51)),statetype != L
trigger1= stateno=450 && movehit && p2bodydist X <= 40
trigger1= EnemyNear(Var(51)),life <= 100
trigger2= stateno=1000 && movehit && EnemyNear(Var(51)),BackEdgeBodyDist <= 15 && p2bodydist X <= 40
trigger2= (EnemyNear(Var(51)),Vel Y = [-10,1]) && power >= 2000

;元祖レラムツベ
[State -1, Ganso Lela Mutsube]
type=changestate
value=3400
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power>=1000
triggerall= p2bodydist x=[0,120]
triggerall= EnemyNear(Var(51)),movetype = H
trigger1= stateno=1000 && movehit
trigger1= EnemyNear(Var(51)),life <= 280 || power >= 2000
trigger2= stateno=3500 && movehit
trigger2= time>=108 && EnemyNear(Var(51)),life = [50,100]
trigger3= stateno=3020 && movehit
trigger3= time>=54 && EnemyNear(Var(51)),life <= 100

;ママハハにつかまる
[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
trigger1= var(7) && moveguarded
trigger1= (EnemyNear(Var(51)),movetype = A && time <= 10 && random <= 700) || (time <= 6 && random <= 150)
trigger1= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger2= var(7) && movehit
trigger2= (EnemyNear(Var(51)),movetype = A && time <= 10 && random <= 700)
trigger2= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A

;しゃがみ弱キック
[State -1, CLK]
type=changestate
value=430
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= p2bodydist x= [-5,10]
triggerall= EnemyNear(Var(51)),statetype != A
triggerall= (stateno=200 || stateno=201 || stateno=400 || stateno=430) && time >= 5
trigger1= movehit
trigger1= FrontEdgeBodyDist > 55 || power < 500
trigger2= moveguarded && time <= 6 && random <= 200

;EXレラ　ムツベ（空中追撃）
[State -1, EX Lela Mutsube]
type=changestate
value=1120
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= EnemyNear(Var(51)),statetype = A && power >= 500
trigger1= stateno = 210 || stateno = 211 || stateno = 410
trigger1= movehit
trigger1= EnemyNear(Var(51)),life <= 100 || power >= 1500
trigger2= stateno = 1020 && animtime = 0
trigger2= EnemyNear(Var(51)),movetype = H && EnemyNear(Var(51)),statetype = A
trigger3= stateno = 420 && movehit && Pos Y > - 30
trigger3= time <= 6 && p2dist X = [50,300]
trigger3= EnemyNear(Var(51)),life <= 100 || power >= 1500

;EXアンヌムツベ
[State -1, EX Annu Mutsube]
type=changestate
value=1020
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power >= 1000
triggerall= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),movetype = H
triggerall= (EnemyNear(Var(51)),BackEdgeBodyDist <= 25 && power >= 1500) ;|| EnemyNear(Var(51)),life <= 50
trigger1= stateno = 210 || stateno = 420
trigger1= movehit
trigger2= stateno = 211 || stateno = 410
trigger2= movehit && time <= 6 && p2bodydist X > 10

;カムイリムセ
[State -1, Kamui Rimse]
type=changestate
value=1200
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy && power >= 2000
triggerall= roundstate=2 && statetype!=A
triggerall= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),movetype = H
trigger1= var(7) && stateno != 420 && movehit && p2bodydist X <= 10
trigger1= (EnemyNear(Var(51)),life = [250,350]) || power >= 2500 || (EnemyNear(Var(51)),life <= 350 && teammode = single && roundno >= 3)

;アンヌムツベ
[State -1, Annu Mutsube]
type=changestate
value=1000
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= EnemyNear(Var(51)),statetype != A && power >= 1000
triggerall= EnemyNear(Var(51)),life <= 280 || power >= 2000
trigger1= stateno = 210 || stateno = 420
trigger1= movehit
trigger2= stateno = 211 || stateno = 410
trigger2= movehit && time <= 6 && p2bodydist X > 10

;レラ　ムツベ
[State -1, Lela Mutsube]
type=changestate
value=1100
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),BackEdgeBodyDist > 50
triggerall= p2bodydist X <= 25 || (EnemyNear(Var(51)),statetype = S && p2bodydist X <= 50)
trigger1= stateno = 210 || stateno = 420
trigger1= movehit
trigger2= stateno = 211 || stateno = 410
trigger2= movehit && time <= 6 && p2bodydist X > 10

;アンヌムツベ
[State -1, Annu Mutsube]
type=changestate
value=1000
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= EnemyNear(Var(51)),statetype != A
trigger1= stateno = 210 || stateno = 420
trigger1= movehit
trigger2= stateno = 211 || stateno = 410
trigger2= movehit && time <= 6 && p2bodydist X > 10

;==============================================================================================
;対空

;しゃがみ強パンチ
[State -1, CHP]
type=changestate
value=420
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(27) && var(14)<1
triggerall= ifelse((EnemyNear(Var(51)),vel X> 0),(p2bodydist x=[-5,50]),(p2bodydist x=[-10,40])) && (p2bodydist y=[-90,-40])
triggerall= EnemyNear(Var(51)),vel Y> 0
triggerall= EnemyNear(Var(51)),statetype=A
trigger1= (ctrl || stateno = 21 || (stateno=[100,101])) && random<300

;==============================================================================================

;避け
[State -1, Dodge]
type=changestate
value=700
triggerall = !var(20) || var(41) = 1
triggerall = var(59)>=1 && numenemy
triggerall = roundstate=2 && statetype!=A
triggerall = EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),movetype != H
triggerall = EnemyNear(Var(51)),stateno != [120,159]
triggerall = !EnemyNear(Var(51)),hitdefattr = SCA,NT,ST,HT
triggerall= ctrl || stateno = 21 || stateno = 22 || (stateno=[100,101])
trigger1 = inguarddist
trigger1 = !enemy,numproj
trigger1 = EnemyNear(Var(51)),animtime <= -26
trigger1 = p2bodydist x = [-10,90]
trigger1 = random <= 50

;回り込み
[State -1, Roll Forward]
type=changestate
value=710
triggerall = !var(20) || var(41) = 1
triggerall = var(59)>=1 && numenemy
triggerall = roundstate=2 && statetype!=A
triggerall = !EnemyNear(Var(51)),HitDefAttr = SCA,NT,ST,HT
triggerall = EnemyNear(Var(51)),BackEdgeBodyDist > 10 && EnemyNear(Var(51)),facing = -facing
triggerall= ctrl || stateno = 21 || stateno = 22 || (stateno=[100,101])
trigger1 = EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),AnimTime <= -32
trigger1 = (inguarddist && random <= 50 && P2BodyDist X = [-5,120]) || ((random <= 80 || (random <= 300 && life <= 400))&& P2BodyDist X = [-5,65])
trigger2 = EnemyNear(Var(51)),numproj && EnemyNear(Var(51)),movetype = A
trigger2 = EnemyNear(Var(51)),AnimTime <= -32
trigger2 = P2BodyDist X = [60,120]
trigger2 = random <= 50
trigger3 = enemy,numproj && inguarddist
trigger3 = P2BodyDist X >= 180 && random <= 50
trigger4 = BackEdgeBodyDist <= 5 && P2BodyDist X = [-5,30]
trigger4 = random <= 150 && EnemyNear(Var(51)),statetype = L
trigger5 = FrontEdgeBodyDist >= 40 && EnemyNear(Var(51)),statetype = A
trigger5 = (P2Dist X = [-35,20]) && (EnemyNear(Var(51)),Pos Y = [-120,-60])
trigger5 = EnemyNear(Var(51)),Vel Y > 0
trigger5 = EnemyNear(Var(51)),ctrl || EnemyNear(Var(51)),stateno = [0,999]
trigger5 = random <= 80

;回り込み・後ろ（めくり回避）
[State -1]
type = ChangeState
value = ifelse(EnemyNear(Var(51)),Pos Y >= -90,105,715)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(51)),movetype != H && EnemyNear(Var(51)),facing = facing
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1 = BackEdgeBodyDist >= 40 && EnemyNear(Var(51)),statetype = A
trigger1 = (P2Dist X = [-25,30]) && (EnemyNear(Var(51)),Pos Y = [-120,-60])
trigger1 = EnemyNear(Var(51)),Vel Y > 0
trigger1 = EnemyNear(Var(51)),ctrl || EnemyNear(Var(51)),stateno = [0,999]
trigger1 = random <= 80

;==============================================================================================
;投げ

;空中投げ
[State -1, Air Throw]
type=changestate
value=850
triggerall = !var(20) || var(41) = 1
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype=A
trigger1= ctrl && EnemyNear(Var(51)),statetype=A
trigger1= ifelse(EnemyNear(Var(51)),Vel X >=0,(p2bodydist x=[-5,15]),(p2bodydist x=[-5,8])) && (p2dist y=[-54,20]) && random<300

;通常投げ
[State -1, Throw]
type=changestate
value=800
triggerall = !var(20) || var(41) = 1
triggerall = var(59)>=1 && numenemy
triggerall = roundstate=2 && statetype!=A
triggerall = EnemyNear(Var(51)),StateType != A && EnemyNear(Var(51)),StateType != L
triggerall = !inguarddist && EnemyNear(Var(51)),movetype != H
triggerall = EnemyNear(Var(51)),stateno != 5120 && EnemyNear(Var(51)),stateno != 5201
triggerall = EnemyNear(Var(51)),prevstateno != 5120 && EnemyNear(Var(51)),prevstateno != 5201
triggerall = P2BodyDist X <= 15
trigger1 = ctrl || stateno = 21 || stateno = 22 || (stateno=[100,101])
trigger1 = Random <= 150 || (prevstateno = 710 && random <= 300)

;==============================================================================================

;パワー溜め
[State -1, Power Charge]
type=changestate
value=730
triggerall = !var(20) || var(41) = 1
triggerall = var(59)>=1 && numenemy
triggerall = roundstate=2 && statetype!=A
triggerall = !EnemyNear(Var(51)),numproj && !inguarddist
triggerall = power < const(data.power)
triggerall = EnemyNear(Var(51)),movetype != A
triggerall = ctrl || stateno = 21 || stateno = 22 || (stateno=[100,101])
trigger1 = p2bodydist X >= 160 && Random <= 20
trigger2 = EnemyNear(Var(51)),statetype = L && p2bodydist X >= 200
trigger2 = teammode = single || teammode = turns
trigger2 = random <= 50
trigger3 = EnemyNear(Var(51)),statetype = A && EnemyNear(Var(51)),movetype = H && p2bodydist X >= 70
trigger3 = teammode = single || teammode = turns
trigger3 = random <= 20

[State -1, 前中ジャンプ]
Type = ChangeState
value = 65
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && StateType != A
triggerall = !var(20) || var(41) = 1
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1 = (EnemyNear(Var(51)),Vel X <= 0 && P2BodyDist X = [120,180]) || (EnemyNear(Var(51)),Vel X > 0 && P2BodyDist X = [200,240])
trigger1 = EnemyNear(Var(51)),movetype != H
trigger1 = random <= 80

[State -1, 前小ジャンプ]
Type = ChangeState
value = 62
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && StateType != A
triggerall = !var(20) || var(41) = 1
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1 = (EnemyNear(Var(51)),Vel X <= 0 && P2BodyDist X = [90,120]) || (EnemyNear(Var(51)),Vel X > 0 && P2BodyDist X = [130,150])
trigger1 = EnemyNear(Var(51)),movetype != H
trigger1 = random <= 80

[State -1, 前ノーマルジャンプ]
Type = ChangeState
value = 42
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && StateType != A
triggerall = !var(20) || var(41) = 1
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1 = EnemyNear(Var(51)),movetype != H && EnemyNear(Var(51)),BackEdgeBodyDist >= 30
trigger1 = (P2BodyDist X = [60,80]) || (power >= 1000 && P2BodyDist X = [100,120])
trigger1 = random <= 10

[State -1, 前ハイジャンプ]
Type = ChangeState
value = 68
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && StateType != A
triggerall = !var(20) || var(41) = 1
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
trigger1 = !inguarddist
trigger1 = EnemyNear(Var(51)),movetype != H
trigger1 = (P2BodyDist X = [90,200]) || (power >= 1000 && P2BodyDist X = [130,240])
trigger1 = random <= 10 || (random <= 100 && ((p2life <= 150 && var(15) > 0) || (p2life <= 100 && power >= 1000)))
trigger2 = P2BodyDist X >= 121 && EnemyNear(Var(51)),movetype != H
trigger2 = Enemy,NumProj
trigger2 = EnemyNear(Var(51)),StateType != A || EnemyNear(Var(51)),Pos Y >= -30
trigger2 = random <= 80
trigger3 = P2BodyDist X >= 121 && EnemyNear(Var(51)),movetype != H
trigger3 = Enemy,movetype = A && EnemyNear(Var(51)),animtime = [-45,-35]
trigger3 = EnemyNear(Var(51)),StateType != A || EnemyNear(Var(51)),Pos Y >= -30
trigger3 = random <= 80

;ゼロカウンター
[State -1, Zero Counter]
type=changestate
value=750
triggerall = !var(20)
trigger1= var(59)>=1 && numenemy
trigger1= stateno=150 || stateno=152
trigger1= roundstate=2 && statetype!=A && power>=1000
trigger1= (p2bodydist x=[0,50]) && EnemyNear(Var(51)),statetype != A
trigger1= EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime <= -10
trigger1= BackEdgeBodyDist <= 15 || power >= 2800 || EnemyNear(Var(51)),life < 50
trigger1= random < 5 || (EnemyNear(Var(51)),life < 50 && random <= 30)

;ラン
[State -1, Run]
type=changestate
value=100
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && (stateno != [100,106])
triggerall= !inguarddist && EnemyNear(Var(51)),movetype != A
triggerall= ctrl || stateno = 21 || stateno = 22
trigger1= p2bodydist x >= 160 && random<80
trigger2= (p2bodydist x =[90,160]) && random<25
trigger2= teammode = single || teammode = turns
trigger3= EnemyNear(Var(51)),statetype = L || (EnemyNear(Var(51)),statetype = A && EnemyNear(Var(51)),movetype = H)
trigger3= p2bodydist x > 70 && random < 100
trigger3= teammode = single || teammode = turns

;==============================================================================================
;牽制

;ガード判定
[State -1]
Type = VarSet
triggerall= var(48) = 0
triggerall= roundstate=2
trigger1 = movetype = H && stateno = [120,159]
var(48) = 1
IgnoreHitPause = 1

[State -1] ;リセット
Type = VarSet
triggerall= var(48) != 0
trigger1 = !inguarddist || movetype = A ;|| stateno != [120,159]
trigger2 = EnemyNear(Var(51)),ctrl || EnemyNear(Var(51)),time = 1 || EnemyNear(Var(51)),movetype = H
trigger3 = roundstate != 2
var(48) = 0
IgnoreHitPause = 1

;しゃがみ弱パンチ
[State -1, CLP]
type=changestate
value=400
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !inguarddist || var(48) = 1 || EnemyNear(var(51)),animtime >= -4 || prevstateno = 710
triggerall= (P2BodyDist X = [-10,40])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),movetype != H
triggerall= EnemyNear(Var(51)),statetype != A || (EnemyNear(Var(51)),Pos Y >= -30 && EnemyNear(Var(51)),Vel Y > 0)
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno=[100,101]
trigger1 = (random = [100,180]) || (var(48) = 1 && random = [200,300])

;しゃがみ弱キック
[State -1, CLK]
type=changestate
value=430
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !inguarddist || var(48) = 1 || EnemyNear(var(51)),animtime >= -4 || prevstateno = 710
triggerall= (P2BodyDist X = [-10,40])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),movetype != H
triggerall= EnemyNear(Var(51)),statetype != A || (EnemyNear(Var(51)),Pos Y >= -10 && EnemyNear(Var(51)),Vel Y > 0)
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno=[100,101]
trigger1 = random <= 80 || (random <= 200 && (var(48) = 1 || stateno = [100,101]))

;しゃがみ中パンチ
[State -1, CMP]
type=changestate
value=410
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !inguarddist || var(48) = 1 || EnemyNear(var(51)),animtime >= -4 || prevstateno = 710
triggerall= (P2BodyDist X = [30,80])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),movetype != H
triggerall= EnemyNear(Var(51)),statetype != A || (EnemyNear(Var(51)),Pos Y >= -30 && EnemyNear(Var(51)),Vel Y > 0)
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno=[100,101]
trigger1 = (var(48) = 0 && random <= 10) || (p2bodydist X < 60 && (random <= 50 || (var(48) = 1 && random <= 150)) )

;立ち弱パンチ
[State -1, SfLP]
type=changestate
value=200
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !inguarddist || var(48) = 1 || EnemyNear(var(51)),animtime >= -4 || prevstateno = 710
triggerall= (P2BodyDist X = [30,45])
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),movetype != H
triggerall= EnemyNear(Var(51)),statetype != S || (EnemyNear(Var(51)),Pos Y >= -30 && EnemyNear(Var(51)),Vel Y > 0)
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno=[100,101]
trigger1 = random <= 10

;ママハハにつかまる
[State -1, Mamahaha Ni Tsukamaru]
type=changestate
value=1500
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= numhelper(10000)
triggerall= helper(10000),stateno=10000 && helper(10000),pos y<=-120
triggerall= EnemyNear(Var(51)),statetype != L
triggerall= EnemyNear(Var(51)),movetype != H || EnemyNear(Var(51)),stateno = [120,159]
triggerall= EnemyNear(Var(51)),statetype != A || (EnemyNear(Var(51)),Pos Y >= -30 && EnemyNear(Var(51)),Vel Y > 0)
triggerall= (ctrl || stateno = 21 || stateno=40 || stateno=52 || (stateno=[100,101]))
trigger1= !(EnemyNear(Var(51)),ctrl) && EnemyNear(Var(51)),statetype=C
trigger1= EnemyNear(Var(51)),animtime<=-12 && p2bodydist X = [40,120]
trigger1= random < 100
trigger2= !inguarddist && p2bodydist x > 120 && random <= 80

;ガード
[state -1, Guard]
type = ChangeState
value = ifelse(EnemyNear(Var(51)),statetype = A || EnemyNear(Var(51)),statetype = C && random <= 100,130,131)
triggerall = !var(20)
triggerall = var(59) >= 1
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = [100,101]
triggerall = statetype != A
triggerall = !EnemyNear(Var(51)),HitDefAttr = SCA, NT,ST,HT
;triggerall = (EnemyNear(Var(51)),stateno != var(43) || var(43) = 0) && (EnemyNear(Var(51)),stateno != var(42) || var(42) = 0)
trigger1 = EnemyNear(Var(51)),numproj
trigger2 = (EnemyNear(Var(51)),HitDefAttr = SCA, NA,SA,HA)
trigger2 = random <= ifelse(EnemyNear(Var(51)),statetype = A, 500, 250)
trigger3 = EnemyNear(Var(51)),statetype = A && EnemyNear(Var(51)),movetype = A
trigger3 = (EnemyNear(Var(51)),Pos Y = [-150,-30]) && p2dist X = [-30,10]
trigger3 = random <= 150
trigger4 = EnemyNear(Var(51)),numhelper
trigger4 = !EnemyNear(Var(51)),HitDefAttr = SCA
trigger4 = EnemyNear(Var(51)),time >= 10 || EnemyNear(Var(51)),ctrl || EnemyNear(Var(51)),stateno = [0,199]

;歩き（相手ダウン中）
[State -1, Walk]
type = ChangeState
value = 21
triggerall = var(59)>=1
triggerall = !var(20) || var(41) = 1
triggerall = roundstate=2 && statetype!=A
triggerall = !InGuardDist
triggerall = stateno != [10,12]
triggerall = stateno != 20 && stateno != 21 && stateno != [100,101]
triggerall = stateno != [120,159]
triggerall = EnemyNear(Var(51)),statetype = L
trigger1 = ctrl || stateno = 22
trigger1 = EnemyNear(Var(51)),stateno = 5120
trigger1 = p2bodydist X >= 35 && time > 5

;歩き（相手ダウン中）
[State -1, Walk]
type = ChangeState
value = 22
triggerall = var(59)>=1
triggerall = !var(20) || var(41) = 1
triggerall = roundstate=2 && statetype!=A
triggerall = !InGuardDist
triggerall = stateno != [10,12]
triggerall = stateno != 20 && stateno != 22 && stateno != [100,101]
triggerall = stateno != [120,159]
triggerall = EnemyNear(Var(51)),statetype = L
trigger1 = ctrl || stateno = 21
trigger1 = p2bodydist X <= 5 && time > 5

;歩き
[State -1, Walk]
type = ChangeState
value = 21
triggerall= var(59)>=1 && numenemy
triggerall = !var(20) || var(41) = 1
triggerall= roundstate=2 && statetype!=A
triggerall= ctrl && stateno != 100
triggerall = !InGuardDist
triggerall = stateno != 20
triggerall = stateno != 21
triggerall = stateno != [120,159]
triggerall = p2bodydist X > 0
triggerall = p2bodydist X > 10 || EnemyNear(Var(51)),statetype != A
triggerall = EnemyNear(Var(51)),statetype != A || EnemyNear(Var(51)),facing = -facing || p2bodydist X > 30
trigger1 = random <= 150 || (EnemyNear(Var(51)),movetype = I && random <= 250) || ((EnemyNear(Var(51)),facing = facing || EnemyNear(Var(51)),movetype = H) && random <= 800)

;==============================================================================================
;ママハハにつかまってる時

;ヤトロポック
[State -1, MHP(Yatolopock)]
type=changestate
value=660
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= EnemyNear(Var(51)),statetype != L && EnemyNear(Var(51)),statetype != A
trigger1= stateno=1510 && p2bodydist x = [-30,20]
trigger1= (Pos Y > -30 && random <= 50) || (Pos Y > -10 && random <= 150)

;中パンチ
[State -1, MMP]
type=changestate
value=675
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= EnemyNear(Var(51)),statetype != L
triggerall= EnemyNear(Var(51)),statetype = A && EnemyNear(Var(51)),Pos Y <= -30
trigger1= stateno=1510 && p2bodydist x<=50 && random <= 400

;中キック
[State -1, MMK]
type=changestate
value=685
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1
triggerall= var(46)>0 && statetype = A
triggerall= EnemyNear(Var(51)),statetype != L
triggerall= EnemyNear(Var(51)),statetype != A || EnemyNear(Var(51)),Pos Y >= -30
trigger1= stateno=1510
trigger1= (p2bodydist x = [-20,40]) || ((EnemyNear(Var(51)),vel X > 0 || EnemyNear(Var(51)),movetype = A) && p2bodydist x = [-10,50])
trigger1= prevstateno = 1509 || (Enemynear,statetype != C && random <= 30) || (Pos Y > -40 && random <= 80) || (Enemynear,ctrl = 0 && random <= 400)

;エレルスカムイリムセ
[State -1, ElerusKamuiRimuse]
type=changestate
value=3001
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= power>= 2000
triggerall= roundstate=2 && statetype=A
triggerall= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),statetype != L
trigger1= p2bodydist X <= 120
trigger1= stateno=1510 && EnemyNear(Var(51)),movetype = A
trigger1= EnemyNear(Var(51)),animtime <= -20 && random <= 100
trigger2= (stateno=675 || stateno=685) && movehit
trigger2= EnemyNear(Var(51)),movetype = H
trigger2= (EnemyNear(Var(51)),life = [100,300]) || (teammode = single && roundno >= 3 && EnemyNear(Var(51)),life <= 300)

;ＥＸカムイムツベ
[State -1, EX Kamui Mutsube]
type=changestate
value=1560
triggerall = !var(20)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= power>=500 && EnemyNear(Var(51)),stateno != [40,49]
triggerall= EnemyNear(Var(51)),statetype != A && EnemyNear(Var(51)),statetype != L
trigger1= !(EnemyNear(Var(51)),ctrl) && ((EnemyNear(Var(51)),stateno!=[120,155]) || EnemyNear(Var(51)),statetype=C)
trigger1= stateno=1510 && p2bodydist X = [10,120]
trigger1= random <= 200
trigger2= (stateno=675 || stateno =685) && movehit

;カムイムツベ
[State -1, Kamui Mutsube]
type=changestate
value=1550
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= EnemyNear(Var(51)),statetype!=L
trigger1= !(EnemyNear(Var(51)),ctrl) && ((EnemyNear(Var(51)),stateno!=[120,155]) || EnemyNear(Var(51)),statetype=C)
trigger1= stateno=1510 && random<100 && p2bodydist X = [10,120]
trigger1= (EnemyNear(Var(51)),stateno != [5000,5999]) && (EnemyNear(Var(51)),stateno != [120,159])
trigger2= (stateno=675 || stateno=685) && movehit
trigger2= Enemynear,statetype != A

;シチカプアイ
[State -1, Shichikapu Ai]
type=changestate
value=1530
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall = EnemyNear(Var(51)),NumProj < 1 && EnemyNear(Var(51)),statetype != L
trigger1= stateno=1510 && p2bodydist x>=120
trigger2= stateno=1510 && p2bodydist x<=120
trigger2= (p2bodydist X >= 40 && random = [600,630]) || (EnemyNear(Var(51)),statetype = A && random = [600,999])
trigger3= (stateno=675 || stateno=685) && movehit
trigger3= Enemynear,statetype = A

;==============================================================================================
;空中

;ジャンプ中キック
[State -1, AMK]
type=changestate
value=640
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && ctrl
triggerall= (EnemyNear(Var(51)),Vel X > 0 && p2bodydist X <= 75) || (EnemyNear(Var(51)),Vel X <= 0 && p2bodydist X <= 55)
trigger1 = var(3) = 0 && Vel Y > 0
trigger1 = Pos Y >= -90 && (((p2dist X = [-30,5]) && random = [0,800]) || random = [300,450])
trigger2 = (var(3) = [1,2]) && Vel Y > 0
trigger2 = Pos Y >= -45 && (((p2dist X = [-30,5]) && random = [0,800]) || random = [300,800])
trigger3 = var(3) = 3 && Vel Y > 0
trigger3 = Pos Y >= -90 && (((p2dist X = [-30,5]) && random = [0,800]) || random = [300,450])
trigger4 = EnemyNear(Var(51)),statetype = A
trigger4 = (p2bodydist Y <= 20) && random = [300,600]

;ジャンプ強パンチ
[State -1, AHP]
type=changestate
value=620
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(27) && var(14)<1
triggerall= EnemyNear(Var(51)),statetype = A
trigger1= (p2bodydist x=[0,35+vel x*5+EnemyNear(Var(51)),vel x*5]) && (p2bodydist y=[-50,60]) && p2statetype!=L && (!(EnemyNear(Var(51)),hitfall) || numtarget(1310))
trigger1= ctrl && (random<500 || p2movetype=H)
trigger1= vel Y>0 || p2movetype=H
trigger2= (p2bodydist x=[0,35+vel x*5+EnemyNear(Var(51)),vel x*5]) && ifelse(EnemyNear(Var(51)),vel Y>0,(p2bodydist y=[-100,-30]),(p2bodydist y=[-90,-50])) && p2statetype=A
trigger2= ctrl && random<500

;ジャンプ強キック
[State -1, AHK]
type=changestate
value=650
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && ctrl
triggerall= !var(16)
triggerall= (EnemyNear(Var(51)),Vel X > 0 && p2bodydist X <= 75) || (EnemyNear(Var(51)),Vel X <= 0 && p2bodydist X <= 55)
triggerall= (p2dist X = [-10,100])
trigger1 = var(3) = 0 && Vel Y > 0
trigger1 = Pos Y >= -100 && ((EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime >= -6 && random = [300,600])|| random = [300,450])
trigger2 = (var(3) = [1,2]) && Vel Y > 0
trigger2 = Pos Y >= -55 && ((EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime >= -6 && random = [200,900])|| random = [300,800])
trigger3 = var(3) = 3 && Vel Y > 0
trigger3 = Pos Y >= -100 && ((EnemyNear(Var(51)),movetype = A && EnemyNear(Var(51)),animtime >= -6 && random = [300,600])|| random = [300,450])
trigger4 = EnemyNear(Var(51)),statetype = A
trigger4 = (p2bodydist Y = [30,90]) && random = [300,600]

;空中下強キック
[State -1, Kamui Fumu Kesupu]
type=changestate
value=655
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(27) && var(14)<1
triggerall= !var(16)
trigger1= (EnemyNear(Var(51)),Vel X > 0 && p2bodydist X <= 55) || (EnemyNear(Var(51)),Vel X <= 0 && p2bodydist X <= 45)
trigger1= ctrl && ((random=[500,700]) || p2dist x = [-20,8])
trigger1= var(3) = 1 && EnemyNear(Var(51)),statetype != A

[state -1, Guard]
type = ChangeState
value = 132
triggerall = !var(20) || var(41) = 1
triggerall = var(59) = 1
triggerall = roundstate = 2 && statetype = A
triggerall = InGuardDist
triggerall = ctrl
triggerall = !EnemyNear(Var(51)),HitDefAttr = SCA, NT,ST,HT
trigger1= ifelse(statetype=A, ((var(3)!=[1,2]) || stateno=5210), 1)
trigger1 = EnemyNear(Var(51)),movetype = A
trigger1 = EnemyNear(Var(51)),numproj
trigger2 = EnemyNear(Var(51)),HitDefAttr = SCA, NA,SA,HA
trigger2 = random <= 300

;==============================================================================================
;挑発

[State -1, Jiketsu]
type=changestate
value=4000
triggerall = !var(20) || var(41) = 1
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && teammode = single
trigger1= life<50 && EnemyNear(Var(51)),life>500 && (roundno=1)
trigger1= (ctrl || stateno = 21) && power < 1000 && random<500
trigger2= life<100 && EnemyNear(Var(51)),life>800 && (roundno=1)
trigger2= (ctrl || stateno = 21) && power < 2000 && random<500

;ちょ～はつ（ＶＳ悪人）
[State -1, Taunt]
Type = ChangeState
Value = 196
TriggerAll = var(52) = 1
triggerall = !var(20) || var(41) = 1
TriggerAll = RoundState = 3
TriggerAll = !MatchOver || life > 400
TriggerAll = StateType != A
TriggerAll = P2Life < Life
TriggerAll = Ctrl
Triggerall = (StateNo != 195 && StateNo != 196 && StateNo != 197)
Triggerall = EnemyNear(Var(51)),StateNo = [5100,5150]
triggerall = teammode = single || teammode = turns
trigger1 = P2Name = "Geese Howard" || P4Name = "Geese Howard"
trigger2 = P2Name = "Tin G_rugal" || P4Name = "Tin G_rugal"
trigger3 = P2Name = "Tin's KOF Krauser" || P4Name = "Tin's KOF Krauser"
trigger4 = P2Name = "Tin 2002_rugal" || P4Name = "Tin 2002_rugal"
trigger5 = P2Name = "Apocalypse" || P4Name = "Apocalypse"
trigger6 = P2Name = "Red Arremer" || P4Name = "Red Arremer"
trigger7 = P2Name = "M.BISON" || P4Name = "M.BISON"
trigger8 = P2Name = "[o_O]'s Blackheart" || P4Name = "[o_O]'s Blackheart"
trigger9 = P2Name = "cvsvega" || P4Name = "cvsvega"
trigger10 = P2Name = "cvsbison" || P4Name = "cvsbison"
trigger11 = P2Name = "cvsbalrog" || P4Name = "cvsbalrog"
trigger12 = P2Name = "cvsrolento" || P4Name = "cvsrolento"
trigger13 = P2Name = "cvsgouki" || P4Name = "cvsgouki"
trigger14 = P2Name = "cvsgeese" || P4Name = "cvsgeese"
trigger15 = P2Name = "cvsyamazaki" || P4Name = "cvsyamazaki"
trigger16 = P2Name = "cvsrugal" || P4Name = "cvsrugal"
trigger17 = P2Name = "cvsvice" || P4Name = "cvsvice"
trigger18 = P2Name = "cvsg_rugal" || P4Name = "cvsg_rugal"
trigger19 = P2Name = "Demitri" || P4Name = "Demitri"
trigger20 = P2Name = "Dio Brendo" || P4Name = "Dio Brendo"
trigger21 = P2Name = "Dio" || P4Name = "Dio"
trigger22 = P2Name = "Venom" || P4Name = "Venom"
trigger23 = P2Name = "elque" || P4Name = "elque"
trigger24 = P2Name = "freeman" || P4Name = "freeman"
trigger25 = P2Name = "Freeza UB22" || P4Name = "Freeza UB22"
trigger26 = P2Name = "Geese B Howard" || P4Name = "Geese B Howard"
trigger27 = P2Name = "geese" || P4Name = "geese"
trigger28 = P2Name = "Gill" || P4Name = "Gill"
trigger29 = P2Name = "Goenitz" || P4Name = "Goenitz"
trigger30 = P2Name = "Gouki" || P4Name = "Gouki"
trigger31 = P2Name = "Grant" || P4Name = "Grant"
trigger32 = P2Name = "HEART" || P4Name = "HEART"
trigger33 = P2Name = "Jedah" || P4Name = "Jedah"
trigger34 = P2Name = "Johann" || P4Name = "Johann"
trigger35 = P2Name = "justice" || P4Name = "justice"
trigger36 = P2Name = "K9999" || P4Name = "K9999"
trigger37 = P2Name = "Kain" || P4Name = "Kain"
trigger38 = P2Name = "yamazaki" || P4Name = "yamazaki"
trigger39 = P2Name = "Wolfgang Krauser" || P4Name = "Wolfgang Krauser"
trigger40 = P2Name = "krizalid" || P4Name = "krizalid"
trigger41 = P2Name = "kusaregedo" || P4Name = "kusaregedo"
trigger42 = P2Name = "Mr. Big" || P4Name = "Mr. Big"
trigger43 = P2Name = "Shiki_Nanaya" || P4Name = "Shiki_Nanaya"
trigger44 = P2Name = "NEO-DIO" || P4Name = "NEO-DIO"
trigger45 = P2Name = "Nero_Chaos" || P4Name = "Nero_Chaos"
trigger46 = P2Name = "Omega Rugal" || P4Name = "Omega Rugal"
trigger47 = P2Name = "omega rugal98" || P4Name = "omega rugal98"
trigger48 = P2Name = "PetShop" || P4Name = "PetShop"
trigger49 = P2Name = "Rasyouzin Miduki" || P4Name = "Rasyouzin Miduki"
trigger50 = P2Name = "RAOU" || P4Name = "RAOU"
trigger51 = P2Name = "Ryuji Yamazaki" || P4Name = "Ryuji Yamazaki"
trigger52 = P2Name = "Shadow DIO" || P4Name = "Shadow DIO"
trigger53 = P2Name = "Shin Gouki" || P4Name = "Shin Gouki"
trigger54 = P2Name = "Zabel" || P4Name = "Zabel"
trigger55 = P2Name = "zankuro" || P4Name = "zankuro"
trigger56 = P2Name = "Vega" || P4Name = "Vega"
trigger57 = P2Name = "Kim" || P4Name = "Kim"
trigger58 = P2Name = "cvsKim" || P4Name = "cvsKim"

;ちょ～はつ
[State -1, Taunt]
Type = ChangeState
Value = ifelse(random <= 400,196,197)
TriggerAll = var(52) = 1
triggerall = !var(20) || var(41) = 1
TriggerAll = RoundState = 3
TriggerAll =!MatchOver
TriggerAll = StateType != A
TriggerAll = P2Life < Life
TriggerAll = Ctrl && life > 400
Trigger1 = (StateNo != 195 && StateNo != 196 && StateNo != 197)
Trigger1 = EnemyNear(Var(51)),StateNo = [5100,5150]
trigger1 = teammode = single || teammode = turns
