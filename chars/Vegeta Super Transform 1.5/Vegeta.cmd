[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]

; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;---------------------------------------------------------------------------
[Command]
name = "Da"     ;Required (do not remove)
command = D,a
time = 20

[Command]
name = "DFa"     ;Required (do not remove)
command = D,F,a
time = 20

[Command]
name = "DBa"     ;Required (do not remove)
command = D,B,a
time = 20

[Command]
name = "Db"     ;Required (do not remove)
command = D,b
time = 20

[Command]
name = "DFb"     ;Required (do not remove)
command = D,F,b
time = 20

[Command]
name = "DBb"     ;Required (do not remove)
command = D,B,b
time = 20

[Command]
name = "Dc"     ;Required (do not remove)
command = D,c
time = 20


[Command]
name = "Dx"     ;Required (do not remove)
command = D,x
time = 20


[Command]
name = "Dy"     ;Required (do not remove)
command = D,y
time = 20


[Command]
name = "Dz"     ;Required (do not remove)
command = D,z
time = 20

[Command]
name = "Ds"     ;Required (do not remove)
command = D,s
time = 20

[Command]
name = "teleport"     ;Required (do not remove)
command = /$F,z
time = 10

[Command]
name = "teleport2"     ;Required (do not remove)
command = /$F,z
time = 10

[Command]
name = "kaijo"
command = ~D, D, s
time = 20

[Command]
name = "kaijo2"
command = ~D, D, s+x
time = 20

[Command]
name = "kaijo3"
command = ~D, D, s+y
time = 20

[Command]
name = "kaijo4"
command = ~D, D, s+a
time = 20

[Command]
name = "kaijo5"
command = ~D, D, s+b
time = 20
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20


[Command]
name = "recovery";Required (do not remove)
command = x+y
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
;---------------------------------------------------------------------------
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
;---------------------------------------------------------------------------
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
name = "holds";Required (do not remove)
command = /s
time = 1


[Command]
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
time = 1

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
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -3, AI???????]
type=helper
TriggerAll=RoundState<2||(RoundState=2&&ctrl)
Trigger1=!NumHelper(96600)
Trigger1=alive
Trigger1=var(59)<=0
helpertype=normal
name="AI"
stateno=96600
ID=96600
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0


[State -3, ?????????????]
type=changestate
Trigger1= ishelper
trigger1= ishelper(96600)
Trigger1= stateno!=96600
value=96600

[State -1, AI??]
Type = VarSet
TriggerAll = var(59) = 0
TriggerAll= RoundState<2 || (RoundState=2&&ctrl)
Trigger1 = Command = "AI0"
Trigger2 = Command = "AI1"
Trigger3 = Command = "AI2"
Trigger4 = Command = "AI3"
Trigger5 = Command = "AI4"
Trigger6 = Command = "AI5"
Trigger7 = Command = "AI6"
Trigger8 = Command = "AI7"
Trigger9 = Command = "AI8"
Trigger10 = Command = "AI9"
Trigger11 = Command = "AI10"
Trigger12 = Command = "AI11"
Trigger13 = Command = "AI12"
Trigger14 = Command = "AI13"
Trigger15 = Command = "AI14"
Trigger16 = Command = "AI15"
Trigger17 = Command = "AI16"
Trigger18 = Command = "AI17"
Trigger19 = Command = "AI18"
Trigger20 = Command = "AI19"
Trigger21 = Command = "AI20"
Trigger22 = Command = "AI21"
Trigger23 = Command = "AI22"
Trigger24 = Command = "AI23"
Trigger25 = Command = "AI24"
Trigger26 = Command = "AI25"
Trigger27 = Command = "AI26"
Trigger28 = Command = "AI27"
Trigger29 = Command = "AI28"
Trigger30 = Command = "AI29"
Trigger31 = Command = "AI30"
Trigger32 = Command = "AI31"
Trigger33 = Command = "AI32"
Trigger34 = Command = "AI33"
Trigger35 = Command = "AI34"
Trigger36 = Command = "AI35"
Trigger37 = Command = "AI36"
Trigger38 = Command = "AI37"
Trigger39 = Command = "AI38"
Trigger40 = var(59)=0
Trigger40 = numhelper(96600)
Trigger40 = helper(96600),var(59)>0
trigger41 = ctrl
trigger41 = var(58) = 1 
trigger42 = ctrl
trigger42 = var(58) = 2
trigger42 = PalNo >= 2
var(59) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1,Da]
type = ChangeState
value = 6150
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Da"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,DFa]
type = ChangeState
value = 6220
triggerall = var(10) = 0
triggerall = command = "DFa"
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,DBa]
type = ChangeState
value = 6230
triggerall = var(10) = 0
triggerall = command = "DBa"
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Db]
type = ChangeState
value = 6160
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Db"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,DFb]
type = ChangeState
value = 6240
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DFb"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,DBb]
type = ChangeState
value = 6250
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DBb"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,Dc]
type = ChangeState
value = 6170
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Dc"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dx]
type = ChangeState
value = 6180
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Dx"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Dy]
type = ChangeState
value = 6190
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dy"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,Dz]
type = ChangeState
value = 6200
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Dz"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6050
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6050
;---------------------------------------------------------------------------
[State -1,a]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = time > 10
trigger1 = stateno = 6055
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6075
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6070
;---------------------------------------------------------------------------
[State -1,b]
type = ChangeState
value = 6080
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = time > 10
trigger1 = stateno = 6075
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6090
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6095
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 10
trigger1 = stateno = 6090
;---------------------------------------------------------------------------
[State -1,x]
type = ChangeState
value = 6100
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = time > 10
trigger1 = stateno = 6095
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6110
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6115
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6110
;---------------------------------------------------------------------------
[State -1,y]
type = ChangeState
value = 6120
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = time > 10
trigger1 = stateno = 6115
;---------------------------------------------------------------------------
[State -1,c]
type = ChangeState
value = 6140
triggerall = var(10) = 0
triggerall = power >= 100
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Aa]
type = ChangeState
value = 6130
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Ab]
type = ChangeState
value = 6135
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,FF]
type = ChangeState
value = 100
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,BB]
type = ChangeState
value = 105
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,AFF]
type = ChangeState
value = 6005
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,ABB]
type = ChangeState
value = 6006
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Fz]
type = ChangeState
value = 6007
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Bz]
type = ChangeState
value = 6008
triggerall = var(10) = 0
triggerall = command = "holdback"
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Power Up]
type = ChangeState
value = 6010
triggerall = var(10) = 0
triggerall = power < 7000
trigger1 = command =  "hold_a" && command = "hold_x"
trigger1 = statetype = S
trigger1 = ctrl

