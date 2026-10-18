[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "SuperBalls"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "WickedRush"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "SuperBall"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "SuperYouma"
command = ~D, DF, F, b+c
time = 30

[Command]
name = "DarkPower"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "DarkRay"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "EmeraldDragon"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "TimeWarp"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "BallLight"
command = ~D, DF, F, x
time = 15

[Command]
name = "BallMedium"
command = ~D, DF, F, y
time = 15

[Command]
name = "BallHard"
command = ~D, DF, F, z
time = 15

[Command]
name = "KickAttackLight"
command = ~D, DF, F, a
time = 15

[Command]
name = "KickAttackMedium"
command = ~D, DF, F, b
time = 15

[Command]
name = "KickAttackHard"
command = ~D, DF, F, c
time = 15

[Command]
name = "Youma1"
command = ~D, DB, B, x
time = 15

[Command]
name = "Youma2"
command = ~D, DB, B, y
time = 15

[Command]
name = "Youma3"
command = ~D, DB, B, z
time = 15

[Command]
name = "ZoomLight"
command = ~D, DB, B, a
time = 15

[Command]
name = "ZoomMedium"
command = ~D, DB, B, b
time = 15

[Command]
name = "ZoomHard"
command = ~D, DB, B, c
time = 15

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

[command]
name = "Counter"
command = x+a
time = 5

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

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

;===========================================================================

;Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;-| CPU |------------------------------------------------------------------

[State -1, AI-On]
type = VarSet
triggerall = !ishelper
triggerall = RoundState = 2
triggerall = !var(59)
trigger1 = AILevel
var(59) = 1
ignorehitpause = 1

[State -1, AI-Off]
type = VarSet
triggerall = !ishelper
triggerall = RoundState != 2
triggerall = var(59)
trigger1 = AILevel
var(59) = 0
ignorehitpause = 1

;===========================================================================

;-| Hyper Motions |--------------------------------------------------------

;TimeWarp
[state -1]
type = SelfState
value = 3000
triggerall = !ishelper
triggerall = !var(59)
triggerall = power = powermax
trigger1 = command = "TimeWarp"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Dark Ray
[state -1]
type = SelfState
value = 2800
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 4000
trigger1 = command = "DarkRay"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Emerald Dragon
[state -1]
type = SelfState
value = 2600
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 3000
trigger1 = command = "EmeraldDragon"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Wicked Rush
[state -1]
type = SelfState
value = 2500
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 2500
trigger1 = command = "WickedRush"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Dark Power
[state -1]
type = SelfState
value = 2000
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 2000
trigger1 = command = "DarkPower"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Dark Energy Balls Hyper
[state -1]
type = SelfState
value = 1200
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 1000
trigger1 = command = "SuperBalls"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;-| Super Motions |--------------------------------------------------------

;Dark Energy Ball Light
[state -1]
type = SelfState
value = 1000
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "BallLight"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Dark Energy Ball Medium
[state -1]
type = SelfState
value = 1001
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "BallMedium"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Dark Energy Ball Hard
[state -1]
type = SelfState
value = 1002
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "BallHard"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Dark Energy Ball Super
[state -1]
type = SelfState
value = 1100
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 500
trigger1 = command = "SuperBall"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Youma 1
[state -1]
type = SelfState
value = 1300
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "Youma1"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Youma 2
[state -1]
type = SelfState
value = 1301
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "Youma2"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Youma 3
[state -1]
type = SelfState
value = 1302
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "Youma3"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Super Youma
[state -1]
type = SelfState
value = ifelse(random%2=0,1350,1400)
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 300
trigger1 = command = "SuperYouma"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Super Kick Attack
[state -1]
type = SelfState
value = 1500
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "KickAttackLight"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Super Kick Attack
[state -1]
type = SelfState
value = 1501
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "KickAttackMedium"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Super Kick Attack
[state -1]
type = SelfState
value = 1502
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "KickAttackHard"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Zoom Dodge
[state -1]
type = SelfState
value = 1600
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "ZoomLight"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Zoom Dodge (Short)
[state -1]
type = SelfState
value = 1601
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "ZoomMedium"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Zoom Dodge (Long)
[state -1]
type = SelfState
value = 1602
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "ZoomHard"
trigger1 = statetype != A
trigger1 = facing = 1 || facing = -1
trigger1 = ctrl

;Counter
[state -1]
type = SelfState
value = ifelse(statetype!=A,1700,1710)
triggerall = !ishelper
triggerall = !var(59)
triggerall = power >= 1000
triggerall = command = "Counter"
triggerall = facing = 1 || facing = -1
trigger1 = movetype = H
trigger2 = stateno = [120,155]
ignorehitpause = 1

;-| Normal Motions |--------------------------------------------------------

;Run Fwd
[State -1]
type = selfstate
value = 100
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1]
type = selfstate
value = 105
triggerall = !ishelper
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = selfstate
value = 195
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1]
type = selfstate
value = 800
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "x" || command = "y" || command = "a" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = (enemy,statetype = S) || (enemy,statetype = C)
trigger1 = enemynear,movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 30
trigger2 = (enemy,statetype = S) || (enemy,statetype = C)
trigger2 = enemynear,movetype != H

;Stomp
[State -1]
type = selfstate
value = 700
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = enemynear,statetype = L
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Light Punch
[State -1]
type = selfstate
value = 200
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelemtime(1)>=1

;Standing Medium Punch
[State -1]
type = selfstate
value = 210
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelemtime(1) >= 1

;Standing Hard Punch
[State -1]
type = selfstate
value = 220
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelemtime(1) >= 1

;---------------------------------------------------------------------------
;Standing Light Kick
[State -1]
type = selfstate
value = 230
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelemtime(1) >= 1

;Standing Medium Kick
[State -1]
type = selfstate
value = 240
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelemtime(1) >= 1

;Standing Hard Kick
[State -1]
type = selfstate
value = 250
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelemtime(1) >= 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1]
type = selfstate
value = 400
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Hard Punch
[State -1]
type = selfstate
value = 410
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Light Kick
[State -1]
type = selfstate
value = 420
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Medium Kick
[State -1]
type = selfstate
value = 430
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Hard Kick
[State -1]
type = selfstate
value = 440
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "c" || command = "z"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Light Punch
[State -1]
type = selfstate
value = 600
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Air Hard Punch
[State -1]
type = selfstate
value = 610
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Air Light Kick
[State -1]
type = selfstate
value = 620
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Air Medium Kick
[State -1]
type = selfstate
value = 630
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;Air Flip Kick
[State -1]
type = selfstate
value = 640
triggerall = !ishelper
triggerall = !var(59)
triggerall = command = "c" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl
