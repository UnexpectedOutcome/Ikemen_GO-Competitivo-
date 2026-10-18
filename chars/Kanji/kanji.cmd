

;--------------------
;AI activation
;--------------------
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;--------------------
;AI activation
;--------------------

[Command]
name = "ai"
command = U, D, B, F, U, a, F, b, U, F, y, z, F
time = 1
[Command]
name = "ai2"
command = F, b, U, F, y, z, F, U, D, B, F, U, a
time = 1
[Command]
name = "ai3"
command = a, F, b, U, D, B, F, U, B, F, y, z, F, x
time = 1
[Command]
name = "ai4"
command = c, a, F, z, U, F, y, z, F, x, D, B, F, U, B
time = 1
[Command]
name = "ai5"
command = z, c, U, F, c, U, F, D, F, x, z, c, z, c, z, c
time = 1
[Command]
name = "ai6"
command = z, c, U, F, c, U, F, U, F, y, z, F, x, D
time = 1
[Command]
name = "ai7"
command = z ,c ,z ,c ,z ,c ,z ,c ,z ,c ,z ,U ,F ,c ,U
time = 1
[Command]
name = "ai8"
command = z, c, U, F, U, F, y, z, F, x, D, a, F, z, U
time = 1
[Command]
name = "ai9"
command = z, c, z, F, B, U, D, F, DF, z, U, c, U, F, D
time = 1
[Command]
name = "ai10"
command = z, c, D, F, U, DF ,y , z+c, F, x, D, a, F, z, U
time = 1
[Command]
name = "ai11"
command = F, x, D, a, F, z, U, z, c, D, F, U, DF, y, z+c
time = 1
[Command]
name = "ai12"
command = z, c, U, F, U, D, U, c, z, z+b, F, y, z, F, x, D
time = 1
[Command]
name = "ai13"
command = z, c, U, F, c, U, F, U, F, y, z, F, x, D, z, c
time = 1
[Command]
name = "ai14"
command = c,z,c,U,F,c,U,F,D,F,x+z,c,z,
time = 1
[Command]
name = "ai15"
command = z,c,U,F,c,U,z,F,x,D,a,F,z,U,F,U,F,y,z,F,x,D,z,c,z,c,z
time = 1
[Command]
name = "ai16"
command = z,c,U,F,c,U,F,U,F,y,z,F,x,D,b,c,a,x
time = 1
[Command]
name = "ai17"
command = z,c,F,y,z,F,F,x,D,b,c,a,x,D,z,c,z,c,z
time = 1
[Command]
name = "ai18"
command = c,z,c,U,F,c,U,F,c,z
time = 1
[Command]
name = "ai19"
command = z,c,U,F,c,U,z,x,D,a,F,z,U,F,U,F,y,z,F
time = 1
[Command]
name = "ai20"
command = z,c,U,U,F,c,U,F,U,F,c,U,F,U,F,y,z,D,F,x+z
time = 1
[Command]
name = "ai21"
command = z,c,D,F,U,DF,y,z+c,F,z,c,D,F,U
time = 1
[Command]
name = "ai22"
command = F,x,D,a,F,z,U,DF,y,z+c,x,D,a,F,z,U
time = 1
[Command]
name = "ai23"
command = z,c,U,F,U,D,U,c,z,D,a,F,z,U,y,z,F,x,D,z,c
time = 1
[Command]
name = "ai24"
command = z+b,F,y,z,F,x,z,c,U,F,c,U,F,U,F,z,c,z
time = 1
[Command]
name = "ai25"
command = F,U,c,x,F,U,c,x,F,U,c,x,F,U,c,x,FU,c+x
time = 1
[Command]
name = "ai26"
command = c,z,c,U,F,c,U,F,D,F,x+z,c,z,c,U,F,U,F,y
time = 1
[Command]
name = "ai27"
command = D,a,F,z,U,F,U,F,y,z,c,U,F,c,U,z,F,x
time = 1
[Command]
name = "ai28"
command = z,c,U,F,z,F,x,D,b,c,a,x,D
time = 1
[Command]
name = "ai29"
command = z,c,F,y,z,F,F,x,z,c,z,c,z,x,D,b,c,a
time = 1
[Command]
name = "ai30"
command = c,z,c,U,F,c,U,U,F,c,U,z,F,x,z,F,F
time = 1
[Command]
name = "ai31"
command = D,a,F,z,U,F,U,F,y,x+z,c,z,c,U,F,U,F,y+z
time = 1
[Command]
name = "ai32"
command = z,c,U,F,z,F,x,D,b,c,a,x,D,D,b,c,a
time = 1
[Command]
name = "ai33"
command = z,c,F,y,z,F,F,x,z,c,F,D,F,c,z,c,z,x
time = 1
[Command]
name = "ai34"
command = z,c,D,y,z+c,F,z,c,D,F,U,F,U,DF
time = 1
[Command]
name = "ai35"
command = F,x,D,a,F,z,x,D,a,F,z,UD,a,F,z,U
time = 1
[Command]
name = "ai36"
command = z,c,U,F,U,D,U,U,DF,y,z+c,c,z,y,z,F,x,D,z,c
time = 1
[Command]
name = "ai37"
command = z+b,F,y,z,F,U,F,z,c,z,F,x,z,c,U,F,c,U
time = 1
[Command]
name = "ai38"
command = F,U,c,x,F,U,c,x,F,U,c,x,F,c,U,F,D,F
time = 1
[Command]
name = "ai39"
command = c,z,c,U,F,x+z,c,U,c,x,FU,c+z,c,U,F,U,F,y
time = 1
[Command]
name = "ai40"
command = F,z,c,z,F,x,z,c,U,F,c,U,x,FU,c+z,c,U,F,U,F,y
time = 1
[Command]
name = "ai41"
command = F,U,c,x,F,U,c,x,F,F,D,F,z+b,F,y,z,F,U
time = 1
[Command]
name = "ai42"
command = c,z,c,U,F,U,c,x,F,c,U,x+z,c,U,c,z,x,a
time = 1



