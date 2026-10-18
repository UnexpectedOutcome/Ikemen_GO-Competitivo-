; ______________________________
;| Evil Ryu by chuchoryu |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;===================<BUTTON REMAPPING>===================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================<DEFAULT VALUES>===================
[Defaults]
command.time=15
command.buffer.time=1


;===================<SINGLE BUTTON>===================
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


;===================<HOLD DIR>===================
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


;===================<HOLD BUTTON>===================
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


;===================<DIR>===================
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


;===================<SUPER MOTIONS>===================

[Command]
name="sgs"
command=x,x,F,a,z
time=48
[Command]
name="sgs"
command=x,x,F,a+z
time=40
[Command]
name="sgs"
command=x,x,F+a+z
time=32

[Command]
name="qcfhcbp"
command=~D,F,D,B,x
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,y
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,z
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,~x
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,~y
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,~z
time=40

[Command]
name="qcfhcbk"
command=~D,F,D,B,a
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,b
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,c
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,~a
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,~b
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,~c
time=40

[Command]
name="qcbhcfk"
command=~D,B,D,F,a
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,b
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,c
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,~a
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,~b
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,~c
time=40

[Command]
name="2df2k"
command=~D,DF,F,D,DF,a+b
time=30
[Command]
name="2df2k"
command=~D,DF,F,D,DF,a+c
time=30
[Command]
name="2df2k"
command=~D,DF,F,D,DF,b+c
time=30

[Command]
name="hcf2k"
command=~B,DB,D,DF,F,a+b
time=30
[Command]
name="hcf2k"
command=~B,DB,D,DF,F,a+c
time=30
[Command]
name="hcf2k"
command=~B,DB,D,DF,F,b+c
time=30

