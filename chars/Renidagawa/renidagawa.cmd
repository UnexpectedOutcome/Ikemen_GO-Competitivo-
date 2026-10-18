[Defaults]
;command.time = 13
command.buffer.time = 1

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

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[command]
name = "recovery"
command = ~a+b
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;--- None of your own command definitions should be above this line. ---

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

[Command]
name = "recovery2"
command = a+b
time = 1

[command]
name = "recovery2"
command = ~a+b
time = 1

;-| Super Attacks | -----------------------------------
[Command]
name = "Dance"
command = ~D,DF,F, x+y
time = 10

[Command]
name = "Dance"
command = ~D,DF,F, x+z
time = 10

[Command]
name = "Dance"
command = ~D,DF,F, y+z
time = 10

[Command]
name = "Dance"
command = ~D,DF,F, ~x+y
time = 10

[Command]
name = "Dance"
command = ~D,DF,F, ~x+z
time = 10

[Command]
name = "Dance"
command = ~D,DF,F, ~y+z
time = 10

[Command]
name = "GabeNewell"
command = ~D,DF,F,D,DF,F x+y
time = 20
[Command]
name = "GabeNewell"
command = ~D,DF,F,D,DF,F x+z
time = 20
[Command]
name = "GabeNewell"
command = ~D,DF,F,D,DF,F y+z
time = 20
[Command]
name = "GabeNewell"
command = ~D,DF,F,D,DF,F ~x+y
time = 20
[Command]
name = "GabeNewell"
command = ~D,DF,F,D,DF,F ~x+z
time = 20
[Command]
name = "GabeNewell"
command = ~D,DF,F,D,DF,F ~y+z
time = 20

[Command]
name = "Pachiki"
command = ~F,DF,D,DB,B, ~x+y
time = 30

[Command]
name = "Pachiki"
command = ~F,DF,D,DB,B, x+y
time = 30

[Command]
name = "Pachiki"
command = ~F,DF,D,DB,B, ~x+z
time = 30

[Command]
name = "Pachiki"
command = ~F,DF,D,DB,B, x+z
time = 30

[Command]
name = "Pachiki"
command = ~F,DF,D,DB,B, ~y+z
time = 30

[Command]
name = "Pachiki"
command = ~F,DF,D,DB,B, y+z
time = 30

[Command]
name = "Pachiki"
command = ~F,D,B, ~x+z
time = 30

[Command]
name = "Pachiki"
command = ~F,D,B, x+z
time = 30

[Command]
name = "Pachiki"
command = ~F,D,B, ~x+y
time = 30

[Command]
name = "Pachiki"
command = ~F,D,B, x+y
time = 30

[Command]
name = "Pachiki"
command = ~F,D,B, ~y+z
time = 30

[Command]
name = "Pachiki"
command = ~F,D,B, y+z
time = 30

[Command]
name = "CritACola"
command = ~D,D, x+y
time = 15
[Command]
name = "CritACola"
command = ~D,D, x+z
time = 15
[Command]
name = "CritACola"
command = ~D,D, y+z
time = 15
[Command]
name = "CritACola"
command = ~D,D, ~x+y
time = 15
[Command]
name = "CritACola"
command = ~D,D, ~x+z
time = 15
[Command]
name = "CritACola"
command = ~D,D, ~y+z
time = 15


;-| Special Attacks |-----------------------------------------------------------

[Command]
name = "Can Throw"     ;Required (do not remove)
command = ~D,DF,F, x
time = 10

[Command]
name = "Molotov Throw"     ;Required (do not remove)
command = ~D,DF,F, y
time = 10

[Command]
name = "Brick Throw"     ;Required (do not remove)
command = ~D,DF,F, z
time = 10

[Command]
name = "Can Throw"     ;Required (do not remove)
command = ~D,DF,F, ~x
time = 10

[Command]
name = "Molotov Throw"     ;Required (do not remove)
command = ~D,DF,F, ~y
time = 10

[Command]
name = "Brick Throw"     ;Required (do not remove)
command = ~D,DF,F, ~z
time = 10

[Command]
name = "Feint"
command = ~D,DB,B, x
time = 10

[Command]
name = "Feint"
command = ~D,DB,B, ~x
time = 10

[Command]
name = "Charge"
command = ~D,DB,B, y
time = 10

[Command]
name = "Charge"
command = ~D,DB,B, ~y
time = 10

[Command]
name = "Charge2"
command = ~D,DB,B, z
time = 10

