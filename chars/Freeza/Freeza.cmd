[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1


;-| 2/3 Button Combination |-----------------------------------------------

[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

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


;-| Hold Button |--------------------------------------------------------
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


;-| CPU |----------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Super Motions |--------------------------------------------------------

;Barrage Death Beam
[Command]
name = "BDB"
command = ~D, DF, F, x+y

[Command]
name = "BDB"
command = ~D, DF, F, y+z


[Command]
name = "BDB"
command = ~D, DF, F, x+z

;Flaming Headbutt
[Command]
name = "FH"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "FH"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "FH"
command = ~D, DF, F, a+c
time = 20

;Death Ball
[Command]
name = "DB"
command = ~D, DB, B, x+y

[Command]
name = "DB"
command = ~D, DB, B, y+z

[Command]
name = "DB"
command = ~D, DB, B, x+z


;Jubaku-Ha
[command]
name = "JubakuHa"
command = ~D, DB, B, a+b

[command]
name = "JubakuHa"
command = ~D, DB, B, c+b

[command]
name = "JubakuHa"
command = ~D, DB, B, a+c

;-| Special Motions |------------------------------------------------------

;Double Kienzan
[Command]
name = "DK"
command = ~D, DB, B,  x
time = 20

;psychokinesis
[command]
name = "psy"
command = ~D, DB, B, y
time=15

;Explosive shot
[Command]
name = "EX"
command = ~D, DB, B, z
time = 20

;DeathBeam

[Command]
name = "DBX"
command = ~D, DF, F, x

[Command]
name = "DBY"
command = ~D, DF, F, y
[Command]
name = "DBZ"
command = ~D, DF, F, z

;Energy Slash


[Command]
name = "ES"
command = ~D, DB, B, x
time = 10

[Command]
name = "ES"
command = ~D, DB, B, y
time = 10

[Command]
name = "Es"
command = ~D, DB, B, z
time = 10


;Jasenkoh

[Command] 
name = "JasenkohA"
command = ~D, DF, F,  a
time = 20

[Command]
name = "JasenkohB"
command = ~D, DF, F,  b
time = 20

[Command]
name = "JasenkohC"
command = ~D, DF, F,  c
time = 20

[Command]
name = "AJasenkoh"
command = ~D, DF, F,  a

[Command]
name = "AJasenkoh"
command = ~D, DF, F,   b

[Command]
name = "AJasenkoh"
command = ~D, DF, F,  c


;Tail Slam 
[Command]
name = "TSA"
command = ~D, DB, B, a

[Command]
name = "TSB"
command = ~D, DB, B, b

[Command]
name = "TSC"
command = ~D, DB, B, c

;-| compass |--------------------------------------------------------------
[command]
name = "e"
command = /F,x
time = 15

[command]
name = "w"
command = /B,x
time = 15

[command]
name = "n"
command = /U,x
time = 15

[command]
name = "s"
command = /D,x
time = 15

[command]
name = "sw"
command = /DB,x
time = 15

[command]
name = "se"
command = /DF,x
time = 15

[command]
name = "nw"
command = /UB,x
time = 15

[command]
name = "ne"
command = /UF,x
time = 15
;-| compass |--------------------------------------------------------------
[command]
name = "e"
command = /F,y
time = 15

[command]
name = "w"
command = /B,y
time = 15

[command]
name = "n"
command = /U,y
time = 15

[command]
name = "s"
command = /D,y
time = 15

[command]
name = "sw"
command = /DB,y
time = 15

[command]
name = "se"
command = /DF,y
time = 15

[command]
name = "nw"
command = /UB,y
time = 15

[command]
name = "ne"
command = /UF,y
time = 15
;-| compass |--------------------------------------------------------------
[command]
name = "e"
command = /F,z
time = 15

[command]
name = "w"
command = /B,z
time = 15

[command]
name = "n"
command = /U,z
time = 15

[command]
name = "s"
command = /D,z
time = 15

[command]
name = "sw"
command = /DB,z
time = 15

[command]
name = "se"
command = /DF,z
time = 15

[command]
name = "nw"
command = /UB,z
time = 15

[command]
name = "ne"
command = /UF,z
time = 15

;-| compass |--------------------------------------------------------------
[command]
name = "e"
command = /F,a
time = 15

[command]
name = "w"
command = /B,a
time = 15

[command]
name = "n"
command = /U,a
time = 15

[command]
name = "s"
command = /D,a
time = 15

[command]
name = "sw"
command = /DB,a
time = 15

[command]
name = "se"
command = /DF,a
time = 15

[command]
name = "nw"
command = /UB,a
time = 15

[command]
name = "ne"
command = /UF,a
time = 15
;-| compass |--------------------------------------------------------------
[command]
name = "e"
command = /F,b
time = 15

[command]
name = "w"
command = /B,b
time = 15

[command]
name = "n"
command = /U,b
time = 15

[command]
name = "s"
command = /D,b
time = 15

[command]
name = "sw"
command = /DB,b
time = 15

[command]
name = "se"
command = /DF,b
time = 15

[command]
name = "nw"
command = /UB,b
time = 15

[command]
name = "ne"
command = /UF,b
time = 15
;-| compass |--------------------------------------------------------------
[command]
name = "e"
command = /F,c
time = 15

[command]
name = "w"
command = /B,c
time = 15

[command]
name = "n"
command = /U,c
time = 15

[command]
name = "s"
command = /D,c
time = 15

[command]
name = "sw"
command = /DB,c
time = 15

[command]
name = "se"
command = /DF,c
time = 15

[command]
name = "nw"
command = /UB,c
time = 15

[command]
name = "ne"
command = /UF,z
time = 15

[command]
name = "hopkick"
command = /F,b
time = 15

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1


;throw shouldersuplex

[Command]
name = "2k"
command = a+b
time = 5
[Command]
name = "2k"
command = b+c
time = 5
[Command]
name = "2k"
command = c+a
time = 5

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
command = x+a
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


;---------------------------------------------------------------------------
; 2. State entry
; --------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;--------------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

; You're boring.....
[State -1, random taunt]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random < 299
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5110 || p2stateno = 5020 || p2stateno = 5030

[State -1, Super Jump]
type = ChangeState
value = 40
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 2
trigger1 = stateno = 420 

[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)

[State -1,AI Air Dash]
type = ChangeState
value = 102
triggerall = var(59) != 0
triggerall = statetype != S
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)

[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3


;Recover
[State -1]
type = ChangeState
value = 5210
triggerall = var(59) != 0
triggerall = canrecover = 1 && roundstate =2
triggerall = random < 499
triggerall = alive
triggerall = time > 20
trigger1 = stateno = 5050

[State -1: Recovery Roll]
type = ChangeState
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) && prevstateno !=3010
triggerall = Pos Y >= -5
triggerall = time > 10
trigger1 = random < 499
value = 895

;===========================================================================
; AI Guard
;===========================================================================

[State -1]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(59)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100); chance is higher than for attacking, but not by too much.
value=120