[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+y
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+z
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,y+z
time=30

[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,z
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~z
time=30

[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,x
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,y
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,z
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~x
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~y
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~z
time=30

[Command]
name="2dfk"
command=~D,DF,F,D,DF,a
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,b
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,c
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~a
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~b
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~c
time=30

[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,a
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,b
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,c
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,~a
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,~b
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,~c
time=30

[Command]
name="2qcbs"
command=~D,DB,B,D,DB,B,s
time=30
[Command]
name="2qcbs"
command=~D,DB,B,D,DB,B,~s
time=30

[Command]
name="teamsuper"
command=~D,DF,F,D,DF,F,c+z
time=20


;===================<SPECIAL MOTIONS>===================

[Command]
name="hcfx"
command=~F,DF,D,DB,B,x
time=25
[Command]
name="hcfy"
command=~F,DF,D,DB,B,y
time=25
[Command]
name="hcfz"
command=~F,DF,D,DB,B,z
time=25
[Command]
name="hcfx"
command=~F,DF,D,DB,B,~x
time=25
[Command]
name="hcfy"
command=~F,DF,D,DB,B,~y
time=25
[Command]
name="hcfz"
command=~F,DF,D,DB,B,~z
time=25

[Command]
name="hcba"
command=~F,DF,D,DB,B,a
time=30
[Command]
name="hcbb"
command=~F,DF,D,DB,B,b
time=30
[Command]
name="hcbc"
command=~F,DF,D,DB,B,c
time=30
[Command]
name="hcba"
command=~F,DF,D,DB,B,~a
time=30
[Command]
name="hcbb"
command=~F,DF,D,DB,B,~b
time=30
[Command]
name="hcbc"
command=~F,DF,D,DB,B,~c
time=30

[Command]
name="qcfx"
command=~D,DF,F,x
time=15
[Command]
name="qcfy"
command=~D,DF,F,y
time=15
[Command]
name="qcfz"
command=~D,DF,F,z
time=15
[Command]
name="qcfs"
command=~D,DF,F,s
time=15
[Command]
name="qcfx"
command=~D,DF,F,~x
time=15
[Command]
name="qcfy"
command=~D,DF,F,~y
time=15
[Command]
name="qcfz"
command=~D,DF,F,~z
time=15
[Command]
name="qcfs"
command=~D,DF,F,~s
time=15

[Command]
name="qcf2p"
command=~D,DF,F,x+y
time=15
[Command]
name="qcf2p"
command=~D,DF,F,x+z
time=15
[Command]
name="qcf2p"
command=~D,DF,F,y+z
time=15

[Command]
name="dfx"
command=~F,D,DF,x
time=20
[Command]
name="dfy"
command=~F,D,DF,y
time=20
[Command]
name="dfz"
command=~F,D,DF,z
time=20
[Command]
name="dfx"
command=~F,D,DF,~x
time=20
[Command]
name="dfy"
command=~F,D,DF,~y
time=20
[Command]
name="dfz"
command=~F,D,DF,~z
time=20

[Command]
name="df2p"
command=~F,D,DF,x+y
time=20
[Command]
name="df2p"
command=~F,D,DF,x+z
time=20
[Command]
name="df2p"
command=~F,D,DF,y+z
time=20
[Command]
name="db2p"
command=~B,D,DB,x+y
time=20
[Command]
name="db2p"
command=~B,D,DB,x+z
time=20
[Command]
name="db2p"
command=~B,D,DB,y+z
time=20

[Command]
name="qcf2k"
command=~D,DF,F,a+b
time=15
[Command]
name="qcf2k"
command=~D,DF,F,a+c
time=15
[Command]
name="qcf2k"
command=~D,DF,F,b+c
time=15

[Command]
name="qcfa"
command=~D,DF,F,a
time=15
[Command]
name="qcfb"
command=~D,DF,F,b
time=15
[Command]
name="qcfc"
command=~D,DF,F,c
time=15
[Command]
name="qcfa"
command=~D,DF,F,~a
time=15
[Command]
name="qcfb"
command=~D,DF,F,~b
time=15
[Command]
name="qcfc"
command=~D,DF,F,~c
time=15

[Command]
name="qcba"
command=~D,DB,B,a
time=15
[Command]
name="qcbb"
command=~D,DB,B,b
time=15
[Command]
name="qcbc"
command=~D,DB,B,c
time=15
[Command]
name="qcba"
command=~D,DB,B,~a
time=15
[Command]
name="qcbb"
command=~D,DB,B,~b
time=15
[Command]
name="qcbc"
command=~D,DB,B,~c
time=15

[Command]
name="qcb2k"
command=~D,DB,B,a+b
time=15
[Command]
name="qcb2k"
command=~D,DB,B,a+c
time=15
[Command]
name="qcb2k"
command=~D,DB,B,b+c
time=15

[Command]
name="df2k"
command=~F,D,DF,a+b
time=20
[Command]
name="df2k"
command=~F,D,DF,a+c
time=20
[Command]
name="df2k"
command=~F,D,DF,b+c
time=20

[Command]
name="db2k"
command=~B,D,DB,a+b
time=20
[Command]
name="db2k"
command=~B,D,DB,a+c
time=20
[Command]
name="db2k"
command=~B,D,DB,b+c
time=20

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20


;===================<OTHER>===================

[Command]
name="highjump"
command=$D,$U
time=15


;===================<DOUBLE TAP>===================
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10


;===================<2/3 BUTTON COMBINATION>===================
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
name="excelcombo"
command=c+z
time=1

[Command]
name="roll"
command=a+x
time=1


;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

[State -1, AIhelper]
type=changestate
trigger1= ishelper(9741)
value=9741

[State -1, Tick Fix]
type=ctrlset
triggerall= !ctrl
trigger1= (stateno=52 || stateno=105 || stateno=5120) && !animtime
trigger2= (stateno=[200,259]) && !animtime
trigger3= (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value=1

[State -1, aUltra]
type=changestate
value=3300
triggerall= var(59)<=0
triggerall= (command="2df2k" || command="qcbhcfk")
triggerall= power>=3000
triggerall= var(1)!=1 && roundstate=2 && statetype!=A
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, ashurasenkuu]
type=changestate
value=1400
triggerall= var(59)<=0
triggerall= (command="df2p" || command="db2p" || command="df2k" || command="db2k")
triggerall= var(1)!=1 && roundstate=2 && statetype!=A
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall= var(59)<=0
triggerall= command="sgs"
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=3000 && !var(20)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,255])
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310])) && movecontact
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5) && (stateno!=[3020,3049]) && var(10)<5
trigger4= helper(stateno+5),var(3)
trigger5= stateno=52 && (prevstateno=[1000,4999]) && movecontact

