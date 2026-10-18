; The CMD file.

;Default Version
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;Reverse Version
;[Remap]
;x = a
;y = b
;z = c
;a = x
;b = y
;c = z
;s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

[Command]
name = "throw"
command = x+y
time = 1

[Command]
name = "FBF_xy"
command = ~F, B, F, x+y
time = 20

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
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y
time = 10

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
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_yz"
command = ~D, DB, B, y+z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DD_x"
command = D, D, x

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "Hjump"
command = $D,$U
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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
;---------------------------------------------------------------------------
; 2. State entry

[Statedef -1]

[State 0, Hyper Combination]
type = ChangeState
value = 4005
triggerall = Statetype != A
triggerall = Power >= 1000
triggerall = roundstate = 2
triggerall = Numpartner
triggerall = Partner,Name = "BlackScaleMoussambani"
triggerall = Partner,Authorname = "Dronekiller"
triggerall = abs(Partner,Pos X - Pos X) = [-300,300]
triggerall = abs(Partner,Pos Y - Pos Y) = [-300,300]
triggerall = Partner,Alive
triggerall = Partner,Stateno = 4005
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger3 = stateno = [400,420]
trigger4 = stateno = [120,160]
ignorehitpause = 1

[State 0, Hyper Combination]
type = ChangeState
value = 4005
triggerall = var(59) = 0
triggerall = command = "FBF_xy"
triggerall = roundstate = 2
triggerall = Statetype != A
triggerall = Power >= 1000
triggerall = Numpartner
;triggerall = (Life < Lifemax*.5) || (Partner,Life < Partner,Lifemax*.5)
triggerall = Partner,Name = "BlackScaleMoussambani"
triggerall = Partner,Authorname = "Dronekiller"
triggerall = var(50) < 1
triggerall = abs(Partner,Pos X - Pos X) = [-300,300]
triggerall = abs(Partner,Pos Y - Pos Y) = [-300,300]
triggerall = Partner,Alive
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

[State 0, Hyper Combination]
type = ChangeState
value = 4005
triggerall = var(59) > 0
triggerall = Random < var(58) * 0.2
triggerall = Numpartner
triggerall = ID < Partner,ID
triggerall = roundstate = 2
triggerall = Statetype != A
triggerall = Power >= 1000
;triggerall = (Life < Lifemax*.5) || (Partner,Life < Partner,Lifemax*.5)
triggerall = Partner,Name = "BlackScaleMoussambani"
triggerall = Partner,Authorname = "Dronekiller"
triggerall = var(50) = 0
triggerall = abs(Partner,Pos X - Pos X) = [-300,300]
triggerall = abs(Partner,Pos Y - Pos Y) = [-300,300]
triggerall = Partner,Movetype != H
triggerall = Partner,Alive
triggerall = Partner,Var(59) > 0
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

[State 0, Sing a Song]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "upper_xy"
triggerall = Statetype != A
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

[State 0, Sing a Song]
type = ChangeState
value = 3300
triggerall = var(59) > 0
triggerall = Statetype != A
triggerall = AILevel > 2
triggerall = Power >= 2000
triggerall = Random < var(58)*0.2
trigger1 = P2Bodydist X > 100
trigger1 = P2movetype!=A
trigger1 = (Life < lifemax*0.5) && Life < P2life
trigger1 = ctrl

trigger2 = Numpartner
trigger2 = (Partner,Life < Partner,lifemax*0.5) && Partner,Life < P2life
;trigger2 = Random < var(58)*0.3
trigger2 = ctrl

trigger3 = Life < lifemax
trigger3 = power >= 4000
trigger3 = stateno = 220
trigger3 = Movecontact
;trigger3 = Random < var(58)*0.4

trigger4 = Numpartner
trigger4 = (Partner,Life < Partner,lifemax)
trigger4 = power >= 4000
;trigger4 = Random < var(58)*0.6
trigger4 = stateno = 220
trigger4 = Movecontact

trigger5 = Life < lifemax
trigger5 = power >= 4000
;trigger5 = Random < var(58)*0.6
trigger5 = stateno = 420
trigger5 = Movecontact

trigger6 = Numpartner
trigger6 = (Partner,Life < Partner,lifemax)
trigger6 = power >= 4000
;trigger6 = Random < var(58)*0.6
trigger6 = stateno = 420
trigger6 = Movecontact

[State 0, Rapid Bomb]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "QCB_yz"
;triggerall = Statetype != A
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact
trigger4 = stateno = [600,620]
trigger4 = Movecontact

