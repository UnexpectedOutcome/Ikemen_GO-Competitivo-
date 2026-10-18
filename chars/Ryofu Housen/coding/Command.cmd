;#ADD004BASIC PIEs#
;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-| AI |----------------------------------------------------
[Command]
name = "cpu00"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu01"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu02"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu03"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu04"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu05"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu06"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu07"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu08"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu09"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

;-| Button Remapping |-----------------------------------------------------
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
command.time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b

[Command]
name = "Hyper2"
command = ~D, DF, F, a+c

[Command]
name = "Hyper2"
command = ~D, DF, F, b+c

;-| Special Motions |------------------------------------------------------
;Specail1

[Command]
name = "Special1x"
command = ~D,DF,F, x

[Command]
name = "Special1y"
command = ~D,DF,F, y

[Command]
name = "Special1z"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Special2

[Command]
name = "Special2x"
command = ~D,DB,B, x

[Command]
name = "Special2y"
command = ~D,DB,B,y

[Command]
name = "Special2z"
command = ~D,DB,B,z

;-------------------------------------------------------------------------
;Special3

[Command]
name = "Special3a"
command = ~D,DB,B, a

[Command]
name = "Special3b"
command = ~D,DB,B, b

[Command]
name = "Special3c"
command = ~D,DB,B, c

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

[Command]
name = "Push"
command = x+y

[Command]
name = "Push"
command = z+y

[Command]
name = "Push"
command = x+z

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "super_jump_up"
command = ~D, U
time = 50

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------

[Statedef -1]

;//==========================
;// add004-1-sctrls-start
;//==========================
;--- partner_standby
[state 0]
	type=selfstate
	value=190190
	ctrl=0
	trigger1=ctrl && numpartner && !ishelper && roundstate=2 && pos y=0
	trigger1=(sysfvar(4)>0) && (sysfvar(0)>0) && playeridexist(floor(sysfvar(0)))
	trigger1=(playerid(floor(sysfvar(0))),var(0)=90900) && (playerid(floor(sysfvar(0))),var(22)=4)
	ignorehitpause=1
;##Add.List01##
;//==========================
;// add004-1-sctrls-end
;//==========================




;===========================================================================
;---------------------------------------------------------------------------
; Hyper Moves
;---------------------------------------------------------------------------
;===========================================================================

;QCF2_x
[State -1, QCF2_x]
type = ChangeState
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = [1000,2999]
trigger3 = movecontact

;QCF2_x
[State -1, QCF2_x]
type = ChangeState
value = 3100
triggerall = command = "Hyper2"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = [1000,2999]
trigger3 = movecontact


;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
;===========================================================================

;--------------------------------------------------------------------------
;QCF_x
[State -1, QCF_x]
type = ChangeState
value = 1000
triggerall = command = "Special1x"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact

;QCF_y
[State -1, QCF_y]
type = ChangeState
value = 1010
triggerall = command = "Special1y"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact

;QCF_y
[State -1, QCF_z]
type = ChangeState
value = 1020
triggerall = command = "Special1z"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact

;QCF_y
[State -1, QCF_y]
type = ChangeState
value = 1100
triggerall = command = "Special2x"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact


;QCF_y
[State -1, QCF_y]
type = ChangeState
value = 1110
triggerall = command = "Special2y"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact


;QCF_y
[State -1, QCF_z]
type = ChangeState
value = 1120
triggerall = command = "Special2z"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact

;QCF_y
[State -1, QCF_a]
type = ChangeState
value = 1200
triggerall = command = "Special3a"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact


;QCF_y
[State -1, QCF_b]
type = ChangeState
value = 1210
triggerall = command = "Special3b"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact


;QCF_y
[State -1, QCF_b]
type = ChangeState
value = 1220
triggerall = command = "Special3c"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact



;===========================================================================
;---------------------------------------------------------------------------
; Moves
;---------------------------------------------------------------------------
;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
;Air Dash Fwd
[State -1, Air Dash Fwd]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [100,199]