[State -1, metsuhadouken]
type=changestate
value=3040
triggerall= var(59)<=0
triggerall= (var(1)=2 && command="2qcbp") || (var(1)!=2 && command="hcb2p")
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=3000 && !var(20)
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !numhelper(3033)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310])) && movecontact
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5) && (stateno!=[3020,3049]) && var(10)<5
trigger4= helper(stateno+5),var(3)
trigger5= stateno=52 && (prevstateno=[1000,4999]) && movecontact

[State -1, denjinhadouken]
type=changestate
value=3020
triggerall= var(59)<=0
triggerall= command="2qcbp"
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && power>=1000 && var(20)<=60
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !numhelper(3033)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310]) || stateno=3140 || stateno=3140 || stateno=3180) && movecontact && !var(33)
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5) && (stateno!=[3020,3049]) && var(10)<=5
trigger4= helper(stateno+5),var(3)
trigger5= var(20) && (stateno=[200,289])
trigger6= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger7= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger7= helper(stateno+5),var(3)
trigger8= stateno=52 && (prevstateno=[1000,4999]) && movecontact

[State -1, messatsugoushoryuu]
type=changestate
value=3140
triggerall= var(59)<=0
triggerall= command="2dfk"
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=1000 && var(20)<=60
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310]) || stateno=3140 || stateno=3180) && movecontact && !var(33)
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5) && (stateno!=[3020,3049]) && var(10)<=5
trigger4= helper(stateno+5),var(3)
trigger5= var(20) && (stateno=[200,289])
trigger6= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger7= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger7= helper(stateno+5),var(3)
trigger8= stateno=52 && (prevstateno=[1000,4999]) && movecontact

[State -1, shinkuuhadouken]
type=changestate
value=3000
triggerall= var(59)<=0
triggerall= command="2qcfp"
triggerall= roundstate=2 && statetype!=A && power>=1000 && var(20)<=60
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310]) || stateno=3140 || stateno=3140 || stateno=3180) && movecontact && !var(33)
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5) && stateno!=3000 && (stateno!=[3020,3049]) && var(10)<=5
trigger4= helper(stateno+5),var(3)
trigger5= var(20) && (stateno=[200,289])
trigger6= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger7= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger7= helper(stateno+5),var(3)
trigger8= stateno=52 && (prevstateno=[1000,4999]) && movecontact

[State -1, reppujinraishou]
type=changestate
value=3180
triggerall= var(59)<=0
triggerall= command="qcfhcbp"
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && power>=2000 && !var(20)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310]) || stateno=3140 || stateno=3140) && movecontact && !var(33)
trigger4= (stateno=[1000,3999]) && numhelper(stateno+5) && (stateno!=[3020,3049]) && var(10)<=5
trigger4= helper(stateno+5),var(3)
trigger5= stateno=52 && (prevstateno=[1000,4999]) && movecontact

[State -1, EXshoryuken]
type=changestate
value=1110
triggerall= var(59)<=0
triggerall= command="df2p"
triggerall= var(1)=1 && roundstate=2 && statetype!=A && power>=500 && var(20)<=60
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, EXkuchuutatsumaki]
type=changestate
value=1260
triggerall= var(59)<=0
triggerall= command="qcb2k"
triggerall= var(1)=1 && roundstate=2 && statetype=A && var(9)!=2 && power>=500 && var(20)<=60
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[260,285]) && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, EXtatsumaki]
type=changestate
value=1210
triggerall= var(59)<=0
triggerall= command="qcb2k"
triggerall= var(1)=1 && roundstate=2 && statetype!=A && power>=500 && var(20)<=60
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, EXjoudan]
type=changestate
value=1310
triggerall= var(59)<=0
triggerall= command="qcf2k"
triggerall= var(1)=1 && roundstate=2 && statetype!=A && power>=500 && var(20)<=60
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, EXhadouken]
type=changestate
value=1010
triggerall= var(59)<=0
triggerall= command="qcf2p"
triggerall= var(1)=1 && roundstate=2 && statetype!=A && power>=500 && var(20)<=60
triggerall= !numhelper(1005) && !numhelper(1015) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, shoryuken]
type=changestate
value=1100
triggerall= var(59)<=0
triggerall= command="dfx" || command="dfy" || command="dfz"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, classickuchuutatsumaki]
type=changestate
value=1270
triggerall= var(59)<=0
triggerall= command="hcba" || command="hcbb" || command="hcbc"
triggerall= var(1)!=1 && roundstate=2 && statetype=A && var(9)!=2
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[260,285]) && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, kuchuutatsumaki]
type=changestate
value=1250
triggerall= var(59)<=0
triggerall= command="qcba" || command="qcbb" || command="qcbc"
triggerall= roundstate=2 && statetype=A && var(9)!=2
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[260,285]) && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)
trigger6=stateno=222&&movecontact

