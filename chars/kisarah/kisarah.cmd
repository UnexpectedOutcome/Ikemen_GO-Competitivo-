
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Hyperthrow"
command = ~F, D, B, F, D, B, x
time = 30

[Command]
name = "Hyperthrow"
command = ~F, D, B, F, D, B, y
time = 30

[Command]
name = "jealously"
command = ~D, F, D, F, x
time = 20

[Command]
name = "jealously"
command = ~D, F, D, F, y
time = 20

[Command]
name = "splash"
command = ~D, F, D, F, a
time = 20

[Command]
name = "splash"
command = ~D, F, D, F, b
time = 20

[Command]
name = "jealously_rasputin"   
command = ~D, B, D, F, b
time = 20

[Command]
name = "jealously_rasputin"   
command = ~D, B, D, F, a
time = 20

[Command]
name = "hien_a"   
command = ~D, F, D, B, a
time = 20

[Command]
name = "hien_b"   
command = ~D, F, D, B, b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "throw_11"
command = ~F, D, B, F, a
time = 20

[Command]
name = "throw_11"
command = ~F, D, B, F, b
time = 20

[Command]
name = "throw_9"
command = ~F, D, B, F, x
time = 20

[Command]
name = "throw_9"
command = ~F, D, B, F, y
time = 20

[Command]
name = "throw_10"
command = ~F, D, B, a

[Command]
name = "throw_10"
command = ~F, D, B, b

[Command]
name = "blows_x"
command = ~F, D, B, x

[Command]
name = "blows_y"
command = ~F, D, B, y

[Command]
name = "cuty_a"
command = ~B, D, F, a

[Command]
name = "cuty_b"
command = ~B, D, F, b

[Command]
name = "combination"
command = ~B, D, F, x

[Command]
name = "combination"
command = ~B, D, F, y

[Command]
name = "hip_a"
command = ~D, F, a

[Command]
name = "hip_b"
command = ~D, F, b

[Command]
name = "cheerleader_a"
command = ~D, B, a

