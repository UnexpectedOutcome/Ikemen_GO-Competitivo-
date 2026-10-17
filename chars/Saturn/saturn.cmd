[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;====================< SINGLE BUTTON >====================

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


;====================< HOLD DIR >====================

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


;====================< HOLD BUTTON >====================

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
name = "holdx"
command = /x
time = 1
[Command]
name = "holdy"
command = /y
time = 1
[Command]
name = "holdz"
command = /z
time = 1
[Command]
name = "holdstart"
command = /s
time = 1


;====================< DIR >====================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1

;================================================

[Command]
Name = "PastD"
Command = $D
Time = 1
Buffer.time=20

[Command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Command]
name = "Debug";Required (do not remove)
command = s,s,s
time = 30

[Command]
Name = "NO"
Command = D,$F
Time = 20
buffer.time=20

[Command]
Name = "NO"
Command = D,$D
Time = 20
buffer.time=20

[Command]
Name = "NO"
Command = D,$B
Time = 20
buffer.time=20

[Command]
Name = "DU"
Command = D,U
Time = 8

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "DFA"
command = D,$F,a
time=20

[Command]
name = "DFZ"
command = D,$F,z
time=20

[Command]
name = "DFX"
command = D,$F,x
time=20

[Command]
name = "DFY"
command = D,$F,y
time=20

[Command]
name = "DFB"
command = D,$F,b
time=20

[Command]
name = "DFC"
command = D,$F,c
time=20

[Command]
name = "DBA"
command = D,$B,a
time=20

[Command]
name = "DDB"
command = D,D,b
time=20

[Command]
name = "DBB"
command = D,$B,b
time=20

[Command]
name = "DDC"
command = D,D,c
time=20

[Command]
name = "DDY"
command = D,D,y
time=20

[Command]
name = "DDX"
command = D,D,x
time=20

[Command]
name = "Time"
command = D,$B,y
time=20

[Command]
name = "wall"
command = D,$B,x
time=20

[Command]
name = "DDZ"
command = D,D,z
time=20

[Command]
name = "DBZ"
command = D,$B,z
time=20

[Command]
name = "DFDFZ"
command = D,$F,$D,$F,z
time=30

[Command]
name = "DBDBZ"
command = D,$B,$D,$B,z
time=30

[Command]
name = "charge";Required (do not remove)
command = /y
time = 1


[Statedef -1]

[State -1]
Type=Changestate
value=2500
Triggerall=Statetype !=A ;=A
Triggerall=power>=3000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1=command="DFDFZ"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=random<var(50)
Trigger2=helper(991),var(6)=0
Trigger2=helper(991),var(7)=0
Trigger2=P2movetype=A || (life<=200)

[State -1]
Type=Changestate
value=2600
Triggerall=Statetype !=A ;=A
Triggerall=power>=3000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = NumHelper(2601)=0
Triggerall = NumHelper(2602)=0
Trigger1=command="DBDBZ"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=random<var(50)
Trigger2 = ((P2Life=[360,500]) && (roundno=1)) || (Life>650)
trigger2 = AILevel>=3
Trigger2=helper(991),var(6)=0
Trigger2=helper(991),var(7)=0

[State -1]
Type=Changestate
value=2000
Triggerall=Statetype !=A ;=A
Triggerall=power>=1000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1=command="DFZ"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=random<var(50)
Trigger2=helper(991),var(6)=0
Trigger2=helper(991),var(7)=0
Trigger2=P2statetype!=A
Trigger2=!inguarddist || (Abs(P2bodydist X)>=120)
Trigger2=!P2statetype=L
Trigger2=(P2life<=300) || (P2stateno=[120,155]) || (Power>=4000)

[State -1]
Type=Changestate
value=2300
Triggerall=Statetype !=A ;=A
Triggerall=power>=1000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1=command="DDX"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=random<var(50)*(0.9-0.1*Ailevel)
Trigger2=helper(991),var(6)=0
Trigger2=helper(991),var(7)=0
Trigger2=!P2statetype=L
Trigger2=!P2statetype=A
Trigger2=Abs(P2bodydist X)>120
Trigger2=!Inguarddist
Trigger2=P2stateno!=[120,160]

[State -1]
Type=Changestate
value=2200
Triggerall=Statetype !=A ;=A
Triggerall=power>=2000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1=command="DDZ"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=random<var(50)
Trigger2=helper(991),var(6)=0
Trigger2=helper(991),var(7)=0
Trigger2=!P2statetype=L
Trigger2=Abs(P2bodydist X)<=120
trigger2=fvar(39)>0.5

[State -1, Heal]
Type=Changestate
value=2100
Triggerall=Statetype !=A ;=A
Triggerall=power>=1000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1=command="DDY"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=Life<=900-(Ailevel*50)
Trigger2=random<var(50)
Trigger2=(Life<=500) || !(var(49))
;Trigger2=Inguarddist

[State -1]
Type=Changestate
value=2400
Triggerall=Statetype !=A ;=A
Triggerall=power>=1000
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1=command="DBZ"
Trigger1=var(59)=0
Trigger2=var(59)>0
Trigger2=Numhelper(2401)=0
Trigger2=random<var(50)*(Ailevel-3)*0.3
Trigger2=AiLevel>=4
Trigger2=((Life<500) || (AIlevel<6)) && (Roundno!=1)

[State -1, run FWD]
type = ChangeState
value = 100+ (StateType=A)*10
triggerall = statetype !=C
triggerall = ctrl || (Stateno=[130,160])
triggerall = var(15)=0
triggerall = Pos Y>-190
triggerall = var(1)<3
trigger1 = command = "FF"
trigger1 = var(59) = 0
trigger2 = var(59) = 0
trigger2 = command = "holdfwd"
trigger2 = command = "holdz"
trigger2 = !(command = "NO")
trigger3 = abs(P2BodyDist X>60)
trigger3 = var(16)>700
trigger3 = var(59) >0
trigger3 = random<var(50)*3
trigger3 = NumHelper(1041)=0
trigger3 = Stateno!=[120,160]
Trigger3 = Numhelper(2401)=0
Trigger4 = var(59)>0
Trigger4 = Helper(991),var(8)>0

[State -1, run Back]
type = ChangeState
value = 105+ (StateType=A)*10
triggerall = statetype !=C
triggerall = ctrl || (Stateno=[130,160])
triggerall = var(15)=0
triggerall = Pos Y>-190
triggerall = var(1)<2
trigger1 = command = "BB"
trigger1 = var(59) = 0
trigger2 = var(59) = 0
trigger2 = command = "holdback"
trigger2 = command = "holdz"
trigger2 = !(command = "NO")
trigger3 = abs(P2BodyDist X)<120
trigger3 = var(16)<700
trigger3 = var(59) >0
trigger3 = ((facing=1) && (Pos X>-120)) || ((facing=-1) && (Pos X<120))
trigger3 = random<var(50)*2
trigger3 = Stateno!=[120,160]

[State -1, Graze Up]
type = ChangeState
value = 109
triggerall = StateType=S
triggerall = stateno!=109
triggerall = ctrl || (Stateno=[130,160])
trigger1 = var(59) = 0
trigger1 = command = "holdup"
trigger1 = command = "holdz"
trigger2 = var(59) > 0
trigger2 = Inguarddist
trigger2 = abs(P2Dist X)>=160
trigger2 = random<var(50)
trigger2 = (random<50) || !ctrl
trigger2 = Stateno!=[120,160]
Trigger2 = NumHelper(1011)=0
trigger3 = var(59) = 0
trigger3 = command="DU"
Trigger4 = var(59)>0
Trigger4 = Helper(991),var(9)>0

[State -1, AI Defense]
type = ChangeState
triggerall = stateno!=[120,160]
triggerall = roundstate=2
triggerall = var(59) > 0
triggerall = ctrl
triggerall = InGuardDist
Trigger1 = random<var(50)*2+(AiLevel>=3)*30+100*Ailevel*(Prevstateno=[5120,5129])
value = 120

[State -1]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1, AI P Time Absorber]
type = ChangeState
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = StateType!=A
triggerall = var(16)<=1000
triggerall = NumHelper(1021)=0
trigger1 = command = "Time"
trigger1 = var(59)=0
trigger2 = var(59)>0
trigger2 = var(40)>=100
Trigger2 = (var(16)<=400) || (var(40)>=300)
Trigger2 = random<var(50)*((Ailevel-1)*0.3)
trigger2 = AILevel>=3
trigger2 = !Inguarddist
value = 1020

