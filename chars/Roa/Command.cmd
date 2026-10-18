; _________________________________________
;| Roa by varo_hades                       |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

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

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

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

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>====================

[Command]
name = "IlluminativeSparks"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "IlluminativeSparks"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "IlluminativeSparks"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "IlluminativeSparks"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "IlluminativeSparks"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "IlluminativeSparks"
command = ~D, DF, F, D, DF, F, ~z
time = 32

[Command]
name = "MAXIlluminativeSparks"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXIlluminativeSparks"
command = ~D, DF, F, D, DF, F, x+z
time = 32

[Command]
name = "MAXIlluminativeSparks"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "LightningBarrage"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "LightningBarrage"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "LightningBarrage"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "LightningBarrage"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "LightningBarrage"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "LightningBarrage"
command = ~D, DB, B, D, DB, B, ~c
time = 32

[Command]
name = "MAXLightningBarrage"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXLightningBarrage"
command = ~D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXLightningBarrage"
command = ~D, DB, B, D, DB, B, a+c
time = 32

[Command]
name = "Slice'nDice"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "Slice'nDice"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "Slice'nDice"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "Slice'nDice"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "Slice'nDice"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "Slice'nDice"
command = ~D, DF, F, D, DF, F, ~c
time = 32

[Command]
name = "MAXSlice'nDice"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXSlice'nDice"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "MAXSlice'nDice"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "Serpent'sOverload"
command = ~F,$D,B,F,$D,B, a+x
time = 45

[Command]
name = "Serpent'sOverload"
command = ~F,$D,B,F,$D,B, b+y
time = 45

[Command]
name = "Serpent'sOverload"
command = ~F,$D,B,F,$D,B, z+c
time = 45

[Command]
name = "LightningStorm"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "LightningStorm"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "LightningStorm"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "LightningStorm"
command = ~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "LightningStorm"
command = ~D, DB, B, D, DB, B, ~y
time = 32

[Command]
name = "LightningStorm"
command = ~D, DB, B, D, DB, B, ~z
time = 32

[Command]
name = "MAXLightningStorm"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "MAXLightningStorm"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "MAXLightningStorm"
command = ~D, DB, B, D, DB, B, x+z
time = 32

[Command]
name = "MillenniumClap"
command = ~D, DB, B, D, DF, F, x
time = 32

[Command]
name = "MillenniumClap"
command = ~D, DB, B, D, DF, F, y
time = 32

[Command]
name = "MillenniumClap"
command = ~D, DB, B, D, DF, F, z
time = 32

[Command]
name = "MillenniumClap"
command = ~D, DB, B, D, DF, F, ~x
time = 32

[Command]
name = "MillenniumClap"
command = ~D, DB, B, D, DF, F, ~y
time = 32

[Command]
name = "MillenniumClap"
command = ~D, DB, B, D, DF, F, ~z
time = 32

[Command]
name = "MAXMillenniumClap"
command = ~D, DB, B, D, DF, F, x+y
time = 32

[Command]
name = "MAXMillenniumClap"
command = ~D, DB, B, D, DF, F, x+z
time = 32

[Command]
name = "MAXMillenniumClap"
command = ~D, DB, B, D, DF, F, y+z
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "SurpriseRoar"
command = ~D, DF, F, a
time = 16

[Command]
name = "SurpriseRoar"
command = ~D, DF, F, b
time = 16

[Command]
name = "SurpriseRoar"
command = ~D, DF, F, c
time = 16

[Command]
name = "SurpriseRoar"
command = ~D, DF, F, ~a
time = 16

[Command]
name = "SurpriseRoar"
command = ~D, DF, F, ~b
time = 16

[Command]
name = "SurpriseRoar"
command = ~D, DF, F, ~c
time = 16

[Command]
name = "EXSurpriseRoar"
command = ~D, DF, F, a+b
time = 16

[Command]
name = "EXSurpriseRoar"
command = ~D, DF, F, b+c
time = 16

[Command]
name = "EXSurpriseRoar"
command = ~D, DF, F, a+c
time = 16

[Command]
name = "LightningRod"
command = ~D, DB, B, a
time = 16