[State 0, Rapid Bomb]
type = ChangeState
value = 3200
triggerall = var(59) > 0
triggerall = AILevel > 2
triggerall = statetype != A
triggerall = !Inguarddist && P2Stateno != [120,160]
triggerall = P2Bodydist X < 70
triggerall = p2bodydist Y = [-40,5]
triggerall = random < var(58) * 0.1 + (Numtarget(630)>0)*1.1
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = p2statetype = L && p2stateno = [5101,5110]
;trigger1 = random < var(58) * 0.3 + (p2life=[1,200]) + (Numtarget(630)>0)*2.1
trigger2 = stateno = 420
trigger2 = Movehit
trigger2 = p2life=[1,100]
;trigger2 = random < var(58) * 0.4 + (p2life=[1,200])
trigger3 = stateno = 420
trigger3 = Movehit
trigger3 = p2life=[1,100]
;trigger3 = random < var(58) * 0.6 + (p2life=[1,200])

[State 0, Jellyfish Invasion]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "QCB_xy"
triggerall = Statetype != A
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact
trigger4 = Stateno = 1201
trigger4 = Movecontact

[State 0, Jellyfish Invasion]
type = ChangeState
value = 3100
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = !Inguarddist && P2Stateno != [120,160]
triggerall = Statetype != A
triggerall = Power >= 2000
triggerall = random < var(58) * 0.1 + (Numtarget(630)>0)*1.1
trigger1 = p2statetype != L
trigger1 = ctrl
trigger1 = P2Bodydist X = [-300,300]
trigger1 = p2bodydist Y = [-200,10]
trigger1 = p2stateno!=[120,160]
;trigger1 = random < var(58) * 0.35 + (Numtarget(800)>0)*2
trigger2 = p2statetype != L
trigger2 = stateno = 220
trigger2 = Movehit
;trigger2 = random < var(58) * 0.36
trigger2 = p2life = [1,150]
trigger3 = p2statetype != L
trigger3 = stateno = 420
trigger3 = Movehit
;trigger3 = random < var(58) * 0.37
trigger3 = p2life = [1,150]
trigger4 = Stateno = 1201
trigger4 = Movehit
;trigger4 = random < var(58) * 0.38

[State 0, Wave Attack]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "QCF_xy"
triggerall = Statetype != A
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact
trigger4 = Stateno = 1201
trigger4 = Movecontact

[State 0, Wave Attack]
type = ChangeState
value = 3000
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = P2Bodydist X < 200
triggerall = p2bodydist Y = [-90,5]
triggerall = !Inguarddist && P2Stateno != [120,160]
triggerall = Statetype != A
triggerall = Power >= 1000
triggerall = random < var(58) * 0.1 + (Numtarget(630)+Numtarget(1201)+Numtarget(1221)>0)*1.1
trigger1 = ctrl
trigger1 = p2stateno != [120,160]
trigger2 = stateno = 220
trigger2 = Movehit
;trigger2 = random < var(58) * 0.3 + (Numtarget(220)>0)
trigger3 = stateno = 420
trigger3 = Movehit
;trigger3 = random < var(58) * 0.3 + (Numtarget(420)>0)
trigger4 = Stateno = 1201
trigger4 = Movehit
;trigger4 = random < var(58) * 0.3 + (Numtarget(1201)>0)

[State -1, Fall Attack Healing]
type = ChangeState
value = 1221
triggerall = var(59) = 0
triggerall = command = "QCB_z"
triggerall = Statetype != A
triggerall = power>=500
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

[State -1, Fall Attack Bomb]
type = ChangeState
value = 1211
triggerall = var(59) = 0
triggerall = command = "QCB_y"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

[State -1, Fall Attack]
type = ChangeState
value = 1201
triggerall = var(59) = 0
triggerall = command = "QCB_x"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact


[State -1, Fall Attack]
type = ChangeState
value = Ifelse( life < lifemax &&  power>=500&& random>800, 1221 , Ifelse( random<300, 1211,1201))
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = P2Bodydist X < 100
triggerall = p2bodydist Y = [-40,5]
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = ctrl
trigger1 = P2Statetype = L
;trigger1 = p2stateno = [5101,5110]
trigger1 = random < var(58) * 0.5 + (Numtarget(630)+Numtarget(1221)>0)*2.1
trigger2 = random < var(58) * 0.7 + (Numtarget(220)>0)*0.4
trigger2 = stateno = 220
trigger2 = Movehit
trigger2 = p2statetype != L
trigger3 = random < var(58) * 0.7 + (Numtarget(420)>0)*0.4
trigger3 = stateno = 420
trigger3 = Movehit
trigger3 = p2statetype != L