; ??
[State -1]
type = ChangeState
value = 195
triggerall = var(10) = 0
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1,Legend TTA]
type = ChangeState
value = 6500
triggerall = var(7) = 0
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl


[State -1,Legend TTA]
type = ChangeState
value = 6700
triggerall = var(7) = 1
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Legend TTA]
type = ChangeState
value = 7000
triggerall = var(7) = 2
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,Legend TTA]
type = ChangeState
value = 7002
triggerall = var(7) = 3
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,Legend TTA]
type = ChangeState
value = 7003
triggerall = var(7) = 4
triggerall = var(10) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Kick
[State -1, Crouching Kick]
type = ChangeState
value = 6111
triggerall = var(10) = 0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype != S
trigger1 = ctrl

;---------------------------------------------------------------------------
;SSGSSBE
[State -1, teleport A7]
type = ChangeState
triggerAll = stateno= 0
triggerAll = Var(7) = 5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)   ;P2 is attacking, character is standing
   trigger1 = p2bodydist X <= 50                               ;P2 is less than or equal to 6150 away on the x-axis,
   trigger1 = random <= 6180                                     ;perform this move 79% of the time*
   value = 776008





[State -1, ????????]
type = ChangeState
value = 10014
TriggerAll = Var(59) <= 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "kaijo"
trigger1 = var(10) = 1

[State -1, ??]
type = ChangeState
value = 10010
TriggerAll = Var(59) <= 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "kaijo5"
trigger1 = var(7) = 3
trigger2 = command = "kaijo4"
trigger2 = var(7) = 2
trigger3 = command = "kaijo"
trigger3 = var(7) = 1

[State -1, ?????]
type = ChangeState
value = 10011
TriggerAll = Var(59) <= 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "kaijo4"
trigger1 = var(7) = 3
trigger2 = command = "kaijo"
trigger2 = var(7) = 2

[State -1, ?????2]
type = ChangeState
value = 10012
TriggerAll = Var(59) <= 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "kaijo"
trigger1 = var(7) = 3





;AI by elmorooo
;---------------------------------------------------------------------------
[State -1, AI on]
type = VarSet
triggerAll = var(10) < 1
triggerAll = RoundState = 2
trigger1 = AILevel > 0
v = 10
value = 1

