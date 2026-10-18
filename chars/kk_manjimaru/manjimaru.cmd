;-| Super Motions |-------------------------
[Command]
name = "kszskdda"
command =D,F,D,B, a
time = 30

[Command]
name = "kszskddy"
command =D,F,D,B, y
time = 30

[Command]
name = "kszskddx"
command =D,F,D,B, x
time = 30

[Command]
name = "kszskdfdfx"
command =D,F,D,F, x
time = 30

[Command]
name = "kszskdfdfx1"
command =D,F,D,F, y
time = 30

[Command]
name = "kszskdfdfx2"
command =D,F,D,F, z
time = 30

[Command]
name = "kszskddz"
command =D,F,D,B, z
time = 30

[Command]
name = "kszskdda"
command =D,F,D,B, a
time = 30

[Command]
name = "kszskddb"
command =D,F,D,B, b
time = 30

[Command]
name = "kszskdbdfx"
command =D,B,D,F, x
time = 30

[Command]
name = "kszskdbdfa"
command =D,B,D,F, a
time = 30

;-| Special Motions |-----------------------
[Command]
name = "kszskdfz"
command = D,F, z
time = 30

[Command]
name = "kszskdfy"
command = D,F, y
time = 30

[Command]
name = "kszskdfx"
command = D,F, x
time = 30

[Command]
name = "kszskuux"
command = ~U,U, x
time = 30

[Command]
name = "kszskuux1"
command = ~U,U, y
time = 30

[Command]
name = "kszskuux2"
command = ~U,U, z
time = 30

[Command]
name = "kszskuux3"
command = F,F, x
time = 20

[Command]
name = "kszskuux4"
command = F,F, y
time = 20

[Command]
name = "kszskuux5"
command = F,F, z
time = 20

[Command]
name = "kszskfa+y"
command = /F, a+y
time = 1

[Command]
name = "kszskfx"
command = /F, x
time = 1

[Command]
name = "kszskfx"
command = /F, y
time = 1

[Command]
name = "kszskfx"
command = /F, z
time = 1

[Command]
name = "kszskfa"
command = /F, a
time = 1

[Command]
name = "kszskfa"
command = /F, b
time = 1

[Command]
name = "kszskfa"
command = /F, c
time = 1

;-| Double Tap |------------------------------
[Command]
name = "ffd"
command = x+y
time = 20

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |---------------------
[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "kszska+y"
command = a+y
time = 1

;-| Dir + Button |---------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------
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
name = "kszskjian"
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

;-| Hold Dir |-------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdfwds";Required (do not remove)
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

;----------------------------------
[Statedef -1]
;----------------------------------
;AI
[State -1]
type = Helper
trigger1 = NumHelper(99999) = 0
name = "AI"
pos = 999,999
stateno = 99999
keyctrl = 1
pausemovetime = 999999999999999999999999999
id = 99999

;----------------------------------
[State -1]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = p2movetype != A
triggerall = p2statetype != L
triggerall = P2bodydist X >= 40
trigger1 = stateno = 0
trigger1 = stateno != 100
trigger1 = ctrl 

;----------------------------------
[State -1]
type = ChangeState
trigger1 = Var(59)
trigger1 = Ctrl
trigger1 = StateType = S
trigger1 = P2StateType = C
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 70
value = 10

[State -1]
type = ChangeState
trigger1 = Var(59)
trigger1 = Ctrl
trigger1 = StateType = C
trigger1 = P2StateType = A
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 70
value = 12

[State -1]
type = ChangeState
trigger1 = Var(59)
trigger1 = Ctrl
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
trigger1 = PrevStateNo != 151
trigger1 = PrevStateNo != 152
trigger1 = PrevStateNo != 153
;trigger1 = PrevStateNo != 380
;trigger1 = PrevStateNo != 390
value = 121

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
triggerall = Var(33) = 0
triggerall = command = "kszskdbdfa"
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3800

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
triggerall = Var(33) = 0
triggerall = command = "kszskdbdfx"
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3700

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3600
trigger1 = power = 1000
triggerall = Var(33) = 0
triggerall = command = "kszskddb"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3500
trigger1 = power = 1000
triggerall = Var(33) = 1
triggerall = command = "kszskdda"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3400
trigger1 = power = 1000
triggerall = Var(33) = 0
triggerall = command = "kszskddz"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3400
trigger1 = power = 1000
triggerall = Var(33) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,20]
trigger1 = p2bodydist y = [0,70]
trigger1 = p2statetype =s