[State -1,AI P Silent Wall ]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = var(16)<=1000
Triggerall = NumHelper(1011)=0
Trigger1 = var(59)=0
Trigger1 = command = "wall"
Trigger2 = var(59)>0
Trigger2 = abs(P2Dist X)>100
Trigger2 = Helper(991),var(2)>1
Trigger2 = random<var(50)*1.25
Trigger2 = var(16)<=600
trigger2 = AiLevel>=3
trigger2 = !Inguarddist
value = 1010

[State -1,DFA]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "DDB"
Trigger2 = var(59)>0
Trigger2 = P2StateType=S
Trigger2 = abs(P2BodyDist X)<=40
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
value = 330

[State -1,Crouching a]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=320) && (Animelem=11,>0)) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "holddown"
Trigger1 = command = "a"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<=15
Trigger2 = P2StateType!=A
Trigger2 = P2StateType!=L
Trigger2 = random<var(50)*(0.8+0.1*Ailevel*(P2statetype=S))
Trigger2 = Helper(991),var(5)=0
value = 400

[State -1,Crouching b]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || ((Stateno=400) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "holddown"
Trigger1 = command = "b"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<=90
Trigger2 = P2StateType!=A
Trigger2 = P2StateType!=L
Trigger2 = random<var(50)*(0.1*Ailevel*(1+(P2statetype=S)))
Trigger2 = Helper(991),var(5)=0
Trigger2 = !Inguarddist
value = 410

[State -1,Crouching c]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || ((Stateno=[400,410]) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "holddown"
Trigger1 = command = "c"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<=80
Trigger2 = P2StateType!=A
Trigger2 = P2StateType!=L
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !Inguarddist
value = 420

[State -1,DFA]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "DFA"
Trigger2 = var(59)>0
Trigger2 = P2StateType=C
Trigger2 = abs(P2BodyDist X)<=50
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
value = 300

[State -1,DFA]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=330) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "DFB"
Trigger2 = var(59)>0
Trigger2 = P2StateType!=L
Trigger2 = abs(P2BodyDist X)<=50
Trigger2 = abs(P2Dist Y)<=90
Trigger2 = random<var(50)*(0.8+0.4*(Ailevel>=6)*(movehit>0))
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
Trigger2 = !enemynear,hitfall
value = 310

[State -1,DFC]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl
Trigger1 = var(59)=0
Trigger1 = command = "DFC"
Trigger2 = var(59)>0
Trigger2 = P2StateType!=L
Trigger2 = abs(P2BodyDist X)<=90
Trigger2 = abs(P2Dist Y)<=90
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
Trigger2 = Ailevel>=3
Trigger2 = !enemynear,hitfall
value = 320

[State -1,Standing a]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=320) && (Animelem=11,>0)) && (movecontact)) || (Stateno=100)
Trigger1 = var(59)=0
Trigger1 = command != "DBA"
Trigger1 = command = "a"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<=25
Trigger2 = P2StateType!=A
Trigger2 = P2StateType!=L
Trigger2 = random<var(50)*2
Trigger2 = Helper(991),var(5)=0
value = 200