[Command]
name = "Charge2"
command = ~D,DB,B, ~z
time = 10

[Command]
name = "Tobe Ora"
command = ~F,D,DF, z

[Command]
name = "Tobe Ora"
command = ~F,D,DF, ~z

[Command]
name = "Weak Tobe Ora"
command = ~F,D,DF, y

[Command]
name = "Weak Tobe Ora"
command = ~F,D,DF, ~y

[Command]
name = "Nigasu Ka Yo"
command = ~F,D,DF, x

[Command]
name = "Nigasu Ka Yo"
command = ~F,D,DF, ~x

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "AFF"     ;Required (do not remove)
command = $F, ~F, F
time = 10

[Command]
name = "ABB"     ;Required (do not remove)
command = $B, ~B, B
time = 10

[Command]
name = "DAUN"     ;Required (do not remove)
command = ~$D
buffer.time = 5

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "cb";Required (do not remove)
command = z+b
time = 1

[command]
name = "cb";Required (do not remove)
command = ~z+b
time = 1

[command]
name = "ac";Required (do not remove)
command = a+z
time = 1

[command]
name = "ac";Required (do not remove)
command = ~a+z
time = 1

[command]
name = "overhead"
command = y+z
time = 1

[command]
name = "sweep"
command = x+y
time = 1


[Command]
name = "DU"
command = ~$D, $U
time = 5
buffer.time = 2
;time = 10
[Command]
name = "ChargedDU"
;command = ~$D, $U
command = ~12$D, $U
time = 5
buffer.time = 2


[command]
name = "tapup"
command = U
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State -1, The_None was on crack when he came up with this]
type = Changestate
value = 3300
;triggerall = !var(55)
triggerall = var(52)
triggerall = command = "GabeNewell"
triggerall = power >= 3000
triggerall = numhelper(3305) < 1
triggerall = statetype != A
triggerall = p2life <= (enemynear,lifemax *0.35)
triggerall = !(teammode = simul) && !(enemynear,teammode = simul)
triggerall = (p2name!="Ren Idagawa") || (enemynear,numhelper(3305)<1)
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 =  MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 1040
trigger4 = animelemtime(4) >= 0
trigger5 = (Stateno = [1100,1140]) || (stateno = 1240)
trigger5 = time >= 15 || movecontact

[State -1, Pachiki Followup]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = stateno = 3022 || stateno = 3023
triggerall = animelemtime(2) > 2 && animelemtime(3) <= 0
trigger1 = !var(55)
trigger1 = command = "Pachiki"
trigger2 = var(55)
trigger2 = random < 120
trigger2 = animelemtime(2) >= 10 && animelemtime(3) <= 0
 
[State -1, Pachiki]
type = ChangeState
value = 3020
triggerall = !var(55)
triggerall = command = "Pachiki"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 =  MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 1040
trigger4 = animelemtime(4) >= 0
trigger5 = (Stateno = [1100,1140]) || (stateno = 1240)
trigger5 = time >= 15 || movecontact


[State -1, DANCE]
type = Changestate
value = 3000
triggerall = !var(55)
triggerall = command = "Dance"
triggerall = power >= 1000
triggerall = (numhelper(1005) + Numhelper(3001)) < 2
triggerall = !numhelper(1025) || !numhelper(1045)
triggerall = !Numhelper(3004)&&!Numhelper(3007)
triggerall = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 =  MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 1040
trigger4 = animelemtime(4) >= 0
trigger5 = (Stateno = [1100,1140]) || (stateno = 1240)
trigger5 = time >= 15 || movecontact

[State -1, COKE]
type = Changestate
value = 3040
triggerall = !var(55)
triggerall = command = "CritACola"
triggerall = power >= 1000
triggerall = numhelper(3045) < 1
triggerall = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 =  MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 1040
trigger4 = animelemtime(4) >= 0
trigger5 = (Stateno = [1100,1140]) || (stateno = 1240)
trigger5 = time >= 15 || movecontact

[State -1, TO]
type = Changestate
value = 1240
triggerall = !var(55)
triggerall = command = "Tobe Ora"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact || (animtime >= -8)
trigger3 = Stateno = [300,325]
trigger3 = MoveContact || (animtime >= -8)
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 1040 || stateno = 3000
trigger4 = animelemtime(4) >= 0
trigger5 = Stateno = 1120
trigger5 = movecontact