[State -1, tatsumaki]
type=changestate
value=1200
triggerall= var(59)<=0
triggerall= command="qcba" || command="qcbb" || command="qcbc"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, joudansokutougeri]
type=changestate
value=1300
triggerall= var(59)<=0
triggerall= command="qcfa" || command="qcfb" || command="qcfc"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, shakunetsuhadouken]
type=changestate
value=1020
triggerall= var(59)<=0
triggerall= command="hcfx" || command="hcfy" || command="hcfz"
triggerall= var(1)!=1 && roundstate=2 && statetype!=A
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, hadouken]
type=changestate
value=1000
triggerall= var(59)<=0
triggerall= command="qcfx" || command="qcfy" || command="qcfz"
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1= ctrl || ((stateno=[200,299]) && time<=2) || (stateno=200 || stateno=230 || stateno=245)
trigger2= (stateno=[200,250]) && stateno!=200 && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, run/dash]
type=changestate
value=ifelse(command="FF",102,105)
trigger1= var(59)<=0
trigger1= command="FF" || command="BB"
trigger1= roundstate=2 && (stateno!=[100,106]) && statetype=S && ctrl

[State -1, throw]
type=changestate
value=800
trigger1= var(59)<=0
trigger1= (command="recovery" || command="2k") && (command="holdfwd" || command="holdback")
trigger1= roundstate=2 && ctrl && statetype=S && stateno!=100

[State -1, SLP]
type=changestate
value=200
triggerall= var(59)<=0
triggerall= command="x" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=230 || stateno=245) && time>=5
trigger3= var(20) && (stateno=[200,289]) && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

;[State -1, SMP2]
;type=changestate
;value=207
;triggerall= var(59)<=0
;triggerall= command="y" && command="holdfwd" && command!="holddown" && statetype!=A
;trigger1= ctrl
;trigger2= var(20) && (stateno=[200,289]) && movecontact
;trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
;trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
;trigger4= helper(stateno+5),var(3)

[State -1, SMP]
type=changestate
value=205
triggerall= var(59)<=0
triggerall= command="y" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, SHP3]
type=changestate
value=213
trigger1= var(59)<=0
trigger1= var(1)!=1 && command="z" && statetype!=A
trigger1= movecontact && stateno=205 && !var(20)