;---------------------------------------------------------------------------
;Air Dash Back
[State -1, Air Dash Back]
type = ChangeState
value = 102
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [100,199]

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,199]

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,199]

;===========================================================================
;---------------------------------------------------------------------------
; Basic Attacks
;---------------------------------------------------------------------------
;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
; Standing attacks
;---------------------------------------------------------------------------
;===========================================================================

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact

;Stand_Z
[State -1, Stand_Z]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact

;Stand_A
[State -1, Stand_A]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact

;Stand_B
[State -1, Stand_B]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact

;Stand_C
[State -1, Stand_C]
type = ChangeState
value = 250
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Crouching Attacks
;---------------------------------------------------------------------------
;===========================================================================

;Crouch_X
[State -1, Crouch_X]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact


;Crouch_Y
[State -1, Crouch_Y]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = stateno = 400 && movecontact

;Crouch_Z
[State -1, Crouch_Z]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact

;Crouch_A
[State -1, Crouch_A]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 420 && movecontact

;Crouch_B
[State -1, Crouch_B]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 420 && movecontact
trigger7 = stateno = 430 && movecontact

;Crouch_C
[State -1, Crouch_C]
type = ChangeState
value = 450
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,299]) && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 420 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Air Attacks
;---------------------------------------------------------------------------
;===========================================================================

;Air_X
[State -1, Air_X]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Air_Y
[State -1, Air_Y]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;Air_Z
[State -1, Air_Z]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;Air_A
[State -1, Air_A]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

;Air_B
[State -1, Air_B]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact

;Air_C
[State -1, Air_C]
type = ChangeState
value = 650
triggerall = var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;--------------------------------------------------------------------------
[State -1, Guard Push Stand]
type = ChangeState
value = 80
triggerall = Var(59) <= 0
triggerall = command = "Push" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push Crouch]
type = ChangeState
value = 81
triggerall = Var(59) <= 0
triggerall = command = "Push" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push Jump]
type = ChangeState
value = 82
triggerall = Var(59) <= 0
triggerall = command = "Push" && statetype = A
trigger1 = stateno = [154,155]

;===========================================================================
;---------------------------------------------------------------------------
; Recovery Roll
;---------------------------------------------------------------------------
;===========================================================================
[State -1, Forward Recovery Roll]
type = ChangeState
value = 70
triggerall = Var(59) <= 0
triggerall = command = "holdfwd"
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 71
triggerall = Var(59) <= 0
triggerall = command = "holdback"
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;===========================================================================
;---------------------------------------------------------------------------
; Super Jump / Launcher
;---------------------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Super Jump Up
[State -1, Super Jump Up]
type = ChangeState
value = 60
triggerall = var(59) <= 0
triggerall = command = "super_jump_up" && ctrl
trigger1 = statetype = S && statetype != A 
trigger2 = stateno = 10  
;-----------------------------
;Launcher
[State -1, Launcher] ;by GGN
type = ChangeState
value = 60
triggerall = var(59) <= 0
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
; A.I
;---------------------------------------------------------------------------
;===========================================================================

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) > 0
triggerall = stateno != 20 && stateno != 100
triggerall = ctrl
trigger1 = (p2movetype = A && enemy,facing = facing) || (p2movetype != A && enemy,facing != facing)
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x > 10
trigger1 = p2bodydist y = [-20,0]
trigger1 = random <= ((var(59)*90))

[State -1, AI Air Dash Fwd]
type = ChangeState
value = 101
triggerall = var(59) > 0
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype = A && enemy,facing = facing) || (p2movetype != A && enemy,facing != facing)
trigger1 = statetype = A && ctrl
trigger1 = p2bodydist x > 10
trigger1 = p2bodydist y = [-20,20]
trigger1 = random <= ((var(59)*90))