[State -1, TO]
type = Changestate
value = 1220
triggerall = !var(55)
triggerall = command = "Weak Tobe Ora"
triggerall = name = "Ren Idagawa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact || (animtime >= -8)
trigger3 = Stateno = [300,325]
trigger3 = MoveContact || (animtime >= -8)
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 3000
trigger4 = animelemtime(4) >= 0
trigger5 = Stateno = 1120
trigger5 = movecontact

[State -1, TO]
type = Changestate
value = 1200
triggerall = !var(55)
triggerall = command = "Nigasu Ka Yo"
trigger1 = statetype != A && ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact || (animtime >= -8)
trigger3 = Stateno = [300,325]
trigger3 = MoveContact || (animtime >= -8)
trigger4 = Stateno = 1000 || stateno = 1020 || stateno = 3000
trigger4 = animelemtime(4) >= 0

[State -1, CG2]
type = Changestate
value = 1140
triggerall = !var(55)
triggerall = command = "Charge2"
;trigger1 = statetype != A && command != "holddown" && ctrl
trigger1 = command != "holddown" && ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = [400,420]
trigger4 = MoveContact

[State -1, CG]
type = Changestate
value = 1120
triggerall = !var(55)
triggerall = command = "Charge"
;trigger1 = statetype != A && command != "holddown" && ctrl
trigger1 = command != "holddown" && ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = [400,420]
trigger4 = MoveContact

[State -1, FT]
type = Changestate
value = 1100
triggerall = !var(55)
triggerall = command = "Feint"
;trigger1 = statetype != A && command != "holddown" && ctrl
trigger1 = command != "holddown" && ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact
trigger4 = Stateno = [400,420]
trigger4 = MoveContact

[State -1, BT]
type = Changestate
value = 1040
triggerall = !var(55)
triggerall = command = "Brick Throw"
triggerall = !Numhelper(1045)
triggerall = !Numhelper(1005)||!Numhelper(1025)
triggerall = !Numhelper(3001)&&!Numhelper(3004)
trigger1 = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact

[State -1, CT]
type = Changestate
value = 1000
triggerall = !var(55)
triggerall = command = "Can Throw"
triggerall = (numhelper(1005) + Numhelper(3001)) < 2 && !Numhelper(1025)
triggerall = !Numhelper(3004)&&!Numhelper(3007)
trigger1 = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,220]
trigger2 =  MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact

[State -1, MT]
type = Changestate
value = 1020
triggerall = !var(55)
triggerall = command = "Molotov Throw"
triggerall = !Numhelper(1025)
triggerall = !Numhelper(1005)||!Numhelper(1045)
triggerall = !Numhelper(3001)&&!Numhelper(3007)
trigger1 = statetype != A && command != "holddown"
trigger1 = ctrl
trigger2 = Stateno = [200,220]
trigger2 = MoveContact
trigger3 = Stateno = [300,325]
trigger3 = MoveContact

[State -1, Throw]
type = ChangeState
value = 829
triggerall = !var(55)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, ALA]
type = ChangeState
value = 400
triggerall = !var(55)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 110 || stateno = 115

[State -1, AMA]
type = ChangeState
value = 410
triggerall = !var(55)
triggerall = command = "y"
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
;trigger3 = stateno = 110 || stateno = 115

[State -1, ASA]
type = ChangeState
value = 420
triggerall = !var(55)
triggerall = command = "z"
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = StateNo = 400 && MoveContact
trigger3 = StateNo = 410 && MoveContact
;trigger4 = stateno = 110 || stateno = 115

[State -1, CSW]
type = ChangeState
value = 325
triggerall = !var(55)
triggerall = (command = "z" && command = "holddown" && command = "holdfwd") || (command = "overhead" && command = "holddown")
trigger1 = ctrl
trigger1 = Statetype != A
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 300 && MoveContact
trigger5 = StateNo = 310 && MoveContact

[State -1, CSA]
type = ChangeState
value = 320
triggerall = !var(55)
triggerall = command = "z" && command = "holddown"
trigger1 = ctrl
trigger1 = Statetype != A
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 300 && MoveContact
trigger5 = StateNo = 310 && MoveContact
trigger6 = StateNo = 202 && MoveContact

[State -1, CMA]
type = ChangeState
value = 310
triggerall = !var(55)
triggerall = command = "y" && command = "holddown"
trigger1 = ctrl
trigger1 = Statetype != A
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 300 && MoveContact

[State -1, CLA]
type = ChangeState
value = 300
triggerall = !var(55)
triggerall = command = "x" && command = "holddown"
trigger1 = Statetype != A
trigger1 = ctrl