[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;---------------------------------------------------------------------------
;AI Guard (Standing)
[State -1, AI Guard (Standing)]
type = ChangeState
value = 130
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Crouching)
[State -1, AI Guard (Crouching)]
type = ChangeState
value = 131
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,numproj = 1 
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype = C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Air)
[State -1, AI Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A

;---------------------------------------------------------------------------
;AI Guard Push (Air)
[State -1, Guard Push (Air)]
type = ChangeState
value = 173
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 154
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = A
ignorehitpause = 1

;---------------------------------------------------------------------------
;AI Guard Push (Crouch)
[State -1, Guard Push (Crouch)]
type = ChangeState
value = 172
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 152
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = C
ignorehitpause = 1

; Stand Still--If you win, STOP MOVING!!!
[State -1]
type = ChangeState
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ai misc
;---------------------------------------------------------------------------

;GROUND COMBO TIME

[State -1,1]
type = ChangeState
value = 400
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random < 499
trigger2 = (stateno=[100,101])
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 499


[State -1,1]
type = ChangeState
value = 200
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -50 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random < 499
trigger2 = (stateno=[100,101])
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 499

[State -1,1]
type = ChangeState
value = 230
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -50 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random < 499
trigger2 = (stateno=[100,101])
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 499


[State -1,2]
type = ChangeState
value = 430
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random < 499
trigger2 = (stateno=[100,101])
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 499


[State -1,3]
type = ChangeState
value = 440
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 400
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 210
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact

[State -1,1]
type = ChangeState
value = 225
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 210 
trigger1 = movecontact

[State -1,1]
type = ChangeState
value = 240
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 230 
trigger1 = movecontact

[State -1,1]
type = ChangeState
value = 250
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 240 
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 420
triggerall = var(59) != 0 && random < 499
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 440 || stateno = 210 || stateno = 430
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 1510
triggerall = var(59) != 0 && random < 499
triggerall = roundstate =2
triggerall = statetype = A 
trigger1 = stateno = 640 && movecontact 

[State -1,32]
type = ChangeState
value = 2500
triggerall = var(59) != 0 && random = 499
triggerall = roundstate =2
triggerall = statetype = S 
trigger1 = stateno = 220 || stateno = 210 
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 450
triggerall = var(59) != 0 && random = 499
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 440 || stateno = 210
trigger1 = movecontact
                                          
;Start Air Chain
[State -1,41]
type = ChangeState
value = 600
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = (random < (AILevel* 100))
trigger1 = p2bodydist x <= 65 && p2bodydist y = [-70,65]
trigger1 = vel y > 0 && p2statetype != A||p2statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 640 && random < 499
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 0  && roundstate =2
trigger1 = stateno = 640 && random < 499
trigger1 = movecontact >= 2

;===========================================================================
; AI Super Attempt
;===========================================================================

[State -1,32]
type = ChangeState
value = 2500
triggerall = var(59) != 0 &&  random < 499
triggerall = roundstate =2
triggerall = statetype = S 
trigger1 = stateno = 225 || stateno = 250 || stateno = 450 
trigger1 = movecontact 

[State -1,32]
type = ChangeState
value = 1340
triggerall = var(59) != 0 &&  random < 499
triggerall = roundstate =2
triggerall = statetype = S 
trigger1 = stateno = 225 || stateno = 250 || stateno = 450 
trigger1 = movecontact 

[State -1,32]
type = ChangeState
value = 1020
triggerall = var(59) != 0 &&  random < 499
triggerall = roundstate =2
triggerall = statetype = S 
trigger1 = stateno = 225 || stateno = 250 
trigger1 = movecontact 

[State -1,32]
type = ChangeState
value = 1100
triggerall = var(59) != 0 &&  random < 499
triggerall = roundstate =2
triggerall = statetype = S 
trigger1 = stateno = 225 || stateno = 250 
trigger1 = movecontact 

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)&& p2statetype = A && (random < 499)
trigger1 = (p2bodydist X <= 40)&&(EnemyNear, Pos Y > -50) 
trigger1 = (prevstateno != 5120) 
value = 1100