[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(59) > 0
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H 
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = (p2bodydist y = [-40,-1]) 
trigger2 = p2bodydist x <= 50

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(59) > 0
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A  
trigger1 = (p2bodydist x = [150,170]) && random <= 400 
trigger1 = enemy,backedgedist < 70

[State -1, AI Forward Recovery Roll]
type = ChangeState
value = 70
triggerall =  Var(59) > 0
triggerall = time = 1
triggerall = life > 0
triggerall = random <= ((var(59)*50))
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Backward Recovery Roll]
type = ChangeState
value = 71
triggerall =  Var(59) > 0
triggerall = time = 1
triggerall = life > 0
triggerall = random <= ((var(59)*50))
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Guard Push stand]
type = ChangeState
value = 80
triggerall = (var(59) > 1)
triggerall = stateno = 150
trigger1 = statetype = S
trigger1 = random <= ((var(59)*70))

[State -1, AI Guard Push stand]
type = ChangeState
value = 81
triggerall = (var(59) > 1)
triggerall = stateno = 152
trigger1 = statetype = C
trigger1 = random <= ((var(59)*70))

[State -1, AI Guard Push stand]
type = ChangeState
value = 82
triggerall = (var(59) > 1)
triggerall = stateno = 152
trigger1 = statetype = A
trigger1 = random <= ((var(59)*70))

; Taunt
[State -1, TauntAI]
type = ChangeState
value = 195
triggerall = var (59) > 0
triggerall = statetype != A
triggerall = roundstate = 3
trigger1 = p2life = 0
trigger1 = prevstateno != 195
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
; A.I Stand Chaining
;---------------------------------------------------------------------------
;===========================================================================
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 32) && (Random <= ((var(59)*150)))
trigger2 = (p2bodydist x <= 32) && (stateno = 100)
value = 200

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 32) && (Random <= ((var(59)*150)))
trigger2 = (p2bodydist x <= 32) && (stateno = 100)
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 32) && (Random <= ((var(59)*150)))
trigger2 = (p2bodydist x <= 32) && (stateno = 100)
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 32) && (Random <= ((var(59)*150)))
trigger2 = (p2bodydist x <= 32) && (stateno = 100)
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 32) && (Random <= ((var(59)*150)))
trigger2 = (p2bodydist x <= 32) && (stateno = 100)
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 32) && (Random <= ((var(59)*150)))
trigger2 = (p2bodydist x <= 32) && (stateno = 100)
value = 250

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact && (Random <= ((var(59)*150)))
value = 210

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 210) && movecontact && (Random <= ((var(59)*150)))
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact && (Random <= ((var(59)*150)))
trigger2 = (stateno = 210) && movecontact && (Random <= ((var(59)*150)))
trigger3 = (stateno = 220) && movecontact && (Random <= ((var(59)*150)))
value = 230

;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact && (Random <= ((var(59)*150)))
trigger2 = (stateno = 210) && movecontact && (Random <= ((var(59)*150)))
trigger3 = (stateno = 220) && movecontact && (Random <= ((var(59)*150)))
trigger4 = (stateno = 230) && movecontact && (Random <= ((var(59)*150)))
value = 240

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact && (Random <= ((var(59)*150)))
trigger2 = (stateno = 210) && movecontact && (Random <= ((var(59)*150)))
trigger3 = (stateno = 220) && movecontact && (Random <= ((var(59)*150)))
trigger4 = (stateno = 230) && movecontact && (Random <= ((var(59)*150)))
trigger5 = (stateno = 240) && movecontact && (Random <= ((var(59)*150)))
value = 250

