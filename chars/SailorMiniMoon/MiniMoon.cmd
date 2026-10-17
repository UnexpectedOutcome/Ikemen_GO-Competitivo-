; The CMD file.

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "moon"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "moon"
command = ~D, DF, F, b+c
time = 30

[Command]
name = "moon"
command = ~D, DF, F, c+a
time = 30

[Command]
name = "SuperSugar"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "SuperSugar"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "SuperSugar"
command = ~D, DF, F, z+x
time = 30

[Command]
name = "Kitty"
command = ~D, DB, B, z+x
time = 30

[Command]
name = "Kitty"
command = ~D, DB, B, y+x
time = 30

[Command]
name = "Kitty"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "Pegasus"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "Pegasus"
command = ~D, DB, B, x+z
time = 30

[Command]
name = "Pegasus"
command = ~D, DB, B, y+x
time = 30

[Command]
name = "SuperKick"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "SuperKick"
command = ~D, DB, B, c+b
time = 30

[Command]
name = "SuperKick"
command = ~D, DB, B, a+c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "SugarLight"
command = ~D, DF, F, x

[Command]
name = "SugarMedium"
command = ~D, DF, F, y

[Command]
name = "SugarHard"
command = ~D, DF, F, z

[Command]
name = "ButtLight"
command = ~D, DB, B, a

[Command]
name = "ButtMedium"
command = ~D, DB, B, b

[Command]
name = "ButtHard"
command = ~D, DB, B, c

[Command]
name = "LunaBallLight"
command = ~D, DB, B, x

[Command]
name = "LunaBallMedium"
command = ~D, DB, B, y

[Command]
name = "LunaBallHard"
command = ~D, DB, B, z

[Command]
name = "UpperkickLight"
command = ~D, DB, B, a

[Command]
name = "UpperkickMedium"
command = ~D, DB, B, b

[Command]
name = "UpperkickHard"
command = ~D, DB, B, c

[Command]
name = "superjump"
command = D, $U

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "guardpush"
command = x+y+z
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
command = x+y
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

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1


[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1


[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

;-| MvC S-Jump |------------
[Command]
name = "DU"
command = D, U
time = 20

[Command]
name = "DUF"
command = D, UF
time = 20

[Command]
name = "DUB"
command = D, UB
time = 20

[Command]
name = "dash2press"
command = x+y+z
time = 8

;---------------------------------------------------------------------------
; 2. State entry

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 630

[State -1]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 640

[State -1]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 630

[State -1]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 640

[State -1]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 230

[State -1]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 240

[State -1]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 230
trigger2 = stateno = 200

[State -1]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 240
trigger2 = stateno = 210

[State -1]
type = ChangeState
value = 1602
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 250
trigger2 = stateno = 220

[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 400
trigger2 = stateno = 430

[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 410
trigger2 = stateno = 440

[State -1]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 430
trigger2 = stateno = 400

[State -1]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 440
trigger2 = stateno = 410

[State -1]
type = ChangeState
value = 1602
triggerall = var(59) = 1
triggerall = numproj = 0
triggerall = statetype != A
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,80]
trigger1 = P2BodyDist Y >= -150
trigger1 = Random < 25

;Butt Attack L
[State -1]
type = ChangeState
value = 1301
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [20,100]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,-10]

;Butt Attack M
[State -1]
type = ChangeState
value = 1302
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [20,80]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,-10]

;Butt Attack H
[State -1]
type = ChangeState
value = 1303
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,25]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,-10]

;Luna P
[State -1]
type = ChangeState
value = 1400
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,100]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,-10]

;Kitty Magic
[State -1]
type = ChangeState
value = 5500
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,60]
triggerall = (power >= 1000)
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,10]

;Luna P M
[State -1]
type = ChangeState
value = 1401
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,60]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,10]

;Luna P H
[State -1]
type = ChangeState
value = 1402
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [10,50]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-100,10]

;AirCombo
[State -1]
type = ChangeState
value = 600
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,40]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-50,10]

;AirCombo kick
[State -1]
type = ChangeState
value = 630
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,40]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-50,10]

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x >= 25) && (statetype != A)
value = 1602

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 15) && (statetype != A)
value = 1601

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,10])
trigger1 = (p2bodydist x <= 10) && (statetype != A)
value = 1600



[State -1]
type = ChangeState
value = 1401
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 610
trigger3 = stateno = 630
trigger4 = stateno = 640
trigger5 = stateno = 650

[State -1]
type = ChangeState
value = 1301
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 41
trigger2 = stateno = 42
trigger3 = stateno = 43

[State -1]
type = ChangeState
value = 1302
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 41
trigger2 = stateno = 42
trigger3 = stateno = 43

[State -1]
type = ChangeState
value = 1303
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 41
trigger2 = stateno = 42
trigger3 = stateno = 43

[State -1]
type = ChangeState
value = 1303
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 610
trigger3 = stateno = 620
trigger4 = stateno = 630
trigger5 = stateno = 640
trigger6 = stateno = 650

[State -1]
type = ChangeState
value = 1203
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 250

[State -1]
type = ChangeState
value = 1203
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 230

[State -1]
type = ChangeState
value = 1602
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 400
trigger2 = stateno = 410
trigger3 = stateno = 430
trigger4 = stateno = 440

