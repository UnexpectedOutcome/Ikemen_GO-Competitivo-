
;---------------------------------------------------------------------------;
;                            [ Hyper Move's ]                               ;
;---------------------------------------------------------------------------;
[Command]
name                = "Bakuryuuha_a"     
command             = D, F, D, F, a
time                = 25

[Command]
name                = "Bakuryuuha_b"     
command             = D, F, D, F, b
time                = 25

[Command]
name                = "Kaze_no_Kizu_MAX2"     
command             = ~$D, DB, B, D, DB, B, a+b
time                = 25

[Command]
name                = "Kaze_no_Kizu_MAX1"     
command             = ~$D, DB, B, D, DB, B, a 
time                = 25

[Command]
name                = "Kaze_no_Kizu_MAX1"     
command             = ~$D, DB, B, D, DB, B, b 
time                = 25

[Command]
name                = "Kaze_no_Kizu_MAX3"     
command             = ~$D, DB, B, D, DB, B, c
time                = 25

[Command]
name                = "Sankon_Tetsou_MAX2"     
command             = D, F, D, F, x+y
time                = 25

[Command]
name                = "Sankon_Tetsou_MAX1"     
command             = D, F, D, F, x 
time                = 25

[Command]
name                = "Sankon_Tetsou_MAX1"     
command             = D, F, D, F, y 
time                = 25

[Command]
name                = "Sankon_Tetsou_MAX3"     
command             = D, B, D, F, z 
time                = 25

[Command]
name                = "Kongosoha"     
command             = D, F, D, F, c 
time                = 25

;---------------------------------------------------------------------------;
;                              [ Super Move's ]                             ;
;---------------------------------------------------------------------------;

[Command]
name                = "Hijin_Ketsou_light"     
command             = D, B, x 
time                = 15

[Command]
name                = "Hijin_Ketsou_hard"     
command             = D, B, y 
time                = 15

[Command]
name                = "Kongosoha_light"     
command             = D, F, a 
time                = 15

[Command]
name                = "Kongosoha_hard"     
command             = D, F, b 
time                = 15

[Command]
name                = "Kaze_no_Kizu_light"     
command             = D, B, a 
time                = 15

[Command]
name                = "Kaze_no_Kizu_hard"     
command             = D, B, b 
time                = 15

[Command]
name                = "Sankon_Tetsou_light"     
command             = D, F, x 
time                = 15

[Command]
name                = "Sankon_Tetsou_hard"     
command             = D, F, y 
time                = 15

[Command]
name                = "Upper_light"     
command             = F, D, DF, a
time                = 20

[Command]
name                = "Upper_hard"     
command             = F, D, DF, b
time                = 20
;---------------------------------------------------------------------------;
;                              [ Double Tap ]                               ;
;---------------------------------------------------------------------------;

[Command]
name                = "FF"     
command             = F, F
time                = 10

[Command]
name                = "BB"     
command             = B, B
time                = 10

;---------------------------------------------------------------------------;
;                       | 2/3 Button Combination |                          ;
;---------------------------------------------------------------------------;
[Command]
name                = "recovery"
command             = a+x
time                = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name                = "down_a"
command             = /$D,a
time                = 1

[Command]
name                = "down_b"
command             = /$D,b
time                = 1

;-| Single Button |---------------------------------------------------------
[Command]
name                = "a"
command             = a
time                = 1

[Command]
name                = "b"
command             = b
time                = 1

[Command]
name                = "c"
command             = c
time                = 1

[Command]
name                = "x"
command             = x
time                = 1

[Command]
name                = "y"
command             = y
time                = 1

[Command]
name                = "z"
command             = z
time                = 1

[Command]
name                = "s"
command             = s
time                = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name                = "holdfwd";Required (do not remove)
command             = /$F
time                = 1

[Command]
name                = "holdback";Required (do not remove)
command             = /$B
time                = 1

[Command]
name                = "holdup" ;Required (do not remove)
command             = /$U
time                = 1

[Command]
name                = "holddown";Required (do not remove)
command             = /$D
time                = 1

[Command]
name                = "hold_x"
command             = /x
time                = 1

[Command]
name                = "hold_y"
command             = /y
time                = 1

[Command]
name                = "hold_z"
command             = /z
time                = 1

[Command]
name                = "hold_a"
command             = /a
time                = 1

[Command]
name                = "hold_b"
command             = /b
time                = 1

[Command]
name                = "hold_c"
command             = /c
time                = 1

;---------------------------------------------------------------------------;
[Statedef -1]
;---------------------------------------------------------------------------;
;---------------------------------------------------------------------------;
;                          [ Hyper Movement's ]                             ;
;---------------------------------------------------------------------------;
[State -1:          Bakuryuuha]
type                = ChangeState
triggerall          = (command = "Bakuryuuha_a") && (power >= 1000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
value               = 3000
trigger16 = Movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021
[State -1:          Bakuryuuha]
type                = ChangeState
triggerall          = (command = "Bakuryuuha_b") && (power >= 1000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
value               = 3000
trigger16 = Movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021

[State -1:          Kase no Kizu]
type                = ChangeState
triggerall          = (command = "Kaze_no_Kizu_MAX2") && (power >= 2000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
value               = 4010
trigger16 = Movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021
trigger17 = Movecontact && animelem = 1, >= 0 && animelem = 5, <= 0
trigger17 = stateno = 1061
trigger18 = stateno = 3010
trigger19 = Movecontact
trigger19 = stateno = 3030

[State -1:          Kase no Kizu]
type                = ChangeState
triggerall          = (command = "Kaze_no_Kizu_MAX1") && (power >= 1000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
value               = 3010
trigger16 = Movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021
trigger17 = Movecontact && animelem = 1, >= 0 && animelem = 5, <= 0
trigger17 = stateno = 1061

[State -1:          Kase no Kizu]
type                = ChangeState
triggerall          = (command = "Sankon_Tetsou_MAX2") && (power >= 1000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
value               = 4030
trigger16 = Movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021
trigger17 = Movecontact
trigger17 = stateno = 3030
trigger18 = stateno = 3010

[State -1:          Kase no Kizu]
type                = ChangeState
triggerall          = (command = "Sankon_Tetsou_MAX1") && (power >= 1000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
value               = 3030
trigger16 = Movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021

;---------------------------------------------------------------------------
[State -1:          Sankon_Tetsou_MAX3]
type                = ChangeState
triggerall          = (command = "Sankon_Tetsou_MAX3") && (power >= 3000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
trigger16 = movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021
value               = 20011
trigger17 = movecontact
trigger17 = stateno = 3030||stateno = 4030
trigger18 = stateno = 3010||stateno = 4010

[State -1:          Sankon_Tetsou_MAX3]
type                = ChangeState
triggerall          = (command = "Kaze_no_Kizu_MAX3") && (power >= 3000)
trigger1            = (statetype = S) && (ctrl) && (!numprojid(3000))
trigger2            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3000))
trigger3            = (projhit1010=1) && (!numprojid(3000))
trigger4            = (projhit1020=1) && (statetype = S) && (!numprojid(3000))
trigger5            = (projhit1040=1) && (!numprojid(3000))
trigger6            = (statetype = S) && (ctrl) && (!numprojid(3010))
trigger7            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3010))
trigger8            = (projhit1010=1) && (!numprojid(3010))
trigger9            = (projhit1020=1) && (statetype = S) && (!numprojid(3010))
trigger10            = (projhit1040=1) && (!numprojid(3010))
trigger11            = (statetype = S) && (ctrl) && (!numprojid(3020))
trigger12            = (stateno = [200,350]) && (Movecontact) && (!numprojid(3020))
trigger13            = (projhit1010=1) && (!numprojid(3020))
trigger14            = (projhit1020=1) && (statetype = S) && (!numprojid(3020))
trigger15            = (projhit1040=1) && (!numprojid(3020))
trigger16 = movecontact
trigger16 = stateno = 1002||stateno = 1005||stateno = 1010||stateno = 1011||stateno = 1020||stateno = 1021
value               = 30000
trigger17 = movecontact
trigger17 = stateno = 3030||stateno = 4030
trigger18 = stateno = 3010||stateno = 4010

;---------------------------------------------------------------------------;
;                          [ Super Movement's ]                             ;
;---------------------------------------------------------------------------;
;---------------------------------------------------------------------------;
;                           [ Hijin Ketsou ]                                ;
;---------------------------------------------------------------------------;
[State -1:          Hijin Ketsou light]
type                = ChangeState
triggerall          = (command = "Hijin_Ketsou_hard") && (!numprojid(1020)) 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [200,350]) && (Movecontact)
value               = 1021

[State -1:          Hijin Ketsou light]
type                = ChangeState
triggerall          = (command = "Hijin_Ketsou_light") && (!numprojid(1020)) 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [200,350]) && (Movecontact)
value               = 1020

[State -1:          Hijin Ketsou aereo light]
type                = ChangeState
triggerall          = (command = "Hijin_Ketsou_hard") && (!numprojid(1020)) 
trigger1            = (statetype = A) && (ctrl)
trigger2            = (stateno = [400,450]) && (Movecontact)
value               = 1032

[State -1:          Hijin Ketsou aereo light]
type                = ChangeState
triggerall          = (command = "Hijin_Ketsou_light") && (!numprojid(1020)) 
trigger1            = (statetype = A) && (ctrl)
trigger2            = (stateno = [400,450]) && (Movecontact)
value               = 1030
;---------------------------------------------------------------------------;
;                           [ Kaze no Kizu ]                                ;
;---------------------------------------------------------------------------;
[State -1:          Kaze no Kizu light]
type                = ChangeState
triggerall          = (command = "Kaze_no_Kizu_hard") && (!numprojid(1010)) 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [200,350]) && (Movecontact)
value               = 1011

[State -1:          Kaze no Kizu light]
type                = ChangeState
triggerall          = (command = "Kaze_no_Kizu_light") && (!numprojid(1010)) 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [200,350]) && (Movecontact)
value               = 1010
;---------------------------------------------------------------------------;
;                           [ Sankon_Tetsou ]                               ;
;---------------------------------------------------------------------------;
[State -1:          Sankon Tetsou light]
type                = ChangeState
triggerall          = command = "Sankon_Tetsou_hard" 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [200,350]) && (Movecontact)
trigger3            = (stateno = 1010) && (Movecontact)
trigger4            = (stateno = 1011) && (Movecontact)
value               = 1003

[State -1:          Sankon Tetsou light]
type                = ChangeState
triggerall          = command = "Sankon_Tetsou_light" 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [1010,1011]) && (Movecontact)
trigger3            = (stateno = [200,350]) && (Movecontact)
value               = 1000

;---------------------------------------------------------------------------;
;                           [ Upper ]                               ;
;---------------------------------------------------------------------------;
[State -1:          Sankon Tetsou light]
type                = ChangeState
triggerall          = command = "Upper_light" 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [200,350]) && (Movecontact)
trigger3            = (stateno = 1010) && (Movecontact)
trigger4            = (stateno = 1011) && (Movecontact)
value               = 1060