[State -1, Jellyfish Attack 3]
type = ChangeState
value = 1004 + (Statetype = A)
triggerall = var(59) = 0
triggerall = command = "QCF_z"
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact
trigger4 = stateno = [600,620]
trigger4 = Movecontact

[State -1, Jellyfish Attack 3]
type = ChangeState
value = 1004 + (Statetype = A)
triggerall = var(59) > 0
triggerall = !var(57)
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = ctrl
trigger1 = random < var(58) * 0.3 + (Numtarget(630)+Numtarget(800)+Numtarget(830)>0)*2
trigger1 = Abs(p2bodydist Y) < 300
trigger1 = P2Bodydist X < 300
trigger1 = Ifelse( Statetype = A ,(P2Bodydist X = [P2Bodydist Y-50,P2Bodydist Y+50]),P2Bodydist X < 200)

[State -1, Jellyfish Attack 2]
type = ChangeState
value = 1002 + (Statetype = A)
triggerall = var(59) = 0
triggerall = command = "QCF_y"
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact
trigger4 = stateno = [600,620]
trigger4 = Movecontact

[State -1, Jellyfish Attack 2]
type = ChangeState
value = 1002 + (Statetype = A)
triggerall = var(59) > 0
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
triggerall = !var(57)
trigger1 = ctrl
trigger1 = random < var(58) * 0.3 + (Numtarget(800)>0)*2.1
trigger1 = Abs(p2bodydist Y) < 300
trigger1 = P2Bodydist X < 300
trigger1 = P2Bodydist X = [-P2Bodydist Y-50,-P2Bodydist Y+50]

[State -1,Jellyfish Attack]
type = ChangeState
value = 1000 + (Statetype = A)
triggerall = var(59) = 0
triggerall = command = "QCF_x"
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact
trigger4 = stateno = [600,620]
trigger4 = Movecontact

[State -1,Jellyfish Attack]
type = ChangeState
value = 1000 + (statetype = A)
triggerall = var(59) > 0
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = !var(57)
trigger1 = ctrl
trigger1 = random < var(58) * 0.4 + (Numtarget(800)>0)
trigger1 = P2Bodydist X = [170,300]
trigger1 = P2Bodydist Y = [-180,100]

[State -1,Jellyfish Attack in Combo]
type = ChangeState
value = Ifelse(random<300,1004,Ifelse(random>700,1002,1000))+ statetype = A
triggerall = var(59) > 0
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = random < var(58) * 1.1 + (Numtarget(220)>0)*0.5
trigger1 = stateno = 220
trigger1 = Movehit
trigger1 = P2Bodydist X < 13
trigger2 = random < var(58) * 1.1 + (Numtarget(420)>0)*0.5
trigger2 = stateno = 420
trigger2 = Movehit
trigger2 = P2Bodydist X < 13

[State 0, ChangeState]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "holdup"
trigger1 = time > 15
trigger1 = stateno = 1000 || stateno = 1002  || stateno = 1004
value = 40

[State 0, ChangeState]
type = ChangeState
triggerall = var(59) > 0
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = time > 25
trigger1 = stateno = 1000 || stateno = 1002  || stateno = 1004
trigger1 = random < var(58) * 2.1
trigger2 = Statetype!= A
trigger2 = Numtarget(800)
trigger2 = random < var(58) * 3.1
trigger2 = Ctrl
value = 40

[State -1, Taunt Evade]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall = command = "DD_x"
triggerall = Statetype != A
triggerall = stateno!=1500
trigger1 = ctrl
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