[State -1, AI OFF]
type = VarSet
trigger1 = var(10) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
v = 10
value = 0
;---------------------------------------------------------------------------
[State -1,ai Da]
type = ChangeState
value = 6150
triggerall = var(10) = 1
triggerall = power >= 1000 
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 70
trigger1 = (p2dist x) < 150
;---------------------------------------------------------------------------
[State -1,ai DFa]
type = ChangeState
value = 6220
triggerall = var(10) = 1
trigger1 = AILevel > 0 
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
[State -1,ai DBa]
type = ChangeState
value = 6230
triggerall = var(10) = 1
trigger1 = AILevel > 0
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
[State -1,ai Db]
type = ChangeState
value = 6160
triggerall = var(10) = 1
triggerall = power >= 1000 
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 70
trigger1 = (p2dist x) < 150
;---------------------------------------------------------------------------
[State -1,ai DFb]
type = ChangeState
value = 6240
triggerall = var(10) = 1
trigger1 = AILevel > 0
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 20
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100

[State -1,ai DBb]
type = ChangeState
value = 6250
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= -100
trigger1 = (p2dist x) < 100

;---------------------------------------------------------------------------
[State -1,ai Dc]
type = ChangeState
value = 6170
triggerall = var(10) = 1
triggerall = power >= 2000 
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
[State -1,ai Dx]
type = ChangeState
value = 6180
triggerall = var(10) = 1
triggerall = power >= 2000 
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 50
trigger1 = (p2dist x) < 200
;---------------------------------------------------------------------------
[State -1,ai Dy]
type = ChangeState
value = 6190
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 100

[State -1,ai Dz]
type = ChangeState
value = 6200
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 10
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,Fz]
type = ChangeState
value = 6500
triggerall = var(7) = 0
triggerall = var(10) = 1
triggerall = life < lifemax/2
triggerall = roundstate =2 
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl



[State -1,Fz]
type = ChangeState
value = 6700
triggerall = var(7) = 1
triggerall = var(10) = 1
triggerall = life < lifemax/2
triggerall = roundstate =2
trigger1 = AILevel > 0 
trigger1 = statetype = S
trigger1 = ctrl



[State -1,Fz]
type = ChangeState
value = 7000
triggerall = var(7) = 2
triggerall = var(10) = 1
triggerall = life < lifemax/2
triggerall = roundstate =2
trigger1 = AILevel > 0 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,aB]
type = ChangeState
value = 7002
triggerall = var(7) = 3
triggerall = var(10) = 1
triggerall = life <= 1000
triggerall = roundstate =2
trigger1 = AILevel > 0 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,Xc]
type = ChangeState
value = 7003
triggerall = var(7) = 4
triggerall = var(10) = 1
triggerall = life <= 1000
triggerall = roundstate =2
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,ai a]
type = ChangeState
value = 6050
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 75
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
[State -1,ai b]
type = ChangeState
value = 6070
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 75
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
[State -1,ai x]
type = ChangeState
value = 6090
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 75
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
[State -1,ai y]
type = ChangeState
value = 6110
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = AILevel > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 75
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
[State -1,ai c]
type = ChangeState
value = 6140
triggerall = var(10) = 1
triggerall = power >= 100
triggerall = roundstate =2
trigger1 = AILevel > 0 
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = (random%100) < 40
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
[State -1,ai Aa]
type = ChangeState
value = 6130
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = AILevel > 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 75
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 75
;---------------------------------------------------------------------------
[State -1,ai Ab]
type = ChangeState
value = 6135
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = AILevel > 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = (random%100) < 75
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 75
;---------------------------------------------------------------------------
[State -1,ai Fz]
type = ChangeState
value = 6007
triggerall = var(10) = 1
triggerall = roundstate =2 
trigger1 = AILevel > 0
trigger1 = ctrl
trigger1 = (random%100) < 50
trigger1 = (p2dist x) >= 150
;---------------------------------------------------------------------------

[State -1,ai Power up]
type = ChangeState
value = 6010
triggerall= AILevel && fvar(27)<=0 && numenemy && RoundState=2 && StateType!=A
triggerall= power<const(data.power) && Movetype!=A && enemynear,Movetype!=A && !(enemynear,ctrl)
triggerall=  power < const(data.power) && power < powermax 
triggerall= !inguarddist && p2bodydist x>=140 && ceil(random<50*(AILevel**2/64.0))
triggerall = StateNo != 900
trigger1=(enemynear,Movetype=H||enemynear,StateType=L)
trigger2=enemynear,vel x<0 
trigger3=enemynear,StateNo=[120,155]

[State -1, CPU???????]
type = Turn
triggerall = roundstate = 2
triggerall = var(10) = [1,2]
trigger1   = P2BodyDist X < -6180
trigger1   = statetype != A
trigger1   = stateno = [6180,440]
trigger1   = Time = 1