[Command]
name = "cheerleader_b"
command = ~D, B, b


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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Hyper Throw
[State -1]
type = ChangeState
value = 3350
triggerall = command = "Hyperthrow"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno != 1037
trigger2 = stateno != [1000,1999]
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = MoveContact && stateno = 200
trigger4 = MoveContact && stateno = 202
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
;Jealously Bomber
[State -1]
type = ChangeState
value = 3100
triggerall = command = "jealously"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno != 1037
trigger2 = stateno != [1000,1999]
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = MoveContact && stateno = 200
trigger4 = MoveContact && stateno = 202
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact
;---------------------------------------------------------------------------
;Splash Air Dance
[State -1]
type = ChangeState
value = 3200
triggerall = command = "splash"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno != 1037
trigger2 = stateno != [1000,1999]
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = MoveContact && stateno = 200
trigger4 = MoveContact && stateno = 202
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
;Rasputin Jealously Bomber
[State -1]
type = ChangeState
value = 3300
triggerall = command = "jealously_rasputin"
triggerall = power >= 2000
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno != 1037
trigger2 = stateno != [1000,1999]
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = MoveContact && stateno = 200
trigger4 = MoveContact && stateno = 202
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
;Hien Houou Kyaku
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hien_a" || command = "hien_b"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno != 1037
trigger2 = stateno != [1000,1999]
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = MoveContact && stateno = 200
trigger4 = MoveContact && stateno = 202
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
;Kisarah Throw 11
[State -1]
type = ChangeState
value = 880
triggerall = command = "throw_11"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 210 && anim = 211
trigger5 = MoveContact && stateno = 230
trigger6 = MoveContact && stateno = 240 && anim = 245
trigger7 = MoveContact && stateno = 400
trigger8 = MoveContact && stateno = 410
trigger9 = MoveContact && stateno = 430
;---------------------------------------------------------------------------
;Kisarah Throw 9
[State -1]
type = ChangeState
value = 1060
triggerall = command = "throw_9"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 210 && anim = 211
trigger5 = MoveContact && stateno = 230
trigger6 = MoveContact && stateno = 240 && anim = 245
trigger7 = MoveContact && stateno = 400
trigger8 = MoveContact && stateno = 410
trigger9 = MoveContact && stateno = 430
;---------------------------------------------------------------------------
;Kisarah Throw 10
[State -1]
type = ChangeState
value = 1066
triggerall = command = "throw_10"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 210 && anim = 211
trigger5 = MoveContact && stateno = 230
trigger6 = MoveContact && stateno = 240 && anim = 245
trigger7 = MoveContact && stateno = 400
trigger8 = MoveContact && stateno = 410
trigger9 = MoveContact && stateno = 430
;---------------------------------------------------------------------------
; Light Kisarah Hundred Blows
[State -1]
type = ChangeState
value = 1039
triggerall = command = "blows_x"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 210 && anim = 211
trigger5 = MoveContact && stateno = 230
trigger6 = MoveContact && stateno = 240 && anim = 245
trigger7 = MoveContact && stateno = 400
trigger8 = MoveContact && stateno = 410
trigger9 = MoveContact && stateno = 430
trigger10 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Strong Kisarah Hundred Blows
[State -1]
type = ChangeState
value = 1040
triggerall = command = "blows_y"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 210 && anim = 211
trigger5 = MoveContact && stateno = 230
trigger6 = MoveContact && stateno = 240 && anim = 245
trigger7 = MoveContact && stateno = 400
trigger8 = MoveContact && stateno = 410
trigger9 = MoveContact && stateno = 430
trigger10 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Light Cuty Rainbown
[State -1]
type = ChangeState
value = 1023
triggerall = command = "cuty_a"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 203
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Strong Cuty Rainbown
[State -1]
type = ChangeState
value = 1025
triggerall = command = "cuty_b"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 203
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Kisarah Combination
[State -1]
type = ChangeState
value = 1035
triggerall = command = "combination" || command = "combination"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 210 && anim = 211
trigger5 = MoveContact && stateno = 230
trigger6 = MoveContact && stateno = 240 && anim = 245
trigger7 = MoveContact && stateno = 400
trigger8 = MoveContact && stateno = 410
trigger9 = MoveContact && stateno = 430
trigger10 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Light hip bazzoca
[State -1]
type = ChangeState
value = 1028
triggerall = command = "hip_a"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 203
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Strong hip bazzoca
[State -1]
type = ChangeState
value = 1032
triggerall = command = "hip_b"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 203
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
;Light Cheerleader Kick
[State -1, cheerleader]
type = ChangeState
value = 1000
triggerall = command = "cheerleader_a"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 203
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
trigger12 = MoveContact && stateno = 201
;---------------------------------------------------------------------------
;Strong Cheerleader Kick
[State -1, cheerleader]
type = ChangeState
value = 1021
triggerall = command = "cheerleader_b"
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 200
trigger3 = MoveContact && stateno = 202
trigger4 = MoveContact && stateno = 203
trigger5 = MoveContact && stateno = 210 && anim = 211
trigger6 = MoveContact && stateno = 230
trigger7 = MoveContact && stateno = 240 && anim = 245
trigger8 = MoveContact && stateno = 400
trigger9 = MoveContact && stateno = 410
trigger10 = MoveContact && stateno = 430
trigger11 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
;Slide Kick
[State -1, slide kick]
type = ChangeState
value = 435
triggerall = command = "holdfwd" && command = "holddown" && command = "a"
;trigger1 = statetype = C
trigger1 = StateType != A && Ctrl = 1
trigger2 = MoveContact && stateno = 210 && anim = 211
trigger3 = MoveContact && stateno = 240 && anim = 245
trigger4 = MoveContact && stateno = 201
trigger5 = MoveContact && stateno = 202
;----------------------------------------------------------------------------
; Pis縊
[State -1]
type = ChangeState
value = 1100
trigger1 = command = "holddown"
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
; Golpe de Queda 1 (bundada)
[State -1]
type = ChangeState
value = 250
triggerall = p2statetype = L
triggerall = statetype != A && command = "b" && command = "holdfwd" && command = "holddown"
trigger1 = ctrl
;----------------------------------------------------------------------------
; Golpe de Queda 2 (chute)
[State -1]
type = ChangeState
value = 254
triggerall = p2statetype = L
triggerall = statetype != A && command = "x" && command = "holdfwd" && command = "holddown"
trigger1 = ctrl
;----------------------------------------------------------------------------
; Esquiva tr疽
[State -1]
type = ChangeState
value = 1201
triggerall = statetype != A
trigger1 = command = "holdback" && command = "x" && command = "y"
trigger1 = ctrl
;----------------------------------------------------------------------------
; Esquiva frente
[State -1]
type = ChangeState
value = 1200
triggerall = statetype != A
trigger1 = command = "x" && command = "y"
trigger1 = ctrl
;----------------------------------------------------------------------------
; Rasputin Accel Spin
[State -1]
type = ChangeState
value = 9150
triggerall = command = "holdfwd" && command = "c"
triggerall = statetype != A
triggerall = numhelper(9000) = 0
triggerall = numhelper(9101) = 0
triggerall = numhelper(9151) = 0
triggerall = numhelper(9161) = 0
triggerall = numhelper(9400) = 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
;----------------------------------------------------------------------------
; Rasputin Kossac Dance
[State -1]
type = ChangeState
value = 9160
triggerall = command = "holdfwd" && command = "z"
triggerall = statetype != A
triggerall = numhelper(9000) = 0
triggerall = numhelper(9101) = 0
triggerall = numhelper(9151) = 0
triggerall = numhelper(9161) = 0
triggerall = numhelper(9400) = 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
;----------------------------------------------------------------------------
; Rasputin Fireball
[State -1]
type = ChangeState
value = 9000
triggerall = command = "z"
triggerall = statetype != A
triggerall = numhelper(9000) = 0
triggerall = numhelper(9101) = 0
triggerall = numhelper(9151) = 0
triggerall = numhelper(9161) = 0
triggerall = numhelper(9400) = 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
;----------------------------------------------------------------------------
; Rasputin Air Fireball
[State -1]
type = ChangeState
value = 9100
triggerall = command = "c"
triggerall = statetype != A
triggerall = numhelper(9000) = 0
triggerall = numhelper(9101) = 0
triggerall = numhelper(9151) = 0
triggerall = numhelper(9161) = 0
triggerall = numhelper(9400) = 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kisarah Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
;---------------------------------------------------------------------------
;Kisarah Throw 2
[State -1, Throw]
type = ChangeState
value = 822
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kisarah Throw 3
[State -1, Throw]
type = ChangeState
value = 826
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kisarah Throw 4
[State -1, Throw]
type = ChangeState
value = 840
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kisarah Throw 5
[State -1, Throw]
type = ChangeState
value = 852
triggerall = command = "b"
triggerall = statetype = C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && command = "holddown"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kisarah Throw 6
[State -1, Throw]
type = ChangeState
value = 856
triggerall = command = "y"
triggerall = statetype = C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && command = "holddown"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kisarah Throw 7
[State -1, Throw]
type = ChangeState
value = 860
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kisarah Throw 8
[State -1, Throw]
type = ChangeState
value = 863
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Forward Light Punch]
type = ChangeState
value = 201
triggerall = command = "holdfwd" && command = "x"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = MoveContact && stateno = 210 && anim = 211
trigger3 = MoveContact && stateno = 240 && anim = 245
trigger4 = MoveContact && stateno = 202
;trigger5 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
[State -1, Forward Light kick]
type = ChangeState
value = 235
triggerall = command = "holdfwd" && command = "a"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = MoveContact && stateno = 210 && anim = 211
trigger3 = MoveContact && stateno = 240 && anim = 245
trigger4 = MoveContact && stateno = 202
trigger5 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
[State -1, Running Strong Punch]
type = ChangeState
value = 215
triggerall = stateno = 100 && command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Running Light Punch]
type = ChangeState
value = 217
triggerall = stateno = 100 && command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Running Light Kick]
type = ChangeState
value = 219
triggerall = stateno = 100 && command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Running Strong Kick]
type = ChangeState
value = 216
triggerall = stateno = 100 && command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