[State -1]
type = ChangeState
value = 1401
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 9800

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [1,8])
trigger1 = (p2bodydist x >= 15) && (statetype != A)
value = 1203

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [1,8])
trigger1 = (p2bodydist x >= 15) && (statetype != A)
value = 1203

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [1,8])
trigger1 = statetype != A
value = 1203

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [1,8])
trigger1 = statetype != A
value = 1203

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [2,50])
value = 2000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 13) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [2,50])
value = 1650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x >= 20) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [2,50])
value = 3500

;Blocking
;Standing
[State -1, Standing]
type = ChangeState
value = 130
triggerall = var(59) != 0
triggerall = var(57) != 2 ; Difficulty level
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 = inguarddist

;Crouching
[State -1, Crouching]
type = ChangeState
value = 131
triggerall = var(59) != 0
triggerall = var(57) != 2 ; Difficulty level
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype = C
trigger1 = inguarddist

;Air
[State -1, Air]
type = ChangeState
value = 132
triggerall = var(59) != 0
triggerall = var(57) != 2 ; Difficulty level
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist

;---------------------------------------------------------------------------

;Kitty Magic
[State -1]
type = ChangeState
value = 5500
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = movecontact
triggerall = (power >= 1000)
trigger1 = stateno = 600
trigger2 = stateno = 610
trigger3 = stateno = 620
trigger4 = stateno = 630
trigger5 = stateno = 640
trigger6 = stateno = 650
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;Run Back
[State -1, Run Back]
type = ChangeState
value = 107
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = stateno != 107
trigger1 = ctrl

;--------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 55650
triggerall = command = "superjump"
trigger1 = (statetype = S) && (ctrl)

;===========================================================================
[State -1, Run Fwd]
type = ChangeState
triggerall = Var(59) <= 0 && statetype = S && ctrl && stateno != 52
trigger1 = command = "FF"
trigger2 = command = "dash2press"
value = 100

;Guard Push
[State -1]
type = ChangeState
value = 720
triggerall = var(10) != 1&&command = "guardpush"&&statetype = S&&p2life!=0
trigger1 = stateno = [150,153]
;-------------------------------------
[State -1]
type =ChangeState
value = 725
triggerall = var(10) != 1&&command = "guardpush"&&statetype = C&&p2life!=0
trigger1 = stateno = [150,153]
;-------------------------------------
[State -1]
type =ChangeState
value = 730 
triggerall = var(10) != 1&&command = "guardpush"&&statetype = A&&p2life!=0
trigger1 = stateno = [154,155]
;---------------------------------------------------------------------------
;Super Kitty Magic
[State -1, Meteor]
type = ChangeState
value = 5500
triggerall = command = "Kitty"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Pink Sugar Heart Attack Super
[State -1, Heart Attack Super]
type = ChangeState
value =2000
triggerall = command = "SuperSugar"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Super Upper Kick
[State -1, Super Upper Kick]
type = ChangeState
value =1650
triggerall = command = "SuperKick"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact


;---------------------------------------------------------------------------
;Twinkle Yell
[State -1, Twinkle Yell]
type = ChangeState
value =3500
triggerall = command = "Pegasus"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = numproj = 0
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "z"
triggerall = (statetype !=A&&command!="holddown")
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 25  && (p2bodydist y=[-25,25])
trigger1 = (p2statetype != A&&statetype!=A)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;Upperkick Light
[State -1, Upperkick Light]
type = ChangeState
value = 1600
triggerall = (command = "UpperkickLight")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Upperkick Medium
[State -1, Upperkick Medium]
type = ChangeState
value = 1601
triggerall = (command = "UpperkickMedium")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Upperkick Hard
[State -1, Upperkick Light]
type = ChangeState
value = 1602
triggerall = (command = "UpperkickHard")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Luna Ball Light
[State -1, Luna Ball Light]
type = ChangeState
value = 1400
triggerall = command = "LunaBallLight"
trigger1 = statetype = A
trigger1 = numproj < 1
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Luna Ball Medium
[State -1, Luna Ball Medium]
type = ChangeState
value = 1401
triggerall = command = "LunaBallMedium"
trigger1 = statetype = A
trigger1 = numproj < 1
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Luna Ball Hard
[State -1, Luna Ball Hard]
type = ChangeState
value = 1402
triggerall = command = "LunaBallHard"
trigger1 = statetype = A
trigger1 = numproj < 1
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------

;Pink Sugar Light
[State -1, Pink Sugar Light]
type = ChangeState
value = 1201
triggerall = (command = "SugarLight")
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = numproj < 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Pink Sugar Medium
[State -1, Pink Sugar Medium]
type = ChangeState
value = 1202
triggerall = (command = "SugarMedium")
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = numproj < 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

;Pink Sugar Hard
[State -1, Pink Sugar Hard]
type = ChangeState
value = 1203
triggerall = (command = "SugarHard")
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = numproj < 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Butt Attack Light
[State -1, Butt Attack Light]
type = ChangeState
value = 1301
triggerall = command = "ButtLight"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Butt Attack Medium
[State -1, Butt Attack Medium]
type = ChangeState
value = 1302
triggerall = command = "ButtMedium"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Butt Attack Hard
[State -1, Butt Attack Hard]
type = ChangeState
value = 1303
triggerall = command = "ButtHard"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [600,699])
trigger2 = movecontact


;===========================================================================
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