;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3300
trigger1 = power = 1000
triggerall = Var(33) = 0
triggerall = command = "kszskdda"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3200
trigger1 = power = 1000
triggerall = Var(33) = 0
triggerall = command = "kszskddy"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3100
trigger1 = power = 1000
triggerall = Var(33) = 0
triggerall = command = "kszskddx"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 3000
trigger1 = power = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskdfdfx"
trigger1 = life < 200
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3000
trigger1 = power = 1000
triggerall = Var(33) = 0
trigger1 = life < 200
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(59)

[State -1, Stand Light Punch]
type = ChangeState
value = 3003
trigger1 = power = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = life < 200
triggerall = command = "kszskdfdfx1"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3003
trigger1 = power = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = life < 200
triggerall = command = "kszskdfdfx1"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(59)

[State -1, Stand Light Punch]
type = ChangeState
value = 3004
trigger1 = power = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = life < 200
triggerall = command = "kszskdfdfx2"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3004
trigger1 = power = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = life < 200
triggerall = command = "kszskdfdfx2"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(59)

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 1108
triggerall = Var(33) = 0
triggerall = command = "kszskdfz"
trigger1 = stateno = 1107
trigger1 = time >= 16

[State -1, Stand Light Punch]
type = ChangeState
value = 1107
triggerall = Var(33) = 0
triggerall = command = "kszskdfz"
trigger1 = stateno = 1106
trigger1 = time >= 17

[State -1, Stand Light Punch]
type = ChangeState
value = 1106
triggerall = Var(33) = 0
triggerall = command = "kszskdfz"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1106
triggerall = Var(33) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,40]
trigger1 = p2statetype =s

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 1105
triggerall = Var(33) = 0
triggerall = command = "kszskdfy"
trigger1 = stateno = 1104
trigger1 = time >= 19

[State -1, Stand Light Punch]
type = ChangeState
value = 1104
triggerall = Var(33) = 0
triggerall = command = "kszskdfy"
trigger1 = stateno = 1103
trigger1 = time >= 19

[State -1, Stand Light Punch]
type = ChangeState
value = 1103
triggerall = Var(33) = 0
triggerall = command = "kszskdfy"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1103
triggerall = Var(33) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,20]
trigger1 = p2statetype =s

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 1102
triggerall = Var(33) = 0
triggerall = command = "kszskdfx"
trigger1 = stateno = 1101
trigger1 = time >= 19

[State -1, Stand Light Punch]
type = ChangeState
value = 1101
triggerall = Var(33) = 0
triggerall = command = "kszskdfx"
trigger1 = stateno = 1100
trigger1 = time >= 20

[State -1, Stand Light Punch]
type = ChangeState
value = 1100
triggerall = Var(33) = 0
triggerall = command = "kszskdfx"
triggerall = statetype != A
trigger1 = ctrl

;-------------------------------------
[state -1]
type = changestate
trigger1 = stateno = 1106
trigger1 = movecontact
trigger1 = var(59)
value = 1107

[state -1]
type = changestate
trigger1 = stateno = 1107
trigger1 = var(59)
value = 1108
trigger1 = time >= 20

;-------------------------------------
[state -1]
type = changestate
trigger1 = stateno = 1103
trigger1 = movecontact
trigger1 = var(59)
value = 1104

[state -1]
type = changestate
trigger1 = stateno = 1104
trigger1 = var(59)
value = 1105
trigger1 = time >= 20

;-------------------------------------
[state -1]
type = changestate
trigger1 = stateno = 1100
trigger1 = movecontact
trigger1 = var(59)
value = 1101

[state -1]
type = changestate
trigger1 = stateno = 1101
trigger1 = var(59)
value = 1102
trigger1 = time >= 20

;-------------------------------------

[State -1, Stand Light Punch]
type = ChangeState
value = 700
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszska+y"
trigger1 = statetype = A
triggerall = Var(33) = 0
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskuux"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,70]
trigger1 = p2statetype =s

[State -1, Stand Light Punch]
type = ChangeState
value = 1003
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskuux1"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1003
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,110]
trigger1 = p2statetype =s

[State -1, Stand Light Punch]
type = ChangeState
value = 1004
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskuux2"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1004
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,220]
trigger1 = p2statetype =s