[State -1, SHP2]
type=changestate
value=212
triggerall= var(59)<=0
triggerall= var(1)!=2 && command="z" && command="holdfwd" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, SHP]
type=changestate
value=210
triggerall= var(59)<=0
triggerall= command="z" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, SLK]
type=changestate
value=215
triggerall= var(59)<=0
triggerall= command="a" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=230 || stateno=245) && time>=5
trigger3= var(20) && (stateno=[200,289]) && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, SMK2]
type=changestate
value=222
triggerall= var(59)<=0
triggerall= command="b" && command="holdfwd" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, SMK]
type=changestate
value=220
triggerall= var(59)<=0
triggerall= command="b" && command!="holdfwd" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, SHK]
type=changestate
value=225
triggerall= var(59)<=0
triggerall= command="c" && command!="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, CLP]
type=changestate
value=230
triggerall= var(59)<=0
triggerall= command="x" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=230 || stateno=245) && time>=5
trigger3= var(20) && (stateno=[200,289]) && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, CMP]
type=changestate
value=235
triggerall= var(59)<=0
triggerall= command="y" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, CHP]
type=changestate
value=240
triggerall= var(59)<=0
triggerall= command="z" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, CLK]
type=changestate
value=245
triggerall= var(59)<=0
triggerall= command="a" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= (stateno=200 || stateno=230 || stateno=245) && time>=5
trigger3= var(20) && (stateno=[200,289]) && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, CMK]
type=changestate
value=250
triggerall= var(59)<=0
triggerall= command="b" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, CHK]
type=changestate
value=255
triggerall= var(59)<=0
triggerall= command="c" && command="holddown" && statetype!=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, ALP]
type=changestate
value=260
triggerall= var(59)<=0
triggerall= command="x" && statetype=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, AMP]
type=changestate
value=265
triggerall= var(59)<=0
triggerall= command="y" && statetype=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, AHP]
type=changestate
value=270
triggerall= var(59)<=0
triggerall= command="z" && statetype=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, ALK]
type=changestate
value=275
triggerall= var(59)<=0
triggerall= command="a" && statetype=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, TKK]
type=changestate
value=282
triggerall= var(59)<=0
triggerall= var(1)!=1 && command="holddown" && command="b" && statetype=A
triggerall= vel x>0 && (vel y=[-2,2])
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, AMK]
type=changestate
value=280
triggerall= var(59)<=0
triggerall= command="b" && statetype=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, AHK]
type=changestate
value=285
triggerall= var(59)<=0
triggerall= command="c" && statetype=A
trigger1= ctrl
trigger2= var(20) && (stateno=[200,289]) && movecontact
trigger3= var(20) && (stateno=[1000,2999]) && statetype!=A && movecontact
trigger4= var(20) && (stateno=[1000,2999]) && statetype!=A && numhelper(stateno+5)
trigger4= helper(stateno+5),var(3)

[State -1, Standing Parry]
type=hitoverride
trigger1= var(59)<=0
trigger1= roundstate=2 && (statetype=S || stateno=5120)
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
trigger1= var(21):=1
attr=SA,AA,AP
stateno=700
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
trigger1= var(59)<=0
trigger1= roundstate=2 && statetype!=A
trigger1= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
trigger1= var(21):=2
attr=C,AA,AP
stateno=701
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
trigger1= var(59)<=0
trigger1= roundstate=2 && statetype=A
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || stateno=702
trigger1= var(21):=3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=7

[State -1, hado no kamae]
type=changestate
value=198
triggerall= var(59)<=0
triggerall= var(1)!=2 && command="qcfs" && statetype!=A
trigger1= ctrl
trigger2= (stateno=[200,255]) && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)

[State -1, taunt]
type=changestate
value=195
triggerall= var(59)<=0
triggerall= command="start" && statetype!=A
trigger1= ctrl
trigger2= (stateno=[200,255]) && movecontact
trigger3= var(20) && (stateno=[200,289])
trigger4= var(20) && ((stateno=[1000,2999]) || stateno=52 && (prevstateno=[1000,2999])) && movecontact
trigger5= var(20) && (stateno=[1000,2999]) && numhelper(stateno+5)
trigger5= helper(stateno+5),var(3)


;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, Standing Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<75) || ((stateno=[700,701]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=700
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<75) || ((stateno=[700,701]) && random<333)
trigger1= var(21):=2
attr=C,AA,AP
stateno=701
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<75) || (stateno=702 && random<333)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[700,702]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= var(59)<=0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0

[State -1, run]
type=changestate
value=102
trigger1= var(59)>=1 && numenemy
trigger1= statetype=S && roundstate=2 && ctrl && random<200
trigger1= (stateno!=[100,105]) && enemynear,movetype!=A && p2bodydist x>120