[Command]
name = "LightningRod"
command = ~D, DB, B, b
time = 16

[Command]
name = "LightningRod"
command = ~D, DB, B, c
time = 16

[Command]
name = "LightningRod"
command = ~D, DB, B, ~a
time = 16

[Command]
name = "LightningRod"
command = ~D, DB, B, ~b
time = 16

[Command]
name = "LightningRod"
command = ~D, DB, B, ~c
time = 16

[Command]
name = "EXLightningRod"
command = ~D, DB, B, a+b
time = 16

[Command]
name = "EXLightningRod"
command = ~D, DB, B, b+c
time = 16

[Command]
name = "EXLightningRod"
command = ~D, DB, B, a+c
time = 16

[Command]
name = "BlinkShock"
command = ~D, DF, F, a
time = 16

[Command]
name = "BlinkShock"
command = ~D, DF, F, b
time = 16

[Command]
name = "BlinkShock"
command = ~D, DF, F, c
time = 16

[Command]
name = "BlinkShock"
command = ~D, DF, F, ~a
time = 16

[Command]
name = "BlinkShock"
command = ~D, DF, F, ~b
time = 16

[Command]
name = "BlinkShock"
command = ~D, DF, F, ~c
time = 16

[Command]
name = "EXBlinkShock"
command = ~D, DF, F, a+b
time = 16

[Command]
name = "EXBlinkShock"
command = ~D, DF, F, b+c
time = 16

[Command]
name = "EXBlinkShock"
command = ~D, DF, F, a+c
time = 16

[Command]
name = "StaticSlash"
command = ~D, DB, B, a
time = 16

[Command]
name = "StaticSlash"
command = ~D, DB, B, b
time = 16

[Command]
name = "StaticSlash"
command = ~D, DB, B, c
time = 16

[Command]
name = "StaticSlash"
command = ~D, DB, B, ~a
time = 16

[Command]
name = "StaticSlash"
command = ~D, DB, B, ~b
time = 16

[Command]
name = "StaticSlash"
command = ~D, DB, B, ~c
time = 16

[Command]
name = "EXStaticSlash"
command = ~D, DB, B, a+b
time = 16

[Command]
name = "EXStaticSlash"
command = ~D, DB, B, b+c
time = 16

[Command]
name = "EXStaticSlash"
command = ~D, DB, B, a+c
time = 16

[Command]
name = "LightningTrap"
command = ~D, DB, B, x
time = 16

[Command]
name = "LightningTrap"
command = ~D, DB, B, y
time = 16

[Command]
name = "LightningTrap"
command = ~D, DB, B, z
time = 16

[Command]
name = "LightningTrap"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "LightningTrap"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "LightningTrap"
command = ~D, DB, B, ~z
time = 16

[Command]
name = "EXLightningTrap"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "EXLightningTrap"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "EXLightningTrap"
command = ~D, DB, B, x+z
time = 16

[Command]
name = "RisingShock"
command = ~F, D, DF, x
time = 16

[Command]
name = "RisingShock"
command = ~F, D, DF, y
time = 16

[Command]
name = "RisingShock"
command = ~F, D, DF, z
time = 16

[Command]
name = "RisingShock"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "RisingShock"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "RisingShock"
command = ~F, D, DF, ~z
time = 16

[Command]
name = "EXRisingShock"
command = ~F, D, DF, x+y
time = 16

[Command]
name = "EXRisingShock"
command = ~F, D, DF, y+z
time = 16

[Command]
name = "EXRisingShock"
command = ~F, D, DF, x+z
time = 16

[Command]
name = "FlashSpark"
command = ~D, DF, F, x
time = 16

[Command]
name = "FlashSpark"
command = ~D, DF, F, y
time = 16

[Command]
name = "FlashSpark"
command = ~D, DF, F, z
time = 16

[Command]
name = "FlashSpark"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "FlashSpark"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "FlashSpark"
command = ~D, DF, F, ~z
time = 16

[Command]
name = "EXFlashSpark"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXFlashSpark"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXFlashSpark"
command = ~D, DF, F, x+z
time = 16