[State -1:          Sankon Tetsou light]
type                = ChangeState
triggerall          = command = "Upper_hard" 
trigger1            = (statetype = S) && (ctrl)
trigger2            = (stateno = [1010,1011]) && (Movecontact)
trigger3            = (stateno = [200,350]) && (Movecontact)
value               = 1061
;---------------------------------------------------------------------------;
;                          [ Basic Movement's ]                             ;
;---------------------------------------------------------------------------;

[State -1,          Throw]
type                = ChangeState
trigger1          = (command = "z") && (statetype = S) && (ctrl) 
;trigger1            = (p2bodydist X < 3)
value               = 600

[State -1:          Dash Forward]
type                = ChangeState
triggerall          = command = "FF"
trigger1            = (StateType = S||StateType != A) && (ctrl)
value               = 100

[State -1:          Dash Forward]
type                = ChangeState
triggerall          = command = "FF"
trigger1            = (StateType != S||StateType = A) && (ctrl)
value               = 103

[State -1:          Dash Back]
type                = ChangeState
triggerall          = command = "BB"
trigger1            = (StateType = S||StateType != A) && (ctrl)
value               = 105

;---------------------------------------------------------------------------;
;                             [ Stand Moves ]                               ;
;---------------------------------------------------------------------------;

[State -1:          PUTAZO DEVIL PARADO]
type                = ChangeState
triggerall          = (command = "x") && (command != "holddown")
trigger1            = (StateType = S||StateType != A) && (ctrl)
trigger2            = stateno = 101
value               = 200

[State -1:          PUTAZO FUERTE PARADO]
type                = ChangeState
triggerall          = (command = "y") && (command != "holddown")
trigger1            = (StateType = S||StateType != A) && (ctrl)
trigger2            = (stateno = 220) && (Movecontact)
value               = 210
trigger3            = (stateno = 200) && (Movecontact)
trigger4            = stateno = 101

[State -1:          ESPADAZO DEVIL PARADO]
type                = ChangeState
triggerall          = (command = "a") && (command != "holddown")
trigger1            = (StateType = S||StateType != A) && (ctrl)
trigger2            = (stateno = 200) && (Movecontact)
value               = 220
trigger3            = stateno = 101

[State -1:          ESPADAZO FUERTE PARADO]
type                = ChangeState
triggerall          = (command = "b") && (command != "holddown")
trigger1            = (StateType = S||StateType != A) && (ctrl)
trigger2            = (stateno = 210) && (Movecontact)
value               = 230
trigger3            = stateno = 101

;---------------------------------------------------------------------------;
;                             [ Crouch Moves ]                              ;
;---------------------------------------------------------------------------;
[State -1:	    PUTAZO DEVIL AGACHADO]
type                = ChangeState
triggerall          = (command = "x") && (command = "holddown")
trigger1            = (StateType = C||StateType != A) && (ctrl)
value               = 300
trigger2            = (stateno = 320) && (Movecontact)
trigger3            = (stateno = 230) && (Movecontact)

[State -1:	    PUTAZO FUERTE AGACHADO]
type                = ChangeState
triggerall          = (command = "y") && (command = "holddown")
trigger1            = (StateType = C||StateType != A) && (ctrl)
trigger2            = (stateno = 320) && (Movecontact)
trigger3            = (stateno = 300) && (Movecontact)
value               = 310

[State -1:	    ESPADAZO DEVIL AGACHADO]
type                = ChangeState
triggerall          = (command = "a") && (command = "holddown")
trigger1            = (StateType = C||StateType != A) && (ctrl)
trigger2            = (stateno = 300) && (Movecontact)
value               = 320
trigger3            = (stateno = 230) && (Movecontact)

[State -1:	    ESPADAZO FUERTE AGACHADO]
type                = ChangeState
triggerall          = (command = "b") && (command = "holddown")
trigger1            = (StateType = C||StateType != A) && (ctrl) 
trigger2            = (stateno = 310) && (Movecontact)
value               = 330
trigger3            = (stateno = 230) && (Movecontact)
trigger4            = (stateno = 320) && (Movecontact)

;---------------------------------------------------------------------------;
;                             [ Air Moves ]                                 ;
;---------------------------------------------------------------------------;
[State -1:          PUTAZO AEREO]
type                = ChangeState
triggerall          = command = "x" ||command = "y"
trigger1            = (StaTetype = A||StateType != S) && (ctrl) 
value               = 400

[State -1:          ESPADAZO AEREO]
type                = ChangeState
triggerall          = command = "a" ||command = "b"
trigger1            = (StaTetype = A||StateType != S) && (ctrl)
value               = 410

;Charge-------------------------------------
[State ]
type=ChangeState
value=20000
triggerall=statetype=S
triggerall=Power<5000
triggerall=ctrl
trigger1=command="hold_a"
trigger1=command="hold_y"
