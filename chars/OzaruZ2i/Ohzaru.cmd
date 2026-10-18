
;-| Remap Values |-------------------------------------------------------

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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1 ;1

[command]
name = "SUPER1"
command = ~D, DF, F, D, DF, x
time = 30

[command]
name = "SUPER1"
command = ~D, DF, F, D, DF, y
time = 30

[command]
name = "SUPER1"
command = ~D, DF, F, D, DF, z
time = 30

;--------------AI commands
[Command]
name = "AI1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI2"
command = D,D,D,F,F,U,F,B,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "AI20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "AI21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "AI22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "AI24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI25"
command = D,D,D,F,F,DF,a,b,c+x+y+z
time = 1

[Command]
name = "AI26"
command = D,D,D,F,F,B,a+b,c+x,y+z
time = 1

[Command]
name = "AI27"
command = D,D,D,F,F,DB,a,b+c+x,y+z
time = 1

[Command]
name = "AI28"
command = D,D,D,F,F,UB,a,b+c+x+y,z
time = 1

[Command]
name = "AI29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI30"
command = DB,D,D,B,U,B,a+b+c+x+y+z
time = 1

[Command]
name = "qcfx"
command = ~D, DF, F, x
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
[Command]
name = "qcfy"
command = ~D, DF, F, y
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
[Command]
name = "qcfz"
command = ~D, DF, F, z
[Command]
name = "qcfz"
command = ~D, DF, F, ~z

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
time = 1
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z
time = 1
[Command]
name = "qcf2p"
command = ~D, DF, F, z+x
time = 1

[Command]
name = "emotion"
command = D, D, y+b
time = 30

;-| Super Motions |--------------------------------------------------------