[Command]
name = "Ray"
command = ~D, DB, B, x
time = 16

[Command]
name = "Ray"
command = ~D, DB, B, y
time = 16

[Command]
name = "Ray"
command = ~D, DB, B, z
time = 16

[Command]
name = "Ray"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "Ray"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "Ray"
command = ~D, DB, B, ~z
time = 16

[Command]
name = "EXRay"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "EXRay"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "EXRay"
command = ~D, DB, B, x+z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Serpent's Overload]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "Serpent'sOverload"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Millennium Clap]
type = ChangeState
value = 3650
triggerAll = !AILevel
triggerAll = command = "MAXMillenniumClap"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Illuminative Sparks]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXIlluminativeSparks"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Lightning Storm]
type = ChangeState
value = 3450
triggerAll = !AILevel
triggerAll = command = "MAXLightningStorm"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Slice'n Dice]
type = ChangeState
value = 3350
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "MAXSlice'nDice"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Lightning Barrage]
type = ChangeState
value = 3550
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "MAXLightningBarrage"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Storm Cloud]
type = ChangeState
value = 3150 
triggerAll = !AILevel
triggerAll = command = "MAXIlluminativeSparks"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Millennium Clap]
type = ChangeState
value = 3600
triggerAll = !AILevel
triggerAll = command = "MillenniumClap"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Illuminative Sparks]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "IlluminativeSparks"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Lightning Storm]
type = ChangeState
value = 3400
triggerAll = !AILevel
triggerAll = command = "LightningStorm"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Slice'n Dice]
type = ChangeState
value = 3300 
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "Slice'nDice"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Lightning Barrage]
type = ChangeState
value = 3500
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "LightningBarrage"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Storm Cloud]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "IlluminativeSparks"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Ray]
type = ChangeState
value = 1830
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "EXRay"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Surprise Roar]
type = ChangeState
value = 1730
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "EXSurpriseRoar"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Thunder Cloud]
type = ChangeState
value = 1630
triggerAll = !AILevel
triggerAll = command = "EXFlashSpark"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Blink Shock]
type = ChangeState
value = 1530
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "EXBlinkShock"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Lightning Rod]
type = null;ChangeState
value = 1430
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "EXLightningRod"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Static Slash]
type = ChangeState
value = 1330
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "EXStaticSlash"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Lightning Trap Air]
type = ChangeState
value = 1270
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "EXLightningTrap"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Lightning Trap]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "EXLightningTrap"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Rising Shock]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerAll = command = "EXRisingShock"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Flash Spark]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerAll = command = "EXFlashSpark"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ray]
type = ChangeState
value = 1800
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "Ray"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Surprise Roar]
type = ChangeState
value = 1700
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "SurpriseRoar"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Thunder Cloud]
type = ChangeState
value = 1600
triggerAll = !AILevel
triggerAll = command = "FlashSpark"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Blink Shock]
type = ChangeState
value = 1500
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "BlinkShock"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Lightning Rod]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "LightningRod"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Static Slash]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerall = PalNo = [1,6]
triggerAll = command = "StaticSlash"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Lightning Trap Air]
type = ChangeState
value = 1250
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "LightningTrap"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Lightning Trap]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerall = PalNo = [7,12]
triggerAll = command = "LightningTrap"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Rising Shock]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "RisingShock"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Flash Spark]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "FlashSpark"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Zero Counter]
type = ChangeState
value = 751
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "b+y" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Dash Forward/Run]
type = ChangeState
value = 100
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
triggerAll = RoundState = 2 && StateType = A
triggerAll = ctrl && pos y <= -32
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp"

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, SKW Extra 1]
type = ChangeState
value = 231
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger3 = StateNo = 210 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger4 = StateNo = 220 && AnimElemTime(6) < 0 && MoveContact = [1,4]
trigger5 = StateNo = 230 && AnimElemTime(6) < 0 && MoveContact = [1,4]
trigger6 = StateNo = 240 && AnimElemTime(6) < 0 && MoveContact = [1,4]
trigger7 = StateNo = 250 && AnimElemTime(6) < 0 && MoveContact = [1,4]
trigger8 = StateNo = 400 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger9 = StateNo = 410 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger10 = StateNo = 420 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger11 = StateNo = 430 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger12 = StateNo = 440 && AnimElemTime(5) < 0 && MoveContact = [1,4]
trigger13 = var(4)

