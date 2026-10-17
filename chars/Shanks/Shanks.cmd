;===============================================================================
;-------------------------------Comandos----------------------------------------
;===============================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;----------------------------SUPERS-------------------------;




[Command]
name = "Super Move Unite"
command = ~D,DF,F,D,DF,F,x
time = 35
[Command]
name = "Super Move Unite"
command = ~D,DF,F,D,DF,F+x
time = 35


[Command]
name = "Super Move Tag 2"
command = ~D,DB,B,x
time = 20
[Command]
name = "Super Move Tag 2"
command = ~D,DB,B+x
time = 20

[Command]
name = "Super Move Tag 1"
command = ~D,DF,F,x
time = 20
[Command]
name = "Super Move Tag 1"
command = ~D,DF,F+x
time = 20




[Command]
name = "Shin Sekai Strike"
command = ~F,B,DB,D,DF,F+a+c
time = 35
[Command]
name = "Shin Sekai Strike"
command = ~F,B,DB,D,DF,F,a+c
time = 35
[Command]
name = "Shin Sekai Strike"
command = ~F,B,DB,D,DF,F+x
time = 35
[Command]
name = "Shin Sekai Strike"
command = ~F,B,DB,D,DF,F,x
time = 35

[Command]
name = "Haoshoku Haki"
command = ~D,DB,B,D,DB,B+c
time = 35
[Command]
name = "Haoshoku Haki"
command = ~D,DB,B,D,DB,B,c
time = 35


[Command]
name = "Heaven Splitter"
command = ~D,DF,F,D,DF,F+a
time = 35
[Command]
name = "Heaven Splitter"
command = ~D,DF,F,D,DF,F,a
time = 35


;----------------------------SPECIALS-------------------------;



[Command]
name = "ShotGun"
command = ~D,DF,F+c
time = 20
[Command]
name = "ShotGun"
command = ~D,DF,F,c
time = 20


[Command]
name = "Rush Double Kick"
command = ~F,B,F+b
time = 25
[Command]
name = "Rush Double Kick"
command = ~F,B,F,b
time = 25


[Command]
name = "Pirate Catch"
command = ~F,D,DF+b
time = 20
[Command]
name = "Pirate Catch"
command = ~F,D,DF,b
time = 20


[Command]
name = "Tatami Gaeshi"
command = ~D,DB,B+b
time = 20
[Command]
name = "Tatami Gaeshi"
command = ~D,DB,B,b
time = 20


[Command]
name = "Revenge Counter"
command = ~B,D,DB+a
time = 20
[Command]
name = "Revenge Counter"
command = ~B,D,DB,a
time = 20


[Command]
name = "Chaoz Slash"
command = ~F,D,DF+a
time = 20
[Command]
name = "Chaoz Slash"
command = ~F,D,DF,a
time = 20

[Command]
name = "Red Hair Assault"
command = ~B,DB,D,DF,F+a
time = 25
[Command]
name = "Red Hair Assault"
command = ~B,DB,D,DF,F,a
time = 25


[Command]
name = "Haki POW UP"
command = ~B,D,DB+c
time = 20
[Command]
name = "Haki POW UP"
command = ~B,D,DB,c
time = 20

;-| Default Values |-------------------------------------------------------
[Defaults]

command.time = 30
[Command]
name = "Super Jump"
command = ~D, U
time = 5

[Command]
name = "Super Jump"
command = ~D, UF
time = 5
[Command]
name = "Super Jump"
command = ~D, UB
time = 5

[Command]
name = "Super Jump"
command = ~DB, UF
time = 5
[Command]
name = "Super Jump"
command = ~DB, UB
time = 5

[Command]
name = "Super Jump"
command = ~DF, UF
time = 5
[Command]
name = "Super Jump"
command = ~DF, UB
time = 5

[Command]
name = "Super Jump"
command = ~DB, U
time = 5
[Command]
name = "Super Jump"
command = ~DF, U
time = 5