;-| Super Motions |--------------------------------------------------------
[Command]
name = "CB"
command = a+b, a, a, b
time = 60

[Command]
name = "BF_ab"
command = ~20$B, F, a+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = F, D, B, x
time = 24

[Command]
name = "HCB_y"
command = F, D, B, y
time = 24

[Command]
name = "HCF_a"
command = B, D, F, a
time = 24

[Command]
name = "HCF_b"
command = B, D, F, b
time = 24

[Command]
name = "FHCF_x"
command = F, B, D, F, x
time = 35

[Command]
name = "FHCF_y"
command = F, B, D, F, y
time = 35

[Command]
name = "QCB_a"
command = D, DB, B, a
time = 24

[Command]
name = "QCB_b"
command = D, DB, B, b
time = 24

[Command]
name = "Tap_x"
command = x, x, x
time = 24

[Command]
name = "Tap_y"
command = y, y, y
time = 24

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
;-| Single Button |---------------------------------------------------------
[Command]
name = "up"
command = $U
time = 1

[Command]
name = "up2"
command = ~$U
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
[Statedef -1]


;---------------------------------------------------------------------------
; Crumbling Bushido
[State -1]
type = ChangeState
value = 3100
triggerall = var(24) != 1
triggerall = power >= 2000
triggerall = var(24)=0 && command = "CB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,460]

;---------------------------------------------------------------------------
; Combo Rush
[State -1]
type = ChangeState
value = 3000
triggerall = var(24) != 1
triggerall = power >= 1000
triggerall = var(24)=0 && command = "BF_ab"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Headbutt (run)
[State -1]
type = ChangeState
value = 1360
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "FHCF_x" || command = "FHCF_y"
trigger1 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger1 = movecontact
trigger2 = stateno = 250 && time <= 25
trigger2 = movecontact

;---------------------------------------------------------------------------
; Headbutt (weak)
[State -1]
type = ChangeState
value = 1300
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "FHCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Headbutt (strong)
[State -1]
type = ChangeState
value = 1350
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "FHCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Loancloth (snap)
[State -1]
type = ChangeState
value = 1200
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "HCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Loancloth (hit)
[State -1]
type = ChangeState
value = 1250
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "HCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Old Geezer projectile (weak)
[State -1]
type = ChangeState
value = 1100
triggerall = var(24) != 1
triggerall = numproj = 0
triggerall = var(24)=0 && command = "HCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Old Geezer projectile (strong)
[State -1]
type = ChangeState
value = 1150
triggerall = var(24) != 1
triggerall = numproj = 0
triggerall = var(24)=0 && command = "HCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Multi-Cane (run)
[State -1]
type = ChangeState
value = 1060
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "Tap_x" || command = "Tap_y"
trigger1 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger1 = movecontact
trigger2 = stateno = 250 && time <= 25
trigger2 = movecontact