[State -1, dash]
type=changestate
value=105
triggerall= var(59)>=1 && numenemy
triggerall= statetype=S && roundstate=2 && ctrl
triggerall= (p2bodydist x=[0,80]) && backedgebodydist>80 && (stateno!=[100,105])
trigger1= enemynear,movetype=A && random<50
trigger2= enemynear,stateno=5120 && enemynear,animtime=-3 && random<500

[State -1, Jump]
type=changestate
value=40
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

[State -1, roll/dodge]
type=changestate
value=1400
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl && random<50
trigger1= enemynear,movetype=A && p2bodydist x<80

[State -1, ashurasenkuu]
type=changestate
value=1400
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && statetype!=A && roundstate=2 && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<90 && (facing!=enemynear,facing) && random<500
trigger1= var(10):=2
trigger2= enemy,numproj>0 && random<250
trigger2= var(10):=3
trigger3= p2bodydist x<60 && enemy,hitdefattr=SC,AT && random<750
trigger3= var(10):=2
trigger3= random<50
trigger3= var(10):=ifelse((random<500 || backedgedist<100),3,-3)

[State -1, Guard]
type=changestate
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= ifelse(statetype=A, (var(9)!=2 || stateno=5210), 1)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random<200

[State -1, taunt]
type=changestate
value=195
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= p2dist x>160 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)

[State -1, SLP]
type=changestate
value=200
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

;[State -1, SMP2]
;type=changestate
;value=207
;triggerall= var(59)>=1 && numenemy
;triggerall= statetype!=A && roundstate=2
;triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && p2statetype=S && !(enemynear,hitfall)
;triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
;trigger1= ctrl && p2statetype=C && random<150

[State -1, SMP]
type=changestate
value=205
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && p2statetype=S && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<75

[State -1, SHP2]
type=changestate
value=212
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=2 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<25

[State -1, SHP]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, SLK]
type=changestate
value=215
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=A && !(enemynear,hitfall) && !(enemynear,hitfall)
trigger1= ctrl && random<50

[State -1, SMK2]
type=changestate
value=222
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=C && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<33

[State -1, SMK]
type=changestate
value=220
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,20]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=C && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<75

[State -1, SHK]
type=changestate
value=225
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=C && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, CLP]
type=changestate
value=230
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=A && !(enemynear,hitfall)
trigger1= ctrl && random<50
trigger2= stateno=200 && movehit && random<100

[State -1, CMP]
type=changestate
value=235
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=A && !(enemynear,hitfall)
trigger1= ctrl && random<75

[State -1, CHP]
type=changestate
value=240
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,33]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100

[State -1, CLK]
type=changestate
value=245
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,54]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype=S && !(enemynear,hitfall)
trigger1= ctrl && random<50

[State -1, CMK]
type=changestate
value=250
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,62]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype=S && !(enemynear,hitfall)
trigger1= ctrl && random<75

[State -1, CHK]
type=changestate
value=255
triggerall= var(59)>=1 && numenemy
triggerall= statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,56]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype=S && !(enemynear,hitfall)
trigger1= ctrl && random<100

[State -1, ALP]
type=changestate
value=260
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,84]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50

[State -1, AMP]
type=changestate
value=265
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<ifelse((vel x>0 && p2statetype=A), 250, 75)

[State -1, AHP]
type=changestate
value=270
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<100

[State -1, ALK]
type=changestate
value=275
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<50

[State -1, TKK]
type=changestate
value=282
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && statetype=A && roundstate=2
triggerall= vel x>0 && (vel y=[-2,2])
triggerall= (p2bodydist x>0) && (p2bodydist y>0)
trigger1= ctrl && random<50

[State -1, AMK]
type=changestate
value=280
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[-50,130]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<75

[State -1, AHK]
type=changestate
value=285
triggerall= var(59)>=1 && numenemy
triggerall= statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,130]) && (p2bodydist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<100

;[State -1, throw]
;type=changestate
;value=800
;triggerall= var(59)>=1 && numenemy
;triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
;triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
;trigger1= (p2bodydist x=[0,20]) && (p2bodydist y=[-25,25]) && random<250
;trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,26]) && (p2bodydist y=[-25,25]) && random<500