command.buffer.time = 1
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
name = "Burst"
command = a+b+c
time = 1
[Command]
name = "Burst"
command = a+x
time = 1
[Command]
name = "Burst"
command = a+y
time = 1
[Command]
name = "Burst"
command = a+z
time = 1
[Command]
name = "Burst"
command = b+x
time = 1
[Command]
name = "Burst"
command = b+y
time = 1
[Command]
name = "Burst"
command = b+z
time = 1
[Command]
name = "Burst"
command = c+x
time = 1
[Command]
name = "Burst"
command = c+y
time = 1
[Command]
name = "Burst"
command = c+z
time = 1



[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1



[Command]
name = "Throw Basic"
command = b+c
time = 1
[Command]
name = "Throw Basic"
command = z
time = 1


[Command]
name = "Change Tag"
command = a+c
time = 1
[Command]
name = "Change Tag"
command = x
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
name = "start"
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




[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down" ;Required (do not remove)
command = D
time = 1

[Command]
name = "fwd" ;Required (do not remove)
command = F
time = 1

[Command]
name = "back" ;Required (do not remove)
command = B
time = 1


;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = y+z ; con el botón A+B activamos la AI
;time = 1

;[Command]
;name = "AI desactivado"
;command = x+y ; Con el boton B+C desactivamos la AI
;time = 1

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Correr Adelante Haki
[State -1, Correr Adelante]
type = ChangeState
triggerall = var(14) = 1
value = 107
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras  Haki
[State -1, Correr Atras]
type = ChangeState
triggerall = numhelper(8561) = 0
triggerall = var(14) = 1
value = 108
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = var(14) = 0
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = numhelper(8561) = 0
triggerall = var(14) = 0
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value           = 60
triggerall      = command = "Super Jump"
triggerall      = numhelper(65) = 0
trigger1        = (statetype = S) && (ctrl)


;===========================================================================
;--------------------------------Ataques Specials-----------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Super Move Unite
[State -1, Super Move Unite]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper(8900) = 1
triggerall = (helper(8900),stateno = 8901)
triggerall = Numpartner
triggerall = command = "Super Move Unite"
triggerall = (partner, name="Shirohige") || (partner, name="Mihawk")
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (movecontact) && (time > 34)
trigger17 = (stateno = 3001) && (time > 7)
value = ifelse((partner, name="Shirohige"),3800,3900)


;Shin Sekai Strike
[State -1, Shin Sekai Strike]
type = ChangeState
value = 3300
triggerall = Power >= 2000
triggerall = command = "Shin Sekai Strike"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (movecontact) && (time > 34)
trigger17 = (stateno = 3001) && (time > 7)


;Haoshoku Haki
[State -1, Haoshoku Haki]
type = ChangeState
value = 3200
triggerall = Power >= 1000
triggerall = numhelper(1010) = 0
triggerall = numhelper(1020) = 0
triggerall = command = "Haoshoku Haki"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (movecontact) && (time > 34)


;Heaven Splitter Air
[State -1, Heaven Splitter Air]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "Heaven Splitter"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = (stateno = 625) && (movecontact)
trigger6 = (stateno = 630) && (movecontact)
trigger7 = (stateno = 635) && (movecontact)
trigger8 = (stateno = 1630) && (movecontact)



;Heaven Splitter
[State -1, Heaven Splitter]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = command = "Heaven Splitter"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (movecontact) && (time > 34)

;===========================================================================
;--------------------------------Ataques Specials-----------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Haki POW UP
[State -1, Haki POW UP]
type = ChangeState
value = 1800
triggerall = var(14) = 0
triggerall = numhelper(1020) = 0
triggerall = numhelper(1010) = 0
triggerall = numhelper(1840) = 0
triggerall = command = "Haki POW UP"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ShotGun
[State -1, ShotGun]
type = ChangeState
value = 1700
triggerall = command = "ShotGun"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (hitcount >= 1)
trigger13 = (stateno = 1121) && (hitcount >= 1)
trigger14 = (stateno = 1310) && (hitcount >= 1)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)


;---------------------------------------------------------------------------
;Rush Double Kick
[State -1, Rush Double Kick]
type = ChangeState
value = 1600
triggerall = command = "Rush Double Kick"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (hitcount >= 1)
trigger13 = (stateno = 1121) && (hitcount >= 1)
trigger14 = (stateno = 1310) && (hitcount >= 1)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (hitcount >= 1) && (time > 34)


;---------------------------------------------------------------------------
; Pirate Catch
[State -1, Pirate Catch]
type = ChangeState
value = 1500
triggerall = command = "Pirate Catch"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (hitcount >= 1)
trigger13 = (stateno = 1121) && (hitcount >= 1)
trigger14 = (stateno = 1310) && (hitcount >= 1)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (hitcount >= 1) && (time > 34)

;---------------------------------------------------------------------------
; Tatami Gaeshi
[State -1, Tatami Gaeshi]
type = ChangeState
value = 1400
triggerall = command = "Tatami Gaeshi"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (hitcount >= 1)
trigger13 = (stateno = 1121) && (hitcount >= 1)


;---------------------------------------------------------------------------
; Revenge Counter
[State -1, Revenge Counter]
type = ChangeState
value = 1300
triggerall = command = "Revenge Counter"
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Red Hair Assault
[State -1, Red Hair Assault]
type = ChangeState
value = 1100
triggerall = command = "Red Hair Assault"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)