[State -1, Taunt Evade]
type = ChangeState
value = 1500
triggerall = var(59) > 0
triggerall = Statetype != A
triggerall = inguarddist
triggerall = random < var(58) * 0.2
triggerall = stateno!=1500
trigger1 = ctrl
trigger1 = P2Dist X < 150
trigger2 = stateno = [200,220]
trigger2 = Movecontact
trigger3 = stateno = [400,420]
trigger3 = Movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = Stateno !=100
trigger1 = var(59) > 0
trigger1 = !Inguarddist
trigger1 = p2bodydist X > 100
trigger1 = statetype = S
trigger1 = P2Movetype!=A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 830
triggerall = var(59) = 0
triggerall = command = "throw"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, Throw]
type = ChangeState
value = 830
triggerall = var(59) > 0
triggerall = statetype = A
triggerall = stateno != 100
trigger1 = random < var(58) * 0.8 + (P2Stateno = [120,160])
trigger1 = P2Bodydist X < 15
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = AIlevel > 2
trigger2 = random < var(58) * 1.1 + (P2Stateno = [120,160])
trigger2 = stateno = 600
trigger2 = moveguarded
trigger3 = AIlevel > 5
trigger3 = random < var(58) * 0.4 + (Numtarget(600)>0) + (P2Stateno = [120,160])
trigger3 = stateno = 600
trigger3 = movecontact

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "throw"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 200
trigger2 = movecontact

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = random < var(58) * 0.3 + (P2Stateno = [120,160])
trigger1 = P2Bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = AIlevel > 2
trigger2 = random < var(58) * 1.1 + (P2Stateno = [120,160])
trigger2 = stateno = 200
trigger2 = moveguarded
trigger3 = AIlevel > 5
trigger3 = random < var(58) * 0.4 + (Numtarget(200)>0) + (P2Stateno = [120,160])
trigger3 = stateno = 200
trigger3 = movecontact


[State -1, Throw]
type = ChangeState
value = 40
triggerall = var(59)< 1
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = [200,220]
trigger1 = movecontact
trigger2 = stateno = [400,420]
trigger2 = movecontact
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) > 0
triggerall = random < var(58)*1.1 + (Numtarget(800)>0)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = P2Bodydist X < 20
triggerall = p2bodydist Y = [-50,10]
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 
trigger2 = Movecontact

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = P2Bodydist X < 32
trigger1 = p2bodydist Y = [-255,10]
trigger1 = random < var(58)*0.6 + (Numtarget(200)+ (Numtarget(800)>0))
trigger1 = ctrl

trigger2 = random < var(58)*3.1 + (Numtarget(200)>0)
trigger2 = stateno = 200
trigger2 = Movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && Movecontact
trigger3 = (stateno = 210) && Movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = P2Bodydist X < 32
trigger1 = p2bodydist Y = [-250,10]
trigger1 = random < var(58)*0.6+(Numtarget(200)+Numtarget(210)+ (Numtarget(800)>0))
trigger1 = ctrl
trigger2 = random < var(58)*3.1+(Numtarget(210))
trigger2 = (stateno = 210) && Movecontact
trigger2 = P2statetype != A

;---------------------------------------------------------------------------
[State -1, Stand Launcher]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,220]
trigger3 = movecontact
trigger3 = stateno = [400,420]

[State -1, Stand Launcher]
type = ChangeState
value = 230
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = P2Bodydist X <= 35
trigger1 = p2bodydist Y = [-50,10]
trigger1 = random < var(58) * 0.1 + (Numtarget(800)>0)
trigger1 = P2stateno != [120,160]
trigger1 = ctrl
trigger2 = random < var(58) * 2.1 + (Numtarget(220)>0)
trigger2 = movehit
trigger2 = stateno = 220
trigger3 = random < var(58) * 2.1 + (Numtarget(420)>0)
trigger3 = movehit
trigger3 = stateno = 420


[State 0, ChangeState]
type = ChangeState
triggerall = var(59) = 0
trigger1 = command = "Hjump"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = time > 7
trigger2 = movehit
trigger2 = stateno = 230
value = 41

[State 230, 3]
type = ChangeState
triggerall = var(59) > 0
triggerall = statetype != A
trigger1 = stateno  = 230 || Numtarget(230)
trigger1 = movehit && time > 8
trigger1 = var(57)>0
value = 41

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = P2Bodydist X < 30
trigger1 = p2bodydist Y = [-30,5]
trigger1 = IFelse(p2statetype = C,(P2stateno != [120,160]),1)
trigger1 = ctrl
trigger1 = random < var(58) * 1.1
trigger2 = random < var(58) * 2+(Numtarget(200)>0)
trigger2 = AIlevel > 2
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]

trigger1 = P2Bodydist X < 36
trigger1 = p2bodydist Y = [-30,10]
trigger1 = IFelse(p2statetype = C,(P2stateno != [120,160]),1)
trigger1 = random < var(58) * 1.1
trigger1 = ctrl

trigger2 = random < var(58) * 2.1+Numtarget(400)
trigger2 = stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact

[State -1, Crouch High Kick]
type = ChangeState
value = 420
triggerall = var(59) > 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = P2Bodydist X < 40
trigger1 = p2bodydist Y = [-35,5]
trigger1 = ctrl
trigger1 = IFelse(p2statetype = C,(P2stateno != [120,160]),1)
trigger1 = random < var(58)*0.8