[State -1, shoryuuken]
type=changestate
value=ifelse((var(1)=1 && power>=500 && random<133),1110,1100)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
triggerall= var(1)!=1 || !(enemynear,hitfall) || numtarget(1310) || numtarget(3120) || numtarget(3180)
trigger1= ctrl && p2bodydist x<50 && random<200
trigger2= (stateno=[200,250]) && stateno!=200 && movehit && p2bodydist x<30 && random<200
trigger3= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
trigger4= ctrl && var(1)!=1 && prevstateno=1200 && random<200

[State -1, joudansokutougeri]
type=changestate
value=ifelse((var(1)=1 && power>=500 && random<100),1310,1300)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,90]) && (p2bodydist y=[-180,60])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=[200,250]) && stateno!=200 && movehit && random<200

[State -1, kuchuutatsumakisenpuukyaku]
type=changestate
value=1270
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype=A && var(9)!=2 && vel y>-5
trigger1= ctrl && p2bodydist x<160 && p2dist y<=-120 && random<25
trigger2= (stateno=[260,285]) && movehit && random<50

[State -1, kuchuutatsumakisenpuukyaku]
type=changestate
value=ifelse((var(1)=1 && power>=500 && random<100),1260,1250)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && var(9)!=2 && vel y>-5
trigger1= ctrl && p2bodydist x<160 && p2dist y>=-120 && random<25
trigger2= (stateno=[260,285]) && movehit && random<50

[State -1, tatsumakisenpuukyaku]
type=changestate
value=1200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
triggerall= var(1)!=1 || !(enemynear,hitfall) || numtarget(1310) || numtarget(3120) || numtarget(3180)
trigger1= (stateno=[200,250]) && stateno!=200 && movehit && random<200

[State -1, tatsumakisenpuukyaku]
type=changestate
value=1210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= var(1)=1 && power>=500
triggerall= (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2dist x=[-60,60]) && p2dist y>=-80 && (enemynear,vel y>-1) && (enemynear,vel x>-2) && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=[200,250]) && stateno!=200 && movehit && random<200
trigger3= ctrl && var(1)!=1 && prevstateno=1100 && random<150

[State -1, shakunetsuhadouken]
type=changestate
value=1020
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (enemynear,vel y>-1)
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2dist x<160 && random<100
trigger2= (stateno=210 || stateno=230 || stateno=240) && movehit && random<125
trigger2= (stateno=[200,215]) || (stateno=[230,244]) && movehit && random<125

[State -1, hadouken]
type=changestate
value=ifelse((var(1)=1 && power>=500 && random<100),1010,1000)
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (enemynear,vel y>-1)
triggerall= ifelse(!var(20),!numhelper(1005) && !numhelper(1025),1) && !numhelper(1015) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2dist x>160 && random<150
trigger2= (stateno=[200,250]) && stateno!=200 && movehit && random<200

[State -1, shinshoryuken]
type=changestate
value=3120
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[0,30]) && p2dist y>-80 && (enemynear,vel y>-2) && (enemynear,vel x>-2)
triggerall= movetype=A || !(enemynear,hitfall)
trigger1= ctrl && random<250
trigger2= ((stateno=[210,215]) || (stateno=240)) && (p2bodydist x=[0,10]) && movehit && random<250
trigger3= stateno=1100 && (p2bodydist x=[0,20]) && movehit && random<200

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A) && (enemynear,statetype!=L) && (p2stateno!=[5030,5119])
triggerall= (p2dist x=[0,160]) && (p2stateno!=40)
triggerall= ifelse((enemynear,vel y>0),(enemynear,vel x<0),(enemynear,vel y>=0))
trigger1= ctrl && (p2bodydist x=[0,90]) && (p2dist y=[-5,5]) && random<150
trigger2= ctrl && (p2stateno=[120,155]) && p2statetype!=A && random<250
trigger3= ctrl && (p2bodydist x=[0,90]) && (p2dist y=[-5,5]) && random<150