;---------------------------------------------------------------------------
; Chaoz Slash
[State -1, Chaoz Slash]
type = ChangeState
value = 1200
triggerall = command = "Chaoz Slash"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (hitcount >= 1)
trigger13 = (stateno = 1121) && (hitcount >= 1)
trigger14 = (stateno = 1310) && (hitcount >= 1)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (hitcount >= 1) && (time > 34)





;===============================================================================
;---- Tag Team System ----------------------------------------------------------
;===============================================================================

[State -3, Tag System  - Start Exit Command - Super Move 1]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = power >= 1000
triggerall = command = "Super Move Tag 1"
trigger1 = ctrl
trigger1 = ailevel = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (time > 34)
trigger17 = (stateno = 3001) && (time > 7)
trigger18 = (stateno = [150,155]) && (power >= 1500)
value = 902

[State -3, Tag System  - Start Exit Command - Super Move 2]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = power >= 1000
triggerall = command = "Super Move Tag 2"
trigger1 = ctrl
trigger1 = ailevel = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (time > 34)
trigger17 = (stateno = 3001) && (time > 7)
trigger18 = (stateno = [150,155]) && (power >= 1500)
value = 903


[State -3, Tag System  - Start Exit Command - Offensive]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = command = "Change Tag"
triggerall = p2bodydist x <= 75
trigger1 = ctrl
trigger1 = ailevel = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)
trigger12 = (stateno = 1110) && (movecontact)
trigger13 = (stateno = 1121) && (movecontact)
trigger14 = (stateno = 1310) && (movecontact)
trigger15 = (stateno = 1400) && (numhelper(1450) = 1)
trigger15 = (helper(1450), movecontact = 1)
trigger16 = (stateno = 1700) && (time > 34)
trigger17 = (stateno = [150,155]) && (power >= 1500)
value = 900



[State -3, Tag System  - Start Exit Command - Defensive]
type = ChangeState
triggerall = NumPartner
triggerall = partner,life > 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != [900,999]
triggerall = partner,stateno = 909
triggerall = Numhelper
triggerall = (helper(8900),stateno = 8901)
triggerall = command = "Change Tag"
triggerall = ctrl
trigger1 = ailevel = 0 && p2bodydist x > 75
trigger2 = ailevel = 0 && movetype != A
trigger3 = ailevel > 0 && random < 20
value = 901


;===============================================================================
;---------------- Burst --------------------------------------------------------
;===============================================================================
;---------------------------------------------------------------------------
; Burst - Anti Combos
[State -1, Burst - Anti Combos]
type = ChangeState
value = 500
triggerall = alive = 1
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 68
triggerall = p2stateno != [3000,3999]
triggerall = stateno = [5000,5035]
trigger1 = movetype = H
trigger1 = ctrl = 0


; Burst - Block Reject
[State -1, Burst - Block Reject]
type = ChangeState
value = 510
triggerall = alive = 1
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 34
triggerall = var(24) = 0 ; para que no se pueda usar el Bust en Block si ya está activado el Burst Offensive
triggerall = stateno = [150,153]
trigger1 = statetype = S || statetype = C
trigger2 = statetype = A