;---------------------------------------------------------------------------
; Multi-Cane (weak)
[State -1]
type = ChangeState
value = 1000
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "Tap_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Multi-Cane (strong)
[State -1]
type = ChangeState
value = 1050
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "Tap_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Provocation
[State -1]
type = ChangeState
value = 520
triggerall = var(24) != 1
triggerall = var(24)=0 && command = "QCB_a" || command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Run Fwd
[State -1]
type = ChangeState
value = 100
triggerall = var(24) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = stateno != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Hop Back
[State -1]
type = ChangeState
value = 105
triggerall = var(24) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Roll back
[State -1]
type = ChangeState
value = 511
triggerall = var(24) != 1
trigger1 = command = "holdback"
trigger1 = (command = "x" && command = "a") || command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Roll fwd
[State -1]
type = ChangeState
value = 510
triggerall = var(24) != 1
trigger1 = (command = "x" && command = "a") || command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Cane Bump
[State -1]
type = ChangeState
value = 800
triggerall = var(24)=0 && command = "y"
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X <= 25

;---------------------------------------------------------------------------
; Guard Counter
[State -1]
type = ChangeState
value = 530
trigger1 = power >= 1000
trigger1 = stateno = 151 || stateno = 153
trigger1 = var(5) = 1

;---------------------------------------------------------------------------
; Standing Knockdown Kick
[State -1]
type = ChangeState
value = 260
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Running Punch
[State -1]
type = ChangeState
value = 220
triggerall = var(24)=0 && command = "x" || command = "y"
triggerall = var(24)=0 && command != "holddown"
triggerall = stateno = [100,101]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Running Kick
[State -1]
type = ChangeState
value = 250
triggerall = var(24)=0 && command = "a" || command = "b"
triggerall = var(24)=0 && command != "holddown"
triggerall = stateno = [100,101]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Cane Climb
[State -1]
type = ChangeState
value = 500
triggerall = var(24)=0 && command = "holdfwd" && command = "x"
triggerall = var(24)=0 && command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Close Stand Light Punch
[State -1]
type = ChangeState
value = 205
triggerall = p2bodydist x <= 40
triggerall = var(24)=0 && command = "x"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && time >= 5

;---------------------------------------------------------------------------
; Close Stand Strong Punch
[State -1]
type = ChangeState
value = 215
triggerall = p2bodydist x <= 50
triggerall = var(24)=0 && command = "y"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Close Stand Light Kick
[State -1]
type = ChangeState
value = 235
triggerall = p2bodydist x <= 25
triggerall = var(24)=0 && command = "a"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235 && time >= 6
trigger2 = prevstateno != 431

;---------------------------------------------------------------------------
; Close Stand Strong Kick
[State -1]
type = ChangeState
value = 245
triggerall = p2bodydist x <= 30
triggerall = var(24)=0 && command = "b"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = p2bodydist x > 40
triggerall = var(24)=0 && command = "x"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && time >= 5

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1]
type = ChangeState
value = 210
triggerall = p2bodydist x > 50
triggerall = var(24)=0 && command = "y"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = p2bodydist x > 25
triggerall = var(24)=0 && command = "a"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235 && time >= 6
trigger2 = prevstateno != 431

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1]
type = ChangeState
value = 240
triggerall = p2bodydist x > 30
triggerall = var(24)=0 && command = "b"
triggerall = var(24)=0 && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Knockdown Kick
[State -1]
type = ChangeState
value = 460
triggerall = (command = "b" && command = "y") || command = "c"
triggerall = var(24)=0 && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = var(24)=0 && command = "x"
triggerall = var(24)=0 && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 5

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 410
triggerall = var(24)=0 && command = "y"
triggerall = var(24)=0 && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(24)=0 && command = "a"
triggerall = var(24)=0 && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 6

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(24)=0 && command = "b"
triggerall = var(24)=0 && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = var(24)=0 && command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = var(24)=0 && command = "y"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Double Jump Strong Punch
[State -1]
type = ChangeState
value = 611
trigger1 = stateno = 610
trigger1 = animelem = 6
trigger1 = var(3) = 1

;---------------------------------------------------------------------------
; Jump Forward Strong Punch
[State -1]
type = ChangeState
value = 615
triggerall = var(24)=0 && command = "y"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = var(24)=0 && command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1]
type = ChangeState
value = 640
triggerall = var(24)=0 && command = "b"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Forward Strong Kick
[State -1]
type = ChangeState
value = 645
triggerall = var(24)=0 && command = "b"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(24)=0 && command = "start"
trigger1 = statetype != A
trigger1 = ctrl