[State -1,Standing b]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=200) || (Stateno=400)|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact)) || (Stateno=100)
Trigger1 = var(59)=0
Trigger1 = command = "b"
Trigger2 = var(59)>0
Trigger2 = P2StateType!=L
Trigger2 = abs(P2BodyDist X)<=55
Trigger2 = abs(p2dist Y)<=60
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
Trigger2 = !enemynear,hitfall
value = 210

[State -1,Standing c]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact)) || ((Stateno=[150,155]) && (Statetype=S)) || (Stateno=100)
Trigger1 = var(59)=0
Trigger1 = command = "c"
Trigger2 = var(59)>0
Trigger2 = P2StateType!=L
Trigger2 = abs(P2BodyDist X)<=55
Trigger2 = abs(p2dist Y)<=60
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
Trigger2 = !enemynear,hitfall
value = 220

[State -1,P AI Air slash]
Type=ChangeState
Triggerall = StateType=A
Triggerall = ctrl || (Stateno=110) || ((Stateno=600) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "a"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<100
Trigger2 = P2dist Y=[-100,20]
Trigger2 = random<var(50)*1.4
value=600

[State -1, Air kick]
Type= ChangeState
value = 610
triggerall = ctrl || (Stateno=110)
triggerall = Statetype=A
trigger1 = command="b"
trigger1 = var(59)=0
trigger2 = var(59)>0
trigger2 = abs(P2BodyDist X)<80
trigger2 = P2Dist Y=[30,80]
trigger2 = random<var(50)*1.5
;trigger2 = P2StateType=C
trigger2 = Helper(991),var(5)=0

[State -1,P AI Air strong slash]
Type=ChangeState
Triggerall = StateType=A
Triggerall = ctrl || (Stateno=110) || ((Stateno=600) && (movecontact))
Trigger1 = var(59)=0
Trigger1 = command = "c"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<100
Trigger2 = P2dist Y=[-100,20]
Trigger2 = random<var(50)*1.4
value=620

[State -1,Planetary Rain]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = var(16)<=1000
Trigger1 = var(59)=0
Trigger1 = command = "DFY"
Trigger2 = var(59)>0
Trigger2 = var(16)<=800
Trigger2 = (abs(P2Dist X)<150) || (P2stateno=100) || (P2stateno=110)
Trigger2 = (enemynear,vel X>=-1)
Trigger2 = random<var(50)
Trigger2 = AiLevel>=5
trigger2 = !Inguarddist
Trigger2 = (Numhelper(1071)=0) || (P2stateno=100) || (P2stateno=110)
Trigger3 = var(59)>0
Trigger3 = var(16)<=800
Trigger3 = (abs(P2Dist X)<50)
Trigger3 = P2StateType=A
Trigger3 = random<var(50)*1.5
Trigger3 = AiLevel>=4
trigger3 = !Inguarddist
value = 1070

[State -1,DBA Spinning Slash]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = var(16)<=1000
Trigger1 = var(59)=0
Trigger1 = command = "DBA"
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)<=200
Trigger2 = random<var(50)
Trigger2 = Helper(991),var(5)=0
Trigger2 = !inguarddist
Trigger2 = AiLevel>=4
Trigger2 = var(16)<=800
value = 1000

