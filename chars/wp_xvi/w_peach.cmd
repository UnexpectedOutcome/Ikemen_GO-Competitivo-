;------------| AI |--------------------------------------------------------
; AI Activation
[Command]
name = "cpu1"
command = U, U, D, D, B, F, B, F
time = 0
[Command]
name = "cpu2"
command = U, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu3"
command = U, U, D, D, F, B, B, F
time = 0
[Command]
name = "cpu4"
command = U, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu5"
command = D, D, D, D, F, B, B, F
time = 0

;-| Supers |--------------------------------------------------------

[Command]
name = "longjump"
command = ~10$D, U
time = 20

;-| Specials |------------------------------------------------------

[command]
name = "bridal-flash_a"
command = ~D,DB,B,a
[command]
name = "bridal-flash_b"
command = ~D,DB,B,b
[command]
name = "bridal-flash_b"
command = ~D,DB,B,c

[command]
name = "toun_nidan-geri"
command = ~F,D,DF,a
[command]
name = "toun_sandan-geri"
command = ~F,D,DF,b

[command]
name = "bridal_summer"
command = ~30$D,$U,a+b
time = 30
[command]
name = "bridal_summer"
command = ~30$D,$U,c
time = 30

[Command]
name = "sleep"
command = /$D,c
time = 1
[Command]
name = "sleep"
command = ~$D,a+b
time = 10

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
command = a+b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fierce"
command = /$DF,a
time = 1
[Command]
name = "liedown-atk"
command = /$U,a
time = 1
[Command]
name = "liedown-atk"
command = /$U,b
time = 1
[Command]
name = "liedown-atk"
command = /$U,c
time = 1
[Command]
name = "liedown-atk"
command = /$U,a+b
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
; State entry
[Statedef -1]

; AI Activation
[State -1, AI]
type = VarSet
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
v = 59
value = 1
;===========================================================================
;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 120

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 120

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 120

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X = [50,250]) && (random <= 799)
value = 220
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X = [30,40]) && (random <= 799)
value = 430
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X = [20,50]) && (random <= 799)
value = 105

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = S)
trigger1 = (p2bodydist X <= 10) && (random <= 799)
value = 800
;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = S)
trigger1 = (p2bodydist X = [0,25]) && (random <= 779)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = C)
trigger1 = (p2bodydist X = [0,25]) && (random <= 779)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = I) && (statetype = A)
trigger1 = (p2bodydist X = [0,25]) && (random <= 779)
value = ifelse(vel x = 0,605,600)

;-|-AI Super Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random <= 699) && (numproj = 0)
trigger1 = (p2bodydist x = [105,205]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random <= 699) && (numproj = 0)
trigger1 = (p2bodydist x = [205,255]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random <= 999)
trigger1 = (p2bodydist x = [40,80]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value =1100

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random <= 899)
trigger1 = (p2bodydist x = [80,90]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random <= 799)
trigger1 = (p2bodydist x = [90,100]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1110

[State -1, Bridal Summer]
type = ChangeState
value = 1200
triggerall = command = "bridal_summer"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = (stateno = [200,225]) || (stateno = [400,420]) || stateno=1300
trigger3 = movecontact

;Momo 3-Stage Kick
[State -1, Toun Sandan Geri]
type = ChangeState
value = 1110
triggerall = command = "toun_sandan-geri"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420]) || stateno=1300
trigger2 = movecontact

;Momo 2-Stage Kick
[State -1, Toun Nidan Geri]
type = ChangeState
value = 1100
triggerall = command = "toun_nidan-geri"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420]) || stateno=1300
trigger2 = movecontact

[State -1, Bridal Flash]
type = ChangeState
value = 999
triggerall = command = "bridal-flash_a" || command = "bridal-flash_b"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420]) || stateno=1300
trigger2 = movecontact

;---------------------------------------------------------------------------
;Step Back
[State -1, Step Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Peach Dive
[State -1, Peach Dive]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Sleep
[State -1, Sleep]
type = ChangeState
value = 430
triggerall = command = "sleep"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,225]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 220
triggerall = command = "recovery"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,215]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand A
[State -1, Stand A]
type = ChangeState
value = ifelse(p2bodydist x < 10,205,200)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand B
[State -1, Stand B]
type = ChangeState
value = ifelse(p2bodydist x < 30,215,210)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,205]) || (stateno = 400)
trigger2 = (time > 8) || (movecontact)

;---------------------------------------------------------------------------
;Crouch AA
[State -1, Crouch AA]
type = ChangeState
value = 410
triggerall = command = "fierce"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (movecontact) || (time > 5)

;---------------------------------------------------------------------------
;Crouch A
[State -1, Crouch A]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = [200,205])
trigger2 = (time > 6) || (movecontact)

;---------------------------------------------------------------------------
;Crouch B
[State -1, Crouch B]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump A
[State -1, Jump A]
type = ChangeState
value = ifelse(vel x = 0,605,600)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump B
[State -1, Jump B]
type = ChangeState
value = ifelse(vel x = 0,615,610)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