[State -1]
type = VarSet
triggerall = var(24) !=1 && roundstate=2
trigger1 = command = "ai" || command = "ai2" || command = "ai3" || command = "ai4"
trigger2 = command = "ai5" || command = "ai6" || command = "ai7" || command = "ai8"
trigger3 = command = "ai9" || command = "ai10" || command = "ai11" || command = "ai12"
trigger4 = command = "ai13" || command = "ai14" || command = "ai15" || command = "ai16"
trigger5 = command = "ai17" || command = "ai18" || command = "ai19" || command = "ai20"
trigger6 = command = "ai21" || command = "ai22" || command = "ai23" || command = "ai24"
trigger7 = command = "ai25" || command = "ai26" || command = "ai27" || command = "ai28"
trigger8 = command = "ai29" || command = "ai30" || command = "ai31" || command = "ai32"
trigger9 = command = "ai33" || command = "ai34" || command = "ai35" || command = "ai36"
trigger10 = command = "ai37" || command = "ai38" || command = "ai39" || command = "ai40"
trigger11 = command = "ai41" || command = "ai42"
Trigger12  = NumHelper(10000)
Trigger12  = Helper(10000),var(59)
Trigger13  = 1
v = 24
value = 1

[State -1, AI_VarSet]
Type       = VarSet
TriggerAll = Var(24)    = 1
Trigger1   = RoundState = 4
Trigger2   = Win        = 1
Trigger3   = Lose       = 1
Trigger4   = DrawGame   = 1
V          = 24
Value      = -1

[State -1, AI_VarSet]
Type       = VarSet
TriggerAll = Var(24)    = -1
Trigger1   = RoundState = 2
V          = 24
Value      = 1

[State -2, DisplayToClipboard]
Type           = null;AppendToClipboard
Trigger1       = 1
Text           = "P2X:%3.0f,P2Y:%3.0f,Vx%2.2f,Vy%f2.2,Py%3.2f \n"
Params         = P2BodyDist X, P2BodyDist Y,Enemynear,Vel X,Enemynear,Vel Y,Pos Y
IgnoreHitPause = 1

[State -2, DisplayToClipboard]
Type           = AppendToClipboard
Trigger1       = 1
Text           = "AI %1d \n"
Params         = var(24)
IgnoreHitPause = 1

;投げ
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = (p2movetype!=H) && p2stateno!=[1200,1299] 
trigger1 = Ctrl || (stateno = 100) 
trigger1 = P2BodyDist X = [-5,10]
trigger1 = p2statetype != A
value = 800

[State -1, Back Step]
type = ChangeState
value = 400
triggerall = var(24) = 1 && RoundState = 2
triggerall = statetype != A && ctrl
triggerall = Ctrl || (stateno = 100) || stateno = 0
triggerall = P2BodyDist X = [-5,20]
Trigger1 = Facing = 1
Trigger1 = enemynear(0),Facing = 1 
Trigger2 = Facing = -1 
Trigger2 = enemynear(0),Facing = -1

;onara
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = (p2movetype=A) && power>=1000
triggerall = Ctrl || (stateno = 100) || (stateno = [0,600]) 
trigger1 = P2BodyDist X = [-5,50]
trigger1 = p2statetype != A
;trigger2 = P2BodyDist X = [-5,100]
;trigger2 = p2statetype != A && enemynear,numhelper>0
value = 3000





[State -1, Back Step]
type = ChangeState
value = 510
triggerall = var(24) = 1 && RoundState = 2
triggerall = statetype != A && ctrl
triggerall = (p2movetype=A)
triggerall = Ctrl || (stateno = 100) || stateno = 0
;triggerall = P2BodyDist X = [30,70]
Trigger1 = Facing = -1
Trigger1 = enemynear(0),Facing = 1 
Trigger2 = Facing = 1 
Trigger2 = enemynear(0),Facing = -1

[State -1, Back Step]
type = ChangeState
value =510
triggerall = var(24) = 1 && RoundState = 2
triggerall = statetype != A && ctrl && p2statetype=A
triggerall = (p2movetype=A)
triggerall = Ctrl || (stateno = 100) || stateno = 0
triggerall = P2BodyDist X = [-20,30]
Trigger1 = Facing = -1
Trigger1 = enemynear(0),Facing = 1 
Trigger2 = Facing = 1 
Trigger2 = enemynear(0),Facing = -1




[State -1, Back Step]
type = ChangeState
value = 510
triggerall = var(24) = 1 && RoundState = 2
triggerall = statetype != A && ctrl 
triggerall = (backedgedist<=80)
triggerall = Ctrl || (stateno = 100) || stateno = 0
trigger1 = P2BodyDist X = [-5,50]
Trigger1 = (p2statetype=L) || (p2statetype=A) && (p2movetype!=H)