[State -1,AI P Shot ]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = var(16)<=1000
Trigger1 = var(59)=0
trigger1 = command != "holddown"
Trigger1 = command = "y"
Trigger2 = var(16)<=800
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)=[90,140]
Trigger2 = random<var(50)
Trigger2 = P2StateType!=A
Trigger2 = P2StateType!=L
Trigger2 = P2STateNo!=[120,160]
Trigger2 = !Inguarddist
value = 1030

[State -1,AI P Shot ]
Type=ChangeState
;TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = var(16)<=1000
Trigger1 = var(59)=0
Trigger1 = command != "DFX"
Trigger1 = command = "x"
Trigger2 = var(16)<=800
Trigger2 = var(59)>0
Trigger2 = abs(P2BodyDist X)>90
Trigger2 = random<var(50)
Trigger2 = Statetype!=A
Trigger2 = P2StateType!=A
Trigger2 = P2StateType!=L
Trigger2 = P2STateNo!=[120,160]
Trigger2 = !Inguarddist
value = 1040

[State -1,Skydome]
Type=ChangeState
TriggerAll = StateType!=A
Triggerall = ctrl || (((Stateno=[200,210]) || (Stateno=[400,410])|| ((Stateno=320) && (Animelem=11,>0))) && (movecontact))
Triggerall = var(16)<=1000
Trigger1 = var(59)=0
Trigger1 = command = "DFX"
Trigger2 = var(59)>0
Trigger2 = var(16)<=800
Trigger2 = abs(P2Dist X)>60
Trigger2 = P2StateType=A
Trigger2 = (enemynear,vel X>=-1)
Trigger2 = !enemynear,hitfall
Trigger2 = random<var(50)
Trigger2 = AiLevel>=2
trigger2 = !Inguarddist
value = 1050

[State -1, AI Cosmic Debris]
type = ChangeState
triggerall = var(16) <= 1000
Triggerall = ctrl || (((Stateno=[200,250]) || (Stateno=[400,410]) || (Stateno=[600,601])) && (movecontact))
trigger1 = command = "y"
trigger1 = command = "holddown" || (Statetype=A)
trigger1 = var(59)=0
Trigger2 = abs(P2Dist X)=[45,95]
Trigger2 = P2Dist Y>-20
Trigger2 = random<var(50)
trigger2 = var(59)>0
trigger2 = var(16)<=800
trigger2 = !Inguarddist
value = IfElse(Pos Y<-50,1061,1060)