[State -1, jinraishou]
type=changestate
value=3180
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && power>=2000 && !var(20)
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype=S || p2statetype=C)
triggerall= (p2bodydist x=[0,70]) && p2dist y>-120 && (enemynear,vel y>-2) && (enemynear,vel x>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<100
trigger2= (stateno=[200,250]) && stateno!=200 && movehit && random<200
trigger3= stateno=3140 && anim=3140 && animelemtime(26)>=0 && movehit && random<200

[State -1, metsushoryuken]
type=changestate
value=3140
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=2000 && !var(20)
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-100,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=[200,250]) && stateno!=200 && movehit && random<50
trigger3= stateno=1300 && movehit && random<75
trigger4= stateno=3140 && movehit && anim=3140 && animelemtime(26)>=0 && random<100
trigger5= (stateno=[1000,4999]) && numhelper(stateno+5) && stateno!=3000 && stateno!=3020
trigger5= helper(stateno+5),var(3) && random<50

[State -1, metsuhadouken]
type=changestate
value=3040
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=3000 && var(20)<=60 && !inguarddist
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !numhelper(3033)
triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A)
triggerall= p2dist x>=160 && p2dist y>-120 && (enemynear,vel y>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<20
trigger2= ctrl && p2dist x>=240 && random<30

[State -1, messatsugoushoryuu]
type=changestate
value=3140
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=1 && roundstate=2 && statetype!=A && power>=1000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= ((stateno=[200,250])) && movehit && random<50
trigger3= ((stateno=[1100,1110]) || (stateno=[1300,1310])) && movehit && random<75
trigger4= stateno=1110 && movehit && anim=3101 && animelemtime(6)>=0 && random<100
trigger5= stateno=3180 && movehit && anim=3180 && animelemtime(34)>=0 && random<75
trigger6= (stateno=[1000,4999]) && numhelper(stateno+5) && stateno!=3020
trigger6= helper(stateno+5),var(3) && random<50

[State -1, shinkuutatsumakisenpuukyaku]
type=changestate
value=3300
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power>=3000 && var(20)<=60
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && p2statetype!=L
triggerall= (p2bodydist x=[-50,50]) && p2dist y>=-90 && (enemynear,vel y>-1) && abs(enemynear,vel x)<2
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=210 || stateno=225 || stateno=240) && movehit && random<25
trigger3= ((stateno=[1100,1110]) || stateno=1310) && movehit && random<25
trigger4= stateno=3140 && movehit && anim=3101 && animelemtime(6)>=0 && random<100
trigger5= stateno=3140 && movehit && anim=3140 && animelemtime(26)>=0 && random<100
trigger6= stateno=3180 && movehit && anim=3180 && animelemtime(34)>=0 && random<75
trigger7= stateno=3000 && numhelper(3005)
trigger7= helper(3005),var(3) && random<50

[State -1, denjinhadouken]
type=changestate
value=3020
triggerall= var(59)>=1 && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && power>=1000 && var(20)<=60 && !inguarddist
triggerall= !numhelper(3033)
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A)
triggerall= p2dist x>=160 && p2dist y>-180 && (enemynear,vel y>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<25
trigger2= ctrl && p2statetype=L && random<100
trigger3= stateno=1100 && movehit && random<100

[State -1, shinkuuhadouken]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && power>=1000 && var(20)<=60
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155]) || p2statetype=A)
triggerall= (p2bodydist x=[0,100]) && p2statetype!=L
triggerall= (p2dist y=[-100,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-2)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && (p2bodydist x=[15,125]) && random<50
trigger2= (stateno=210 || stateno=225 || stateno=240) && movehit && random<50
trigger3= (stateno=1110 || (stateno=[1300,1310])) && movehit && random<50
trigger4= stateno=3140 && movehit && anim=3101 && animelemtime(6)>=0 && random<100 && !var(33)
trigger5= stateno=3140 && movehit && anim=3140 && animelemtime(26)>=0 && random<100
trigger6= stateno=3180 && movehit && anim=3180 && animelemtime(34)>=0 && random<75
trigger7= (stateno=[1000,4999]) && numhelper(stateno+5) && stateno!=3000 && stateno!=3020
trigger7= helper(stateno+5),var(3) && random<50
trigger8= stateno=52 && !animtime && (prevstateno=[1000,2999]) && numtarget && random<250