[State -1, Guard(AI)]
Type = ChangeState
Value = 120
triggerall = var(24)=1 && roundstate = 2
TriggerAll = Ctrl||(StateNo=[20,22])||(StateNo=100&&Time>12)
TriggerAll = StateNo!=[120,155]
Trigger1 = P2StateType!=A
Trigger1 = P2Dist X>=0
Trigger1 = InGuardDist
Trigger1 = !EnemyNear,hitdefattr=SCA,NT,ST,HT
Trigger2 = !EnemyNear,hitdefattr=SCA,NT,ST,HT
Trigger2 = P2MoveType=A
Trigger2 = P2Dist X<0
Trigger3 = Enemy,NumHelper>0||Enemy,NumProj>0
Trigger3 = InGuardDist

;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist && p2statetype !=a
trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
trigger1 = P2BodyDist X = [-5,20]
value = 400

;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype =a
triggerall = (p2statetype!=L)
triggerall = !inguarddist 
trigger1 = Ctrl || (stateno = [40,60])  
value = 620





; Multi-Cane (run)
[State -1]
type = ChangeState
value = 1060
triggerall = !inguarddist
triggerall = var(24)=1 && roundstate=2 && statetype !=a
trigger1 = (Ctrl) || (stateno = 220)
trigger1 = movecontact  && time = [48,53]



;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist
trigger1 = Ctrl || (stateno = 400)  
trigger1 = p2statetype != A 
trigger1 = movecontact
value = 200



;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist
trigger1 = Ctrl || (stateno = 200)  
trigger1 = p2statetype != A 
trigger1 = movecontact
value = 210


[state -2,AI]
type = varset
trigger1 = var(24) = 1      ;AI判定
trigger1 = stateno =1100  ;特定の技のステート
v = 57        ;var(56)を使用
value = 180   ;180フレーム（３秒間）

[state -2,AI]
type = varadd
trigger1 = var(57) > 0
var(57) = -1

;hadou
[State -1]
type = ChangeState
triggerall = var(57)=0
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L) && p2stateno!=[1200,1299]
triggerall = !inguarddist && p2stateno!=0 && p2statetype !=a
trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
trigger1 = P2BodyDist X >150
trigger1 = random<=300
value = 1100




;立ち小パン
;[State -1]
;type = ChangeState
;triggerall = var(24)=1 && roundstate=2 && statetype !=a
;triggerall = (p2statetype!=L) && p2stateno=[1200,1299]
;triggerall = !inguarddist && power>=1000
;trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
;trigger1 = p2statetype = A 
;value = 3000

;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist  && p2stateno=[1200,1299]
trigger1 = Ctrl || (stateno = 100) || (stateno = 0)   
value = 215

;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist  
trigger1 = Ctrl || (stateno = 215)  
trigger1 = movecontact
value = 1050



;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist
trigger1 = Ctrl || (stateno = 210)  
trigger1 = p2statetype != A 
trigger1 = movehit
value = 1200


;立ち小パン
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist
trigger1 = Ctrl || (stateno = 210)  
trigger1 = p2statetype != A 
trigger1 = movecontact
value = 1100


[State -1, Back Step]
type = ChangeState
value = 511
triggerall = var(24) = 1 && RoundState = 2
triggerall = statetype != A && ctrl
trigger1 = P2BodyDist X <= 40
trigger1 = p2statetype = L 
trigger2 = frontedgebodydist <= 40
trigger2 = p2statetype = L 
trigger3 = frontedgebodydist <= 80
trigger3 = p2statetype = A
trigger3 = p2movetype = H


;ゲージ溜め
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype=L) 
triggerall = !inguarddist && p2stateno!=[1200,1299]
trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
value = 1100

;ゲージ溜め
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype=a) && p2movetype=H 
triggerall = !inguarddist && p2stateno!=[1200,1299]
trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
value = 1100

;ゲージ溜め
;[State -1]
;type = ChangeState
;triggerall = var(24)=1 && roundstate=2 && statetype !=a
;triggerall = (p2statetype=a) && p2stateno=[800,820]
;triggerall = !inguarddist && p2stateno!=[1200,1299]
;trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
;value = 400



;taikuu
[State -1]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = !inguarddist
trigger1 = Ctrl || (stateno = 100)  || (stateno = 0)  
trigger1 = P2BodyDist X = [-5,30]
trigger1 = p2statetype = A && p2movetype!=H
value = 1300


[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(24) = 1 && RoundState = 2
triggerall = statetype != A && statetype != L && ctrl ;&& p2statetype != L
triggerall = stateno != 100
triggerall = !inguarddist
trigger1 = ctrl || (stateno = 0) 
trigger1 = !inguarddist
trigger1 = P2BodyDist X > 19
ctrl = 1


[State -1]
type = ChangeState
value = 0
triggerall = var(24) = 1 && RoundState = 2
trigger1 = stateno=[40,60]
ctrl=1
