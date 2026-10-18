



;-| AI Commands |----------------------------------------------------------

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
command.time=10
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
name="start"
command=/s
time=1

[Command]
name ="forward_y"
command = /$F,y
time = 1

[Command]
name ="forward_b"
command = /$F,b
time = 1

[Command]
name ="forward_x"
command = /$F,x
time = 1

[Command]
name ="forward_c"
command = /$F,c
time = 1

[Command]
name ="forward_a"
command = /$F,a
time = 1

[Command]
name ="forward_z"
command = /$F,z
time = 1

;===================<DIR>===================
[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1


;===================<SUPER MOTIONS>===================

;===================<SPECIAL MOTIONS>===================
[Command]
name = "Special #4"
command = ~D,F,x+y

[Command]
name = "Special #1"
command = ~D,F,x

[Command]
name = "Special #1b"
command = ~D,F,y

[Command]
name = "Special #2"
command = ~D,B,a

[Command]
name = "Special #2"
command = ~D,B,b

[Command]
name = "Special #3"
command = ~D,B,y

[Command]
name = "Special #3"
command = ~D,B,x


;===================<OTHER>===================



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



;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

;-----------------------------------------------------------------------
; Special #4
[State -1, Special #4]
type = ChangeState
value = 1040
triggerall = command = "Special #4"
triggerall = power >= 1500
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)

;[State -1, Special #4 AI]
;type = ChangeState
;value = 1040
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = power >= 1000
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != A ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = S ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 200 || stateno = 230)
;trigger3 = movecontact && (stateno = 400 || stateno = 430)

;---------------------------------------------------------------------------
;Grab 4
[State -1, Grab 4]
type = ChangeState
value = 820
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------
;Grab 2
[State -1, Grab 2]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------
;Grab
[State -1, Grab]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;-----------------------------------------------------------------------
; Special #3
[State -1, Special #3]
type = ChangeState
value = 1020
triggerall = command = "Special #3"
triggerall = power >= 1000 
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)

;[State -1, Special #3 AI]
;type = ChangeState
;value = 1020
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = power >= 1000
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != A ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = S ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 200 || stateno = 230)
;trigger3 = movecontact && (stateno = 400 || stateno = 430)

;-----------------------------------------------------------------------
; Special #2
[State -1, Special #2]
type = ChangeState
value = 1010
triggerall = command = "Special #2"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)


[State -1, Special #2]
type = ChangeState
value = 1011
triggerall = command = "Special #2"
trigger1 = statetype = A && ctrl

;type = ChangeState
;value = 1010
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = power >= 1000
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != A ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = S ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 200 || stateno = 230)
;trigger3 = movecontact && (stateno = 400 || stateno = 430)

;-----------------------------------------------------------------------
; Special #1
[State -1, Special #1]
type = ChangeState
value = 1000
triggerall = command = "Special #1" & numproj < 1
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)

[State -1, Special #1]
type = ChangeState
value = 1001
triggerall = command = "Special #1b" & numproj < 1
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)

;[State -1, Special #1 AI]
;type = ChangeState
;value = 1000
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = power >= 1000
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != A ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = S ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 200 || stateno = 230)
;trigger3 = movecontact && (stateno = 400 || stateno = 430)

;------------------------------------------------------------------
; Jump Whip
[State -1, Jump Whip]
type = ChangeState
value = 630
triggerall = command = "b" && statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600 || stateno = 630)

;[State -1, Jump Whip 2 AI]
;type = ChangeState
;value = 630
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != S ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = A ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 600 || stateno = 630)

;---------------------------------------------------------------------
; Jump Whip 
[State -1, Jump Whip]
type = ChangeState
value = 620
triggerall = command = "y" && statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 610 || stateno = 640)

;[State -1, Jump Whip AI]
;type = ChangeState
;value = 620
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != S ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = A ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 610 || stateno = 640)

;-----------------------------------------------------------------
; Jump Kick
[State -1, Jump Kick]
type = ChangeState
value = 610
triggerall = command = "a" && statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600 || stateno = 630)

;[State -1, Jump Kick AI]
;type = ChangeState
;value = 610
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != S ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = A ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 600 || stateno = 630)

;------------------------------------------------------------------
; Jump Punch
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "x" && statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600 || stateno = 630)

;[State -1, Jump Punch AI]
;type = ChangeState
;value = 600
;triggerall = AIlevel ; Applied if AI is activated
;triggerall = random <= AIlevel*70 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
;triggerall = p2bodydist x = [0,30] ; Distance trigger as explained above
;triggerall = P2StateType != L ;Move should occur if p2statetype is not lying down
;trigger1 = statetype != S ;Can't do this move in AIR to prevent bugs in AI
;trigger1 = statetype = A ; Has to stand to activate move
;trigger1 = ctrl ; AI is in control
;trigger2 = movecontact && (stateno = 600 || stateno = 630)

;---------------------------------------------------------------------
; Crouching Whip 2
[State -1, Crouching Whip 2]
type = ChangeState
value = 430
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)


;----------------------------------------------------------------------
; Crouching Whip
[State -1, Crouching Whip]
type = ChangeState
value = 420
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = movecontact && (stateno = [210,220])
trigger3 = movecontact && (stateno = [240,250])
trigger4 = movecontact && (stateno = 410)
trigger5 = movecontact && (stateno = [440,450])


;---------------------------------------------------------------------
; Crouching Kick
[State -1, Crouching Kick]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = movecontact && (stateno = [200,210])
trigger3 = movecontact && (stateno = [230,240])
trigger4 = movecontact && (stateno = 400)
trigger5 = movecontact && (stateno = [430,440])



[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)

;-----------------------------------------------------------------------
; Stand Kick 2
[State -1, Stand Kick 2]
type = ChangeState
value = 211
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl




;-----------------------------------------------------------------------
; Stand Whip 3
[State -1, Stand Whip 3]
type = ChangeState
value = 230
trigger1 = stateno = 211 & movehit = 1

;-----------------------------------------------------------------------
; Stand Whip 4
[State -1, Stand Whip 4]
type = ChangeState
value = 221
trigger1 = stateno = 220 & movehit = 1


;-----------------------------------------------------------------
; Stand Whip
[State -1, Stand Whip]
type = ChangeState
value = 220
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 230)
trigger3 = movecontact && (stateno = 400 || stateno = 430)


;-----------------------------------------------------------------------
; Stand Kick
[State -1, Stand Kick]
type = ChangeState
value = 210
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = [230,240])
trigger4 = movecontact && (stateno = [400,410])
trigger5 = movecontact && (stateno = [430,440])


;-----------------------------------------------------------------------
; Stand Punch
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl


[State -1, Dash Forward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Jump Backward]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