[State -1, SOA]
type = ChangeState
value = 225
triggerall = !var(55)
triggerall = command = "overhead" && command != "holddown"
trigger1 = Statetype != A
trigger1 = ctrl

[State -1, SOA]
type = ChangeState
value = 202
triggerall = !var(55)
triggerall = command = "sweep" && command != "holddown"
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 300 && MoveContact

[State -1, SLA]
type = ChangeState
value = 200
triggerall = !var(55)
triggerall = command = "x" && command != "holddown"
trigger1 = Statetype != A
trigger1 = ctrl

[State -1, SMA]
type = ChangeState
value = 210
triggerall = !var(55)
triggerall = command = "y" && command != "holddown"
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 300 && MoveContact

[State -1, SHA]
type = ChangeState
value = 220
triggerall = !var(55)
triggerall = command = "z" && command != "holddown"
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 300 && MoveContact
trigger5 = StateNo = 310 && MoveContact
trigger6 = StateNo = 202 && MoveContact

[State -1, SJ]
type = ChangeState
value = 1500
triggerall = !var(55)
trigger1 = command = "holdc"
trigger1 = statetype != A
trigger1 = power < powermax
trigger1 = ctrl

[State -1, EX]
type = Changestate
value = 195
triggerall = !var(55)
triggerall = command = "start"
;triggerall = var(53) <= 2
trigger1 = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200,220]) || (stateno = [300,325])
trigger2 = movecontact

;[State -1, SJ]
;type = ChangeState
;value = 9000
;triggerall = !var(55)
;trigger1 = command = "DU"
;trigger1 = statetype != A
;trigger1 = ctrl

[State -1, SHA]
type = ChangeState
value = 900
triggerall = !var(55) || random < 100
triggerall = command = "recovery" || command = "cb" || command = "ac" 
;trigger1 = Time <= 5
trigger1 = Statetype != A
trigger1 = stateno = [130,154]
trigger1 = power >= 1000

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = !var(55)
triggerall = stateno != 9000 || stateno != 100 || stateno != 105 || stateno != 106
triggerall = var(27) = 0
triggerall = stateno != [110,115]
trigger1 = command = "AFF"
trigger1 = statetype = A
trigger1 = pos y <= -15
trigger1 = ctrl

;[State -1, Run Fwd]
;type = ChangeState
;value = 115
;triggerall = stateno != 9000 || stateno != 100 || stateno != 105 || stateno != 106
;trigger1 = command = "BB"
;trigger1 = statetype = A
;trigger1 = pos y <= -25
;trigger1 = ctrl

;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(55)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Bck
;ダッシュ
[State -1, Run Bck]
type = ChangeState
value = 115
triggerall = !var(55)
triggerall = stateno != 9000 || stateno != 100 || stateno != 105 || stateno != 106
triggerall = var(27) = 0
triggerall = stateno != [110,115]
trigger1 = command = "ABB"
trigger1 = statetype = A
trigger1 = pos y <= -15
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(55)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;AI DIRECTIVES
;---------------------------------------------------------------------------

[State -1, throw counter]
type = null
triggerall = var(54) = [1,4]
triggerall = movetype != H
trigger1 = var(53):=var(53)-1
trigger1 = var(53)= 0
trigger1 = var(54):=var(54)-1
trigger1 = var(53):=60*3

[State -1, throw miss]
type = null
trigger1 = anim = 829
trigger1 = animtime = -17
trigger1 = var(54):=var(54)+1
trigger1 = var(53):=60*5

[State -1, Pachiki]
type = ChangeState
value = 3020
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = var(54) = 0
triggerall = p2bodydist X = [-20, 52]
triggerall = ctrl || (stateno = 1120 && movecontact)
triggerall = stateno != 100
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
triggerall = enemynear, pos Y = 0
triggerall = (p2statetype != A) && (p2stateno != 40) && (p2statetype != L)
triggerall = enemynear, prevstateno != 5120
;trigger1 = (enemynear, gethitvar(hittime) = 2) || (enemynear, gethitvar(hitshaketime) = 3) || prevstateno = 1100
;trigger2 = random = [0,484]
;trigger2 = p2movetype = I
trigger1 = random = [0,484]
trigger1 = (p2movetype = I) || (random < 100) || (enemynear, animtime >= -3)
trigger2 = (enemynear, gethitvar(hittime) = 2) || (enemynear, gethitvar(hitshaketime) = 3) || prevstateno = 1100
trigger3 = stateno = 1120 || stateno = 1100
trigger3 = time >= 15 || movecontact
trigger3 = p2bodydist x <= 35 || movehit