[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, x+y
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, ~x+y
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, y+z
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, ~y+z
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, z+x
time = 20
[Command]
name = "2qcfx"
command = ~D, DF, F, D, DF, ~z+x
time = 20

[command]
name = "SPECIAL 1"
command = ~D, $B, F, x
time = 20

[command]
name = "SPECIAL 2"
command = ~D, DF, F, D, DF, a
time = 20

[command]
name = "SPECIAL 2"
command = ~D, DF, F, D, DF, b
time = 20

[command]
name = "SPECIAL 2"
command = ~D, DF, F, D, DF, c
time = 20

[command]
name = "SPECIAL 3"
command = D,DB,B, a+x
time = 20

[command]
name = "SPECIAL 3"
command = D,DB,B, y+b
time = 20

[command]
name = "SPECIAL 3"
command = D,DB,B, c+z
time = 20

[command]
name = "SPECIAL 4"
command = ~D, $B, F, x
time = 20

[command]
name = "SPECIAL 4"
command = ~D, $B, F, y
time = 20

[command]
name = "SPECIAL 4"
command = ~D, $B, F, z
time = 20

[command]
name = "SPECIAL 5"
command = ~D, DB, B, D, DB, a
time = 20

[command]
name = "SPECIAL 5"
command = ~D, DB, B, D, DB, b
time = 20

[command]
name = "SPECIAL 5"
command = ~D, DB, B, D, DB, c
time = 20

[command]
name = "SPECIAL 6"
command = ~D, DB, B, D, DB, x
time = 20

[command]
name = "SPECIAL 6"
command = ~D, DB, B, D, DB, y
time = 20

[command]
name = "SPECIAL 6"
command = ~D, DB, B, D, DB, z
time = 20

;-| Hold Button |--------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "f2p"
command = $F, x+y
;time = 1
[Command]
name = "f2p"
command = $F, x+z
;time = 1
[Command]
name = "f2p"
command = $F, y+z
;time = 1

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
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "nothing"
command = b+y
time = 1
[Command]
name = "down_a"
command = /$D,a
time = 1
[Command]
name = "down_b"
command = /$D,b
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
name = "holds"
command = /s
time = 1
[Command]
name = "QCF_A"
command = ~D, F, a
time = 10
[Command]
name = "QCF_B"
command = ~D, F, b
time = 10
[Command]
name = "QCF_C"
command = ~D, F, c
time = 10
[Command]
name = "QCF_X"
command = ~D, F, x
time = 10
[Command]
name = "QCF_Y"
command = ~D, F, y
time = 10
[Command]
name = "QCF_Z"
command = ~D, F, z
time = 10
[Command]
name = "QCB_A"
command = ~D, B, a
time = 10
[Command]
name = "QCB_B"
command = ~D, B, b
time = 10
[Command]
name = "QCB_C"
command = ~D, B, c
time = 10
[Command]
name = "QCB_X"
command = ~D, B, x
time = 10
[Command]
name = "QCB_Y"
command = ~D, B, y
time = 10
[Command]
name = "QCB_Z"
command = ~D, B, z
time = 10
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
[Command]
name = "ufire"
command = /UF
time = 1
[Command]
name = "dfire"
command = /DF
time = 1
[Command]
name = "bufire"
command = /UB
time = 1
[Command]
name = "bdfire"
command = /DB
time = 1
[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback";
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

[Command]
name = "superjump"     ;Required (do not remove)
command = $D, U
time = 10

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = $D, UF
time = 10

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = $D, UB
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Statedef -1]

;---------------------------------------------------------------------------
; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = var(5) = 0
triggerall = stateno != 60
triggerall = stateno != 70
value = 60
trigger1 = command = "FF"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = var(5) = 0
triggerall = stateno != 60
triggerall = stateno != 70
value = 70
trigger1 = command = "BB"
trigger1 = ctrl

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

[State -1, Activate AI]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
value = 1
var(59)=1

[State -1, Kill AI]
type = VarSet
triggerall = var(59)=1
trigger1 = life < 0
trigger2 = winko
trigger3 = loseko
value = 0
v = 59

; Slashing Chop (aka Focus Attack)
[State -1, Slashing Chop]
type = ChangeState
triggerall = AILevel<=0
;triggerall = roundstate = 2
triggerall = stateno !=[1300,1302]
triggerall = stateno != 106
;triggerall = command = "hold_z" && command = "hold_c"
triggerall = command = "z" && command = "c"
trigger1 = statetype = S
trigger1 = ctrl
value = 1300

[State -1]
type = ChangeState
triggerall = (command = "2qcfx") 
triggerall = statetype != A  
triggerall = power >= 3000 
trigger1 = Ctrl
value = 3000

;Ki Blast (Light) 1
[State -1, Ki Blast (Light)]
type = ChangeState
;triggerall = roundstate = 2
triggerall = (command = "qcfx") || (command = "qcfy") || (command = "qcfz")
triggerall = statetype != A  && !WinKo
trigger1 = ctrl	
value = 202

;ex Ki Blast
[State -1, ex Ki Blast]
type = ChangeState
;triggerall = roundstate = 2
triggerall = command = "qcf2p" 
triggerall = power >= 500
triggerall = statetype != A 
trigger1 = ctrl	
value = 204

;===========================================================================
;SPECIALS:
;===========================================================================
; Gorilla Press
[State -1, Gorilla Press]
type = ChangeState
Triggerall = power >= 1000
value = 1000
triggerall = command = "SPECIAL 1"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Super Explosive Wave
[State -1, Super Explosive Wave]
type = ChangeState
Triggerall = power >= 1000
value = 1100
triggerall = command = "SPECIAL 2"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rock Throw
[State -1, Rock Throw]
type = ChangeState
Triggerall = power >= 1000
value = 1200
triggerall = command = "SPECIAL 3"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Gorilla Catch
[State -1, Gorilla Catch]
type = ChangeState
Triggerall = power >= 1000
value = 1321
triggerall = command = "SPECIAL 4"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Chou Makouhou
[State -1, Chou Makouhou]
type = ChangeState
Triggerall = power >= 1000
value = 1400
triggerall = command = "SPECIAL 5"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Chou Makouhou Barrage
[State -1, Chou Makouhou Barrage]
type = ChangeState
Triggerall = power >= 1000
value = 1500
triggerall = command = "SPECIAL 6"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, Slashing Chop]
type = ChangeState
triggerall = command = "emotion"
triggerall = var(53) = 0
trigger1 = power = powermax
trigger1 = statetype != A
trigger1 = ctrl
value = 9000

[State -1, Slashing Chop]
type = ChangeState
triggerall = command = "emotion"
triggerall = var(53) = 900
trigger1 = statetype != A
trigger1 = ctrl
value = 3100

;Power Charge
[State -1]
type = ChangeState
triggerall = AILevel<=0 && var(52)<=0
triggerall = var(53)=0 ;No rage mode
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = Power < 3000
triggerall = stateno != 900
triggerall = Ctrl
;trigger1 = command = "b" && command = "y"
trigger1 = command = "hold_b" && command = "hold_y"
value = 900

