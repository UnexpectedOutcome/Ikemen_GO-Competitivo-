

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------


[Command]
name = "beatcombo"
command = ~D,DF,F,DF,F, x+y
time = 30

[Command]
name = "hgp"
command = ~D,DF,F,DF,F, y
time = 30

[Command]
name = "combo"
command = ~D,DF,F,DF,F, x
time = 30

[Command]
name = "gp2"
command = ~F,D,F, y
time = 30

[Command]
name = "gp1"
command = ~F,D,F, x
time = 30

[Command]
name = "tp1"
command = D,DF,F, a
time = 30

[Command]
name = "tp2"
command = D,DF,F, b
time = 30

[Command]
name = "bp2"
command = D,DF,F, y
time = 30

[Command]
name = "bp1"
command = D,DF,F, x
time = 30

[Command]
name = "mp1"
command = a, a, a
time = 60

[Command]
name = "mp2"
command = b, b, b
time = 60

[Command]
name = "charge"
command = b+y
time = 1

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall =  command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;===========================================================================
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; charge
[State -1, charge]
type = ChangeState
value = 900
triggerall = command = "z"
triggerall = Power < 3000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; beatcombo
[State -1, beatcombo ]
type = ChangeState
value = 2200
triggerall = command = "beatcombo"
trigger2 = (stateno = [200,211]) && movecontact
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; hyper gp
[State -1, hyper gp ]
type = ChangeState
value = 2100
triggerall = command = "hgp"
trigger2 = (stateno = [200,211]) && movecontact
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; combo
[State -1, gp 2]
type = ChangeState
value = 2000
triggerall = command = "combo"
trigger2 = (stateno = [200,211]) && movecontact
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; gp2
[State -1, gp 2]
type = ChangeState
value = 1045
triggerall = command = "gp2"
trigger2 = (stateno = [200,211]) && movecontact
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; gp1
[State -1, gp 1]
type = ChangeState
value = 1040
triggerall = command = "gp1"
trigger2 = (stateno = [200,211]) && movecontact
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Thunder Punch 2
[State -1, Thunder punch 2]
type = ChangeState
value = 1035
triggerall = command = "tp2"
trigger1 = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
;---------------------------------------------------------------------------
; Thunder Punch
[State -1, Thunder punch]
type = ChangeState
value = 1030
triggerall = command = "tp1"
trigger1 = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
;---------------------------------------------------------------------------
; a bullet proyectile 2
[State -1, a bullet proyectile 2]
type = ChangeState
value = 1025
triggerall = command = "bp2"
trigger1 = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
;---------------------------------------------------------------------------
; a bullet proyectile
[State -1, a bullet proyectile]
type = ChangeState
value = 1020
triggerall = command = "bp1"
trigger1 = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
;---------------------------------------------------------------------------
; multipunch 2
[State -1, multipunch 2]
type = ChangeState
value = 1015
triggerall = command = "mp2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; multipunch 1
[State -1, multipunch 1]
type = ChangeState
value = 1010
triggerall = command = "mp1"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; bullet proyectile 2
[State -1, bullet proyectile 2]
type = ChangeState
value = 1005
triggerall = command = "bp2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; bullet proyectile
[State -1, bullet proyectile]
type = ChangeState
value = 1000
triggerall = command = "bp1"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
trigger2 = (stateno = [200,201]) && movecontact
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger2 = (stateno = [210,211]) && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