[State -1, Stand Light Punch]
type = ChangeState
value = 1000
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskuux3"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1003
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskuux4"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1004
;trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "kszskuux5"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1004
;trigger1 = vel x
triggerall = Var(33) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(59)
trigger1 = p2bodydist x = [0,220]
trigger1 = p2statetype =s

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 340
triggerall = Var(33) = 0
triggerall = command = "kszskfa+y"
trigger1 = stateno = 100 
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10340
triggerall = Var(33) = 1
triggerall = command = "kszskfa+y"
trigger1 = stateno = 100 
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 350
triggerall = Var(33) = 0
triggerall = command = "kszskfx"
trigger1 = stateno = 100 
trigger1 = ctrl = 1

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10350
triggerall = Var(33) = 1
triggerall = command = "kszskfx"
trigger1 = stateno = 100 
trigger1 = ctrl = 1

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 360
triggerall = Var(33) = 0
triggerall = command = "kszskfa"
trigger1 = stateno = 100 
trigger1 = ctrl = 1

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10360
triggerall = Var(33) = 1
triggerall = command = "kszskfa"
trigger1 = stateno = 100 
trigger1 = ctrl = 1

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 320
triggerall = Var(33) = 0
triggerall = command = "kszska+y"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10320
triggerall = Var(33) = 1
triggerall = command = "kszska+y"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10320
triggerall = Var(33) = 1
triggerall = command = "kszska+y"
trigger1 = statetype = C
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 330
triggerall = Var(33) = 0
triggerall = command = "kszska+y"
trigger1 = statetype = c
trigger1 = ctrl
;-----------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 1110
trigger1 = statetype = s
triggerall = stateno = 100 && ctrl
trigger1 = command = "holddown"

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = Var(33) = 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 2
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 3
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 804
triggerall = Var(33) = 1
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 2
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 3
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;-------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = Var(33) = 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 2
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 3
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 805
triggerall = Var(33) = 1
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 2
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 3
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 260
triggerall = Var(33) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 270
triggerall = Var(33) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10270
triggerall = Var(33) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 280
triggerall = Var(33) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10280
triggerall = Var(33) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 290
triggerall = Var(33) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10290
triggerall = Var(33) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = Var(33) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10300
triggerall = Var(33) = 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 310
triggerall = Var(33) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10310
triggerall = Var(33) = 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl

;-------------------------------------
[State -2, 1.3] 
type = changestate 
trigger1 = var(35) = 1 && command = "x" 
trigger1 = statetype = S
trigger1 = ctrl
value = 704

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10260
triggerall = Var(33) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
triggerall = Var(33) = 0
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
triggerall = Var(33) = 1
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = Var(33) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 10210
triggerall = Var(33) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = Var(33) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = Var(33) = 0
triggerall = command = "x+y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 10220
triggerall = Var(33) = 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(33) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 10230
triggerall = Var(33) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = Var(33) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 10240
triggerall = Var(33) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(33) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(33) = 0
triggerall = command = "a+b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 10250
triggerall = Var(33) = 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Var(33) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(33) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
triggerall = Var(33) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = Var(33) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10410
triggerall = Var(33) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Var(33) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10420
triggerall = Var(33) = 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Var(33) = 0
triggerall = command = "x+y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10420
triggerall = Var(33) = 1
triggerall = command = "x+y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(33) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-----------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 10430
triggerall = Var(33) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-----------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = Var(33) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10440
triggerall = Var(33) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(33) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10450
triggerall = Var(33) = 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(33) = 0
triggerall = command = "a+b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10450
triggerall = Var(33) = 1
triggerall = command = "a+b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10610
trigger1 = vel x
triggerall = Var(33) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10600
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 660
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10610
trigger1 = vel x
triggerall = Var(33) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 680
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10680
trigger1 = vel x
triggerall = Var(33) = 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10690
trigger1 = vel x
triggerall = Var(33) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = command = "kszska+y"
trigger1 = statetype = A
triggerall = Var(33) = 0
trigger1 = ctrl
;-------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
trigger1 = vel x
triggerall = Var(33) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10640
trigger1 = vel x
triggerall = Var(33) = 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(33) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
triggerall = Var(33) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = Var(33) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 10610
triggerall = Var(33) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Var(33) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 10610
triggerall = Var(33) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(33) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 10630
triggerall = Var(33) = 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = Var(33) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10640
triggerall = Var(33) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 670
triggerall = Var(33) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 10670
triggerall = Var(33) = 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------
[state -1]
type = ChangeState
value = 23
;triggerall = Var(33) = 0
trigger1 = statetype = C && ctrl
triggerall = command = "holdfwd"

;-------------------------------------