[State -1, SKW Extra 2]
type = ChangeState
value = 232
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 231  && movecontact = [1,4]
trigger3 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 400 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 430 && MoveContact && AnimElemTime(5) < 0
trigger6 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Angled Jumping Heavy Punch]
type = ChangeState
value = 621
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType = A
triggerAll = Power >= 2000
trigger1 = StateNo = 5050
trigger1 = vel y > 0 && pos y < -20

;===============================================================================
;===========================<ROA A.I SYSTEM MOVEMENTS>==========================
;===============================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = Power >= 2000
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 || StateNo = 5052 || StateNo = 5071 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Zero Counter]
type = ChangeState
value = 751
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 850
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl && pos y <= -32
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,33]) && (P2Dist y = [-118,48])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ROA A.I NORMAL ATTACKS>============================
;===============================================================================

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,101]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,146]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-132,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,97]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = ifElse(vel x > 0, 621, 620)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-64,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,92]) && (P2Dist y = [-116,50]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (P2Dist y = [-129,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-115,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-52,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,111]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,42]) && (P2Dist y = [-80,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,79]) && (P2Dist y = [-60,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,63]) && (P2Dist y = [-87,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 232
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,72]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 231
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,72]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,72]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-54,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-27,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,41]) && (P2Dist y = [-56,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-117,40]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 150, 50) * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ROA A.I SPECIAL MOVES>=============================
;===============================================================================

[State -1, Blink Shock]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1530, 1500)
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [0,150]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Thunder Cloud]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1630, 1600)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-70,70]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Ray]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1830, 1800)
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Surprise Roar]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1730, 1700)
triggerall = PalNo = [7,12]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Flash Spark]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Rising Shock]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-70,70]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Lightning Trap]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1230, 1200)
triggerall = PalNo = [7,12]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Air Lightning Trap]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1270, 1250)
triggerall = PalNo = [7,12]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Static Slash]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1330, 1300)
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [0,150]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Lightning Rod]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1400, 1400)
triggerall = PalNo = [7,12]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

;===============================================================================
;===========================<ROA A.I SUPER MOVES>===============================
;===============================================================================

[State -1, Serpent's Overload]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = (Enemynear, StateNo != [120, 155]) || EnemyNear, StateType = A
triggerAll = EnemyNear, StateType != L
triggerAll = (P2BodyDist x = [0,144]) && (P2Dist y = [-58,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, MAX Slice 'n Dice]
type = ChangeState
value = 3350
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-32,95])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = StateNo = 3300 && AnimElemTime(15) = 0 && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))
trigger4 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, MAX Lightning Storm]
type = ChangeState
value = 3450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = StateNo = 3300 && AnimElemTime(15) = 0 && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))
trigger4 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, MAX Lightning Barrage]
type = ChangeState
value = 3550
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = StateNo = 3300 && AnimElemTime(15) = 0 && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))
trigger4 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, MAX Illuminative Sparks]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = StateNo = 3300 && AnimElemTime(15) = 0 && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))

[State -1, MAX Millennium Clap]
type = ChangeState
value = 3650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = StateNo = 3300 && AnimElemTime(15) = 0 && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))
trigger4 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, MAX Storm Cloud]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = StateNo = 3100 && AnimElemTime(7) = 0 && MoveHit && Random < (50 * (AIlevel ** 3 / 64.0))

[State -1, Lightning Storm]
type = ChangeState
value = 3400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Lightning Barrage]
type = ChangeState
value = 3500
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Illuminative Sparks]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Millennium Clap]
type = ChangeState
value = 3600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Slice 'n Dice]
type = ChangeState
value = 3300
triggerall = PalNo = [1,6]
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-32,95])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 150) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Storm Cloud]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

;===============================================================================
;===========================<ROA A.I END>=======================================
;===============================================================================