[State -1, Anti Air Throw]
type = Changestate
value = 1200
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2dist X = [50, 96]
triggerall = p2bodydist Y = [-209, -81]
triggerall = statetype = C || statetype = S
triggerall = ctrl
trigger1 = enemynear, vel Y > 2
trigger2 = enemynear, prevstateno = [5200,5210]

[State -1, Evade!]
type = changestate
value = 40
triggerall = var(55)
triggerall = !inguarddist
triggerall = stateno != 40
triggerall = ctrl
triggerall = statetype = C || statetype = S
trigger1 = random%2
trigger1 = p2movetype = A && (facing != enemynear,facing)
trigger1 = p2bodydist X < 5
trigger1 = enemynear, hitdefattr = SCA, AT
trigger2 = enemynear, hitdefattr = SCA, AP
trigger2 = random = [0,90]
trigger3 = enemynear, numproj
trigger3 = random = [0,60]

[State -1, Airdash Fwd]
type = ChangeState
value = 110
triggerall = var(55)
triggerall = stateno != 9000 || stateno != 100 || stateno != 105 || stateno != 106
triggerall = var(27) = 0
trigger1 = random = [0,50]
trigger1 = vel Y = [-2,2]
trigger1 = statetype = A
trigger1 = pos y <= -25
trigger1 = ctrl
trigger1 = p2dist X > 80