[State -1,32]
type = ChangeState
value = 1800
triggerall = var(59) != 0  
triggerall = roundstate =2
triggerall = statetype != A 
trigger1 = p2bodydist x = [200,300]
trigger1 = random < 100
trigger1 = ctrl = 1
trigger2 = stateno = 225 || stateno = 250 
trigger2 = movecontact 
trigger2 = enemynear, statetype != L && P2statetype != C



;;---------------------------------------------------------------------------
;
[State -1, 32]
type = ChangeState
value = 3000
triggerall = statetype = S && var(59) != 0 && random < 799
triggerall = movetype != H
triggerall = power >= 1000  
triggerall = stateno < 3000
trigger1 = stateno = 225 || stateno = 250 
trigger1 = movecontact 
trigger2 = p2bodydist x = [200,300]
trigger2 = random < 100
trigger2 = ctrl = 1
trigger3 = anim = 1301 
trigger3 = movecontact 
trigger4 = anim = 1201 
trigger4 = movecontact 
trigger5 = anim = 1020 
trigger5 = movecontact 
trigger6 = anim = 1100 
trigger6 = movecontact 
trigger7 = anim = 1302
trigger7 = movecontact 
;;---------------------------------------------------------------------------

;
[State -1]
type = ChangeState
value = 1020
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)&& p2statetype = A && ( random < 799) && enemynear, statetype != L
trigger1 = (p2bodydist X <= 100)&&(EnemyNear, Pos Y > -150) 
trigger1 = (prevstateno != 5120) 
;

;;---------------------------------------------------------------------------
;
[State -1, AI]
type = ChangeState
value = 3100
triggerall = statetype = A && var(59) != 0
triggerall = movetype != H 
triggerall = power >= 1000  
triggerall = stateno < 3100 
trigger1 = anim = 1200 && random > 799
trigger1 = movecontact


;HYPER COMBOS

[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 275
trigger6 = stateno = 1102


;Jubaku-Ha
[state -1]
type = changestate
value = 3200
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "JubakuHa"
trigger1 = ctrl
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]

;Barrage Death Beam
[State -1]
type = ChangeState
value = 3000
triggerall = command = "BDB"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]

;Death Ball
[State -1]
type = ChangeState
value = 3120
triggerall = !var(59) && !NumHelper(23120)
triggerall = command = "DB"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]