; Burst - Offensive Activation
[State -1, Burst - Offensive Activation]
type = ChangeState
value = 520
triggerall = command = "Burst"
triggerall = numhelper(8300) = 1
triggerall = helper(8300),var(20) >= 68
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)




;===============================================================================
;---- Throw Basics -------------------------------------------------------------
;===============================================================================
; Throw Basics
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "Throw Basic"
triggerall = ctrl
trigger1 = statetype != A



;===============================================================================
;---- Rolls en el CMD ------------------------------------------------------
;===============================================================================

;Roll BACK - Super
[State -1, Roll BACK]
type = ChangeState
value = 715
triggerall = command = "recovery" && command = "holdback" || command = "recovery" && command = "holdback"  && command = "holddown"
triggerall = stateno = [150,153]
Triggerall = power >= 500
trigger1 = statetype = S || statetype = C

;Roll BACK
[State -1, Roll BACK]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback" || command = "recovery" && command = "holdback"  && command = "holddown"
triggerall = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll FWD - Super
[State -1, Roll FWD]
type = ChangeState
value = 705
triggerall = numhelper(8380) = 0; helper(8300), var(20) < 67 ; no recovery during STUN fall
triggerall = command = "recovery" || command = "recovery" && command = "holddown"
triggerall = stateno = [150,153]
Triggerall = power >= 1000
trigger1 = statetype = S || statetype = C

;Roll FWD
[State -1, Roll FWD]
type = ChangeState
value = 700
triggerall = numhelper(8380) = 0 ; no recovery during STUN fall
triggerall = command = "recovery" || command = "recovery" && command = "holddown"
triggerall = statetype = S || statetype = C
triggerall = ifelse((stateno = [200,320]),power >= 1000,power >= 0)
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 220) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = (stateno = 230) && (movecontact)
trigger11 = (stateno = 235) && (movecontact)

;---------------------------------------------------------------------------
;Roll Fall Down
[State -1, Roll Fall Down]
type = ChangeState
value = ifelse(vel x > 0, 720, 725)
triggerall = numhelper(8380) = 0 ; helper(8300), var(20) < 67 ; no recovery during STUN fall
triggerall = enemy, numhelper(3095) = 0
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30
trigger1 = vel y > 0 && vel y < 9



;===========================================================================
;--------------------------------Ataques Normales---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Espadazos Run
[State -1, Espadazos]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = stateno = 100 ||  stateno = 107
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Run
[State -1, Patada]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = stateno = 100 ||  stateno = 107
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Espadazos  Agachado
[State -1, Espadazos  Agachado]
type = ChangeState
value = 205
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 52)


; Espadazos
[State -1, Espadazos]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 52)

;---------------------------------------------------------------------------
; Kick Up
[State -1, Kick Up]
type = ChangeState
value = 217
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 52)

;---------------------------------------------------------------------------
; Kick Up
[State -1, Kick Up]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger6 = (stateno = 52)

;---------------------------------------------------------------------------
; Patada
[State -1, Patada]
type = ChangeState
value = 210
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 52)


;---------------------------------------------------------------------------
; Haushoku Haki
[State -1, Haushoku Haki]
type = ChangeState
value = ifelse(var(14)=1,225,220)
triggerall = numhelper(7900) = 1
triggerall = helper(7900), var(19) = 200
triggerall = command = "c"
triggerall = Prevstateno != 5400
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 201) && (movecontact)
trigger4 = (stateno = 205) && (movecontact)
trigger5 = (stateno = 210) && (movecontact)
trigger6 = (stateno = 215) && (movecontact)
trigger7 = (stateno = 217) && (movecontact)
trigger8 = (stateno = 52)

;---------------------------------------------------------------------------
; Espadazo Aire
[State -1, Espadazo Aire]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Patada Aire
[State -1, Patada Aire]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)



;---------------------------------------------------------------------------
; Haushoku Haki  Aire
[State -1, Ataque Aire]
type = ChangeState
value = ifelse(var(14)=1,625,620)
triggerall = numhelper(7900) = 1
triggerall = helper(7900), var(19) = 200
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)


;-------------------------------------------------------------------------------
; Activar IA
;-------------------------------------------------------------------------------



[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1