[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(55)
triggerall = backedgedist > 50
triggerall = statetype = S || statetype = C
triggerall = ctrl
trigger1 = p2statetype = L
trigger1 = p2bodydist X < 20
trigger2 = p2statetype = A
trigger2 = p2movetype = A
trigger2 = p2bodydist X = [-10,10]
trigger2 = random = [100,135]
trigger3 = !inguarddist
trigger3 = p2movetype = A
trigger3 = p2bodydist X < 5
trigger3 = enemynear, hitdefattr = SC, AT

[State -1, Run Bck]
type = ChangeState
value = 115
triggerall = var(55)
triggerall = stateno != 9000 || stateno != 100 || stateno != 105 || stateno != 106
triggerall = var(27) = 0
trigger1 = p2statetype = L
trigger1 = p2bodydist X < 20
trigger1 = statetype = A
trigger1 = pos y <= -25
trigger1 = ctrl
trigger1 = backedgedist > 50

[State -1, THIS IS CHRACK]
type = Changestate
value = 3300
triggerall = var(55)
triggerall = var(52)
triggerall = stateno != [120,155]
triggerall = power >= 3000
triggerall = numhelper(3305) < 1
triggerall = p2life <= (enemynear,lifemax *0.35)
triggerall = p2bodydist Y + (enemynear, vel Y*10 + .22*100) >= 0
triggerall = p2bodydist X = [80, 140]
triggerall = statetype = S || statetype = C
triggerall = !(teammode = simul) && !(enemynear,teammode = simul)
triggerall = frontedgedist >= 85
trigger1 = random = [550, 574]
trigger1 = ctrl
trigger2 = random = [600,620]
trigger2 = Stateno = [200,220]
trigger2 =  Moveguarded
trigger3 = random = [600,620]
trigger3 = Stateno = [300,325]
trigger3 = Moveguarded
trigger4 = random = [600,620]
trigger4 = Stateno = 1120
trigger4 = Moveguarded

[State -1, DANCE]
type = Changestate
value = 3000
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = power >= 1000
triggerall = (numhelper(1005) + Numhelper(3001)) < 2
triggerall = !numhelper(1025) || !numhelper(1045)
triggerall = !Numhelper(3004)&&!Numhelper(3007)
triggerall = p2bodydist Y + (enemynear, vel Y*10 + .22*100) >= 0
triggerall = p2bodydist X = [60, 130]
triggerall = statetype = S || statetype = C
trigger1 = random = [520, 534]
trigger1 = ctrl
trigger2 = random = [500,520]
trigger2 = Stateno = [200,220]
trigger2 =  Moveguarded
trigger3 = random = [500,520]
trigger3 = Stateno = [300,325]
trigger3 = Moveguarded
trigger4 = random = [500,520]
trigger4 = Stateno = 1120
trigger4 = Moveguarded

[State -1, AMA]
type = ChangeState
value = 410
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [0,87]
triggerall = statetype = A
trigger1 = random = [0,34]
trigger1 = ctrl
trigger2 = time
trigger2 = StateNo = 400 && MoveContact

[State -1, ASA]
type = ChangeState
value = 420
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [0,72]
triggerall = p2bodydist Y > -61
;triggerall = p2statetype = A
triggerall = statetype = A
trigger1 = random = [35,99]
trigger1 = ctrl
trigger2 = time
trigger2 = StateNo = 410 && MoveContact

[State -1, CSA]
type = ChangeState
value = 320
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [10, ifelse(p2statetype=A,85,73)]
triggerall = p2bodydist Y = [-175, 0]
triggerall = p2statetype != L && p2stateno != 5120
triggerall = var(49) <= -60
trigger1 = random = [85,99]
trigger1 = ctrl
trigger1 = statetype = C || statetype = S
trigger1 = p2bodydist X = [35, 93]
trigger2 = time
trigger2 = (StateNo = 210 || stateno = 202) && MoveHit
trigger2 = p2bodydist X = [10, 78]
trigger3 = time
trigger3 = StateNo = 310 && MoveHit
trigger3 = p2bodydist X = [10, 78]

[State -1, Feint]
type = Changestate
value = 1100
triggerall = var(55)
triggerall = p2bodydist Y = 0 || statetype = A
triggerall = numhelper(3305) < 1
trigger1 = p2movetype = A
trigger1 = enemynear, time = 0
trigger1 = random = [900,949]
;trigger1 = statetype = C || statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveGuarded = [1,6]
trigger2 = random = [0,222]
trigger2 = p2bodydist X = [45, 107]
trigger3 = p2bodydist X > 90
trigger3 = enemynear, numproj > 0
trigger3 = !inguarddist
trigger3 = random = [0,45]
trigger3 = statetype != A && ctrl

[State -1, Jumpcancel]
type = Changestate
triggerall = var(55)
triggerall = stateno = 320 || stateno = 225
trigger1 = p2bodydist X = [0, 83]
trigger1 = movehit
value = 40
ctrl = 1

[State 40, 2]
type = VarSet
trigger1 = stateno = 40
trigger1 = prevstateno = 320 || prevstateno = 225
sysvar(1) = 1

[State -1, CMA]
type = ChangeState
value = 310
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [74, 122]
triggerall = p2bodydist Y = [-64, 0]
trigger1 = random = [65,94]
trigger1 = ctrl
trigger1 = Statetype = C || statetype = S
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 300 && MoveContact

[State -1, SSW]
type = ChangeState
value = 202
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [20, 33]
triggerall = p2bodydist Y = [-11, 5]
triggerall = (p2statetype != A)
triggerall = (p2movetype != A) || (facing = enemynear,facing)
triggerall = random = [50,64]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 300 && MoveContact

[State -1, SMA]
type = ChangeState
value = 210
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [32, 41]
triggerall = p2bodydist Y = [-31, 0]
triggerall = (p2movetype != A) || (facing = enemynear,facing)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random = [0,19]
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 300 && MoveContact

[State -1, SHA]
type = ChangeState
value = 220
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = (p2bodydist X = [0, 105])||(Numhelper(1005)>0)
triggerall = p2bodydist Y = [-82, 0]
triggerall = (power < 1000) || (power >= 1000 && (p2bodydist X != [-20, 57]))
trigger1 = p2bodydist X = [41, 107]
trigger1 = Statetype = S
trigger1 = ctrl
trigger1 = random = [20,34]
trigger2 = (StateNo = 210 || stateno = 202) && MoveContact
trigger3 = StateNo = 310 && MoveContact
trigger4 = statetype != A
trigger4 = Numhelper(1005)
trigger4 = p2bodydist X > 105
trigger4 = random = [160,190]
trigger4 = ctrl

[State -1, CSW]
type = ChangeState
value = 325
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [10, 78]
triggerall = p2bodydist Y = [-30, 0]
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = random = [73,89]
trigger1 = ctrl
trigger1 = statetype = C || statetype = S
trigger2 = time
trigger2 = p2bodydist X = [35, 60]
trigger2 = (StateNo = 210) && movecontact
trigger3 = p2bodydist X = [35, 60]
trigger3 = time
trigger3 = StateNo = 310 && Movehit

[State -1, SOA]
type = ChangeState
value = 225
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [38, 60]
triggerall = p2bodydist Y = [-31, 0]
triggerall = (p2movetype != A) || (facing = enemynear,facing)
triggerall = !numtarget(225)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random = [80,109]

[State -1, Throw]
type = ChangeState
value = 829
triggerall = var(55)
triggerall = var(54) < 5
triggerall = (statetype = S) || (statetype = C)
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2statetype != L
trigger1 = random = [0,284]
trigger1 = p2bodydist X = [0,3]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = random = [85,169]
trigger2 = p2bodydist X = [0,5]
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, CLA]
type = ChangeState
value = 300
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [0, 73]
triggerall = p2statetype != A && (p2stateno != 40)
triggerall = p2statetype != L
triggerall = statetype = C || statetype = S
triggerall = ctrl
trigger1 = (random = [35,64]) || projhit = 1
trigger2 = random = [200,400]
trigger2 = enemynear, animtime <= -6
trigger2 = p2movetype != A
trigger3 = random = [200,400]
trigger3 = (enemynear, gethitvar(hittime) >= 5) || (enemynear, gethitvar(hitshaketime) >= 6)