trigger2 = random < var(58) * 2+(Numtarget(410)>0)
trigger2 = stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Attack]
type = ChangeState
value = 600
triggerall = var(59) > 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]

trigger1 = random < var(58) * 0.8 + (Numtarget(800))*2.1
trigger1 = P2Bodydist X < 23
trigger1 = p2bodydist Y = [-55,40]
trigger1 = ctrl
trigger1 = prevstateno!= 41
trigger1 = !var(57)

trigger2 = var(57)>0
trigger2 = time > 9
trigger2 = (prevstateno= 41 || Numtarget(230)) && stateno = 50

[State -1, Jump Medium Attack]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, Jump Medium Attack]
type = ChangeState
value = 610
triggerall = var(59) > 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]
trigger1 = P2Bodydist X < 35
trigger1 = p2bodydist Y = [-60,40]
trigger1 = IFelse((P2stateno = [120,160]) ,P2statetype = C , 1)
trigger1 = random < var(58) * 1.1+ (Numtarget(600) + Numtarget(800) >0)
trigger1 = stateno = 600
trigger1 = ctrl
trigger1 = !var(57)

trigger2 = stateno = 600
trigger2 = movecontact
trigger2 = var(57)>0

[State -1, Jump Hard Attack]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610] 
trigger2 = movecontact

[State -1, Jump Hard Attack]
type = ChangeState
value = 620
triggerall = var(59) > 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]

trigger1 = P2Bodydist X < 36
trigger1 = p2bodydist Y = [-40,75]
trigger1 = IFelse((P2stateno = [120,160]) ,P2statetype = C , 1)
trigger1 = random < var(58) * 0.8+ (Numtarget(800))
trigger1 = stateno = 610
trigger1 = movecontact && animelemtime(5)>=0
trigger1 = !var(57)

;trigger2 = random < var(58) * 2.1 + (Numtarget(610)>0)
trigger2 = stateno = 610
trigger2 = movecontact && animelemtime(5)>=0
trigger2 = var(57) > 0

[State -1, Jump Launch Attack]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,620] 
trigger2 = movecontact

[State -1, Jump Launch Attack]
type = ChangeState
value = 630
triggerall = var(59) > 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = !Inguarddist && P2Stateno != [120,160]

trigger1 = IFelse((P2stateno = [120,160]) ,P2statetype = C , 1)
trigger1 = P2Bodydist X <= 36
trigger1 = p2bodydist Y = [-35,40]
trigger1 = random < var(58) * 0.7
trigger1 = !Var(57)
trigger1 = ctrl

trigger2 = var(57)>0
trigger2 = stateno = 620
trigger2 = movehit

[State 0, Guard]
type = ChangeState
trigger1 = Var(59)>0
trigger1 = Inguarddist
trigger1 = random<(var(58)*2+(AILevel>=3)*30)
trigger1 = ctrl
value = 120

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = Inguarddist
trigger1 = AILevel >= 3
trigger1 = random<var(58)*10
trigger2 = AILevel >= 6
trigger2 = P2Movetype = A
trigger3 = Numtarget
trigger3 = AIlevel > 2
flag = nowalk

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = stateno!= [120,163]
trigger1 = Var(59)>0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 58
value = (AILevel=1)*7 + (AILevel=2)*12  + (AILevel=3)*26  + (AILevel=4)*35 + (AILevel=5)*50 + (AILevel=6)*75 + (AILevel=7)*87 + (AILevel=8)*200
[State 0, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = roundstate = 2
v = 59
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = !AILevel
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, Reset]
type = VarSet
trigger1 = var(57) > 0
trigger1 = movetype = H
trigger2 = var(57) > 2
trigger2 = statetype != A
v = 57
value = 0

[State -1, Air Launch Detect]
type = VarSet
trigger1 = (Stateno = 230 && movehit)
trigger1 = p2movetype = H
v = 57
value = 1

[State -1, AI Jump Detect]
type = VarSet
trigger1 = AILevel > 2
trigger1 = prevstateno = 230
trigger1 = stateno = [40,41]
trigger2 = var(57) = 1
v = 57
value = 2

[State -1, AI Air Combo Detect]
type = VarSet
trigger1 = AILevel > 2
trigger1 = prevstateno = [40,41]
trigger1 = stateno = 50
trigger2 = var(57) = 2
v = 57
value = 3