;Flamming HeadButt
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = alive && roundstate=2 && stateno != [800,999] 
triggerall = (command = "FH" && var(20)=0) || (var(20)=1 && (random/4) > life && (gametime%9)=0)
triggerall = !var(20) || (var(20) && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)))
trigger1 = ctrl || (stateno = [200,650])
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]
trigger4 = MoveContact && var(20)=1 && random > life && time % 4
ignorehitpause=1

;---------------------------------------------------------------------------;

;SUPERS

;Explosive Shot
[State -1]
type = ChangeState
value = 2500
triggerall = var(59)<=0
triggerall = command = "EX"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C 
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]


;Tail Slam
[State -1]
type = ChangeState
value = 1330
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "TSA"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = p2stateno != [715,717]


[State -1]
type = ChangeState
value = 1340
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "TSB"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = p2stateno != [715,717]

[State -1]
type = ChangeState
value = 1350
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "TSC"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = p2stateno != [715,717]


[State -1]
type = ChangeState
value = 1360
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "TSA"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = stateno = [600, 699]
trigger2 = movecontact


[State -1]
type = ChangeState
value = 1370
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "TSB"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = stateno = [600, 699]
trigger2 = movecontact


[State -1]
type = ChangeState
value = 1380
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "TSC"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = stateno = [600, 699]
trigger2 = movecontact


;Double Kienzan 
[State -1]
type = ChangeState
value = 1800
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "DK"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,699]

;Energy Slash
[state -1, a2]
type = changestate
value = 1510
triggerall = command = "ES"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

;psychokinesis
[State -1 ]
type=ChangeState
value=1100
triggerall=!AILevel && RoundState=2 && StateType != A 
triggerall = command="psy"
trigger1 = ctrl
trigger2 = (stateno = [200,450])&&stateno!=420&&movecontact

;Jasenkoh
[state -1, a2]
type = changestate
value = 1405
triggerall = command = "AJasenkoh"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]


[State -1]
type = ChangeState
value = 1400
triggerall = command = "JasenkohA"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]


[State -1]
type = ChangeState
value = 1410
triggerall = command = "JasenkohB"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]


[State -1]
type = ChangeState
value = 1420
triggerall = command = "JasenkohC"
trigger1 = ctrl
trigger1 = statetype = S || StateType = C
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;Death Beam

[state - 1, death beam]
type = changestate
value = 1000
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "DBY"
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = p2stateno != [715,717]


[state - 1, death beam]
type = changestate
value = 1010
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "DBX"
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = p2stateno != [715,717]


[state - 1, death beam]
type = changestate
value = 1020
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "DBZ"
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger2 = p2stateno != [715,717]

; Aerial Death Beam
[State -1]
type = ChangeState
value = 1030
triggerall = var(59) < 1
triggerall = command = "DBY"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = stateno = [600, 699]
trigger2 = movecontact

; Aerial Death Beam
[State -1]
type = ChangeState
value = 1040
triggerall = var(59) < 1
triggerall = command = "DBX"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = stateno = [600, 699]
trigger2 = movecontact

; Aerial Death Beam
[State -1]
type = ChangeState
value = 1050
triggerall = var(59) < 1
triggerall = command = "DBZ"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = stateno = [600, 699]
trigger2 = movecontact

;---------------------------------------------------------------------------;
; Run Forward
[State -1, Run Forward]
type = changestate
value = 100
triggerall = var(59) = 0
triggerall = statetype != a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl

;run Fwd
[state -1, run Fwd]
type = changestate
value = 102
triggerall = statetype = a
triggerall = var(59) = 0
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl

;---------------------------------------------------------------------------;
; Dash Forwar---------------------------------------------------------;
; Back Dash
[State -1, Back Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "BB"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 105

;---------------------------------------------------------------------------;
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------
; Throw Attack
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;----------------------


;stand light punch
[state -1]
type = changestate
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;stand strong punch
[state -1]
type = changestate
value = 225
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact
;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
;---------------------------------------------------------------------------
;standing medium kick
[state -1]
type = changestate
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 210 && movecontact
trigger10 = stateno = 225 && movecontact
;---------------------------------------------------------------------------
;taunt
;’§”­
[state -1, taunt]
type = changestate
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 440 && movecontact
trigger7 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = stateno = 440 && movecontact
trigger8 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 225 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 210 && movecontact
;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact
trigger4 = stateno = 100000

;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = stateno = 100000
;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = stateno = 100000
;---------------------------------------------------------------------------
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact



; Push Block (Stand)
[State -1]
type = ChangeState
value = 171
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 172
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 173
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = var(59) = 0
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = var(59) = 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1


;launcher
[state -1]
type = changestate
value = 275
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddownfwd"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