[State -1, SLA]
type = ChangeState
value = 200
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [0, 32]
triggerall = p2bodydist Y = [-47, 0]
triggerall = p2statetype != L
triggerall = ctrl
triggerall = statetype = S || statetype = C
triggerall = (p2movetype != A) || (facing = enemynear,facing)
trigger1 = random = [180,220]
trigger2 = enemynear, animtime <= -4
trigger3 = (enemynear, gethitvar(hittime) >= 3) || (enemynear, gethitvar(hitshaketime) >= 4)

[State -1, ALA]
type = ChangeState
value = 400
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = (p2bodydist X - vel X) < 56
triggerall = p2bodydist Y = [-49, 10]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Charge]
type = Changestate
value = 1120
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = random = [120,139]
triggerall = p2bodydist Y = [-58,25]
triggerall = p2statetype != L
triggerall = numhelper(3305) < 1
trigger1 = statetype = S || statetype = C || random <= 115
trigger1 = ctrl
trigger1 = p2bodydist X = [30, 110]
trigger2 = Stateno = 220 || stateno = 320 || stateno = 420
trigger2 = Movehit || (moveguarded && power >= 1000)
trigger3 = p2bodydist X = [58, 158]
trigger3 = Stateno = 310
trigger3 = Movecontact

[State -1, Charge2]
type = Changestate
value = 1140
triggerall = var(55)
triggerall = p2bodydist Y = [-58,25]
triggerall = p2statetype != L
triggerall = numhelper(3305) < 1
trigger1 = random = [110,119]
trigger1 = statetype = S || statetype = C || random <= 115
trigger1 = ctrl
trigger1 = p2bodydist X = [60, ifelse(command="holdz",200,130)]
trigger2 = Stateno = 220 || stateno = 420
trigger2 = Movehit
trigger3 = statetype = S || statetype = C
trigger3 = ctrl
trigger3 = enemynear, vel X < enemynear, const(velocity.walk.back.x)
trigger3 = enemynear, time < 3
trigger3 = p2movetype != H
trigger3 = random = [0,100]

[State -1, Critacola]
type = Changestate
value = 3040
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X >= 120
triggerall = !Numhelper(3045)
triggerall = statetype = S || statetype = C
triggerall = power >= 1000
trigger1 = random = [450,484]
trigger1 = ctrl

[State -1, Can]
type = Changestate
value = 1000
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X >= 55
triggerall = Numhelper(1005) <= 1&&!Numhelper(1025)
triggerall = !Numhelper(3001)&&!Numhelper(3004)&&!Numhelper(3007)
triggerall = statetype = S || statetype = C
trigger1 = p2bodydist X = [55,90]
trigger1 = random = [400,434]
trigger1 = ctrl
trigger2 = p2bodydist X = [55,90]
trigger2 = random = [400,424]
trigger2 = (Stateno = [200,220]) || (Stateno = [300,325])
trigger2 = Moveguarded
trigger3 = p2bodydist X > 105
trigger3 = (p2movetype != A) || (facing = enemynear,facing)
trigger3 = random = [425,490]
trigger3 = ctrl

[State -1, Molotov/Brick]
type = Changestate
value = 1020 + 20*(random%2)
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2bodydist X = [45,ifelse(random>=449,180,90)]
triggerall = !Numhelper(1005)&&!Numhelper(1025)&&!Numhelper(1045)
triggerall = !Numhelper(3001)&&!Numhelper(3004)&&!Numhelper(3007)
trigger1 = random = [435,459]
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = random = [435,444]
trigger2 = Stateno = [200,220]
trigger2 = Moveguarded
trigger3 = random = [435,444]
trigger3 = Stateno = [300,325]
trigger3 = Moveguarded
trigger4 = random = [435,459]
trigger4 = p2statetype = L
trigger4 = statetype = S || statetype = C
trigger4 = ctrl