;===========================================================================
;---------------------------------------------------------------------------
; A.I Crouch Chaining
;---------------------------------------------------------------------------
;===========================================================================
[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0;
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = (Random <= ((var(59)*100)))
trigger1 = pos y = 0
trigger2 = (p2bodydist x <= 25) && (Random <= ((var(59)*100))) && (stateno = 100)
trigger3 = p2statetype = C
trigger3 = (p2bodydist x <= 25) && (Random <= ((var(59)*100))) && (stateno = 100)

[State -1,AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = (Random <= ((var(59)*100)))

[State -1,AI Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) > 0
trigger1 = p2bodydist x <= 30
trigger1 = stateno = 440
trigger1 = movehit
trigger1 = (Random <= ((var(59)*100)))
trigger2 = p2bodydist x <= 32
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = (Random <= ((var(59)*100)))
trigger3 = p2bodydist x <= 35
trigger3 = stateno = 210 || stateno = 240 || stateno = 211 || stateno = 241
trigger3 = movehit
trigger3 = (Random <= ((var(59)*100))) 

[State -1,AI Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = var(59) > 0
triggerall = p2statetype != A
triggerall = P2statetype = S
trigger1 = p2bodydist x <= 32
trigger1 = p2bodydist y = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = (Random <= ((var(59)*100)))

[State -1,AI Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) > 0;&& p2movetype != A
trigger1 = stateno = 430 || stateno = 400
trigger1 = movehit
trigger1 = random < 700
trigger2 = stateno = 200
trigger2 = movehit && (Random <= ((var(59)*100))) && p2statetype != A
trigger3 = P2statetype = S
trigger3 = p2bodydist x <= 32
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype != A
trigger3 = ctrl
trigger4 = stateno = 230 || stateno = 200
trigger4 = movehit
trigger4 = (Random <= ((var(59)*60)))
trigger4 = p2bodydist y = [-2,2]

[State -1,AI Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) > 0
triggerall = p2bodydist x = [-2,32]
triggerall = P2MoveType != A
trigger1 = stateno = 440 || stateno = 410
trigger1 = movecontact
trigger1 = (Random <= ((var(59)*60)))

;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 60

;===========================================================================
;---------------------------------------------------------------------------
; A.I Air Chaining
;---------------------------------------------------------------------------
;===========================================================================

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (Random <= ((var(59)*100)))
trigger2 = (p2bodydist x <= 25) && (Random <= ((var(59)*100))) && (stateno = [60,61])
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact && (Random <= ((var(59)*100)))
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 610) && movecontact && (Random <= ((var(59)*80)))
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact && (Random <= ((var(59)*100)))
trigger2 = (stateno = 610) && movecontact && (Random <= ((var(59)*100)))
trigger3 = (stateno = 620) && movecontact && (Random <= ((var(59)*100)))
value = 630


[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 630) && movecontact && (Random <= ((var(59)*100)))
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 640) && movecontact && (Random <= ((var(59)*100)))
value = 650

;===========================================================================
;---------------------------------------------------------------------------
; A.I Special Moves
;---------------------------------------------------------------------------
;===========================================================================
[State -1,AI Special1a]
type = ChangeState
value = 1000
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special1b]
type = ChangeState
value = 1010
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special1c]
type = ChangeState
value = 1020
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special2a]
type = ChangeState
value = 1100
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special2b]
type = ChangeState
value = 1110
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special2c]
type = ChangeState
value = 1120
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special3a]
type = ChangeState
value = 1200
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special3b]
type = ChangeState
value = 1210
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1,AI Special3c]
type = ChangeState
value = 1220
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))
;===========================================================================
;---------------------------------------------------------------------------
; A.I Hyper Moves
;---------------------------------------------------------------------------
;===========================================================================
[State -1,AI Hyper1]
type = ChangeState
value = 3000
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = power >= 1000
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (numproj = 0) && (Random <= ((var(59)*100)))
value = 3000

[State -1,AI Hyper2]
type = ChangeState
value = 3100
triggerall = var(59) > 0
triggerall = P2Movetype != A
triggerall = power >= 1000
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X < 100 && !(enemy,ctrl)
trigger1 = (Random <= ((var(59)*100)))
trigger2 = (stateno = [200,499]) && movecontact && (Random <= ((var(59)*100)))

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (numproj = 0) && (Random <= ((var(59)*100)))
value = 3100

;===========================================================================
;---------------------------------------------------------------------------
; A.I Misc
;---------------------------------------------------------------------------
;===========================================================================

[State -1, AIR RECOVERY]
type = changestate
value = ifelse((pos y >= -20), 5200, 5210)
triggerall = var(59) >= 0
triggerall = roundstate = 2 && stateno = 5050
triggerall = alive
triggerall = canrecover
trigger1 = vel y > -1
trigger1 = random <= ((var(59) *200))