[State -1, Super Jump Straight Up]
type = ChangeState
value = 10231
triggerall = ctrl
triggerall= AIlevel<=0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjump"

[State -1, Super Jump Forward]
type = ChangeState
value = 10232
triggerall = ctrl
triggerall= AIlevel<=0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjumpforward"

[State -1, Super Jump Backward]
type = ChangeState
value = 10233
triggerall = ctrl
triggerall= AIlevel<=0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjumpbackward"

;---------------------------------------------------------------------------
;Z Counter - Ground
[State -1, Z Counter - Ground]
type = ChangeState
trigger1 = !AILevel
trigger1 = StateNo=150 || StateNo=152
;trigger1 = command="rdpx" || command="rdpy" || command="rdpz" || command="rdpa" || command="rdpb" || command="rdpc"
trigger1 = command="f2p"
trigger1 = RoundState=2 && power>=1000 && StateType!=A
value = 750

[State -1]
type            = ChangeState
value      = 210
triggerall = StateType != A
triggerall      = (command = "y")
trigger1        = (ctrl)
[State -1]
type            = ChangeState
value      = 210
triggerall = StateType != A
triggerall      = (command = "b")
trigger1        = (ctrl)

[State -1]
type            = ChangeState
value      = 200
triggerall = StateType != A
triggerall      = (command = "x")
trigger1        = (ctrl)

[State -1]
type            = ChangeState
value      = 200
triggerall = StateType != A
triggerall      = (command = "a")
trigger1        = (ctrl)

[State -1]
type            = ChangeState
value      = 211
triggerall = StateType != A
triggerall      = (command = "z")
trigger1        = (ctrl)

[State -1]
type            = ChangeState
value      = 211
triggerall = StateType != A
triggerall      = (command = "c")
trigger1        = (ctrl)



;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------------
[State -1, Guard]
type=changestate
value=120
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155])&& !(enemynear,ctrl) && enemynear,Movetype=A
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 250+(25*var(54)), ifelse((p2stateno=[1000,2999]), 650+(25*var(54)), 1000))
trigger2= ctrl && p2bodydist x<=-5
[State -1, Guard]
type = ChangeState
value = 120
triggerall = stateno != 2000
triggerall = stateno != 2400
triggerall = stateno != 2401
triggerall = stateno != 2403
triggerall= var(59)>=1 && var(54)>=3 && numenemy&& StateNo!=[120,155]
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A
trigger1 = inguarddist
;-------------------------------------------------------------------------
; Standing Low Punch
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = var(59)=1
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = p2bodydist x <=55
triggerall = p2bodydist y = [-70,5]
triggerall = statetype != A
triggerall = random < 500
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439])&& movehit
trigger1 = random < 250
trigger1 = p2bodydist x <= 40
;---------------------------------------------------------------------------
;Standing High Punch
[State -1, Standing High Punch AI]
type = ChangeState
value = 211
TRIGGERALL = stateno != 211
triggerall = roundstate=2
triggerall = p2statetype != A
triggerall = var(59)=1 && p2statetype != L
triggerall = statetype != A
trigger1 = (stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449])&& movehit
trigger1 = random < 550
trigger1 = p2bodydist x >= 50

[State -1, AI Walk Fwd]
type = ChangeState
value = 20
triggerall = var(59)=1
triggerall = stateno != 20 && stateno != 100
triggerall = statetype != A && ctrl && POS Y = 0
trigger1 = p2bodydist x >= 10 && random < 800
trigger1 = p2bodydist y = [-20,5]
trigger1 = p2movetype != A
trigger2 = (p2bodydist x = [10,110])
trigger2 = p2bodydist y = [-20,5]
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = random < 700
trigger2 = (enemy,facing = facing)
trigger3 = p2bodydist x >= 10 && random < 800
trigger3 = p2bodydist y = [-20,5]
trigger3 = p2movetype != A
trigger3 =(enemy,stateno = [120,155]) || moveguarded

[State -1, AI Walk Fwd Stop]
type = ChangeState
triggerall = var(59)=1
triggerall = stateno = 20 ;|| stateno = 100
trigger1 = P2movetype = A && (enemy,facing != facing)
trigger2 = p2bodydist x < 4
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59)=1 && (Statetype = S) && (ctrl = 1)
trigger1 = p2dist x < 50
trigger1 = power >= 3000
trigger1 = p2STATEtype != L
value = 3000