[State -1, TO]
type = Changestate
value = 1240
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = (p2dist X = [0, ifelse(numhelper(1045),85,65)]) || (Numhelper(1005)>0) || (Numhelper(1025)>0)
triggerall = (p2bodydist Y = [-209, -131]) || (stateno = [1000,1140])
triggerall = random = [ifelse(stateno=1020,650,700),729]
triggerall = statetype != A
triggerall = !numtarget(1240)
trigger1 = ctrl
trigger2 = Stateno = 220
trigger2 = Movehit
trigger3 = Stateno = 320
trigger3 = Movehit
trigger4 = Stateno = 1120
trigger4 = Movehit
trigger5 = Stateno = 1000 || stateno = 1020 || stateno = 1040
trigger5 = animelemtime(6) >= 0 && animelemtime(9) <= 0

[State -1, TO]
type = Changestate
value = 1220
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2dist X = [0, 69]
triggerall = p2bodydist Y = [-131, -81]
triggerall = random = [700,729]
triggerall = !numtarget(1240)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = Stateno = 220
trigger2 = Movehit
trigger3 = Stateno = 320
trigger3 = Movehit

[State -1, Lift Stuff even higher]
type = Changestate
value = 1200
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = p2dist X = [70,130]
triggerall = random = [800,829]
trigger1 = (stateno = 1020) || (stateno = 1000 && random >= 810)
trigger1 = animelem = 9

[State 120, Stop Guarding]
type = ChangeState
triggerall = var(55)
triggerall = stateno = [120,132]
triggerall = ctrl
triggerall = time > 0
trigger1 = enemynear,movetype != A || enemynear,moveguarded
trigger1 = random = [550,749]
trigger2 = !inguarddist
trigger3 = random = [700,730]
value = 140

[State -1, Did nothing, let's guard.]
type = changestate
value = 120
triggerall = var(55)
trigger1 = ctrl
trigger1 = facing != enemynear, facing
trigger1 = prevstateno != 140
trigger1 = statetype != L
trigger1 = stateno = [0, 105]
trigger1 = time > 0
trigger1 = inguarddist
trigger1 = enemynear, time < 20 || enemynear, numproj
trigger1 = enemynear, hitdefattr !=SCA, HA,HT,HP
trigger1 = random = [0,((1800-life)/1800)*(65 - enemynear,time*2 + ifelse((enemynear,hitdefattr=C, AT),15,0))]

[State -1, SHA]
type = ChangeState
value = 900
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = random = [800,((1100-life)/1100)*35+805] 
trigger1 = Time = (0,5]
trigger1 = Statetype = S
trigger1 = Stateno = 151 || Stateno = 150
trigger1 = power >= 1000

[State -1, SJ]
type = null;changestate
value = 1500
triggerall = var(55)
triggerall = statetype = S || statetype = C
triggerall = power < powermax
triggerall = ctrl
trigger1 = p2bodydist X > 190
trigger1 = p2movetype != A
trigger1 = random = [0, (2000-power)/100]
trigger2 = p2bodydist X > 110
trigger2 = random = [315, 359]
trigger2 = p2statetype = L
trigger2 = enemynear, gethitvar(recovertime) < 30
trigger3 = random = [300, 314]
trigger3 = p2bodydist X > 190
trigger3 = p2movetype = H
trigger3 = var(53) = 3

[State -1, EX]
type = Changestate
value = 195
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = var(53) <= 2
triggerall = statetype != A
;trigger1 = random = [315, 359]
;trigger1 = p2statetype = L
;trigger1 = enemynear, gethitvar(recovertime) >= 40
trigger1 = ctrl
trigger1 = random = [300, 314]
trigger1 = p2bodydist X > 210
trigger1 = p2movetype = H
trigger2 = random = [950, 989]
trigger2 = p2bodydist X <= 62
trigger2 = (p2bodydist Y = [-80, 0])
trigger2 = stateno = 220 || stateno = 320
trigger2 = movecontact

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(55)
triggerall = stateno != [120,155]
triggerall = numhelper(3305) < 1
trigger1 = random = [600,730]
trigger1 = p2bodydist X > 160
trigger1 = (p2movetype != A) || (facing = enemynear,facing)
trigger1 = statetype = S
trigger1 = ctrl
